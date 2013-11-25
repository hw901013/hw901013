﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Newtonsoft.Json;
using System.Configuration;

namespace LAb.ZH.SNMP.Win
{
    public partial class Form1 : Form
    {
        TreeNode tr;
        ServiceReference1.ZhEasySnmpClient Snmp = new ServiceReference1.ZhEasySnmpClient();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Snmp.SearchTpCompleted += new EventHandler<ServiceReference1.SearchTpCompletedEventArgs>(Snmp_SearchTpCompleted);
            Snmp.UpadteInitCompleted += new EventHandler<AsyncCompletedEventArgs>(Snmp_UpadteInitCompleted);
            Snmp.GetServerInfoCompleted += new EventHandler<ServiceReference1.GetServerInfoCompletedEventArgs>(Snmp_GetServerInfoCompleted);
            initapp("Path");
        }
        void init()
        {
            
            Snmp.UpadteInitAsync();
        }

        void Snmp_UpadteInitCompleted(object sender, AsyncCompletedEventArgs e)
        {
            MessageBox.Show("200:ok");
        }
        private void bt_start_Click(object sender, EventArgs e)
        {
            init();

        }

        private void btn获取拓扑_Click(object sender, EventArgs e)
        {

            //getTp(ConfigurationManager.AppSettings["1"]);
            getTp(ConfigurationManager.AppSettings["1"]);
        }
        void getTp(string ip)
        {
           
            Snmp.SearchTpAsync(ip);
            tr = new TreeNode(ip);
            //Snmp.SearchTp(ip);
        }
       
        void Snmp_SearchTpCompleted(object sender, ServiceReference1.SearchTpCompletedEventArgs e)
        {
                
                List<string> Tp = JsonConvert.DeserializeObject<List<string>>(e.Result);
                foreach (string b in Tp)
                {
                    tr.Nodes.Add(b);
                }
                treeView.Nodes.Add(tr);
                treeView.ExpandAll();
             
        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }

        void initapp(string info)
        {
            Snmp.GetServerInfoAsync(info);
        }

        void Snmp_GetServerInfoCompleted(object sender, ServiceReference1.GetServerInfoCompletedEventArgs e)
        {
            MessageBox.Show(JsonConvert.DeserializeObject<string>(e.Result));
        }
           
       
        
        

       
    }
}
