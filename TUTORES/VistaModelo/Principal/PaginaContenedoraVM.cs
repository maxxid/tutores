using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Vistas.Login;
using TUTORES.Vistas.Principal;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class PaginaContenedoraVM :BaseViewModel
    {
        public PaginaContenedoraVM(INavigation navigation)
        {
            Navigation = navigation;
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
