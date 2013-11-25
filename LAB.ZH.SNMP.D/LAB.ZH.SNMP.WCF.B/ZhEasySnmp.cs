﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;

namespace LAB.ZH.SNMP.WCF.B
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码和配置文件中的接口名“IService1”。
    [ServiceContract]
    public interface ZhEasySnmp
    {

        [OperationContract]
        /// <summary>
        /// 信息查询-大节点
        /// </summary>
        string SearchManage(string ip);
        [OperationContract]
        /// <summary>
        /// 初始化
        /// </summary>
        /// <param name="path">Access 地址</param>
        /// <param name="type"> 数据类型</param>
        void UpadteInit();
        [OperationContract]
        /// <summary>
        /// 计数统计
        /// </summary>
        string GetCount(string Clx);
        [OperationContract]
        /// <summary>
        /// 搜索交换机
        /// </summary>
        /// <param name="ip">IP 地址</param>
        string SearchSwitch(string ip);
        [OperationContract]
        /// <summary>
        /// 搜索拓扑
        /// </summary>
        /// <param name="ip">IP 地址</param>
        string SearchTp(string ip);
        [OperationContract]
        /// <summary>
        /// 配置信息读取
        /// </summary>
        /// <param name="ip">IP 地址</param>
        string GetServerInfo(string Lx);
        [OperationContract]
        /// <summary>
        /// App测试
        /// </summary>
        string gets(string ip, string oid);
        [OperationContract]
        string alter();
      
    }
}


