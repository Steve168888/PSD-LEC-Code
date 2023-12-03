<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar/Navbar.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Projek.View.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
    <br />

    <h1 style=" font-family:'Century Schoolbook'; font-weight:bold;">K-POP ARTISTS</h1>

    <asp:Button ID="InsertBtn" runat="server" Style=" cursor: pointer;text-decoration: none; color: white; font-size: 15px; background-color: deepskyblue; padding: 4px 8px;" Text="Insert" Visible ="false" OnClick="InsertBtn_Click"/>

    <br />
    <br />

    <div class="row row-cols-1 row-cols-md-4 g-6">

<asp:Repeater ID="CardRepeater" runat="server" OnItemDataBound="CardRepeater_ItemDataBound">
    <ItemTemplate>
        
        <div class="col">
            <div class="card">
            <asp:LinkButton ID="OpenDetail" runat="server" Style="cursor: pointer; position: relative; text-align: center; display: block; width: 100%; height: 100%;" CommandArgument='<%#Eval("ArtistId") %>' OnClick="OpenDetail_Click">
                

                    <img src='<%# "../Assets/Artist/" + Eval("ArtistImage") %>' alt="Artist Image" style="width: 100%; height: 100%; object-fit: cover;" class="card-img-top"/>

                    <div style="position: absolute; bottom: 0; left: 0; right: 0; background-color: rgba(0, 0, 0, 0.7); padding: 8px; color: white;">
                        <p style="margin: 0; text-align: center; font-family:'Times New Roman', Times, serif; font-weight:bold;"><%# Eval("ArtistName") %></p>
                    </div>



            </asp:LinkButton>
            
            
                    <div style="display: flex; justify-content: center; margin:5px;">
                        <asp:LinkButton ID="UpdateBtn" runat="server" Style="text-decoration: none; color: white; font-size: 15px; background-color: green; padding: 4px 8px;" CommandArgument='<%#Eval("ArtistId") %>' OnClick="UpdateBtn_Click">
                            Update
                        </asp:LinkButton>
                    </div>
                    <div style="display: flex; justify-content: center;margin:5px;">
                        <asp:LinkButton ID="DeleteBtn" runat="server" Style="text-decoration: none; color: white; font-size: 15px; background-color: red; padding: 4px 8px;" CommandArgument='<%#Eval("ArtistId") %>' OnClick="DeleteBtn_Click">
                            Delete
                        </asp:LinkButton>
                    </div>
            </div>
        </div>
        
        
    </ItemTemplate>    
    </asp:Repeater>


</div>

</asp:Content>
