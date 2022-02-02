using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LibraryWeb.user
{
    public partial class user_display_all_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\umutd\Desktop\LibraryWeb\LibraryWeb\App_Data\lms.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            /*
            if(Session["user"]==null)
            {
                Response.Redirect("user_login.aspx");
            }
            */
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();
        }

        protected void r1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        public string checkpdf(object myvalue,object id)
        {
            return "<a href='" + myvalue.ToString() + "' style='color:green'> view pdf</a>";
        }
    }
}