<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fournisseur.aspx.cs" Inherits="SUIVI_FACTURES_FOURNISSEURS.Fournisseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>Raison Sociale : </td>
                <td>
                    <asp:TextBox ID="TextBox_raisonSociale" runat="server"></asp:TextBox>
                </td>
                <td>Attestation de Registre du Commerce : </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList_registreCommerce" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>OUI</asp:ListItem>
                        <asp:ListItem Selected="True">NON</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Numéro de Compte (JDE) : </td>
                <td>
                    <asp:TextBox ID="TextBox_JDE" runat="server"></asp:TextBox>
                </td>
                <td>Attestation d&#39;Inscription à la Taxe Professionnelle : </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList_taxePro" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>OUI</asp:ListItem>
                        <asp:ListItem Selected="True">NON</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Type :</td>
                <td>
                    <asp:DropDownList ID="DropDownList_type" runat="server">
                        <asp:ListItem>Sous Traitant</asp:ListItem>
                        <asp:ListItem>Transporteur</asp:ListItem>
                        <asp:ListItem>Prestatiare</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>Attestation de la CNSS : </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList_CNSS" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>OUI</asp:ListItem>
                        <asp:ListItem Selected="True">NON</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Sté domiciliée au Sahara : </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList_sahara" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>OUI</asp:ListItem>
                        <asp:ListItem Selected="True">NON</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>Validité de la CNSS : </td>
                <td>
                    <asp:TextBox ID="TextBox_validiteCNSS" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Adresse :</td>
                <td>
                    <asp:TextBox ID="TextBox_adresse" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>Validité Assurance Accident du Travail : </td>
                <td>
                    <asp:TextBox ID="TextBox_validiteAccidentTravail" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>N° ICE : </td>
                <td>
                    <asp:TextBox ID="TextBox_ICE" runat="server"></asp:TextBox>
                </td>
                <td>Validité Assurance Responsabilité Jour Civile :</td>
                <td>
                    <asp:TextBox ID="TextBox_validiteJourCivile" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Numéro RC : </td>
                <td>
                    <asp:TextBox ID="TextBox_RC" runat="server"></asp:TextBox>
                </td>
                <td>Validité Assurance Matériel Exploitation : </td>
                <td>
                    <asp:TextBox ID="TextBox_validiteExploitation" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Numéro IF : </td>
                <td>
                    <asp:TextBox ID="TextBox_IF" runat="server"></asp:TextBox>
                </td>
                <td>Validité Assurance RC Auto : </td>
                <td>
                    <asp:TextBox ID="TextBox_validiteRCAuto" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Numéro TP :</td>
                <td>
                    <asp:TextBox ID="TextBox_TP" runat="server"></asp:TextBox>
                </td>
                <td>Observations : </td>
                <td>
                    <asp:TextBox ID="TextBox_observations" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Numéro CNSS : </td>
                <td>
                    <asp:TextBox ID="TextBox_CNSS" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>N° Permis de Conduire : </td>
                <td>
                    <asp:TextBox ID="TextBox_permis" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Attestation sur L&#39;honneur : </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList_honneur" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>OUI</asp:ListItem>
                        <asp:ListItem Selected="True">NON</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Centre :</td>
                <td>
                    <asp:DropDownList ID="DropDownList_centre" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name_Centre" DataValueField="Id_Centre">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GFConnectionString_centres %>" SelectCommand="SELECT * FROM [Centre]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" />
                </td>
                <td>
                    <asp:Button ID="Button_Annuler" runat="server" Text="Annuler" OnClick="Button_Annuler_Click" />
                </td>
                <td>
                    <asp:Button ID="Button_Vider" runat="server" Text="Vider" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
