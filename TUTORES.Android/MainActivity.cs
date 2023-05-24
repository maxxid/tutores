using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Acr.UserDialogs;
using Android.Widget;
using TUTORES.Vistas.Principal;

namespace TUTORES.Droid
{
    [Activity(Label = "TUTORES", Icon = "@mipmap/iconnew", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            UserDialogs.Init(this);
            LoadApplication(new App());
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        [Obsolete]
        public override void OnBackPressed()
        {
            if (Xamarin.Forms.Application.Current.MainPage is Xamarin.Forms.NavigationPage navigationPage &&
                navigationPage.CurrentPage is A_PaginaContenedora myPage)
            {
                myPage.backButtonPressCount++;

                if (myPage.backButtonPressCount == 2)
                {
                    Finish(); // Cerrar la aplicación
                }
                else
                {
                    Toast.MakeText(this, "Presiona nuevamente para salir", ToastLength.Short).Show();
                    new Handler().PostDelayed(() =>
                    {
                        myPage.backButtonPressCount = 0; // Reiniciar el contador después del tiempo de espera
                    }, 2000);
                }
            }
            else
            {
#pragma warning disable CS0618
                base.OnBackPressed();
#pragma warning restore CS0618
            }
        }

    }
}