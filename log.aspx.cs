using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            String em = TextBox1.Text;
            String pass = TextBox2.Text;
            List<log1Result> k = db.log1(em, pass).ToList();


            if (k.Count == 0)
            {
                Literal1.Text= "<script>alert('Enter valid email or password');</script>";
                //Button1.Text = "n0";
                //string script = "alert(\"Enter valid Email and Password\");";
                //  ScriptManager.RegisterStartupScript(this, GetType(),
                //                      "ServerControlScript", script, true);

                //Response.Redirect("log.aspx");
                //TextBox1.Text = null;
                TextBox2.Text = null;

            }
            else
            {
                Session["Id"] = k[0].Art_ID;
                Response.Redirect("blank.aspx");
                //Response.Redirect("normal.aspx?artid=" + k[0].Art_ID);
            }
        }
    }
}