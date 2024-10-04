using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    [Table("Alumnos")]

    public class Alumno
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Alumno { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public int ID_Tutor { get; set; }
        public int ID_Escuela { get; set; }
        public DateTime FechaSync { get; set; }

        [Ignore]
        public List<Asistencia> Asistencias { get; set; }  // Relación con Asistencias

        [Ignore]
        public List<Nota> Notas { get; set; }  // Relación con Notas

    }

}
