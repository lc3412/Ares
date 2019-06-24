; ModuleID = './machineID.o.i'
source_filename = "./machineID.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.ifreq = type { %union.anon, %union.anon.0 }
%union.anon = type { [16 x i8] }
%union.anon.0 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }

@Hostinfo_MachineID.cachedHardwareID = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@Hostinfo_MachineID.cachedHostNameHash = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"%s Hostinfo_HostName failure; providing default.\0A\00", align 1
@__FUNCTION__.Hostinfo_MachineID = private unnamed_addr constant [19 x i8] c"Hostinfo_MachineID\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s ObtainHardwareID failure (%s); providing default.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s unexpected failure: %d.\0A\00", align 1
@__FUNCTION__.ObtainHardwareID = private unnamed_addr constant [17 x i8] c"ObtainHardwareID\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"eth%u\00", align 1

; Function Attrs: nounwind uwtable
define void @Hostinfo_MachineID(i32*, i64*) #0 !dbg !29 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !50, metadata !51), !dbg !52
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !53, metadata !51), !dbg !54
  call void @llvm.dbg.declare(metadata i64** %5, metadata !55, metadata !51), !dbg !56
  call void @llvm.dbg.declare(metadata i32** %6, metadata !57, metadata !51), !dbg !58
  %9 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @Hostinfo_MachineID.cachedHostNameHash), !dbg !59
  %10 = bitcast i8* %9 to i32*, !dbg !59
  store i32* %10, i32** %6, align 8, !dbg !60
  %11 = load i32*, i32** %6, align 8, !dbg !61
  %12 = icmp ne i32* %11, null, !dbg !61
  br i1 %12, label %37, label %13, !dbg !63

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %7, metadata !64, metadata !51), !dbg !66
  %14 = call i8* @UtilSafeMalloc0(i64 4), !dbg !67
  %15 = bitcast i8* %14 to i32*, !dbg !67
  store i32* %15, i32** %6, align 8, !dbg !68
  %16 = call i8* @Hostinfo_HostName(), !dbg !69
  store i8* %16, i8** %7, align 8, !dbg !70
  %17 = load i8*, i8** %7, align 8, !dbg !71
  %18 = icmp eq i8* %17, null, !dbg !73
  br i1 %18, label %19, label %21, !dbg !74

; <label>:19:                                     ; preds = %13
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_MachineID, i32 0, i32 0)), !dbg !75
  %20 = load i32*, i32** %6, align 8, !dbg !77
  store i32 0, i32* %20, align 4, !dbg !78
  br label %26, !dbg !79

; <label>:21:                                     ; preds = %13
  %22 = load i8*, i8** %7, align 8, !dbg !80
  %23 = call i32 @HostNameHash(i8* %22), !dbg !82
  %24 = load i32*, i32** %6, align 8, !dbg !83
  store i32 %23, i32* %24, align 4, !dbg !84
  %25 = load i8*, i8** %7, align 8, !dbg !85
  call void @free(i8* %25) #6, !dbg !86
  br label %26

; <label>:26:                                     ; preds = %21, %19
  %27 = load i32*, i32** %6, align 8, !dbg !87
  %28 = bitcast i32* %27 to i8*, !dbg !87
  %29 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* @Hostinfo_MachineID.cachedHostNameHash, i8* null, i8* %28), !dbg !89
  %30 = icmp ne i8* %29, null, !dbg !89
  br i1 %30, label %31, label %36, !dbg !90

; <label>:31:                                     ; preds = %26
  %32 = load i32*, i32** %6, align 8, !dbg !91
  %33 = bitcast i32* %32 to i8*, !dbg !91
  call void @free(i8* %33) #6, !dbg !93
  %34 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @Hostinfo_MachineID.cachedHostNameHash), !dbg !94
  %35 = bitcast i8* %34 to i32*, !dbg !94
  store i32* %35, i32** %6, align 8, !dbg !95
  br label %36, !dbg !96

; <label>:36:                                     ; preds = %31, %26
  br label %37, !dbg !97

; <label>:37:                                     ; preds = %36, %2
  %38 = load i32*, i32** %6, align 8, !dbg !98
  %39 = load i32, i32* %38, align 4, !dbg !99
  %40 = load i32*, i32** %3, align 8, !dbg !100
  store i32 %39, i32* %40, align 4, !dbg !101
  %41 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @Hostinfo_MachineID.cachedHardwareID), !dbg !102
  %42 = bitcast i8* %41 to i64*, !dbg !102
  store i64* %42, i64** %5, align 8, !dbg !103
  %43 = load i64*, i64** %5, align 8, !dbg !104
  %44 = icmp ne i64* %43, null, !dbg !104
  br i1 %44, label %67, label %45, !dbg !106

; <label>:45:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %8, metadata !107, metadata !51), !dbg !110
  %46 = call i8* @UtilSafeMalloc0(i64 8), !dbg !111
  %47 = bitcast i8* %46 to i64*, !dbg !111
  store i64* %47, i64** %5, align 8, !dbg !112
  %48 = load i64*, i64** %5, align 8, !dbg !113
  %49 = call i32 @ObtainHardwareID(i64* %48), !dbg !114
  store i32 %49, i32* %8, align 4, !dbg !115
  %50 = load i32, i32* %8, align 4, !dbg !116
  %51 = icmp ne i32 %50, 0, !dbg !118
  br i1 %51, label %52, label %56, !dbg !119

; <label>:52:                                     ; preds = %45
  %53 = load i32, i32* %8, align 4, !dbg !120
  %54 = call i8* @Err_Errno2String(i32 %53), !dbg !122
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_MachineID, i32 0, i32 0), i8* %54), !dbg !123
  %55 = load i64*, i64** %5, align 8, !dbg !124
  store i64 0, i64* %55, align 8, !dbg !125
  br label %56, !dbg !126

; <label>:56:                                     ; preds = %52, %45
  %57 = load i64*, i64** %5, align 8, !dbg !127
  %58 = bitcast i64* %57 to i8*, !dbg !127
  %59 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* @Hostinfo_MachineID.cachedHardwareID, i8* null, i8* %58), !dbg !129
  %60 = icmp ne i8* %59, null, !dbg !129
  br i1 %60, label %61, label %66, !dbg !130

; <label>:61:                                     ; preds = %56
  %62 = load i64*, i64** %5, align 8, !dbg !131
  %63 = bitcast i64* %62 to i8*, !dbg !131
  call void @free(i8* %63) #6, !dbg !133
  %64 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @Hostinfo_MachineID.cachedHardwareID), !dbg !134
  %65 = bitcast i8* %64 to i64*, !dbg !134
  store i64* %65, i64** %5, align 8, !dbg !135
  br label %66, !dbg !136

; <label>:66:                                     ; preds = %61, %56
  br label %67, !dbg !137

; <label>:67:                                     ; preds = %66, %37
  %68 = load i64*, i64** %5, align 8, !dbg !138
  %69 = load i64, i64* %68, align 8, !dbg !139
  %70 = load i64*, i64** %4, align 8, !dbg !140
  store i64 %69, i64* %70, align 8, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !143 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !148, metadata !51), !dbg !149
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !150
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !151
  %5 = inttoptr i64 %4 to i8*, !dbg !152
  ret i8* %5, !dbg !153
}

declare i8* @UtilSafeMalloc0(i64) #3

declare i8* @Hostinfo_HostName() #3

declare void @Warning(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @HostNameHash(i8*) #0 !dbg !154 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !157, metadata !51), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %3, metadata !159, metadata !51), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %4, metadata !161, metadata !51), !dbg !162
  store i32 5381, i32* %4, align 4, !dbg !162
  br label %5, !dbg !163

; <label>:5:                                      ; preds = %11, %1
  %6 = load i8*, i8** %2, align 8, !dbg !164
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !164
  store i8* %7, i8** %2, align 8, !dbg !164
  %8 = load i8, i8* %6, align 1, !dbg !166
  %9 = zext i8 %8 to i32, !dbg !166
  store i32 %9, i32* %3, align 4, !dbg !167
  %10 = icmp ne i32 %9, 0, !dbg !168
  br i1 %10, label %11, label %18, !dbg !169

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %4, align 4, !dbg !170
  %13 = shl i32 %12, 5, !dbg !172
  %14 = load i32, i32* %4, align 4, !dbg !173
  %15 = add i32 %13, %14, !dbg !174
  %16 = load i32, i32* %3, align 4, !dbg !175
  %17 = add i32 %15, %16, !dbg !176
  store i32 %17, i32* %4, align 4, !dbg !177
  br label %5, !dbg !178, !llvm.loop !180

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %4, align 4, !dbg !181
  ret i32 %19, !dbg !182
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !183 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !189, metadata !51), !dbg !190
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !191, metadata !51), !dbg !192
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !193, metadata !51), !dbg !194
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !195
  %8 = load i8*, i8** %5, align 8, !dbg !196
  %9 = ptrtoint i8* %8 to i64, !dbg !197
  %10 = load i8*, i8** %6, align 8, !dbg !198
  %11 = ptrtoint i8* %10 to i64, !dbg !199
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !200
  %13 = inttoptr i64 %12 to i8*, !dbg !201
  ret i8* %13, !dbg !202
}

; Function Attrs: nounwind uwtable
define internal i32 @ObtainHardwareID(i64*) #0 !dbg !203 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !206, metadata !51), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %4, metadata !208, metadata !51), !dbg !209
  store i32 0, i32* %4, align 4, !dbg !210
  br label %6, !dbg !212

; <label>:6:                                      ; preds = %25, %1
  %7 = load i32, i32* %4, align 4, !dbg !213
  %8 = icmp ult i32 %7, 8, !dbg !216
  br i1 %8, label %9, label %28, !dbg !217

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %5, metadata !218, metadata !51), !dbg !220
  %10 = load i32, i32* %4, align 4, !dbg !221
  %11 = load i64*, i64** %3, align 8, !dbg !222
  %12 = bitcast i64* %11 to i8*, !dbg !223
  %13 = call i32 @CheckEthernet(i32 %10, i8* %12), !dbg !224
  store i32 %13, i32* %5, align 4, !dbg !225
  %14 = load i32, i32* %5, align 4, !dbg !226
  %15 = icmp eq i32 %14, 0, !dbg !228
  br i1 %15, label %16, label %17, !dbg !229

; <label>:16:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !230
  br label %30, !dbg !230

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %5, align 4, !dbg !232
  %19 = icmp ne i32 %18, 19, !dbg !235
  br i1 %19, label %20, label %23, !dbg !236

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %5, align 4, !dbg !237
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.ObtainHardwareID, i32 0, i32 0), i32 %21), !dbg !239
  %22 = load i32, i32* %5, align 4, !dbg !240
  store i32 %22, i32* %2, align 4, !dbg !241
  br label %30, !dbg !241

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !242

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %4, align 4, !dbg !243
  %27 = add i32 %26, 1, !dbg !243
  store i32 %27, i32* %4, align 4, !dbg !243
  br label %6, !dbg !245, !llvm.loop !246

; <label>:28:                                     ; preds = %6
  %29 = load i64*, i64** %3, align 8, !dbg !248
  store i64 0, i64* %29, align 8, !dbg !249
  store i32 0, i32* %2, align 4, !dbg !250
  br label %30, !dbg !250

; <label>:30:                                     ; preds = %28, %20, %16
  %31 = load i32, i32* %2, align 4, !dbg !251
  ret i32 %31, !dbg !251
}

declare i8* @Err_Errno2String(i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !252 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !257, metadata !51), !dbg !258
  call void @llvm.dbg.declare(metadata i64* %3, metadata !259, metadata !51), !dbg !260
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !261
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !262
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #6, !dbg !263, !srcloc !264
  store i64 %6, i64* %3, align 8, !dbg !263
  %7 = load i64, i64* %3, align 8, !dbg !265
  ret i64 %7, !dbg !266
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !267 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !271, metadata !51), !dbg !272
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !273, metadata !51), !dbg !274
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !275, metadata !51), !dbg !276
  call void @llvm.dbg.declare(metadata i64* %7, metadata !277, metadata !51), !dbg !278
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !279
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !280
  %10 = load i64, i64* %6, align 8, !dbg !281
  %11 = load i64, i64* %5, align 8, !dbg !282
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #6, !dbg !283, !srcloc !284
  store i64 %12, i64* %7, align 8, !dbg !283
  %13 = load i64, i64* %7, align 8, !dbg !285
  ret i64 %13, !dbg !286
}

; Function Attrs: nounwind uwtable
define internal i32 @CheckEthernet(i32, i8*) #0 !dbg !287 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !290, metadata !51), !dbg !291
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !292, metadata !51), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %6, metadata !294, metadata !51), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %7, metadata !296, metadata !51), !dbg !297
  call void @llvm.dbg.declare(metadata %struct.ifreq* %8, metadata !298, metadata !51), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %9, metadata !347, metadata !51), !dbg !348
  %10 = call i32 @socket(i32 2, i32 2, i32 0) #6, !dbg !349
  store i32 %10, i32* %6, align 4, !dbg !350
  %11 = load i32, i32* %6, align 4, !dbg !351
  %12 = icmp eq i32 %11, -1, !dbg !353
  br i1 %12, label %13, label %16, !dbg !354

; <label>:13:                                     ; preds = %2
  %14 = call i32* @__errno_location() #1, !dbg !355
  %15 = load i32, i32* %14, align 4, !dbg !357
  store i32 %15, i32* %3, align 4, !dbg !358
  br label %97, !dbg !358

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0, !dbg !359
  %18 = bitcast %union.anon* %17 to [16 x i8]*, !dbg !360
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i32 0, i32 0, !dbg !361
  %20 = load i32, i32* %4, align 4, !dbg !362
  %21 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %19, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %20), !dbg !363
  %22 = load i32, i32* %6, align 4, !dbg !364
  %23 = call i32 (i32, i64, ...) @ioctl(i32 %22, i64 35111, %struct.ifreq* %8) #6, !dbg !365
  store i32 %23, i32* %7, align 4, !dbg !366
  %24 = call i32* @__errno_location() #1, !dbg !367
  %25 = load i32, i32* %24, align 4, !dbg !368
  store i32 %25, i32* %9, align 4, !dbg !369
  %26 = load i32, i32* %6, align 4, !dbg !370
  %27 = call i32 @close(i32 %26), !dbg !371
  %28 = load i32, i32* %7, align 4, !dbg !372
  %29 = icmp eq i32 %28, -1, !dbg !374
  br i1 %29, label %30, label %32, !dbg !375

; <label>:30:                                     ; preds = %16
  %31 = load i32, i32* %9, align 4, !dbg !376
  store i32 %31, i32* %3, align 4, !dbg !378
  br label %97, !dbg !378

; <label>:32:                                     ; preds = %16
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1, !dbg !379
  %34 = bitcast %union.anon.0* %33 to %struct.sockaddr*, !dbg !380
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 1, !dbg !381
  %36 = getelementptr inbounds [14 x i8], [14 x i8]* %35, i64 0, i64 0, !dbg !382
  %37 = load i8, i8* %36, align 2, !dbg !382
  %38 = sext i8 %37 to i32, !dbg !382
  %39 = and i32 %38, 255, !dbg !383
  %40 = trunc i32 %39 to i8, !dbg !382
  %41 = load i8*, i8** %5, align 8, !dbg !384
  %42 = getelementptr inbounds i8, i8* %41, i64 0, !dbg !384
  store i8 %40, i8* %42, align 1, !dbg !385
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1, !dbg !386
  %44 = bitcast %union.anon.0* %43 to %struct.sockaddr*, !dbg !387
  %45 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %44, i32 0, i32 1, !dbg !388
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %45, i64 0, i64 1, !dbg !389
  %47 = load i8, i8* %46, align 1, !dbg !389
  %48 = sext i8 %47 to i32, !dbg !389
  %49 = and i32 %48, 255, !dbg !390
  %50 = trunc i32 %49 to i8, !dbg !389
  %51 = load i8*, i8** %5, align 8, !dbg !391
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !391
  store i8 %50, i8* %52, align 1, !dbg !392
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1, !dbg !393
  %54 = bitcast %union.anon.0* %53 to %struct.sockaddr*, !dbg !394
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 1, !dbg !395
  %56 = getelementptr inbounds [14 x i8], [14 x i8]* %55, i64 0, i64 2, !dbg !396
  %57 = load i8, i8* %56, align 2, !dbg !396
  %58 = sext i8 %57 to i32, !dbg !396
  %59 = and i32 %58, 255, !dbg !397
  %60 = trunc i32 %59 to i8, !dbg !396
  %61 = load i8*, i8** %5, align 8, !dbg !398
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !398
  store i8 %60, i8* %62, align 1, !dbg !399
  %63 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1, !dbg !400
  %64 = bitcast %union.anon.0* %63 to %struct.sockaddr*, !dbg !401
  %65 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %64, i32 0, i32 1, !dbg !402
  %66 = getelementptr inbounds [14 x i8], [14 x i8]* %65, i64 0, i64 3, !dbg !403
  %67 = load i8, i8* %66, align 1, !dbg !403
  %68 = sext i8 %67 to i32, !dbg !403
  %69 = and i32 %68, 255, !dbg !404
  %70 = trunc i32 %69 to i8, !dbg !403
  %71 = load i8*, i8** %5, align 8, !dbg !405
  %72 = getelementptr inbounds i8, i8* %71, i64 3, !dbg !405
  store i8 %70, i8* %72, align 1, !dbg !406
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1, !dbg !407
  %74 = bitcast %union.anon.0* %73 to %struct.sockaddr*, !dbg !408
  %75 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %74, i32 0, i32 1, !dbg !409
  %76 = getelementptr inbounds [14 x i8], [14 x i8]* %75, i64 0, i64 4, !dbg !410
  %77 = load i8, i8* %76, align 2, !dbg !410
  %78 = sext i8 %77 to i32, !dbg !410
  %79 = and i32 %78, 255, !dbg !411
  %80 = trunc i32 %79 to i8, !dbg !410
  %81 = load i8*, i8** %5, align 8, !dbg !412
  %82 = getelementptr inbounds i8, i8* %81, i64 4, !dbg !412
  store i8 %80, i8* %82, align 1, !dbg !413
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1, !dbg !414
  %84 = bitcast %union.anon.0* %83 to %struct.sockaddr*, !dbg !415
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 1, !dbg !416
  %86 = getelementptr inbounds [14 x i8], [14 x i8]* %85, i64 0, i64 5, !dbg !417
  %87 = load i8, i8* %86, align 1, !dbg !417
  %88 = sext i8 %87 to i32, !dbg !417
  %89 = and i32 %88, 255, !dbg !418
  %90 = trunc i32 %89 to i8, !dbg !417
  %91 = load i8*, i8** %5, align 8, !dbg !419
  %92 = getelementptr inbounds i8, i8* %91, i64 5, !dbg !419
  store i8 %90, i8* %92, align 1, !dbg !420
  %93 = load i8*, i8** %5, align 8, !dbg !421
  %94 = getelementptr inbounds i8, i8* %93, i64 6, !dbg !421
  store i8 0, i8* %94, align 1, !dbg !422
  %95 = load i8*, i8** %5, align 8, !dbg !423
  %96 = getelementptr inbounds i8, i8* %95, i64 7, !dbg !423
  store i8 0, i8* %96, align 1, !dbg !424
  store i32 0, i32* %3, align 4, !dbg !425
  br label %97, !dbg !425

; <label>:97:                                     ; preds = %32, %30, %13
  %98 = load i32, i32* %3, align 4, !dbg !426
  ret i32 %98, !dbg !426
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i32 @close(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !27)
!1 = !DIFile(filename: "machineID.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!7 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!8 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!9 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!10 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!11 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!12 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!13 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!14 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!15 = !{!16, !18, !19, !21, !24}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !22, line: 122, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !25, line: 171, baseType: !26)
!25 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 55, baseType: !23)
!27 = !{!28, !46}
!28 = distinct !DIGlobalVariable(name: "cachedHardwareID", scope: !29, file: !30, line: 571, type: !39, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @Hostinfo_MachineID.cachedHardwareID)
!29 = distinct !DISubprogram(name: "Hostinfo_MachineID", scope: !30, file: !30, line: 568, type: !31, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!30 = !DIFile(filename: "machineID.c", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !37}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 173, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 51, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!38 = !{}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !40, line: 3829, baseType: !41)
!40 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !40, line: 139, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !40, line: 137, size: 64, align: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !42, file: !40, line: 138, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!46 = distinct !DIGlobalVariable(name: "cachedHostNameHash", scope: !29, file: !30, line: 572, type: !39, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @Hostinfo_MachineID.cachedHostNameHash)
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!50 = !DILocalVariable(name: "hostNameHash", arg: 1, scope: !29, file: !30, line: 568, type: !33)
!51 = !DIExpression()
!52 = !DILocation(line: 568, column: 28, scope: !29)
!53 = !DILocalVariable(name: "hostHardwareID", arg: 2, scope: !29, file: !30, line: 569, type: !37)
!54 = !DILocation(line: 569, column: 28, scope: !29)
!55 = !DILocalVariable(name: "tmpHardwareID", scope: !29, file: !30, line: 573, type: !37)
!56 = !DILocation(line: 573, column: 12, scope: !29)
!57 = !DILocalVariable(name: "tmpNameHash", scope: !29, file: !30, line: 574, type: !33)
!58 = !DILocation(line: 574, column: 12, scope: !29)
!59 = !DILocation(line: 579, column: 18, scope: !29)
!60 = !DILocation(line: 579, column: 16, scope: !29)
!61 = !DILocation(line: 580, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !29, file: !30, line: 580, column: 8)
!63 = !DILocation(line: 580, column: 8, scope: !29)
!64 = !DILocalVariable(name: "hostName", scope: !65, file: !30, line: 581, type: !16)
!65 = distinct !DILexicalBlock(scope: !62, file: !30, line: 580, column: 22)
!66 = !DILocation(line: 581, column: 13, scope: !65)
!67 = !DILocation(line: 583, column: 21, scope: !65)
!68 = !DILocation(line: 583, column: 19, scope: !65)
!69 = !DILocation(line: 586, column: 27, scope: !65)
!70 = !DILocation(line: 586, column: 16, scope: !65)
!71 = !DILocation(line: 588, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !30, line: 588, column: 11)
!73 = !DILocation(line: 588, column: 20, scope: !72)
!74 = !DILocation(line: 588, column: 11, scope: !65)
!75 = !DILocation(line: 589, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !30, line: 588, column: 28)
!77 = !DILocation(line: 592, column: 11, scope: !76)
!78 = !DILocation(line: 592, column: 23, scope: !76)
!79 = !DILocation(line: 593, column: 7, scope: !76)
!80 = !DILocation(line: 594, column: 56, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !30, line: 593, column: 14)
!82 = !DILocation(line: 594, column: 25, scope: !81)
!83 = !DILocation(line: 594, column: 11, scope: !81)
!84 = !DILocation(line: 594, column: 23, scope: !81)
!85 = !DILocation(line: 595, column: 15, scope: !81)
!86 = !DILocation(line: 595, column: 10, scope: !81)
!87 = !DILocation(line: 599, column: 38, scope: !88)
!88 = distinct !DILexicalBlock(scope: !65, file: !30, line: 598, column: 11)
!89 = !DILocation(line: 598, column: 11, scope: !88)
!90 = !DILocation(line: 598, column: 11, scope: !65)
!91 = !DILocation(line: 600, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !30, line: 599, column: 52)
!93 = !DILocation(line: 600, column: 10, scope: !92)
!94 = !DILocation(line: 601, column: 24, scope: !92)
!95 = !DILocation(line: 601, column: 22, scope: !92)
!96 = !DILocation(line: 602, column: 7, scope: !92)
!97 = !DILocation(line: 603, column: 4, scope: !65)
!98 = !DILocation(line: 604, column: 21, scope: !29)
!99 = !DILocation(line: 604, column: 20, scope: !29)
!100 = !DILocation(line: 604, column: 5, scope: !29)
!101 = !DILocation(line: 604, column: 18, scope: !29)
!102 = !DILocation(line: 606, column: 20, scope: !29)
!103 = !DILocation(line: 606, column: 18, scope: !29)
!104 = !DILocation(line: 607, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !29, file: !30, line: 607, column: 8)
!106 = !DILocation(line: 607, column: 8, scope: !29)
!107 = !DILocalVariable(name: "erc", scope: !108, file: !30, line: 608, type: !109)
!108 = distinct !DILexicalBlock(scope: !105, file: !30, line: 607, column: 24)
!109 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!110 = !DILocation(line: 608, column: 11, scope: !108)
!111 = !DILocation(line: 610, column: 23, scope: !108)
!112 = !DILocation(line: 610, column: 21, scope: !108)
!113 = !DILocation(line: 613, column: 30, scope: !108)
!114 = !DILocation(line: 613, column: 13, scope: !108)
!115 = !DILocation(line: 613, column: 11, scope: !108)
!116 = !DILocation(line: 614, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !30, line: 614, column: 11)
!118 = !DILocation(line: 614, column: 15, scope: !117)
!119 = !DILocation(line: 614, column: 11, scope: !108)
!120 = !DILocation(line: 616, column: 49, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !30, line: 614, column: 21)
!122 = !DILocation(line: 616, column: 32, scope: !121)
!123 = !DILocation(line: 615, column: 10, scope: !121)
!124 = !DILocation(line: 618, column: 11, scope: !121)
!125 = !DILocation(line: 618, column: 25, scope: !121)
!126 = !DILocation(line: 619, column: 7, scope: !121)
!127 = !DILocation(line: 622, column: 38, scope: !128)
!128 = distinct !DILexicalBlock(scope: !108, file: !30, line: 621, column: 11)
!129 = !DILocation(line: 621, column: 11, scope: !128)
!130 = !DILocation(line: 621, column: 11, scope: !108)
!131 = !DILocation(line: 623, column: 15, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !30, line: 622, column: 54)
!133 = !DILocation(line: 623, column: 10, scope: !132)
!134 = !DILocation(line: 624, column: 26, scope: !132)
!135 = !DILocation(line: 624, column: 24, scope: !132)
!136 = !DILocation(line: 625, column: 7, scope: !132)
!137 = !DILocation(line: 626, column: 4, scope: !108)
!138 = !DILocation(line: 627, column: 23, scope: !29)
!139 = !DILocation(line: 627, column: 22, scope: !29)
!140 = !DILocation(line: 627, column: 5, scope: !29)
!141 = !DILocation(line: 627, column: 20, scope: !29)
!142 = !DILocation(line: 628, column: 1, scope: !29)
!143 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !40, file: !40, line: 3829, type: !144, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!144 = !DISubroutineType(types: !145)
!145 = !{!18, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!148 = !DILocalVariable(name: "var", arg: 1, scope: !143, file: !40, line: 3829, type: !146)
!149 = !DILocation(line: 3829, column: 368, scope: !143)
!150 = !DILocation(line: 3829, column: 415, scope: !143)
!151 = !DILocation(line: 3829, column: 401, scope: !143)
!152 = !DILocation(line: 3829, column: 382, scope: !143)
!153 = !DILocation(line: 3829, column: 375, scope: !143)
!154 = distinct !DISubprogram(name: "HostNameHash", scope: !30, file: !30, line: 523, type: !155, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!155 = !DISubroutineType(types: !156)
!156 = !{!34, !19}
!157 = !DILocalVariable(name: "str", arg: 1, scope: !154, file: !30, line: 523, type: !19)
!158 = !DILocation(line: 523, column: 29, scope: !154)
!159 = !DILocalVariable(name: "c", scope: !154, file: !30, line: 525, type: !34)
!160 = !DILocation(line: 525, column: 11, scope: !154)
!161 = !DILocalVariable(name: "hash", scope: !154, file: !30, line: 527, type: !34)
!162 = !DILocation(line: 527, column: 11, scope: !154)
!163 = !DILocation(line: 529, column: 4, scope: !154)
!164 = !DILocation(line: 529, column: 20, scope: !165)
!165 = !DILexicalBlockFile(scope: !154, file: !30, discriminator: 1)
!166 = !DILocation(line: 529, column: 16, scope: !165)
!167 = !DILocation(line: 529, column: 14, scope: !165)
!168 = !DILocation(line: 529, column: 24, scope: !165)
!169 = !DILocation(line: 529, column: 4, scope: !165)
!170 = !DILocation(line: 530, column: 16, scope: !171)
!171 = distinct !DILexicalBlock(scope: !154, file: !30, line: 529, column: 33)
!172 = !DILocation(line: 530, column: 21, scope: !171)
!173 = !DILocation(line: 530, column: 29, scope: !171)
!174 = !DILocation(line: 530, column: 27, scope: !171)
!175 = !DILocation(line: 530, column: 37, scope: !171)
!176 = !DILocation(line: 530, column: 35, scope: !171)
!177 = !DILocation(line: 530, column: 12, scope: !171)
!178 = !DILocation(line: 529, column: 4, scope: !179)
!179 = !DILexicalBlockFile(scope: !154, file: !30, discriminator: 2)
!180 = distinct !{!180, !163}
!181 = !DILocation(line: 533, column: 11, scope: !154)
!182 = !DILocation(line: 533, column: 4, scope: !154)
!183 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !40, file: !40, line: 3829, type: !184, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!184 = !DISubroutineType(types: !185)
!185 = !{!18, !186, !187, !187}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!189 = !DILocalVariable(name: "var", arg: 1, scope: !183, file: !40, line: 3829, type: !186)
!190 = !DILocation(line: 3829, column: 757, scope: !183)
!191 = !DILocalVariable(name: "oldVal", arg: 2, scope: !183, file: !40, line: 3829, type: !187)
!192 = !DILocation(line: 3829, column: 775, scope: !183)
!193 = !DILocalVariable(name: "newVal", arg: 3, scope: !183, file: !40, line: 3829, type: !187)
!194 = !DILocation(line: 3829, column: 796, scope: !183)
!195 = !DILocation(line: 3829, column: 858, scope: !183)
!196 = !DILocation(line: 3829, column: 882, scope: !183)
!197 = !DILocation(line: 3829, column: 871, scope: !183)
!198 = !DILocation(line: 3829, column: 909, scope: !183)
!199 = !DILocation(line: 3829, column: 898, scope: !183)
!200 = !DILocation(line: 3829, column: 832, scope: !183)
!201 = !DILocation(line: 3829, column: 813, scope: !183)
!202 = !DILocation(line: 3829, column: 806, scope: !183)
!203 = distinct !DISubprogram(name: "ObtainHardwareID", scope: !30, file: !30, line: 446, type: !204, isLocal: true, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!204 = !DISubroutineType(types: !205)
!205 = !{!109, !37}
!206 = !DILocalVariable(name: "hardwareID", arg: 1, scope: !203, file: !30, line: 446, type: !37)
!207 = !DILocation(line: 446, column: 26, scope: !203)
!208 = !DILocalVariable(name: "i", scope: !203, file: !30, line: 448, type: !34)
!209 = !DILocation(line: 448, column: 11, scope: !203)
!210 = !DILocation(line: 451, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !30, line: 451, column: 4)
!212 = !DILocation(line: 451, column: 9, scope: !211)
!213 = !DILocation(line: 451, column: 16, scope: !214)
!214 = !DILexicalBlockFile(scope: !215, file: !30, discriminator: 1)
!215 = distinct !DILexicalBlock(scope: !211, file: !30, line: 451, column: 4)
!216 = !DILocation(line: 451, column: 18, scope: !214)
!217 = !DILocation(line: 451, column: 4, scope: !214)
!218 = !DILocalVariable(name: "erc", scope: !219, file: !30, line: 452, type: !109)
!219 = distinct !DILexicalBlock(scope: !215, file: !30, line: 451, column: 28)
!220 = !DILocation(line: 452, column: 11, scope: !219)
!221 = !DILocation(line: 454, column: 27, scope: !219)
!222 = !DILocation(line: 454, column: 39, scope: !219)
!223 = !DILocation(line: 454, column: 30, scope: !219)
!224 = !DILocation(line: 454, column: 13, scope: !219)
!225 = !DILocation(line: 454, column: 11, scope: !219)
!226 = !DILocation(line: 456, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !30, line: 456, column: 11)
!228 = !DILocation(line: 456, column: 15, scope: !227)
!229 = !DILocation(line: 456, column: 11, scope: !219)
!230 = !DILocation(line: 457, column: 10, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !30, line: 456, column: 21)
!232 = !DILocation(line: 459, column: 14, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !30, line: 459, column: 14)
!234 = distinct !DILexicalBlock(scope: !227, file: !30, line: 458, column: 14)
!235 = !DILocation(line: 459, column: 18, scope: !233)
!236 = !DILocation(line: 459, column: 14, scope: !234)
!237 = !DILocation(line: 460, column: 67, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !30, line: 459, column: 28)
!239 = !DILocation(line: 460, column: 13, scope: !238)
!240 = !DILocation(line: 461, column: 20, scope: !238)
!241 = !DILocation(line: 461, column: 13, scope: !238)
!242 = !DILocation(line: 464, column: 4, scope: !219)
!243 = !DILocation(line: 451, column: 24, scope: !244)
!244 = !DILexicalBlockFile(scope: !215, file: !30, discriminator: 2)
!245 = !DILocation(line: 451, column: 4, scope: !244)
!246 = distinct !{!246, !247}
!247 = !DILocation(line: 451, column: 4, scope: !203)
!248 = !DILocation(line: 466, column: 5, scope: !203)
!249 = !DILocation(line: 466, column: 16, scope: !203)
!250 = !DILocation(line: 468, column: 4, scope: !203)
!251 = !DILocation(line: 469, column: 1, scope: !203)
!252 = distinct !DISubprogram(name: "Atomic_Read64", scope: !40, file: !40, line: 2143, type: !253, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!253 = !DISubroutineType(types: !254)
!254 = !{!24, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!257 = !DILocalVariable(name: "var", arg: 1, scope: !252, file: !40, line: 2143, type: !255)
!258 = !DILocation(line: 2143, column: 36, scope: !252)
!259 = !DILocalVariable(name: "value", scope: !252, file: !40, line: 2146, type: !24)
!260 = !DILocation(line: 2146, column: 11, scope: !252)
!261 = !DILocation(line: 2160, column: 14, scope: !252)
!262 = !DILocation(line: 2160, column: 19, scope: !252)
!263 = !DILocation(line: 2157, column: 4, scope: !252)
!264 = !{i32 465958}
!265 = !DILocation(line: 2213, column: 11, scope: !252)
!266 = !DILocation(line: 2213, column: 4, scope: !252)
!267 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !40, file: !40, line: 1190, type: !268, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!268 = !DISubroutineType(types: !269)
!269 = !{!24, !270, !24, !24}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!271 = !DILocalVariable(name: "var", arg: 1, scope: !267, file: !40, line: 1190, type: !270)
!272 = !DILocation(line: 1190, column: 42, scope: !267)
!273 = !DILocalVariable(name: "oldVal", arg: 2, scope: !267, file: !40, line: 1191, type: !24)
!274 = !DILocation(line: 1191, column: 34, scope: !267)
!275 = !DILocalVariable(name: "newVal", arg: 3, scope: !267, file: !40, line: 1192, type: !24)
!276 = !DILocation(line: 1192, column: 34, scope: !267)
!277 = !DILocalVariable(name: "val", scope: !267, file: !40, line: 1240, type: !24)
!278 = !DILocation(line: 1240, column: 11, scope: !267)
!279 = !DILocation(line: 1246, column: 15, scope: !267)
!280 = !DILocation(line: 1246, column: 20, scope: !267)
!281 = !DILocation(line: 1247, column: 14, scope: !267)
!282 = !DILocation(line: 1248, column: 14, scope: !267)
!283 = !DILocation(line: 1243, column: 4, scope: !267)
!284 = !{i32 458400}
!285 = !DILocation(line: 1251, column: 11, scope: !267)
!286 = !DILocation(line: 1251, column: 4, scope: !267)
!287 = distinct !DISubprogram(name: "CheckEthernet", scope: !30, file: !30, line: 380, type: !288, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!288 = !DISubroutineType(types: !289)
!289 = !{!109, !34, !16}
!290 = !DILocalVariable(name: "n", arg: 1, scope: !287, file: !30, line: 380, type: !34)
!291 = !DILocation(line: 380, column: 22, scope: !287)
!292 = !DILocalVariable(name: "machineID", arg: 2, scope: !287, file: !30, line: 381, type: !16)
!293 = !DILocation(line: 381, column: 21, scope: !287)
!294 = !DILocalVariable(name: "fd", scope: !287, file: !30, line: 383, type: !109)
!295 = !DILocation(line: 383, column: 8, scope: !287)
!296 = !DILocalVariable(name: "erc", scope: !287, file: !30, line: 384, type: !109)
!297 = !DILocation(line: 384, column: 8, scope: !287)
!298 = !DILocalVariable(name: "ifreq", scope: !287, file: !30, line: 385, type: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !300, line: 126, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!301 = !{!302, !309}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !299, file: !300, line: 133, baseType: !303, size: 128, align: 8)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !300, line: 130, size: 128, align: 8, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !303, file: !300, line: 132, baseType: !306, size: 128, align: 8)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !299, file: !300, line: 149, baseType: !310, size: 192, align: 64, offset: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !300, line: 135, size: 192, align: 64, elements: !311)
!311 = !{!312, !324, !325, !326, !327, !328, !330, !331, !332, !341, !342, !343}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !310, file: !300, line: 137, baseType: !313, size: 128, align: 16)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !314, line: 153, size: 128, align: 16, elements: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!315 = !{!316, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !313, file: !314, line: 155, baseType: !317, size: 16, align: 16)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !318, line: 28, baseType: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!319 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !313, file: !314, line: 156, baseType: !321, size: 112, align: 8, offset: 16)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 112, align: 8, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 14)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !310, file: !300, line: 138, baseType: !313, size: 128, align: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !310, file: !300, line: 139, baseType: !313, size: 128, align: 16)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !310, file: !300, line: 140, baseType: !313, size: 128, align: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !310, file: !300, line: 141, baseType: !313, size: 128, align: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !310, file: !300, line: 142, baseType: !329, size: 16, align: 16)
!329 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !310, file: !300, line: 143, baseType: !109, size: 32, align: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !310, file: !300, line: 144, baseType: !109, size: 32, align: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !310, file: !300, line: 145, baseType: !333, size: 192, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !300, line: 111, size: 192, align: 64, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !333, file: !300, line: 113, baseType: !23, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !333, file: !300, line: 114, baseType: !23, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !333, file: !300, line: 115, baseType: !319, size: 16, align: 16, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !333, file: !300, line: 116, baseType: !20, size: 8, align: 8, offset: 144)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !333, file: !300, line: 117, baseType: !20, size: 8, align: 8, offset: 152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !333, file: !300, line: 118, baseType: !20, size: 8, align: 8, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !310, file: !300, line: 146, baseType: !306, size: 128, align: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !310, file: !300, line: 147, baseType: !306, size: 128, align: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !310, file: !300, line: 148, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !345, line: 183, baseType: !16)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line645")
!346 = !DILocation(line: 385, column: 17, scope: !287)
!347 = !DILocalVariable(name: "saveErrno", scope: !287, file: !30, line: 386, type: !109)
!348 = !DILocation(line: 386, column: 8, scope: !287)
!349 = !DILocation(line: 388, column: 9, scope: !287)
!350 = !DILocation(line: 388, column: 7, scope: !287)
!351 = !DILocation(line: 390, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !287, file: !30, line: 390, column: 8)
!353 = !DILocation(line: 390, column: 11, scope: !352)
!354 = !DILocation(line: 390, column: 8, scope: !287)
!355 = !DILocation(line: 391, column: 15, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !30, line: 390, column: 18)
!357 = !DILocation(line: 391, column: 14, scope: !356)
!358 = !DILocation(line: 391, column: 7, scope: !356)
!359 = !DILocation(line: 395, column: 21, scope: !287)
!360 = !DILocation(line: 395, column: 30, scope: !287)
!361 = !DILocation(line: 395, column: 16, scope: !287)
!362 = !DILocation(line: 395, column: 50, scope: !287)
!363 = !DILocation(line: 395, column: 4, scope: !287)
!364 = !DILocation(line: 397, column: 16, scope: !287)
!365 = !DILocation(line: 397, column: 10, scope: !287)
!366 = !DILocation(line: 397, column: 8, scope: !287)
!367 = !DILocation(line: 398, column: 17, scope: !287)
!368 = !DILocation(line: 398, column: 16, scope: !287)
!369 = !DILocation(line: 398, column: 14, scope: !287)
!370 = !DILocation(line: 400, column: 10, scope: !287)
!371 = !DILocation(line: 400, column: 4, scope: !287)
!372 = !DILocation(line: 402, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !287, file: !30, line: 402, column: 8)
!374 = !DILocation(line: 402, column: 12, scope: !373)
!375 = !DILocation(line: 402, column: 8, scope: !287)
!376 = !DILocation(line: 403, column: 14, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !30, line: 402, column: 19)
!378 = !DILocation(line: 403, column: 7, scope: !377)
!379 = !DILocation(line: 406, column: 24, scope: !287)
!380 = !DILocation(line: 406, column: 33, scope: !287)
!381 = !DILocation(line: 406, column: 35, scope: !287)
!382 = !DILocation(line: 406, column: 19, scope: !287)
!383 = !DILocation(line: 406, column: 46, scope: !287)
!384 = !DILocation(line: 406, column: 4, scope: !287)
!385 = !DILocation(line: 406, column: 17, scope: !287)
!386 = !DILocation(line: 407, column: 24, scope: !287)
!387 = !DILocation(line: 407, column: 33, scope: !287)
!388 = !DILocation(line: 407, column: 35, scope: !287)
!389 = !DILocation(line: 407, column: 19, scope: !287)
!390 = !DILocation(line: 407, column: 46, scope: !287)
!391 = !DILocation(line: 407, column: 4, scope: !287)
!392 = !DILocation(line: 407, column: 17, scope: !287)
!393 = !DILocation(line: 408, column: 24, scope: !287)
!394 = !DILocation(line: 408, column: 33, scope: !287)
!395 = !DILocation(line: 408, column: 35, scope: !287)
!396 = !DILocation(line: 408, column: 19, scope: !287)
!397 = !DILocation(line: 408, column: 46, scope: !287)
!398 = !DILocation(line: 408, column: 4, scope: !287)
!399 = !DILocation(line: 408, column: 17, scope: !287)
!400 = !DILocation(line: 409, column: 24, scope: !287)
!401 = !DILocation(line: 409, column: 33, scope: !287)
!402 = !DILocation(line: 409, column: 35, scope: !287)
!403 = !DILocation(line: 409, column: 19, scope: !287)
!404 = !DILocation(line: 409, column: 46, scope: !287)
!405 = !DILocation(line: 409, column: 4, scope: !287)
!406 = !DILocation(line: 409, column: 17, scope: !287)
!407 = !DILocation(line: 410, column: 24, scope: !287)
!408 = !DILocation(line: 410, column: 33, scope: !287)
!409 = !DILocation(line: 410, column: 35, scope: !287)
!410 = !DILocation(line: 410, column: 19, scope: !287)
!411 = !DILocation(line: 410, column: 46, scope: !287)
!412 = !DILocation(line: 410, column: 4, scope: !287)
!413 = !DILocation(line: 410, column: 17, scope: !287)
!414 = !DILocation(line: 411, column: 24, scope: !287)
!415 = !DILocation(line: 411, column: 33, scope: !287)
!416 = !DILocation(line: 411, column: 35, scope: !287)
!417 = !DILocation(line: 411, column: 19, scope: !287)
!418 = !DILocation(line: 411, column: 46, scope: !287)
!419 = !DILocation(line: 411, column: 4, scope: !287)
!420 = !DILocation(line: 411, column: 17, scope: !287)
!421 = !DILocation(line: 412, column: 4, scope: !287)
!422 = !DILocation(line: 412, column: 17, scope: !287)
!423 = !DILocation(line: 413, column: 4, scope: !287)
!424 = !DILocation(line: 413, column: 17, scope: !287)
!425 = !DILocation(line: 415, column: 4, scope: !287)
!426 = !DILocation(line: 416, column: 1, scope: !287)
