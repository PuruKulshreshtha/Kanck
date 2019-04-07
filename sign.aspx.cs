using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mimi2.sign
{
    public partial class sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string mob = TextBox3.Text;
            DateTime dob = Convert.ToDateTime("22/12/1000");
            if (TextBox4.Text == null)
            {

                TextBox4.Text = null;
                Literal1.Text = "<script>alert('Enter the Date in format DD/MM/YYYYY');</script>";
            }
            else
            {
                 dob = Convert.ToDateTime(TextBox4.Text);
            }
            string v = "";
            bool check = Male.Checked;
            bool check1 = Female.Checked;
            bool check2 = Others.Checked;
            if(check)
            {
                v = Male.Text;
            }
            if (check1)
            {
                v = Female.Text;
            }
            if (check2)
            {
                v = Others.Text;
            }

            string pass = TextBox5.Text;
            string cpass = TextBox5.Text;
            if(string.Equals(pass,cpass))
            {
               List < emailcheckResult > f = db.emailcheck(email).ToList();
                if(f.Count==0)
                {
                    List<mobcheckResult> p = db.mobcheck(mob).ToList();
                    if (p.Count == 0)
                    {
                        if (CheckBox1.Checked == true)
                        {
                            if (v == null)
                            {
                                TextBox4.Text = null;
                                Literal1.Text = "<script>alert('Enter the Date in format DD/MM/YYYYY');</script>";
                            }
                            else
                            {
                                if (mob.Length != 10)
                                {
                                    TextBox3.Text = null;
                                    Literal1.Text = "<script>alert('Enter valid Phone No');</script>";
                                }
                                else
                                {
                                    db.upda(name, email, mob, v, dob, pass);
                                    List<forgetResult> k = db.forget(email).ToList();
                                    Session["Id"] = k[0].Art_ID;
                                    Literal1.Text = "<script>alert('Sucessfully registered');</script>";
                                    Response.Redirect("category.aspx");
                                }
                            }
                        }
                        else
                        {
                            Literal1.Text = "<script>alert('Please accept all Terms and Condition');</script>";
                        }
                    }
                    else
                    {
                        Literal1.Text = "<script>alert('Phone number is already registered');</script>";
                    }

                }
                else
                {
                    Literal1.Text = "<script>alert('Email is already used');</script>";
                }
             
            }
            else
            {
                Literal1.Text = "<script>alert('Password and Confirm Password is not same');</script>";
            }


        }
    }
}