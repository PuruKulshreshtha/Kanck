using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class Admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string pass = TextBox2.Text;
            List<AdminloginResult> k = db.Adminlogin(name, pass).ToList();
            if (pass != null)
            {
                if (name != null)
                {

                    if (k.Count == 0)
                    {
                        Literal1.Text = "<script>alert('Enter valid email or password');</script>";

                    }

                    else
                    {
                        Session["Id"] = k[0].A_ID;
                        Response.Redirect("Admin_pannel.aspx");
                        //Response.Redirect("normal.aspx?artid=" + k[0].Art_ID);
                    }
                }
                else
                {
                    Literal1.Text = "<script>alert('Enter email');</script>";
                }
            }
            else
            {
                Literal1.Text = "<script>alert('Enter password');</script>";
            }

        }
    }
}