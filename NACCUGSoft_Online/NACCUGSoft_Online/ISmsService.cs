using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TwilioSmsConsole
{
    public interface ISmsService
    {
        void Send(string recipient, string message);
    }
}