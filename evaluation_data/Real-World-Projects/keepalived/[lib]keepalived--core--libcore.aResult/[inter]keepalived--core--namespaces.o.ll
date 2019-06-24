; ModuleID = './[inter]keepalived--core--namespaces.o.i'
source_filename = "./[inter]keepalived--core--namespaces.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mount_dirname = internal global i8* null, align 8
@netns_dir = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to malloc for set_namespaces()\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to open %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"setns() failed with error %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/var/run/netns/\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for pid file dirname\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"/var/run/keepalived/\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to create directory %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"mount unshare failed (%d) '%s'\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Mount slave failed, error (%d) '%s'\00", align 1
@pid_directory = external global i8*, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"Mount failed, error (%d) '%s'\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"unmount of %s failed - errno %d\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"unlink of %s failed - error (%d) '%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @free_dirname() #0 !dbg !43 {
  %1 = load i8*, i8** @mount_dirname, align 8, !dbg !47
  %2 = icmp ne i8* %1, null, !dbg !47
  br i1 %2, label %3, label %5, !dbg !50

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @mount_dirname, align 8, !dbg !51
  call void @free(i8* %4) #6, !dbg !54
  store i8* null, i8** @mount_dirname, align 8, !dbg !55
  br label %5, !dbg !56

; <label>:5:                                      ; preds = %3, %0
  store i8* null, i8** @mount_dirname, align 8, !dbg !57
  ret void, !dbg !58
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @set_namespaces(i8*) #0 !dbg !59 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !63, metadata !64), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %4, metadata !66, metadata !64), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %5, metadata !68, metadata !64), !dbg !70
  %6 = load i8*, i8** @netns_dir, align 8, !dbg !71
  %7 = call i64 @strlen(i8* %6) #7, !dbg !72
  %8 = load i8*, i8** %3, align 8, !dbg !73
  %9 = call i64 @strlen(i8* %8) #7, !dbg !74
  %10 = add i64 %7, %9, !dbg !76
  %11 = add i64 %10, 1, !dbg !77
  %12 = call i8* @zalloc(i64 %11), !dbg !78
  store i8* %12, i8** %4, align 8, !dbg !80
  %13 = load i8*, i8** %4, align 8, !dbg !81
  %14 = icmp ne i8* %13, null, !dbg !81
  br i1 %14, label %16, label %15, !dbg !83

; <label>:15:                                     ; preds = %1
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0)), !dbg !84
  store i1 false, i1* %2, align 1, !dbg !86
  br label %59, !dbg !86

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %4, align 8, !dbg !87
  %18 = load i8*, i8** @netns_dir, align 8, !dbg !88
  %19 = call i8* @strcpy(i8* %17, i8* %18) #6, !dbg !89
  %20 = load i8*, i8** %4, align 8, !dbg !90
  %21 = load i8*, i8** %3, align 8, !dbg !91
  %22 = call i8* @strcat(i8* %20, i8* %21) #6, !dbg !92
  %23 = load i8*, i8** %4, align 8, !dbg !93
  %24 = call i32 (i8*, i32, ...) @open(i8* %23, i32 0), !dbg !94
  store i32 %24, i32* %5, align 4, !dbg !95
  %25 = load i32, i32* %5, align 4, !dbg !96
  %26 = icmp eq i32 %25, -1, !dbg !98
  br i1 %26, label %27, label %30, !dbg !99

; <label>:27:                                     ; preds = %16
  %28 = load i8*, i8** %4, align 8, !dbg !100
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %28), !dbg !102
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !103
  br label %47, !dbg !104

; <label>:30:                                     ; preds = %16
  %31 = load i32, i32* %5, align 4, !dbg !105
  %32 = call i32 @setns(i32 %31, i32 1073741824) #6, !dbg !107
  %33 = icmp ne i32 %32, 0, !dbg !107
  br i1 %33, label %34, label %38, !dbg !108

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno_location() #2, !dbg !109
  %36 = load i32, i32* %35, align 4, !dbg !112
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %36), !dbg !113
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !115
  br label %47, !dbg !116

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %5, align 4, !dbg !117
  %40 = call i32 @close(i32 %39), !dbg !118
  %41 = load i8*, i8** %3, align 8, !dbg !119
  call void @set_run_mount(i8* %41), !dbg !120
  %42 = load i8*, i8** %4, align 8, !dbg !121
  %43 = icmp ne i8* %42, null, !dbg !121
  br i1 %43, label %44, label %46, !dbg !124

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %4, align 8, !dbg !125
  call void @free(i8* %45) #6, !dbg !128
  store i8* null, i8** %4, align 8, !dbg !129
  br label %46, !dbg !130

; <label>:46:                                     ; preds = %44, %38
  store i8* null, i8** %4, align 8, !dbg !131
  store i1 true, i1* %2, align 1, !dbg !132
  br label %59, !dbg !132

; <label>:47:                                     ; preds = %34, %27
  %48 = load i32, i32* %5, align 4, !dbg !133
  %49 = icmp ne i32 %48, -1, !dbg !135
  br i1 %49, label %50, label %53, !dbg !136

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %5, align 4, !dbg !137
  %52 = call i32 @close(i32 %51), !dbg !138
  br label %53, !dbg !138

; <label>:53:                                     ; preds = %50, %47
  %54 = load i8*, i8** %4, align 8, !dbg !139
  %55 = icmp ne i8* %54, null, !dbg !139
  br i1 %55, label %56, label %58, !dbg !142

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %4, align 8, !dbg !143
  call void @free(i8* %57) #6, !dbg !146
  store i8* null, i8** %4, align 8, !dbg !147
  br label %58, !dbg !148

; <label>:58:                                     ; preds = %56, %53
  store i8* null, i8** %4, align 8, !dbg !149
  store i1 false, i1* %2, align 1, !dbg !150
  br label %59, !dbg !150

; <label>:59:                                     ; preds = %58, %46, %15
  %60 = load i1, i1* %2, align 1, !dbg !151
  ret i1 %60, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @zalloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

declare i32 @open(i8*, i32, ...) #3

declare i32 @assert(...) #3

; Function Attrs: nounwind
declare i32 @setns(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define internal void @set_run_mount(i8*) #0 !dbg !152 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !155, metadata !64), !dbg !156
  %3 = load i8*, i8** %2, align 8, !dbg !157
  %4 = call i64 @strlen(i8* %3) #7, !dbg !158
  %5 = add i64 21, %4, !dbg !159
  %6 = call i8* @zalloc(i64 %5), !dbg !160
  store i8* %6, i8** @mount_dirname, align 8, !dbg !162
  %7 = load i8*, i8** @mount_dirname, align 8, !dbg !163
  %8 = icmp ne i8* %7, null, !dbg !163
  br i1 %8, label %10, label %9, !dbg !165

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0)), !dbg !166
  br label %55, !dbg !168

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** @mount_dirname, align 8, !dbg !169
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !170
  %13 = load i8*, i8** @mount_dirname, align 8, !dbg !171
  %14 = load i8*, i8** %2, align 8, !dbg !172
  %15 = call i8* @strcat(i8* %13, i8* %14) #6, !dbg !173
  %16 = load i8*, i8** @mount_dirname, align 8, !dbg !174
  %17 = call i32 @mkdir(i8* %16, i32 493) #6, !dbg !176
  %18 = icmp ne i32 %17, 0, !dbg !176
  br i1 %18, label %19, label %26, !dbg !177

; <label>:19:                                     ; preds = %10
  %20 = call i32* @__errno_location() #2, !dbg !178
  %21 = load i32, i32* %20, align 4, !dbg !180
  %22 = icmp ne i32 %21, 17, !dbg !181
  br i1 %22, label %23, label %26, !dbg !182

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** @mount_dirname, align 8, !dbg !183
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* %24), !dbg !185
  %25 = load i8*, i8** @mount_dirname, align 8, !dbg !186
  call void @free(i8* %25) #6, !dbg !187
  store i8* null, i8** @mount_dirname, align 8, !dbg !188
  store i8* null, i8** @mount_dirname, align 8, !dbg !189
  br label %55, !dbg !190

; <label>:26:                                     ; preds = %19, %10
  %27 = call i32 @unshare(i32 131072) #6, !dbg !191
  %28 = icmp ne i32 %27, 0, !dbg !191
  br i1 %28, label %29, label %35, !dbg !193

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno_location() #2, !dbg !194
  %31 = load i32, i32* %30, align 4, !dbg !196
  %32 = call i32* @__errno_location() #2, !dbg !197
  %33 = load i32, i32* %32, align 4, !dbg !199
  %34 = call i8* @strerror(i32 %33) #6, !dbg !200
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i32 %31, i8* %34), !dbg !202
  br label %55, !dbg !204

; <label>:35:                                     ; preds = %26
  %36 = call i32 @mount(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* null, i64 540672, i8* null) #6, !dbg !205
  %37 = icmp ne i32 %36, 0, !dbg !205
  br i1 %37, label %38, label %44, !dbg !207

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno_location() #2, !dbg !208
  %40 = load i32, i32* %39, align 4, !dbg !209
  %41 = call i32* @__errno_location() #2, !dbg !210
  %42 = load i32, i32* %41, align 4, !dbg !212
  %43 = call i8* @strerror(i32 %42) #6, !dbg !213
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i32 %40, i8* %43), !dbg !215
  br label %44, !dbg !217

; <label>:44:                                     ; preds = %38, %35
  %45 = load i8*, i8** @mount_dirname, align 8, !dbg !218
  %46 = load i8*, i8** @pid_directory, align 8, !dbg !220
  %47 = call i32 @mount(i8* %45, i8* %46, i8* null, i64 4096, i8* null) #6, !dbg !221
  %48 = icmp ne i32 %47, 0, !dbg !221
  br i1 %48, label %49, label %55, !dbg !222

; <label>:49:                                     ; preds = %44
  %50 = call i32* @__errno_location() #2, !dbg !223
  %51 = load i32, i32* %50, align 4, !dbg !224
  %52 = call i32* @__errno_location() #2, !dbg !225
  %53 = load i32, i32* %52, align 4, !dbg !227
  %54 = call i8* @strerror(i32 %53) #6, !dbg !228
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 %51, i8* %54), !dbg !230
  br label %55, !dbg !232

; <label>:55:                                     ; preds = %9, %23, %29, %49, %44
  ret void, !dbg !233
}

; Function Attrs: nounwind uwtable
define void @clear_namespaces() #0 !dbg !234 {
  call void @unmount_run(), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: nounwind uwtable
define internal void @unmount_run() #0 !dbg !237 {
  %1 = load i8*, i8** @pid_directory, align 8, !dbg !238
  %2 = call i32 @umount(i8* %1) #6, !dbg !240
  %3 = icmp ne i32 %2, 0, !dbg !240
  br i1 %3, label %4, label %8, !dbg !241

; <label>:4:                                      ; preds = %0
  %5 = load i8*, i8** @pid_directory, align 8, !dbg !242
  %6 = call i32* @__errno_location() #2, !dbg !243
  %7 = load i32, i32* %6, align 4, !dbg !244
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i8* %5, i32 %7), !dbg !245
  br label %8, !dbg !247

; <label>:8:                                      ; preds = %4, %0
  %9 = load i8*, i8** @mount_dirname, align 8, !dbg !248
  %10 = icmp ne i8* %9, null, !dbg !248
  br i1 %10, label %11, label %32, !dbg !250

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** @mount_dirname, align 8, !dbg !251
  %13 = call i32 @rmdir(i8* %12) #6, !dbg !254
  %14 = icmp ne i32 %13, 0, !dbg !254
  br i1 %14, label %15, label %30, !dbg !255

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno_location() #2, !dbg !256
  %17 = load i32, i32* %16, align 4, !dbg !258
  %18 = icmp ne i32 %17, 39, !dbg !259
  br i1 %18, label %19, label %30, !dbg !260

; <label>:19:                                     ; preds = %15
  %20 = call i32* @__errno_location() #2, !dbg !261
  %21 = load i32, i32* %20, align 4, !dbg !263
  %22 = icmp ne i32 %21, 16, !dbg !264
  br i1 %22, label %23, label %30, !dbg !265

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** @mount_dirname, align 8, !dbg !266
  %25 = call i32* @__errno_location() #2, !dbg !267
  %26 = load i32, i32* %25, align 4, !dbg !268
  %27 = call i32* @__errno_location() #2, !dbg !269
  %28 = load i32, i32* %27, align 4, !dbg !270
  %29 = call i8* @strerror(i32 %28) #6, !dbg !271
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* %24, i32 %26, i8* %29), !dbg !272
  br label %30, !dbg !274

; <label>:30:                                     ; preds = %23, %19, %15, %11
  %31 = load i8*, i8** @mount_dirname, align 8, !dbg !275
  call void @free(i8* %31) #6, !dbg !276
  store i8* null, i8** @mount_dirname, align 8, !dbg !277
  br label %32, !dbg !278

; <label>:32:                                     ; preds = %30, %8
  ret void, !dbg !279
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @unshare(i32) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind
declare i32 @mount(i8*, i8*, i8*, i64, i8*) #1

; Function Attrs: nounwind
declare i32 @umount(i8*) #1

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41}
!llvm.ident = !{!42}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !32)
!1 = !DIFile(filename: "[inter]keepalived--core--namespaces.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 33, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mount.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!6 = !DIEnumerator(name: "MS_RDONLY", value: 1)
!7 = !DIEnumerator(name: "MS_NOSUID", value: 2)
!8 = !DIEnumerator(name: "MS_NODEV", value: 4)
!9 = !DIEnumerator(name: "MS_NOEXEC", value: 8)
!10 = !DIEnumerator(name: "MS_SYNCHRONOUS", value: 16)
!11 = !DIEnumerator(name: "MS_REMOUNT", value: 32)
!12 = !DIEnumerator(name: "MS_MANDLOCK", value: 64)
!13 = !DIEnumerator(name: "MS_DIRSYNC", value: 128)
!14 = !DIEnumerator(name: "MS_NOATIME", value: 1024)
!15 = !DIEnumerator(name: "MS_NODIRATIME", value: 2048)
!16 = !DIEnumerator(name: "MS_BIND", value: 4096)
!17 = !DIEnumerator(name: "MS_MOVE", value: 8192)
!18 = !DIEnumerator(name: "MS_REC", value: 16384)
!19 = !DIEnumerator(name: "MS_SILENT", value: 32768)
!20 = !DIEnumerator(name: "MS_POSIXACL", value: 65536)
!21 = !DIEnumerator(name: "MS_UNBINDABLE", value: 131072)
!22 = !DIEnumerator(name: "MS_PRIVATE", value: 262144)
!23 = !DIEnumerator(name: "MS_SLAVE", value: 524288)
!24 = !DIEnumerator(name: "MS_SHARED", value: 1048576)
!25 = !DIEnumerator(name: "MS_RELATIME", value: 2097152)
!26 = !DIEnumerator(name: "MS_KERNMOUNT", value: 4194304)
!27 = !DIEnumerator(name: "MS_I_VERSION", value: 8388608)
!28 = !DIEnumerator(name: "MS_STRICTATIME", value: 16777216)
!29 = !DIEnumerator(name: "MS_LAZYTIME", value: 33554432)
!30 = !DIEnumerator(name: "MS_ACTIVE", value: 1073741824)
!31 = !DIEnumerator(name: "MS_NOUSER", value: -2147483648)
!32 = !{!33, !37}
!33 = distinct !DIGlobalVariable(name: "mount_dirname", scope: !0, file: !34, line: 198, type: !35, isLocal: true, isDefinition: true, variable: i8** @mount_dirname)
!34 = !DIFile(filename: "namespaces.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = distinct !DIGlobalVariable(name: "netns_dir", scope: !0, file: !34, line: 197, type: !38, isLocal: true, isDefinition: true, variable: i8** @netns_dir)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!40 = !{i32 2, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!43 = distinct !DISubprogram(name: "free_dirname", scope: !34, file: !34, line: 201, type: !44, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null}
!46 = !{}
!47 = !DILocation(line: 203, column: 8, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !34, line: 203, column: 8)
!49 = distinct !DILexicalBlock(scope: !43, file: !34, line: 203, column: 2)
!50 = !DILocation(line: 203, column: 8, scope: !49)
!51 = !DILocation(line: 203, column: 31, scope: !52)
!52 = !DILexicalBlockFile(scope: !53, file: !34, discriminator: 1)
!53 = distinct !DILexicalBlock(scope: !48, file: !34, line: 203, column: 23)
!54 = !DILocation(line: 203, column: 26, scope: !52)
!55 = !DILocation(line: 203, column: 63, scope: !52)
!56 = !DILocation(line: 203, column: 3, scope: !52)
!57 = !DILocation(line: 204, column: 16, scope: !43)
!58 = !DILocation(line: 205, column: 1, scope: !43)
!59 = distinct !DISubprogram(name: "set_namespaces", scope: !34, file: !34, line: 255, type: !60, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !46)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !38}
!62 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!63 = !DILocalVariable(name: "net_namespace", arg: 1, scope: !59, file: !34, line: 255, type: !38)
!64 = !DIExpression()
!65 = !DILocation(line: 255, column: 28, scope: !59)
!66 = !DILocalVariable(name: "netns_path", scope: !59, file: !34, line: 257, type: !35)
!67 = !DILocation(line: 257, column: 8, scope: !59)
!68 = !DILocalVariable(name: "fd", scope: !59, file: !34, line: 258, type: !69)
!69 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!70 = !DILocation(line: 258, column: 6, scope: !59)
!71 = !DILocation(line: 260, column: 30, scope: !59)
!72 = !DILocation(line: 260, column: 23, scope: !59)
!73 = !DILocation(line: 260, column: 50, scope: !59)
!74 = !DILocation(line: 260, column: 43, scope: !75)
!75 = !DILexicalBlockFile(scope: !59, file: !34, discriminator: 1)
!76 = !DILocation(line: 260, column: 41, scope: !59)
!77 = !DILocation(line: 260, column: 65, scope: !59)
!78 = !DILocation(line: 260, column: 16, scope: !79)
!79 = !DILexicalBlockFile(scope: !59, file: !34, discriminator: 2)
!80 = !DILocation(line: 260, column: 13, scope: !59)
!81 = !DILocation(line: 261, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !59, file: !34, line: 261, column: 6)
!83 = !DILocation(line: 261, column: 6, scope: !59)
!84 = !DILocation(line: 262, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !34, line: 261, column: 19)
!86 = !DILocation(line: 263, column: 3, scope: !85)
!87 = !DILocation(line: 266, column: 9, scope: !59)
!88 = !DILocation(line: 266, column: 21, scope: !59)
!89 = !DILocation(line: 266, column: 2, scope: !59)
!90 = !DILocation(line: 267, column: 9, scope: !59)
!91 = !DILocation(line: 267, column: 21, scope: !59)
!92 = !DILocation(line: 267, column: 2, scope: !59)
!93 = !DILocation(line: 269, column: 12, scope: !59)
!94 = !DILocation(line: 269, column: 7, scope: !59)
!95 = !DILocation(line: 269, column: 5, scope: !59)
!96 = !DILocation(line: 270, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !59, file: !34, line: 270, column: 6)
!98 = !DILocation(line: 270, column: 9, scope: !97)
!99 = !DILocation(line: 270, column: 6, scope: !59)
!100 = !DILocation(line: 271, column: 45, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !34, line: 270, column: 16)
!102 = !DILocation(line: 271, column: 3, scope: !101)
!103 = !DILocation(line: 272, column: 1, scope: !101)
!104 = !DILocation(line: 273, column: 3, scope: !101)
!105 = !DILocation(line: 276, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !59, file: !34, line: 276, column: 6)
!107 = !DILocation(line: 276, column: 6, scope: !106)
!108 = !DILocation(line: 276, column: 6, scope: !59)
!109 = !DILocation(line: 276, column: 58, scope: !110)
!110 = !DILexicalBlockFile(scope: !111, file: !34, discriminator: 1)
!111 = distinct !DILexicalBlock(scope: !106, file: !34, line: 275, column: 30)
!112 = !DILocation(line: 276, column: 57, scope: !110)
!113 = !DILocation(line: 276, column: 3, scope: !114)
!114 = !DILexicalBlockFile(scope: !110, file: !34, discriminator: 2)
!115 = !DILocation(line: 277, column: 1, scope: !111)
!116 = !DILocation(line: 278, column: 3, scope: !111)
!117 = !DILocation(line: 281, column: 8, scope: !59)
!118 = !DILocation(line: 281, column: 2, scope: !59)
!119 = !DILocation(line: 283, column: 16, scope: !59)
!120 = !DILocation(line: 283, column: 2, scope: !59)
!121 = !DILocation(line: 285, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !34, line: 285, column: 8)
!123 = distinct !DILexicalBlock(scope: !59, file: !34, line: 285, column: 2)
!124 = !DILocation(line: 285, column: 8, scope: !123)
!125 = !DILocation(line: 285, column: 28, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !34, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !122, file: !34, line: 285, column: 20)
!128 = !DILocation(line: 285, column: 23, scope: !126)
!129 = !DILocation(line: 285, column: 54, scope: !126)
!130 = !DILocation(line: 284, column: 3, scope: !127)
!131 = !DILocation(line: 285, column: 13, scope: !79)
!132 = !DILocation(line: 287, column: 2, scope: !59)
!133 = !DILocation(line: 290, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !59, file: !34, line: 290, column: 6)
!135 = !DILocation(line: 290, column: 9, scope: !134)
!136 = !DILocation(line: 290, column: 6, scope: !59)
!137 = !DILocation(line: 291, column: 9, scope: !134)
!138 = !DILocation(line: 291, column: 3, scope: !134)
!139 = !DILocation(line: 292, column: 8, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !34, line: 292, column: 8)
!141 = distinct !DILexicalBlock(scope: !59, file: !34, line: 292, column: 2)
!142 = !DILocation(line: 292, column: 8, scope: !141)
!143 = !DILocation(line: 292, column: 28, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !34, discriminator: 1)
!145 = distinct !DILexicalBlock(scope: !140, file: !34, line: 292, column: 20)
!146 = !DILocation(line: 292, column: 23, scope: !144)
!147 = !DILocation(line: 292, column: 54, scope: !144)
!148 = !DILocation(line: 292, column: 3, scope: !144)
!149 = !DILocation(line: 293, column: 13, scope: !59)
!150 = !DILocation(line: 295, column: 2, scope: !59)
!151 = !DILocation(line: 296, column: 1, scope: !59)
!152 = distinct !DISubprogram(name: "set_run_mount", scope: !34, file: !34, line: 208, type: !153, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !46)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !38}
!155 = !DILocalVariable(name: "net_namespace", arg: 1, scope: !152, file: !34, line: 208, type: !38)
!156 = !DILocation(line: 208, column: 27, scope: !152)
!157 = !DILocation(line: 211, column: 48, scope: !152)
!158 = !DILocation(line: 211, column: 41, scope: !152)
!159 = !DILocation(line: 211, column: 39, scope: !152)
!160 = !DILocation(line: 211, column: 19, scope: !161)
!161 = !DILexicalBlockFile(scope: !152, file: !34, discriminator: 1)
!162 = !DILocation(line: 211, column: 16, scope: !152)
!163 = !DILocation(line: 212, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !34, line: 212, column: 6)
!165 = !DILocation(line: 212, column: 6, scope: !152)
!166 = !DILocation(line: 213, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !34, line: 212, column: 22)
!168 = !DILocation(line: 214, column: 3, scope: !167)
!169 = !DILocation(line: 217, column: 9, scope: !152)
!170 = !DILocation(line: 217, column: 2, scope: !152)
!171 = !DILocation(line: 218, column: 9, scope: !152)
!172 = !DILocation(line: 218, column: 24, scope: !152)
!173 = !DILocation(line: 218, column: 2, scope: !152)
!174 = !DILocation(line: 220, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !152, file: !34, line: 220, column: 6)
!176 = !DILocation(line: 220, column: 6, scope: !175)
!177 = !DILocation(line: 220, column: 75, scope: !175)
!178 = !DILocation(line: 220, column: 80, scope: !179)
!179 = !DILexicalBlockFile(scope: !175, file: !34, discriminator: 1)
!180 = !DILocation(line: 220, column: 79, scope: !179)
!181 = !DILocation(line: 220, column: 84, scope: !179)
!182 = !DILocation(line: 220, column: 6, scope: !179)
!183 = !DILocation(line: 221, column: 57, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !34, line: 220, column: 95)
!185 = !DILocation(line: 221, column: 3, scope: !184)
!186 = !DILocation(line: 222, column: 9, scope: !184)
!187 = !DILocation(line: 222, column: 4, scope: !184)
!188 = !DILocation(line: 222, column: 41, scope: !184)
!189 = !DILocation(line: 223, column: 17, scope: !184)
!190 = !DILocation(line: 224, column: 3, scope: !184)
!191 = !DILocation(line: 227, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !152, file: !34, line: 227, column: 6)
!193 = !DILocation(line: 227, column: 6, scope: !152)
!194 = !DILocation(line: 228, column: 60, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !34, line: 227, column: 27)
!196 = !DILocation(line: 228, column: 59, scope: !195)
!197 = !DILocation(line: 228, column: 76, scope: !198)
!198 = !DILexicalBlockFile(scope: !195, file: !34, discriminator: 1)
!199 = !DILocation(line: 228, column: 75, scope: !195)
!200 = !DILocation(line: 228, column: 65, scope: !201)
!201 = !DILexicalBlockFile(scope: !195, file: !34, discriminator: 2)
!202 = !DILocation(line: 228, column: 3, scope: !203)
!203 = !DILexicalBlockFile(scope: !195, file: !34, discriminator: 3)
!204 = !DILocation(line: 229, column: 3, scope: !195)
!205 = !DILocation(line: 234, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !152, file: !34, line: 234, column: 6)
!207 = !DILocation(line: 234, column: 6, scope: !152)
!208 = !DILocation(line: 235, column: 65, scope: !206)
!209 = !DILocation(line: 235, column: 64, scope: !206)
!210 = !DILocation(line: 235, column: 81, scope: !211)
!211 = !DILexicalBlockFile(scope: !206, file: !34, discriminator: 1)
!212 = !DILocation(line: 235, column: 80, scope: !206)
!213 = !DILocation(line: 235, column: 70, scope: !214)
!214 = !DILexicalBlockFile(scope: !206, file: !34, discriminator: 2)
!215 = !DILocation(line: 235, column: 3, scope: !216)
!216 = !DILexicalBlockFile(scope: !206, file: !34, discriminator: 3)
!217 = !DILocation(line: 235, column: 3, scope: !206)
!218 = !DILocation(line: 238, column: 12, scope: !219)
!219 = distinct !DILexicalBlock(scope: !152, file: !34, line: 238, column: 6)
!220 = !DILocation(line: 238, column: 27, scope: !219)
!221 = !DILocation(line: 238, column: 6, scope: !219)
!222 = !DILocation(line: 238, column: 6, scope: !152)
!223 = !DILocation(line: 239, column: 59, scope: !219)
!224 = !DILocation(line: 239, column: 58, scope: !219)
!225 = !DILocation(line: 239, column: 75, scope: !226)
!226 = !DILexicalBlockFile(scope: !219, file: !34, discriminator: 1)
!227 = !DILocation(line: 239, column: 74, scope: !219)
!228 = !DILocation(line: 239, column: 64, scope: !229)
!229 = !DILexicalBlockFile(scope: !219, file: !34, discriminator: 2)
!230 = !DILocation(line: 239, column: 3, scope: !231)
!231 = !DILexicalBlockFile(scope: !219, file: !34, discriminator: 3)
!232 = !DILocation(line: 239, column: 3, scope: !219)
!233 = !DILocation(line: 240, column: 1, scope: !152)
!234 = distinct !DISubprogram(name: "clear_namespaces", scope: !34, file: !34, line: 299, type: !44, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !46)
!235 = !DILocation(line: 301, column: 2, scope: !234)
!236 = !DILocation(line: 302, column: 1, scope: !234)
!237 = distinct !DISubprogram(name: "unmount_run", scope: !34, file: !34, line: 243, type: !44, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !46)
!238 = !DILocation(line: 245, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !34, line: 245, column: 6)
!240 = !DILocation(line: 245, column: 6, scope: !239)
!241 = !DILocation(line: 245, column: 6, scope: !237)
!242 = !DILocation(line: 246, column: 59, scope: !239)
!243 = !DILocation(line: 246, column: 76, scope: !239)
!244 = !DILocation(line: 246, column: 75, scope: !239)
!245 = !DILocation(line: 246, column: 3, scope: !246)
!246 = !DILexicalBlockFile(scope: !239, file: !34, discriminator: 1)
!247 = !DILocation(line: 246, column: 3, scope: !239)
!248 = !DILocation(line: 247, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !237, file: !34, line: 247, column: 6)
!250 = !DILocation(line: 247, column: 6, scope: !237)
!251 = !DILocation(line: 248, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !34, line: 248, column: 7)
!253 = distinct !DILexicalBlock(scope: !249, file: !34, line: 247, column: 21)
!254 = !DILocation(line: 248, column: 7, scope: !252)
!255 = !DILocation(line: 248, column: 28, scope: !252)
!256 = !DILocation(line: 248, column: 32, scope: !257)
!257 = !DILexicalBlockFile(scope: !252, file: !34, discriminator: 1)
!258 = !DILocation(line: 248, column: 31, scope: !257)
!259 = !DILocation(line: 248, column: 36, scope: !257)
!260 = !DILocation(line: 248, column: 49, scope: !257)
!261 = !DILocation(line: 248, column: 54, scope: !262)
!262 = !DILexicalBlockFile(scope: !252, file: !34, discriminator: 2)
!263 = !DILocation(line: 248, column: 53, scope: !262)
!264 = !DILocation(line: 248, column: 58, scope: !262)
!265 = !DILocation(line: 248, column: 7, scope: !262)
!266 = !DILocation(line: 249, column: 66, scope: !252)
!267 = !DILocation(line: 249, column: 83, scope: !252)
!268 = !DILocation(line: 249, column: 82, scope: !252)
!269 = !DILocation(line: 249, column: 99, scope: !257)
!270 = !DILocation(line: 249, column: 98, scope: !252)
!271 = !DILocation(line: 249, column: 88, scope: !262)
!272 = !DILocation(line: 249, column: 4, scope: !273)
!273 = !DILexicalBlockFile(scope: !252, file: !34, discriminator: 3)
!274 = !DILocation(line: 249, column: 4, scope: !252)
!275 = !DILocation(line: 250, column: 9, scope: !253)
!276 = !DILocation(line: 250, column: 4, scope: !253)
!277 = !DILocation(line: 250, column: 41, scope: !253)
!278 = !DILocation(line: 251, column: 2, scope: !253)
!279 = !DILocation(line: 252, column: 1, scope: !237)
