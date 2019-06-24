; ModuleID = './poll.o.i'
source_filename = "./poll.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PollImpl = type { void ()*, void ()*, void (i8, i8*, i32, i32)*, i32 (i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*)*, i8 (i64, i32, void (i8*)*, i8*, i32)*, i8 (i64, i32, void (i8*)*, i32, i8**)*, i8 ()*, void (i64)* }
%struct.MXUserRecLock = type opaque
%struct.PollClassSet = type { i64 }

@pollImpl = internal global %struct.PollImpl* null, align 8

; Function Attrs: nounwind uwtable
define void @Poll_InitWithImpl(%struct.PollImpl*) #0 !dbg !100 {
  %2 = alloca %struct.PollImpl*, align 8
  store %struct.PollImpl* %0, %struct.PollImpl** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.PollImpl** %2, metadata !104, metadata !105), !dbg !106
  %3 = load %struct.PollImpl*, %struct.PollImpl** %2, align 8, !dbg !107
  store %struct.PollImpl* %3, %struct.PollImpl** @pollImpl, align 8, !dbg !108
  %4 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !109
  %5 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %4, i32 0, i32 0, !dbg !110
  %6 = load void ()*, void ()** %5, align 8, !dbg !110
  call void %6(), !dbg !109
  ret void, !dbg !111
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @Poll_Exit() #0 !dbg !112 {
  %1 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !113
  %2 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %1, i32 0, i32 1, !dbg !114
  %3 = load void ()*, void ()** %2, align 8, !dbg !114
  call void %3(), !dbg !113
  store %struct.PollImpl* null, %struct.PollImpl** @pollImpl, align 8, !dbg !115
  ret void, !dbg !116
}

; Function Attrs: nounwind uwtable
define signext i8 @Poll_LockingEnabled() #0 !dbg !117 {
  %1 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !118
  %2 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %1, i32 0, i32 6, !dbg !119
  %3 = load i8 ()*, i8 ()** %2, align 8, !dbg !119
  %4 = call signext i8 %3(), !dbg !118
  ret i8 %4, !dbg !120
}

; Function Attrs: nounwind uwtable
define void @Poll_LoopTimeout(i8 signext, i8*, i32, i32) #0 !dbg !121 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !122, metadata !105), !dbg !123
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !124, metadata !105), !dbg !125
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !126, metadata !105), !dbg !127
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !128, metadata !105), !dbg !129
  %9 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !130
  %10 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %9, i32 0, i32 2, !dbg !131
  %11 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 8, !dbg !131
  %12 = load i8, i8* %5, align 1, !dbg !132
  %13 = load i8*, i8** %6, align 8, !dbg !133
  %14 = load i32, i32* %7, align 4, !dbg !134
  %15 = load i32, i32* %8, align 4, !dbg !135
  call void %11(i8 signext %12, i8* %13, i32 %14, i32 %15), !dbg !130
  ret void, !dbg !136
}

; Function Attrs: nounwind uwtable
define void @Poll_Loop(i8 signext, i8*, i32) #0 !dbg !137 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !140, metadata !105), !dbg !141
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !142, metadata !105), !dbg !143
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !144, metadata !105), !dbg !145
  %7 = load i8, i8* %4, align 1, !dbg !146
  %8 = load i8*, i8** %5, align 8, !dbg !147
  %9 = load i32, i32* %6, align 4, !dbg !148
  call void @Poll_LoopTimeout(i8 signext %7, i8* %8, i32 %9, i32 1000000), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: nounwind uwtable
define signext i8 @Poll_CallbackRemove(i64, i32, void (i8*)*, i8*, i32) #0 !dbg !151 {
  %6 = alloca %struct.PollClassSet, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %6, metadata !152, metadata !105), !dbg !153
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !154, metadata !105), !dbg !155
  store void (i8*)* %2, void (i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %8, metadata !156, metadata !105), !dbg !157
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !158, metadata !105), !dbg !159
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !160, metadata !105), !dbg !161
  %12 = load i32, i32* %10, align 4, !dbg !162
  %13 = load i32, i32* %7, align 4, !dbg !163
  %14 = call i32 @PollSanitizeFlags(i32 %12, i32 %13), !dbg !164
  store i32 %14, i32* %7, align 4, !dbg !165
  %15 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !166
  %16 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %15, i32 0, i32 4, !dbg !167
  %17 = load i8 (i64, i32, void (i8*)*, i8*, i32)*, i8 (i64, i32, void (i8*)*, i8*, i32)** %16, align 8, !dbg !167
  %18 = load i32, i32* %7, align 4, !dbg !168
  %19 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !169
  %20 = load i8*, i8** %9, align 8, !dbg !170
  %21 = load i32, i32* %10, align 4, !dbg !171
  %22 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0, !dbg !166
  %23 = load i64, i64* %22, align 8, !dbg !166
  %24 = call signext i8 %17(i64 %23, i32 %18, void (i8*)* %19, i8* %20, i32 %21), !dbg !166
  ret i8 %24, !dbg !172
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PollSanitizeFlags(i32, i32) #2 !dbg !173 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !176, metadata !105), !dbg !177
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !178, metadata !105), !dbg !179
  %5 = load i32, i32* %3, align 4, !dbg !180
  %6 = icmp eq i32 %5, 2, !dbg !182
  br i1 %6, label %7, label %8, !dbg !183

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !184

; <label>:8:                                      ; preds = %7, %2
  %9 = load i32, i32* %4, align 4, !dbg !186
  ret i32 %9, !dbg !187
}

; Function Attrs: nounwind uwtable
define i32 @Poll_Callback(i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*) #0 !dbg !188 {
  %8 = alloca %struct.PollClassSet, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.MXUserRecLock*, align 8
  %15 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %8, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %8, metadata !189, metadata !105), !dbg !190
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !191, metadata !105), !dbg !192
  store void (i8*)* %2, void (i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %10, metadata !193, metadata !105), !dbg !194
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !195, metadata !105), !dbg !196
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !197, metadata !105), !dbg !198
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !199, metadata !105), !dbg !200
  store %struct.MXUserRecLock* %6, %struct.MXUserRecLock** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %14, metadata !201, metadata !105), !dbg !202
  %16 = load i32, i32* %12, align 4, !dbg !203
  %17 = load i32, i32* %9, align 4, !dbg !204
  %18 = call i32 @PollSanitizeFlags(i32 %16, i32 %17), !dbg !205
  store i32 %18, i32* %9, align 4, !dbg !206
  %19 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !207
  %20 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %19, i32 0, i32 3, !dbg !208
  %21 = load i32 (i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*)*, i32 (i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*)** %20, align 8, !dbg !208
  %22 = load i32, i32* %9, align 4, !dbg !209
  %23 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !210
  %24 = load i8*, i8** %11, align 8, !dbg !211
  %25 = load i32, i32* %12, align 4, !dbg !212
  %26 = load i64, i64* %13, align 8, !dbg !213
  %27 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %14, align 8, !dbg !214
  %28 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %8, i32 0, i32 0, !dbg !207
  %29 = load i64, i64* %28, align 8, !dbg !207
  %30 = call i32 %21(i64 %29, i32 %22, void (i8*)* %23, i8* %24, i32 %25, i64 %26, %struct.MXUserRecLock* %27), !dbg !207
  ret i32 %30, !dbg !215
}

; Function Attrs: nounwind uwtable
define signext i8 @Poll_CallbackRemoveOneByCB(i64, i32, void (i8*)*, i32, i8**) #0 !dbg !216 {
  %6 = alloca %struct.PollClassSet, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %6, metadata !217, metadata !105), !dbg !218
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !219, metadata !105), !dbg !220
  store void (i8*)* %2, void (i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %8, metadata !221, metadata !105), !dbg !222
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !223, metadata !105), !dbg !224
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !225, metadata !105), !dbg !226
  %12 = load i32, i32* %9, align 4, !dbg !227
  %13 = load i32, i32* %7, align 4, !dbg !228
  %14 = call i32 @PollSanitizeFlags(i32 %12, i32 %13), !dbg !229
  store i32 %14, i32* %7, align 4, !dbg !230
  %15 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !231
  %16 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %15, i32 0, i32 5, !dbg !232
  %17 = load i8 (i64, i32, void (i8*)*, i32, i8**)*, i8 (i64, i32, void (i8*)*, i32, i8**)** %16, align 8, !dbg !232
  %18 = load i32, i32* %7, align 4, !dbg !233
  %19 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !234
  %20 = load i32, i32* %9, align 4, !dbg !235
  %21 = load i8**, i8*** %10, align 8, !dbg !236
  %22 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0, !dbg !231
  %23 = load i64, i64* %22, align 8, !dbg !231
  %24 = call signext i8 %17(i64 %23, i32 %18, void (i8*)* %19, i32 %20, i8** %21), !dbg !231
  ret i8 %24, !dbg !237
}

; Function Attrs: nounwind uwtable
define void @Poll_NotifyChange(i64) #0 !dbg !238 {
  %2 = alloca %struct.PollClassSet, align 8
  %3 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %2, metadata !239, metadata !105), !dbg !240
  %4 = load %struct.PollImpl*, %struct.PollImpl** @pollImpl, align 8, !dbg !241
  %5 = getelementptr inbounds %struct.PollImpl, %struct.PollImpl* %4, i32 0, i32 7, !dbg !242
  %6 = load void (i64)*, void (i64)** %5, align 8, !dbg !242
  %7 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %2, i32 0, i32 0, !dbg !241
  %8 = load i64, i64* %7, align 8, !dbg !241
  call void %6(i64 %8), !dbg !241
  ret void, !dbg !243
}

; Function Attrs: nounwind uwtable
define i32 @Poll_CB_Device(void (i8*)*, i8*, i64, i8 signext) #0 !dbg !244 {
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.PollClassSet, align 8
  store void (i8*)* %0, void (i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %5, metadata !247, metadata !105), !dbg !248
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !249, metadata !105), !dbg !250
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !251, metadata !105), !dbg !252
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !253, metadata !105), !dbg !254
  %10 = call i64 @PollClassSet_Singleton(i32 0), !dbg !255
  %11 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %9, i32 0, i32 0, !dbg !255
  store i64 %10, i64* %11, align 8, !dbg !255
  %12 = load i8, i8* %8, align 1, !dbg !256
  %13 = sext i8 %12 to i32, !dbg !256
  %14 = icmp ne i32 %13, 0, !dbg !256
  %15 = select i1 %14, i32 1, i32 0, !dbg !256
  %16 = or i32 6, %15, !dbg !257
  %17 = load void (i8*)*, void (i8*)** %5, align 8, !dbg !258
  %18 = load i8*, i8** %6, align 8, !dbg !259
  %19 = load i64, i64* %7, align 8, !dbg !260
  %20 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %9, i32 0, i32 0, !dbg !261
  %21 = load i64, i64* %20, align 8, !dbg !261
  %22 = call i32 @Poll_Callback(i64 %21, i32 %16, void (i8*)* %17, i8* %18, i32 2, i64 %19, %struct.MXUserRecLock* null), !dbg !262
  ret i32 %22, !dbg !264
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PollClassSet_Singleton(i32) #2 !dbg !265 {
  %2 = alloca %struct.PollClassSet, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.PollClassSet, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !268, metadata !105), !dbg !269
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %4, metadata !270, metadata !105), !dbg !271
  %5 = call i64 @PollClassSet_Empty(), !dbg !272
  %6 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %4, i32 0, i32 0, !dbg !272
  store i64 %5, i64* %6, align 8, !dbg !272
  br label %7, !dbg !273, !llvm.loop !274

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !275

; <label>:8:                                      ; preds = %7
  %9 = load i32, i32* %3, align 4, !dbg !278
  %10 = zext i32 %9 to i64, !dbg !279
  %11 = shl i64 1, %10, !dbg !279
  %12 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %4, i32 0, i32 0, !dbg !280
  store i64 %11, i64* %12, align 8, !dbg !281
  %13 = bitcast %struct.PollClassSet* %2 to i8*, !dbg !282
  %14 = bitcast %struct.PollClassSet* %4 to i8*, !dbg !282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false), !dbg !282
  %15 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %2, i32 0, i32 0, !dbg !283
  %16 = load i64, i64* %15, align 8, !dbg !283
  ret i64 %16, !dbg !283
}

; Function Attrs: nounwind uwtable
define signext i8 @Poll_CB_DeviceRemove(void (i8*)*, i8*, i8 signext) #0 !dbg !284 {
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.PollClassSet, align 8
  store void (i8*)* %0, void (i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %4, metadata !287, metadata !105), !dbg !288
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !289, metadata !105), !dbg !290
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !291, metadata !105), !dbg !292
  %8 = call i64 @PollClassSet_Singleton(i32 0), !dbg !293
  %9 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %7, i32 0, i32 0, !dbg !293
  store i64 %8, i64* %9, align 8, !dbg !293
  %10 = load i8, i8* %6, align 1, !dbg !294
  %11 = sext i8 %10 to i32, !dbg !294
  %12 = icmp ne i32 %11, 0, !dbg !294
  %13 = select i1 %12, i32 1, i32 0, !dbg !294
  %14 = or i32 6, %13, !dbg !295
  %15 = load void (i8*)*, void (i8*)** %4, align 8, !dbg !296
  %16 = load i8*, i8** %5, align 8, !dbg !297
  %17 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %7, i32 0, i32 0, !dbg !298
  %18 = load i64, i64* %17, align 8, !dbg !298
  %19 = call signext i8 @Poll_CallbackRemove(i64 %18, i32 %14, void (i8*)* %15, i8* %16, i32 2), !dbg !299
  ret i8 %19, !dbg !301
}

; Function Attrs: nounwind uwtable
define i32 @Poll_CB_RTime(void (i8*)*, i8*, i64, i8 signext, %struct.MXUserRecLock*) #0 !dbg !302 {
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.MXUserRecLock*, align 8
  %11 = alloca %struct.PollClassSet, align 8
  store void (i8*)* %0, void (i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %6, metadata !305, metadata !105), !dbg !306
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !307, metadata !105), !dbg !308
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !309, metadata !105), !dbg !310
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !311, metadata !105), !dbg !312
  store %struct.MXUserRecLock* %4, %struct.MXUserRecLock** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %10, metadata !313, metadata !105), !dbg !314
  %12 = call i64 @PollClassSet_Singleton(i32 0), !dbg !315
  %13 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %11, i32 0, i32 0, !dbg !315
  store i64 %12, i64* %13, align 8, !dbg !315
  %14 = load i8, i8* %9, align 1, !dbg !316
  %15 = sext i8 %14 to i32, !dbg !316
  %16 = icmp ne i32 %15, 0, !dbg !316
  %17 = select i1 %16, i32 1, i32 0, !dbg !316
  %18 = or i32 2, %17, !dbg !317
  %19 = load void (i8*)*, void (i8*)** %6, align 8, !dbg !318
  %20 = load i8*, i8** %7, align 8, !dbg !319
  %21 = load i64, i64* %8, align 8, !dbg !320
  %22 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %10, align 8, !dbg !321
  %23 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %11, i32 0, i32 0, !dbg !322
  %24 = load i64, i64* %23, align 8, !dbg !322
  %25 = call i32 @Poll_Callback(i64 %24, i32 %18, void (i8*)* %19, i8* %20, i32 1, i64 %21, %struct.MXUserRecLock* %22), !dbg !323
  ret i32 %25, !dbg !325
}

; Function Attrs: nounwind uwtable
define signext i8 @Poll_CB_RTimeRemove(void (i8*)*, i8*, i8 signext) #0 !dbg !326 {
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.PollClassSet, align 8
  store void (i8*)* %0, void (i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %4, metadata !327, metadata !105), !dbg !328
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !329, metadata !105), !dbg !330
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !331, metadata !105), !dbg !332
  %8 = call i64 @PollClassSet_Singleton(i32 0), !dbg !333
  %9 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %7, i32 0, i32 0, !dbg !333
  store i64 %8, i64* %9, align 8, !dbg !333
  %10 = load i8, i8* %6, align 1, !dbg !334
  %11 = sext i8 %10 to i32, !dbg !334
  %12 = icmp ne i32 %11, 0, !dbg !334
  %13 = select i1 %12, i32 1, i32 0, !dbg !334
  %14 = or i32 2, %13, !dbg !335
  %15 = load void (i8*)*, void (i8*)** %4, align 8, !dbg !336
  %16 = load i8*, i8** %5, align 8, !dbg !337
  %17 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %7, i32 0, i32 0, !dbg !338
  %18 = load i64, i64* %17, align 8, !dbg !338
  %19 = call signext i8 @Poll_CallbackRemove(i64 %18, i32 %14, void (i8*)* %15, i8* %16, i32 1), !dbg !339
  ret i8 %19, !dbg !341
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PollClassSet_Empty() #2 !dbg !342 {
  %1 = alloca %struct.PollClassSet, align 8
  %2 = alloca %struct.PollClassSet, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %2, metadata !345, metadata !105), !dbg !346
  %3 = bitcast %struct.PollClassSet* %2 to i8*, !dbg !346
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 8, i32 8, i1 false), !dbg !346
  %4 = bitcast %struct.PollClassSet* %1 to i8*, !dbg !347
  %5 = bitcast %struct.PollClassSet* %2 to i8*, !dbg !347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false), !dbg !347
  %6 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %1, i32 0, i32 0, !dbg !348
  %7 = load i64, i64* %6, align 8, !dbg !348
  ret i64 %7, !dbg !348
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!97, !98}
!llvm.ident = !{!99}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !30)
!1 = !DIFile(filename: "poll.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!2 = !{!3, !14, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PollClass", file: !4, line: 103, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/poll.h", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "POLL_CLASS_MAIN", value: 0)
!7 = !DIEnumerator(name: "POLL_CLASS_PAUSE", value: 1)
!8 = !DIEnumerator(name: "POLL_CLASS_IPC", value: 2)
!9 = !DIEnumerator(name: "POLL_CLASS_CPT", value: 3)
!10 = !DIEnumerator(name: "POLL_CLASS_MKS", value: 4)
!11 = !DIEnumerator(name: "POLL_FIXED_CLASSES", value: 5)
!12 = !DIEnumerator(name: "POLL_DEFAULT_FIXED_CLASSES", value: 6)
!13 = !DIEnumerator(name: "POLL_MAX_CLASSES", value: 31)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VMwareStatus", file: !15, line: 85, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware.h", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "VMWARE_STATUS_SUCCESS", value: 0)
!18 = !DIEnumerator(name: "VMWARE_STATUS_ERROR", value: 1)
!19 = !DIEnumerator(name: "VMWARE_STATUS_NOMEM", value: 2)
!20 = !DIEnumerator(name: "VMWARE_STATUS_INSUFFICIENT_RESOURCES", value: 3)
!21 = !DIEnumerator(name: "VMWARE_STATUS_INVALID_ARGS", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 83, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DIEnumerator(name: "POLL_VIRTUALREALTIME", value: -1)
!25 = !DIEnumerator(name: "POLL_VTIME", value: 0)
!26 = !DIEnumerator(name: "POLL_REALTIME", value: 1)
!27 = !DIEnumerator(name: "POLL_DEVICE", value: 2)
!28 = !DIEnumerator(name: "POLL_MAIN_LOOP", value: 3)
!29 = !DIEnumerator(name: "POLL_NUM_QUEUES", value: 4)
!30 = !{!31}
!31 = distinct !DIGlobalVariable(name: "pollImpl", scope: !0, file: !32, line: 56, type: !33, isLocal: true, isDefinition: true, variable: %struct.PollImpl** @pollImpl)
!32 = !DIFile(filename: "poll.c", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollImpl", file: !36, line: 79, baseType: !37)
!36 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/pollImpl.h", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollImpl", file: !36, line: 61, size: 512, align: 64, elements: !38)
!38 = !{!39, !43, !44, !54, !80, !84, !89, !93}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "Init", scope: !37, file: !36, line: 62, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "Exit", scope: !37, file: !36, line: 63, baseType: !40, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "LoopTimeout", scope: !37, file: !36, line: 64, baseType: !45, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !51, !52, !53}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !49, line: 230, baseType: !50)
!49 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!50 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClass", file: !4, line: 113, baseType: !3)
!53 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "Callback", scope: !37, file: !36, line: 66, baseType: !55, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !53, !66, !70, !71, !72, !76}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMwareStatus", file: !15, line: 91, baseType: !14)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClassSet", file: !4, line: 128, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollClassSet", file: !4, line: 126, size: 64, align: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !60, file: !4, line: 127, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !64, line: 122, baseType: !65)
!64 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!65 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollerFunction", file: !4, line: 221, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollEventType", file: !4, line: 93, baseType: !22)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollDevHandle", file: !49, line: 1130, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !49, line: 172, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !64, line: 40, baseType: !75)
!75 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRecLock", file: !78, line: 39, baseType: !79)
!78 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line100")
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRecLock", file: !78, line: 39, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "CallbackRemove", scope: !37, file: !36, line: 71, baseType: !81, size: 64, align: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!48, !59, !53, !66, !70, !71}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "CallbackRemoveOneByCB", scope: !37, file: !36, line: 74, baseType: !85, size: 64, align: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!48, !59, !53, !66, !71, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "LockingEnabled", scope: !37, file: !36, line: 77, baseType: !90, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!48}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "NotifyChange", scope: !37, file: !36, line: 78, baseType: !94, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !59}
!97 = !{i32 2, !"Dwarf Version", i32 4}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!100 = distinct !DISubprogram(name: "Poll_InitWithImpl", scope: !32, file: !32, line: 107, type: !101, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !33}
!103 = !{}
!104 = !DILocalVariable(name: "impl", arg: 1, scope: !100, file: !32, line: 107, type: !33)
!105 = !DIExpression()
!106 = !DILocation(line: 107, column: 35, scope: !100)
!107 = !DILocation(line: 111, column: 15, scope: !100)
!108 = !DILocation(line: 111, column: 13, scope: !100)
!109 = !DILocation(line: 113, column: 4, scope: !100)
!110 = !DILocation(line: 113, column: 14, scope: !100)
!111 = !DILocation(line: 114, column: 1, scope: !100)
!112 = distinct !DISubprogram(name: "Poll_Exit", scope: !32, file: !32, line: 132, type: !41, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!113 = !DILocation(line: 134, column: 4, scope: !112)
!114 = !DILocation(line: 134, column: 14, scope: !112)
!115 = !DILocation(line: 136, column: 13, scope: !112)
!116 = !DILocation(line: 137, column: 1, scope: !112)
!117 = distinct !DISubprogram(name: "Poll_LockingEnabled", scope: !32, file: !32, line: 157, type: !91, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!118 = !DILocation(line: 159, column: 11, scope: !117)
!119 = !DILocation(line: 159, column: 21, scope: !117)
!120 = !DILocation(line: 159, column: 4, scope: !117)
!121 = distinct !DISubprogram(name: "Poll_LoopTimeout", scope: !32, file: !32, line: 181, type: !46, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!122 = !DILocalVariable(name: "loop", arg: 1, scope: !121, file: !32, line: 181, type: !48)
!123 = !DILocation(line: 181, column: 23, scope: !121)
!124 = !DILocalVariable(name: "exit", arg: 2, scope: !121, file: !32, line: 182, type: !51)
!125 = !DILocation(line: 182, column: 24, scope: !121)
!126 = !DILocalVariable(name: "class", arg: 3, scope: !121, file: !32, line: 183, type: !52)
!127 = !DILocation(line: 183, column: 28, scope: !121)
!128 = !DILocalVariable(name: "timeout", arg: 4, scope: !121, file: !32, line: 184, type: !53)
!129 = !DILocation(line: 184, column: 22, scope: !121)
!130 = !DILocation(line: 186, column: 4, scope: !121)
!131 = !DILocation(line: 186, column: 14, scope: !121)
!132 = !DILocation(line: 186, column: 26, scope: !121)
!133 = !DILocation(line: 186, column: 32, scope: !121)
!134 = !DILocation(line: 186, column: 38, scope: !121)
!135 = !DILocation(line: 186, column: 45, scope: !121)
!136 = !DILocation(line: 187, column: 1, scope: !121)
!137 = distinct !DISubprogram(name: "Poll_Loop", scope: !32, file: !32, line: 203, type: !138, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !48, !51, !52}
!140 = !DILocalVariable(name: "loop", arg: 1, scope: !137, file: !32, line: 203, type: !48)
!141 = !DILocation(line: 203, column: 16, scope: !137)
!142 = !DILocalVariable(name: "exit", arg: 2, scope: !137, file: !32, line: 204, type: !51)
!143 = !DILocation(line: 204, column: 17, scope: !137)
!144 = !DILocalVariable(name: "class", arg: 3, scope: !137, file: !32, line: 205, type: !52)
!145 = !DILocation(line: 205, column: 21, scope: !137)
!146 = !DILocation(line: 207, column: 21, scope: !137)
!147 = !DILocation(line: 207, column: 27, scope: !137)
!148 = !DILocation(line: 207, column: 33, scope: !137)
!149 = !DILocation(line: 207, column: 4, scope: !137)
!150 = !DILocation(line: 208, column: 1, scope: !137)
!151 = distinct !DISubprogram(name: "Poll_CallbackRemove", scope: !32, file: !32, line: 229, type: !82, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!152 = !DILocalVariable(name: "classSet", arg: 1, scope: !151, file: !32, line: 229, type: !59)
!153 = !DILocation(line: 229, column: 34, scope: !151)
!154 = !DILocalVariable(name: "flags", arg: 2, scope: !151, file: !32, line: 230, type: !53)
!155 = !DILocation(line: 230, column: 25, scope: !151)
!156 = !DILocalVariable(name: "f", arg: 3, scope: !151, file: !32, line: 231, type: !66)
!157 = !DILocation(line: 231, column: 36, scope: !151)
!158 = !DILocalVariable(name: "clientData", arg: 4, scope: !151, file: !32, line: 232, type: !70)
!159 = !DILocation(line: 232, column: 27, scope: !151)
!160 = !DILocalVariable(name: "type", arg: 5, scope: !151, file: !32, line: 233, type: !71)
!161 = !DILocation(line: 233, column: 35, scope: !151)
!162 = !DILocation(line: 236, column: 30, scope: !151)
!163 = !DILocation(line: 236, column: 36, scope: !151)
!164 = !DILocation(line: 236, column: 12, scope: !151)
!165 = !DILocation(line: 236, column: 10, scope: !151)
!166 = !DILocation(line: 237, column: 11, scope: !151)
!167 = !DILocation(line: 237, column: 21, scope: !151)
!168 = !DILocation(line: 237, column: 46, scope: !151)
!169 = !DILocation(line: 237, column: 53, scope: !151)
!170 = !DILocation(line: 237, column: 56, scope: !151)
!171 = !DILocation(line: 237, column: 68, scope: !151)
!172 = !DILocation(line: 237, column: 4, scope: !151)
!173 = distinct !DISubprogram(name: "PollSanitizeFlags", scope: !32, file: !32, line: 77, type: !174, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!174 = !DISubroutineType(types: !175)
!175 = !{!53, !71, !53}
!176 = !DILocalVariable(name: "type", arg: 1, scope: !173, file: !32, line: 77, type: !71)
!177 = !DILocation(line: 77, column: 33, scope: !173)
!178 = !DILocalVariable(name: "flags", arg: 2, scope: !173, file: !32, line: 78, type: !53)
!179 = !DILocation(line: 78, column: 23, scope: !173)
!180 = !DILocation(line: 80, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !32, line: 80, column: 8)
!182 = !DILocation(line: 80, column: 13, scope: !181)
!183 = !DILocation(line: 80, column: 8, scope: !173)
!184 = !DILocation(line: 86, column: 4, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !32, line: 80, column: 29)
!186 = !DILocation(line: 87, column: 11, scope: !173)
!187 = !DILocation(line: 87, column: 4, scope: !173)
!188 = distinct !DISubprogram(name: "Poll_Callback", scope: !32, file: !32, line: 265, type: !56, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!189 = !DILocalVariable(name: "classSet", arg: 1, scope: !188, file: !32, line: 265, type: !59)
!190 = !DILocation(line: 265, column: 28, scope: !188)
!191 = !DILocalVariable(name: "flags", arg: 2, scope: !188, file: !32, line: 266, type: !53)
!192 = !DILocation(line: 266, column: 19, scope: !188)
!193 = !DILocalVariable(name: "f", arg: 3, scope: !188, file: !32, line: 267, type: !66)
!194 = !DILocation(line: 267, column: 30, scope: !188)
!195 = !DILocalVariable(name: "clientData", arg: 4, scope: !188, file: !32, line: 268, type: !70)
!196 = !DILocation(line: 268, column: 21, scope: !188)
!197 = !DILocalVariable(name: "type", arg: 5, scope: !188, file: !32, line: 269, type: !71)
!198 = !DILocation(line: 269, column: 29, scope: !188)
!199 = !DILocalVariable(name: "info", arg: 6, scope: !188, file: !32, line: 270, type: !72)
!200 = !DILocation(line: 270, column: 29, scope: !188)
!201 = !DILocalVariable(name: "lock", arg: 7, scope: !188, file: !32, line: 271, type: !76)
!202 = !DILocation(line: 271, column: 30, scope: !188)
!203 = !DILocation(line: 274, column: 30, scope: !188)
!204 = !DILocation(line: 274, column: 36, scope: !188)
!205 = !DILocation(line: 274, column: 12, scope: !188)
!206 = !DILocation(line: 274, column: 10, scope: !188)
!207 = !DILocation(line: 275, column: 11, scope: !188)
!208 = !DILocation(line: 275, column: 21, scope: !188)
!209 = !DILocation(line: 275, column: 40, scope: !188)
!210 = !DILocation(line: 275, column: 47, scope: !188)
!211 = !DILocation(line: 275, column: 50, scope: !188)
!212 = !DILocation(line: 275, column: 62, scope: !188)
!213 = !DILocation(line: 275, column: 68, scope: !188)
!214 = !DILocation(line: 275, column: 74, scope: !188)
!215 = !DILocation(line: 275, column: 4, scope: !188)
!216 = distinct !DISubprogram(name: "Poll_CallbackRemoveOneByCB", scope: !32, file: !32, line: 300, type: !86, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!217 = !DILocalVariable(name: "classSet", arg: 1, scope: !216, file: !32, line: 300, type: !59)
!218 = !DILocation(line: 300, column: 41, scope: !216)
!219 = !DILocalVariable(name: "flags", arg: 2, scope: !216, file: !32, line: 301, type: !53)
!220 = !DILocation(line: 301, column: 32, scope: !216)
!221 = !DILocalVariable(name: "f", arg: 3, scope: !216, file: !32, line: 302, type: !66)
!222 = !DILocation(line: 302, column: 43, scope: !216)
!223 = !DILocalVariable(name: "type", arg: 4, scope: !216, file: !32, line: 303, type: !71)
!224 = !DILocation(line: 303, column: 42, scope: !216)
!225 = !DILocalVariable(name: "clientData", arg: 5, scope: !216, file: !32, line: 304, type: !88)
!226 = !DILocation(line: 304, column: 35, scope: !216)
!227 = !DILocation(line: 308, column: 30, scope: !216)
!228 = !DILocation(line: 308, column: 36, scope: !216)
!229 = !DILocation(line: 308, column: 12, scope: !216)
!230 = !DILocation(line: 308, column: 10, scope: !216)
!231 = !DILocation(line: 309, column: 11, scope: !216)
!232 = !DILocation(line: 309, column: 21, scope: !216)
!233 = !DILocation(line: 309, column: 53, scope: !216)
!234 = !DILocation(line: 309, column: 60, scope: !216)
!235 = !DILocation(line: 309, column: 63, scope: !216)
!236 = !DILocation(line: 309, column: 69, scope: !216)
!237 = !DILocation(line: 309, column: 4, scope: !216)
!238 = distinct !DISubprogram(name: "Poll_NotifyChange", scope: !32, file: !32, line: 332, type: !95, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!239 = !DILocalVariable(name: "classSet", arg: 1, scope: !238, file: !32, line: 332, type: !59)
!240 = !DILocation(line: 332, column: 32, scope: !238)
!241 = !DILocation(line: 334, column: 4, scope: !238)
!242 = !DILocation(line: 334, column: 14, scope: !238)
!243 = !DILocation(line: 335, column: 1, scope: !238)
!244 = distinct !DISubprogram(name: "Poll_CB_Device", scope: !32, file: !32, line: 348, type: !245, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!245 = !DISubroutineType(types: !246)
!246 = !{!58, !66, !70, !72, !48}
!247 = !DILocalVariable(name: "f", arg: 1, scope: !244, file: !32, line: 348, type: !66)
!248 = !DILocation(line: 348, column: 31, scope: !244)
!249 = !DILocalVariable(name: "clientData", arg: 2, scope: !244, file: !32, line: 349, type: !70)
!250 = !DILocation(line: 349, column: 22, scope: !244)
!251 = !DILocalVariable(name: "info", arg: 3, scope: !244, file: !32, line: 350, type: !72)
!252 = !DILocation(line: 350, column: 30, scope: !244)
!253 = !DILocalVariable(name: "periodic", arg: 4, scope: !244, file: !32, line: 351, type: !48)
!254 = !DILocation(line: 351, column: 21, scope: !244)
!255 = !DILocation(line: 354, column: 18, scope: !244)
!256 = !DILocation(line: 357, column: 19, scope: !244)
!257 = !DILocation(line: 356, column: 23, scope: !244)
!258 = !DILocation(line: 358, column: 18, scope: !244)
!259 = !DILocation(line: 359, column: 18, scope: !244)
!260 = !DILocation(line: 361, column: 18, scope: !244)
!261 = !DILocation(line: 354, column: 4, scope: !244)
!262 = !DILocation(line: 354, column: 4, scope: !263)
!263 = !DILexicalBlockFile(scope: !244, file: !32, discriminator: 1)
!264 = !DILocation(line: 353, column: 4, scope: !244)
!265 = distinct !DISubprogram(name: "PollClassSet_Singleton", scope: !4, file: !4, line: 140, type: !266, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!266 = !DISubroutineType(types: !267)
!267 = !{!59, !52}
!268 = !DILocalVariable(name: "c", arg: 1, scope: !265, file: !4, line: 140, type: !52)
!269 = !DILocation(line: 140, column: 34, scope: !265)
!270 = !DILocalVariable(name: "s", scope: !265, file: !4, line: 142, type: !59)
!271 = !DILocation(line: 142, column: 17, scope: !265)
!272 = !DILocation(line: 142, column: 21, scope: !265)
!273 = !DILocation(line: 144, column: 4, scope: !265)
!274 = distinct !{!274, !273}
!275 = !DILocation(line: 144, column: 103, scope: !276)
!276 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 1)
!277 = distinct !DILexicalBlock(scope: !265, file: !4, line: 144, column: 7)
!278 = !DILocation(line: 147, column: 20, scope: !265)
!279 = !DILocation(line: 147, column: 17, scope: !265)
!280 = !DILocation(line: 147, column: 6, scope: !265)
!281 = !DILocation(line: 147, column: 11, scope: !265)
!282 = !DILocation(line: 148, column: 11, scope: !265)
!283 = !DILocation(line: 148, column: 4, scope: !265)
!284 = distinct !DISubprogram(name: "Poll_CB_DeviceRemove", scope: !32, file: !32, line: 366, type: !285, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!285 = !DISubroutineType(types: !286)
!286 = !{!48, !66, !70, !48}
!287 = !DILocalVariable(name: "f", arg: 1, scope: !284, file: !32, line: 366, type: !66)
!288 = !DILocation(line: 366, column: 37, scope: !284)
!289 = !DILocalVariable(name: "clientData", arg: 2, scope: !284, file: !32, line: 367, type: !70)
!290 = !DILocation(line: 367, column: 28, scope: !284)
!291 = !DILocalVariable(name: "periodic", arg: 3, scope: !284, file: !32, line: 368, type: !48)
!292 = !DILocation(line: 368, column: 27, scope: !284)
!293 = !DILocation(line: 371, column: 27, scope: !284)
!294 = !DILocation(line: 374, column: 28, scope: !284)
!295 = !DILocation(line: 373, column: 32, scope: !284)
!296 = !DILocation(line: 375, column: 27, scope: !284)
!297 = !DILocation(line: 376, column: 27, scope: !284)
!298 = !DILocation(line: 371, column: 7, scope: !284)
!299 = !DILocation(line: 371, column: 7, scope: !300)
!300 = !DILexicalBlockFile(scope: !284, file: !32, discriminator: 1)
!301 = !DILocation(line: 370, column: 4, scope: !284)
!302 = distinct !DISubprogram(name: "Poll_CB_RTime", scope: !32, file: !32, line: 382, type: !303, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!303 = !DISubroutineType(types: !304)
!304 = !{!58, !66, !70, !73, !48, !76}
!305 = !DILocalVariable(name: "f", arg: 1, scope: !302, file: !32, line: 382, type: !66)
!306 = !DILocation(line: 382, column: 30, scope: !302)
!307 = !DILocalVariable(name: "clientData", arg: 2, scope: !302, file: !32, line: 383, type: !70)
!308 = !DILocation(line: 383, column: 21, scope: !302)
!309 = !DILocalVariable(name: "info", arg: 3, scope: !302, file: !32, line: 384, type: !73)
!310 = !DILocation(line: 384, column: 21, scope: !302)
!311 = !DILocalVariable(name: "periodic", arg: 4, scope: !302, file: !32, line: 385, type: !48)
!312 = !DILocation(line: 385, column: 20, scope: !302)
!313 = !DILocalVariable(name: "lock", arg: 5, scope: !302, file: !32, line: 386, type: !76)
!314 = !DILocation(line: 386, column: 30, scope: !302)
!315 = !DILocation(line: 389, column: 18, scope: !302)
!316 = !DILocation(line: 391, column: 19, scope: !302)
!317 = !DILocation(line: 390, column: 23, scope: !302)
!318 = !DILocation(line: 392, column: 18, scope: !302)
!319 = !DILocation(line: 393, column: 18, scope: !302)
!320 = !DILocation(line: 395, column: 18, scope: !302)
!321 = !DILocation(line: 395, column: 24, scope: !302)
!322 = !DILocation(line: 389, column: 4, scope: !302)
!323 = !DILocation(line: 389, column: 4, scope: !324)
!324 = !DILexicalBlockFile(scope: !302, file: !32, discriminator: 1)
!325 = !DILocation(line: 388, column: 4, scope: !302)
!326 = distinct !DISubprogram(name: "Poll_CB_RTimeRemove", scope: !32, file: !32, line: 400, type: !285, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!327 = !DILocalVariable(name: "f", arg: 1, scope: !326, file: !32, line: 400, type: !66)
!328 = !DILocation(line: 400, column: 36, scope: !326)
!329 = !DILocalVariable(name: "clientData", arg: 2, scope: !326, file: !32, line: 401, type: !70)
!330 = !DILocation(line: 401, column: 27, scope: !326)
!331 = !DILocalVariable(name: "periodic", arg: 3, scope: !326, file: !32, line: 402, type: !48)
!332 = !DILocation(line: 402, column: 26, scope: !326)
!333 = !DILocation(line: 405, column: 27, scope: !326)
!334 = !DILocation(line: 407, column: 28, scope: !326)
!335 = !DILocation(line: 406, column: 32, scope: !326)
!336 = !DILocation(line: 408, column: 27, scope: !326)
!337 = !DILocation(line: 409, column: 27, scope: !326)
!338 = !DILocation(line: 405, column: 7, scope: !326)
!339 = !DILocation(line: 405, column: 7, scope: !340)
!340 = !DILexicalBlockFile(scope: !326, file: !32, discriminator: 1)
!341 = !DILocation(line: 404, column: 4, scope: !326)
!342 = distinct !DISubprogram(name: "PollClassSet_Empty", scope: !4, file: !4, line: 132, type: !343, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!343 = !DISubroutineType(types: !344)
!344 = !{!59}
!345 = !DILocalVariable(name: "set", scope: !342, file: !4, line: 134, type: !59)
!346 = !DILocation(line: 134, column: 17, scope: !342)
!347 = !DILocation(line: 135, column: 11, scope: !342)
!348 = !DILocation(line: 135, column: 4, scope: !342)
