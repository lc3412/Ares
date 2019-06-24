; ModuleID = './[inter]lib--dpkg--report.o.i'
source_filename = "./[inter]lib--dpkg--report.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@piped_mode = internal global i32 1, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s%s:%s %s%s:%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\1B[1;33m\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@warning_printer_func = internal global void (i8*, i8*)* @dpkg_warning_printer, align 8
@warning_printer_data = internal global i8* null, align 8
@warn_count = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%s%s:%s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1

; Function Attrs: nounwind uwtable
define void @dpkg_set_report_piped_mode(i32) #0 !dbg !22 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !25, metadata !26), !dbg !27
  %3 = load i32, i32* %2, align 4, !dbg !28
  store i32 %3, i32* @piped_mode, align 4, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @dpkg_set_report_buffer(%struct._IO_FILE*) #0 !dbg !31 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !94, metadata !26), !dbg !95
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !96
  %4 = call i32 @fileno(%struct._IO_FILE* %3) #5, !dbg !98
  %5 = call i32 @isatty(i32 %4) #5, !dbg !99
  %6 = icmp ne i32 %5, 0, !dbg !101
  br i1 %6, label %7, label %10, !dbg !102

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !103
  %9 = call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 2, i64 0) #5, !dbg !104
  br label %14, !dbg !104

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !105
  %12 = load i32, i32* @piped_mode, align 4, !dbg !106
  %13 = call i32 @setvbuf(%struct._IO_FILE* %11, i8* null, i32 %12, i64 0) #5, !dbg !107
  br label %14

; <label>:14:                                     ; preds = %10, %7
  ret void, !dbg !108
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define void @dpkg_warning_printer(i8*, i8*) #0 !dbg !109 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !110, metadata !26), !dbg !111
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !112, metadata !26), !dbg !113
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !114
  %6 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !115
  %7 = call i8* @dpkg_get_progname(), !dbg !116
  %8 = call i8* @color_reset(), !dbg !118
  %9 = call i8* @color_get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !120
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !121
  %11 = call i8* @color_reset(), !dbg !122
  %12 = load i8*, i8** %3, align 8, !dbg !123
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12), !dbg !124
  ret void, !dbg !125
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @color_get(i8*) #3

declare i8* @dpkg_get_progname() #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @color_reset() #4 !dbg !126 {
  %1 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !130
  ret i8* %1, !dbg !131
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dpkg_set_warning_printer(void (i8*, i8*)*, i8*) #0 !dbg !132 {
  %3 = alloca void (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store void (i8*, i8*)* %0, void (i8*, i8*)** %3, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %3, metadata !135, metadata !26), !dbg !136
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !137, metadata !26), !dbg !138
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %3, align 8, !dbg !139
  store void (i8*, i8*)* %5, void (i8*, i8*)** @warning_printer_func, align 8, !dbg !140
  %6 = load i8*, i8** %4, align 8, !dbg !141
  store i8* %6, i8** @warning_printer_data, align 8, !dbg !142
  ret void, !dbg !143
}

; Function Attrs: nounwind uwtable
define i32 @warning_get_count() #0 !dbg !144 {
  %1 = load i32, i32* @warn_count, align 4, !dbg !147
  ret i32 %1, !dbg !148
}

; Function Attrs: nounwind uwtable
define void @warningv(i8*, %struct.__va_list_tag*) #0 !dbg !149 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !160, metadata !26), !dbg !161
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %4, metadata !162, metadata !26), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %5, metadata !164, metadata !26), !dbg !165
  store i8* null, i8** %5, align 8, !dbg !165
  %6 = load i32, i32* @warn_count, align 4, !dbg !166
  %7 = add nsw i32 %6, 1, !dbg !166
  store i32 %7, i32* @warn_count, align 4, !dbg !166
  %8 = load i8*, i8** %3, align 8, !dbg !167
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !168
  %10 = call i32 @m_vasprintf(i8** %5, i8* %8, %struct.__va_list_tag* %9), !dbg !169
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** @warning_printer_func, align 8, !dbg !170
  %12 = load i8*, i8** %5, align 8, !dbg !171
  %13 = load i8*, i8** @warning_printer_data, align 8, !dbg !172
  call void %11(i8* %12, i8* %13), !dbg !170
  %14 = load i8*, i8** %5, align 8, !dbg !173
  call void @free(i8* %14) #5, !dbg !174
  ret void, !dbg !175
}

declare i32 @m_vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @warning(i8*, ...) #0 !dbg !176 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !179, metadata !26), !dbg !180
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !181, metadata !26), !dbg !187
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !188
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !188
  call void @llvm.va_start(i8* %5), !dbg !188
  %6 = load i8*, i8** %2, align 8, !dbg !189
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !190
  call void @warningv(i8* %6, %struct.__va_list_tag* %7), !dbg !191
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !192
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !192
  call void @llvm.va_end(i8* %9), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @notice(i8*, ...) #0 !dbg !194 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !195, metadata !26), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %3, metadata !197, metadata !26), !dbg !198
  store i8* null, i8** %3, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !199, metadata !26), !dbg !200
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !201
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !201
  call void @llvm.va_start(i8* %6), !dbg !201
  %7 = load i8*, i8** %2, align 8, !dbg !202
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !203
  %9 = call i32 @m_vasprintf(i8** %3, i8* %7, %struct.__va_list_tag* %8), !dbg !204
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !205
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !205
  call void @llvm.va_end(i8* %11), !dbg !205
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !206
  %13 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !207
  %14 = call i8* @dpkg_get_progname(), !dbg !208
  %15 = call i8* @color_reset(), !dbg !210
  %16 = load i8*, i8** %3, align 8, !dbg !212
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %13, i8* %14, i8* %15, i8* %16), !dbg !213
  %18 = load i8*, i8** %3, align 8, !dbg !214
  call void @free(i8* %18) #5, !dbg !215
  ret void, !dbg !216
}

; Function Attrs: nounwind uwtable
define void @info(i8*, ...) #0 !dbg !217 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !218, metadata !26), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %3, metadata !220, metadata !26), !dbg !221
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !222, metadata !26), !dbg !223
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !224
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !224
  call void @llvm.va_start(i8* %6), !dbg !224
  %7 = load i8*, i8** %2, align 8, !dbg !225
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !226
  %9 = call i32 @m_vasprintf(i8** %3, i8* %7, %struct.__va_list_tag* %8), !dbg !227
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !228
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !228
  call void @llvm.va_end(i8* %11), !dbg !228
  %12 = call i8* @color_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !229
  %13 = call i8* @dpkg_get_progname(), !dbg !230
  %14 = call i8* @color_reset(), !dbg !232
  %15 = load i8*, i8** %3, align 8, !dbg !234
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %12, i8* %13, i8* %14, i8* %15), !dbg !235
  %17 = load i8*, i8** %3, align 8, !dbg !236
  call void @free(i8* %17) #5, !dbg !237
  ret void, !dbg !238
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--report.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !7, !9, !18}
!4 = distinct !DIGlobalVariable(name: "warning_printer_data", scope: !0, file: !5, line: 63, type: !6, isLocal: true, isDefinition: true, variable: i8** @warning_printer_data)
!5 = !DIFile(filename: "report.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = distinct !DIGlobalVariable(name: "piped_mode", scope: !0, file: !5, line: 37, type: !8, isLocal: true, isDefinition: true, variable: i32* @piped_mode)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = distinct !DIGlobalVariable(name: "warning_printer_func", scope: !0, file: !5, line: 62, type: !10, isLocal: true, isDefinition: true, variable: void (i8*, i8*)** @warning_printer_func)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dpkg_warning_printer_func", file: !12, line: 41, baseType: !13)
!12 = !DIFile(filename: "../../lib/dpkg/report.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !6}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = distinct !DIGlobalVariable(name: "warn_count", scope: !0, file: !5, line: 72, type: !8, isLocal: true, isDefinition: true, variable: i32* @warn_count)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!22 = distinct !DISubprogram(name: "dpkg_set_report_piped_mode", scope: !5, file: !5, line: 40, type: !23, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !8}
!25 = !DILocalVariable(name: "mode", arg: 1, scope: !22, file: !5, line: 40, type: !8)
!26 = !DIExpression()
!27 = !DILocation(line: 40, column: 32, scope: !22)
!28 = !DILocation(line: 42, column: 15, scope: !22)
!29 = !DILocation(line: 42, column: 13, scope: !22)
!30 = !DILocation(line: 43, column: 1, scope: !22)
!31 = distinct !DISubprogram(name: "dpkg_set_report_buffer", scope: !5, file: !5, line: 46, type: !32, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !36, line: 48, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 241, size: 1728, align: 64, elements: !39)
!38 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!39 = !{!40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !61, !62, !63, !64, !68, !70, !72, !76, !79, !81, !82, !83, !84, !85, !89, !90}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !37, file: !38, line: 242, baseType: !8, size: 32, align: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !37, file: !38, line: 247, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !37, file: !38, line: 248, baseType: !42, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !37, file: !38, line: 249, baseType: !42, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !37, file: !38, line: 250, baseType: !42, size: 64, align: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !37, file: !38, line: 251, baseType: !42, size: 64, align: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !37, file: !38, line: 252, baseType: !42, size: 64, align: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !37, file: !38, line: 253, baseType: !42, size: 64, align: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !37, file: !38, line: 254, baseType: !42, size: 64, align: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !37, file: !38, line: 256, baseType: !42, size: 64, align: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !37, file: !38, line: 257, baseType: !42, size: 64, align: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !37, file: !38, line: 258, baseType: !42, size: 64, align: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !37, file: !38, line: 260, baseType: !54, size: 64, align: 64, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !38, line: 156, size: 192, align: 64, elements: !56)
!56 = !{!57, !58, !60}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !55, file: !38, line: 157, baseType: !54, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !55, file: !38, line: 158, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !55, file: !38, line: 162, baseType: !8, size: 32, align: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !37, file: !38, line: 262, baseType: !59, size: 64, align: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !37, file: !38, line: 264, baseType: !8, size: 32, align: 32, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !37, file: !38, line: 268, baseType: !8, size: 32, align: 32, offset: 928)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !37, file: !38, line: 270, baseType: !65, size: 64, align: 64, offset: 960)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !66, line: 131, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!67 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !37, file: !38, line: 274, baseType: !69, size: 16, align: 16, offset: 1024)
!69 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !37, file: !38, line: 275, baseType: !71, size: 8, align: 8, offset: 1040)
!71 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !37, file: !38, line: 276, baseType: !73, size: 8, align: 8, offset: 1048)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !37, file: !38, line: 280, baseType: !77, size: 64, align: 64, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !38, line: 150, baseType: null)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !37, file: !38, line: 289, baseType: !80, size: 64, align: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !66, line: 132, baseType: !67)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !37, file: !38, line: 297, baseType: !6, size: 64, align: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !37, file: !38, line: 298, baseType: !6, size: 64, align: 64, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !37, file: !38, line: 299, baseType: !6, size: 64, align: 64, offset: 1344)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !37, file: !38, line: 300, baseType: !6, size: 64, align: 64, offset: 1408)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !37, file: !38, line: 302, baseType: !86, size: 64, align: 64, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 216, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!88 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !37, file: !38, line: 303, baseType: !8, size: 32, align: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !37, file: !38, line: 305, baseType: !91, size: 160, align: 8, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, align: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DILocalVariable(name: "fp", arg: 1, scope: !31, file: !5, line: 46, type: !34)
!95 = !DILocation(line: 46, column: 30, scope: !31)
!96 = !DILocation(line: 48, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !31, file: !5, line: 48, column: 6)
!98 = !DILocation(line: 48, column: 13, scope: !97)
!99 = !DILocation(line: 48, column: 6, scope: !100)
!100 = !DILexicalBlockFile(scope: !97, file: !5, discriminator: 1)
!101 = !DILocation(line: 48, column: 6, scope: !97)
!102 = !DILocation(line: 48, column: 6, scope: !31)
!103 = !DILocation(line: 49, column: 11, scope: !97)
!104 = !DILocation(line: 49, column: 3, scope: !97)
!105 = !DILocation(line: 51, column: 11, scope: !97)
!106 = !DILocation(line: 51, column: 20, scope: !97)
!107 = !DILocation(line: 51, column: 3, scope: !97)
!108 = !DILocation(line: 52, column: 1, scope: !31)
!109 = distinct !DISubprogram(name: "dpkg_warning_printer", scope: !5, file: !5, line: 55, type: !13, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!110 = !DILocalVariable(name: "msg", arg: 1, scope: !109, file: !5, line: 55, type: !15)
!111 = !DILocation(line: 55, column: 34, scope: !109)
!112 = !DILocalVariable(name: "data", arg: 2, scope: !109, file: !5, line: 55, type: !6)
!113 = !DILocation(line: 55, column: 45, scope: !109)
!114 = !DILocation(line: 57, column: 9, scope: !109)
!115 = !DILocation(line: 58, column: 10, scope: !109)
!116 = !DILocation(line: 58, column: 30, scope: !117)
!117 = !DILexicalBlockFile(scope: !109, file: !5, discriminator: 1)
!118 = !DILocation(line: 58, column: 51, scope: !119)
!119 = !DILexicalBlockFile(scope: !109, file: !5, discriminator: 2)
!120 = !DILocation(line: 59, column: 10, scope: !109)
!121 = !DILocation(line: 59, column: 32, scope: !117)
!122 = !DILocation(line: 59, column: 46, scope: !119)
!123 = !DILocation(line: 59, column: 61, scope: !109)
!124 = !DILocation(line: 57, column: 2, scope: !109)
!125 = !DILocation(line: 60, column: 1, scope: !109)
!126 = distinct !DISubprogram(name: "color_reset", scope: !127, file: !127, line: 78, type: !128, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!127 = !DIFile(filename: "../../lib/dpkg/color.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!128 = !DISubroutineType(types: !129)
!129 = !{!15}
!130 = !DILocation(line: 80, column: 9, scope: !126)
!131 = !DILocation(line: 80, column: 2, scope: !126)
!132 = distinct !DISubprogram(name: "dpkg_set_warning_printer", scope: !5, file: !5, line: 66, type: !133, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !10, !6}
!135 = !DILocalVariable(name: "printer", arg: 1, scope: !132, file: !5, line: 66, type: !10)
!136 = !DILocation(line: 66, column: 53, scope: !132)
!137 = !DILocalVariable(name: "data", arg: 2, scope: !132, file: !5, line: 66, type: !6)
!138 = !DILocation(line: 66, column: 68, scope: !132)
!139 = !DILocation(line: 68, column: 25, scope: !132)
!140 = !DILocation(line: 68, column: 23, scope: !132)
!141 = !DILocation(line: 69, column: 25, scope: !132)
!142 = !DILocation(line: 69, column: 23, scope: !132)
!143 = !DILocation(line: 70, column: 1, scope: !132)
!144 = distinct !DISubprogram(name: "warning_get_count", scope: !5, file: !5, line: 75, type: !145, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!145 = !DISubroutineType(types: !146)
!146 = !{!8}
!147 = !DILocation(line: 77, column: 9, scope: !144)
!148 = !DILocation(line: 77, column: 2, scope: !144)
!149 = distinct !DISubprogram(name: "warningv", scope: !5, file: !5, line: 81, type: !150, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !15, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 78, size: 192, align: 64, elements: !154)
!154 = !{!155, !157, !158, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !153, file: !1, line: 78, baseType: !156, size: 32, align: 32)
!156 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !153, file: !1, line: 78, baseType: !156, size: 32, align: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !153, file: !1, line: 78, baseType: !6, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !153, file: !1, line: 78, baseType: !6, size: 64, align: 64, offset: 128)
!160 = !DILocalVariable(name: "fmt", arg: 1, scope: !149, file: !5, line: 81, type: !15)
!161 = !DILocation(line: 81, column: 22, scope: !149)
!162 = !DILocalVariable(name: "args", arg: 2, scope: !149, file: !5, line: 81, type: !152)
!163 = !DILocation(line: 81, column: 35, scope: !149)
!164 = !DILocalVariable(name: "buf", scope: !149, file: !5, line: 83, type: !42)
!165 = !DILocation(line: 83, column: 8, scope: !149)
!166 = !DILocation(line: 85, column: 12, scope: !149)
!167 = !DILocation(line: 87, column: 20, scope: !149)
!168 = !DILocation(line: 87, column: 25, scope: !149)
!169 = !DILocation(line: 87, column: 2, scope: !149)
!170 = !DILocation(line: 88, column: 2, scope: !149)
!171 = !DILocation(line: 88, column: 23, scope: !149)
!172 = !DILocation(line: 88, column: 28, scope: !149)
!173 = !DILocation(line: 89, column: 7, scope: !149)
!174 = !DILocation(line: 89, column: 2, scope: !149)
!175 = !DILocation(line: 90, column: 1, scope: !149)
!176 = distinct !DISubprogram(name: "warning", scope: !5, file: !5, line: 93, type: !177, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !15, null}
!179 = !DILocalVariable(name: "fmt", arg: 1, scope: !176, file: !5, line: 93, type: !15)
!180 = !DILocation(line: 93, column: 21, scope: !176)
!181 = !DILocalVariable(name: "args", scope: !176, file: !5, line: 95, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !183, line: 98, baseType: !184)
!183 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !183, line: 40, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 95, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 192, align: 64, elements: !74)
!187 = !DILocation(line: 95, column: 10, scope: !176)
!188 = !DILocation(line: 97, column: 1, scope: !176)
!189 = !DILocation(line: 98, column: 11, scope: !176)
!190 = !DILocation(line: 98, column: 16, scope: !176)
!191 = !DILocation(line: 98, column: 2, scope: !176)
!192 = !DILocation(line: 99, column: 1, scope: !176)
!193 = !DILocation(line: 100, column: 1, scope: !176)
!194 = distinct !DISubprogram(name: "notice", scope: !5, file: !5, line: 103, type: !177, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!195 = !DILocalVariable(name: "fmt", arg: 1, scope: !194, file: !5, line: 103, type: !15)
!196 = !DILocation(line: 103, column: 20, scope: !194)
!197 = !DILocalVariable(name: "buf", scope: !194, file: !5, line: 105, type: !42)
!198 = !DILocation(line: 105, column: 8, scope: !194)
!199 = !DILocalVariable(name: "args", scope: !194, file: !5, line: 106, type: !182)
!200 = !DILocation(line: 106, column: 10, scope: !194)
!201 = !DILocation(line: 108, column: 1, scope: !194)
!202 = !DILocation(line: 109, column: 20, scope: !194)
!203 = !DILocation(line: 109, column: 25, scope: !194)
!204 = !DILocation(line: 109, column: 2, scope: !194)
!205 = !DILocation(line: 110, column: 1, scope: !194)
!206 = !DILocation(line: 112, column: 9, scope: !194)
!207 = !DILocation(line: 113, column: 10, scope: !194)
!208 = !DILocation(line: 113, column: 30, scope: !209)
!209 = !DILexicalBlockFile(scope: !194, file: !5, discriminator: 1)
!210 = !DILocation(line: 113, column: 51, scope: !211)
!211 = !DILexicalBlockFile(scope: !194, file: !5, discriminator: 2)
!212 = !DILocation(line: 113, column: 66, scope: !194)
!213 = !DILocation(line: 112, column: 2, scope: !194)
!214 = !DILocation(line: 115, column: 7, scope: !194)
!215 = !DILocation(line: 115, column: 2, scope: !194)
!216 = !DILocation(line: 116, column: 1, scope: !194)
!217 = distinct !DISubprogram(name: "info", scope: !5, file: !5, line: 119, type: !177, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!218 = !DILocalVariable(name: "fmt", arg: 1, scope: !217, file: !5, line: 119, type: !15)
!219 = !DILocation(line: 119, column: 18, scope: !217)
!220 = !DILocalVariable(name: "buf", scope: !217, file: !5, line: 121, type: !42)
!221 = !DILocation(line: 121, column: 8, scope: !217)
!222 = !DILocalVariable(name: "args", scope: !217, file: !5, line: 122, type: !182)
!223 = !DILocation(line: 122, column: 10, scope: !217)
!224 = !DILocation(line: 124, column: 1, scope: !217)
!225 = !DILocation(line: 125, column: 20, scope: !217)
!226 = !DILocation(line: 125, column: 25, scope: !217)
!227 = !DILocation(line: 125, column: 2, scope: !217)
!228 = !DILocation(line: 126, column: 1, scope: !217)
!229 = !DILocation(line: 129, column: 9, scope: !217)
!230 = !DILocation(line: 129, column: 29, scope: !231)
!231 = !DILexicalBlockFile(scope: !217, file: !5, discriminator: 1)
!232 = !DILocation(line: 129, column: 50, scope: !233)
!233 = !DILexicalBlockFile(scope: !217, file: !5, discriminator: 2)
!234 = !DILocation(line: 129, column: 65, scope: !217)
!235 = !DILocation(line: 128, column: 2, scope: !217)
!236 = !DILocation(line: 131, column: 7, scope: !217)
!237 = !DILocation(line: 131, column: 2, scope: !217)
!238 = !DILocation(line: 132, column: 1, scope: !217)
