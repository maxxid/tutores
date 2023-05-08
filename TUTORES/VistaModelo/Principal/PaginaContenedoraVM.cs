using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
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

        private string _rol;
        public PaginaContenedoraVM(INavigation navigation, string rol)
        {
            _rol = rol;
            Navigation = navigation;



        }

        private string Rol
        {
            get { return _rol; }
            set { _rol = value; }
        }
        #region PROCEDIMIENTOS
        public async Task PushSelectionPage()
        {
            await Navigation.PushAsync(new A_PaginaContenedora(Rol));
        }
        #endregion


        #region COMANDOS
        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());


        #endregion


    }
}
