<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="jsStatus._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p> <div id="messages">
         <div class="msg old">
            message request
        </div>
        </div>
        <br /><br />
        <asp:TextBox ID="txtName" Text="Name" runat="server" />
        <br />
        <asp:TextBox ID="txtAddress" Text="Address" runat="server" />
        <br />
        <asp:TextBox ID="txtEmail" Text="Email" runat="server"/>
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>
