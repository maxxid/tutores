using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    class PageAsistenciasPorCursoVM : BaseViewModel
    {

        public ObservableCollection<Model_Alumnos> AlumnosList { get; set; }


        public PageAsistenciasPorCursoVM(INavigation navigation)
        {
            Navigation = navigation;
            InitProducts();
        }

        private void InitProducts()
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
