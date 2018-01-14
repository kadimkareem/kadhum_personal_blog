using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class new_article : System.Web.UI.Page
{
    database_hundler db=new database_hundler();
    protected void Page_Load(object sender, EventArgs e)
    {
     
  string create_date=DateTime.Today.ToString();
        created_date_TextBox.Text=create_date;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string insert = " insert into articles (title,the_content,created_date,user_id) values('" + title_txt.Text + "','" + contetn.Text + "','" + created_date_TextBox.Text + "','" + 1 + "')";
        db.sqlcmnd_add_del_updt(insert);
        
        Response.Redirect(Request.RawUrl);
    }
    }
