; ModuleID = './line85-signals.o.i'
source_filename = "./line85-signals.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct.Signal = type { i32, i32, i32, i32, i32, i32, %struct._SignalHook* }
%struct._SignalHook = type { %struct._SignalHook*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@__func__.signal_add_full_id = private unnamed_addr constant [19 x i8] c"signal_add_full_id\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"signal_id >= 0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@signals = internal global %struct._GHashTable* null, align 8
@__func__.signal_remove_id = private unnamed_addr constant [17 x i8] c"signal_remove_id\00", align 1
@__func__.signal_remove_full = private unnamed_addr constant [19 x i8] c"signal_remove_full\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"signal != NULL\00", align 1
@__func__.signal_emit = private unnamed_addr constant [12 x i8] c"signal_emit\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"params >= 0 && params <= SIGNAL_MAX_ARGUMENTS\00", align 1
@__func__.signal_emit_id = private unnamed_addr constant [15 x i8] c"signal_emit_id\00", align 1
@current_emitted_signal = internal global %struct.Signal* null, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"signal_continue() : no signals are being emitted currently\00", align 1
@current_emitted_hook = internal global %struct._SignalHook* null, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"signal_stop() : no signals are being emitted currently\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"signal_stop_by_name() : unknown signal \22%s\22\00", align 1
@__func__.signal_get_emitted_id = private unnamed_addr constant [22 x i8] c"signal_get_emitted_id\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@__func__.signal_is_stopped = private unnamed_addr constant [18 x i8] c"signal_is_stopped\00", align 1
@__func__.signals_remove_module = private unnamed_addr constant [22 x i8] c"signals_remove_module\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"module != NULL\00", align 1
@signal_user_data = common global i8* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"signals.c\00", align 1
@__func__.signal_unref_full = private unnamed_addr constant [18 x i8] c"signal_unref_full\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"rec->refcount > 0\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"signal_unref(%s) : BUG - hook list wasn't empty\00", align 1
@__func__.signal_emit_real = private unnamed_addr constant [17 x i8] c"signal_emit_real\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"rec->stop_emit == 0\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"rec->continue_emit == 0\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"signal_free(%s) : signal still has %d references:\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c" - module '%s' function %p\00", align 1

; Function Attrs: nounwind uwtable
define void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !78 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !82, metadata !83), !dbg !84
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !85, metadata !83), !dbg !86
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !87, metadata !83), !dbg !88
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %3, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, metadata !89, metadata !83), !dbg !90
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !91, metadata !83), !dbg !92
  %11 = load i8*, i8** %6, align 8, !dbg !93
  %12 = load i32, i32* %7, align 4, !dbg !94
  %13 = load i8*, i8** %8, align 8, !dbg !95
  %14 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %13), !dbg !96
  %15 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, align 8, !dbg !97
  %16 = load i8*, i8** %10, align 8, !dbg !98
  call void @signal_add_full_id(i8* %11, i32 %12, i32 %14, void (i8*, i8*, i8*, i8*, i8*, i8*)* %15, i8* %16), !dbg !99
  ret void, !dbg !101
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @signal_add_full_id(i8*, i32, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !102 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.Signal*, align 8
  %12 = alloca %struct._SignalHook*, align 8
  %13 = alloca %struct._SignalHook**, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !105, metadata !83), !dbg !106
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !107, metadata !83), !dbg !108
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !109, metadata !83), !dbg !110
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %3, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, metadata !111, metadata !83), !dbg !112
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !113, metadata !83), !dbg !114
  call void @llvm.dbg.declare(metadata %struct.Signal** %11, metadata !115, metadata !83), !dbg !116
  call void @llvm.dbg.declare(metadata %struct._SignalHook** %12, metadata !117, metadata !83), !dbg !118
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %13, metadata !119, metadata !83), !dbg !121
  br label %14, !dbg !122, !llvm.loop !123

; <label>:14:                                     ; preds = %5
  %15 = load i32, i32* %8, align 4, !dbg !124
  %16 = icmp sge i32 %15, 0, !dbg !128
  br i1 %16, label %17, label %18, !dbg !124

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !129

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.signal_add_full_id, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !132
  br label %98, !dbg !135

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !136

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !138, !llvm.loop !139

; <label>:21:                                     ; preds = %20
  %22 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, align 8, !dbg !140
  %23 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %22, null, !dbg !144
  br i1 %23, label %24, label %25, !dbg !140

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !145

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.signal_add_full_id, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !148
  br label %98, !dbg !151

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !152

; <label>:27:                                     ; preds = %26
  %28 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !154
  %29 = load i32, i32* %8, align 4, !dbg !155
  %30 = sext i32 %29 to i64, !dbg !156
  %31 = inttoptr i64 %30 to i8*, !dbg !157
  %32 = call i8* @g_hash_table_lookup(%struct._GHashTable* %28, i8* %31), !dbg !158
  %33 = bitcast i8* %32 to %struct.Signal*, !dbg !158
  store %struct.Signal* %33, %struct.Signal** %11, align 8, !dbg !159
  %34 = load %struct.Signal*, %struct.Signal** %11, align 8, !dbg !160
  %35 = icmp eq %struct.Signal* %34, null, !dbg !162
  br i1 %35, label %36, label %49, !dbg !163

; <label>:36:                                     ; preds = %27
  %37 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !164
  %38 = bitcast i8* %37 to %struct.Signal*, !dbg !166
  store %struct.Signal* %38, %struct.Signal** %11, align 8, !dbg !167
  %39 = load i32, i32* %8, align 4, !dbg !168
  %40 = load %struct.Signal*, %struct.Signal** %11, align 8, !dbg !169
  %41 = getelementptr inbounds %struct.Signal, %struct.Signal* %40, i32 0, i32 0, !dbg !170
  store i32 %39, i32* %41, align 8, !dbg !171
  %42 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !172
  %43 = load i32, i32* %8, align 4, !dbg !173
  %44 = sext i32 %43 to i64, !dbg !174
  %45 = inttoptr i64 %44 to i8*, !dbg !175
  %46 = load %struct.Signal*, %struct.Signal** %11, align 8, !dbg !176
  %47 = bitcast %struct.Signal* %46 to i8*, !dbg !176
  %48 = call i32 @g_hash_table_insert(%struct._GHashTable* %42, i8* %45, i8* %47), !dbg !177
  br label %49, !dbg !178

; <label>:49:                                     ; preds = %36, %27
  %50 = call noalias i8* @g_malloc0_n(i64 1, i64 40), !dbg !179
  %51 = bitcast i8* %50 to %struct._SignalHook*, !dbg !180
  store %struct._SignalHook* %51, %struct._SignalHook** %12, align 8, !dbg !181
  %52 = load i32, i32* %7, align 4, !dbg !182
  %53 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !183
  %54 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %53, i32 0, i32 1, !dbg !184
  store i32 %52, i32* %54, align 8, !dbg !185
  %55 = load i8*, i8** %6, align 8, !dbg !186
  %56 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !187
  %57 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %56, i32 0, i32 2, !dbg !188
  store i8* %55, i8** %57, align 8, !dbg !189
  %58 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, align 8, !dbg !190
  %59 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !191
  %60 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %59, i32 0, i32 3, !dbg !192
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %58, void (i8*, i8*, i8*, i8*, i8*, i8*)** %60, align 8, !dbg !193
  %61 = load i8*, i8** %10, align 8, !dbg !194
  %62 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !195
  %63 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %62, i32 0, i32 4, !dbg !196
  store i8* %61, i8** %63, align 8, !dbg !197
  %64 = load %struct.Signal*, %struct.Signal** %11, align 8, !dbg !198
  %65 = getelementptr inbounds %struct.Signal, %struct.Signal* %64, i32 0, i32 6, !dbg !200
  store %struct._SignalHook** %65, %struct._SignalHook*** %13, align 8, !dbg !201
  br label %66, !dbg !202

; <label>:66:                                     ; preds = %89, %49
  %67 = load %struct._SignalHook**, %struct._SignalHook*** %13, align 8, !dbg !203
  %68 = load %struct._SignalHook*, %struct._SignalHook** %67, align 8, !dbg !207
  %69 = icmp eq %struct._SignalHook* %68, null, !dbg !208
  br i1 %69, label %70, label %73, !dbg !209

; <label>:70:                                     ; preds = %66
  %71 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !210
  %72 = load %struct._SignalHook**, %struct._SignalHook*** %13, align 8, !dbg !212
  store %struct._SignalHook* %71, %struct._SignalHook** %72, align 8, !dbg !213
  br label %93, !dbg !214

; <label>:73:                                     ; preds = %66
  %74 = load i32, i32* %7, align 4, !dbg !215
  %75 = load %struct._SignalHook**, %struct._SignalHook*** %13, align 8, !dbg !217
  %76 = load %struct._SignalHook*, %struct._SignalHook** %75, align 8, !dbg !218
  %77 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %76, i32 0, i32 1, !dbg !219
  %78 = load i32, i32* %77, align 8, !dbg !219
  %79 = icmp sle i32 %74, %78, !dbg !220
  br i1 %79, label %80, label %87, !dbg !221

; <label>:80:                                     ; preds = %73
  %81 = load %struct._SignalHook**, %struct._SignalHook*** %13, align 8, !dbg !222
  %82 = load %struct._SignalHook*, %struct._SignalHook** %81, align 8, !dbg !224
  %83 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !225
  %84 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %83, i32 0, i32 0, !dbg !226
  store %struct._SignalHook* %82, %struct._SignalHook** %84, align 8, !dbg !227
  %85 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !228
  %86 = load %struct._SignalHook**, %struct._SignalHook*** %13, align 8, !dbg !229
  store %struct._SignalHook* %85, %struct._SignalHook** %86, align 8, !dbg !230
  br label %93, !dbg !231

; <label>:87:                                     ; preds = %73
  br label %88

; <label>:88:                                     ; preds = %87
  br label %89, !dbg !232

; <label>:89:                                     ; preds = %88
  %90 = load %struct._SignalHook**, %struct._SignalHook*** %13, align 8, !dbg !233
  %91 = load %struct._SignalHook*, %struct._SignalHook** %90, align 8, !dbg !235
  %92 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %91, i32 0, i32 0, !dbg !236
  store %struct._SignalHook** %92, %struct._SignalHook*** %13, align 8, !dbg !237
  br label %66, !dbg !238, !llvm.loop !239

; <label>:93:                                     ; preds = %80, %70
  %94 = load %struct.Signal*, %struct.Signal** %11, align 8, !dbg !241
  %95 = getelementptr inbounds %struct.Signal, %struct.Signal* %94, i32 0, i32 1, !dbg !242
  %96 = load i32, i32* %95, align 4, !dbg !243
  %97 = add nsw i32 %96, 1, !dbg !243
  store i32 %97, i32* %95, align 4, !dbg !243
  br label %98, !dbg !244

; <label>:98:                                     ; preds = %93, %25, %18
  ret void, !dbg !245
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @signal_remove_id(i32, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !247 {
  %4 = alloca i32, align 4
  %5 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Signal*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !250, metadata !83), !dbg !251
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %1, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, metadata !252, metadata !83), !dbg !253
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !254, metadata !83), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.Signal** %7, metadata !256, metadata !83), !dbg !257
  br label %8, !dbg !258, !llvm.loop !259

; <label>:8:                                      ; preds = %3
  %9 = load i32, i32* %4, align 4, !dbg !260
  %10 = icmp sge i32 %9, 0, !dbg !264
  br i1 %10, label %11, label %12, !dbg !260

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !265

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.signal_remove_id, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !268
  br label %35, !dbg !271

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !272

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !274, !llvm.loop !275

; <label>:15:                                     ; preds = %14
  %16 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !276
  %17 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %16, null, !dbg !280
  br i1 %17, label %18, label %19, !dbg !276

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !281

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.signal_remove_id, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !284
  br label %35, !dbg !287

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !288

; <label>:21:                                     ; preds = %20
  %22 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !290
  %23 = load i32, i32* %4, align 4, !dbg !291
  %24 = sext i32 %23 to i64, !dbg !292
  %25 = inttoptr i64 %24 to i8*, !dbg !293
  %26 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* %25), !dbg !294
  %27 = bitcast i8* %26 to %struct.Signal*, !dbg !294
  store %struct.Signal* %27, %struct.Signal** %7, align 8, !dbg !295
  %28 = load %struct.Signal*, %struct.Signal** %7, align 8, !dbg !296
  %29 = icmp ne %struct.Signal* %28, null, !dbg !298
  br i1 %29, label %30, label %35, !dbg !299

; <label>:30:                                     ; preds = %21
  %31 = load %struct.Signal*, %struct.Signal** %7, align 8, !dbg !300
  %32 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !301
  %33 = load i8*, i8** %6, align 8, !dbg !302
  %34 = call i32 @signal_remove_func(%struct.Signal* %31, void (i8*, i8*, i8*, i8*, i8*, i8*)* %32, i8* %33), !dbg !303
  br label %35, !dbg !303

; <label>:35:                                     ; preds = %12, %19, %30, %21
  ret void, !dbg !304
}

; Function Attrs: nounwind uwtable
define internal i32 @signal_remove_func(%struct.Signal*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !305 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Signal*, align 8
  %6 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._SignalHook**, align 8
  store %struct.Signal* %0, %struct.Signal** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %5, metadata !308, metadata !83), !dbg !309
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %1, void (i8*, i8*, i8*, i8*, i8*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %6, metadata !310, metadata !83), !dbg !311
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !312, metadata !83), !dbg !313
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %8, metadata !314, metadata !83), !dbg !315
  %9 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !316
  %10 = getelementptr inbounds %struct.Signal, %struct.Signal* %9, i32 0, i32 6, !dbg !318
  store %struct._SignalHook** %10, %struct._SignalHook*** %8, align 8, !dbg !319
  br label %11, !dbg !320

; <label>:11:                                     ; preds = %47, %3
  %12 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !321
  %13 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !324
  %14 = icmp ne %struct._SignalHook* %13, null, !dbg !325
  br i1 %14, label %15, label %51, !dbg !326

; <label>:15:                                     ; preds = %11
  %16 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !327
  %17 = load %struct._SignalHook*, %struct._SignalHook** %16, align 8, !dbg !330
  %18 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %17, i32 0, i32 3, !dbg !331
  %19 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %18, align 8, !dbg !331
  %20 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %6, align 8, !dbg !332
  %21 = icmp eq void (i8*, i8*, i8*, i8*, i8*, i8*)* %19, %20, !dbg !333
  br i1 %21, label %22, label %46, !dbg !334

; <label>:22:                                     ; preds = %15
  %23 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !335
  %24 = load %struct._SignalHook*, %struct._SignalHook** %23, align 8, !dbg !337
  %25 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %24, i32 0, i32 4, !dbg !338
  %26 = load i8*, i8** %25, align 8, !dbg !338
  %27 = load i8*, i8** %7, align 8, !dbg !339
  %28 = icmp eq i8* %26, %27, !dbg !340
  br i1 %28, label %29, label %46, !dbg !341

; <label>:29:                                     ; preds = %22
  %30 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !342
  %31 = getelementptr inbounds %struct.Signal, %struct.Signal* %30, i32 0, i32 2, !dbg !345
  %32 = load i32, i32* %31, align 8, !dbg !345
  %33 = icmp ne i32 %32, 0, !dbg !342
  br i1 %33, label %34, label %42, !dbg !346

; <label>:34:                                     ; preds = %29
  %35 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !347
  %36 = load %struct._SignalHook*, %struct._SignalHook** %35, align 8, !dbg !349
  %37 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %36, i32 0, i32 3, !dbg !350
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* null, void (i8*, i8*, i8*, i8*, i8*, i8*)** %37, align 8, !dbg !351
  %38 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !352
  %39 = getelementptr inbounds %struct.Signal, %struct.Signal* %38, i32 0, i32 5, !dbg !353
  %40 = load i32, i32* %39, align 4, !dbg !354
  %41 = add nsw i32 %40, 1, !dbg !354
  store i32 %41, i32* %39, align 4, !dbg !354
  br label %45, !dbg !355

; <label>:42:                                     ; preds = %29
  %43 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !356
  %44 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !358
  call void @signal_remove_hook(%struct.Signal* %43, %struct._SignalHook** %44), !dbg !359
  br label %45

; <label>:45:                                     ; preds = %42, %34
  store i32 1, i32* %4, align 4, !dbg !360
  br label %52, !dbg !360

; <label>:46:                                     ; preds = %22, %15
  br label %47, !dbg !361

; <label>:47:                                     ; preds = %46
  %48 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !362
  %49 = load %struct._SignalHook*, %struct._SignalHook** %48, align 8, !dbg !364
  %50 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %49, i32 0, i32 0, !dbg !365
  store %struct._SignalHook** %50, %struct._SignalHook*** %8, align 8, !dbg !366
  br label %11, !dbg !367, !llvm.loop !368

; <label>:51:                                     ; preds = %11
  store i32 0, i32* %4, align 4, !dbg !370
  br label %52, !dbg !370

; <label>:52:                                     ; preds = %51, %45
  %53 = load i32, i32* %4, align 4, !dbg !371
  ret i32 %53, !dbg !371
}

; Function Attrs: nounwind uwtable
define void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !372 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !375, metadata !83), !dbg !376
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %1, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, metadata !377, metadata !83), !dbg !378
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !379, metadata !83), !dbg !380
  br label %7, !dbg !381, !llvm.loop !382

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !383
  %9 = icmp ne i8* %8, null, !dbg !387
  br i1 %9, label %10, label %11, !dbg !383

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !388

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.signal_remove_full, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !391
  br label %18, !dbg !394

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !395

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !397
  %15 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !398
  %16 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !399
  %17 = load i8*, i8** %6, align 8, !dbg !400
  call void @signal_remove_id(i32 %15, void (i8*, i8*, i8*, i8*, i8*, i8*)* %16, i8* %17), !dbg !401
  br label %18, !dbg !403

; <label>:18:                                     ; preds = %13, %11
  ret void, !dbg !404
}

; Function Attrs: nounwind uwtable
define i32 @signal_emit(i8*, i32, ...) #0 !dbg !405 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Signal*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !408, metadata !83), !dbg !409
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !410, metadata !83), !dbg !411
  call void @llvm.dbg.declare(metadata %struct.Signal** %6, metadata !412, metadata !83), !dbg !413
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !414, metadata !83), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %8, metadata !431, metadata !83), !dbg !432
  br label %9, !dbg !433, !llvm.loop !434

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !435
  %11 = icmp sge i32 %10, 0, !dbg !439
  br i1 %11, label %12, label %16, !dbg !440

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %5, align 4, !dbg !441
  %14 = icmp sle i32 %13, 6, !dbg !443
  br i1 %14, label %15, label %16, !dbg !444

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !445

; <label>:16:                                     ; preds = %12, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.signal_emit, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0)), !dbg !448
  store i32 0, i32* %3, align 4, !dbg !451
  br label %45, !dbg !451

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !452

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %4, align 8, !dbg !454
  %20 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %19), !dbg !455
  store i32 %20, i32* %8, align 4, !dbg !456
  %21 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !457
  %22 = load i32, i32* %8, align 4, !dbg !458
  %23 = sext i32 %22 to i64, !dbg !459
  %24 = inttoptr i64 %23 to i8*, !dbg !460
  %25 = call i8* @g_hash_table_lookup(%struct._GHashTable* %21, i8* %24), !dbg !461
  %26 = bitcast i8* %25 to %struct.Signal*, !dbg !461
  store %struct.Signal* %26, %struct.Signal** %6, align 8, !dbg !462
  %27 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !463
  %28 = icmp ne %struct.Signal* %27, null, !dbg !465
  br i1 %28, label %29, label %41, !dbg !466

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !467
  %31 = bitcast %struct.__va_list_tag* %30 to i8*, !dbg !467
  call void @llvm.va_start(i8* %31), !dbg !467
  %32 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !469
  %33 = load i32, i32* %5, align 4, !dbg !470
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !471
  %35 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !472
  %36 = getelementptr inbounds %struct.Signal, %struct.Signal* %35, i32 0, i32 6, !dbg !473
  %37 = load %struct._SignalHook*, %struct._SignalHook** %36, align 8, !dbg !473
  %38 = call i32 @signal_emit_real(%struct.Signal* %32, i32 %33, %struct.__va_list_tag* %34, %struct._SignalHook* %37), !dbg !474
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !475
  %40 = bitcast %struct.__va_list_tag* %39 to i8*, !dbg !475
  call void @llvm.va_end(i8* %40), !dbg !475
  br label %41, !dbg !476

; <label>:41:                                     ; preds = %29, %18
  %42 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !477
  %43 = icmp ne %struct.Signal* %42, null, !dbg !478
  %44 = zext i1 %43 to i32, !dbg !478
  store i32 %44, i32* %3, align 4, !dbg !479
  br label %45, !dbg !479

; <label>:45:                                     ; preds = %41, %16
  %46 = load i32, i32* %3, align 4, !dbg !480
  ret i32 %46, !dbg !480
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @signal_emit_real(%struct.Signal*, i32, %struct.__va_list_tag*, %struct._SignalHook*) #0 !dbg !481 {
  %5 = alloca %struct.Signal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca %struct._SignalHook*, align 8
  %9 = alloca [6 x i8*], align 16
  %10 = alloca %struct.Signal*, align 8
  %11 = alloca %struct._SignalHook*, align 8
  %12 = alloca %struct._SignalHook*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Signal* %0, %struct.Signal** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %5, metadata !485, metadata !83), !dbg !486
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !487, metadata !83), !dbg !488
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !489, metadata !83), !dbg !490
  store %struct._SignalHook* %3, %struct._SignalHook** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._SignalHook** %8, metadata !491, metadata !83), !dbg !492
  call void @llvm.dbg.declare(metadata [6 x i8*]* %9, metadata !493, metadata !83), !dbg !497
  call void @llvm.dbg.declare(metadata %struct.Signal** %10, metadata !498, metadata !83), !dbg !499
  call void @llvm.dbg.declare(metadata %struct._SignalHook** %11, metadata !500, metadata !83), !dbg !501
  call void @llvm.dbg.declare(metadata %struct._SignalHook** %12, metadata !502, metadata !83), !dbg !503
  call void @llvm.dbg.declare(metadata i32* %13, metadata !504, metadata !83), !dbg !505
  call void @llvm.dbg.declare(metadata i32* %14, metadata !506, metadata !83), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %15, metadata !508, metadata !83), !dbg !509
  call void @llvm.dbg.declare(metadata i32* %16, metadata !510, metadata !83), !dbg !511
  store i32 0, i32* %13, align 4, !dbg !512
  br label %17, !dbg !514

; <label>:17:                                     ; preds = %49, %4
  %18 = load i32, i32* %13, align 4, !dbg !515
  %19 = icmp slt i32 %18, 6, !dbg !518
  br i1 %19, label %20, label %52, !dbg !519

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %13, align 4, !dbg !520
  %22 = load i32, i32* %6, align 4, !dbg !521
  %23 = icmp sge i32 %21, %22, !dbg !522
  br i1 %23, label %24, label %25, !dbg !520

; <label>:24:                                     ; preds = %20
  br label %44, !dbg !523

; <label>:25:                                     ; preds = %20
  %26 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !524
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0, !dbg !524
  %28 = load i32, i32* %27, align 8, !dbg !524
  %29 = icmp ule i32 %28, 40, !dbg !524
  br i1 %29, label %30, label %36, !dbg !524

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3, !dbg !526
  %32 = load i8*, i8** %31, align 8, !dbg !526
  %33 = getelementptr i8, i8* %32, i32 %28, !dbg !526
  %34 = bitcast i8* %33 to i8**, !dbg !526
  %35 = add i32 %28, 8, !dbg !526
  store i32 %35, i32* %27, align 8, !dbg !526
  br label %41, !dbg !526

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2, !dbg !528
  %38 = load i8*, i8** %37, align 8, !dbg !528
  %39 = bitcast i8* %38 to i8**, !dbg !528
  %40 = getelementptr i8, i8* %38, i32 8, !dbg !528
  store i8* %40, i8** %37, align 8, !dbg !528
  br label %41, !dbg !528

; <label>:41:                                     ; preds = %36, %30
  %42 = phi i8** [ %34, %30 ], [ %39, %36 ], !dbg !530
  %43 = load i8*, i8** %42, align 8, !dbg !530
  br label %44, !dbg !532

; <label>:44:                                     ; preds = %41, %24
  %45 = phi i8* [ null, %24 ], [ %43, %41 ], !dbg !533
  %46 = load i32, i32* %13, align 4, !dbg !535
  %47 = sext i32 %46 to i64, !dbg !536
  %48 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 %47, !dbg !536
  store i8* %45, i8** %48, align 8, !dbg !537
  br label %49, !dbg !536

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %13, align 4, !dbg !538
  %51 = add nsw i32 %50, 1, !dbg !538
  store i32 %51, i32* %13, align 4, !dbg !538
  br label %17, !dbg !539, !llvm.loop !540

; <label>:52:                                     ; preds = %17
  %53 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !542
  %54 = getelementptr inbounds %struct.Signal, %struct.Signal* %53, i32 0, i32 3, !dbg !543
  %55 = load i32, i32* %54, align 4, !dbg !543
  store i32 %55, i32* %15, align 4, !dbg !544
  %56 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !545
  %57 = getelementptr inbounds %struct.Signal, %struct.Signal* %56, i32 0, i32 4, !dbg !546
  %58 = load i32, i32* %57, align 8, !dbg !546
  store i32 %58, i32* %16, align 4, !dbg !547
  %59 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !548
  %60 = getelementptr inbounds %struct.Signal, %struct.Signal* %59, i32 0, i32 1, !dbg !549
  %61 = load i32, i32* %60, align 4, !dbg !550
  %62 = add nsw i32 %61, 1, !dbg !550
  store i32 %62, i32* %60, align 4, !dbg !550
  store i32 0, i32* %14, align 4, !dbg !551
  %63 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !552
  %64 = getelementptr inbounds %struct.Signal, %struct.Signal* %63, i32 0, i32 2, !dbg !553
  %65 = load i32, i32* %64, align 8, !dbg !554
  %66 = add nsw i32 %65, 1, !dbg !554
  store i32 %66, i32* %64, align 8, !dbg !554
  %67 = load %struct.Signal*, %struct.Signal** @current_emitted_signal, align 8, !dbg !555
  store %struct.Signal* %67, %struct.Signal** %10, align 8, !dbg !556
  %68 = load %struct._SignalHook*, %struct._SignalHook** @current_emitted_hook, align 8, !dbg !557
  store %struct._SignalHook* %68, %struct._SignalHook** %12, align 8, !dbg !558
  %69 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !559
  store %struct.Signal* %69, %struct.Signal** @current_emitted_signal, align 8, !dbg !560
  %70 = load %struct._SignalHook*, %struct._SignalHook** %8, align 8, !dbg !561
  store %struct._SignalHook* %70, %struct._SignalHook** %11, align 8, !dbg !563
  br label %71, !dbg !564

; <label>:71:                                     ; preds = %122, %52
  %72 = load %struct._SignalHook*, %struct._SignalHook** %11, align 8, !dbg !565
  %73 = icmp ne %struct._SignalHook* %72, null, !dbg !568
  br i1 %73, label %74, label %126, !dbg !569

; <label>:74:                                     ; preds = %71
  %75 = load %struct._SignalHook*, %struct._SignalHook** %11, align 8, !dbg !570
  %76 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %75, i32 0, i32 3, !dbg !573
  %77 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %76, align 8, !dbg !573
  %78 = icmp eq void (i8*, i8*, i8*, i8*, i8*, i8*)* %77, null, !dbg !574
  br i1 %78, label %79, label %80, !dbg !575

; <label>:79:                                     ; preds = %74
  br label %122, !dbg !576

; <label>:80:                                     ; preds = %74
  %81 = load %struct._SignalHook*, %struct._SignalHook** %11, align 8, !dbg !577
  store %struct._SignalHook* %81, %struct._SignalHook** @current_emitted_hook, align 8, !dbg !578
  %82 = load %struct._SignalHook*, %struct._SignalHook** %11, align 8, !dbg !579
  %83 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %82, i32 0, i32 4, !dbg !580
  %84 = load i8*, i8** %83, align 8, !dbg !580
  store i8* %84, i8** @signal_user_data, align 8, !dbg !581
  %85 = load %struct._SignalHook*, %struct._SignalHook** %11, align 8, !dbg !582
  %86 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %85, i32 0, i32 3, !dbg !583
  %87 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %86, align 8, !dbg !583
  %88 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 0, !dbg !584
  %89 = load i8*, i8** %88, align 16, !dbg !584
  %90 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 1, !dbg !585
  %91 = load i8*, i8** %90, align 8, !dbg !585
  %92 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 2, !dbg !586
  %93 = load i8*, i8** %92, align 16, !dbg !586
  %94 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 3, !dbg !587
  %95 = load i8*, i8** %94, align 8, !dbg !587
  %96 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 4, !dbg !588
  %97 = load i8*, i8** %96, align 16, !dbg !588
  %98 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 5, !dbg !589
  %99 = load i8*, i8** %98, align 8, !dbg !589
  call void %87(i8* %89, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99), !dbg !582
  %100 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !590
  %101 = getelementptr inbounds %struct.Signal, %struct.Signal* %100, i32 0, i32 4, !dbg !592
  %102 = load i32, i32* %101, align 8, !dbg !592
  %103 = load i32, i32* %16, align 4, !dbg !593
  %104 = icmp ne i32 %102, %103, !dbg !594
  br i1 %104, label %105, label %110, !dbg !595

; <label>:105:                                    ; preds = %80
  %106 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !596
  %107 = getelementptr inbounds %struct.Signal, %struct.Signal* %106, i32 0, i32 4, !dbg !597
  %108 = load i32, i32* %107, align 8, !dbg !598
  %109 = add nsw i32 %108, -1, !dbg !598
  store i32 %109, i32* %107, align 8, !dbg !598
  br label %110, !dbg !596

; <label>:110:                                    ; preds = %105, %80
  %111 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !599
  %112 = getelementptr inbounds %struct.Signal, %struct.Signal* %111, i32 0, i32 3, !dbg !601
  %113 = load i32, i32* %112, align 4, !dbg !601
  %114 = load i32, i32* %15, align 4, !dbg !602
  %115 = icmp ne i32 %113, %114, !dbg !603
  br i1 %115, label %116, label %121, !dbg !604

; <label>:116:                                    ; preds = %110
  store i32 1, i32* %14, align 4, !dbg !605
  %117 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !607
  %118 = getelementptr inbounds %struct.Signal, %struct.Signal* %117, i32 0, i32 3, !dbg !608
  %119 = load i32, i32* %118, align 4, !dbg !609
  %120 = add nsw i32 %119, -1, !dbg !609
  store i32 %120, i32* %118, align 4, !dbg !609
  br label %126, !dbg !610

; <label>:121:                                    ; preds = %110
  br label %122, !dbg !611

; <label>:122:                                    ; preds = %121, %79
  %123 = load %struct._SignalHook*, %struct._SignalHook** %11, align 8, !dbg !612
  %124 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %123, i32 0, i32 0, !dbg !614
  %125 = load %struct._SignalHook*, %struct._SignalHook** %124, align 8, !dbg !614
  store %struct._SignalHook* %125, %struct._SignalHook** %11, align 8, !dbg !615
  br label %71, !dbg !616, !llvm.loop !617

; <label>:126:                                    ; preds = %116, %71
  %127 = load %struct.Signal*, %struct.Signal** %10, align 8, !dbg !619
  store %struct.Signal* %127, %struct.Signal** @current_emitted_signal, align 8, !dbg !620
  %128 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !621
  store %struct._SignalHook* %128, %struct._SignalHook** @current_emitted_hook, align 8, !dbg !622
  %129 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !623
  %130 = getelementptr inbounds %struct.Signal, %struct.Signal* %129, i32 0, i32 2, !dbg !624
  %131 = load i32, i32* %130, align 8, !dbg !625
  %132 = add nsw i32 %131, -1, !dbg !625
  store i32 %132, i32* %130, align 8, !dbg !625
  store i8* null, i8** @signal_user_data, align 8, !dbg !626
  %133 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !627
  %134 = getelementptr inbounds %struct.Signal, %struct.Signal* %133, i32 0, i32 2, !dbg !629
  %135 = load i32, i32* %134, align 8, !dbg !629
  %136 = icmp ne i32 %135, 0, !dbg !627
  br i1 %136, label %163, label %137, !dbg !630

; <label>:137:                                    ; preds = %126
  br label %138, !dbg !631, !llvm.loop !633

; <label>:138:                                    ; preds = %137
  %139 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !634
  %140 = getelementptr inbounds %struct.Signal, %struct.Signal* %139, i32 0, i32 3, !dbg !638
  %141 = load i32, i32* %140, align 4, !dbg !638
  %142 = icmp eq i32 %141, 0, !dbg !639
  br i1 %142, label %143, label %144, !dbg !634

; <label>:143:                                    ; preds = %138
  br label %145, !dbg !640

; <label>:144:                                    ; preds = %138
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.signal_emit_real, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !642
  unreachable, !dbg !642

; <label>:145:                                    ; preds = %143
  br label %146, !dbg !644

; <label>:146:                                    ; preds = %145
  br label %147, !dbg !646, !llvm.loop !647

; <label>:147:                                    ; preds = %146
  %148 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !648
  %149 = getelementptr inbounds %struct.Signal, %struct.Signal* %148, i32 0, i32 4, !dbg !652
  %150 = load i32, i32* %149, align 8, !dbg !652
  %151 = icmp eq i32 %150, 0, !dbg !653
  br i1 %151, label %152, label %153, !dbg !648

; <label>:152:                                    ; preds = %147
  br label %154, !dbg !654

; <label>:153:                                    ; preds = %147
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.signal_emit_real, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #6, !dbg !656
  unreachable, !dbg !656

; <label>:154:                                    ; preds = %152
  br label %155, !dbg !658

; <label>:155:                                    ; preds = %154
  %156 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !660
  %157 = getelementptr inbounds %struct.Signal, %struct.Signal* %156, i32 0, i32 5, !dbg !662
  %158 = load i32, i32* %157, align 4, !dbg !662
  %159 = icmp sgt i32 %158, 0, !dbg !663
  br i1 %159, label %160, label %162, !dbg !664

; <label>:160:                                    ; preds = %155
  %161 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !665
  call void @signal_hooks_clean(%struct.Signal* %161), !dbg !666
  br label %162, !dbg !666

; <label>:162:                                    ; preds = %160, %155
  br label %163, !dbg !667

; <label>:163:                                    ; preds = %162, %126
  %164 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !668
  %165 = call i32 @signal_unref_full(%struct.Signal* %164, i32 1), !dbg !669
  %166 = load i32, i32* %14, align 4, !dbg !670
  ret i32 %166, !dbg !671
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @signal_emit_id(i32, i32, ...) #0 !dbg !672 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Signal*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !675, metadata !83), !dbg !676
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !677, metadata !83), !dbg !678
  call void @llvm.dbg.declare(metadata %struct.Signal** %6, metadata !679, metadata !83), !dbg !680
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !681, metadata !83), !dbg !682
  br label %8, !dbg !683, !llvm.loop !684

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !685
  %10 = icmp sge i32 %9, 0, !dbg !689
  br i1 %10, label %11, label %12, !dbg !685

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !690

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.signal_emit_id, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !693
  store i32 0, i32* %3, align 4, !dbg !696
  br label %49, !dbg !696

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !697

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !699, !llvm.loop !700

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %5, align 4, !dbg !701
  %17 = icmp sge i32 %16, 0, !dbg !705
  br i1 %17, label %18, label %22, !dbg !706

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %5, align 4, !dbg !707
  %20 = icmp sle i32 %19, 6, !dbg !709
  br i1 %20, label %21, label %22, !dbg !710

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !711

; <label>:22:                                     ; preds = %18, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.signal_emit_id, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0)), !dbg !714
  store i32 0, i32* %3, align 4, !dbg !717
  br label %49, !dbg !717

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !718

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !720
  %26 = load i32, i32* %4, align 4, !dbg !721
  %27 = sext i32 %26 to i64, !dbg !722
  %28 = inttoptr i64 %27 to i8*, !dbg !723
  %29 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* %28), !dbg !724
  %30 = bitcast i8* %29 to %struct.Signal*, !dbg !724
  store %struct.Signal* %30, %struct.Signal** %6, align 8, !dbg !725
  %31 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !726
  %32 = icmp ne %struct.Signal* %31, null, !dbg !728
  br i1 %32, label %33, label %45, !dbg !729

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !730
  %35 = bitcast %struct.__va_list_tag* %34 to i8*, !dbg !730
  call void @llvm.va_start(i8* %35), !dbg !730
  %36 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !732
  %37 = load i32, i32* %5, align 4, !dbg !733
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !734
  %39 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !735
  %40 = getelementptr inbounds %struct.Signal, %struct.Signal* %39, i32 0, i32 6, !dbg !736
  %41 = load %struct._SignalHook*, %struct._SignalHook** %40, align 8, !dbg !736
  %42 = call i32 @signal_emit_real(%struct.Signal* %36, i32 %37, %struct.__va_list_tag* %38, %struct._SignalHook* %41), !dbg !737
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !738
  %44 = bitcast %struct.__va_list_tag* %43 to i8*, !dbg !738
  call void @llvm.va_end(i8* %44), !dbg !738
  br label %45, !dbg !739

; <label>:45:                                     ; preds = %33, %24
  %46 = load %struct.Signal*, %struct.Signal** %6, align 8, !dbg !740
  %47 = icmp ne %struct.Signal* %46, null, !dbg !741
  %48 = zext i1 %47 to i32, !dbg !741
  store i32 %48, i32* %3, align 4, !dbg !742
  br label %49, !dbg !742

; <label>:49:                                     ; preds = %45, %22, %12
  %50 = load i32, i32* %3, align 4, !dbg !743
  ret i32 %50, !dbg !743
}

; Function Attrs: nounwind uwtable
define void @signal_continue(i32, ...) #0 !dbg !744 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Signal*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !747, metadata !83), !dbg !748
  call void @llvm.dbg.declare(metadata %struct.Signal** %3, metadata !749, metadata !83), !dbg !750
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !751, metadata !83), !dbg !752
  %5 = load %struct.Signal*, %struct.Signal** @current_emitted_signal, align 8, !dbg !753
  store %struct.Signal* %5, %struct.Signal** %3, align 8, !dbg !754
  %6 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !755
  %7 = icmp eq %struct.Signal* %6, null, !dbg !757
  br i1 %7, label %16, label %8, !dbg !758

; <label>:8:                                      ; preds = %1
  %9 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !759
  %10 = getelementptr inbounds %struct.Signal, %struct.Signal* %9, i32 0, i32 2, !dbg !761
  %11 = load i32, i32* %10, align 8, !dbg !761
  %12 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !762
  %13 = getelementptr inbounds %struct.Signal, %struct.Signal* %12, i32 0, i32 4, !dbg !763
  %14 = load i32, i32* %13, align 8, !dbg !763
  %15 = icmp sle i32 %11, %14, !dbg !764
  br i1 %15, label %16, label %17, !dbg !765

; <label>:16:                                     ; preds = %8, %1
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0)), !dbg !766
  br label %46, !dbg !766

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !767
  %19 = bitcast %struct.__va_list_tag* %18 to i8*, !dbg !767
  call void @llvm.va_start(i8* %19), !dbg !767
  %20 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !769
  %21 = getelementptr inbounds %struct.Signal, %struct.Signal* %20, i32 0, i32 2, !dbg !771
  %22 = load i32, i32* %21, align 8, !dbg !771
  %23 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !772
  %24 = getelementptr inbounds %struct.Signal, %struct.Signal* %23, i32 0, i32 3, !dbg !773
  %25 = load i32, i32* %24, align 4, !dbg !773
  %26 = icmp sgt i32 %22, %25, !dbg !774
  br i1 %26, label %27, label %32, !dbg !775

; <label>:27:                                     ; preds = %17
  %28 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !776
  %29 = getelementptr inbounds %struct.Signal, %struct.Signal* %28, i32 0, i32 3, !dbg !777
  %30 = load i32, i32* %29, align 4, !dbg !778
  %31 = add nsw i32 %30, 1, !dbg !778
  store i32 %31, i32* %29, align 4, !dbg !778
  br label %32, !dbg !776

; <label>:32:                                     ; preds = %27, %17
  %33 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !779
  %34 = getelementptr inbounds %struct.Signal, %struct.Signal* %33, i32 0, i32 4, !dbg !780
  %35 = load i32, i32* %34, align 8, !dbg !781
  %36 = add nsw i32 %35, 1, !dbg !781
  store i32 %36, i32* %34, align 8, !dbg !781
  %37 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !782
  %38 = load i32, i32* %2, align 4, !dbg !783
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !784
  %40 = load %struct._SignalHook*, %struct._SignalHook** @current_emitted_hook, align 8, !dbg !785
  %41 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %40, i32 0, i32 0, !dbg !786
  %42 = load %struct._SignalHook*, %struct._SignalHook** %41, align 8, !dbg !786
  %43 = call i32 @signal_emit_real(%struct.Signal* %37, i32 %38, %struct.__va_list_tag* %39, %struct._SignalHook* %42), !dbg !787
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !788
  %45 = bitcast %struct.__va_list_tag* %44 to i8*, !dbg !788
  call void @llvm.va_end(i8* %45), !dbg !788
  br label %46

; <label>:46:                                     ; preds = %32, %16
  ret void, !dbg !789
}

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @signal_stop() #0 !dbg !790 {
  %1 = alloca %struct.Signal*, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %1, metadata !793, metadata !83), !dbg !794
  %2 = load %struct.Signal*, %struct.Signal** @current_emitted_signal, align 8, !dbg !795
  store %struct.Signal* %2, %struct.Signal** %1, align 8, !dbg !796
  %3 = load %struct.Signal*, %struct.Signal** %1, align 8, !dbg !797
  %4 = icmp eq %struct.Signal* %3, null, !dbg !799
  br i1 %4, label %5, label %6, !dbg !800

; <label>:5:                                      ; preds = %0
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0)), !dbg !801
  br label %20, !dbg !801

; <label>:6:                                      ; preds = %0
  %7 = load %struct.Signal*, %struct.Signal** %1, align 8, !dbg !802
  %8 = getelementptr inbounds %struct.Signal, %struct.Signal* %7, i32 0, i32 2, !dbg !804
  %9 = load i32, i32* %8, align 8, !dbg !804
  %10 = load %struct.Signal*, %struct.Signal** %1, align 8, !dbg !805
  %11 = getelementptr inbounds %struct.Signal, %struct.Signal* %10, i32 0, i32 3, !dbg !806
  %12 = load i32, i32* %11, align 4, !dbg !806
  %13 = icmp sgt i32 %9, %12, !dbg !807
  br i1 %13, label %14, label %19, !dbg !808

; <label>:14:                                     ; preds = %6
  %15 = load %struct.Signal*, %struct.Signal** %1, align 8, !dbg !809
  %16 = getelementptr inbounds %struct.Signal, %struct.Signal* %15, i32 0, i32 3, !dbg !810
  %17 = load i32, i32* %16, align 4, !dbg !811
  %18 = add nsw i32 %17, 1, !dbg !811
  store i32 %18, i32* %16, align 4, !dbg !811
  br label %19, !dbg !809

; <label>:19:                                     ; preds = %14, %6
  br label %20

; <label>:20:                                     ; preds = %19, %5
  ret void, !dbg !812
}

; Function Attrs: nounwind uwtable
define void @signal_stop_by_name(i8*) #0 !dbg !813 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Signal*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !816, metadata !83), !dbg !817
  call void @llvm.dbg.declare(metadata %struct.Signal** %3, metadata !818, metadata !83), !dbg !819
  call void @llvm.dbg.declare(metadata i32* %4, metadata !820, metadata !83), !dbg !821
  %5 = load i8*, i8** %2, align 8, !dbg !822
  %6 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %5), !dbg !823
  store i32 %6, i32* %4, align 4, !dbg !824
  %7 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !825
  %8 = load i32, i32* %4, align 4, !dbg !826
  %9 = sext i32 %8 to i64, !dbg !827
  %10 = inttoptr i64 %9 to i8*, !dbg !828
  %11 = call i8* @g_hash_table_lookup(%struct._GHashTable* %7, i8* %10), !dbg !829
  %12 = bitcast i8* %11 to %struct.Signal*, !dbg !829
  store %struct.Signal* %12, %struct.Signal** %3, align 8, !dbg !830
  %13 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !831
  %14 = icmp eq %struct.Signal* %13, null, !dbg !833
  br i1 %14, label %15, label %17, !dbg !834

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %2, align 8, !dbg !835
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* %16), !dbg !836
  br label %31, !dbg !836

; <label>:17:                                     ; preds = %1
  %18 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !837
  %19 = getelementptr inbounds %struct.Signal, %struct.Signal* %18, i32 0, i32 2, !dbg !839
  %20 = load i32, i32* %19, align 8, !dbg !839
  %21 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !840
  %22 = getelementptr inbounds %struct.Signal, %struct.Signal* %21, i32 0, i32 3, !dbg !841
  %23 = load i32, i32* %22, align 4, !dbg !841
  %24 = icmp sgt i32 %20, %23, !dbg !842
  br i1 %24, label %25, label %30, !dbg !843

; <label>:25:                                     ; preds = %17
  %26 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !844
  %27 = getelementptr inbounds %struct.Signal, %struct.Signal* %26, i32 0, i32 3, !dbg !845
  %28 = load i32, i32* %27, align 4, !dbg !846
  %29 = add nsw i32 %28, 1, !dbg !846
  store i32 %29, i32* %27, align 4, !dbg !846
  br label %30, !dbg !844

; <label>:30:                                     ; preds = %25, %17
  br label %31

; <label>:31:                                     ; preds = %30, %15
  ret void, !dbg !847
}

; Function Attrs: nounwind uwtable
define i8* @signal_get_emitted() #0 !dbg !848 {
  %1 = call i32 @signal_get_emitted_id(), !dbg !851
  %2 = call i8* @module_find_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %1), !dbg !852
  ret i8* %2, !dbg !854
}

declare i8* @module_find_id_str(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @signal_get_emitted_id() #0 !dbg !855 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Signal*, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %2, metadata !858, metadata !83), !dbg !859
  %3 = load %struct.Signal*, %struct.Signal** @current_emitted_signal, align 8, !dbg !860
  store %struct.Signal* %3, %struct.Signal** %2, align 8, !dbg !861
  br label %4, !dbg !862, !llvm.loop !863

; <label>:4:                                      ; preds = %0
  %5 = load %struct.Signal*, %struct.Signal** %2, align 8, !dbg !864
  %6 = icmp ne %struct.Signal* %5, null, !dbg !868
  br i1 %6, label %7, label %8, !dbg !864

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !869

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.signal_get_emitted_id, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !872
  store i32 -1, i32* %1, align 4, !dbg !875
  br label %14, !dbg !875

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !876

; <label>:10:                                     ; preds = %9
  %11 = load %struct.Signal*, %struct.Signal** %2, align 8, !dbg !878
  %12 = getelementptr inbounds %struct.Signal, %struct.Signal* %11, i32 0, i32 0, !dbg !879
  %13 = load i32, i32* %12, align 8, !dbg !879
  store i32 %13, i32* %1, align 4, !dbg !880
  br label %14, !dbg !880

; <label>:14:                                     ; preds = %10, %8
  %15 = load i32, i32* %1, align 4, !dbg !881
  ret i32 %15, !dbg !881
}

; Function Attrs: nounwind uwtable
define i32 @signal_is_stopped(i32) #0 !dbg !882 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.Signal*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !885, metadata !83), !dbg !886
  call void @llvm.dbg.declare(metadata %struct.Signal** %4, metadata !887, metadata !83), !dbg !888
  %5 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !889
  %6 = load i32, i32* %3, align 4, !dbg !890
  %7 = sext i32 %6 to i64, !dbg !891
  %8 = inttoptr i64 %7 to i8*, !dbg !892
  %9 = call i8* @g_hash_table_lookup(%struct._GHashTable* %5, i8* %8), !dbg !893
  %10 = bitcast i8* %9 to %struct.Signal*, !dbg !893
  store %struct.Signal* %10, %struct.Signal** %4, align 8, !dbg !894
  br label %11, !dbg !895, !llvm.loop !896

; <label>:11:                                     ; preds = %1
  %12 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !897
  %13 = icmp ne %struct.Signal* %12, null, !dbg !901
  br i1 %13, label %14, label %15, !dbg !897

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !902

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.signal_is_stopped, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !905
  store i32 0, i32* %2, align 4, !dbg !908
  br label %26, !dbg !908

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !909

; <label>:17:                                     ; preds = %16
  %18 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !911
  %19 = getelementptr inbounds %struct.Signal, %struct.Signal* %18, i32 0, i32 2, !dbg !912
  %20 = load i32, i32* %19, align 8, !dbg !912
  %21 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !913
  %22 = getelementptr inbounds %struct.Signal, %struct.Signal* %21, i32 0, i32 3, !dbg !914
  %23 = load i32, i32* %22, align 4, !dbg !914
  %24 = icmp sle i32 %20, %23, !dbg !915
  %25 = zext i1 %24 to i32, !dbg !915
  store i32 %25, i32* %2, align 4, !dbg !916
  br label %26, !dbg !916

; <label>:26:                                     ; preds = %17, %15
  %27 = load i32, i32* %2, align 4, !dbg !917
  ret i32 %27, !dbg !917
}

; Function Attrs: nounwind uwtable
define void @signals_remove_module(i8*) #0 !dbg !918 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !919, metadata !83), !dbg !920
  br label %3, !dbg !921, !llvm.loop !922

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !923
  %5 = icmp ne i8* %4, null, !dbg !927
  br i1 %5, label %6, label %7, !dbg !923

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !928

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.signals_remove_module, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)), !dbg !931
  br label %15, !dbg !934

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !935

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !937
  call void @g_hash_table_foreach(%struct._GHashTable* %10, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.Signal*)* @signal_hash_ref to void (i8*, i8*, i8*)*), i8* null), !dbg !938
  %11 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !939
  %12 = load i8*, i8** %2, align 8, !dbg !940
  call void @g_hash_table_foreach(%struct._GHashTable* %11, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.Signal*, i8*)* @signal_remove_module to void (i8*, i8*, i8*)*), i8* %12), !dbg !941
  %13 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !942
  %14 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %13, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.Signal*)* @signal_hash_unref to i32 (i8*, i8*, i8*)*), i8* null), !dbg !943
  br label %15, !dbg !944

; <label>:15:                                     ; preds = %9, %7
  ret void, !dbg !945
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_hash_ref(i8*, %struct.Signal*) #0 !dbg !947 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Signal*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !950, metadata !83), !dbg !951
  store %struct.Signal* %1, %struct.Signal** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %4, metadata !952, metadata !83), !dbg !953
  %5 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !954
  %6 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 1, !dbg !955
  %7 = load i32, i32* %6, align 4, !dbg !956
  %8 = add nsw i32 %7, 1, !dbg !956
  store i32 %8, i32* %6, align 4, !dbg !956
  ret void, !dbg !957
}

; Function Attrs: nounwind uwtable
define internal void @signal_remove_module(i8*, %struct.Signal*, i8*) #0 !dbg !958 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Signal*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._SignalHook**, align 8
  %8 = alloca %struct._SignalHook**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !961, metadata !83), !dbg !962
  store %struct.Signal* %1, %struct.Signal** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %5, metadata !963, metadata !83), !dbg !964
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !965, metadata !83), !dbg !966
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %7, metadata !967, metadata !83), !dbg !968
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %8, metadata !969, metadata !83), !dbg !970
  %9 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !971
  %10 = getelementptr inbounds %struct.Signal, %struct.Signal* %9, i32 0, i32 6, !dbg !973
  store %struct._SignalHook** %10, %struct._SignalHook*** %7, align 8, !dbg !974
  br label %11, !dbg !975

; <label>:11:                                     ; preds = %31, %3
  %12 = load %struct._SignalHook**, %struct._SignalHook*** %7, align 8, !dbg !976
  %13 = load %struct._SignalHook*, %struct._SignalHook** %12, align 8, !dbg !979
  %14 = icmp ne %struct._SignalHook* %13, null, !dbg !980
  br i1 %14, label %15, label %33, !dbg !981

; <label>:15:                                     ; preds = %11
  %16 = load %struct._SignalHook**, %struct._SignalHook*** %7, align 8, !dbg !982
  %17 = load %struct._SignalHook*, %struct._SignalHook** %16, align 8, !dbg !984
  %18 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %17, i32 0, i32 0, !dbg !985
  store %struct._SignalHook** %18, %struct._SignalHook*** %8, align 8, !dbg !986
  %19 = load %struct._SignalHook**, %struct._SignalHook*** %7, align 8, !dbg !987
  %20 = load %struct._SignalHook*, %struct._SignalHook** %19, align 8, !dbg !989
  %21 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %20, i32 0, i32 2, !dbg !990
  %22 = load i8*, i8** %21, align 8, !dbg !990
  %23 = load i8*, i8** %6, align 8, !dbg !991
  %24 = call i32 @strcasecmp(i8* %22, i8* %23) #7, !dbg !992
  %25 = icmp eq i32 %24, 0, !dbg !993
  br i1 %25, label %26, label %30, !dbg !994

; <label>:26:                                     ; preds = %15
  %27 = load %struct._SignalHook**, %struct._SignalHook*** %7, align 8, !dbg !995
  store %struct._SignalHook** %27, %struct._SignalHook*** %8, align 8, !dbg !997
  %28 = load %struct.Signal*, %struct.Signal** %5, align 8, !dbg !998
  %29 = load %struct._SignalHook**, %struct._SignalHook*** %7, align 8, !dbg !999
  call void @signal_remove_hook(%struct.Signal* %28, %struct._SignalHook** %29), !dbg !1000
  br label %30, !dbg !1001

; <label>:30:                                     ; preds = %26, %15
  br label %31, !dbg !1002

; <label>:31:                                     ; preds = %30
  %32 = load %struct._SignalHook**, %struct._SignalHook*** %8, align 8, !dbg !1003
  store %struct._SignalHook** %32, %struct._SignalHook*** %7, align 8, !dbg !1005
  br label %11, !dbg !1006, !llvm.loop !1007

; <label>:33:                                     ; preds = %11
  ret void, !dbg !1009
}

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @signal_hash_unref(i8*, %struct.Signal*) #0 !dbg !1010 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Signal*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1013, metadata !83), !dbg !1014
  store %struct.Signal* %1, %struct.Signal** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %4, metadata !1015, metadata !83), !dbg !1016
  %5 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1017
  %6 = call i32 @signal_unref_full(%struct.Signal* %5, i32 0), !dbg !1018
  %7 = icmp ne i32 %6, 0, !dbg !1019
  %8 = xor i1 %7, true, !dbg !1019
  %9 = zext i1 %8 to i32, !dbg !1019
  ret i32 %9, !dbg !1020
}

; Function Attrs: nounwind uwtable
define void @signals_init() #0 !dbg !1021 {
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* null, i32 (i8*, i8*)* null), !dbg !1022
  store %struct._GHashTable* %1, %struct._GHashTable** @signals, align 8, !dbg !1023
  ret void, !dbg !1024
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @signals_deinit() #0 !dbg !1025 {
  %1 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !1026
  call void @g_hash_table_foreach(%struct._GHashTable* %1, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.Signal*)* @signal_hash_ref to void (i8*, i8*, i8*)*), i8* null), !dbg !1027
  %2 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !1028
  call void @g_hash_table_foreach(%struct._GHashTable* %2, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.Signal*)* @signal_free to void (i8*, i8*, i8*)*), i8* null), !dbg !1029
  %3 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !1030
  %4 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %3, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.Signal*)* @signal_hash_unref to i32 (i8*, i8*, i8*)*), i8* null), !dbg !1031
  %5 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !1032
  call void @g_hash_table_destroy(%struct._GHashTable* %5), !dbg !1033
  call void @module_uniq_destroy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)), !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: nounwind uwtable
define internal void @signal_free(i8*, %struct.Signal*) #0 !dbg !1036 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Signal*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1037, metadata !83), !dbg !1038
  store %struct.Signal* %1, %struct.Signal** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %4, metadata !1039, metadata !83), !dbg !1040
  %5 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1041
  %6 = getelementptr inbounds %struct.Signal, %struct.Signal* %5, i32 0, i32 0, !dbg !1042
  %7 = load i32, i32* %6, align 8, !dbg !1042
  %8 = call i8* @module_find_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %7), !dbg !1043
  %9 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1044
  %10 = getelementptr inbounds %struct.Signal, %struct.Signal* %9, i32 0, i32 1, !dbg !1045
  %11 = load i32, i32* %10, align 4, !dbg !1045
  %12 = sub nsw i32 %11, 1, !dbg !1046
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i8* %8, i32 %12), !dbg !1047
  br label %13, !dbg !1049

; <label>:13:                                     ; preds = %18, %2
  %14 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1050
  %15 = getelementptr inbounds %struct.Signal, %struct.Signal* %14, i32 0, i32 6, !dbg !1051
  %16 = load %struct._SignalHook*, %struct._SignalHook** %15, align 8, !dbg !1051
  %17 = icmp ne %struct._SignalHook* %16, null, !dbg !1052
  br i1 %17, label %18, label %32, !dbg !1053

; <label>:18:                                     ; preds = %13
  %19 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1054
  %20 = getelementptr inbounds %struct.Signal, %struct.Signal* %19, i32 0, i32 6, !dbg !1056
  %21 = load %struct._SignalHook*, %struct._SignalHook** %20, align 8, !dbg !1056
  %22 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %21, i32 0, i32 2, !dbg !1057
  %23 = load i8*, i8** %22, align 8, !dbg !1057
  %24 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1058
  %25 = getelementptr inbounds %struct.Signal, %struct.Signal* %24, i32 0, i32 6, !dbg !1059
  %26 = load %struct._SignalHook*, %struct._SignalHook** %25, align 8, !dbg !1059
  %27 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %26, i32 0, i32 3, !dbg !1060
  %28 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %27, align 8, !dbg !1060
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i8* %23, void (i8*, i8*, i8*, i8*, i8*, i8*)* %28), !dbg !1061
  %29 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1062
  %30 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1063
  %31 = getelementptr inbounds %struct.Signal, %struct.Signal* %30, i32 0, i32 6, !dbg !1064
  call void @signal_remove_hook(%struct.Signal* %29, %struct._SignalHook** %31), !dbg !1065
  br label %13, !dbg !1066, !llvm.loop !1068

; <label>:32:                                     ; preds = %13
  ret void, !dbg !1069
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @module_uniq_destroy(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_remove_hook(%struct.Signal*, %struct._SignalHook**) #0 !dbg !1070 {
  %3 = alloca %struct.Signal*, align 8
  %4 = alloca %struct._SignalHook**, align 8
  %5 = alloca %struct._SignalHook*, align 8
  store %struct.Signal* %0, %struct.Signal** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %3, metadata !1073, metadata !83), !dbg !1074
  store %struct._SignalHook** %1, %struct._SignalHook*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %4, metadata !1075, metadata !83), !dbg !1076
  call void @llvm.dbg.declare(metadata %struct._SignalHook** %5, metadata !1077, metadata !83), !dbg !1078
  %6 = load %struct._SignalHook**, %struct._SignalHook*** %4, align 8, !dbg !1079
  %7 = load %struct._SignalHook*, %struct._SignalHook** %6, align 8, !dbg !1080
  store %struct._SignalHook* %7, %struct._SignalHook** %5, align 8, !dbg !1081
  %8 = load %struct._SignalHook*, %struct._SignalHook** %5, align 8, !dbg !1082
  %9 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %8, i32 0, i32 0, !dbg !1083
  %10 = load %struct._SignalHook*, %struct._SignalHook** %9, align 8, !dbg !1083
  %11 = load %struct._SignalHook**, %struct._SignalHook*** %4, align 8, !dbg !1084
  store %struct._SignalHook* %10, %struct._SignalHook** %11, align 8, !dbg !1085
  %12 = load %struct._SignalHook*, %struct._SignalHook** %5, align 8, !dbg !1086
  %13 = bitcast %struct._SignalHook* %12 to i8*, !dbg !1086
  call void @g_free(i8* %13), !dbg !1087
  %14 = load %struct.Signal*, %struct.Signal** %3, align 8, !dbg !1088
  %15 = call i32 @signal_unref_full(%struct.Signal* %14, i32 1), !dbg !1089
  ret void, !dbg !1090
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @signal_unref_full(%struct.Signal*, i32) #0 !dbg !1091 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Signal*, align 8
  %5 = alloca i32, align 4
  store %struct.Signal* %0, %struct.Signal** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %4, metadata !1094, metadata !83), !dbg !1095
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1096, metadata !83), !dbg !1097
  br label %6, !dbg !1098, !llvm.loop !1099

; <label>:6:                                      ; preds = %2
  %7 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1100
  %8 = getelementptr inbounds %struct.Signal, %struct.Signal* %7, i32 0, i32 1, !dbg !1104
  %9 = load i32, i32* %8, align 4, !dbg !1104
  %10 = icmp sgt i32 %9, 0, !dbg !1105
  br i1 %10, label %11, label %12, !dbg !1100

; <label>:11:                                     ; preds = %6
  br label %13, !dbg !1106

; <label>:12:                                     ; preds = %6
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.signal_unref_full, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !1108
  unreachable, !dbg !1108

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1110

; <label>:14:                                     ; preds = %13
  %15 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1112
  %16 = getelementptr inbounds %struct.Signal, %struct.Signal* %15, i32 0, i32 1, !dbg !1114
  %17 = load i32, i32* %16, align 4, !dbg !1115
  %18 = add nsw i32 %17, -1, !dbg !1115
  store i32 %18, i32* %16, align 4, !dbg !1115
  %19 = icmp ne i32 %18, 0, !dbg !1116
  br i1 %19, label %20, label %21, !dbg !1117

; <label>:20:                                     ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !1118
  br label %48, !dbg !1118

; <label>:21:                                     ; preds = %14
  %22 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1119
  %23 = getelementptr inbounds %struct.Signal, %struct.Signal* %22, i32 0, i32 6, !dbg !1121
  %24 = load %struct._SignalHook*, %struct._SignalHook** %23, align 8, !dbg !1121
  %25 = icmp ne %struct._SignalHook* %24, null, !dbg !1122
  br i1 %25, label %26, label %34, !dbg !1123

; <label>:26:                                     ; preds = %21
  br label %27, !dbg !1124, !llvm.loop !1126

; <label>:27:                                     ; preds = %26
  %28 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1127
  %29 = getelementptr inbounds %struct.Signal, %struct.Signal* %28, i32 0, i32 0, !dbg !1130
  %30 = load i32, i32* %29, align 8, !dbg !1130
  %31 = call i8* @module_find_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %30), !dbg !1131
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), i8* %31), !dbg !1132
  br label %32, !dbg !1134

; <label>:32:                                     ; preds = %32, %27
  br label %32, !dbg !1135, !llvm.loop !1139
                                                  ; No predecessors!
  br label %34, !dbg !1141

; <label>:34:                                     ; preds = %33, %21
  %35 = load i32, i32* %5, align 4, !dbg !1142
  %36 = icmp ne i32 %35, 0, !dbg !1142
  br i1 %36, label %37, label %45, !dbg !1144

; <label>:37:                                     ; preds = %34
  %38 = load %struct._GHashTable*, %struct._GHashTable** @signals, align 8, !dbg !1145
  %39 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1146
  %40 = getelementptr inbounds %struct.Signal, %struct.Signal* %39, i32 0, i32 0, !dbg !1147
  %41 = load i32, i32* %40, align 8, !dbg !1147
  %42 = sext i32 %41 to i64, !dbg !1148
  %43 = inttoptr i64 %42 to i8*, !dbg !1149
  %44 = call i32 @g_hash_table_remove(%struct._GHashTable* %38, i8* %43), !dbg !1150
  br label %45, !dbg !1150

; <label>:45:                                     ; preds = %37, %34
  %46 = load %struct.Signal*, %struct.Signal** %4, align 8, !dbg !1151
  %47 = bitcast %struct.Signal* %46 to i8*, !dbg !1151
  call void @g_free(i8* %47), !dbg !1152
  store i32 0, i32* %3, align 4, !dbg !1153
  br label %48, !dbg !1153

; <label>:48:                                     ; preds = %45, %20
  %49 = load i32, i32* %3, align 4, !dbg !1154
  ret i32 %49, !dbg !1154
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_hooks_clean(%struct.Signal*) #0 !dbg !1155 {
  %2 = alloca %struct.Signal*, align 8
  %3 = alloca %struct._SignalHook**, align 8
  %4 = alloca %struct._SignalHook**, align 8
  %5 = alloca i32, align 4
  store %struct.Signal* %0, %struct.Signal** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Signal** %2, metadata !1158, metadata !83), !dbg !1159
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %3, metadata !1160, metadata !83), !dbg !1161
  call void @llvm.dbg.declare(metadata %struct._SignalHook*** %4, metadata !1162, metadata !83), !dbg !1163
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1164, metadata !83), !dbg !1165
  %6 = load %struct.Signal*, %struct.Signal** %2, align 8, !dbg !1166
  %7 = getelementptr inbounds %struct.Signal, %struct.Signal* %6, i32 0, i32 5, !dbg !1167
  %8 = load i32, i32* %7, align 4, !dbg !1167
  store i32 %8, i32* %5, align 4, !dbg !1168
  %9 = load %struct.Signal*, %struct.Signal** %2, align 8, !dbg !1169
  %10 = getelementptr inbounds %struct.Signal, %struct.Signal* %9, i32 0, i32 5, !dbg !1170
  store i32 0, i32* %10, align 4, !dbg !1171
  %11 = load %struct.Signal*, %struct.Signal** %2, align 8, !dbg !1172
  %12 = getelementptr inbounds %struct.Signal, %struct.Signal* %11, i32 0, i32 6, !dbg !1174
  store %struct._SignalHook** %12, %struct._SignalHook*** %3, align 8, !dbg !1175
  br label %13, !dbg !1176

; <label>:13:                                     ; preds = %36, %1
  %14 = load %struct._SignalHook**, %struct._SignalHook*** %3, align 8, !dbg !1177
  %15 = load %struct._SignalHook*, %struct._SignalHook** %14, align 8, !dbg !1180
  %16 = icmp ne %struct._SignalHook* %15, null, !dbg !1181
  br i1 %16, label %17, label %38, !dbg !1182

; <label>:17:                                     ; preds = %13
  %18 = load %struct._SignalHook**, %struct._SignalHook*** %3, align 8, !dbg !1183
  %19 = load %struct._SignalHook*, %struct._SignalHook** %18, align 8, !dbg !1185
  %20 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %19, i32 0, i32 0, !dbg !1186
  store %struct._SignalHook** %20, %struct._SignalHook*** %4, align 8, !dbg !1187
  %21 = load %struct._SignalHook**, %struct._SignalHook*** %3, align 8, !dbg !1188
  %22 = load %struct._SignalHook*, %struct._SignalHook** %21, align 8, !dbg !1190
  %23 = getelementptr inbounds %struct._SignalHook, %struct._SignalHook* %22, i32 0, i32 3, !dbg !1191
  %24 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %23, align 8, !dbg !1191
  %25 = icmp eq void (i8*, i8*, i8*, i8*, i8*, i8*)* %24, null, !dbg !1192
  br i1 %25, label %26, label %35, !dbg !1193

; <label>:26:                                     ; preds = %17
  %27 = load %struct._SignalHook**, %struct._SignalHook*** %3, align 8, !dbg !1194
  store %struct._SignalHook** %27, %struct._SignalHook*** %4, align 8, !dbg !1196
  %28 = load %struct.Signal*, %struct.Signal** %2, align 8, !dbg !1197
  %29 = load %struct._SignalHook**, %struct._SignalHook*** %3, align 8, !dbg !1198
  call void @signal_remove_hook(%struct.Signal* %28, %struct._SignalHook** %29), !dbg !1199
  %30 = load i32, i32* %5, align 4, !dbg !1200
  %31 = add nsw i32 %30, -1, !dbg !1200
  store i32 %31, i32* %5, align 4, !dbg !1200
  %32 = icmp eq i32 %31, 0, !dbg !1202
  br i1 %32, label %33, label %34, !dbg !1203

; <label>:33:                                     ; preds = %26
  br label %38, !dbg !1204

; <label>:34:                                     ; preds = %26
  br label %35, !dbg !1205

; <label>:35:                                     ; preds = %34, %17
  br label %36, !dbg !1206

; <label>:36:                                     ; preds = %35
  %37 = load %struct._SignalHook**, %struct._SignalHook*** %4, align 8, !dbg !1207
  store %struct._SignalHook** %37, %struct._SignalHook*** %3, align 8, !dbg !1209
  br label %13, !dbg !1210, !llvm.loop !1211

; <label>:38:                                     ; preds = %33, %13
  ret void, !dbg !1213
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !67)
!1 = !DIFile(filename: "line85-signals.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!15 = !{!16, !20, !22, !23, !24, !26, !39, !56, !60}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !18, line: 77, baseType: !22)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !18, line: 48, baseType: !25)
!25 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Signal", file: !28, line: 44, baseType: !29)
!28 = !DIFile(filename: "signals.c", directory: "/home/lichi/Desktop/irssi/task1")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 34, size: 256, align: 64, elements: !30)
!30 = !{!31, !33, !34, !35, !36, !37, !38}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !29, file: !28, line: 35, baseType: !32, size: 32, align: 32)
!32 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !29, file: !28, line: 36, baseType: !32, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "emitting", scope: !29, file: !28, line: 38, baseType: !32, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "stop_emit", scope: !29, file: !28, line: 39, baseType: !32, size: 32, align: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "continue_emit", scope: !29, file: !28, line: 40, baseType: !32, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "remove_count", scope: !29, file: !28, line: 41, baseType: !32, size: 32, align: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "hooks", scope: !29, file: !28, line: 43, baseType: !39, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignalHook", file: !28, line: 32, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SignalHook", file: !28, line: 25, size: 320, align: 64, elements: !42)
!42 = !{!43, !45, !46, !47, !55}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !28, line: 26, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !41, file: !28, line: 28, baseType: !32, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !41, file: !28, line: 29, baseType: !20, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !41, file: !28, line: 30, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !49, line: 9, baseType: !50)
!49 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !53, !53, !53, !53, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !41, file: !28, line: 31, baseType: !22, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !18, line: 91, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !23, !23, !23}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !61, line: 39, baseType: !62)
!61 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !23, !23, !23}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !18, line: 50, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !18, line: 49, baseType: !32)
!67 = !{!68, !69, !73, !74}
!68 = distinct !DIGlobalVariable(name: "signal_user_data", scope: !0, file: !28, line: 46, type: !22, isLocal: false, isDefinition: true, variable: i8** @signal_user_data)
!69 = distinct !DIGlobalVariable(name: "signals", scope: !0, file: !28, line: 48, type: !70, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @signals)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !61, line: 37, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !61, line: 37, flags: DIFlagFwdDecl)
!73 = distinct !DIGlobalVariable(name: "current_emitted_signal", scope: !0, file: !28, line: 49, type: !26, isLocal: true, isDefinition: true, variable: %struct.Signal** @current_emitted_signal)
!74 = distinct !DIGlobalVariable(name: "current_emitted_hook", scope: !0, file: !28, line: 50, type: !39, isLocal: true, isDefinition: true, variable: %struct._SignalHook** @current_emitted_hook)
!75 = !{i32 2, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!78 = distinct !DISubprogram(name: "signal_add_full", scope: !28, file: !28, line: 85, type: !79, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !20, !32, !20, !48, !22}
!81 = !{}
!82 = !DILocalVariable(name: "module", arg: 1, scope: !78, file: !28, line: 85, type: !20)
!83 = !DIExpression()
!84 = !DILocation(line: 85, column: 34, scope: !78)
!85 = !DILocalVariable(name: "priority", arg: 2, scope: !78, file: !28, line: 85, type: !32)
!86 = !DILocation(line: 85, column: 46, scope: !78)
!87 = !DILocalVariable(name: "signal", arg: 3, scope: !78, file: !28, line: 86, type: !20)
!88 = !DILocation(line: 86, column: 20, scope: !78)
!89 = !DILocalVariable(name: "func", arg: 4, scope: !78, file: !28, line: 86, type: !48)
!90 = !DILocation(line: 86, column: 40, scope: !78)
!91 = !DILocalVariable(name: "user_data", arg: 5, scope: !78, file: !28, line: 86, type: !22)
!92 = !DILocation(line: 86, column: 52, scope: !78)
!93 = !DILocation(line: 88, column: 21, scope: !78)
!94 = !DILocation(line: 88, column: 29, scope: !78)
!95 = !DILocation(line: 88, column: 73, scope: !78)
!96 = !DILocation(line: 88, column: 39, scope: !78)
!97 = !DILocation(line: 89, column: 7, scope: !78)
!98 = !DILocation(line: 89, column: 13, scope: !78)
!99 = !DILocation(line: 88, column: 2, scope: !100)
!100 = !DILexicalBlockFile(scope: !78, file: !28, discriminator: 1)
!101 = !DILocation(line: 90, column: 1, scope: !78)
!102 = distinct !DISubprogram(name: "signal_add_full_id", scope: !28, file: !28, line: 93, type: !103, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !20, !32, !32, !48, !22}
!105 = !DILocalVariable(name: "module", arg: 1, scope: !102, file: !28, line: 93, type: !20)
!106 = !DILocation(line: 93, column: 37, scope: !102)
!107 = !DILocalVariable(name: "priority", arg: 2, scope: !102, file: !28, line: 93, type: !32)
!108 = !DILocation(line: 93, column: 49, scope: !102)
!109 = !DILocalVariable(name: "signal_id", arg: 3, scope: !102, file: !28, line: 94, type: !32)
!110 = !DILocation(line: 94, column: 8, scope: !102)
!111 = !DILocalVariable(name: "func", arg: 4, scope: !102, file: !28, line: 94, type: !48)
!112 = !DILocation(line: 94, column: 31, scope: !102)
!113 = !DILocalVariable(name: "user_data", arg: 5, scope: !102, file: !28, line: 94, type: !22)
!114 = !DILocation(line: 94, column: 43, scope: !102)
!115 = !DILocalVariable(name: "signal", scope: !102, file: !28, line: 96, type: !26)
!116 = !DILocation(line: 96, column: 10, scope: !102)
!117 = !DILocalVariable(name: "hook", scope: !102, file: !28, line: 97, type: !39)
!118 = !DILocation(line: 97, column: 21, scope: !102)
!119 = !DILocalVariable(name: "tmp", scope: !102, file: !28, line: 97, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!121 = !DILocation(line: 97, column: 29, scope: !102)
!122 = !DILocation(line: 99, column: 2, scope: !102)
!123 = distinct !{!123, !122}
!124 = !DILocation(line: 99, column: 10, scope: !125)
!125 = !DILexicalBlockFile(scope: !126, file: !28, discriminator: 1)
!126 = distinct !DILexicalBlock(scope: !127, file: !28, line: 99, column: 10)
!127 = distinct !DILexicalBlock(scope: !102, file: !28, line: 99, column: 4)
!128 = !DILocation(line: 99, column: 20, scope: !125)
!129 = !DILocation(line: 99, column: 28, scope: !130)
!130 = !DILexicalBlockFile(scope: !131, file: !28, discriminator: 2)
!131 = distinct !DILexicalBlock(scope: !126, file: !28, line: 99, column: 26)
!132 = !DILocation(line: 99, column: 37, scope: !133)
!133 = !DILexicalBlockFile(scope: !134, file: !28, discriminator: 3)
!134 = distinct !DILexicalBlock(scope: !126, file: !28, line: 99, column: 35)
!135 = !DILocation(line: 99, column: 124, scope: !133)
!136 = !DILocation(line: 99, column: 135, scope: !137)
!137 = !DILexicalBlockFile(scope: !127, file: !28, discriminator: 4)
!138 = !DILocation(line: 100, column: 2, scope: !102)
!139 = distinct !{!139, !138}
!140 = !DILocation(line: 100, column: 10, scope: !141)
!141 = !DILexicalBlockFile(scope: !142, file: !28, discriminator: 1)
!142 = distinct !DILexicalBlock(scope: !143, file: !28, line: 100, column: 10)
!143 = distinct !DILexicalBlock(scope: !102, file: !28, line: 100, column: 4)
!144 = !DILocation(line: 100, column: 15, scope: !141)
!145 = !DILocation(line: 100, column: 5, scope: !146)
!146 = !DILexicalBlockFile(scope: !147, file: !28, discriminator: 2)
!147 = distinct !DILexicalBlock(scope: !142, file: !28, line: 100, column: 3)
!148 = !DILocation(line: 100, column: 14, scope: !149)
!149 = !DILexicalBlockFile(scope: !150, file: !28, discriminator: 3)
!150 = distinct !DILexicalBlock(scope: !142, file: !28, line: 100, column: 12)
!151 = !DILocation(line: 100, column: 99, scope: !149)
!152 = !DILocation(line: 100, column: 110, scope: !153)
!153 = !DILexicalBlockFile(scope: !143, file: !28, discriminator: 4)
!154 = !DILocation(line: 102, column: 31, scope: !102)
!155 = !DILocation(line: 102, column: 61, scope: !102)
!156 = !DILocation(line: 102, column: 52, scope: !102)
!157 = !DILocation(line: 102, column: 41, scope: !102)
!158 = !DILocation(line: 102, column: 11, scope: !102)
!159 = !DILocation(line: 102, column: 9, scope: !102)
!160 = !DILocation(line: 103, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !102, file: !28, line: 103, column: 6)
!162 = !DILocation(line: 103, column: 13, scope: !161)
!163 = !DILocation(line: 103, column: 6, scope: !102)
!164 = !DILocation(line: 105, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !28, line: 103, column: 21)
!166 = !DILocation(line: 105, column: 13, scope: !165)
!167 = !DILocation(line: 105, column: 10, scope: !165)
!168 = !DILocation(line: 106, column: 16, scope: !165)
!169 = !DILocation(line: 106, column: 3, scope: !165)
!170 = !DILocation(line: 106, column: 11, scope: !165)
!171 = !DILocation(line: 106, column: 14, scope: !165)
!172 = !DILocation(line: 107, column: 23, scope: !165)
!173 = !DILocation(line: 107, column: 53, scope: !165)
!174 = !DILocation(line: 107, column: 44, scope: !165)
!175 = !DILocation(line: 107, column: 33, scope: !165)
!176 = !DILocation(line: 107, column: 66, scope: !165)
!177 = !DILocation(line: 107, column: 3, scope: !165)
!178 = !DILocation(line: 108, column: 2, scope: !165)
!179 = !DILocation(line: 110, column: 25, scope: !102)
!180 = !DILocation(line: 110, column: 10, scope: !102)
!181 = !DILocation(line: 110, column: 7, scope: !102)
!182 = !DILocation(line: 111, column: 19, scope: !102)
!183 = !DILocation(line: 111, column: 2, scope: !102)
!184 = !DILocation(line: 111, column: 8, scope: !102)
!185 = !DILocation(line: 111, column: 17, scope: !102)
!186 = !DILocation(line: 112, column: 17, scope: !102)
!187 = !DILocation(line: 112, column: 2, scope: !102)
!188 = !DILocation(line: 112, column: 8, scope: !102)
!189 = !DILocation(line: 112, column: 15, scope: !102)
!190 = !DILocation(line: 113, column: 15, scope: !102)
!191 = !DILocation(line: 113, column: 2, scope: !102)
!192 = !DILocation(line: 113, column: 8, scope: !102)
!193 = !DILocation(line: 113, column: 13, scope: !102)
!194 = !DILocation(line: 114, column: 20, scope: !102)
!195 = !DILocation(line: 114, column: 2, scope: !102)
!196 = !DILocation(line: 114, column: 8, scope: !102)
!197 = !DILocation(line: 114, column: 18, scope: !102)
!198 = !DILocation(line: 117, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !102, file: !28, line: 117, column: 2)
!200 = !DILocation(line: 117, column: 22, scope: !199)
!201 = !DILocation(line: 117, column: 11, scope: !199)
!202 = !DILocation(line: 117, column: 7, scope: !199)
!203 = !DILocation(line: 118, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !28, line: 118, column: 7)
!205 = distinct !DILexicalBlock(scope: !206, file: !28, line: 117, column: 52)
!206 = distinct !DILexicalBlock(scope: !199, file: !28, line: 117, column: 2)
!207 = !DILocation(line: 118, column: 7, scope: !204)
!208 = !DILocation(line: 118, column: 12, scope: !204)
!209 = !DILocation(line: 118, column: 7, scope: !205)
!210 = !DILocation(line: 120, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !28, line: 118, column: 20)
!212 = !DILocation(line: 120, column: 5, scope: !211)
!213 = !DILocation(line: 120, column: 9, scope: !211)
!214 = !DILocation(line: 121, column: 25, scope: !211)
!215 = !DILocation(line: 122, column: 14, scope: !216)
!216 = distinct !DILexicalBlock(scope: !204, file: !28, line: 122, column: 14)
!217 = !DILocation(line: 122, column: 28, scope: !216)
!218 = !DILocation(line: 122, column: 27, scope: !216)
!219 = !DILocation(line: 122, column: 34, scope: !216)
!220 = !DILocation(line: 122, column: 23, scope: !216)
!221 = !DILocation(line: 122, column: 14, scope: !204)
!222 = !DILocation(line: 124, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !28, line: 122, column: 44)
!224 = !DILocation(line: 124, column: 17, scope: !223)
!225 = !DILocation(line: 124, column: 4, scope: !223)
!226 = !DILocation(line: 124, column: 10, scope: !223)
!227 = !DILocation(line: 124, column: 15, scope: !223)
!228 = !DILocation(line: 125, column: 11, scope: !223)
!229 = !DILocation(line: 125, column: 5, scope: !223)
!230 = !DILocation(line: 125, column: 9, scope: !223)
!231 = !DILocation(line: 126, column: 25, scope: !223)
!232 = !DILocation(line: 128, column: 2, scope: !205)
!233 = !DILocation(line: 117, column: 40, scope: !234)
!234 = !DILexicalBlockFile(scope: !206, file: !28, discriminator: 1)
!235 = !DILocation(line: 117, column: 39, scope: !234)
!236 = !DILocation(line: 117, column: 46, scope: !234)
!237 = !DILocation(line: 117, column: 35, scope: !234)
!238 = !DILocation(line: 117, column: 2, scope: !234)
!239 = distinct !{!239, !240}
!240 = !DILocation(line: 117, column: 2, scope: !102)
!241 = !DILocation(line: 130, column: 12, scope: !102)
!242 = !DILocation(line: 130, column: 21, scope: !102)
!243 = !DILocation(line: 130, column: 9, scope: !102)
!244 = !DILocation(line: 131, column: 1, scope: !102)
!245 = !DILocation(line: 131, column: 1, scope: !246)
!246 = !DILexicalBlockFile(scope: !102, file: !28, discriminator: 1)
!247 = distinct !DISubprogram(name: "signal_remove_id", scope: !28, file: !28, line: 167, type: !248, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !32, !48, !22}
!250 = !DILocalVariable(name: "signal_id", arg: 1, scope: !247, file: !28, line: 167, type: !32)
!251 = !DILocation(line: 167, column: 27, scope: !247)
!252 = !DILocalVariable(name: "func", arg: 2, scope: !247, file: !28, line: 167, type: !48)
!253 = !DILocation(line: 167, column: 50, scope: !247)
!254 = !DILocalVariable(name: "user_data", arg: 3, scope: !247, file: !28, line: 167, type: !22)
!255 = !DILocation(line: 167, column: 62, scope: !247)
!256 = !DILocalVariable(name: "rec", scope: !247, file: !28, line: 169, type: !26)
!257 = !DILocation(line: 169, column: 10, scope: !247)
!258 = !DILocation(line: 171, column: 2, scope: !247)
!259 = distinct !{!259, !258}
!260 = !DILocation(line: 171, column: 10, scope: !261)
!261 = !DILexicalBlockFile(scope: !262, file: !28, discriminator: 1)
!262 = distinct !DILexicalBlock(scope: !263, file: !28, line: 171, column: 10)
!263 = distinct !DILexicalBlock(scope: !247, file: !28, line: 171, column: 4)
!264 = !DILocation(line: 171, column: 20, scope: !261)
!265 = !DILocation(line: 171, column: 28, scope: !266)
!266 = !DILexicalBlockFile(scope: !267, file: !28, discriminator: 2)
!267 = distinct !DILexicalBlock(scope: !262, file: !28, line: 171, column: 26)
!268 = !DILocation(line: 171, column: 37, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !28, discriminator: 3)
!270 = distinct !DILexicalBlock(scope: !262, file: !28, line: 171, column: 35)
!271 = !DILocation(line: 171, column: 124, scope: !269)
!272 = !DILocation(line: 171, column: 135, scope: !273)
!273 = !DILexicalBlockFile(scope: !263, file: !28, discriminator: 4)
!274 = !DILocation(line: 172, column: 2, scope: !247)
!275 = distinct !{!275, !274}
!276 = !DILocation(line: 172, column: 10, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !28, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !279, file: !28, line: 172, column: 10)
!279 = distinct !DILexicalBlock(scope: !247, file: !28, line: 172, column: 4)
!280 = !DILocation(line: 172, column: 15, scope: !277)
!281 = !DILocation(line: 172, column: 5, scope: !282)
!282 = !DILexicalBlockFile(scope: !283, file: !28, discriminator: 2)
!283 = distinct !DILexicalBlock(scope: !278, file: !28, line: 172, column: 3)
!284 = !DILocation(line: 172, column: 14, scope: !285)
!285 = !DILexicalBlockFile(scope: !286, file: !28, discriminator: 3)
!286 = distinct !DILexicalBlock(scope: !278, file: !28, line: 172, column: 12)
!287 = !DILocation(line: 172, column: 99, scope: !285)
!288 = !DILocation(line: 172, column: 110, scope: !289)
!289 = !DILexicalBlockFile(scope: !279, file: !28, discriminator: 4)
!290 = !DILocation(line: 174, column: 28, scope: !247)
!291 = !DILocation(line: 174, column: 58, scope: !247)
!292 = !DILocation(line: 174, column: 49, scope: !247)
!293 = !DILocation(line: 174, column: 38, scope: !247)
!294 = !DILocation(line: 174, column: 8, scope: !247)
!295 = !DILocation(line: 174, column: 6, scope: !247)
!296 = !DILocation(line: 175, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !247, file: !28, line: 175, column: 13)
!298 = !DILocation(line: 175, column: 17, scope: !297)
!299 = !DILocation(line: 175, column: 13, scope: !247)
!300 = !DILocation(line: 176, column: 36, scope: !297)
!301 = !DILocation(line: 176, column: 41, scope: !297)
!302 = !DILocation(line: 176, column: 47, scope: !297)
!303 = !DILocation(line: 176, column: 17, scope: !297)
!304 = !DILocation(line: 177, column: 1, scope: !247)
!305 = distinct !DISubprogram(name: "signal_remove_func", scope: !28, file: !28, line: 146, type: !306, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!306 = !DISubroutineType(types: !307)
!307 = !{!32, !26, !48, !22}
!308 = !DILocalVariable(name: "rec", arg: 1, scope: !305, file: !28, line: 146, type: !26)
!309 = !DILocation(line: 146, column: 39, scope: !305)
!310 = !DILocalVariable(name: "func", arg: 2, scope: !305, file: !28, line: 146, type: !48)
!311 = !DILocation(line: 146, column: 56, scope: !305)
!312 = !DILocalVariable(name: "user_data", arg: 3, scope: !305, file: !28, line: 146, type: !22)
!313 = !DILocation(line: 146, column: 68, scope: !305)
!314 = !DILocalVariable(name: "hook", scope: !305, file: !28, line: 148, type: !120)
!315 = !DILocation(line: 148, column: 22, scope: !305)
!316 = !DILocation(line: 150, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !305, file: !28, line: 150, column: 2)
!318 = !DILocation(line: 150, column: 20, scope: !317)
!319 = !DILocation(line: 150, column: 12, scope: !317)
!320 = !DILocation(line: 150, column: 7, scope: !317)
!321 = !DILocation(line: 150, column: 28, scope: !322)
!322 = !DILexicalBlockFile(scope: !323, file: !28, discriminator: 1)
!323 = distinct !DILexicalBlock(scope: !317, file: !28, line: 150, column: 2)
!324 = !DILocation(line: 150, column: 27, scope: !322)
!325 = !DILocation(line: 150, column: 33, scope: !322)
!326 = !DILocation(line: 150, column: 2, scope: !322)
!327 = !DILocation(line: 151, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !28, line: 151, column: 7)
!329 = distinct !DILexicalBlock(scope: !323, file: !28, line: 150, column: 64)
!330 = !DILocation(line: 151, column: 8, scope: !328)
!331 = !DILocation(line: 151, column: 16, scope: !328)
!332 = !DILocation(line: 151, column: 24, scope: !328)
!333 = !DILocation(line: 151, column: 21, scope: !328)
!334 = !DILocation(line: 151, column: 29, scope: !328)
!335 = !DILocation(line: 151, column: 34, scope: !336)
!336 = !DILexicalBlockFile(scope: !328, file: !28, discriminator: 1)
!337 = !DILocation(line: 151, column: 33, scope: !336)
!338 = !DILocation(line: 151, column: 41, scope: !336)
!339 = !DILocation(line: 151, column: 54, scope: !336)
!340 = !DILocation(line: 151, column: 51, scope: !336)
!341 = !DILocation(line: 151, column: 7, scope: !336)
!342 = !DILocation(line: 152, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !28, line: 152, column: 8)
!344 = distinct !DILexicalBlock(scope: !328, file: !28, line: 151, column: 65)
!345 = !DILocation(line: 152, column: 13, scope: !343)
!346 = !DILocation(line: 152, column: 8, scope: !344)
!347 = !DILocation(line: 154, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !28, line: 152, column: 23)
!349 = !DILocation(line: 154, column: 6, scope: !348)
!350 = !DILocation(line: 154, column: 14, scope: !348)
!351 = !DILocation(line: 154, column: 19, scope: !348)
!352 = !DILocation(line: 155, column: 33, scope: !348)
!353 = !DILocation(line: 155, column: 38, scope: !348)
!354 = !DILocation(line: 155, column: 50, scope: !348)
!355 = !DILocation(line: 156, column: 4, scope: !348)
!356 = !DILocation(line: 158, column: 24, scope: !357)
!357 = distinct !DILexicalBlock(scope: !343, file: !28, line: 156, column: 11)
!358 = !DILocation(line: 158, column: 29, scope: !357)
!359 = !DILocation(line: 158, column: 5, scope: !357)
!360 = !DILocation(line: 160, column: 4, scope: !344)
!361 = !DILocation(line: 162, column: 2, scope: !329)
!362 = !DILocation(line: 150, column: 51, scope: !363)
!363 = !DILexicalBlockFile(scope: !323, file: !28, discriminator: 2)
!364 = !DILocation(line: 150, column: 50, scope: !363)
!365 = !DILocation(line: 150, column: 58, scope: !363)
!366 = !DILocation(line: 150, column: 46, scope: !363)
!367 = !DILocation(line: 150, column: 2, scope: !363)
!368 = distinct !{!368, !369}
!369 = !DILocation(line: 150, column: 2, scope: !305)
!370 = !DILocation(line: 164, column: 9, scope: !305)
!371 = !DILocation(line: 165, column: 1, scope: !305)
!372 = distinct !DISubprogram(name: "signal_remove_full", scope: !28, file: !28, line: 180, type: !373, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !20, !48, !22}
!375 = !DILocalVariable(name: "signal", arg: 1, scope: !372, file: !28, line: 180, type: !20)
!376 = !DILocation(line: 180, column: 37, scope: !372)
!377 = !DILocalVariable(name: "func", arg: 2, scope: !372, file: !28, line: 180, type: !48)
!378 = !DILocation(line: 180, column: 57, scope: !372)
!379 = !DILocalVariable(name: "user_data", arg: 3, scope: !372, file: !28, line: 180, type: !22)
!380 = !DILocation(line: 180, column: 69, scope: !372)
!381 = !DILocation(line: 182, column: 2, scope: !372)
!382 = distinct !{!382, !381}
!383 = !DILocation(line: 182, column: 10, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !28, discriminator: 1)
!385 = distinct !DILexicalBlock(scope: !386, file: !28, line: 182, column: 10)
!386 = distinct !DILexicalBlock(scope: !372, file: !28, line: 182, column: 4)
!387 = !DILocation(line: 182, column: 17, scope: !384)
!388 = !DILocation(line: 182, column: 5, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !28, discriminator: 2)
!390 = distinct !DILexicalBlock(scope: !385, file: !28, line: 182, column: 3)
!391 = !DILocation(line: 182, column: 14, scope: !392)
!392 = !DILexicalBlockFile(scope: !393, file: !28, discriminator: 3)
!393 = distinct !DILexicalBlock(scope: !385, file: !28, line: 182, column: 12)
!394 = !DILocation(line: 182, column: 101, scope: !392)
!395 = !DILocation(line: 182, column: 112, scope: !396)
!396 = !DILexicalBlockFile(scope: !386, file: !28, discriminator: 4)
!397 = !DILocation(line: 184, column: 53, scope: !372)
!398 = !DILocation(line: 184, column: 19, scope: !372)
!399 = !DILocation(line: 184, column: 62, scope: !372)
!400 = !DILocation(line: 184, column: 68, scope: !372)
!401 = !DILocation(line: 184, column: 2, scope: !402)
!402 = !DILexicalBlockFile(scope: !372, file: !28, discriminator: 1)
!403 = !DILocation(line: 185, column: 1, scope: !372)
!404 = !DILocation(line: 185, column: 1, scope: !402)
!405 = distinct !DISubprogram(name: "signal_emit", scope: !28, file: !28, line: 273, type: !406, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!406 = !DISubroutineType(types: !407)
!407 = !{!32, !20, !32, null}
!408 = !DILocalVariable(name: "signal", arg: 1, scope: !405, file: !28, line: 273, type: !20)
!409 = !DILocation(line: 273, column: 29, scope: !405)
!410 = !DILocalVariable(name: "params", arg: 2, scope: !405, file: !28, line: 273, type: !32)
!411 = !DILocation(line: 273, column: 41, scope: !405)
!412 = !DILocalVariable(name: "rec", scope: !405, file: !28, line: 275, type: !26)
!413 = !DILocation(line: 275, column: 10, scope: !405)
!414 = !DILocalVariable(name: "va", scope: !405, file: !28, line: 276, type: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !416, line: 79, baseType: !417)
!416 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !418, line: 40, baseType: !419)
!418 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 276, baseType: !420)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 192, align: 64, elements: !428)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 276, size: 192, align: 64, elements: !422)
!422 = !{!423, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !421, file: !1, line: 276, baseType: !424, size: 32, align: 32)
!424 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !421, file: !1, line: 276, baseType: !424, size: 32, align: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !421, file: !1, line: 276, baseType: !22, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !421, file: !1, line: 276, baseType: !22, size: 64, align: 64, offset: 128)
!428 = !{!429}
!429 = !DISubrange(count: 1)
!430 = !DILocation(line: 276, column: 10, scope: !405)
!431 = !DILocalVariable(name: "signal_id", scope: !405, file: !28, line: 277, type: !32)
!432 = !DILocation(line: 277, column: 6, scope: !405)
!433 = !DILocation(line: 279, column: 2, scope: !405)
!434 = distinct !{!434, !433}
!435 = !DILocation(line: 279, column: 10, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !28, discriminator: 1)
!437 = distinct !DILexicalBlock(scope: !438, file: !28, line: 279, column: 10)
!438 = distinct !DILexicalBlock(scope: !405, file: !28, line: 279, column: 4)
!439 = !DILocation(line: 279, column: 17, scope: !436)
!440 = !DILocation(line: 279, column: 22, scope: !436)
!441 = !DILocation(line: 279, column: 25, scope: !442)
!442 = !DILexicalBlockFile(scope: !437, file: !28, discriminator: 2)
!443 = !DILocation(line: 279, column: 32, scope: !442)
!444 = !DILocation(line: 279, column: 10, scope: !442)
!445 = !DILocation(line: 279, column: 40, scope: !446)
!446 = !DILexicalBlockFile(scope: !447, file: !28, discriminator: 3)
!447 = distinct !DILexicalBlock(scope: !437, file: !28, line: 279, column: 38)
!448 = !DILocation(line: 279, column: 49, scope: !449)
!449 = !DILexicalBlockFile(scope: !450, file: !28, discriminator: 4)
!450 = distinct !DILexicalBlock(scope: !437, file: !28, line: 279, column: 47)
!451 = !DILocation(line: 279, column: 167, scope: !449)
!452 = !DILocation(line: 279, column: 184, scope: !453)
!453 = !DILexicalBlockFile(scope: !438, file: !28, discriminator: 5)
!454 = !DILocation(line: 281, column: 48, scope: !405)
!455 = !DILocation(line: 281, column: 14, scope: !405)
!456 = !DILocation(line: 281, column: 12, scope: !405)
!457 = !DILocation(line: 283, column: 28, scope: !405)
!458 = !DILocation(line: 283, column: 58, scope: !405)
!459 = !DILocation(line: 283, column: 49, scope: !405)
!460 = !DILocation(line: 283, column: 38, scope: !405)
!461 = !DILocation(line: 283, column: 8, scope: !405)
!462 = !DILocation(line: 283, column: 6, scope: !405)
!463 = !DILocation(line: 284, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !405, file: !28, line: 284, column: 6)
!465 = !DILocation(line: 284, column: 10, scope: !464)
!466 = !DILocation(line: 284, column: 6, scope: !405)
!467 = !DILocation(line: 285, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !28, line: 284, column: 18)
!469 = !DILocation(line: 286, column: 20, scope: !468)
!470 = !DILocation(line: 286, column: 25, scope: !468)
!471 = !DILocation(line: 286, column: 33, scope: !468)
!472 = !DILocation(line: 286, column: 37, scope: !468)
!473 = !DILocation(line: 286, column: 42, scope: !468)
!474 = !DILocation(line: 286, column: 3, scope: !468)
!475 = !DILocation(line: 287, column: 2, scope: !468)
!476 = !DILocation(line: 288, column: 2, scope: !468)
!477 = !DILocation(line: 290, column: 9, scope: !405)
!478 = !DILocation(line: 290, column: 13, scope: !405)
!479 = !DILocation(line: 290, column: 2, scope: !405)
!480 = !DILocation(line: 291, column: 1, scope: !405)
!481 = distinct !DISubprogram(name: "signal_emit_real", scope: !28, file: !28, line: 208, type: !482, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!482 = !DISubroutineType(types: !483)
!483 = !{!32, !26, !32, !484, !39}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!485 = !DILocalVariable(name: "rec", arg: 1, scope: !481, file: !28, line: 208, type: !26)
!486 = !DILocation(line: 208, column: 37, scope: !481)
!487 = !DILocalVariable(name: "params", arg: 2, scope: !481, file: !28, line: 208, type: !32)
!488 = !DILocation(line: 208, column: 46, scope: !481)
!489 = !DILocalVariable(name: "va", arg: 3, scope: !481, file: !28, line: 208, type: !484)
!490 = !DILocation(line: 208, column: 62, scope: !481)
!491 = !DILocalVariable(name: "first_hook", arg: 4, scope: !481, file: !28, line: 209, type: !39)
!492 = !DILocation(line: 209, column: 20, scope: !481)
!493 = !DILocalVariable(name: "arglist", scope: !481, file: !28, line: 211, type: !494)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 384, align: 64, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 6)
!497 = !DILocation(line: 211, column: 14, scope: !481)
!498 = !DILocalVariable(name: "prev_emitted_signal", scope: !481, file: !28, line: 212, type: !26)
!499 = !DILocation(line: 212, column: 10, scope: !481)
!500 = !DILocalVariable(name: "hook", scope: !481, file: !28, line: 213, type: !39)
!501 = !DILocation(line: 213, column: 21, scope: !481)
!502 = !DILocalVariable(name: "prev_emitted_hook", scope: !481, file: !28, line: 213, type: !39)
!503 = !DILocation(line: 213, column: 28, scope: !481)
!504 = !DILocalVariable(name: "i", scope: !481, file: !28, line: 214, type: !32)
!505 = !DILocation(line: 214, column: 6, scope: !481)
!506 = !DILocalVariable(name: "stopped", scope: !481, file: !28, line: 214, type: !32)
!507 = !DILocation(line: 214, column: 9, scope: !481)
!508 = !DILocalVariable(name: "stop_emit_count", scope: !481, file: !28, line: 214, type: !32)
!509 = !DILocation(line: 214, column: 18, scope: !481)
!510 = !DILocalVariable(name: "continue_emit_count", scope: !481, file: !28, line: 214, type: !32)
!511 = !DILocation(line: 214, column: 35, scope: !481)
!512 = !DILocation(line: 216, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !481, file: !28, line: 216, column: 2)
!514 = !DILocation(line: 216, column: 7, scope: !513)
!515 = !DILocation(line: 216, column: 14, scope: !516)
!516 = !DILexicalBlockFile(scope: !517, file: !28, discriminator: 1)
!517 = distinct !DILexicalBlock(scope: !513, file: !28, line: 216, column: 2)
!518 = !DILocation(line: 216, column: 16, scope: !516)
!519 = !DILocation(line: 216, column: 2, scope: !516)
!520 = !DILocation(line: 217, column: 16, scope: !517)
!521 = !DILocation(line: 217, column: 21, scope: !517)
!522 = !DILocation(line: 217, column: 18, scope: !517)
!523 = !DILocation(line: 217, column: 16, scope: !516)
!524 = !DILocation(line: 217, column: 36, scope: !525)
!525 = !DILexicalBlockFile(scope: !517, file: !28, discriminator: 2)
!526 = !DILocation(line: 217, column: 36, scope: !527)
!527 = !DILexicalBlockFile(scope: !517, file: !28, discriminator: 3)
!528 = !DILocation(line: 217, column: 36, scope: !529)
!529 = !DILexicalBlockFile(scope: !517, file: !28, discriminator: 4)
!530 = !DILocation(line: 217, column: 36, scope: !531)
!531 = !DILexicalBlockFile(scope: !517, file: !28, discriminator: 5)
!532 = !DILocation(line: 217, column: 16, scope: !531)
!533 = !DILocation(line: 217, column: 16, scope: !534)
!534 = !DILexicalBlockFile(scope: !517, file: !28, discriminator: 6)
!535 = !DILocation(line: 217, column: 11, scope: !534)
!536 = !DILocation(line: 217, column: 3, scope: !534)
!537 = !DILocation(line: 217, column: 14, scope: !534)
!538 = !DILocation(line: 216, column: 22, scope: !525)
!539 = !DILocation(line: 216, column: 2, scope: !525)
!540 = distinct !{!540, !541}
!541 = !DILocation(line: 216, column: 2, scope: !481)
!542 = !DILocation(line: 221, column: 20, scope: !481)
!543 = !DILocation(line: 221, column: 25, scope: !481)
!544 = !DILocation(line: 221, column: 18, scope: !481)
!545 = !DILocation(line: 222, column: 24, scope: !481)
!546 = !DILocation(line: 222, column: 29, scope: !481)
!547 = !DILocation(line: 222, column: 22, scope: !481)
!548 = !DILocation(line: 224, column: 12, scope: !481)
!549 = !DILocation(line: 224, column: 18, scope: !481)
!550 = !DILocation(line: 224, column: 9, scope: !481)
!551 = !DILocation(line: 226, column: 10, scope: !481)
!552 = !DILocation(line: 227, column: 2, scope: !481)
!553 = !DILocation(line: 227, column: 7, scope: !481)
!554 = !DILocation(line: 227, column: 15, scope: !481)
!555 = !DILocation(line: 229, column: 24, scope: !481)
!556 = !DILocation(line: 229, column: 22, scope: !481)
!557 = !DILocation(line: 230, column: 22, scope: !481)
!558 = !DILocation(line: 230, column: 20, scope: !481)
!559 = !DILocation(line: 231, column: 27, scope: !481)
!560 = !DILocation(line: 231, column: 25, scope: !481)
!561 = !DILocation(line: 233, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !481, file: !28, line: 233, column: 2)
!563 = !DILocation(line: 233, column: 12, scope: !562)
!564 = !DILocation(line: 233, column: 7, scope: !562)
!565 = !DILocation(line: 233, column: 26, scope: !566)
!566 = !DILexicalBlockFile(scope: !567, file: !28, discriminator: 1)
!567 = distinct !DILexicalBlock(scope: !562, file: !28, line: 233, column: 2)
!568 = !DILocation(line: 233, column: 31, scope: !566)
!569 = !DILocation(line: 233, column: 2, scope: !566)
!570 = !DILocation(line: 234, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !28, line: 234, column: 7)
!572 = distinct !DILexicalBlock(scope: !567, file: !28, line: 233, column: 58)
!573 = !DILocation(line: 234, column: 13, scope: !571)
!574 = !DILocation(line: 234, column: 18, scope: !571)
!575 = !DILocation(line: 234, column: 7, scope: !572)
!576 = !DILocation(line: 235, column: 4, scope: !571)
!577 = !DILocation(line: 237, column: 26, scope: !572)
!578 = !DILocation(line: 237, column: 24, scope: !572)
!579 = !DILocation(line: 241, column: 36, scope: !572)
!580 = !DILocation(line: 241, column: 42, scope: !572)
!581 = !DILocation(line: 241, column: 34, scope: !572)
!582 = !DILocation(line: 242, column: 3, scope: !572)
!583 = !DILocation(line: 242, column: 9, scope: !572)
!584 = !DILocation(line: 242, column: 14, scope: !572)
!585 = !DILocation(line: 242, column: 26, scope: !572)
!586 = !DILocation(line: 242, column: 38, scope: !572)
!587 = !DILocation(line: 242, column: 50, scope: !572)
!588 = !DILocation(line: 243, column: 7, scope: !572)
!589 = !DILocation(line: 243, column: 19, scope: !572)
!590 = !DILocation(line: 245, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !572, file: !28, line: 245, column: 7)
!592 = !DILocation(line: 245, column: 12, scope: !591)
!593 = !DILocation(line: 245, column: 29, scope: !591)
!594 = !DILocation(line: 245, column: 26, scope: !591)
!595 = !DILocation(line: 245, column: 7, scope: !572)
!596 = !DILocation(line: 246, column: 4, scope: !591)
!597 = !DILocation(line: 246, column: 9, scope: !591)
!598 = !DILocation(line: 246, column: 22, scope: !591)
!599 = !DILocation(line: 248, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !572, file: !28, line: 248, column: 7)
!601 = !DILocation(line: 248, column: 12, scope: !600)
!602 = !DILocation(line: 248, column: 25, scope: !600)
!603 = !DILocation(line: 248, column: 22, scope: !600)
!604 = !DILocation(line: 248, column: 7, scope: !572)
!605 = !DILocation(line: 249, column: 12, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !28, line: 248, column: 42)
!607 = !DILocation(line: 250, column: 4, scope: !606)
!608 = !DILocation(line: 250, column: 9, scope: !606)
!609 = !DILocation(line: 250, column: 18, scope: !606)
!610 = !DILocation(line: 251, column: 4, scope: !606)
!611 = !DILocation(line: 253, column: 2, scope: !572)
!612 = !DILocation(line: 233, column: 46, scope: !613)
!613 = !DILexicalBlockFile(scope: !567, file: !28, discriminator: 2)
!614 = !DILocation(line: 233, column: 52, scope: !613)
!615 = !DILocation(line: 233, column: 44, scope: !613)
!616 = !DILocation(line: 233, column: 2, scope: !613)
!617 = distinct !{!617, !618}
!618 = !DILocation(line: 233, column: 2, scope: !481)
!619 = !DILocation(line: 255, column: 27, scope: !481)
!620 = !DILocation(line: 255, column: 25, scope: !481)
!621 = !DILocation(line: 256, column: 25, scope: !481)
!622 = !DILocation(line: 256, column: 23, scope: !481)
!623 = !DILocation(line: 258, column: 2, scope: !481)
!624 = !DILocation(line: 258, column: 7, scope: !481)
!625 = !DILocation(line: 258, column: 15, scope: !481)
!626 = !DILocation(line: 259, column: 19, scope: !481)
!627 = !DILocation(line: 261, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !481, file: !28, line: 261, column: 6)
!629 = !DILocation(line: 261, column: 12, scope: !628)
!630 = !DILocation(line: 261, column: 6, scope: !481)
!631 = !DILocation(line: 262, column: 3, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !28, line: 261, column: 22)
!633 = distinct !{!633, !631}
!634 = !DILocation(line: 262, column: 12, scope: !635)
!635 = !DILexicalBlockFile(scope: !636, file: !28, discriminator: 1)
!636 = distinct !DILexicalBlock(scope: !637, file: !28, line: 262, column: 12)
!637 = distinct !DILexicalBlock(scope: !632, file: !28, line: 262, column: 6)
!638 = !DILocation(line: 262, column: 17, scope: !635)
!639 = !DILocation(line: 262, column: 27, scope: !635)
!640 = !DILocation(line: 262, column: 12, scope: !641)
!641 = !DILexicalBlockFile(scope: !637, file: !28, discriminator: 2)
!642 = !DILocation(line: 262, column: 40, scope: !643)
!643 = !DILexicalBlockFile(scope: !636, file: !28, discriminator: 3)
!644 = !DILocation(line: 262, column: 150, scope: !645)
!645 = !DILexicalBlockFile(scope: !637, file: !28, discriminator: 4)
!646 = !DILocation(line: 263, column: 3, scope: !632)
!647 = distinct !{!647, !646}
!648 = !DILocation(line: 263, column: 12, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !28, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !651, file: !28, line: 263, column: 12)
!651 = distinct !DILexicalBlock(scope: !632, file: !28, line: 263, column: 6)
!652 = !DILocation(line: 263, column: 17, scope: !649)
!653 = !DILocation(line: 263, column: 31, scope: !649)
!654 = !DILocation(line: 263, column: 12, scope: !655)
!655 = !DILexicalBlockFile(scope: !651, file: !28, discriminator: 2)
!656 = !DILocation(line: 263, column: 44, scope: !657)
!657 = !DILexicalBlockFile(scope: !650, file: !28, discriminator: 3)
!658 = !DILocation(line: 263, column: 158, scope: !659)
!659 = !DILexicalBlockFile(scope: !651, file: !28, discriminator: 4)
!660 = !DILocation(line: 265, column: 21, scope: !661)
!661 = distinct !DILexicalBlock(scope: !632, file: !28, line: 265, column: 21)
!662 = !DILocation(line: 265, column: 26, scope: !661)
!663 = !DILocation(line: 265, column: 39, scope: !661)
!664 = !DILocation(line: 265, column: 21, scope: !632)
!665 = !DILocation(line: 266, column: 23, scope: !661)
!666 = !DILocation(line: 266, column: 4, scope: !661)
!667 = !DILocation(line: 267, column: 2, scope: !632)
!668 = !DILocation(line: 269, column: 28, scope: !481)
!669 = !DILocation(line: 269, column: 10, scope: !481)
!670 = !DILocation(line: 270, column: 9, scope: !481)
!671 = !DILocation(line: 270, column: 2, scope: !481)
!672 = distinct !DISubprogram(name: "signal_emit_id", scope: !28, file: !28, line: 293, type: !673, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!673 = !DISubroutineType(types: !674)
!674 = !{!32, !32, !32, null}
!675 = !DILocalVariable(name: "signal_id", arg: 1, scope: !672, file: !28, line: 293, type: !32)
!676 = !DILocation(line: 293, column: 24, scope: !672)
!677 = !DILocalVariable(name: "params", arg: 2, scope: !672, file: !28, line: 293, type: !32)
!678 = !DILocation(line: 293, column: 39, scope: !672)
!679 = !DILocalVariable(name: "rec", scope: !672, file: !28, line: 295, type: !26)
!680 = !DILocation(line: 295, column: 10, scope: !672)
!681 = !DILocalVariable(name: "va", scope: !672, file: !28, line: 296, type: !415)
!682 = !DILocation(line: 296, column: 10, scope: !672)
!683 = !DILocation(line: 298, column: 2, scope: !672)
!684 = distinct !{!684, !683}
!685 = !DILocation(line: 298, column: 10, scope: !686)
!686 = !DILexicalBlockFile(scope: !687, file: !28, discriminator: 1)
!687 = distinct !DILexicalBlock(scope: !688, file: !28, line: 298, column: 10)
!688 = distinct !DILexicalBlock(scope: !672, file: !28, line: 298, column: 4)
!689 = !DILocation(line: 298, column: 20, scope: !686)
!690 = !DILocation(line: 298, column: 28, scope: !691)
!691 = !DILexicalBlockFile(scope: !692, file: !28, discriminator: 2)
!692 = distinct !DILexicalBlock(scope: !687, file: !28, line: 298, column: 26)
!693 = !DILocation(line: 298, column: 37, scope: !694)
!694 = !DILexicalBlockFile(scope: !695, file: !28, discriminator: 3)
!695 = distinct !DILexicalBlock(scope: !687, file: !28, line: 298, column: 35)
!696 = !DILocation(line: 298, column: 124, scope: !694)
!697 = !DILocation(line: 298, column: 141, scope: !698)
!698 = !DILexicalBlockFile(scope: !688, file: !28, discriminator: 4)
!699 = !DILocation(line: 299, column: 2, scope: !672)
!700 = distinct !{!700, !699}
!701 = !DILocation(line: 299, column: 10, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !28, discriminator: 1)
!703 = distinct !DILexicalBlock(scope: !704, file: !28, line: 299, column: 10)
!704 = distinct !DILexicalBlock(scope: !672, file: !28, line: 299, column: 4)
!705 = !DILocation(line: 299, column: 17, scope: !702)
!706 = !DILocation(line: 299, column: 22, scope: !702)
!707 = !DILocation(line: 299, column: 25, scope: !708)
!708 = !DILexicalBlockFile(scope: !703, file: !28, discriminator: 2)
!709 = !DILocation(line: 299, column: 32, scope: !708)
!710 = !DILocation(line: 299, column: 10, scope: !708)
!711 = !DILocation(line: 299, column: 40, scope: !712)
!712 = !DILexicalBlockFile(scope: !713, file: !28, discriminator: 3)
!713 = distinct !DILexicalBlock(scope: !703, file: !28, line: 299, column: 38)
!714 = !DILocation(line: 299, column: 49, scope: !715)
!715 = !DILexicalBlockFile(scope: !716, file: !28, discriminator: 4)
!716 = distinct !DILexicalBlock(scope: !703, file: !28, line: 299, column: 47)
!717 = !DILocation(line: 299, column: 167, scope: !715)
!718 = !DILocation(line: 299, column: 184, scope: !719)
!719 = !DILexicalBlockFile(scope: !704, file: !28, discriminator: 5)
!720 = !DILocation(line: 301, column: 28, scope: !672)
!721 = !DILocation(line: 301, column: 58, scope: !672)
!722 = !DILocation(line: 301, column: 49, scope: !672)
!723 = !DILocation(line: 301, column: 38, scope: !672)
!724 = !DILocation(line: 301, column: 8, scope: !672)
!725 = !DILocation(line: 301, column: 6, scope: !672)
!726 = !DILocation(line: 302, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !672, file: !28, line: 302, column: 6)
!728 = !DILocation(line: 302, column: 10, scope: !727)
!729 = !DILocation(line: 302, column: 6, scope: !672)
!730 = !DILocation(line: 303, column: 2, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !28, line: 302, column: 18)
!732 = !DILocation(line: 304, column: 20, scope: !731)
!733 = !DILocation(line: 304, column: 25, scope: !731)
!734 = !DILocation(line: 304, column: 33, scope: !731)
!735 = !DILocation(line: 304, column: 37, scope: !731)
!736 = !DILocation(line: 304, column: 42, scope: !731)
!737 = !DILocation(line: 304, column: 3, scope: !731)
!738 = !DILocation(line: 305, column: 2, scope: !731)
!739 = !DILocation(line: 306, column: 2, scope: !731)
!740 = !DILocation(line: 308, column: 9, scope: !672)
!741 = !DILocation(line: 308, column: 13, scope: !672)
!742 = !DILocation(line: 308, column: 2, scope: !672)
!743 = !DILocation(line: 309, column: 1, scope: !672)
!744 = distinct !DISubprogram(name: "signal_continue", scope: !28, file: !28, line: 311, type: !745, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !32, null}
!747 = !DILocalVariable(name: "params", arg: 1, scope: !744, file: !28, line: 311, type: !32)
!748 = !DILocation(line: 311, column: 26, scope: !744)
!749 = !DILocalVariable(name: "rec", scope: !744, file: !28, line: 313, type: !26)
!750 = !DILocation(line: 313, column: 10, scope: !744)
!751 = !DILocalVariable(name: "va", scope: !744, file: !28, line: 314, type: !415)
!752 = !DILocation(line: 314, column: 10, scope: !744)
!753 = !DILocation(line: 316, column: 8, scope: !744)
!754 = !DILocation(line: 316, column: 6, scope: !744)
!755 = !DILocation(line: 317, column: 6, scope: !756)
!756 = distinct !DILexicalBlock(scope: !744, file: !28, line: 317, column: 6)
!757 = !DILocation(line: 317, column: 10, scope: !756)
!758 = !DILocation(line: 317, column: 17, scope: !756)
!759 = !DILocation(line: 317, column: 20, scope: !760)
!760 = !DILexicalBlockFile(scope: !756, file: !28, discriminator: 1)
!761 = !DILocation(line: 317, column: 25, scope: !760)
!762 = !DILocation(line: 317, column: 37, scope: !760)
!763 = !DILocation(line: 317, column: 42, scope: !760)
!764 = !DILocation(line: 317, column: 34, scope: !760)
!765 = !DILocation(line: 317, column: 6, scope: !760)
!766 = !DILocation(line: 318, column: 3, scope: !756)
!767 = !DILocation(line: 320, column: 2, scope: !768)
!768 = distinct !DILexicalBlock(scope: !756, file: !28, line: 319, column: 7)
!769 = !DILocation(line: 323, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !768, file: !28, line: 323, column: 7)
!771 = !DILocation(line: 323, column: 12, scope: !770)
!772 = !DILocation(line: 323, column: 23, scope: !770)
!773 = !DILocation(line: 323, column: 28, scope: !770)
!774 = !DILocation(line: 323, column: 21, scope: !770)
!775 = !DILocation(line: 323, column: 7, scope: !768)
!776 = !DILocation(line: 324, column: 4, scope: !770)
!777 = !DILocation(line: 324, column: 9, scope: !770)
!778 = !DILocation(line: 324, column: 18, scope: !770)
!779 = !DILocation(line: 327, column: 3, scope: !768)
!780 = !DILocation(line: 327, column: 8, scope: !768)
!781 = !DILocation(line: 327, column: 21, scope: !768)
!782 = !DILocation(line: 328, column: 20, scope: !768)
!783 = !DILocation(line: 328, column: 25, scope: !768)
!784 = !DILocation(line: 328, column: 33, scope: !768)
!785 = !DILocation(line: 328, column: 37, scope: !768)
!786 = !DILocation(line: 328, column: 59, scope: !768)
!787 = !DILocation(line: 328, column: 3, scope: !768)
!788 = !DILocation(line: 329, column: 2, scope: !768)
!789 = !DILocation(line: 331, column: 1, scope: !744)
!790 = distinct !DISubprogram(name: "signal_stop", scope: !28, file: !28, line: 334, type: !791, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!791 = !DISubroutineType(types: !792)
!792 = !{null}
!793 = !DILocalVariable(name: "rec", scope: !790, file: !28, line: 336, type: !26)
!794 = !DILocation(line: 336, column: 10, scope: !790)
!795 = !DILocation(line: 338, column: 8, scope: !790)
!796 = !DILocation(line: 338, column: 6, scope: !790)
!797 = !DILocation(line: 339, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !790, file: !28, line: 339, column: 6)
!799 = !DILocation(line: 339, column: 10, scope: !798)
!800 = !DILocation(line: 339, column: 6, scope: !790)
!801 = !DILocation(line: 340, column: 3, scope: !798)
!802 = !DILocation(line: 341, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !28, line: 341, column: 11)
!804 = !DILocation(line: 341, column: 16, scope: !803)
!805 = !DILocation(line: 341, column: 27, scope: !803)
!806 = !DILocation(line: 341, column: 32, scope: !803)
!807 = !DILocation(line: 341, column: 25, scope: !803)
!808 = !DILocation(line: 341, column: 11, scope: !798)
!809 = !DILocation(line: 342, column: 3, scope: !803)
!810 = !DILocation(line: 342, column: 8, scope: !803)
!811 = !DILocation(line: 342, column: 17, scope: !803)
!812 = !DILocation(line: 343, column: 1, scope: !790)
!813 = distinct !DISubprogram(name: "signal_stop_by_name", scope: !28, file: !28, line: 346, type: !814, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !20}
!816 = !DILocalVariable(name: "signal", arg: 1, scope: !813, file: !28, line: 346, type: !20)
!817 = !DILocation(line: 346, column: 38, scope: !813)
!818 = !DILocalVariable(name: "rec", scope: !813, file: !28, line: 348, type: !26)
!819 = !DILocation(line: 348, column: 10, scope: !813)
!820 = !DILocalVariable(name: "signal_id", scope: !813, file: !28, line: 349, type: !32)
!821 = !DILocation(line: 349, column: 6, scope: !813)
!822 = !DILocation(line: 351, column: 48, scope: !813)
!823 = !DILocation(line: 351, column: 14, scope: !813)
!824 = !DILocation(line: 351, column: 12, scope: !813)
!825 = !DILocation(line: 352, column: 28, scope: !813)
!826 = !DILocation(line: 352, column: 58, scope: !813)
!827 = !DILocation(line: 352, column: 49, scope: !813)
!828 = !DILocation(line: 352, column: 38, scope: !813)
!829 = !DILocation(line: 352, column: 8, scope: !813)
!830 = !DILocation(line: 352, column: 6, scope: !813)
!831 = !DILocation(line: 353, column: 6, scope: !832)
!832 = distinct !DILexicalBlock(scope: !813, file: !28, line: 353, column: 6)
!833 = !DILocation(line: 353, column: 10, scope: !832)
!834 = !DILocation(line: 353, column: 6, scope: !813)
!835 = !DILocation(line: 354, column: 94, scope: !832)
!836 = !DILocation(line: 354, column: 3, scope: !832)
!837 = !DILocation(line: 355, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !832, file: !28, line: 355, column: 11)
!839 = !DILocation(line: 355, column: 16, scope: !838)
!840 = !DILocation(line: 355, column: 27, scope: !838)
!841 = !DILocation(line: 355, column: 32, scope: !838)
!842 = !DILocation(line: 355, column: 25, scope: !838)
!843 = !DILocation(line: 355, column: 11, scope: !832)
!844 = !DILocation(line: 356, column: 3, scope: !838)
!845 = !DILocation(line: 356, column: 8, scope: !838)
!846 = !DILocation(line: 356, column: 17, scope: !838)
!847 = !DILocation(line: 357, column: 1, scope: !813)
!848 = distinct !DISubprogram(name: "signal_get_emitted", scope: !28, file: !28, line: 360, type: !849, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!849 = !DISubroutineType(types: !850)
!850 = !{!20}
!851 = !DILocation(line: 362, column: 39, scope: !848)
!852 = !DILocation(line: 362, column: 9, scope: !853)
!853 = !DILexicalBlockFile(scope: !848, file: !28, discriminator: 1)
!854 = !DILocation(line: 362, column: 2, scope: !848)
!855 = distinct !DISubprogram(name: "signal_get_emitted_id", scope: !28, file: !28, line: 366, type: !856, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!856 = !DISubroutineType(types: !857)
!857 = !{!32}
!858 = !DILocalVariable(name: "rec", scope: !855, file: !28, line: 368, type: !26)
!859 = !DILocation(line: 368, column: 10, scope: !855)
!860 = !DILocation(line: 370, column: 8, scope: !855)
!861 = !DILocation(line: 370, column: 6, scope: !855)
!862 = !DILocation(line: 371, column: 9, scope: !855)
!863 = distinct !{!863, !862}
!864 = !DILocation(line: 371, column: 17, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !28, discriminator: 1)
!866 = distinct !DILexicalBlock(scope: !867, file: !28, line: 371, column: 17)
!867 = distinct !DILexicalBlock(scope: !855, file: !28, line: 371, column: 11)
!868 = !DILocation(line: 371, column: 21, scope: !865)
!869 = !DILocation(line: 371, column: 12, scope: !870)
!870 = !DILexicalBlockFile(scope: !871, file: !28, discriminator: 2)
!871 = distinct !DILexicalBlock(scope: !866, file: !28, line: 371, column: 10)
!872 = !DILocation(line: 371, column: 21, scope: !873)
!873 = !DILexicalBlockFile(scope: !874, file: !28, discriminator: 3)
!874 = distinct !DILexicalBlock(scope: !866, file: !28, line: 371, column: 19)
!875 = !DILocation(line: 371, column: 105, scope: !873)
!876 = !DILocation(line: 371, column: 121, scope: !877)
!877 = !DILexicalBlockFile(scope: !867, file: !28, discriminator: 4)
!878 = !DILocation(line: 372, column: 9, scope: !855)
!879 = !DILocation(line: 372, column: 14, scope: !855)
!880 = !DILocation(line: 372, column: 2, scope: !855)
!881 = !DILocation(line: 373, column: 1, scope: !855)
!882 = distinct !DISubprogram(name: "signal_is_stopped", scope: !28, file: !28, line: 376, type: !883, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!883 = !DISubroutineType(types: !884)
!884 = !{!32, !32}
!885 = !DILocalVariable(name: "signal_id", arg: 1, scope: !882, file: !28, line: 376, type: !32)
!886 = !DILocation(line: 376, column: 27, scope: !882)
!887 = !DILocalVariable(name: "rec", scope: !882, file: !28, line: 378, type: !26)
!888 = !DILocation(line: 378, column: 10, scope: !882)
!889 = !DILocation(line: 380, column: 28, scope: !882)
!890 = !DILocation(line: 380, column: 58, scope: !882)
!891 = !DILocation(line: 380, column: 49, scope: !882)
!892 = !DILocation(line: 380, column: 38, scope: !882)
!893 = !DILocation(line: 380, column: 8, scope: !882)
!894 = !DILocation(line: 380, column: 6, scope: !882)
!895 = !DILocation(line: 381, column: 2, scope: !882)
!896 = distinct !{!896, !895}
!897 = !DILocation(line: 381, column: 10, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !28, discriminator: 1)
!899 = distinct !DILexicalBlock(scope: !900, file: !28, line: 381, column: 10)
!900 = distinct !DILexicalBlock(scope: !882, file: !28, line: 381, column: 4)
!901 = !DILocation(line: 381, column: 14, scope: !898)
!902 = !DILocation(line: 381, column: 5, scope: !903)
!903 = !DILexicalBlockFile(scope: !904, file: !28, discriminator: 2)
!904 = distinct !DILexicalBlock(scope: !899, file: !28, line: 381, column: 3)
!905 = !DILocation(line: 381, column: 14, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !28, discriminator: 3)
!907 = distinct !DILexicalBlock(scope: !899, file: !28, line: 381, column: 12)
!908 = !DILocation(line: 381, column: 98, scope: !906)
!909 = !DILocation(line: 381, column: 115, scope: !910)
!910 = !DILexicalBlockFile(scope: !900, file: !28, discriminator: 4)
!911 = !DILocation(line: 383, column: 16, scope: !882)
!912 = !DILocation(line: 383, column: 21, scope: !882)
!913 = !DILocation(line: 383, column: 33, scope: !882)
!914 = !DILocation(line: 383, column: 38, scope: !882)
!915 = !DILocation(line: 383, column: 30, scope: !882)
!916 = !DILocation(line: 383, column: 9, scope: !882)
!917 = !DILocation(line: 384, column: 1, scope: !882)
!918 = distinct !DISubprogram(name: "signals_remove_module", scope: !28, file: !28, line: 402, type: !814, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!919 = !DILocalVariable(name: "module", arg: 1, scope: !918, file: !28, line: 402, type: !20)
!920 = !DILocation(line: 402, column: 40, scope: !918)
!921 = !DILocation(line: 404, column: 2, scope: !918)
!922 = distinct !{!922, !921}
!923 = !DILocation(line: 404, column: 10, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !28, discriminator: 1)
!925 = distinct !DILexicalBlock(scope: !926, file: !28, line: 404, column: 10)
!926 = distinct !DILexicalBlock(scope: !918, file: !28, line: 404, column: 4)
!927 = !DILocation(line: 404, column: 17, scope: !924)
!928 = !DILocation(line: 404, column: 5, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !28, discriminator: 2)
!930 = distinct !DILexicalBlock(scope: !925, file: !28, line: 404, column: 3)
!931 = !DILocation(line: 404, column: 14, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !28, discriminator: 3)
!933 = distinct !DILexicalBlock(scope: !925, file: !28, line: 404, column: 12)
!934 = !DILocation(line: 404, column: 101, scope: !932)
!935 = !DILocation(line: 404, column: 112, scope: !936)
!936 = !DILexicalBlockFile(scope: !926, file: !28, discriminator: 4)
!937 = !DILocation(line: 406, column: 23, scope: !918)
!938 = !DILocation(line: 406, column: 2, scope: !918)
!939 = !DILocation(line: 407, column: 23, scope: !918)
!940 = !DILocation(line: 408, column: 18, scope: !918)
!941 = !DILocation(line: 407, column: 2, scope: !918)
!942 = !DILocation(line: 409, column: 30, scope: !918)
!943 = !DILocation(line: 409, column: 2, scope: !918)
!944 = !DILocation(line: 410, column: 1, scope: !918)
!945 = !DILocation(line: 410, column: 1, scope: !946)
!946 = !DILexicalBlockFile(scope: !918, file: !28, discriminator: 1)
!947 = distinct !DISubprogram(name: "signal_hash_ref", scope: !28, file: !28, line: 75, type: !948, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !22, !26}
!950 = !DILocalVariable(name: "key", arg: 1, scope: !947, file: !28, line: 75, type: !22)
!951 = !DILocation(line: 75, column: 35, scope: !947)
!952 = !DILocalVariable(name: "rec", arg: 2, scope: !947, file: !28, line: 75, type: !26)
!953 = !DILocation(line: 75, column: 48, scope: !947)
!954 = !DILocation(line: 77, column: 5, scope: !947)
!955 = !DILocation(line: 77, column: 11, scope: !947)
!956 = !DILocation(line: 77, column: 2, scope: !947)
!957 = !DILocation(line: 78, column: 1, scope: !947)
!958 = distinct !DISubprogram(name: "signal_remove_module", scope: !28, file: !28, line: 386, type: !959, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !22, !26, !20}
!961 = !DILocalVariable(name: "signal", arg: 1, scope: !958, file: !28, line: 386, type: !22)
!962 = !DILocation(line: 386, column: 40, scope: !958)
!963 = !DILocalVariable(name: "rec", arg: 2, scope: !958, file: !28, line: 386, type: !26)
!964 = !DILocation(line: 386, column: 56, scope: !958)
!965 = !DILocalVariable(name: "module", arg: 3, scope: !958, file: !28, line: 387, type: !20)
!966 = !DILocation(line: 387, column: 18, scope: !958)
!967 = !DILocalVariable(name: "hook", scope: !958, file: !28, line: 389, type: !120)
!968 = !DILocation(line: 389, column: 15, scope: !958)
!969 = !DILocalVariable(name: "next", scope: !958, file: !28, line: 389, type: !120)
!970 = !DILocation(line: 389, column: 23, scope: !958)
!971 = !DILocation(line: 391, column: 15, scope: !972)
!972 = distinct !DILexicalBlock(scope: !958, file: !28, line: 391, column: 2)
!973 = !DILocation(line: 391, column: 20, scope: !972)
!974 = !DILocation(line: 391, column: 12, scope: !972)
!975 = !DILocation(line: 391, column: 7, scope: !972)
!976 = !DILocation(line: 391, column: 28, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !28, discriminator: 1)
!978 = distinct !DILexicalBlock(scope: !972, file: !28, line: 391, column: 2)
!979 = !DILocation(line: 391, column: 27, scope: !977)
!980 = !DILocation(line: 391, column: 33, scope: !977)
!981 = !DILocation(line: 391, column: 2, scope: !977)
!982 = !DILocation(line: 392, column: 13, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !28, line: 391, column: 54)
!984 = !DILocation(line: 392, column: 12, scope: !983)
!985 = !DILocation(line: 392, column: 20, scope: !983)
!986 = !DILocation(line: 392, column: 8, scope: !983)
!987 = !DILocation(line: 394, column: 20, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !28, line: 394, column: 7)
!989 = !DILocation(line: 394, column: 19, scope: !988)
!990 = !DILocation(line: 394, column: 27, scope: !988)
!991 = !DILocation(line: 394, column: 35, scope: !988)
!992 = !DILocation(line: 394, column: 7, scope: !988)
!993 = !DILocation(line: 394, column: 43, scope: !988)
!994 = !DILocation(line: 394, column: 7, scope: !983)
!995 = !DILocation(line: 395, column: 32, scope: !996)
!996 = distinct !DILexicalBlock(scope: !988, file: !28, line: 394, column: 49)
!997 = !DILocation(line: 395, column: 30, scope: !996)
!998 = !DILocation(line: 396, column: 23, scope: !996)
!999 = !DILocation(line: 396, column: 28, scope: !996)
!1000 = !DILocation(line: 396, column: 4, scope: !996)
!1001 = !DILocation(line: 397, column: 3, scope: !996)
!1002 = !DILocation(line: 398, column: 2, scope: !983)
!1003 = !DILocation(line: 391, column: 48, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !978, file: !28, discriminator: 2)
!1005 = !DILocation(line: 391, column: 46, scope: !1004)
!1006 = !DILocation(line: 391, column: 2, scope: !1004)
!1007 = distinct !{!1007, !1008}
!1008 = !DILocation(line: 391, column: 2, scope: !958)
!1009 = !DILocation(line: 399, column: 1, scope: !958)
!1010 = distinct !DISubprogram(name: "signal_hash_unref", scope: !28, file: !28, line: 80, type: !1011, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!32, !22, !26}
!1013 = !DILocalVariable(name: "key", arg: 1, scope: !1010, file: !28, line: 80, type: !22)
!1014 = !DILocation(line: 80, column: 36, scope: !1010)
!1015 = !DILocalVariable(name: "rec", arg: 2, scope: !1010, file: !28, line: 80, type: !26)
!1016 = !DILocation(line: 80, column: 49, scope: !1010)
!1017 = !DILocation(line: 82, column: 28, scope: !1010)
!1018 = !DILocation(line: 82, column: 10, scope: !1010)
!1019 = !DILocation(line: 82, column: 9, scope: !1010)
!1020 = !DILocation(line: 82, column: 2, scope: !1010)
!1021 = distinct !DISubprogram(name: "signals_init", scope: !28, file: !28, line: 412, type: !791, isLocal: false, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1022 = !DILocation(line: 414, column: 12, scope: !1021)
!1023 = !DILocation(line: 414, column: 10, scope: !1021)
!1024 = !DILocation(line: 415, column: 1, scope: !1021)
!1025 = distinct !DISubprogram(name: "signals_deinit", scope: !28, file: !28, line: 431, type: !791, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1026 = !DILocation(line: 433, column: 23, scope: !1025)
!1027 = !DILocation(line: 433, column: 2, scope: !1025)
!1028 = !DILocation(line: 434, column: 30, scope: !1025)
!1029 = !DILocation(line: 434, column: 9, scope: !1025)
!1030 = !DILocation(line: 435, column: 30, scope: !1025)
!1031 = !DILocation(line: 435, column: 2, scope: !1025)
!1032 = !DILocation(line: 436, column: 23, scope: !1025)
!1033 = !DILocation(line: 436, column: 2, scope: !1025)
!1034 = !DILocation(line: 438, column: 2, scope: !1025)
!1035 = !DILocation(line: 439, column: 1, scope: !1025)
!1036 = distinct !DISubprogram(name: "signal_free", scope: !28, file: !28, line: 417, type: !948, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1037 = !DILocalVariable(name: "key", arg: 1, scope: !1036, file: !28, line: 417, type: !22)
!1038 = !DILocation(line: 417, column: 31, scope: !1036)
!1039 = !DILocalVariable(name: "rec", arg: 2, scope: !1036, file: !28, line: 417, type: !26)
!1040 = !DILocation(line: 417, column: 44, scope: !1036)
!1041 = !DILocation(line: 420, column: 127, scope: !1036)
!1042 = !DILocation(line: 420, column: 132, scope: !1036)
!1043 = !DILocation(line: 420, column: 97, scope: !1036)
!1044 = !DILocation(line: 420, column: 137, scope: !1036)
!1045 = !DILocation(line: 420, column: 142, scope: !1036)
!1046 = !DILocation(line: 420, column: 150, scope: !1036)
!1047 = !DILocation(line: 420, column: 2, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1036, file: !28, discriminator: 1)
!1049 = !DILocation(line: 423, column: 2, scope: !1036)
!1050 = !DILocation(line: 423, column: 9, scope: !1048)
!1051 = !DILocation(line: 423, column: 14, scope: !1048)
!1052 = !DILocation(line: 423, column: 20, scope: !1048)
!1053 = !DILocation(line: 423, column: 2, scope: !1048)
!1054 = !DILocation(line: 424, column: 75, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1036, file: !28, line: 423, column: 28)
!1056 = !DILocation(line: 424, column: 80, scope: !1055)
!1057 = !DILocation(line: 424, column: 87, scope: !1055)
!1058 = !DILocation(line: 424, column: 95, scope: !1055)
!1059 = !DILocation(line: 424, column: 100, scope: !1055)
!1060 = !DILocation(line: 424, column: 107, scope: !1055)
!1061 = !DILocation(line: 424, column: 3, scope: !1055)
!1062 = !DILocation(line: 427, column: 22, scope: !1055)
!1063 = !DILocation(line: 427, column: 28, scope: !1055)
!1064 = !DILocation(line: 427, column: 33, scope: !1055)
!1065 = !DILocation(line: 427, column: 3, scope: !1055)
!1066 = !DILocation(line: 423, column: 2, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1036, file: !28, discriminator: 2)
!1068 = distinct !{!1068, !1049}
!1069 = !DILocation(line: 429, column: 1, scope: !1036)
!1070 = distinct !DISubprogram(name: "signal_remove_hook", scope: !28, file: !28, line: 133, type: !1071, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !26, !120}
!1073 = !DILocalVariable(name: "rec", arg: 1, scope: !1070, file: !28, line: 133, type: !26)
!1074 = !DILocation(line: 133, column: 40, scope: !1070)
!1075 = !DILocalVariable(name: "hook_pos", arg: 2, scope: !1070, file: !28, line: 133, type: !120)
!1076 = !DILocation(line: 133, column: 58, scope: !1070)
!1077 = !DILocalVariable(name: "hook", scope: !1070, file: !28, line: 135, type: !39)
!1078 = !DILocation(line: 135, column: 14, scope: !1070)
!1079 = !DILocation(line: 137, column: 17, scope: !1070)
!1080 = !DILocation(line: 137, column: 16, scope: !1070)
!1081 = !DILocation(line: 137, column: 14, scope: !1070)
!1082 = !DILocation(line: 138, column: 21, scope: !1070)
!1083 = !DILocation(line: 138, column: 27, scope: !1070)
!1084 = !DILocation(line: 138, column: 10, scope: !1070)
!1085 = !DILocation(line: 138, column: 19, scope: !1070)
!1086 = !DILocation(line: 140, column: 9, scope: !1070)
!1087 = !DILocation(line: 140, column: 2, scope: !1070)
!1088 = !DILocation(line: 142, column: 21, scope: !1070)
!1089 = !DILocation(line: 142, column: 3, scope: !1070)
!1090 = !DILocation(line: 143, column: 1, scope: !1070)
!1091 = distinct !DISubprogram(name: "signal_unref_full", scope: !28, file: !28, line: 55, type: !1092, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!32, !26, !32}
!1094 = !DILocalVariable(name: "rec", arg: 1, scope: !1091, file: !28, line: 55, type: !26)
!1095 = !DILocation(line: 55, column: 38, scope: !1091)
!1096 = !DILocalVariable(name: "remove", arg: 2, scope: !1091, file: !28, line: 55, type: !32)
!1097 = !DILocation(line: 55, column: 47, scope: !1091)
!1098 = !DILocation(line: 57, column: 9, scope: !1091)
!1099 = distinct !{!1099, !1098}
!1100 = !DILocation(line: 57, column: 18, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1102, file: !28, discriminator: 1)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !28, line: 57, column: 18)
!1103 = distinct !DILexicalBlock(scope: !1091, file: !28, line: 57, column: 12)
!1104 = !DILocation(line: 57, column: 23, scope: !1101)
!1105 = !DILocation(line: 57, column: 32, scope: !1101)
!1106 = !DILocation(line: 57, column: 18, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1103, file: !28, discriminator: 2)
!1108 = !DILocation(line: 57, column: 44, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1102, file: !28, discriminator: 3)
!1110 = !DILocation(line: 57, column: 151, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1103, file: !28, discriminator: 4)
!1112 = !DILocation(line: 59, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1091, file: !28, line: 59, column: 6)
!1114 = !DILocation(line: 59, column: 13, scope: !1113)
!1115 = !DILocation(line: 59, column: 6, scope: !1113)
!1116 = !DILocation(line: 59, column: 22, scope: !1113)
!1117 = !DILocation(line: 59, column: 6, scope: !1091)
!1118 = !DILocation(line: 60, column: 3, scope: !1113)
!1119 = !DILocation(line: 63, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1091, file: !28, line: 63, column: 6)
!1121 = !DILocation(line: 63, column: 11, scope: !1120)
!1122 = !DILocation(line: 63, column: 17, scope: !1120)
!1123 = !DILocation(line: 63, column: 6, scope: !1091)
!1124 = !DILocation(line: 64, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !28, line: 63, column: 25)
!1126 = distinct !{!1126, !1124}
!1127 = !DILocation(line: 64, column: 129, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1129, file: !28, discriminator: 1)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !28, line: 64, column: 6)
!1130 = !DILocation(line: 64, column: 134, scope: !1128)
!1131 = !DILocation(line: 64, column: 99, scope: !1128)
!1132 = !DILocation(line: 64, column: 8, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !28, discriminator: 3)
!1134 = !DILocation(line: 64, column: 140, scope: !1128)
!1135 = !DILocation(line: 64, column: 140, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !28, discriminator: 2)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !28, line: 64, column: 140)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !28, line: 64, column: 140)
!1139 = distinct !{!1139, !1140}
!1140 = !DILocation(line: 64, column: 140, scope: !1129)
!1141 = !DILocation(line: 66, column: 2, scope: !1125)
!1142 = !DILocation(line: 68, column: 6, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1091, file: !28, line: 68, column: 6)
!1144 = !DILocation(line: 68, column: 6, scope: !1091)
!1145 = !DILocation(line: 69, column: 23, scope: !1143)
!1146 = !DILocation(line: 69, column: 53, scope: !1143)
!1147 = !DILocation(line: 69, column: 58, scope: !1143)
!1148 = !DILocation(line: 69, column: 44, scope: !1143)
!1149 = !DILocation(line: 69, column: 33, scope: !1143)
!1150 = !DILocation(line: 69, column: 3, scope: !1143)
!1151 = !DILocation(line: 70, column: 16, scope: !1091)
!1152 = !DILocation(line: 70, column: 9, scope: !1091)
!1153 = !DILocation(line: 72, column: 2, scope: !1091)
!1154 = !DILocation(line: 73, column: 1, scope: !1091)
!1155 = distinct !DISubprogram(name: "signal_hooks_clean", scope: !28, file: !28, line: 187, type: !1156, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !26}
!1158 = !DILocalVariable(name: "rec", arg: 1, scope: !1155, file: !28, line: 187, type: !26)
!1159 = !DILocation(line: 187, column: 40, scope: !1155)
!1160 = !DILocalVariable(name: "hook", scope: !1155, file: !28, line: 189, type: !120)
!1161 = !DILocation(line: 189, column: 15, scope: !1155)
!1162 = !DILocalVariable(name: "next", scope: !1155, file: !28, line: 189, type: !120)
!1163 = !DILocation(line: 189, column: 23, scope: !1155)
!1164 = !DILocalVariable(name: "count", scope: !1155, file: !28, line: 190, type: !32)
!1165 = !DILocation(line: 190, column: 13, scope: !1155)
!1166 = !DILocation(line: 192, column: 17, scope: !1155)
!1167 = !DILocation(line: 192, column: 22, scope: !1155)
!1168 = !DILocation(line: 192, column: 15, scope: !1155)
!1169 = !DILocation(line: 193, column: 9, scope: !1155)
!1170 = !DILocation(line: 193, column: 14, scope: !1155)
!1171 = !DILocation(line: 193, column: 27, scope: !1155)
!1172 = !DILocation(line: 195, column: 15, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1155, file: !28, line: 195, column: 2)
!1174 = !DILocation(line: 195, column: 20, scope: !1173)
!1175 = !DILocation(line: 195, column: 12, scope: !1173)
!1176 = !DILocation(line: 195, column: 7, scope: !1173)
!1177 = !DILocation(line: 195, column: 28, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !28, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !28, line: 195, column: 2)
!1180 = !DILocation(line: 195, column: 27, scope: !1178)
!1181 = !DILocation(line: 195, column: 33, scope: !1178)
!1182 = !DILocation(line: 195, column: 2, scope: !1178)
!1183 = !DILocation(line: 196, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !28, line: 195, column: 54)
!1185 = !DILocation(line: 196, column: 12, scope: !1184)
!1186 = !DILocation(line: 196, column: 20, scope: !1184)
!1187 = !DILocation(line: 196, column: 8, scope: !1184)
!1188 = !DILocation(line: 198, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !28, line: 198, column: 7)
!1190 = !DILocation(line: 198, column: 8, scope: !1189)
!1191 = !DILocation(line: 198, column: 16, scope: !1189)
!1192 = !DILocation(line: 198, column: 21, scope: !1189)
!1193 = !DILocation(line: 198, column: 7, scope: !1184)
!1194 = !DILocation(line: 199, column: 32, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !28, line: 198, column: 29)
!1196 = !DILocation(line: 199, column: 30, scope: !1195)
!1197 = !DILocation(line: 200, column: 23, scope: !1195)
!1198 = !DILocation(line: 200, column: 28, scope: !1195)
!1199 = !DILocation(line: 200, column: 4, scope: !1195)
!1200 = !DILocation(line: 202, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !28, line: 202, column: 8)
!1202 = !DILocation(line: 202, column: 16, scope: !1201)
!1203 = !DILocation(line: 202, column: 8, scope: !1195)
!1204 = !DILocation(line: 203, column: 33, scope: !1201)
!1205 = !DILocation(line: 204, column: 3, scope: !1195)
!1206 = !DILocation(line: 205, column: 2, scope: !1184)
!1207 = !DILocation(line: 195, column: 48, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1179, file: !28, discriminator: 2)
!1209 = !DILocation(line: 195, column: 46, scope: !1208)
!1210 = !DILocation(line: 195, column: 2, scope: !1208)
!1211 = distinct !{!1211, !1212}
!1212 = !DILocation(line: 195, column: 2, scope: !1155)
!1213 = !DILocation(line: 206, column: 1, scope: !1155)
