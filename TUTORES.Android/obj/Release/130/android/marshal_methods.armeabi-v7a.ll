; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [136 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 64
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 13
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 59
	i32 77620104, ; 3: TUTORES.Android => 0x4a06388 => 0
	i32 88799905, ; 4: Acr.UserDialogs => 0x54afaa1 => 4
	i32 148395041, ; 5: Lottie.Forms.dll => 0x8d85421 => 9
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 41
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 55
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 37
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 31
	i32 342366114, ; 10: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 49
	i32 347068432, ; 11: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 25
	i32 442521989, ; 12: Xamarin.Essentials => 0x1a605985 => 58
	i32 450948140, ; 13: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 47
	i32 465846621, ; 14: mscorlib => 0x1bc4415d => 12
	i32 469710990, ; 15: System.dll => 0x1bff388e => 30
	i32 484905788, ; 16: Plugin.Segmented.dll => 0x1ce7133c => 17
	i32 525008092, ; 17: SkiaSharp.dll => 0x1f4afcdc => 19
	i32 577617440, ; 18: Xalendar.dll => 0x226dbe20 => 36
	i32 627609679, ; 19: Xamarin.AndroidX.CustomView => 0x2568904f => 45
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 34
	i32 691439157, ; 21: Acr.UserDialogs.dll => 0x29368635 => 4
	i32 748832960, ; 22: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 23
	i32 791272004, ; 23: Plugin.InputKit => 0x2f29da44 => 15
	i32 809851609, ; 24: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 902159924, ; 25: Rg.Plugins.Popup => 0x35c5de34 => 18
	i32 928116545, ; 26: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 64
	i32 955402788, ; 27: Newtonsoft.Json => 0x38f24a24 => 13
	i32 957807352, ; 28: Plugin.CurrentActivity => 0x3916faf8 => 14
	i32 961995525, ; 29: Square.OkIO.dll => 0x3956e305 => 27
	i32 967690846, ; 30: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 49
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 32: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 54
	i32 1035644815, ; 33: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 39
	i32 1042160112, ; 34: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 61
	i32 1048661744, ; 35: TUTORES.dll => 0x3e814ef0 => 35
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 51
	i32 1098259244, ; 37: System => 0x41761b2c => 30
	i32 1292207520, ; 38: SQLitePCLRaw.core.dll => 0x4d0585a0 => 24
	i32 1293217323, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 46
	i32 1365406463, ; 40: System.ServiceModel.Internals.dll => 0x516272ff => 65
	i32 1376866003, ; 41: Xamarin.AndroidX.SavedState => 0x52114ed3 => 54
	i32 1406073936, ; 42: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 42
	i32 1411638395, ; 43: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 32
	i32 1460219004, ; 44: Xamarin.Forms.Xaml => 0x57092c7c => 62
	i32 1469204771, ; 45: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 38
	i32 1592978981, ; 46: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 47: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 52
	i32 1636350590, ; 48: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 44
	i32 1639515021, ; 49: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 50: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 63
	i32 1711441057, ; 51: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 25
	i32 1722051300, ; 52: SkiaSharp.Views.Forms => 0x66a46ae4 => 21
	i32 1729485958, ; 53: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 40
	i32 1766324549, ; 54: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 55
	i32 1776026572, ; 55: System.Core.dll => 0x69dc03cc => 29
	i32 1788241197, ; 56: Xamarin.AndroidX.Fragment => 0x6a96652d => 47
	i32 1808609942, ; 57: Xamarin.AndroidX.Loader => 0x6bcd3296 => 52
	i32 1813201214, ; 58: Xamarin.Google.Android.Material => 0x6c13413e => 63
	i32 1867746548, ; 59: Xamarin.Essentials.dll => 0x6f538cf4 => 58
	i32 1878053835, ; 60: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 62
	i32 2011961780, ; 61: System.Buffers.dll => 0x77ec19b4 => 28
	i32 2019465201, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 51
	i32 2055257422, ; 63: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 50
	i32 2097448633, ; 64: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 48
	i32 2103459038, ; 65: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 26
	i32 2126786730, ; 66: Xamarin.Forms.Platform.Android => 0x7ec430aa => 60
	i32 2171773547, ; 67: TUTORES => 0x8172a26b => 35
	i32 2201231467, ; 68: System.Net.Http => 0x8334206b => 2
	i32 2206207305, ; 69: TUTORES.Android.dll => 0x83800d49 => 0
	i32 2279755925, ; 70: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 53
	i32 2465273461, ; 71: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 23
	i32 2475788418, ; 72: Java.Interop.dll => 0x93918882 => 7
	i32 2563143864, ; 73: AndHUD.dll => 0x98c678b8 => 5
	i32 2620871830, ; 74: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 44
	i32 2732626843, ; 75: Xamarin.AndroidX.Activity => 0xa2e0939b => 37
	i32 2737747696, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 38
	i32 2766581644, ; 77: Xamarin.Forms.Core => 0xa4e6af8c => 59
	i32 2778768386, ; 78: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 56
	i32 2795602088, ; 79: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 20
	i32 2806986428, ; 80: Plugin.CurrentActivity.dll => 0xa74f36bc => 14
	i32 2809481863, ; 81: MagicGradients => 0xa7754a87 => 10
	i32 2810250172, ; 82: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 42
	i32 2819470561, ; 83: System.Xml.dll => 0xa80db4e1 => 33
	i32 2843355708, ; 84: Lottie.Android.dll => 0xa97a2a3c => 8
	i32 2853208004, ; 85: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 56
	i32 2861816565, ; 86: Rg.Plugins.Popup.dll => 0xaa93daf5 => 18
	i32 2905242038, ; 87: mscorlib.dll => 0xad2a79b6 => 12
	i32 2912489636, ; 88: SkiaSharp.Views.Android => 0xad9910a4 => 20
	i32 2943219317, ; 89: Square.OkIO => 0xaf6df675 => 27
	i32 2974793899, ; 90: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 21
	i32 2978675010, ; 91: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 46
	i32 3044182254, ; 92: FormsViewGroup => 0xb57288ee => 6
	i32 3111772706, ; 93: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 94: System.Data.dll => 0xbefef58f => 66
	i32 3247949154, ; 95: Mono.Security => 0xc197c562 => 67
	i32 3258312781, ; 96: Xamarin.AndroidX.CardView => 0xc235e84d => 40
	i32 3263631797, ; 97: Lottie.Forms => 0xc28711b5 => 9
	i32 3286872994, ; 98: SQLite-net.dll => 0xc3e9b3a2 => 22
	i32 3317135071, ; 99: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 45
	i32 3317144872, ; 100: System.Data => 0xc5b79d28 => 66
	i32 3340387945, ; 101: SkiaSharp => 0xc71a4669 => 19
	i32 3353484488, ; 102: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 48
	i32 3353544232, ; 103: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 57
	i32 3360279109, ; 104: SQLitePCLRaw.core => 0xc849ca45 => 24
	i32 3362522851, ; 105: Xamarin.AndroidX.Core => 0xc86c06e3 => 43
	i32 3366347497, ; 106: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 107: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 53
	i32 3395150330, ; 108: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 32
	i32 3404865022, ; 109: System.ServiceModel.Internals => 0xcaf21dfe => 65
	i32 3407215217, ; 110: Xamarin.CommunityToolkit => 0xcb15fa71 => 57
	i32 3429136800, ; 111: System.Xml => 0xcc6479a0 => 33
	i32 3431104122, ; 112: Plugin.Segmented.Control.Droid => 0xcc827e7a => 16
	i32 3442543374, ; 113: AndHUD => 0xcd310b0e => 5
	i32 3476120550, ; 114: Mono.Android => 0xcf3163e6 => 11
	i32 3481508766, ; 115: Plugin.Segmented => 0xcf839b9e => 17
	i32 3509114376, ; 116: System.Xml.Linq => 0xd128d608 => 34
	i32 3536029504, ; 117: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 60
	i32 3632359727, ; 118: Xamarin.Forms.Platform => 0xd881692f => 61
	i32 3639449509, ; 119: Lottie.Android => 0xd8ed97a5 => 8
	i32 3641597786, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 50
	i32 3672681054, ; 121: Mono.Android.dll => 0xdae8aa5e => 11
	i32 3689375977, ; 122: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3754567612, ; 123: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 26
	i32 3776811843, ; 124: Plugin.InputKit.dll => 0xe11d9343 => 15
	i32 3786282454, ; 125: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 41
	i32 3809379196, ; 126: MagicGradients.dll => 0xe30e837c => 10
	i32 3829621856, ; 127: System.Numerics.dll => 0xe4436460 => 31
	i32 3876362041, ; 128: SQLite-net => 0xe70c9739 => 22
	i32 3896760992, ; 129: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 43
	i32 3955647286, ; 130: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 39
	i32 4065171189, ; 131: Plugin.Segmented.Control.Droid.dll => 0xf24d96f5 => 16
	i32 4105002889, ; 132: Mono.Security.dll => 0xf4ad5f89 => 67
	i32 4151237749, ; 133: System.Core => 0xf76edc75 => 29
	i32 4162092062, ; 134: Xalendar => 0xf8147c1e => 36
	i32 4260525087 ; 135: System.Buffers => 0xfdf2741f => 28
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [136 x i32] [
	i32 64, i32 13, i32 59, i32 0, i32 4, i32 9, i32 41, i32 55, ; 0..7
	i32 37, i32 31, i32 49, i32 25, i32 58, i32 47, i32 12, i32 30, ; 8..15
	i32 17, i32 19, i32 36, i32 45, i32 34, i32 4, i32 23, i32 15, ; 16..23
	i32 1, i32 18, i32 64, i32 13, i32 14, i32 27, i32 49, i32 6, ; 24..31
	i32 54, i32 39, i32 61, i32 35, i32 51, i32 30, i32 24, i32 46, ; 32..39
	i32 65, i32 54, i32 42, i32 32, i32 62, i32 38, i32 3, i32 52, ; 40..47
	i32 44, i32 2, i32 63, i32 25, i32 21, i32 40, i32 55, i32 29, ; 48..55
	i32 47, i32 52, i32 63, i32 58, i32 62, i32 28, i32 51, i32 50, ; 56..63
	i32 48, i32 26, i32 60, i32 35, i32 2, i32 0, i32 53, i32 23, ; 64..71
	i32 7, i32 5, i32 44, i32 37, i32 38, i32 59, i32 56, i32 20, ; 72..79
	i32 14, i32 10, i32 42, i32 33, i32 8, i32 56, i32 18, i32 12, ; 80..87
	i32 20, i32 27, i32 21, i32 46, i32 6, i32 3, i32 66, i32 67, ; 88..95
	i32 40, i32 9, i32 22, i32 45, i32 66, i32 19, i32 48, i32 57, ; 96..103
	i32 24, i32 43, i32 7, i32 53, i32 32, i32 65, i32 57, i32 33, ; 104..111
	i32 16, i32 5, i32 11, i32 17, i32 34, i32 60, i32 61, i32 8, ; 112..119
	i32 50, i32 11, i32 1, i32 26, i32 15, i32 41, i32 10, i32 31, ; 120..127
	i32 22, i32 43, i32 39, i32 16, i32 67, i32 29, i32 36, i32 28 ; 136..135
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
