﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using DBService;
using System.Threading;
using LAB.ZH.SNMP.D;
using System.Configuration;
using Newtonsoft.Json;
namespace LAB.ZH.SNMP.WCF.D
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码、svc 和配置文件中的类名“Service1”。
    public class Service1 : SnmpService1
    {
        #region 共有声明
        /// <summary>
        /// 共有成员的实例
        /// </summary>
        Infos info = new Infos();
        /// <summary>
        /// 网络设备表格
        /// </summary>
        DataTable Table_NetWork;
        /// <summary>
        /// 主机类表格
        /// </summary>
        DataTable Table_PC;
        /// <summary>
        /// 数据库操作
        /// </summary>
        static DBService.DBOperator dbOperator;
        /// <summary>
        /// 申明线程
        /// </summary>
        Thread pThread;
        /// <summary>
        /// 实例化 easysnmp
        /// </summary>
        EASYSNMP easysnmp = new EASYSNMP();
        /// <summary>
        /// 刷新间隔 单位：毫秒
        /// </summary>
        int ReTime = 1;
        
        #endregion
        #region 初始化 Step:1      
        /// <summary>
        /// 初始化数据库
        /// </summary>
        /// <param name="Path">链接地址</param>
        /// <param name="Type">数据库类型</param>
        /// 
        void IniDB(string Path, DataBaseProvider Type)
        {
            dbOperator = DBService.DBOperator.GetInstance(Path, Type);
        }
        /// <summary>
        /// 查询数据库
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <param name="Dt">返回数据表</param>
        public void ConnectionAccess(string sql,ref DataTable Dt)
        {
            try
            {
                //Dt = new DataTable();
                //Table_NetWork = dbOperator.ExecuteSQLSelect("SELECT * from Info", null, null);
                //Table_PC = dbOperator.ExecuteSQLSelect("SELECT * from Info3", null, null);
                Dt = dbOperator.ExecuteSQLSelect(sql, null, null);
            }
            catch (Exception ex)
            {
                info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());

            }
        }
        /// <summary>
        /// 获取ip地址字典
        /// </summary>
        /// <param name="IpOid">数据字典</param>
        /// <param name="sett">执行那类数据字典</param>
        /// <param name="AnyIplist">输出到那个链表</param>
        public void GetIpdic(DataTable IpOid, Dictionary<string, List<string>> AnyIplist)
        {
            for (int i = 0; i < IpOid.Rows.Count; i++)
            {
                List<string> oid = new List<string>();

                {
                    for (int j = 1; j < (IpOid.Columns.Count); j++)
                    {
                        oid.Add(IpOid.Rows[i][j].ToString());

                    }
                    if (AnyIplist.ContainsKey(IpOid.Rows[i]["IP"].ToString()) == false)
                    {
                        AnyIplist.Add(IpOid.Rows[i]["IP"].ToString(), oid);
                    }
                    else
                    {
                        AnyIplist.Remove(IpOid.Rows[i]["IP"].ToString());
                        AnyIplist.Add(IpOid.Rows[i]["IP"].ToString(), oid);
                    }

                }


            }
        }
        #endregion
        #region 具体计算 Step :2
        /// <summary>
        /// 转化PC信息
        /// </summary>
        /// <param name="dic">传入字典</param>
        /// <param name="outdic">传出字典</param>
        void MatchPc(Dictionary<string, Dictionary<string, string>> dic, Dictionary<string, Dictionary<string, string>> outdic)
        {
            foreach (string aa2 in dic.Keys)
            {
                string a1 = aa2;
                double cvolumn = 0, cvolumn1 = 0;
                Dictionary<string, string> nh2 = new Dictionary<string, string>();
                {
                    int CPUz = 1;
                    foreach (string bb2 in dic[aa2].Keys)
                    {
                        try
                        {
                            //todo:计算CPU
                            if (bb2.Contains("1.3.6.1.2.1.25.3.3.1.2."))
                            {
                                string name = "CPU使用率" + CPUz + "号";
                                nh2.Add(name, (dic[aa2][bb2].ToString() + "%"));
                                CPUz++;
                            }
                            else if (dic[aa2][bb2].Contains("Virtual Memory"))
                            {
                                try
                                {
                                    int k = bb2.Length;
                                    string number = bb2.Substring(23, 1);
                                    string name = "虚拟内存:";
                                    string oidm = "1.3.6.1.2.1.25.2.3.1.5." + number;
                                    nh2.Add(name, (dic[aa2][oidm].ToString() + "kb"));
                                }
                                catch (Exception ex)
                                {
                                    info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                                }
                            }
                            else if (dic[aa2][bb2].Contains("Physical Memory"))
                            {
                                try
                                {
                                    string number = bb2.Substring(23, 1);
                                    string name = "物理内存:";
                                    string oidm = "1.3.6.1.2.1.25.2.3.1.6." + number;
                                    nh2.Add(name, (dic[aa2][oidm].ToString() + "kb"));
                                }
                                catch (Exception ex)
                                {
                                    info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                                }
                            }
                            //ConfigurationManager.AppSettings["Path"]
                            DataTable sss = dbOperator.ExecuteSQLSelect(ConfigurationManager.AppSettings["PCR"] + bb2 + "'", null, null);
                            if (sss.Rows.Count > 0)
                            {

                                string Value = sss.Rows[0][0].ToString();
                                switch (bb2)
                                {
                                    case "1.3.6.1.2.1.25.2.3.1.5.1":
                                        cvolumn = (((double)int.Parse(dic[aa2][bb2]) * 4096 / 1024 / 1024 / 1024));
                                        nh2.Add(Value,
                                            (((double)int.Parse(dic[aa2][bb2]) * 4096 / 1024 / 1024 / 1024).ToString("f2") + "GB"));//计算c盘总计空间
                                        break;
                                    case "1.3.6.1.2.1.25.2.3.1.6.1":
                                        cvolumn1 = ((double)int.Parse(dic[aa2][bb2]) * 4096 / 1024 / 1024 / 1024);
                                        nh2.Add(Value,
                                            (((double)int.Parse(dic[aa2][bb2]) * 4096 / 1024 / 1024 / 1024).ToString("f2") + "GB"));//计算c盘已用空间
                                        break;
                                    case "1.3.6.1.2.1.25.2.3.1.4.1":
                                        nh2.Add(Value,
                                            (cvolumn - cvolumn1).ToString("f2") + "GB");//计算剩余空间C盘
                                        break;
                                    case "1.3.6.1.2.1.2.2.1.8.1":
                                        string staticof = "";
                                        switch (dic[aa2][bb2].ToString())
                                        {
                                            case "1": staticof = "开启，正常";
                                                break;
                                            case "2": staticof = "关闭，不正常";
                                                break;
                                            case "3": staticof = "测试";
                                                break;
                                            default:
                                                break;
                                        }
                                        nh2.Add(Value, staticof);//计算网络状态
                                        break;
                                    case "1.3.6.1.2.1.2.2.1.11.1":
                                        nh2.Add(Value, int.Parse(dic[aa2][bb2]).ToString());//接受数据包
                                        break;
                                    case "1.3.6.1.2.1.2.2.1.17.1":
                                        nh2.Add(Value, int.Parse(dic[aa2][bb2]).ToString());//接受数据包
                                        break;
                                    default:
                                        {
                                            nh2.Add(Value, dic[aa2][bb2].ToString());
                                        }
                                        break;
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                        }
                    }
                    try
                    {
                        if (outdic.ContainsKey(a1))
                        {
                            outdic.Remove(a1);
                            outdic[a1] = nh2;
                        }
                        else
                        {
                            outdic.Add(a1, nh2);
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                }
            }
        }
        /// <summary>
        /// 转化交换机信息
        /// </summary>
        /// <param name="dic">传入字典</param>
        /// <param name="outdic">传出字典</param>
        void MatchSwitch(Dictionary<string, Dictionary<string, string>> dic, Dictionary<string, Dictionary<string, string>> outdic)
        {

            foreach (string aa2 in dic.Keys)
            {
                //数据数据字典
                Dictionary<string, string> interfaces = new Dictionary<string, string>();
                string a1 = aa2;
                Dictionary<string, string> nh2 = new Dictionary<string, string>();
                {
                    int O1 = 0;
                    int j = 1;
                    int i = 1;
                    foreach (string bb2 in dic[aa2].Keys)
                    {
                        try
                        {
                            if (bb2.Contains("1.3.6.1.2.1.1.1.0"))
                            {
                                nh2.Add("基本信息", (dic[aa2][bb2].ToString()));

                            }

                            if (bb2.Contains("1.3.6.1.4.1.2011.2.23.1.9.1.2.1.2"))
                            {
                                string staticof = "";

                                switch (dic[aa2][bb2].ToString())
                                {
                                    case "1": staticof = "正常";
                                        break;
                                    case "2": staticof = "异常";
                                        break;
                                    case "3": staticof = "未安装";
                                        break;
                                    case "4": staticof = "不支持";
                                        break;
                                    default:
                                        break;
                                }
                                nh2.Add("电源" + j + "状态", staticof);//计算网络状态if (bb2.Contains("1.3.6.1.4.1.2011.2.23.1.9.1.2.1.2"))
                                j++;

                            }

                            if (bb2.Contains("1.3.6.1.4.1.2011.2.23.1.9.1.1.1.2"))
                            {
                                string staticof2 = "";

                                switch (dic[aa2][bb2].ToString())
                                {
                                    case "1": staticof2 = "正常";
                                        break;
                                    case "2": staticof2 = "异常";
                                        break;
                                    case "3": staticof2 = "未安装";
                                        break;
                                    case "4": staticof2 = "不支持";
                                        break;
                                    default:
                                        break;
                                }
                                nh2.Add("风扇" + i + "状态", staticof2);//计算网络状态
                                i++;
                            }
                            if (bb2.Contains("1.3.6.1.2.1.2.2.1.2."))
                            {
                                try
                                {
                                    string[] Arr = bb2.Split('.');
                                    string name = "网口" + O1 + "为";
                                    nh2.Add(name, (dic[aa2][bb2].ToString()));
                                    interfaces.Add(O1.ToString(), Arr[Arr.Count() - 1]);
                                    O1++;
                                }
                                catch (Exception ex)
                                {
                                    info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                        }
                    }
                    ROLL(interfaces, dic, nh2, a1);
                    try
                    {
                        if (outdic.ContainsKey(a1))
                        {
                            outdic.Remove(a1);
                            outdic[a1] = nh2;
                        }
                        else
                        {
                            outdic.Add(a1, nh2);
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                }
            }
        }
        /// <summary>
        /// 交换机计算
        /// </summary>
        /// <param name="dic">传入oid末尾表</param>
        /// <param name="indic">历史大表</param>
        /// <param name="outdic">传出到那个表</param>
        /// <param name="ip">当前ip地址</param>
        void ROLL(Dictionary<string, string> dic, Dictionary<string, Dictionary<string, string>> indic, Dictionary<string, string> outdic, string ip)
        {
            try
            {
                foreach (string a in dic.Keys)
                {
                    #region 网口
                    try
                    {
                        string Wk = "1.3.6.1.2.1.2.2.1.3." + dic[a];
                        string NameWk = "网口" + a + "端口类型为：";
                        if (indic[ip][Wk] != null)
                        {

                            switch (indic[ip][Wk].ToString())
                            {
                                case "1":
                                    outdic.Add(NameWk, "其他");
                                    break;
                                case "24":
                                    outdic.Add(NameWk, "本地");
                                    break;
                                case "6":
                                    outdic.Add(NameWk, "千兆网口");
                                    break;
                                case "117":
                                    outdic.Add(NameWk, "G比特网口");
                                    break;
                                case "23":
                                    outdic.Add(NameWk, "配置端口");
                                    break;
                                case "136":
                                    outdic.Add(NameWk, "VlAn端口");
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                    #endregion
                    #region 网络可用性
                    try
                    {
                        string Kyx = "1.3.6.1.2.1.2.2.1.7." + dic[a];
                        string KyxName = "网口" + a + "可用性为：";
                        if (indic[ip][Kyx] != null)
                        {
                            switch (indic[ip][Kyx].ToString())
                            {
                                case "1": outdic.Add(KyxName, "开启");
                                    break;
                                case "2": outdic.Add(KyxName, "关闭");
                                    break;
                                case "3": outdic.Add(KyxName, "测试");
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                    #endregion
                    #region 网络状态
                    try
                    {
                        string Zt = "1.3.6.1.2.1.2.2.1.8." + dic[a];
                        string ZtName = "网口" + a + "状态为：";
                        if (indic[ip][Zt] != null)
                        {
                            switch (indic[ip][Zt].ToString())
                            {
                                case "1": outdic.Add(ZtName, "正常");
                                    break;
                                case "2": outdic.Add(ZtName, "不正常");
                                    break;
                                case "3": outdic.Add(ZtName, "测试");
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                    #endregion
                    #region 接受数据包
                    try
                    {
                        string Js = "1.3.6.1.2.1.2.2.1.10." + dic[a];
                        string JsName = "网口" + a + "接收数据包为：";
                        if (indic[ip][Js] != null)
                        {
                            outdic.Add(JsName, indic[ip][Js]);
                        }

                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                    #endregion
                    #region 发送数据包
                    try
                    {
                        string Fs = "1.3.6.1.2.1.2.2.1.16." + dic[a];
                        string FsName = "网口" + a + "发送数据包为：";
                        if (indic[ip][Fs] != null)
                        {
                            outdic.Add(FsName, indic[ip][Fs]);
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                    #endregion
                    #region 持续时间
                    try
                    {
                        string SJT = "1.3.6.1.2.1.2.2.1.9." + dic[a];
                        string SJTName = "网口" + a + "使用时间为：";
                        if (indic[ip][SJT] != null)
                        {
                            outdic.Add(SJTName, indic[ip][SJT]);
                        }
                    }
                    catch (Exception ex)
                    {
                        info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                    }
                    #endregion
                }
            }
            catch (Exception ex)
            {
                info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
            }
        }
        #endregion
        void Init()
        {
            try
            {
                
                int Temp = 0;
                if (int.TryParse(ConfigurationManager.AppSettings["ReTime"], out Temp))
                {
                    ReTime = Temp;
                }
                ConnectionAccess(ConfigurationManager.AppSettings["StNt"], ref Table_NetWork);
                ConnectionAccess(ConfigurationManager.AppSettings["StPc"], ref Table_PC);
                GetIpdic(Table_NetWork, info.Ip_NetWork);
                GetIpdic(Table_PC, info.Ip_PC);
            }
            catch (Exception ex)
            {
                info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
            }
        }
        /// <summary>
        /// 输出到控制台
        /// </summary>
         public  void PrintInfo()
        {
            DateTime st = DateTime.Now;
            try
            {
                easysnmp.SnmpAgent(info.Ip_NetWork, info.Info_NetWork);
                MatchSwitch(info.Info_NetWork, info.FiInfo);
                easysnmp.SnmpAgent(info.Ip_PC, info.Info_PC);
                MatchPc(info.Info_PC, info.FiInfo);
                DateTime dt = DateTime.Now;
                TimeSpan ss = (dt - st);
                Console.WriteLine("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + ss.Minutes + ":" + ss.Seconds + ":" + ss.Milliseconds);
            }
            catch (Exception ex)
            {
                info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
            }
        }
         DataBaseProvider TRF(string a)
         {
            
             switch(a)
             {
                 case "OLEDB": 
                     return DataBaseProvider.Oledb;
                 case "mssql":
                     return DataBaseProvider.MSSql;
                 default :
                     return DataBaseProvider.Oledb;
                   
             }
         }
        public void Handel()
         {
            
            while (true)
            {
                PrintInfo();
                Thread.Sleep(ReTime);
            }
        }
        public string SearchManage(string ip)
        {
            try
            {
                string json = JsonConvert.SerializeObject(info.FiInfo[ip]);
                return json;
            }
            catch(Exception ex)
            {
                info.msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                return null;
               
            }
        }
        public void UpadteInit()
        {
            if (pThread == null)
            {
                IniDB(ConfigurationManager.AppSettings["Path"], TRF(ConfigurationManager.AppSettings["Provider"]));
                pThread = new Thread(new ThreadStart(Handel));
            }
            if (pThread.ThreadState != ThreadState.Running)
            {
                Init();
                pThread.Start();
            }
            else
            {
                pThread.Suspend();
                Init();
                pThread.Resume();

            }
        }
        public int GetCount()
        {
            return info.FiInfo.Count;
        }
       

    }
}
