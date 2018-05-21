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
            string user = ADO.Login(list_centreGestion.Text, list_utilisateurs.Text, txt_password.Text);

            if (user != null)
                Session["user"] = user;

            if (user == null)
                Response.Write("L'utilisateur n'existe pas!");

            else if (user.Equals("ADMIN"))
                Response.Redirect("page admin");

            else if (user.Equals("SECRETAIRE CENTRE"))
                Response.Redirect("page SECRETAIRE CENTRE");

            else if (user.Equals("COMPTABLE CENTRE"))
                Response.Redirect("page COMPTABLE CENTRE");

            else if (user.Equals("SECRETAIRE COMPTABILITE SIEGE"))
                Response.Redirect("page SECRETAIRE COMPTABILITE SIEGE");

            else if (user.Equals("COMPTABLE REGLEMENT"))
                Response.Redirect("page COMPTABLE REGLEMENT");
        }                                                  
    }                                                      
}                                                          