// Install the C# / .NET helper library from twilio.com/docs/csharp/install
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using Twilio.AspNet.Mvc;
using Twilio.TwiML;


class Program 
{
    static void Main(string[] args)
    {
        // Find your Account Sid and Token at twilio.com/console
        // DANGER! This is insecure. See http://twil.io/secure
        const string accountSid = "AC25bde79e64a93e1844baddb3a5a77608";
        const string authToken = "49b2e50d4eca4870a2f44dd38ec7eb9b";

        TwilioClient.Init(accountSid, authToken);

        var message = MessageResource.Create(
            body: "Join Earth's mightiest heroes. Like Kevin Bacon.",
            from: new Twilio.Types.PhoneNumber("+2202790316"),
            to: new Twilio.Types.PhoneNumber("+2202668623")
        );

        Console.WriteLine(message.Sid);
    }
}

