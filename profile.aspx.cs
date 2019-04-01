using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox3.Text;
            List<forgetResult> f = db.forget(email).ToList();
            Response.Write(f[0].Art_Password);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string old = TextBox1.Text;
            string pnew = TextBox2.Text;
            List<check1Result> k = db.check1(Convert.ToInt32(Request.QueryString[0])).ToList();
            if(string.Equals(k[0].Art_Password,old))
            {
                db.change(Convert.ToInt32(Request.QueryString[0]), pnew);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Change Password Successfully')", true);
                //Response.Redirect("profilr.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Old pass word is wrong')", true);
                Response.Redirect("profilr.aspx");
            }

        }

        
    }
}