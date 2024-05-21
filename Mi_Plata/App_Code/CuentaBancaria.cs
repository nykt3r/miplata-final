using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mi_Plata
{
    public class CuentaBancaria
    {
        public Usuario usuario { get; set; }
        public decimal saldo { get; set; }
        public List<Movimiento> movimientos = new List<Movimiento>();

        public CuentaBancaria(Usuario usuario, decimal saldoInicial = 0)
        {
            this.usuario = usuario;
            this.saldo = saldoInicial;
        }
    }
}