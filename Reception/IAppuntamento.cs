using System;

namespace Reception
{
    public interface IAppuntamento
    {
        int Id { get; set; }
        Referente Referente { get; set; }
        Cliente Cliente { get; set; }
        DateTime Orario { get; set; }
        TimeSpan Durata { get; set; }
        Postazione Postazione { get; set; }
    }
}