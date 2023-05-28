using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    class VMPageEmergente : BaseViewModel
    {

        public VMPageEmergente(INavigation navigation)
        {
            Navigation = navigation;
        }
        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }
        public ICommand VolverCommand => new Command(async () => await Button_Volver());
    }
}
