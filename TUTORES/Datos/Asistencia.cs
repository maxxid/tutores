using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Asistencia
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Asistencia { get; set; }

        public int ID_Alumno { get; set; }

        public DateTime Fecha { get; set; }
        public string Estado { get; set; } // Presente, Ausente, Tardanza
    }

}
