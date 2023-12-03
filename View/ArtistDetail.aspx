<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="ArtistDetail.aspx.cs" Inherits="Projek.View.ArtistDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="../Styles/ArtisDetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h2 style="text-align:center; font-family:'Century Schoolbook'; font-weight:bold;">Artist Detail</h2>
    </div>
    <div class= "container">
        <div class="p-3 mb-2 bg-secondary text-white">

            <asp:Image ID="ArtistImage" runat="server" Width="200px" />
            <h3 style="text-align:center; font-family:'Century Schoolbook'; font-weight:bold;"><asp:Label ID="ArtistName" runat="server"></asp:Label></h3>
        </div>
    </div>


    <asp:Button ID="InsertBtn" runat="server" Style="cursor: pointer;text-decoration: none; color: white; font-size: 15px; background-color: deepskyblue; padding: 4px 8px;" Text="Insert" Visible ="false" OnClick="InsertBtn_Click" />


        <h3 style="font-family:'Century Schoolbook'; font-weight:bold;">Albums</h3>
        
                <div class="row row-cols-1 row-cols-md-3 g-5">

                    <asp:Repeater ID="AlbumRepeater" runat="server" OnItemDataBound="CardRepeater_ItemDataBound">
                    <ItemTemplate>
                        <div class="col">

                            <div class="card">

                    <asp:LinkButton ID="OpenDetail" runat="server" Style="cursor: pointer; position: relative; text-align: center; display: block; width: 100%; height: 100%;" CommandArgument='<%#Eval("AlbumId") %>' OnClick="OpenDetail_Click">

                        <img src="../Assets/Album/<%# Eval("AlbumImage") %>" alt="Album Image" style="width: 100%; height: 100%; object-fit: cover;" />
                        <div style="position: absolute; bottom: 0; left: 0; right: 0; background-color: rgba(0, 0, 0, 0.7); padding: 8px; color: white;">
                            <p style="margin: 0; text-align: center;"><%# Eval("AlbumName") %></p>
                        </div>
                    </asp:LinkButton>

                    <div style="display: flex; justify-content: center;margin:5px;">
                        <asp:LinkButton ID="UpdateBtn" runat="server" Style="text-decoration: none; color: white; font-size: 15px; background-color: green; padding: 4px 8px;" CommandArgument='<%#Eval("AlbumId") %>' OnClick="UpdateBtn_Click" Visible="false">
                            Update
                        </asp:LinkButton>
                    </div>

                    <div style="display: flex; justify-content: center;margin:5px;">
                        <asp:LinkButton ID="DeleteBtn" runat="server" Style="text-decoration: none; color: white; font-size: 15px; background-color: red; padding: 4px 8px;" CommandArgument='<%#Eval("AlbumId") %>' OnClick="DeleteBtn_Click" Visible="false">
                            Delete
                        </asp:LinkButton>
                    </div>

                        </div>

                    </div>
 
            </ItemTemplate>
        </asp:Repeater>
    </div>


</asp:Content>
