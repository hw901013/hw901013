﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace LAB.ZH.SNMP.WCF.A
{
    // 注意: 使用“重构”菜单上的“重命名”命令，可以同时更改代码和配置文件中的接口名“IService1”。
    [ServiceContract]
    public interface EasySnmpA
    {
        [OperationContract]
        string GetData(int value);

      

        // TODO: 在此添加您的服务操作
    }

   
    
}
