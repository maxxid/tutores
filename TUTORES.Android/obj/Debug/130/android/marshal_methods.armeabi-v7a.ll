; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 69
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 101
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 13
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 96
	i32 77620104, ; 4: TUTORES.Android => 0x4a06388 => 0
	i32 88799905, ; 5: Acr.UserDialogs => 0x54afaa1 => 4
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 85
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 85
	i32 148395041, ; 8: Lottie.Forms.dll => 0x8d85421 => 9
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 50
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 86
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 48
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 64
	i32 232587938, ; 13: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 75
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 110
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 53
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 68
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 62
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 40
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 32
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 25
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 31
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 52
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 95
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 61
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 12
	i32 469710990, ; 27: System.dll => 0x1bff388e => 30
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 62
	i32 484905788, ; 29: Plugin.Segmented.dll => 0x1ce7133c => 17
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 73
	i32 525008092, ; 31: SkiaSharp.dll => 0x1f4afcdc => 19
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 105
	i32 577617440, ; 33: Xalendar.dll => 0x226dbe20 => 39
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 108
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 57
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 91
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 45
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 37
	i32 691439157, ; 39: Acr.UserDialogs.dll => 0x29368635 => 4
	i32 748832960, ; 40: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 23
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 107
	i32 791272004, ; 42: Plugin.InputKit => 0x2f29da44 => 15
	i32 809851609, ; 43: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 44: Xamarin.AndroidX.Print => 0x3246f6cd => 82
	i32 902159924, ; 45: Rg.Plugins.Popup => 0x35c5de34 => 18
	i32 928116545, ; 46: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 101
	i32 955402788, ; 47: Newtonsoft.Json => 0x38f24a24 => 13
	i32 957807352, ; 48: Plugin.CurrentActivity => 0x3916faf8 => 14
	i32 961995525, ; 49: Square.OkIO.dll => 0x3956e305 => 27
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 974778368, ; 51: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 84
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 44
	i32 1042160112, ; 54: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 98
	i32 1048661744, ; 55: TUTORES.dll => 0x3e814ef0 => 38
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 70
	i32 1098259244, ; 57: System => 0x41761b2c => 30
	i32 1175144683, ; 58: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 89
	i32 1178241025, ; 59: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 78
	i32 1204270330, ; 60: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 45
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 90
	i32 1292207520, ; 62: SQLitePCLRaw.core.dll => 0x4d0585a0 => 24
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 59
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 102
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 84
	i32 1395857551, ; 66: Xamarin.AndroidX.Media.dll => 0x5333188f => 74
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 54
	i32 1411638395, ; 68: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 34
	i32 1460219004, ; 69: Xamarin.Forms.Xaml => 0x57092c7c => 99
	i32 1462112819, ; 70: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 71: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 43
	i32 1582372066, ; 72: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 58
	i32 1592978981, ; 73: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 74: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 72
	i32 1624863272, ; 75: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 93
	i32 1636350590, ; 76: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 56
	i32 1639515021, ; 77: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 78: System.Runtime => 0x62c6282e => 35
	i32 1658241508, ; 79: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 87
	i32 1658251792, ; 80: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 100
	i32 1670060433, ; 81: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 53
	i32 1711441057, ; 82: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 25
	i32 1722051300, ; 83: SkiaSharp.Views.Forms => 0x66a46ae4 => 21
	i32 1729485958, ; 84: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 49
	i32 1766324549, ; 85: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 86
	i32 1776026572, ; 86: System.Core.dll => 0x69dc03cc => 29
	i32 1788241197, ; 87: Xamarin.AndroidX.Fragment => 0x6a96652d => 61
	i32 1808609942, ; 88: Xamarin.AndroidX.Loader => 0x6bcd3296 => 72
	i32 1813201214, ; 89: Xamarin.Google.Android.Material => 0x6c13413e => 100
	i32 1818569960, ; 90: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 79
	i32 1867746548, ; 91: Xamarin.Essentials.dll => 0x6f538cf4 => 95
	i32 1878053835, ; 92: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 99
	i32 1885316902, ; 93: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 46
	i32 1919157823, ; 94: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 76
	i32 2011961780, ; 95: System.Buffers.dll => 0x77ec19b4 => 28
	i32 2019465201, ; 96: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 70
	i32 2055257422, ; 97: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2079903147, ; 98: System.Runtime.dll => 0x7bf8cdab => 35
	i32 2090596640, ; 99: System.Numerics.Vectors => 0x7c9bf920 => 33
	i32 2097448633, ; 100: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 63
	i32 2103459038, ; 101: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 26
	i32 2126786730, ; 102: Xamarin.Forms.Platform.Android => 0x7ec430aa => 97
	i32 2171773547, ; 103: TUTORES => 0x8172a26b => 38
	i32 2201231467, ; 104: System.Net.Http => 0x8334206b => 2
	i32 2206207305, ; 105: TUTORES.Android.dll => 0x83800d49 => 0
	i32 2217644978, ; 106: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 89
	i32 2244775296, ; 107: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 73
	i32 2256548716, ; 108: Xamarin.AndroidX.MultiDex => 0x8680336c => 76
	i32 2261435625, ; 109: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 65
	i32 2279755925, ; 110: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 83
	i32 2315684594, ; 111: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 41
	i32 2409053734, ; 112: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 81
	i32 2465273461, ; 113: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 23
	i32 2465532216, ; 114: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 52
	i32 2471841756, ; 115: netstandard.dll => 0x93554fdc => 103
	i32 2475788418, ; 116: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 117: System.Data.DataSetExtensions => 0x95178668 => 106
	i32 2505896520, ; 118: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 69
	i32 2563143864, ; 119: AndHUD.dll => 0x98c678b8 => 5
	i32 2581819634, ; 120: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 90
	i32 2620871830, ; 121: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 56
	i32 2624644809, ; 122: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 60
	i32 2633051222, ; 123: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 68
	i32 2701096212, ; 124: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 87
	i32 2732626843, ; 125: Xamarin.AndroidX.Activity => 0xa2e0939b => 40
	i32 2737747696, ; 126: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 43
	i32 2766581644, ; 127: Xamarin.Forms.Core => 0xa4e6af8c => 96
	i32 2772484381, ; 128: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 80
	i32 2778768386, ; 129: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 92
	i32 2795602088, ; 130: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 20
	i32 2806986428, ; 131: Plugin.CurrentActivity.dll => 0xa74f36bc => 14
	i32 2809481863, ; 132: MagicGradients => 0xa7754a87 => 10
	i32 2810250172, ; 133: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 54
	i32 2819470561, ; 134: System.Xml.dll => 0xa80db4e1 => 36
	i32 2843355708, ; 135: Lottie.Android.dll => 0xa97a2a3c => 8
	i32 2853208004, ; 136: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 92
	i32 2855708567, ; 137: Xamarin.AndroidX.Transition => 0xaa36a797 => 88
	i32 2861816565, ; 138: Rg.Plugins.Popup.dll => 0xaa93daf5 => 18
	i32 2903344695, ; 139: System.ComponentModel.Composition => 0xad0d8637 => 109
	i32 2905242038, ; 140: mscorlib.dll => 0xad2a79b6 => 12
	i32 2912489636, ; 141: SkiaSharp.Views.Android => 0xad9910a4 => 20
	i32 2916838712, ; 142: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 93
	i32 2919462931, ; 143: System.Numerics.Vectors.dll => 0xae037813 => 33
	i32 2921128767, ; 144: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 42
	i32 2943219317, ; 145: Square.OkIO => 0xaf6df675 => 27
	i32 2974793899, ; 146: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 21
	i32 2978675010, ; 147: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 59
	i32 3024354802, ; 148: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 64
	i32 3044182254, ; 149: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 150: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 77
	i32 3111772706, ; 151: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 152: System.Data.dll => 0xbefef58f => 104
	i32 3211777861, ; 153: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 58
	i32 3247949154, ; 154: Mono.Security => 0xc197c562 => 111
	i32 3258312781, ; 155: Xamarin.AndroidX.CardView => 0xc235e84d => 49
	i32 3263631797, ; 156: Lottie.Forms => 0xc28711b5 => 9
	i32 3267021929, ; 157: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 47
	i32 3286872994, ; 158: SQLite-net.dll => 0xc3e9b3a2 => 22
	i32 3317135071, ; 159: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 57
	i32 3317144872, ; 160: System.Data => 0xc5b79d28 => 104
	i32 3340387945, ; 161: SkiaSharp => 0xc71a4669 => 19
	i32 3340431453, ; 162: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 46
	i32 3346324047, ; 163: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 78
	i32 3353484488, ; 164: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 63
	i32 3353544232, ; 165: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 94
	i32 3360279109, ; 166: SQLitePCLRaw.core => 0xc849ca45 => 24
	i32 3362522851, ; 167: Xamarin.AndroidX.Core => 0xc86c06e3 => 55
	i32 3366347497, ; 168: Java.Interop => 0xc8a662e9 => 7
	i32 3369739654, ; 169: Xamarin.AndroidX.Palette => 0xc8da2586 => 80
	i32 3374999561, ; 170: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 83
	i32 3395150330, ; 171: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 34
	i32 3404865022, ; 172: System.ServiceModel.Internals => 0xcaf21dfe => 102
	i32 3407215217, ; 173: Xamarin.CommunityToolkit => 0xcb15fa71 => 94
	i32 3429136800, ; 174: System.Xml => 0xcc6479a0 => 36
	i32 3430777524, ; 175: netstandard => 0xcc7d82b4 => 103
	i32 3431104122, ; 176: Plugin.Segmented.Control.Droid => 0xcc827e7a => 16
	i32 3441283291, ; 177: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 60
	i32 3442543374, ; 178: AndHUD => 0xcd310b0e => 5
	i32 3476120550, ; 179: Mono.Android => 0xcf3163e6 => 11
	i32 3481508766, ; 180: Plugin.Segmented => 0xcf839b9e => 17
	i32 3486566296, ; 181: System.Transactions => 0xcfd0c798 => 105
	i32 3493954962, ; 182: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 51
	i32 3501239056, ; 183: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 47
	i32 3509114376, ; 184: System.Xml.Linq => 0xd128d608 => 37
	i32 3536029504, ; 185: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 97
	i32 3567349600, ; 186: System.ComponentModel.Composition.dll => 0xd4a16f60 => 109
	i32 3618140916, ; 187: Xamarin.AndroidX.Preference => 0xd7a872f4 => 81
	i32 3627220390, ; 188: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 82
	i32 3629053394, ; 189: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 75
	i32 3632359727, ; 190: Xamarin.Forms.Platform => 0xd881692f => 98
	i32 3633644679, ; 191: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 42
	i32 3639449509, ; 192: Lottie.Android => 0xd8ed97a5 => 8
	i32 3641597786, ; 193: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3672681054, ; 194: Mono.Android.dll => 0xdae8aa5e => 11
	i32 3676310014, ; 195: System.Web.Services.dll => 0xdb2009fe => 110
	i32 3682565725, ; 196: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 48
	i32 3684561358, ; 197: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 51
	i32 3689375977, ; 198: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 199: Xamarin.AndroidX.Annotation => 0xdda814c6 => 41
	i32 3724971120, ; 200: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 77
	i32 3754567612, ; 201: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 26
	i32 3758932259, ; 202: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 65
	i32 3776811843, ; 203: Plugin.InputKit.dll => 0xe11d9343 => 15
	i32 3786282454, ; 204: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 50
	i32 3809379196, ; 205: MagicGradients.dll => 0xe30e837c => 10
	i32 3822602673, ; 206: Xamarin.AndroidX.Media => 0xe3d849b1 => 74
	i32 3829621856, ; 207: System.Numerics.dll => 0xe4436460 => 32
	i32 3876362041, ; 208: SQLite-net => 0xe70c9739 => 22
	i32 3885922214, ; 209: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 88
	i32 3896760992, ; 210: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 55
	i32 3920810846, ; 211: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 108
	i32 3921031405, ; 212: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 91
	i32 3931092270, ; 213: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 79
	i32 3945713374, ; 214: System.Data.DataSetExtensions.dll => 0xeb2ecede => 106
	i32 3955647286, ; 215: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 44
	i32 4025784931, ; 216: System.Memory => 0xeff49a63 => 31
	i32 4065171189, ; 217: Plugin.Segmented.Control.Droid.dll => 0xf24d96f5 => 16
	i32 4105002889, ; 218: Mono.Security.dll => 0xf4ad5f89 => 111
	i32 4151237749, ; 219: System.Core => 0xf76edc75 => 29
	i32 4162092062, ; 220: Xalendar => 0xf8147c1e => 39
	i32 4182413190, ; 221: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 71
	i32 4260525087, ; 222: System.Buffers => 0xfdf2741f => 28
	i32 4292120959 ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 71
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 69, i32 101, i32 13, i32 96, i32 0, i32 4, i32 85, i32 85, ; 0..7
	i32 9, i32 50, i32 86, i32 48, i32 64, i32 75, i32 110, i32 53, ; 8..15
	i32 68, i32 62, i32 40, i32 32, i32 66, i32 25, i32 31, i32 52, ; 16..23
	i32 95, i32 61, i32 12, i32 30, i32 62, i32 17, i32 73, i32 19, ; 24..31
	i32 105, i32 39, i32 108, i32 57, i32 91, i32 45, i32 37, i32 4, ; 32..39
	i32 23, i32 107, i32 15, i32 1, i32 82, i32 18, i32 101, i32 13, ; 40..47
	i32 14, i32 27, i32 66, i32 6, i32 84, i32 44, i32 98, i32 38, ; 48..55
	i32 70, i32 30, i32 89, i32 78, i32 45, i32 90, i32 24, i32 59, ; 56..63
	i32 102, i32 84, i32 74, i32 54, i32 34, i32 99, i32 107, i32 43, ; 64..71
	i32 58, i32 3, i32 72, i32 93, i32 56, i32 2, i32 35, i32 87, ; 72..79
	i32 100, i32 53, i32 25, i32 21, i32 49, i32 86, i32 29, i32 61, ; 80..87
	i32 72, i32 100, i32 79, i32 95, i32 99, i32 46, i32 76, i32 28, ; 88..95
	i32 70, i32 67, i32 35, i32 33, i32 63, i32 26, i32 97, i32 38, ; 96..103
	i32 2, i32 0, i32 89, i32 73, i32 76, i32 65, i32 83, i32 41, ; 104..111
	i32 81, i32 23, i32 52, i32 103, i32 7, i32 106, i32 69, i32 5, ; 112..119
	i32 90, i32 56, i32 60, i32 68, i32 87, i32 40, i32 43, i32 96, ; 120..127
	i32 80, i32 92, i32 20, i32 14, i32 10, i32 54, i32 36, i32 8, ; 128..135
	i32 92, i32 88, i32 18, i32 109, i32 12, i32 20, i32 93, i32 33, ; 136..143
	i32 42, i32 27, i32 21, i32 59, i32 64, i32 6, i32 77, i32 3, ; 144..151
	i32 104, i32 58, i32 111, i32 49, i32 9, i32 47, i32 22, i32 57, ; 152..159
	i32 104, i32 19, i32 46, i32 78, i32 63, i32 94, i32 24, i32 55, ; 160..167
	i32 7, i32 80, i32 83, i32 34, i32 102, i32 94, i32 36, i32 103, ; 168..175
	i32 16, i32 60, i32 5, i32 11, i32 17, i32 105, i32 51, i32 47, ; 176..183
	i32 37, i32 97, i32 109, i32 81, i32 82, i32 75, i32 98, i32 42, ; 184..191
	i32 8, i32 67, i32 11, i32 110, i32 48, i32 51, i32 1, i32 41, ; 192..199
	i32 77, i32 26, i32 65, i32 15, i32 50, i32 10, i32 74, i32 32, ; 200..207
	i32 22, i32 88, i32 55, i32 108, i32 91, i32 79, i32 106, i32 44, ; 208..215
	i32 31, i32 16, i32 111, i32 29, i32 39, i32 71, i32 28, i32 71 ; 224..223
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
