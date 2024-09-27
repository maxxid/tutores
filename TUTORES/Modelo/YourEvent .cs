using System;
using System.Collections.Generic;
using System.Text;
using Xalendar.Api.Interfaces;


namespace TUTORES.Modelo
{
    public class YourEvent : ICalendarViewEvent
    {
        private int v1;
        private string v2;
        private DateTime today1;
        private DateTime today2;
        private bool v3;

        public YourEvent(int v1, string v2, DateTime today1, DateTime today2, bool v3)
        {
            this.v1 = v1;
            this.v2 = v2;
            this.today1 = today1;
            this.today2 = today2;
            this.v3 = v3;
        }

        public object Id { get; }
        public string Name { get; }
        public DateTime StartDateTime { get; }
        public DateTime EndDateTime { get; }
        public bool IsAllDay { get; }
    }
}
