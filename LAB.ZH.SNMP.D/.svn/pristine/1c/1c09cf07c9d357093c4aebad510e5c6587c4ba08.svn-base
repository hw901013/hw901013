using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace LAB.ZH.SNMP.WCF.B
{
    public class LogTxt
    {
       /// <summary>
       /// 打印日志时间
       /// </summary>
        public void WrTxt()
        {
            try
            {
                StreamWriter sw = new StreamWriter("C:\\Test.txt", true);
                sw.WriteLine(DateTime.Now.ToString());
                sw.Close();

            }
            catch (Exception ex)
            {
                ;
            }

        }
        /// <summary>
        /// 打印所需内容
        /// </summary>
        /// <param name="sss">打印内容</param>
        public void WrTxt(string sss)
        {
            try
            {
                StreamWriter sw = new StreamWriter("C:\\Test.txt", true);
                sw.WriteLine(sss.ToString());
                sw.Close();
            }
            catch (Exception ex)
            {
                ;
            }

        }
    }
}