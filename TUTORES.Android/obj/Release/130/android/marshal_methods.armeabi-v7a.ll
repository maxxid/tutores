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
@assembly_image_cache_hashes = local_unnamed_addr constant [120 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 57
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 52
	i32 77620104, ; 2: TUTORES.Android => 0x4a06388 => 0
	i32 88799905, ; 3: Acr.UserDialogs => 0x54afaa1 => 4
	i32 148395041, ; 4: Lottie.Forms.dll => 0x8d85421 => 9
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 34
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 48
	i32 318968648, ; 7: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 25
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 42
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 51
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 40
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 12
	i32 469710990, ; 13: System.dll => 0x1bff388e => 24
	i32 484905788, ; 14: Plugin.Segmented.dll => 0x1ce7133c => 16
	i32 525008092, ; 15: SkiaSharp.dll => 0x1f4afcdc => 18
	i32 577617440, ; 16: Xalendar.dll => 0x226dbe20 => 29
	i32 627609679, ; 17: Xamarin.AndroidX.CustomView => 0x2568904f => 38
	i32 691439157, ; 18: Acr.UserDialogs.dll => 0x29368635 => 4
	i32 791272004, ; 19: Plugin.InputKit => 0x2f29da44 => 14
	i32 809851609, ; 20: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 902159924, ; 21: Rg.Plugins.Popup => 0x35c5de34 => 17
	i32 928116545, ; 22: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 57
	i32 957807352, ; 23: Plugin.CurrentActivity => 0x3916faf8 => 13
	i32 961995525, ; 24: Square.OkIO.dll => 0x3956e305 => 21
	i32 967690846, ; 25: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 42
	i32 974778368, ; 26: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 27: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 47
	i32 1035644815, ; 28: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 32
	i32 1042160112, ; 29: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 54
	i32 1048661744, ; 30: TUTORES.dll => 0x3e814ef0 => 28
	i32 1052210849, ; 31: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 44
	i32 1098259244, ; 32: System => 0x41761b2c => 24
	i32 1293217323, ; 33: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 39
	i32 1365406463, ; 34: System.ServiceModel.Internals.dll => 0x516272ff => 58
	i32 1376866003, ; 35: Xamarin.AndroidX.SavedState => 0x52114ed3 => 47
	i32 1406073936, ; 36: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 35
	i32 1411638395, ; 37: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 26
	i32 1460219004, ; 38: Xamarin.Forms.Xaml => 0x57092c7c => 55
	i32 1469204771, ; 39: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 31
	i32 1592978981, ; 40: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 41: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 45
	i32 1636350590, ; 42: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 37
	i32 1639515021, ; 43: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 44: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 56
	i32 1722051300, ; 45: SkiaSharp.Views.Forms => 0x66a46ae4 => 20
	i32 1729485958, ; 46: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 33
	i32 1766324549, ; 47: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 48
	i32 1776026572, ; 48: System.Core.dll => 0x69dc03cc => 23
	i32 1788241197, ; 49: Xamarin.AndroidX.Fragment => 0x6a96652d => 40
	i32 1808609942, ; 50: Xamarin.AndroidX.Loader => 0x6bcd3296 => 45
	i32 1813201214, ; 51: Xamarin.Google.Android.Material => 0x6c13413e => 56
	i32 1867746548, ; 52: Xamarin.Essentials.dll => 0x6f538cf4 => 51
	i32 1878053835, ; 53: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 55
	i32 2011961780, ; 54: System.Buffers.dll => 0x77ec19b4 => 22
	i32 2019465201, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 44
	i32 2055257422, ; 56: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 43
	i32 2097448633, ; 57: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 41
	i32 2126786730, ; 58: Xamarin.Forms.Platform.Android => 0x7ec430aa => 53
	i32 2171773547, ; 59: TUTORES => 0x8172a26b => 28
	i32 2201231467, ; 60: System.Net.Http => 0x8334206b => 2
	i32 2206207305, ; 61: TUTORES.Android.dll => 0x83800d49 => 0
	i32 2279755925, ; 62: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 46
	i32 2475788418, ; 63: Java.Interop.dll => 0x93918882 => 7
	i32 2563143864, ; 64: AndHUD.dll => 0x98c678b8 => 5
	i32 2620871830, ; 65: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 37
	i32 2732626843, ; 66: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 67: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 31
	i32 2766581644, ; 68: Xamarin.Forms.Core => 0xa4e6af8c => 52
	i32 2778768386, ; 69: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 49
	i32 2795602088, ; 70: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 19
	i32 2806986428, ; 71: Plugin.CurrentActivity.dll => 0xa74f36bc => 13
	i32 2809481863, ; 72: MagicGradients => 0xa7754a87 => 10
	i32 2810250172, ; 73: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 35
	i32 2819470561, ; 74: System.Xml.dll => 0xa80db4e1 => 27
	i32 2843355708, ; 75: Lottie.Android.dll => 0xa97a2a3c => 8
	i32 2853208004, ; 76: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 49
	i32 2861816565, ; 77: Rg.Plugins.Popup.dll => 0xaa93daf5 => 17
	i32 2905242038, ; 78: mscorlib.dll => 0xad2a79b6 => 12
	i32 2912489636, ; 79: SkiaSharp.Views.Android => 0xad9910a4 => 19
	i32 2943219317, ; 80: Square.OkIO => 0xaf6df675 => 21
	i32 2974793899, ; 81: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 20
	i32 2978675010, ; 82: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 39
	i32 3044182254, ; 83: FormsViewGroup => 0xb57288ee => 6
	i32 3111772706, ; 84: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3247949154, ; 85: Mono.Security => 0xc197c562 => 59
	i32 3258312781, ; 86: Xamarin.AndroidX.CardView => 0xc235e84d => 33
	i32 3263631797, ; 87: Lottie.Forms => 0xc28711b5 => 9
	i32 3317135071, ; 88: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 38
	i32 3340387945, ; 89: SkiaSharp => 0xc71a4669 => 18
	i32 3353484488, ; 90: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 41
	i32 3353544232, ; 91: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 50
	i32 3362522851, ; 92: Xamarin.AndroidX.Core => 0xc86c06e3 => 36
	i32 3366347497, ; 93: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 94: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 46
	i32 3395150330, ; 95: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 26
	i32 3404865022, ; 96: System.ServiceModel.Internals => 0xcaf21dfe => 58
	i32 3407215217, ; 97: Xamarin.CommunityToolkit => 0xcb15fa71 => 50
	i32 3429136800, ; 98: System.Xml => 0xcc6479a0 => 27
	i32 3431104122, ; 99: Plugin.Segmented.Control.Droid => 0xcc827e7a => 15
	i32 3442543374, ; 100: AndHUD => 0xcd310b0e => 5
	i32 3476120550, ; 101: Mono.Android => 0xcf3163e6 => 11
	i32 3481508766, ; 102: Plugin.Segmented => 0xcf839b9e => 16
	i32 3536029504, ; 103: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 53
	i32 3632359727, ; 104: Xamarin.Forms.Platform => 0xd881692f => 54
	i32 3639449509, ; 105: Lottie.Android => 0xd8ed97a5 => 8
	i32 3641597786, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 43
	i32 3672681054, ; 107: Mono.Android.dll => 0xdae8aa5e => 11
	i32 3689375977, ; 108: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3776811843, ; 109: Plugin.InputKit.dll => 0xe11d9343 => 14
	i32 3786282454, ; 110: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 34
	i32 3809379196, ; 111: MagicGradients.dll => 0xe30e837c => 10
	i32 3829621856, ; 112: System.Numerics.dll => 0xe4436460 => 25
	i32 3896760992, ; 113: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 36
	i32 3955647286, ; 114: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 32
	i32 4065171189, ; 115: Plugin.Segmented.Control.Droid.dll => 0xf24d96f5 => 15
	i32 4105002889, ; 116: Mono.Security.dll => 0xf4ad5f89 => 59
	i32 4151237749, ; 117: System.Core => 0xf76edc75 => 23
	i32 4162092062, ; 118: Xalendar => 0xf8147c1e => 29
	i32 4260525087 ; 119: System.Buffers => 0xfdf2741f => 22
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [120 x i32] [
	i32 57, i32 52, i32 0, i32 4, i32 9, i32 34, i32 48, i32 30, ; 0..7
	i32 25, i32 42, i32 51, i32 40, i32 12, i32 24, i32 16, i32 18, ; 8..15
	i32 29, i32 38, i32 4, i32 14, i32 1, i32 17, i32 57, i32 13, ; 16..23
	i32 21, i32 42, i32 6, i32 47, i32 32, i32 54, i32 28, i32 44, ; 24..31
	i32 24, i32 39, i32 58, i32 47, i32 35, i32 26, i32 55, i32 31, ; 32..39
	i32 3, i32 45, i32 37, i32 2, i32 56, i32 20, i32 33, i32 48, ; 40..47
	i32 23, i32 40, i32 45, i32 56, i32 51, i32 55, i32 22, i32 44, ; 48..55
	i32 43, i32 41, i32 53, i32 28, i32 2, i32 0, i32 46, i32 7, ; 56..63
	i32 5, i32 37, i32 30, i32 31, i32 52, i32 49, i32 19, i32 13, ; 64..71
	i32 10, i32 35, i32 27, i32 8, i32 49, i32 17, i32 12, i32 19, ; 72..79
	i32 21, i32 20, i32 39, i32 6, i32 3, i32 59, i32 33, i32 9, ; 80..87
	i32 38, i32 18, i32 41, i32 50, i32 36, i32 7, i32 46, i32 26, ; 88..95
	i32 58, i32 50, i32 27, i32 15, i32 5, i32 11, i32 16, i32 53, ; 96..103
	i32 54, i32 8, i32 43, i32 11, i32 1, i32 14, i32 34, i32 10, ; 104..111
	i32 25, i32 36, i32 32, i32 15, i32 59, i32 23, i32 29, i32 22 ; 120..119
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
