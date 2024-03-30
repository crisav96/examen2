using System;
using System.Data;
using System.Data.SqlClient;

public class ClsEncuesta
{
    public string Nombre { get; set; }
    public string Apellido { get; set; }
    public DateTime FechaNacimiento { get; set; }
    public int Edad { get; set; }
    public string Correo { get; set; }
    public string CarroPropio { get; set; }

    public bool Agregar()
    {
        SqlConnection connection = null;

        try
        {
            // Validar que la edad esté en el rango de 18 a 50 años
            if (Edad < 18 || Edad > 50)
            {
                return false;
            }

            string connectionString = "Data Source=LAPTOP-4M73J555\\SQLEXPRESS;Initial Catalog=examen2;Integrated Security=True";
            string query = "INSERT INTO usuario (nombre, apellido, fecha, edad, correo, carro) VALUES (@nombre, @apellido, @fechaNacimiento, @edad, @correo, @carro)";

            connection = new SqlConnection(connectionString);

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@nombre", Nombre);
                command.Parameters.AddWithValue("@apellido", Apellido);
                command.Parameters.AddWithValue("@fechaNacimiento", FechaNacimiento);
                command.Parameters.AddWithValue("@edad", Edad);
                command.Parameters.AddWithValue("@correo", Correo);
                command.Parameters.AddWithValue("@carro", CarroPropio);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error: " + ex.Message);
            return false;
        }
        finally
        {

            if (connection != null && connection.State != ConnectionState.Closed)
            {
                connection.Close();
            }
        }
    }



}
