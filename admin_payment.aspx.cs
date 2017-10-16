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
public partial class admin_payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        Button btn = (Button)sender;
        int id = Convert.ToInt32(btn.CommandArgument);
        objsqlconn.Open();
        string del = "delete from payment_d where pay_Id='" + id + "'";
        SqlCommand objcmd = new SqlCommand(del, objsqlconn);
        objcmd.ExecuteNonQuery();
        //cmd1.ExecuteNonQuery();
        GridView1.DataBind();
    }
}