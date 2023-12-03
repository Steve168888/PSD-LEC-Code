<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Projek.View.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="card mb-3 position-absolute top-50 start-50 translate-middle bg-light text-dark" style="max-width: 540px; font-family:'Times New Roman';">
        <asp:Repeater ID="CartRepeater" runat="server" OnItemCommand="CartRepeater_ItemCommand">
        <ItemTemplate>
        <div class="row g-0">

            <%--<div style="display: flex; align-items: center; margin-bottom: 10px;">--%>
                <div class="col-md-4 p-3 mb-2 bg-secondary">
                    <img src='<%# GetImageUrl(Eval("AlbumImage")) %>' alt="Album Image" <%--style="width: 150px; height: 150px;"--%> class="img-fluid rounded-start" />
                </div>

                <div <%--style="margin-left: 10px;"--%> class="col-md-8">
                        <div class="card-body">
                    <h5 class="card-title" style="font-weight:bold;"><%# Eval("AlbumName") %></h5>
                    <p>Quantity: <%# Eval("Quantity") %></p>
                    <p>Album Price: <%# Eval("AlbumPrice", "{0:C}") %></p>
                    <asp:Button ID="RemoveBtn" runat="server" Text="Remove" CssClass="remove-btn" style="font-weight:bold; background-color:lightsteelblue;" CommandName="Remove" CommandArgument='<%# Eval("AlbumId") %>' />
                        </div>
                </div>
            <%--</div>--%>
         </div>

        </ItemTemplate>
        </asp:Repeater>
        <br />
        <asp:Button ID="CheckoutBtn" runat="server" Text="Checkout" CssClass="checkout-btn" OnClick="CartCheckout_Click" style="font-weight:bold; background-color:lightsteelblue;"/>

    </div>


    <div style="margin-top: 20px;">
    </div>


</asp:Content>
