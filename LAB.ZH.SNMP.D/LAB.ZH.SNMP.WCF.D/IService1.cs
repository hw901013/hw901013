using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using DBService;

namespace LAB.ZH.SNMP.WCF.D
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码和配置文件中的接口名“IService1”。
    [ServiceContract]
    public interface SnmpService1
    {

        [OperationContract]
        /// <summary>
        /// 信息查询
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
        int GetCount();

    }


}
