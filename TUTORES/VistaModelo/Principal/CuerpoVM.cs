using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Acr.UserDialogs;
using TUTORES.Modelo;
using TUTORES.Vistas.Ajustes;
using TUTORES.Vistas.Asistencias;
using TUTORES.Vistas.Emergentes;
using TUTORES.Vistas.Tardanzas;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class CuerpoVM : BaseViewModel
    {

        #region VARIABLES

        private Boolean _estadoOffline;
        private string _stringEstadoOffline;


        #endregion

        public CuerpoVM(INavigation navigation)
        {
            Navigation = navigation;
            EstadoOffline = false;
            StringEstadoOffline = "Modo offline";

        }

        private Boolean EstadoOffline
        {
            get { return _estadoOffline; }
            set { _estadoOffline = value; }
        }
        public string StringEstadoOffline
        {
            get { return _stringEstadoOffline; }
            set { _stringEstadoOffline = value; }
        }


        public async Task PushSelectionPage()
        {
            await Navigation.PushAsync(new PageSeleccionCurso());
        }
        public async Task Button_AsistenciaPorCursoFunction()
        {
            await Navigation.PushAsync(new PageAsistenciasPorCurso());
        }
        public async Task Button_TardanzaPorCursoFunction()
        {
            await Navigation.PushAsync(new PaseTardanzasPorCurso());
        }

        

        public async Task activityCargando()
        {
            UserDialogs.Instance.ShowLoading("Sincronizando");
            await Task.Delay(2000);
            UserDialogs.Instance.HideLoading();
            await  App.Current.MainPage.DisplayAlert("Sincronizacion", "Exitosa", "Ok");

        }

        public async Task Button_offlineFunction()
        {
            if (EstadoOffline)
            {
                await DisplayAlert("Modo", "Sin Conexion activo", "ok");
                EstadoOffline =!EstadoOffline;
                StringEstadoOffline = "Modo online";
            }
            else
            {
                await DisplayAlert("Modo", "Sin Conexion desactivado", "ok");
                EstadoOffline = !EstadoOffline;
                StringEstadoOffline = "Modo offline";

            }
        }
        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }

        public async Task Button_AnimOk()
        {
            await Navigation.PushAsync(new PageEmergente_OK());
        }
        public async Task Button_AnimFail()
        {
            await Navigation.PushAsync(new PageEmergente_Fail());
        }
        public async Task Button_Usuario()
        {
            await Navigation.PushAsync(new PageUsuario());
        }

        public ICommand VolverCommand => new Command(async () => await Button_Volver());
        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());
        public ICommand Button_offlineCommand => new Command(async () => await Button_offlineFunction());
        public ICommand Button_AsistenciaPorCursoCommand => new Command(async () => await Button_AsistenciaPorCursoFunction());

        public ICommand Button_AnimOkCommand => new Command(async () => await Button_AnimOk());

        public ICommand Button_AnimFailCommand => new Command(async () => await Button_AnimFail());

        public ICommand Button_PageUsuarioCommand => new Command(async () => await Button_Usuario());

        public ICommand Button_TardanzaPorCursoCommand => new Command(async () => await Button_TardanzaPorCursoFunction());
        public ICommand ActivityCommand => new Command(async () => await activityCargando());
       





    }
}