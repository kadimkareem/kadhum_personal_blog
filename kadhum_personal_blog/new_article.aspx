<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="new_article.aspx.cs" Inherits="new_article" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <article>
             <header><h1>create article</h1></header>
             <table >
                 <tr>
                     <td>
                         <asp:Label ID="userName_lbl" runat="server" Text="title"></asp:Label>
                         <br />
                         <asp:Label ID="passowrd_lbl" runat="server" Text="contetn"></asp:Label>
                     </td>
                     <td>
  <asp:TextBox ID="title_txt" runat="server" ></asp:TextBox>
                         <br />
                                          <asp:TextBox ID="contetn" runat="server" TextMode="MultiLine" ></asp:TextBox>
                     </td>
                   

                 </tr>
                 <tr>
                     <td>
                         create date<br />
                     </td>
                     <td>
  <asp:TextBox ID="created_date_TextBox" runat="server" Text="" ></asp:TextBox>
                         <br />
                     </td>
                   

                 </tr>
             </table>
         <br />
         &nbsp;<asp:Button ID="Button1" runat="server" CssClass="button" Text="post" OnClick="Button1_Click"  />
             
             <footer><a href="ArticleDetail.aspx">creat account</a></footer>
         </article>
</asp:Content>

