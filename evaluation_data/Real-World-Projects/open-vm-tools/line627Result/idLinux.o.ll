; ModuleID = './idLinux.o.i'
source_filename = "./idLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@uid32 = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"idLinux.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Id_SetUid(i32) #0 !dbg !16 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !19, metadata !20), !dbg !21
  %5 = load i32, i32* @uid32, align 4, !dbg !22
  %6 = icmp ne i32 %5, 0, !dbg !22
  br i1 %6, label %7, label %21, !dbg !24

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !20), !dbg !27
  call void @abort() #6, !dbg !28
  unreachable, !dbg !28
                                                  ; No predecessors!
  %9 = load i32, i32* %3, align 4, !dbg !29
  %10 = call i64 (i64, ...) @syscall(i64 0, i32 %9) #7, !dbg !31
  %11 = trunc i64 %10 to i32, !dbg !31
  store i32 %11, i32* %4, align 4, !dbg !32
  %12 = load i32, i32* %4, align 4, !dbg !33
  %13 = icmp ne i32 %12, -1, !dbg !35
  br i1 %13, label %18, label %14, !dbg !36

; <label>:14:                                     ; preds = %8
  %15 = call i32* @__errno_location() #1, !dbg !37
  %16 = load i32, i32* %15, align 4, !dbg !39
  %17 = icmp ne i32 %16, 38, !dbg !40
  br i1 %17, label %18, label %20, !dbg !41

; <label>:18:                                     ; preds = %14, %8
  %19 = load i32, i32* %4, align 4, !dbg !42
  store i32 %19, i32* %2, align 4, !dbg !44
  br label %25, !dbg !44

; <label>:20:                                     ; preds = %14
  store i32 0, i32* @uid32, align 4, !dbg !45
  br label %21, !dbg !46

; <label>:21:                                     ; preds = %20, %1
  %22 = load i32, i32* %3, align 4, !dbg !47
  %23 = call i64 (i64, ...) @syscall(i64 105, i32 %22) #7, !dbg !48
  %24 = trunc i64 %23 to i32, !dbg !48
  store i32 %24, i32* %2, align 4, !dbg !49
  br label %25, !dbg !49

; <label>:25:                                     ; preds = %21, %18
  %26 = load i32, i32* %2, align 4, !dbg !50
  ret i32 %26, !dbg !50
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define i32 @Id_SetGid(i32) #0 !dbg !51 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !56, metadata !20), !dbg !57
  %5 = load i32, i32* @uid32, align 4, !dbg !58
  %6 = icmp ne i32 %5, 0, !dbg !58
  br i1 %6, label %7, label %21, !dbg !60

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !20), !dbg !63
  call void @abort() #6, !dbg !64
  unreachable, !dbg !64
                                                  ; No predecessors!
  %9 = load i32, i32* %3, align 4, !dbg !65
  %10 = call i64 (i64, ...) @syscall(i64 0, i32 %9) #7, !dbg !67
  %11 = trunc i64 %10 to i32, !dbg !67
  store i32 %11, i32* %4, align 4, !dbg !68
  %12 = load i32, i32* %4, align 4, !dbg !69
  %13 = icmp ne i32 %12, -1, !dbg !71
  br i1 %13, label %18, label %14, !dbg !72

; <label>:14:                                     ; preds = %8
  %15 = call i32* @__errno_location() #1, !dbg !73
  %16 = load i32, i32* %15, align 4, !dbg !75
  %17 = icmp ne i32 %16, 38, !dbg !76
  br i1 %17, label %18, label %20, !dbg !77

; <label>:18:                                     ; preds = %14, %8
  %19 = load i32, i32* %4, align 4, !dbg !78
  store i32 %19, i32* %2, align 4, !dbg !80
  br label %25, !dbg !80

; <label>:20:                                     ; preds = %14
  store i32 0, i32* @uid32, align 4, !dbg !81
  br label %21, !dbg !82

; <label>:21:                                     ; preds = %20, %1
  %22 = load i32, i32* %3, align 4, !dbg !83
  %23 = call i64 (i64, ...) @syscall(i64 106, i32 %22) #7, !dbg !84
  %24 = trunc i64 %23 to i32, !dbg !84
  store i32 %24, i32* %2, align 4, !dbg !85
  br label %25, !dbg !85

; <label>:25:                                     ; preds = %21, %18
  %26 = load i32, i32* %2, align 4, !dbg !86
  ret i32 %26, !dbg !86
}

; Function Attrs: nounwind uwtable
define i32 @Id_SetRESUid(i32, i32, i32) #0 !dbg !87 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !90, metadata !20), !dbg !91
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !92, metadata !20), !dbg !93
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !94, metadata !20), !dbg !95
  %9 = load i32, i32* @uid32, align 4, !dbg !96
  %10 = icmp ne i32 %9, 0, !dbg !96
  br i1 %10, label %11, label %27, !dbg !98

; <label>:11:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !99, metadata !20), !dbg !101
  call void @abort() #6, !dbg !102
  unreachable, !dbg !102
                                                  ; No predecessors!
  %13 = load i32, i32* %5, align 4, !dbg !103
  %14 = load i32, i32* %6, align 4, !dbg !105
  %15 = load i32, i32* %7, align 4, !dbg !106
  %16 = call i64 (i64, ...) @syscall(i64 0, i32 %13, i32 %14, i32 %15) #7, !dbg !107
  %17 = trunc i64 %16 to i32, !dbg !107
  store i32 %17, i32* %8, align 4, !dbg !108
  %18 = load i32, i32* %8, align 4, !dbg !109
  %19 = icmp ne i32 %18, -1, !dbg !111
  br i1 %19, label %24, label %20, !dbg !112

; <label>:20:                                     ; preds = %12
  %21 = call i32* @__errno_location() #1, !dbg !113
  %22 = load i32, i32* %21, align 4, !dbg !115
  %23 = icmp ne i32 %22, 38, !dbg !116
  br i1 %23, label %24, label %26, !dbg !117

; <label>:24:                                     ; preds = %20, %12
  %25 = load i32, i32* %8, align 4, !dbg !118
  store i32 %25, i32* %4, align 4, !dbg !120
  br label %33, !dbg !120

; <label>:26:                                     ; preds = %20
  store i32 0, i32* @uid32, align 4, !dbg !121
  br label %27, !dbg !122

; <label>:27:                                     ; preds = %26, %3
  %28 = load i32, i32* %5, align 4, !dbg !123
  %29 = load i32, i32* %6, align 4, !dbg !124
  %30 = load i32, i32* %7, align 4, !dbg !125
  %31 = call i64 (i64, ...) @syscall(i64 117, i32 %28, i32 %29, i32 %30) #7, !dbg !126
  %32 = trunc i64 %31 to i32, !dbg !126
  store i32 %32, i32* %4, align 4, !dbg !127
  br label %33, !dbg !127

; <label>:33:                                     ; preds = %27, %24
  %34 = load i32, i32* %4, align 4, !dbg !128
  ret i32 %34, !dbg !128
}

; Function Attrs: nounwind uwtable
define i32 @Id_SetRESGid(i32, i32, i32) #0 !dbg !129 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !132, metadata !20), !dbg !133
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !134, metadata !20), !dbg !135
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !136, metadata !20), !dbg !137
  %9 = load i32, i32* @uid32, align 4, !dbg !138
  %10 = icmp ne i32 %9, 0, !dbg !138
  br i1 %10, label %11, label %27, !dbg !140

; <label>:11:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !141, metadata !20), !dbg !143
  call void @abort() #6, !dbg !144
  unreachable, !dbg !144
                                                  ; No predecessors!
  %13 = load i32, i32* %5, align 4, !dbg !145
  %14 = load i32, i32* %6, align 4, !dbg !147
  %15 = load i32, i32* %7, align 4, !dbg !148
  %16 = call i64 (i64, ...) @syscall(i64 0, i32 %13, i32 %14, i32 %15) #7, !dbg !149
  %17 = trunc i64 %16 to i32, !dbg !149
  store i32 %17, i32* %8, align 4, !dbg !150
  %18 = load i32, i32* %8, align 4, !dbg !151
  %19 = icmp ne i32 %18, -1, !dbg !153
  br i1 %19, label %24, label %20, !dbg !154

; <label>:20:                                     ; preds = %12
  %21 = call i32* @__errno_location() #1, !dbg !155
  %22 = load i32, i32* %21, align 4, !dbg !157
  %23 = icmp ne i32 %22, 38, !dbg !158
  br i1 %23, label %24, label %26, !dbg !159

; <label>:24:                                     ; preds = %20, %12
  %25 = load i32, i32* %8, align 4, !dbg !160
  store i32 %25, i32* %4, align 4, !dbg !162
  br label %33, !dbg !162

; <label>:26:                                     ; preds = %20
  store i32 0, i32* @uid32, align 4, !dbg !163
  br label %27, !dbg !164

; <label>:27:                                     ; preds = %26, %3
  %28 = load i32, i32* %5, align 4, !dbg !165
  %29 = load i32, i32* %6, align 4, !dbg !166
  %30 = load i32, i32* %7, align 4, !dbg !167
  %31 = call i64 (i64, ...) @syscall(i64 119, i32 %28, i32 %29, i32 %30) #7, !dbg !168
  %32 = trunc i64 %31 to i32, !dbg !168
  store i32 %32, i32* %4, align 4, !dbg !169
  br label %33, !dbg !169

; <label>:33:                                     ; preds = %27, %24
  %34 = load i32, i32* %4, align 4, !dbg !170
  ret i32 %34, !dbg !170
}

; Function Attrs: nounwind uwtable
define i32 @Id_SetREUid(i32, i32) #0 !dbg !171 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !174, metadata !20), !dbg !175
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !20), !dbg !177
  %7 = load i32, i32* @uid32, align 4, !dbg !178
  %8 = icmp ne i32 %7, 0, !dbg !178
  br i1 %8, label %9, label %24, !dbg !180

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !181, metadata !20), !dbg !183
  call void @abort() #6, !dbg !184
  unreachable, !dbg !184
                                                  ; No predecessors!
  %11 = load i32, i32* %4, align 4, !dbg !185
  %12 = load i32, i32* %5, align 4, !dbg !187
  %13 = call i64 (i64, ...) @syscall(i64 0, i32 %11, i32 %12) #7, !dbg !188
  %14 = trunc i64 %13 to i32, !dbg !188
  store i32 %14, i32* %6, align 4, !dbg !189
  %15 = load i32, i32* %6, align 4, !dbg !190
  %16 = icmp ne i32 %15, -1, !dbg !192
  br i1 %16, label %21, label %17, !dbg !193

; <label>:17:                                     ; preds = %10
  %18 = call i32* @__errno_location() #1, !dbg !194
  %19 = load i32, i32* %18, align 4, !dbg !196
  %20 = icmp ne i32 %19, 38, !dbg !197
  br i1 %20, label %21, label %23, !dbg !198

; <label>:21:                                     ; preds = %17, %10
  %22 = load i32, i32* %6, align 4, !dbg !199
  store i32 %22, i32* %3, align 4, !dbg !201
  br label %29, !dbg !201

; <label>:23:                                     ; preds = %17
  store i32 0, i32* @uid32, align 4, !dbg !202
  br label %24, !dbg !203

; <label>:24:                                     ; preds = %23, %2
  %25 = load i32, i32* %4, align 4, !dbg !204
  %26 = load i32, i32* %5, align 4, !dbg !205
  %27 = call i64 (i64, ...) @syscall(i64 113, i32 %25, i32 %26) #7, !dbg !206
  %28 = trunc i64 %27 to i32, !dbg !206
  store i32 %28, i32* %3, align 4, !dbg !207
  br label %29, !dbg !207

; <label>:29:                                     ; preds = %24, %21
  %30 = load i32, i32* %3, align 4, !dbg !208
  ret i32 %30, !dbg !208
}

; Function Attrs: nounwind uwtable
define i32 @Id_SetREGid(i32, i32) #0 !dbg !209 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !212, metadata !20), !dbg !213
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !214, metadata !20), !dbg !215
  %7 = load i32, i32* @uid32, align 4, !dbg !216
  %8 = icmp ne i32 %7, 0, !dbg !216
  br i1 %8, label %9, label %24, !dbg !218

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !219, metadata !20), !dbg !221
  call void @abort() #6, !dbg !222
  unreachable, !dbg !222
                                                  ; No predecessors!
  %11 = load i32, i32* %4, align 4, !dbg !223
  %12 = load i32, i32* %5, align 4, !dbg !225
  %13 = call i64 (i64, ...) @syscall(i64 0, i32 %11, i32 %12) #7, !dbg !226
  %14 = trunc i64 %13 to i32, !dbg !226
  store i32 %14, i32* %6, align 4, !dbg !227
  %15 = load i32, i32* %6, align 4, !dbg !228
  %16 = icmp ne i32 %15, -1, !dbg !230
  br i1 %16, label %21, label %17, !dbg !231

; <label>:17:                                     ; preds = %10
  %18 = call i32* @__errno_location() #1, !dbg !232
  %19 = load i32, i32* %18, align 4, !dbg !234
  %20 = icmp ne i32 %19, 38, !dbg !235
  br i1 %20, label %21, label %23, !dbg !236

; <label>:21:                                     ; preds = %17, %10
  %22 = load i32, i32* %6, align 4, !dbg !237
  store i32 %22, i32* %3, align 4, !dbg !239
  br label %29, !dbg !239

; <label>:23:                                     ; preds = %17
  store i32 0, i32* @uid32, align 4, !dbg !240
  br label %24, !dbg !241

; <label>:24:                                     ; preds = %23, %2
  %25 = load i32, i32* %4, align 4, !dbg !242
  %26 = load i32, i32* %5, align 4, !dbg !243
  %27 = call i64 (i64, ...) @syscall(i64 114, i32 %25, i32 %26) #7, !dbg !244
  %28 = trunc i64 %27 to i32, !dbg !244
  store i32 %28, i32* %3, align 4, !dbg !245
  br label %29, !dbg !245

; <label>:29:                                     ; preds = %24, %21
  %30 = load i32, i32* %3, align 4, !dbg !246
  ret i32 %30, !dbg !246
}

; Function Attrs: nounwind uwtable
define i32 @Id_BeginSuperUser() #0 !dbg !247 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !249, metadata !20), !dbg !250
  %2 = call i32 @geteuid() #7, !dbg !251
  store i32 %2, i32* %1, align 4, !dbg !250
  %3 = load i32, i32* %1, align 4, !dbg !252
  %4 = icmp ne i32 %3, -1, !dbg !255
  %5 = xor i1 %4, true, !dbg !256
  %6 = zext i1 %5 to i32, !dbg !256
  %7 = sext i32 %6 to i64, !dbg !257
  %8 = icmp ne i64 %7, 0, !dbg !258
  br i1 %8, label %9, label %10, !dbg !259

; <label>:9:                                      ; preds = %0
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 925) #8, !dbg !260
  unreachable, !dbg !260

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %1, align 4, !dbg !263
  %12 = icmp eq i32 %11, 0, !dbg !265
  br i1 %12, label %13, label %14, !dbg !266

; <label>:13:                                     ; preds = %10
  store i32 -1, i32* %1, align 4, !dbg !267
  br label %16, !dbg !269

; <label>:14:                                     ; preds = %10
  %15 = call i32 @Id_SetRESUid(i32 -1, i32 0, i32 -1), !dbg !270
  br label %16

; <label>:16:                                     ; preds = %14, %13
  %17 = load i32, i32* %1, align 4, !dbg !272
  ret i32 %17, !dbg !273
}

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @Id_EndSuperUser(i32) #0 !dbg !274 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !277, metadata !20), !dbg !278
  %3 = load i32, i32* %2, align 4, !dbg !279
  %4 = icmp ne i32 %3, -1, !dbg !281
  br i1 %4, label %5, label %12, !dbg !282

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !283
  %7 = call i32 @geteuid() #7, !dbg !285
  %8 = icmp ne i32 %6, %7, !dbg !286
  br i1 %8, label %9, label %12, !dbg !287

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %2, align 4, !dbg !288
  %11 = call i32 @Id_SetRESUid(i32 -1, i32 %10, i32 -1), !dbg !290
  br label %12, !dbg !291

; <label>:12:                                     ; preds = %9, %5, %1
  ret void, !dbg !292
}

; Function Attrs: nounwind uwtable
define signext i8 @Id_IsSetUGid() #0 !dbg !293 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !299, metadata !20), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %3, metadata !301, metadata !20), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %4, metadata !303, metadata !20), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %5, metadata !305, metadata !20), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %6, metadata !307, metadata !20), !dbg !308
  call void @llvm.dbg.declare(metadata i32* %7, metadata !309, metadata !20), !dbg !310
  %8 = call i32 @IdGetRESUid(i32* %2, i32* %3, i32* %4), !dbg !311
  %9 = icmp ne i32 %8, 0, !dbg !313
  br i1 %9, label %13, label %10, !dbg !314

; <label>:10:                                     ; preds = %0
  %11 = call i32 @IdGetRESGid(i32* %5, i32* %6, i32* %7), !dbg !315
  %12 = icmp ne i32 %11, 0, !dbg !316
  br i1 %12, label %13, label %14, !dbg !317

; <label>:13:                                     ; preds = %10, %0
  store i8 1, i8* %1, align 1, !dbg !319
  br label %38, !dbg !319

; <label>:14:                                     ; preds = %10
  %15 = call signext i8 @IdIsSetUGid(), !dbg !321
  %16 = sext i8 %15 to i32, !dbg !321
  %17 = icmp ne i32 %16, 0, !dbg !321
  br i1 %17, label %34, label %18, !dbg !322

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %2, align 4, !dbg !323
  %20 = load i32, i32* %3, align 4, !dbg !324
  %21 = icmp ne i32 %19, %20, !dbg !325
  br i1 %21, label %34, label %22, !dbg !326

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %2, align 4, !dbg !327
  %24 = load i32, i32* %4, align 4, !dbg !328
  %25 = icmp ne i32 %23, %24, !dbg !329
  br i1 %25, label %34, label %26, !dbg !330

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %5, align 4, !dbg !331
  %28 = load i32, i32* %6, align 4, !dbg !332
  %29 = icmp ne i32 %27, %28, !dbg !333
  br i1 %29, label %34, label %30, !dbg !334

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %5, align 4, !dbg !335
  %32 = load i32, i32* %7, align 4, !dbg !336
  %33 = icmp ne i32 %31, %32, !dbg !337
  br label %34, !dbg !338

; <label>:34:                                     ; preds = %30, %26, %22, %18, %14
  %35 = phi i1 [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32, !dbg !339
  %37 = trunc i32 %36 to i8, !dbg !341
  store i8 %37, i8* %1, align 1, !dbg !342
  br label %38, !dbg !342

; <label>:38:                                     ; preds = %34, %13
  %39 = load i8, i8* %1, align 1, !dbg !343
  ret i8 %39, !dbg !343
}

; Function Attrs: nounwind uwtable
define internal i32 @IdGetRESUid(i32*, i32*, i32*) #0 !dbg !344 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !348, metadata !20), !dbg !349
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !350, metadata !20), !dbg !351
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !352, metadata !20), !dbg !353
  %9 = load i32, i32* @uid32, align 4, !dbg !354
  %10 = icmp ne i32 %9, 0, !dbg !354
  br i1 %10, label %11, label %27, !dbg !356

; <label>:11:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !357, metadata !20), !dbg !359
  call void @abort() #6, !dbg !360
  unreachable, !dbg !360
                                                  ; No predecessors!
  %13 = load i32*, i32** %5, align 8, !dbg !361
  %14 = load i32*, i32** %6, align 8, !dbg !363
  %15 = load i32*, i32** %7, align 8, !dbg !364
  %16 = call i64 (i64, ...) @syscall(i64 0, i32* %13, i32* %14, i32* %15) #7, !dbg !365
  %17 = trunc i64 %16 to i32, !dbg !365
  store i32 %17, i32* %8, align 4, !dbg !366
  %18 = load i32, i32* %8, align 4, !dbg !367
  %19 = icmp ne i32 %18, -1, !dbg !369
  br i1 %19, label %24, label %20, !dbg !370

; <label>:20:                                     ; preds = %12
  %21 = call i32* @__errno_location() #1, !dbg !371
  %22 = load i32, i32* %21, align 4, !dbg !373
  %23 = icmp ne i32 %22, 38, !dbg !374
  br i1 %23, label %24, label %26, !dbg !375

; <label>:24:                                     ; preds = %20, %12
  %25 = load i32, i32* %8, align 4, !dbg !376
  store i32 %25, i32* %4, align 4, !dbg !378
  br label %33, !dbg !378

; <label>:26:                                     ; preds = %20
  store i32 0, i32* @uid32, align 4, !dbg !379
  br label %27, !dbg !380

; <label>:27:                                     ; preds = %26, %3
  %28 = load i32*, i32** %5, align 8, !dbg !381
  %29 = load i32*, i32** %6, align 8, !dbg !382
  %30 = load i32*, i32** %7, align 8, !dbg !383
  %31 = call i64 (i64, ...) @syscall(i64 118, i32* %28, i32* %29, i32* %30) #7, !dbg !384
  %32 = trunc i64 %31 to i32, !dbg !384
  store i32 %32, i32* %4, align 4, !dbg !385
  br label %33, !dbg !385

; <label>:33:                                     ; preds = %27, %24
  %34 = load i32, i32* %4, align 4, !dbg !386
  ret i32 %34, !dbg !386
}

; Function Attrs: nounwind uwtable
define internal i32 @IdGetRESGid(i32*, i32*, i32*) #0 !dbg !387 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !391, metadata !20), !dbg !392
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !393, metadata !20), !dbg !394
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !395, metadata !20), !dbg !396
  %9 = load i32, i32* @uid32, align 4, !dbg !397
  %10 = icmp ne i32 %9, 0, !dbg !397
  br i1 %10, label %11, label %27, !dbg !399

; <label>:11:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !400, metadata !20), !dbg !402
  call void @abort() #6, !dbg !403
  unreachable, !dbg !403
                                                  ; No predecessors!
  %13 = load i32*, i32** %5, align 8, !dbg !404
  %14 = load i32*, i32** %6, align 8, !dbg !406
  %15 = load i32*, i32** %7, align 8, !dbg !407
  %16 = call i64 (i64, ...) @syscall(i64 0, i32* %13, i32* %14, i32* %15) #7, !dbg !408
  %17 = trunc i64 %16 to i32, !dbg !408
  store i32 %17, i32* %8, align 4, !dbg !409
  %18 = load i32, i32* %8, align 4, !dbg !410
  %19 = icmp ne i32 %18, -1, !dbg !412
  br i1 %19, label %24, label %20, !dbg !413

; <label>:20:                                     ; preds = %12
  %21 = call i32* @__errno_location() #1, !dbg !414
  %22 = load i32, i32* %21, align 4, !dbg !416
  %23 = icmp ne i32 %22, 38, !dbg !417
  br i1 %23, label %24, label %26, !dbg !418

; <label>:24:                                     ; preds = %20, %12
  %25 = load i32, i32* %8, align 4, !dbg !419
  store i32 %25, i32* %4, align 4, !dbg !421
  br label %33, !dbg !421

; <label>:26:                                     ; preds = %20
  store i32 0, i32* @uid32, align 4, !dbg !422
  br label %27, !dbg !423

; <label>:27:                                     ; preds = %26, %3
  %28 = load i32*, i32** %5, align 8, !dbg !424
  %29 = load i32*, i32** %6, align 8, !dbg !425
  %30 = load i32*, i32** %7, align 8, !dbg !426
  %31 = call i64 (i64, ...) @syscall(i64 120, i32* %28, i32* %29, i32* %30) #7, !dbg !427
  %32 = trunc i64 %31 to i32, !dbg !427
  store i32 %32, i32* %4, align 4, !dbg !428
  br label %33, !dbg !428

; <label>:33:                                     ; preds = %27, %24
  %34 = load i32, i32* %4, align 4, !dbg !429
  ret i32 %34, !dbg !429
}

; Function Attrs: nounwind uwtable
define internal signext i8 @IdIsSetUGid() #0 !dbg !430 {
  %1 = call i64 @getauxval(i64 23) #7, !dbg !431
  %2 = icmp ne i64 %1, 0, !dbg !432
  %3 = zext i1 %2 to i32, !dbg !432
  %4 = trunc i32 %3 to i8, !dbg !431
  ret i8 %4, !dbg !433
}

; Function Attrs: nounwind
declare i64 @getauxval(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !9)
!1 = !DIFile(filename: "idLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line627")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !5, line: 80, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line627")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !7, line: 125, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line627")
!8 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!9 = !{!10}
!10 = distinct !DIGlobalVariable(name: "uid32", scope: !0, file: !11, line: 85, type: !12, isLocal: true, isDefinition: true, variable: i32* @uid32)
!11 = !DIFile(filename: "idLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line627")
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "Id_SetUid", scope: !11, file: !11, line: 120, type: !17, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!12, !4}
!19 = !DILocalVariable(name: "euid", arg: 1, scope: !16, file: !11, line: 120, type: !4)
!20 = !DIExpression()
!21 = !DILocation(line: 120, column: 17, scope: !16)
!22 = !DILocation(line: 125, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !11, line: 125, column: 8)
!24 = !DILocation(line: 125, column: 8, scope: !16)
!25 = !DILocalVariable(name: "r", scope: !26, file: !11, line: 126, type: !12)
!26 = distinct !DILexicalBlock(scope: !23, file: !11, line: 125, column: 15)
!27 = !DILocation(line: 126, column: 11, scope: !26)
!28 = !DILocation(line: 126, column: 24, scope: !26)
!29 = !DILocation(line: 126, column: 37, scope: !30)
!30 = !DILexicalBlockFile(scope: !26, file: !11, discriminator: 1)
!31 = !DILocation(line: 126, column: 15, scope: !30)
!32 = !DILocation(line: 126, column: 11, scope: !30)
!33 = !DILocation(line: 127, column: 11, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !11, line: 127, column: 11)
!35 = !DILocation(line: 127, column: 13, scope: !34)
!36 = !DILocation(line: 127, column: 19, scope: !34)
!37 = !DILocation(line: 127, column: 23, scope: !38)
!38 = !DILexicalBlockFile(scope: !34, file: !11, discriminator: 1)
!39 = !DILocation(line: 127, column: 22, scope: !38)
!40 = !DILocation(line: 127, column: 27, scope: !38)
!41 = !DILocation(line: 127, column: 11, scope: !38)
!42 = !DILocation(line: 128, column: 17, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !11, line: 127, column: 38)
!44 = !DILocation(line: 128, column: 10, scope: !43)
!45 = !DILocation(line: 130, column: 13, scope: !26)
!46 = !DILocation(line: 131, column: 4, scope: !26)
!47 = !DILocation(line: 132, column: 30, scope: !16)
!48 = !DILocation(line: 132, column: 11, scope: !16)
!49 = !DILocation(line: 132, column: 4, scope: !16)
!50 = !DILocation(line: 136, column: 1, scope: !16)
!51 = distinct !DISubprogram(name: "Id_SetGid", scope: !11, file: !11, line: 159, type: !52, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{!12, !54}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !5, line: 65, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !7, line: 126, baseType: !8)
!56 = !DILocalVariable(name: "egid", arg: 1, scope: !51, file: !11, line: 159, type: !54)
!57 = !DILocation(line: 159, column: 17, scope: !51)
!58 = !DILocation(line: 168, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !11, line: 168, column: 8)
!60 = !DILocation(line: 168, column: 8, scope: !51)
!61 = !DILocalVariable(name: "r", scope: !62, file: !11, line: 169, type: !12)
!62 = distinct !DILexicalBlock(scope: !59, file: !11, line: 168, column: 15)
!63 = !DILocation(line: 169, column: 11, scope: !62)
!64 = !DILocation(line: 169, column: 24, scope: !62)
!65 = !DILocation(line: 169, column: 37, scope: !66)
!66 = !DILexicalBlockFile(scope: !62, file: !11, discriminator: 1)
!67 = !DILocation(line: 169, column: 15, scope: !66)
!68 = !DILocation(line: 169, column: 11, scope: !66)
!69 = !DILocation(line: 171, column: 11, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !11, line: 171, column: 11)
!71 = !DILocation(line: 171, column: 13, scope: !70)
!72 = !DILocation(line: 171, column: 19, scope: !70)
!73 = !DILocation(line: 171, column: 23, scope: !74)
!74 = !DILexicalBlockFile(scope: !70, file: !11, discriminator: 1)
!75 = !DILocation(line: 171, column: 22, scope: !74)
!76 = !DILocation(line: 171, column: 27, scope: !74)
!77 = !DILocation(line: 171, column: 11, scope: !74)
!78 = !DILocation(line: 172, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !70, file: !11, line: 171, column: 38)
!80 = !DILocation(line: 172, column: 10, scope: !79)
!81 = !DILocation(line: 174, column: 13, scope: !62)
!82 = !DILocation(line: 175, column: 4, scope: !62)
!83 = !DILocation(line: 177, column: 30, scope: !51)
!84 = !DILocation(line: 177, column: 11, scope: !51)
!85 = !DILocation(line: 177, column: 4, scope: !51)
!86 = !DILocation(line: 179, column: 1, scope: !51)
!87 = distinct !DISubprogram(name: "Id_SetRESUid", scope: !11, file: !11, line: 200, type: !88, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!88 = !DISubroutineType(types: !89)
!89 = !{!12, !4, !4, !4}
!90 = !DILocalVariable(name: "uid", arg: 1, scope: !87, file: !11, line: 200, type: !4)
!91 = !DILocation(line: 200, column: 20, scope: !87)
!92 = !DILocalVariable(name: "euid", arg: 2, scope: !87, file: !11, line: 201, type: !4)
!93 = !DILocation(line: 201, column: 13, scope: !87)
!94 = !DILocalVariable(name: "suid", arg: 3, scope: !87, file: !11, line: 202, type: !4)
!95 = !DILocation(line: 202, column: 13, scope: !87)
!96 = !DILocation(line: 207, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !87, file: !11, line: 207, column: 8)
!98 = !DILocation(line: 207, column: 8, scope: !87)
!99 = !DILocalVariable(name: "r", scope: !100, file: !11, line: 208, type: !12)
!100 = distinct !DILexicalBlock(scope: !97, file: !11, line: 207, column: 15)
!101 = !DILocation(line: 208, column: 11, scope: !100)
!102 = !DILocation(line: 208, column: 24, scope: !100)
!103 = !DILocation(line: 208, column: 37, scope: !104)
!104 = !DILexicalBlockFile(scope: !100, file: !11, discriminator: 1)
!105 = !DILocation(line: 208, column: 42, scope: !104)
!106 = !DILocation(line: 208, column: 48, scope: !104)
!107 = !DILocation(line: 208, column: 15, scope: !104)
!108 = !DILocation(line: 208, column: 11, scope: !104)
!109 = !DILocation(line: 210, column: 11, scope: !110)
!110 = distinct !DILexicalBlock(scope: !100, file: !11, line: 210, column: 11)
!111 = !DILocation(line: 210, column: 13, scope: !110)
!112 = !DILocation(line: 210, column: 19, scope: !110)
!113 = !DILocation(line: 210, column: 23, scope: !114)
!114 = !DILexicalBlockFile(scope: !110, file: !11, discriminator: 1)
!115 = !DILocation(line: 210, column: 22, scope: !114)
!116 = !DILocation(line: 210, column: 27, scope: !114)
!117 = !DILocation(line: 210, column: 11, scope: !114)
!118 = !DILocation(line: 211, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !110, file: !11, line: 210, column: 38)
!120 = !DILocation(line: 211, column: 10, scope: !119)
!121 = !DILocation(line: 213, column: 13, scope: !100)
!122 = !DILocation(line: 214, column: 4, scope: !100)
!123 = !DILocation(line: 216, column: 33, scope: !87)
!124 = !DILocation(line: 216, column: 38, scope: !87)
!125 = !DILocation(line: 216, column: 44, scope: !87)
!126 = !DILocation(line: 216, column: 11, scope: !87)
!127 = !DILocation(line: 216, column: 4, scope: !87)
!128 = !DILocation(line: 222, column: 1, scope: !87)
!129 = distinct !DISubprogram(name: "Id_SetRESGid", scope: !11, file: !11, line: 280, type: !130, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!130 = !DISubroutineType(types: !131)
!131 = !{!12, !54, !54, !54}
!132 = !DILocalVariable(name: "gid", arg: 1, scope: !129, file: !11, line: 280, type: !54)
!133 = !DILocation(line: 280, column: 20, scope: !129)
!134 = !DILocalVariable(name: "egid", arg: 2, scope: !129, file: !11, line: 281, type: !54)
!135 = !DILocation(line: 281, column: 13, scope: !129)
!136 = !DILocalVariable(name: "sgid", arg: 3, scope: !129, file: !11, line: 282, type: !54)
!137 = !DILocation(line: 282, column: 13, scope: !129)
!138 = !DILocation(line: 287, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !11, line: 287, column: 8)
!140 = !DILocation(line: 287, column: 8, scope: !129)
!141 = !DILocalVariable(name: "r", scope: !142, file: !11, line: 288, type: !12)
!142 = distinct !DILexicalBlock(scope: !139, file: !11, line: 287, column: 15)
!143 = !DILocation(line: 288, column: 11, scope: !142)
!144 = !DILocation(line: 288, column: 24, scope: !142)
!145 = !DILocation(line: 288, column: 37, scope: !146)
!146 = !DILexicalBlockFile(scope: !142, file: !11, discriminator: 1)
!147 = !DILocation(line: 288, column: 42, scope: !146)
!148 = !DILocation(line: 288, column: 48, scope: !146)
!149 = !DILocation(line: 288, column: 15, scope: !146)
!150 = !DILocation(line: 288, column: 11, scope: !146)
!151 = !DILocation(line: 290, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !142, file: !11, line: 290, column: 11)
!153 = !DILocation(line: 290, column: 13, scope: !152)
!154 = !DILocation(line: 290, column: 19, scope: !152)
!155 = !DILocation(line: 290, column: 23, scope: !156)
!156 = !DILexicalBlockFile(scope: !152, file: !11, discriminator: 1)
!157 = !DILocation(line: 290, column: 22, scope: !156)
!158 = !DILocation(line: 290, column: 27, scope: !156)
!159 = !DILocation(line: 290, column: 11, scope: !156)
!160 = !DILocation(line: 291, column: 17, scope: !161)
!161 = distinct !DILexicalBlock(scope: !152, file: !11, line: 290, column: 38)
!162 = !DILocation(line: 291, column: 10, scope: !161)
!163 = !DILocation(line: 293, column: 13, scope: !142)
!164 = !DILocation(line: 294, column: 4, scope: !142)
!165 = !DILocation(line: 296, column: 33, scope: !129)
!166 = !DILocation(line: 296, column: 38, scope: !129)
!167 = !DILocation(line: 296, column: 44, scope: !129)
!168 = !DILocation(line: 296, column: 11, scope: !129)
!169 = !DILocation(line: 296, column: 4, scope: !129)
!170 = !DILocation(line: 302, column: 1, scope: !129)
!171 = distinct !DISubprogram(name: "Id_SetREUid", scope: !11, file: !11, line: 362, type: !172, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!172 = !DISubroutineType(types: !173)
!173 = !{!12, !4, !4}
!174 = !DILocalVariable(name: "uid", arg: 1, scope: !171, file: !11, line: 362, type: !4)
!175 = !DILocation(line: 362, column: 19, scope: !171)
!176 = !DILocalVariable(name: "euid", arg: 2, scope: !171, file: !11, line: 363, type: !4)
!177 = !DILocation(line: 363, column: 12, scope: !171)
!178 = !DILocation(line: 371, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !11, line: 371, column: 8)
!180 = !DILocation(line: 371, column: 8, scope: !171)
!181 = !DILocalVariable(name: "r", scope: !182, file: !11, line: 372, type: !12)
!182 = distinct !DILexicalBlock(scope: !179, file: !11, line: 371, column: 15)
!183 = !DILocation(line: 372, column: 11, scope: !182)
!184 = !DILocation(line: 372, column: 24, scope: !182)
!185 = !DILocation(line: 372, column: 37, scope: !186)
!186 = !DILexicalBlockFile(scope: !182, file: !11, discriminator: 1)
!187 = !DILocation(line: 372, column: 42, scope: !186)
!188 = !DILocation(line: 372, column: 15, scope: !186)
!189 = !DILocation(line: 372, column: 11, scope: !186)
!190 = !DILocation(line: 374, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !182, file: !11, line: 374, column: 11)
!192 = !DILocation(line: 374, column: 13, scope: !191)
!193 = !DILocation(line: 374, column: 19, scope: !191)
!194 = !DILocation(line: 374, column: 23, scope: !195)
!195 = !DILexicalBlockFile(scope: !191, file: !11, discriminator: 1)
!196 = !DILocation(line: 374, column: 22, scope: !195)
!197 = !DILocation(line: 374, column: 27, scope: !195)
!198 = !DILocation(line: 374, column: 11, scope: !195)
!199 = !DILocation(line: 375, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !191, file: !11, line: 374, column: 38)
!201 = !DILocation(line: 375, column: 10, scope: !200)
!202 = !DILocation(line: 377, column: 13, scope: !182)
!203 = !DILocation(line: 378, column: 4, scope: !182)
!204 = !DILocation(line: 380, column: 32, scope: !171)
!205 = !DILocation(line: 380, column: 37, scope: !171)
!206 = !DILocation(line: 380, column: 11, scope: !171)
!207 = !DILocation(line: 380, column: 4, scope: !171)
!208 = !DILocation(line: 382, column: 1, scope: !171)
!209 = distinct !DISubprogram(name: "Id_SetREGid", scope: !11, file: !11, line: 406, type: !210, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!210 = !DISubroutineType(types: !211)
!211 = !{!12, !54, !54}
!212 = !DILocalVariable(name: "gid", arg: 1, scope: !209, file: !11, line: 406, type: !54)
!213 = !DILocation(line: 406, column: 19, scope: !209)
!214 = !DILocalVariable(name: "egid", arg: 2, scope: !209, file: !11, line: 407, type: !54)
!215 = !DILocation(line: 407, column: 12, scope: !209)
!216 = !DILocation(line: 412, column: 8, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !11, line: 412, column: 8)
!218 = !DILocation(line: 412, column: 8, scope: !209)
!219 = !DILocalVariable(name: "r", scope: !220, file: !11, line: 413, type: !12)
!220 = distinct !DILexicalBlock(scope: !217, file: !11, line: 412, column: 15)
!221 = !DILocation(line: 413, column: 11, scope: !220)
!222 = !DILocation(line: 413, column: 24, scope: !220)
!223 = !DILocation(line: 413, column: 37, scope: !224)
!224 = !DILexicalBlockFile(scope: !220, file: !11, discriminator: 1)
!225 = !DILocation(line: 413, column: 42, scope: !224)
!226 = !DILocation(line: 413, column: 15, scope: !224)
!227 = !DILocation(line: 413, column: 11, scope: !224)
!228 = !DILocation(line: 415, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !11, line: 415, column: 11)
!230 = !DILocation(line: 415, column: 13, scope: !229)
!231 = !DILocation(line: 415, column: 19, scope: !229)
!232 = !DILocation(line: 415, column: 23, scope: !233)
!233 = !DILexicalBlockFile(scope: !229, file: !11, discriminator: 1)
!234 = !DILocation(line: 415, column: 22, scope: !233)
!235 = !DILocation(line: 415, column: 27, scope: !233)
!236 = !DILocation(line: 415, column: 11, scope: !233)
!237 = !DILocation(line: 416, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !11, line: 415, column: 38)
!239 = !DILocation(line: 416, column: 10, scope: !238)
!240 = !DILocation(line: 418, column: 13, scope: !220)
!241 = !DILocation(line: 419, column: 4, scope: !220)
!242 = !DILocation(line: 421, column: 32, scope: !209)
!243 = !DILocation(line: 421, column: 37, scope: !209)
!244 = !DILocation(line: 421, column: 11, scope: !209)
!245 = !DILocation(line: 421, column: 4, scope: !209)
!246 = !DILocation(line: 423, column: 1, scope: !209)
!247 = distinct !DISubprogram(name: "Id_BeginSuperUser", scope: !11, file: !11, line: 921, type: !248, isLocal: false, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!248 = !DISubroutineType(types: !3)
!249 = !DILocalVariable(name: "uid", scope: !247, file: !11, line: 923, type: !4)
!250 = !DILocation(line: 923, column: 10, scope: !247)
!251 = !DILocation(line: 923, column: 16, scope: !247)
!252 = !DILocation(line: 925, column: 30, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !11, line: 925, column: 10)
!254 = distinct !DILexicalBlock(scope: !247, file: !11, line: 925, column: 5)
!255 = !DILocation(line: 925, column: 34, scope: !253)
!256 = !DILocation(line: 925, column: 28, scope: !253)
!257 = !DILocation(line: 925, column: 27, scope: !253)
!258 = !DILocation(line: 925, column: 10, scope: !253)
!259 = !DILocation(line: 925, column: 10, scope: !254)
!260 = !DILocation(line: 925, column: 57, scope: !261)
!261 = !DILexicalBlockFile(scope: !262, file: !11, discriminator: 1)
!262 = distinct !DILexicalBlock(scope: !253, file: !11, line: 925, column: 55)
!263 = !DILocation(line: 927, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !247, file: !11, line: 927, column: 8)
!265 = !DILocation(line: 927, column: 12, scope: !264)
!266 = !DILocation(line: 927, column: 8, scope: !247)
!267 = !DILocation(line: 928, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !11, line: 927, column: 18)
!269 = !DILocation(line: 929, column: 4, scope: !268)
!270 = !DILocation(line: 937, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !11, line: 929, column: 11)
!272 = !DILocation(line: 941, column: 11, scope: !247)
!273 = !DILocation(line: 941, column: 4, scope: !247)
!274 = distinct !DISubprogram(name: "Id_EndSuperUser", scope: !11, file: !11, line: 964, type: !275, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !4}
!277 = !DILocalVariable(name: "uid", arg: 1, scope: !274, file: !11, line: 964, type: !4)
!278 = !DILocation(line: 964, column: 23, scope: !274)
!279 = !DILocation(line: 966, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !11, line: 966, column: 8)
!281 = !DILocation(line: 966, column: 13, scope: !280)
!282 = !DILocation(line: 966, column: 28, scope: !280)
!283 = !DILocation(line: 966, column: 32, scope: !284)
!284 = !DILexicalBlockFile(scope: !280, file: !11, discriminator: 1)
!285 = !DILocation(line: 966, column: 39, scope: !284)
!286 = !DILocation(line: 966, column: 36, scope: !284)
!287 = !DILocation(line: 966, column: 8, scope: !284)
!288 = !DILocation(line: 974, column: 32, scope: !289)
!289 = distinct !DILexicalBlock(scope: !280, file: !11, line: 966, column: 51)
!290 = !DILocation(line: 974, column: 7, scope: !289)
!291 = !DILocation(line: 976, column: 4, scope: !289)
!292 = !DILocation(line: 977, column: 1, scope: !274)
!293 = distinct !DISubprogram(name: "Id_IsSetUGid", scope: !11, file: !11, line: 1058, type: !294, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!294 = !DISubroutineType(types: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !297, line: 230, baseType: !298)
!297 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line627")
!298 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!299 = !DILocalVariable(name: "ruid", scope: !293, file: !11, line: 1068, type: !4)
!300 = !DILocation(line: 1068, column: 10, scope: !293)
!301 = !DILocalVariable(name: "euid", scope: !293, file: !11, line: 1068, type: !4)
!302 = !DILocation(line: 1068, column: 16, scope: !293)
!303 = !DILocalVariable(name: "suid", scope: !293, file: !11, line: 1068, type: !4)
!304 = !DILocation(line: 1068, column: 22, scope: !293)
!305 = !DILocalVariable(name: "rgid", scope: !293, file: !11, line: 1069, type: !54)
!306 = !DILocation(line: 1069, column: 10, scope: !293)
!307 = !DILocalVariable(name: "egid", scope: !293, file: !11, line: 1069, type: !54)
!308 = !DILocation(line: 1069, column: 16, scope: !293)
!309 = !DILocalVariable(name: "sgid", scope: !293, file: !11, line: 1069, type: !54)
!310 = !DILocation(line: 1069, column: 22, scope: !293)
!311 = !DILocation(line: 1072, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !293, file: !11, line: 1072, column: 8)
!313 = !DILocation(line: 1072, column: 41, scope: !312)
!314 = !DILocation(line: 1072, column: 46, scope: !312)
!315 = !DILocation(line: 1073, column: 8, scope: !312)
!316 = !DILocation(line: 1073, column: 41, scope: !312)
!317 = !DILocation(line: 1072, column: 8, scope: !318)
!318 = !DILexicalBlockFile(scope: !293, file: !11, discriminator: 1)
!319 = !DILocation(line: 1074, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !11, line: 1073, column: 47)
!321 = !DILocation(line: 1077, column: 11, scope: !293)
!322 = !DILocation(line: 1077, column: 25, scope: !293)
!323 = !DILocation(line: 1078, column: 11, scope: !293)
!324 = !DILocation(line: 1078, column: 19, scope: !293)
!325 = !DILocation(line: 1078, column: 16, scope: !293)
!326 = !DILocation(line: 1078, column: 24, scope: !293)
!327 = !DILocation(line: 1078, column: 27, scope: !318)
!328 = !DILocation(line: 1078, column: 35, scope: !318)
!329 = !DILocation(line: 1078, column: 32, scope: !318)
!330 = !DILocation(line: 1078, column: 40, scope: !318)
!331 = !DILocation(line: 1079, column: 11, scope: !293)
!332 = !DILocation(line: 1079, column: 19, scope: !293)
!333 = !DILocation(line: 1079, column: 16, scope: !293)
!334 = !DILocation(line: 1079, column: 24, scope: !293)
!335 = !DILocation(line: 1079, column: 27, scope: !318)
!336 = !DILocation(line: 1079, column: 35, scope: !318)
!337 = !DILocation(line: 1079, column: 32, scope: !318)
!338 = !DILocation(line: 1079, column: 24, scope: !318)
!339 = !DILocation(line: 1079, column: 24, scope: !340)
!340 = !DILexicalBlockFile(scope: !293, file: !11, discriminator: 2)
!341 = !DILocation(line: 1077, column: 11, scope: !318)
!342 = !DILocation(line: 1077, column: 4, scope: !318)
!343 = !DILocation(line: 1083, column: 1, scope: !293)
!344 = distinct !DISubprogram(name: "IdGetRESUid", scope: !11, file: !11, line: 243, type: !345, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!345 = !DISubroutineType(types: !346)
!346 = !{!12, !347, !347, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!348 = !DILocalVariable(name: "uid", arg: 1, scope: !344, file: !11, line: 243, type: !347)
!349 = !DILocation(line: 243, column: 20, scope: !344)
!350 = !DILocalVariable(name: "euid", arg: 2, scope: !344, file: !11, line: 244, type: !347)
!351 = !DILocation(line: 244, column: 20, scope: !344)
!352 = !DILocalVariable(name: "suid", arg: 3, scope: !344, file: !11, line: 245, type: !347)
!353 = !DILocation(line: 245, column: 20, scope: !344)
!354 = !DILocation(line: 247, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !344, file: !11, line: 247, column: 8)
!356 = !DILocation(line: 247, column: 8, scope: !344)
!357 = !DILocalVariable(name: "r", scope: !358, file: !11, line: 248, type: !12)
!358 = distinct !DILexicalBlock(scope: !355, file: !11, line: 247, column: 15)
!359 = !DILocation(line: 248, column: 11, scope: !358)
!360 = !DILocation(line: 248, column: 24, scope: !358)
!361 = !DILocation(line: 248, column: 37, scope: !362)
!362 = !DILexicalBlockFile(scope: !358, file: !11, discriminator: 1)
!363 = !DILocation(line: 248, column: 42, scope: !362)
!364 = !DILocation(line: 248, column: 48, scope: !362)
!365 = !DILocation(line: 248, column: 15, scope: !362)
!366 = !DILocation(line: 248, column: 11, scope: !362)
!367 = !DILocation(line: 250, column: 11, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !11, line: 250, column: 11)
!369 = !DILocation(line: 250, column: 13, scope: !368)
!370 = !DILocation(line: 250, column: 19, scope: !368)
!371 = !DILocation(line: 250, column: 23, scope: !372)
!372 = !DILexicalBlockFile(scope: !368, file: !11, discriminator: 1)
!373 = !DILocation(line: 250, column: 22, scope: !372)
!374 = !DILocation(line: 250, column: 27, scope: !372)
!375 = !DILocation(line: 250, column: 11, scope: !372)
!376 = !DILocation(line: 251, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !368, file: !11, line: 250, column: 38)
!378 = !DILocation(line: 251, column: 10, scope: !377)
!379 = !DILocation(line: 253, column: 13, scope: !358)
!380 = !DILocation(line: 254, column: 4, scope: !358)
!381 = !DILocation(line: 256, column: 33, scope: !344)
!382 = !DILocation(line: 256, column: 38, scope: !344)
!383 = !DILocation(line: 256, column: 44, scope: !344)
!384 = !DILocation(line: 256, column: 11, scope: !344)
!385 = !DILocation(line: 256, column: 4, scope: !344)
!386 = !DILocation(line: 257, column: 1, scope: !344)
!387 = distinct !DISubprogram(name: "IdGetRESGid", scope: !11, file: !11, line: 324, type: !388, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!388 = !DISubroutineType(types: !389)
!389 = !{!12, !390, !390, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!391 = !DILocalVariable(name: "gid", arg: 1, scope: !387, file: !11, line: 324, type: !390)
!392 = !DILocation(line: 324, column: 20, scope: !387)
!393 = !DILocalVariable(name: "egid", arg: 2, scope: !387, file: !11, line: 325, type: !390)
!394 = !DILocation(line: 325, column: 20, scope: !387)
!395 = !DILocalVariable(name: "sgid", arg: 3, scope: !387, file: !11, line: 326, type: !390)
!396 = !DILocation(line: 326, column: 20, scope: !387)
!397 = !DILocation(line: 328, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !387, file: !11, line: 328, column: 8)
!399 = !DILocation(line: 328, column: 8, scope: !387)
!400 = !DILocalVariable(name: "r", scope: !401, file: !11, line: 329, type: !12)
!401 = distinct !DILexicalBlock(scope: !398, file: !11, line: 328, column: 15)
!402 = !DILocation(line: 329, column: 11, scope: !401)
!403 = !DILocation(line: 329, column: 24, scope: !401)
!404 = !DILocation(line: 329, column: 37, scope: !405)
!405 = !DILexicalBlockFile(scope: !401, file: !11, discriminator: 1)
!406 = !DILocation(line: 329, column: 42, scope: !405)
!407 = !DILocation(line: 329, column: 48, scope: !405)
!408 = !DILocation(line: 329, column: 15, scope: !405)
!409 = !DILocation(line: 329, column: 11, scope: !405)
!410 = !DILocation(line: 331, column: 11, scope: !411)
!411 = distinct !DILexicalBlock(scope: !401, file: !11, line: 331, column: 11)
!412 = !DILocation(line: 331, column: 13, scope: !411)
!413 = !DILocation(line: 331, column: 19, scope: !411)
!414 = !DILocation(line: 331, column: 23, scope: !415)
!415 = !DILexicalBlockFile(scope: !411, file: !11, discriminator: 1)
!416 = !DILocation(line: 331, column: 22, scope: !415)
!417 = !DILocation(line: 331, column: 27, scope: !415)
!418 = !DILocation(line: 331, column: 11, scope: !415)
!419 = !DILocation(line: 332, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !11, line: 331, column: 38)
!421 = !DILocation(line: 332, column: 10, scope: !420)
!422 = !DILocation(line: 334, column: 13, scope: !401)
!423 = !DILocation(line: 335, column: 4, scope: !401)
!424 = !DILocation(line: 337, column: 33, scope: !387)
!425 = !DILocation(line: 337, column: 38, scope: !387)
!426 = !DILocation(line: 337, column: 44, scope: !387)
!427 = !DILocation(line: 337, column: 11, scope: !387)
!428 = !DILocation(line: 337, column: 4, scope: !387)
!429 = !DILocation(line: 338, column: 1, scope: !387)
!430 = distinct !DISubprogram(name: "IdIsSetUGid", scope: !11, file: !11, line: 998, type: !294, isLocal: true, isDefinition: true, scopeLine: 999, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!431 = !DILocation(line: 1016, column: 11, scope: !430)
!432 = !DILocation(line: 1016, column: 31, scope: !430)
!433 = !DILocation(line: 1016, column: 4, scope: !430)
