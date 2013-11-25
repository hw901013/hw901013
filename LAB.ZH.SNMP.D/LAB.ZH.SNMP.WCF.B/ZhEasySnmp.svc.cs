﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using DBService;
using System.Threading;
using System.Configuration;
using LAB.ZH.SNMP.D;
using System.Data;
using Newtonsoft.Json;

namespace LAB.ZH.SNMP.WCF.B
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码、svc 和配置文件中的类名“Service1”。
    public class EasySnmp : ZhEasySnmp
    {

        #region 共有声明
        /// <summary>
        /// 刷新时间
        /// </summary>
        int ReTime = 1;
        /// <summary>
        /// 共有成员的实例
        /// </summary>
        Info info = new Info();
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
        /// 生明线程
        /// </summary>
        Thread pThread;
        /// <summary>
        /// 实例化 easysnmp
        /// </summary>
        EASYSNMP easysnmp = new EASYSNMP();
        #endregion
        #region 初始化 Step:1
        LogTxt wr = new LogTxt();
        /// <summary>
        /// 初始化数据库
        /// </summary>
        /// <param name="Path">链接地址</param>
        /// <param name="Type">数据库类型</param>
        /// 
        void IniDB(string Path, DataBaseProvider Type)
        {
            try
            {
                dbOperator = DBService.DBOperator.GetInstance(Path, Type);
                info.DBStatic = "连接正常";
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                info.DBStatic = "连接异常";
            }
        }
        /// <summary>
        /// 查询数据库
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <param name="Dt">返回数据表</param>
        public void ConnectionAccess(string sql, ref DataTable Dt)
        {
            try
            {
                Dt = dbOperator.ExecuteSQLSelect(sql, null, null);
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);

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
            try
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
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
            }
        }
        #endregion
        #region 具体计算 Step:2
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
                                dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + dic[aa2][bb2].ToString() + "','" + name + "','CPU使用率','" + DateTime.Now.ToString() + "')", null, null);

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
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + dic[aa2][oidm].ToString() + "','" + name + "','虚拟内存','" + DateTime.Now.ToString() + "')", null, null);
                                }
                                catch (Exception ex)
                                {
                                    WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + dic[aa2][oidm].ToString() + "','" + name + "','物理内存','" + DateTime.Now.ToString() + "')", null, null);

                                }
                                catch (Exception ex)
                                {
                                    WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                                }
                            }

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
                            WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                                //string name = "基本信息";
                                nh2.Add("基本信息", (dic[aa2][bb2].ToString()));
                                //dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + dic[aa2][bb2].ToString() + "','" + name + "','基本信息','" + DateTime.Now.ToString() + "')", null, null);
                            }

                            if (bb2.Contains("1.3.6.1.4.1.2011.2.23.1.9.1.2.1.2"))
                            {
                                string staticof = "";
                                string name = "电源" + j + "状态";
                                switch (dic[aa2][bb2].ToString())
                                {
                                    case "1": staticof = "正常";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof + "','" + name + "','电源状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    case "2": staticof = "异常";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof + "','" + name + "','电源状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    case "3": staticof = "未安装";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof + "','" + name + "','电源状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    case "4": staticof = "不支持";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof + "','" + name + "','电源状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    default:
                                        break;
                                }

                                nh2.Add("电源" + j + "状态", staticof);//计算网络状态if (bb2.Contains("1.3.6.1.4.1.2011.2.23.1.9.1.2.1.2"))
                                //dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + dic[aa2][bb2].ToString() + "','" + staticof + "',电源" + j + "状态,'" + DateTime.Now.ToString() + "')", null, null);
                                j++;

                            }

                            if (bb2.Contains("1.3.6.1.4.1.2011.2.23.1.9.1.1.1.2"))
                            {
                                string staticof2 = "";
                                string name = "风扇" + i + "状态";
                                switch (dic[aa2][bb2].ToString())
                                {
                                    case "1": staticof2 = "正常";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof2 + "','" + name + "','风扇状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    case "2": staticof2 = "异常";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof2 + "','" + name + "','风扇状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    case "3": staticof2 = "未安装";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof2 + "','" + name + "','风扇状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    case "4": staticof2 = "不支持";
                                        dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof2 + "','" + name + "','风扇状态','" + DateTime.Now.ToString() + "')", null, null);
                                        break;
                                    default:
                                        break;
                                }
                                nh2.Add("风扇" + i + "状态", staticof2);//计算网络状态 
                                //dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + staticof2 + "','" + dic[aa2][bb2].ToString() + "风扇" + i + "状态" + DateTime.Now.ToString() + "')", null, null);
                                i++;
                            }
                            if (bb2.Contains("1.3.6.1.2.1.2.2.1.2."))
                            {
                                try
                                {
                                    string[] Arr = bb2.Split('.');
                                    string name = "网口" + O1 + "为";
                                    nh2.Add(name, (dic[aa2][bb2].ToString()));
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + aa2 + "','" + dic[aa2][bb2].ToString() + "','" + name + "','网口名称','" + DateTime.Now.ToString() + "')", null, null);
                                    interfaces.Add(O1.ToString(), Arr[Arr.Count() - 1]);
                                    O1++;
                                }
                                catch (Exception ex)
                                {
                                    WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                }
            }
        }
        /// <summary>
        /// 交换机信息计算-datatable
        /// </summary>
        /// <param name="dic">出入字典</param>
        /// <param name="outdic">传出datatable</param>
        void MatchSwitch2(Dictionary<string, Dictionary<string, string>> dic, Dictionary<string, DataTable> outdic)
        {

            foreach (string aa2 in dic.Keys)
            {
                //数据数据字典
                Dictionary<string, string> interfaces = new Dictionary<string, string>();
                string a1 = aa2;
                DataTable A = new DataTable();
                A.Columns.Add("网口名称", typeof(string));
                A.Columns.Add("网口类型", typeof(string));
                A.Columns.Add("网口可用性", typeof(string));
                A.Columns.Add("网口状态", typeof(string));
                A.Columns.Add("接受数据包", typeof(string));
                A.Columns.Add("发送数据包", typeof(string));
                A.Columns.Add("持续时间", typeof(string));
                Dictionary<string, string> nh2 = new Dictionary<string, string>();
                {
                    int O1 = 0;
                    foreach (string bb2 in dic[aa2].Keys)
                    {
                        try
                        {
                            if (bb2.Contains("1.3.6.1.2.1.2.2.1.2."))
                            {
                                try
                                {
                                    List<string> nh3 = new List<string>();
                                    string[] Arr = bb2.Split('.');
                                    string name = "网口" + O1 + "为";
                                    nh3.Add((dic[aa2][bb2].ToString()));
                                    ROLL2(O1.ToString(), Arr[Arr.Count() - 1], dic, nh3, a1);
                                    A = MyChange(nh3, A);
                                    O1++;

                                    try
                                    {
                                        if (outdic.ContainsKey(a1))
                                        {
                                            outdic.Remove(a1);
                                            outdic[a1] = A;
                                        }
                                        else
                                        {
                                            outdic.Add(a1, A);
                                        }
                                    }
                                    catch (Exception ex)
                                    {
                                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                                    }
                                }
                                catch (Exception ex)
                                {
                                    WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                        }
                    }

                }
            }
        }
        /// <summary>
        /// 运算拓扑信息
        /// </summary>
        /// <param name="dic">传入字典</param>
        /// <param name="outdic">传出字典</param>
        void MatchSwitchTp(Dictionary<string, Dictionary<string, string>> dic, Dictionary<string, List<string>> outdic)
        {

            foreach (string aa2 in dic.Keys)
            {
                //Tp Atp = new Tp();
                //数据数据字典
                List<string> nh2 = new List<string>();
                {

                    foreach (string bb2 in dic[aa2].Keys)
                    {
                        try
                        {
                            if (bb2.Contains("1.3.6.1.2.1.4.22.1.3."))
                            {
                                try
                                {
                                    nh2.Add(dic[aa2][bb2].ToString());
                                    //Atp.Ip = dic[aa2][bb2].ToString();

                                }

                                catch (Exception ex)
                                {
                                    WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                                }
                            }
                            if (outdic.ContainsKey(aa2))
                            {
                                outdic.Remove(aa2);
                                outdic[aa2] = nh2;
                            }
                            else
                            {
                                outdic.Add(aa2, nh2);
                            }

                        }
                        catch (Exception ex)
                        {
                            WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                        }
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
                                    string staticof3 = "其他";
                                    outdic.Add(NameWk, staticof3);
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','" + staticof3 + "','" + NameWk + "','端口类型','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "24":
                                    outdic.Add(NameWk, "本地");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','本地','" + NameWk + "','端口类型','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "6":
                                    outdic.Add(NameWk, "千兆网口");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','千兆网口','" + NameWk + "','端口类型','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "117":
                                    outdic.Add(NameWk, "G比特网口");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','G比特网口','" + NameWk + "','端口类型','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "23":
                                    outdic.Add(NameWk, "配置端口");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','配置端口','" + NameWk + "','端口类型','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "136":
                                    outdic.Add(NameWk, "VlAn端口");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','VlAn端口','" + NameWk + "','端口类型','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','开启','" + KyxName + "','网口可用性','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "2": outdic.Add(KyxName, "关闭");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','关闭','" + KyxName + "','网口可用性','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "3": outdic.Add(KyxName, "测试");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','测试','" + KyxName + "','网口可用性','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','正常','" + ZtName + "','网口状态','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "2": outdic.Add(ZtName, "不正常");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','不正常','" + ZtName + "','网口状态','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                case "3": outdic.Add(ZtName, "测试");
                                    dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','测试','" + ZtName + "','网口状态','" + DateTime.Now.ToString() + "')", null, null);
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                    #region 接收数据包
                    try
                    {
                        string Js = "1.3.6.1.2.1.2.2.1.10." + dic[a];
                        string JsName = "网口" + a + "接收数据包为：";
                        if (indic[ip][Js] != null)
                        {
                            outdic.Add(JsName, indic[ip][Js]);
                            dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','" + indic[ip][Js] + "','" + JsName + "','接收数据包','" + DateTime.Now.ToString() + "')", null, null);
                        }

                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                            dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','" + indic[ip][Fs] + "','" + FsName + "','发送数据包','" + DateTime.Now.ToString() + "')", null, null);
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
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
                            dbOperator.ExecuteSQLCmd("insert into ip_value Values('" + ip + "','" + indic[ip][SJT] + "','" + SJTName + "','持续时间','" + DateTime.Now.ToString() + "')", null, null);
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                }
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
            }
        }
        /// <summary>
        /// 交换机生成数据表
        /// </summary>
        /// <param name="id">口号</param>
        /// <param name="oid">oid数值</param>
        /// <param name="indic">输入的字典</param>
        /// <param name="outdic">输出的list</param>
        /// <param name="ip">当前ip地址</param>
        void ROLL2(string id, string oid, Dictionary<string, Dictionary<string, string>> indic, List<string> outdic, string ip)
        {
            try
            {
                string a = id;
                {
                    #region 网口
                    try
                    {
                        string Wk = "1.3.6.1.2.1.2.2.1.3." + oid;
                        string NameWk = "网口" + a + "端口类型为：";
                        if (indic[ip][Wk] != null)
                        {

                            switch (indic[ip][Wk].ToString())
                            {
                                case "1":
                                    outdic.Add("其他");
                                    break;
                                case "24":
                                    outdic.Add("本地");
                                    break;
                                case "6":
                                    outdic.Add("千兆网口");
                                    break;
                                case "117":
                                    outdic.Add("G比特网口");
                                    break;
                                case "23":
                                    outdic.Add("配置端口");
                                    break;
                                case "136":
                                    outdic.Add("VlAn端口");
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);

                    }
                    #endregion
                    #region 网络可用性
                    try
                    {
                        string Kyx = "1.3.6.1.2.1.2.2.1.7." + oid;
                        string KyxName = "网口" + a + "可用性为：";
                        if (indic[ip][Kyx] != null)
                        {
                            switch (indic[ip][Kyx].ToString())
                            {
                                case "1": outdic.Add("开启");
                                    break;
                                case "2": outdic.Add("关闭");
                                    break;
                                case "3": outdic.Add("测试");
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                    #region 网络状态
                    try
                    {
                        string Zt = "1.3.6.1.2.1.2.2.1.8." + oid;
                        string ZtName = "网口" + a + "状态为：";
                        if (indic[ip][Zt] != null)
                        {
                            switch (indic[ip][Zt].ToString())
                            {
                                case "1": outdic.Add("正常");
                                    break;
                                case "2": outdic.Add("不正常");
                                    break;
                                case "3": outdic.Add("测试");
                                    break;
                                default:
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                    #region 接受数据包
                    try
                    {
                        string Js = "1.3.6.1.2.1.2.2.1.10." + oid;
                        string JsName = "网口" + a + "接收数据包为：";
                        if (indic[ip][Js] != null)
                        {
                            outdic.Add(indic[ip][Js]);
                        }

                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                    #region 发送数据包
                    try
                    {
                        string Fs = "1.3.6.1.2.1.2.2.1.16." + oid;
                        string FsName = "网口" + a + "发送数据包为：";
                        if (indic[ip][Fs] != null)
                        {
                            outdic.Add(indic[ip][Fs]);
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                    #region 持续时间
                    try
                    {
                        string SJT = "1.3.6.1.2.1.2.2.1.9." + oid;
                        string SJTName = "网口" + a + "使用时间为：";
                        if (indic[ip][SJT] != null)
                        {
                            outdic.Add(indic[ip][SJT]);
                        }
                    }
                    catch (Exception ex)
                    {
                        WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                    }
                    #endregion
                }
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
            }
        }
        /// <summary>
        /// datatable 转换
        /// </summary>
        /// <param name="a">输入的list</param>
        /// <param name="intable">输出的datatable</param>
        /// <returns>返回字典</returns>
        DataTable MyChange(List<string> a, DataTable intable)
        {
            DataRow pDataRow = intable.NewRow();
            for (int i = 0; i < a.Count; i++)
            {
                pDataRow[i] = a[i];
            }
            intable.Rows.Add(pDataRow);
            return intable;
        }
        #endregion
        #region 启动及线程管理
        /// <summary>
        /// 加载详细配置
        /// 如：刷新时间，读取的数据表等
        /// </summary>
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
                WRITELOG.Error("300ok");
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
            }
        }
        /// <summary>
        /// 得到数据库类型
        /// </summary>
        /// <param name="a">数据库配置</param>
        /// <returns>数据适配器类型</returns>
        DataBaseProvider TRF(string a)
        {

            switch (a)
            {
                case "OLEDB":
                    return DataBaseProvider.Oledb;
                case "mssql":
                    return DataBaseProvider.MSSql;
                default:
                    return DataBaseProvider.Oledb;

            }
        }
        /// <summary>
        /// 线程处理
        /// </summary>
        public void Handel()
        {

            while (true)
            {
                PrintInfo();
                Thread.Sleep(ReTime);
            }
        }
        /// <summary>
        /// 启动
        /// </summary>
        public void UpadteInit()
        {
            if (pThread == null)
            {
                IniDB(ConfigurationManager.AppSettings["Path"], TRF(ConfigurationManager.AppSettings["Provider"]));
                pThread = new Thread(new ThreadStart(Handel));
                WRITELOG.Error("无信息");
                //info.Errorinfo.Add("错误", "无信息");
                //info.ServerStatic = "开启";
            }
            if (pThread.ThreadState != ThreadState.Running)
            {
                Init();

                pThread.Start();
                info.ServerStatic = "开启";
                WRITELOG.Error("开启");
            }
            else
            {
                pThread.Suspend();
                Init();
                pThread.Resume();

            }
        }
        /// <summary>
        /// 关闭
        /// </summary>

        #endregion
        #region Event
        /// <summary>
        /// 取得字典数量
        /// </summary>
        /// <returns></returns>
        public string GetCount(string Clx)
        {
            try
            {
                switch (Clx)
                {
                    //拓扑表
                    case "Tp":
                        return JsonConvert.SerializeObject(info.TpInfo.Count);
                    //ip-net转换表
                    case "Ip_Net":
                        return JsonConvert.SerializeObject(info.Ip_NetWork.Count);
                    //网络设备最终信息表
                    case "Net_info":
                        return JsonConvert.SerializeObject(info.Info_NetWork.Count);
                    //ip-pc转换表
                    case "Ip_Pc":
                        return JsonConvert.SerializeObject(info.Ip_PC.Count);
                    // 交换机信息
                    case "Sw_Info":
                        return JsonConvert.SerializeObject(info.SwitchInfo.Count);
                    //PC信息
                    case "PC_Info":
                        return JsonConvert.SerializeObject(info.Info_PC.Count);
                    //最终信息列表
                    case "F_Info":
                        return JsonConvert.SerializeObject(info.FiInfo.Count);
                    default:
                        return "通讯异常";
                }
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                return null;

            }
        }
        /// <summary>
        /// 搜索主机和基本信息
        /// </summary>
        /// <param name="ip">该Ip地址</param>
        /// <returns>json传</returns>
        public string SearchManage(string ip)
        {
            try
            {
                if (info.FiInfo.Count > 0)
                {
                    string json = JsonConvert.SerializeObject(info.FiInfo[ip]);
                    return json;
                }
                else
                {
                    string json = JsonConvert.SerializeObject(info.Errorinfo);
                    return json;
                }
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                return null;
            }
        }
        /// <summary>
        /// 获取信息
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="oid"></param>
        /// <returns></returns>
        public string gets(string ip, string oid)
        {
            try
            {
                wr.WrTxt(ip + "::Search:" + oid);
                return JsonConvert.SerializeObject(easysnmp.get(ip, oid));
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                wr.WrTxt(ex.Message);
                return JsonConvert.SerializeObject("Error");
            }
        }
        /// <summary>
        /// 搜索交换路由串
        /// </summary>
        /// <param name="ip">该ip地址</param>
        /// <returns>数据字典</returns>
        public string SearchSwitch(string ip)
        {
            try
            {
                if (info.SwitchInfo.Keys.Count > 0)
                {
                    string json = JsonConvert.SerializeObject(info.SwitchInfo[ip]);
                    return json;
                }
                else
                {
                    return null;

                }
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                return null;

            }

        }
        /// <summary>
        /// 具体执行
        /// </summary>
        public void PrintInfo()
        {
            DateTime st = DateTime.Now;
            try
            {
                easysnmp.SnmpAgent(info.Ip_NetWork, info.Info_NetWork);
                MatchSwitch(info.Info_NetWork, info.FiInfo);
                MatchSwitch2(info.Info_NetWork, info.SwitchInfo);
                MatchSwitchTp(info.Info_NetWork, info.TpInfo);
                easysnmp.SnmpAgent(info.Ip_PC, info.Info_PC);
                MatchPc(info.Info_PC, info.FiInfo);
                DateTime dt = DateTime.Now;
                TimeSpan ss = (dt - st);
                string p = ss.Minutes + ":" + ss.Seconds + ":" + ss.Milliseconds;

                WRITELOG.Debug(p + "||" + DateTime.Now.ToString());
                //Console.WriteLine("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + ss.Minutes + ":" + ss.Seconds + ":" + ss.Milliseconds);
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
            }
        }
        /// <summary>
        /// 搜索IP拓扑
        /// </summary>
        /// <param name="ip">ip地址</param>
        /// <returns>拓扑是string</returns>
        public string SearchTp(string ip)
        {
            try
            {
                string json = JsonConvert.SerializeObject(info.TpInfo[ip]);
                return json;
            }
            catch (Exception ex)
            {
                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                return null;

            }
        }
        /// <summary>
        /// 获得服务器状态
        /// </summary>
        /// <param name="Lx"></param>
        /// <returns></returns>
        public string GetServerInfo(string Lx)
        {
            try
            {
                switch (Lx)
                {
                    case "Path":
                        return JsonConvert.SerializeObject(Dmessage.DBPATH);
                    case "ReTime":
                        return JsonConvert.SerializeObject(Dmessage.ReTime);
                    case "Provider":
                        return JsonConvert.SerializeObject(Dmessage.Provider);
                    case "StNt":
                        return JsonConvert.SerializeObject(Dmessage.StNt);
                    case "StPc":
                        return JsonConvert.SerializeObject(Dmessage.StPc);
                    case "PCR":
                        return JsonConvert.SerializeObject(Dmessage.PCR);
                    case "St":
                        return JsonConvert.SerializeObject(info.ServerStatic);
                    case "DB":
                        return JsonConvert.SerializeObject(info.DBStatic);
                    default:
                        return "通讯异常";
                }
            }
            catch (Exception ex)
            {

                WRITELOG.Error(ex.Source.ToString() + "||" + ex.Message.ToString() + "||" + DateTime.Now.ToString(), ex);
                return null;
            }
        }
        #endregion
        string check()
        {
            return "1";
        }

        public string alter()
        {
            return check();
        }
    }
}
