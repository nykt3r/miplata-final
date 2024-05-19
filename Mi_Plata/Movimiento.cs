using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mi_Plata
{
    public class Movimiento
    {
        //Atributos
        private string tipo;
        private int monto;
        private DateTime fecha;

        //Constructor
        public Movimiento(string tipo, int monto)
        {
            this.tipo = tipo;
            this.monto = monto;
        }

        //Setters y Getters

        public void setTipo(string tipo)
        {
            this.tipo = tipo;
        }

        public string getTipo()
        {
            return this.tipo;
        }

        public void setMonto(int monto)
        {
            this.monto = monto;
        }

        public int getMonto()
        {
            return this.monto;
        }
    }
}