using Acr.UserDialogs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class PageUsuarioVM : BaseViewModel
    {
        private Boolean _estadoEditar;

        public PageUsuarioVM(INavigation navigation)
        {
            Navigation = navigation;
            _estadoEditar = true;
        }

        private Boolean EstadoEditar
        {
            get { return _estadoEditar; }
            set { _estadoEditar = value; }
        }

        public void habilitarEditar()
        {
            if (_estadoEditar == true)
            {
                _estadoEditar = false;
            }
            else
            {
                _estadoEditar = true;
            }

            
        }
        public async Task activityCargando()
        {
            UserDialogs.Instance.ShowLoading("Sincronizando");
            await Task.Delay(2000);
            UserDialogs.Instance.HideLoading();
            await App.Current.MainPage.DisplayAlert("Actualizacion de Datos", "Exitosa", "Ok");

        }

        public ICommand HabilitarEditarCommand => new Command(habilitarEditar);
        public ICommand ActivityCommand => new Command(async () => await activityCargando());






    }
}
