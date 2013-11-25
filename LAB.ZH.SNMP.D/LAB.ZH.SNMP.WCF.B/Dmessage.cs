using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Configuration;
namespace LAB.ZH.SNMP.WCF.B
{
    public  class Dmessage
    {
        /// <summary>
        /// 数据库地址
        /// </summary>
        public static string DBPATH = ConfigurationManager.AppSettings["Path"];
        /// <summary>
        /// 刷新时间
        /// </summary>
        public static string ReTime = ConfigurationManager.AppSettings["ReTime"];
        /// <summary>
        /// 数据适配器
        /// </summary>
        public static string Provider = ConfigurationManager.AppSettings["Provider"];
        /// <summary>
        /// 网络设备数据表
        /// </summary>
        public static string StNt = ConfigurationManager.AppSettings["StNt"];
        /// <summary>
        /// pc设备数据表
        /// </summary>
        public static string StPc = ConfigurationManager.AppSettings["StPc"];
        /// <summary>
        /// 转换规则数据表
        /// </summary>
        public static string PCR = ConfigurationManager.AppSettings["PCR"];
    }
}