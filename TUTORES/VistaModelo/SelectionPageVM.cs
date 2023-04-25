using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using TUTORES.Vistas.Principal;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    class SelectionPageVM : BaseViewModel
    {
        public ObservableCollection<Rol> Roles { get; set; }
        public String Selection { get; set; }

        #region CONTRUCTOR
        public SelectionPageVM(INavigation navigation)
        {
            Navigation = navigation;
            InitProducts();
        }
        #endregion

        public SelectionPageVM()
        {
            InitProducts();

        }

  


        private void InitProducts()
        {

            Roles = new ObservableCollection<Rol>
            {
                new Rol
                {
                    Institucion = "Esc. de Minas",
                    Cargo = "Preceptor",
                    Concat = "Esc. de Minas - Preceptor"
                },
                new Rol
                {
                    Institucion = "Esc. de Comercio Nº1",
                    Cargo = "Docente",
                    Concat = "Esc. de Comercio Nº1 - Docente"
                },
                new Rol
                {
                    Institucion = "Esc. Tecnica Provincial ",
                    Cargo = "Preceptor",
                    Concat = "Esc. Tecnica Provincial - Preceptor"
                },
               
                new Rol
                {
                    Institucion = "Esc. Nacional Nº2 ",
                    Cargo = "Docente",
                    Concat = "Esc. Nacional Nº2 - Docente"
                }

            };
        }

        #region PROCEDIMIENTOS

        public async Task PushSelectionPage()
        {
            await Navigation.PushAsync(new A_PaginaContenedora());
        }


        #endregion


        #region COMANDOS
        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());


        #endregion


    }
}
