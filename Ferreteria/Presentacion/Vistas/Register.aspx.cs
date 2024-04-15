using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Presentacion.Vistas
{
    public partial class Login : System.Web.UI.Page
    {
        UsuariosNegocios usunego = new UsuariosNegocios();
        ProvinciasNegocio tablaProvincias = new ProvinciasNegocio();
        CiudadesNegocios tablaCiudades = new CiudadesNegocios();
        Usuarios usu = new Usuarios();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                lblLogin.Text = Session["NombreUsuario"].ToString();
            }
            if (!IsPostBack) 
            { 
                llenadoDeDDL();
            
            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            agregarusuario();
        }

        private void llenadoDeDDL()
        {
            ddlProvincias.DataSource = tablaProvincias.getTablaProvincias();
            ddlProvincias.DataTextField = "Nombre_PCIAS";
            ddlProvincias.DataValueField = "Cod_PCIAS";
            ddlProvincias.DataBind();
            ddlProvincias.Items.Insert(0, new ListItem("--SELECCIONAR--", "0"));
            ddlCiudad.Items.Insert(0, new ListItem("--SELECCIONAR--", "0"));
        }
        protected void provinciaSeleccionada(object sender, EventArgs e)
        {
            int CodProv = Convert.ToInt32(ddlProvincias.SelectedValue);
            ddlCiudad.DataSource = tablaCiudades.getTablaCiudadesXProv(CodProv.ToString());
            ddlCiudad.DataTextField = "Nombre_CIU";
            ddlCiudad.DataValueField = "CodCiudad_CIU";
            ddlCiudad.DataBind();
            ddlCiudad.Items.Insert(0, new ListItem("--SELECCIONAR--", "0"));
        }




        private void agregarusuario()
        {
            usu.setANombre_USU(txtNombre.Text);
            usu.setPerfilCod_USU("CLI01");
            usu.setApellido_USU(txtApellido.Text);
            usu.setCuit_USU(txtCUIT.Text);
            usu.setContrasena_USU(TxtContraseña.Text);
            usu.setTelefono_USU(txtTelefono.Text);
            usu.setEmail_USU(txtMail.Text);
            usu.setCodProvincia_USU(Convert.ToInt32(ddlProvincias.SelectedValue));
            usu.setCiudadCod_USU(Convert.ToInt32(ddlCiudad.SelectedValue));

            if (usunego.agregarUsuario(usu))
            {
                lblMensaje.Text = "USUARIO AGREGADO EXITOSAMENTE!!";
            }
            else
            {
                lblMensaje.Text = "YA EXISTE UN USUARIO CON ESE EMAIL!!";
            }
        }

    }
}