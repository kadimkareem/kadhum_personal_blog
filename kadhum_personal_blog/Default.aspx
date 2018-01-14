<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

   
        <article>
            <header>
                <asp:Label ID="artical_header_Label1" runat="server" Text="Perspectives on usability guidelines for smartphone applications: An empirical investigation and systematic literature review"></asp:Label>

            </header>
            <table>
                <tr>
                    <td>
                        <p>
                            <asp:Label ID="artical_Label1" runat="server" Text="Several usability guidelines have been proposed to improve the usability of smartphone apps. These guidelines can be classified into three disjoint sets: platform specific guidelines, genre specific guidelines, and generic guidelines. However, smartphone applications are usually developed for multiple platforms and targeted for a variety of users. Hence the usefulness of existing guidelines is severally limited.

Objective

This study aims to develop a comprehensive list of usability guidelines suitable for multiple platforms and genres of smartphone applications.

Method

A controlled experiment was conducted, and it highlighted that even popular and established apps have usability problems. In order to identify different perspectives on usability a systematic literature review was conducted.

Results

Systematic literature review resulted in 148 studies that proposed a total of 359 usability guidelines. These guidelines were condensed into 25 guidelines in 7 categories by removing redundancy, repetition and similarity through a sequential and iterative process. Finally, usefulness of the proposed classification of guidelines is established by mapping these to usability issues identified earlier."></asp:Label>

                        </p>
                    </td>
                    <td>
                        <img height="100" src="de.jpg" width="150" />
                    </td>
                </tr>
            </table>
            <footer>
               
                <a href="~/ArticleDetail.aspx?name=kadhum" id="myLimk" runat="server">LinkButton</a>
              
            </footer>
        </article>
        <br />
<br />
    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
          <article>
             <header>
              <asp:Label ID="Label2" runat="server" Text='<%# Eval("title") %>'></asp:Label></header>
             <table>
                 <tr>
                     <td> <asp:Label ID="Label1" runat="server" Text='<%# Eval("the_content") %>'></asp:Label></td>
                     
                     <td><img height="100" width="150" src="de.jpg" /></td>

                 </tr>
                 <tr><td><asp:Label ID="Label3" runat="server" Text='<%# Eval("created_date") %>' BackColor="Silver"></asp:Label></td></tr>
             </table>
             <footer><a href="ArticleDetail.aspx?id=<%#Eval("the_content") %>">clic for more</a></footer>
         </article>
            <br />
<br />
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:it_blog_dbConnectionString %>" SelectCommand="SELECT [title], [the_content], [created_date] FROM [articles]"></asp:SqlDataSource>
    </asp:Content>

