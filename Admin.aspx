<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SUIVI_FACTURES_FOURNISSEURS.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 90%; height: 400px; overflow: scroll">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" PageSize = "100" ></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GFConnectionString %>" SelectCommand="SELECT * FROM [Facture]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
