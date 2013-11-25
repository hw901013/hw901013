using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WindowsFormsApplication1.ServiceReference1;

namespace WindowsFormsApplication1
{
    class RequestCallBack : IZhEasySnmp2Callback
    {
        private string _Departments;

        public string Departments
        {
            get { return _Departments; }
            set
            {
                _Departments = value;
            }
        }
           public void SendResult(string result)
        {
            try
            {
                Departments = result;
                setData();
            }
            catch (Exception ex)
            {
                //msgc.SaveTempMessage("0", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), ex.StackTrace);
            }
        }

        private Form1 _form = null;

        public RequestCallBack(Form1 form)
        {
            try
            {
                _form = form;
            }
            catch (Exception ex)
            {
                //msgc.SaveTempMessage("0", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), ex.StackTrace);
            }
        }

        private void setData()
        {
            try
            {
                _form.setData();
            }
            catch (Exception ex)
            {
                //msgc.SaveTempMessage("0", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), ex.StackTrace);
            }
        } 
    
    }
}
