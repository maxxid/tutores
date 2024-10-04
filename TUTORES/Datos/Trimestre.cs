using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    [Table("Trimestres")]
    public class Trimestre
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Trimestre { get; set; }
        public int ID_Alumno { get; set; }
        public string Nombre { get; set; }
        public double Calificacion { get; set; }
        public List <Materia> Materias { get; set; }
        public int SyncStatus { get; set; }
        public DateTime FechaSync { get; set; }

    }
}
