<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projek.View.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="../Styles/Login.css" rel="stylesheet" />
    <formview>
        
    <div class="position-absolute top-50 start-50 translate-middle"> 
        <div class="p-3 mb-2 bg-secondary text-white">
        <h2 class="text-center">Login</h2>

        <div class="mb-3">
            <asp:label id="Label1" for="exampleInputEmail1" class="form-label" runat="server">Email address</asp:label>
            <asp:TextBox ID="EmailTxt" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
            <div id="emailHelp" class="form-text text-white">We'll never share your email with anyone else.</div>
            <asp:Label ID="EmailLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
        </div>

        <div class="mb-3">
            <asp:label id="label1password" for="exampleInputPassword1" class="form-label" runat="server">Password</asp:label>
            <asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
            <div id="passwordHelpBlock" class="form-text text-white">Your password must be 8-20 characters long.</div>
            <asp:Label ID="PasswordLbl" runat="server" Text="" Visible="false"  ForeColor="Red"></asp:Label>
        </div>

        <div class="mb-3 form-check">
            <asp:CheckBox ID="RememberCheckBox" runat="server"/>
            <asp:Label ID="RememberLabel" runat="server" Text="Remember Me" AssociatedControlID="RememberCheckBox"></asp:Label>
        </div>

        <div>
            <asp:Label ID="ErrorLbl" runat="server" Text="" Visible="false"  ForeColor="Red"></asp:Label>
        </div>

         <p>
       <asp:Button ID="loginBtn" runat="server" Text="Login" class="btn btn-dark w-100 py-2" onClick="loginBtn_Click"/>
        </p>
    </div>
        </div>

    </formview>
    
</asp:Content>