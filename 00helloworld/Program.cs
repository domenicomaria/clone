using System;

// per creare queta applicazione di tipo console ho lanciato il comando
//  dotnet new console
// all'iterno del terminale powershell
namespace helloworld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            int i = 10;

            int k = 20;

            Math.matematica lib = new Math.matematica();

           int risultatoSomma = lib.somma(i, k);

           int risultatoMoltiplicazione = lib.moltiplica(i,k);

            Console.WriteLine("la somma è");
            Console.WriteLine(risultatoSomma);

            Console.WriteLine("il prodotto è");
            Console.WriteLine(risultatoMoltiplicazione);
            
        }
    }
}
