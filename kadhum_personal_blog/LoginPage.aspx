<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <article>
             <header><h1>Login</h1></header>
             <table >
                 <tr>
                     <td>
                         <asp:Label ID="userName_lbl" runat="server" Text="User name" ></asp:Label>
                         <br />
                         <asp:Label ID="passowrd_lbl" runat="server" Text="Passowrd"></asp:Label>
                     </td>
                     <td>
  <asp:TextBox ID="userName_txt" runat="server" ></asp:TextBox>
                         <br />
                                          <asp:TextBox ID="passowrd_txt" runat="server"></asp:TextBox>
                     </td>
                   

                 </tr>
             </table>
         <asp:Button ID="Button1" runat="server" CssClass="button" Text="login" OnClick="Button1_Click" />
             <footer><a href="registration.aspx">creat account</a></footer>
         </article>
        
</asp:Content>

