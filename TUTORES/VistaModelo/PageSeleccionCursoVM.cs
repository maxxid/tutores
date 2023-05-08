using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Vistas.Login;
using TUTORES.Vistas.Tardanzas;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
   
    class PageSeleccionCursoVM : BaseViewModel
    {

        #region VARIABLES
        
        #endregion


        public PageSeleccionCursoVM(INavigation navigation)
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
