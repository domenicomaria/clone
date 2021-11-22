using System;

namespace Figure
{
    public class Quadrato : Rettangolo
    {
        
        public Quadrato(Punto[] verticiIniziali) : base(verticiIniziali)
        {
            // todo se NON sono vertici di un quadrato
            // esco
            
            // assert costruito un quadrato

        }

        public Quadrato(double lato1) : base(lato1, lato1)
        {
            
        }
        
        /// scatena una eccezione fissa
        public Quadrato(double lato1, double lato2) : base(lato1, lato2)
        {
            throw new NotImplementedException();
        }

        public override double Area => base.Area;

        public override double Perimetro => base.Perimetro;

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override void Muovi()
        {
            base.Muovi();
        }

        public override void Ruota()
        {
            base.Ruota();
        }

        public override void Stampa()
        {
            base.Stampa();
            Console.WriteLine("Perchè sono un quadrato...");

            Console.Write("Lato :");
            Console.WriteLine(Base);
            
        }

        public override string ToString()
        {
            return base.ToString();
        }
    }
}

