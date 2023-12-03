<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="Projek.View.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="position-absolute top-50 start-50 translate-middle"> 
        
        <div class="p-3 mb-2 bg-secondary text-white">
            <h2 style="text-align:center;">Upadate Profile</h2>

        <div class="mb-3">

            <asp:label id="NameLbl1" for="exampleInputEmail1" class="form-label" runat="server">Username</asp:label> 
            <asp:TextBox ID="NameTxt" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
            <%--<div id="emailHelp" class="form-text text-white">Input your Username For Register</div>--%>
            <asp:Label ID="NameLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label> 
        </div>

        <div class="mb-3">

            <asp:label id="EmailLbl1" for="exampleInputEmail1" class="form-label" runat="server">Email address</asp:label>
            <asp:TextBox ID="EmailTxt" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
            <div id="emailHelp2" class="form-text text-white">We'll never share your email with anyone else.</div>
            <asp:Label ID="EmailLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>

        </div>

        <div class="mb-3">

            <asp:label id="Label1" for="exampleInputEmail1" class="form-label text-dark" runat="server" style="font-size:25px; font-weight:600;">Gender</asp:label>
            <div id="emailHelp3" class="form-text text-white" style="font-size:10px;">Choose Your Gender!</div>
            <asp:RadioButtonList ID="GenderList" runat="server">
            <asp:ListItem Text="Male" Value="M" />
            <asp:ListItem Text="Female" Value="F" />
            </asp:RadioButtonList>
            <asp:Label ID="GenderLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>

       </div>

                    <div class="mb-3">
            <asp:label id="AddressLbl1" for="exampleInputEmail1" class="form-label" runat="server">Address</asp:label>
            <asp:TextBox ID="AddressTxt" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
            <asp:Label ID="AddressLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
                    </div>

                    <div class="mb-3">
            <asp:label id="PasswordLbl1" for="exampleInputPassword1" class="form-label" runat="server">Password</asp:label>
            <asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
            <div id="passwordHelpBlock" class="form-text text-white">Your password must be 8-20 characters long.</div>
            <asp:Label ID="PasswordLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
                    </div>

                    <div>
                        <p>
                            <asp:Button ID="updateBtn" runat="server" Text="Update" class="btn btn-dark w-100 py-2"
                            onClick="updateBtn_Click"/>
                        </p>            
                   </div>
 
        </div>
    
    </div>

</asp:Content>
