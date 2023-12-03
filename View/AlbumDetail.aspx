<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="AlbumDetail.aspx.cs" Inherits="Projek.View.AlbumDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="position-absolute top-50 start-50 translate-middle">
        <div class="p-3 mb-2 bg-secondary text-white">
            <h2 style=" font-family:'Century Schoolbook'; font-weight:bold;">Album Detail</h2>
        
                <div class="mb-3">
                   <asp:Image ID="AlbumImage" Width="200px" runat="server" />
                </div>
                <div style=" font-family:'Century Schoolbook'; font-weight:bold;">
                    <h3>Album Name: <asp:Label ID="AlbumName" runat="server"></asp:Label></h3>
                    <p>Album Price: <asp:Label ID="AlbumPrice" runat="server"></asp:Label></p>
                    <p>Album Stock: <asp:Label ID="AlbumStock" runat="server"></asp:Label></p>
                    <p>Album Description: <asp:Label ID="AlbumDescription" runat="server"></asp:Label></p>
                </div>

            <div style=" font-family:'Century Schoolbook'; font-weight:bold;">
                <asp:Label ID="Quantity" runat="server" Text="Quantity" Visible="false" class="form-label"></asp:Label>
                <asp:TextBox ID="QuantityTxt" runat="server" Text="0" Visible="false" class="form-control"></asp:TextBox>
                <asp:Label ID="QuantityLbl" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <br />
            <asp:Button ID="AddToCartBtn" runat="server" Text="Add To  Cart" Visible="false" onClick="AddToCartBtn_Click" class="btn btn-dark w-100 py-2"/>


            </div>
    </div>

</asp:Content>
