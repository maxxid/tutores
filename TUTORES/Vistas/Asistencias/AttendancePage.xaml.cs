using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUTORES.Modelo;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using TUTORES.VistaModelo;

namespace TUTORES.Vistas.Asistencias
{
    public partial class AttendancePage : ContentPage
    {
        private AttendanceStatusConverter _attendanceStatusConverter;

        public AttendancePage()
        {
            InitializeComponent();
            BindingContext = new AttendanceViewModel(Navigation);
            ((AttendanceViewModel)BindingContext).PropertyChanged += AttendancePage_PropertyChanged;

            _attendanceStatusConverter = (AttendanceStatusConverter)this.Resources["AttendanceStatusConverter"];

            PopulateCalendar();
        }

        private void AttendancePage_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(AttendanceViewModel.Attendances) || e.PropertyName == nameof(AttendanceViewModel.SelectedMonth))
            {
                PopulateCalendar();
            }
        }

        private void PopulateCalendar()
        {
            var viewModel = (AttendanceViewModel)BindingContext;
            var daysInMonth = GetDaysInMonth(viewModel.SelectedMonth.Year, viewModel.SelectedMonth.Month);
            calendarGrid.Children.Clear();
            Color textColorDayLabel = Color.FromHex("#FFFFF0");
            for (int i = 0; i < 7; i++)
            {
                Label dayLabel = new Label { Text = GetDayOfWeek(i), FontSize = 14, HorizontalOptions = LayoutOptions.Center, TextColor = textColorDayLabel };
                Grid.SetColumn(dayLabel, i);
                Grid.SetRow(dayLabel, 0);
                calendarGrid.Children.Add(dayLabel);
            }

            int row = 1;
            int col = (int)daysInMonth[0].DayOfWeek;

            foreach (DateTime day in daysInMonth)
            {
                var attendance = viewModel.Attendances.FirstOrDefault(a => a.Date.Date == day.Date);
                string statusText = attendance != null ? _attendanceStatusConverter.Convert(attendance.Status, typeof(string), null, null).ToString() : string.Empty;

                Frame dayFrame = new Frame
                {
                    CornerRadius = 5, // adjust the corner radius to your liking
                    BorderColor = GetBorderColor(attendance),
                    BackgroundColor = GetBackgroundColor(attendance),
                    Padding = new Thickness(5), // add some padding to make the frame larger than the label
                    HorizontalOptions = LayoutOptions.Fill, // fill the available width
                    WidthRequest = 20, // occupy the full width of the grid cell
                    VerticalOptions = LayoutOptions.Center
                };
                Color textColorDayLabelNumber = Color.FromHex("#677a8e");
                Label dayLabel = new Label { Text = day.Day.ToString(), FontSize = 14, HorizontalOptions = LayoutOptions.Center, TextColor = textColorDayLabelNumber };
                dayFrame.Content = dayLabel;

                Grid.SetColumn(dayFrame, col);
                Grid.SetRow(dayFrame, row);
                calendarGrid.Children.Add(dayFrame);

                col++;
                if (col > 6)
                {
                    col = 0;
                    row++;
                }
            }
        }

        private List<DateTime> GetDaysInMonth(int year, int month)
        {
            List<DateTime> days = new List<DateTime>();
            int daysInMonth = DateTime.DaysInMonth(year, month);
            for (int i = 1; i <= daysInMonth; i++)
            {
                days.Add(new DateTime(year, month, i));
            }
            return days;
        }

        private string GetDayOfWeek(int dayOfWeek)
        {
            switch (dayOfWeek)
            {
                case 0: return "Dom";
                case 1: return "Lun";
                case 2: return "Mar";
                case 3: return "Mié";
                case 4: return "Jue";
                case 5: return "Vie";
                case 6: return "Sáb";
                default: return "";
            }
        }

        private Color GetBorderColor(Attendance attendance)
        {
            if (attendance == null)
                return Color.Default;

            switch (attendance.Status)
            {
                case AttendanceStatus.Presente:
                    return Color.FromHex("#00656B"); // Green
                case AttendanceStatus.Ausente:
                    return Color.FromHex("#953640"); // Red
                case AttendanceStatus.Tardanza:
                    return Color.FromHex("#D79C00"); // Tardanza
                default:
                    return Color.Default;
            }
        }
        private Color GetBackgroundColor(Attendance attendance)
        {
            if (attendance == null)
                return Color.Default;

            switch (attendance.Status)
            {
                case AttendanceStatus.Presente:
                    // return Color.FromHex("#009199"); // Green  #74C7AB
                    return Color.FromHex("#74C7AB"); // Green  #74C7AB

                case AttendanceStatus.Ausente:
                    return Color.FromHex("#c96973"); // Red
                case AttendanceStatus.Tardanza:
                    return Color.FromHex("#ffc933"); // Tardanza
                default:
                    return Color.Default;
            }
        }
    }
}
