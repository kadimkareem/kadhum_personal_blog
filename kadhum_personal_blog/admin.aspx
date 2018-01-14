<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <h1 style="margin:5px; background:#ffffff">
            Manage posts
        </h1>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="article_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="article_id" HeaderText="article_id" SortExpression="article_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="the_content" HeaderText="the_content" SortExpression="the_content" />
            <asp:BoundField DataField="created_date" HeaderText="created_date" SortExpression="created_date" />
        </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </div>
    <div>
        <h1 style="margin:5px; background:#ffffff">
            Manage Usere
        </h1>
    </div>
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="usersSqlDataSource" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="phone_number" HeaderText="phone_number" SortExpression="phone_number" />
            <asp:BoundField DataField="cv" HeaderText="cv" SortExpression="cv" />
        </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
        <asp:SqlDataSource ID="usersSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:it_blog_dbConnectionString %>" DeleteCommand="DELETE FROM [usersTable] WHERE [id] = @id" InsertCommand="INSERT INTO [usersTable] ([user_name], [user_email], [gender], [phone_number], [cv]) VALUES (@user_name, @user_email, @gender, @phone_number, @cv)" SelectCommand="SELECT [user_name], [id], [user_email], [gender], [phone_number], [cv] FROM [usersTable]" UpdateCommand="UPDATE [usersTable] SET [user_name] = @user_name, [user_email] = @user_email, [gender] = @gender, [phone_number] = @phone_number, [cv] = @cv WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="phone_number" Type="String" />
                <asp:Parameter Name="cv" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="phone_number" Type="String" />
                <asp:Parameter Name="cv" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:it_blog_dbConnectionString %>" SelectCommand="SELECT [article_id], [title], [the_content], [created_date] FROM [articles]" DeleteCommand="DELETE FROM [articles] WHERE [article_id] = @article_id" InsertCommand="INSERT INTO [articles] ([title], [the_content], [created_date]) VALUES (@title, @the_content, @created_date)" UpdateCommand="UPDATE [articles] SET [title] = @title, [the_content] = @the_content, [created_date] = @created_date WHERE [article_id] = @article_id">
        <DeleteParameters>
            <asp:Parameter Name="article_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="the_content" Type="String" />
            <asp:Parameter Name="created_date" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="the_content" Type="String" />
            <asp:Parameter Name="created_date" Type="String" />
            <asp:Parameter Name="article_id" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

