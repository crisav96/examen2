using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examen2nuevo
{
    public partial class encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListCarroPropio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            // Crear una nueva instancia de ClsEncuesta
            ClsEncuesta nuevaEncuesta = new ClsEncuesta();


            nuevaEncuesta.Nombre = Tnombre.Text.Trim();
            nuevaEncuesta.Apellido = Tapellido.Text.Trim();
            nuevaEncuesta.FechaNacimiento = DateTime.Parse(Tnacimiento.Text.Trim());
            nuevaEncuesta.Edad = int.Parse(Tedad.Text.Trim());
            nuevaEncuesta.Correo = Tcorreo.Text.Trim();
            nuevaEncuesta.CarroPropio = RadioButtonListCarroPropio.SelectedValue;


            bool agregadoExitosamente = nuevaEncuesta.Agregar();

            if (agregadoExitosamente)
            {

                lblMensajeExito.Text = "Datos insertados correctamente en la tabla encuesta.";

                LimpiarControles();
            }
            else
            {

            }
        }

        private void LimpiarControles()
        {
            Tnombre.Text = "";
            Tapellido.Text = "";
            Tnacimiento.Text = "";
            Tedad.Text = "";
            Tcorreo.Text = "";
            RadioButtonListCarroPropio.ClearSelection();
        }

        protected void Tedad_TextChanged(object sender, EventArgs e)
        {
            int edad;
            if (int.TryParse(Tedad.Text, out edad))
            {
                if (edad < 18 || edad > 50)
                {

                    lblMensajeError1.Text = "La edad debe estar entre 18 y 50 años.";
                    lblMensajeError1.Visible = true;
                }
                else
                {

                    lblMensajeError1.Visible = false;
                }
            }
            else
            {

                lblMensajeError1.Text = "Por favor, introduce una edad válida.";
                lblMensajeError1.Visible = true;
            }
        }

    }
}