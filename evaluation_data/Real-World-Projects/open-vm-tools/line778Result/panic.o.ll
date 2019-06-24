; ModuleID = './panic.o.i'
source_filename = "./panic.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PanicState = type { i8, i8, i8, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"coreDumpOnPanic\00", align 1
@panicState = internal global %struct.PanicState { i8 1, i8 1, i8 0, i32 0, i32 0, i8* null }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"panic.loopOnPanic\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"panic.breakOnPanic\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"coreDumpFlags\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Looping pid=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Panic: breaking into debugger\0A\00", align 1
@Panic_Panic.count = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"PANIC: %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Panic loop\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Exiting\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Panic_Init() #0 !dbg !51 {
  %1 = call signext i8 (i8, i8*, ...) @Config_GetBool(i8 signext 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !54
  store i8 %1, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 1), align 1, !dbg !55
  %2 = call signext i8 (i8, i8*, ...) @Config_GetBool(i8 signext 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !56
  store i8 %2, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 2), align 2, !dbg !57
  %3 = call i32 (i32, i8*, ...) @Config_GetLong(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)), !dbg !58
  store i32 %3, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 4), align 8, !dbg !59
  %4 = call i32 (i32, i8*, ...) @Config_GetLong(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)), !dbg !60
  store i32 %4, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 3), align 4, !dbg !61
  ret void, !dbg !62
}

declare signext i8 @Config_GetBool(i8 signext, i8*, ...) #1

declare i32 @Config_GetLong(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Panic_SetPanicMsgPost(i8 signext) #0 !dbg !63 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !66, metadata !67), !dbg !68
  %3 = load i8, i8* %2, align 1, !dbg !69
  store i8 %3, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 0), align 8, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define signext i8 @Panic_GetPanicMsgPost() #0 !dbg !72 {
  %1 = load i8, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 0), align 8, !dbg !75
  ret i8 %1, !dbg !76
}

; Function Attrs: nounwind uwtable
define void @Panic_SetCoreDumpOnPanic(i8 signext) #0 !dbg !77 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !78, metadata !67), !dbg !79
  %3 = load i8, i8* %2, align 1, !dbg !80
  store i8 %3, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 1), align 1, !dbg !81
  ret void, !dbg !82
}

; Function Attrs: nounwind uwtable
define signext i8 @Panic_GetCoreDumpOnPanic() #0 !dbg !83 {
  %1 = load i8, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 1), align 1, !dbg !84
  ret i8 %1, !dbg !85
}

; Function Attrs: nounwind uwtable
define i32 @Panic_GetCoreDumpFlags() #0 !dbg !86 {
  %1 = load i32, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 3), align 4, !dbg !89
  ret i32 %1, !dbg !90
}

; Function Attrs: nounwind uwtable
define void @Panic_SetCoreDumpFlags(i32) #0 !dbg !91 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !92, metadata !67), !dbg !93
  %3 = load i32, i32* %2, align 4, !dbg !94
  store i32 %3, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 3), align 4, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: nounwind uwtable
define void @Panic_LoopOnPanic() #0 !dbg !97 {
  %1 = load i8, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 2), align 2, !dbg !98
  %2 = icmp ne i8 %1, 0, !dbg !100
  br i1 %2, label %3, label %13, !dbg !101

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !102
  %5 = call i32 @getpid() #6, !dbg !104
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %5), !dbg !105
  br label %7, !dbg !107

; <label>:7:                                      ; preds = %10, %3
  %8 = load i8, i8* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 2), align 2, !dbg !108
  %9 = icmp ne i8 %8, 0, !dbg !109
  br i1 %9, label %10, label %12, !dbg !109

; <label>:10:                                     ; preds = %7
  %11 = call i32 @sleep(i32 1), !dbg !110
  br label %7, !dbg !112, !llvm.loop !114

; <label>:12:                                     ; preds = %7
  br label %13, !dbg !115

; <label>:13:                                     ; preds = %12, %0
  ret void, !dbg !116
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @sleep(i32) #1

; Function Attrs: nounwind uwtable
define void @Panic_BreakOnPanic() #0 !dbg !117 {
  %1 = alloca void (i32)*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 4), align 8, !dbg !118
  switch i32 %2, label %10 [
    i32 0, label %3
    i32 1, label %4
    i32 2, label %11
  ], !dbg !119

; <label>:3:                                      ; preds = %0
  br label %12, !dbg !120

; <label>:4:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata void (i32)** %1, metadata !122, metadata !67), !dbg !124
  %5 = call void (i32)* @signal(i32 5, void (i32)* inttoptr (i64 1 to void (i32)*)) #6, !dbg !125
  store void (i32)* %5, void (i32)** %1, align 8, !dbg !126
  %6 = call i32 @getpid() #6, !dbg !127
  %7 = call i32 @kill(i32 %6, i32 5) #6, !dbg !128
  %8 = load void (i32)*, void (i32)** %1, align 8, !dbg !130
  %9 = call void (i32)* @signal(i32 5, void (i32)* %8) #6, !dbg !131
  br label %12, !dbg !132

; <label>:10:                                     ; preds = %0
  br label %11, !dbg !133

; <label>:11:                                     ; preds = %0, %10
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)), !dbg !135
  call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #6, !dbg !136, !srcloc !137
  br label %12, !dbg !138

; <label>:12:                                     ; preds = %11, %4, %3
  ret void, !dbg !139
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

declare void @Warning(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Panic_SetBreakAction(i32) #0 !dbg !140 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !143, metadata !67), !dbg !144
  %3 = load i32, i32* %2, align 4, !dbg !145
  store i32 %3, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 4), align 8, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nounwind uwtable
define i32 @Panic_GetBreakAction() #0 !dbg !148 {
  %1 = load i32, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 4), align 8, !dbg !151
  ret i32 %1, !dbg !152
}

; Function Attrs: nounwind uwtable
define signext i8 @Panic_GetBreakOnPanic() #0 !dbg !153 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !154, metadata !67), !dbg !155
  store i8 0, i8* %1, align 1, !dbg !155
  %2 = load i32, i32* getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 4), align 8, !dbg !156
  switch i32 %2, label %5 [
    i32 0, label %3
    i32 1, label %4
    i32 2, label %6
  ], !dbg !157

; <label>:3:                                      ; preds = %0
  br label %7, !dbg !158

; <label>:4:                                      ; preds = %0
  br label %7, !dbg !160

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !161

; <label>:6:                                      ; preds = %0, %5
  store i8 1, i8* %1, align 1, !dbg !163
  br label %7, !dbg !164

; <label>:7:                                      ; preds = %6, %4, %3
  %8 = load i8, i8* %1, align 1, !dbg !165
  ret i8 %8, !dbg !166
}

; Function Attrs: nounwind uwtable
define void @Panic_SetCoreDumpFileName(i8*) #0 !dbg !167 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !170, metadata !67), !dbg !171
  %3 = load i8*, i8** getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 5), align 8, !dbg !172
  %4 = icmp ne i8* %3, null, !dbg !174
  br i1 %4, label %5, label %7, !dbg !175

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 5), align 8, !dbg !176
  call void @free(i8* %6) #6, !dbg !178
  br label %7, !dbg !179

; <label>:7:                                      ; preds = %5, %1
  %8 = load i8*, i8** %2, align 8, !dbg !180
  %9 = icmp ne i8* %8, null, !dbg !180
  br i1 %9, label %10, label %13, !dbg !182

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !183
  %12 = call noalias i8* @strdup(i8* %11) #6, !dbg !185
  store i8* %12, i8** getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 5), align 8, !dbg !186
  br label %14, !dbg !187

; <label>:13:                                     ; preds = %7
  store i8* null, i8** getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 5), align 8, !dbg !188
  br label %14

; <label>:14:                                     ; preds = %13, %10
  ret void, !dbg !190
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @Panic_GetCoreDumpFileName() #0 !dbg !191 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.PanicState, %struct.PanicState* @panicState, i32 0, i32 5), align 8, !dbg !194
  ret i8* %1, !dbg !195
}

; Function Attrs: noreturn nounwind uwtable
define void @Panic_Panic(i8*, %struct.__va_list_tag*) #4 !dbg !18 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %5 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !196, metadata !67), !dbg !197
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %4, metadata !198, metadata !67), !dbg !199
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !200, metadata !67), !dbg !204
  call void @MXUser_SetInPanic(), !dbg !205
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !206
  %7 = load i8*, i8** %3, align 8, !dbg !207
  %8 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !208
  %9 = call i32 @Str_Vsnprintf(i8* %6, i64 1024, i8* %7, %struct.__va_list_tag* %8), !dbg !209
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !210
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !211
  %12 = call i32 @fputs(i8* %10, %struct._IO_FILE* %11), !dbg !212
  call void @Log_DisableThrottling(), !dbg !213
  %13 = load i32, i32* @Panic_Panic.count, align 4, !dbg !214
  %14 = add nsw i32 %13, 1, !dbg !214
  store i32 %14, i32* @Panic_Panic.count, align 4, !dbg !214
  switch i32 %13, label %18 [
    i32 0, label %15
    i32 1, label %16
  ], !dbg !215

; <label>:15:                                     ; preds = %2
  br label %21, !dbg !216

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !218
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %17), !dbg !219
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !220
  br label %18, !dbg !220

; <label>:18:                                     ; preds = %2, %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !221
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !222
  call void @Util_ExitProcessAbruptly(i32 1) #7, !dbg !223
  unreachable, !dbg !223

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !224
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %22), !dbg !225
  call void @Util_Backtrace(i32 0), !dbg !226
  call void @Panic_DumpGuiResources(), !dbg !227
  call void @Panic_LoopOnPanic(), !dbg !228
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !229
  call void (i8*, ...) @Panic_PostPanicMsg(i8* %23), !dbg !230
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)), !dbg !231
  call void @Util_ExitProcessAbruptly(i32 -1) #7, !dbg !232
  unreachable, !dbg !232
                                                  ; No predecessors!
  ret void, !dbg !233
}

declare void @MXUser_SetInPanic() #1

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @Log_DisableThrottling() #1

declare void @Log(i8*, ...) #1

; Function Attrs: noreturn
declare void @Util_ExitProcessAbruptly(i32) #5

declare void @Util_Backtrace(i32) #1

; Function Attrs: nounwind uwtable
define void @Panic_DumpGuiResources() #0 !dbg !234 {
  ret void, !dbg !235
}

declare void @Panic_PostPanicMsg(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, globals: !16)
!1 = !DIFile(filename: "panic.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line778")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 66, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/panic.h", directory: "/home/lichi/Desktop/open-vm-tools/line778")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PanicBreakAction_Never", value: 0)
!7 = !DIEnumerator(name: "PanicBreakAction_IfDebuggerAttached", value: 1)
!8 = !DIEnumerator(name: "PanicBreakAction_Always", value: 2)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !12, line: 85, baseType: !13)
!12 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line778")
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !10}
!16 = !{!17, !35}
!17 = distinct !DIGlobalVariable(name: "count", scope: !18, file: !19, line: 530, type: !10, isLocal: true, isDefinition: true, variable: i32* @Panic_Panic.count)
!18 = distinct !DISubprogram(name: "Panic_Panic", scope: !19, file: !19, line: 526, type: !20, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!19 = !DIFile(filename: "panic.c", directory: "/home/lichi/Desktop/open-vm-tools/line778")
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 501, size: 192, align: 64, elements: !27)
!27 = !{!28, !30, !31, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !26, file: !1, line: 501, baseType: !29, size: 32, align: 32)
!29 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !26, file: !1, line: 501, baseType: !29, size: 32, align: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !26, file: !1, line: 501, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !26, file: !1, line: 501, baseType: !32, size: 64, align: 64, offset: 128)
!34 = !{}
!35 = distinct !DIGlobalVariable(name: "panicState", scope: !0, file: !19, line: 64, type: !36, isLocal: true, isDefinition: true, variable: %struct.PanicState* @panicState)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PanicState", file: !19, line: 57, size: 192, align: 64, elements: !37)
!37 = !{!38, !41, !42, !43, !44, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "msgPostOnPanic", scope: !36, file: !19, line: 58, baseType: !39, size: 8, align: 8)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !40, line: 230, baseType: !24)
!40 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line778")
!41 = !DIDerivedType(tag: DW_TAG_member, name: "coreDumpOnPanic", scope: !36, file: !19, line: 59, baseType: !39, size: 8, align: 8, offset: 8)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "loopOnPanic", scope: !36, file: !19, line: 60, baseType: !39, size: 8, align: 8, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "coreDumpFlags", scope: !36, file: !19, line: 61, baseType: !10, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "breakOnPanic", scope: !36, file: !19, line: 62, baseType: !45, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "PanicBreakAction", file: !4, line: 70, baseType: !3)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "coreDumpFile", scope: !36, file: !19, line: 63, baseType: !47, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!48 = !{i32 2, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!51 = distinct !DISubprogram(name: "Panic_Init", scope: !19, file: !19, line: 84, type: !52, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocation(line: 86, column: 33, scope: !51)
!55 = !DILocation(line: 86, column: 31, scope: !51)
!56 = !DILocation(line: 87, column: 29, scope: !51)
!57 = !DILocation(line: 87, column: 27, scope: !51)
!58 = !DILocation(line: 88, column: 30, scope: !51)
!59 = !DILocation(line: 88, column: 28, scope: !51)
!60 = !DILocation(line: 90, column: 31, scope: !51)
!61 = !DILocation(line: 90, column: 29, scope: !51)
!62 = !DILocation(line: 91, column: 1, scope: !51)
!63 = distinct !DISubprogram(name: "Panic_SetPanicMsgPost", scope: !19, file: !19, line: 113, type: !64, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !39}
!66 = !DILocalVariable(name: "postMsg", arg: 1, scope: !63, file: !19, line: 113, type: !39)
!67 = !DIExpression()
!68 = !DILocation(line: 113, column: 28, scope: !63)
!69 = !DILocation(line: 115, column: 32, scope: !63)
!70 = !DILocation(line: 115, column: 30, scope: !63)
!71 = !DILocation(line: 116, column: 1, scope: !63)
!72 = distinct !DISubprogram(name: "Panic_GetPanicMsgPost", scope: !19, file: !19, line: 134, type: !73, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!73 = !DISubroutineType(types: !74)
!74 = !{!39}
!75 = !DILocation(line: 136, column: 22, scope: !72)
!76 = !DILocation(line: 136, column: 4, scope: !72)
!77 = distinct !DISubprogram(name: "Panic_SetCoreDumpOnPanic", scope: !19, file: !19, line: 165, type: !64, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!78 = !DILocalVariable(name: "dumpCore", arg: 1, scope: !77, file: !19, line: 165, type: !39)
!79 = !DILocation(line: 165, column: 31, scope: !77)
!80 = !DILocation(line: 167, column: 33, scope: !77)
!81 = !DILocation(line: 167, column: 31, scope: !77)
!82 = !DILocation(line: 168, column: 1, scope: !77)
!83 = distinct !DISubprogram(name: "Panic_GetCoreDumpOnPanic", scope: !19, file: !19, line: 188, type: !73, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!84 = !DILocation(line: 190, column: 22, scope: !83)
!85 = !DILocation(line: 190, column: 4, scope: !83)
!86 = distinct !DISubprogram(name: "Panic_GetCoreDumpFlags", scope: !19, file: !19, line: 214, type: !87, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!87 = !DISubroutineType(types: !88)
!88 = !{!10}
!89 = !DILocation(line: 216, column: 22, scope: !86)
!90 = !DILocation(line: 216, column: 4, scope: !86)
!91 = distinct !DISubprogram(name: "Panic_SetCoreDumpFlags", scope: !19, file: !19, line: 239, type: !14, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!92 = !DILocalVariable(name: "flags", arg: 1, scope: !91, file: !19, line: 239, type: !10)
!93 = !DILocation(line: 239, column: 28, scope: !91)
!94 = !DILocation(line: 241, column: 31, scope: !91)
!95 = !DILocation(line: 241, column: 29, scope: !91)
!96 = !DILocation(line: 242, column: 1, scope: !91)
!97 = distinct !DISubprogram(name: "Panic_LoopOnPanic", scope: !19, file: !19, line: 262, type: !52, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!98 = !DILocation(line: 264, column: 19, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !19, line: 264, column: 8)
!100 = !DILocation(line: 264, column: 8, scope: !99)
!101 = !DILocation(line: 264, column: 8, scope: !97)
!102 = !DILocation(line: 265, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !19, line: 264, column: 32)
!104 = !DILocation(line: 265, column: 47, scope: !103)
!105 = !DILocation(line: 265, column: 7, scope: !106)
!106 = !DILexicalBlockFile(scope: !103, file: !19, discriminator: 1)
!107 = !DILocation(line: 266, column: 7, scope: !103)
!108 = !DILocation(line: 266, column: 25, scope: !106)
!109 = !DILocation(line: 266, column: 7, scope: !106)
!110 = !DILocation(line: 267, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !19, line: 266, column: 38)
!112 = !DILocation(line: 266, column: 7, scope: !113)
!113 = !DILexicalBlockFile(scope: !103, file: !19, discriminator: 2)
!114 = distinct !{!114, !107}
!115 = !DILocation(line: 269, column: 4, scope: !103)
!116 = !DILocation(line: 270, column: 1, scope: !97)
!117 = distinct !DISubprogram(name: "Panic_BreakOnPanic", scope: !19, file: !19, line: 290, type: !52, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!118 = !DILocation(line: 307, column: 23, scope: !117)
!119 = !DILocation(line: 307, column: 4, scope: !117)
!120 = !DILocation(line: 309, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !19, line: 307, column: 37)
!122 = !DILocalVariable(name: "handler", scope: !123, file: !19, line: 312, type: !13)
!123 = distinct !DILexicalBlock(scope: !121, file: !19, line: 311, column: 7)
!124 = !DILocation(line: 312, column: 17, scope: !123)
!125 = !DILocation(line: 313, column: 20, scope: !123)
!126 = !DILocation(line: 313, column: 18, scope: !123)
!127 = !DILocation(line: 318, column: 15, scope: !123)
!128 = !DILocation(line: 318, column: 10, scope: !129)
!129 = !DILexicalBlockFile(scope: !123, file: !19, discriminator: 1)
!130 = !DILocation(line: 320, column: 25, scope: !123)
!131 = !DILocation(line: 320, column: 10, scope: !123)
!132 = !DILocation(line: 322, column: 7, scope: !121)
!133 = !DILocation(line: 322, column: 7, scope: !134)
!134 = !DILexicalBlockFile(scope: !121, file: !19, discriminator: 1)
!135 = !DILocation(line: 325, column: 7, scope: !121)
!136 = !DILocation(line: 327, column: 7, scope: !121)
!137 = !{i32 236586}
!138 = !DILocation(line: 331, column: 7, scope: !121)
!139 = !DILocation(line: 334, column: 1, scope: !117)
!140 = distinct !DISubprogram(name: "Panic_SetBreakAction", scope: !19, file: !19, line: 354, type: !141, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !45}
!143 = !DILocalVariable(name: "action", arg: 1, scope: !140, file: !19, line: 354, type: !45)
!144 = !DILocation(line: 354, column: 39, scope: !140)
!145 = !DILocation(line: 356, column: 30, scope: !140)
!146 = !DILocation(line: 356, column: 28, scope: !140)
!147 = !DILocation(line: 357, column: 1, scope: !140)
!148 = distinct !DISubprogram(name: "Panic_GetBreakAction", scope: !19, file: !19, line: 377, type: !149, isLocal: false, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!149 = !DISubroutineType(types: !150)
!150 = !{!45}
!151 = !DILocation(line: 379, column: 22, scope: !148)
!152 = !DILocation(line: 379, column: 4, scope: !148)
!153 = distinct !DISubprogram(name: "Panic_GetBreakOnPanic", scope: !19, file: !19, line: 401, type: !73, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!154 = !DILocalVariable(name: "shouldBreak", scope: !153, file: !19, line: 403, type: !39)
!155 = !DILocation(line: 403, column: 9, scope: !153)
!156 = !DILocation(line: 405, column: 23, scope: !153)
!157 = !DILocation(line: 405, column: 4, scope: !153)
!158 = !DILocation(line: 407, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !19, line: 405, column: 37)
!160 = !DILocation(line: 435, column: 7, scope: !159)
!161 = !DILocation(line: 435, column: 7, scope: !162)
!162 = !DILexicalBlockFile(scope: !159, file: !19, discriminator: 1)
!163 = !DILocation(line: 438, column: 19, scope: !159)
!164 = !DILocation(line: 439, column: 7, scope: !159)
!165 = !DILocation(line: 441, column: 11, scope: !153)
!166 = !DILocation(line: 441, column: 4, scope: !153)
!167 = distinct !DISubprogram(name: "Panic_SetCoreDumpFileName", scope: !19, file: !19, line: 467, type: !168, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !22}
!170 = !DILocalVariable(name: "fileName", arg: 1, scope: !167, file: !19, line: 467, type: !22)
!171 = !DILocation(line: 467, column: 39, scope: !167)
!172 = !DILocation(line: 469, column: 19, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !19, line: 469, column: 8)
!174 = !DILocation(line: 469, column: 8, scope: !173)
!175 = !DILocation(line: 469, column: 8, scope: !167)
!176 = !DILocation(line: 470, column: 23, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !19, line: 469, column: 33)
!178 = !DILocation(line: 470, column: 7, scope: !177)
!179 = !DILocation(line: 471, column: 4, scope: !177)
!180 = !DILocation(line: 473, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !167, file: !19, line: 473, column: 8)
!182 = !DILocation(line: 473, column: 8, scope: !167)
!183 = !DILocation(line: 474, column: 40, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !19, line: 473, column: 18)
!185 = !DILocation(line: 474, column: 33, scope: !184)
!186 = !DILocation(line: 474, column: 31, scope: !184)
!187 = !DILocation(line: 475, column: 4, scope: !184)
!188 = !DILocation(line: 476, column: 31, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !19, line: 475, column: 11)
!190 = !DILocation(line: 478, column: 1, scope: !167)
!191 = distinct !DISubprogram(name: "Panic_GetCoreDumpFileName", scope: !19, file: !19, line: 498, type: !192, isLocal: false, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!192 = !DISubroutineType(types: !193)
!193 = !{!22}
!194 = !DILocation(line: 500, column: 22, scope: !191)
!195 = !DILocation(line: 500, column: 4, scope: !191)
!196 = !DILocalVariable(name: "format", arg: 1, scope: !18, file: !19, line: 526, type: !22)
!197 = !DILocation(line: 526, column: 25, scope: !18)
!198 = !DILocalVariable(name: "args", arg: 2, scope: !18, file: !19, line: 527, type: !25)
!199 = !DILocation(line: 527, column: 21, scope: !18)
!200 = !DILocalVariable(name: "buf", scope: !18, file: !19, line: 529, type: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 8, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 1024)
!204 = !DILocation(line: 529, column: 9, scope: !18)
!205 = !DILocation(line: 532, column: 4, scope: !18)
!206 = !DILocation(line: 534, column: 18, scope: !18)
!207 = !DILocation(line: 534, column: 35, scope: !18)
!208 = !DILocation(line: 534, column: 43, scope: !18)
!209 = !DILocation(line: 534, column: 4, scope: !18)
!210 = !DILocation(line: 544, column: 10, scope: !18)
!211 = !DILocation(line: 544, column: 14, scope: !18)
!212 = !DILocation(line: 544, column: 4, scope: !18)
!213 = !DILocation(line: 561, column: 4, scope: !18)
!214 = !DILocation(line: 570, column: 17, scope: !18)
!215 = !DILocation(line: 570, column: 4, scope: !18)
!216 = !DILocation(line: 572, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !18, file: !19, line: 570, column: 21)
!218 = !DILocation(line: 574, column: 24, scope: !217)
!219 = !DILocation(line: 574, column: 7, scope: !217)
!220 = !DILocation(line: 575, column: 7, scope: !217)
!221 = !DILocation(line: 577, column: 14, scope: !217)
!222 = !DILocation(line: 577, column: 7, scope: !217)
!223 = !DILocation(line: 578, column: 7, scope: !217)
!224 = !DILocation(line: 595, column: 21, scope: !18)
!225 = !DILocation(line: 595, column: 4, scope: !18)
!226 = !DILocation(line: 596, column: 4, scope: !18)
!227 = !DILocation(line: 603, column: 4, scope: !18)
!228 = !DILocation(line: 611, column: 4, scope: !18)
!229 = !DILocation(line: 618, column: 23, scope: !18)
!230 = !DILocation(line: 618, column: 4, scope: !18)
!231 = !DILocation(line: 623, column: 4, scope: !18)
!232 = !DILocation(line: 625, column: 4, scope: !18)
!233 = !DILocation(line: 627, column: 1, scope: !18)
!234 = distinct !DISubprogram(name: "Panic_DumpGuiResources", scope: !19, file: !19, line: 647, type: !52, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!235 = !DILocation(line: 662, column: 1, scope: !234)
