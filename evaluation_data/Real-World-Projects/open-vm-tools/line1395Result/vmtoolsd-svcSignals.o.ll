; ModuleID = './vmtoolsd-svcSignals.o.i'
source_filename = "./vmtoolsd-svcSignals.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GCClosure = type { %struct._GClosure, i8* }

@__func__.g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN = private unnamed_addr constant [49 x i8] c"g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"return_value != NULL\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"n_param_values == 3\00", align 1
@__func__.g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING = private unnamed_addr constant [55 x i8] c"g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"n_param_values == 4\00", align 1
@__func__.g_cclosure_user_marshal_UINT__POINTER_POINTER_UINT_UINT_POINTER = private unnamed_addr constant [64 x i8] c"g_cclosure_user_marshal_UINT__POINTER_POINTER_UINT_UINT_POINTER\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"n_param_values == 6\00", align 1

; Function Attrs: nounwind uwtable
define void @g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #0 !dbg !93 {
  %7 = alloca %struct._GClosure*, align 8
  %8 = alloca %struct._GValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GValue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8* (i8*, i8*, i32, i8*)*, align 8
  %14 = alloca %struct._GCClosure*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct._GClosure* %0, %struct._GClosure** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GClosure** %7, metadata !111, metadata !112), !dbg !113
  store %struct._GValue* %1, %struct._GValue** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %8, metadata !114, metadata !112), !dbg !115
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !116, metadata !112), !dbg !117
  store %struct._GValue* %3, %struct._GValue** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %10, metadata !118, metadata !112), !dbg !119
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !120, metadata !112), !dbg !121
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !122, metadata !112), !dbg !123
  call void @llvm.dbg.declare(metadata i8* (i8*, i8*, i32, i8*)** %13, metadata !124, metadata !112), !dbg !125
  call void @llvm.dbg.declare(metadata %struct._GCClosure** %14, metadata !126, metadata !112), !dbg !127
  %18 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !128
  %19 = bitcast %struct._GClosure* %18 to %struct._GCClosure*, !dbg !129
  store %struct._GCClosure* %19, %struct._GCClosure** %14, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i8** %15, metadata !130, metadata !112), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %16, metadata !132, metadata !112), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %17, metadata !134, metadata !112), !dbg !135
  br label %20, !dbg !136, !llvm.loop !137

; <label>:20:                                     ; preds = %6
  %21 = load %struct._GValue*, %struct._GValue** %8, align 8, !dbg !138
  %22 = icmp ne %struct._GValue* %21, null, !dbg !142
  br i1 %22, label %23, label %24, !dbg !138

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !143

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !146
  br label %84, !dbg !149

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !150

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !152, !llvm.loop !153

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %9, align 4, !dbg !154
  %29 = icmp eq i32 %28, 3, !dbg !158
  br i1 %29, label %30, label %31, !dbg !154

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !159

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !162
  br label %84, !dbg !165

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !166

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !168
  %35 = bitcast %struct._GClosure* %34 to i32*, !dbg !170
  %36 = load volatile i32, i32* %35, align 8, !dbg !170
  %37 = lshr i32 %36, 29, !dbg !170
  %38 = and i32 %37, 1, !dbg !170
  %39 = icmp ne i32 %38, 0, !dbg !171
  br i1 %39, label %40, label %47, !dbg !172

; <label>:40:                                     ; preds = %33
  %41 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !173
  %42 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %41, i32 0, i32 2, !dbg !175
  %43 = load i8*, i8** %42, align 8, !dbg !175
  store i8* %43, i8** %15, align 8, !dbg !176
  %44 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !177
  %45 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 0, !dbg !178
  %46 = call i8* @g_value_peek_pointer(%struct._GValue* %45), !dbg !179
  store i8* %46, i8** %16, align 8, !dbg !180
  br label %54, !dbg !181

; <label>:47:                                     ; preds = %33
  %48 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !182
  %49 = getelementptr inbounds %struct._GValue, %struct._GValue* %48, i64 0, !dbg !184
  %50 = call i8* @g_value_peek_pointer(%struct._GValue* %49), !dbg !185
  store i8* %50, i8** %15, align 8, !dbg !186
  %51 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !187
  %52 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %51, i32 0, i32 2, !dbg !188
  %53 = load i8*, i8** %52, align 8, !dbg !188
  store i8* %53, i8** %16, align 8, !dbg !189
  br label %54

; <label>:54:                                     ; preds = %47, %40
  %55 = load i8*, i8** %12, align 8, !dbg !190
  %56 = icmp ne i8* %55, null, !dbg !190
  br i1 %56, label %57, label %59, !dbg !190

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %12, align 8, !dbg !191
  br label %63, !dbg !193

; <label>:59:                                     ; preds = %54
  %60 = load %struct._GCClosure*, %struct._GCClosure** %14, align 8, !dbg !194
  %61 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %60, i32 0, i32 1, !dbg !196
  %62 = load i8*, i8** %61, align 8, !dbg !196
  br label %63, !dbg !197

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i8* [ %58, %57 ], [ %62, %59 ], !dbg !198
  %65 = bitcast i8* %64 to i8* (i8*, i8*, i32, i8*)*, !dbg !200
  store i8* (i8*, i8*, i32, i8*)* %65, i8* (i8*, i8*, i32, i8*)** %13, align 8, !dbg !201
  %66 = load i8* (i8*, i8*, i32, i8*)*, i8* (i8*, i8*, i32, i8*)** %13, align 8, !dbg !202
  %67 = load i8*, i8** %15, align 8, !dbg !203
  %68 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !204
  %69 = getelementptr inbounds %struct._GValue, %struct._GValue* %68, i64 1, !dbg !205
  %70 = getelementptr inbounds %struct._GValue, %struct._GValue* %69, i32 0, i32 1, !dbg !206
  %71 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %70, i64 0, i64 0, !dbg !207
  %72 = bitcast %union.anon* %71 to i8**, !dbg !208
  %73 = load i8*, i8** %72, align 8, !dbg !208
  %74 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !209
  %75 = getelementptr inbounds %struct._GValue, %struct._GValue* %74, i64 2, !dbg !210
  %76 = getelementptr inbounds %struct._GValue, %struct._GValue* %75, i32 0, i32 1, !dbg !211
  %77 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %76, i64 0, i64 0, !dbg !212
  %78 = bitcast %union.anon* %77 to i32*, !dbg !213
  %79 = load i32, i32* %78, align 8, !dbg !213
  %80 = load i8*, i8** %16, align 8, !dbg !214
  %81 = call i8* %66(i8* %67, i8* %73, i32 %79, i8* %80), !dbg !202
  store i8* %81, i8** %17, align 8, !dbg !215
  %82 = load %struct._GValue*, %struct._GValue** %8, align 8, !dbg !216
  %83 = load i8*, i8** %17, align 8, !dbg !217
  call void @g_value_set_pointer(%struct._GValue* %82, i8* %83), !dbg !218
  br label %84, !dbg !219

; <label>:84:                                     ; preds = %63, %31, %24
  ret void, !dbg !220
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_value_peek_pointer(%struct._GValue*) #2

declare void @g_value_set_pointer(%struct._GValue*, i8*) #2

; Function Attrs: nounwind uwtable
define void @g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #0 !dbg !99 {
  %7 = alloca %struct._GClosure*, align 8
  %8 = alloca %struct._GValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GValue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i8*, i8*, i8*)*, align 8
  %14 = alloca %struct._GCClosure*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct._GClosure* %0, %struct._GClosure** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GClosure** %7, metadata !221, metadata !112), !dbg !222
  store %struct._GValue* %1, %struct._GValue** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %8, metadata !223, metadata !112), !dbg !224
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !225, metadata !112), !dbg !226
  store %struct._GValue* %3, %struct._GValue** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %10, metadata !227, metadata !112), !dbg !228
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !229, metadata !112), !dbg !230
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !231, metadata !112), !dbg !232
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, i8*, i8*, i8*)** %13, metadata !233, metadata !112), !dbg !234
  call void @llvm.dbg.declare(metadata %struct._GCClosure** %14, metadata !235, metadata !112), !dbg !236
  %18 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !237
  %19 = bitcast %struct._GClosure* %18 to %struct._GCClosure*, !dbg !238
  store %struct._GCClosure* %19, %struct._GCClosure** %14, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata i8** %15, metadata !239, metadata !112), !dbg !240
  call void @llvm.dbg.declare(metadata i8** %16, metadata !241, metadata !112), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %17, metadata !243, metadata !112), !dbg !244
  br label %20, !dbg !245, !llvm.loop !246

; <label>:20:                                     ; preds = %6
  %21 = load %struct._GValue*, %struct._GValue** %8, align 8, !dbg !247
  %22 = icmp ne %struct._GValue* %21, null, !dbg !251
  br i1 %22, label %23, label %24, !dbg !247

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !252

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__func__.g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !255
  br label %90, !dbg !258

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !259

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !261, !llvm.loop !262

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %9, align 4, !dbg !263
  %29 = icmp eq i32 %28, 4, !dbg !267
  br i1 %29, label %30, label %31, !dbg !263

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !268

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__func__.g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !271
  br label %90, !dbg !274

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !275

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !277
  %35 = bitcast %struct._GClosure* %34 to i32*, !dbg !279
  %36 = load volatile i32, i32* %35, align 8, !dbg !279
  %37 = lshr i32 %36, 29, !dbg !279
  %38 = and i32 %37, 1, !dbg !279
  %39 = icmp ne i32 %38, 0, !dbg !280
  br i1 %39, label %40, label %47, !dbg !281

; <label>:40:                                     ; preds = %33
  %41 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !282
  %42 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %41, i32 0, i32 2, !dbg !284
  %43 = load i8*, i8** %42, align 8, !dbg !284
  store i8* %43, i8** %15, align 8, !dbg !285
  %44 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !286
  %45 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 0, !dbg !287
  %46 = call i8* @g_value_peek_pointer(%struct._GValue* %45), !dbg !288
  store i8* %46, i8** %16, align 8, !dbg !289
  br label %54, !dbg !290

; <label>:47:                                     ; preds = %33
  %48 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !291
  %49 = getelementptr inbounds %struct._GValue, %struct._GValue* %48, i64 0, !dbg !293
  %50 = call i8* @g_value_peek_pointer(%struct._GValue* %49), !dbg !294
  store i8* %50, i8** %15, align 8, !dbg !295
  %51 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !296
  %52 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %51, i32 0, i32 2, !dbg !297
  %53 = load i8*, i8** %52, align 8, !dbg !297
  store i8* %53, i8** %16, align 8, !dbg !298
  br label %54

; <label>:54:                                     ; preds = %47, %40
  %55 = load i8*, i8** %12, align 8, !dbg !299
  %56 = icmp ne i8* %55, null, !dbg !299
  br i1 %56, label %57, label %59, !dbg !299

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %12, align 8, !dbg !300
  br label %63, !dbg !302

; <label>:59:                                     ; preds = %54
  %60 = load %struct._GCClosure*, %struct._GCClosure** %14, align 8, !dbg !303
  %61 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %60, i32 0, i32 1, !dbg !305
  %62 = load i8*, i8** %61, align 8, !dbg !305
  br label %63, !dbg !306

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i8* [ %58, %57 ], [ %62, %59 ], !dbg !307
  %65 = bitcast i8* %64 to i32 (i8*, i8*, i8*, i8*, i8*)*, !dbg !309
  store i32 (i8*, i8*, i8*, i8*, i8*)* %65, i32 (i8*, i8*, i8*, i8*, i8*)** %13, align 8, !dbg !310
  %66 = load i32 (i8*, i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*, i8*)** %13, align 8, !dbg !311
  %67 = load i8*, i8** %15, align 8, !dbg !312
  %68 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !313
  %69 = getelementptr inbounds %struct._GValue, %struct._GValue* %68, i64 1, !dbg !314
  %70 = getelementptr inbounds %struct._GValue, %struct._GValue* %69, i32 0, i32 1, !dbg !315
  %71 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %70, i64 0, i64 0, !dbg !316
  %72 = bitcast %union.anon* %71 to i8**, !dbg !317
  %73 = load i8*, i8** %72, align 8, !dbg !317
  %74 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !318
  %75 = getelementptr inbounds %struct._GValue, %struct._GValue* %74, i64 2, !dbg !319
  %76 = getelementptr inbounds %struct._GValue, %struct._GValue* %75, i32 0, i32 1, !dbg !320
  %77 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %76, i64 0, i64 0, !dbg !321
  %78 = bitcast %union.anon* %77 to i8**, !dbg !322
  %79 = load i8*, i8** %78, align 8, !dbg !322
  %80 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !323
  %81 = getelementptr inbounds %struct._GValue, %struct._GValue* %80, i64 3, !dbg !324
  %82 = getelementptr inbounds %struct._GValue, %struct._GValue* %81, i32 0, i32 1, !dbg !325
  %83 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %82, i64 0, i64 0, !dbg !326
  %84 = bitcast %union.anon* %83 to i8**, !dbg !327
  %85 = load i8*, i8** %84, align 8, !dbg !327
  %86 = load i8*, i8** %16, align 8, !dbg !328
  %87 = call i32 %66(i8* %67, i8* %73, i8* %79, i8* %85, i8* %86), !dbg !311
  store i32 %87, i32* %17, align 4, !dbg !329
  %88 = load %struct._GValue*, %struct._GValue** %8, align 8, !dbg !330
  %89 = load i32, i32* %17, align 4, !dbg !331
  call void @g_value_set_boolean(%struct._GValue* %88, i32 %89), !dbg !332
  br label %90, !dbg !333

; <label>:90:                                     ; preds = %63, %31, %24
  ret void, !dbg !334
}

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

; Function Attrs: nounwind uwtable
define void @g_cclosure_user_marshal_UINT__POINTER_POINTER_UINT_UINT_POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #0 !dbg !104 {
  %7 = alloca %struct._GClosure*, align 8
  %8 = alloca %struct._GValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GValue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)*, align 8
  %14 = alloca %struct._GCClosure*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct._GClosure* %0, %struct._GClosure** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GClosure** %7, metadata !335, metadata !112), !dbg !336
  store %struct._GValue* %1, %struct._GValue** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %8, metadata !337, metadata !112), !dbg !338
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !339, metadata !112), !dbg !340
  store %struct._GValue* %3, %struct._GValue** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %10, metadata !341, metadata !112), !dbg !342
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !343, metadata !112), !dbg !344
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !345, metadata !112), !dbg !346
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)** %13, metadata !347, metadata !112), !dbg !348
  call void @llvm.dbg.declare(metadata %struct._GCClosure** %14, metadata !349, metadata !112), !dbg !350
  %18 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !351
  %19 = bitcast %struct._GClosure* %18 to %struct._GCClosure*, !dbg !352
  store %struct._GCClosure* %19, %struct._GCClosure** %14, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata i8** %15, metadata !353, metadata !112), !dbg !354
  call void @llvm.dbg.declare(metadata i8** %16, metadata !355, metadata !112), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %17, metadata !357, metadata !112), !dbg !358
  br label %20, !dbg !359, !llvm.loop !360

; <label>:20:                                     ; preds = %6
  %21 = load %struct._GValue*, %struct._GValue** %8, align 8, !dbg !361
  %22 = icmp ne %struct._GValue* %21, null, !dbg !365
  br i1 %22, label %23, label %24, !dbg !361

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !366

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__func__.g_cclosure_user_marshal_UINT__POINTER_POINTER_UINT_UINT_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !369
  br label %102, !dbg !372

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !373

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !375, !llvm.loop !376

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %9, align 4, !dbg !377
  %29 = icmp eq i32 %28, 6, !dbg !381
  br i1 %29, label %30, label %31, !dbg !377

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !382

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__func__.g_cclosure_user_marshal_UINT__POINTER_POINTER_UINT_UINT_POINTER, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)), !dbg !385
  br label %102, !dbg !388

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !389

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !391
  %35 = bitcast %struct._GClosure* %34 to i32*, !dbg !393
  %36 = load volatile i32, i32* %35, align 8, !dbg !393
  %37 = lshr i32 %36, 29, !dbg !393
  %38 = and i32 %37, 1, !dbg !393
  %39 = icmp ne i32 %38, 0, !dbg !394
  br i1 %39, label %40, label %47, !dbg !395

; <label>:40:                                     ; preds = %33
  %41 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !396
  %42 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %41, i32 0, i32 2, !dbg !398
  %43 = load i8*, i8** %42, align 8, !dbg !398
  store i8* %43, i8** %15, align 8, !dbg !399
  %44 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !400
  %45 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 0, !dbg !401
  %46 = call i8* @g_value_peek_pointer(%struct._GValue* %45), !dbg !402
  store i8* %46, i8** %16, align 8, !dbg !403
  br label %54, !dbg !404

; <label>:47:                                     ; preds = %33
  %48 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !405
  %49 = getelementptr inbounds %struct._GValue, %struct._GValue* %48, i64 0, !dbg !407
  %50 = call i8* @g_value_peek_pointer(%struct._GValue* %49), !dbg !408
  store i8* %50, i8** %15, align 8, !dbg !409
  %51 = load %struct._GClosure*, %struct._GClosure** %7, align 8, !dbg !410
  %52 = getelementptr inbounds %struct._GClosure, %struct._GClosure* %51, i32 0, i32 2, !dbg !411
  %53 = load i8*, i8** %52, align 8, !dbg !411
  store i8* %53, i8** %16, align 8, !dbg !412
  br label %54

; <label>:54:                                     ; preds = %47, %40
  %55 = load i8*, i8** %12, align 8, !dbg !413
  %56 = icmp ne i8* %55, null, !dbg !413
  br i1 %56, label %57, label %59, !dbg !413

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %12, align 8, !dbg !414
  br label %63, !dbg !416

; <label>:59:                                     ; preds = %54
  %60 = load %struct._GCClosure*, %struct._GCClosure** %14, align 8, !dbg !417
  %61 = getelementptr inbounds %struct._GCClosure, %struct._GCClosure* %60, i32 0, i32 1, !dbg !419
  %62 = load i8*, i8** %61, align 8, !dbg !419
  br label %63, !dbg !420

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i8* [ %58, %57 ], [ %62, %59 ], !dbg !421
  %65 = bitcast i8* %64 to i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)*, !dbg !423
  store i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)* %65, i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)** %13, align 8, !dbg !424
  %66 = load i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)*, i32 (i8*, i8*, i8*, i32, i32, i8*, i8*)** %13, align 8, !dbg !425
  %67 = load i8*, i8** %15, align 8, !dbg !426
  %68 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !427
  %69 = getelementptr inbounds %struct._GValue, %struct._GValue* %68, i64 1, !dbg !428
  %70 = getelementptr inbounds %struct._GValue, %struct._GValue* %69, i32 0, i32 1, !dbg !429
  %71 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %70, i64 0, i64 0, !dbg !430
  %72 = bitcast %union.anon* %71 to i8**, !dbg !431
  %73 = load i8*, i8** %72, align 8, !dbg !431
  %74 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !432
  %75 = getelementptr inbounds %struct._GValue, %struct._GValue* %74, i64 2, !dbg !433
  %76 = getelementptr inbounds %struct._GValue, %struct._GValue* %75, i32 0, i32 1, !dbg !434
  %77 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %76, i64 0, i64 0, !dbg !435
  %78 = bitcast %union.anon* %77 to i8**, !dbg !436
  %79 = load i8*, i8** %78, align 8, !dbg !436
  %80 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !437
  %81 = getelementptr inbounds %struct._GValue, %struct._GValue* %80, i64 3, !dbg !438
  %82 = getelementptr inbounds %struct._GValue, %struct._GValue* %81, i32 0, i32 1, !dbg !439
  %83 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %82, i64 0, i64 0, !dbg !440
  %84 = bitcast %union.anon* %83 to i32*, !dbg !441
  %85 = load i32, i32* %84, align 8, !dbg !441
  %86 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !442
  %87 = getelementptr inbounds %struct._GValue, %struct._GValue* %86, i64 4, !dbg !443
  %88 = getelementptr inbounds %struct._GValue, %struct._GValue* %87, i32 0, i32 1, !dbg !444
  %89 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %88, i64 0, i64 0, !dbg !445
  %90 = bitcast %union.anon* %89 to i32*, !dbg !446
  %91 = load i32, i32* %90, align 8, !dbg !446
  %92 = load %struct._GValue*, %struct._GValue** %10, align 8, !dbg !447
  %93 = getelementptr inbounds %struct._GValue, %struct._GValue* %92, i64 5, !dbg !448
  %94 = getelementptr inbounds %struct._GValue, %struct._GValue* %93, i32 0, i32 1, !dbg !449
  %95 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %94, i64 0, i64 0, !dbg !450
  %96 = bitcast %union.anon* %95 to i8**, !dbg !451
  %97 = load i8*, i8** %96, align 8, !dbg !451
  %98 = load i8*, i8** %16, align 8, !dbg !452
  %99 = call i32 %66(i8* %67, i8* %73, i8* %79, i32 %85, i32 %91, i8* %97, i8* %98), !dbg !425
  store i32 %99, i32* %17, align 4, !dbg !453
  %100 = load %struct._GValue*, %struct._GValue** %8, align 8, !dbg !454
  %101 = load i32, i32* %17, align 4, !dbg !455
  call void @g_value_set_uint(%struct._GValue* %100, i32 %101), !dbg !456
  br label %102, !dbg !457

; <label>:102:                                    ; preds = %63, %31, %24
  ret void, !dbg !458
}

declare void @g_value_set_uint(%struct._GValue*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "vmtoolsd-svcSignals.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!2 = !{}
!3 = !{!4, !68, !86, !89, !31, !91, !98, !103}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCClosure", file: !6, line: 157, baseType: !7)
!6 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gclosure.h", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GCClosure", file: !6, line: 216, size: 320, align: 64, elements: !8)
!8 = !{!9, !85}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !7, file: !6, line: 218, baseType: !10, size: 256, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClosure", file: !6, line: 74, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GClosure", file: !6, line: 175, size: 256, align: 64, elements: !12)
!12 = !{!13, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !73, !74}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !11, file: !6, line: 178, baseType: !14, size: 15, align: 32, flags: DIFlagBitField, extraData: i64 0)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !16, line: 55, baseType: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!17 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "meta_marshal_nouse", scope: !11, file: !6, line: 181, baseType: !14, size: 1, align: 32, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n_guards", scope: !11, file: !6, line: 182, baseType: !14, size: 1, align: 32, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "n_fnotifiers", scope: !11, file: !6, line: 183, baseType: !14, size: 2, align: 32, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n_inotifiers", scope: !11, file: !6, line: 184, baseType: !14, size: 8, align: 32, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "in_inotify", scope: !11, file: !6, line: 185, baseType: !14, size: 1, align: 32, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "floating", scope: !11, file: !6, line: 186, baseType: !14, size: 1, align: 32, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "derivative_flag", scope: !11, file: !6, line: 188, baseType: !14, size: 1, align: 32, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "in_marshal", scope: !11, file: !6, line: 190, baseType: !14, size: 1, align: 32, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "is_invalid", scope: !11, file: !6, line: 191, baseType: !14, size: 1, align: 32, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "marshal", scope: !11, file: !6, line: 193, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32, !15, !71, !67, !67}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GValue", file: !34, line: 386, baseType: !35)
!34 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gtype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GValue", file: !36, line: 106, size: 192, align: 64, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gvalue.h", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!37 = !{!38, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !35, file: !36, line: 109, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "GType", file: !34, line: 382, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !41, line: 66, baseType: !42)
!41 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!42 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !36, line: 122, baseType: !44, size: 128, align: 64, offset: 64)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 64, elements: !69)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 112, size: 64, align: 64, elements: !46)
!46 = !{!47, !50, !51, !54, !56, !58, !60, !63, !66}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !45, file: !36, line: 113, baseType: !48, size: 32, align: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !16, line: 49, baseType: !49)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "v_uint", scope: !45, file: !36, line: 114, baseType: !15, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "v_long", scope: !45, file: !36, line: 115, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !16, line: 48, baseType: !53)
!53 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "v_ulong", scope: !45, file: !36, line: 116, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !16, line: 54, baseType: !42)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !45, file: !36, line: 117, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !41, line: 51, baseType: !53)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "v_uint64", scope: !45, file: !36, line: 118, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !41, line: 52, baseType: !42)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !45, file: !36, line: 119, baseType: !61, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfloat", file: !16, line: 57, baseType: !62)
!62 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "v_double", scope: !45, file: !36, line: 120, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !16, line: 58, baseType: !65)
!65 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "v_pointer", scope: !45, file: !36, line: 121, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !16, line: 77, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!69 = !{!70}
!70 = !DISubrange(count: 2)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !11, file: !6, line: 199, baseType: !67, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !11, file: !6, line: 201, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClosureNotifyData", file: !6, line: 75, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GClosureNotifyData", file: !6, line: 161, size: 128, align: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !77, file: !6, line: 163, baseType: !67, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !77, file: !6, line: 164, baseType: !81, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClosureNotify", file: !6, line: 95, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !67, !31}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !7, file: !6, line: 219, baseType: !67, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !16, line: 46, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMarshalFunc_POINTER__POINTER_BOOLEAN", scope: !93, file: !92, line: 61, baseType: !94)
!92 = !DIFile(filename: "svcSignals.c", directory: "/home/lichi/Desktop/open-vm-tools/line1395")
!93 = distinct !DISubprogram(name: "g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN", scope: !92, file: !92, line: 54, type: !29, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!67, !67, !67, !97, !67}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !16, line: 50, baseType: !48)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMarshalFunc_BOOLEAN__POINTER_STRING_STRING", scope: !99, file: !92, line: 102, baseType: !100)
!99 = distinct !DISubprogram(name: "g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING", scope: !92, file: !92, line: 95, type: !29, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!97, !67, !67, !67, !67, !67}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMarshalFunc_UINT__POINTER_POINTER_UINT_UINT_POINTER", scope: !104, file: !92, line: 145, baseType: !105)
!104 = distinct !DISubprogram(name: "g_cclosure_user_marshal_UINT__POINTER_POINTER_UINT_UINT_POINTER", scope: !92, file: !92, line: 138, type: !29, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!15, !67, !67, !67, !15, !15, !67, !67}
!108 = !{i32 2, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!111 = !DILocalVariable(name: "closure", arg: 1, scope: !93, file: !92, line: 54, type: !31)
!112 = !DIExpression()
!113 = !DILocation(line: 54, column: 61, scope: !93)
!114 = !DILocalVariable(name: "return_value", arg: 2, scope: !93, file: !92, line: 55, type: !32)
!115 = !DILocation(line: 55, column: 59, scope: !93)
!116 = !DILocalVariable(name: "n_param_values", arg: 3, scope: !93, file: !92, line: 56, type: !15)
!117 = !DILocation(line: 56, column: 57, scope: !93)
!118 = !DILocalVariable(name: "param_values", arg: 4, scope: !93, file: !92, line: 57, type: !71)
!119 = !DILocation(line: 57, column: 65, scope: !93)
!120 = !DILocalVariable(name: "invocation_hint", arg: 5, scope: !93, file: !92, line: 58, type: !67)
!121 = !DILocation(line: 58, column: 60, scope: !93)
!122 = !DILocalVariable(name: "marshal_data", arg: 6, scope: !93, file: !92, line: 59, type: !67)
!123 = !DILocation(line: 59, column: 60, scope: !93)
!124 = !DILocalVariable(name: "callback", scope: !93, file: !92, line: 65, type: !91)
!125 = !DILocation(line: 65, column: 41, scope: !93)
!126 = !DILocalVariable(name: "cc", scope: !93, file: !92, line: 66, type: !4)
!127 = !DILocation(line: 66, column: 14, scope: !93)
!128 = !DILocation(line: 66, column: 32, scope: !93)
!129 = !DILocation(line: 66, column: 19, scope: !93)
!130 = !DILocalVariable(name: "data1", scope: !93, file: !92, line: 67, type: !67)
!131 = !DILocation(line: 67, column: 12, scope: !93)
!132 = !DILocalVariable(name: "data2", scope: !93, file: !92, line: 67, type: !67)
!133 = !DILocation(line: 67, column: 19, scope: !93)
!134 = !DILocalVariable(name: "v_return", scope: !93, file: !92, line: 68, type: !67)
!135 = !DILocation(line: 68, column: 12, scope: !93)
!136 = !DILocation(line: 70, column: 3, scope: !93)
!137 = distinct !{!137, !136}
!138 = !DILocation(line: 70, column: 11, scope: !139)
!139 = !DILexicalBlockFile(scope: !140, file: !92, discriminator: 1)
!140 = distinct !DILexicalBlock(scope: !141, file: !92, line: 70, column: 11)
!141 = distinct !DILexicalBlock(scope: !93, file: !92, line: 70, column: 5)
!142 = !DILocation(line: 70, column: 24, scope: !139)
!143 = !DILocation(line: 70, column: 6, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !92, discriminator: 2)
!145 = distinct !DILexicalBlock(scope: !140, file: !92, line: 70, column: 4)
!146 = !DILocation(line: 70, column: 15, scope: !147)
!147 = !DILexicalBlockFile(scope: !148, file: !92, discriminator: 3)
!148 = distinct !DILexicalBlock(scope: !140, file: !92, line: 70, column: 13)
!149 = !DILocation(line: 70, column: 108, scope: !147)
!150 = !DILocation(line: 70, column: 119, scope: !151)
!151 = !DILexicalBlockFile(scope: !141, file: !92, discriminator: 4)
!152 = !DILocation(line: 71, column: 3, scope: !93)
!153 = distinct !{!153, !152}
!154 = !DILocation(line: 71, column: 11, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !92, discriminator: 1)
!156 = distinct !DILexicalBlock(scope: !157, file: !92, line: 71, column: 11)
!157 = distinct !DILexicalBlock(scope: !93, file: !92, line: 71, column: 5)
!158 = !DILocation(line: 71, column: 26, scope: !155)
!159 = !DILocation(line: 71, column: 34, scope: !160)
!160 = !DILexicalBlockFile(scope: !161, file: !92, discriminator: 2)
!161 = distinct !DILexicalBlock(scope: !156, file: !92, line: 71, column: 32)
!162 = !DILocation(line: 71, column: 43, scope: !163)
!163 = !DILexicalBlockFile(scope: !164, file: !92, discriminator: 3)
!164 = distinct !DILexicalBlock(scope: !156, file: !92, line: 71, column: 41)
!165 = !DILocation(line: 71, column: 135, scope: !163)
!166 = !DILocation(line: 71, column: 146, scope: !167)
!167 = !DILexicalBlockFile(scope: !157, file: !92, discriminator: 4)
!168 = !DILocation(line: 73, column: 22, scope: !169)
!169 = distinct !DILexicalBlock(scope: !93, file: !92, line: 73, column: 7)
!170 = !DILocation(line: 73, column: 33, scope: !169)
!171 = !DILocation(line: 73, column: 7, scope: !169)
!172 = !DILocation(line: 73, column: 7, scope: !93)
!173 = !DILocation(line: 75, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !92, line: 74, column: 5)
!175 = !DILocation(line: 75, column: 24, scope: !174)
!176 = !DILocation(line: 75, column: 13, scope: !174)
!177 = !DILocation(line: 76, column: 37, scope: !174)
!178 = !DILocation(line: 76, column: 50, scope: !174)
!179 = !DILocation(line: 76, column: 15, scope: !174)
!180 = !DILocation(line: 76, column: 13, scope: !174)
!181 = !DILocation(line: 77, column: 5, scope: !174)
!182 = !DILocation(line: 80, column: 37, scope: !183)
!183 = distinct !DILexicalBlock(scope: !169, file: !92, line: 79, column: 5)
!184 = !DILocation(line: 80, column: 50, scope: !183)
!185 = !DILocation(line: 80, column: 15, scope: !183)
!186 = !DILocation(line: 80, column: 13, scope: !183)
!187 = !DILocation(line: 81, column: 15, scope: !183)
!188 = !DILocation(line: 81, column: 24, scope: !183)
!189 = !DILocation(line: 81, column: 13, scope: !183)
!190 = !DILocation(line: 83, column: 55, scope: !93)
!191 = !DILocation(line: 83, column: 70, scope: !192)
!192 = !DILexicalBlockFile(scope: !93, file: !92, discriminator: 1)
!193 = !DILocation(line: 83, column: 55, scope: !192)
!194 = !DILocation(line: 83, column: 85, scope: !195)
!195 = !DILexicalBlockFile(scope: !93, file: !92, discriminator: 2)
!196 = !DILocation(line: 83, column: 89, scope: !195)
!197 = !DILocation(line: 83, column: 55, scope: !195)
!198 = !DILocation(line: 83, column: 55, scope: !199)
!199 = !DILexicalBlockFile(scope: !93, file: !92, discriminator: 3)
!200 = !DILocation(line: 83, column: 14, scope: !199)
!201 = !DILocation(line: 83, column: 12, scope: !199)
!202 = !DILocation(line: 85, column: 14, scope: !93)
!203 = !DILocation(line: 85, column: 24, scope: !93)
!204 = !DILocation(line: 86, column: 25, scope: !93)
!205 = !DILocation(line: 86, column: 38, scope: !93)
!206 = !DILocation(line: 86, column: 44, scope: !93)
!207 = !DILocation(line: 86, column: 24, scope: !93)
!208 = !DILocation(line: 86, column: 52, scope: !93)
!209 = !DILocation(line: 87, column: 25, scope: !93)
!210 = !DILocation(line: 87, column: 38, scope: !93)
!211 = !DILocation(line: 87, column: 44, scope: !93)
!212 = !DILocation(line: 87, column: 24, scope: !93)
!213 = !DILocation(line: 87, column: 52, scope: !93)
!214 = !DILocation(line: 88, column: 24, scope: !93)
!215 = !DILocation(line: 85, column: 12, scope: !93)
!216 = !DILocation(line: 90, column: 24, scope: !93)
!217 = !DILocation(line: 90, column: 38, scope: !93)
!218 = !DILocation(line: 90, column: 3, scope: !93)
!219 = !DILocation(line: 91, column: 1, scope: !93)
!220 = !DILocation(line: 91, column: 1, scope: !192)
!221 = !DILocalVariable(name: "closure", arg: 1, scope: !99, file: !92, line: 95, type: !31)
!222 = !DILocation(line: 95, column: 67, scope: !99)
!223 = !DILocalVariable(name: "return_value", arg: 2, scope: !99, file: !92, line: 96, type: !32)
!224 = !DILocation(line: 96, column: 65, scope: !99)
!225 = !DILocalVariable(name: "n_param_values", arg: 3, scope: !99, file: !92, line: 97, type: !15)
!226 = !DILocation(line: 97, column: 63, scope: !99)
!227 = !DILocalVariable(name: "param_values", arg: 4, scope: !99, file: !92, line: 98, type: !71)
!228 = !DILocation(line: 98, column: 71, scope: !99)
!229 = !DILocalVariable(name: "invocation_hint", arg: 5, scope: !99, file: !92, line: 99, type: !67)
!230 = !DILocation(line: 99, column: 66, scope: !99)
!231 = !DILocalVariable(name: "marshal_data", arg: 6, scope: !99, file: !92, line: 100, type: !67)
!232 = !DILocation(line: 100, column: 66, scope: !99)
!233 = !DILocalVariable(name: "callback", scope: !99, file: !92, line: 107, type: !98)
!234 = !DILocation(line: 107, column: 47, scope: !99)
!235 = !DILocalVariable(name: "cc", scope: !99, file: !92, line: 108, type: !4)
!236 = !DILocation(line: 108, column: 14, scope: !99)
!237 = !DILocation(line: 108, column: 32, scope: !99)
!238 = !DILocation(line: 108, column: 19, scope: !99)
!239 = !DILocalVariable(name: "data1", scope: !99, file: !92, line: 109, type: !67)
!240 = !DILocation(line: 109, column: 12, scope: !99)
!241 = !DILocalVariable(name: "data2", scope: !99, file: !92, line: 109, type: !67)
!242 = !DILocation(line: 109, column: 19, scope: !99)
!243 = !DILocalVariable(name: "v_return", scope: !99, file: !92, line: 110, type: !97)
!244 = !DILocation(line: 110, column: 12, scope: !99)
!245 = !DILocation(line: 112, column: 3, scope: !99)
!246 = distinct !{!246, !245}
!247 = !DILocation(line: 112, column: 11, scope: !248)
!248 = !DILexicalBlockFile(scope: !249, file: !92, discriminator: 1)
!249 = distinct !DILexicalBlock(scope: !250, file: !92, line: 112, column: 11)
!250 = distinct !DILexicalBlock(scope: !99, file: !92, line: 112, column: 5)
!251 = !DILocation(line: 112, column: 24, scope: !248)
!252 = !DILocation(line: 112, column: 6, scope: !253)
!253 = !DILexicalBlockFile(scope: !254, file: !92, discriminator: 2)
!254 = distinct !DILexicalBlock(scope: !249, file: !92, line: 112, column: 4)
!255 = !DILocation(line: 112, column: 15, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !92, discriminator: 3)
!257 = distinct !DILexicalBlock(scope: !249, file: !92, line: 112, column: 13)
!258 = !DILocation(line: 112, column: 108, scope: !256)
!259 = !DILocation(line: 112, column: 119, scope: !260)
!260 = !DILexicalBlockFile(scope: !250, file: !92, discriminator: 4)
!261 = !DILocation(line: 113, column: 3, scope: !99)
!262 = distinct !{!262, !261}
!263 = !DILocation(line: 113, column: 11, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !92, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !266, file: !92, line: 113, column: 11)
!266 = distinct !DILexicalBlock(scope: !99, file: !92, line: 113, column: 5)
!267 = !DILocation(line: 113, column: 26, scope: !264)
!268 = !DILocation(line: 113, column: 34, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !92, discriminator: 2)
!270 = distinct !DILexicalBlock(scope: !265, file: !92, line: 113, column: 32)
!271 = !DILocation(line: 113, column: 43, scope: !272)
!272 = !DILexicalBlockFile(scope: !273, file: !92, discriminator: 3)
!273 = distinct !DILexicalBlock(scope: !265, file: !92, line: 113, column: 41)
!274 = !DILocation(line: 113, column: 135, scope: !272)
!275 = !DILocation(line: 113, column: 146, scope: !276)
!276 = !DILexicalBlockFile(scope: !266, file: !92, discriminator: 4)
!277 = !DILocation(line: 115, column: 22, scope: !278)
!278 = distinct !DILexicalBlock(scope: !99, file: !92, line: 115, column: 7)
!279 = !DILocation(line: 115, column: 33, scope: !278)
!280 = !DILocation(line: 115, column: 7, scope: !278)
!281 = !DILocation(line: 115, column: 7, scope: !99)
!282 = !DILocation(line: 117, column: 15, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !92, line: 116, column: 5)
!284 = !DILocation(line: 117, column: 24, scope: !283)
!285 = !DILocation(line: 117, column: 13, scope: !283)
!286 = !DILocation(line: 118, column: 37, scope: !283)
!287 = !DILocation(line: 118, column: 50, scope: !283)
!288 = !DILocation(line: 118, column: 15, scope: !283)
!289 = !DILocation(line: 118, column: 13, scope: !283)
!290 = !DILocation(line: 119, column: 5, scope: !283)
!291 = !DILocation(line: 122, column: 37, scope: !292)
!292 = distinct !DILexicalBlock(scope: !278, file: !92, line: 121, column: 5)
!293 = !DILocation(line: 122, column: 50, scope: !292)
!294 = !DILocation(line: 122, column: 15, scope: !292)
!295 = !DILocation(line: 122, column: 13, scope: !292)
!296 = !DILocation(line: 123, column: 15, scope: !292)
!297 = !DILocation(line: 123, column: 24, scope: !292)
!298 = !DILocation(line: 123, column: 13, scope: !292)
!299 = !DILocation(line: 125, column: 61, scope: !99)
!300 = !DILocation(line: 125, column: 76, scope: !301)
!301 = !DILexicalBlockFile(scope: !99, file: !92, discriminator: 1)
!302 = !DILocation(line: 125, column: 61, scope: !301)
!303 = !DILocation(line: 125, column: 91, scope: !304)
!304 = !DILexicalBlockFile(scope: !99, file: !92, discriminator: 2)
!305 = !DILocation(line: 125, column: 95, scope: !304)
!306 = !DILocation(line: 125, column: 61, scope: !304)
!307 = !DILocation(line: 125, column: 61, scope: !308)
!308 = !DILexicalBlockFile(scope: !99, file: !92, discriminator: 3)
!309 = !DILocation(line: 125, column: 14, scope: !308)
!310 = !DILocation(line: 125, column: 12, scope: !308)
!311 = !DILocation(line: 127, column: 14, scope: !99)
!312 = !DILocation(line: 127, column: 24, scope: !99)
!313 = !DILocation(line: 128, column: 25, scope: !99)
!314 = !DILocation(line: 128, column: 38, scope: !99)
!315 = !DILocation(line: 128, column: 44, scope: !99)
!316 = !DILocation(line: 128, column: 24, scope: !99)
!317 = !DILocation(line: 128, column: 52, scope: !99)
!318 = !DILocation(line: 129, column: 25, scope: !99)
!319 = !DILocation(line: 129, column: 38, scope: !99)
!320 = !DILocation(line: 129, column: 44, scope: !99)
!321 = !DILocation(line: 129, column: 24, scope: !99)
!322 = !DILocation(line: 129, column: 52, scope: !99)
!323 = !DILocation(line: 130, column: 25, scope: !99)
!324 = !DILocation(line: 130, column: 38, scope: !99)
!325 = !DILocation(line: 130, column: 44, scope: !99)
!326 = !DILocation(line: 130, column: 24, scope: !99)
!327 = !DILocation(line: 130, column: 52, scope: !99)
!328 = !DILocation(line: 131, column: 24, scope: !99)
!329 = !DILocation(line: 127, column: 12, scope: !99)
!330 = !DILocation(line: 133, column: 24, scope: !99)
!331 = !DILocation(line: 133, column: 38, scope: !99)
!332 = !DILocation(line: 133, column: 3, scope: !99)
!333 = !DILocation(line: 134, column: 1, scope: !99)
!334 = !DILocation(line: 134, column: 1, scope: !301)
!335 = !DILocalVariable(name: "closure", arg: 1, scope: !104, file: !92, line: 138, type: !31)
!336 = !DILocation(line: 138, column: 76, scope: !104)
!337 = !DILocalVariable(name: "return_value", arg: 2, scope: !104, file: !92, line: 139, type: !32)
!338 = !DILocation(line: 139, column: 74, scope: !104)
!339 = !DILocalVariable(name: "n_param_values", arg: 3, scope: !104, file: !92, line: 140, type: !15)
!340 = !DILocation(line: 140, column: 72, scope: !104)
!341 = !DILocalVariable(name: "param_values", arg: 4, scope: !104, file: !92, line: 141, type: !71)
!342 = !DILocation(line: 141, column: 80, scope: !104)
!343 = !DILocalVariable(name: "invocation_hint", arg: 5, scope: !104, file: !92, line: 142, type: !67)
!344 = !DILocation(line: 142, column: 75, scope: !104)
!345 = !DILocalVariable(name: "marshal_data", arg: 6, scope: !104, file: !92, line: 143, type: !67)
!346 = !DILocation(line: 143, column: 75, scope: !104)
!347 = !DILocalVariable(name: "callback", scope: !104, file: !92, line: 152, type: !103)
!348 = !DILocation(line: 152, column: 56, scope: !104)
!349 = !DILocalVariable(name: "cc", scope: !104, file: !92, line: 153, type: !4)
!350 = !DILocation(line: 153, column: 14, scope: !104)
!351 = !DILocation(line: 153, column: 32, scope: !104)
!352 = !DILocation(line: 153, column: 19, scope: !104)
!353 = !DILocalVariable(name: "data1", scope: !104, file: !92, line: 154, type: !67)
!354 = !DILocation(line: 154, column: 12, scope: !104)
!355 = !DILocalVariable(name: "data2", scope: !104, file: !92, line: 154, type: !67)
!356 = !DILocation(line: 154, column: 19, scope: !104)
!357 = !DILocalVariable(name: "v_return", scope: !104, file: !92, line: 155, type: !15)
!358 = !DILocation(line: 155, column: 9, scope: !104)
!359 = !DILocation(line: 157, column: 3, scope: !104)
!360 = distinct !{!360, !359}
!361 = !DILocation(line: 157, column: 11, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !92, discriminator: 1)
!363 = distinct !DILexicalBlock(scope: !364, file: !92, line: 157, column: 11)
!364 = distinct !DILexicalBlock(scope: !104, file: !92, line: 157, column: 5)
!365 = !DILocation(line: 157, column: 24, scope: !362)
!366 = !DILocation(line: 157, column: 6, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !92, discriminator: 2)
!368 = distinct !DILexicalBlock(scope: !363, file: !92, line: 157, column: 4)
!369 = !DILocation(line: 157, column: 15, scope: !370)
!370 = !DILexicalBlockFile(scope: !371, file: !92, discriminator: 3)
!371 = distinct !DILexicalBlock(scope: !363, file: !92, line: 157, column: 13)
!372 = !DILocation(line: 157, column: 108, scope: !370)
!373 = !DILocation(line: 157, column: 119, scope: !374)
!374 = !DILexicalBlockFile(scope: !364, file: !92, discriminator: 4)
!375 = !DILocation(line: 158, column: 3, scope: !104)
!376 = distinct !{!376, !375}
!377 = !DILocation(line: 158, column: 11, scope: !378)
!378 = !DILexicalBlockFile(scope: !379, file: !92, discriminator: 1)
!379 = distinct !DILexicalBlock(scope: !380, file: !92, line: 158, column: 11)
!380 = distinct !DILexicalBlock(scope: !104, file: !92, line: 158, column: 5)
!381 = !DILocation(line: 158, column: 26, scope: !378)
!382 = !DILocation(line: 158, column: 34, scope: !383)
!383 = !DILexicalBlockFile(scope: !384, file: !92, discriminator: 2)
!384 = distinct !DILexicalBlock(scope: !379, file: !92, line: 158, column: 32)
!385 = !DILocation(line: 158, column: 43, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !92, discriminator: 3)
!387 = distinct !DILexicalBlock(scope: !379, file: !92, line: 158, column: 41)
!388 = !DILocation(line: 158, column: 135, scope: !386)
!389 = !DILocation(line: 158, column: 146, scope: !390)
!390 = !DILexicalBlockFile(scope: !380, file: !92, discriminator: 4)
!391 = !DILocation(line: 160, column: 22, scope: !392)
!392 = distinct !DILexicalBlock(scope: !104, file: !92, line: 160, column: 7)
!393 = !DILocation(line: 160, column: 33, scope: !392)
!394 = !DILocation(line: 160, column: 7, scope: !392)
!395 = !DILocation(line: 160, column: 7, scope: !104)
!396 = !DILocation(line: 162, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !92, line: 161, column: 5)
!398 = !DILocation(line: 162, column: 24, scope: !397)
!399 = !DILocation(line: 162, column: 13, scope: !397)
!400 = !DILocation(line: 163, column: 37, scope: !397)
!401 = !DILocation(line: 163, column: 50, scope: !397)
!402 = !DILocation(line: 163, column: 15, scope: !397)
!403 = !DILocation(line: 163, column: 13, scope: !397)
!404 = !DILocation(line: 164, column: 5, scope: !397)
!405 = !DILocation(line: 167, column: 37, scope: !406)
!406 = distinct !DILexicalBlock(scope: !392, file: !92, line: 166, column: 5)
!407 = !DILocation(line: 167, column: 50, scope: !406)
!408 = !DILocation(line: 167, column: 15, scope: !406)
!409 = !DILocation(line: 167, column: 13, scope: !406)
!410 = !DILocation(line: 168, column: 15, scope: !406)
!411 = !DILocation(line: 168, column: 24, scope: !406)
!412 = !DILocation(line: 168, column: 13, scope: !406)
!413 = !DILocation(line: 170, column: 70, scope: !104)
!414 = !DILocation(line: 170, column: 85, scope: !415)
!415 = !DILexicalBlockFile(scope: !104, file: !92, discriminator: 1)
!416 = !DILocation(line: 170, column: 70, scope: !415)
!417 = !DILocation(line: 170, column: 100, scope: !418)
!418 = !DILexicalBlockFile(scope: !104, file: !92, discriminator: 2)
!419 = !DILocation(line: 170, column: 104, scope: !418)
!420 = !DILocation(line: 170, column: 70, scope: !418)
!421 = !DILocation(line: 170, column: 70, scope: !422)
!422 = !DILexicalBlockFile(scope: !104, file: !92, discriminator: 3)
!423 = !DILocation(line: 170, column: 14, scope: !422)
!424 = !DILocation(line: 170, column: 12, scope: !422)
!425 = !DILocation(line: 172, column: 14, scope: !104)
!426 = !DILocation(line: 172, column: 24, scope: !104)
!427 = !DILocation(line: 173, column: 25, scope: !104)
!428 = !DILocation(line: 173, column: 38, scope: !104)
!429 = !DILocation(line: 173, column: 44, scope: !104)
!430 = !DILocation(line: 173, column: 24, scope: !104)
!431 = !DILocation(line: 173, column: 52, scope: !104)
!432 = !DILocation(line: 174, column: 25, scope: !104)
!433 = !DILocation(line: 174, column: 38, scope: !104)
!434 = !DILocation(line: 174, column: 44, scope: !104)
!435 = !DILocation(line: 174, column: 24, scope: !104)
!436 = !DILocation(line: 174, column: 52, scope: !104)
!437 = !DILocation(line: 175, column: 25, scope: !104)
!438 = !DILocation(line: 175, column: 38, scope: !104)
!439 = !DILocation(line: 175, column: 44, scope: !104)
!440 = !DILocation(line: 175, column: 24, scope: !104)
!441 = !DILocation(line: 175, column: 52, scope: !104)
!442 = !DILocation(line: 176, column: 25, scope: !104)
!443 = !DILocation(line: 176, column: 38, scope: !104)
!444 = !DILocation(line: 176, column: 44, scope: !104)
!445 = !DILocation(line: 176, column: 24, scope: !104)
!446 = !DILocation(line: 176, column: 52, scope: !104)
!447 = !DILocation(line: 177, column: 25, scope: !104)
!448 = !DILocation(line: 177, column: 38, scope: !104)
!449 = !DILocation(line: 177, column: 44, scope: !104)
!450 = !DILocation(line: 177, column: 24, scope: !104)
!451 = !DILocation(line: 177, column: 52, scope: !104)
!452 = !DILocation(line: 178, column: 24, scope: !104)
!453 = !DILocation(line: 172, column: 12, scope: !104)
!454 = !DILocation(line: 180, column: 21, scope: !104)
!455 = !DILocation(line: 180, column: 35, scope: !104)
!456 = !DILocation(line: 180, column: 3, scope: !104)
!457 = !DILocation(line: 181, column: 1, scope: !104)
!458 = !DILocation(line: 181, column: 1, scope: !415)
