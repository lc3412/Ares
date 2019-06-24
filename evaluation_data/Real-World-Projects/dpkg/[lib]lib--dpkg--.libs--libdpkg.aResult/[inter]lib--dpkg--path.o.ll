; ModuleID = './[inter]lib--dpkg--path.o.i'
source_filename = "./[inter]lib--dpkg--path.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s/%s.XXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1

; Function Attrs: nounwind uwtable
define i64 @path_trim_slash_slashdot(i8*) #0 !dbg !16 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !25, metadata !26), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %4, metadata !28, metadata !26), !dbg !29
  %5 = load i8*, i8** %3, align 8, !dbg !30
  %6 = call zeroext i1 @str_is_unset(i8* %5), !dbg !32
  br i1 %6, label %7, label %8, !dbg !33

; <label>:7:                                      ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !34
  br label %51, !dbg !34

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !35
  %10 = load i8*, i8** %3, align 8, !dbg !37
  %11 = call i64 @strlen(i8* %10) #6, !dbg !38
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !39
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !40
  store i8* %13, i8** %4, align 8, !dbg !41
  br label %14, !dbg !42

; <label>:14:                                     ; preds = %41, %8
  %15 = load i8*, i8** %4, align 8, !dbg !43
  %16 = load i8*, i8** %3, align 8, !dbg !46
  %17 = ptrtoint i8* %15 to i64, !dbg !47
  %18 = ptrtoint i8* %16 to i64, !dbg !47
  %19 = sub i64 %17, %18, !dbg !47
  %20 = icmp sge i64 %19, 1, !dbg !48
  br i1 %20, label %21, label %44, !dbg !49

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %4, align 8, !dbg !50
  %23 = load i8, i8* %22, align 1, !dbg !53
  %24 = sext i8 %23 to i32, !dbg !53
  %25 = icmp eq i32 %24, 47, !dbg !54
  br i1 %25, label %37, label %26, !dbg !55

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8, !dbg !56
  %28 = getelementptr inbounds i8, i8* %27, i64 -1, !dbg !58
  %29 = load i8, i8* %28, align 1, !dbg !59
  %30 = sext i8 %29 to i32, !dbg !59
  %31 = icmp eq i32 %30, 47, !dbg !60
  br i1 %31, label %32, label %39, !dbg !61

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %4, align 8, !dbg !62
  %34 = load i8, i8* %33, align 1, !dbg !64
  %35 = sext i8 %34 to i32, !dbg !64
  %36 = icmp eq i32 %35, 46, !dbg !65
  br i1 %36, label %37, label %39, !dbg !66

; <label>:37:                                     ; preds = %32, %21
  %38 = load i8*, i8** %4, align 8, !dbg !67
  store i8 0, i8* %38, align 1, !dbg !68
  br label %40, !dbg !69

; <label>:39:                                     ; preds = %32, %26
  br label %44, !dbg !70

; <label>:40:                                     ; preds = %37
  br label %41, !dbg !71

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !72
  %43 = getelementptr inbounds i8, i8* %42, i32 -1, !dbg !72
  store i8* %43, i8** %4, align 8, !dbg !72
  br label %14, !dbg !74, !llvm.loop !75

; <label>:44:                                     ; preds = %39, %14
  %45 = load i8*, i8** %4, align 8, !dbg !77
  %46 = load i8*, i8** %3, align 8, !dbg !78
  %47 = ptrtoint i8* %45 to i64, !dbg !79
  %48 = ptrtoint i8* %46 to i64, !dbg !79
  %49 = sub i64 %47, %48, !dbg !79
  %50 = add nsw i64 %49, 1, !dbg !80
  store i64 %50, i64* %2, align 8, !dbg !81
  br label %51, !dbg !81

; <label>:51:                                     ; preds = %44, %7
  %52 = load i64, i64* %2, align 8, !dbg !82
  ret i64 %52, !dbg !82
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_unset(i8*) #2 !dbg !83 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !90, metadata !26), !dbg !91
  %3 = load i8*, i8** %2, align 8, !dbg !92
  %4 = icmp eq i8* %3, null, !dbg !93
  br i1 %4, label %11, label %5, !dbg !94

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !95
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !95
  %8 = load i8, i8* %7, align 1, !dbg !95
  %9 = sext i8 %8 to i32, !dbg !95
  %10 = icmp eq i32 %9, 0, !dbg !97
  br label %11, !dbg !98

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !99
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @path_skip_slash_dotslash(i8*) #0 !dbg !101 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !104, metadata !26), !dbg !105
  br label %3, !dbg !106

; <label>:3:                                      ; preds = %25, %1
  %4 = load i8*, i8** %2, align 8, !dbg !107
  %5 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !107
  %6 = load i8, i8* %5, align 1, !dbg !107
  %7 = sext i8 %6 to i32, !dbg !107
  %8 = icmp eq i32 %7, 47, !dbg !109
  br i1 %8, label %23, label %9, !dbg !110

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %2, align 8, !dbg !111
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !111
  %12 = load i8, i8* %11, align 1, !dbg !111
  %13 = sext i8 %12 to i32, !dbg !111
  %14 = icmp eq i32 %13, 46, !dbg !113
  br i1 %14, label %15, label %21, !dbg !114

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %2, align 8, !dbg !115
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !115
  %18 = load i8, i8* %17, align 1, !dbg !115
  %19 = sext i8 %18 to i32, !dbg !115
  %20 = icmp eq i32 %19, 47, !dbg !117
  br label %21

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ %20, %15 ]
  br label %23, !dbg !118

; <label>:23:                                     ; preds = %21, %3
  %24 = phi i1 [ true, %3 ], [ %22, %21 ]
  br i1 %24, label %25, label %28, !dbg !120

; <label>:25:                                     ; preds = %23
  %26 = load i8*, i8** %2, align 8, !dbg !122
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !122
  store i8* %27, i8** %2, align 8, !dbg !122
  br label %3, !dbg !123, !llvm.loop !125

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %2, align 8, !dbg !126
  ret i8* %29, !dbg !127
}

; Function Attrs: nounwind uwtable
define i8* @path_basename(i8*) #0 !dbg !128 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !129, metadata !26), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %4, metadata !131, metadata !26), !dbg !132
  %5 = load i8*, i8** %3, align 8, !dbg !133
  %6 = call i8* @strrchr(i8* %5, i32 47) #6, !dbg !134
  store i8* %6, i8** %4, align 8, !dbg !135
  %7 = load i8*, i8** %4, align 8, !dbg !136
  %8 = icmp eq i8* %7, null, !dbg !138
  br i1 %8, label %9, label %11, !dbg !139

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !140
  store i8* %10, i8** %2, align 8, !dbg !141
  br label %14, !dbg !141

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !142
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !143
  store i8* %13, i8** %2, align 8, !dbg !144
  br label %14, !dbg !144

; <label>:14:                                     ; preds = %11, %9
  %15 = load i8*, i8** %2, align 8, !dbg !145
  ret i8* %15, !dbg !145
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @path_make_temp_template(i8*) #0 !dbg !146 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !149, metadata !26), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %3, metadata !151, metadata !26), !dbg !152
  %4 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #7, !dbg !153
  store i8* %4, i8** %3, align 8, !dbg !154
  %5 = load i8*, i8** %3, align 8, !dbg !155
  %6 = icmp ne i8* %5, null, !dbg !155
  br i1 %6, label %8, label %7, !dbg !157

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8, !dbg !158
  br label %8, !dbg !159

; <label>:8:                                      ; preds = %7, %1
  %9 = load i8*, i8** %3, align 8, !dbg !160
  %10 = load i8*, i8** %2, align 8, !dbg !161
  %11 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %9, i8* %10), !dbg !162
  ret i8* %11, !dbg !163
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare i8* @str_fmt(i8*, ...) #5

; Function Attrs: nounwind uwtable
define i8* @path_quote_filename(i8*, i8*, i64) #0 !dbg !164 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !167, metadata !26), !dbg !168
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !169, metadata !26), !dbg !170
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !171, metadata !26), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %8, metadata !173, metadata !26), !dbg !174
  %10 = load i8*, i8** %5, align 8, !dbg !175
  store i8* %10, i8** %8, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i64* %9, metadata !176, metadata !26), !dbg !177
  %11 = load i64, i64* %7, align 8, !dbg !178
  store i64 %11, i64* %9, align 8, !dbg !177
  %12 = load i64, i64* %9, align 8, !dbg !179
  %13 = icmp eq i64 %12, 0, !dbg !181
  br i1 %13, label %14, label %16, !dbg !182

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %8, align 8, !dbg !183
  store i8* %15, i8** %4, align 8, !dbg !184
  br label %78, !dbg !184

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !185

; <label>:17:                                     ; preds = %74, %16
  %18 = load i8*, i8** %6, align 8, !dbg !186
  %19 = load i8, i8* %18, align 1, !dbg !188
  %20 = icmp ne i8 %19, 0, !dbg !189
  br i1 %20, label %21, label %75, !dbg !189

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %6, align 8, !dbg !190
  %23 = load i8, i8* %22, align 1, !dbg !193
  %24 = sext i8 %23 to i32, !dbg !193
  %25 = icmp eq i32 %24, 92, !dbg !194
  br i1 %25, label %26, label %39, !dbg !195

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %9, align 8, !dbg !196
  %28 = sub nsw i64 %27, 2, !dbg !196
  store i64 %28, i64* %9, align 8, !dbg !196
  %29 = load i64, i64* %9, align 8, !dbg !198
  %30 = icmp sle i64 %29, 0, !dbg !200
  br i1 %30, label %31, label %32, !dbg !201

; <label>:31:                                     ; preds = %26
  br label %75, !dbg !202

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %5, align 8, !dbg !203
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !203
  store i8* %34, i8** %5, align 8, !dbg !203
  store i8 92, i8* %33, align 1, !dbg !204
  %35 = load i8*, i8** %5, align 8, !dbg !205
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !205
  store i8* %36, i8** %5, align 8, !dbg !205
  store i8 92, i8* %35, align 1, !dbg !206
  %37 = load i8*, i8** %6, align 8, !dbg !207
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !207
  store i8* %38, i8** %6, align 8, !dbg !207
  br label %74, !dbg !208

; <label>:39:                                     ; preds = %21
  %40 = load i8*, i8** %6, align 8, !dbg !209
  %41 = load i8, i8* %40, align 1, !dbg !212
  %42 = sext i8 %41 to i32, !dbg !213
  %43 = and i32 %42, 128, !dbg !214
  %44 = icmp eq i32 %43, 0, !dbg !215
  br i1 %44, label %45, label %57, !dbg !216

; <label>:45:                                     ; preds = %39
  %46 = load i64, i64* %9, align 8, !dbg !217
  %47 = add nsw i64 %46, -1, !dbg !217
  store i64 %47, i64* %9, align 8, !dbg !217
  %48 = load i64, i64* %9, align 8, !dbg !219
  %49 = icmp sle i64 %48, 0, !dbg !221
  br i1 %49, label %50, label %51, !dbg !222

; <label>:50:                                     ; preds = %45
  br label %75, !dbg !223

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %6, align 8, !dbg !224
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !224
  store i8* %53, i8** %6, align 8, !dbg !224
  %54 = load i8, i8* %52, align 1, !dbg !225
  %55 = load i8*, i8** %5, align 8, !dbg !226
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !226
  store i8* %56, i8** %5, align 8, !dbg !226
  store i8 %54, i8* %55, align 1, !dbg !227
  br label %73, !dbg !228

; <label>:57:                                     ; preds = %39
  %58 = load i64, i64* %9, align 8, !dbg !229
  %59 = sub nsw i64 %58, 4, !dbg !229
  store i64 %59, i64* %9, align 8, !dbg !229
  %60 = load i64, i64* %9, align 8, !dbg !231
  %61 = icmp sle i64 %60, 0, !dbg !233
  br i1 %61, label %62, label %63, !dbg !234

; <label>:62:                                     ; preds = %57
  br label %75, !dbg !235

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %5, align 8, !dbg !236
  %65 = load i8*, i8** %6, align 8, !dbg !237
  %66 = load i8, i8* %65, align 1, !dbg !238
  %67 = zext i8 %66 to i32, !dbg !238
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %67) #7, !dbg !239
  %69 = load i8*, i8** %5, align 8, !dbg !240
  %70 = getelementptr inbounds i8, i8* %69, i64 4, !dbg !240
  store i8* %70, i8** %5, align 8, !dbg !240
  %71 = load i8*, i8** %6, align 8, !dbg !241
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !241
  store i8* %72, i8** %6, align 8, !dbg !241
  br label %73

; <label>:73:                                     ; preds = %63, %51
  br label %74

; <label>:74:                                     ; preds = %73, %32
  br label %17, !dbg !242, !llvm.loop !244

; <label>:75:                                     ; preds = %62, %50, %31, %17
  %76 = load i8*, i8** %5, align 8, !dbg !245
  store i8 0, i8* %76, align 1, !dbg !246
  %77 = load i8*, i8** %8, align 8, !dbg !247
  store i8* %77, i8** %4, align 8, !dbg !248
  br label %78, !dbg !248

; <label>:78:                                     ; preds = %75, %14
  %79 = load i8*, i8** %4, align 8, !dbg !249
  ret i8* %79, !dbg !249
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--path.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !8, line: 172, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!9 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "path_trim_slash_slashdot", scope: !17, file: !17, line: 43, type: !18, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DIFile(filename: "path.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !23}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 216, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DILocalVariable(name: "path", arg: 1, scope: !16, file: !17, line: 43, type: !23)
!26 = !DIExpression()
!27 = !DILocation(line: 43, column: 32, scope: !16)
!28 = !DILocalVariable(name: "end", scope: !16, file: !17, line: 45, type: !23)
!29 = !DILocation(line: 45, column: 8, scope: !16)
!30 = !DILocation(line: 47, column: 19, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !17, line: 47, column: 6)
!32 = !DILocation(line: 47, column: 6, scope: !31)
!33 = !DILocation(line: 47, column: 6, scope: !16)
!34 = !DILocation(line: 48, column: 3, scope: !31)
!35 = !DILocation(line: 50, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !16, file: !17, line: 50, column: 2)
!37 = !DILocation(line: 50, column: 27, scope: !36)
!38 = !DILocation(line: 50, column: 20, scope: !36)
!39 = !DILocation(line: 50, column: 18, scope: !36)
!40 = !DILocation(line: 50, column: 33, scope: !36)
!41 = !DILocation(line: 50, column: 11, scope: !36)
!42 = !DILocation(line: 50, column: 7, scope: !36)
!43 = !DILocation(line: 50, column: 38, scope: !44)
!44 = !DILexicalBlockFile(scope: !45, file: !17, discriminator: 1)
!45 = distinct !DILexicalBlock(scope: !36, file: !17, line: 50, column: 2)
!46 = !DILocation(line: 50, column: 44, scope: !44)
!47 = !DILocation(line: 50, column: 42, scope: !44)
!48 = !DILocation(line: 50, column: 49, scope: !44)
!49 = !DILocation(line: 50, column: 2, scope: !44)
!50 = !DILocation(line: 51, column: 8, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !17, line: 51, column: 7)
!52 = distinct !DILexicalBlock(scope: !45, file: !17, line: 50, column: 62)
!53 = !DILocation(line: 51, column: 7, scope: !51)
!54 = !DILocation(line: 51, column: 12, scope: !51)
!55 = !DILocation(line: 51, column: 19, scope: !51)
!56 = !DILocation(line: 51, column: 25, scope: !57)
!57 = !DILexicalBlockFile(scope: !51, file: !17, discriminator: 1)
!58 = !DILocation(line: 51, column: 29, scope: !57)
!59 = !DILocation(line: 51, column: 23, scope: !57)
!60 = !DILocation(line: 51, column: 34, scope: !57)
!61 = !DILocation(line: 51, column: 41, scope: !57)
!62 = !DILocation(line: 51, column: 45, scope: !63)
!63 = !DILexicalBlockFile(scope: !51, file: !17, discriminator: 2)
!64 = !DILocation(line: 51, column: 44, scope: !63)
!65 = !DILocation(line: 51, column: 49, scope: !63)
!66 = !DILocation(line: 51, column: 7, scope: !63)
!67 = !DILocation(line: 52, column: 5, scope: !51)
!68 = !DILocation(line: 52, column: 9, scope: !51)
!69 = !DILocation(line: 52, column: 4, scope: !51)
!70 = !DILocation(line: 54, column: 4, scope: !51)
!71 = !DILocation(line: 55, column: 2, scope: !52)
!72 = !DILocation(line: 50, column: 58, scope: !73)
!73 = !DILexicalBlockFile(scope: !45, file: !17, discriminator: 2)
!74 = !DILocation(line: 50, column: 2, scope: !73)
!75 = distinct !{!75, !76}
!76 = !DILocation(line: 50, column: 2, scope: !16)
!77 = !DILocation(line: 57, column: 9, scope: !16)
!78 = !DILocation(line: 57, column: 15, scope: !16)
!79 = !DILocation(line: 57, column: 13, scope: !16)
!80 = !DILocation(line: 57, column: 20, scope: !16)
!81 = !DILocation(line: 57, column: 2, scope: !16)
!82 = !DILocation(line: 58, column: 1, scope: !16)
!83 = distinct !DISubprogram(name: "str_is_unset", scope: !84, file: !84, line: 41, type: !85, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!84 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !88}
!87 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!90 = !DILocalVariable(name: "str", arg: 1, scope: !83, file: !84, line: 41, type: !88)
!91 = !DILocation(line: 41, column: 26, scope: !83)
!92 = !DILocation(line: 43, column: 9, scope: !83)
!93 = !DILocation(line: 43, column: 13, scope: !83)
!94 = !DILocation(line: 43, column: 20, scope: !83)
!95 = !DILocation(line: 43, column: 23, scope: !96)
!96 = !DILexicalBlockFile(scope: !83, file: !84, discriminator: 1)
!97 = !DILocation(line: 43, column: 30, scope: !96)
!98 = !DILocation(line: 43, column: 20, scope: !96)
!99 = !DILocation(line: 43, column: 2, scope: !100)
!100 = !DILexicalBlockFile(scope: !83, file: !84, discriminator: 2)
!101 = distinct !DISubprogram(name: "path_skip_slash_dotslash", scope: !17, file: !17, line: 68, type: !102, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{!88, !88}
!104 = !DILocalVariable(name: "path", arg: 1, scope: !101, file: !17, line: 68, type: !88)
!105 = !DILocation(line: 68, column: 38, scope: !101)
!106 = !DILocation(line: 70, column: 2, scope: !101)
!107 = !DILocation(line: 70, column: 9, scope: !108)
!108 = !DILexicalBlockFile(scope: !101, file: !17, discriminator: 1)
!109 = !DILocation(line: 70, column: 17, scope: !108)
!110 = !DILocation(line: 70, column: 24, scope: !108)
!111 = !DILocation(line: 70, column: 28, scope: !112)
!112 = !DILexicalBlockFile(scope: !101, file: !17, discriminator: 2)
!113 = !DILocation(line: 70, column: 36, scope: !112)
!114 = !DILocation(line: 70, column: 43, scope: !112)
!115 = !DILocation(line: 70, column: 46, scope: !116)
!116 = !DILexicalBlockFile(scope: !101, file: !17, discriminator: 3)
!117 = !DILocation(line: 70, column: 54, scope: !116)
!118 = !DILocation(line: 70, column: 24, scope: !119)
!119 = !DILexicalBlockFile(scope: !101, file: !17, discriminator: 4)
!120 = !DILocation(line: 70, column: 2, scope: !121)
!121 = !DILexicalBlockFile(scope: !101, file: !17, discriminator: 5)
!122 = !DILocation(line: 71, column: 7, scope: !101)
!123 = !DILocation(line: 70, column: 2, scope: !124)
!124 = !DILexicalBlockFile(scope: !101, file: !17, discriminator: 6)
!125 = distinct !{!125, !106}
!126 = !DILocation(line: 73, column: 9, scope: !101)
!127 = !DILocation(line: 73, column: 2, scope: !101)
!128 = distinct !DISubprogram(name: "path_basename", scope: !17, file: !17, line: 84, type: !102, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!129 = !DILocalVariable(name: "path", arg: 1, scope: !128, file: !17, line: 84, type: !88)
!130 = !DILocation(line: 84, column: 27, scope: !128)
!131 = !DILocalVariable(name: "last_slash", scope: !128, file: !17, line: 86, type: !88)
!132 = !DILocation(line: 86, column: 14, scope: !128)
!133 = !DILocation(line: 88, column: 23, scope: !128)
!134 = !DILocation(line: 88, column: 15, scope: !128)
!135 = !DILocation(line: 88, column: 13, scope: !128)
!136 = !DILocation(line: 89, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !128, file: !17, line: 89, column: 6)
!138 = !DILocation(line: 89, column: 17, scope: !137)
!139 = !DILocation(line: 89, column: 6, scope: !128)
!140 = !DILocation(line: 90, column: 10, scope: !137)
!141 = !DILocation(line: 90, column: 3, scope: !137)
!142 = !DILocation(line: 92, column: 10, scope: !137)
!143 = !DILocation(line: 92, column: 21, scope: !137)
!144 = !DILocation(line: 92, column: 3, scope: !137)
!145 = !DILocation(line: 93, column: 1, scope: !128)
!146 = distinct !DISubprogram(name: "path_make_temp_template", scope: !17, file: !17, line: 103, type: !147, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!147 = !DISubroutineType(types: !148)
!148 = !{!23, !88}
!149 = !DILocalVariable(name: "suffix", arg: 1, scope: !146, file: !17, line: 103, type: !88)
!150 = !DILocation(line: 103, column: 37, scope: !146)
!151 = !DILocalVariable(name: "tmpdir", scope: !146, file: !17, line: 105, type: !88)
!152 = !DILocation(line: 105, column: 14, scope: !146)
!153 = !DILocation(line: 107, column: 11, scope: !146)
!154 = !DILocation(line: 107, column: 9, scope: !146)
!155 = !DILocation(line: 108, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !146, file: !17, line: 108, column: 6)
!157 = !DILocation(line: 108, column: 6, scope: !146)
!158 = !DILocation(line: 109, column: 10, scope: !156)
!159 = !DILocation(line: 109, column: 3, scope: !156)
!160 = !DILocation(line: 111, column: 33, scope: !146)
!161 = !DILocation(line: 111, column: 41, scope: !146)
!162 = !DILocation(line: 111, column: 9, scope: !146)
!163 = !DILocation(line: 111, column: 2, scope: !146)
!164 = distinct !DISubprogram(name: "path_quote_filename", scope: !17, file: !17, line: 132, type: !165, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!165 = !DISubroutineType(types: !166)
!166 = !{!23, !23, !88, !20}
!167 = !DILocalVariable(name: "dst", arg: 1, scope: !164, file: !17, line: 132, type: !23)
!168 = !DILocation(line: 132, column: 27, scope: !164)
!169 = !DILocalVariable(name: "src", arg: 2, scope: !164, file: !17, line: 132, type: !88)
!170 = !DILocation(line: 132, column: 44, scope: !164)
!171 = !DILocalVariable(name: "n", arg: 3, scope: !164, file: !17, line: 132, type: !20)
!172 = !DILocation(line: 132, column: 56, scope: !164)
!173 = !DILocalVariable(name: "r", scope: !164, file: !17, line: 134, type: !23)
!174 = !DILocation(line: 134, column: 8, scope: !164)
!175 = !DILocation(line: 134, column: 12, scope: !164)
!176 = !DILocalVariable(name: "size", scope: !164, file: !17, line: 135, type: !5)
!177 = !DILocation(line: 135, column: 10, scope: !164)
!178 = !DILocation(line: 135, column: 26, scope: !164)
!179 = !DILocation(line: 137, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !164, file: !17, line: 137, column: 6)
!181 = !DILocation(line: 137, column: 11, scope: !180)
!182 = !DILocation(line: 137, column: 6, scope: !164)
!183 = !DILocation(line: 138, column: 10, scope: !180)
!184 = !DILocation(line: 138, column: 3, scope: !180)
!185 = !DILocation(line: 140, column: 2, scope: !164)
!186 = !DILocation(line: 140, column: 10, scope: !187)
!187 = !DILexicalBlockFile(scope: !164, file: !17, discriminator: 1)
!188 = !DILocation(line: 140, column: 9, scope: !187)
!189 = !DILocation(line: 140, column: 2, scope: !187)
!190 = !DILocation(line: 141, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !17, line: 141, column: 7)
!192 = distinct !DILexicalBlock(scope: !164, file: !17, line: 140, column: 15)
!193 = !DILocation(line: 141, column: 7, scope: !191)
!194 = !DILocation(line: 141, column: 12, scope: !191)
!195 = !DILocation(line: 141, column: 7, scope: !192)
!196 = !DILocation(line: 142, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !17, line: 141, column: 21)
!198 = !DILocation(line: 143, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !17, line: 143, column: 8)
!200 = !DILocation(line: 143, column: 13, scope: !199)
!201 = !DILocation(line: 143, column: 8, scope: !197)
!202 = !DILocation(line: 144, column: 5, scope: !199)
!203 = !DILocation(line: 146, column: 8, scope: !197)
!204 = !DILocation(line: 146, column: 11, scope: !197)
!205 = !DILocation(line: 147, column: 8, scope: !197)
!206 = !DILocation(line: 147, column: 11, scope: !197)
!207 = !DILocation(line: 148, column: 7, scope: !197)
!208 = !DILocation(line: 149, column: 3, scope: !197)
!209 = !DILocation(line: 149, column: 17, scope: !210)
!210 = !DILexicalBlockFile(scope: !211, file: !17, discriminator: 1)
!211 = distinct !DILexicalBlock(scope: !191, file: !17, line: 149, column: 14)
!212 = !DILocation(line: 149, column: 16, scope: !210)
!213 = !DILocation(line: 149, column: 15, scope: !210)
!214 = !DILocation(line: 149, column: 22, scope: !210)
!215 = !DILocation(line: 149, column: 30, scope: !210)
!216 = !DILocation(line: 149, column: 14, scope: !210)
!217 = !DILocation(line: 150, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !17, line: 149, column: 39)
!219 = !DILocation(line: 151, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !17, line: 151, column: 8)
!221 = !DILocation(line: 151, column: 13, scope: !220)
!222 = !DILocation(line: 151, column: 8, scope: !218)
!223 = !DILocation(line: 152, column: 5, scope: !220)
!224 = !DILocation(line: 154, column: 17, scope: !218)
!225 = !DILocation(line: 154, column: 13, scope: !218)
!226 = !DILocation(line: 154, column: 8, scope: !218)
!227 = !DILocation(line: 154, column: 11, scope: !218)
!228 = !DILocation(line: 155, column: 3, scope: !218)
!229 = !DILocation(line: 156, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !211, file: !17, line: 155, column: 10)
!231 = !DILocation(line: 157, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !17, line: 157, column: 8)
!233 = !DILocation(line: 157, column: 13, scope: !232)
!234 = !DILocation(line: 157, column: 8, scope: !230)
!235 = !DILocation(line: 158, column: 5, scope: !232)
!236 = !DILocation(line: 160, column: 12, scope: !230)
!237 = !DILocation(line: 161, column: 36, scope: !230)
!238 = !DILocation(line: 161, column: 12, scope: !230)
!239 = !DILocation(line: 160, column: 4, scope: !230)
!240 = !DILocation(line: 162, column: 8, scope: !230)
!241 = !DILocation(line: 163, column: 7, scope: !230)
!242 = !DILocation(line: 140, column: 2, scope: !243)
!243 = !DILexicalBlockFile(scope: !164, file: !17, discriminator: 2)
!244 = distinct !{!244, !185}
!245 = !DILocation(line: 167, column: 3, scope: !164)
!246 = !DILocation(line: 167, column: 7, scope: !164)
!247 = !DILocation(line: 169, column: 9, scope: !164)
!248 = !DILocation(line: 169, column: 2, scope: !164)
!249 = !DILocation(line: 170, column: 1, scope: !164)
