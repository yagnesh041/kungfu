using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class login : System.Web.UI.Page
{
    //static string str = ConfigurationManager.AppSettings["cs2"];
//    SqlConnection con = new SqlConnection(str);

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kungfuDB\App_Data\Database.mdf;Integrated Security=True;");
        con.Open();
        string str = "select * from adminlogin where admin_name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["user"] = dr["admin_name"];
                Session["pass"] = dr["password"];
                Response.Redirect("home.aspx");
               
            }
        }
        else
        {
            Response.Write("invalid username or password");

        }

        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kungfuDB\App_Data\Database.mdf;Integrated Security=True;");
        con.Open();
        {
            SqlCommand cmd = new SqlCommand("select * from adminlogin where email_id='" + TextBox3.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    MailMessage mail = new MailMessage();
                    mail.To.Add(dr["email_id"].ToString());
                    string name = "textbox3.text";
                    mail.Subject = "recover password";
                    mail.Body = "your password is" + dr["password"].ToString();
                    mail.From = new MailAddress("mistryyagnesh@ymail.com");
                    mail.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient("Smtp.mail.yahoo.com", 587);
                    client.EnableSsl = true;
                    NetworkCredential credantials = new NetworkCredential("mistryyagnesh@ymail.com", "Sunny12011991");
                    client.Credentials = credantials;
                    try
                    {
                        client.Send(mail);
                       // Label1.Text = "sucess";
                    }
                    catch
                    {
                        //Label1.Text = "fail";
                    }
                }
            }
            else
            {
                //Label2.Text= "mail not exist";
            }
            con.Close();
        }
    }

}

