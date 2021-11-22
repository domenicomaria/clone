namespace Figure
{
    public class Triangolo : Poligono
    {
        public Triangolo(Punto[] verticiIniziali)
        {
            // todo ? sono accettabili

            vertici = new Punto[3];


            // altrimenti copio i valori che mi sono stati passati e li salvo nella variabile privata vertici
            vertici[0] = verticiIniziali[0];
            vertici[1] = verticiIniziali[1];
            vertici[2] = verticiIniziali[2];
        }

        public override double Area
        {
            get
            {
                throw new System.NotImplementedException();
            }
        }

        public override double Perimetro
        {
            get
            {
                throw new System.NotImplementedException();
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
            throw new System.NotImplementedException();
        }
    }
}

