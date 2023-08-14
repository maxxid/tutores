using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class PageAlumnosVM : BaseViewModel
    {
        public ObservableCollection<Model_Alumnos> AlumnosList { get; set; }

        public PageAlumnosVM(INavigation navigation)
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

                },new Model_Alumnos
                {Nombre = "Ana",
                    Apellido = "Bolivar",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""

                },
                new Model_Alumnos
                {
                    Nombre = "Maira",
                    Apellido = "Damontini",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Micaela",
                    Apellido = "Gaite",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Lorenzo",
                    Apellido = "Pizarro",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Emma",
                    Apellido = "Ruiz",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Pricila",
                    Apellido = "Cruz",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Cadeluchi",
                    Apellido = "Giemenes",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Violeta",
                    Apellido = "Rcoa",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Nadia",
                    Apellido = "Villanueva",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Valentina",
                    Apellido = "Velarde",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Jose",
                    Apellido = "Valverde",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },
                new Model_Alumnos
                {
                    Nombre = "Lorena",
                    Apellido = "Zerruto",
                    Icono = "monkey.png", Estado_Asistencia = "P", Fecha = ""
                },

            };
    }
         public async Task Button_Volver()
    {
        await Navigation.PopAsync();
    }
         public ICommand VolverCommand => new Command(async () => await Button_Volver());



    }
}
