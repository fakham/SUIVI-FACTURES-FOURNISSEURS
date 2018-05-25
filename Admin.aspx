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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name_Centre" HeaderText="Name_Centre" SortExpression="Name_Centre" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Ref_Facture" HeaderText="Ref_Facture" SortExpression="Ref_Facture" />
                    <asp:BoundField DataField="Date_Reception_Centre" HeaderText="Date_Reception_Centre" SortExpression="Date_Reception_Centre" />
                    <asp:BoundField DataField="Date_Facture" HeaderText="Date_Facture" SortExpression="Date_Facture" />
                    <asp:BoundField DataField="Montant" HeaderText="Montant" SortExpression="Montant" />
                    <asp:BoundField DataField="N°_Piece_Comptable" HeaderText="N°_Piece_Comptable" SortExpression="N°_Piece_Comptable" />
                    <asp:BoundField DataField="Date_Envoi_Siege" HeaderText="Date_Envoi_Siege" SortExpression="Date_Envoi_Siege" />
                    <asp:BoundField DataField="Date_Reception_Siege" HeaderText="Date_Reception_Siege" SortExpression="Date_Reception_Siege" />
                    <asp:BoundField DataField="N°Parapheur" HeaderText="N°Parapheur" SortExpression="N°Parapheur" />
                    <asp:BoundField DataField="N°Reglement" HeaderText="N°Reglement" SortExpression="N°Reglement" />
                    <asp:BoundField DataField="N°Cheque_Traite" HeaderText="N°Cheque_Traite" SortExpression="N°Cheque_Traite" />
                    <asp:BoundField DataField="Nom_1ere_Signataire" HeaderText="Nom_1ere_Signataire" SortExpression="Nom_1ere_Signataire" />
                    <asp:BoundField DataField="Date_1ére_Segnataire" HeaderText="Date_1ére_Segnataire" SortExpression="Date_1ére_Segnataire" />
                    <asp:BoundField DataField="Date_2éme_Segnataire" HeaderText="Date_2éme_Segnataire" SortExpression="Date_2éme_Segnataire" />
                    <asp:BoundField DataField="Date_Transmission_Centre" HeaderText="Date_Transmission_Centre" SortExpression="Date_Transmission_Centre" />
                    <asp:BoundField DataField="Date_Remise_Reglement_Fournisseur" HeaderText="Date_Remise_Reglement_Fournisseur" SortExpression="Date_Remise_Reglement_Fournisseur" />
                    <asp:BoundField DataField="Delai_Traitement_Centre" HeaderText="Delai_Traitement_Centre" SortExpression="Delai_Traitement_Centre" />
                    <asp:BoundField DataField="Delai_Traitement_Siege" HeaderText="Delai_Traitement_Siege" SortExpression="Delai_Traitement_Siege" />
                    <asp:BoundField DataField="Delai_Traitement_Global" HeaderText="Delai_Traitement_Global" SortExpression="Delai_Traitement_Global" />
                    <asp:BoundField DataField="Id_Centre" HeaderText="Id_Centre" SortExpression="Id_Centre" />
                    <asp:BoundField DataField="JDE_Fournisseur" HeaderText="JDE_Fournisseur" SortExpression="JDE_Fournisseur" />
                    <asp:BoundField DataField="complet" HeaderText="complet" SortExpression="complet" />
                    <asp:BoundField DataField="complet_Comptable" HeaderText="complet_Comptable" SortExpression="complet_Comptable" />
                    <asp:BoundField DataField="complet_Siege" HeaderText="complet_Siege" SortExpression="complet_Siege" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GFConnectionString %>" SelectCommand="SELECT C.Name_Centre, F.id, F.Ref_Facture, F.Date_Reception_Centre, F.Date_Facture, F.Montant, F.[N°_Piece_Comptable], F.Date_Envoi_Siege, F.Date_Reception_Siege, F.[N°Parapheur], F.[N°Reglement], F.[N°Cheque_Traite], F.Nom_1ere_Signataire, F.Date_1ére_Segnataire, F.Date_2éme_Segnataire, F.Date_Transmission_Centre, F.Date_Remise_Reglement_Fournisseur, F.Delai_Traitement_Centre, F.Delai_Traitement_Siege, F.Delai_Traitement_Global, F.Id_Centre, F.JDE_Fournisseur, F.complet, F.complet_Comptable, F.complet_Siege FROM Facture AS F INNER JOIN Centre AS C ON F.Id_Centre = C.Id_Centre" UpdateCommand="UPDATE Facture SET Date_Facture =, Ref_Facture =, Date_Reception_Centre =, Montant =, [N°_Piece_Comptable] =, Date_Envoi_Siege =, Date_Reception_Siege =, [N°Parapheur] =, [N°Reglement] =, [N°Cheque_Traite] =, Nom_1ere_Signataire =, Date_1ére_Segnataire =, Date_2éme_Segnataire =, Date_Transmission_Centre =, Date_Remise_Reglement_Fournisseur =, Delai_Traitement_Centre =, Delai_Traitement_Siege =, Delai_Traitement_Global =, Id_Centre =, JDE_Fournisseur =, complet =, complet_Comptable =, complet_Siege =">
            </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
