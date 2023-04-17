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
        public LoginPageVM(INavigation navigation)
        {
            Navigation  = navigation;
        }


        void OnTapped()
        {
        }

        public async Task PushSelectionPage()
        {
           await Navigation.PushAsync(new SelectionPage());
        }
        
        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());
        public ICommand PushPage => new Command(OnTapped);

    }
}
