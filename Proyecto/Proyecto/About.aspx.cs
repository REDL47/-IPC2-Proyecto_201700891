using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string usuario, contraseña;
            usuario = TextBox3.Text;
            contraseña = TextBox4.Text;
            string connectionstring = @"Data Source=DESKTOP-C0LDHEQ\SQLEXPRESS; Initial Catalog = iGameGt; Integrated Security=True;";

            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {
                sqlcon.Open();
                SqlCommand sqlDa = new SqlCommand("select usuario, contraseña from Usuario where usuario='" + usuario + "' and contraseña ='" + contraseña + "'", sqlcon);
                SqlDataReader dr = sqlDa.ExecuteReader();
                if (dr.Read())
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('bienvenido');", true);
                        Response.Write("<script> window.open('~/ Tablero.aspx','_blank'); </script>");
                }

                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('Usuario o contraseña incorrecta');", true);

                }
                sqlcon.Close();

            }
        }
    }
}