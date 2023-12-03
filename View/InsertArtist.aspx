<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="InsertArtist.aspx.cs" Inherits="Projek.View.InsertArtist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="position-absolute top-50 start-50 translate-middle"> 
        <div class="p-3 mb-2 bg-secondary text-white">

        <div class="mb-3">

            <asp:label id="artis" for="inputArtistName" class="form-label" runat="server">Artis Name</asp:label>
            <asp:TextBox ID="ArtistNameTxt" runat="server" class="form-control"></asp:TextBox>
                <asp:Label ID="ArtistNameLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
        </div>

        <br /> 
            <div class="mb-3">
        <label>Image</label>
            <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="ArtistImageLbl" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>

      </div>

    <div class="mb-3">
        <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" class="btn btn-dark w-100 py-2"/>
        <br />
        <asp:Button ID="CancelBtn" runat="server" Text="Cancel" OnClick="CancelBtn_Click" class="btn btn-dark w-100 py-2"/>
    </div>
            </div>
            </div>

</asp:Content>
