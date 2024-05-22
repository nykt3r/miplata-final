using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mi_Plata
{
    public class Movimiento
    {
        private string tipo { get; set; }
        private int monto { get; set; }
        private DateTime fechaYHora { get; set; }

        public Movimiento(string tipo, int monto)
        {
            this.tipo = tipo;
            this.monto = monto;
            this.fechaYHora = DateTime.Now;
        }
    }
}