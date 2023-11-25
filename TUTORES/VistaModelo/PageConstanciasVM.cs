using Acr.UserDialogs;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using TUTORES.Vistas.Emergentes;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    public class PageConstanciasVM : BaseViewModel
    {
        public PageConstanciasVM(INavigation navigation)
        {
            Navigation = navigation;
            InitProducts();


        }
        private string entryText;
        public string EntryText
        {
            get { return entryText; }
            set
            {
                if (entryText != value)
                {
                    entryText = value;
                    OnPropertyChanged(nameof(EntryText));
                }
            }
        }



        public ObservableCollection<Model_Constancias> ConstanciasList { get; set; }

        private void InitProducts()
        {
            ConstanciasList = new ObservableCollection<Model_Constancias>
            {
                new Model_Constancias
                {
                    id= 1,
                    fSolicitud = "Desde: 01/09/2023",
                    fVencimiento = "Venc: 01/10/2023",
                    oRequiere = "Organismo: Policia de la Prov.",
                    status = "false"

                },
                new Model_Constancias
                {
                    id= 1,
                    fSolicitud = "Desde: 10/05/2023",
                    fVencimiento = "Venc: 10/06/2023",
                    oRequiere = "Organismo: ANSES",
                    status = "false"

                },


            };





        }

        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }

        public async Task AnimNuevaSolicitud()
        {

            if (string.IsNullOrWhiteSpace(EntryText))
            {
                await Application.Current.MainPage.DisplayAlert("Error", "No puede dejar el organismo a presentar vacío.", "OK");

              
            }
            else
            {
                UserDialogs.Instance.ShowLoading("Generando Solicitud");
                await Task.Delay(2000);
                UserDialogs.Instance.HideLoading();
                await Navigation.PushAsync(new PageEmergente_OK());
            }
            
            
        }
        public ICommand VolverCommand => new Command(async () => await Button_Volver());

        public ICommand NuevaConstanciaCommand => new Command(async () => await AnimNuevaSolicitud());


    }
}
