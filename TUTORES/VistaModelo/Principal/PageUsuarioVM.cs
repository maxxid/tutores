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
        private bool _estadoActivo;
        private bool _estadoActivoBotonEditar;
        private string _backgroundPlaceholder = "#08192B";
        private string _colorIcon = "ForestGreen";
        private string _nameIcon = "icon_A_OK.png";
        private string _colorBorder = "#08192B";
        public PageUsuarioVM(INavigation navigation)
        {
            _estadoActivo = false;
            _estadoActivoBotonEditar = true;
            Navigation = navigation;
            
        }
        public bool EstadoActivo
        {
            get { return _estadoActivo; }
            set
            {
                if (_estadoActivo != value)
                {
                    _estadoActivo = value;
                    OnPropertyChanged(nameof(EstadoActivo));
                }
            }
        }
        public bool EstadoActivoBotonEditar
        {
            get { return _estadoActivoBotonEditar; }
            set
            {
                if (_estadoActivoBotonEditar != value)
                {
                    _estadoActivoBotonEditar = value;
                    OnPropertyChanged(nameof(EstadoActivoBotonEditar));
                }
            }
        }
        public string BackgroundPlaceholder
        {
            get { return _backgroundPlaceholder; }
            set { _backgroundPlaceholder = value; OnPropertyChanged(nameof(BackgroundPlaceholder)); }
        }
        public string ColorIcon
        {
            get { return _colorIcon; }
            set { _colorIcon = value; OnPropertyChanged(nameof(ColorIcon)); }
        }
        public string ColorBorder
        {
            get { return _colorBorder; }
            set { _colorBorder = value; OnPropertyChanged(nameof(ColorBorder)); }
        }
        public string NameIcon
        {
            get { return _nameIcon; }
            set { _nameIcon = value; OnPropertyChanged(nameof(NameIcon)); }
        }

        private void ToggleEstadoActivo()
        {

            EstadoActivoBotonEditar = !EstadoActivoBotonEditar;

            EstadoActivo = !EstadoActivo;
            if (!EstadoActivo)
            {
                BackgroundPlaceholder = "#08192B";
                ColorIcon = "ForestGreen";
                NameIcon = "icon_A_OK.png";
                ColorBorder = "#08192B";
            }
            else
            {
                BackgroundPlaceholder = "#08192B";
                
                ColorIcon = "DarkOrange";
                NameIcon = "icon_A_EDIT.png";
                ColorBorder = "SkyBlue";
            }


        }

      


        
        public async Task activityCargando()
        {
            UserDialogs.Instance.ShowLoading("Sincronizando");
            await Task.Delay(2000);
            UserDialogs.Instance.HideLoading();
            await App.Current.MainPage.DisplayAlert("Actualizacion de Datos", "Exitosa", "Ok");

        }

        public ICommand HabilitarEditarCommand => new Command(ToggleEstadoActivo);
        public ICommand ActivityCommand => new Command(async () => await activityCargando());






    }
}
