using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class CoordinatorDashboard : System.Web.UI.Page
    {
        // Connection string to connect to the local database
        private string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True;Encrypt=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClaims();
            }
        }

        // Load claims from the database and display them in a GridView
        private void LoadClaims()
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True;
"))
            {
                conn.Open();
                string query = "SELECT ClaimID, LecturerName, ProgramCode, ModuleCode, Status, DateSubmitted FROM Claims";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                ClaimsGridView.DataSource = dt;
                ClaimsGridView.DataBind();
            }
        }

        // Approve or reject the claim
        protected void UpdateClaimStatus(object sender, CommandEventArgs e)
        {
            int claimId = Convert.ToInt32(e.CommandArgument);
            string status = e.CommandName; // 'Approve' or 'Reject'

            using (SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True"))
            {
                conn.Open();
                string query = "UPDATE Claims SET Status = @Status WHERE ClaimID = @ClaimID";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.Parameters.AddWithValue("@ClaimID", claimId);
                cmd.ExecuteNonQuery();
            }

            // Reload the claims after updating the status
            LoadClaims();
        }
    }
}
