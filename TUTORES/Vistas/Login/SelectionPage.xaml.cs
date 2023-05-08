using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.VistaModelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TUTORES.Vistas.Login
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class SelectionPage : ContentPage
    {
        private String textUser;
        public String _cargoSeleccionado=null;
		public SelectionPage (String textUserRecived)
		{
			InitializeComponent ();
            this.textUser = textUserRecived;
            BindingContext = new SelectionPageVM(Navigation, textUser);
        }


       
        
        private void RadioButton_OnCheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            RadioButton radioButton = sender as RadioButton;


            if (radioButton.IsChecked)
            {
                _cargoSeleccionado = radioButton.ContentAsString();

                DisplayAlert("Seleccionado", _cargoSeleccionado, "ok");
            }

        }
    }
}