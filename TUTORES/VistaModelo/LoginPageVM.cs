using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Vistas.Login;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    class LoginPageVM :BaseViewModel
    {

        #region VARIABLES
        private string _optionSelected ="1";

        private string _username;
        private string _password;

        #endregion


        public LoginPageVM(INavigation navigation)
        {
            OptionSelected = "Seleccione una opcion";

            Navigation = navigation;
        }

        public string User
        {
            get { return _username; }
            set { _username = value; }
        }

        public string Password
        {
            get { return _password; }
            set { SetValue(ref _password, value); }
        }
        public string OptionSelected
        {
            get { return _optionSelected;}
            set{ SetValue(ref _optionSelected,value);}

        }
        void OnTapped()
        {
        }
        void Seleccion()
        {
            OptionSelected = "continuar";
        }
        public async Task PushSelectionPage()
        {
           await Navigation.PushAsync(new SelectionPage("Max"));
        }
        public async Task IniciarSesion()
        {
            if (User==null || Password ==null || User == "" || Password == "")
            { await DisplayAlert("Error","Ingrese un usuario/contraseña valido", "Ok");
            }
            else
            {
            await Navigation.PushAsync(new SelectionPage(User));

            }

        }

        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());
        public ICommand SelectionCommand => new Command(Seleccion);
        
        public ICommand IniciarSesionCommand => new Command(async () => await IniciarSesion());


        
    }
}
