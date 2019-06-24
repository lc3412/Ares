; ModuleID = './[inter]lib--dpkg--log.o.i'
source_filename = "./[inter]lib--dpkg--log.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pipef = type { %struct.pipef*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@log_file = global i8* null, align 8
@log_message.log = internal global %struct.varbuf zeroinitializer, align 8
@log_message.logfd = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"could not open log '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"<package status and progress file descriptor>\00", align 1
@status_pipes = internal global %struct.pipef* null, align 8
@statusfd_send.vb = internal global %struct.varbuf zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"unable to write to status fd %d\00", align 1

; Function Attrs: nounwind uwtable
define void @log_message(i8*, ...) #0 !dbg !10 {
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !93, metadata !94), !dbg !95
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !96, metadata !94), !dbg !97
  call void @llvm.dbg.declare(metadata i64* %4, metadata !98, metadata !94), !dbg !102
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !103, metadata !94), !dbg !116
  %6 = load i8*, i8** @log_file, align 8, !dbg !117
  %7 = icmp ne i8* %6, null, !dbg !117
  br i1 %7, label %9, label %8, !dbg !119

; <label>:8:                                      ; preds = %1
  br label %44, !dbg !120

; <label>:9:                                      ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @log_message.logfd, align 8, !dbg !121
  %11 = icmp ne %struct._IO_FILE* %10, null, !dbg !121
  br i1 %11, label %28, label %12, !dbg !123

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** @log_file, align 8, !dbg !124
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !126
  store %struct._IO_FILE* %14, %struct._IO_FILE** @log_message.logfd, align 8, !dbg !127
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @log_message.logfd, align 8, !dbg !128
  %16 = icmp ne %struct._IO_FILE* %15, null, !dbg !128
  br i1 %16, label %23, label %17, !dbg !130

; <label>:17:                                     ; preds = %12
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !131
  %19 = load i8*, i8** @log_file, align 8, !dbg !133
  %20 = call i32* @__errno_location() #1, !dbg !134
  %21 = load i32, i32* %20, align 4, !dbg !135
  %22 = call i8* @strerror(i32 %21) #5, !dbg !136
  call void (i8*, ...) @notice(i8* %18, i8* %19, i8* %22), !dbg !138
  store i8* null, i8** @log_file, align 8, !dbg !139
  br label %44, !dbg !140

; <label>:23:                                     ; preds = %12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @log_message.logfd, align 8, !dbg !141
  call void @setlinebuf(%struct._IO_FILE* %24) #5, !dbg !142
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @log_message.logfd, align 8, !dbg !143
  %26 = call i32 @fileno(%struct._IO_FILE* %25) #5, !dbg !144
  %27 = load i8*, i8** @log_file, align 8, !dbg !145
  call void @setcloexec(i32 %26, i8* %27), !dbg !146
  br label %28, !dbg !148

; <label>:28:                                     ; preds = %23, %9
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !149
  %30 = bitcast %struct.__va_list_tag* %29 to i8*, !dbg !149
  call void @llvm.va_start(i8* %30), !dbg !149
  call void @varbuf_reset(%struct.varbuf* @log_message.log), !dbg !150
  %31 = load i8*, i8** %2, align 8, !dbg !151
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !152
  %33 = call i32 @varbuf_vprintf(%struct.varbuf* @log_message.log, i8* %31, %struct.__va_list_tag* %32), !dbg !153
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !154
  %35 = bitcast %struct.__va_list_tag* %34 to i8*, !dbg !154
  call void @llvm.va_end(i8* %35), !dbg !154
  %36 = call i64 @time(i64* %4) #5, !dbg !155
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0, !dbg !156
  %38 = call %struct.tm* @localtime(i64* %4) #5, !dbg !157
  %39 = call i64 @strftime(i8* %37, i64 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct.tm* %38) #5, !dbg !158
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @log_message.logfd, align 8, !dbg !159
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0, !dbg !160
  %42 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @log_message.log, i32 0, i32 2), align 8, !dbg !161
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %41, i8* %42), !dbg !162
  br label %44, !dbg !163

; <label>:44:                                     ; preds = %28, %17, %8
  ret void, !dbg !164
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @notice(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare void @setlinebuf(%struct._IO_FILE*) #3

declare void @setcloexec(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @varbuf_reset(%struct.varbuf*) #2

declare i32 @varbuf_vprintf(%struct.varbuf*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @statusfd_add(i32) #0 !dbg !166 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pipef*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !169, metadata !94), !dbg !170
  call void @llvm.dbg.declare(metadata %struct.pipef** %3, metadata !171, metadata !94), !dbg !172
  %4 = load i32, i32* %2, align 4, !dbg !173
  %5 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !174
  call void @setcloexec(i32 %4, i8* %5), !dbg !175
  %6 = call i8* @nfmalloc(i64 16), !dbg !177
  %7 = bitcast i8* %6 to %struct.pipef*, !dbg !177
  store %struct.pipef* %7, %struct.pipef** %3, align 8, !dbg !178
  %8 = load i32, i32* %2, align 4, !dbg !179
  %9 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !180
  %10 = getelementptr inbounds %struct.pipef, %struct.pipef* %9, i32 0, i32 1, !dbg !181
  store i32 %8, i32* %10, align 8, !dbg !182
  %11 = load %struct.pipef*, %struct.pipef** @status_pipes, align 8, !dbg !183
  %12 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !184
  %13 = getelementptr inbounds %struct.pipef, %struct.pipef* %12, i32 0, i32 0, !dbg !185
  store %struct.pipef* %11, %struct.pipef** %13, align 8, !dbg !186
  %14 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !187
  store %struct.pipef* %14, %struct.pipef** @status_pipes, align 8, !dbg !188
  ret void, !dbg !189
}

declare i8* @nfmalloc(i64) #2

; Function Attrs: nounwind uwtable
define void @statusfd_send(i8*, ...) #0 !dbg !83 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pipef*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !190, metadata !94), !dbg !191
  call void @llvm.dbg.declare(metadata %struct.pipef** %3, metadata !192, metadata !94), !dbg !193
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !194, metadata !94), !dbg !195
  %5 = load %struct.pipef*, %struct.pipef** @status_pipes, align 8, !dbg !196
  %6 = icmp ne %struct.pipef* %5, null, !dbg !196
  br i1 %6, label %8, label %7, !dbg !198

; <label>:7:                                      ; preds = %1
  br label %38, !dbg !199

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !200
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !200
  call void @llvm.va_start(i8* %10), !dbg !200
  call void @varbuf_reset(%struct.varbuf* @statusfd_send.vb), !dbg !201
  %11 = load i8*, i8** %2, align 8, !dbg !202
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !203
  %13 = call i32 @varbuf_vprintf(%struct.varbuf* @statusfd_send.vb, i8* %11, %struct.__va_list_tag* %12), !dbg !204
  call void @varbuf_map_char(%struct.varbuf* @statusfd_send.vb, i32 10, i32 32), !dbg !205
  call void @varbuf_add_char(%struct.varbuf* @statusfd_send.vb, i32 10), !dbg !206
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !207
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !207
  call void @llvm.va_end(i8* %15), !dbg !207
  %16 = load %struct.pipef*, %struct.pipef** @status_pipes, align 8, !dbg !208
  store %struct.pipef* %16, %struct.pipef** %3, align 8, !dbg !210
  br label %17, !dbg !211

; <label>:17:                                     ; preds = %34, %8
  %18 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !212
  %19 = icmp ne %struct.pipef* %18, null, !dbg !215
  br i1 %19, label %20, label %38, !dbg !215

; <label>:20:                                     ; preds = %17
  %21 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !216
  %22 = getelementptr inbounds %struct.pipef, %struct.pipef* %21, i32 0, i32 1, !dbg !219
  %23 = load i32, i32* %22, align 8, !dbg !219
  %24 = load i8*, i8** getelementptr inbounds (%struct.varbuf, %struct.varbuf* @statusfd_send.vb, i32 0, i32 2), align 8, !dbg !220
  %25 = load i64, i64* getelementptr inbounds (%struct.varbuf, %struct.varbuf* @statusfd_send.vb, i32 0, i32 0), align 8, !dbg !221
  %26 = call i64 @fd_write(i32 %23, i8* %24, i64 %25), !dbg !222
  %27 = icmp slt i64 %26, 0, !dbg !223
  br i1 %27, label %28, label %33, !dbg !224

; <label>:28:                                     ; preds = %20
  %29 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !225
  %30 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !226
  %31 = getelementptr inbounds %struct.pipef, %struct.pipef* %30, i32 0, i32 1, !dbg !227
  %32 = load i32, i32* %31, align 8, !dbg !227
  call void (i8*, ...) @ohshite(i8* %29, i32 %32) #7, !dbg !228
  unreachable, !dbg !230

; <label>:33:                                     ; preds = %20
  br label %34, !dbg !231

; <label>:34:                                     ; preds = %33
  %35 = load %struct.pipef*, %struct.pipef** %3, align 8, !dbg !232
  %36 = getelementptr inbounds %struct.pipef, %struct.pipef* %35, i32 0, i32 0, !dbg !234
  %37 = load %struct.pipef*, %struct.pipef** %36, align 8, !dbg !234
  store %struct.pipef* %37, %struct.pipef** %3, align 8, !dbg !235
  br label %17, !dbg !236, !llvm.loop !237

; <label>:38:                                     ; preds = %7, %17
  ret void, !dbg !239
}

declare void @varbuf_map_char(%struct.varbuf*, i32, i32) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare i64 @fd_write(i32, i8*, i64) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--log.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !9, !23, !82, !84}
!4 = distinct !DIGlobalVariable(name: "log_file", scope: !0, file: !5, line: 35, type: !6, isLocal: false, isDefinition: true, variable: i8** @log_file)
!5 = !DIFile(filename: "log.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DIGlobalVariable(name: "log", scope: !10, file: !5, line: 40, type: !13, isLocal: true, isDefinition: true, variable: %struct.varbuf* @log_message.log)
!10 = distinct !DISubprogram(name: "log_message", scope: !5, file: !5, line: 38, type: !11, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !6, null}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !14, line: 55, size: 192, align: 64, elements: !15)
!14 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!15 = !{!16, !20, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !13, file: !14, line: 56, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 216, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !13, file: !14, line: 56, baseType: !17, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !13, file: !14, line: 57, baseType: !22, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!23 = distinct !DIGlobalVariable(name: "logfd", scope: !10, file: !5, line: 41, type: !24, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @log_message.logfd)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 241, size: 1728, align: 64, elements: !29)
!28 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!29 = !{!30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !51, !52, !53, !54, !58, !60, !62, !66, !69, !71, !73, !74, !75, !76, !77, !78}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 242, baseType: !31, size: 32, align: 32)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 247, baseType: !22, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 248, baseType: !22, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 249, baseType: !22, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 250, baseType: !22, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 251, baseType: !22, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 252, baseType: !22, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 253, baseType: !22, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 254, baseType: !22, size: 64, align: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 256, baseType: !22, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 257, baseType: !22, size: 64, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 258, baseType: !22, size: 64, align: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 260, baseType: !44, size: 64, align: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 156, size: 192, align: 64, elements: !46)
!46 = !{!47, !48, !50}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !45, file: !28, line: 157, baseType: !44, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !45, file: !28, line: 158, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !45, file: !28, line: 162, baseType: !31, size: 32, align: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 262, baseType: !49, size: 64, align: 64, offset: 832)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 264, baseType: !31, size: 32, align: 32, offset: 896)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 268, baseType: !31, size: 32, align: 32, offset: 928)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 270, baseType: !55, size: 64, align: 64, offset: 960)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 131, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!57 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 274, baseType: !59, size: 16, align: 16, offset: 1024)
!59 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 275, baseType: !61, size: 8, align: 8, offset: 1040)
!61 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 276, baseType: !63, size: 8, align: 8, offset: 1048)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 280, baseType: !67, size: 64, align: 64, offset: 1088)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 150, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 289, baseType: !70, size: 64, align: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !56, line: 132, baseType: !57)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !27, file: !28, line: 297, baseType: !72, size: 64, align: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !27, file: !28, line: 298, baseType: !72, size: 64, align: 64, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !27, file: !28, line: 299, baseType: !72, size: 64, align: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !27, file: !28, line: 300, baseType: !72, size: 64, align: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 302, baseType: !17, size: 64, align: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 303, baseType: !31, size: 32, align: 32, offset: 1536)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 305, baseType: !79, size: 160, align: 8, offset: 1568)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, align: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = distinct !DIGlobalVariable(name: "vb", scope: !83, file: !5, line: 95, type: !13, isLocal: true, isDefinition: true, variable: %struct.varbuf* @statusfd_send.vb)
!83 = distinct !DISubprogram(name: "statusfd_send", scope: !5, file: !5, line: 93, type: !11, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!84 = distinct !DIGlobalVariable(name: "status_pipes", scope: !0, file: !5, line: 77, type: !85, isLocal: true, isDefinition: true, variable: %struct.pipef** @status_pipes)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pipef", file: !5, line: 72, size: 128, align: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !5, line: 73, baseType: !85, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !86, file: !5, line: 74, baseType: !31, size: 32, align: 32, offset: 64)
!90 = !{i32 2, !"Dwarf Version", i32 4}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!93 = !DILocalVariable(name: "fmt", arg: 1, scope: !10, file: !5, line: 38, type: !6)
!94 = !DIExpression()
!95 = !DILocation(line: 38, column: 25, scope: !10)
!96 = !DILocalVariable(name: "time_str", scope: !10, file: !5, line: 42, type: !79)
!97 = !DILocation(line: 42, column: 7, scope: !10)
!98 = !DILocalVariable(name: "now", scope: !10, file: !5, line: 43, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !100, line: 75, baseType: !101)
!100 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !56, line: 139, baseType: !57)
!102 = !DILocation(line: 43, column: 9, scope: !10)
!103 = !DILocalVariable(name: "args", scope: !10, file: !5, line: 44, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !105, line: 98, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !105, line: 40, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 44, baseType: !108)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 192, align: 64, elements: !64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 44, size: 192, align: 64, elements: !110)
!110 = !{!111, !113, !114, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !109, file: !1, line: 44, baseType: !112, size: 32, align: 32)
!112 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !109, file: !1, line: 44, baseType: !112, size: 32, align: 32, offset: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !109, file: !1, line: 44, baseType: !72, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !109, file: !1, line: 44, baseType: !72, size: 64, align: 64, offset: 128)
!116 = !DILocation(line: 44, column: 10, scope: !10)
!117 = !DILocation(line: 46, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !10, file: !5, line: 46, column: 6)
!119 = !DILocation(line: 46, column: 6, scope: !10)
!120 = !DILocation(line: 47, column: 3, scope: !118)
!121 = !DILocation(line: 49, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !10, file: !5, line: 49, column: 6)
!123 = !DILocation(line: 49, column: 6, scope: !10)
!124 = !DILocation(line: 50, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !5, line: 49, column: 14)
!126 = !DILocation(line: 50, column: 11, scope: !125)
!127 = !DILocation(line: 50, column: 9, scope: !125)
!128 = !DILocation(line: 51, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !5, line: 51, column: 7)
!130 = !DILocation(line: 51, column: 7, scope: !125)
!131 = !DILocation(line: 52, column: 10, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !5, line: 51, column: 15)
!133 = !DILocation(line: 53, column: 11, scope: !132)
!134 = !DILocation(line: 53, column: 31, scope: !132)
!135 = !DILocation(line: 53, column: 30, scope: !132)
!136 = !DILocation(line: 53, column: 21, scope: !137)
!137 = !DILexicalBlockFile(scope: !132, file: !5, discriminator: 1)
!138 = !DILocation(line: 52, column: 4, scope: !137)
!139 = !DILocation(line: 54, column: 13, scope: !132)
!140 = !DILocation(line: 55, column: 4, scope: !132)
!141 = !DILocation(line: 57, column: 14, scope: !125)
!142 = !DILocation(line: 57, column: 3, scope: !125)
!143 = !DILocation(line: 58, column: 21, scope: !125)
!144 = !DILocation(line: 58, column: 14, scope: !125)
!145 = !DILocation(line: 58, column: 29, scope: !125)
!146 = !DILocation(line: 58, column: 3, scope: !147)
!147 = !DILexicalBlockFile(scope: !125, file: !5, discriminator: 1)
!148 = !DILocation(line: 59, column: 2, scope: !125)
!149 = !DILocation(line: 61, column: 1, scope: !10)
!150 = !DILocation(line: 62, column: 2, scope: !10)
!151 = !DILocation(line: 63, column: 23, scope: !10)
!152 = !DILocation(line: 63, column: 28, scope: !10)
!153 = !DILocation(line: 63, column: 2, scope: !10)
!154 = !DILocation(line: 64, column: 1, scope: !10)
!155 = !DILocation(line: 66, column: 2, scope: !10)
!156 = !DILocation(line: 67, column: 11, scope: !10)
!157 = !DILocation(line: 68, column: 11, scope: !10)
!158 = !DILocation(line: 67, column: 2, scope: !10)
!159 = !DILocation(line: 69, column: 10, scope: !10)
!160 = !DILocation(line: 69, column: 28, scope: !10)
!161 = !DILocation(line: 69, column: 42, scope: !10)
!162 = !DILocation(line: 69, column: 2, scope: !10)
!163 = !DILocation(line: 70, column: 1, scope: !10)
!164 = !DILocation(line: 70, column: 1, scope: !165)
!165 = !DILexicalBlockFile(scope: !10, file: !5, discriminator: 1)
!166 = distinct !DISubprogram(name: "statusfd_add", scope: !5, file: !5, line: 80, type: !167, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !31}
!169 = !DILocalVariable(name: "fd", arg: 1, scope: !166, file: !5, line: 80, type: !31)
!170 = !DILocation(line: 80, column: 18, scope: !166)
!171 = !DILocalVariable(name: "pipe_new", scope: !166, file: !5, line: 82, type: !85)
!172 = !DILocation(line: 82, column: 16, scope: !166)
!173 = !DILocation(line: 84, column: 13, scope: !166)
!174 = !DILocation(line: 84, column: 16, scope: !166)
!175 = !DILocation(line: 84, column: 2, scope: !176)
!176 = !DILexicalBlockFile(scope: !166, file: !5, discriminator: 1)
!177 = !DILocation(line: 86, column: 13, scope: !166)
!178 = !DILocation(line: 86, column: 11, scope: !166)
!179 = !DILocation(line: 87, column: 17, scope: !166)
!180 = !DILocation(line: 87, column: 2, scope: !166)
!181 = !DILocation(line: 87, column: 12, scope: !166)
!182 = !DILocation(line: 87, column: 15, scope: !166)
!183 = !DILocation(line: 88, column: 19, scope: !166)
!184 = !DILocation(line: 88, column: 2, scope: !166)
!185 = !DILocation(line: 88, column: 12, scope: !166)
!186 = !DILocation(line: 88, column: 17, scope: !166)
!187 = !DILocation(line: 89, column: 17, scope: !166)
!188 = !DILocation(line: 89, column: 15, scope: !166)
!189 = !DILocation(line: 90, column: 1, scope: !166)
!190 = !DILocalVariable(name: "fmt", arg: 1, scope: !83, file: !5, line: 93, type: !6)
!191 = !DILocation(line: 93, column: 27, scope: !83)
!192 = !DILocalVariable(name: "pipef", scope: !83, file: !5, line: 96, type: !85)
!193 = !DILocation(line: 96, column: 16, scope: !83)
!194 = !DILocalVariable(name: "args", scope: !83, file: !5, line: 97, type: !104)
!195 = !DILocation(line: 97, column: 10, scope: !83)
!196 = !DILocation(line: 99, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !83, file: !5, line: 99, column: 6)
!198 = !DILocation(line: 99, column: 6, scope: !83)
!199 = !DILocation(line: 100, column: 3, scope: !197)
!200 = !DILocation(line: 102, column: 1, scope: !83)
!201 = !DILocation(line: 103, column: 2, scope: !83)
!202 = !DILocation(line: 104, column: 22, scope: !83)
!203 = !DILocation(line: 104, column: 27, scope: !83)
!204 = !DILocation(line: 104, column: 2, scope: !83)
!205 = !DILocation(line: 107, column: 2, scope: !83)
!206 = !DILocation(line: 108, column: 2, scope: !83)
!207 = !DILocation(line: 109, column: 1, scope: !83)
!208 = !DILocation(line: 111, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !83, file: !5, line: 111, column: 2)
!210 = !DILocation(line: 111, column: 13, scope: !209)
!211 = !DILocation(line: 111, column: 7, scope: !209)
!212 = !DILocation(line: 111, column: 29, scope: !213)
!213 = !DILexicalBlockFile(scope: !214, file: !5, discriminator: 1)
!214 = distinct !DILexicalBlock(scope: !209, file: !5, line: 111, column: 2)
!215 = !DILocation(line: 111, column: 2, scope: !213)
!216 = !DILocation(line: 112, column: 16, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !5, line: 112, column: 7)
!218 = distinct !DILexicalBlock(scope: !214, file: !5, line: 111, column: 57)
!219 = !DILocation(line: 112, column: 23, scope: !217)
!220 = !DILocation(line: 112, column: 30, scope: !217)
!221 = !DILocation(line: 112, column: 38, scope: !217)
!222 = !DILocation(line: 112, column: 7, scope: !217)
!223 = !DILocation(line: 112, column: 44, scope: !217)
!224 = !DILocation(line: 112, column: 7, scope: !218)
!225 = !DILocation(line: 113, column: 11, scope: !217)
!226 = !DILocation(line: 114, column: 12, scope: !217)
!227 = !DILocation(line: 114, column: 19, scope: !217)
!228 = !DILocation(line: 113, column: 4, scope: !229)
!229 = !DILexicalBlockFile(scope: !217, file: !5, discriminator: 1)
!230 = !DILocation(line: 113, column: 4, scope: !217)
!231 = !DILocation(line: 115, column: 2, scope: !218)
!232 = !DILocation(line: 111, column: 44, scope: !233)
!233 = !DILexicalBlockFile(scope: !214, file: !5, discriminator: 2)
!234 = !DILocation(line: 111, column: 51, scope: !233)
!235 = !DILocation(line: 111, column: 42, scope: !233)
!236 = !DILocation(line: 111, column: 2, scope: !233)
!237 = distinct !{!237, !238}
!238 = !DILocation(line: 111, column: 2, scope: !83)
!239 = !DILocation(line: 116, column: 1, scope: !83)
