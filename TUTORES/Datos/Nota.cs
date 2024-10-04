using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    [Table("Notas")]

    public class Nota
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Nota { get; set; }
        public int ID_Alumno { get; set; }
        public int ID_Curso { get; set; }
        public string Trimestre { get; set; }
        public double Calificacion { get; set; }
        public string Descripcion { get; set; }
        public string Materia { get; set; }
        public int SyncStatus { get; set; }
        public DateTime FechaSync { get; set; }
    }

}
