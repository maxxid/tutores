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
    class PageConstanciasVM : BaseViewModel
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
                    fSolicitud = "Desde: 02/09/2024",
                    fVencimiento = "Venc: 02/10/2024",
                    oRequiere = "Organismo: Policia de la Prov.",
                    status = "true"
                },
                new Model_Constancias
                {
                    id= 1,
                    fSolicitud = "Desde: 14/09/2024",
                    fVencimiento = "Venc: 14/10/2024",
                    oRequiere = "Organismo: Exar SRL",
                    status = "true"
                },
                new Model_Constancias
                {
                    id= 1,
                    fSolicitud = "Desde: 01/12/2024",
                    fVencimiento = "Venc: 01/12/2024",
                    oRequiere = "Organismo: Ministerio de Educacion de Jujuy",
                    status = "true"
                },
                new Model_Constancias
                {
                    id= 1,
                    fSolicitud = "Desde: 15/10/2023",
                    fVencimiento = "Venc: 15/11/2024",
                    oRequiere = "Organismo: Colegio de Tecnicos de Jujuy",
                    status = "true"
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
        public ICommand DownloadCommand => new Command<Model_Constancias>(async (constancia) => await DownloadConstancia(constancia));

        private async Task DownloadConstancia(Model_Constancias constancia)
        {
            // Lógica para descargar la constancia
            await Application.Current.MainPage.DisplayAlert("Descargar", $"Descargando {constancia.oRequiere}", "OK");
        }
        public ICommand VolverCommand => new Command(async () => await Button_Volver());
        public ICommand NuevaConstanciaCommand => new Command(async () => await AnimNuevaSolicitud());
    }
}
