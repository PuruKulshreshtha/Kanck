using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2.website
{
    public partial class Artist_Details : System.Web.UI.Page
    {
        class Global
        {
            public static int ID;
            public static int S_id;

        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {if (!IsPostBack)
            {
                int id =Convert.ToInt32( Request.QueryString["id"]);
                int s_id = Convert.ToInt32(Session["Id"]);
                cat(id);
                data(id, s_id);
            }
        }
        
        private void cat(int id)
        {
            var k = db.pickfunvalue(id);
            //if(k.Count>0)
            {
                Repeater1.DataSource = k;
                Repeater1.DataBind();
            }
        }
        protected void data(int id,int s_id)
        {
            Global.ID = id;
            Global.S_id = s_id;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("b1");
            //((Button)sender).Text = "b1";
            foreach (RepeaterItem i in Repeater1.Items)
            {
                Label lbl = (Label)i.FindControl("Label2");
                TextBox txt=(TextBox )i.FindControl("TextBox1");
                db.data_value( Convert.ToInt32 (lbl.Text ), Global.S_id, txt.Text );
                Label3.Text += lbl.Text + "---" + txt.Text; 
            }
            
            
            
            

            
            Response.Redirect("Profile.aspx");
        }


        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            //((Button)sender).Text = "c1";
            Response.Write("c1");
        }
    }
}

