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
                    Nombre = "Anabel Perez",
                    Apellido = "Perez",
                    Icono = "monkey.png",
                    Estado_Asistencia = "P",
                    Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Belen Maroni",
                    Apellido = "Maroni",
                    Icono = "monkey.png",
                    Estado_Asistencia = "P",
                    Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Candela Pieroni",
                    Apellido = "Pieroni",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {Nombre = "Daniela Benakovic",
                    Apellido = "Benakovic", 
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""

                }
            };
        }
    }
}
