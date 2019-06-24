; ModuleID = './stub-user-msg.o.i'
source_filename = "./stub-user-msg.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MsgList = type { %struct.MsgList*, i8*, i8*, %struct.MsgFmt_Arg*, i32 }
%struct.MsgFmt_Arg = type { i32, i32, %union.anon, %struct.anon, %union.anon.0 }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Msg_String = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"%s [STUB]: %s\0A\00", align 1
@__FUNCTION__.Msg_AppendMsgList = private unnamed_addr constant [18 x i8] c"Msg_AppendMsgList\00", align 1
@Msg_Append.buf = internal global [1000 x i8] zeroinitializer, align 16
@__FUNCTION__.Msg_Append = private unnamed_addr constant [11 x i8] c"Msg_Append\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"stub-user-msg.c\00", align 1
@Msg_Question.buf = internal global [1000 x i8] zeroinitializer, align 16
@__FUNCTION__.Msg_Question = private unnamed_addr constant [13 x i8] c"Msg_Question\00", align 1

; Function Attrs: nounwind uwtable
define void @Msg_AppendMsgList(%struct.MsgList*) #0 !dbg !46 {
  %2 = alloca %struct.MsgList*, align 8
  store %struct.MsgList* %0, %struct.MsgList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgList** %2, metadata !116, metadata !117), !dbg !118
  br label %3, !dbg !119

; <label>:3:                                      ; preds = %6, %1
  %4 = load %struct.MsgList*, %struct.MsgList** %2, align 8, !dbg !120
  %5 = icmp ne %struct.MsgList* %4, null, !dbg !122
  br i1 %5, label %6, label %13, !dbg !123

; <label>:6:                                      ; preds = %3
  %7 = load %struct.MsgList*, %struct.MsgList** %2, align 8, !dbg !124
  %8 = getelementptr inbounds %struct.MsgList, %struct.MsgList* %7, i32 0, i32 1, !dbg !126
  %9 = load i8*, i8** %8, align 8, !dbg !126
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.Msg_AppendMsgList, i32 0, i32 0), i8* %9), !dbg !127
  %10 = load %struct.MsgList*, %struct.MsgList** %2, align 8, !dbg !128
  %11 = getelementptr inbounds %struct.MsgList, %struct.MsgList* %10, i32 0, i32 0, !dbg !129
  %12 = load %struct.MsgList*, %struct.MsgList** %11, align 8, !dbg !129
  store %struct.MsgList* %12, %struct.MsgList** %2, align 8, !dbg !130
  br label %3, !dbg !131, !llvm.loop !133

; <label>:13:                                     ; preds = %3
  ret void, !dbg !134
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Warning(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @Msg_Append(i8*, ...) #0 !dbg !21 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !135, metadata !117), !dbg !136
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !137, metadata !117), !dbg !151
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !152
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !152
  call void @llvm.va_start(i8* %5), !dbg !152
  %6 = load i8*, i8** %2, align 8, !dbg !153
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !154
  %8 = call i32 @Str_Vsnprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @Msg_Append.buf, i32 0, i32 0), i64 1000, i8* %6, %struct.__va_list_tag* %7), !dbg !155
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !156
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !156
  call void @llvm.va_end(i8* %10), !dbg !156
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.Msg_Append, i32 0, i32 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @Msg_Append.buf, i32 0, i32 0)), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define void @Msg_Post(i32, i8*, ...) #0 !dbg !159 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !163, metadata !117), !dbg !164
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !117), !dbg !166
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 63) #5, !dbg !167
  unreachable, !dbg !167
                                                  ; No predecessors!
  ret void, !dbg !168
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @Msg_Question(%struct.Msg_String*, i32, i8*, ...) #0 !dbg !33 {
  %4 = alloca %struct.Msg_String*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.Msg_String* %0, %struct.Msg_String** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Msg_String** %4, metadata !169, metadata !117), !dbg !170
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !171, metadata !117), !dbg !172
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !173, metadata !117), !dbg !174
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !175, metadata !117), !dbg !176
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !177
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !177
  call void @llvm.va_start(i8* %9), !dbg !177
  %10 = load i8*, i8** %6, align 8, !dbg !178
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !179
  %12 = call i32 @Str_Vsnprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @Msg_Question.buf, i32 0, i32 0), i64 1000, i8* %10, %struct.__va_list_tag* %11), !dbg !180
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !181
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !181
  call void @llvm.va_end(i8* %14), !dbg !181
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Msg_Question, i32 0, i32 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @Msg_Question.buf, i32 0, i32 0)), !dbg !182
  %15 = load i32, i32* %5, align 4, !dbg !183
  ret i32 %15, !dbg !184
}

; Function Attrs: nounwind uwtable
define void @Msg_Reset(i8 signext) #0 !dbg !185 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !189, metadata !117), !dbg !190
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 89) #5, !dbg !191
  unreachable, !dbg !191
                                                  ; No predecessors!
  ret void, !dbg !192
}

; Function Attrs: nounwind uwtable
define i8* @Msg_FormatSizeInBytes(i64) #0 !dbg !193 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !196, metadata !117), !dbg !197
  ret i8* null, !dbg !198
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, globals: !19)
!1 = !DIFile(filename: "stub-user-msg.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MsgSeverity", file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msg.h", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !DIEnumerator(name: "MSG_INFO", value: 0)
!7 = !DIEnumerator(name: "MSG_INFO_TIMEOUT", value: 1)
!8 = !DIEnumerator(name: "MSG_WARNING", value: 2)
!9 = !DIEnumerator(name: "MSG_ERROR", value: 3)
!10 = !DIEnumerator(name: "MSG_CONFIG_EDITOR", value: 4)
!11 = !DIEnumerator(name: "MSG_WEB_LINK_GET_LICENSE_ERROR", value: 5)
!12 = !DIEnumerator(name: "MSG_WEB_LINK_EXTEND_LICENSE_ERROR", value: 6)
!13 = !DIEnumerator(name: "MSG_WEB_LINK_EXTEND_LICENSE_INFO", value: 7)
!14 = !DIEnumerator(name: "MSG_WEB_LINK_HOME_PAGE_INFO", value: 8)
!15 = !DIEnumerator(name: "MSG_NUM_SEVERITIES", value: 9)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !32}
!20 = distinct !DIGlobalVariable(name: "buf", scope: !21, file: !22, line: 48, type: !29, isLocal: true, isDefinition: true, variable: [1000 x i8]* @Msg_Append.buf)
!21 = distinct !DISubprogram(name: "Msg_Append", scope: !22, file: !22, line: 45, type: !23, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!22 = !DIFile(filename: "stub-user-msg.c", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, null}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !{}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8000, align: 8, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 1000)
!32 = distinct !DIGlobalVariable(name: "buf", scope: !33, file: !22, line: 73, type: !29, isLocal: true, isDefinition: true, variable: [1000 x i8]* @Msg_Question.buf)
!33 = distinct !DISubprogram(name: "Msg_Question", scope: !22, file: !22, line: 68, type: !34, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!34 = !DISubroutineType(types: !35)
!35 = !{!18, !36, !42, !25, null}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Msg_String", file: !4, line: 56, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Msg_String", file: !4, line: 54, size: 64, align: 64, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "idFmt", scope: !39, file: !4, line: 55, baseType: !25, size: 64, align: 64)
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!46 = distinct !DISubprogram(name: "Msg_AppendMsgList", scope: !22, file: !22, line: 35, type: !47, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgList", file: !52, line: 48, baseType: !53)
!52 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msgList.h", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MsgList", file: !52, line: 49, size: 320, align: 64, elements: !54)
!54 = !{!55, !57, !59, !60, !115}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !52, line: 50, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !53, file: !52, line: 51, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !53, file: !52, line: 52, baseType: !58, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !53, file: !52, line: 53, baseType: !61, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgFmt_Arg", file: !63, line: 128, baseType: !64)
!63 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msgfmt.h", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MsgFmt_Arg", file: !63, line: 102, size: 256, align: 64, elements: !65)
!65 = !{!66, !71, !72, !104, !109}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !63, line: 103, baseType: !67, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !68, line: 174, baseType: !69)
!68 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !70, line: 38, baseType: !42)
!70 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !64, file: !63, line: 104, baseType: !67, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !64, file: !63, line: 118, baseType: !73, size: 64, align: 64, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 105, size: 64, align: 64, elements: !74)
!74 = !{!75, !76, !80, !83, !87, !89, !90, !95, !100, !102, !103}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "signed32", scope: !73, file: !63, line: 106, baseType: !67, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "signed64", scope: !73, file: !63, line: 107, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !68, line: 172, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !70, line: 40, baseType: !79)
!79 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned32", scope: !73, file: !63, line: 108, baseType: !81, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !68, line: 173, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 51, baseType: !18)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned64", scope: !73, file: !63, line: 109, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !68, line: 171, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !70, line: 55, baseType: !86)
!86 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "float64", scope: !73, file: !63, line: 110, baseType: !88, size: 64, align: 64)
!88 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "string8char", scope: !73, file: !63, line: 111, baseType: !58, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "string8", scope: !73, file: !63, line: 112, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8", file: !68, line: 178, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !70, line: 36, baseType: !94)
!94 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "string16", scope: !73, file: !63, line: 113, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !68, line: 176, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !70, line: 37, baseType: !99)
!99 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "string32", scope: !73, file: !63, line: 114, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !73, file: !63, line: 115, baseType: !67, size: 32, align: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !73, file: !63, line: 117, baseType: !17, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !64, file: !63, line: 122, baseType: !105, size: 64, align: 32, offset: 128)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !64, file: !63, line: 119, size: 64, align: 32, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !105, file: !63, line: 120, baseType: !67, size: 32, align: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !105, file: !63, line: 121, baseType: !67, size: 32, align: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !64, file: !63, line: 127, baseType: !110, size: 64, align: 64, offset: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 123, size: 64, align: 64, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !110, file: !63, line: 124, baseType: !67, size: 32, align: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "localString", scope: !110, file: !63, line: 125, baseType: !58, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !110, file: !63, line: 126, baseType: !84, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "numArgs", scope: !53, file: !52, line: 54, baseType: !42, size: 32, align: 32, offset: 256)
!116 = !DILocalVariable(name: "msgs", arg: 1, scope: !46, file: !22, line: 35, type: !49)
!117 = !DIExpression()
!118 = !DILocation(line: 35, column: 34, scope: !46)
!119 = !DILocation(line: 37, column: 4, scope: !46)
!120 = !DILocation(line: 37, column: 11, scope: !121)
!121 = !DILexicalBlockFile(scope: !46, file: !22, discriminator: 1)
!122 = !DILocation(line: 37, column: 16, scope: !121)
!123 = !DILocation(line: 37, column: 4, scope: !121)
!124 = !DILocation(line: 38, column: 48, scope: !125)
!125 = distinct !DILexicalBlock(scope: !46, file: !22, line: 37, column: 24)
!126 = !DILocation(line: 38, column: 54, scope: !125)
!127 = !DILocation(line: 38, column: 7, scope: !125)
!128 = !DILocation(line: 39, column: 14, scope: !125)
!129 = !DILocation(line: 39, column: 20, scope: !125)
!130 = !DILocation(line: 39, column: 12, scope: !125)
!131 = !DILocation(line: 37, column: 4, scope: !132)
!132 = !DILexicalBlockFile(scope: !46, file: !22, discriminator: 2)
!133 = distinct !{!133, !119}
!134 = !DILocation(line: 41, column: 1, scope: !46)
!135 = !DILocalVariable(name: "fmt", arg: 1, scope: !21, file: !22, line: 45, type: !25)
!136 = !DILocation(line: 45, column: 24, scope: !21)
!137 = !DILocalVariable(name: "args", scope: !21, file: !22, line: 50, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !139, line: 98, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line934")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !139, line: 40, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 50, baseType: !142)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, align: 64, elements: !149)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 50, size: 192, align: 64, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !143, file: !1, line: 50, baseType: !18, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !143, file: !1, line: 50, baseType: !18, size: 32, align: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !143, file: !1, line: 50, baseType: !17, size: 64, align: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !143, file: !1, line: 50, baseType: !17, size: 64, align: 64, offset: 128)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DILocation(line: 50, column: 12, scope: !21)
!152 = !DILocation(line: 51, column: 3, scope: !21)
!153 = !DILocation(line: 52, column: 35, scope: !21)
!154 = !DILocation(line: 52, column: 40, scope: !21)
!155 = !DILocation(line: 52, column: 4, scope: !21)
!156 = !DILocation(line: 53, column: 3, scope: !21)
!157 = !DILocation(line: 55, column: 4, scope: !21)
!158 = !DILocation(line: 56, column: 1, scope: !21)
!159 = distinct !DISubprogram(name: "Msg_Post", scope: !22, file: !22, line: 60, type: !160, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !25, null}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgSeverity", file: !4, line: 69, baseType: !3)
!163 = !DILocalVariable(name: "severity", arg: 1, scope: !159, file: !22, line: 60, type: !162)
!164 = !DILocation(line: 60, column: 22, scope: !159)
!165 = !DILocalVariable(name: "idFmt", arg: 2, scope: !159, file: !22, line: 61, type: !25)
!166 = !DILocation(line: 61, column: 22, scope: !159)
!167 = !DILocation(line: 63, column: 4, scope: !159)
!168 = !DILocation(line: 64, column: 1, scope: !159)
!169 = !DILocalVariable(name: "buttons", arg: 1, scope: !33, file: !22, line: 68, type: !36)
!170 = !DILocation(line: 68, column: 32, scope: !33)
!171 = !DILocalVariable(name: "defaultAnswer", arg: 2, scope: !33, file: !22, line: 69, type: !42)
!172 = !DILocation(line: 69, column: 18, scope: !33)
!173 = !DILocalVariable(name: "fmt", arg: 3, scope: !33, file: !22, line: 70, type: !25)
!174 = !DILocation(line: 70, column: 26, scope: !33)
!175 = !DILocalVariable(name: "args", scope: !33, file: !22, line: 75, type: !138)
!176 = !DILocation(line: 75, column: 12, scope: !33)
!177 = !DILocation(line: 76, column: 3, scope: !33)
!178 = !DILocation(line: 77, column: 35, scope: !33)
!179 = !DILocation(line: 77, column: 40, scope: !33)
!180 = !DILocation(line: 77, column: 4, scope: !33)
!181 = !DILocation(line: 78, column: 3, scope: !33)
!182 = !DILocation(line: 80, column: 4, scope: !33)
!183 = !DILocation(line: 82, column: 26, scope: !33)
!184 = !DILocation(line: 82, column: 4, scope: !33)
!185 = distinct !DISubprogram(name: "Msg_Reset", scope: !22, file: !22, line: 87, type: !186, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !68, line: 230, baseType: !27)
!189 = !DILocalVariable(name: "log", arg: 1, scope: !185, file: !22, line: 87, type: !188)
!190 = !DILocation(line: 87, column: 16, scope: !185)
!191 = !DILocation(line: 89, column: 4, scope: !185)
!192 = !DILocation(line: 90, column: 1, scope: !185)
!193 = distinct !DISubprogram(name: "Msg_FormatSizeInBytes", scope: !22, file: !22, line: 93, type: !194, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!194 = !DISubroutineType(types: !195)
!195 = !{!58, !84}
!196 = !DILocalVariable(name: "size", arg: 1, scope: !193, file: !22, line: 93, type: !84)
!197 = !DILocation(line: 93, column: 30, scope: !193)
!198 = !DILocation(line: 95, column: 4, scope: !193)
