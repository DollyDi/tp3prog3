using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validaciones
{
    public partial class GuardarLocalidad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btGuardar_Click(object sender, EventArgs e)
        {
            ddlLocalidades.Items.Add(txtLocalidad.Text);
            txtLocalidad.Text = "";
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblMensajeBienvenido.Text = "Bienvenido usuario " + txtUsuario.Text;
        }

        protected void btninicio_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
        }
    }
}