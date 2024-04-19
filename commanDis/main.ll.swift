; ModuleID = 'main.ll.swift'
source_filename = "main.ll.swift"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%objc_class = type { %objc_class*, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque* }
%swift.opaque = type opaque
%swift.method_descriptor = type { i32, i32 }
%T4main7RuntimeC = type <{ %swift.refcounted }>
%swift.refcounted = type { %swift.type*, i64 }
%swift.type = type { i64 }
%swift.type_metadata_record = type { i32 }
%objc_object = type opaque
%swift.metadata_response = type { %swift.type*, i64 }

@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 ptrtoint ({ i32, i32 }* @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"$sBoWV" = external global i8*, align 8
@"$s4main7RuntimeCMm" = hidden global %objc_class { %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, %swift.opaque* bitcast ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_METACLASS_DATA__TtC4main7Runtime to %swift.opaque*) }, align 8
@"OBJC_CLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@_objc_empty_cache = external global %swift.opaque
@"OBJC_METACLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@.str.17._TtC4main7Runtime = private unnamed_addr constant [18 x i8] c"_TtC4main7Runtime\00"
@_METACLASS_DATA__TtC4main7Runtime = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 129, i32 40, i32 40, i32 0, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17._TtC4main7Runtime, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@_DATA__TtC4main7Runtime = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 128, i32 16, i32 16, i32 0, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17._TtC4main7Runtime, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@.str.4.main = private constant [5 x i8] c"main\00"
@"$s4mainMXM" = linkonce_odr hidden constant <{ i32, i32, i32 }> <{ i32 0, i32 0, i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.4.main to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32 }>, <{ i32, i32, i32 }>* @"$s4mainMXM", i32 0, i32 2) to i64)) to i32) }>, section "__TEXT,__constg_swiftt", align 4
@.str.7.Runtime = private constant [8 x i8] c"Runtime\00"
@"$s4main7RuntimeCMn" = hidden constant <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }> <{ i32 -2147483568, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32 }>* @"$s4mainMXM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i32 0, i32 1) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([8 x i8]* @.str.7.Runtime to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i32 0, i32 2) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (%swift.metadata_response (i64)* @"$s4main7RuntimeCMa" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i32 0, i32 3) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s4main7RuntimeCMF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i32 0, i32 4) to i64)) to i32), i32 0, i32 3, i32 11, i32 1, i32 0, i32 10, i32 10, i32 1, %swift.method_descriptor { i32 1, i32 trunc (i64 sub (i64 ptrtoint (%T4main7RuntimeC* (%swift.type*)* @"$s4main7RuntimeCACycfC" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i32 0, i32 13, i32 1) to i64)) to i32) } }>, section "__TEXT,__constg_swiftt", align 4
@"$s4main7RuntimeCMf" = internal global <{ i8*, void (%T4main7RuntimeC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque*, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>*, i8*, %T4main7RuntimeC* (%swift.type*)* }> <{ i8* null, void (%T4main7RuntimeC*)* @"$s4main7RuntimeCfD", i8** @"$sBoWV", i64 ptrtoint (%objc_class* @"$s4main7RuntimeCMm" to i64), %objc_class* @"OBJC_CLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, %swift.opaque* bitcast (i8* getelementptr (i8, i8* bitcast ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_DATA__TtC4main7Runtime to i8*), i64 2) to %swift.opaque*), i32 2, i32 0, i32 16, i16 7, i16 0, i32 112, i32 24, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i8* null, %T4main7RuntimeC* (%swift.type*)* @"$s4main7RuntimeCACycfC" }>, align 8
@"symbolic _____ 4main7RuntimeC" = linkonce_odr hidden constant <{ i8, i32, i8 }> <{ i8 1, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i8, i32, i8 }>, <{ i8, i32, i8 }>* @"symbolic _____ 4main7RuntimeC", i32 0, i32 1) to i64)) to i32), i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$s4main7RuntimeCMF" = internal constant { i32, i32, i16, i16, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ i8, i32, i8 }>* @"symbolic _____ 4main7RuntimeC" to i64), i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s4main7RuntimeCMF" to i64)) to i32), i32 0, i16 1, i16 12, i32 0 }, section "__TEXT,__swift5_fieldmd, regular", no_sanitize_address, align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftDarwin_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDarwin"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftIOKit"
@"$s4main7RuntimeCHn" = private constant %swift.type_metadata_record { i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn" to i64), i64 ptrtoint (%swift.type_metadata_record* @"$s4main7RuntimeCHn" to i64)) to i32) }, section "__TEXT, __swift5_types, regular", no_sanitize_address, align 4
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@"objc_classes_$s4main7RuntimeCN" = internal global i8* bitcast (%swift.type* @"$s4main7RuntimeCN" to i8*), section "__DATA,__objc_classlist,regular,no_dead_strip", no_sanitize_address, align 8
@llvm.used = appending global [13 x i8*] [i8* bitcast (i32 (i32, i8**)* @main to i8*), i8* bitcast ({ i32, i32 }* @"\01l_entry_point" to i8*), i8* bitcast ({ i32, i32, i16, i16, i32 }* @"$s4main7RuntimeCMF" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDarwin_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDispatch_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftXPC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftIOKit_$_main" to i8*), i8* bitcast (%swift.type_metadata_record* @"$s4main7RuntimeCHn" to i8*), i8* bitcast (i16* @__swift_reflection_version to i8*), i8* bitcast (i8** @"objc_classes_$s4main7RuntimeCN" to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (%swift.method_descriptor* @"$s4main7RuntimeCACycfCTq" to i8*), i8* bitcast (<{ i8*, void (%T4main7RuntimeC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque*, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>*, i8*, %T4main7RuntimeC* (%swift.type*)* }>* @"$s4main7RuntimeCMf" to i8*), i8* bitcast (%swift.type* @"$s4main7RuntimeCN" to i8*)], section "llvm.metadata"

@"$s4main7RuntimeCACycfCTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>* @"$s4main7RuntimeCMn", i32 0, i32 13)
@"$s4main7RuntimeCN" = hidden alias %swift.type, bitcast (i64* getelementptr inbounds (<{ i8*, void (%T4main7RuntimeC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque*, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>*, i8*, %T4main7RuntimeC* (%swift.type*)* }>, <{ i8*, void (%T4main7RuntimeC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque*, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>*, i8*, %T4main7RuntimeC* (%swift.type*)* }>* @"$s4main7RuntimeCMf", i32 0, i32 3) to %swift.type*)

define i32 @main(i32 %0, i8** %1) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  ret i32 0
}

define hidden swiftcc %swift.refcounted* @"$s4main7RuntimeCfd"(%T4main7RuntimeC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main7RuntimeC*, align 8
  %1 = bitcast %T4main7RuntimeC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main7RuntimeC* %0, %T4main7RuntimeC** %self.debug, align 8
  %2 = bitcast %T4main7RuntimeC* %0 to %swift.refcounted*
  ret %swift.refcounted* %2
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

define hidden swiftcc void @"$s4main7RuntimeCfD"(%T4main7RuntimeC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main7RuntimeC*, align 8
  %1 = bitcast %T4main7RuntimeC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main7RuntimeC* %0, %T4main7RuntimeC** %self.debug, align 8
  %2 = call swiftcc %swift.refcounted* @"$s4main7RuntimeCfd"(%T4main7RuntimeC* swiftself %0)
  %3 = bitcast %swift.refcounted* %2 to %T4main7RuntimeC*
  %4 = bitcast %T4main7RuntimeC* %3 to %swift.refcounted*
  call void @swift_deallocClassInstance(%swift.refcounted* %4, i64 16, i64 7) #2
  ret void
}

; Function Attrs: nounwind
declare void @swift_deallocClassInstance(%swift.refcounted*, i64, i64) #2

define hidden swiftcc %T4main7RuntimeC* @"$s4main7RuntimeCACycfC"(%swift.type* swiftself %0) #0 {
entry:
  %1 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* %0, i64 16, i64 7) #2
  %2 = bitcast %swift.refcounted* %1 to %T4main7RuntimeC*
  %3 = call swiftcc %T4main7RuntimeC* @"$s4main7RuntimeCACycfc"(%T4main7RuntimeC* swiftself %2)
  ret %T4main7RuntimeC* %3
}

; Function Attrs: nounwind
declare %swift.refcounted* @swift_allocObject(%swift.type*, i64, i64) #2

define hidden swiftcc %T4main7RuntimeC* @"$s4main7RuntimeCACycfc"(%T4main7RuntimeC* swiftself %0) #0 {
entry:
  %self.debug = alloca %T4main7RuntimeC*, align 8
  %1 = bitcast %T4main7RuntimeC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main7RuntimeC* %0, %T4main7RuntimeC** %self.debug, align 8
  ret %T4main7RuntimeC* %0
}

define hidden swiftcc void @swift_release(%objc_object* %0) #0 {
entry:
  %object.debug = alloca %objc_object*, align 8
  %1 = bitcast %objc_object** %object.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %objc_object* %0, %objc_object** %object.debug, align 8
  ret void
}

; Function Attrs: noinline nounwind readnone
define hidden swiftcc %swift.metadata_response @"$s4main7RuntimeCMa"(i64 %0) #3 {
entry:
  %1 = call %objc_class* @objc_opt_self(%objc_class* bitcast (i64* getelementptr inbounds (<{ i8*, void (%T4main7RuntimeC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque*, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>*, i8*, %T4main7RuntimeC* (%swift.type*)* }>, <{ i8*, void (%T4main7RuntimeC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, %swift.opaque*, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor }>*, i8*, %T4main7RuntimeC* (%swift.type*)* }>* @"$s4main7RuntimeCMf", i32 0, i32 3) to %objc_class*)) #2
  %2 = bitcast %objc_class* %1 to %swift.type*
  %3 = insertvalue %swift.metadata_response undef, %swift.type* %2, 0
  %4 = insertvalue %swift.metadata_response %3, i64 0, 1
  ret %swift.metadata_response %4
}

; Function Attrs: nounwind
declare %objc_class* @objc_opt_self(%objc_class*) #2

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDarwin"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.1a,+v8.2a,+v8.3a,+v8a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { nounwind }
attributes #3 = { noinline nounwind readnone "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.1a,+v8.2a,+v8.3a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!swift.module.flags = !{!12}
!llvm.linker.options = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 0]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 4, !"Objective-C Garbage Collection", i32 84477696}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"Objective-C Enforce ClassRO Pointer Signing", i8 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = !{i32 1, !"Swift Version", i32 7}
!12 = !{!"standard-library", i1 false}
!13 = !{!"-lswiftFoundation"}
!14 = !{!"-framework", !"Foundation"}
!15 = !{!"-lswiftCore"}
!16 = !{!"-lswift_StringProcessing"}
!17 = !{!"-lswift_Concurrency"}
!18 = !{!"-lswiftObservation"}
!19 = !{!"-lswiftObjectiveC"}
!20 = !{!"-lswiftDarwin"}
!21 = !{!"-lswiftCoreFoundation"}
!22 = !{!"-framework", !"CoreFoundation"}
!23 = !{!"-lswiftDispatch"}
!24 = !{!"-framework", !"Combine"}
!25 = !{!"-framework", !"CoreServices"}
!26 = !{!"-framework", !"Security"}
!27 = !{!"-lswiftXPC"}
!28 = !{!"-framework", !"CFNetwork"}
!29 = !{!"-framework", !"DiskArbitration"}
!30 = !{!"-lswiftIOKit"}
!31 = !{!"-framework", !"IOKit"}
!32 = !{!"-lswiftSwiftOnoneSupport"}
!33 = !{!"-lobjc"}
!34 = !{!"-lswiftCompatibilityPacks"}
