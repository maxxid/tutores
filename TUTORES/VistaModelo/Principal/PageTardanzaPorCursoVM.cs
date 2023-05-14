using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class PageTardanzaPorCursoVM : BaseViewModel
    {

        public PageTardanzaPorCursoVM(INavigation navigation)
        {
            Navigation = navigation;
            InitAlumns();
        }

        public ObservableCollection<Model_Alumnos> AlumnosList { get; set; }

        private void InitAlumns()
        {
            AlumnosList = new ObservableCollection<Model_Alumnos>
            {
                new Model_Alumnos
                {
                    Nombre = "Anabel",
                    Apellido = "Ascabicar",
                    Icono = "monkey.png",
                    Estado_Asistencia = "P",
                    Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Antonella",
                    Apellido = "Barrera",
                    Icono = "monkey.png",
                    Estado_Asistencia = "P",
                    Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Candela",
                    Apellido = "Pieroni",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {Nombre = "Daniela",
                    Apellido = "Benakovic",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""

                }
            };
        }





    }
}
