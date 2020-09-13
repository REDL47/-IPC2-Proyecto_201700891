using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Proyecto
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlReader reader = XmlReader.Create(@"C:\Users\Casa\source\repos\Proyecto\Proyecto.sln");
            while (reader.Read())
            {
                if (reader.IsStartElement())
                {
                    switch (reader.Name.ToString())
                    {
                        case 
                    }
                }
            }
        }
    }
}