﻿using System;
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

        protected void cvCP_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {

        }
    }
}