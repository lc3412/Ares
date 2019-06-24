; ModuleID = './libSyncDriver_la-syncDriverLinux.o.i'
source_filename = "./libSyncDriver_la-syncDriverLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.SyncHandle = type { i32 (%struct.SyncHandle*)*, void (%struct.SyncHandle*)*, void (%struct.SyncHandle*, i8**, i8*)* }
%struct.DynBuf = type { i8*, i64, i64 }
%struct.LinuxDriver = type { %struct.SyncHandle, i64, i32* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"SyncDriver: Freezing using Linux ioctls...\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"syncDriverLinux.c\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SyncDriver: opening path '%s'.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SyncDriver: cannot find the directory '%s'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"SyncDriver: cannot access mounted directory '%s'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"SyncDriver: no such device or address '%s'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"SyncDriver: I/O error reading directory '%s'.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"SyncDriver: failed to open '%s': %d (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"SyncDriver: failed to stat '%s': %d (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"SyncDriver: Skipping a non-directory path '%s'.\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"SyncDriver: freezing path '%s' (fd=%d).\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"SyncDriver: freeze on '%s' returned: %d (%s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"SyncDriver: failed to freeze '%s': %d (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"SyncDriver: successfully froze '%s' (fd=%d).\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"SyncDriver: failed to thaw '%s': %d (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"SyncDriver: Thawing fd=%d.\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"SyncDriver: Thaw failed for fd=%d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"SyncDriver: Closing fd=%d.\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"fifreeze\00", align 1

; Function Attrs: nounwind uwtable
define i32 @LinuxDriver_Freeze(%struct._GSList*, %struct.SyncHandle**) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.SyncHandle**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.DynBuf, align 8
  %9 = alloca %struct.LinuxDriver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !70, metadata !71), !dbg !72
  store %struct.SyncHandle** %1, %struct.SyncHandle*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %5, metadata !73, metadata !71), !dbg !74
  call void @llvm.dbg.declare(metadata i64* %6, metadata !75, metadata !71), !dbg !81
  store i64 0, i64* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i8* %7, metadata !82, metadata !71), !dbg !83
  store i8 1, i8* %7, align 1, !dbg !83
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %8, metadata !84, metadata !71), !dbg !93
  call void @llvm.dbg.declare(metadata %struct.LinuxDriver** %9, metadata !94, metadata !71), !dbg !95
  store %struct.LinuxDriver* null, %struct.LinuxDriver** %9, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %10, metadata !96, metadata !71), !dbg !97
  store i32 0, i32* %10, align 4, !dbg !97
  call void @DynBuf_Init(%struct.DynBuf* %8), !dbg !98
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)), !dbg !99
  %15 = call noalias i8* @calloc(i64 1, i64 40) #6, !dbg !100
  %16 = bitcast i8* %15 to %struct.LinuxDriver*, !dbg !100
  store %struct.LinuxDriver* %16, %struct.LinuxDriver** %9, align 8, !dbg !101
  %17 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !102
  %18 = icmp eq %struct.LinuxDriver* %17, null, !dbg !104
  br i1 %18, label %19, label %20, !dbg !105

; <label>:19:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !106
  br label %181, !dbg !106

; <label>:20:                                     ; preds = %2
  %21 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !108
  %22 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %21, i32 0, i32 0, !dbg !109
  %23 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %22, i32 0, i32 0, !dbg !110
  store i32 (%struct.SyncHandle*)* @LinuxFiThaw, i32 (%struct.SyncHandle*)** %23, align 8, !dbg !111
  %24 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !112
  %25 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %24, i32 0, i32 0, !dbg !113
  %26 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %25, i32 0, i32 1, !dbg !114
  store void (%struct.SyncHandle*)* @LinuxFiClose, void (%struct.SyncHandle*)** %26, align 8, !dbg !115
  %27 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !116
  %28 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %27, i32 0, i32 0, !dbg !117
  %29 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %28, i32 0, i32 2, !dbg !118
  store void (%struct.SyncHandle*, i8**, i8*)* @LinuxFiGetAttr, void (%struct.SyncHandle*, i8**, i8*)** %29, align 8, !dbg !119
  %30 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !120
  %31 = icmp ne %struct._GSList* %30, null, !dbg !123
  %32 = xor i1 %31, true, !dbg !124
  %33 = zext i1 %32 to i32, !dbg !124
  %34 = sext i32 %33 to i64, !dbg !125
  %35 = icmp ne i64 %34, 0, !dbg !126
  br i1 %35, label %36, label %37, !dbg !127

; <label>:36:                                     ; preds = %20
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 190) #7, !dbg !128
  unreachable, !dbg !128

; <label>:37:                                     ; preds = %20
  br label %38, !dbg !131

; <label>:38:                                     ; preds = %157, %95, %68, %66, %64, %62, %37
  %39 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !132
  %40 = icmp ne %struct._GSList* %39, null, !dbg !134
  br i1 %40, label %41, label %158, !dbg !135

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %11, metadata !136, metadata !71), !dbg !138
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !139, metadata !71), !dbg !178
  call void @llvm.dbg.declare(metadata i8** %13, metadata !179, metadata !71), !dbg !180
  %42 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !181
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !182
  %44 = load i8*, i8** %43, align 8, !dbg !182
  store i8* %44, i8** %13, align 8, !dbg !180
  %45 = load i8*, i8** %13, align 8, !dbg !183
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %45), !dbg !184
  %46 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !185
  %47 = icmp ne %struct._GSList* %46, null, !dbg !186
  br i1 %47, label %48, label %52, !dbg !186

; <label>:48:                                     ; preds = %41
  %49 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !187
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 1, !dbg !189
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !189
  br label %53, !dbg !190

; <label>:52:                                     ; preds = %41
  br label %53, !dbg !191

; <label>:53:                                     ; preds = %52, %48
  %54 = phi %struct._GSList* [ %51, %48 ], [ null, %52 ], !dbg !193
  store %struct._GSList* %54, %struct._GSList** %4, align 8, !dbg !195
  %55 = load i8*, i8** %13, align 8, !dbg !196
  %56 = call i32 (i8*, i32, ...) @open64(i8* %55, i32 0), !dbg !197
  store i32 %56, i32* %11, align 4, !dbg !198
  %57 = load i32, i32* %11, align 4, !dbg !199
  %58 = icmp eq i32 %57, -1, !dbg !201
  br i1 %58, label %59, label %77, !dbg !202

; <label>:59:                                     ; preds = %53
  %60 = call i32* @__errno_location() #1, !dbg !203
  %61 = load i32, i32* %60, align 4, !dbg !205
  switch i32 %61, label %70 [
    i32 2, label %62
    i32 13, label %64
    i32 6, label %66
    i32 5, label %68
  ], !dbg !206

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %13, align 8, !dbg !207
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* %63), !dbg !209
  br label %38, !dbg !210, !llvm.loop !211

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %13, align 8, !dbg !212
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i8* %65), !dbg !213
  br label %38, !dbg !214, !llvm.loop !211

; <label>:66:                                     ; preds = %59
  %67 = load i8*, i8** %13, align 8, !dbg !215
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* %67), !dbg !216
  br label %38, !dbg !217, !llvm.loop !211

; <label>:68:                                     ; preds = %59
  %69 = load i8*, i8** %13, align 8, !dbg !218
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i8* %69), !dbg !219
  br label %38, !dbg !220, !llvm.loop !211

; <label>:70:                                     ; preds = %59
  %71 = load i8*, i8** %13, align 8, !dbg !221
  %72 = call i32* @__errno_location() #1, !dbg !222
  %73 = load i32, i32* %72, align 4, !dbg !223
  %74 = call i32* @__errno_location() #1, !dbg !224
  %75 = load i32, i32* %74, align 4, !dbg !226
  %76 = call i8* @strerror(i32 %75) #6, !dbg !227
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* %71, i32 %73, i8* %76), !dbg !229
  store i32 1, i32* %10, align 4, !dbg !230
  br label %159, !dbg !231

; <label>:77:                                     ; preds = %53
  %78 = load i32, i32* %11, align 4, !dbg !232
  %79 = call i32 @fstat64(i32 %78, %struct.stat* %12) #6, !dbg !234
  %80 = icmp eq i32 %79, -1, !dbg !235
  br i1 %80, label %81, label %90, !dbg !236

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %11, align 4, !dbg !237
  %83 = call i32 @close(i32 %82), !dbg !239
  %84 = load i8*, i8** %13, align 8, !dbg !240
  %85 = call i32* @__errno_location() #1, !dbg !241
  %86 = load i32, i32* %85, align 4, !dbg !242
  %87 = call i32* @__errno_location() #1, !dbg !243
  %88 = load i32, i32* %87, align 4, !dbg !245
  %89 = call i8* @strerror(i32 %88) #6, !dbg !246
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i8* %84, i32 %86, i8* %89), !dbg !248
  store i32 1, i32* %10, align 4, !dbg !249
  br label %159, !dbg !250

; <label>:90:                                     ; preds = %77
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !251
  %92 = load i32, i32* %91, align 8, !dbg !251
  %93 = and i32 %92, 61440, !dbg !253
  %94 = icmp eq i32 %93, 16384, !dbg !254
  br i1 %94, label %99, label %95, !dbg !255

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %11, align 4, !dbg !256
  %97 = call i32 @close(i32 %96), !dbg !258
  %98 = load i8*, i8** %13, align 8, !dbg !259
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0), i8* %98), !dbg !260
  br label %38, !dbg !261, !llvm.loop !211

; <label>:99:                                     ; preds = %90
  %100 = load i8*, i8** %13, align 8, !dbg !262
  %101 = load i32, i32* %11, align 4, !dbg !263
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i8* %100, i32 %101), !dbg !264
  %102 = load i32, i32* %11, align 4, !dbg !265
  %103 = call i32 (i32, i64, ...) @ioctl(i32 %102, i64 3221510263) #6, !dbg !267
  %104 = icmp eq i32 %103, -1, !dbg !268
  br i1 %104, label %105, label %134, !dbg !269

; <label>:105:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata i32* %14, metadata !270, metadata !71), !dbg !272
  %106 = call i32* @__errno_location() #1, !dbg !273
  %107 = load i32, i32* %106, align 4, !dbg !274
  store i32 %107, i32* %14, align 4, !dbg !272
  %108 = load i32, i32* %11, align 4, !dbg !275
  %109 = call i32 @close(i32 %108), !dbg !276
  %110 = load i8*, i8** %13, align 8, !dbg !277
  %111 = load i32, i32* %14, align 4, !dbg !278
  %112 = load i32, i32* %14, align 4, !dbg !279
  %113 = call i8* @strerror(i32 %112) #6, !dbg !280
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* %110, i32 %111, i8* %113), !dbg !281
  %114 = load i32, i32* %14, align 4, !dbg !282
  %115 = icmp ne i32 %114, 16, !dbg !284
  br i1 %115, label %116, label %133, !dbg !285

; <label>:116:                                    ; preds = %105
  %117 = load i32, i32* %14, align 4, !dbg !286
  %118 = icmp ne i32 %117, 95, !dbg !288
  br i1 %118, label %119, label %133, !dbg !289

; <label>:119:                                    ; preds = %116
  %120 = load i8*, i8** %13, align 8, !dbg !290
  %121 = load i32, i32* %14, align 4, !dbg !292
  %122 = load i32, i32* %14, align 4, !dbg !293
  %123 = call i8* @strerror(i32 %122) #6, !dbg !294
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), i8* %120, i32 %121, i8* %123), !dbg !295
  %124 = load i8, i8* %7, align 1, !dbg !296
  %125 = sext i8 %124 to i32, !dbg !296
  %126 = icmp ne i32 %125, 0, !dbg !296
  br i1 %126, label %127, label %130, !dbg !297

; <label>:127:                                    ; preds = %119
  %128 = load i32, i32* %14, align 4, !dbg !298
  %129 = icmp eq i32 %128, 25, !dbg !300
  br label %130

; <label>:130:                                    ; preds = %127, %119
  %131 = phi i1 [ false, %119 ], [ %129, %127 ]
  %132 = select i1 %131, i32 2, i32 1, !dbg !301
  store i32 %132, i32* %10, align 4, !dbg !303
  br label %158, !dbg !304

; <label>:133:                                    ; preds = %116, %105
  br label %157, !dbg !305

; <label>:134:                                    ; preds = %99
  %135 = load i8*, i8** %13, align 8, !dbg !306
  %136 = load i32, i32* %11, align 4, !dbg !308
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i8* %135, i32 %136), !dbg !309
  %137 = bitcast i32* %11 to i8*, !dbg !310
  %138 = call signext i8 @DynBuf_Append(%struct.DynBuf* %8, i8* %137, i64 4), !dbg !312
  %139 = icmp ne i8 %138, 0, !dbg !312
  br i1 %139, label %154, label %140, !dbg !313

; <label>:140:                                    ; preds = %134
  %141 = load i32, i32* %11, align 4, !dbg !314
  %142 = call i32 (i32, i64, ...) @ioctl(i32 %141, i64 3221510264) #6, !dbg !317
  %143 = icmp eq i32 %142, -1, !dbg !318
  br i1 %143, label %144, label %151, !dbg !319

; <label>:144:                                    ; preds = %140
  %145 = load i8*, i8** %13, align 8, !dbg !320
  %146 = call i32* @__errno_location() #1, !dbg !322
  %147 = load i32, i32* %146, align 4, !dbg !323
  %148 = call i32* @__errno_location() #1, !dbg !324
  %149 = load i32, i32* %148, align 4, !dbg !326
  %150 = call i8* @strerror(i32 %149) #6, !dbg !327
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* %145, i32 %147, i8* %150), !dbg !329
  br label %151, !dbg !330

; <label>:151:                                    ; preds = %144, %140
  %152 = load i32, i32* %11, align 4, !dbg !331
  %153 = call i32 @close(i32 %152), !dbg !332
  store i32 1, i32* %10, align 4, !dbg !333
  br label %158, !dbg !334

; <label>:154:                                    ; preds = %134
  %155 = load i64, i64* %6, align 8, !dbg !335
  %156 = add nsw i64 %155, 1, !dbg !335
  store i64 %156, i64* %6, align 8, !dbg !335
  br label %157

; <label>:157:                                    ; preds = %154, %133
  store i8 0, i8* %7, align 1, !dbg !336
  br label %38, !dbg !337, !llvm.loop !211

; <label>:158:                                    ; preds = %151, %130, %38
  br label %159, !dbg !339

; <label>:159:                                    ; preds = %158, %81, %70
  %160 = call i8* @DynBuf_Detach(%struct.DynBuf* %8), !dbg !341
  %161 = bitcast i8* %160 to i32*, !dbg !341
  %162 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !342
  %163 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %162, i32 0, i32 2, !dbg !343
  store i32* %161, i32** %163, align 8, !dbg !344
  %164 = load i64, i64* %6, align 8, !dbg !345
  %165 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !346
  %166 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %165, i32 0, i32 1, !dbg !347
  store i64 %164, i64* %166, align 8, !dbg !348
  %167 = load i32, i32* %10, align 4, !dbg !349
  %168 = icmp ne i32 %167, 0, !dbg !351
  br i1 %168, label %169, label %175, !dbg !352

; <label>:169:                                    ; preds = %159
  %170 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !353
  %171 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %170, i32 0, i32 0, !dbg !355
  %172 = call i32 @LinuxFiThaw(%struct.SyncHandle* %171), !dbg !356
  %173 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !357
  %174 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %173, i32 0, i32 0, !dbg !358
  call void @LinuxFiClose(%struct.SyncHandle* %174), !dbg !359
  br label %179, !dbg !360

; <label>:175:                                    ; preds = %159
  %176 = load %struct.LinuxDriver*, %struct.LinuxDriver** %9, align 8, !dbg !361
  %177 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %176, i32 0, i32 0, !dbg !363
  %178 = load %struct.SyncHandle**, %struct.SyncHandle*** %5, align 8, !dbg !364
  store %struct.SyncHandle* %177, %struct.SyncHandle** %178, align 8, !dbg !365
  br label %179

; <label>:179:                                    ; preds = %175, %169
  %180 = load i32, i32* %10, align 4, !dbg !366
  store i32 %180, i32* %3, align 4, !dbg !367
  br label %181, !dbg !367

; <label>:181:                                    ; preds = %179, %19
  %182 = load i32, i32* %3, align 4, !dbg !368
  ret i32 %182, !dbg !368
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @DynBuf_Init(%struct.DynBuf*) #2

declare void @Debug(i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @LinuxFiThaw(%struct.SyncHandle*) #0 !dbg !369 {
  %2 = alloca %struct.SyncHandle*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.LinuxDriver*, align 8
  %5 = alloca i32, align 4
  store %struct.SyncHandle* %0, %struct.SyncHandle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %2, metadata !370, metadata !71), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %3, metadata !372, metadata !71), !dbg !373
  call void @llvm.dbg.declare(metadata %struct.LinuxDriver** %4, metadata !374, metadata !71), !dbg !375
  %6 = load %struct.SyncHandle*, %struct.SyncHandle** %2, align 8, !dbg !376
  %7 = bitcast %struct.SyncHandle* %6 to %struct.LinuxDriver*, !dbg !377
  store %struct.LinuxDriver* %7, %struct.LinuxDriver** %4, align 8, !dbg !375
  call void @llvm.dbg.declare(metadata i32* %5, metadata !378, metadata !71), !dbg !379
  store i32 0, i32* %5, align 4, !dbg !379
  %8 = load %struct.LinuxDriver*, %struct.LinuxDriver** %4, align 8, !dbg !380
  %9 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %8, i32 0, i32 1, !dbg !382
  %10 = load i64, i64* %9, align 8, !dbg !382
  store i64 %10, i64* %3, align 8, !dbg !383
  br label %11, !dbg !384

; <label>:11:                                     ; preds = %40, %1
  %12 = load i64, i64* %3, align 8, !dbg !385
  %13 = icmp ugt i64 %12, 0, !dbg !388
  br i1 %13, label %14, label %43, !dbg !389

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %3, align 8, !dbg !390
  %16 = sub i64 %15, 1, !dbg !392
  %17 = load %struct.LinuxDriver*, %struct.LinuxDriver** %4, align 8, !dbg !393
  %18 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %17, i32 0, i32 2, !dbg !394
  %19 = load i32*, i32** %18, align 8, !dbg !394
  %20 = getelementptr inbounds i32, i32* %19, i64 %16, !dbg !393
  %21 = load i32, i32* %20, align 4, !dbg !393
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i32 %21), !dbg !395
  %22 = load i64, i64* %3, align 8, !dbg !396
  %23 = sub i64 %22, 1, !dbg !398
  %24 = load %struct.LinuxDriver*, %struct.LinuxDriver** %4, align 8, !dbg !399
  %25 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %24, i32 0, i32 2, !dbg !400
  %26 = load i32*, i32** %25, align 8, !dbg !400
  %27 = getelementptr inbounds i32, i32* %26, i64 %23, !dbg !399
  %28 = load i32, i32* %27, align 4, !dbg !399
  %29 = call i32 (i32, i64, ...) @ioctl(i32 %28, i64 3221510264) #6, !dbg !401
  %30 = icmp eq i32 %29, -1, !dbg !402
  br i1 %30, label %31, label %39, !dbg !403

; <label>:31:                                     ; preds = %14
  %32 = load i64, i64* %3, align 8, !dbg !404
  %33 = sub i64 %32, 1, !dbg !406
  %34 = load %struct.LinuxDriver*, %struct.LinuxDriver** %4, align 8, !dbg !407
  %35 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %34, i32 0, i32 2, !dbg !408
  %36 = load i32*, i32** %35, align 8, !dbg !408
  %37 = getelementptr inbounds i32, i32* %36, i64 %33, !dbg !407
  %38 = load i32, i32* %37, align 4, !dbg !407
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i32 %38), !dbg !409
  store i32 1, i32* %5, align 4, !dbg !410
  br label %39, !dbg !411

; <label>:39:                                     ; preds = %31, %14
  br label %40, !dbg !412

; <label>:40:                                     ; preds = %39
  %41 = load i64, i64* %3, align 8, !dbg !413
  %42 = add i64 %41, -1, !dbg !413
  store i64 %42, i64* %3, align 8, !dbg !413
  br label %11, !dbg !415, !llvm.loop !416

; <label>:43:                                     ; preds = %11
  %44 = load i32, i32* %5, align 4, !dbg !418
  ret i32 %44, !dbg !419
}

; Function Attrs: nounwind uwtable
define internal void @LinuxFiClose(%struct.SyncHandle*) #0 !dbg !420 {
  %2 = alloca %struct.SyncHandle*, align 8
  %3 = alloca %struct.LinuxDriver*, align 8
  %4 = alloca i64, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %2, metadata !421, metadata !71), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.LinuxDriver** %3, metadata !423, metadata !71), !dbg !424
  %5 = load %struct.SyncHandle*, %struct.SyncHandle** %2, align 8, !dbg !425
  %6 = bitcast %struct.SyncHandle* %5 to %struct.LinuxDriver*, !dbg !426
  store %struct.LinuxDriver* %6, %struct.LinuxDriver** %3, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i64* %4, metadata !427, metadata !71), !dbg !428
  %7 = load %struct.LinuxDriver*, %struct.LinuxDriver** %3, align 8, !dbg !429
  %8 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %7, i32 0, i32 1, !dbg !431
  %9 = load i64, i64* %8, align 8, !dbg !431
  store i64 %9, i64* %4, align 8, !dbg !432
  br label %10, !dbg !433

; <label>:10:                                     ; preds = %29, %1
  %11 = load i64, i64* %4, align 8, !dbg !434
  %12 = icmp ugt i64 %11, 0, !dbg !437
  br i1 %12, label %13, label %32, !dbg !438

; <label>:13:                                     ; preds = %10
  %14 = load i64, i64* %4, align 8, !dbg !439
  %15 = sub i64 %14, 1, !dbg !441
  %16 = load %struct.LinuxDriver*, %struct.LinuxDriver** %3, align 8, !dbg !442
  %17 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %16, i32 0, i32 2, !dbg !443
  %18 = load i32*, i32** %17, align 8, !dbg !443
  %19 = getelementptr inbounds i32, i32* %18, i64 %15, !dbg !442
  %20 = load i32, i32* %19, align 4, !dbg !442
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 %20), !dbg !444
  %21 = load i64, i64* %4, align 8, !dbg !445
  %22 = sub i64 %21, 1, !dbg !446
  %23 = load %struct.LinuxDriver*, %struct.LinuxDriver** %3, align 8, !dbg !447
  %24 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %23, i32 0, i32 2, !dbg !448
  %25 = load i32*, i32** %24, align 8, !dbg !448
  %26 = getelementptr inbounds i32, i32* %25, i64 %22, !dbg !447
  %27 = load i32, i32* %26, align 4, !dbg !447
  %28 = call i32 @close(i32 %27), !dbg !449
  br label %29, !dbg !450

; <label>:29:                                     ; preds = %13
  %30 = load i64, i64* %4, align 8, !dbg !451
  %31 = add i64 %30, -1, !dbg !451
  store i64 %31, i64* %4, align 8, !dbg !451
  br label %10, !dbg !453, !llvm.loop !454

; <label>:32:                                     ; preds = %10
  %33 = load %struct.LinuxDriver*, %struct.LinuxDriver** %3, align 8, !dbg !456
  %34 = getelementptr inbounds %struct.LinuxDriver, %struct.LinuxDriver* %33, i32 0, i32 2, !dbg !457
  %35 = load i32*, i32** %34, align 8, !dbg !457
  %36 = bitcast i32* %35 to i8*, !dbg !456
  call void @free(i8* %36) #6, !dbg !458
  %37 = load %struct.LinuxDriver*, %struct.LinuxDriver** %3, align 8, !dbg !459
  %38 = bitcast %struct.LinuxDriver* %37 to i8*, !dbg !459
  call void @free(i8* %38) #6, !dbg !460
  ret void, !dbg !461
}

; Function Attrs: nounwind uwtable
define internal void @LinuxFiGetAttr(%struct.SyncHandle*, i8**, i8*) #0 !dbg !462 {
  %4 = alloca %struct.SyncHandle*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %4, metadata !463, metadata !71), !dbg !464
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !465, metadata !71), !dbg !466
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !467, metadata !71), !dbg !468
  %7 = load i8**, i8*** %5, align 8, !dbg !469
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8** %7, align 8, !dbg !470
  %8 = load i8*, i8** %6, align 8, !dbg !471
  store i8 1, i8* %8, align 1, !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

declare i32 @open64(i8*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #3

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #2

declare void @Warning(i8*, ...) #2

declare i8* @DynBuf_Detach(%struct.DynBuf*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "libSyncDriver_la-syncDriverLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "syncDriverInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "SD_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "SD_ERROR", value: 1)
!8 = !DIEnumerator(name: "SD_UNAVAILABLE", value: 2)
!9 = !{!10, !11, !20}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !13, line: 37, baseType: !14)
!13 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !13, line: 39, size: 128, align: 64, elements: !15)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 41, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !18, line: 77, baseType: !10)
!18 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !14, file: !13, line: 42, baseType: !11, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinuxDriver", file: !22, line: 50, baseType: !23)
!22 = !DIFile(filename: "syncDriverLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LinuxDriver", file: !22, line: 46, size: 320, align: 64, elements: !24)
!24 = !{!25, !53, !57}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !23, file: !22, line: 47, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncHandle", file: !4, line: 53, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !4, line: 46, size: 192, align: 64, elements: !28)
!28 = !{!29, !38, !42}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !27, file: !4, line: 47, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverErr", file: !4, line: 41, baseType: !3)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !36, line: 41, baseType: !37)
!36 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !27, file: !4, line: 48, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !35}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !27, file: !4, line: 50, baseType: !43, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !34, !46, !50}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !52, line: 230, baseType: !49)
!52 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fdCnt", scope: !23, file: !22, line: 48, baseType: !54, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 216, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !23, file: !22, line: 49, baseType: !58, size: 64, align: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!60 = !{i32 2, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "LinuxDriver_Freeze", scope: !22, file: !22, line: 165, type: !64, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !69)
!64 = !DISubroutineType(types: !65)
!65 = !{!33, !66, !68}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!69 = !{}
!70 = !DILocalVariable(name: "paths", arg: 1, scope: !63, file: !22, line: 165, type: !66)
!71 = !DIExpression()
!72 = !DILocation(line: 165, column: 34, scope: !63)
!73 = !DILocalVariable(name: "handle", arg: 2, scope: !63, file: !22, line: 166, type: !68)
!74 = !DILocation(line: 166, column: 38, scope: !63)
!75 = !DILocalVariable(name: "count", scope: !63, file: !22, line: 168, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !77, line: 109, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !79, line: 172, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!80 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!81 = !DILocation(line: 168, column: 12, scope: !63)
!82 = !DILocalVariable(name: "first", scope: !63, file: !22, line: 169, type: !51)
!83 = !DILocation(line: 169, column: 9, scope: !63)
!84 = !DILocalVariable(name: "fds", scope: !63, file: !22, line: 170, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !86, line: 40, baseType: !87)
!86 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !86, line: 36, size: 192, align: 64, elements: !88)
!88 = !{!89, !91, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !86, line: 37, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !87, file: !86, line: 38, baseType: !54, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !87, file: !86, line: 39, baseType: !54, size: 64, align: 64, offset: 128)
!93 = !DILocation(line: 170, column: 11, scope: !63)
!94 = !DILocalVariable(name: "sync", scope: !63, file: !22, line: 171, type: !20)
!95 = !DILocation(line: 171, column: 17, scope: !63)
!96 = !DILocalVariable(name: "err", scope: !63, file: !22, line: 172, type: !33)
!97 = !DILocation(line: 172, column: 18, scope: !63)
!98 = !DILocation(line: 174, column: 4, scope: !63)
!99 = !DILocation(line: 176, column: 4, scope: !63)
!100 = !DILocation(line: 178, column: 11, scope: !63)
!101 = !DILocation(line: 178, column: 9, scope: !63)
!102 = !DILocation(line: 179, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !63, file: !22, line: 179, column: 8)
!104 = !DILocation(line: 179, column: 13, scope: !103)
!105 = !DILocation(line: 179, column: 8, scope: !63)
!106 = !DILocation(line: 180, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !22, line: 179, column: 21)
!108 = !DILocation(line: 183, column: 4, scope: !63)
!109 = !DILocation(line: 183, column: 10, scope: !63)
!110 = !DILocation(line: 183, column: 17, scope: !63)
!111 = !DILocation(line: 183, column: 22, scope: !63)
!112 = !DILocation(line: 184, column: 4, scope: !63)
!113 = !DILocation(line: 184, column: 10, scope: !63)
!114 = !DILocation(line: 184, column: 17, scope: !63)
!115 = !DILocation(line: 184, column: 23, scope: !63)
!116 = !DILocation(line: 185, column: 4, scope: !63)
!117 = !DILocation(line: 185, column: 10, scope: !63)
!118 = !DILocation(line: 185, column: 17, scope: !63)
!119 = !DILocation(line: 185, column: 25, scope: !63)
!120 = !DILocation(line: 190, column: 30, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !22, line: 190, column: 10)
!122 = distinct !DILexicalBlock(scope: !63, file: !22, line: 190, column: 5)
!123 = !DILocation(line: 190, column: 36, scope: !121)
!124 = !DILocation(line: 190, column: 28, scope: !121)
!125 = !DILocation(line: 190, column: 27, scope: !121)
!126 = !DILocation(line: 190, column: 10, scope: !121)
!127 = !DILocation(line: 190, column: 10, scope: !122)
!128 = !DILocation(line: 190, column: 13, scope: !129)
!129 = !DILexicalBlockFile(scope: !130, file: !22, discriminator: 1)
!130 = distinct !DILexicalBlock(scope: !121, file: !22, line: 190, column: 11)
!131 = !DILocation(line: 197, column: 4, scope: !63)
!132 = !DILocation(line: 197, column: 11, scope: !133)
!133 = !DILexicalBlockFile(scope: !63, file: !22, discriminator: 1)
!134 = !DILocation(line: 197, column: 17, scope: !133)
!135 = !DILocation(line: 197, column: 4, scope: !133)
!136 = !DILocalVariable(name: "fd", scope: !137, file: !22, line: 198, type: !59)
!137 = distinct !DILexicalBlock(scope: !63, file: !22, line: 197, column: 25)
!138 = !DILocation(line: 198, column: 11, scope: !137)
!139 = !DILocalVariable(name: "sbuf", scope: !137, file: !22, line: 199, type: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !141, line: 46, size: 1152, align: 64, elements: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!142 = !{!143, !145, !147, !149, !152, !154, !156, !157, !158, !160, !162, !164, !172, !173, !174}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !140, file: !141, line: 48, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !79, line: 124, baseType: !56)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !140, file: !141, line: 53, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !79, line: 127, baseType: !56)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !140, file: !141, line: 61, baseType: !148, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !79, line: 130, baseType: !56)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !140, file: !141, line: 62, baseType: !150, size: 32, align: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !79, line: 129, baseType: !151)
!151 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !140, file: !141, line: 64, baseType: !153, size: 32, align: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !79, line: 125, baseType: !151)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !140, file: !141, line: 65, baseType: !155, size: 32, align: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !79, line: 126, baseType: !151)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !140, file: !141, line: 67, baseType: !59, size: 32, align: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !140, file: !141, line: 69, baseType: !144, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !140, file: !141, line: 74, baseType: !159, size: 64, align: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 131, baseType: !80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !140, file: !141, line: 78, baseType: !161, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !79, line: 153, baseType: !80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !140, file: !141, line: 80, baseType: !163, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !79, line: 158, baseType: !80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !140, file: !141, line: 91, baseType: !165, size: 128, align: 64, offset: 576)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !166, line: 120, size: 128, align: 64, elements: !167)
!166 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line974")
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !165, file: !166, line: 122, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !79, line: 139, baseType: !80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !165, file: !166, line: 123, baseType: !171, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !79, line: 175, baseType: !80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !140, file: !141, line: 92, baseType: !165, size: 128, align: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !140, file: !141, line: 93, baseType: !165, size: 128, align: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !140, file: !141, line: 106, baseType: !175, size: 192, align: 64, offset: 960)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, align: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 3)
!178 = !DILocation(line: 199, column: 19, scope: !137)
!179 = !DILocalVariable(name: "path", scope: !137, file: !22, line: 200, type: !47)
!180 = !DILocation(line: 200, column: 19, scope: !137)
!181 = !DILocation(line: 200, column: 26, scope: !137)
!182 = !DILocation(line: 200, column: 33, scope: !137)
!183 = !DILocation(line: 201, column: 52, scope: !137)
!184 = !DILocation(line: 201, column: 7, scope: !137)
!185 = !DILocation(line: 202, column: 17, scope: !137)
!186 = !DILocation(line: 202, column: 16, scope: !137)
!187 = !DILocation(line: 202, column: 39, scope: !188)
!188 = !DILexicalBlockFile(scope: !137, file: !22, discriminator: 1)
!189 = !DILocation(line: 202, column: 48, scope: !188)
!190 = !DILocation(line: 202, column: 16, scope: !188)
!191 = !DILocation(line: 202, column: 16, scope: !192)
!192 = !DILexicalBlockFile(scope: !137, file: !22, discriminator: 2)
!193 = !DILocation(line: 202, column: 16, scope: !194)
!194 = !DILexicalBlockFile(scope: !137, file: !22, discriminator: 3)
!195 = !DILocation(line: 202, column: 13, scope: !194)
!196 = !DILocation(line: 203, column: 17, scope: !137)
!197 = !DILocation(line: 203, column: 12, scope: !137)
!198 = !DILocation(line: 203, column: 10, scope: !137)
!199 = !DILocation(line: 204, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !137, file: !22, line: 204, column: 11)
!201 = !DILocation(line: 204, column: 14, scope: !200)
!202 = !DILocation(line: 204, column: 11, scope: !137)
!203 = !DILocation(line: 205, column: 19, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !22, line: 204, column: 21)
!205 = !DILocation(line: 205, column: 18, scope: !204)
!206 = !DILocation(line: 205, column: 10, scope: !204)
!207 = !DILocation(line: 211, column: 71, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !22, line: 205, column: 24)
!209 = !DILocation(line: 211, column: 13, scope: !208)
!210 = !DILocation(line: 212, column: 13, scope: !208)
!211 = distinct !{!211, !131}
!212 = !DILocation(line: 219, column: 77, scope: !208)
!213 = !DILocation(line: 219, column: 13, scope: !208)
!214 = !DILocation(line: 220, column: 13, scope: !208)
!215 = !DILocation(line: 227, column: 71, scope: !208)
!216 = !DILocation(line: 227, column: 13, scope: !208)
!217 = !DILocation(line: 228, column: 13, scope: !208)
!218 = !DILocation(line: 236, column: 73, scope: !208)
!219 = !DILocation(line: 236, column: 13, scope: !208)
!220 = !DILocation(line: 237, column: 13, scope: !208)
!221 = !DILocation(line: 241, column: 19, scope: !208)
!222 = !DILocation(line: 241, column: 26, scope: !208)
!223 = !DILocation(line: 241, column: 25, scope: !208)
!224 = !DILocation(line: 241, column: 42, scope: !225)
!225 = !DILexicalBlockFile(scope: !208, file: !22, discriminator: 1)
!226 = !DILocation(line: 241, column: 41, scope: !208)
!227 = !DILocation(line: 241, column: 31, scope: !228)
!228 = !DILexicalBlockFile(scope: !208, file: !22, discriminator: 2)
!229 = !DILocation(line: 240, column: 13, scope: !208)
!230 = !DILocation(line: 242, column: 17, scope: !208)
!231 = !DILocation(line: 243, column: 13, scope: !208)
!232 = !DILocation(line: 247, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !137, file: !22, line: 247, column: 11)
!234 = !DILocation(line: 247, column: 11, scope: !233)
!235 = !DILocation(line: 247, column: 28, scope: !233)
!236 = !DILocation(line: 247, column: 11, scope: !137)
!237 = !DILocation(line: 248, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !22, line: 247, column: 35)
!239 = !DILocation(line: 248, column: 10, scope: !238)
!240 = !DILocation(line: 250, column: 16, scope: !238)
!241 = !DILocation(line: 250, column: 23, scope: !238)
!242 = !DILocation(line: 250, column: 22, scope: !238)
!243 = !DILocation(line: 250, column: 39, scope: !244)
!244 = !DILexicalBlockFile(scope: !238, file: !22, discriminator: 1)
!245 = !DILocation(line: 250, column: 38, scope: !238)
!246 = !DILocation(line: 250, column: 28, scope: !247)
!247 = !DILexicalBlockFile(scope: !238, file: !22, discriminator: 2)
!248 = !DILocation(line: 249, column: 10, scope: !238)
!249 = !DILocation(line: 251, column: 14, scope: !238)
!250 = !DILocation(line: 252, column: 10, scope: !238)
!251 = !DILocation(line: 255, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !137, file: !22, line: 255, column: 11)
!253 = !DILocation(line: 255, column: 14, scope: !252)
!254 = !DILocation(line: 255, column: 25, scope: !252)
!255 = !DILocation(line: 255, column: 11, scope: !137)
!256 = !DILocation(line: 256, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !22, line: 255, column: 34)
!258 = !DILocation(line: 256, column: 10, scope: !257)
!259 = !DILocation(line: 257, column: 72, scope: !257)
!260 = !DILocation(line: 257, column: 10, scope: !257)
!261 = !DILocation(line: 258, column: 10, scope: !257)
!262 = !DILocation(line: 261, column: 61, scope: !137)
!263 = !DILocation(line: 261, column: 67, scope: !137)
!264 = !DILocation(line: 261, column: 7, scope: !137)
!265 = !DILocation(line: 262, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !137, file: !22, line: 262, column: 11)
!267 = !DILocation(line: 262, column: 11, scope: !266)
!268 = !DILocation(line: 262, column: 30, scope: !266)
!269 = !DILocation(line: 262, column: 11, scope: !137)
!270 = !DILocalVariable(name: "ioctlerr", scope: !271, file: !22, line: 263, type: !59)
!271 = distinct !DILexicalBlock(scope: !266, file: !22, line: 262, column: 37)
!272 = !DILocation(line: 263, column: 14, scope: !271)
!273 = !DILocation(line: 263, column: 26, scope: !271)
!274 = !DILocation(line: 263, column: 25, scope: !271)
!275 = !DILocation(line: 274, column: 16, scope: !271)
!276 = !DILocation(line: 274, column: 10, scope: !271)
!277 = !DILocation(line: 276, column: 16, scope: !271)
!278 = !DILocation(line: 276, column: 22, scope: !271)
!279 = !DILocation(line: 276, column: 41, scope: !271)
!280 = !DILocation(line: 276, column: 32, scope: !271)
!281 = !DILocation(line: 275, column: 10, scope: !271)
!282 = !DILocation(line: 277, column: 14, scope: !283)
!283 = distinct !DILexicalBlock(scope: !271, file: !22, line: 277, column: 14)
!284 = !DILocation(line: 277, column: 23, scope: !283)
!285 = !DILocation(line: 277, column: 31, scope: !283)
!286 = !DILocation(line: 277, column: 34, scope: !287)
!287 = !DILexicalBlockFile(scope: !283, file: !22, discriminator: 1)
!288 = !DILocation(line: 277, column: 43, scope: !287)
!289 = !DILocation(line: 277, column: 14, scope: !287)
!290 = !DILocation(line: 279, column: 19, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !22, line: 277, column: 58)
!292 = !DILocation(line: 279, column: 25, scope: !291)
!293 = !DILocation(line: 279, column: 44, scope: !291)
!294 = !DILocation(line: 279, column: 35, scope: !291)
!295 = !DILocation(line: 278, column: 13, scope: !291)
!296 = !DILocation(line: 280, column: 19, scope: !291)
!297 = !DILocation(line: 280, column: 25, scope: !291)
!298 = !DILocation(line: 280, column: 28, scope: !299)
!299 = !DILexicalBlockFile(scope: !291, file: !22, discriminator: 1)
!300 = !DILocation(line: 280, column: 37, scope: !299)
!301 = !DILocation(line: 280, column: 19, scope: !302)
!302 = !DILexicalBlockFile(scope: !291, file: !22, discriminator: 2)
!303 = !DILocation(line: 280, column: 17, scope: !302)
!304 = !DILocation(line: 281, column: 13, scope: !291)
!305 = !DILocation(line: 283, column: 7, scope: !271)
!306 = !DILocation(line: 284, column: 69, scope: !307)
!307 = distinct !DILexicalBlock(scope: !266, file: !22, line: 283, column: 14)
!308 = !DILocation(line: 284, column: 75, scope: !307)
!309 = !DILocation(line: 284, column: 10, scope: !307)
!310 = !DILocation(line: 285, column: 35, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !22, line: 285, column: 14)
!312 = !DILocation(line: 285, column: 15, scope: !311)
!313 = !DILocation(line: 285, column: 14, scope: !307)
!314 = !DILocation(line: 286, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !22, line: 286, column: 17)
!316 = distinct !DILexicalBlock(scope: !311, file: !22, line: 285, column: 52)
!317 = !DILocation(line: 286, column: 17, scope: !315)
!318 = !DILocation(line: 286, column: 34, scope: !315)
!319 = !DILocation(line: 286, column: 17, scope: !316)
!320 = !DILocation(line: 288, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !22, line: 286, column: 41)
!322 = !DILocation(line: 288, column: 31, scope: !321)
!323 = !DILocation(line: 288, column: 30, scope: !321)
!324 = !DILocation(line: 288, column: 47, scope: !325)
!325 = !DILexicalBlockFile(scope: !321, file: !22, discriminator: 1)
!326 = !DILocation(line: 288, column: 46, scope: !321)
!327 = !DILocation(line: 288, column: 36, scope: !328)
!328 = !DILexicalBlockFile(scope: !321, file: !22, discriminator: 2)
!329 = !DILocation(line: 287, column: 16, scope: !321)
!330 = !DILocation(line: 289, column: 13, scope: !321)
!331 = !DILocation(line: 290, column: 19, scope: !316)
!332 = !DILocation(line: 290, column: 13, scope: !316)
!333 = !DILocation(line: 291, column: 17, scope: !316)
!334 = !DILocation(line: 292, column: 13, scope: !316)
!335 = !DILocation(line: 294, column: 15, scope: !307)
!336 = !DILocation(line: 297, column: 13, scope: !137)
!337 = !DILocation(line: 197, column: 4, scope: !338)
!338 = !DILexicalBlockFile(scope: !63, file: !22, discriminator: 2)
!339 = !DILocation(line: 197, column: 4, scope: !340)
!340 = !DILexicalBlockFile(scope: !63, file: !22, discriminator: 3)
!341 = !DILocation(line: 301, column: 16, scope: !63)
!342 = !DILocation(line: 301, column: 4, scope: !63)
!343 = !DILocation(line: 301, column: 10, scope: !63)
!344 = !DILocation(line: 301, column: 14, scope: !63)
!345 = !DILocation(line: 302, column: 18, scope: !63)
!346 = !DILocation(line: 302, column: 4, scope: !63)
!347 = !DILocation(line: 302, column: 10, scope: !63)
!348 = !DILocation(line: 302, column: 16, scope: !63)
!349 = !DILocation(line: 304, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !63, file: !22, line: 304, column: 8)
!351 = !DILocation(line: 304, column: 12, scope: !350)
!352 = !DILocation(line: 304, column: 8, scope: !63)
!353 = !DILocation(line: 305, column: 20, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !22, line: 304, column: 27)
!355 = !DILocation(line: 305, column: 26, scope: !354)
!356 = !DILocation(line: 305, column: 7, scope: !354)
!357 = !DILocation(line: 306, column: 21, scope: !354)
!358 = !DILocation(line: 306, column: 27, scope: !354)
!359 = !DILocation(line: 306, column: 7, scope: !354)
!360 = !DILocation(line: 307, column: 4, scope: !354)
!361 = !DILocation(line: 308, column: 18, scope: !362)
!362 = distinct !DILexicalBlock(scope: !350, file: !22, line: 307, column: 11)
!363 = !DILocation(line: 308, column: 24, scope: !362)
!364 = !DILocation(line: 308, column: 8, scope: !362)
!365 = !DILocation(line: 308, column: 15, scope: !362)
!366 = !DILocation(line: 310, column: 11, scope: !63)
!367 = !DILocation(line: 310, column: 4, scope: !63)
!368 = !DILocation(line: 311, column: 1, scope: !63)
!369 = distinct !DISubprogram(name: "LinuxFiThaw", scope: !22, file: !22, line: 68, type: !31, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !69)
!370 = !DILocalVariable(name: "handle", arg: 1, scope: !369, file: !22, line: 68, type: !34)
!371 = !DILocation(line: 68, column: 36, scope: !369)
!372 = !DILocalVariable(name: "i", scope: !369, file: !22, line: 70, type: !54)
!373 = !DILocation(line: 70, column: 11, scope: !369)
!374 = !DILocalVariable(name: "sync", scope: !369, file: !22, line: 71, type: !20)
!375 = !DILocation(line: 71, column: 17, scope: !369)
!376 = !DILocation(line: 71, column: 40, scope: !369)
!377 = !DILocation(line: 71, column: 24, scope: !369)
!378 = !DILocalVariable(name: "err", scope: !369, file: !22, line: 72, type: !33)
!379 = !DILocation(line: 72, column: 18, scope: !369)
!380 = !DILocation(line: 77, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !369, file: !22, line: 77, column: 4)
!382 = !DILocation(line: 77, column: 19, scope: !381)
!383 = !DILocation(line: 77, column: 11, scope: !381)
!384 = !DILocation(line: 77, column: 9, scope: !381)
!385 = !DILocation(line: 77, column: 26, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !22, discriminator: 1)
!387 = distinct !DILexicalBlock(scope: !381, file: !22, line: 77, column: 4)
!388 = !DILocation(line: 77, column: 28, scope: !386)
!389 = !DILocation(line: 77, column: 4, scope: !386)
!390 = !DILocation(line: 78, column: 58, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !22, line: 77, column: 38)
!392 = !DILocation(line: 78, column: 59, scope: !391)
!393 = !DILocation(line: 78, column: 48, scope: !391)
!394 = !DILocation(line: 78, column: 54, scope: !391)
!395 = !DILocation(line: 78, column: 7, scope: !391)
!396 = !DILocation(line: 79, column: 27, scope: !397)
!397 = distinct !DILexicalBlock(scope: !391, file: !22, line: 79, column: 11)
!398 = !DILocation(line: 79, column: 28, scope: !397)
!399 = !DILocation(line: 79, column: 17, scope: !397)
!400 = !DILocation(line: 79, column: 23, scope: !397)
!401 = !DILocation(line: 79, column: 11, scope: !397)
!402 = !DILocation(line: 79, column: 40, scope: !397)
!403 = !DILocation(line: 79, column: 11, scope: !391)
!404 = !DILocation(line: 80, column: 69, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !22, line: 79, column: 47)
!406 = !DILocation(line: 80, column: 70, scope: !405)
!407 = !DILocation(line: 80, column: 59, scope: !405)
!408 = !DILocation(line: 80, column: 65, scope: !405)
!409 = !DILocation(line: 80, column: 10, scope: !405)
!410 = !DILocation(line: 81, column: 14, scope: !405)
!411 = !DILocation(line: 82, column: 7, scope: !405)
!412 = !DILocation(line: 83, column: 4, scope: !391)
!413 = !DILocation(line: 77, column: 34, scope: !414)
!414 = !DILexicalBlockFile(scope: !387, file: !22, discriminator: 2)
!415 = !DILocation(line: 77, column: 4, scope: !414)
!416 = distinct !{!416, !417}
!417 = !DILocation(line: 77, column: 4, scope: !369)
!418 = !DILocation(line: 85, column: 11, scope: !369)
!419 = !DILocation(line: 85, column: 4, scope: !369)
!420 = distinct !DISubprogram(name: "LinuxFiClose", scope: !22, file: !22, line: 102, type: !40, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !69)
!421 = !DILocalVariable(name: "handle", arg: 1, scope: !420, file: !22, line: 102, type: !35)
!422 = !DILocation(line: 102, column: 31, scope: !420)
!423 = !DILocalVariable(name: "sync", scope: !420, file: !22, line: 104, type: !20)
!424 = !DILocation(line: 104, column: 17, scope: !420)
!425 = !DILocation(line: 104, column: 40, scope: !420)
!426 = !DILocation(line: 104, column: 24, scope: !420)
!427 = !DILocalVariable(name: "i", scope: !420, file: !22, line: 105, type: !54)
!428 = !DILocation(line: 105, column: 11, scope: !420)
!429 = !DILocation(line: 110, column: 13, scope: !430)
!430 = distinct !DILexicalBlock(scope: !420, file: !22, line: 110, column: 4)
!431 = !DILocation(line: 110, column: 19, scope: !430)
!432 = !DILocation(line: 110, column: 11, scope: !430)
!433 = !DILocation(line: 110, column: 9, scope: !430)
!434 = !DILocation(line: 110, column: 26, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !22, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !430, file: !22, line: 110, column: 4)
!437 = !DILocation(line: 110, column: 28, scope: !435)
!438 = !DILocation(line: 110, column: 4, scope: !435)
!439 = !DILocation(line: 111, column: 58, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !22, line: 110, column: 38)
!441 = !DILocation(line: 111, column: 59, scope: !440)
!442 = !DILocation(line: 111, column: 48, scope: !440)
!443 = !DILocation(line: 111, column: 54, scope: !440)
!444 = !DILocation(line: 111, column: 7, scope: !440)
!445 = !DILocation(line: 112, column: 23, scope: !440)
!446 = !DILocation(line: 112, column: 24, scope: !440)
!447 = !DILocation(line: 112, column: 13, scope: !440)
!448 = !DILocation(line: 112, column: 19, scope: !440)
!449 = !DILocation(line: 112, column: 7, scope: !440)
!450 = !DILocation(line: 113, column: 4, scope: !440)
!451 = !DILocation(line: 110, column: 34, scope: !452)
!452 = !DILexicalBlockFile(scope: !436, file: !22, discriminator: 2)
!453 = !DILocation(line: 110, column: 4, scope: !452)
!454 = distinct !{!454, !455}
!455 = !DILocation(line: 110, column: 4, scope: !420)
!456 = !DILocation(line: 114, column: 9, scope: !420)
!457 = !DILocation(line: 114, column: 15, scope: !420)
!458 = !DILocation(line: 114, column: 4, scope: !420)
!459 = !DILocation(line: 115, column: 9, scope: !420)
!460 = !DILocation(line: 115, column: 4, scope: !420)
!461 = !DILocation(line: 116, column: 1, scope: !420)
!462 = distinct !DISubprogram(name: "LinuxFiGetAttr", scope: !22, file: !22, line: 133, type: !44, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !69)
!463 = !DILocalVariable(name: "handle", arg: 1, scope: !462, file: !22, line: 133, type: !34)
!464 = !DILocation(line: 133, column: 39, scope: !462)
!465 = !DILocalVariable(name: "name", arg: 2, scope: !462, file: !22, line: 134, type: !46)
!466 = !DILocation(line: 134, column: 29, scope: !462)
!467 = !DILocalVariable(name: "quiesces", arg: 3, scope: !462, file: !22, line: 135, type: !50)
!468 = !DILocation(line: 135, column: 22, scope: !462)
!469 = !DILocation(line: 137, column: 5, scope: !462)
!470 = !DILocation(line: 137, column: 10, scope: !462)
!471 = !DILocation(line: 138, column: 5, scope: !462)
!472 = !DILocation(line: 138, column: 14, scope: !462)
!473 = !DILocation(line: 139, column: 1, scope: !462)
