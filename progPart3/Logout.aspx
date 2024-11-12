<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="progPart3.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        /* General page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333;
        }

        /* Centered content box */
        .content-box {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        /* Title styling */
        h2 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #444;
        }

        p {
            font-size: 16px;
            color: #666;
        }

        /* Button styling */
        .action-button {
            font-size: 18px;
            padding: 12px 0;
            margin: 12px 0;
            color: #ffffff;
            width: 100%;
            border: none;
            cursor: pointer;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }

        .action-button i {
            margin-left: 12px;
            font-size: 22px;
        }

        .logout-button {
            background-color: #e74c3c;
        }

        .logout-button:hover {
            background-color: #c0392b;
        }

        .coordinator-button {
            background-color: #27ae60;
        }

        .coordinator-button:hover {
            background-color: #1e8449;
        }

        .hr-button {
            background-color: #3498db;
        }

        .hr-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content-box">
            <h2>Logout Successful</h2>
            <p>Please select an option to proceed:</p>
            
            <!-- Lecture Login button -->
            <asp:Button ID="btnLogout" runat="server" Text="Lecture Login" CssClass="action-button logout-button" OnClick="btnLogout_Click" />
            <i class="fas fa-sign-out-alt"></i>

            <!-- Coordinator Dashboard button -->
            <asp:Button ID="btnCoordinatorDashboard" runat="server" Text="Login as Coordinator" CssClass="action-button coordinator-button" OnClick="btnCoordinatorDashboard_Click" />
            <i class="fas fa-user-shield"></i>

            <!-- HR Dashboard button -->
            <asp:Button ID="btnHrDashboard" runat="server" Text="Login as HR" CssClass="action-button hr-button" OnClick="btnHrDashboard_Click" />
            <i class="fas fa-user-tie"></i>
        </div>
    </form>
</body>
</html>

