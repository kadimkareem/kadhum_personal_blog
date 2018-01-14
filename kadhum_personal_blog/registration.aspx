<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <article>
             <header><h1>creat account</h1></header>
             <table >
                 <tr>
                     <td>
                         <asp:Label ID="userName_lbl" runat="server" Text="User name" ></asp:Label>
                         <br />
                         <asp:Label ID="passowrd_lbl" runat="server" Text="Passowrd"></asp:Label>
                     </td>
                     <td>
  <asp:TextBox ID="userName_txt" runat="server" CssClass="textBox"></asp:TextBox>
                         <br />
                                          <asp:TextBox ID="passowrd_txt" runat="server" CssClass="textBox"></asp:TextBox>
                     </td>
                   

                 </tr>
                  <tr>
                     <td>
                         <asp:Label ID="Label1" runat="server" Text="email"></asp:Label>
                         <br />
                         <asp:Label ID="Label2" runat="server" Text="gender" ></asp:Label>
                     </td>
                     <td>
  <asp:TextBox ID="emailTextBox1" runat="server" CssClass="textBox"></asp:TextBox>
                         <br />
                                          <asp:TextBox ID="genderTextBox2" runat="server" CssClass="textBox"></asp:TextBox>
                     </td>
                   

                 </tr>
                  <tr>
                     <td>
                         <asp:Label ID="Label3" runat="server" Text="phone number"></asp:Label>
                         <br />
                         <asp:Label ID="Label4" runat="server" Text="cv"></asp:Label>
                     </td>
                     <td>
  <asp:TextBox ID="phonetxt" runat="server" CssClass="textBox"></asp:TextBox>
                         <br />
                                          <asp:TextBox ID="cvTextBox4" runat="server" CssClass="textBox"></asp:TextBox>
                     </td>
                   

                 </tr>
             </table>
         <asp:Button ID="Button1" runat="server" CssClass="button" Text="done" OnClick="Button1_Click" />
             <footer><a href="ArticleDetail.aspx">creat account</a></footer>
         </article>
</asp:Content>

