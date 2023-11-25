; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [212 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 54
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 11
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 44
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 78
	i64 263803244706540312, ; 4: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 17
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 79
	i64 403694196094993479, ; 6: Xamarin.AndroidX.MediaRouter => 0x59a35bb84210447 => 69
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 63
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 57
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 53
	i64 878495121504023187, ; 11: MagicGradients => 0xc310aa896293293 => 10
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 99
	i64 996343623809489702, ; 13: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 92
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 105
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 94
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 39
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 18: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 37
	i64 1628611045998245443, ; 19: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 65
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 58
	i64 1743969030606105336, ; 21: System.Memory.dll => 0x1833d297e88f2af8 => 25
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 38
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 78
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 35
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 64
	i64 1986553961460820075, ; 26: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 88
	i64 2136356949452311481, ; 27: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 70
	i64 2165725771938924357, ; 28: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 42
	i64 2262844636196693701, ; 29: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 53
	i64 2284400282711631002, ; 30: System.Web.Services => 0x1fb3d1f42fd4249a => 104
	i64 2329709569556905518, ; 31: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 61
	i64 2337758774805907496, ; 32: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 28
	i64 2470498323731680442, ; 33: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 48
	i64 2479423007379663237, ; 34: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 83
	i64 2489738558632930771, ; 35: Acr.UserDialogs.dll => 0x228d540722e8add3 => 4
	i64 2497223385847772520, ; 36: System.Runtime => 0x22a7eb7046413568 => 29
	i64 2541787113603107559, ; 37: Lottie.Android.dll => 0x23463de9b0fa8ae7 => 8
	i64 2547086958574651984, ; 38: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 34
	i64 2592350477072141967, ; 39: System.Xml.dll => 0x23f9e10627330e8f => 30
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 12
	i64 2694427813909235223, ; 41: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 75
	i64 2739527324738613459, ; 42: TUTORES.Android => 0x2604c196538570d3 => 0
	i64 2783046991838674048, ; 43: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 28
	i64 2801558180824670388, ; 44: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 13
	i64 2960931600190307745, ; 45: Xamarin.Forms.Core => 0x2917579a49927da1 => 90
	i64 3017704767998173186, ; 46: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 94
	i64 3171992396844006720, ; 47: Square.OkIO => 0x2c052e476c207d40 => 21
	i64 3260998928894807349, ; 48: Lottie.Forms.dll => 0x2d41653f91b44d35 => 9
	i64 3289520064315143713, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 60
	i64 3303437397778967116, ; 50: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 36
	i64 3311221304742556517, ; 51: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 27
	i64 3493805808809882663, ; 52: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 81
	i64 3522470458906976663, ; 53: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 80
	i64 3531994851595924923, ; 54: System.Numerics => 0x31042a9aade235bb => 26
	i64 3571415421602489686, ; 55: System.Runtime.dll => 0x319037675df7e556 => 29
	i64 3609787854626478660, ; 56: Plugin.CurrentActivity => 0x32188aeda587da44 => 13
	i64 3716579019761409177, ; 57: netstandard.dll => 0x3393f0ed5c8c5c99 => 97
	i64 3727469159507183293, ; 58: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 77
	i64 3772598417116884899, ; 59: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 54
	i64 3966267475168208030, ; 60: System.Memory => 0x370b03412596249e => 25
	i64 4525561845656915374, ; 61: System.ServiceModel.Internals => 0x3ece06856b710dae => 96
	i64 4636684751163556186, ; 62: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 85
	i64 4744603984973074322, ; 63: Plugin.Segmented.Control.Droid => 0x41d8382fb4390f92 => 15
	i64 4782108999019072045, ; 64: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 41
	i64 4794310189461587505, ; 65: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 34
	i64 4795410492532947900, ; 66: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 80
	i64 5142919913060024034, ; 67: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 91
	i64 5203618020066742981, ; 68: Xamarin.Essentials => 0x4836f704f0e652c5 => 89
	i64 5205316157927637098, ; 69: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 67
	i64 5348796042099802469, ; 70: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 68
	i64 5376510917114486089, ; 71: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 83
	i64 5408338804355907810, ; 72: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 82
	i64 5451019430259338467, ; 73: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 47
	i64 5507995362134886206, ; 74: System.Core.dll => 0x4c705499688c873e => 23
	i64 5563049671862343767, ; 75: Xamarin.AndroidX.Palette.dll => 0x4d33ec33c7355857 => 74
	i64 5692067934154308417, ; 76: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 87
	i64 5757522595884336624, ; 77: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 45
	i64 5814345312393086621, ; 78: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 75
	i64 5896680224035167651, ; 79: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 62
	i64 6085203216496545422, ; 80: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 92
	i64 6086316965293125504, ; 81: FormsViewGroup.dll => 0x5476f10882baef80 => 6
	i64 6177618607706310916, ; 82: Xalendar => 0x55bb4f64ae2d8904 => 33
	i64 6319713645133255417, ; 83: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 63
	i64 6401687960814735282, ; 84: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 61
	i64 6504860066809920875, ; 85: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 42
	i64 6548213210057960872, ; 86: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 51
	i64 6591024623626361694, ; 87: System.Web.Services.dll => 0x5b7805f9751a1b5e => 104
	i64 6659513131007730089, ; 88: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 57
	i64 6671798237668743565, ; 89: SkiaSharp => 0x5c96fd260152998d => 18
	i64 6876862101832370452, ; 90: System.Xml.Linq => 0x5f6f85a57d108914 => 31
	i64 6894844156784520562, ; 91: System.Numerics.Vectors => 0x5faf683aead1ad72 => 27
	i64 7036436454368433159, ; 92: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 59
	i64 7103753931438454322, ; 93: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 56
	i64 7488575175965059935, ; 94: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 31
	i64 7635363394907363464, ; 95: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 90
	i64 7637365915383206639, ; 96: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 89
	i64 7654504624184590948, ; 97: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7723828941317063624, ; 98: Xalendar.dll => 0x6b308d7fe115c3c8 => 33
	i64 7820441508502274321, ; 99: System.Data => 0x6c87ca1e14ff8111 => 98
	i64 7836164640616011524, ; 100: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 37
	i64 7875371864198757046, ; 101: AndHUD.dll => 0x6d4af0fc27ac3ab6 => 5
	i64 7927939710195668715, ; 102: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 19
	i64 8044118961405839122, ; 103: System.ComponentModel.Composition => 0x6fa2739369944712 => 103
	i64 8083354569033831015, ; 104: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 60
	i64 8103644804370223335, ; 105: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 100
	i64 8132393369586336849, ; 106: Plugin.InputKit => 0x70dc10aeafef8451 => 14
	i64 8167236081217502503, ; 107: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8187102936927221770, ; 108: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 20
	i64 8336755020847603645, ; 109: Plugin.Segmented => 0x73b21a857d135fbd => 16
	i64 8398329775253868912, ; 110: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 46
	i64 8400357532724379117, ; 111: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 73
	i64 8528058088365178926, ; 112: TUTORES.Android.dll => 0x7659bfa5d4e7402e => 0
	i64 8601935802264776013, ; 113: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 82
	i64 8609060182490045521, ; 114: Square.OkIO.dll => 0x7779869f8b475c51 => 21
	i64 8626175481042262068, ; 115: Java.Interop => 0x77b654e585b55834 => 7
	i64 8639588376636138208, ; 116: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 72
	i64 8684531736582871431, ; 117: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 102
	i64 8974768617058262486, ; 118: Xamarin.AndroidX.MediaRouter.dll => 0x7c8cc881c114ddd6 => 69
	i64 9312692141327339315, ; 119: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 87
	i64 9324707631942237306, ; 120: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 38
	i64 9662334977499516867, ; 121: System.Numerics.dll => 0x8617827802b0cfc3 => 26
	i64 9678050649315576968, ; 122: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 48
	i64 9711637524876806384, ; 123: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 68
	i64 9780723996889434231, ; 124: AndHUD => 0x87bc1ca798bbc877 => 5
	i64 9808709177481450983, ; 125: Mono.Android.dll => 0x881f890734e555e7 => 11
	i64 9825649861376906464, ; 126: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 45
	i64 9834056768316610435, ; 127: System.Transactions.dll => 0x8879968718899783 => 99
	i64 9998632235833408227, ; 128: Mono.Security => 0x8ac2470b209ebae3 => 105
	i64 10038780035334861115, ; 129: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 130: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 51
	i64 10376576884623852283, ; 131: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 81
	i64 10430153318873392755, ; 132: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 49
	i64 10847732767863316357, ; 133: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 39
	i64 10924419771514504336, ; 134: TUTORES.dll => 0x979b55e6f2604490 => 32
	i64 10984620054693331049, ; 135: Plugin.InputKit.dll => 0x987135bda0a0c069 => 14
	i64 11023048688141570732, ; 136: System.Core => 0x98f9bc61168392ac => 23
	i64 11037814507248023548, ; 137: System.Xml => 0x992e31d0412bf7fc => 30
	i64 11122995063473561350, ; 138: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 88
	i64 11162124722117608902, ; 139: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 86
	i64 11340910727871153756, ; 140: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 50
	i64 11392833485892708388, ; 141: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 76
	i64 11529969570048099689, ; 142: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 86
	i64 11578238080964724296, ; 143: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 59
	i64 11580057168383206117, ; 144: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 35
	i64 11597940890313164233, ; 145: netstandard => 0xa0f429ca8d1805c9 => 97
	i64 11672361001936329215, ; 146: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 56
	i64 11724931932191659106, ; 147: Xamarin.AndroidX.Palette => 0xa2b7537891eb1462 => 74
	i64 11751916185905502301, ; 148: Plugin.Segmented.Control.Droid.dll => 0xa3173181bb0f985d => 15
	i64 12102847907131387746, ; 149: System.Buffers => 0xa7f5f40c43256f62 => 22
	i64 12137774235383566651, ; 150: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 84
	i64 12451044538927396471, ; 151: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 55
	i64 12466513435562512481, ; 152: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 66
	i64 12487638416075308985, ; 153: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 52
	i64 12488608402635344228, ; 154: Lottie.Android => 0xad50732cba09c964 => 8
	i64 12538491095302438457, ; 155: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 43
	i64 12550732019250633519, ; 156: System.IO.Compression => 0xae2d28465e8e1b2f => 101
	i64 12700543734426720211, ; 157: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 44
	i64 12963446364377008305, ; 158: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13159945258233006461, ; 159: TUTORES => 0xb6a1847cec90897d => 32
	i64 13370592475155966277, ; 160: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 161: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 84
	i64 13404347523447273790, ; 162: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 46
	i64 13454009404024712428, ; 163: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 95
	i64 13491513212026656886, ; 164: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 40
	i64 13492263892638604996, ; 165: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 20
	i64 13572454107664307259, ; 166: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 77
	i64 13647894001087880694, ; 167: System.Data.dll => 0xbd670f48cb071df6 => 98
	i64 13959074834287824816, ; 168: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 55
	i64 13967638549803255703, ; 169: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 91
	i64 14070493885199953730, ; 170: MagicGradients.dll => 0xc3446fa3d1a62f42 => 10
	i64 14124974489674258913, ; 171: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 43
	i64 14161076099266624234, ; 172: Acr.UserDialogs => 0xc4863faf060fbaea => 4
	i64 14172845254133543601, ; 173: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 70
	i64 14261073672896646636, ; 174: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 76
	i64 14486659737292545672, ; 175: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 62
	i64 14644440854989303794, ; 176: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 67
	i64 14792063746108907174, ; 177: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 95
	i64 14852515768018889994, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 50
	i64 14987728460634540364, ; 179: System.IO.Compression.dll => 0xcfff1ba06622494c => 101
	i64 14988210264188246988, ; 180: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 52
	i64 15370334346939861994, ; 181: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 49
	i64 15582737692548360875, ; 182: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 65
	i64 15609085926864131306, ; 183: System.dll => 0xd89e9cf3334914ea => 24
	i64 15777549416145007739, ; 184: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 79
	i64 15810740023422282496, ; 185: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 93
	i64 16154507427712707110, ; 186: System => 0xe03056ea4e39aa26 => 24
	i64 16324796876805858114, ; 187: SkiaSharp.dll => 0xe28d5444586b6342 => 18
	i64 16565028646146589191, ; 188: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 103
	i64 16621146507174665210, ; 189: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 47
	i64 16677317093839702854, ; 190: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 73
	i64 16822611501064131242, ; 191: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 100
	i64 16833383113903931215, ; 192: mscorlib => 0xe99c30c1484d7f4f => 12
	i64 17024911836938395553, ; 193: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 36
	i64 17031351772568316411, ; 194: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 71
	i64 17037200463775726619, ; 195: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 58
	i64 17124705692820578889, ; 196: Lottie.Forms => 0xeda72d18d7ae2249 => 9
	i64 17285063141349522879, ; 197: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 17
	i64 17544493274320527064, ; 198: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 41
	i64 17671790519499593115, ; 199: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 19
	i64 17704177640604968747, ; 200: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 66
	i64 17710060891934109755, ; 201: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 64
	i64 17765815186956600054, ; 202: Plugin.Segmented.dll => 0xf68cdac903c9c2f6 => 16
	i64 17838668724098252521, ; 203: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 22
	i64 17882897186074144999, ; 204: FormsViewGroup => 0xf82cd03e3ac830e7 => 6
	i64 17892495832318972303, ; 205: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 93
	i64 17928294245072900555, ; 206: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 102
	i64 18116111925905154859, ; 207: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 40
	i64 18121036031235206392, ; 208: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 71
	i64 18129453464017766560, ; 209: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 96
	i64 18305135509493619199, ; 210: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 72
	i64 18380184030268848184 ; 211: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 85
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [212 x i32] [
	i32 54, i32 11, i32 44, i32 78, i32 17, i32 79, i32 69, i32 63, ; 0..7
	i32 1, i32 57, i32 53, i32 10, i32 99, i32 92, i32 105, i32 94, ; 8..15
	i32 39, i32 3, i32 37, i32 65, i32 58, i32 25, i32 38, i32 78, ; 16..23
	i32 35, i32 64, i32 88, i32 70, i32 42, i32 53, i32 104, i32 61, ; 24..31
	i32 28, i32 48, i32 83, i32 4, i32 29, i32 8, i32 34, i32 30, ; 32..39
	i32 12, i32 75, i32 0, i32 28, i32 13, i32 90, i32 94, i32 21, ; 40..47
	i32 9, i32 60, i32 36, i32 27, i32 81, i32 80, i32 26, i32 29, ; 48..55
	i32 13, i32 97, i32 77, i32 54, i32 25, i32 96, i32 85, i32 15, ; 56..63
	i32 41, i32 34, i32 80, i32 91, i32 89, i32 67, i32 68, i32 83, ; 64..71
	i32 82, i32 47, i32 23, i32 74, i32 87, i32 45, i32 75, i32 62, ; 72..79
	i32 92, i32 6, i32 33, i32 63, i32 61, i32 42, i32 51, i32 104, ; 80..87
	i32 57, i32 18, i32 31, i32 27, i32 59, i32 56, i32 31, i32 90, ; 88..95
	i32 89, i32 2, i32 33, i32 98, i32 37, i32 5, i32 19, i32 103, ; 96..103
	i32 60, i32 100, i32 14, i32 7, i32 20, i32 16, i32 46, i32 73, ; 104..111
	i32 0, i32 82, i32 21, i32 7, i32 72, i32 102, i32 69, i32 87, ; 112..119
	i32 38, i32 26, i32 48, i32 68, i32 5, i32 11, i32 45, i32 99, ; 120..127
	i32 105, i32 2, i32 51, i32 81, i32 49, i32 39, i32 32, i32 14, ; 128..135
	i32 23, i32 30, i32 88, i32 86, i32 50, i32 76, i32 86, i32 59, ; 136..143
	i32 35, i32 97, i32 56, i32 74, i32 15, i32 22, i32 84, i32 55, ; 144..151
	i32 66, i32 52, i32 8, i32 43, i32 101, i32 44, i32 1, i32 32, ; 152..159
	i32 3, i32 84, i32 46, i32 95, i32 40, i32 20, i32 77, i32 98, ; 160..167
	i32 55, i32 91, i32 10, i32 43, i32 4, i32 70, i32 76, i32 62, ; 168..175
	i32 67, i32 95, i32 50, i32 101, i32 52, i32 49, i32 65, i32 24, ; 176..183
	i32 79, i32 93, i32 24, i32 18, i32 103, i32 47, i32 73, i32 100, ; 184..191
	i32 12, i32 36, i32 71, i32 58, i32 9, i32 17, i32 41, i32 19, ; 192..199
	i32 66, i32 64, i32 16, i32 22, i32 6, i32 93, i32 102, i32 40, ; 200..207
	i32 71, i32 96, i32 72, i32 85 ; 208..211
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
