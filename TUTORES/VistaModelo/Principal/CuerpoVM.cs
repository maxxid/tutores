using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Vistas.Tardanzas;
using Xamarin.Forms;

namespace TUTORES.VistaModelo.Principal
{
    class CuerpoVM : BaseViewModel
    {

        #region VARIABLES

        #endregion


        public CuerpoVM(INavigation navigation)
        {
            Navigation = navigation;
        }




        public async Task PushSelectionPage()
        {
            await Navigation.PushAsync(new PageSeleccionCurso());
        }


        public ICommand PushSelectionCommand => new Command(async () => await PushSelectionPage());


    }
}