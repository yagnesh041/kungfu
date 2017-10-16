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

public partial class admin_add_class : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label4.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
    }
    
    

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        SqlCommand objcmd = new SqlCommand("Insert into class(class_level,class_location,class_ddt) Values('" + DropDownList1.SelectedItem.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", objsqlconn);
        objcmd.ExecuteNonQuery();
        Label1.Visible = true;
        DateTime dob = DateTime.Parse(Request.Form[TextBox3.UniqueID]);
        TextBox2.Text = "";
       
        

        if (Page.IsValid)
        {
            Label1.Text = "add sucessfully";
        }
        else
        {
            Label1.Text = "Fill up all the fields";
        }
        GridView1.DataBind();
    }

    

    


    protected void Button3_Click(object sender, EventArgs e)
    {
        Button4.Visible = true;
        Button5.Visible = true;
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        Button1.Visible = true;
       
       
        Button btn = (Button)sender;
        int id = Convert.ToInt32(btn.CommandArgument);
        string sel = "select * from class where class_id='" + id + "'";
        SqlCommand cmd = new SqlCommand(sel, objsqlconn);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            DropDownList1.Text = dr["class_level"].ToString();
            TextBox2.Text = dr["class_location"].ToString();
            TextBox3.Text = dr["class_ddt"].ToString();
           
            Label1.Text = dr["class_id"].ToString();



        }

        
    }

   

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string conn = "";
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        Button btn = (Button)sender;
        int id = Convert.ToInt32(btn.CommandArgument);
        objsqlconn.Open();
        string del = "delete from class where class_id='" + id + "'";
        SqlCommand objcmd = new SqlCommand(del, objsqlconn);
        objcmd.ExecuteNonQuery();
        //cmd1.ExecuteNonQuery();
        GridView1.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string conn = "";
        Label1.Visible = true;
        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();
        SqlConnection objsqlconn = new SqlConnection(conn);
        objsqlconn.Open();
        
        string upd = "update class set class_level='" + DropDownList1.SelectedItem.ToString() + "',class_location='" + TextBox2.Text + "',class_ddt='" + TextBox3.Text + "' where class_id='" + Convert.ToInt32(Label1.Text) + "'";
        SqlCommand cmd1 = new SqlCommand(upd, objsqlconn);
        cmd1.ExecuteNonQuery();
        GridView1.DataBind();
    }

    

    protected void Button5_Click1(object sender, EventArgs e)
    {
        Button1.Visible = true;
        //Button4.Visible = false;

        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}