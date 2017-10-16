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
public partial class user_payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ////
        //string conn = "";
        //conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        //SqlConnection objsqlconn = new SqlConnection(conn);
        //objsqlconn.Open();
        ////Button b = (Button)sender;
        ////int id = Convert.ToInt32(b.CommandArgument);
        //string ins1 = "SELECT class.class_level, class.class_location, class.class_ddt, class.stu_num AS Expr1, class_reg.stu_num, class_reg.class_id, student.stu_fname, student.stu_status FROM class INNER JOIN class_reg ON class.class_Id = class_reg.class_id INNER JOIN student ON class.stu_num = student.stu_num AND class_reg.stu_num = student.stu_num";

        //SqlCommand cmd = new SqlCommand(ins1, objsqlconn);
        //cmd.ExecuteNonQuery();
        Label1.Visible = false;
        GridView1.DataBind();
}

    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        Button b = (Button)sender;
        int id = Convert.ToInt32(b.CommandArgument);
        string ins = "update payment set payment_status='register' where stu_num='" + id + "'";
        SqlCommand cmd = new SqlCommand(ins, objsqlconn);
        cmd.ExecuteNonQuery();
        Label1.Text="payment compelete";
        GridView1.DataBind();
    }
}