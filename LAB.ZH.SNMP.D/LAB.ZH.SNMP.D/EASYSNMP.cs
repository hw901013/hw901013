using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SnmpSharpNet;
using System.Net;
namespace LAB.ZH.SNMP.D
{

    public class EASYSNMP
    {
        MessageLibrary1.MessageClass msg = new MessageLibrary1.MessageClass();
        /// <summary>
        /// 读取根节点
        /// </summary>
        /// <param name="Ip">ip地址</param>
        /// <param name="outinfo">输出到那个字典</param>
        public void SnmpAgent(Dictionary<string, List<string>> Ip_OID, Dictionary<string, Dictionary<string, string>> outinfo)
        {
            #region 新方法

            foreach (KeyValuePair<string, List<string>> MyKVP in Ip_OID)
            {
                try
                {
                    SimpleSnmp snmp = new SimpleSnmp(MyKVP.Key, "public");
                    if (!snmp.Valid)
                    {
                        continue;
                    }
                    Dictionary<string, string> Info = new Dictionary<string, string>();
                    VbCollection col = new VbCollection();
                    TrapAgent agent = new TrapAgent();
                    foreach (string bc in MyKVP.Value)
                    {
                        Dictionary<Oid, AsnType> result = snmp.Walk(SnmpVersion.Ver2, bc);
                        if (result == null)
                        {
                            continue;
                        }
                        foreach (KeyValuePair<Oid, AsnType> kvp in result)
                        {
                            try
                            {
                                if (!Info.ContainsKey(kvp.Key.ToString()))
                                {
                                    Info.Add(kvp.Key.ToString(), kvp.Value.ToString());
                                }
                                else
                                {
                                    Info.Remove(kvp.Key.ToString());
                                    Info.Add(kvp.Key.ToString(), kvp.Value.ToString());
                                }

                            }
                            catch (Exception ex)
                            {
                                msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                            }
                        }
                    }
                    if (!outinfo.ContainsKey(MyKVP.Key))
                    {
                        outinfo.Add(MyKVP.Key, Info);
                    }
                    else
                    {
                        outinfo.Remove(MyKVP.Key);
                        outinfo[MyKVP.Key] = Info;
                    }
                }
                catch (Exception ex)
                {
                    msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                }
            }
            #endregion
        }
        #region Walk方法
        /// <summary>
        /// WALk方法
        /// </summary>
        /// <param name="Ip_OID">ip-oid</param>
        /// <param name="outinfo">输出到那个字典</param>
        public void SnmpWalk(Dictionary<string, List<string>> Ip_OID, Dictionary<string, Dictionary<string, string>> outinfo)
        {
            foreach (string address in Ip_OID.Keys)
            {
                Dictionary<string, string> Info = new Dictionary<string, string>();
                try
                {
                    {
                        Pdu pdu = new Pdu(PduType.Get);
                        foreach (string a in Ip_OID[address])
                        {
                            pdu.VbList.Add(a);
                        }
                        OctetString community = new OctetString("public");
                        AgentParameters param = new AgentParameters(community);
                        param.Version = SnmpVersion.Ver2;
                        IpAddress agent = new IpAddress(address);
                        UdpTarget target = new UdpTarget((IPAddress)agent, 161, 2000, 1);
                        SnmpV2Packet result = (SnmpV2Packet)target.Request(pdu, param);
                        if (result != null)
                        {
                            if (result.Pdu.ErrorStatus != 0)
                            {
                                Console.WriteLine("Error in SNMP reply. Error {0} index {1} \r\n",
                                result.Pdu.ErrorStatus,
                                result.Pdu.ErrorIndex);
                            }
                            else
                            {
                                for (int i = 0; i < pdu.VbCount; i++)
                                {
                                    Info.Add(result.Pdu.VbList[i].Oid.ToString(), result.Pdu.VbList[i].Value.ToString());
                                }
                                if (outinfo.ContainsKey(address) == false)
                                {
                                    outinfo.Add(address, Info);
                                }
                                else
                                {
                                    outinfo[address] = Info;
                                }
                            }
                        }
                        else
                        {
                            Console.WriteLine("No response received from SNMP agent. \r\n");
                            msg.SaveTempMessage("", DateTime.Now.ToString(), "No response received from SNMP agent. \r\n");
                        }
                        target.Dispose();
                    }
                }
                catch (Exception ex)
                {
                    msg.SaveTempMessage(ex.Source.ToString(), ex.Message.ToString(), DateTime.Now.ToString());
                }
            }
        }


        #endregion

        public string get(string ip, string oid)
        {
            Pdu pdu = new Pdu(PduType.Get);
            pdu.VbList.Add(oid);
            OctetString community = new OctetString("public");
            AgentParameters param = new AgentParameters(community);
            param.Version = SnmpVersion.Ver1;
            {
                IpAddress agent = new IpAddress(ip);
                UdpTarget target = new UdpTarget((IPAddress)agent, 161, 2000, 1);
                SnmpV1Packet result = (SnmpV1Packet)target.Request(pdu, param);
                if (result != null)
                {
                    if (result.Pdu.ErrorStatus != 0)
                    {

                        return string.Format("Error in SNMP reply. Error {0} index {1} \r\n",
                            result.Pdu.ErrorStatus,
                            result.Pdu.ErrorIndex);
                    }
                    else
                    {
                        return result.Pdu.VbList[0].Value.ToString();
                    }
                }

                else
                {
                    return string.Format("No response received from SNMP agent. \r\n");
                }
                target.Dispose();
            }

        }

    }
}