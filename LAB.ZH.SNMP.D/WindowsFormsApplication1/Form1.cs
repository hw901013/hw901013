using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.ServiceModel;
using System.Threading;
using Newtonsoft.Json;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        Thread trdCallBackOperate = null;
        RequestCallBack callBack;
        ServiceReference1.ZhEasySnmp2Client snmp;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            callBack = new RequestCallBack(this);
            InstanceContext context = new InstanceContext(callBack);
            snmp = new ServiceReference1.ZhEasySnmp2Client(context);           
        }
        public void setData()
        {
            try
            {
                if (callBack.Departments == null || callBack.Departments == "NULL")
                {
                    return;
                }
                if (callBack.Departments == "1")
                {

                }
                
            }
            catch (Exception ex)
            {
                //msgc.SaveTempMessage("0", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), ex.StackTrace);
            }
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            snmp.UpadteInit();
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            
        }
    }
}
