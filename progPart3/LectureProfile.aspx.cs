using System;
using System.Data;
using System.Data.SqlClient;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class LectureProfile : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True;Encrypt=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClaimHistory();
            }
        }

        private void LoadClaimHistory()
        {
            string email = "lecturer@example.com"; // Get the email of the logged-in user

            using (SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True;
"))
            {
                conn.Open();
                string query = "SELECT ClaimID, DateSubmitted, Status, (HoursWorked * HourlyRate) AS Amount, AdditionalNotes FROM Claims WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ClaimHistoryGridView.DataSource = dt;
                ClaimHistoryGridView.DataBind();
            }
        }
    }
}
