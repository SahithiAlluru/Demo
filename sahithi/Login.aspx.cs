using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string connectionstring = @"Data Source=DESKTOP-7D0184D;Initial Catalog=Interview;User ID=sa;Password=Kammili7@";
            var examId = Guid.NewGuid().ToString();
            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {
                sqlcon.Open();
                var query = "INSERT INTO walkinsave VALUES (@Name,@Email,@MobileNumber)";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@Name", txtuser.Text);
                sqlcmd.Parameters.AddWithValue("@Email", txtmail.Text);
                sqlcmd.Parameters.AddWithValue("@MobileNumber", txtmobno.Text);
                sqlcmd.ExecuteNonQuery();

                query = "INSERT INTO Exam_Details VALUES (@Exam_Id,@Email)";
                sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@Exam_Id", examId);
                sqlcmd.Parameters.AddWithValue("@Email", txtmail.Text);
                sqlcmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            Response.Redirect("instructionpage.aspx?id=" + examId);
        }
    }
}