<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectureProfile.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.LectureProfile" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claim History</title>
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
        <h1>Your Claim History</h1>

       <nav>
    <a href="Home.aspx">Home</a>
    <a href="ClaimForm.aspx">Claim Form</a>
   <a href="LectureProfile.aspx">Lecture Profile</a> <!--  Link to Lecture Profile -->
    <a href="Logout.aspx">Logout</a>
</nav>

        <asp:GridView ID="ClaimHistoryGridView" runat="server" AutoGenerateColumns="False" CssClass="table" Width="100%">
            <Columns>
                <asp:BoundField DataField="ClaimID" HeaderText="Claim ID" SortExpression="ClaimID" />
                <asp:BoundField DataField="DateSubmitted" HeaderText="Date Submitted" SortExpression="DateSubmitted" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="AdditionalNotes" HeaderText="Comments" SortExpression="AdditionalNotes" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
