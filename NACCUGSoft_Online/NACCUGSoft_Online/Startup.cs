using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NACCUGSoft_Online.Startup))]
namespace NACCUGSoft_Online
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
