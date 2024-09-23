using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Modelo
{
    public class Attendance
    {
        public DateTime Date { get; set; }
        public AttendanceStatus Status { get; set; }
    }

    public enum AttendanceStatus
    {
        Presente,
        Ausente,
        Tardanza
    }
}
