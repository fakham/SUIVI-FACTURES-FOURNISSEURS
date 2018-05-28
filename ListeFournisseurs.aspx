<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeFournisseurs.aspx.cs" Inherits="SUIVI_FACTURES_FOURNISSEURS.ListeFournisseurs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 90vh; width:50%; overflow: scroll">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="JDE_Fournisseur" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="JDE_Fournisseur" HeaderText="JDE_Fournisseur" ReadOnly="True" SortExpression="JDE_Fournisseur" />
                <asp:BoundField DataField="Nom_Raison_Sociale" HeaderText="Nom_Raison_Sociale" SortExpression="Nom_Raison_Sociale" />
                <asp:BoundField DataField="Centre" HeaderText="Centre" SortExpression="Centre" />
                <asp:CommandField ButtonType="Button" DeleteText="Supprimer" SelectText="Details" ShowSelectButton="True" />
                <asp:CommandField ButtonType="Button" DeleteText="Supprimer" SelectText="Details" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GFConnectionString_ListeFournisseurs %>" SelectCommand="select JDE_Fournisseur, Nom_Raison_Sociale, Centre 
from Fournisseurs"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
