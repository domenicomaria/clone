using System;
using System.Drawing;

namespace Figure
{
    public class Cerchio : Figura
    {
        private double raggioCerchio;
        private Punto centroCerchio;
        public Cerchio(double raggio, Punto centro)
        {            
            Raggio = raggio;
            Centro = centro;
        }

        public double Raggio
        {
            get
            {
                return raggioCerchio;
            }
            private set
            {
                raggioCerchio = value;
            }
        }

        public Punto Centro
        {
            get
            {
                return centroCerchio;
            }
            private set
            {
                centroCerchio = value;
            }
        }
        public override double Area
        {
            get
            {
                return (Raggio * Raggio) * 3.14;
            }
        }
        public override double Perimetro
        {
            get
            {
                return 2 * 3.14 * Raggio;
            }
        }

        public override void Muovi()
        {
            throw new System.NotImplementedException();
        }

        public override void Ruota()
        {
            throw new System.NotImplementedException();
        }

        public override void Stampa()
        {
            base.Stampa();
            Console.WriteLine("Perchè sono un cerchio...");

            Console.Write("Centro :");
            Console.WriteLine("(" + Centro.X.ToString() + "," + Centro.Y.ToString() + ") ");
            Console.Write("Raggio :");
            Console.WriteLine(Raggio);
        }

    }
}
