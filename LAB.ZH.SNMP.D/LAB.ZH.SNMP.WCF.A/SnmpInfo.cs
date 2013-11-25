﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAB.ZH.SNMP.WCF.A
{
    class SnmpInfo
    {
        /// <summary>
        /// 初始化日志记录
        /// </summary>
        public MessageLibrary1.MessageClass msg = new MessageLibrary1.MessageClass();
        /// <summary>
        /// 电脑IP地址和OID字典
        /// </summary>
        Dictionary<string, List<string>> _Ip_PC = new Dictionary<string, List<string>>();
        public Dictionary<string, List<string>> Ip_PC
        {
            get { return _Ip_PC; }
            set { _Ip_PC = value; }
        }
        /// <summary>
        ///网络设备信息
        /// </summary>
        Dictionary<string, List<string>> _Ip_NetWork = new Dictionary<string, List<string>>();
        public Dictionary<string, List<string>> Ip_NetWork
        {
            get { return _Ip_NetWork; }
            set { _Ip_NetWork = value; }
        }
        /// <summary>
        /// 网络设备信息
        /// </summary>
        Dictionary<string, Dictionary<string, string>> _Info_NetWork = new Dictionary<string, Dictionary<string, string>>();
        public Dictionary<string, Dictionary<string, string>> Info_NetWork
        {
            get { return _Info_NetWork; }
            set { _Info_NetWork = value; }
        }
        /// <summary>
        /// 电脑信息
        /// key：ip Value（oid，内容）
        /// </summary>
        Dictionary<string, Dictionary<string, string>> _Info_PC = new Dictionary<string, Dictionary<string, string>>();
        public Dictionary<string, Dictionary<string, string>> Info_PC
        {
            get { return _Info_PC; }
            set { _Info_PC = value; }
        }
        /// <summary>
        /// Walk方法存储信息
        /// </summary>
        Dictionary<string, Dictionary<string, string>> _OwnInfo = new Dictionary<string, Dictionary<string, string>>();
        public Dictionary<string, Dictionary<string, string>> OwnInfo
        {
            get { return _OwnInfo; }
            set { _OwnInfo = value; }
        }
        /// <summary>
        /// key:oid
        /// Value:最后内容
        /// </summary>
        static Dictionary<string, Dictionary<string, string>> _FiInfo = new Dictionary<string, Dictionary<string, string>>();

        public static Dictionary<string, Dictionary<string, string>> FiInfo
        {
            get { return SnmpInfo._FiInfo; }
            set { SnmpInfo._FiInfo = value; }
        }

    
    }
}
