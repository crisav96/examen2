using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examen2nuevo
{
    public partial class reporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarReporte();
            }
        }

        private void MostrarReporte()
        {
            try
            {
                string connectionString = "Data Source=LAPTOP-4M73J555\\SQLEXPRESS;Initial Catalog=examen2;Integrated Security=True";
                string query = "SELECT " +
                               "(SELECT COUNT(*) FROM usuario) AS cantidadEncuestas, " +
                               "(SELECT COUNT(*) FROM usuario WHERE carro = 'Si') AS cantidadConCarroPropio, " +
                               "(SELECT COUNT(*) FROM usuario WHERE carro = 'No') AS cantidadSinCarroPropio";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            int cantidadEncuestas = (int)reader["cantidadEncuestas"];
                            int cantidadConCarroPropio = (int)reader["cantidadConCarroPropio"];
                            int cantidadSinCarroPropio = (int)reader["cantidadSinCarroPropio"];

                            // Asignar valores a las etiquetas Label
                            lblCantidadEncuestas.Text = cantidadEncuestas.ToString();
                            lblCantidadConCarroPropio.Text = cantidadConCarroPropio.ToString();
                            lblCantidadSinCarroPropio.Text = cantidadSinCarroPropio.ToString();
                        }

                        reader.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejo de errores
            }
        }
    }
}