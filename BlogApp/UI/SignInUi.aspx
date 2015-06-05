<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInUi.aspx.cs" Inherits="BlogApp.UI.SignInUi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Email:</p>
        <p>
            <asp:TextBox ID="txtCheckEmail" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:</p>
        <p>
            <asp:TextBox ID="txtCheckPassword" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
