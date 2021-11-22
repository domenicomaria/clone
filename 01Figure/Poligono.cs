using System;

namespace Figure
{
    public abstract class Poligono : Figura
    {
        protected Punto[] vertici;

        public override void Stampa()
        {
            base.Stampa();
            Console.WriteLine("Perchè sono un poligono...");
            Console.Write("Vertici: ");
            // ciclo foreach itera tra tutti gli elementi di un insieme
            foreach (Punto p in vertici)
            {
                Console.Write("(" + p.X.ToString() + "," + p.Y.ToString() + ") ");
            }
            Console.WriteLine();
        }
    }
}


