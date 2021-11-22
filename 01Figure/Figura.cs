using System;
using System.Drawing;

namespace Figure
{

    public abstract class Figura : IFigura
    {
        protected Figura()
        {
            Contorno = Color.Black;
            Riempimento = Color.Red;
            
        }
        public Color Contorno
        {
            get; set;
        }
        public Color Riempimento
        {
            get; set;
        }

        public int Id { get; set; }

        public abstract double Area { get; }
        public abstract double Perimetro { get; }
        public abstract void Muovi();
        public abstract void Ruota();
        public virtual void Stampa()
        {
            Console.WriteLine("-------------------");
            Console.WriteLine("Perchè sono una figura...");
            Console.Write("ID :");
            Console.WriteLine(Id);
            Console.Write("Area :");
            Console.WriteLine(Area);
            Console.Write("Perimetro :");
            Console.WriteLine(Perimetro);
        }
    }
}


