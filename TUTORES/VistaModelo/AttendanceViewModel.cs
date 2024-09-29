using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;
using TUTORES.Modelo;
using Xamarin.Forms;

namespace TUTORES.VistaModelo
{
    public class AttendanceViewModel : BaseViewModel
    {


        

        public ICommand VolverCommand => new Command(async () => await Button_Volver());
        private ObservableCollection<Attendance> _attendances;
        public ObservableCollection<Attendance> Attendances
        {
            get { return _attendances; }
            set { _attendances = value; OnPropertyChanged(nameof(Attendances)); UpdateSummaries(); }
        }

        private DateTime _selectedMonth;
        public DateTime SelectedMonth
        {
            get { return _selectedMonth; }
            set { _selectedMonth = value; OnPropertyChanged(nameof(SelectedMonth)); LoadAttendances(); }
        }
        private string _monthlySummary;
        public string MonthlySummary
        {
            get { return _monthlySummary; }
            set { _monthlySummary = value; OnPropertyChanged(nameof(MonthlySummary)); }
        }

        private string _annualSummary;
        public string AnnualSummary
        {
            get { return _annualSummary; }
            set { _annualSummary = value; OnPropertyChanged(nameof(AnnualSummary)); }
        }

        private ObservableCollection<Attendance> _filteredAttendances;
        public ObservableCollection<Attendance> FilteredAttendances
        {
            get { return _filteredAttendances; }
            set { _filteredAttendances = value; OnPropertyChanged(nameof(FilteredAttendances)); }
        }
        public ICommand NextMonthCommand { get; set; }
        public ICommand PreviousMonthCommand { get; set; }

        public AttendanceViewModel(INavigation navigation)
        {
            Navigation = navigation;
            NextMonthCommand = new Command(NextMonth);
            PreviousMonthCommand = new Command(PreviousMonth);
            SelectedMonth = DateTime.Now; // Inicializar el mes seleccionado
            LoadAttendances();
            FilterAttendances();
        }
        public AttendanceViewModel()
        {
            
            NextMonthCommand = new Command(NextMonth);
            PreviousMonthCommand = new Command(PreviousMonth);
            SelectedMonth = DateTime.Now; // Inicializar el mes seleccionado
            LoadAttendances();
            FilterAttendances();
        }
        public async Task Button_Volver()
        {
            await Navigation.PopAsync();
        }
        private void LoadAttendances()
        {
            var attendancesData = DeserializeAttendancesData();
            Attendances = new ObservableCollection<Attendance>(attendancesData);
        }
        private void FilterAttendances()
        {
            if (Attendances == null)
                return;

            //var filtered = Attendances.Where(a => a.Status == AttendanceStatus.Ausente || a.Status == AttendanceStatus.Tardanza);
            var filtered = Attendances.Where(a => a.Status == AttendanceStatus.Ausente);

            FilteredAttendances = new ObservableCollection<Attendance>(filtered);
        }
        private List<Attendance> DeserializeAttendancesData()
        {
            // Simula tu JSON serializado aquí
            string serializedData = @"
            [
              {'Date': '2024-03-01T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-04T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-05T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-03-06T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-07T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-08T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-11T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-12T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-03-13T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-14T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-15T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-03-18T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-19T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-20T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-21T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-22T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-03-25T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-26T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-27T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-03-28T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-03-29T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-01T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-02T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-03T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-04-04T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-05T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-08T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-09T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-04-10T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-11T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-12T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-04-15T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-16T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-17T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-18T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-19T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-04-22T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-23T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-24T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-04-25T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-26T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-29T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-04-30T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-01T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-05-02T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-03T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-06T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-07T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-05-08T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-09T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-10T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-05-13T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-14T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-15T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-16T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-17T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-05-20T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-21T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-22T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-05-23T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-24T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-27T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-28T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-29T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-05-30T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-05-31T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-03T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-04T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-06-05T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-06T00:00:00', 'Status': 'Presente'},
 {'Date': '2024-06-07T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-06-10T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-11T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-12T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-13T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-14T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-17T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-18T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-06-19T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-20T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-21T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-06-24T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-25T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-26T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-27T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-06-28T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-07-01T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-02T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-03T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-07-04T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-05T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-08T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-09T00:00:00', 'Status': 'Ausente'},
  {'Date': '2024-07-10T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-11T00:00:00', 'Status': 'Presente'},
  {'Date': '2024-07-12T00:00:00', 'Status': 'Tardanza'},
  {'Date': '2024-07-15T00:00:00', 'Status': 'Presente'}
            ]";

            return JsonConvert.DeserializeObject<List<Attendance>>(serializedData);
        }
        private async Task<List<Attendance>> DeserializeAttendancesDataAsync()
        {
            using (var client = new HttpClient())
            {
                var response = await client.GetStringAsync("URL_DE_TU_API");
                return JsonConvert.DeserializeObject<List<Attendance>>(response);
            }
        }

        private void NextMonth()
        {
            SelectedMonth = SelectedMonth.AddMonths(1);
        }

        private void PreviousMonth()
        {
            SelectedMonth = SelectedMonth.AddMonths(-1);
        }

        private void UpdateSummaries()
        {
            var currentMonthAttendances = Attendances.Where(a => a.Date.Month == SelectedMonth.Month && a.Date.Year == SelectedMonth.Year);
            MonthlySummary = $"Presente: {currentMonthAttendances.Count(a => a.Status == AttendanceStatus.Presente)}, " +
                             $"Ausente: {currentMonthAttendances.Count(a => a.Status == AttendanceStatus.Ausente)}, " +
                             $"Tardanza: {currentMonthAttendances.Count(a => a.Status == AttendanceStatus.Tardanza)}";

            var currentYearAttendances = Attendances.Where(a => a.Date.Year == SelectedMonth.Year);
            AnnualSummary = $"Presente: {currentYearAttendances.Count(a => a.Status == AttendanceStatus.Presente)}, " +
                            $"Ausente: {currentYearAttendances.Count(a => a.Status == AttendanceStatus.Ausente)}, " +
                            $"Tardanza: {currentYearAttendances.Count(a => a.Status == AttendanceStatus.Tardanza)}";
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        
    }
}
