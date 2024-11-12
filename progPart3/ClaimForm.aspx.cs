using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class SubmitClaim : Page
    {
        // Connection string to connect to the local database
        private string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True;Encrypt=True";

        // Event handler for form submission

       
 protected void SubmitClaim_Click(object sender, EventArgs e)
    {
        // Collect form data
        string lecturerName = LecturerName.Text;
        string email = Email.Text;
        string cellNumber = CellNumber.Text;
        string programCode = ProgramCode.Text;
        string moduleCode = ModuleCode.Text;
        string hoursWorked = HoursWorked.Text;
        string hourlyRate = HourlyRate.Text;
        string additionalNotes = AdditionalNotes.Text;

        // Initialize file path for the uploaded document
        string filePath = null;

        // Ensure the "Uploads" folder exists
        string uploadFolder = Server.MapPath("~/Uploads/");

        // Check if the folder exists, and create it if it doesn't
        if (!Directory.Exists(uploadFolder))
        {
            Directory.CreateDirectory(uploadFolder);
        }

        // Check if a file is uploaded
        if (FileUpload.HasFile)
        {
            // Get the file name and construct the full file path
            string fileName = Path.GetFileName(FileUpload.PostedFile.FileName);
            filePath = Path.Combine(uploadFolder, fileName);

            // Save the uploaded file to the server
            FileUpload.PostedFile.SaveAs(filePath);
        }

            // Now insert the claim into the database
            using (SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ClaimApp;Integrated Security=True;
"))
 {
                string query = "INSERT INTO Claims (LecturerName, Email, CellNumber, ProgramCode, ModuleCode, HoursWorked, HourlyRate, AdditionalNotes, SupportingDocument) " +
                           "VALUES (@LecturerName, @Email, @CellNumber, @ProgramCode, @ModuleCode, @HoursWorked, @HourlyRate, @AdditionalNotes, @SupportingDocument)";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                // Add parameters to prevent SQL injection
                cmd.Parameters.AddWithValue("@LecturerName", lecturerName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@CellNumber", cellNumber);
                cmd.Parameters.AddWithValue("@ProgramCode", programCode);
                cmd.Parameters.AddWithValue("@ModuleCode", moduleCode);
                cmd.Parameters.AddWithValue("@HoursWorked", hoursWorked);
                cmd.Parameters.AddWithValue("@HourlyRate", hourlyRate);
                cmd.Parameters.AddWithValue("@AdditionalNotes", additionalNotes);

                // Store the file path in the database (or NULL if no file was uploaded)
                cmd.Parameters.AddWithValue("@SupportingDocument", filePath ?? (object)DBNull.Value);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Optionally, notify the user that the claim was submitted successfully
        Response.Write("<script>alert('Claim Submitted Successfully');</script>");
    }


}
}