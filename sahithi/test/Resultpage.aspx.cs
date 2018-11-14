using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTest
{
    public partial class Resultpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string con = "server=DESKTOP-7D0184D;initial catalog=Interview;Integrated security=True;MultipleActiveResultSets=true";

                var examID = Request.QueryString["id"];

                string query = "Select * from paper1 where Exam_Id='" + examID + "'";

                SqlConnection conn = new SqlConnection(con);
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();

                da.Fill(table);
                conn.Close();
                da.Dispose();

                var lgclAnsweredCount = 0;
                var lgclWrongCount = 0;
                var lgclCorrectCount = 0;
                var anlAnsweredCount = 0;
                var anlWrongCount = 0;
                var anlCorrectCount = 0;
                var nonVerAnsweredCount = 0;
                var nonVerWrongCount = 0;
                var nonVerCorrectCount = 0;

                int i = 1;

                foreach (DataRow row in table.Rows)
                {
                    var UserAnswer = Convert.ToString(row["UserAnswer"]);
                    var OriginalAnswer = Convert.ToString(row["Answer"]);

                    if (UserAnswer != null && UserAnswer != "")
                    {
                        if (i <= 10)
                            lgclAnsweredCount++;
                        else if (i <= 20)
                            anlAnsweredCount++;
                        else
                            nonVerAnsweredCount++;

                        if (OriginalAnswer == UserAnswer)
                        {
                            if (i <= 10)
                                lgclCorrectCount++;
                            else if (i <= 20)
                                anlCorrectCount++;
                            else
                                nonVerCorrectCount++;
                        }
                        else
                        {
                            if (i <= 10)
                                lgclWrongCount++;
                            else if (i <= 20)
                                anlWrongCount++;
                            else
                                nonVerWrongCount++;
                        }
                    }
                    else
                    {
                        if (i <= 10)
                            lgclWrongCount++;
                        else if (i <= 20)
                            anlWrongCount++;
                        else
                            nonVerWrongCount++;
                    }
                    i++;
                }

                lblLgclAnswered.Text = "" + lgclAnsweredCount;
                lblLgclLeft.Text = "" + lgclWrongCount;
                lblLgclMarks.Text = "" + (lgclCorrectCount * 2);
                lblLgclCorrect.Text = "" + lgclCorrectCount;

                lblAnlAnswered.Text = "" + anlAnsweredCount;
                lblAnlLeft.Text = "" + anlWrongCount;
                lblAnlMarks.Text = "" + (anlCorrectCount * 2);
                lblAnlCorrect.Text = "" + anlCorrectCount;

                lblNonVerAnswered.Text = "" + nonVerAnsweredCount;
                lblNonVerLeft.Text = "" + nonVerWrongCount;
                lblNonVerMarks.Text = "" + (nonVerCorrectCount * 2);
                lblNonVerCorrect.Text = "" + nonVerCorrectCount;

                int totalMarks = (lgclCorrectCount * 2) + (nonVerCorrectCount * 2) + (anlCorrectCount * 2);

                lblMarks.Text = Convert.ToString(totalMarks);

                if (totalMarks > 45)
                    lblResult.Text = "SUCCESSFUL";
                else
                    lblResult.Text = "NOT SUCCESSFUL";
                    lblResult.ForeColor = Color.Red;



            }
        }

    }
}