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
public partial class User_attend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label1.Text = "Sucessfully Register";
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        Button b = (Button)sender;
        int id = Convert.ToInt32(b.CommandArgument);
        string ins = "update student set stu_status='register' where stu_num='" + id + "'";
        SqlCommand cmd = new SqlCommand(ins, objsqlconn);
        cmd.ExecuteNonQuery();
        //SqlCommand cmd1 = new SqlCommand(ins, objsqlconn);
        //string ins1 = "insert into class_reg(class_reg_Id,stu_num,class_id) values('','','" + label + "')
        //    cmd1.ExecuteNonQuery();
       


    }
}