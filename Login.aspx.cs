using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class Login : System.Web.UI.Page
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
           
           
            if(k.Count==0 )
            {
                //Re"<script>alert(Enter valid email or password)</script>");
                Button1.Text = "n0";
                Response.Redirect("Login.aspx");
                
            }
            else
            {

                Response.Redirect("profile.aspx?artid="+k[0].Art_ID );
            }

        }
    }
}