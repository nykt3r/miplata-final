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

                if (Session["CuentaBancaria"] == null) {
                    Usuario usuario = new Usuario("000", "null", "null", "null");
                    CuentaBancaria cuentaBancaria = new CuentaBancaria(usuario);
                    Session["CuentaBancaria"] = cuentaBancaria;

                } 
                else
                {
                    CuentaBancaria cuentaBancaria = (CuentaBancaria)Session["CuentaBancaria"];
                    consignarNombreUsuario.InnerText = cuentaBancaria.usuario.usuarioNombre;
                    retirarNombreUsuario.InnerText = cuentaBancaria.usuario.usuarioNombre;
                    saldoNombreUsuario.InnerText = cuentaBancaria.usuario.usuarioNombre;
                    movimientosNombreUsuario.InnerText = cuentaBancaria.usuario.usuarioNombre;
                }
                BindMovimientos();
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

        protected void backMenuOperaciones_Click(object sender, EventArgs e)
        {
            PanelEntrada.Visible = true;
            PanelConsignar.Visible = false;
            PanelRetirar.Visible = false;
            PanelSaldo.Visible = false;
            PanelMovimientos.Visible = false;
        }

        protected void btnVerSaldo_Click(object sender, EventArgs e)
        {
            if (Session["CuentaBancaria"] != null)
            {
                CuentaBancaria cuentaBancaria = (CuentaBancaria)Session["CuentaBancaria"];

                lblVerSaldo.Text = cuentaBancaria.consultarSaldo();
            }
        }

        protected void btnConsignar_Click(object sender, EventArgs e)
        {
            if (Session["CuentaBancaria"] != null)
            {
                string valorConsignar = txtConsignar.Text;
                int valor = int.Parse(valorConsignar);

                CuentaBancaria cuentaBancaria = (CuentaBancaria)Session["CuentaBancaria"];

                lblRespuestaConsignar.Text = cuentaBancaria.consignarDinero(valor);
                saldoActualConsignar.Text = cuentaBancaria.consultarSaldo();

                txtConsignar.Text = "";

                Session["CuentaBancaria"] = cuentaBancaria;
                BindMovimientos();
            }
        }

        protected void btnRetirar_Click(object sender, EventArgs e)
        {
            if (Session["CuentaBancaria"] != null)
            {
                string valorRetirar = txtRetirar.Text;
                int valor = int.Parse(valorRetirar);

                CuentaBancaria cuentaBancaria = (CuentaBancaria)Session["CuentaBancaria"];

                lblRespuestaRetirar.Text = cuentaBancaria.retirarDinero(valor);
                saldoActualRetirar.Text = cuentaBancaria.consultarSaldo();

                txtRetirar.Text = "";

                Session["CuentaBancaria"] = cuentaBancaria;
                BindMovimientos();

            }
        }

        private void BindMovimientos()
        {
            if (Session["CuentaBancaria"] != null)
            {
                CuentaBancaria cuentaBancaria = (CuentaBancaria)Session["CuentaBancaria"];
                TablaMovimientos.DataSource = cuentaBancaria.movimientos;
                TablaMovimientos.DataBind();
            }
        }
    }
}