using System;
using System.Drawing;

namespace Figure
{
    public class Rettangolo : Poligono
    {

        // di seguito alcune variabili private 

        // cosa è un Array
        // un insieme di elementi, tutti dello stesso tipo / classe, contigui ed accessibili con indice

        private double baseRettangolo;
        private double altezzaRettangolo;

        protected Rettangolo()
        {
            vertici = new Punto[4];
        }
        // costruttore che posiziona il rettangolo sulgli assi x ed y del piano
        public Rettangolo(double lato1, double lato2) : this()
        {
            //    y
            //    |
            //    |
            //0,l2.------.l1,l2
            //    |      !
            //    . -----.l1,0----------->x
            // (0,0)
            Base = lato1;
            Altezza = lato2;
            // vertici
            // |____|____|____|____|
            //  0    1    2    3
            // (0,0) (1,1)(2,2) (4,5)
            vertici[0] = new Punto(0d, 0d);
            vertici[1] = new Punto(lato1, 0d);
            vertici[2] = new Punto(lato1, lato2);
            vertici[3] = new Punto(0d, lato2);
        }
        public Rettangolo(Punto[] verticiIniziali) : this()
        {
            // todo innanzi tutto verifico se questi vertici sono accettabili

            // se non accettabili scateno eccezione

            // altrimenti copio i valori che mi sono stati passati e li salvo nella variabile privata vertici
            vertici[0] = verticiIniziali[0];
            vertici[1] = verticiIniziali[1];
            vertici[2] = verticiIniziali[2];
            vertici[3] = verticiIniziali[3];

            Base = Punto.Distanza(vertici[0], vertici[1]); // distanza tra vertice1 e vertice2
            Altezza = Punto.Distanza(vertici[1], vertici[2]); // distanza tra vertice1 e vertice2
        }
        public double Base
        {
            get
            {
                return baseRettangolo;
            }
            private set
            {
                baseRettangolo = value;
            }
        }

        public double Altezza
        {
            get
            {
                return altezzaRettangolo;
            }
            private set
            {
                altezzaRettangolo = value;
            }
        }

        public override double Area
        {
            get
            {
                return Base * Altezza;
            }
        }
        public override double Perimetro
        {
            get
            {
                return (2 * Base) + (2 * Altezza);
            }
        }

        // un metodo

        public override void Muovi()
        {
            throw new NotImplementedException();
        }

        public override void Ruota()
        {
            throw new NotImplementedException();

        }

        public override string ToString()
        {
            string rappresentazioneString = "Perchè sono un rettangolo...\n" +
            "Base :" + Base + "\nAltezza :" + Altezza;
            return rappresentazioneString;
        }
        public override void Stampa()
        {
            base.Stampa();
            Console.WriteLine(this.ToString());
        }
    }
}

