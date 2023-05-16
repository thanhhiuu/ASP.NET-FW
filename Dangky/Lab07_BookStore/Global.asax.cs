using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;

namespace Lab07_BookStore
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //int soluot = 0;
            //StreamReader sr = new StreamReader(Server.MapPath("~/soluot.txt"));
            //soluot = int.Parse(sr.ReadLine());
            //Application["soluot"] = soluot;
            //Application["online"] = 0;
        }
        //protected void Session_Start(object sender, EventArgs e)
        //{
        //    Application.Lock();
        //    Application["soluot"] = int.Parse(Application["soluot"].ToString() + 1);
        //    Application["online"] = int.Parse(Application["online"].ToString() + 1);
        //    Application.UnLock();

        //    StreamWriter sw = new StreamWriter(Server.MapPath("~/soluot.txt"));
        //    sw.WriteLine(Application["soluot"].ToString());
        //    sw.Close();

        //}

        //protected void Session_End(object sender, EventArgs e)
        //{
        //    Application.Lock();
        //    Application["online"] = int.Parse(Application["online"].ToString()) - 1;
        //    Application.UnLock();
        //}
    }
}