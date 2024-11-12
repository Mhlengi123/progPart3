using System;
using System.Web.UI;

namespace progPart3
{
    public partial class Logout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear session when page loads
            Session.Abandon();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Redirect to Home page or Lecture Login
            Response.Redirect("Home.aspx");
        }

        protected void btnCoordinatorDashboard_Click(object sender, EventArgs e)
        {
            // Redirect to Coordinator Dashboard login page
            Response.Redirect("CoordinatorDashboard.aspx");
        }

        protected void btnHrDashboard_Click(object sender, EventArgs e)
        {
            // Redirect to HR Dashboard login page
            Response.Redirect("HrDashboard.aspx");
        }
    }
}
