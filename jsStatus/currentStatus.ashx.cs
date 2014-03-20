using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

namespace jsStatus
{
    /// <summary>
    /// Summary description for currentStatus
    /// </summary>
    public class currentStatus : IHttpHandler
    {
        Random rnd = new Random();

        public void ProcessRequest(HttpContext context)
        {
            int rNum = rnd.Next(1, 4); // creates a number between 1 and 3
            context.Response.ContentType = "text/plain";
            if (rNum == 1)
            { 
                context.Response.StatusCode = (int)HttpStatusCode.BadRequest;
            }
            else
                if (rNum == 2)
                {
                    context.Response.Write("In processing");
                }
                else if (rNum == 3)
                {
                    System.Threading.Thread.Sleep(3000);
                    context.Response.Write("Completed process");
                }
                else
                {
                    System.Threading.Thread.Sleep(5000);
                    context.Response.Write("no status");
                }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}