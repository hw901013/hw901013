using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using LAB.ZH.SNMP.D;

namespace TEST
{
    public partial class Form1 : Form
    {
        Dictionary<string, List<string>> a = new Dictionary<string, List<string>>();
        Dictionary<string,Dictionary<string,string>> b=new Dictionary<string,Dictionary<string,string>>();
         List<string> c=new List<string>();
        EASYSNMP easysnmp = new EASYSNMP();
        public Form1()
        {
            c.Add("1.3.6.1.2.1.16.");
            a.Add("192.168.0.200", c);
            InitializeComponent();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            easysnmp.SnmpAgent(a, b);
        }
    }
}
