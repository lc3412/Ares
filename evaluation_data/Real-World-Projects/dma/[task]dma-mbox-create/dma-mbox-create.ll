; ModuleID = './dma-mbox-create.i'
source_filename = "./dma-mbox-create.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"dma-mbox-create\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot find dma group `%s'\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot set gid to %d (%s)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot set gid to %d (%s), still at %d\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"no arguments\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"creating mbox for `%s'\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"path separator in username `%s'\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot find user `%s'\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/var/mail\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"mbox path too long\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"cannot build mbox path for `%s/%s'\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"cannot open mbox `%s'\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"cannot change owner of mbox `%s'\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"cannot change permissions of mbox `%s'\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"successfully created mbox for `%s'\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !11 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4097 x i8], align 16
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !20), !dbg !21
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !22, metadata !20), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %6, metadata !24, metadata !20), !dbg !27
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !28, metadata !20), !dbg !44
  call void @llvm.dbg.declare(metadata %struct.group** %8, metadata !45, metadata !20), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %9, metadata !55, metadata !20), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %10, metadata !59, metadata !20), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %11, metadata !62, metadata !20), !dbg !63
  call void @llvm.dbg.declare(metadata [4097 x i8]* %12, metadata !64, metadata !20), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %13, metadata !69, metadata !20), !dbg !70
  call void @openlog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 0, i32 16), !dbg !71
  %14 = call i32* @__errno_location() #1, !dbg !72
  store i32 0, i32* %14, align 4, !dbg !73
  %15 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !74
  store %struct.group* %15, %struct.group** %8, align 8, !dbg !75
  %16 = load %struct.group*, %struct.group** %8, align 8, !dbg !76
  %17 = icmp ne %struct.group* %16, null, !dbg !76
  br i1 %17, label %19, label %18, !dbg !78

; <label>:18:                                     ; preds = %2
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !79
  br label %19, !dbg !79

; <label>:19:                                     ; preds = %18, %2
  %20 = load %struct.group*, %struct.group** %8, align 8, !dbg !80
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 2, !dbg !81
  %22 = load i32, i32* %21, align 8, !dbg !81
  store i32 %22, i32* %10, align 4, !dbg !82
  %23 = load i32, i32* %10, align 4, !dbg !83
  %24 = call i32 @setgid(i32 %23) #7, !dbg !85
  %25 = icmp ne i32 %24, 0, !dbg !86
  br i1 %25, label %26, label %28, !dbg !87

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %10, align 4, !dbg !88
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !89
  br label %28, !dbg !89

; <label>:28:                                     ; preds = %26, %19
  %29 = call i32 @getegid() #7, !dbg !90
  %30 = load i32, i32* %10, align 4, !dbg !92
  %31 = icmp ne i32 %29, %30, !dbg !93
  br i1 %31, label %32, label %35, !dbg !94

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %10, align 4, !dbg !95
  %34 = call i32 @getegid() #7, !dbg !96
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %34), !dbg !97
  br label %35, !dbg !99

; <label>:35:                                     ; preds = %32, %28
  %36 = load i32, i32* %4, align 4, !dbg !100
  %37 = icmp ne i32 %36, 2, !dbg !102
  br i1 %37, label %38, label %40, !dbg !103

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno_location() #1, !dbg !104
  store i32 0, i32* %39, align 4, !dbg !106
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !107
  br label %40, !dbg !108

; <label>:40:                                     ; preds = %38, %35
  %41 = load i8**, i8*** %5, align 8, !dbg !109
  %42 = getelementptr inbounds i8*, i8** %41, i64 1, !dbg !109
  %43 = load i8*, i8** %42, align 8, !dbg !109
  store i8* %43, i8** %6, align 8, !dbg !110
  %44 = load i8*, i8** %6, align 8, !dbg !111
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* %44), !dbg !112
  %45 = load i8*, i8** %6, align 8, !dbg !113
  %46 = call i8* @strchr(i8* %45, i32 47) #8, !dbg !115
  %47 = icmp ne i8* %46, null, !dbg !115
  br i1 %47, label %48, label %51, !dbg !116

; <label>:48:                                     ; preds = %40
  %49 = call i32* @__errno_location() #1, !dbg !117
  store i32 0, i32* %49, align 4, !dbg !119
  %50 = load i8*, i8** %6, align 8, !dbg !120
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* %50), !dbg !121
  call void @exit(i32 1) #9, !dbg !122
  unreachable, !dbg !122

; <label>:51:                                     ; preds = %40
  %52 = call i32* @__errno_location() #1, !dbg !123
  store i32 0, i32* %52, align 4, !dbg !124
  %53 = load i8*, i8** %6, align 8, !dbg !125
  %54 = call %struct.passwd* @getpwnam(i8* %53), !dbg !126
  store %struct.passwd* %54, %struct.passwd** %7, align 8, !dbg !127
  %55 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !128
  %56 = icmp ne %struct.passwd* %55, null, !dbg !128
  br i1 %56, label %59, label %57, !dbg !130

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** %6, align 8, !dbg !131
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* %58), !dbg !132
  br label %59, !dbg !132

; <label>:59:                                     ; preds = %57, %51
  %60 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !133
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 2, !dbg !134
  %62 = load i32, i32* %61, align 8, !dbg !134
  store i32 %62, i32* %9, align 4, !dbg !135
  %63 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i32 0, i32 0, !dbg !136
  %64 = load i8*, i8** %6, align 8, !dbg !137
  %65 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %63, i64 4097, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %64) #7, !dbg !138
  store i32 %65, i32* %11, align 4, !dbg !139
  %66 = load i32, i32* %11, align 4, !dbg !140
  %67 = icmp slt i32 %66, 0, !dbg !142
  br i1 %67, label %72, label %68, !dbg !143

; <label>:68:                                     ; preds = %59
  %69 = load i32, i32* %11, align 4, !dbg !144
  %70 = sext i32 %69 to i64, !dbg !146
  %71 = icmp uge i64 %70, 4097, !dbg !147
  br i1 %71, label %72, label %79, !dbg !148

; <label>:72:                                     ; preds = %68, %59
  %73 = load i32, i32* %11, align 4, !dbg !149
  %74 = icmp sge i32 %73, 0, !dbg !152
  br i1 %74, label %75, label %77, !dbg !153

; <label>:75:                                     ; preds = %72
  %76 = call i32* @__errno_location() #1, !dbg !154
  store i32 0, i32* %76, align 4, !dbg !156
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0)), !dbg !157
  br label %77, !dbg !158

; <label>:77:                                     ; preds = %75, %72
  %78 = load i8*, i8** %6, align 8, !dbg !159
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %78), !dbg !160
  br label %79, !dbg !161

; <label>:79:                                     ; preds = %77, %68
  %80 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i32 0, i32 0, !dbg !162
  %81 = call i32 (i8*, i32, ...) @open(i8* %80, i32 64, i32 384), !dbg !163
  store i32 %81, i32* %13, align 4, !dbg !164
  %82 = load i32, i32* %13, align 4, !dbg !165
  %83 = icmp slt i32 %82, 0, !dbg !167
  br i1 %83, label %84, label %86, !dbg !168

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i32 0, i32 0, !dbg !169
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* %85), !dbg !170
  br label %86, !dbg !170

; <label>:86:                                     ; preds = %84, %79
  %87 = load i32, i32* %13, align 4, !dbg !171
  %88 = load i32, i32* %9, align 4, !dbg !173
  %89 = load i32, i32* %10, align 4, !dbg !174
  %90 = call i32 @fchown(i32 %87, i32 %88, i32 %89) #7, !dbg !175
  %91 = icmp ne i32 %90, 0, !dbg !175
  br i1 %91, label %92, label %94, !dbg !176

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i32 0, i32 0, !dbg !177
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8* %93), !dbg !178
  br label %94, !dbg !178

; <label>:94:                                     ; preds = %92, %86
  %95 = load i32, i32* %13, align 4, !dbg !179
  %96 = call i32 @fchmod(i32 %95, i32 400) #7, !dbg !181
  %97 = icmp ne i32 %96, 0, !dbg !181
  br i1 %97, label %98, label %100, !dbg !182

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i32 0, i32 0, !dbg !183
  call void (i8*, ...) @logfail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* %99), !dbg !184
  br label %100, !dbg !184

; <label>:100:                                    ; preds = %98, %94
  %101 = load i8*, i8** %6, align 8, !dbg !185
  call void (i32, i8*, ...) @syslog(i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i8* %101), !dbg !186
  ret i32 0, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @openlog(i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare %struct.group* @getgrnam(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @logfail(i8*, ...) #0 !dbg !188 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !191, metadata !20), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %3, metadata !193, metadata !20), !dbg !194
  %6 = call i32* @__errno_location() #1, !dbg !195
  %7 = load i32, i32* %6, align 4, !dbg !196
  store i32 %7, i32* %3, align 4, !dbg !194
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !197, metadata !20), !dbg !212
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !213, metadata !20), !dbg !217
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !218
  store i8 0, i8* %8, align 16, !dbg !219
  %9 = load i8*, i8** %2, align 8, !dbg !220
  %10 = icmp ne i8* %9, null, !dbg !222
  br i1 %10, label %11, label %20, !dbg !223

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !224
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !224
  call void @llvm.va_start(i8* %13), !dbg !224
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !226
  %15 = load i8*, i8** %2, align 8, !dbg !227
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !228
  %17 = call i32 @vsnprintf(i8* %14, i64 1024, i8* %15, %struct.__va_list_tag* %16) #7, !dbg !229
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !230
  %19 = bitcast %struct.__va_list_tag* %18 to i8*, !dbg !230
  call void @llvm.va_end(i8* %19), !dbg !230
  br label %20, !dbg !231

; <label>:20:                                     ; preds = %11, %1
  %21 = load i32, i32* %3, align 4, !dbg !232
  %22 = call i32* @__errno_location() #1, !dbg !233
  store i32 %21, i32* %22, align 4, !dbg !234
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !235
  %24 = load i8, i8* %23, align 16, !dbg !235
  %25 = sext i8 %24 to i32, !dbg !235
  %26 = icmp ne i32 %25, 0, !dbg !237
  br i1 %26, label %27, label %33, !dbg !238

; <label>:27:                                     ; preds = %20
  %28 = call i32* @__errno_location() #1, !dbg !239
  %29 = load i32, i32* %28, align 4, !dbg !240
  %30 = icmp ne i32 %29, 0, !dbg !241
  %31 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), !dbg !241
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !242
  call void (i32, i8*, ...) @syslog(i32 3, i8* %31, i8* %32), !dbg !243
  br label %38, !dbg !245

; <label>:33:                                     ; preds = %20
  %34 = call i32* @__errno_location() #1, !dbg !246
  %35 = load i32, i32* %34, align 4, !dbg !247
  %36 = icmp ne i32 %35, 0, !dbg !248
  %37 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), !dbg !248
  call void (i32, i8*, ...) @syslog(i32 3, i8* %37), !dbg !249
  br label %38

; <label>:38:                                     ; preds = %33, %27
  call void @exit(i32 1) #9, !dbg !250
  unreachable, !dbg !250
                                                  ; No predecessors!
  ret void, !dbg !251
}

; Function Attrs: nounwind
declare i32 @setgid(i32) #4

; Function Attrs: nounwind
declare i32 @getegid() #4

declare void @syslog(i32, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare %struct.passwd* @getpwnam(i8*) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "dma-mbox-create.i", directory: "/home/lichi/Desktop/dma/task2")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 216, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task2")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!11 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 85, type: !13, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DIFile(filename: "dma-mbox-create.c", directory: "/home/lichi/Desktop/dma/task2")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !16}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !11, file: !12, line: 85, type: !15)
!20 = !DIExpression()
!21 = !DILocation(line: 85, column: 10, scope: !11)
!22 = !DILocalVariable(name: "argv", arg: 2, scope: !11, file: !12, line: 85, type: !16)
!23 = !DILocation(line: 85, column: 23, scope: !11)
!24 = !DILocalVariable(name: "user", scope: !11, file: !12, line: 87, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!27 = !DILocation(line: 87, column: 14, scope: !11)
!28 = !DILocalVariable(name: "pw", scope: !11, file: !12, line: 88, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !31, line: 49, size: 384, align: 64, elements: !32)
!31 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/dma/task2")
!32 = !{!33, !34, !35, !39, !41, !42, !43}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !30, file: !31, line: 51, baseType: !17, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !30, file: !31, line: 52, baseType: !17, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !30, file: !31, line: 53, baseType: !36, size: 32, align: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 125, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dma/task2")
!38 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !30, file: !31, line: 54, baseType: !40, size: 32, align: 32, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 126, baseType: !38)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !30, file: !31, line: 55, baseType: !17, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !30, file: !31, line: 56, baseType: !17, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !30, file: !31, line: 57, baseType: !17, size: 64, align: 64, offset: 320)
!44 = !DILocation(line: 88, column: 17, scope: !11)
!45 = !DILocalVariable(name: "gr", scope: !11, file: !12, line: 89, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !48, line: 42, size: 256, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/dma/task2")
!49 = !{!50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !47, file: !48, line: 44, baseType: !17, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !47, file: !48, line: 45, baseType: !17, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !47, file: !48, line: 46, baseType: !40, size: 32, align: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !47, file: !48, line: 47, baseType: !16, size: 64, align: 64, offset: 192)
!54 = !DILocation(line: 89, column: 16, scope: !11)
!55 = !DILocalVariable(name: "user_uid", scope: !11, file: !12, line: 90, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !57, line: 80, baseType: !36)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dma/task2")
!58 = !DILocation(line: 90, column: 8, scope: !11)
!59 = !DILocalVariable(name: "mail_gid", scope: !11, file: !12, line: 91, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !57, line: 65, baseType: !40)
!61 = !DILocation(line: 91, column: 8, scope: !11)
!62 = !DILocalVariable(name: "error", scope: !11, file: !12, line: 92, type: !15)
!63 = !DILocation(line: 92, column: 6, scope: !11)
!64 = !DILocalVariable(name: "fn", scope: !11, file: !12, line: 93, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32776, align: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 4097)
!68 = !DILocation(line: 93, column: 7, scope: !11)
!69 = !DILocalVariable(name: "f", scope: !11, file: !12, line: 94, type: !15)
!70 = !DILocation(line: 94, column: 6, scope: !11)
!71 = !DILocation(line: 96, column: 2, scope: !11)
!72 = !DILocation(line: 98, column: 3, scope: !11)
!73 = !DILocation(line: 98, column: 7, scope: !11)
!74 = !DILocation(line: 99, column: 7, scope: !11)
!75 = !DILocation(line: 99, column: 5, scope: !11)
!76 = !DILocation(line: 100, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !11, file: !12, line: 100, column: 6)
!78 = !DILocation(line: 100, column: 6, scope: !11)
!79 = !DILocation(line: 101, column: 3, scope: !77)
!80 = !DILocation(line: 103, column: 13, scope: !11)
!81 = !DILocation(line: 103, column: 17, scope: !11)
!82 = !DILocation(line: 103, column: 11, scope: !11)
!83 = !DILocation(line: 105, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !11, file: !12, line: 105, column: 6)
!85 = !DILocation(line: 105, column: 6, scope: !84)
!86 = !DILocation(line: 105, column: 23, scope: !84)
!87 = !DILocation(line: 105, column: 6, scope: !11)
!88 = !DILocation(line: 106, column: 40, scope: !84)
!89 = !DILocation(line: 106, column: 3, scope: !84)
!90 = !DILocation(line: 107, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !11, file: !12, line: 107, column: 6)
!92 = !DILocation(line: 107, column: 19, scope: !91)
!93 = !DILocation(line: 107, column: 16, scope: !91)
!94 = !DILocation(line: 107, column: 6, scope: !11)
!95 = !DILocation(line: 108, column: 53, scope: !91)
!96 = !DILocation(line: 108, column: 71, scope: !91)
!97 = !DILocation(line: 108, column: 3, scope: !98)
!98 = !DILexicalBlockFile(scope: !91, file: !12, discriminator: 1)
!99 = !DILocation(line: 108, column: 3, scope: !91)
!100 = !DILocation(line: 113, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !11, file: !12, line: 113, column: 6)
!102 = !DILocation(line: 113, column: 11, scope: !101)
!103 = !DILocation(line: 113, column: 6, scope: !11)
!104 = !DILocation(line: 114, column: 4, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !12, line: 113, column: 17)
!106 = !DILocation(line: 114, column: 8, scope: !105)
!107 = !DILocation(line: 115, column: 3, scope: !105)
!108 = !DILocation(line: 116, column: 2, scope: !105)
!109 = !DILocation(line: 117, column: 9, scope: !11)
!110 = !DILocation(line: 117, column: 7, scope: !11)
!111 = !DILocation(line: 119, column: 46, scope: !11)
!112 = !DILocation(line: 119, column: 2, scope: !11)
!113 = !DILocation(line: 122, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !11, file: !12, line: 122, column: 6)
!115 = !DILocation(line: 122, column: 6, scope: !114)
!116 = !DILocation(line: 122, column: 6, scope: !11)
!117 = !DILocation(line: 123, column: 4, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !12, line: 122, column: 25)
!119 = !DILocation(line: 123, column: 8, scope: !118)
!120 = !DILocation(line: 124, column: 46, scope: !118)
!121 = !DILocation(line: 124, column: 3, scope: !118)
!122 = !DILocation(line: 125, column: 3, scope: !118)
!123 = !DILocation(line: 129, column: 3, scope: !11)
!124 = !DILocation(line: 129, column: 7, scope: !11)
!125 = !DILocation(line: 130, column: 16, scope: !11)
!126 = !DILocation(line: 130, column: 7, scope: !11)
!127 = !DILocation(line: 130, column: 5, scope: !11)
!128 = !DILocation(line: 131, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !11, file: !12, line: 131, column: 6)
!130 = !DILocation(line: 131, column: 6, scope: !11)
!131 = !DILocation(line: 132, column: 36, scope: !129)
!132 = !DILocation(line: 132, column: 3, scope: !129)
!133 = !DILocation(line: 134, column: 13, scope: !11)
!134 = !DILocation(line: 134, column: 17, scope: !11)
!135 = !DILocation(line: 134, column: 11, scope: !11)
!136 = !DILocation(line: 136, column: 19, scope: !11)
!137 = !DILocation(line: 136, column: 58, scope: !11)
!138 = !DILocation(line: 136, column: 10, scope: !11)
!139 = !DILocation(line: 136, column: 8, scope: !11)
!140 = !DILocation(line: 137, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !11, file: !12, line: 137, column: 6)
!142 = !DILocation(line: 137, column: 12, scope: !141)
!143 = !DILocation(line: 137, column: 16, scope: !141)
!144 = !DILocation(line: 137, column: 27, scope: !145)
!145 = !DILexicalBlockFile(scope: !141, file: !12, discriminator: 1)
!146 = !DILocation(line: 137, column: 19, scope: !145)
!147 = !DILocation(line: 137, column: 33, scope: !145)
!148 = !DILocation(line: 137, column: 6, scope: !145)
!149 = !DILocation(line: 138, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !12, line: 138, column: 7)
!151 = distinct !DILexicalBlock(scope: !141, file: !12, line: 137, column: 48)
!152 = !DILocation(line: 138, column: 13, scope: !150)
!153 = !DILocation(line: 138, column: 7, scope: !151)
!154 = !DILocation(line: 139, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !12, line: 138, column: 19)
!156 = !DILocation(line: 139, column: 9, scope: !155)
!157 = !DILocation(line: 140, column: 4, scope: !155)
!158 = !DILocation(line: 141, column: 3, scope: !155)
!159 = !DILocation(line: 142, column: 63, scope: !151)
!160 = !DILocation(line: 142, column: 3, scope: !151)
!161 = !DILocation(line: 143, column: 2, scope: !151)
!162 = !DILocation(line: 145, column: 11, scope: !11)
!163 = !DILocation(line: 145, column: 6, scope: !11)
!164 = !DILocation(line: 145, column: 4, scope: !11)
!165 = !DILocation(line: 146, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !11, file: !12, line: 146, column: 6)
!167 = !DILocation(line: 146, column: 8, scope: !166)
!168 = !DILocation(line: 146, column: 6, scope: !11)
!169 = !DILocation(line: 147, column: 36, scope: !166)
!170 = !DILocation(line: 147, column: 3, scope: !166)
!171 = !DILocation(line: 149, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !11, file: !12, line: 149, column: 6)
!173 = !DILocation(line: 149, column: 16, scope: !172)
!174 = !DILocation(line: 149, column: 26, scope: !172)
!175 = !DILocation(line: 149, column: 6, scope: !172)
!176 = !DILocation(line: 149, column: 6, scope: !11)
!177 = !DILocation(line: 150, column: 47, scope: !172)
!178 = !DILocation(line: 150, column: 3, scope: !172)
!179 = !DILocation(line: 152, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !11, file: !12, line: 152, column: 6)
!181 = !DILocation(line: 152, column: 6, scope: !180)
!182 = !DILocation(line: 152, column: 6, scope: !11)
!183 = !DILocation(line: 153, column: 53, scope: !180)
!184 = !DILocation(line: 153, column: 3, scope: !180)
!185 = !DILocation(line: 157, column: 58, scope: !11)
!186 = !DILocation(line: 157, column: 2, scope: !11)
!187 = !DILocation(line: 159, column: 2, scope: !11)
!188 = distinct !DISubprogram(name: "logfail", scope: !12, file: !12, line: 57, type: !189, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !25, null}
!191 = !DILocalVariable(name: "fmt", arg: 1, scope: !188, file: !12, line: 57, type: !25)
!192 = !DILocation(line: 57, column: 21, scope: !188)
!193 = !DILocalVariable(name: "oerrno", scope: !188, file: !12, line: 59, type: !15)
!194 = !DILocation(line: 59, column: 6, scope: !188)
!195 = !DILocation(line: 59, column: 16, scope: !188)
!196 = !DILocation(line: 59, column: 15, scope: !188)
!197 = !DILocalVariable(name: "ap", scope: !188, file: !12, line: 60, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !199, line: 79, baseType: !200)
!199 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dma/task2")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !201, line: 40, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dma/task2")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 60, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 192, align: 64, elements: !210)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 60, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !204, file: !1, line: 60, baseType: !38, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !204, file: !1, line: 60, baseType: !38, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !204, file: !1, line: 60, baseType: !7, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !204, file: !1, line: 60, baseType: !7, size: 64, align: 64, offset: 128)
!210 = !{!211}
!211 = !DISubrange(count: 1)
!212 = !DILocation(line: 60, column: 10, scope: !188)
!213 = !DILocalVariable(name: "outs", scope: !188, file: !12, line: 61, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, align: 8, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 1024)
!217 = !DILocation(line: 61, column: 7, scope: !188)
!218 = !DILocation(line: 63, column: 2, scope: !188)
!219 = !DILocation(line: 63, column: 10, scope: !188)
!220 = !DILocation(line: 64, column: 6, scope: !221)
!221 = distinct !DILexicalBlock(scope: !188, file: !12, line: 64, column: 6)
!222 = !DILocation(line: 64, column: 10, scope: !221)
!223 = !DILocation(line: 64, column: 6, scope: !188)
!224 = !DILocation(line: 65, column: 2, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !12, line: 64, column: 18)
!226 = !DILocation(line: 66, column: 13, scope: !225)
!227 = !DILocation(line: 66, column: 33, scope: !225)
!228 = !DILocation(line: 66, column: 38, scope: !225)
!229 = !DILocation(line: 66, column: 3, scope: !225)
!230 = !DILocation(line: 67, column: 2, scope: !225)
!231 = !DILocation(line: 68, column: 2, scope: !225)
!232 = !DILocation(line: 70, column: 9, scope: !188)
!233 = !DILocation(line: 70, column: 3, scope: !188)
!234 = !DILocation(line: 70, column: 7, scope: !188)
!235 = !DILocation(line: 71, column: 6, scope: !236)
!236 = distinct !DILexicalBlock(scope: !188, file: !12, line: 71, column: 6)
!237 = !DILocation(line: 71, column: 12, scope: !236)
!238 = !DILocation(line: 71, column: 6, scope: !188)
!239 = !DILocation(line: 72, column: 20, scope: !236)
!240 = !DILocation(line: 72, column: 19, scope: !236)
!241 = !DILocation(line: 72, column: 18, scope: !236)
!242 = !DILocation(line: 72, column: 43, scope: !236)
!243 = !DILocation(line: 72, column: 3, scope: !244)
!244 = !DILexicalBlockFile(scope: !236, file: !12, discriminator: 1)
!245 = !DILocation(line: 72, column: 3, scope: !236)
!246 = !DILocation(line: 74, column: 20, scope: !236)
!247 = !DILocation(line: 74, column: 19, scope: !236)
!248 = !DILocation(line: 74, column: 18, scope: !236)
!249 = !DILocation(line: 74, column: 3, scope: !244)
!250 = !DILocation(line: 76, column: 2, scope: !188)
!251 = !DILocation(line: 77, column: 1, scope: !188)
