<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpUi.aspx.cs" Inherits="BlogApp.UI.SignUpUi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Name:
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    
    </div>
        Email:<br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        Password:<br />
        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <br />
        Re entry Password:<br />
        <asp:TextBox ID="txtRe" runat="server"></asp:TextBox>
        <br />

        
        <asp:Button ID="btnUserSave" runat="server" OnClick="btnUserSave_Click" Text="Save"  />
    
        <%--<script>
            var value1 = document.getElementById('txtPass').value;
            var value2 = document.getElementById('txtRe').value;
            
            function Check(value1, value2) {
                if(value1==value2)
                {
                    alert("Password  match");
                    //return true;
                    
                }
                else
                {
                    alert("Password not match");
                   // return false;
                }
            }
        </script>--%>

    </form>
</body>
</html>
