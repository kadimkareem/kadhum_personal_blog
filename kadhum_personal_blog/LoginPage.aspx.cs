using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    database_hundler db = new database_hundler();
    protected void Page_Load(object sender, EventArgs e)
    {
        db.connect();
    }
    protected void Button1_Click(object sender, EventArgs e)

    {
       if( db.loginCheker(userName_txt.Text,passowrd_txt.Text)){
           Button1.Text = "you can login";
           Session["userLogin"] = userName_txt.Text;

           Response.Redirect("http://localhost:49184/Default.aspx");
       }
        else{
            Button1.Text = "no such user please check or creat account";
        }
       
       db.disconnect();
    }
    
}