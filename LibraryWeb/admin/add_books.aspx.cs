using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace LibraryWeb.admin
{
    public partial class add_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\umutd\Desktop\LibraryWeb\LibraryWeb\App_Data\lms.mdf;Integrated Security=True");

       // public object Class1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void b1_Click1(object sender, EventArgs e)
        {

            string fileName = System.IO.Path.GetRandomFileName();
            string books_pdf = "";
            string books_image_name = fileName+".jpg";
            string path2 = "";

            string path = "";
            f1.SaveAs(Request.PhysicalApplicationPath + "/admin/books_images/" + books_image_name.ToString());
            path = "books_images/" +books_image_name.ToString();
            
            if (f2.FileName.ToString()!="")
            {
                books_pdf = fileName+".pdf";
                
                f2.SaveAs(Request.PhysicalApplicationPath + "/user/books_pdf/" + books_pdf.ToString());
                path2 = "books_pdf/" + books_pdf.ToString();
            }

           

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into books values('" + bookstitle.Text + "','" + path.ToString() + "','"+path2.ToString()+"','" + authorname.Text + "','" + isbn.Text + "','"+ qty.Text + "')";
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block"); 
        }
    }
}