using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Phan3_57132300.Startup))]
namespace Phan3_57132300
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
