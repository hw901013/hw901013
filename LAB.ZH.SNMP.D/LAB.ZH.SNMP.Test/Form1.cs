﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Newtonsoft.Json;

namespace LAB.ZH.SNMP.Test
{
    public partial class Form1 : Form
    {
        ServiceReference1.ZhEasySnmpClient Snmp = new ServiceReference1.ZhEasySnmpClient();
        
        public Form1()
        {
            InitializeComponent();
            //ServiceReference1.ZhEasySnmpClient Snmp = new ServiceReference1.ZhEasySnmpClient();
            
            Snmp.GetCountCompleted += new EventHandler<ServiceReference1.GetCountCompletedEventArgs>(Snmp_GetCountCompleted);
        }


        //ServiceReference1.ZhEasySnmp2Client Snmp = new ServiceReference1.ZhEasySnmp2Client();
        void get()
        {
            Snmp.UpadteInitCompleted += new EventHandler<AsyncCompletedEventArgs>(Snmp_UpadteInitCompleted);
            Snmp.UpadteInitAsync();
        }

        void Snmp_UpadteInitCompleted(object sender, AsyncCompletedEventArgs e)
        {
            
            button2.Enabled = true;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            get();
            button2.Enabled = false;
        }
        void get2()
        {
            Snmp.SearchManageCompleted += new EventHandler<ServiceReference1.SearchManageCompletedEventArgs>(Snmp_SearchManageCompleted);
            Snmp.SearchManageAsync(textBox1.Text.Trim());
        }

        void Snmp_SearchManageCompleted(object sender, ServiceReference1.SearchManageCompletedEventArgs e)
        {
            BindingSource bs = new BindingSource();
            //Dictionary<string,string> ggg= JsonConvert.DeserializeObject<Dictionary<string,string>>(e.Result);
            
            object ggg = JsonConvert.DeserializeObject<Dictionary<string, string>>(e.Result);
            Dictionary<string, string> fff = ggg as Dictionary<string,string>;
           
            Console.Write(e.Result[1]);
            bs.DataSource = ggg;
            dataGridView1.DataSource = bs;
           
        }
        private void button2_Click(object sender, EventArgs e)
        {
            timer.Enabled = true;
        }
        void get3()
        {

            Snmp.GetCountAsync("Tp");
        }

        void Snmp_GetCountCompleted(object sender, ServiceReference1.GetCountCompletedEventArgs e)
        {
            MessageBox.Show(e.Result.ToString());
        }

        private void button3_Click(object sender, EventArgs e)
        {
            get3();
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            get2();

        }

        private void btn_Click(object sender, EventArgs e)
        {
            Snmp.alterCompleted += new EventHandler<ServiceReference1.alterCompletedEventArgs>(Snmp_alterCompleted);
            Snmp.alterAsync();
        }

        void Snmp_alterCompleted(object sender, ServiceReference1.alterCompletedEventArgs e)
        {
            MessageBox.Show(e.Result);
        }

        private void btn123_Click(object sender, EventArgs e)
        {
            string a=Snmp.alter();
        }
    }
}