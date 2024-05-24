using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mi_Plata
{
    public class Movimiento
    {
        public string tipo { get; set; }
        public int monto { get; set; }
        public DateTime fechaYHora { get; set; }

        public Movimiento(string tipo, int monto)
        {
            this.tipo = tipo;
            this.monto = monto;
            this.fechaYHora = DateTime.Now;
        }
    }
}