; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [136 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 11
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 41
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 54
	i64 263803244706540312, ; 3: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 18
	i64 702024105029695270, ; 4: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 5: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 48
	i64 870603111519317375, ; 6: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 25
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 46
	i64 878495121504023187, ; 8: MagicGradients => 0xc310aa896293293 => 10
	i64 996343623809489702, ; 9: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 61
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 67
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 63
	i64 1301485588176585670, ; 12: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 24
	i64 1425944114962822056, ; 13: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1518315023656898250, ; 14: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 26
	i64 1624659445732251991, ; 15: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 38
	i64 1731380447121279447, ; 16: Newtonsoft.Json => 0x18071957e9b889d7 => 13
	i64 1795316252682057001, ; 17: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 39
	i64 1836611346387731153, ; 18: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 54
	i64 1981742497975770890, ; 19: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 51
	i64 1986553961460820075, ; 20: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 57
	i64 2133195048986300728, ; 21: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 13
	i64 2262844636196693701, ; 22: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 46
	i64 2329709569556905518, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 50
	i64 2337758774805907496, ; 24: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 32
	i64 2470498323731680442, ; 25: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 42
	i64 2489738558632930771, ; 26: Acr.UserDialogs.dll => 0x228d540722e8add3 => 4
	i64 2541787113603107559, ; 27: Lottie.Android.dll => 0x23463de9b0fa8ae7 => 8
	i64 2547086958574651984, ; 28: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 37
	i64 2592350477072141967, ; 29: System.Xml.dll => 0x23f9e10627330e8f => 33
	i64 2624866290265602282, ; 30: mscorlib.dll => 0x246d65fbde2db8ea => 12
	i64 2739527324738613459, ; 31: TUTORES.Android => 0x2604c196538570d3 => 0
	i64 2783046991838674048, ; 32: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 32
	i64 2801558180824670388, ; 33: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 14
	i64 2960931600190307745, ; 34: Xamarin.Forms.Core => 0x2917579a49927da1 => 59
	i64 3017704767998173186, ; 35: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 63
	i64 3171992396844006720, ; 36: Square.OkIO => 0x2c052e476c207d40 => 27
	i64 3260998928894807349, ; 37: Lottie.Forms.dll => 0x2d41653f91b44d35 => 9
	i64 3289520064315143713, ; 38: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 49
	i64 3522470458906976663, ; 39: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 55
	i64 3531994851595924923, ; 40: System.Numerics => 0x31042a9aade235bb => 31
	i64 3609787854626478660, ; 41: Plugin.CurrentActivity => 0x32188aeda587da44 => 14
	i64 3727469159507183293, ; 42: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 53
	i64 4337444564132831293, ; 43: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 23
	i64 4525561845656915374, ; 44: System.ServiceModel.Internals => 0x3ece06856b710dae => 65
	i64 4744603984973074322, ; 45: Plugin.Segmented.Control.Droid => 0x41d8382fb4390f92 => 16
	i64 4794310189461587505, ; 46: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 37
	i64 4795410492532947900, ; 47: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 55
	i64 5142919913060024034, ; 48: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 60
	i64 5203618020066742981, ; 49: Xamarin.Essentials => 0x4836f704f0e652c5 => 58
	i64 5507995362134886206, ; 50: System.Core.dll => 0x4c705499688c873e => 29
	i64 6085203216496545422, ; 51: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 61
	i64 6086316965293125504, ; 52: FormsViewGroup.dll => 0x5476f10882baef80 => 6
	i64 6177618607706310916, ; 53: Xalendar => 0x55bb4f64ae2d8904 => 36
	i64 6183170893902868313, ; 54: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 23
	i64 6401687960814735282, ; 55: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 50
	i64 6548213210057960872, ; 56: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 45
	i64 6659513131007730089, ; 57: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 48
	i64 6671798237668743565, ; 58: SkiaSharp => 0x5c96fd260152998d => 19
	i64 6876862101832370452, ; 59: System.Xml.Linq => 0x5f6f85a57d108914 => 34
	i64 7488575175965059935, ; 60: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 34
	i64 7635363394907363464, ; 61: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 59
	i64 7637365915383206639, ; 62: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 58
	i64 7654504624184590948, ; 63: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7723828941317063624, ; 64: Xalendar.dll => 0x6b308d7fe115c3c8 => 36
	i64 7820441508502274321, ; 65: System.Data => 0x6c87ca1e14ff8111 => 66
	i64 7836164640616011524, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 38
	i64 7875371864198757046, ; 67: AndHUD.dll => 0x6d4af0fc27ac3ab6 => 5
	i64 7927939710195668715, ; 68: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 20
	i64 8083354569033831015, ; 69: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 49
	i64 8132393369586336849, ; 70: Plugin.InputKit => 0x70dc10aeafef8451 => 15
	i64 8167236081217502503, ; 71: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8187102936927221770, ; 72: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 21
	i64 8336755020847603645, ; 73: Plugin.Segmented => 0x73b21a857d135fbd => 17
	i64 8528058088365178926, ; 74: TUTORES.Android.dll => 0x7659bfa5d4e7402e => 0
	i64 8609060182490045521, ; 75: Square.OkIO.dll => 0x7779869f8b475c51 => 27
	i64 8626175481042262068, ; 76: Java.Interop => 0x77b654e585b55834 => 7
	i64 9324707631942237306, ; 77: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 39
	i64 9662334977499516867, ; 78: System.Numerics.dll => 0x8617827802b0cfc3 => 31
	i64 9678050649315576968, ; 79: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 42
	i64 9780723996889434231, ; 80: AndHUD => 0x87bc1ca798bbc877 => 5
	i64 9808709177481450983, ; 81: Mono.Android.dll => 0x881f890734e555e7 => 11
	i64 9998632235833408227, ; 82: Mono.Security => 0x8ac2470b209ebae3 => 67
	i64 10038780035334861115, ; 83: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 84: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 45
	i64 10430153318873392755, ; 85: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 43
	i64 10924419771514504336, ; 86: TUTORES.dll => 0x979b55e6f2604490 => 35
	i64 10984620054693331049, ; 87: Plugin.InputKit.dll => 0x987135bda0a0c069 => 15
	i64 11023048688141570732, ; 88: System.Core => 0x98f9bc61168392ac => 29
	i64 11037814507248023548, ; 89: System.Xml => 0x992e31d0412bf7fc => 33
	i64 11122995063473561350, ; 90: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 57
	i64 11162124722117608902, ; 91: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 56
	i64 11340910727871153756, ; 92: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 44
	i64 11529969570048099689, ; 93: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 56
	i64 11739066727115742305, ; 94: SQLite-net.dll => 0xa2e98afdf8575c61 => 22
	i64 11751916185905502301, ; 95: Plugin.Segmented.Control.Droid.dll => 0xa3173181bb0f985d => 16
	i64 11806260347154423189, ; 96: SQLite-net => 0xa3d8433bc5eb5d95 => 22
	i64 12102847907131387746, ; 97: System.Buffers => 0xa7f5f40c43256f62 => 28
	i64 12279246230491828964, ; 98: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 26
	i64 12451044538927396471, ; 99: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 47
	i64 12466513435562512481, ; 100: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 52
	i64 12488608402635344228, ; 101: Lottie.Android => 0xad50732cba09c964 => 8
	i64 12538491095302438457, ; 102: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 40
	i64 12700543734426720211, ; 103: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 41
	i64 12963446364377008305, ; 104: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13159945258233006461, ; 105: TUTORES => 0xb6a1847cec90897d => 35
	i64 13370592475155966277, ; 106: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13454009404024712428, ; 107: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 64
	i64 13492263892638604996, ; 108: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 21
	i64 13572454107664307259, ; 109: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 53
	i64 13647894001087880694, ; 110: System.Data.dll => 0xbd670f48cb071df6 => 66
	i64 13959074834287824816, ; 111: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 47
	i64 13967638549803255703, ; 112: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 60
	i64 14070493885199953730, ; 113: MagicGradients.dll => 0xc3446fa3d1a62f42 => 10
	i64 14124974489674258913, ; 114: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 40
	i64 14161076099266624234, ; 115: Acr.UserDialogs => 0xc4863faf060fbaea => 4
	i64 14792063746108907174, ; 116: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 64
	i64 14852515768018889994, ; 117: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 44
	i64 15370334346939861994, ; 118: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 43
	i64 15609085926864131306, ; 119: System.dll => 0xd89e9cf3334914ea => 30
	i64 15810740023422282496, ; 120: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 62
	i64 16154507427712707110, ; 121: System => 0xe03056ea4e39aa26 => 30
	i64 16324796876805858114, ; 122: SkiaSharp.dll => 0xe28d5444586b6342 => 19
	i64 16755018182064898362, ; 123: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 24
	i64 16833383113903931215, ; 124: mscorlib => 0xe99c30c1484d7f4f => 12
	i64 17124705692820578889, ; 125: Lottie.Forms => 0xeda72d18d7ae2249 => 9
	i64 17285063141349522879, ; 126: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 18
	i64 17671790519499593115, ; 127: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 20
	i64 17704177640604968747, ; 128: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 52
	i64 17710060891934109755, ; 129: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 51
	i64 17765815186956600054, ; 130: Plugin.Segmented.dll => 0xf68cdac903c9c2f6 => 17
	i64 17838668724098252521, ; 131: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 28
	i64 17882897186074144999, ; 132: FormsViewGroup => 0xf82cd03e3ac830e7 => 6
	i64 17892495832318972303, ; 133: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 62
	i64 18129453464017766560, ; 134: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 65
	i64 18370042311372477656 ; 135: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 25
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [136 x i32] [
	i32 11, i32 41, i32 54, i32 18, i32 1, i32 48, i32 25, i32 46, ; 0..7
	i32 10, i32 61, i32 67, i32 63, i32 24, i32 3, i32 26, i32 38, ; 8..15
	i32 13, i32 39, i32 54, i32 51, i32 57, i32 13, i32 46, i32 50, ; 16..23
	i32 32, i32 42, i32 4, i32 8, i32 37, i32 33, i32 12, i32 0, ; 24..31
	i32 32, i32 14, i32 59, i32 63, i32 27, i32 9, i32 49, i32 55, ; 32..39
	i32 31, i32 14, i32 53, i32 23, i32 65, i32 16, i32 37, i32 55, ; 40..47
	i32 60, i32 58, i32 29, i32 61, i32 6, i32 36, i32 23, i32 50, ; 48..55
	i32 45, i32 48, i32 19, i32 34, i32 34, i32 59, i32 58, i32 2, ; 56..63
	i32 36, i32 66, i32 38, i32 5, i32 20, i32 49, i32 15, i32 7, ; 64..71
	i32 21, i32 17, i32 0, i32 27, i32 7, i32 39, i32 31, i32 42, ; 72..79
	i32 5, i32 11, i32 67, i32 2, i32 45, i32 43, i32 35, i32 15, ; 80..87
	i32 29, i32 33, i32 57, i32 56, i32 44, i32 56, i32 22, i32 16, ; 88..95
	i32 22, i32 28, i32 26, i32 47, i32 52, i32 8, i32 40, i32 41, ; 96..103
	i32 1, i32 35, i32 3, i32 64, i32 21, i32 53, i32 66, i32 47, ; 104..111
	i32 60, i32 10, i32 40, i32 4, i32 64, i32 44, i32 43, i32 30, ; 112..119
	i32 62, i32 30, i32 19, i32 24, i32 12, i32 9, i32 18, i32 20, ; 120..127
	i32 52, i32 51, i32 17, i32 28, i32 6, i32 62, i32 65, i32 25 ; 136..135
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
