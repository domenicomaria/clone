using System;

namespace Reception
{
    public class RandomDateTime
    {
        DateTime start;
        Random gen;
        int range;

        public RandomDateTime(DateTime startRange, DateTime endRange)
        {
            // verifica se inizio e fine sono corretti
            if (endRange <= startRange) throw new ArgumentOutOfRangeException();

            start = startRange.Date;
            gen = new Random();
            range = (endRange - startRange.Date).Days + 1;
        }

        public DateTime Next(int inizioAppuntamenti, int fineAppuntamenti)
        {
            // todo ATTENZIONE generalizzare gli orari di apertura
            return start.AddDays(gen.Next(range)).AddHours(gen.Next(inizioAppuntamenti, fineAppuntamenti)).AddMinutes(gen.Next(0, 60));
        }

        public DateTime NextInNextWeek(int inizioAppuntamenti, int fineAppuntamenti)
        {
            DateTime adesso = start;

            DayOfWeek giornoDellaSettimana = adesso.DayOfWeek;
            // Day of week
            int giorniDaAdessoASabato = DayOfWeek.Saturday - giornoDellaSettimana;
            DateTime lunedìProssimo = adesso.AddDays(giorniDaAdessoASabato + 2);
            DateTime venerdìProssimo = lunedìProssimo.AddDays(4);

            RandomDateTime generatore = new RandomDateTime(lunedìProssimo, venerdìProssimo);
            return generatore.Next(inizioAppuntamenti, fineAppuntamenti);
        }
    }

}