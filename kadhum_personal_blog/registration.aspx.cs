using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    database_hundler db = new database_hundler();
    protected void Button1_Click(object sender, EventArgs e)
{


    try
    {
        string insert = " insert into usersTable (user_name,password,user_email,gender,phone_number,cv) values('" + userName_txt.Text + "','" + passowrd_txt.Text + "','" + emailTextBox1.Text + "','" + genderTextBox2.Text + "','" + phonetxt.Text + "','" + cvTextBox4.Text + "')";
        db.sqlcmnd_add_del_updt(insert);

        Response.Redirect("http://localhost:49184/LoginPage.aspx");
    }
        catch(Exception ec){
            Response.Write(ec.StackTrace.ToString());
        }
}
}
