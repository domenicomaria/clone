using System;


namespace Figure
{
    enum Season
    {
        Spring,
        Summer,
        Autumn,
        Winter
    }
    class Program
    {
        static void Main(string[] args)
        {
            TestaPolimorfismo();
        }

        static void esempioOOP()
        {
            Console.WriteLine("Programma delle Figure");

            // esiste una classe chiamata object e non è astratta
            // ecco che la instanzio
            object o = new object();
            Rettangolo r = new Rettangolo(3d, 6d);
            bool sonoUguali = o.Equals(r);
            // object è implicitamente la classe di base di qualsiasi classe io scriva
            o = r;
            // posso usare anche dei metodi di object ad esempio equals
            sonoUguali = o.Equals(r);

            Rettangolo r1 = new Rettangolo(3d, 6d);
            // che non fa un confronto membro a membro ma tra i puntatori, infatti 
            sonoUguali = r.Equals(r1); // è false

            Punto[] vertici0 = { new Punto(0d, 4d), new Punto(3d, 0d), new Punto(11d, 6d), new Punto(10d, 8d) };

            Console.WriteLine(vertici0.GetType().FullName);

            // dopo aver implementato la ToString posso sia choiamarla che lasciarla usare da console.Write che la chiama internamente
            Console.WriteLine(r);

            Season stagione = Season.Autumn;
            if (stagione == Season.Spring)
            { }
            else if (stagione == Season.Summer)
            { }
            else
            { }
        }
        public static void TestaPolimorfismo()
        {
            Console.WriteLine("Test polimorfismo");
            Punto[] vertici0 = { new Punto(0d, 4d), new Punto(3d, 0d), new Punto(11d, 6d), new Punto(10d, 8d) };
            Punto[] vertici1 = { new Punto(3d, 2d), new Punto(7d, 2d), new Punto(3d, 12d), new Punto(7d, 12d) };
            Punto[] vertici2 = { new Punto(1d, 1d), new Punto(2d, 0d), new Punto(3d, 3d), new Punto(2d, 4d) };
            Punto[] vertici3 = { new Punto(8d, 1d), new Punto(10d, 2d), new Punto(5d, 7d), new Punto(3d, 5d) };
            Punto[] vertici4 = { new Punto(0d, 1d), new Punto(0d, 5d), new Punto(1d, 2d), new Punto(5d, 2d) };

            Rettangolo r0 = new Rettangolo(vertici0);
            Rettangolo r1 = new Rettangolo(vertici1);
            Rettangolo r2 = new Rettangolo(vertici2);
            Rettangolo r3 = new Rettangolo(vertici3);
            Rettangolo r4 = new Rettangolo(vertici4);
            Rettangolo r5 = new Rettangolo(3d, 5d);
            Quadrato q = new Quadrato(8d);


            Punto centro = new Punto(0d, 0d);
            double raggio = 5d;
            Cerchio c = new Cerchio(raggio, centro);

            Figura[] mieFigure = { r0, r1, r2, r3, r4, r5, q, c };


            //iterazioni
            // primo esempio iterazione for
            // for (inizializzazione;condizione di permanenza; espressione di incremento eseguita ad ogni giro/iterazione)

            for (int idx = 0; idx < mieFigure.Length; idx++)
            {
                mieFigure[idx].Id = idx;
                mieFigure[idx].Stampa();
            }


        }
    }
}

