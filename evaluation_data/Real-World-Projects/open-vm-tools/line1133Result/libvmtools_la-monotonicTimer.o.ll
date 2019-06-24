; ModuleID = './libvmtools_la-monotonicTimer.o.i'
source_filename = "./libvmtools_la-monotonicTimer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.MTimerSource = type { %struct._GSource, i32, i64 }

@VMTools_CreateTimer.srcFuncs = internal global %struct._GSourceFuncs { i32 (%struct._GSource*, i32*)* @MTimerSourcePrepare, i32 (%struct._GSource*)* @MTimerSourceCheck, i32 (%struct._GSource*, i32 (i8*)*, i8*)* @MTimerSourceDispatch, void (%struct._GSource*)* @MTimerSourceFinalize, i32 (i8*)* null, void ()* null }, align 8

; Function Attrs: nounwind uwtable
define %struct._GSource* @VMTools_CreateTimer(i32) #0 !dbg !107 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MTimerSource*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !113, metadata !114), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.MTimerSource** %3, metadata !116, metadata !114), !dbg !117
  %4 = call %struct._GSource* @g_source_new(%struct._GSourceFuncs* @VMTools_CreateTimer.srcFuncs, i32 112), !dbg !118
  %5 = bitcast %struct._GSource* %4 to %struct.MTimerSource*, !dbg !119
  store %struct.MTimerSource* %5, %struct.MTimerSource** %3, align 8, !dbg !120
  %6 = call i64 @System_GetTimeMonotonic(), !dbg !121
  %7 = mul i64 %6, 10, !dbg !122
  %8 = load %struct.MTimerSource*, %struct.MTimerSource** %3, align 8, !dbg !123
  %9 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %8, i32 0, i32 2, !dbg !124
  store i64 %7, i64* %9, align 8, !dbg !125
  %10 = load i32, i32* %2, align 4, !dbg !126
  %11 = load %struct.MTimerSource*, %struct.MTimerSource** %3, align 8, !dbg !127
  %12 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %11, i32 0, i32 1, !dbg !128
  store i32 %10, i32* %12, align 8, !dbg !129
  %13 = load %struct.MTimerSource*, %struct.MTimerSource** %3, align 8, !dbg !130
  %14 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %13, i32 0, i32 0, !dbg !131
  ret %struct._GSource* %14, !dbg !132
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @MTimerSourcePrepare(%struct._GSource*, i32*) #0 !dbg !133 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSource*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.MTimerSource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._GSource* %0, %struct._GSource** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %4, metadata !134, metadata !114), !dbg !135
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !136, metadata !114), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.MTimerSource** %6, metadata !138, metadata !114), !dbg !139
  %9 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !140
  %10 = bitcast %struct._GSource* %9 to %struct.MTimerSource*, !dbg !141
  store %struct.MTimerSource* %10, %struct.MTimerSource** %6, align 8, !dbg !139
  %11 = load %struct.MTimerSource*, %struct.MTimerSource** %6, align 8, !dbg !142
  %12 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %11, i32 0, i32 1, !dbg !144
  %13 = load i32, i32* %12, align 8, !dbg !144
  %14 = icmp eq i32 %13, 0, !dbg !145
  br i1 %14, label %15, label %17, !dbg !146

; <label>:15:                                     ; preds = %2
  %16 = load i32*, i32** %5, align 8, !dbg !147
  store i32 0, i32* %16, align 4, !dbg !149
  store i32 1, i32* %3, align 4, !dbg !150
  br label %56, !dbg !150

; <label>:17:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %7, metadata !151, metadata !114), !dbg !153
  %18 = call i64 @System_GetTimeMonotonic(), !dbg !154
  %19 = mul i64 %18, 10, !dbg !155
  store i64 %19, i64* %7, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %8, metadata !156, metadata !114), !dbg !157
  %20 = load i64, i64* %7, align 8, !dbg !158
  %21 = load %struct.MTimerSource*, %struct.MTimerSource** %6, align 8, !dbg !159
  %22 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %21, i32 0, i32 2, !dbg !160
  %23 = load i64, i64* %22, align 8, !dbg !160
  %24 = sub i64 %20, %23, !dbg !161
  store i64 %24, i64* %8, align 8, !dbg !162
  %25 = load i64, i64* %8, align 8, !dbg !163
  %26 = load %struct.MTimerSource*, %struct.MTimerSource** %6, align 8, !dbg !165
  %27 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %26, i32 0, i32 1, !dbg !166
  %28 = load i32, i32* %27, align 8, !dbg !166
  %29 = sext i32 %28 to i64, !dbg !165
  %30 = icmp uge i64 %25, %29, !dbg !167
  br i1 %30, label %31, label %36, !dbg !168

; <label>:31:                                     ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !169
  %33 = load %struct.MTimerSource*, %struct.MTimerSource** %6, align 8, !dbg !171
  %34 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %33, i32 0, i32 2, !dbg !172
  store i64 %32, i64* %34, align 8, !dbg !173
  %35 = load i32*, i32** %5, align 8, !dbg !174
  store i32 0, i32* %35, align 4, !dbg !175
  store i32 1, i32* %3, align 4, !dbg !176
  br label %56, !dbg !176

; <label>:36:                                     ; preds = %17
  %37 = load %struct.MTimerSource*, %struct.MTimerSource** %6, align 8, !dbg !177
  %38 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %37, i32 0, i32 1, !dbg !178
  %39 = load i32, i32* %38, align 8, !dbg !178
  %40 = sext i32 %39 to i64, !dbg !177
  %41 = load i64, i64* %8, align 8, !dbg !179
  %42 = sub i64 %40, %41, !dbg !180
  %43 = icmp ult i64 2147483647, %42, !dbg !181
  br i1 %43, label %44, label %45, !dbg !182

; <label>:44:                                     ; preds = %36
  br label %52, !dbg !183

; <label>:45:                                     ; preds = %36
  %46 = load %struct.MTimerSource*, %struct.MTimerSource** %6, align 8, !dbg !185
  %47 = getelementptr inbounds %struct.MTimerSource, %struct.MTimerSource* %46, i32 0, i32 1, !dbg !187
  %48 = load i32, i32* %47, align 8, !dbg !187
  %49 = sext i32 %48 to i64, !dbg !185
  %50 = load i64, i64* %8, align 8, !dbg !188
  %51 = sub i64 %49, %50, !dbg !189
  br label %52, !dbg !190

; <label>:52:                                     ; preds = %45, %44
  %53 = phi i64 [ 2147483647, %44 ], [ %51, %45 ], !dbg !191
  %54 = trunc i64 %53 to i32, !dbg !193
  %55 = load i32*, i32** %5, align 8, !dbg !194
  store i32 %54, i32* %55, align 4, !dbg !195
  store i32 0, i32* %3, align 4, !dbg !196
  br label %56, !dbg !196

; <label>:56:                                     ; preds = %52, %31, %15
  %57 = load i32, i32* %3, align 4, !dbg !197
  ret i32 %57, !dbg !197
}

; Function Attrs: nounwind uwtable
define internal i32 @MTimerSourceCheck(%struct._GSource*) #0 !dbg !198 {
  %2 = alloca %struct._GSource*, align 8
  %3 = alloca i32, align 4
  store %struct._GSource* %0, %struct._GSource** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %2, metadata !199, metadata !114), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %3, metadata !201, metadata !114), !dbg !202
  %4 = load %struct._GSource*, %struct._GSource** %2, align 8, !dbg !203
  %5 = call i32 @MTimerSourcePrepare(%struct._GSource* %4, i32* %3), !dbg !204
  ret i32 %5, !dbg !205
}

; Function Attrs: nounwind uwtable
define internal i32 @MTimerSourceDispatch(%struct._GSource*, i32 (i8*)*, i8*) #0 !dbg !206 {
  %4 = alloca %struct._GSource*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct._GSource* %0, %struct._GSource** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %4, metadata !207, metadata !114), !dbg !208
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %5, metadata !209, metadata !114), !dbg !210
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !211, metadata !114), !dbg !212
  %7 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !213
  %8 = icmp ne i32 (i8*)* %7, null, !dbg !214
  br i1 %8, label %9, label %13, !dbg !215

; <label>:9:                                      ; preds = %3
  %10 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !216
  %11 = load i8*, i8** %6, align 8, !dbg !218
  %12 = call i32 %10(i8* %11), !dbg !216
  br label %14, !dbg !219

; <label>:13:                                     ; preds = %3
  br label %14, !dbg !220

; <label>:14:                                     ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 0, %13 ], !dbg !222
  ret i32 %15, !dbg !224
}

; Function Attrs: nounwind uwtable
define internal void @MTimerSourceFinalize(%struct._GSource*) #0 !dbg !225 {
  %2 = alloca %struct._GSource*, align 8
  store %struct._GSource* %0, %struct._GSource** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %2, metadata !226, metadata !114), !dbg !227
  ret void, !dbg !228
}

declare %struct._GSource* @g_source_new(%struct._GSourceFuncs*, i32) #2

declare i64 @System_GetTimeMonotonic() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111}
!llvm.ident = !{!112}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !105)
!1 = !DIFile(filename: "libvmtools_la-monotonicTimer.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!2 = !{}
!3 = !{!4, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "MTimerSource", file: !6, line: 34, baseType: !7)
!6 = !DIFile(filename: "monotonicTimer.c", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MTimerSource", file: !6, line: 30, size: 896, align: 64, elements: !8)
!8 = !{!9, !98, !99}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !7, file: !6, line: 31, baseType: !10, size: 768, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !11, line: 64, baseType: !12)
!11 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !11, line: 171, size: 768, align: 64, elements: !13)
!13 = !{!14, !18, !42, !71, !74, !78, !79, !80, !81, !89, !90, !91, !94}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !12, file: !11, line: 174, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !16, line: 77, baseType: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !12, file: !11, line: 175, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !11, line: 77, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !11, line: 196, size: 192, align: 64, elements: !22)
!22 = !{!23, !27, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !21, file: !11, line: 198, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !15}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !21, file: !11, line: 199, baseType: !24, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !21, file: !11, line: 200, baseType: !29, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !15, !32, !33, !41}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !11, line: 155, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !15}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !16, line: 50, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !16, line: 49, baseType: !40)
!40 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !12, file: !11, line: 177, baseType: !43, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !11, line: 130, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !11, line: 214, size: 384, align: 64, elements: !47)
!47 = !{!48, !53, !57, !61, !65, !66}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !46, file: !11, line: 216, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!38, !32, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !46, file: !11, line: 218, baseType: !54, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!38, !32}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !46, file: !11, line: 219, baseType: !58, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!38, !32, !34, !15}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !46, file: !11, line: 222, baseType: !62, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !32}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !46, file: !11, line: 226, baseType: !34, size: 64, align: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !46, file: !11, line: 227, baseType: !67, size: 64, align: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !11, line: 212, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !12, file: !11, line: 178, baseType: !72, size: 32, align: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !16, line: 55, baseType: !73)
!73 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !12, file: !11, line: 180, baseType: !75, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !11, line: 48, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !11, line: 48, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !12, file: !11, line: 182, baseType: !39, size: 32, align: 32, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !11, line: 183, baseType: !72, size: 32, align: 32, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !12, file: !11, line: 184, baseType: !72, size: 32, align: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !12, file: !11, line: 186, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !84, line: 37, baseType: !85)
!84 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !84, line: 39, size: 128, align: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !85, file: !84, line: 41, baseType: !15, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !84, line: 42, baseType: !82, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !12, file: !11, line: 188, baseType: !32, size: 64, align: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 189, baseType: !32, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !11, line: 191, baseType: !92, size: 64, align: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !12, file: !11, line: 193, baseType: !95, size: 64, align: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !11, line: 65, baseType: !97)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !11, line: 65, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !7, file: !6, line: 32, baseType: !39, size: 32, align: 32, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !6, line: 33, baseType: !100, size: 64, align: 64, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !101, line: 171, baseType: !102)
!101 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !103, line: 55, baseType: !104)
!103 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1133")
!104 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!105 = !{!106}
!106 = distinct !DIGlobalVariable(name: "srcFuncs", scope: !107, file: !6, line: 171, type: !45, isLocal: true, isDefinition: true, variable: %struct._GSourceFuncs* @VMTools_CreateTimer.srcFuncs)
!107 = distinct !DISubprogram(name: "VMTools_CreateTimer", scope: !6, file: !6, line: 169, type: !108, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{!32, !39}
!110 = !{i32 2, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!113 = !DILocalVariable(name: "timeout", arg: 1, scope: !107, file: !6, line: 169, type: !39)
!114 = !DIExpression()
!115 = !DILocation(line: 169, column: 26, scope: !107)
!116 = !DILocalVariable(name: "ret", scope: !107, file: !6, line: 179, type: !4)
!117 = !DILocation(line: 179, column: 18, scope: !107)
!118 = !DILocation(line: 183, column: 27, scope: !107)
!119 = !DILocation(line: 183, column: 10, scope: !107)
!120 = !DILocation(line: 183, column: 8, scope: !107)
!121 = !DILocation(line: 184, column: 16, scope: !107)
!122 = !DILocation(line: 184, column: 42, scope: !107)
!123 = !DILocation(line: 184, column: 4, scope: !107)
!124 = !DILocation(line: 184, column: 9, scope: !107)
!125 = !DILocation(line: 184, column: 14, scope: !107)
!126 = !DILocation(line: 185, column: 19, scope: !107)
!127 = !DILocation(line: 185, column: 4, scope: !107)
!128 = !DILocation(line: 185, column: 9, scope: !107)
!129 = !DILocation(line: 185, column: 17, scope: !107)
!130 = !DILocation(line: 187, column: 12, scope: !107)
!131 = !DILocation(line: 187, column: 17, scope: !107)
!132 = !DILocation(line: 187, column: 4, scope: !107)
!133 = distinct !DISubprogram(name: "MTimerSourcePrepare", scope: !6, file: !6, line: 55, type: !50, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!134 = !DILocalVariable(name: "src", arg: 1, scope: !133, file: !6, line: 55, type: !32)
!135 = !DILocation(line: 55, column: 30, scope: !133)
!136 = !DILocalVariable(name: "timeout", arg: 2, scope: !133, file: !6, line: 56, type: !52)
!137 = !DILocation(line: 56, column: 27, scope: !133)
!138 = !DILocalVariable(name: "timer", scope: !133, file: !6, line: 58, type: !4)
!139 = !DILocation(line: 58, column: 18, scope: !133)
!140 = !DILocation(line: 58, column: 43, scope: !133)
!141 = !DILocation(line: 58, column: 26, scope: !133)
!142 = !DILocation(line: 60, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !133, file: !6, line: 60, column: 8)
!144 = !DILocation(line: 60, column: 15, scope: !143)
!145 = !DILocation(line: 60, column: 23, scope: !143)
!146 = !DILocation(line: 60, column: 8, scope: !133)
!147 = !DILocation(line: 61, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !6, line: 60, column: 29)
!149 = !DILocation(line: 61, column: 16, scope: !148)
!150 = !DILocation(line: 62, column: 7, scope: !148)
!151 = !DILocalVariable(name: "now", scope: !152, file: !6, line: 64, type: !100)
!152 = distinct !DILexicalBlock(scope: !143, file: !6, line: 63, column: 11)
!153 = !DILocation(line: 64, column: 17, scope: !152)
!154 = !DILocation(line: 64, column: 23, scope: !152)
!155 = !DILocation(line: 64, column: 49, scope: !152)
!156 = !DILocalVariable(name: "diff", scope: !152, file: !6, line: 65, type: !100)
!157 = !DILocation(line: 65, column: 17, scope: !152)
!158 = !DILocation(line: 69, column: 17, scope: !152)
!159 = !DILocation(line: 69, column: 23, scope: !152)
!160 = !DILocation(line: 69, column: 30, scope: !152)
!161 = !DILocation(line: 69, column: 21, scope: !152)
!162 = !DILocation(line: 69, column: 15, scope: !152)
!163 = !DILocation(line: 70, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !6, line: 70, column: 14)
!165 = !DILocation(line: 70, column: 22, scope: !164)
!166 = !DILocation(line: 70, column: 29, scope: !164)
!167 = !DILocation(line: 70, column: 19, scope: !164)
!168 = !DILocation(line: 70, column: 14, scope: !152)
!169 = !DILocation(line: 71, column: 27, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !6, line: 70, column: 38)
!171 = !DILocation(line: 71, column: 13, scope: !170)
!172 = !DILocation(line: 71, column: 20, scope: !170)
!173 = !DILocation(line: 71, column: 25, scope: !170)
!174 = !DILocation(line: 72, column: 14, scope: !170)
!175 = !DILocation(line: 72, column: 22, scope: !170)
!176 = !DILocation(line: 73, column: 13, scope: !170)
!177 = !DILocation(line: 76, column: 36, scope: !152)
!178 = !DILocation(line: 76, column: 43, scope: !152)
!179 = !DILocation(line: 76, column: 53, scope: !152)
!180 = !DILocation(line: 76, column: 51, scope: !152)
!181 = !DILocation(line: 76, column: 33, scope: !152)
!182 = !DILocation(line: 76, column: 19, scope: !152)
!183 = !DILocation(line: 76, column: 19, scope: !184)
!184 = !DILexicalBlockFile(scope: !152, file: !6, discriminator: 1)
!185 = !DILocation(line: 76, column: 78, scope: !186)
!186 = !DILexicalBlockFile(scope: !152, file: !6, discriminator: 2)
!187 = !DILocation(line: 76, column: 85, scope: !186)
!188 = !DILocation(line: 76, column: 95, scope: !186)
!189 = !DILocation(line: 76, column: 93, scope: !186)
!190 = !DILocation(line: 76, column: 19, scope: !186)
!191 = !DILocation(line: 76, column: 19, scope: !192)
!192 = !DILexicalBlockFile(scope: !152, file: !6, discriminator: 3)
!193 = !DILocation(line: 76, column: 18, scope: !192)
!194 = !DILocation(line: 76, column: 8, scope: !192)
!195 = !DILocation(line: 76, column: 16, scope: !192)
!196 = !DILocation(line: 77, column: 7, scope: !152)
!197 = !DILocation(line: 79, column: 1, scope: !133)
!198 = distinct !DISubprogram(name: "MTimerSourceCheck", scope: !6, file: !6, line: 96, type: !55, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!199 = !DILocalVariable(name: "src", arg: 1, scope: !198, file: !6, line: 96, type: !32)
!200 = !DILocation(line: 96, column: 28, scope: !198)
!201 = !DILocalVariable(name: "unused", scope: !198, file: !6, line: 98, type: !39)
!202 = !DILocation(line: 98, column: 9, scope: !198)
!203 = !DILocation(line: 99, column: 31, scope: !198)
!204 = !DILocation(line: 99, column: 11, scope: !198)
!205 = !DILocation(line: 99, column: 4, scope: !198)
!206 = distinct !DISubprogram(name: "MTimerSourceDispatch", scope: !6, file: !6, line: 119, type: !59, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!207 = !DILocalVariable(name: "src", arg: 1, scope: !206, file: !6, line: 119, type: !32)
!208 = !DILocation(line: 119, column: 31, scope: !206)
!209 = !DILocalVariable(name: "callback", arg: 2, scope: !206, file: !6, line: 120, type: !34)
!210 = !DILocation(line: 120, column: 34, scope: !206)
!211 = !DILocalVariable(name: "data", arg: 3, scope: !206, file: !6, line: 121, type: !15)
!212 = !DILocation(line: 121, column: 31, scope: !206)
!213 = !DILocation(line: 123, column: 12, scope: !206)
!214 = !DILocation(line: 123, column: 21, scope: !206)
!215 = !DILocation(line: 123, column: 11, scope: !206)
!216 = !DILocation(line: 123, column: 31, scope: !217)
!217 = !DILexicalBlockFile(scope: !206, file: !6, discriminator: 1)
!218 = !DILocation(line: 123, column: 40, scope: !217)
!219 = !DILocation(line: 123, column: 11, scope: !217)
!220 = !DILocation(line: 123, column: 11, scope: !221)
!221 = !DILexicalBlockFile(scope: !206, file: !6, discriminator: 2)
!222 = !DILocation(line: 123, column: 11, scope: !223)
!223 = !DILexicalBlockFile(scope: !206, file: !6, discriminator: 3)
!224 = !DILocation(line: 123, column: 4, scope: !223)
!225 = distinct !DISubprogram(name: "MTimerSourceFinalize", scope: !6, file: !6, line: 139, type: !63, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!226 = !DILocalVariable(name: "src", arg: 1, scope: !225, file: !6, line: 139, type: !32)
!227 = !DILocation(line: 139, column: 31, scope: !225)
!228 = !DILocation(line: 141, column: 1, scope: !225)
