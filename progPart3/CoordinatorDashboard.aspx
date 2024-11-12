<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorDashboard.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.CoordinatorDashboard" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coordinator Dashboard</title>
    <style>
       body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

header {
    background-color: #007bff;
    color: white;
    padding: 10px 0;
    text-align: center;
}

header h1 {
    margin: 0;
    font-size: 2.5rem;
}

/* Navigation Bar */
nav {
    display: flex;
    justify-content: center;
    background-color: #0056b3;
    padding: 10px 0;
}

nav a {
    color: white;
    text-decoration: none;
    margin: 0 15px;
    font-size: 1.1rem;
    font-weight: bold;
}

nav a:hover {
    text-decoration: underline;
}

/* Forms and Tables */
form {
    margin: 20px;
    padding: 15px;
    border: 1px solid #ccc;
    border-radius: 10px;
    background-color: #f9f9f9;
}

form div {
    margin-bottom: 10px;
}

label {
    display: block;
    font-weight: bold;
}

input, textarea, button {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background-color: #007bff;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

.container {
    width: 90%;
    margin: 20px auto;
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: left;
}

th {
    background-color: #007bff;
    color: white;
}

footer {
    text-align: center;
    background-color: #007bff;
    color: white;
    padding: 15px 0;
    margin-top: 20px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Coordinator Dashboard</h1>
        <nav>
        <a href="CoordinatorDashboard.aspx">Dashboard</a> |
        <a href="ManageClaims.aspx">Manage Claims</a> |
        <a href="LecturerProfiles.aspx">Lecturer Profiles</a> |
        <a href="ProgramReports.aspx">Program Reports</a> |
        <a href="ModuleOverview.aspx">Module Overview</a> |
        <a href="Notifications.aspx">Notifications</a>
    </nav>
        <p>Welcome to the Coordinator Dashboard!</p>
        
        <asp:GridView ID="ClaimsGridView" runat="server" AutoGenerateColumns="False" OnRowCommand="UpdateClaimStatus" 
                      CssClass="table" Width="100%">
            <Columns>
                <asp:BoundField DataField="ClaimID" HeaderText="Claim ID" SortExpression="ClaimID" />
                <asp:BoundField DataField="LecturerName" HeaderText="Lecturer Name" SortExpression="LecturerName" />
                <asp:BoundField DataField="ProgramCode" HeaderText="Program Code" SortExpression="ProgramCode" />
                <asp:BoundField DataField="ModuleCode" HeaderText="Module Code" SortExpression="ModuleCode" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="DateSubmitted" HeaderText="Date Submitted" SortExpression="DateSubmitted" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button runat="server" CommandName="Approve" CommandArgument='<%# Eval("ClaimID") %>' Text="Approve" CssClass="btn btn-success" />
                        <asp:Button runat="server" CommandName="Reject" CommandArgument='<%# Eval("ClaimID") %>' Text="Reject" CssClass="btn btn-danger" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

