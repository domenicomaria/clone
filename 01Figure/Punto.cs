using System;

namespace Figure
{
    // Rappresenta un punto nello spazio bidimensionale
    public class Punto
    {
        //l'ascissa del punto
        public double X
        {
            get;
            private set;
        }
        // l'ordinata del punto
        public double Y
        {
            get;
            private set;
        }

        // questo metodo speciale è il costruttore della classe ed è usato quando qualche programma alloca un ogetto di classe Punto.
        // allocare l'oggetto di classe Punto richiede una memoria pari alla somma della memoria richiesta per ciascun membro della classe: es 16 byte*2 =32 byte
        public Punto(double xIniziale, double yIniziale)
        {
            X = xIniziale;
            Y = yIniziale;
        }

 
        public static double Distanza(Punto p1, Punto p2)
        {
            double xDiff = p2.X - p1.X; // non uso perchè farò il quadrato: Math.Abs(p2.X - p1.X);
            double yDiff = p2.Y - p1.Y; // non uso perchè farò il quadrato: Math.Abs(p2.Y - p1.Y);
            double distanza = Math.Sqrt((xDiff * xDiff) + (yDiff * yDiff));
            return distanza;
        }
    }

}