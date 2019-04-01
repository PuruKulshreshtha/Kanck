using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class Change_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string old = TextBox1.Text;
            string pnew = TextBox2.Text;
            string confirm = TextBox3.Text;
            string id = Session["Id"].ToString();
            if(string.Equals(pnew,confirm))
            {
                List<check1Result> k = db.check1(Convert.ToInt32(id)).ToList();
                if (string.Equals(k[0].Art_Password, old))
                {
                    db.change(Convert.ToInt32(id), pnew);
                    Literal1.Text = "<script>alert('Password Change Successfully');</script>";
                    
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Change Password Successfully')", true);
                    //Response.Redirect("profilr.aspx");
                }
                else
                {
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Old pass word is wrong')", true);
                    Literal1.Text = "<script>alert('Password Missmatch');</script>";
                    Response.Redirect("profile.aspx");
                   // Button1.Text = "ok";
                }
            }
        }
    }
}