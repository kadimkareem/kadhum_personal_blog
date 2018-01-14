<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <article>
             <header><h1>creat account</h1></header>
             <table class="loginTablr">
                 <tr>
                     <td>
                         <asp:Label ID="userName_lbl" runat="server" Text="User name" CssClass="labl"></asp:Label>
                         <br />
                         <asp:Label ID="passowrd_lbl" runat="server" Text="Passowrd" CssClass="labl"></asp:Label>
                     </td>
                     <td>
  <asp:Label ID="Label5" runat="server" Text="" CssClass="labl"></asp:Label>
                         <br />
                                          <asp:Label ID="Label6" runat="server" Text=" " CssClass="labl"></asp:Label>
                     </td>
                   

                 </tr>
                  <tr>
                     <td>
                         <asp:Label ID="Label1" runat="server" Text="email" CssClass="labl"></asp:Label>
                         <br />
                         <asp:Label ID="Label2" runat="server" Text="gender" CssClass="labl"></asp:Label>
                     </td>
                     <td>
    <asp:Label ID="Label8" runat="server" Text=" " CssClass="labl"></asp:Label>
                         <br />
                                             <asp:Label ID="Label90" runat="server" Text=" " CssClass="labl"></asp:Label>
                     </td>
                   

                 </tr>
                  <tr>
                     <td>
                         <asp:Label ID="Label3" runat="server" Text="phone number" CssClass="labl"></asp:Label>
                         <br />
                         <asp:Label ID="Label4" runat="server" Text="cv" CssClass="labl"></asp:Label>
                     </td>
                     <td>
    <asp:Label ID="Label7" runat="server" Text=" " CssClass="labl"></asp:Label>
                         <br />
                                             <asp:Label ID="Label9" runat="server" Text=" " CssClass="labl"></asp:Label>
                     </td>
                   

                 </tr>
             </table>
         <asp:Button ID="Button1" runat="server" Text="login" />
             <footer><a href="ArticleDetail.aspx">creat account</a></footer>
         </article>
</asp:Content>

