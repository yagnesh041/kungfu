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

public partial class Userparent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        SqlCommand objcmd = new SqlCommand("Insert into parent_detail(parent_email,parent_mobileno) Values('" + TextBox1.Text+ "','" + TextBox2.Text + "')", objsqlconn);
        objcmd.ExecuteNonQuery();
        Label4.Visible = true;
        TextBox1.Text = "";
        TextBox2.Text = "";



        if (Page.IsValid)
        {
            Label4.Text = "add sucessfully";
        }
        else
        {
            Label4.Text = "Fill up all the fields";
        }
 
    }



}