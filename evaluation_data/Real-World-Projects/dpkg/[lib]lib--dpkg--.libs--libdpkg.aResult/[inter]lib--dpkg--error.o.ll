; ModuleID = './[inter]lib--dpkg--error.o.i'
source_filename = "./[inter]lib--dpkg--error.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dpkg_error = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @dpkg_has_error(%struct.dpkg_error*) #0 !dbg !14 {
  %2 = alloca %struct.dpkg_error*, align 8
  store %struct.dpkg_error* %0, %struct.dpkg_error** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %2, metadata !29, metadata !30), !dbg !31
  %3 = load %struct.dpkg_error*, %struct.dpkg_error** %2, align 8, !dbg !32
  %4 = icmp ne %struct.dpkg_error* %3, null, !dbg !33
  br i1 %4, label %5, label %10, !dbg !34

; <label>:5:                                      ; preds = %1
  %6 = load %struct.dpkg_error*, %struct.dpkg_error** %2, align 8, !dbg !35
  %7 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %6, i32 0, i32 0, !dbg !37
  %8 = load i32, i32* %7, align 8, !dbg !37
  %9 = icmp ne i32 %8, 0, !dbg !38
  br label %10

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  ret i1 %11, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @dpkg_put_warn(%struct.dpkg_error*, i8*, ...) #0 !dbg !41 {
  %3 = alloca %struct.dpkg_error*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.dpkg_error* %0, %struct.dpkg_error** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %3, metadata !46, metadata !30), !dbg !47
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !30), !dbg !49
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !50, metadata !30), !dbg !66
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !67
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !67
  call void @llvm.va_start(i8* %7), !dbg !67
  %8 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !68
  %9 = load i8*, i8** %4, align 8, !dbg !69
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !70
  call void @dpkg_error_set(%struct.dpkg_error* %8, i32 1, i32 0, i8* %9, %struct.__va_list_tag* %10), !dbg !71
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !72
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !72
  call void @llvm.va_end(i8* %12), !dbg !72
  ret i32 -1, !dbg !73
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dpkg_error_set(%struct.dpkg_error*, i32, i32, i8*, %struct.__va_list_tag*) #0 !dbg !74 {
  %6 = alloca %struct.dpkg_error*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca %struct.varbuf, align 8
  store %struct.dpkg_error* %0, %struct.dpkg_error** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %6, metadata !78, metadata !30), !dbg !79
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !80, metadata !30), !dbg !81
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !82, metadata !30), !dbg !83
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !84, metadata !30), !dbg !85
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !86, metadata !30), !dbg !87
  call void @llvm.dbg.declare(metadata %struct.varbuf* %11, metadata !88, metadata !30), !dbg !98
  %12 = bitcast %struct.varbuf* %11 to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !98
  %13 = load %struct.dpkg_error*, %struct.dpkg_error** %6, align 8, !dbg !99
  %14 = icmp eq %struct.dpkg_error* %13, null, !dbg !101
  br i1 %14, label %15, label %16, !dbg !102

; <label>:15:                                     ; preds = %5
  br label %30, !dbg !103

; <label>:16:                                     ; preds = %5
  %17 = load i32, i32* %7, align 4, !dbg !104
  %18 = load %struct.dpkg_error*, %struct.dpkg_error** %6, align 8, !dbg !105
  %19 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %18, i32 0, i32 0, !dbg !106
  store i32 %17, i32* %19, align 8, !dbg !107
  %20 = load i32, i32* %8, align 4, !dbg !108
  %21 = load %struct.dpkg_error*, %struct.dpkg_error** %6, align 8, !dbg !109
  %22 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %21, i32 0, i32 1, !dbg !110
  store i32 %20, i32* %22, align 4, !dbg !111
  %23 = load i8*, i8** %9, align 8, !dbg !112
  %24 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !113
  %25 = call i32 @varbuf_vprintf(%struct.varbuf* %11, i8* %23, %struct.__va_list_tag* %24), !dbg !114
  %26 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %11, i32 0, i32 2, !dbg !115
  %27 = load i8*, i8** %26, align 8, !dbg !115
  %28 = load %struct.dpkg_error*, %struct.dpkg_error** %6, align 8, !dbg !116
  %29 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %28, i32 0, i32 2, !dbg !117
  store i8* %27, i8** %29, align 8, !dbg !118
  br label %30, !dbg !119

; <label>:30:                                     ; preds = %16, %15
  ret void, !dbg !120
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #0 !dbg !122 {
  %3 = alloca %struct.dpkg_error*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.dpkg_error* %0, %struct.dpkg_error** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %3, metadata !123, metadata !30), !dbg !124
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !125, metadata !30), !dbg !126
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !127, metadata !30), !dbg !128
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !129
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !129
  call void @llvm.va_start(i8* %7), !dbg !129
  %8 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !130
  %9 = load i8*, i8** %4, align 8, !dbg !131
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !132
  call void @dpkg_error_set(%struct.dpkg_error* %8, i32 2, i32 0, i8* %9, %struct.__va_list_tag* %10), !dbg !133
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !134
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !134
  call void @llvm.va_end(i8* %12), !dbg !134
  ret i32 -1, !dbg !135
}

; Function Attrs: nounwind uwtable
define i32 @dpkg_put_errno(%struct.dpkg_error*, i8*, ...) #0 !dbg !136 {
  %3 = alloca %struct.dpkg_error*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dpkg_error* %0, %struct.dpkg_error** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %3, metadata !137, metadata !30), !dbg !138
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !139, metadata !30), !dbg !140
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !141, metadata !30), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %6, metadata !143, metadata !30), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %7, metadata !145, metadata !30), !dbg !146
  %8 = call i32* @__errno_location() #1, !dbg !147
  %9 = load i32, i32* %8, align 4, !dbg !148
  store i32 %9, i32* %7, align 4, !dbg !146
  %10 = load i8*, i8** %4, align 8, !dbg !149
  %11 = call i32* @__errno_location() #1, !dbg !150
  %12 = load i32, i32* %11, align 4, !dbg !151
  %13 = call i8* @strerror(i32 %12) #2, !dbg !152
  %14 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %10, i8* %13), !dbg !154
  store i8* %14, i8** %6, align 8, !dbg !156
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !157
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !157
  call void @llvm.va_start(i8* %16), !dbg !157
  %17 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !158
  %18 = load i32, i32* %7, align 4, !dbg !159
  %19 = load i8*, i8** %6, align 8, !dbg !160
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !161
  call void @dpkg_error_set(%struct.dpkg_error* %17, i32 2, i32 %18, i8* %19, %struct.__va_list_tag* %20), !dbg !162
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !163
  %22 = bitcast %struct.__va_list_tag* %21 to i8*, !dbg !163
  call void @llvm.va_end(i8* %22), !dbg !163
  %23 = load i8*, i8** %6, align 8, !dbg !164
  call void @free(i8* %23) #2, !dbg !165
  ret i32 -1, !dbg !166
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @str_fmt(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @dpkg_error_print(%struct.dpkg_error*, i8*, ...) #0 !dbg !167 {
  %3 = alloca %struct.dpkg_error*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store %struct.dpkg_error* %0, %struct.dpkg_error** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %3, metadata !170, metadata !30), !dbg !171
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !172, metadata !30), !dbg !173
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !174, metadata !30), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %6, metadata !176, metadata !30), !dbg !177
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !178
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !178
  call void @llvm.va_start(i8* %8), !dbg !178
  %9 = load i8*, i8** %4, align 8, !dbg !179
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !180
  %11 = call i32 @m_vasprintf(i8** %6, i8* %9, %struct.__va_list_tag* %10), !dbg !181
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !182
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !182
  call void @llvm.va_end(i8* %13), !dbg !182
  %14 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !183
  %15 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %14, i32 0, i32 0, !dbg !185
  %16 = load i32, i32* %15, align 8, !dbg !185
  %17 = icmp eq i32 %16, 1, !dbg !186
  br i1 %17, label %18, label %23, !dbg !187

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %6, align 8, !dbg !188
  %20 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !189
  %21 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %20, i32 0, i32 2, !dbg !190
  %22 = load i8*, i8** %21, align 8, !dbg !190
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %19, i8* %22), !dbg !191
  br label %28, !dbg !191

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %6, align 8, !dbg !192
  %25 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !193
  %26 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %25, i32 0, i32 2, !dbg !194
  %27 = load i8*, i8** %26, align 8, !dbg !194
  call void (i8*, ...) @ohshit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %24, i8* %27) #8, !dbg !195
  unreachable, !dbg !195

; <label>:28:                                     ; preds = %18
  %29 = load i8*, i8** %6, align 8, !dbg !196
  call void @free(i8* %29) #2, !dbg !197
  ret void, !dbg !198
}

declare i32 @m_vasprintf(i8**, i8*, %struct.__va_list_tag*) #4

declare void @warning(i8*, ...) #4

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

; Function Attrs: nounwind uwtable
define void @dpkg_error_move(%struct.dpkg_error*, %struct.dpkg_error*) #0 !dbg !199 {
  %3 = alloca %struct.dpkg_error*, align 8
  %4 = alloca %struct.dpkg_error*, align 8
  store %struct.dpkg_error* %0, %struct.dpkg_error** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %3, metadata !202, metadata !30), !dbg !203
  store %struct.dpkg_error* %1, %struct.dpkg_error** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %4, metadata !204, metadata !30), !dbg !205
  %5 = load %struct.dpkg_error*, %struct.dpkg_error** %4, align 8, !dbg !206
  %6 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 0, !dbg !207
  %7 = load i32, i32* %6, align 8, !dbg !207
  %8 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !208
  %9 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %8, i32 0, i32 0, !dbg !209
  store i32 %7, i32* %9, align 8, !dbg !210
  %10 = load %struct.dpkg_error*, %struct.dpkg_error** %4, align 8, !dbg !211
  %11 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %10, i32 0, i32 0, !dbg !212
  store i32 0, i32* %11, align 8, !dbg !213
  %12 = load %struct.dpkg_error*, %struct.dpkg_error** %4, align 8, !dbg !214
  %13 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %12, i32 0, i32 2, !dbg !215
  %14 = load i8*, i8** %13, align 8, !dbg !215
  %15 = load %struct.dpkg_error*, %struct.dpkg_error** %3, align 8, !dbg !216
  %16 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %15, i32 0, i32 2, !dbg !217
  store i8* %14, i8** %16, align 8, !dbg !218
  %17 = load %struct.dpkg_error*, %struct.dpkg_error** %4, align 8, !dbg !219
  %18 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %17, i32 0, i32 2, !dbg !220
  store i8* null, i8** %18, align 8, !dbg !221
  ret void, !dbg !222
}

; Function Attrs: nounwind uwtable
define void @dpkg_error_destroy(%struct.dpkg_error*) #0 !dbg !223 {
  %2 = alloca %struct.dpkg_error*, align 8
  store %struct.dpkg_error* %0, %struct.dpkg_error** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %2, metadata !226, metadata !30), !dbg !227
  %3 = load %struct.dpkg_error*, %struct.dpkg_error** %2, align 8, !dbg !228
  %4 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %3, i32 0, i32 0, !dbg !229
  store i32 0, i32* %4, align 8, !dbg !230
  %5 = load %struct.dpkg_error*, %struct.dpkg_error** %2, align 8, !dbg !231
  %6 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 1, !dbg !232
  store i32 0, i32* %6, align 4, !dbg !233
  %7 = load %struct.dpkg_error*, %struct.dpkg_error** %2, align 8, !dbg !234
  %8 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 2, !dbg !235
  %9 = load i8*, i8** %8, align 8, !dbg !235
  call void @free(i8* %9) #2, !dbg !236
  %10 = load %struct.dpkg_error*, %struct.dpkg_error** %2, align 8, !dbg !237
  %11 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %10, i32 0, i32 2, !dbg !238
  store i8* null, i8** %11, align 8, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

declare i32 @varbuf_vprintf(%struct.varbuf*, i8*, %struct.__va_list_tag*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "[inter]lib--dpkg--error.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "dpkg_has_error", scope: !15, file: !15, line: 49, type: !16, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!15 = !DIFile(filename: "error.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !21)
!21 = !{!22, !23, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !20, file: !4, line: 45, baseType: !24, size: 32, align: 32, offset: 32)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !20, file: !4, line: 46, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !{}
!29 = !DILocalVariable(name: "err", arg: 1, scope: !14, file: !15, line: 49, type: !19)
!30 = !DIExpression()
!31 = !DILocation(line: 49, column: 35, scope: !14)
!32 = !DILocation(line: 51, column: 9, scope: !14)
!33 = !DILocation(line: 51, column: 13, scope: !14)
!34 = !DILocation(line: 51, column: 20, scope: !14)
!35 = !DILocation(line: 51, column: 23, scope: !36)
!36 = !DILexicalBlockFile(scope: !14, file: !15, discriminator: 1)
!37 = !DILocation(line: 51, column: 28, scope: !36)
!38 = !DILocation(line: 51, column: 33, scope: !36)
!39 = !DILocation(line: 51, column: 2, scope: !40)
!40 = !DILexicalBlockFile(scope: !14, file: !15, discriminator: 2)
!41 = distinct !DISubprogram(name: "dpkg_put_warn", scope: !15, file: !15, line: 55, type: !42, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!42 = !DISubroutineType(types: !43)
!43 = !{!24, !19, !44, null}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!46 = !DILocalVariable(name: "err", arg: 1, scope: !41, file: !15, line: 55, type: !19)
!47 = !DILocation(line: 55, column: 34, scope: !41)
!48 = !DILocalVariable(name: "fmt", arg: 2, scope: !41, file: !15, line: 55, type: !44)
!49 = !DILocation(line: 55, column: 51, scope: !41)
!50 = !DILocalVariable(name: "args", scope: !41, file: !15, line: 57, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !52, line: 79, baseType: !53)
!52 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !54, line: 40, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 57, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 192, align: 64, elements: !64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 57, size: 192, align: 64, elements: !58)
!58 = !{!59, !61, !62, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !57, file: !1, line: 57, baseType: !60, size: 32, align: 32)
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !57, file: !1, line: 57, baseType: !60, size: 32, align: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !57, file: !1, line: 57, baseType: !10, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !57, file: !1, line: 57, baseType: !10, size: 64, align: 64, offset: 128)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DILocation(line: 57, column: 10, scope: !41)
!67 = !DILocation(line: 59, column: 1, scope: !41)
!68 = !DILocation(line: 60, column: 17, scope: !41)
!69 = !DILocation(line: 60, column: 40, scope: !41)
!70 = !DILocation(line: 60, column: 45, scope: !41)
!71 = !DILocation(line: 60, column: 2, scope: !41)
!72 = !DILocation(line: 61, column: 1, scope: !41)
!73 = !DILocation(line: 63, column: 2, scope: !41)
!74 = distinct !DISubprogram(name: "dpkg_error_set", scope: !15, file: !15, line: 33, type: !75, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !19, !3, !24, !44, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!78 = !DILocalVariable(name: "err", arg: 1, scope: !74, file: !15, line: 33, type: !19)
!79 = !DILocation(line: 33, column: 35, scope: !74)
!80 = !DILocalVariable(name: "type", arg: 2, scope: !74, file: !15, line: 33, type: !3)
!81 = !DILocation(line: 33, column: 59, scope: !74)
!82 = !DILocalVariable(name: "syserrno", arg: 3, scope: !74, file: !15, line: 33, type: !24)
!83 = !DILocation(line: 33, column: 69, scope: !74)
!84 = !DILocalVariable(name: "fmt", arg: 4, scope: !74, file: !15, line: 34, type: !44)
!85 = !DILocation(line: 34, column: 28, scope: !74)
!86 = !DILocalVariable(name: "args", arg: 5, scope: !74, file: !15, line: 34, type: !77)
!87 = !DILocation(line: 34, column: 41, scope: !74)
!88 = !DILocalVariable(name: "str", scope: !74, file: !15, line: 36, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !90, line: 55, size: 192, align: 64, elements: !91)
!90 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!91 = !{!92, !96, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !89, file: !90, line: 56, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 216, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!95 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !89, file: !90, line: 56, baseType: !93, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !89, file: !90, line: 57, baseType: !26, size: 64, align: 64, offset: 128)
!98 = !DILocation(line: 36, column: 16, scope: !74)
!99 = !DILocation(line: 38, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !74, file: !15, line: 38, column: 6)
!101 = !DILocation(line: 38, column: 10, scope: !100)
!102 = !DILocation(line: 38, column: 6, scope: !74)
!103 = !DILocation(line: 39, column: 3, scope: !100)
!104 = !DILocation(line: 41, column: 14, scope: !74)
!105 = !DILocation(line: 41, column: 2, scope: !74)
!106 = !DILocation(line: 41, column: 7, scope: !74)
!107 = !DILocation(line: 41, column: 12, scope: !74)
!108 = !DILocation(line: 42, column: 18, scope: !74)
!109 = !DILocation(line: 42, column: 2, scope: !74)
!110 = !DILocation(line: 42, column: 7, scope: !74)
!111 = !DILocation(line: 42, column: 16, scope: !74)
!112 = !DILocation(line: 44, column: 23, scope: !74)
!113 = !DILocation(line: 44, column: 28, scope: !74)
!114 = !DILocation(line: 44, column: 2, scope: !74)
!115 = !DILocation(line: 45, column: 17, scope: !74)
!116 = !DILocation(line: 45, column: 2, scope: !74)
!117 = !DILocation(line: 45, column: 7, scope: !74)
!118 = !DILocation(line: 45, column: 11, scope: !74)
!119 = !DILocation(line: 46, column: 1, scope: !74)
!120 = !DILocation(line: 46, column: 1, scope: !121)
!121 = !DILexicalBlockFile(scope: !74, file: !15, discriminator: 1)
!122 = distinct !DISubprogram(name: "dpkg_put_error", scope: !15, file: !15, line: 67, type: !42, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!123 = !DILocalVariable(name: "err", arg: 1, scope: !122, file: !15, line: 67, type: !19)
!124 = !DILocation(line: 67, column: 35, scope: !122)
!125 = !DILocalVariable(name: "fmt", arg: 2, scope: !122, file: !15, line: 67, type: !44)
!126 = !DILocation(line: 67, column: 52, scope: !122)
!127 = !DILocalVariable(name: "args", scope: !122, file: !15, line: 69, type: !51)
!128 = !DILocation(line: 69, column: 10, scope: !122)
!129 = !DILocation(line: 71, column: 1, scope: !122)
!130 = !DILocation(line: 72, column: 17, scope: !122)
!131 = !DILocation(line: 72, column: 41, scope: !122)
!132 = !DILocation(line: 72, column: 46, scope: !122)
!133 = !DILocation(line: 72, column: 2, scope: !122)
!134 = !DILocation(line: 73, column: 1, scope: !122)
!135 = !DILocation(line: 75, column: 2, scope: !122)
!136 = distinct !DISubprogram(name: "dpkg_put_errno", scope: !15, file: !15, line: 79, type: !42, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!137 = !DILocalVariable(name: "err", arg: 1, scope: !136, file: !15, line: 79, type: !19)
!138 = !DILocation(line: 79, column: 35, scope: !136)
!139 = !DILocalVariable(name: "fmt", arg: 2, scope: !136, file: !15, line: 79, type: !44)
!140 = !DILocation(line: 79, column: 52, scope: !136)
!141 = !DILocalVariable(name: "args", scope: !136, file: !15, line: 81, type: !51)
!142 = !DILocation(line: 81, column: 10, scope: !136)
!143 = !DILocalVariable(name: "new_fmt", scope: !136, file: !15, line: 82, type: !26)
!144 = !DILocation(line: 82, column: 8, scope: !136)
!145 = !DILocalVariable(name: "syserrno", scope: !136, file: !15, line: 83, type: !24)
!146 = !DILocation(line: 83, column: 6, scope: !136)
!147 = !DILocation(line: 83, column: 18, scope: !136)
!148 = !DILocation(line: 83, column: 17, scope: !136)
!149 = !DILocation(line: 85, column: 31, scope: !136)
!150 = !DILocation(line: 85, column: 46, scope: !136)
!151 = !DILocation(line: 85, column: 45, scope: !136)
!152 = !DILocation(line: 85, column: 36, scope: !153)
!153 = !DILexicalBlockFile(scope: !136, file: !15, discriminator: 1)
!154 = !DILocation(line: 85, column: 12, scope: !155)
!155 = !DILexicalBlockFile(scope: !136, file: !15, discriminator: 2)
!156 = !DILocation(line: 85, column: 10, scope: !136)
!157 = !DILocation(line: 87, column: 1, scope: !136)
!158 = !DILocation(line: 88, column: 17, scope: !136)
!159 = !DILocation(line: 88, column: 38, scope: !136)
!160 = !DILocation(line: 88, column: 48, scope: !136)
!161 = !DILocation(line: 88, column: 57, scope: !136)
!162 = !DILocation(line: 88, column: 2, scope: !136)
!163 = !DILocation(line: 89, column: 1, scope: !136)
!164 = !DILocation(line: 91, column: 7, scope: !136)
!165 = !DILocation(line: 91, column: 2, scope: !136)
!166 = !DILocation(line: 93, column: 2, scope: !136)
!167 = distinct !DISubprogram(name: "dpkg_error_print", scope: !15, file: !15, line: 97, type: !168, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !19, !44, null}
!170 = !DILocalVariable(name: "err", arg: 1, scope: !167, file: !15, line: 97, type: !19)
!171 = !DILocation(line: 97, column: 37, scope: !167)
!172 = !DILocalVariable(name: "fmt", arg: 2, scope: !167, file: !15, line: 97, type: !44)
!173 = !DILocation(line: 97, column: 54, scope: !167)
!174 = !DILocalVariable(name: "args", scope: !167, file: !15, line: 99, type: !51)
!175 = !DILocation(line: 99, column: 10, scope: !167)
!176 = !DILocalVariable(name: "str", scope: !167, file: !15, line: 100, type: !26)
!177 = !DILocation(line: 100, column: 8, scope: !167)
!178 = !DILocation(line: 102, column: 1, scope: !167)
!179 = !DILocation(line: 103, column: 20, scope: !167)
!180 = !DILocation(line: 103, column: 25, scope: !167)
!181 = !DILocation(line: 103, column: 2, scope: !167)
!182 = !DILocation(line: 104, column: 1, scope: !167)
!183 = !DILocation(line: 106, column: 6, scope: !184)
!184 = distinct !DILexicalBlock(scope: !167, file: !15, line: 106, column: 6)
!185 = !DILocation(line: 106, column: 11, scope: !184)
!186 = !DILocation(line: 106, column: 16, scope: !184)
!187 = !DILocation(line: 106, column: 6, scope: !167)
!188 = !DILocation(line: 107, column: 21, scope: !184)
!189 = !DILocation(line: 107, column: 26, scope: !184)
!190 = !DILocation(line: 107, column: 31, scope: !184)
!191 = !DILocation(line: 107, column: 3, scope: !184)
!192 = !DILocation(line: 109, column: 20, scope: !184)
!193 = !DILocation(line: 109, column: 25, scope: !184)
!194 = !DILocation(line: 109, column: 30, scope: !184)
!195 = !DILocation(line: 109, column: 3, scope: !184)
!196 = !DILocation(line: 111, column: 7, scope: !167)
!197 = !DILocation(line: 111, column: 2, scope: !167)
!198 = !DILocation(line: 112, column: 1, scope: !167)
!199 = distinct !DISubprogram(name: "dpkg_error_move", scope: !15, file: !15, line: 115, type: !200, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !19, !19}
!202 = !DILocalVariable(name: "dst", arg: 1, scope: !199, file: !15, line: 115, type: !19)
!203 = !DILocation(line: 115, column: 36, scope: !199)
!204 = !DILocalVariable(name: "src", arg: 2, scope: !199, file: !15, line: 115, type: !19)
!205 = !DILocation(line: 115, column: 60, scope: !199)
!206 = !DILocation(line: 117, column: 14, scope: !199)
!207 = !DILocation(line: 117, column: 19, scope: !199)
!208 = !DILocation(line: 117, column: 2, scope: !199)
!209 = !DILocation(line: 117, column: 7, scope: !199)
!210 = !DILocation(line: 117, column: 12, scope: !199)
!211 = !DILocation(line: 118, column: 2, scope: !199)
!212 = !DILocation(line: 118, column: 7, scope: !199)
!213 = !DILocation(line: 118, column: 12, scope: !199)
!214 = !DILocation(line: 119, column: 13, scope: !199)
!215 = !DILocation(line: 119, column: 18, scope: !199)
!216 = !DILocation(line: 119, column: 2, scope: !199)
!217 = !DILocation(line: 119, column: 7, scope: !199)
!218 = !DILocation(line: 119, column: 11, scope: !199)
!219 = !DILocation(line: 120, column: 2, scope: !199)
!220 = !DILocation(line: 120, column: 7, scope: !199)
!221 = !DILocation(line: 120, column: 11, scope: !199)
!222 = !DILocation(line: 121, column: 1, scope: !199)
!223 = distinct !DISubprogram(name: "dpkg_error_destroy", scope: !15, file: !15, line: 124, type: !224, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !19}
!226 = !DILocalVariable(name: "err", arg: 1, scope: !223, file: !15, line: 124, type: !19)
!227 = !DILocation(line: 124, column: 39, scope: !223)
!228 = !DILocation(line: 126, column: 2, scope: !223)
!229 = !DILocation(line: 126, column: 7, scope: !223)
!230 = !DILocation(line: 126, column: 12, scope: !223)
!231 = !DILocation(line: 127, column: 2, scope: !223)
!232 = !DILocation(line: 127, column: 7, scope: !223)
!233 = !DILocation(line: 127, column: 16, scope: !223)
!234 = !DILocation(line: 128, column: 7, scope: !223)
!235 = !DILocation(line: 128, column: 12, scope: !223)
!236 = !DILocation(line: 128, column: 2, scope: !223)
!237 = !DILocation(line: 129, column: 2, scope: !223)
!238 = !DILocation(line: 129, column: 7, scope: !223)
!239 = !DILocation(line: 129, column: 11, scope: !223)
!240 = !DILocation(line: 130, column: 1, scope: !223)
