; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [212 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 63
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 95
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 90
	i32 77620104, ; 3: TUTORES.Android => 0x4a06388 => 0
	i32 88799905, ; 4: Acr.UserDialogs => 0x54afaa1 => 4
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 79
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 79
	i32 148395041, ; 7: Lottie.Forms.dll => 0x8d85421 => 9
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 44
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 42
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 58
	i32 232587938, ; 12: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 69
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 104
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 47
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 62
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 56
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 34
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 26
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 25
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 46
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 89
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 55
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 12
	i32 469710990, ; 25: System.dll => 0x1bff388e => 24
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 56
	i32 484905788, ; 27: Plugin.Segmented.dll => 0x1ce7133c => 16
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 67
	i32 525008092, ; 29: SkiaSharp.dll => 0x1f4afcdc => 18
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 99
	i32 577617440, ; 31: Xalendar.dll => 0x226dbe20 => 33
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 102
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 51
	i32 663517072, ; 34: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 85
	i32 666292255, ; 35: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 39
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 31
	i32 691439157, ; 37: Acr.UserDialogs.dll => 0x29368635 => 4
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 101
	i32 791272004, ; 39: Plugin.InputKit => 0x2f29da44 => 14
	i32 809851609, ; 40: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 41: Xamarin.AndroidX.Print => 0x3246f6cd => 76
	i32 902159924, ; 42: Rg.Plugins.Popup => 0x35c5de34 => 17
	i32 928116545, ; 43: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 95
	i32 957807352, ; 44: Plugin.CurrentActivity => 0x3916faf8 => 13
	i32 961995525, ; 45: Square.OkIO.dll => 0x3956e305 => 21
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 974778368, ; 47: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1035644815, ; 49: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 38
	i32 1042160112, ; 50: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 92
	i32 1048661744, ; 51: TUTORES.dll => 0x3e814ef0 => 32
	i32 1052210849, ; 52: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 64
	i32 1098259244, ; 53: System => 0x41761b2c => 24
	i32 1175144683, ; 54: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 83
	i32 1178241025, ; 55: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 39
	i32 1267360935, ; 57: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 84
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 53
	i32 1365406463, ; 59: System.ServiceModel.Internals.dll => 0x516272ff => 96
	i32 1376866003, ; 60: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1395857551, ; 61: Xamarin.AndroidX.Media.dll => 0x5333188f => 68
	i32 1406073936, ; 62: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 48
	i32 1411638395, ; 63: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 28
	i32 1460219004, ; 64: Xamarin.Forms.Xaml => 0x57092c7c => 93
	i32 1462112819, ; 65: System.IO.Compression.dll => 0x57261233 => 101
	i32 1469204771, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 37
	i32 1582372066, ; 67: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 52
	i32 1592978981, ; 68: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 69: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 66
	i32 1624863272, ; 70: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 87
	i32 1636350590, ; 71: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 50
	i32 1639515021, ; 72: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 73: System.Runtime => 0x62c6282e => 29
	i32 1658241508, ; 74: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 81
	i32 1658251792, ; 75: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 94
	i32 1670060433, ; 76: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 47
	i32 1722051300, ; 77: SkiaSharp.Views.Forms => 0x66a46ae4 => 20
	i32 1729485958, ; 78: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 43
	i32 1766324549, ; 79: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1776026572, ; 80: System.Core.dll => 0x69dc03cc => 23
	i32 1788241197, ; 81: Xamarin.AndroidX.Fragment => 0x6a96652d => 55
	i32 1808609942, ; 82: Xamarin.AndroidX.Loader => 0x6bcd3296 => 66
	i32 1813201214, ; 83: Xamarin.Google.Android.Material => 0x6c13413e => 94
	i32 1818569960, ; 84: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1867746548, ; 85: Xamarin.Essentials.dll => 0x6f538cf4 => 89
	i32 1878053835, ; 86: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 93
	i32 1885316902, ; 87: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 40
	i32 1919157823, ; 88: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 70
	i32 2011961780, ; 89: System.Buffers.dll => 0x77ec19b4 => 22
	i32 2019465201, ; 90: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 64
	i32 2055257422, ; 91: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2079903147, ; 92: System.Runtime.dll => 0x7bf8cdab => 29
	i32 2090596640, ; 93: System.Numerics.Vectors => 0x7c9bf920 => 27
	i32 2097448633, ; 94: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 57
	i32 2126786730, ; 95: Xamarin.Forms.Platform.Android => 0x7ec430aa => 91
	i32 2171773547, ; 96: TUTORES => 0x8172a26b => 32
	i32 2201231467, ; 97: System.Net.Http => 0x8334206b => 2
	i32 2206207305, ; 98: TUTORES.Android.dll => 0x83800d49 => 0
	i32 2217644978, ; 99: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 83
	i32 2244775296, ; 100: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 67
	i32 2256548716, ; 101: Xamarin.AndroidX.MultiDex => 0x8680336c => 70
	i32 2261435625, ; 102: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 59
	i32 2279755925, ; 103: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 77
	i32 2315684594, ; 104: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 35
	i32 2409053734, ; 105: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 75
	i32 2465532216, ; 106: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 46
	i32 2471841756, ; 107: netstandard.dll => 0x93554fdc => 97
	i32 2475788418, ; 108: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 109: System.Data.DataSetExtensions => 0x95178668 => 100
	i32 2505896520, ; 110: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 63
	i32 2563143864, ; 111: AndHUD.dll => 0x98c678b8 => 5
	i32 2581819634, ; 112: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 84
	i32 2620871830, ; 113: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 50
	i32 2624644809, ; 114: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 54
	i32 2633051222, ; 115: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 62
	i32 2701096212, ; 116: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 81
	i32 2732626843, ; 117: Xamarin.AndroidX.Activity => 0xa2e0939b => 34
	i32 2737747696, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 37
	i32 2766581644, ; 119: Xamarin.Forms.Core => 0xa4e6af8c => 90
	i32 2772484381, ; 120: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 74
	i32 2778768386, ; 121: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 86
	i32 2795602088, ; 122: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 19
	i32 2806986428, ; 123: Plugin.CurrentActivity.dll => 0xa74f36bc => 13
	i32 2809481863, ; 124: MagicGradients => 0xa7754a87 => 10
	i32 2810250172, ; 125: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 48
	i32 2819470561, ; 126: System.Xml.dll => 0xa80db4e1 => 30
	i32 2843355708, ; 127: Lottie.Android.dll => 0xa97a2a3c => 8
	i32 2853208004, ; 128: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 86
	i32 2855708567, ; 129: Xamarin.AndroidX.Transition => 0xaa36a797 => 82
	i32 2861816565, ; 130: Rg.Plugins.Popup.dll => 0xaa93daf5 => 17
	i32 2903344695, ; 131: System.ComponentModel.Composition => 0xad0d8637 => 103
	i32 2905242038, ; 132: mscorlib.dll => 0xad2a79b6 => 12
	i32 2912489636, ; 133: SkiaSharp.Views.Android => 0xad9910a4 => 19
	i32 2916838712, ; 134: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 87
	i32 2919462931, ; 135: System.Numerics.Vectors.dll => 0xae037813 => 27
	i32 2921128767, ; 136: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 36
	i32 2943219317, ; 137: Square.OkIO => 0xaf6df675 => 21
	i32 2974793899, ; 138: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 20
	i32 2978675010, ; 139: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 53
	i32 3024354802, ; 140: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 58
	i32 3044182254, ; 141: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 142: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3111772706, ; 143: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 144: System.Data.dll => 0xbefef58f => 98
	i32 3211777861, ; 145: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 52
	i32 3247949154, ; 146: Mono.Security => 0xc197c562 => 105
	i32 3258312781, ; 147: Xamarin.AndroidX.CardView => 0xc235e84d => 43
	i32 3263631797, ; 148: Lottie.Forms => 0xc28711b5 => 9
	i32 3267021929, ; 149: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 41
	i32 3317135071, ; 150: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 51
	i32 3317144872, ; 151: System.Data => 0xc5b79d28 => 98
	i32 3340387945, ; 152: SkiaSharp => 0xc71a4669 => 18
	i32 3340431453, ; 153: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 40
	i32 3346324047, ; 154: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3353484488, ; 155: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 57
	i32 3353544232, ; 156: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 88
	i32 3362522851, ; 157: Xamarin.AndroidX.Core => 0xc86c06e3 => 49
	i32 3366347497, ; 158: Java.Interop => 0xc8a662e9 => 7
	i32 3369739654, ; 159: Xamarin.AndroidX.Palette => 0xc8da2586 => 74
	i32 3374999561, ; 160: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 77
	i32 3395150330, ; 161: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 28
	i32 3404865022, ; 162: System.ServiceModel.Internals => 0xcaf21dfe => 96
	i32 3407215217, ; 163: Xamarin.CommunityToolkit => 0xcb15fa71 => 88
	i32 3429136800, ; 164: System.Xml => 0xcc6479a0 => 30
	i32 3430777524, ; 165: netstandard => 0xcc7d82b4 => 97
	i32 3431104122, ; 166: Plugin.Segmented.Control.Droid => 0xcc827e7a => 15
	i32 3441283291, ; 167: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 54
	i32 3442543374, ; 168: AndHUD => 0xcd310b0e => 5
	i32 3476120550, ; 169: Mono.Android => 0xcf3163e6 => 11
	i32 3481508766, ; 170: Plugin.Segmented => 0xcf839b9e => 16
	i32 3486566296, ; 171: System.Transactions => 0xcfd0c798 => 99
	i32 3493954962, ; 172: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 45
	i32 3501239056, ; 173: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 41
	i32 3509114376, ; 174: System.Xml.Linq => 0xd128d608 => 31
	i32 3536029504, ; 175: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 91
	i32 3567349600, ; 176: System.ComponentModel.Composition.dll => 0xd4a16f60 => 103
	i32 3618140916, ; 177: Xamarin.AndroidX.Preference => 0xd7a872f4 => 75
	i32 3627220390, ; 178: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 76
	i32 3629053394, ; 179: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 69
	i32 3632359727, ; 180: Xamarin.Forms.Platform => 0xd881692f => 92
	i32 3633644679, ; 181: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 36
	i32 3639449509, ; 182: Lottie.Android => 0xd8ed97a5 => 8
	i32 3641597786, ; 183: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3672681054, ; 184: Mono.Android.dll => 0xdae8aa5e => 11
	i32 3676310014, ; 185: System.Web.Services.dll => 0xdb2009fe => 104
	i32 3682565725, ; 186: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 42
	i32 3684561358, ; 187: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 45
	i32 3689375977, ; 188: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 189: Xamarin.AndroidX.Annotation => 0xdda814c6 => 35
	i32 3724971120, ; 190: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3758932259, ; 191: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 59
	i32 3776811843, ; 192: Plugin.InputKit.dll => 0xe11d9343 => 14
	i32 3786282454, ; 193: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 44
	i32 3809379196, ; 194: MagicGradients.dll => 0xe30e837c => 10
	i32 3822602673, ; 195: Xamarin.AndroidX.Media => 0xe3d849b1 => 68
	i32 3829621856, ; 196: System.Numerics.dll => 0xe4436460 => 26
	i32 3885922214, ; 197: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 82
	i32 3896760992, ; 198: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 49
	i32 3920810846, ; 199: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 102
	i32 3921031405, ; 200: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 85
	i32 3931092270, ; 201: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3945713374, ; 202: System.Data.DataSetExtensions.dll => 0xeb2ecede => 100
	i32 3955647286, ; 203: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 38
	i32 4025784931, ; 204: System.Memory => 0xeff49a63 => 25
	i32 4065171189, ; 205: Plugin.Segmented.Control.Droid.dll => 0xf24d96f5 => 15
	i32 4105002889, ; 206: Mono.Security.dll => 0xf4ad5f89 => 105
	i32 4151237749, ; 207: System.Core => 0xf76edc75 => 23
	i32 4162092062, ; 208: Xalendar => 0xf8147c1e => 33
	i32 4182413190, ; 209: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 65
	i32 4260525087, ; 210: System.Buffers => 0xfdf2741f => 22
	i32 4292120959 ; 211: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 65
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [212 x i32] [
	i32 63, i32 95, i32 90, i32 0, i32 4, i32 79, i32 79, i32 9, ; 0..7
	i32 44, i32 80, i32 42, i32 58, i32 69, i32 104, i32 47, i32 62, ; 8..15
	i32 56, i32 34, i32 26, i32 60, i32 25, i32 46, i32 89, i32 55, ; 16..23
	i32 12, i32 24, i32 56, i32 16, i32 67, i32 18, i32 99, i32 33, ; 24..31
	i32 102, i32 51, i32 85, i32 39, i32 31, i32 4, i32 101, i32 14, ; 32..39
	i32 1, i32 76, i32 17, i32 95, i32 13, i32 21, i32 60, i32 6, ; 40..47
	i32 78, i32 38, i32 92, i32 32, i32 64, i32 24, i32 83, i32 72, ; 48..55
	i32 39, i32 84, i32 53, i32 96, i32 78, i32 68, i32 48, i32 28, ; 56..63
	i32 93, i32 101, i32 37, i32 52, i32 3, i32 66, i32 87, i32 50, ; 64..71
	i32 2, i32 29, i32 81, i32 94, i32 47, i32 20, i32 43, i32 80, ; 72..79
	i32 23, i32 55, i32 66, i32 94, i32 73, i32 89, i32 93, i32 40, ; 80..87
	i32 70, i32 22, i32 64, i32 61, i32 29, i32 27, i32 57, i32 91, ; 88..95
	i32 32, i32 2, i32 0, i32 83, i32 67, i32 70, i32 59, i32 77, ; 96..103
	i32 35, i32 75, i32 46, i32 97, i32 7, i32 100, i32 63, i32 5, ; 104..111
	i32 84, i32 50, i32 54, i32 62, i32 81, i32 34, i32 37, i32 90, ; 112..119
	i32 74, i32 86, i32 19, i32 13, i32 10, i32 48, i32 30, i32 8, ; 120..127
	i32 86, i32 82, i32 17, i32 103, i32 12, i32 19, i32 87, i32 27, ; 128..135
	i32 36, i32 21, i32 20, i32 53, i32 58, i32 6, i32 71, i32 3, ; 136..143
	i32 98, i32 52, i32 105, i32 43, i32 9, i32 41, i32 51, i32 98, ; 144..151
	i32 18, i32 40, i32 72, i32 57, i32 88, i32 49, i32 7, i32 74, ; 152..159
	i32 77, i32 28, i32 96, i32 88, i32 30, i32 97, i32 15, i32 54, ; 160..167
	i32 5, i32 11, i32 16, i32 99, i32 45, i32 41, i32 31, i32 91, ; 168..175
	i32 103, i32 75, i32 76, i32 69, i32 92, i32 36, i32 8, i32 61, ; 176..183
	i32 11, i32 104, i32 42, i32 45, i32 1, i32 35, i32 71, i32 59, ; 184..191
	i32 14, i32 44, i32 10, i32 68, i32 26, i32 82, i32 49, i32 102, ; 192..199
	i32 85, i32 73, i32 100, i32 38, i32 25, i32 15, i32 105, i32 23, ; 200..207
	i32 33, i32 65, i32 22, i32 65 ; 208..211
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
