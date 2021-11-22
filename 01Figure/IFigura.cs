using System.Drawing;

namespace Figure
{
    // l'iterfaccia è un cotratto tra una entità e i processi esterni.
    // essa elenca solo le firme di tutti i membri pubblici siano proprietà siano metodi e non ci sarà alcuna implementazione
    // per questo se una firma compare non serve specificare public.
    public interface IFigura
    {
        Color Contorno { get; set; }
        Color Riempimento { get; set; }
        int Id { get; set; }
        double Area { get; }
        double Perimetro { get; }
        void Muovi();// todo verifico come implementarlo, probabilmnte mi basta passare un punto che rappresenta la traslazione di assi
        void Ruota();// todo boh!!!
        void Stampa();// servirà sapere su che dispositivo effettuare l'operazione
    }
}

