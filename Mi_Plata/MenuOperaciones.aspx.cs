using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Plata
{
    public partial class MenuOperaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PanelEntrada.Visible = true;
                PanelConsignar.Visible = false;
                PanelRetirar.Visible = false;
                PanelSaldo.Visible = false;
                PanelMovimientos.Visible = false;
            }

            btnPanelConsignar.ServerClick += new EventHandler(this.btnPanelConsignar_Click);
            btnPanelRetirar.ServerClick += new EventHandler(this.btnPanelRetirar_Click);
            btnPanelSaldo.ServerClick += new EventHandler(this.btnPanelSaldo_Click);
            btnPanelMovimientos.ServerClick += new EventHandler(this.btnPanelMovimientos_Click);

        }

        protected void btnPanelConsignar_Click(object sender, EventArgs e)
        {
            MostrarPanel("Consignar");
        }

        protected void btnPanelRetirar_Click(object sender, EventArgs e)
        {
            MostrarPanel("Retirar");
        }

        protected void btnPanelSaldo_Click(object sender, EventArgs e)
        {
            MostrarPanel("Saldo");
        }

        protected void btnPanelMovimientos_Click(object sender, EventArgs e)
        {
            MostrarPanel("Movimientos");
        }

        private void MostrarPanel(string panel)
        {
            PanelEntrada.Visible = false;
            PanelConsignar.Visible = false;
            PanelRetirar.Visible = false;
            PanelSaldo.Visible = false;
            PanelMovimientos.Visible = false;

            switch (panel)
            {
                case "Consignar":
                    PanelConsignar.Visible = true;
                    break;
                case "Retirar":
                    PanelRetirar.Visible = true;
                    break;
                case "Saldo":
                    PanelSaldo.Visible = true;
                    break;
                case "Movimientos":
                    PanelMovimientos.Visible = true;
                    break;
            }
        }
    }
}