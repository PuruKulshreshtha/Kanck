using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class New_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string pass = TextBox2.Text;
            string code = TextBox3.Text;
            if (string.Equals(code,"V12345"))
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                db.Adminupdate(name, pass);
                Literal1.Text = "<script>alert('Sucessfully Created ');</script>";
                Response.Redirect("Admin_login.aspx");
            }
        }
    }
}