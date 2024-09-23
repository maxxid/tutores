using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TUTORES.Datos
{
    public class Nota
    {
        [PrimaryKey, AutoIncrement]
        public int ID_Nota { get; set; }

        public int ID_Curso { get; set; }

        public double Numero { get; set; }
        public int Trimestre { get; set; }
    }

}
