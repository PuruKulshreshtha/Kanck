using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2
{
    public partial class blank : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //string id = Session["Id"].ToString();
        }
        private void showcat(int id)
        {
            System.Data.DataTable k =db.pickcat();
            if(k.Count>0)
            {
                Repeater1.DataSource = k;
                Repeater1.DataBind();
            }
        }
    }
}