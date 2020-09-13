using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string nombres, apellidos, usuario, contraseña, correo, pais, nac, msg = "Error usuario ya existente";
            nombres = TextBox1.Text;
            apellidos = TextBox2.Text;
            usuario = TextBox3.Text;
            contraseña = TextBox4.Text;
            nac = TextBox6.Text;
            correo = TextBox5.Text;

            if (ListBox1.Text  == "Guatemala")
            {
                pais = "1";
            }
            else if(ListBox1.Text == "El Salvador")
            {
                pais = "2";
            }
            else
            {
                pais = "3";
            }

            string connectionstring = @"Data Source=DESKTOP-C0LDHEQ\SQLEXPRESS; Initial Catalog = iGameGt; Integrated Security=True;";

            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {
                sqlcon.Open();
                SqlCommand sqlDa = new SqlCommand("select Usuario from Usuario where usuario ='" + usuario + "'", sqlcon);
                SqlDataReader dr = sqlDa.ExecuteReader();
                if (dr.Read())
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('" + msg + "');", true);
                }
                
                else
                {
                    sqlcon.Close();
                    sqlcon.Open();
                    SqlCommand sqlin = new SqlCommand("INSERT INTO Usuario (nombres,apellidos,usuario,contraseña,correo,fecha_nac,cod_pais) VALUES ('" + nombres +"','"+ apellidos +"','"+ usuario +"','"+ contraseña +"','"+ correo +"','"+ nac +"',"+ pais +")", sqlcon);
                    sqlin.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('Registrado con exito');", true);
                    sqlcon.Close();
                }
                
                
            }
        }
    }
}