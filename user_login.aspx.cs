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
        string str = "select * from student where stu_fname='" + TextBox1.Text + "' and stu_psw='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["user"] = dr["stu_fname"];
                Session["pass"] = dr["stu_psw"];
                Response.Redirect("stu_home.aspx");
               
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
            //string sel = "select * from Tablecr where tableno='" + TextBox1.Text + "'";
            //SqlCommand cmd = new SqlCommand(sel, con);
            //SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //   // Label1.Visible = false;
            //    //Label1.Text = "Already exist";
            //}
            //else
            //{
            //    con.Close();
            //    con.Open();
            //    string ins = "insert into Tablecr values('" + DDL.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            //    SqlCommand cmd1 = new SqlCommand(ins, con);
            //    cmd1.ExecuteNonQuery();


            //}

            con.Close();
        }
    }

}

