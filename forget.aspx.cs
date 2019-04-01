using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            List<forgetResult> f = db.forget(email).ToList();
            if (f.Count == 0)
            {
                Button1.Text = "NO User";
            }
            else
            {
                string pass = f[0].Art_Password;
                Button1.Text = pass;
            }
        }
    }
}