; ModuleID = './libguestInfo_la-diskInfo.o.i'
source_filename = "./libguestInfo_la-diskInfo.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._DiskInfo = type { i32, %struct._PartitionEntry* }
%struct._PartitionEntry = type <{ i64, i64, [100 x i8] }>
%struct.WiperPartition_List = type { %struct.DblLnkLst_Links }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.WiperPartition = type { [256 x i8], i32, i8, i8*, %struct.DblLnkLst_Links }

@.str = private unnamed_addr constant [10 x i8] c"guestinfo\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"GetDiskInfo: ERROR: could not get partition list\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"GetDiskInfo: ERROR: could not get space info for partition %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"GetDiskInfo: ERROR: Partition name buffer too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%s added partition #%d %s type %d free %lu total %lu\0A\00", align 1
@__FUNCTION__.GuestInfoGetDiskInfoWiper = private unnamed_addr constant [26 x i8] c"GuestInfoGetDiskInfoWiper\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s ignoring unsupported partition %s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @GuestInfo_FreeDiskInfo(%struct._DiskInfo*) #0 !dbg !65 {
  %2 = alloca %struct._DiskInfo*, align 8
  store %struct._DiskInfo* %0, %struct._DiskInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DiskInfo** %2, metadata !91, metadata !92), !dbg !93
  %3 = load %struct._DiskInfo*, %struct._DiskInfo** %2, align 8, !dbg !94
  %4 = icmp ne %struct._DiskInfo* %3, null, !dbg !94
  br i1 %4, label %5, label %12, !dbg !96

; <label>:5:                                      ; preds = %1
  %6 = load %struct._DiskInfo*, %struct._DiskInfo** %2, align 8, !dbg !97
  %7 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %6, i32 0, i32 1, !dbg !99
  %8 = load %struct._PartitionEntry*, %struct._PartitionEntry** %7, align 8, !dbg !99
  %9 = bitcast %struct._PartitionEntry* %8 to i8*, !dbg !97
  call void @free(i8* %9) #5, !dbg !100
  %10 = load %struct._DiskInfo*, %struct._DiskInfo** %2, align 8, !dbg !101
  %11 = bitcast %struct._DiskInfo* %10 to i8*, !dbg !101
  call void @free(i8* %11) #5, !dbg !102
  br label %12, !dbg !103

; <label>:12:                                     ; preds = %5, %1
  ret void, !dbg !104
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._DiskInfo* @GuestInfoGetDiskInfoWiper(i8 signext) #0 !dbg !105 {
  %2 = alloca %struct._DiskInfo*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.WiperPartition_List, align 8
  %5 = alloca %struct.DblLnkLst_Links*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct._DiskInfo*, align 8
  %12 = alloca %struct.WiperPartition*, align 8
  %13 = alloca %struct._PartitionEntry*, align 8
  %14 = alloca %struct._PartitionEntry*, align 8
  %15 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !108, metadata !92), !dbg !109
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List* %4, metadata !110, metadata !92), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %5, metadata !116, metadata !92), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %6, metadata !119, metadata !92), !dbg !120
  store i32 0, i32* %6, align 4, !dbg !120
  call void @llvm.dbg.declare(metadata i64* %7, metadata !121, metadata !92), !dbg !122
  store i64 0, i64* %7, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i64* %8, metadata !123, metadata !92), !dbg !124
  store i64 0, i64* %8, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %9, metadata !125, metadata !92), !dbg !126
  store i32 0, i32* %9, align 4, !dbg !126
  call void @llvm.dbg.declare(metadata i8* %10, metadata !127, metadata !92), !dbg !128
  store i8 0, i8* %10, align 1, !dbg !128
  call void @llvm.dbg.declare(metadata %struct._DiskInfo** %11, metadata !129, metadata !92), !dbg !130
  %16 = call signext i8 @WiperPartition_Open(%struct.WiperPartition_List* %4, i8 signext 0), !dbg !131
  %17 = icmp ne i8 %16, 0, !dbg !131
  br i1 %17, label %19, label %18, !dbg !133

; <label>:18:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0)), !dbg !134
  store %struct._DiskInfo* null, %struct._DiskInfo** %2, align 8, !dbg !136
  br label %144, !dbg !136

; <label>:19:                                     ; preds = %1
  %20 = call i8* @UtilSafeCalloc0(i64 1, i64 16), !dbg !137
  %21 = bitcast i8* %20 to %struct._DiskInfo*, !dbg !137
  store %struct._DiskInfo* %21, %struct._DiskInfo** %11, align 8, !dbg !138
  store i32 100, i32* %9, align 4, !dbg !139
  %22 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %4, i32 0, i32 0, !dbg !140
  %23 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %22, i32 0, i32 1, !dbg !142
  %24 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %23, align 8, !dbg !142
  store %struct.DblLnkLst_Links* %24, %struct.DblLnkLst_Links** %5, align 8, !dbg !143
  br label %25, !dbg !144

; <label>:25:                                     ; preds = %129, %19
  %26 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !145
  %27 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %4, i32 0, i32 0, !dbg !148
  %28 = icmp ne %struct.DblLnkLst_Links* %26, %27, !dbg !149
  br i1 %28, label %29, label %133, !dbg !150

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %12, metadata !151, metadata !92), !dbg !153
  %30 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !154
  %31 = bitcast %struct.DblLnkLst_Links* %30 to i8*, !dbg !155
  %32 = getelementptr inbounds i8, i8* %31, i64 sub (i64 0, i64 ptrtoint (%struct.DblLnkLst_Links* getelementptr inbounds (%struct.WiperPartition, %struct.WiperPartition* null, i32 0, i32 4) to i64)), !dbg !156
  %33 = bitcast i8* %32 to %struct.WiperPartition*, !dbg !157
  store %struct.WiperPartition* %33, %struct.WiperPartition** %12, align 8, !dbg !153
  %34 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !158
  %35 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %34, i32 0, i32 1, !dbg !160
  %36 = load i32, i32* %35, align 8, !dbg !160
  %37 = icmp ne i32 %36, 0, !dbg !161
  br i1 %37, label %38, label %113, !dbg !162

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct._PartitionEntry** %13, metadata !163, metadata !92), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._PartitionEntry** %14, metadata !166, metadata !92), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %15, metadata !168, metadata !92), !dbg !170
  %39 = load i8, i8* %3, align 1, !dbg !171
  %40 = icmp ne i8 %39, 0, !dbg !171
  br i1 %40, label %41, label %44, !dbg !173

; <label>:41:                                     ; preds = %38
  %42 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !174
  %43 = call i8* @WiperSinglePartition_GetSpace(%struct.WiperPartition* %42, i64* null, i64* %7, i64* %8), !dbg !176
  store i8* %43, i8** %15, align 8, !dbg !177
  br label %47, !dbg !178

; <label>:44:                                     ; preds = %38
  %45 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !179
  %46 = call i8* @WiperSinglePartition_GetSpace(%struct.WiperPartition* %45, i64* %7, i64* null, i64* %8), !dbg !181
  store i8* %46, i8** %15, align 8, !dbg !182
  br label %47

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %15, align 8, !dbg !183
  %49 = call i64 @strlen(i8* %48) #6, !dbg !185
  %50 = icmp ne i64 %49, 0, !dbg !185
  br i1 %50, label %51, label %56, !dbg !186

; <label>:51:                                     ; preds = %47
  %52 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !187
  %53 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %52, i32 0, i32 0, !dbg !189
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %53, i32 0, i32 0, !dbg !187
  %55 = load i8*, i8** %15, align 8, !dbg !190
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0), i8* %54, i8* %55), !dbg !191
  br label %137, !dbg !192

; <label>:56:                                     ; preds = %47
  %57 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !193
  %58 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %57, i32 0, i32 0, !dbg !195
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %58, i32 0, i32 0, !dbg !193
  %60 = call i64 @strlen(i8* %59) #6, !dbg !196
  %61 = add i64 %60, 1, !dbg !197
  %62 = load i32, i32* %9, align 4, !dbg !198
  %63 = zext i32 %62 to i64, !dbg !198
  %64 = icmp ugt i64 %61, %63, !dbg !199
  br i1 %64, label %65, label %66, !dbg !200

; <label>:65:                                     ; preds = %56
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0)), !dbg !201
  br label %137, !dbg !203

; <label>:66:                                     ; preds = %56
  %67 = load %struct._DiskInfo*, %struct._DiskInfo** %11, align 8, !dbg !204
  %68 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %67, i32 0, i32 1, !dbg !205
  %69 = load %struct._PartitionEntry*, %struct._PartitionEntry** %68, align 8, !dbg !205
  %70 = bitcast %struct._PartitionEntry* %69 to i8*, !dbg !206
  %71 = load i32, i32* %6, align 4, !dbg !207
  %72 = add i32 %71, 1, !dbg !208
  %73 = zext i32 %72 to i64, !dbg !209
  %74 = mul i64 %73, 116, !dbg !210
  %75 = call i8* @UtilSafeRealloc0(i8* %70, i64 %74), !dbg !211
  %76 = bitcast i8* %75 to %struct._PartitionEntry*, !dbg !211
  store %struct._PartitionEntry* %76, %struct._PartitionEntry** %13, align 8, !dbg !212
  %77 = load i32, i32* %6, align 4, !dbg !213
  %78 = add i32 %77, 1, !dbg !213
  store i32 %78, i32* %6, align 4, !dbg !213
  %79 = zext i32 %77 to i64, !dbg !214
  %80 = load %struct._PartitionEntry*, %struct._PartitionEntry** %13, align 8, !dbg !214
  %81 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %80, i64 %79, !dbg !214
  store %struct._PartitionEntry* %81, %struct._PartitionEntry** %14, align 8, !dbg !215
  %82 = load %struct._PartitionEntry*, %struct._PartitionEntry** %14, align 8, !dbg !216
  %83 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %82, i32 0, i32 2, !dbg !217
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %83, i32 0, i32 0, !dbg !216
  %85 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !218
  %86 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %85, i32 0, i32 0, !dbg !219
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %86, i32 0, i32 0, !dbg !218
  %88 = load i32, i32* %9, align 4, !dbg !220
  %89 = zext i32 %88 to i64, !dbg !220
  %90 = call i8* @Str_Strcpy(i8* %84, i8* %87, i64 %89), !dbg !221
  %91 = load i64, i64* %7, align 8, !dbg !222
  %92 = load %struct._PartitionEntry*, %struct._PartitionEntry** %14, align 8, !dbg !223
  %93 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %92, i32 0, i32 0, !dbg !224
  store i64 %91, i64* %93, align 1, !dbg !225
  %94 = load i64, i64* %8, align 8, !dbg !226
  %95 = load %struct._PartitionEntry*, %struct._PartitionEntry** %14, align 8, !dbg !227
  %96 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %95, i32 0, i32 1, !dbg !228
  store i64 %94, i64* %96, align 1, !dbg !229
  %97 = load %struct._PartitionEntry*, %struct._PartitionEntry** %13, align 8, !dbg !230
  %98 = load %struct._DiskInfo*, %struct._DiskInfo** %11, align 8, !dbg !231
  %99 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %98, i32 0, i32 1, !dbg !232
  store %struct._PartitionEntry* %97, %struct._PartitionEntry** %99, align 8, !dbg !233
  %100 = load i32, i32* %6, align 4, !dbg !234
  %101 = load %struct._PartitionEntry*, %struct._PartitionEntry** %14, align 8, !dbg !235
  %102 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %101, i32 0, i32 2, !dbg !236
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %102, i32 0, i32 0, !dbg !235
  %104 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !237
  %105 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %104, i32 0, i32 1, !dbg !238
  %106 = load i32, i32* %105, align 8, !dbg !238
  %107 = load %struct._PartitionEntry*, %struct._PartitionEntry** %14, align 8, !dbg !239
  %108 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %107, i32 0, i32 0, !dbg !240
  %109 = load i64, i64* %108, align 1, !dbg !240
  %110 = load %struct._PartitionEntry*, %struct._PartitionEntry** %14, align 8, !dbg !241
  %111 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %110, i32 0, i32 1, !dbg !242
  %112 = load i64, i64* %111, align 1, !dbg !242
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.GuestInfoGetDiskInfoWiper, i32 0, i32 0), i32 %100, i8* %103, i32 %106, i64 %109, i64 %112), !dbg !243
  br label %128, !dbg !244

; <label>:113:                                    ; preds = %29
  %114 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !245
  %115 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %114, i32 0, i32 0, !dbg !247
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %115, i32 0, i32 0, !dbg !245
  %117 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !248
  %118 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %117, i32 0, i32 3, !dbg !249
  %119 = load i8*, i8** %118, align 8, !dbg !249
  %120 = icmp ne i8* %119, null, !dbg !248
  br i1 %120, label %121, label %125, !dbg !248

; <label>:121:                                    ; preds = %113
  %122 = load %struct.WiperPartition*, %struct.WiperPartition** %12, align 8, !dbg !250
  %123 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %122, i32 0, i32 3, !dbg !252
  %124 = load i8*, i8** %123, align 8, !dbg !252
  br label %126, !dbg !253

; <label>:125:                                    ; preds = %113
  br label %126, !dbg !254

; <label>:126:                                    ; preds = %125, %121
  %127 = phi i8* [ %124, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %125 ], !dbg !256
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.GuestInfoGetDiskInfoWiper, i32 0, i32 0), i8* %116, i8* %127), !dbg !258
  br label %128

; <label>:128:                                    ; preds = %126, %66
  br label %129, !dbg !259

; <label>:129:                                    ; preds = %128
  %130 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !260
  %131 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %130, i32 0, i32 1, !dbg !262
  %132 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %131, align 8, !dbg !262
  store %struct.DblLnkLst_Links* %132, %struct.DblLnkLst_Links** %5, align 8, !dbg !263
  br label %25, !dbg !264, !llvm.loop !265

; <label>:133:                                    ; preds = %25
  %134 = load i32, i32* %6, align 4, !dbg !267
  %135 = load %struct._DiskInfo*, %struct._DiskInfo** %11, align 8, !dbg !268
  %136 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %135, i32 0, i32 0, !dbg !269
  store i32 %134, i32* %136, align 8, !dbg !270
  store i8 1, i8* %10, align 1, !dbg !271
  br label %137, !dbg !272

; <label>:137:                                    ; preds = %133, %65, %51
  %138 = load i8, i8* %10, align 1, !dbg !273
  %139 = icmp ne i8 %138, 0, !dbg !273
  br i1 %139, label %142, label %140, !dbg !275

; <label>:140:                                    ; preds = %137
  %141 = load %struct._DiskInfo*, %struct._DiskInfo** %11, align 8, !dbg !276
  call void @GuestInfo_FreeDiskInfo(%struct._DiskInfo* %141), !dbg !278
  store %struct._DiskInfo* null, %struct._DiskInfo** %11, align 8, !dbg !279
  br label %142, !dbg !280

; <label>:142:                                    ; preds = %140, %137
  call void @WiperPartition_Close(%struct.WiperPartition_List* %4), !dbg !281
  %143 = load %struct._DiskInfo*, %struct._DiskInfo** %11, align 8, !dbg !282
  store %struct._DiskInfo* %143, %struct._DiskInfo** %2, align 8, !dbg !283
  br label %144, !dbg !283

; <label>:144:                                    ; preds = %142, %18
  %145 = load %struct._DiskInfo*, %struct._DiskInfo** %2, align 8, !dbg !284
  ret %struct._DiskInfo* %145, !dbg !284
}

declare signext i8 @WiperPartition_Open(%struct.WiperPartition_List*, i8 signext) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare i8* @UtilSafeCalloc0(i64, i64) #3

declare i8* @WiperSinglePartition_GetSpace(%struct.WiperPartition*, i64*, i64*, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @UtilSafeRealloc0(i8*, i64) #3

declare i8* @Str_Strcpy(i8*, i8*, i64) #3

declare void @WiperPartition_Close(%struct.WiperPartition_List*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !31)
!1 = !DIFile(filename: "libguestInfo_la-diskInfo.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 42, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/wiper.h", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!18 = !DIEnumerator(name: "PARTITION_UNSUPPORTED", value: 0)
!19 = !DIEnumerator(name: "PARTITION_EXT2", value: 1)
!20 = !DIEnumerator(name: "PARTITION_EXT3", value: 2)
!21 = !DIEnumerator(name: "PARTITION_REISERFS", value: 3)
!22 = !DIEnumerator(name: "PARTITION_NTFS", value: 4)
!23 = !DIEnumerator(name: "PARTITION_FAT", value: 5)
!24 = !DIEnumerator(name: "PARTITION_UFS", value: 6)
!25 = !DIEnumerator(name: "PARTITION_PCFS", value: 7)
!26 = !DIEnumerator(name: "PARTITION_EXT4", value: 8)
!27 = !DIEnumerator(name: "PARTITION_HFS", value: 9)
!28 = !DIEnumerator(name: "PARTITION_ZFS", value: 10)
!29 = !DIEnumerator(name: "PARTITION_XFS", value: 11)
!30 = !DIEnumerator(name: "PARTITION_BTRFS", value: 12)
!31 = !{!32, !58, !59}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition", file: !16, line: 86, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition", file: !16, line: 62, size: 2304, align: 64, elements: !35)
!35 = !{!36, !41, !43, !47, !50}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mountPoint", scope: !34, file: !16, line: 63, baseType: !37, size: 2048, align: 8)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, align: 8, elements: !39)
!38 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40}
!40 = !DISubrange(count: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !16, line: 66, baseType: !42, size: 32, align: 32, offset: 2048)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_Type", file: !16, line: 56, baseType: !15)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "attemptUnmaps", scope: !34, file: !16, line: 72, baseType: !44, size: 8, align: 8, offset: 2080)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !45, line: 230, baseType: !46)
!45 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !34, file: !16, line: 78, baseType: !48, size: 64, align: 64, offset: 2112)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !34, file: !16, line: 85, baseType: !51, size: 128, align: 64, offset: 2176)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !52, line: 94, baseType: !53)
!52 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !52, line: 91, size: 128, align: 64, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !53, file: !52, line: 92, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !52, line: 93, baseType: !56, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !60, line: 119, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!61 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!65 = distinct !DISubprogram(name: "GuestInfo_FreeDiskInfo", scope: !66, file: !66, line: 54, type: !67, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!66 = !DIFile(filename: "diskInfo.c", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestDiskInfo", file: !71, line: 106, baseType: !72)
!71 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestInfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1434")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DiskInfo", file: !71, line: 103, size: 128, align: 64, elements: !73)
!73 = !{!74, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "numEntries", scope: !72, file: !71, line: 104, baseType: !75, size: 32, align: 32)
!75 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "partitionList", scope: !72, file: !71, line: 105, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPartitionEntry", file: !71, line: 101, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PartitionEntry", file: !71, line: 95, size: 928, align: 8, elements: !80)
!80 = !{!81, !85, !86}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "freeBytes", scope: !79, file: !71, line: 96, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !45, line: 171, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !60, line: 55, baseType: !84)
!84 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "totalBytes", scope: !79, file: !71, line: 97, baseType: !82, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !71, line: 98, baseType: !87, size: 800, align: 8, offset: 128)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 800, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 100)
!90 = !{}
!91 = !DILocalVariable(name: "di", arg: 1, scope: !65, file: !66, line: 54, type: !69)
!92 = !DIExpression()
!93 = !DILocation(line: 54, column: 39, scope: !65)
!94 = !DILocation(line: 56, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !66, line: 56, column: 8)
!96 = !DILocation(line: 56, column: 8, scope: !65)
!97 = !DILocation(line: 57, column: 12, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !66, line: 56, column: 12)
!99 = !DILocation(line: 57, column: 16, scope: !98)
!100 = !DILocation(line: 57, column: 7, scope: !98)
!101 = !DILocation(line: 58, column: 12, scope: !98)
!102 = !DILocation(line: 58, column: 7, scope: !98)
!103 = !DILocation(line: 59, column: 4, scope: !98)
!104 = !DILocation(line: 60, column: 1, scope: !65)
!105 = distinct !DISubprogram(name: "GuestInfoGetDiskInfoWiper", scope: !66, file: !66, line: 81, type: !106, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !90)
!106 = !DISubroutineType(types: !107)
!107 = !{!69, !44}
!108 = !DILocalVariable(name: "includeReserved", arg: 1, scope: !105, file: !66, line: 81, type: !44)
!109 = !DILocation(line: 81, column: 32, scope: !105)
!110 = !DILocalVariable(name: "pl", scope: !105, file: !66, line: 83, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_List", file: !16, line: 90, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition_List", file: !16, line: 88, size: 128, align: 64, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !112, file: !16, line: 89, baseType: !51, size: 128, align: 64)
!115 = !DILocation(line: 83, column: 24, scope: !105)
!116 = !DILocalVariable(name: "curr", scope: !105, file: !66, line: 84, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!118 = !DILocation(line: 84, column: 21, scope: !105)
!119 = !DILocalVariable(name: "partCount", scope: !105, file: !66, line: 85, type: !75)
!120 = !DILocation(line: 85, column: 17, scope: !105)
!121 = !DILocalVariable(name: "freeBytes", scope: !105, file: !66, line: 86, type: !82)
!122 = !DILocation(line: 86, column: 11, scope: !105)
!123 = !DILocalVariable(name: "totalBytes", scope: !105, file: !66, line: 87, type: !82)
!124 = !DILocation(line: 87, column: 11, scope: !105)
!125 = !DILocalVariable(name: "partNameSize", scope: !105, file: !66, line: 88, type: !75)
!126 = !DILocation(line: 88, column: 17, scope: !105)
!127 = !DILocalVariable(name: "success", scope: !105, file: !66, line: 89, type: !44)
!128 = !DILocation(line: 89, column: 9, scope: !105)
!129 = !DILocalVariable(name: "di", scope: !105, file: !66, line: 90, type: !69)
!130 = !DILocation(line: 90, column: 19, scope: !105)
!131 = !DILocation(line: 93, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !105, file: !66, line: 93, column: 8)
!133 = !DILocation(line: 93, column: 8, scope: !105)
!134 = !DILocation(line: 94, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !66, line: 93, column: 38)
!136 = !DILocation(line: 95, column: 7, scope: !135)
!137 = !DILocation(line: 98, column: 9, scope: !105)
!138 = !DILocation(line: 98, column: 7, scope: !105)
!139 = !DILocation(line: 99, column: 17, scope: !105)
!140 = !DILocation(line: 101, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !105, file: !66, line: 101, column: 4)
!142 = !DILocation(line: 101, column: 28, scope: !141)
!143 = !DILocation(line: 101, column: 14, scope: !141)
!144 = !DILocation(line: 101, column: 9, scope: !141)
!145 = !DILocation(line: 101, column: 34, scope: !146)
!146 = !DILexicalBlockFile(scope: !147, file: !66, discriminator: 1)
!147 = distinct !DILexicalBlock(scope: !141, file: !66, line: 101, column: 4)
!148 = !DILocation(line: 101, column: 47, scope: !146)
!149 = !DILocation(line: 101, column: 39, scope: !146)
!150 = !DILocation(line: 101, column: 4, scope: !146)
!151 = !DILocalVariable(name: "part", scope: !152, file: !66, line: 102, type: !32)
!152 = distinct !DILexicalBlock(scope: !147, file: !66, line: 101, column: 75)
!153 = !DILocation(line: 102, column: 23, scope: !152)
!154 = !DILocation(line: 102, column: 59, scope: !152)
!155 = !DILocation(line: 102, column: 50, scope: !152)
!156 = !DILocation(line: 102, column: 65, scope: !152)
!157 = !DILocation(line: 102, column: 31, scope: !152)
!158 = !DILocation(line: 104, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !66, line: 104, column: 11)
!160 = !DILocation(line: 104, column: 17, scope: !159)
!161 = !DILocation(line: 104, column: 22, scope: !159)
!162 = !DILocation(line: 104, column: 11, scope: !152)
!163 = !DILocalVariable(name: "newPartitionList", scope: !164, file: !66, line: 105, type: !77)
!164 = distinct !DILexicalBlock(scope: !159, file: !66, line: 104, column: 48)
!165 = !DILocation(line: 105, column: 26, scope: !164)
!166 = !DILocalVariable(name: "partEntry", scope: !164, file: !66, line: 106, type: !77)
!167 = !DILocation(line: 106, column: 26, scope: !164)
!168 = !DILocalVariable(name: "error", scope: !164, file: !66, line: 107, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!170 = !DILocation(line: 107, column: 25, scope: !164)
!171 = !DILocation(line: 108, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !164, file: !66, line: 108, column: 14)
!173 = !DILocation(line: 108, column: 14, scope: !164)
!174 = !DILocation(line: 109, column: 51, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !66, line: 108, column: 31)
!176 = !DILocation(line: 109, column: 21, scope: !175)
!177 = !DILocation(line: 109, column: 19, scope: !175)
!178 = !DILocation(line: 111, column: 10, scope: !175)
!179 = !DILocation(line: 112, column: 51, scope: !180)
!180 = distinct !DILexicalBlock(scope: !172, file: !66, line: 111, column: 17)
!181 = !DILocation(line: 112, column: 21, scope: !180)
!182 = !DILocation(line: 112, column: 19, scope: !180)
!183 = !DILocation(line: 115, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !164, file: !66, line: 115, column: 14)
!185 = !DILocation(line: 115, column: 14, scope: !184)
!186 = !DILocation(line: 115, column: 14, scope: !164)
!187 = !DILocation(line: 116, column: 128, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !66, line: 115, column: 29)
!189 = !DILocation(line: 116, column: 134, scope: !188)
!190 = !DILocation(line: 116, column: 146, scope: !188)
!191 = !DILocation(line: 116, column: 13, scope: !188)
!192 = !DILocation(line: 118, column: 13, scope: !188)
!193 = !DILocation(line: 121, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !164, file: !66, line: 121, column: 14)
!195 = !DILocation(line: 121, column: 27, scope: !194)
!196 = !DILocation(line: 121, column: 14, scope: !194)
!197 = !DILocation(line: 121, column: 39, scope: !194)
!198 = !DILocation(line: 121, column: 45, scope: !194)
!199 = !DILocation(line: 121, column: 43, scope: !194)
!200 = !DILocation(line: 121, column: 14, scope: !164)
!201 = !DILocation(line: 122, column: 13, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !66, line: 121, column: 59)
!203 = !DILocation(line: 123, column: 13, scope: !202)
!204 = !DILocation(line: 126, column: 47, scope: !164)
!205 = !DILocation(line: 126, column: 51, scope: !164)
!206 = !DILocation(line: 126, column: 46, scope: !164)
!207 = !DILocation(line: 126, column: 69, scope: !164)
!208 = !DILocation(line: 126, column: 79, scope: !164)
!209 = !DILocation(line: 126, column: 68, scope: !164)
!210 = !DILocation(line: 126, column: 84, scope: !164)
!211 = !DILocation(line: 126, column: 29, scope: !164)
!212 = !DILocation(line: 126, column: 27, scope: !164)
!213 = !DILocation(line: 130, column: 49, scope: !164)
!214 = !DILocation(line: 130, column: 23, scope: !164)
!215 = !DILocation(line: 130, column: 20, scope: !164)
!216 = !DILocation(line: 131, column: 21, scope: !164)
!217 = !DILocation(line: 131, column: 32, scope: !164)
!218 = !DILocation(line: 131, column: 38, scope: !164)
!219 = !DILocation(line: 131, column: 44, scope: !164)
!220 = !DILocation(line: 131, column: 56, scope: !164)
!221 = !DILocation(line: 131, column: 10, scope: !164)
!222 = !DILocation(line: 132, column: 33, scope: !164)
!223 = !DILocation(line: 132, column: 10, scope: !164)
!224 = !DILocation(line: 132, column: 21, scope: !164)
!225 = !DILocation(line: 132, column: 31, scope: !164)
!226 = !DILocation(line: 133, column: 34, scope: !164)
!227 = !DILocation(line: 133, column: 10, scope: !164)
!228 = !DILocation(line: 133, column: 21, scope: !164)
!229 = !DILocation(line: 133, column: 32, scope: !164)
!230 = !DILocation(line: 135, column: 30, scope: !164)
!231 = !DILocation(line: 135, column: 10, scope: !164)
!232 = !DILocation(line: 135, column: 14, scope: !164)
!233 = !DILocation(line: 135, column: 28, scope: !164)
!234 = !DILocation(line: 136, column: 129, scope: !164)
!235 = !DILocation(line: 136, column: 140, scope: !164)
!236 = !DILocation(line: 136, column: 151, scope: !164)
!237 = !DILocation(line: 136, column: 157, scope: !164)
!238 = !DILocation(line: 136, column: 163, scope: !164)
!239 = !DILocation(line: 136, column: 169, scope: !164)
!240 = !DILocation(line: 136, column: 180, scope: !164)
!241 = !DILocation(line: 136, column: 191, scope: !164)
!242 = !DILocation(line: 136, column: 202, scope: !164)
!243 = !DILocation(line: 136, column: 10, scope: !164)
!244 = !DILocation(line: 139, column: 7, scope: !164)
!245 = !DILocation(line: 140, column: 108, scope: !246)
!246 = distinct !DILexicalBlock(scope: !159, file: !66, line: 139, column: 14)
!247 = !DILocation(line: 140, column: 114, scope: !246)
!248 = !DILocation(line: 140, column: 126, scope: !246)
!249 = !DILocation(line: 140, column: 132, scope: !246)
!250 = !DILocation(line: 140, column: 142, scope: !251)
!251 = !DILexicalBlockFile(scope: !246, file: !66, discriminator: 1)
!252 = !DILocation(line: 140, column: 148, scope: !251)
!253 = !DILocation(line: 140, column: 126, scope: !251)
!254 = !DILocation(line: 140, column: 126, scope: !255)
!255 = !DILexicalBlockFile(scope: !246, file: !66, discriminator: 2)
!256 = !DILocation(line: 140, column: 126, scope: !257)
!257 = !DILexicalBlockFile(scope: !246, file: !66, discriminator: 3)
!258 = !DILocation(line: 140, column: 10, scope: !257)
!259 = !DILocation(line: 144, column: 4, scope: !152)
!260 = !DILocation(line: 101, column: 62, scope: !261)
!261 = !DILexicalBlockFile(scope: !147, file: !66, discriminator: 2)
!262 = !DILocation(line: 101, column: 69, scope: !261)
!263 = !DILocation(line: 101, column: 59, scope: !261)
!264 = !DILocation(line: 101, column: 4, scope: !261)
!265 = distinct !{!265, !266}
!266 = !DILocation(line: 101, column: 4, scope: !105)
!267 = !DILocation(line: 146, column: 21, scope: !105)
!268 = !DILocation(line: 146, column: 4, scope: !105)
!269 = !DILocation(line: 146, column: 8, scope: !105)
!270 = !DILocation(line: 146, column: 19, scope: !105)
!271 = !DILocation(line: 147, column: 12, scope: !105)
!272 = !DILocation(line: 147, column: 4, scope: !105)
!273 = !DILocation(line: 150, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !105, file: !66, line: 150, column: 8)
!275 = !DILocation(line: 150, column: 8, scope: !105)
!276 = !DILocation(line: 151, column: 30, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !66, line: 150, column: 18)
!278 = !DILocation(line: 151, column: 7, scope: !277)
!279 = !DILocation(line: 152, column: 10, scope: !277)
!280 = !DILocation(line: 153, column: 4, scope: !277)
!281 = !DILocation(line: 154, column: 4, scope: !105)
!282 = !DILocation(line: 155, column: 11, scope: !105)
!283 = !DILocation(line: 155, column: 4, scope: !105)
!284 = !DILocation(line: 156, column: 1, scope: !105)
