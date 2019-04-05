using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class Admin_pannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int fid = Convert.ToInt32(TextBox1.Text);
            string attr = TextBox2.Text;
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.updateincate(fid, attr);
            Literal1.Text = "<script>alert('Update Sucessfully');</script>";
            TextBox1.Text = null;
            TextBox2.Text = null;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}