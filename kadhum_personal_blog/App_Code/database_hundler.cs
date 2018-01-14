using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for database_hundler
/// </summary>
public class database_hundler
{
    string constr = ConfigurationManager.ConnectionStrings["it_blog_dbConnectionString"].ConnectionString;
    public void connect()
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
    }
    public void disconnect()
    {
        SqlConnection con = new SqlConnection(constr);

        con.Close();
    }
    public void sqlcmnd_add_del_updt(string cmndstr)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmnd = new SqlCommand(cmndstr, con);
        con.Open();
        cmnd.ExecuteNonQuery();
        con.Close();

    }
    public DataTable sqlcmnd_select(string cmndstr)
    {

        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmnd = new SqlCommand(cmndstr, con);
        con.Open();
        DataTable dt = new DataTable();
        dt.Load(cmnd.ExecuteReader());
        con.Close();
        return dt;
    }
    public bool loginCheker(string name, string password)
    {
        SqlConnection con = new SqlConnection(constr);
        string check = "select * from dbo.usersTable where user_name ='" + name + "' and password ='" + password + "'";
        DataTable dt = sqlcmnd_select(check);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }

	public database_hundler()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}