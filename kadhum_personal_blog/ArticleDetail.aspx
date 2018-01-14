<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="ArticleDetail.aspx.cs" Inherits="ArticleDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <article>
             <header > ARTICLE DETAILS</header>
             <table>
                 <tr>
                     <td>
                         <asp:Label ID="artical_ditailes_Label1" runat="server" Text="Label"></asp:Label>
                     </td>
                     <td><img height="100" width="150" src="de.jpg" /></td>
                         
                 </tr>
                
             </table>
            
         </article>
</asp:Content>

