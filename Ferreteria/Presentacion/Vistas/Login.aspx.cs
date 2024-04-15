using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Presentacion.Vistas
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                lblLogin.Text = Session["NombreUsuario"].ToString();
                cargarNombreUsuario();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UsuariosNegocios UN = new UsuariosNegocios();
            lblError.Text = "";
            if (!UN.comprobarMail(txtMail.Text))
            {
                lblError.Text = "EMAIL O PASSWORD INCORRECTOS";
            }
            else
            {
                if (!UN.comprobarLogin(txtMail.Text, txtContraseña.Text))
                {
                    lblError.Text = "EMAIL O PASSWORD INCORRECTOS";
                }
                else
                {
                    Session["NombreUsuario"] = UN.BuscarNombreUsuario(txtMail.Text);
                    cargarNombreUsuario();
                   
                }
            }
        }

        private void cargarNombreUsuario()
        {
            lblBienvenido.Text = "Bienvenido/a " + Session["NombreUsuario"].ToString();
            txtMail.Visible = false;
            txtContraseña.Visible = false;
            btnLogin.Visible = false;
            hlCrearCuenta.Visible = false;
            lbContraseña.Visible = false;
            lblMail.Visible = false;
            lblNoCuenta.Visible = false;
        }
    }
}