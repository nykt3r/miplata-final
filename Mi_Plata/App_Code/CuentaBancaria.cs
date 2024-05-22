using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mi_Plata
{
    public class CuentaBancaria
    {
        public Usuario usuario { get; set; }
        public int saldo { get; set; }
        public List<Movimiento> movimientos { get; set; }

        public CuentaBancaria(Usuario usuario, int saldo = 0)
        {
            this.usuario = usuario;
            this.saldo = saldo;
            this.movimientos = new List<Movimiento>();
        }

        #region Método consultar
        public string consultarSaldo()
        {
            return $"Su saldo actual es de ${this.saldo} USD.";
        }
        #endregion

        #region Método consignar
        public string consignarDinero(int cantConsignar)
        {
            if (cantConsignar <= 0)
            {
                return "El monto a consignar no puede ser negativo ni cero.";
            }
            else
            {
                this.saldo += cantConsignar;
                agregarMovimiento("Consignó", cantConsignar);

                return "Consignación exitosa.";
            }
        }
        #endregion
        
        #region Método retirar
        public string retirarDinero(int cantRetirar)
        {

            if (cantRetirar > this.saldo)
            {
                return "El monto a retirar no puede ser mayor al saldo de la cuenta.";
            }
            else
            {
                this.saldo -= cantRetirar;
                agregarMovimiento("Retiró", cantRetirar);

                return "Retiro exitoso.";
            }
        }
        #endregion

        #region Métodos agregar movimientos
        private void agregarMovimiento(string tipo, int monto)
        {
            movimientos.Add(new Movimiento(tipo, monto));
        }        
        #endregion
    }
}