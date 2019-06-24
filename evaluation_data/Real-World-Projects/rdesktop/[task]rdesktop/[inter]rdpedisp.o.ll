; ModuleID = './[inter]rdpedisp.o.i'
source_filename = "./[inter]rdpedisp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"Microsoft::Windows::RDS::DisplayControl\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"rdpedisp_send_monitor_layout_pdu(), width = %d, height = %d\00", align 1
@g_dpi = external global i32, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"rdpedisp_process_pdu(), Got PDU type %d\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"rdpedisp_process_pdu(), Unhandled PDU type %d\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"rdpedisp_process_caps_pdu(), Max supported monitor area (square pixels) is %d\00", align 1
@g_pending_resize_defer = external global i32, align 4
@g_pending_resize_defer_timer = external global %struct.timeval, align 8

; Function Attrs: nounwind uwtable
define i32 @rdpedisp_is_available() #0 !dbg !37 {
  %1 = call i32 @dvc_channels_is_available(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0)), !dbg !44
  ret i32 %1, !dbg !45
}

declare i32 @dvc_channels_is_available(i8*) #1

; Function Attrs: nounwind uwtable
define void @rdpedisp_set_session_size(i32, i32) #0 !dbg !46 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !49, metadata !50), !dbg !51
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !52, metadata !50), !dbg !53
  %5 = call i32 @rdpedisp_is_available(), !dbg !54
  %6 = icmp eq i32 %5, 0, !dbg !56
  br i1 %6, label %7, label %8, !dbg !57

; <label>:7:                                      ; preds = %2
  br label %11, !dbg !58

; <label>:8:                                      ; preds = %2
  call void @utils_apply_session_size_limitations(i32* %3, i32* %4), !dbg !59
  %9 = load i32, i32* %3, align 4, !dbg !60
  %10 = load i32, i32* %4, align 4, !dbg !61
  call void @rdpedisp_send_monitor_layout_pdu(i32 %9, i32 %10), !dbg !62
  br label %11, !dbg !63

; <label>:11:                                     ; preds = %8, %7
  ret void, !dbg !64
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @utils_apply_session_size_limitations(i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @rdpedisp_send_monitor_layout_pdu(i32, i32) #0 !dbg !66 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !67, metadata !50), !dbg !68
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !69, metadata !50), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.stream* %5, metadata !71, metadata !50), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %6, metadata !87, metadata !50), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %7, metadata !89, metadata !50), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %8, metadata !91, metadata !50), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %9, metadata !93, metadata !50), !dbg !94
  %10 = bitcast %struct.stream* %5 to i8*, !dbg !95
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 72, i32 8, i1 false), !dbg !95
  %11 = load i32, i32* %3, align 4, !dbg !96
  %12 = load i32, i32* %4, align 4, !dbg !97
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i32 %11, i32 %12), !dbg !98
  call void @rdpedisp_init_packet(%struct.stream* %5, i32 2, i32 56), !dbg !99
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !100
  %14 = load i8*, i8** %13, align 8, !dbg !100
  %15 = bitcast i8* %14 to i32*, !dbg !102
  store i32 40, i32* %15, align 4, !dbg !103
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !104
  %17 = load i8*, i8** %16, align 8, !dbg !105
  %18 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !105
  store i8* %18, i8** %16, align 8, !dbg !105
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !106
  %20 = load i8*, i8** %19, align 8, !dbg !106
  %21 = bitcast i8* %20 to i32*, !dbg !108
  store i32 1, i32* %21, align 4, !dbg !109
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !110
  %23 = load i8*, i8** %22, align 8, !dbg !111
  %24 = getelementptr inbounds i8, i8* %23, i64 4, !dbg !111
  store i8* %24, i8** %22, align 8, !dbg !111
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !112
  %26 = load i8*, i8** %25, align 8, !dbg !112
  %27 = bitcast i8* %26 to i32*, !dbg !114
  store i32 1, i32* %27, align 4, !dbg !115
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !116
  %29 = load i8*, i8** %28, align 8, !dbg !117
  %30 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !117
  store i8* %30, i8** %28, align 8, !dbg !117
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !118
  %32 = load i8*, i8** %31, align 8, !dbg !118
  %33 = bitcast i8* %32 to i32*, !dbg !120
  store i32 0, i32* %33, align 4, !dbg !121
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !122
  %35 = load i8*, i8** %34, align 8, !dbg !123
  %36 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !123
  store i8* %36, i8** %34, align 8, !dbg !123
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !124
  %38 = load i8*, i8** %37, align 8, !dbg !124
  %39 = bitcast i8* %38 to i32*, !dbg !126
  store i32 0, i32* %39, align 4, !dbg !127
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !128
  %41 = load i8*, i8** %40, align 8, !dbg !129
  %42 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !129
  store i8* %42, i8** %40, align 8, !dbg !129
  %43 = load i32, i32* %3, align 4, !dbg !130
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !132
  %45 = load i8*, i8** %44, align 8, !dbg !132
  %46 = bitcast i8* %45 to i32*, !dbg !133
  store i32 %43, i32* %46, align 4, !dbg !134
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !135
  %48 = load i8*, i8** %47, align 8, !dbg !136
  %49 = getelementptr inbounds i8, i8* %48, i64 4, !dbg !136
  store i8* %49, i8** %47, align 8, !dbg !136
  %50 = load i32, i32* %4, align 4, !dbg !137
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !139
  %52 = load i8*, i8** %51, align 8, !dbg !139
  %53 = bitcast i8* %52 to i32*, !dbg !140
  store i32 %50, i32* %53, align 4, !dbg !141
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !142
  %55 = load i8*, i8** %54, align 8, !dbg !143
  %56 = getelementptr inbounds i8, i8* %55, i64 4, !dbg !143
  store i8* %56, i8** %54, align 8, !dbg !143
  %57 = load i32, i32* %3, align 4, !dbg !144
  %58 = load i32, i32* %4, align 4, !dbg !145
  %59 = load i32, i32* @g_dpi, align 4, !dbg !146
  call void @utils_calculate_dpi_scale_factors(i32 %57, i32 %58, i32 %59, i32* %6, i32* %7, i32* %8, i32* %9), !dbg !147
  %60 = load i32, i32* %6, align 4, !dbg !148
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !150
  %62 = load i8*, i8** %61, align 8, !dbg !150
  %63 = bitcast i8* %62 to i32*, !dbg !151
  store i32 %60, i32* %63, align 4, !dbg !152
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !153
  %65 = load i8*, i8** %64, align 8, !dbg !154
  %66 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !154
  store i8* %66, i8** %64, align 8, !dbg !154
  %67 = load i32, i32* %7, align 4, !dbg !155
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !157
  %69 = load i8*, i8** %68, align 8, !dbg !157
  %70 = bitcast i8* %69 to i32*, !dbg !158
  store i32 %67, i32* %70, align 4, !dbg !159
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !160
  %72 = load i8*, i8** %71, align 8, !dbg !161
  %73 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !161
  store i8* %73, i8** %71, align 8, !dbg !161
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !162
  %75 = load i8*, i8** %74, align 8, !dbg !162
  %76 = bitcast i8* %75 to i32*, !dbg !164
  store i32 0, i32* %76, align 4, !dbg !165
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !166
  %78 = load i8*, i8** %77, align 8, !dbg !167
  %79 = getelementptr inbounds i8, i8* %78, i64 4, !dbg !167
  store i8* %79, i8** %77, align 8, !dbg !167
  %80 = load i32, i32* %8, align 4, !dbg !168
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !170
  %82 = load i8*, i8** %81, align 8, !dbg !170
  %83 = bitcast i8* %82 to i32*, !dbg !171
  store i32 %80, i32* %83, align 4, !dbg !172
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !173
  %85 = load i8*, i8** %84, align 8, !dbg !174
  %86 = getelementptr inbounds i8, i8* %85, i64 4, !dbg !174
  store i8* %86, i8** %84, align 8, !dbg !174
  %87 = load i32, i32* %9, align 4, !dbg !175
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !177
  %89 = load i8*, i8** %88, align 8, !dbg !177
  %90 = bitcast i8* %89 to i32*, !dbg !178
  store i32 %87, i32* %90, align 4, !dbg !179
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !180
  %92 = load i8*, i8** %91, align 8, !dbg !181
  %93 = getelementptr inbounds i8, i8* %92, i64 4, !dbg !181
  store i8* %93, i8** %91, align 8, !dbg !181
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !182
  %95 = load i8*, i8** %94, align 8, !dbg !182
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 1, !dbg !183
  store i8* %95, i8** %96, align 8, !dbg !184
  call void @rdpedisp_send(%struct.stream* %5), !dbg !185
  ret void, !dbg !186
}

; Function Attrs: nounwind uwtable
define void @rdpedisp_init() #0 !dbg !187 {
  %1 = call i32 @dvc_channels_register(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), void (%struct.stream*)* @rdpedisp_process_pdu), !dbg !190
  ret void, !dbg !191
}

declare i32 @dvc_channels_register(i8*, void (%struct.stream*)*) #1

; Function Attrs: nounwind uwtable
define internal void @rdpedisp_process_pdu(%struct.stream*) #0 !dbg !192 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !197, metadata !50), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %3, metadata !199, metadata !50), !dbg !200
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !201
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !203
  %6 = load i8*, i8** %5, align 8, !dbg !203
  %7 = bitcast i8* %6 to i32*, !dbg !204
  %8 = load i32, i32* %7, align 4, !dbg !204
  store i32 %8, i32* %3, align 4, !dbg !205
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !206
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !207
  %11 = load i8*, i8** %10, align 8, !dbg !208
  %12 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !208
  store i8* %12, i8** %10, align 8, !dbg !208
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !209
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !210
  %15 = load i8*, i8** %14, align 8, !dbg !211
  %16 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !211
  store i8* %16, i8** %14, align 8, !dbg !211
  %17 = load i32, i32* %3, align 4, !dbg !212
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %17), !dbg !213
  %18 = load i32, i32* %3, align 4, !dbg !214
  switch i32 %18, label %21 [
    i32 5, label %19
  ], !dbg !215

; <label>:19:                                     ; preds = %1
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !216
  call void @rdpedisp_process_caps_pdu(%struct.stream* %20), !dbg !218
  br label %23, !dbg !219

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %3, align 4, !dbg !220
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i32 %22), !dbg !221
  br label %23, !dbg !222

; <label>:23:                                     ; preds = %21, %19
  ret void, !dbg !223
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare void @logger(i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @rdpedisp_init_packet(%struct.stream*, i32, i32) #0 !dbg !224 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !227, metadata !50), !dbg !228
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !229, metadata !50), !dbg !230
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !231, metadata !50), !dbg !232
  %7 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !233
  %8 = load i32, i32* %6, align 4, !dbg !234
  call void @s_realloc(%struct.stream* %7, i32 %8), !dbg !235
  %9 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !236
  call void @s_reset(%struct.stream* %9), !dbg !237
  %10 = load i32, i32* %5, align 4, !dbg !238
  %11 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !240
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !241
  %13 = load i8*, i8** %12, align 8, !dbg !241
  %14 = bitcast i8* %13 to i32*, !dbg !242
  store i32 %10, i32* %14, align 4, !dbg !243
  %15 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !244
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !245
  %17 = load i8*, i8** %16, align 8, !dbg !246
  %18 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !246
  store i8* %18, i8** %16, align 8, !dbg !246
  %19 = load i32, i32* %6, align 4, !dbg !247
  %20 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !249
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !250
  %22 = load i8*, i8** %21, align 8, !dbg !250
  %23 = bitcast i8* %22 to i32*, !dbg !251
  store i32 %19, i32* %23, align 4, !dbg !252
  %24 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !253
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !254
  %26 = load i8*, i8** %25, align 8, !dbg !255
  %27 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !255
  store i8* %27, i8** %25, align 8, !dbg !255
  ret void, !dbg !256
}

declare void @utils_calculate_dpi_scale_factors(i32, i32, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @rdpedisp_send(%struct.stream*) #0 !dbg !257 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !258, metadata !50), !dbg !259
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !260
  call void @dvc_send(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), %struct.stream* %3), !dbg !261
  ret void, !dbg !262
}

declare void @s_realloc(%struct.stream*, i32) #1

declare void @s_reset(%struct.stream*) #1

declare void @dvc_send(i8*, %struct.stream*) #1

; Function Attrs: nounwind uwtable
define internal void @rdpedisp_process_caps_pdu(%struct.stream*) #0 !dbg !263 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !264, metadata !50), !dbg !265
  call void @llvm.dbg.declare(metadata [3 x i32]* %3, metadata !266, metadata !50), !dbg !270
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !271
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !273
  %6 = load i8*, i8** %5, align 8, !dbg !273
  %7 = bitcast i8* %6 to i32*, !dbg !274
  %8 = load i32, i32* %7, align 4, !dbg !274
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0, !dbg !275
  store i32 %8, i32* %9, align 4, !dbg !276
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !277
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !278
  %12 = load i8*, i8** %11, align 8, !dbg !279
  %13 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !279
  store i8* %13, i8** %11, align 8, !dbg !279
  %14 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !280
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !282
  %16 = load i8*, i8** %15, align 8, !dbg !282
  %17 = bitcast i8* %16 to i32*, !dbg !283
  %18 = load i32, i32* %17, align 4, !dbg !283
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1, !dbg !284
  store i32 %18, i32* %19, align 4, !dbg !285
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !286
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !287
  %22 = load i8*, i8** %21, align 8, !dbg !288
  %23 = getelementptr inbounds i8, i8* %22, i64 4, !dbg !288
  store i8* %23, i8** %21, align 8, !dbg !288
  %24 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !289
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !291
  %26 = load i8*, i8** %25, align 8, !dbg !291
  %27 = bitcast i8* %26 to i32*, !dbg !292
  %28 = load i32, i32* %27, align 4, !dbg !292
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2, !dbg !293
  store i32 %28, i32* %29, align 4, !dbg !294
  %30 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !295
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !296
  %32 = load i8*, i8** %31, align 8, !dbg !297
  %33 = getelementptr inbounds i8, i8* %32, i64 4, !dbg !297
  store i8* %33, i8** %31, align 8, !dbg !297
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0, !dbg !298
  %35 = load i32, i32* %34, align 4, !dbg !298
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1, !dbg !299
  %37 = load i32, i32* %36, align 4, !dbg !299
  %38 = mul i32 %35, %37, !dbg !300
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2, !dbg !301
  %40 = load i32, i32* %39, align 4, !dbg !301
  %41 = mul i32 %38, %40, !dbg !302
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i32 0, i32 0), i32 %41), !dbg !303
  store i32 0, i32* @g_pending_resize_defer, align 4, !dbg !304
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @g_pending_resize_defer_timer, i32 0, i32 0), align 8, !dbg !305
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @g_pending_resize_defer_timer, i32 0, i32 1), align 8, !dbg !306
  ret void, !dbg !307
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29)
!1 = !DIFile(filename: "[inter]rdpedisp.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_DESKTOP_ORIENTATION", file: !23, line: 699, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "ORIENTATION_LANDSCAPE", value: 0)
!26 = !DIEnumerator(name: "ORIENTATION_PORTRAIT", value: 90)
!27 = !DIEnumerator(name: "ORIENTATION_LANDSCAPE_FLIPPED", value: 180)
!28 = !DIEnumerator(name: "ORIENTATION_PORTRAIT_FLIPPED", value: 270)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !32, line: 43, baseType: !33)
!32 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!33 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!34 = !{i32 2, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!37 = distinct !DISubprogram(name: "rdpedisp_is_available", scope: !38, file: !38, line: 136, type: !39, isLocal: false, isDefinition: true, scopeLine: 137, isOptimized: false, unit: !0, variables: !43)
!38 = !DIFile(filename: "rdpedisp.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!39 = !DISubroutineType(types: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !32, line: 28, baseType: !42)
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !{}
!44 = !DILocation(line: 138, column: 9, scope: !37)
!45 = !DILocation(line: 138, column: 2, scope: !37)
!46 = distinct !DISubprogram(name: "rdpedisp_set_session_size", scope: !38, file: !38, line: 142, type: !47, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !31, !31}
!49 = !DILocalVariable(name: "width", arg: 1, scope: !46, file: !38, line: 142, type: !31)
!50 = !DIExpression()
!51 = !DILocation(line: 142, column: 34, scope: !46)
!52 = !DILocalVariable(name: "height", arg: 2, scope: !46, file: !38, line: 142, type: !31)
!53 = !DILocation(line: 142, column: 48, scope: !46)
!54 = !DILocation(line: 144, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !38, line: 144, column: 6)
!56 = !DILocation(line: 144, column: 30, scope: !55)
!57 = !DILocation(line: 144, column: 6, scope: !46)
!58 = !DILocation(line: 145, column: 3, scope: !55)
!59 = !DILocation(line: 148, column: 2, scope: !46)
!60 = !DILocation(line: 150, column: 35, scope: !46)
!61 = !DILocation(line: 150, column: 42, scope: !46)
!62 = !DILocation(line: 150, column: 2, scope: !46)
!63 = !DILocation(line: 151, column: 1, scope: !46)
!64 = !DILocation(line: 151, column: 1, scope: !65)
!65 = !DILexicalBlockFile(scope: !46, file: !38, discriminator: 1)
!66 = distinct !DISubprogram(name: "rdpedisp_send_monitor_layout_pdu", scope: !38, file: !38, line: 85, type: !47, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!67 = !DILocalVariable(name: "width", arg: 1, scope: !66, file: !38, line: 85, type: !31)
!68 = !DILocation(line: 85, column: 41, scope: !66)
!69 = !DILocalVariable(name: "height", arg: 2, scope: !66, file: !38, line: 85, type: !31)
!70 = !DILocation(line: 85, column: 55, scope: !66)
!71 = !DILocalVariable(name: "s", scope: !66, file: !38, line: 87, type: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !73, line: 25, size: 576, align: 64, elements: !74)
!73 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!74 = !{!75, !78, !79, !80, !81, !82, !83, !84, !85}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !72, file: !73, line: 27, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !72, file: !73, line: 28, baseType: !76, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !72, file: !73, line: 29, baseType: !76, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !72, file: !73, line: 30, baseType: !33, size: 32, align: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !72, file: !73, line: 33, baseType: !76, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !72, file: !73, line: 34, baseType: !76, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !72, file: !73, line: 35, baseType: !76, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !72, file: !73, line: 36, baseType: !76, size: 64, align: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !72, file: !73, line: 37, baseType: !76, size: 64, align: 64, offset: 512)
!86 = !DILocation(line: 87, column: 16, scope: !66)
!87 = !DILocalVariable(name: "physwidth", scope: !66, file: !38, line: 88, type: !31)
!88 = !DILocation(line: 88, column: 9, scope: !66)
!89 = !DILocalVariable(name: "physheight", scope: !66, file: !38, line: 88, type: !31)
!90 = !DILocation(line: 88, column: 20, scope: !66)
!91 = !DILocalVariable(name: "desktopscale", scope: !66, file: !38, line: 88, type: !31)
!92 = !DILocation(line: 88, column: 32, scope: !66)
!93 = !DILocalVariable(name: "devicescale", scope: !66, file: !38, line: 88, type: !31)
!94 = !DILocation(line: 88, column: 46, scope: !66)
!95 = !DILocation(line: 90, column: 2, scope: !66)
!96 = !DILocation(line: 92, column: 89, scope: !66)
!97 = !DILocation(line: 93, column: 9, scope: !66)
!98 = !DILocation(line: 92, column: 2, scope: !66)
!99 = !DILocation(line: 95, column: 2, scope: !66)
!100 = !DILocation(line: 97, column: 22, scope: !101)
!101 = distinct !DILexicalBlock(scope: !66, file: !38, line: 97, column: 2)
!102 = !DILocation(line: 97, column: 4, scope: !101)
!103 = !DILocation(line: 97, column: 25, scope: !101)
!104 = !DILocation(line: 97, column: 37, scope: !101)
!105 = !DILocation(line: 97, column: 39, scope: !101)
!106 = !DILocation(line: 98, column: 22, scope: !107)
!107 = distinct !DILexicalBlock(scope: !66, file: !38, line: 98, column: 2)
!108 = !DILocation(line: 98, column: 4, scope: !107)
!109 = !DILocation(line: 98, column: 25, scope: !107)
!110 = !DILocation(line: 98, column: 36, scope: !107)
!111 = !DILocation(line: 98, column: 38, scope: !107)
!112 = !DILocation(line: 100, column: 22, scope: !113)
!113 = distinct !DILexicalBlock(scope: !66, file: !38, line: 100, column: 2)
!114 = !DILocation(line: 100, column: 4, scope: !113)
!115 = !DILocation(line: 100, column: 25, scope: !113)
!116 = !DILocation(line: 100, column: 38, scope: !113)
!117 = !DILocation(line: 100, column: 40, scope: !113)
!118 = !DILocation(line: 101, column: 22, scope: !119)
!119 = distinct !DILexicalBlock(scope: !66, file: !38, line: 101, column: 2)
!120 = !DILocation(line: 101, column: 4, scope: !119)
!121 = !DILocation(line: 101, column: 25, scope: !119)
!122 = !DILocation(line: 101, column: 36, scope: !119)
!123 = !DILocation(line: 101, column: 38, scope: !119)
!124 = !DILocation(line: 102, column: 22, scope: !125)
!125 = distinct !DILexicalBlock(scope: !66, file: !38, line: 102, column: 2)
!126 = !DILocation(line: 102, column: 4, scope: !125)
!127 = !DILocation(line: 102, column: 25, scope: !125)
!128 = !DILocation(line: 102, column: 36, scope: !125)
!129 = !DILocation(line: 102, column: 38, scope: !125)
!130 = !DILocation(line: 103, column: 27, scope: !131)
!131 = distinct !DILexicalBlock(scope: !66, file: !38, line: 103, column: 2)
!132 = !DILocation(line: 103, column: 22, scope: !131)
!133 = !DILocation(line: 103, column: 4, scope: !131)
!134 = !DILocation(line: 103, column: 25, scope: !131)
!135 = !DILocation(line: 103, column: 40, scope: !131)
!136 = !DILocation(line: 103, column: 42, scope: !131)
!137 = !DILocation(line: 104, column: 27, scope: !138)
!138 = distinct !DILexicalBlock(scope: !66, file: !38, line: 104, column: 2)
!139 = !DILocation(line: 104, column: 22, scope: !138)
!140 = !DILocation(line: 104, column: 4, scope: !138)
!141 = !DILocation(line: 104, column: 25, scope: !138)
!142 = !DILocation(line: 104, column: 41, scope: !138)
!143 = !DILocation(line: 104, column: 43, scope: !138)
!144 = !DILocation(line: 106, column: 36, scope: !66)
!145 = !DILocation(line: 106, column: 43, scope: !66)
!146 = !DILocation(line: 106, column: 51, scope: !66)
!147 = !DILocation(line: 106, column: 2, scope: !66)
!148 = !DILocation(line: 109, column: 27, scope: !149)
!149 = distinct !DILexicalBlock(scope: !66, file: !38, line: 109, column: 2)
!150 = !DILocation(line: 109, column: 22, scope: !149)
!151 = !DILocation(line: 109, column: 4, scope: !149)
!152 = !DILocation(line: 109, column: 25, scope: !149)
!153 = !DILocation(line: 109, column: 44, scope: !149)
!154 = !DILocation(line: 109, column: 46, scope: !149)
!155 = !DILocation(line: 110, column: 27, scope: !156)
!156 = distinct !DILexicalBlock(scope: !66, file: !38, line: 110, column: 2)
!157 = !DILocation(line: 110, column: 22, scope: !156)
!158 = !DILocation(line: 110, column: 4, scope: !156)
!159 = !DILocation(line: 110, column: 25, scope: !156)
!160 = !DILocation(line: 110, column: 45, scope: !156)
!161 = !DILocation(line: 110, column: 47, scope: !156)
!162 = !DILocation(line: 111, column: 22, scope: !163)
!163 = distinct !DILexicalBlock(scope: !66, file: !38, line: 111, column: 2)
!164 = !DILocation(line: 111, column: 4, scope: !163)
!165 = !DILocation(line: 111, column: 25, scope: !163)
!166 = !DILocation(line: 111, column: 56, scope: !163)
!167 = !DILocation(line: 111, column: 58, scope: !163)
!168 = !DILocation(line: 112, column: 27, scope: !169)
!169 = distinct !DILexicalBlock(scope: !66, file: !38, line: 112, column: 2)
!170 = !DILocation(line: 112, column: 22, scope: !169)
!171 = !DILocation(line: 112, column: 4, scope: !169)
!172 = !DILocation(line: 112, column: 25, scope: !169)
!173 = !DILocation(line: 112, column: 47, scope: !169)
!174 = !DILocation(line: 112, column: 49, scope: !169)
!175 = !DILocation(line: 113, column: 27, scope: !176)
!176 = distinct !DILexicalBlock(scope: !66, file: !38, line: 113, column: 2)
!177 = !DILocation(line: 113, column: 22, scope: !176)
!178 = !DILocation(line: 113, column: 4, scope: !176)
!179 = !DILocation(line: 113, column: 25, scope: !176)
!180 = !DILocation(line: 113, column: 46, scope: !176)
!181 = !DILocation(line: 113, column: 48, scope: !176)
!182 = !DILocation(line: 114, column: 20, scope: !66)
!183 = !DILocation(line: 114, column: 8, scope: !66)
!184 = !DILocation(line: 114, column: 12, scope: !66)
!185 = !DILocation(line: 116, column: 2, scope: !66)
!186 = !DILocation(line: 117, column: 1, scope: !66)
!187 = distinct !DISubprogram(name: "rdpedisp_init", scope: !38, file: !38, line: 154, type: !188, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!188 = !DISubroutineType(types: !189)
!189 = !{null}
!190 = !DILocation(line: 156, column: 2, scope: !187)
!191 = !DILocation(line: 157, column: 1, scope: !187)
!192 = distinct !DISubprogram(name: "rdpedisp_process_pdu", scope: !38, file: !38, line: 61, type: !193, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !73, line: 40, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!197 = !DILocalVariable(name: "s", arg: 1, scope: !192, file: !38, line: 61, type: !195)
!198 = !DILocation(line: 61, column: 29, scope: !192)
!199 = !DILocalVariable(name: "type", scope: !192, file: !38, line: 63, type: !31)
!200 = !DILocation(line: 63, column: 9, scope: !192)
!201 = !DILocation(line: 66, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !192, file: !38, line: 66, column: 2)
!203 = !DILocation(line: 66, column: 28, scope: !202)
!204 = !DILocation(line: 66, column: 11, scope: !202)
!205 = !DILocation(line: 66, column: 9, scope: !202)
!206 = !DILocation(line: 66, column: 33, scope: !202)
!207 = !DILocation(line: 66, column: 37, scope: !202)
!208 = !DILocation(line: 66, column: 39, scope: !202)
!209 = !DILocation(line: 67, column: 3, scope: !192)
!210 = !DILocation(line: 67, column: 7, scope: !192)
!211 = !DILocation(line: 67, column: 9, scope: !192)
!212 = !DILocation(line: 69, column: 69, scope: !192)
!213 = !DILocation(line: 69, column: 2, scope: !192)
!214 = !DILocation(line: 71, column: 10, scope: !192)
!215 = !DILocation(line: 71, column: 2, scope: !192)
!216 = !DILocation(line: 74, column: 30, scope: !217)
!217 = distinct !DILexicalBlock(scope: !192, file: !38, line: 72, column: 2)
!218 = !DILocation(line: 74, column: 4, scope: !217)
!219 = !DILocation(line: 75, column: 4, scope: !217)
!220 = !DILocation(line: 79, column: 11, scope: !217)
!221 = !DILocation(line: 78, column: 4, scope: !217)
!222 = !DILocation(line: 80, column: 4, scope: !217)
!223 = !DILocation(line: 82, column: 1, scope: !192)
!224 = distinct !DISubprogram(name: "rdpedisp_init_packet", scope: !38, file: !38, line: 120, type: !225, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !195, !31, !31}
!227 = !DILocalVariable(name: "s", arg: 1, scope: !224, file: !38, line: 120, type: !195)
!228 = !DILocation(line: 120, column: 29, scope: !224)
!229 = !DILocalVariable(name: "type", arg: 2, scope: !224, file: !38, line: 120, type: !31)
!230 = !DILocation(line: 120, column: 39, scope: !224)
!231 = !DILocalVariable(name: "length", arg: 3, scope: !224, file: !38, line: 120, type: !31)
!232 = !DILocation(line: 120, column: 52, scope: !224)
!233 = !DILocation(line: 122, column: 12, scope: !224)
!234 = !DILocation(line: 122, column: 15, scope: !224)
!235 = !DILocation(line: 122, column: 2, scope: !224)
!236 = !DILocation(line: 123, column: 10, scope: !224)
!237 = !DILocation(line: 123, column: 2, scope: !224)
!238 = !DILocation(line: 125, column: 26, scope: !239)
!239 = distinct !DILexicalBlock(scope: !224, file: !38, line: 125, column: 2)
!240 = !DILocation(line: 125, column: 17, scope: !239)
!241 = !DILocation(line: 125, column: 21, scope: !239)
!242 = !DILocation(line: 125, column: 4, scope: !239)
!243 = !DILocation(line: 125, column: 24, scope: !239)
!244 = !DILocation(line: 125, column: 33, scope: !239)
!245 = !DILocation(line: 125, column: 37, scope: !239)
!246 = !DILocation(line: 125, column: 39, scope: !239)
!247 = !DILocation(line: 126, column: 26, scope: !248)
!248 = distinct !DILexicalBlock(scope: !224, file: !38, line: 126, column: 2)
!249 = !DILocation(line: 126, column: 17, scope: !248)
!250 = !DILocation(line: 126, column: 21, scope: !248)
!251 = !DILocation(line: 126, column: 4, scope: !248)
!252 = !DILocation(line: 126, column: 24, scope: !248)
!253 = !DILocation(line: 126, column: 35, scope: !248)
!254 = !DILocation(line: 126, column: 39, scope: !248)
!255 = !DILocation(line: 126, column: 41, scope: !248)
!256 = !DILocation(line: 127, column: 1, scope: !224)
!257 = distinct !DISubprogram(name: "rdpedisp_send", scope: !38, file: !38, line: 130, type: !193, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!258 = !DILocalVariable(name: "s", arg: 1, scope: !257, file: !38, line: 130, type: !195)
!259 = !DILocation(line: 130, column: 22, scope: !257)
!260 = !DILocation(line: 132, column: 54, scope: !257)
!261 = !DILocation(line: 132, column: 2, scope: !257)
!262 = !DILocation(line: 133, column: 1, scope: !257)
!263 = distinct !DISubprogram(name: "rdpedisp_process_caps_pdu", scope: !38, file: !38, line: 37, type: !193, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !43)
!264 = !DILocalVariable(name: "s", arg: 1, scope: !263, file: !38, line: 37, type: !195)
!265 = !DILocation(line: 37, column: 34, scope: !263)
!266 = !DILocalVariable(name: "tmp", scope: !263, file: !38, line: 39, type: !267)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, align: 32, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 3)
!270 = !DILocation(line: 39, column: 9, scope: !263)
!271 = !DILocation(line: 41, column: 26, scope: !272)
!272 = distinct !DILexicalBlock(scope: !263, file: !38, line: 41, column: 2)
!273 = !DILocation(line: 41, column: 30, scope: !272)
!274 = !DILocation(line: 41, column: 13, scope: !272)
!275 = !DILocation(line: 41, column: 4, scope: !272)
!276 = !DILocation(line: 41, column: 11, scope: !272)
!277 = !DILocation(line: 41, column: 35, scope: !272)
!278 = !DILocation(line: 41, column: 39, scope: !272)
!279 = !DILocation(line: 41, column: 41, scope: !272)
!280 = !DILocation(line: 42, column: 26, scope: !281)
!281 = distinct !DILexicalBlock(scope: !263, file: !38, line: 42, column: 2)
!282 = !DILocation(line: 42, column: 30, scope: !281)
!283 = !DILocation(line: 42, column: 13, scope: !281)
!284 = !DILocation(line: 42, column: 4, scope: !281)
!285 = !DILocation(line: 42, column: 11, scope: !281)
!286 = !DILocation(line: 42, column: 35, scope: !281)
!287 = !DILocation(line: 42, column: 39, scope: !281)
!288 = !DILocation(line: 42, column: 41, scope: !281)
!289 = !DILocation(line: 43, column: 26, scope: !290)
!290 = distinct !DILexicalBlock(scope: !263, file: !38, line: 43, column: 2)
!291 = !DILocation(line: 43, column: 30, scope: !290)
!292 = !DILocation(line: 43, column: 13, scope: !290)
!293 = !DILocation(line: 43, column: 4, scope: !290)
!294 = !DILocation(line: 43, column: 11, scope: !290)
!295 = !DILocation(line: 43, column: 35, scope: !290)
!296 = !DILocation(line: 43, column: 39, scope: !290)
!297 = !DILocation(line: 43, column: 41, scope: !290)
!298 = !DILocation(line: 47, column: 9, scope: !263)
!299 = !DILocation(line: 47, column: 18, scope: !263)
!300 = !DILocation(line: 47, column: 16, scope: !263)
!301 = !DILocation(line: 47, column: 27, scope: !263)
!302 = !DILocation(line: 47, column: 25, scope: !263)
!303 = !DILocation(line: 45, column: 2, scope: !263)
!304 = !DILocation(line: 55, column: 25, scope: !263)
!305 = !DILocation(line: 56, column: 38, scope: !263)
!306 = !DILocation(line: 57, column: 39, scope: !263)
!307 = !DILocation(line: 58, column: 1, scope: !263)
