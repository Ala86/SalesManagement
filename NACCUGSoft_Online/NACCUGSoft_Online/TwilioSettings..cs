using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TwilioSmsConsole
{
    public class TwilioSettings
    {
        public string AccountSid { get; set; }
        public string AuthToken { get; set; }
        public string FromPhoneNumber { get; set; }
    }
}