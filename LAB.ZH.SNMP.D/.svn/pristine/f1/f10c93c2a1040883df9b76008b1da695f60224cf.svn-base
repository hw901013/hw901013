using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Newtonsoft.Json;

namespace LAB.ZH.SNMP.TEST.B
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        ServiceReference1.ZhEasySnmpClient snmp2 = new ServiceReference1.ZhEasySnmpClient();
        GotoSnmp snmp = new GotoSnmp();
        private void btn_Click(object sender, EventArgs e)
        {
            init();
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            get();
           
        }
      

        
        private void btn12_Click(object sender, EventArgs e)
        {
            get2();
            
        }
        void init()
        {
            snmp2.UpadteInitCompleted += new EventHandler<AsyncCompletedEventArgs>(snmp2_UpadteInitCompleted);
            snmp2.UpadteInitAsync();
        }

        void snmp2_UpadteInitCompleted(object sender, AsyncCompletedEventArgs e)
        {
            MessageBox.Show("200:ok");
        }

        void get()
        {
            snmp2.GetCountCompleted += new EventHandler<ServiceReference1.GetCountCompletedEventArgs>(snmp2_GetCountCompleted);
            snmp2.GetCountAsync("F_Info");
        }

        void snmp2_GetCountCompleted(object sender, ServiceReference1.GetCountCompletedEventArgs e)
        {
            MessageBox.Show(e.Result.ToString());
        }
        void get2()
        {
            snmp2.SearchSwitchCompleted += new EventHandler<ServiceReference1.SearchSwitchCompletedEventArgs>(snmp2_SearchSwitchCompleted);
            snmp2.SearchSwitchAsync(tx1.Text.Trim());    
        }

        void snmp2_SearchSwitchCompleted(object sender, ServiceReference1.SearchSwitchCompletedEventArgs e)
        {
            BindingSource bs = new BindingSource();
            DataTable ggg = JsonConvert.DeserializeObject<DataTable>(e.Result);
            bs.DataSource = ggg;
            da1.DataSource = bs;
        }
        void get3()
        {
            snmp2.SearchManageCompleted += new EventHandler<ServiceReference1.SearchManageCompletedEventArgs>(snmp2_SearchManageCompleted);
            snmp2.SearchManageAsync(tx1.Text.Trim());
        }

        void snmp2_SearchManageCompleted(object sender, ServiceReference1.SearchManageCompletedEventArgs e)
        {
            try
            {
            BindingSource bs = new BindingSource();
            Dictionary<string, string> ggg = JsonConvert.DeserializeObject<Dictionary<string, string>>(e.Result);
            Console.Write(e.Result[1]);
            bs.DataSource = ggg;
            da1.DataSource = bs;
            }
            catch(Exception ex)
            {}
        }
        private void btn基础信息_Click(object sender, EventArgs e)
        {
            get3();
        }

    
    
    }





}
