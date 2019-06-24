; ModuleID = './[inter]keepalived--core--pidfile.o.i'
source_filename = "./[inter]keepalived--core--pidfile.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"/var/run/keepalived\00", align 1
@pid_directory = global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to create directory %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unlink of %s failed - error (%d) '%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"pidfile_write : Cannot open %s pidfile\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@main_pidfile = external global i8*, align 8
@vrrp_pidfile = external global i8*, align 8
@checkers_pidfile = external global i8*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error reading pid file %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Remove a zombie pid file %s\00", align 1

; Function Attrs: nounwind uwtable
define void @create_pid_dir() #0 !dbg !18 {
  %1 = load i8*, i8** @pid_directory, align 8, !dbg !22
  %2 = call i32 @mkdir(i8* %1, i32 493) #6, !dbg !24
  %3 = icmp ne i32 %2, 0, !dbg !24
  br i1 %3, label %4, label %10, !dbg !25

; <label>:4:                                      ; preds = %0
  %5 = call i32* @__errno_location() #4, !dbg !26
  %6 = load i32, i32* %5, align 4, !dbg !28
  %7 = icmp ne i32 %6, 17, !dbg !29
  br i1 %7, label %8, label %10, !dbg !30

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** @pid_directory, align 8, !dbg !31
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %9), !dbg !33
  br label %10, !dbg !34

; <label>:10:                                     ; preds = %8, %4, %0
  ret void, !dbg !35
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @remove_pid_dir() #0 !dbg !36 {
  %1 = load i8*, i8** @pid_directory, align 8, !dbg !37
  %2 = call i32 @rmdir(i8* %1) #6, !dbg !39
  %3 = icmp ne i32 %2, 0, !dbg !39
  br i1 %3, label %4, label %19, !dbg !40

; <label>:4:                                      ; preds = %0
  %5 = call i32* @__errno_location() #4, !dbg !41
  %6 = load i32, i32* %5, align 4, !dbg !43
  %7 = icmp ne i32 %6, 39, !dbg !44
  br i1 %7, label %8, label %19, !dbg !45

; <label>:8:                                      ; preds = %4
  %9 = call i32* @__errno_location() #4, !dbg !46
  %10 = load i32, i32* %9, align 4, !dbg !48
  %11 = icmp ne i32 %10, 16, !dbg !49
  br i1 %11, label %12, label %19, !dbg !50

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** @pid_directory, align 8, !dbg !51
  %14 = call i32* @__errno_location() #4, !dbg !52
  %15 = load i32, i32* %14, align 4, !dbg !53
  %16 = call i32* @__errno_location() #4, !dbg !54
  %17 = load i32, i32* %16, align 4, !dbg !55
  %18 = call i8* @strerror(i32 %17) #6, !dbg !56
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* %13, i32 %15, i8* %18), !dbg !57
  br label %19, !dbg !59

; <label>:19:                                     ; preds = %12, %8, %4, %0
  ret void, !dbg !60
}

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind uwtable
define i32 @pidfile_write(i8*, i32) #0 !dbg !61 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !65, metadata !66), !dbg !67
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !68, metadata !66), !dbg !69
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !70, metadata !66), !dbg !132
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %7, metadata !133, metadata !66), !dbg !134
  %8 = load i8*, i8** %4, align 8, !dbg !135
  %9 = call i32 @creat(i8* %8, i32 420), !dbg !136
  store i32 %9, i32* %7, align 4, !dbg !134
  %10 = load i32, i32* %7, align 4, !dbg !137
  %11 = icmp ne i32 %10, -1, !dbg !139
  br i1 %11, label %12, label %15, !dbg !140

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %7, align 4, !dbg !141
  %14 = call %struct._IO_FILE* @fdopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !143
  store %struct._IO_FILE* %14, %struct._IO_FILE** %6, align 8, !dbg !144
  br label %15, !dbg !145

; <label>:15:                                     ; preds = %12, %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !146
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !146
  br i1 %17, label %20, label %18, !dbg !148

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %4, align 8, !dbg !149
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i8* %19), !dbg !151
  store i32 0, i32* %3, align 4, !dbg !152
  br label %26, !dbg !152

; <label>:20:                                     ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !153
  %22 = load i32, i32* %5, align 4, !dbg !154
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %22), !dbg !155
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !156
  %25 = call i32 @fclose(%struct._IO_FILE* %24), !dbg !157
  store i32 1, i32* %3, align 4, !dbg !158
  br label %26, !dbg !158

; <label>:26:                                     ; preds = %20, %18
  %27 = load i32, i32* %3, align 4, !dbg !159
  ret i32 %27, !dbg !159
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

declare i32 @creat(i8*, i32) #3

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @pidfile_rm(i8*) #0 !dbg !160 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !163, metadata !66), !dbg !164
  %3 = load i8*, i8** %2, align 8, !dbg !165
  %4 = call i32 @unlink(i8* %3) #6, !dbg !166
  ret void, !dbg !167
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @keepalived_running(i64) #0 !dbg !168 {
  %2 = alloca i1, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !172, metadata !66), !dbg !173
  %4 = load i8*, i8** @main_pidfile, align 8, !dbg !174
  %5 = call i32 @process_running(i8* %4), !dbg !176
  %6 = icmp ne i32 %5, 0, !dbg !176
  br i1 %6, label %7, label %8, !dbg !177

; <label>:7:                                      ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !178
  br label %23, !dbg !178

; <label>:8:                                      ; preds = %1
  %9 = call zeroext i1 @__test_bit(i32 0, i64* %3), !dbg !179
  br i1 %9, label %10, label %15, !dbg !181

; <label>:10:                                     ; preds = %8
  %11 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !182
  %12 = call i32 @process_running(i8* %11), !dbg !184
  %13 = icmp ne i32 %12, 0, !dbg !184
  br i1 %13, label %14, label %15, !dbg !185

; <label>:14:                                     ; preds = %10
  store i1 true, i1* %2, align 1, !dbg !186
  br label %23, !dbg !186

; <label>:15:                                     ; preds = %10, %8
  %16 = call zeroext i1 @__test_bit(i32 1, i64* %3), !dbg !187
  br i1 %16, label %17, label %22, !dbg !189

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** @checkers_pidfile, align 8, !dbg !190
  %19 = call i32 @process_running(i8* %18), !dbg !192
  %20 = icmp ne i32 %19, 0, !dbg !192
  br i1 %20, label %21, label %22, !dbg !193

; <label>:21:                                     ; preds = %17
  store i1 true, i1* %2, align 1, !dbg !194
  br label %23, !dbg !194

; <label>:22:                                     ; preds = %17, %15
  store i1 false, i1* %2, align 1, !dbg !195
  br label %23, !dbg !195

; <label>:23:                                     ; preds = %22, %21, %14, %7
  %24 = load i1, i1* %2, align 1, !dbg !196
  ret i1 %24, !dbg !196
}

; Function Attrs: nounwind uwtable
define internal i32 @process_running(i8*) #0 !dbg !197 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !200, metadata !66), !dbg !201
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !202, metadata !66), !dbg !203
  %7 = load i8*, i8** %3, align 8, !dbg !204
  %8 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !205
  store %struct._IO_FILE* %8, %struct._IO_FILE** %4, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i32* %5, metadata !206, metadata !66), !dbg !210
  store i32 0, i32* %5, align 4, !dbg !210
  call void @llvm.dbg.declare(metadata i32* %6, metadata !211, metadata !66), !dbg !212
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !213
  %10 = icmp ne %struct._IO_FILE* %9, null, !dbg !213
  br i1 %10, label %12, label %11, !dbg !215

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !216
  br label %34, !dbg !216

; <label>:12:                                     ; preds = %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !217
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %5), !dbg !218
  store i32 %14, i32* %6, align 4, !dbg !219
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !220
  %16 = call i32 @fclose(%struct._IO_FILE* %15), !dbg !221
  %17 = load i32, i32* %6, align 4, !dbg !222
  %18 = icmp ne i32 %17, 1, !dbg !224
  br i1 %18, label %19, label %22, !dbg !225

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %3, align 8, !dbg !226
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %20), !dbg !228
  store i32 0, i32* %5, align 4, !dbg !229
  %21 = load i8*, i8** %3, align 8, !dbg !230
  call void @pidfile_rm(i8* %21), !dbg !231
  br label %22, !dbg !232

; <label>:22:                                     ; preds = %19, %12
  %23 = load i32, i32* %5, align 4, !dbg !233
  %24 = icmp ne i32 %23, 0, !dbg !233
  br i1 %24, label %26, label %25, !dbg !235

; <label>:25:                                     ; preds = %22
  store i32 1, i32* %2, align 4, !dbg !236
  br label %34, !dbg !236

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %5, align 4, !dbg !237
  %28 = call i32 @kill(i32 %27, i32 0) #6, !dbg !239
  %29 = icmp ne i32 %28, 0, !dbg !239
  br i1 %29, label %30, label %33, !dbg !240

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %3, align 8, !dbg !241
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* %31), !dbg !243
  %32 = load i8*, i8** %3, align 8, !dbg !244
  call void @pidfile_rm(i8* %32), !dbg !245
  store i32 0, i32* %2, align 4, !dbg !246
  br label %34, !dbg !246

; <label>:33:                                     ; preds = %26
  store i32 1, i32* %2, align 4, !dbg !247
  br label %34, !dbg !247

; <label>:34:                                     ; preds = %33, %30, %25, %11
  %35 = load i32, i32* %2, align 4, !dbg !248
  ret i32 %35, !dbg !248
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #5 !dbg !249 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !256, metadata !66), !dbg !257
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !258, metadata !66), !dbg !259
  %5 = load i32, i32* %3, align 4, !dbg !260
  %6 = zext i32 %5 to i64, !dbg !261
  %7 = udiv i64 %6, 64, !dbg !262
  %8 = load i64*, i64** %4, align 8, !dbg !263
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !263
  %10 = load i64, i64* %9, align 8, !dbg !263
  %11 = load i32, i32* %3, align 4, !dbg !264
  %12 = zext i32 %11 to i64, !dbg !265
  %13 = urem i64 %12, 64, !dbg !266
  %14 = shl i64 1, %13, !dbg !267
  %15 = and i64 %10, %14, !dbg !268
  %16 = icmp ne i64 %15, 0, !dbg !269
  %17 = xor i1 %16, true, !dbg !269
  %18 = xor i1 %17, true, !dbg !270
  ret i1 %18, !dbg !271
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !9)
!1 = !DIFile(filename: "[inter]keepalived--core--pidfile.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "daemon_bits", file: !4, line: 33, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/main.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DAEMON_VRRP", value: 0)
!7 = !DIEnumerator(name: "DAEMON_CHECKERS", value: 1)
!8 = !DIEnumerator(name: "RUN_ALL_CHILDREN", value: 2)
!9 = !{!10}
!10 = distinct !DIGlobalVariable(name: "pid_directory", scope: !0, file: !11, line: 39, type: !12, isLocal: false, isDefinition: true, variable: i8** @pid_directory)
!11 = !DIFile(filename: "pidfile.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!18 = distinct !DISubprogram(name: "create_pid_dir", scope: !11, file: !11, line: 43, type: !19, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !{}
!22 = !DILocation(line: 45, column: 12, scope: !23)
!23 = distinct !DILexicalBlock(scope: !18, file: !11, line: 45, column: 6)
!24 = !DILocation(line: 45, column: 6, scope: !23)
!25 = !DILocation(line: 45, column: 75, scope: !23)
!26 = !DILocation(line: 45, column: 80, scope: !27)
!27 = !DILexicalBlockFile(scope: !23, file: !11, discriminator: 1)
!28 = !DILocation(line: 45, column: 79, scope: !27)
!29 = !DILocation(line: 45, column: 84, scope: !27)
!30 = !DILocation(line: 45, column: 6, scope: !27)
!31 = !DILocation(line: 46, column: 57, scope: !32)
!32 = distinct !DILexicalBlock(scope: !23, file: !11, line: 45, column: 95)
!33 = !DILocation(line: 46, column: 3, scope: !32)
!34 = !DILocation(line: 47, column: 3, scope: !32)
!35 = !DILocation(line: 49, column: 1, scope: !18)
!36 = distinct !DISubprogram(name: "remove_pid_dir", scope: !11, file: !11, line: 52, type: !19, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!37 = !DILocation(line: 54, column: 12, scope: !38)
!38 = distinct !DILexicalBlock(scope: !36, file: !11, line: 54, column: 6)
!39 = !DILocation(line: 54, column: 6, scope: !38)
!40 = !DILocation(line: 54, column: 27, scope: !38)
!41 = !DILocation(line: 54, column: 31, scope: !42)
!42 = !DILexicalBlockFile(scope: !38, file: !11, discriminator: 1)
!43 = !DILocation(line: 54, column: 30, scope: !42)
!44 = !DILocation(line: 54, column: 35, scope: !42)
!45 = !DILocation(line: 54, column: 48, scope: !42)
!46 = !DILocation(line: 54, column: 53, scope: !47)
!47 = !DILexicalBlockFile(scope: !38, file: !11, discriminator: 2)
!48 = !DILocation(line: 54, column: 52, scope: !47)
!49 = !DILocation(line: 54, column: 57, scope: !47)
!50 = !DILocation(line: 54, column: 6, scope: !47)
!51 = !DILocation(line: 55, column: 65, scope: !38)
!52 = !DILocation(line: 55, column: 82, scope: !38)
!53 = !DILocation(line: 55, column: 81, scope: !38)
!54 = !DILocation(line: 55, column: 98, scope: !42)
!55 = !DILocation(line: 55, column: 97, scope: !38)
!56 = !DILocation(line: 55, column: 87, scope: !47)
!57 = !DILocation(line: 55, column: 3, scope: !58)
!58 = !DILexicalBlockFile(scope: !38, file: !11, discriminator: 3)
!59 = !DILocation(line: 55, column: 3, scope: !38)
!60 = !DILocation(line: 56, column: 1, scope: !36)
!61 = distinct !DISubprogram(name: "pidfile_write", scope: !11, file: !11, line: 60, type: !62, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !12, !64}
!64 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!65 = !DILocalVariable(name: "pid_file", arg: 1, scope: !61, file: !11, line: 60, type: !12)
!66 = !DIExpression()
!67 = !DILocation(line: 60, column: 27, scope: !61)
!68 = !DILocalVariable(name: "pid", arg: 2, scope: !61, file: !11, line: 60, type: !64)
!69 = !DILocation(line: 60, column: 41, scope: !61)
!70 = !DILocalVariable(name: "pidfile", scope: !61, file: !11, line: 62, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 48, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 241, size: 1728, align: 64, elements: !76)
!75 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!76 = !{!77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !98, !99, !100, !101, !105, !107, !109, !113, !116, !118, !120, !121, !122, !123, !127, !128}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 242, baseType: !64, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 247, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 248, baseType: !79, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 249, baseType: !79, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 250, baseType: !79, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 251, baseType: !79, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 252, baseType: !79, size: 64, align: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 253, baseType: !79, size: 64, align: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 254, baseType: !79, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 256, baseType: !79, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 257, baseType: !79, size: 64, align: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 258, baseType: !79, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 260, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 156, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !75, line: 157, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !92, file: !75, line: 158, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !92, file: !75, line: 162, baseType: !64, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 262, baseType: !96, size: 64, align: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 264, baseType: !64, size: 32, align: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 268, baseType: !64, size: 32, align: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 270, baseType: !102, size: 64, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !103, line: 131, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!104 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 274, baseType: !106, size: 16, align: 16, offset: 1024)
!106 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 275, baseType: !108, size: 8, align: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 276, baseType: !110, size: 8, align: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 280, baseType: !114, size: 64, align: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 150, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 289, baseType: !117, size: 64, align: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !103, line: 132, baseType: !104)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !74, file: !75, line: 297, baseType: !119, size: 64, align: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !74, file: !75, line: 298, baseType: !119, size: 64, align: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !74, file: !75, line: 299, baseType: !119, size: 64, align: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !74, file: !75, line: 300, baseType: !119, size: 64, align: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 302, baseType: !124, size: 64, align: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 216, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 303, baseType: !64, size: 32, align: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 305, baseType: !129, size: 160, align: 8, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocation(line: 62, column: 8, scope: !61)
!133 = !DILocalVariable(name: "pidfd", scope: !61, file: !11, line: 63, type: !64)
!134 = !DILocation(line: 63, column: 6, scope: !61)
!135 = !DILocation(line: 63, column: 20, scope: !61)
!136 = !DILocation(line: 63, column: 14, scope: !61)
!137 = !DILocation(line: 65, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !61, file: !11, line: 65, column: 6)
!139 = !DILocation(line: 65, column: 12, scope: !138)
!140 = !DILocation(line: 65, column: 6, scope: !61)
!141 = !DILocation(line: 65, column: 36, scope: !142)
!142 = !DILexicalBlockFile(scope: !138, file: !11, discriminator: 1)
!143 = !DILocation(line: 65, column: 29, scope: !142)
!144 = !DILocation(line: 65, column: 27, scope: !142)
!145 = !DILocation(line: 65, column: 19, scope: !142)
!146 = !DILocation(line: 67, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !61, file: !11, line: 67, column: 6)
!148 = !DILocation(line: 67, column: 6, scope: !61)
!149 = !DILocation(line: 69, column: 10, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !11, line: 67, column: 16)
!151 = !DILocation(line: 68, column: 3, scope: !150)
!152 = !DILocation(line: 70, column: 3, scope: !150)
!153 = !DILocation(line: 72, column: 10, scope: !61)
!154 = !DILocation(line: 72, column: 27, scope: !61)
!155 = !DILocation(line: 72, column: 2, scope: !61)
!156 = !DILocation(line: 73, column: 9, scope: !61)
!157 = !DILocation(line: 73, column: 2, scope: !61)
!158 = !DILocation(line: 74, column: 2, scope: !61)
!159 = !DILocation(line: 75, column: 1, scope: !61)
!160 = distinct !DISubprogram(name: "pidfile_rm", scope: !11, file: !11, line: 79, type: !161, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !12}
!163 = !DILocalVariable(name: "pid_file", arg: 1, scope: !160, file: !11, line: 79, type: !12)
!164 = !DILocation(line: 79, column: 24, scope: !160)
!165 = !DILocation(line: 81, column: 9, scope: !160)
!166 = !DILocation(line: 81, column: 2, scope: !160)
!167 = !DILocation(line: 82, column: 1, scope: !160)
!168 = distinct !DISubprogram(name: "keepalived_running", scope: !11, file: !11, line: 120, type: !169, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !126}
!171 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!172 = !DILocalVariable(name: "mode", arg: 1, scope: !168, file: !11, line: 120, type: !126)
!173 = !DILocation(line: 120, column: 34, scope: !168)
!174 = !DILocation(line: 122, column: 22, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !11, line: 122, column: 6)
!176 = !DILocation(line: 122, column: 6, scope: !175)
!177 = !DILocation(line: 122, column: 6, scope: !168)
!178 = !DILocation(line: 123, column: 3, scope: !175)
!179 = !DILocation(line: 125, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !11, line: 125, column: 6)
!181 = !DILocation(line: 125, column: 37, scope: !180)
!182 = !DILocation(line: 125, column: 56, scope: !183)
!183 = !DILexicalBlockFile(scope: !180, file: !11, discriminator: 1)
!184 = !DILocation(line: 125, column: 40, scope: !183)
!185 = !DILocation(line: 125, column: 6, scope: !183)
!186 = !DILocation(line: 126, column: 3, scope: !180)
!187 = !DILocation(line: 129, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !168, file: !11, line: 129, column: 6)
!189 = !DILocation(line: 129, column: 41, scope: !188)
!190 = !DILocation(line: 129, column: 60, scope: !191)
!191 = !DILexicalBlockFile(scope: !188, file: !11, discriminator: 1)
!192 = !DILocation(line: 129, column: 44, scope: !191)
!193 = !DILocation(line: 129, column: 6, scope: !191)
!194 = !DILocation(line: 130, column: 3, scope: !188)
!195 = !DILocation(line: 136, column: 2, scope: !168)
!196 = !DILocation(line: 137, column: 1, scope: !168)
!197 = distinct !DISubprogram(name: "process_running", scope: !11, file: !11, line: 86, type: !198, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!198 = !DISubroutineType(types: !199)
!199 = !{!64, !12}
!200 = !DILocalVariable(name: "pid_file", arg: 1, scope: !197, file: !11, line: 86, type: !12)
!201 = !DILocation(line: 86, column: 29, scope: !197)
!202 = !DILocalVariable(name: "pidfile", scope: !197, file: !11, line: 88, type: !71)
!203 = !DILocation(line: 88, column: 8, scope: !197)
!204 = !DILocation(line: 88, column: 24, scope: !197)
!205 = !DILocation(line: 88, column: 18, scope: !197)
!206 = !DILocalVariable(name: "pid", scope: !197, file: !11, line: 89, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !208, line: 98, baseType: !209)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !103, line: 133, baseType: !64)
!210 = !DILocation(line: 89, column: 8, scope: !197)
!211 = !DILocalVariable(name: "ret", scope: !197, file: !11, line: 90, type: !64)
!212 = !DILocation(line: 90, column: 6, scope: !197)
!213 = !DILocation(line: 93, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !197, file: !11, line: 93, column: 6)
!215 = !DILocation(line: 93, column: 6, scope: !197)
!216 = !DILocation(line: 94, column: 3, scope: !214)
!217 = !DILocation(line: 96, column: 15, scope: !197)
!218 = !DILocation(line: 96, column: 8, scope: !197)
!219 = !DILocation(line: 96, column: 6, scope: !197)
!220 = !DILocation(line: 97, column: 9, scope: !197)
!221 = !DILocation(line: 97, column: 2, scope: !197)
!222 = !DILocation(line: 98, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !197, file: !11, line: 98, column: 6)
!224 = !DILocation(line: 98, column: 10, scope: !223)
!225 = !DILocation(line: 98, column: 6, scope: !197)
!226 = !DILocation(line: 99, column: 53, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !11, line: 98, column: 16)
!228 = !DILocation(line: 99, column: 3, scope: !227)
!229 = !DILocation(line: 100, column: 7, scope: !227)
!230 = !DILocation(line: 101, column: 14, scope: !227)
!231 = !DILocation(line: 101, column: 3, scope: !227)
!232 = !DILocation(line: 102, column: 2, scope: !227)
!233 = !DILocation(line: 105, column: 7, scope: !234)
!234 = distinct !DILexicalBlock(scope: !197, file: !11, line: 105, column: 6)
!235 = !DILocation(line: 105, column: 6, scope: !197)
!236 = !DILocation(line: 106, column: 3, scope: !234)
!237 = !DILocation(line: 109, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !197, file: !11, line: 109, column: 6)
!239 = !DILocation(line: 109, column: 6, scope: !238)
!240 = !DILocation(line: 109, column: 6, scope: !197)
!241 = !DILocation(line: 110, column: 55, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !11, line: 109, column: 20)
!243 = !DILocation(line: 110, column: 3, scope: !242)
!244 = !DILocation(line: 111, column: 14, scope: !242)
!245 = !DILocation(line: 111, column: 3, scope: !242)
!246 = !DILocation(line: 112, column: 3, scope: !242)
!247 = !DILocation(line: 115, column: 2, scope: !197)
!248 = !DILocation(line: 116, column: 1, scope: !197)
!249 = distinct !DISubprogram(name: "__test_bit", scope: !250, file: !250, line: 47, type: !251, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!250 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!251 = !DISubroutineType(types: !252)
!252 = !{!171, !253, !254}
!253 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!256 = !DILocalVariable(name: "idx", arg: 1, scope: !249, file: !250, line: 47, type: !253)
!257 = !DILocation(line: 47, column: 39, scope: !249)
!258 = !DILocalVariable(name: "bmap", arg: 2, scope: !249, file: !250, line: 47, type: !254)
!259 = !DILocation(line: 47, column: 65, scope: !249)
!260 = !DILocation(line: 49, column: 19, scope: !249)
!261 = !DILocation(line: 49, column: 18, scope: !249)
!262 = !DILocation(line: 49, column: 24, scope: !249)
!263 = !DILocation(line: 49, column: 12, scope: !249)
!264 = !DILocation(line: 49, column: 68, scope: !249)
!265 = !DILocation(line: 49, column: 67, scope: !249)
!266 = !DILocation(line: 49, column: 73, scope: !249)
!267 = !DILocation(line: 49, column: 63, scope: !249)
!268 = !DILocation(line: 49, column: 56, scope: !249)
!269 = !DILocation(line: 49, column: 10, scope: !249)
!270 = !DILocation(line: 49, column: 9, scope: !249)
!271 = !DILocation(line: 49, column: 2, scope: !249)
