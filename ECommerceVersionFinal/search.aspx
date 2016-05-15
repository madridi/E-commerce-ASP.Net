<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="ECommerceVersionFinal.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DALI-PC\SQ2012;Initial Catalog=ECommerceFinal;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Produit] WHERE ([nom] = @nom)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nom" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="178px" Width="217px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Cat_Id" HeaderText="Cat_Id" SortExpression="Cat_Id" />
                <asp:BoundField DataField="Fou_Id" HeaderText="Fou_Id" SortExpression="Fou_Id" />
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                <asp:BoundField DataField="quantite" HeaderText="quantite" SortExpression="quantite" />
                <asp:BoundField DataField="prix" HeaderText="prix" SortExpression="prix" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
