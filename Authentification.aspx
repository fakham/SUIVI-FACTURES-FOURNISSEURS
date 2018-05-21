<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authentification.aspx.cs" Inherits="SUIVI_FACTURES_FOURNISSEURS.Authentification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Centre De Gestion : </td>
                    <td><asp:DropDownList runat="server" ID="list_centreGestion" /></td>
                </tr>
                <tr>
                    <td>Utilisateur : </td>
                    <td><asp:DropDownList runat="server" ID="list_utilisateurs" /></td>
                </tr>
                <tr>
                    <td>Mot de Passe : </td>
                    <td><asp:TextBox runat="server" ID="txt_password" TextMode="Password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button runat="server" ID="btn_connecter" Text="Connecter" OnClick="btn_connecter_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
