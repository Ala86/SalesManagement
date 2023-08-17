using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;
namespace NACCUGSoft_Online
{
    public class Global : HttpApplication
    {
        public static string GlUserNames, GlUserNamesf, GlUserNamesl, GlUserNamesc, GlUserNamesp, GlUserNamesm, GCmemtype0, GCmemtype1;
        public static string fromdate, todate;
        public static int GlUserCompID;
    
        //Global.GlUserNamesf = Convert.ToString(dt.Rows[0]["ccustfname"]);
        //            Global.GlUserNamesm = Convert.ToString(dt.Rows[0]["ccustmname"]);
        //            Global.GlUserNamesl = Convert.ToString(dt.Rows[0]["ccustlname"]);
        //            Global.GlUserNamesc = Convert.ToString(dt.Rows[0]["ctel"]);
        //            Global.GlUserNamesp
        // Global.GlUserNames = MainMenu.TreeView1.ToString();
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        public class getStartupFolder
        {
            public static string gcStartUpDirectory = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
        }

        public class getReportFile
        {
            public static bool dReportfile(string tcPath, string tcReport)
            {
                string dpath = Path.Combine(tcPath, tcReport);
                bool drepexists = File.Exists(dpath);
                if (!drepexists)
                {
                    Console.WriteLine("The report file does not exist in startup folder " + tcPath);
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }
            public class tclassChkpassWord
        {
            public tclassChkpassWord()
            {
              //MessageBox.Show("We would like to check the password");
            }

            public static string dpassWord(string cpassString)
            {
                //            MessageBox.Show("we are inside dpassword of classchkpassword in tclasslibrary with text = "+cpassString);
                int i = 0;
                int j = 0;
                int l = 0;
                string ncrptd = "";
                string t = "";
                int k = cpassString.Length;
                string xpswd = cpassString.ToUpper();                   // this.Text.ToUpper();
                string ypswd = xpswd.Substring(k - 1, 1);                 //This is the last character

                for (i = 1; i < k; i++)
                {
                    ypswd = ypswd + xpswd.Substring(k - (i + 1), 1);
                }
                if (ypswd.Length > 5)
                {
                    t = ypswd.Substring(0, 1);
                    for (j = 1; j < ypswd.Length; j++)
                    {
                        if (j % 2 > 0)
                        {
                            t = t + ypswd.Substring(j, 1);
                        }
                        else
                        {
                            t = ypswd.Substring(j, 1) + t;
                        }
                    }
                    //            MessageBox.Show("The value of T is " + t+" length of t is "+t.Length);
                    j = t.Length % 10;
                    //          MessageBox.Show("The value of j is " + t);

                    for (i = 0; i < t.Length; i++)
                    {
                        int d = Convert.ToChar(t.Substring(i, 1));
                        l = d + j;
                        if (l > 90)
                        {
                            j = (l) % 90;
                        }
                        ncrptd = ncrptd + Convert.ToString(l);
                        j = (i + d + j) % 60;
                    }
                }
                else
                {
                 // MessageBox.Show("Password cannot be less than 6 Characters, please try again");
                    ncrptd = "";
                }
                return ncrptd;
            }
        }
    }
}