using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

public partial class accset : System.Web.UI.Page
{
   
   
     protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kungfuDB\App_Data\Database.mdf;Integrated Security=True;");

        con.Open();
        SqlCommand cmd = new SqlCommand("select * from adminlogin  where admin_name= '"+Session["user"]+"'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            TextBox1.Text = dr["admin_name"].ToString();
            TextBox4.Text = dr["email_id"].ToString();
 
        }
        con.Close();
    }
     protected void Button2_Click(object sender, EventArgs e)
     {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kungfuDB\App_Data\Database.mdf;Integrated Security=True;");

        con.Open();
         {
             string s = "update adminlogin set email_id='" + TextBox6.Text + "' where admin_name='" + Session["user"] + "'";
             SqlCommand cmd2 = new SqlCommand(s, con);
             cmd2.ExecuteNonQuery();
             Label3.Visible = true;
         }
         con.Close();
     }
     protected void Button1_Click(object sender, EventArgs e)
     {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kungfuDB\App_Data\Database.mdf;Integrated Security=True;");

        con.Open();
         string st = "select password from adminlogin where admin_name='" + Session["user"] + "'";
         SqlCommand cmd = new SqlCommand(st, con);
         string pwd = cmd.ExecuteScalar().ToString();

         if (pwd.Equals(TextBox3.Text))
         {

             string s = "update adminlogin set password='" + TextBox5.Text + "' where admin_name='" + Session["user"] + "'";
             SqlCommand cmd1 = new SqlCommand(s, con);
             cmd1.ExecuteNonQuery();
             Label2.Visible = true;
         }
         con.Close();
         

     }
}
