; ModuleID = './libvmbackup_la-vmBackupSignals.o.i'
source_filename = "./libvmbackup_la-vmBackupSignals.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GCClosure = type { %struct._GClosure, i8* }

@__func__.g_cclosure_user_marshal_VOID__POINTER_BOOLEAN = private unnamed_addr constant [46 x i8] c"g_cclosure_user_marshal_VOID__POINTER_BOOLEAN\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"n_param_values == 3\00", align 1

; Function Attrs: nounwind uwtable
define void @g_cclosure_user_marshal_VOID__POINTER_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #0 !dbg !93 {
  %7 = alloca %struct._GClosure*, align 8
  %8 = alloca %struct._GValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GValue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca void (i8*, i8*, i32, i8*)*, align 8
  %14 = alloca %struct._GCClosure*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct._GClosure* %0, %struct._GClosure** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GClosure** %7, metadata !101, metadata !102), !dbg !103
  store %struct._GValue* %1, %struct._GValue** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %8, metadata !104, metadata !102), !dbg !105
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !106, metadata !102), !dbg !107
  store %struct._GValue* %3, %struct._GValue** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %10, metadata !108, metadata !102), !dbg !109
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !110, metadata !102), !dbg !111
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !112, metadata !102), !dbg !113
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i32, i8*)** %13, metadata !114, metadata !102), !dbg !115
  call void @llvm.dbg.declare(metadata %struct._GCClosure** %14, metadata !116, metadata !102), !dbg !117
  %17 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !118
  %18 = bitcast %struct._GClosure* %17 to %struct._GCClosure*, !dbg !119
  store %struct._GCClosure* %18, %struct._GCClosure** %14, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %15, metadata !120, metadata !102), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %16, metadata !122, metadata !102), !dbg !123
  br label %19, !dbg !124, !llvm.loop !125

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %9, align 4, !dbg !126
  %21 = icmp eq i32 %20, 3, !dbg !130
  br i1 %21, label %22, label %23, !dbg !126

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !131

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.g_cclosure_user_marshal_VOID__POINTER_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)), !dbg !134
  br label %73, !dbg !137

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !138

; <label>:25:                                     ; preds = %24
  %26 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !140
  %27 = bitcast %struct._GClosure* %26 to i32*, !dbg !142
  %28 = load volatile i32, i32* %27, align 8, !dbg !142
  %29 = lshr i32 %28, 29, !dbg !142
  %30 = and i32 %29, 1, !dbg !142
  %31 = icmp ne i32 %30, 0, !dbg !143
  br i1 %31, label %32, label %39, !dbg !144

; <label>:32:                                     ; preds = %25
  %33 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !145
  %34 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %33, i32 0, i32 2, !dbg !147
  %35 = load i8*, i8** %34, align 8, !dbg !147
  store i8* %35, i8** %15, align 8, !dbg !148
  %36 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !149
  %37 = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i64 0, !dbg !150
  %38 = call i8* @g_value_peek_pointer(%struct._GValue* %37), !dbg !151
  store i8* %38, i8** %16, align 8, !dbg !152
  br label %46, !dbg !153

; <label>:39:                                     ; preds = %25
  %40 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !154
  %41 = getelementptr inbounds %struct._GValue, %struct._GValue* %40, i64 0, !dbg !156
  %42 = call i8* @g_value_peek_pointer(%struct._GValue* %41), !dbg !157
  store i8* %42, i8** %15, align 8, !dbg !158
  %43 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !159
  %44 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %43, i32 0, i32 2, !dbg !160
  %45 = load i8*, i8** %44, align 8, !dbg !160
  store i8* %45, i8** %16, align 8, !dbg !161
  br label %46

; <label>:46:                                     ; preds = %39, %32
  %47 = load i8*, i8** %12, align 8, !dbg !162
  %48 = icmp ne i8* %47, null, !dbg !162
  br i1 %48, label %49, label %51, !dbg !162

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %12, align 8, !dbg !163
  br label %55, !dbg !165

; <label>:51:                                     ; preds = %46
  %52 = load %struct._GCClosure*, %struct._GCClosure** %14, align 8, !dbg !166
  %53 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %52, i32 0, i32 1, !dbg !168
  %54 = load i8*, i8** %53, align 8, !dbg !168
  br label %55, !dbg !169

; <label>:55:                                     ; preds = %51, %49
  %56 = phi i8* [ %50, %49 ], [ %54, %51 ], !dbg !170
  %57 = bitcast i8* %56 to void (i8*, i8*, i32, i8*)*, !dbg !172
  store void (i8*, i8*, i32, i8*)* %57, void (i8*, i8*, i32, i8*)** %13, align 8, !dbg !173
  %58 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** %13, align 8, !dbg !174
  %59 = load i8*, i8** %15, align 8, !dbg !175
  %60 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !176
  %61 = getelementptr inbounds %struct._GValue, %struct._GValue* %60, i64 1, !dbg !177
  %62 = getelementptr inbounds %struct._GValue, %struct._GValue* %61, i32 0, i32 1, !dbg !178
  %63 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %62, i64 0, i64 0, !dbg !179
  %64 = bitcast %union.anon* %63 to i8**, !dbg !180
  %65 = load i8*, i8** %64, align 8, !dbg !180
  %66 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !181
  %67 = getelementptr inbounds %struct._GValue, %struct._GValue* %66, i64 2, !dbg !182
  %68 = getelementptr inbounds %struct._GValue, %struct._GValue* %67, i32 0, i32 1, !dbg !183
  %69 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %68, i64 0, i64 0, !dbg !184
  %70 = bitcast %union.anon* %69 to i32*, !dbg !185
  %71 = load i32, i32* %70, align 8, !dbg !185
  %72 = load i8*, i8** %16, align 8, !dbg !186
  call void %58(i8* %59, i8* %65, i32 %71, i8* %72), !dbg !174
  br label %73, !dbg !187

; <label>:73:                                     ; preds = %55, %23
  ret void, !dbg !188
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_value_peek_pointer(%struct._GValue*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99}
!llvm.ident = !{!100}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "libvmbackup_la-vmBackupSignals.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!2 = !{}
!3 = !{!4, !86, !89, !31, !91}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCClosure", file: !6, line: 157, baseType: !7)
!6 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gclosure.h", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GCClosure", file: !6, line: 216, size: 320, align: 64, elements: !8)
!8 = !{!9, !85}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !7, file: !6, line: 218, baseType: !10, size: 256, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClosure", file: !6, line: 74, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GClosure", file: !6, line: 175, size: 256, align: 64, elements: !12)
!12 = !{!13, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !73, !74}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !11, file: !6, line: 178, baseType: !14, size: 15, align: 32, flags: DIFlagBitField, extraData: i64 0)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !16, line: 55, baseType: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!17 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "meta_marshal_nouse", scope: !11, file: !6, line: 181, baseType: !14, size: 1, align: 32, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n_guards", scope: !11, file: !6, line: 182, baseType: !14, size: 1, align: 32, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "n_fnotifiers", scope: !11, file: !6, line: 183, baseType: !14, size: 2, align: 32, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n_inotifiers", scope: !11, file: !6, line: 184, baseType: !14, size: 8, align: 32, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "in_inotify", scope: !11, file: !6, line: 185, baseType: !14, size: 1, align: 32, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "floating", scope: !11, file: !6, line: 186, baseType: !14, size: 1, align: 32, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "derivative_flag", scope: !11, file: !6, line: 188, baseType: !14, size: 1, align: 32, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "in_marshal", scope: !11, file: !6, line: 190, baseType: !14, size: 1, align: 32, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "is_invalid", scope: !11, file: !6, line: 191, baseType: !14, size: 1, align: 32, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "marshal", scope: !11, file: !6, line: 193, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32, !15, !71, !67, !67}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GValue", file: !34, line: 386, baseType: !35)
!34 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gtype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GValue", file: !36, line: 106, size: 192, align: 64, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gvalue.h", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!37 = !{!38, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !35, file: !36, line: 109, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "GType", file: !34, line: 382, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !41, line: 66, baseType: !42)
!41 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!42 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !36, line: 122, baseType: !44, size: 128, align: 64, offset: 64)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 64, elements: !69)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 112, size: 64, align: 64, elements: !46)
!46 = !{!47, !50, !51, !54, !56, !58, !60, !63, !66}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !45, file: !36, line: 113, baseType: !48, size: 32, align: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !16, line: 49, baseType: !49)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "v_uint", scope: !45, file: !36, line: 114, baseType: !15, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "v_long", scope: !45, file: !36, line: 115, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !16, line: 48, baseType: !53)
!53 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "v_ulong", scope: !45, file: !36, line: 116, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !16, line: 54, baseType: !42)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !45, file: !36, line: 117, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !41, line: 51, baseType: !53)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "v_uint64", scope: !45, file: !36, line: 118, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !41, line: 52, baseType: !42)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !45, file: !36, line: 119, baseType: !61, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfloat", file: !16, line: 57, baseType: !62)
!62 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "v_double", scope: !45, file: !36, line: 120, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !16, line: 58, baseType: !65)
!65 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "v_pointer", scope: !45, file: !36, line: 121, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !16, line: 77, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!69 = !{!70}
!70 = !DISubrange(count: 2)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !11, file: !6, line: 199, baseType: !67, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !11, file: !6, line: 201, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClosureNotifyData", file: !6, line: 75, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GClosureNotifyData", file: !6, line: 161, size: 128, align: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !77, file: !6, line: 163, baseType: !67, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !77, file: !6, line: 164, baseType: !81, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClosureNotify", file: !6, line: 95, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !67, !31}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !7, file: !6, line: 219, baseType: !67, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !16, line: 46, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMarshalFunc_VOID__POINTER_BOOLEAN", scope: !93, file: !92, line: 61, baseType: !94)
!92 = !DIFile(filename: "vmBackupSignals.c", directory: "/home/lichi/Desktop/open-vm-tools/line1605")
!93 = distinct !DISubprogram(name: "g_cclosure_user_marshal_VOID__POINTER_BOOLEAN", scope: !92, file: !92, line: 54, type: !29, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !67, !67, !97, !67}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !16, line: 50, baseType: !48)
!98 = !{i32 2, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!101 = !DILocalVariable(name: "closure", arg: 1, scope: !93, file: !92, line: 54, type: !31)
!102 = !DIExpression()
!103 = !DILocation(line: 54, column: 58, scope: !93)
!104 = !DILocalVariable(name: "return_value", arg: 2, scope: !93, file: !92, line: 55, type: !32)
!105 = !DILocation(line: 55, column: 56, scope: !93)
!106 = !DILocalVariable(name: "n_param_values", arg: 3, scope: !93, file: !92, line: 56, type: !15)
!107 = !DILocation(line: 56, column: 54, scope: !93)
!108 = !DILocalVariable(name: "param_values", arg: 4, scope: !93, file: !92, line: 57, type: !71)
!109 = !DILocation(line: 57, column: 62, scope: !93)
!110 = !DILocalVariable(name: "invocation_hint", arg: 5, scope: !93, file: !92, line: 58, type: !67)
!111 = !DILocation(line: 58, column: 57, scope: !93)
!112 = !DILocalVariable(name: "marshal_data", arg: 6, scope: !93, file: !92, line: 59, type: !67)
!113 = !DILocation(line: 59, column: 57, scope: !93)
!114 = !DILocalVariable(name: "callback", scope: !93, file: !92, line: 65, type: !91)
!115 = !DILocation(line: 65, column: 38, scope: !93)
!116 = !DILocalVariable(name: "cc", scope: !93, file: !92, line: 66, type: !4)
!117 = !DILocation(line: 66, column: 14, scope: !93)
!118 = !DILocation(line: 66, column: 32, scope: !93)
!119 = !DILocation(line: 66, column: 19, scope: !93)
!120 = !DILocalVariable(name: "data1", scope: !93, file: !92, line: 67, type: !67)
!121 = !DILocation(line: 67, column: 12, scope: !93)
!122 = !DILocalVariable(name: "data2", scope: !93, file: !92, line: 67, type: !67)
!123 = !DILocation(line: 67, column: 19, scope: !93)
!124 = !DILocation(line: 69, column: 3, scope: !93)
!125 = distinct !{!125, !124}
!126 = !DILocation(line: 69, column: 11, scope: !127)
!127 = !DILexicalBlockFile(scope: !128, file: !92, discriminator: 1)
!128 = distinct !DILexicalBlock(scope: !129, file: !92, line: 69, column: 11)
!129 = distinct !DILexicalBlock(scope: !93, file: !92, line: 69, column: 5)
!130 = !DILocation(line: 69, column: 26, scope: !127)
!131 = !DILocation(line: 69, column: 34, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !92, discriminator: 2)
!133 = distinct !DILexicalBlock(scope: !128, file: !92, line: 69, column: 32)
!134 = !DILocation(line: 69, column: 43, scope: !135)
!135 = !DILexicalBlockFile(scope: !136, file: !92, discriminator: 3)
!136 = distinct !DILexicalBlock(scope: !128, file: !92, line: 69, column: 41)
!137 = !DILocation(line: 69, column: 135, scope: !135)
!138 = !DILocation(line: 69, column: 146, scope: !139)
!139 = !DILexicalBlockFile(scope: !129, file: !92, discriminator: 4)
!140 = !DILocation(line: 71, column: 22, scope: !141)
!141 = distinct !DILexicalBlock(scope: !93, file: !92, line: 71, column: 7)
!142 = !DILocation(line: 71, column: 33, scope: !141)
!143 = !DILocation(line: 71, column: 7, scope: !141)
!144 = !DILocation(line: 71, column: 7, scope: !93)
!145 = !DILocation(line: 73, column: 15, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !92, line: 72, column: 5)
!147 = !DILocation(line: 73, column: 24, scope: !146)
!148 = !DILocation(line: 73, column: 13, scope: !146)
!149 = !DILocation(line: 74, column: 37, scope: !146)
!150 = !DILocation(line: 74, column: 50, scope: !146)
!151 = !DILocation(line: 74, column: 15, scope: !146)
!152 = !DILocation(line: 74, column: 13, scope: !146)
!153 = !DILocation(line: 75, column: 5, scope: !146)
!154 = !DILocation(line: 78, column: 37, scope: !155)
!155 = distinct !DILexicalBlock(scope: !141, file: !92, line: 77, column: 5)
!156 = !DILocation(line: 78, column: 50, scope: !155)
!157 = !DILocation(line: 78, column: 15, scope: !155)
!158 = !DILocation(line: 78, column: 13, scope: !155)
!159 = !DILocation(line: 79, column: 15, scope: !155)
!160 = !DILocation(line: 79, column: 24, scope: !155)
!161 = !DILocation(line: 79, column: 13, scope: !155)
!162 = !DILocation(line: 81, column: 52, scope: !93)
!163 = !DILocation(line: 81, column: 67, scope: !164)
!164 = !DILexicalBlockFile(scope: !93, file: !92, discriminator: 1)
!165 = !DILocation(line: 81, column: 52, scope: !164)
!166 = !DILocation(line: 81, column: 82, scope: !167)
!167 = !DILexicalBlockFile(scope: !93, file: !92, discriminator: 2)
!168 = !DILocation(line: 81, column: 86, scope: !167)
!169 = !DILocation(line: 81, column: 52, scope: !167)
!170 = !DILocation(line: 81, column: 52, scope: !171)
!171 = !DILexicalBlockFile(scope: !93, file: !92, discriminator: 3)
!172 = !DILocation(line: 81, column: 14, scope: !171)
!173 = !DILocation(line: 81, column: 12, scope: !171)
!174 = !DILocation(line: 83, column: 3, scope: !93)
!175 = !DILocation(line: 83, column: 13, scope: !93)
!176 = !DILocation(line: 84, column: 14, scope: !93)
!177 = !DILocation(line: 84, column: 27, scope: !93)
!178 = !DILocation(line: 84, column: 33, scope: !93)
!179 = !DILocation(line: 84, column: 13, scope: !93)
!180 = !DILocation(line: 84, column: 41, scope: !93)
!181 = !DILocation(line: 85, column: 14, scope: !93)
!182 = !DILocation(line: 85, column: 27, scope: !93)
!183 = !DILocation(line: 85, column: 33, scope: !93)
!184 = !DILocation(line: 85, column: 13, scope: !93)
!185 = !DILocation(line: 85, column: 41, scope: !93)
!186 = !DILocation(line: 86, column: 13, scope: !93)
!187 = !DILocation(line: 87, column: 1, scope: !93)
!188 = !DILocation(line: 87, column: 1, scope: !164)
