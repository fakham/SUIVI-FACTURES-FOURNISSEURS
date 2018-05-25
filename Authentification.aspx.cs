using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIVI_FACTURES_FOURNISSEURS
{
    public partial class Authentification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                list_centreGestion.Items.Add("GTR-AGADIR");
                list_centreGestion.Items.Add("GTR-FES");
                list_centreGestion.Items.Add("GTR-RABAT");
                list_centreGestion.Items.Add("GTR-CASABLANCA");
                list_centreGestion.Items.Add("GTR-SIEGE");
                list_centreGestion.Items.Add("GTR-TANGER");
                list_centreGestion.Items.Add("COLAS MAROC SIEGE");
                list_centreGestion.Items.Add("GM-CENTRALE");
                list_centreGestion.Items.Add("COLAS EMULSIONS");
                list_centreGestion.Items.Add("CONCASSAGE");
                list_centreGestion.Items.Add("DAS MAROC");

                list_utilisateurs.Items.Add("SECRETAIRE CENTRE");
                list_utilisateurs.Items.Add("COMPTABLE CENTRE");
                list_utilisateurs.Items.Add("SECRETAIRE COMPTABILITE SIEGE");
                list_utilisateurs.Items.Add("COMPTABLE REGLEMENT");
                list_utilisateurs.Items.Add("ADMIN");
            }                                              
        }

        protected void btn_connecter_Click(object sender, EventArgs e)
        {
            if(ADO.Login(list_centreGestion.Text, list_utilisateurs.Text, txt_password.Text))
                Session["user"] = list_utilisateurs.Text;

            switch(Session["user"].ToString())
            {
                case "ADMIN":
                    Response.Redirect("Admin.aspx");
                    break;
                case "SECRETAIRE CENTRE":
                    Response.Redirect("page SECRETAIRE CENTRE");
                    break;
                case "COMPTABLE CENTRE":
                    Response.Redirect("page COMPTABLE CENTRE");
                    break;
                case "SECRETAIRE COMPTABILITE SIEGE":
                    Response.Redirect("page SECRETAIRE COMPTABILITE SIEGE");
                    break;
                case "COMPTABLE REGLEMENT":
                    Response.Redirect("page COMPTABLE REGLEMENT");
                    break;
                default:
                    Response.Write("L'utilisateur n'existe pas!");
                    break;
            }
            
        }                                                  
    }                                                      
}                                                          