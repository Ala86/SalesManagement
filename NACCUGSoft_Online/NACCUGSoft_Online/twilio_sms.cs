using System;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace twilio_sms
{
    class Program
    {
        static void Main(string[] args)
        {
            TwilioClient.Init(
                Environment.GetEnvironmentVariable("TWILIO_ACCOUNT_SID"),
                Environment.GetEnvironmentVariable("TWILIO_AUTH_TOKEN"));

            MessageResource.Create(
           to: new PhoneNumber("+2202668623"),
              from: new PhoneNumber("+2202790316"),
            body: "Hi is Ala am testing");
        }
    }
}