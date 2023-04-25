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

        #endregion


        public LoginPageVM(INavigation navigation)
        {
            OptionSelected = "Seleccione una opcion";

            Navigation = navigation;
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
           await Navigation.PushAsync(new SelectionPage());
        }
        
        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());
        public ICommand SelectionCommand => new Command(Seleccion);

    }
}
