using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Data;

public partial class stu_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        SqlCommand objcmd = new SqlCommand("Insert into student(stu_fname,stu_lname,stu_initial,stu_dob,stu_join_date,stu_instructor,stu_email,stu_mobile,stu_address,stu_status,stu_psw) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + RadioButtonList1.SelectedItem.ToString() + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','not register','" + TextBox10.Text + "')", objsqlconn);
        objcmd.ExecuteNonQuery();
        SqlDataReader dr = objcmd.ExecuteReader();
        
        
            while (dr.Read())
            {
                Session["user"] = dr["stu_fname"];
               
            }

            Label1.Visible = true;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        Response.Redirect("user_login.aspx");
        if (Page.IsValid)
        {
            Label1.Text = "register sucess";
        }
        else
        {
            Label1.Text = "Fill up all the fields";
        }
    }
    
    
}
