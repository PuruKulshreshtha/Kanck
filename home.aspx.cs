using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using System.Data.Linq.Mapping;
namespace mimi2
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DataClasses1DataContext db = new DataClasses1DataContext();
        
        protected void Button2_Click(object sender, EventArgs e1)
        {
           /* string n="", e="";
            int p=0;
            var k = db.take1().FirstOrDefault();
            n = k.f_name;
            e = k.f_email;
            p = Convert.ToInt32 (k.f_phone.ToString());
            var k1 = from p1 in db.tbl_Artists where p1.Art_Email == e select p1;
            if (k1.Count()==0)
            {
                db.upda(n, e, p, "", "", Guid.NewGuid().ToString().Substring(0, 5));
                Response.Write("login new person");
            }
            else
            {
                var k2 = (from p1 in db.tbl_Artists where p1.Art_Email == e select p1).FirstOrDefault();
                Response.Write("login old per" + k2.Art_ID);
            }*/
 
        }
        public class log
        {
            int id1 = 0;
            string na1 = String.Empty;
            string em1 = String.Empty;
            string ph1 = String.Empty;
            DateTime dob1 = DateTime.Today;
            string v1 = String.Empty;
            string pass1 = String.Empty;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string na = TextBox1.Text;
            string em = TextBox2.Text;
            string  ph = TextBox3.Text;
            DateTime dob=Convert.ToDateTime(TextBox4.Text);
            string v = DropDownList1.Text;
            string pass = TextBox5.Text;
            db.upda(na, em, ph, v,dob,  pass);
            Response.Redirect("profile.aspx");
            var log2 = (db.log1(em, pass)).FirstOrDefault();
           
        }
    }
}
 