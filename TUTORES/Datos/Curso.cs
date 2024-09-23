using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Curso
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Curso { get; set; }

        public int ID_Alumno { get; set; }

        public int ID_Materia { get; set; }
    }

}
