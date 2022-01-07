using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GetEmployeeList();
        }
    }
    SqlConnection con = new SqlConnection(@"Data Source=LENOVO-PC;Initial Catalog=myempDB;Integrated Security=True");
    protected void Button1_Click(object sender, EventArgs e)
    {
        int employeeid = int.Parse(TextBox1.Text);
        String ename = TextBox2.Text,designation = DropDownList1.SelectedValue,age=TextBox3.Text,contact=TextBox4.Text;
        DateTime cdate = DateTime.Parse(TextBox5.Text);
        con.Open();
        SqlCommand co = new SqlCommand("exec EmployeeSetup '" + employeeid + "','" + ename + "','" + designation + "','" + age + "','" + contact + "','" + cdate + "' ", con);
        co.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');",true);
        GetEmployeeList();
    }

    void GetEmployeeList()
    {
        SqlCommand co = new SqlCommand("exec EmployeeList", con);
        SqlDataAdapter sd = new SqlDataAdapter(co);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int employeeid = int.Parse(TextBox1.Text);
        String ename = TextBox2.Text, designation = DropDownList1.SelectedValue, age = TextBox3.Text, contact = TextBox4.Text;
        DateTime cdate = DateTime.Parse(TextBox5.Text);
        con.Open();
        SqlCommand co = new SqlCommand("exec EmployeeUpdate '" + employeeid + "','" + ename + "','" + designation + "','" + age + "','" + contact + "','" + cdate + "' ", con);
        co.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
        GetEmployeeList();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int employeeid = int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand co = new SqlCommand("exec EmployeeDelete '" + employeeid + "'", con);
        co.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        GetEmployeeList();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int employeeid = int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand co = new SqlCommand("exec EmployeeSearch '" + employeeid + "'", con);
        SqlDataAdapter sd = new SqlDataAdapter(co);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        GetEmployeeList();
    }
}