; ModuleID = './[inter]mcs.o.i'
source_filename = "./[inter]mcs.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"mcs_send_dpu(), reason=%d\00", align 1
@g_mcs_userid = common global i16 0, align 2
@.str.1 = private unnamed_addr constant [34 x i8] c"mcs_recv(), expected data, got %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s()\00", align 1
@__func__.mcs_connect_start = private unnamed_addr constant [18 x i8] c"mcs_connect_start\00", align 1
@__func__.mcs_connect_finalize = private unnamed_addr constant [21 x i8] c"mcs_connect_finalize\00", align 1
@g_num_channels = external global i32, align 4
@g_channels = external global [0 x %struct._VCHANNEL], align 8
@__func__.mcs_send_connect_initial = private unnamed_addr constant [25 x i8] c"mcs_send_connect_initial\00", align 1
@__func__.mcs_recv_connect_response = private unnamed_addr constant [26 x i8] c"mcs_recv_connect_response\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"mcs_recv_connect_response(), result=%d\00", align 1
@__func__.mcs_send_edrq = private unnamed_addr constant [14 x i8] c"mcs_send_edrq\00", align 1
@__func__.mcs_send_aurq = private unnamed_addr constant [14 x i8] c"mcs_send_aurq\00", align 1
@__func__.mcs_recv_aucf = private unnamed_addr constant [14 x i8] c"mcs_recv_aucf\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"mcs_recv_aucf(), expected opcode AUcf, got %d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"mcs_recv_aucf(), expected result 0, got %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"mcs_send_cjrq(), chanid=%d\00", align 1
@__func__.mcs_recv_cjcf = private unnamed_addr constant [14 x i8] c"mcs_recv_cjcf\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"mcs_recv_cjcf(), expected opcode CJcf, got %d\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"mcs_recv_cjcf(), expected result 0, got %d\00", align 1

; Function Attrs: nounwind uwtable
define void @mcs_send_dpu(i16 zeroext) #0 !dbg !44 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.stream*, align 8
  %4 = alloca %struct.stream*, align 8
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !48, metadata !49), !dbg !50
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !51, metadata !49), !dbg !69
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !70, metadata !49), !dbg !71
  %5 = load i16, i16* %2, align 2, !dbg !72
  %6 = zext i16 %5 to i32, !dbg !72
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %6), !dbg !73
  %7 = call noalias i8* @malloc(i64 72) #5, !dbg !74
  %8 = bitcast i8* %7 to %struct.stream*, !dbg !74
  store %struct.stream* %8, %struct.stream** %4, align 8, !dbg !75
  %9 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !76
  %10 = bitcast %struct.stream* %9 to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 72, i32 8, i1 false), !dbg !77
  %11 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !78
  call void @s_realloc(%struct.stream* %11, i32 6), !dbg !79
  %12 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !80
  call void @s_reset(%struct.stream* %12), !dbg !81
  %13 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !82
  %14 = load i16, i16* %2, align 2, !dbg !83
  %15 = zext i16 %14 to i32, !dbg !83
  call void @ber_out_integer(%struct.stream* %13, i32 %15), !dbg !84
  %16 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !85
  call void @ber_out_sequence(%struct.stream* %16, %struct.stream* null), !dbg !86
  %17 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !87
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !88
  %19 = load i8*, i8** %18, align 8, !dbg !88
  %20 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !89
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 1, !dbg !90
  store i8* %19, i8** %21, align 8, !dbg !91
  %22 = call %struct.stream* @iso_init(i32 8), !dbg !92
  store %struct.stream* %22, %struct.stream** %3, align 8, !dbg !93
  %23 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !94
  %24 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !95
  call void @ber_out_sequence(%struct.stream* %23, %struct.stream* %24), !dbg !96
  %25 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !97
  call void @s_free(%struct.stream* %25), !dbg !98
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !99
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !100
  %28 = load i8*, i8** %27, align 8, !dbg !100
  %29 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !101
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 1, !dbg !102
  store i8* %28, i8** %30, align 8, !dbg !103
  %31 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !104
  call void @iso_send(%struct.stream* %31), !dbg !105
  ret void, !dbg !106
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare void @s_realloc(%struct.stream*, i32) #2

declare void @s_reset(%struct.stream*) #2

declare void @ber_out_integer(%struct.stream*, i32) #2

declare void @ber_out_sequence(%struct.stream*, %struct.stream*) #2

declare %struct.stream* @iso_init(i32) #2

declare void @s_free(%struct.stream*) #2

declare void @iso_send(%struct.stream*) #2

; Function Attrs: nounwind uwtable
define %struct.stream* @mcs_init(i32) #0 !dbg !107 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !111, metadata !49), !dbg !112
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !113, metadata !49), !dbg !114
  %4 = load i32, i32* %2, align 4, !dbg !115
  %5 = add nsw i32 %4, 8, !dbg !116
  %6 = call %struct.stream* @iso_init(i32 %5), !dbg !117
  store %struct.stream* %6, %struct.stream** %3, align 8, !dbg !118
  %7 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !119
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !121
  %9 = load i8*, i8** %8, align 8, !dbg !121
  %10 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !122
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 5, !dbg !123
  store i8* %9, i8** %11, align 8, !dbg !124
  %12 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !125
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !126
  %14 = load i8*, i8** %13, align 8, !dbg !127
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !127
  store i8* %15, i8** %13, align 8, !dbg !127
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !128
  ret %struct.stream* %16, !dbg !129
}

; Function Attrs: nounwind uwtable
define void @mcs_send_to_channel(%struct.stream*, i16 zeroext) #0 !dbg !130 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !133, metadata !49), !dbg !134
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !135, metadata !49), !dbg !136
  call void @llvm.dbg.declare(metadata i16* %5, metadata !137, metadata !49), !dbg !138
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !139
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 5, !dbg !140
  %8 = load i8*, i8** %7, align 8, !dbg !140
  %9 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !141
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !142
  store i8* %8, i8** %10, align 8, !dbg !143
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !144
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !145
  %13 = load i8*, i8** %12, align 8, !dbg !145
  %14 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !146
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !147
  %16 = load i8*, i8** %15, align 8, !dbg !147
  %17 = ptrtoint i8* %13 to i64, !dbg !148
  %18 = ptrtoint i8* %16 to i64, !dbg !148
  %19 = sub i64 %17, %18, !dbg !148
  %20 = sub nsw i64 %19, 8, !dbg !149
  %21 = trunc i64 %20 to i16, !dbg !144
  store i16 %21, i16* %5, align 2, !dbg !150
  %22 = load i16, i16* %5, align 2, !dbg !151
  %23 = zext i16 %22 to i32, !dbg !151
  %24 = or i32 %23, 32768, !dbg !151
  %25 = trunc i32 %24 to i16, !dbg !151
  store i16 %25, i16* %5, align 2, !dbg !151
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !152
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !153
  %28 = load i8*, i8** %27, align 8, !dbg !154
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !154
  store i8* %29, i8** %27, align 8, !dbg !154
  store i8 100, i8* %28, align 1, !dbg !155
  %30 = load i16, i16* @g_mcs_userid, align 2, !dbg !156
  %31 = zext i16 %30 to i32, !dbg !158
  %32 = ashr i32 %31, 8, !dbg !159
  %33 = and i32 %32, 255, !dbg !160
  %34 = trunc i32 %33 to i8, !dbg !161
  %35 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !162
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !163
  %37 = load i8*, i8** %36, align 8, !dbg !164
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !164
  store i8* %38, i8** %36, align 8, !dbg !164
  store i8 %34, i8* %37, align 1, !dbg !165
  %39 = load i16, i16* @g_mcs_userid, align 2, !dbg !166
  %40 = zext i16 %39 to i32, !dbg !167
  %41 = and i32 %40, 255, !dbg !168
  %42 = trunc i32 %41 to i8, !dbg !167
  %43 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !169
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !170
  %45 = load i8*, i8** %44, align 8, !dbg !171
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !171
  store i8* %46, i8** %44, align 8, !dbg !171
  store i8 %42, i8* %45, align 1, !dbg !172
  %47 = load i16, i16* %4, align 2, !dbg !173
  %48 = zext i16 %47 to i32, !dbg !175
  %49 = ashr i32 %48, 8, !dbg !176
  %50 = and i32 %49, 255, !dbg !177
  %51 = trunc i32 %50 to i8, !dbg !178
  %52 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !179
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !180
  %54 = load i8*, i8** %53, align 8, !dbg !181
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !181
  store i8* %55, i8** %53, align 8, !dbg !181
  store i8 %51, i8* %54, align 1, !dbg !182
  %56 = load i16, i16* %4, align 2, !dbg !183
  %57 = zext i16 %56 to i32, !dbg !184
  %58 = and i32 %57, 255, !dbg !185
  %59 = trunc i32 %58 to i8, !dbg !184
  %60 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !186
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !187
  %62 = load i8*, i8** %61, align 8, !dbg !188
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !188
  store i8* %63, i8** %61, align 8, !dbg !188
  store i8 %59, i8* %62, align 1, !dbg !189
  %64 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !190
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !191
  %66 = load i8*, i8** %65, align 8, !dbg !192
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !192
  store i8* %67, i8** %65, align 8, !dbg !192
  store i8 112, i8* %66, align 1, !dbg !193
  %68 = load i16, i16* %5, align 2, !dbg !194
  %69 = zext i16 %68 to i32, !dbg !196
  %70 = ashr i32 %69, 8, !dbg !197
  %71 = and i32 %70, 255, !dbg !198
  %72 = trunc i32 %71 to i8, !dbg !199
  %73 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !200
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 0, !dbg !201
  %75 = load i8*, i8** %74, align 8, !dbg !202
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !202
  store i8* %76, i8** %74, align 8, !dbg !202
  store i8 %72, i8* %75, align 1, !dbg !203
  %77 = load i16, i16* %5, align 2, !dbg !204
  %78 = zext i16 %77 to i32, !dbg !205
  %79 = and i32 %78, 255, !dbg !206
  %80 = trunc i32 %79 to i8, !dbg !205
  %81 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !207
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !208
  %83 = load i8*, i8** %82, align 8, !dbg !209
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !209
  store i8* %84, i8** %82, align 8, !dbg !209
  store i8 %80, i8* %83, align 1, !dbg !210
  %85 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !211
  call void @iso_send(%struct.stream* %85), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: nounwind uwtable
define void @mcs_send(%struct.stream*) #0 !dbg !214 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !217, metadata !49), !dbg !218
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !219
  call void @mcs_send_to_channel(%struct.stream* %3, i16 zeroext 1003), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: nounwind uwtable
define %struct.stream* @mcs_recv(i16*, i32*, i8*) #0 !dbg !222 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.stream*, align 8
  store i16* %0, i16** %5, align 8
  call void @llvm.dbg.declare(metadata i16** %5, metadata !230, metadata !49), !dbg !231
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !232, metadata !49), !dbg !233
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !234, metadata !49), !dbg !235
  call void @llvm.dbg.declare(metadata i8* %8, metadata !236, metadata !49), !dbg !237
  call void @llvm.dbg.declare(metadata i8* %9, metadata !238, metadata !49), !dbg !239
  call void @llvm.dbg.declare(metadata i8* %10, metadata !240, metadata !49), !dbg !241
  call void @llvm.dbg.declare(metadata %struct.stream** %11, metadata !242, metadata !49), !dbg !243
  %12 = load i32*, i32** %6, align 8, !dbg !244
  %13 = load i8*, i8** %7, align 8, !dbg !245
  %14 = call %struct.stream* @iso_recv(i32* %12, i8* %13), !dbg !246
  store %struct.stream* %14, %struct.stream** %11, align 8, !dbg !247
  %15 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !248
  %16 = icmp eq %struct.stream* %15, null, !dbg !250
  br i1 %16, label %17, label %18, !dbg !251

; <label>:17:                                     ; preds = %3
  store %struct.stream* null, %struct.stream** %4, align 8, !dbg !252
  br label %90, !dbg !252

; <label>:18:                                     ; preds = %3
  %19 = load i32*, i32** %6, align 8, !dbg !253
  %20 = load i32, i32* %19, align 4, !dbg !255
  %21 = icmp eq i32 %20, 1, !dbg !256
  br i1 %21, label %22, label %24, !dbg !257

; <label>:22:                                     ; preds = %18
  %23 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !258
  store %struct.stream* %23, %struct.stream** %4, align 8, !dbg !259
  br label %90, !dbg !259

; <label>:24:                                     ; preds = %18
  %25 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !260
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !261
  %27 = load i8*, i8** %26, align 8, !dbg !262
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !262
  store i8* %28, i8** %26, align 8, !dbg !262
  %29 = load i8, i8* %27, align 1, !dbg !263
  store i8 %29, i8* %8, align 1, !dbg !264
  %30 = load i8, i8* %8, align 1, !dbg !265
  %31 = zext i8 %30 to i32, !dbg !265
  %32 = ashr i32 %31, 2, !dbg !266
  %33 = trunc i32 %32 to i8, !dbg !265
  store i8 %33, i8* %9, align 1, !dbg !267
  %34 = load i8, i8* %9, align 1, !dbg !268
  %35 = zext i8 %34 to i32, !dbg !268
  %36 = icmp ne i32 %35, 26, !dbg !270
  br i1 %36, label %37, label %45, !dbg !271

; <label>:37:                                     ; preds = %24
  %38 = load i8, i8* %9, align 1, !dbg !272
  %39 = zext i8 %38 to i32, !dbg !272
  %40 = icmp ne i32 %39, 8, !dbg !275
  br i1 %40, label %41, label %44, !dbg !276

; <label>:41:                                     ; preds = %37
  %42 = load i8, i8* %8, align 1, !dbg !277
  %43 = zext i8 %42 to i32, !dbg !277
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %43), !dbg !279
  br label %44, !dbg !280

; <label>:44:                                     ; preds = %41, %37
  store %struct.stream* null, %struct.stream** %4, align 8, !dbg !281
  br label %90, !dbg !281

; <label>:45:                                     ; preds = %24
  %46 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !282
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !283
  %48 = load i8*, i8** %47, align 8, !dbg !284
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !284
  store i8* %49, i8** %47, align 8, !dbg !284
  %50 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !285
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !287
  %52 = load i8*, i8** %51, align 8, !dbg !288
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !288
  store i8* %53, i8** %51, align 8, !dbg !288
  %54 = load i8, i8* %52, align 1, !dbg !289
  %55 = zext i8 %54 to i16, !dbg !289
  %56 = load i16*, i16** %5, align 8, !dbg !290
  store i16 %55, i16* %56, align 2, !dbg !291
  %57 = load i16*, i16** %5, align 8, !dbg !292
  %58 = load i16, i16* %57, align 2, !dbg !293
  %59 = zext i16 %58 to i32, !dbg !294
  %60 = shl i32 %59, 8, !dbg !295
  %61 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !296
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !297
  %63 = load i8*, i8** %62, align 8, !dbg !298
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !298
  store i8* %64, i8** %62, align 8, !dbg !298
  %65 = load i8, i8* %63, align 1, !dbg !299
  %66 = zext i8 %65 to i32, !dbg !299
  %67 = add nsw i32 %60, %66, !dbg !300
  %68 = trunc i32 %67 to i16, !dbg !301
  %69 = load i16*, i16** %5, align 8, !dbg !302
  store i16 %68, i16* %69, align 2, !dbg !303
  %70 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !304
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !305
  %72 = load i8*, i8** %71, align 8, !dbg !306
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !306
  store i8* %73, i8** %71, align 8, !dbg !306
  %74 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !307
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0, !dbg !308
  %76 = load i8*, i8** %75, align 8, !dbg !309
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !309
  store i8* %77, i8** %75, align 8, !dbg !309
  %78 = load i8, i8* %76, align 1, !dbg !310
  store i8 %78, i8* %10, align 1, !dbg !311
  %79 = load i8, i8* %10, align 1, !dbg !312
  %80 = zext i8 %79 to i32, !dbg !312
  %81 = and i32 %80, 128, !dbg !314
  %82 = icmp ne i32 %81, 0, !dbg !314
  br i1 %82, label %83, label %88, !dbg !315

; <label>:83:                                     ; preds = %45
  %84 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !316
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !317
  %86 = load i8*, i8** %85, align 8, !dbg !318
  %87 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !318
  store i8* %87, i8** %85, align 8, !dbg !318
  br label %88, !dbg !319

; <label>:88:                                     ; preds = %83, %45
  %89 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !320
  store %struct.stream* %89, %struct.stream** %4, align 8, !dbg !321
  br label %90, !dbg !321

; <label>:90:                                     ; preds = %88, %44, %22, %17
  %91 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !322
  ret %struct.stream* %91, !dbg !322
}

declare %struct.stream* @iso_recv(i32*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @mcs_connect_start(i8*, i8*, i8*, i8*, i32, i32*) #0 !dbg !323 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !330, metadata !49), !dbg !331
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !332, metadata !49), !dbg !333
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !334, metadata !49), !dbg !335
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !336, metadata !49), !dbg !337
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !338, metadata !49), !dbg !339
  store i32* %5, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !340, metadata !49), !dbg !341
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.mcs_connect_start, i32 0, i32 0)), !dbg !342
  %13 = load i8*, i8** %7, align 8, !dbg !343
  %14 = load i8*, i8** %8, align 8, !dbg !344
  %15 = load i8*, i8** %9, align 8, !dbg !345
  %16 = load i8*, i8** %10, align 8, !dbg !346
  %17 = load i32, i32* %11, align 4, !dbg !347
  %18 = load i32*, i32** %12, align 8, !dbg !348
  %19 = call i32 @iso_connect(i8* %13, i8* %14, i8* %15, i8* %16, i32 %17, i32* %18), !dbg !349
  ret i32 %19, !dbg !350
}

declare i32 @iso_connect(i8*, i8*, i8*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @mcs_connect_finalize(%struct.stream*) #0 !dbg !351 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !354, metadata !49), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %4, metadata !356, metadata !49), !dbg !357
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.mcs_connect_finalize, i32 0, i32 0)), !dbg !358
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !359
  call void @mcs_send_connect_initial(%struct.stream* %5), !dbg !360
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !361
  %7 = call i32 @mcs_recv_connect_response(%struct.stream* %6), !dbg !363
  %8 = icmp ne i32 %7, 0, !dbg !363
  br i1 %8, label %10, label %9, !dbg !364

; <label>:9:                                      ; preds = %1
  br label %45, !dbg !365

; <label>:10:                                     ; preds = %1
  call void @mcs_send_edrq(), !dbg !366
  call void @mcs_send_aurq(), !dbg !367
  %11 = call i32 @mcs_recv_aucf(i16* @g_mcs_userid), !dbg !368
  %12 = icmp ne i32 %11, 0, !dbg !368
  br i1 %12, label %14, label %13, !dbg !370

; <label>:13:                                     ; preds = %10
  br label %45, !dbg !371

; <label>:14:                                     ; preds = %10
  %15 = load i16, i16* @g_mcs_userid, align 2, !dbg !372
  %16 = zext i16 %15 to i32, !dbg !372
  %17 = add nsw i32 %16, 1001, !dbg !373
  %18 = trunc i32 %17 to i16, !dbg !372
  call void @mcs_send_cjrq(i16 zeroext %18), !dbg !374
  %19 = call i32 @mcs_recv_cjcf(), !dbg !375
  %20 = icmp ne i32 %19, 0, !dbg !375
  br i1 %20, label %22, label %21, !dbg !377

; <label>:21:                                     ; preds = %14
  br label %45, !dbg !378

; <label>:22:                                     ; preds = %14
  call void @mcs_send_cjrq(i16 zeroext 1003), !dbg !379
  %23 = call i32 @mcs_recv_cjcf(), !dbg !380
  %24 = icmp ne i32 %23, 0, !dbg !380
  br i1 %24, label %26, label %25, !dbg !382

; <label>:25:                                     ; preds = %22
  br label %45, !dbg !383

; <label>:26:                                     ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !384
  br label %27, !dbg !386

; <label>:27:                                     ; preds = %41, %26
  %28 = load i32, i32* %4, align 4, !dbg !387
  %29 = load i32, i32* @g_num_channels, align 4, !dbg !390
  %30 = icmp ult i32 %28, %29, !dbg !391
  br i1 %30, label %31, label %44, !dbg !392

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %4, align 4, !dbg !393
  %33 = zext i32 %32 to i64, !dbg !395
  %34 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %33, !dbg !395
  %35 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %34, i32 0, i32 0, !dbg !396
  %36 = load i16, i16* %35, align 8, !dbg !396
  call void @mcs_send_cjrq(i16 zeroext %36), !dbg !397
  %37 = call i32 @mcs_recv_cjcf(), !dbg !398
  %38 = icmp ne i32 %37, 0, !dbg !398
  br i1 %38, label %40, label %39, !dbg !400

; <label>:39:                                     ; preds = %31
  br label %45, !dbg !401

; <label>:40:                                     ; preds = %31
  br label %41, !dbg !402

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4, !dbg !403
  %43 = add i32 %42, 1, !dbg !403
  store i32 %43, i32* %4, align 4, !dbg !403
  br label %27, !dbg !405, !llvm.loop !406

; <label>:44:                                     ; preds = %27
  store i32 1, i32* %2, align 4, !dbg !408
  br label %46, !dbg !408

; <label>:45:                                     ; preds = %39, %25, %21, %13, %9
  call void @iso_disconnect(), !dbg !409
  store i32 0, i32* %2, align 4, !dbg !410
  br label %46, !dbg !410

; <label>:46:                                     ; preds = %45, %44
  %47 = load i32, i32* %2, align 4, !dbg !411
  ret i32 %47, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal void @mcs_send_connect_initial(%struct.stream*) #0 !dbg !412 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !413, metadata !49), !dbg !414
  call void @llvm.dbg.declare(metadata i32* %3, metadata !415, metadata !49), !dbg !416
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !417
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 1, !dbg !418
  %8 = load i8*, i8** %7, align 8, !dbg !418
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !419
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 2, !dbg !420
  %11 = load i8*, i8** %10, align 8, !dbg !420
  %12 = ptrtoint i8* %8 to i64, !dbg !421
  %13 = ptrtoint i8* %11 to i64, !dbg !421
  %14 = sub i64 %12, %13, !dbg !421
  %15 = trunc i64 %14 to i32, !dbg !417
  store i32 %15, i32* %3, align 4, !dbg !416
  call void @llvm.dbg.declare(metadata i32* %4, metadata !422, metadata !49), !dbg !423
  %16 = load i32, i32* %3, align 4, !dbg !424
  %17 = add nsw i32 115, %16, !dbg !425
  store i32 %17, i32* %4, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !426, metadata !49), !dbg !427
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.mcs_send_connect_initial, i32 0, i32 0)), !dbg !428
  %18 = load i32, i32* %4, align 4, !dbg !429
  %19 = add nsw i32 %18, 5, !dbg !430
  %20 = call %struct.stream* @iso_init(i32 %19), !dbg !431
  store %struct.stream* %20, %struct.stream** %5, align 8, !dbg !432
  %21 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !433
  %22 = load i32, i32* %4, align 4, !dbg !434
  call void @ber_out_header(%struct.stream* %21, i32 32613, i32 %22), !dbg !435
  %23 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !436
  call void @ber_out_header(%struct.stream* %23, i32 4, i32 1), !dbg !437
  %24 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !438
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !439
  %26 = load i8*, i8** %25, align 8, !dbg !440
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !440
  store i8* %27, i8** %25, align 8, !dbg !440
  store i8 1, i8* %26, align 1, !dbg !441
  %28 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !442
  call void @ber_out_header(%struct.stream* %28, i32 4, i32 1), !dbg !443
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !444
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !445
  %31 = load i8*, i8** %30, align 8, !dbg !446
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !446
  store i8* %32, i8** %30, align 8, !dbg !446
  store i8 1, i8* %31, align 1, !dbg !447
  %33 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !448
  call void @ber_out_header(%struct.stream* %33, i32 1, i32 1), !dbg !449
  %34 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !450
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !451
  %36 = load i8*, i8** %35, align 8, !dbg !452
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !452
  store i8* %37, i8** %35, align 8, !dbg !452
  store i8 -1, i8* %36, align 1, !dbg !453
  %38 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !454
  call void @mcs_out_domain_params(%struct.stream* %38, i32 34, i32 2, i32 0, i32 65535), !dbg !455
  %39 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !456
  call void @mcs_out_domain_params(%struct.stream* %39, i32 1, i32 1, i32 1, i32 1056), !dbg !457
  %40 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !458
  call void @mcs_out_domain_params(%struct.stream* %40, i32 65535, i32 64535, i32 65535, i32 65535), !dbg !459
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !460
  %42 = load i32, i32* %3, align 4, !dbg !461
  call void @ber_out_header(%struct.stream* %41, i32 4, i32 %42), !dbg !462
  %43 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !463
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !465
  %45 = load i8*, i8** %44, align 8, !dbg !465
  %46 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !466
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 2, !dbg !467
  %48 = load i8*, i8** %47, align 8, !dbg !467
  %49 = load i32, i32* %3, align 4, !dbg !468
  %50 = sext i32 %49 to i64, !dbg !468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %48, i64 %50, i32 1, i1 false), !dbg !469
  %51 = load i32, i32* %3, align 4, !dbg !470
  %52 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !471
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !472
  %54 = load i8*, i8** %53, align 8, !dbg !473
  %55 = sext i32 %51 to i64, !dbg !473
  %56 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !473
  store i8* %56, i8** %53, align 8, !dbg !473
  %57 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !474
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !475
  %59 = load i8*, i8** %58, align 8, !dbg !475
  %60 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !476
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 1, !dbg !477
  store i8* %59, i8** %61, align 8, !dbg !478
  %62 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !479
  call void @iso_send(%struct.stream* %62), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: nounwind uwtable
define internal i32 @mcs_recv_connect_response(%struct.stream*) #0 !dbg !482 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !483, metadata !49), !dbg !484
  %9 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !485
  call void @llvm.dbg.declare(metadata i8* %4, metadata !486, metadata !49), !dbg !487
  call void @llvm.dbg.declare(metadata i32* %5, metadata !488, metadata !49), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.stream** %6, metadata !490, metadata !49), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %7, metadata !492, metadata !49), !dbg !493
  call void @llvm.dbg.declare(metadata i8* %8, metadata !494, metadata !49), !dbg !495
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.mcs_recv_connect_response, i32 0, i32 0)), !dbg !496
  %10 = call %struct.stream* @iso_recv(i32* %7, i8* %8), !dbg !497
  store %struct.stream* %10, %struct.stream** %6, align 8, !dbg !498
  %11 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !499
  %12 = icmp eq %struct.stream* %11, null, !dbg !501
  br i1 %12, label %13, label %14, !dbg !502

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !503
  br label %52, !dbg !503

; <label>:14:                                     ; preds = %1
  %15 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !504
  %16 = call i32 @ber_parse_header(%struct.stream* %15, i32 32614, i32* %5), !dbg !505
  %17 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !506
  %18 = call i32 @ber_parse_header(%struct.stream* %17, i32 10, i32* %5), !dbg !507
  %19 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !508
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !509
  %21 = load i8*, i8** %20, align 8, !dbg !510
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !510
  store i8* %22, i8** %20, align 8, !dbg !510
  %23 = load i8, i8* %21, align 1, !dbg !511
  store i8 %23, i8* %4, align 1, !dbg !512
  %24 = load i8, i8* %4, align 1, !dbg !513
  %25 = zext i8 %24 to i32, !dbg !513
  %26 = icmp ne i32 %25, 0, !dbg !515
  br i1 %26, label %27, label %30, !dbg !516

; <label>:27:                                     ; preds = %14
  %28 = load i8, i8* %4, align 1, !dbg !517
  %29 = zext i8 %28 to i32, !dbg !517
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i32 %29), !dbg !519
  store i32 0, i32* %2, align 4, !dbg !520
  br label %52, !dbg !520

; <label>:30:                                     ; preds = %14
  %31 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !521
  %32 = call i32 @ber_parse_header(%struct.stream* %31, i32 2, i32* %5), !dbg !522
  %33 = load i32, i32* %5, align 4, !dbg !523
  %34 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !524
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !525
  %36 = load i8*, i8** %35, align 8, !dbg !526
  %37 = sext i32 %33 to i64, !dbg !526
  %38 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !526
  store i8* %38, i8** %35, align 8, !dbg !526
  %39 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !527
  %40 = call i32 @mcs_parse_domain_params(%struct.stream* %39), !dbg !528
  %41 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !529
  %42 = call i32 @ber_parse_header(%struct.stream* %41, i32 4, i32* %5), !dbg !530
  %43 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !531
  call void @sec_process_mcs_data(%struct.stream* %43), !dbg !532
  %44 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !533
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !534
  %46 = load i8*, i8** %45, align 8, !dbg !534
  %47 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !535
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 1, !dbg !536
  %49 = load i8*, i8** %48, align 8, !dbg !536
  %50 = icmp eq i8* %46, %49, !dbg !537
  %51 = zext i1 %50 to i32, !dbg !537
  store i32 %51, i32* %2, align 4, !dbg !538
  br label %52, !dbg !538

; <label>:52:                                     ; preds = %30, %27, %13
  %53 = load i32, i32* %2, align 4, !dbg !539
  ret i32 %53, !dbg !539
}

; Function Attrs: nounwind uwtable
define internal void @mcs_send_edrq() #0 !dbg !540 {
  %1 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !543, metadata !49), !dbg !544
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.mcs_send_edrq, i32 0, i32 0)), !dbg !545
  %2 = call %struct.stream* @iso_init(i32 5), !dbg !546
  store %struct.stream* %2, %struct.stream** %1, align 8, !dbg !547
  %3 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !548
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !549
  %5 = load i8*, i8** %4, align 8, !dbg !550
  %6 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !550
  store i8* %6, i8** %4, align 8, !dbg !550
  store i8 4, i8* %5, align 1, !dbg !551
  %7 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !552
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !554
  %9 = load i8*, i8** %8, align 8, !dbg !555
  %10 = getelementptr inbounds i8, i8* %9, i32 1, !dbg !555
  store i8* %10, i8** %8, align 8, !dbg !555
  store i8 0, i8* %9, align 1, !dbg !556
  %11 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !557
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !558
  %13 = load i8*, i8** %12, align 8, !dbg !559
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !559
  store i8* %14, i8** %12, align 8, !dbg !559
  store i8 1, i8* %13, align 1, !dbg !560
  %15 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !561
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !563
  %17 = load i8*, i8** %16, align 8, !dbg !564
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !564
  store i8* %18, i8** %16, align 8, !dbg !564
  store i8 0, i8* %17, align 1, !dbg !565
  %19 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !566
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !567
  %21 = load i8*, i8** %20, align 8, !dbg !568
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !568
  store i8* %22, i8** %20, align 8, !dbg !568
  store i8 1, i8* %21, align 1, !dbg !569
  %23 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !570
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !571
  %25 = load i8*, i8** %24, align 8, !dbg !571
  %26 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !572
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 1, !dbg !573
  store i8* %25, i8** %27, align 8, !dbg !574
  %28 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !575
  call void @iso_send(%struct.stream* %28), !dbg !576
  ret void, !dbg !577
}

; Function Attrs: nounwind uwtable
define internal void @mcs_send_aurq() #0 !dbg !578 {
  %1 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !579, metadata !49), !dbg !580
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.mcs_send_aurq, i32 0, i32 0)), !dbg !581
  %2 = call %struct.stream* @iso_init(i32 1), !dbg !582
  store %struct.stream* %2, %struct.stream** %1, align 8, !dbg !583
  %3 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !584
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !585
  %5 = load i8*, i8** %4, align 8, !dbg !586
  %6 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !586
  store i8* %6, i8** %4, align 8, !dbg !586
  store i8 40, i8* %5, align 1, !dbg !587
  %7 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !588
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !589
  %9 = load i8*, i8** %8, align 8, !dbg !589
  %10 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !590
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 1, !dbg !591
  store i8* %9, i8** %11, align 8, !dbg !592
  %12 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !593
  call void @iso_send(%struct.stream* %12), !dbg !594
  ret void, !dbg !595
}

; Function Attrs: nounwind uwtable
define internal i32 @mcs_recv_aucf(i16*) #0 !dbg !596 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.stream*, align 8
  store i16* %0, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !599, metadata !49), !dbg !600
  call void @llvm.dbg.declare(metadata i32* %4, metadata !601, metadata !49), !dbg !602
  call void @llvm.dbg.declare(metadata i8* %5, metadata !603, metadata !49), !dbg !604
  call void @llvm.dbg.declare(metadata i8* %6, metadata !605, metadata !49), !dbg !606
  call void @llvm.dbg.declare(metadata i8* %7, metadata !607, metadata !49), !dbg !608
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !609, metadata !49), !dbg !610
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.mcs_recv_aucf, i32 0, i32 0)), !dbg !611
  %9 = call %struct.stream* @iso_recv(i32* %4, i8* %5), !dbg !612
  store %struct.stream* %9, %struct.stream** %8, align 8, !dbg !613
  %10 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !614
  %11 = icmp eq %struct.stream* %10, null, !dbg !616
  br i1 %11, label %12, label %13, !dbg !617

; <label>:12:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !618
  br label %73, !dbg !618

; <label>:13:                                     ; preds = %1
  %14 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !619
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !620
  %16 = load i8*, i8** %15, align 8, !dbg !621
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !621
  store i8* %17, i8** %15, align 8, !dbg !621
  %18 = load i8, i8* %16, align 1, !dbg !622
  store i8 %18, i8* %6, align 1, !dbg !623
  %19 = load i8, i8* %6, align 1, !dbg !624
  %20 = zext i8 %19 to i32, !dbg !624
  %21 = ashr i32 %20, 2, !dbg !626
  %22 = icmp ne i32 %21, 11, !dbg !627
  br i1 %22, label %23, label %26, !dbg !628

; <label>:23:                                     ; preds = %13
  %24 = load i8, i8* %6, align 1, !dbg !629
  %25 = zext i8 %24 to i32, !dbg !629
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i32 %25), !dbg !631
  store i32 0, i32* %2, align 4, !dbg !632
  br label %73, !dbg !632

; <label>:26:                                     ; preds = %13
  %27 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !633
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !634
  %29 = load i8*, i8** %28, align 8, !dbg !635
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !635
  store i8* %30, i8** %28, align 8, !dbg !635
  %31 = load i8, i8* %29, align 1, !dbg !636
  store i8 %31, i8* %7, align 1, !dbg !637
  %32 = load i8, i8* %7, align 1, !dbg !638
  %33 = zext i8 %32 to i32, !dbg !638
  %34 = icmp ne i32 %33, 0, !dbg !640
  br i1 %34, label %35, label %38, !dbg !641

; <label>:35:                                     ; preds = %26
  %36 = load i8, i8* %7, align 1, !dbg !642
  %37 = zext i8 %36 to i32, !dbg !642
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 %37), !dbg !644
  store i32 0, i32* %2, align 4, !dbg !645
  br label %73, !dbg !645

; <label>:38:                                     ; preds = %26
  %39 = load i8, i8* %6, align 1, !dbg !646
  %40 = zext i8 %39 to i32, !dbg !646
  %41 = and i32 %40, 2, !dbg !648
  %42 = icmp ne i32 %41, 0, !dbg !648
  br i1 %42, label %43, label %64, !dbg !649

; <label>:43:                                     ; preds = %38
  %44 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !650
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !652
  %46 = load i8*, i8** %45, align 8, !dbg !653
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !653
  store i8* %47, i8** %45, align 8, !dbg !653
  %48 = load i8, i8* %46, align 1, !dbg !654
  %49 = zext i8 %48 to i16, !dbg !654
  %50 = load i16*, i16** %3, align 8, !dbg !655
  store i16 %49, i16* %50, align 2, !dbg !656
  %51 = load i16*, i16** %3, align 8, !dbg !657
  %52 = load i16, i16* %51, align 2, !dbg !658
  %53 = zext i16 %52 to i32, !dbg !659
  %54 = shl i32 %53, 8, !dbg !660
  %55 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !661
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !662
  %57 = load i8*, i8** %56, align 8, !dbg !663
  %58 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !663
  store i8* %58, i8** %56, align 8, !dbg !663
  %59 = load i8, i8* %57, align 1, !dbg !664
  %60 = zext i8 %59 to i32, !dbg !664
  %61 = add nsw i32 %54, %60, !dbg !665
  %62 = trunc i32 %61 to i16, !dbg !666
  %63 = load i16*, i16** %3, align 8, !dbg !667
  store i16 %62, i16* %63, align 2, !dbg !668
  br label %64, !dbg !669

; <label>:64:                                     ; preds = %43, %38
  %65 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !670
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !671
  %67 = load i8*, i8** %66, align 8, !dbg !671
  %68 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !672
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 1, !dbg !673
  %70 = load i8*, i8** %69, align 8, !dbg !673
  %71 = icmp eq i8* %67, %70, !dbg !674
  %72 = zext i1 %71 to i32, !dbg !674
  store i32 %72, i32* %2, align 4, !dbg !675
  br label %73, !dbg !675

; <label>:73:                                     ; preds = %64, %35, %23, %12
  %74 = load i32, i32* %2, align 4, !dbg !676
  ret i32 %74, !dbg !676
}

; Function Attrs: nounwind uwtable
define internal void @mcs_send_cjrq(i16 zeroext) #0 !dbg !677 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.stream*, align 8
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !680, metadata !49), !dbg !681
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !682, metadata !49), !dbg !683
  %4 = load i16, i16* %2, align 2, !dbg !684
  %5 = zext i16 %4 to i32, !dbg !684
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %5), !dbg !685
  %6 = call %struct.stream* @iso_init(i32 5), !dbg !686
  store %struct.stream* %6, %struct.stream** %3, align 8, !dbg !687
  %7 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !688
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !689
  %9 = load i8*, i8** %8, align 8, !dbg !690
  %10 = getelementptr inbounds i8, i8* %9, i32 1, !dbg !690
  store i8* %10, i8** %8, align 8, !dbg !690
  store i8 56, i8* %9, align 1, !dbg !691
  %11 = load i16, i16* @g_mcs_userid, align 2, !dbg !692
  %12 = zext i16 %11 to i32, !dbg !694
  %13 = ashr i32 %12, 8, !dbg !695
  %14 = and i32 %13, 255, !dbg !696
  %15 = trunc i32 %14 to i8, !dbg !697
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !698
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !699
  %18 = load i8*, i8** %17, align 8, !dbg !700
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !700
  store i8* %19, i8** %17, align 8, !dbg !700
  store i8 %15, i8* %18, align 1, !dbg !701
  %20 = load i16, i16* @g_mcs_userid, align 2, !dbg !702
  %21 = zext i16 %20 to i32, !dbg !703
  %22 = and i32 %21, 255, !dbg !704
  %23 = trunc i32 %22 to i8, !dbg !703
  %24 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !705
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !706
  %26 = load i8*, i8** %25, align 8, !dbg !707
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !707
  store i8* %27, i8** %25, align 8, !dbg !707
  store i8 %23, i8* %26, align 1, !dbg !708
  %28 = load i16, i16* %2, align 2, !dbg !709
  %29 = zext i16 %28 to i32, !dbg !711
  %30 = ashr i32 %29, 8, !dbg !712
  %31 = and i32 %30, 255, !dbg !713
  %32 = trunc i32 %31 to i8, !dbg !714
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !715
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !716
  %35 = load i8*, i8** %34, align 8, !dbg !717
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !717
  store i8* %36, i8** %34, align 8, !dbg !717
  store i8 %32, i8* %35, align 1, !dbg !718
  %37 = load i16, i16* %2, align 2, !dbg !719
  %38 = zext i16 %37 to i32, !dbg !720
  %39 = and i32 %38, 255, !dbg !721
  %40 = trunc i32 %39 to i8, !dbg !720
  %41 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !722
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !723
  %43 = load i8*, i8** %42, align 8, !dbg !724
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !724
  store i8* %44, i8** %42, align 8, !dbg !724
  store i8 %40, i8* %43, align 1, !dbg !725
  %45 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !726
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !727
  %47 = load i8*, i8** %46, align 8, !dbg !727
  %48 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !728
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 1, !dbg !729
  store i8* %47, i8** %49, align 8, !dbg !730
  %50 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !731
  call void @iso_send(%struct.stream* %50), !dbg !732
  ret void, !dbg !733
}

; Function Attrs: nounwind uwtable
define internal i32 @mcs_recv_cjcf() #0 !dbg !734 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !737, metadata !49), !dbg !738
  call void @llvm.dbg.declare(metadata i8* %3, metadata !739, metadata !49), !dbg !740
  call void @llvm.dbg.declare(metadata i8* %4, metadata !741, metadata !49), !dbg !742
  call void @llvm.dbg.declare(metadata i8* %5, metadata !743, metadata !49), !dbg !744
  call void @llvm.dbg.declare(metadata %struct.stream** %6, metadata !745, metadata !49), !dbg !746
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.mcs_recv_cjcf, i32 0, i32 0)), !dbg !747
  %7 = call %struct.stream* @iso_recv(i32* %2, i8* %3), !dbg !748
  store %struct.stream* %7, %struct.stream** %6, align 8, !dbg !749
  %8 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !750
  %9 = icmp eq %struct.stream* %8, null, !dbg !752
  br i1 %9, label %10, label %11, !dbg !753

; <label>:10:                                     ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !754
  br label %59, !dbg !754

; <label>:11:                                     ; preds = %0
  %12 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !755
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !756
  %14 = load i8*, i8** %13, align 8, !dbg !757
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !757
  store i8* %15, i8** %13, align 8, !dbg !757
  %16 = load i8, i8* %14, align 1, !dbg !758
  store i8 %16, i8* %4, align 1, !dbg !759
  %17 = load i8, i8* %4, align 1, !dbg !760
  %18 = zext i8 %17 to i32, !dbg !760
  %19 = ashr i32 %18, 2, !dbg !762
  %20 = icmp ne i32 %19, 15, !dbg !763
  br i1 %20, label %21, label %24, !dbg !764

; <label>:21:                                     ; preds = %11
  %22 = load i8, i8* %4, align 1, !dbg !765
  %23 = zext i8 %22 to i32, !dbg !765
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i32 %23), !dbg !767
  store i32 0, i32* %1, align 4, !dbg !768
  br label %59, !dbg !768

; <label>:24:                                     ; preds = %11
  %25 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !769
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !770
  %27 = load i8*, i8** %26, align 8, !dbg !771
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !771
  store i8* %28, i8** %26, align 8, !dbg !771
  %29 = load i8, i8* %27, align 1, !dbg !772
  store i8 %29, i8* %5, align 1, !dbg !773
  %30 = load i8, i8* %5, align 1, !dbg !774
  %31 = zext i8 %30 to i32, !dbg !774
  %32 = icmp ne i32 %31, 0, !dbg !776
  br i1 %32, label %33, label %36, !dbg !777

; <label>:33:                                     ; preds = %24
  %34 = load i8, i8* %5, align 1, !dbg !778
  %35 = zext i8 %34 to i32, !dbg !778
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i32 %35), !dbg !780
  store i32 0, i32* %1, align 4, !dbg !781
  br label %59, !dbg !781

; <label>:36:                                     ; preds = %24
  %37 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !782
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !783
  %39 = load i8*, i8** %38, align 8, !dbg !784
  %40 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !784
  store i8* %40, i8** %38, align 8, !dbg !784
  %41 = load i8, i8* %4, align 1, !dbg !785
  %42 = zext i8 %41 to i32, !dbg !785
  %43 = and i32 %42, 2, !dbg !787
  %44 = icmp ne i32 %43, 0, !dbg !787
  br i1 %44, label %45, label %50, !dbg !788

; <label>:45:                                     ; preds = %36
  %46 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !789
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !790
  %48 = load i8*, i8** %47, align 8, !dbg !791
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !791
  store i8* %49, i8** %47, align 8, !dbg !791
  br label %50, !dbg !792

; <label>:50:                                     ; preds = %45, %36
  %51 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !793
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !794
  %53 = load i8*, i8** %52, align 8, !dbg !794
  %54 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !795
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 1, !dbg !796
  %56 = load i8*, i8** %55, align 8, !dbg !796
  %57 = icmp eq i8* %53, %56, !dbg !797
  %58 = zext i1 %57 to i32, !dbg !797
  store i32 %58, i32* %1, align 4, !dbg !798
  br label %59, !dbg !798

; <label>:59:                                     ; preds = %50, %33, %21, %10
  %60 = load i32, i32* %1, align 4, !dbg !799
  ret i32 %60, !dbg !799
}

declare void @iso_disconnect() #2

; Function Attrs: nounwind uwtable
define void @mcs_disconnect(i32) #0 !dbg !800 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !803, metadata !49), !dbg !804
  %3 = load i32, i32* %2, align 4, !dbg !805
  %4 = trunc i32 %3 to i16, !dbg !805
  call void @mcs_send_dpu(i16 zeroext %4), !dbg !806
  call void @iso_disconnect(), !dbg !807
  ret void, !dbg !808
}

; Function Attrs: nounwind uwtable
define void @mcs_reset_state() #0 !dbg !809 {
  store i16 0, i16* @g_mcs_userid, align 2, !dbg !810
  call void @iso_reset_state(), !dbg !811
  ret void, !dbg !812
}

declare void @iso_reset_state() #2

declare void @ber_out_header(%struct.stream*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @mcs_out_domain_params(%struct.stream*, i32, i32, i32, i32) #0 !dbg !813 {
  %6 = alloca %struct.stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %6, metadata !816, metadata !49), !dbg !817
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !818, metadata !49), !dbg !819
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !820, metadata !49), !dbg !821
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !822, metadata !49), !dbg !823
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !824, metadata !49), !dbg !825
  %11 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !826
  call void @ber_out_header(%struct.stream* %11, i32 48, i32 32), !dbg !827
  %12 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !828
  %13 = load i32, i32* %7, align 4, !dbg !829
  call void @ber_out_integer(%struct.stream* %12, i32 %13), !dbg !830
  %14 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !831
  %15 = load i32, i32* %8, align 4, !dbg !832
  call void @ber_out_integer(%struct.stream* %14, i32 %15), !dbg !833
  %16 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !834
  %17 = load i32, i32* %9, align 4, !dbg !835
  call void @ber_out_integer(%struct.stream* %16, i32 %17), !dbg !836
  %18 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !837
  call void @ber_out_integer(%struct.stream* %18, i32 1), !dbg !838
  %19 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !839
  call void @ber_out_integer(%struct.stream* %19, i32 0), !dbg !840
  %20 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !841
  call void @ber_out_integer(%struct.stream* %20, i32 1), !dbg !842
  %21 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !843
  %22 = load i32, i32* %10, align 4, !dbg !844
  call void @ber_out_integer(%struct.stream* %21, i32 %22), !dbg !845
  %23 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !846
  call void @ber_out_integer(%struct.stream* %23, i32 2), !dbg !847
  ret void, !dbg !848
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @ber_parse_header(%struct.stream*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mcs_parse_domain_params(%struct.stream*) #0 !dbg !849 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !850, metadata !49), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %3, metadata !852, metadata !49), !dbg !853
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !854
  %5 = call i32 @ber_parse_header(%struct.stream* %4, i32 48, i32* %3), !dbg !855
  %6 = load i32, i32* %3, align 4, !dbg !856
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !857
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !858
  %9 = load i8*, i8** %8, align 8, !dbg !859
  %10 = sext i32 %6 to i64, !dbg !859
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !859
  store i8* %11, i8** %8, align 8, !dbg !859
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !860
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !861
  %14 = load i8*, i8** %13, align 8, !dbg !861
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !862
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 1, !dbg !863
  %17 = load i8*, i8** %16, align 8, !dbg !863
  %18 = icmp ule i8* %14, %17, !dbg !864
  %19 = zext i1 %18 to i32, !dbg !864
  ret i32 %19, !dbg !865
}

declare void @sec_process_mcs_data(%struct.stream*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !33, globals: !35)
!1 = !DIFile(filename: "[inter]mcs.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MCS_PDU_TYPE", file: !23, line: 99, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32}
!25 = !DIEnumerator(name: "MCS_EDRQ", value: 1)
!26 = !DIEnumerator(name: "MCS_DPUM", value: 8)
!27 = !DIEnumerator(name: "MCS_AURQ", value: 10)
!28 = !DIEnumerator(name: "MCS_AUCF", value: 11)
!29 = !DIEnumerator(name: "MCS_CJRQ", value: 14)
!30 = !DIEnumerator(name: "MCS_CJCF", value: 15)
!31 = !DIEnumerator(name: "MCS_SDRQ", value: 25)
!32 = !DIEnumerator(name: "MCS_SDIN", value: 26)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !{!36}
!36 = distinct !DIGlobalVariable(name: "g_mcs_userid", scope: !0, file: !37, line: 24, type: !38, isLocal: false, isDefinition: true, variable: i16* @g_mcs_userid)
!37 = !DIFile(filename: "mcs.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !39, line: 41, baseType: !40)
!39 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!40 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!44 = distinct !DISubprogram(name: "mcs_send_dpu", scope: !37, file: !37, line: 256, type: !45, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !40}
!47 = !{}
!48 = !DILocalVariable(name: "reason", arg: 1, scope: !44, file: !37, line: 256, type: !40)
!49 = !DIExpression()
!50 = !DILocation(line: 256, column: 29, scope: !44)
!51 = !DILocalVariable(name: "s", scope: !44, file: !37, line: 258, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !53, line: 40, baseType: !54)
!53 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !53, line: 25, size: 576, align: 64, elements: !56)
!56 = !{!57, !60, !61, !62, !64, !65, !66, !67, !68}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !55, file: !53, line: 27, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !55, file: !53, line: 28, baseType: !58, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !55, file: !53, line: 29, baseType: !58, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !55, file: !53, line: 30, baseType: !63, size: 32, align: 32, offset: 192)
!63 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !55, file: !53, line: 33, baseType: !58, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !55, file: !53, line: 34, baseType: !58, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !55, file: !53, line: 35, baseType: !58, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !55, file: !53, line: 36, baseType: !58, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !55, file: !53, line: 37, baseType: !58, size: 64, align: 64, offset: 512)
!69 = !DILocation(line: 258, column: 9, scope: !44)
!70 = !DILocalVariable(name: "contents", scope: !44, file: !37, line: 258, type: !52)
!71 = !DILocation(line: 258, column: 12, scope: !44)
!72 = !DILocation(line: 260, column: 55, scope: !44)
!73 = !DILocation(line: 260, column: 2, scope: !44)
!74 = !DILocation(line: 262, column: 13, scope: !44)
!75 = !DILocation(line: 262, column: 11, scope: !44)
!76 = !DILocation(line: 263, column: 9, scope: !44)
!77 = !DILocation(line: 263, column: 2, scope: !44)
!78 = !DILocation(line: 264, column: 12, scope: !44)
!79 = !DILocation(line: 264, column: 2, scope: !44)
!80 = !DILocation(line: 265, column: 10, scope: !44)
!81 = !DILocation(line: 265, column: 2, scope: !44)
!82 = !DILocation(line: 266, column: 18, scope: !44)
!83 = !DILocation(line: 266, column: 28, scope: !44)
!84 = !DILocation(line: 266, column: 2, scope: !44)
!85 = !DILocation(line: 267, column: 19, scope: !44)
!86 = !DILocation(line: 267, column: 2, scope: !44)
!87 = !DILocation(line: 268, column: 21, scope: !44)
!88 = !DILocation(line: 268, column: 32, scope: !44)
!89 = !DILocation(line: 268, column: 3, scope: !44)
!90 = !DILocation(line: 268, column: 14, scope: !44)
!91 = !DILocation(line: 268, column: 18, scope: !44)
!92 = !DILocation(line: 270, column: 6, scope: !44)
!93 = !DILocation(line: 270, column: 4, scope: !44)
!94 = !DILocation(line: 271, column: 19, scope: !44)
!95 = !DILocation(line: 271, column: 22, scope: !44)
!96 = !DILocation(line: 271, column: 2, scope: !44)
!97 = !DILocation(line: 272, column: 9, scope: !44)
!98 = !DILocation(line: 272, column: 2, scope: !44)
!99 = !DILocation(line: 274, column: 14, scope: !44)
!100 = !DILocation(line: 274, column: 18, scope: !44)
!101 = !DILocation(line: 274, column: 3, scope: !44)
!102 = !DILocation(line: 274, column: 7, scope: !44)
!103 = !DILocation(line: 274, column: 11, scope: !44)
!104 = !DILocation(line: 276, column: 11, scope: !44)
!105 = !DILocation(line: 276, column: 2, scope: !44)
!106 = !DILocation(line: 277, column: 1, scope: !44)
!107 = distinct !DISubprogram(name: "mcs_init", scope: !37, file: !37, line: 281, type: !108, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!108 = !DISubroutineType(types: !109)
!109 = !{!52, !110}
!110 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!111 = !DILocalVariable(name: "length", arg: 1, scope: !107, file: !37, line: 281, type: !110)
!112 = !DILocation(line: 281, column: 14, scope: !107)
!113 = !DILocalVariable(name: "s", scope: !107, file: !37, line: 283, type: !52)
!114 = !DILocation(line: 283, column: 9, scope: !107)
!115 = !DILocation(line: 285, column: 15, scope: !107)
!116 = !DILocation(line: 285, column: 22, scope: !107)
!117 = !DILocation(line: 285, column: 6, scope: !107)
!118 = !DILocation(line: 285, column: 4, scope: !107)
!119 = !DILocation(line: 286, column: 20, scope: !120)
!120 = distinct !DILexicalBlock(scope: !107, file: !37, line: 286, column: 2)
!121 = !DILocation(line: 286, column: 24, scope: !120)
!122 = !DILocation(line: 286, column: 5, scope: !120)
!123 = !DILocation(line: 286, column: 9, scope: !120)
!124 = !DILocation(line: 286, column: 17, scope: !120)
!125 = !DILocation(line: 286, column: 28, scope: !120)
!126 = !DILocation(line: 286, column: 32, scope: !120)
!127 = !DILocation(line: 286, column: 34, scope: !120)
!128 = !DILocation(line: 288, column: 9, scope: !107)
!129 = !DILocation(line: 288, column: 2, scope: !107)
!130 = distinct !DISubprogram(name: "mcs_send_to_channel", scope: !37, file: !37, line: 293, type: !131, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !52, !38}
!133 = !DILocalVariable(name: "s", arg: 1, scope: !130, file: !37, line: 293, type: !52)
!134 = !DILocation(line: 293, column: 28, scope: !130)
!135 = !DILocalVariable(name: "channel", arg: 2, scope: !130, file: !37, line: 293, type: !38)
!136 = !DILocation(line: 293, column: 38, scope: !130)
!137 = !DILocalVariable(name: "length", scope: !130, file: !37, line: 295, type: !38)
!138 = !DILocation(line: 295, column: 9, scope: !130)
!139 = !DILocation(line: 297, column: 12, scope: !130)
!140 = !DILocation(line: 297, column: 16, scope: !130)
!141 = !DILocation(line: 297, column: 3, scope: !130)
!142 = !DILocation(line: 297, column: 7, scope: !130)
!143 = !DILocation(line: 297, column: 9, scope: !130)
!144 = !DILocation(line: 298, column: 11, scope: !130)
!145 = !DILocation(line: 298, column: 14, scope: !130)
!146 = !DILocation(line: 298, column: 20, scope: !130)
!147 = !DILocation(line: 298, column: 23, scope: !130)
!148 = !DILocation(line: 298, column: 18, scope: !130)
!149 = !DILocation(line: 298, column: 25, scope: !130)
!150 = !DILocation(line: 298, column: 9, scope: !130)
!151 = !DILocation(line: 299, column: 9, scope: !130)
!152 = !DILocation(line: 301, column: 5, scope: !130)
!153 = !DILocation(line: 301, column: 9, scope: !130)
!154 = !DILocation(line: 301, column: 10, scope: !130)
!155 = !DILocation(line: 301, column: 14, scope: !130)
!156 = !DILocation(line: 302, column: 20, scope: !157)
!157 = distinct !DILexicalBlock(scope: !130, file: !37, line: 302, column: 2)
!158 = !DILocation(line: 302, column: 19, scope: !157)
!159 = !DILocation(line: 302, column: 34, scope: !157)
!160 = !DILocation(line: 302, column: 40, scope: !157)
!161 = !DILocation(line: 302, column: 18, scope: !157)
!162 = !DILocation(line: 302, column: 7, scope: !157)
!163 = !DILocation(line: 302, column: 11, scope: !157)
!164 = !DILocation(line: 302, column: 12, scope: !157)
!165 = !DILocation(line: 302, column: 16, scope: !157)
!166 = !DILocation(line: 302, column: 63, scope: !157)
!167 = !DILocation(line: 302, column: 62, scope: !157)
!168 = !DILocation(line: 302, column: 77, scope: !157)
!169 = !DILocation(line: 302, column: 51, scope: !157)
!170 = !DILocation(line: 302, column: 55, scope: !157)
!171 = !DILocation(line: 302, column: 56, scope: !157)
!172 = !DILocation(line: 302, column: 60, scope: !157)
!173 = !DILocation(line: 303, column: 20, scope: !174)
!174 = distinct !DILexicalBlock(scope: !130, file: !37, line: 303, column: 2)
!175 = !DILocation(line: 303, column: 19, scope: !174)
!176 = !DILocation(line: 303, column: 29, scope: !174)
!177 = !DILocation(line: 303, column: 35, scope: !174)
!178 = !DILocation(line: 303, column: 18, scope: !174)
!179 = !DILocation(line: 303, column: 7, scope: !174)
!180 = !DILocation(line: 303, column: 11, scope: !174)
!181 = !DILocation(line: 303, column: 12, scope: !174)
!182 = !DILocation(line: 303, column: 16, scope: !174)
!183 = !DILocation(line: 303, column: 58, scope: !174)
!184 = !DILocation(line: 303, column: 57, scope: !174)
!185 = !DILocation(line: 303, column: 67, scope: !174)
!186 = !DILocation(line: 303, column: 46, scope: !174)
!187 = !DILocation(line: 303, column: 50, scope: !174)
!188 = !DILocation(line: 303, column: 51, scope: !174)
!189 = !DILocation(line: 303, column: 55, scope: !174)
!190 = !DILocation(line: 304, column: 5, scope: !130)
!191 = !DILocation(line: 304, column: 9, scope: !130)
!192 = !DILocation(line: 304, column: 10, scope: !130)
!193 = !DILocation(line: 304, column: 14, scope: !130)
!194 = !DILocation(line: 305, column: 20, scope: !195)
!195 = distinct !DILexicalBlock(scope: !130, file: !37, line: 305, column: 2)
!196 = !DILocation(line: 305, column: 19, scope: !195)
!197 = !DILocation(line: 305, column: 28, scope: !195)
!198 = !DILocation(line: 305, column: 34, scope: !195)
!199 = !DILocation(line: 305, column: 18, scope: !195)
!200 = !DILocation(line: 305, column: 7, scope: !195)
!201 = !DILocation(line: 305, column: 11, scope: !195)
!202 = !DILocation(line: 305, column: 12, scope: !195)
!203 = !DILocation(line: 305, column: 16, scope: !195)
!204 = !DILocation(line: 305, column: 57, scope: !195)
!205 = !DILocation(line: 305, column: 56, scope: !195)
!206 = !DILocation(line: 305, column: 65, scope: !195)
!207 = !DILocation(line: 305, column: 45, scope: !195)
!208 = !DILocation(line: 305, column: 49, scope: !195)
!209 = !DILocation(line: 305, column: 50, scope: !195)
!210 = !DILocation(line: 305, column: 54, scope: !195)
!211 = !DILocation(line: 307, column: 11, scope: !130)
!212 = !DILocation(line: 307, column: 2, scope: !130)
!213 = !DILocation(line: 308, column: 1, scope: !130)
!214 = distinct !DISubprogram(name: "mcs_send", scope: !37, file: !37, line: 312, type: !215, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !52}
!217 = !DILocalVariable(name: "s", arg: 1, scope: !214, file: !37, line: 312, type: !52)
!218 = !DILocation(line: 312, column: 17, scope: !214)
!219 = !DILocation(line: 314, column: 22, scope: !214)
!220 = !DILocation(line: 314, column: 2, scope: !214)
!221 = !DILocation(line: 315, column: 1, scope: !214)
!222 = distinct !DISubprogram(name: "mcs_recv", scope: !37, file: !37, line: 319, type: !223, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!223 = !DISubroutineType(types: !224)
!224 = !{!52, !225, !226, !228}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !39, line: 28, baseType: !110)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !39, line: 39, baseType: !59)
!230 = !DILocalVariable(name: "channel", arg: 1, scope: !222, file: !37, line: 319, type: !225)
!231 = !DILocation(line: 319, column: 19, scope: !222)
!232 = !DILocalVariable(name: "is_fastpath", arg: 2, scope: !222, file: !37, line: 319, type: !226)
!233 = !DILocation(line: 319, column: 37, scope: !222)
!234 = !DILocalVariable(name: "fastpath_hdr", arg: 3, scope: !222, file: !37, line: 319, type: !228)
!235 = !DILocation(line: 319, column: 57, scope: !222)
!236 = !DILocalVariable(name: "opcode", scope: !222, file: !37, line: 321, type: !229)
!237 = !DILocation(line: 321, column: 8, scope: !222)
!238 = !DILocalVariable(name: "appid", scope: !222, file: !37, line: 321, type: !229)
!239 = !DILocation(line: 321, column: 16, scope: !222)
!240 = !DILocalVariable(name: "length", scope: !222, file: !37, line: 321, type: !229)
!241 = !DILocation(line: 321, column: 23, scope: !222)
!242 = !DILocalVariable(name: "s", scope: !222, file: !37, line: 322, type: !52)
!243 = !DILocation(line: 322, column: 9, scope: !222)
!244 = !DILocation(line: 324, column: 15, scope: !222)
!245 = !DILocation(line: 324, column: 28, scope: !222)
!246 = !DILocation(line: 324, column: 6, scope: !222)
!247 = !DILocation(line: 324, column: 4, scope: !222)
!248 = !DILocation(line: 325, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !222, file: !37, line: 325, column: 6)
!250 = !DILocation(line: 325, column: 8, scope: !249)
!251 = !DILocation(line: 325, column: 6, scope: !222)
!252 = !DILocation(line: 326, column: 3, scope: !249)
!253 = !DILocation(line: 328, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !222, file: !37, line: 328, column: 6)
!255 = !DILocation(line: 328, column: 6, scope: !254)
!256 = !DILocation(line: 328, column: 19, scope: !254)
!257 = !DILocation(line: 328, column: 6, scope: !222)
!258 = !DILocation(line: 329, column: 10, scope: !254)
!259 = !DILocation(line: 329, column: 3, scope: !254)
!260 = !DILocation(line: 331, column: 14, scope: !222)
!261 = !DILocation(line: 331, column: 18, scope: !222)
!262 = !DILocation(line: 331, column: 19, scope: !222)
!263 = !DILocation(line: 331, column: 11, scope: !222)
!264 = !DILocation(line: 331, column: 9, scope: !222)
!265 = !DILocation(line: 332, column: 10, scope: !222)
!266 = !DILocation(line: 332, column: 17, scope: !222)
!267 = !DILocation(line: 332, column: 8, scope: !222)
!268 = !DILocation(line: 333, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !222, file: !37, line: 333, column: 6)
!270 = !DILocation(line: 333, column: 12, scope: !269)
!271 = !DILocation(line: 333, column: 6, scope: !222)
!272 = !DILocation(line: 335, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !37, line: 335, column: 7)
!274 = distinct !DILexicalBlock(scope: !269, file: !37, line: 334, column: 2)
!275 = !DILocation(line: 335, column: 13, scope: !273)
!276 = !DILocation(line: 335, column: 7, scope: !274)
!277 = !DILocation(line: 337, column: 65, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !37, line: 336, column: 3)
!279 = !DILocation(line: 337, column: 4, scope: !278)
!280 = !DILocation(line: 338, column: 3, scope: !278)
!281 = !DILocation(line: 339, column: 3, scope: !274)
!282 = !DILocation(line: 341, column: 3, scope: !222)
!283 = !DILocation(line: 341, column: 7, scope: !222)
!284 = !DILocation(line: 341, column: 9, scope: !222)
!285 = !DILocation(line: 342, column: 18, scope: !286)
!286 = distinct !DILexicalBlock(scope: !222, file: !37, line: 342, column: 2)
!287 = !DILocation(line: 342, column: 22, scope: !286)
!288 = !DILocation(line: 342, column: 23, scope: !286)
!289 = !DILocation(line: 342, column: 15, scope: !286)
!290 = !DILocation(line: 342, column: 5, scope: !286)
!291 = !DILocation(line: 342, column: 13, scope: !286)
!292 = !DILocation(line: 342, column: 42, scope: !286)
!293 = !DILocation(line: 342, column: 41, scope: !286)
!294 = !DILocation(line: 342, column: 40, scope: !286)
!295 = !DILocation(line: 342, column: 51, scope: !286)
!296 = !DILocation(line: 342, column: 62, scope: !286)
!297 = !DILocation(line: 342, column: 66, scope: !286)
!298 = !DILocation(line: 342, column: 67, scope: !286)
!299 = !DILocation(line: 342, column: 59, scope: !286)
!300 = !DILocation(line: 342, column: 57, scope: !286)
!301 = !DILocation(line: 342, column: 39, scope: !286)
!302 = !DILocation(line: 342, column: 29, scope: !286)
!303 = !DILocation(line: 342, column: 37, scope: !286)
!304 = !DILocation(line: 343, column: 3, scope: !222)
!305 = !DILocation(line: 343, column: 7, scope: !222)
!306 = !DILocation(line: 343, column: 9, scope: !222)
!307 = !DILocation(line: 344, column: 14, scope: !222)
!308 = !DILocation(line: 344, column: 18, scope: !222)
!309 = !DILocation(line: 344, column: 19, scope: !222)
!310 = !DILocation(line: 344, column: 11, scope: !222)
!311 = !DILocation(line: 344, column: 9, scope: !222)
!312 = !DILocation(line: 345, column: 6, scope: !313)
!313 = distinct !DILexicalBlock(scope: !222, file: !37, line: 345, column: 6)
!314 = !DILocation(line: 345, column: 13, scope: !313)
!315 = !DILocation(line: 345, column: 6, scope: !222)
!316 = !DILocation(line: 346, column: 4, scope: !313)
!317 = !DILocation(line: 346, column: 8, scope: !313)
!318 = !DILocation(line: 346, column: 10, scope: !313)
!319 = !DILocation(line: 346, column: 3, scope: !313)
!320 = !DILocation(line: 347, column: 9, scope: !222)
!321 = !DILocation(line: 347, column: 2, scope: !222)
!322 = !DILocation(line: 348, column: 1, scope: !222)
!323 = distinct !DISubprogram(name: "mcs_connect_start", scope: !37, file: !37, line: 351, type: !324, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!324 = !DISubroutineType(types: !325)
!325 = !{!227, !326, !326, !326, !326, !227, !328}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !39, line: 43, baseType: !63)
!330 = !DILocalVariable(name: "server", arg: 1, scope: !323, file: !37, line: 351, type: !326)
!331 = !DILocation(line: 351, column: 25, scope: !323)
!332 = !DILocalVariable(name: "username", arg: 2, scope: !323, file: !37, line: 351, type: !326)
!333 = !DILocation(line: 351, column: 39, scope: !323)
!334 = !DILocalVariable(name: "domain", arg: 3, scope: !323, file: !37, line: 351, type: !326)
!335 = !DILocation(line: 351, column: 55, scope: !323)
!336 = !DILocalVariable(name: "password", arg: 4, scope: !323, file: !37, line: 351, type: !326)
!337 = !DILocation(line: 351, column: 69, scope: !323)
!338 = !DILocalVariable(name: "reconnect", arg: 5, scope: !323, file: !37, line: 352, type: !227)
!339 = !DILocation(line: 352, column: 13, scope: !323)
!340 = !DILocalVariable(name: "selected_protocol", arg: 6, scope: !323, file: !37, line: 352, type: !328)
!341 = !DILocation(line: 352, column: 33, scope: !323)
!342 = !DILocation(line: 354, column: 2, scope: !323)
!343 = !DILocation(line: 355, column: 21, scope: !323)
!344 = !DILocation(line: 355, column: 29, scope: !323)
!345 = !DILocation(line: 355, column: 39, scope: !323)
!346 = !DILocation(line: 355, column: 47, scope: !323)
!347 = !DILocation(line: 355, column: 57, scope: !323)
!348 = !DILocation(line: 355, column: 68, scope: !323)
!349 = !DILocation(line: 355, column: 9, scope: !323)
!350 = !DILocation(line: 355, column: 2, scope: !323)
!351 = distinct !DISubprogram(name: "mcs_connect_finalize", scope: !37, file: !37, line: 359, type: !352, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!352 = !DISubroutineType(types: !353)
!353 = !{!227, !52}
!354 = !DILocalVariable(name: "mcs_data", arg: 1, scope: !351, file: !37, line: 359, type: !52)
!355 = !DILocation(line: 359, column: 29, scope: !351)
!356 = !DILocalVariable(name: "i", scope: !351, file: !37, line: 361, type: !63)
!357 = !DILocation(line: 361, column: 15, scope: !351)
!358 = !DILocation(line: 363, column: 2, scope: !351)
!359 = !DILocation(line: 364, column: 27, scope: !351)
!360 = !DILocation(line: 364, column: 2, scope: !351)
!361 = !DILocation(line: 365, column: 33, scope: !362)
!362 = distinct !DILexicalBlock(scope: !351, file: !37, line: 365, column: 6)
!363 = !DILocation(line: 365, column: 7, scope: !362)
!364 = !DILocation(line: 365, column: 6, scope: !351)
!365 = !DILocation(line: 366, column: 3, scope: !362)
!366 = !DILocation(line: 368, column: 2, scope: !351)
!367 = !DILocation(line: 370, column: 2, scope: !351)
!368 = !DILocation(line: 371, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !351, file: !37, line: 371, column: 6)
!370 = !DILocation(line: 371, column: 6, scope: !351)
!371 = !DILocation(line: 372, column: 3, scope: !369)
!372 = !DILocation(line: 374, column: 16, scope: !351)
!373 = !DILocation(line: 374, column: 29, scope: !351)
!374 = !DILocation(line: 374, column: 2, scope: !351)
!375 = !DILocation(line: 376, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !351, file: !37, line: 376, column: 6)
!377 = !DILocation(line: 376, column: 6, scope: !351)
!378 = !DILocation(line: 377, column: 3, scope: !376)
!379 = !DILocation(line: 379, column: 2, scope: !351)
!380 = !DILocation(line: 380, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !351, file: !37, line: 380, column: 6)
!382 = !DILocation(line: 380, column: 6, scope: !351)
!383 = !DILocation(line: 381, column: 3, scope: !381)
!384 = !DILocation(line: 383, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !351, file: !37, line: 383, column: 2)
!386 = !DILocation(line: 383, column: 7, scope: !385)
!387 = !DILocation(line: 383, column: 14, scope: !388)
!388 = !DILexicalBlockFile(scope: !389, file: !37, discriminator: 1)
!389 = distinct !DILexicalBlock(scope: !385, file: !37, line: 383, column: 2)
!390 = !DILocation(line: 383, column: 18, scope: !388)
!391 = !DILocation(line: 383, column: 16, scope: !388)
!392 = !DILocation(line: 383, column: 2, scope: !388)
!393 = !DILocation(line: 385, column: 28, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !37, line: 384, column: 2)
!395 = !DILocation(line: 385, column: 17, scope: !394)
!396 = !DILocation(line: 385, column: 31, scope: !394)
!397 = !DILocation(line: 385, column: 3, scope: !394)
!398 = !DILocation(line: 386, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !37, line: 386, column: 7)
!400 = !DILocation(line: 386, column: 7, scope: !394)
!401 = !DILocation(line: 387, column: 4, scope: !399)
!402 = !DILocation(line: 388, column: 2, scope: !394)
!403 = !DILocation(line: 383, column: 35, scope: !404)
!404 = !DILexicalBlockFile(scope: !389, file: !37, discriminator: 2)
!405 = !DILocation(line: 383, column: 2, scope: !404)
!406 = distinct !{!406, !407}
!407 = !DILocation(line: 383, column: 2, scope: !351)
!408 = !DILocation(line: 389, column: 2, scope: !351)
!409 = !DILocation(line: 392, column: 2, scope: !351)
!410 = !DILocation(line: 393, column: 2, scope: !351)
!411 = !DILocation(line: 394, column: 1, scope: !351)
!412 = distinct !DISubprogram(name: "mcs_send_connect_initial", scope: !37, file: !37, line: 58, type: !215, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!413 = !DILocalVariable(name: "mcs_data", arg: 1, scope: !412, file: !37, line: 58, type: !52)
!414 = !DILocation(line: 58, column: 33, scope: !412)
!415 = !DILocalVariable(name: "datalen", scope: !412, file: !37, line: 60, type: !110)
!416 = !DILocation(line: 60, column: 6, scope: !412)
!417 = !DILocation(line: 60, column: 16, scope: !412)
!418 = !DILocation(line: 60, column: 26, scope: !412)
!419 = !DILocation(line: 60, column: 32, scope: !412)
!420 = !DILocation(line: 60, column: 42, scope: !412)
!421 = !DILocation(line: 60, column: 30, scope: !412)
!422 = !DILocalVariable(name: "length", scope: !412, file: !37, line: 61, type: !110)
!423 = !DILocation(line: 61, column: 6, scope: !412)
!424 = !DILocation(line: 61, column: 32, scope: !412)
!425 = !DILocation(line: 61, column: 30, scope: !412)
!426 = !DILocalVariable(name: "s", scope: !412, file: !37, line: 62, type: !52)
!427 = !DILocation(line: 62, column: 9, scope: !412)
!428 = !DILocation(line: 63, column: 2, scope: !412)
!429 = !DILocation(line: 64, column: 15, scope: !412)
!430 = !DILocation(line: 64, column: 22, scope: !412)
!431 = !DILocation(line: 64, column: 6, scope: !412)
!432 = !DILocation(line: 64, column: 4, scope: !412)
!433 = !DILocation(line: 66, column: 17, scope: !412)
!434 = !DILocation(line: 66, column: 28, scope: !412)
!435 = !DILocation(line: 66, column: 2, scope: !412)
!436 = !DILocation(line: 67, column: 17, scope: !412)
!437 = !DILocation(line: 67, column: 2, scope: !412)
!438 = !DILocation(line: 68, column: 5, scope: !412)
!439 = !DILocation(line: 68, column: 9, scope: !412)
!440 = !DILocation(line: 68, column: 10, scope: !412)
!441 = !DILocation(line: 68, column: 14, scope: !412)
!442 = !DILocation(line: 69, column: 17, scope: !412)
!443 = !DILocation(line: 69, column: 2, scope: !412)
!444 = !DILocation(line: 70, column: 5, scope: !412)
!445 = !DILocation(line: 70, column: 9, scope: !412)
!446 = !DILocation(line: 70, column: 10, scope: !412)
!447 = !DILocation(line: 70, column: 14, scope: !412)
!448 = !DILocation(line: 72, column: 17, scope: !412)
!449 = !DILocation(line: 72, column: 2, scope: !412)
!450 = !DILocation(line: 73, column: 5, scope: !412)
!451 = !DILocation(line: 73, column: 9, scope: !412)
!452 = !DILocation(line: 73, column: 10, scope: !412)
!453 = !DILocation(line: 73, column: 14, scope: !412)
!454 = !DILocation(line: 75, column: 24, scope: !412)
!455 = !DILocation(line: 75, column: 2, scope: !412)
!456 = !DILocation(line: 76, column: 24, scope: !412)
!457 = !DILocation(line: 76, column: 2, scope: !412)
!458 = !DILocation(line: 77, column: 24, scope: !412)
!459 = !DILocation(line: 77, column: 2, scope: !412)
!460 = !DILocation(line: 79, column: 17, scope: !412)
!461 = !DILocation(line: 79, column: 23, scope: !412)
!462 = !DILocation(line: 79, column: 2, scope: !412)
!463 = !DILocation(line: 80, column: 12, scope: !464)
!464 = distinct !DILexicalBlock(scope: !412, file: !37, line: 80, column: 2)
!465 = !DILocation(line: 80, column: 16, scope: !464)
!466 = !DILocation(line: 80, column: 18, scope: !464)
!467 = !DILocation(line: 80, column: 28, scope: !464)
!468 = !DILocation(line: 80, column: 33, scope: !464)
!469 = !DILocation(line: 80, column: 4, scope: !464)
!470 = !DILocation(line: 80, column: 53, scope: !464)
!471 = !DILocation(line: 80, column: 44, scope: !464)
!472 = !DILocation(line: 80, column: 48, scope: !464)
!473 = !DILocation(line: 80, column: 50, scope: !464)
!474 = !DILocation(line: 82, column: 14, scope: !412)
!475 = !DILocation(line: 82, column: 18, scope: !412)
!476 = !DILocation(line: 82, column: 3, scope: !412)
!477 = !DILocation(line: 82, column: 7, scope: !412)
!478 = !DILocation(line: 82, column: 11, scope: !412)
!479 = !DILocation(line: 83, column: 11, scope: !412)
!480 = !DILocation(line: 83, column: 2, scope: !412)
!481 = !DILocation(line: 84, column: 1, scope: !412)
!482 = distinct !DISubprogram(name: "mcs_recv_connect_response", scope: !37, file: !37, line: 88, type: !352, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!483 = !DILocalVariable(name: "mcs_data", arg: 1, scope: !482, file: !37, line: 88, type: !52)
!484 = !DILocation(line: 88, column: 34, scope: !482)
!485 = !DILocation(line: 90, column: 9, scope: !482)
!486 = !DILocalVariable(name: "result", scope: !482, file: !37, line: 91, type: !229)
!487 = !DILocation(line: 91, column: 8, scope: !482)
!488 = !DILocalVariable(name: "length", scope: !482, file: !37, line: 92, type: !110)
!489 = !DILocation(line: 92, column: 6, scope: !482)
!490 = !DILocalVariable(name: "s", scope: !482, file: !37, line: 93, type: !52)
!491 = !DILocation(line: 93, column: 9, scope: !482)
!492 = !DILocalVariable(name: "is_fastpath", scope: !482, file: !37, line: 94, type: !227)
!493 = !DILocation(line: 94, column: 10, scope: !482)
!494 = !DILocalVariable(name: "fastpath_hdr", scope: !482, file: !37, line: 95, type: !229)
!495 = !DILocation(line: 95, column: 8, scope: !482)
!496 = !DILocation(line: 97, column: 2, scope: !482)
!497 = !DILocation(line: 98, column: 6, scope: !482)
!498 = !DILocation(line: 98, column: 4, scope: !482)
!499 = !DILocation(line: 100, column: 6, scope: !500)
!500 = distinct !DILexicalBlock(scope: !482, file: !37, line: 100, column: 6)
!501 = !DILocation(line: 100, column: 8, scope: !500)
!502 = !DILocation(line: 100, column: 6, scope: !482)
!503 = !DILocation(line: 101, column: 3, scope: !500)
!504 = !DILocation(line: 103, column: 19, scope: !482)
!505 = !DILocation(line: 103, column: 2, scope: !482)
!506 = !DILocation(line: 105, column: 19, scope: !482)
!507 = !DILocation(line: 105, column: 2, scope: !482)
!508 = !DILocation(line: 106, column: 14, scope: !482)
!509 = !DILocation(line: 106, column: 18, scope: !482)
!510 = !DILocation(line: 106, column: 19, scope: !482)
!511 = !DILocation(line: 106, column: 11, scope: !482)
!512 = !DILocation(line: 106, column: 9, scope: !482)
!513 = !DILocation(line: 107, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !482, file: !37, line: 107, column: 6)
!515 = !DILocation(line: 107, column: 13, scope: !514)
!516 = !DILocation(line: 107, column: 6, scope: !482)
!517 = !DILocation(line: 109, column: 69, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !37, line: 108, column: 2)
!519 = !DILocation(line: 109, column: 3, scope: !518)
!520 = !DILocation(line: 110, column: 3, scope: !518)
!521 = !DILocation(line: 113, column: 19, scope: !482)
!522 = !DILocation(line: 113, column: 2, scope: !482)
!523 = !DILocation(line: 114, column: 12, scope: !482)
!524 = !DILocation(line: 114, column: 3, scope: !482)
!525 = !DILocation(line: 114, column: 7, scope: !482)
!526 = !DILocation(line: 114, column: 9, scope: !482)
!527 = !DILocation(line: 115, column: 26, scope: !482)
!528 = !DILocation(line: 115, column: 2, scope: !482)
!529 = !DILocation(line: 117, column: 19, scope: !482)
!530 = !DILocation(line: 117, column: 2, scope: !482)
!531 = !DILocation(line: 119, column: 23, scope: !482)
!532 = !DILocation(line: 119, column: 2, scope: !482)
!533 = !DILocation(line: 131, column: 11, scope: !482)
!534 = !DILocation(line: 131, column: 15, scope: !482)
!535 = !DILocation(line: 131, column: 21, scope: !482)
!536 = !DILocation(line: 131, column: 25, scope: !482)
!537 = !DILocation(line: 131, column: 17, scope: !482)
!538 = !DILocation(line: 131, column: 2, scope: !482)
!539 = !DILocation(line: 132, column: 1, scope: !482)
!540 = distinct !DISubprogram(name: "mcs_send_edrq", scope: !37, file: !37, line: 136, type: !541, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!541 = !DISubroutineType(types: !542)
!542 = !{null}
!543 = !DILocalVariable(name: "s", scope: !540, file: !37, line: 138, type: !52)
!544 = !DILocation(line: 138, column: 9, scope: !540)
!545 = !DILocation(line: 139, column: 2, scope: !540)
!546 = !DILocation(line: 140, column: 6, scope: !540)
!547 = !DILocation(line: 140, column: 4, scope: !540)
!548 = !DILocation(line: 142, column: 5, scope: !540)
!549 = !DILocation(line: 142, column: 9, scope: !540)
!550 = !DILocation(line: 142, column: 10, scope: !540)
!551 = !DILocation(line: 142, column: 14, scope: !540)
!552 = !DILocation(line: 143, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !540, file: !37, line: 143, column: 2)
!554 = !DILocation(line: 143, column: 11, scope: !553)
!555 = !DILocation(line: 143, column: 12, scope: !553)
!556 = !DILocation(line: 143, column: 16, scope: !553)
!557 = !DILocation(line: 143, column: 40, scope: !553)
!558 = !DILocation(line: 143, column: 44, scope: !553)
!559 = !DILocation(line: 143, column: 45, scope: !553)
!560 = !DILocation(line: 143, column: 49, scope: !553)
!561 = !DILocation(line: 144, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !540, file: !37, line: 144, column: 2)
!563 = !DILocation(line: 144, column: 11, scope: !562)
!564 = !DILocation(line: 144, column: 12, scope: !562)
!565 = !DILocation(line: 144, column: 16, scope: !562)
!566 = !DILocation(line: 144, column: 40, scope: !562)
!567 = !DILocation(line: 144, column: 44, scope: !562)
!568 = !DILocation(line: 144, column: 45, scope: !562)
!569 = !DILocation(line: 144, column: 49, scope: !562)
!570 = !DILocation(line: 146, column: 14, scope: !540)
!571 = !DILocation(line: 146, column: 18, scope: !540)
!572 = !DILocation(line: 146, column: 3, scope: !540)
!573 = !DILocation(line: 146, column: 7, scope: !540)
!574 = !DILocation(line: 146, column: 11, scope: !540)
!575 = !DILocation(line: 147, column: 11, scope: !540)
!576 = !DILocation(line: 147, column: 2, scope: !540)
!577 = !DILocation(line: 148, column: 1, scope: !540)
!578 = distinct !DISubprogram(name: "mcs_send_aurq", scope: !37, file: !37, line: 152, type: !541, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!579 = !DILocalVariable(name: "s", scope: !578, file: !37, line: 154, type: !52)
!580 = !DILocation(line: 154, column: 9, scope: !578)
!581 = !DILocation(line: 155, column: 2, scope: !578)
!582 = !DILocation(line: 156, column: 6, scope: !578)
!583 = !DILocation(line: 156, column: 4, scope: !578)
!584 = !DILocation(line: 158, column: 5, scope: !578)
!585 = !DILocation(line: 158, column: 9, scope: !578)
!586 = !DILocation(line: 158, column: 10, scope: !578)
!587 = !DILocation(line: 158, column: 14, scope: !578)
!588 = !DILocation(line: 160, column: 14, scope: !578)
!589 = !DILocation(line: 160, column: 18, scope: !578)
!590 = !DILocation(line: 160, column: 3, scope: !578)
!591 = !DILocation(line: 160, column: 7, scope: !578)
!592 = !DILocation(line: 160, column: 11, scope: !578)
!593 = !DILocation(line: 161, column: 11, scope: !578)
!594 = !DILocation(line: 161, column: 2, scope: !578)
!595 = !DILocation(line: 162, column: 1, scope: !578)
!596 = distinct !DISubprogram(name: "mcs_recv_aucf", scope: !37, file: !37, line: 166, type: !597, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!597 = !DISubroutineType(types: !598)
!598 = !{!227, !225}
!599 = !DILocalVariable(name: "mcs_userid", arg: 1, scope: !596, file: !37, line: 166, type: !225)
!600 = !DILocation(line: 166, column: 24, scope: !596)
!601 = !DILocalVariable(name: "is_fastpath", scope: !596, file: !37, line: 168, type: !227)
!602 = !DILocation(line: 168, column: 10, scope: !596)
!603 = !DILocalVariable(name: "fastpath_hdr", scope: !596, file: !37, line: 169, type: !229)
!604 = !DILocation(line: 169, column: 8, scope: !596)
!605 = !DILocalVariable(name: "opcode", scope: !596, file: !37, line: 170, type: !229)
!606 = !DILocation(line: 170, column: 8, scope: !596)
!607 = !DILocalVariable(name: "result", scope: !596, file: !37, line: 170, type: !229)
!608 = !DILocation(line: 170, column: 16, scope: !596)
!609 = !DILocalVariable(name: "s", scope: !596, file: !37, line: 171, type: !52)
!610 = !DILocation(line: 171, column: 9, scope: !596)
!611 = !DILocation(line: 173, column: 2, scope: !596)
!612 = !DILocation(line: 174, column: 6, scope: !596)
!613 = !DILocation(line: 174, column: 4, scope: !596)
!614 = !DILocation(line: 176, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !596, file: !37, line: 176, column: 6)
!616 = !DILocation(line: 176, column: 8, scope: !615)
!617 = !DILocation(line: 176, column: 6, scope: !596)
!618 = !DILocation(line: 177, column: 3, scope: !615)
!619 = !DILocation(line: 179, column: 14, scope: !596)
!620 = !DILocation(line: 179, column: 18, scope: !596)
!621 = !DILocation(line: 179, column: 19, scope: !596)
!622 = !DILocation(line: 179, column: 11, scope: !596)
!623 = !DILocation(line: 179, column: 9, scope: !596)
!624 = !DILocation(line: 180, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !596, file: !37, line: 180, column: 6)
!626 = !DILocation(line: 180, column: 14, scope: !625)
!627 = !DILocation(line: 180, column: 20, scope: !625)
!628 = !DILocation(line: 180, column: 6, scope: !596)
!629 = !DILocation(line: 182, column: 76, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !37, line: 181, column: 2)
!631 = !DILocation(line: 182, column: 3, scope: !630)
!632 = !DILocation(line: 183, column: 3, scope: !630)
!633 = !DILocation(line: 186, column: 14, scope: !596)
!634 = !DILocation(line: 186, column: 18, scope: !596)
!635 = !DILocation(line: 186, column: 19, scope: !596)
!636 = !DILocation(line: 186, column: 11, scope: !596)
!637 = !DILocation(line: 186, column: 9, scope: !596)
!638 = !DILocation(line: 187, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !596, file: !37, line: 187, column: 6)
!640 = !DILocation(line: 187, column: 13, scope: !639)
!641 = !DILocation(line: 187, column: 6, scope: !596)
!642 = !DILocation(line: 189, column: 73, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !37, line: 188, column: 2)
!644 = !DILocation(line: 189, column: 3, scope: !643)
!645 = !DILocation(line: 190, column: 3, scope: !643)
!646 = !DILocation(line: 193, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !596, file: !37, line: 193, column: 6)
!648 = !DILocation(line: 193, column: 13, scope: !647)
!649 = !DILocation(line: 193, column: 6, scope: !596)
!650 = !DILocation(line: 194, column: 22, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !37, line: 194, column: 3)
!652 = !DILocation(line: 194, column: 26, scope: !651)
!653 = !DILocation(line: 194, column: 27, scope: !651)
!654 = !DILocation(line: 194, column: 19, scope: !651)
!655 = !DILocation(line: 194, column: 6, scope: !651)
!656 = !DILocation(line: 194, column: 17, scope: !651)
!657 = !DILocation(line: 194, column: 49, scope: !651)
!658 = !DILocation(line: 194, column: 48, scope: !651)
!659 = !DILocation(line: 194, column: 47, scope: !651)
!660 = !DILocation(line: 194, column: 61, scope: !651)
!661 = !DILocation(line: 194, column: 72, scope: !651)
!662 = !DILocation(line: 194, column: 76, scope: !651)
!663 = !DILocation(line: 194, column: 77, scope: !651)
!664 = !DILocation(line: 194, column: 69, scope: !651)
!665 = !DILocation(line: 194, column: 67, scope: !651)
!666 = !DILocation(line: 194, column: 46, scope: !651)
!667 = !DILocation(line: 194, column: 33, scope: !651)
!668 = !DILocation(line: 194, column: 44, scope: !651)
!669 = !DILocation(line: 194, column: 83, scope: !651)
!670 = !DILocation(line: 196, column: 11, scope: !596)
!671 = !DILocation(line: 196, column: 15, scope: !596)
!672 = !DILocation(line: 196, column: 21, scope: !596)
!673 = !DILocation(line: 196, column: 25, scope: !596)
!674 = !DILocation(line: 196, column: 17, scope: !596)
!675 = !DILocation(line: 196, column: 2, scope: !596)
!676 = !DILocation(line: 197, column: 1, scope: !596)
!677 = distinct !DISubprogram(name: "mcs_send_cjrq", scope: !37, file: !37, line: 201, type: !678, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !38}
!680 = !DILocalVariable(name: "chanid", arg: 1, scope: !677, file: !37, line: 201, type: !38)
!681 = !DILocation(line: 201, column: 22, scope: !677)
!682 = !DILocalVariable(name: "s", scope: !677, file: !37, line: 203, type: !52)
!683 = !DILocation(line: 203, column: 9, scope: !677)
!684 = !DILocation(line: 205, column: 56, scope: !677)
!685 = !DILocation(line: 205, column: 2, scope: !677)
!686 = !DILocation(line: 207, column: 6, scope: !677)
!687 = !DILocation(line: 207, column: 4, scope: !677)
!688 = !DILocation(line: 209, column: 5, scope: !677)
!689 = !DILocation(line: 209, column: 9, scope: !677)
!690 = !DILocation(line: 209, column: 10, scope: !677)
!691 = !DILocation(line: 209, column: 14, scope: !677)
!692 = !DILocation(line: 210, column: 20, scope: !693)
!693 = distinct !DILexicalBlock(scope: !677, file: !37, line: 210, column: 2)
!694 = !DILocation(line: 210, column: 19, scope: !693)
!695 = !DILocation(line: 210, column: 34, scope: !693)
!696 = !DILocation(line: 210, column: 40, scope: !693)
!697 = !DILocation(line: 210, column: 18, scope: !693)
!698 = !DILocation(line: 210, column: 7, scope: !693)
!699 = !DILocation(line: 210, column: 11, scope: !693)
!700 = !DILocation(line: 210, column: 12, scope: !693)
!701 = !DILocation(line: 210, column: 16, scope: !693)
!702 = !DILocation(line: 210, column: 63, scope: !693)
!703 = !DILocation(line: 210, column: 62, scope: !693)
!704 = !DILocation(line: 210, column: 77, scope: !693)
!705 = !DILocation(line: 210, column: 51, scope: !693)
!706 = !DILocation(line: 210, column: 55, scope: !693)
!707 = !DILocation(line: 210, column: 56, scope: !693)
!708 = !DILocation(line: 210, column: 60, scope: !693)
!709 = !DILocation(line: 211, column: 20, scope: !710)
!710 = distinct !DILexicalBlock(scope: !677, file: !37, line: 211, column: 2)
!711 = !DILocation(line: 211, column: 19, scope: !710)
!712 = !DILocation(line: 211, column: 28, scope: !710)
!713 = !DILocation(line: 211, column: 34, scope: !710)
!714 = !DILocation(line: 211, column: 18, scope: !710)
!715 = !DILocation(line: 211, column: 7, scope: !710)
!716 = !DILocation(line: 211, column: 11, scope: !710)
!717 = !DILocation(line: 211, column: 12, scope: !710)
!718 = !DILocation(line: 211, column: 16, scope: !710)
!719 = !DILocation(line: 211, column: 57, scope: !710)
!720 = !DILocation(line: 211, column: 56, scope: !710)
!721 = !DILocation(line: 211, column: 65, scope: !710)
!722 = !DILocation(line: 211, column: 45, scope: !710)
!723 = !DILocation(line: 211, column: 49, scope: !710)
!724 = !DILocation(line: 211, column: 50, scope: !710)
!725 = !DILocation(line: 211, column: 54, scope: !710)
!726 = !DILocation(line: 213, column: 14, scope: !677)
!727 = !DILocation(line: 213, column: 18, scope: !677)
!728 = !DILocation(line: 213, column: 3, scope: !677)
!729 = !DILocation(line: 213, column: 7, scope: !677)
!730 = !DILocation(line: 213, column: 11, scope: !677)
!731 = !DILocation(line: 214, column: 11, scope: !677)
!732 = !DILocation(line: 214, column: 2, scope: !677)
!733 = !DILocation(line: 215, column: 1, scope: !677)
!734 = distinct !DISubprogram(name: "mcs_recv_cjcf", scope: !37, file: !37, line: 219, type: !735, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!735 = !DISubroutineType(types: !736)
!736 = !{!227}
!737 = !DILocalVariable(name: "is_fastpath", scope: !734, file: !37, line: 221, type: !227)
!738 = !DILocation(line: 221, column: 10, scope: !734)
!739 = !DILocalVariable(name: "fastpath_hdr", scope: !734, file: !37, line: 222, type: !229)
!740 = !DILocation(line: 222, column: 8, scope: !734)
!741 = !DILocalVariable(name: "opcode", scope: !734, file: !37, line: 223, type: !229)
!742 = !DILocation(line: 223, column: 8, scope: !734)
!743 = !DILocalVariable(name: "result", scope: !734, file: !37, line: 223, type: !229)
!744 = !DILocation(line: 223, column: 16, scope: !734)
!745 = !DILocalVariable(name: "s", scope: !734, file: !37, line: 224, type: !52)
!746 = !DILocation(line: 224, column: 9, scope: !734)
!747 = !DILocation(line: 226, column: 2, scope: !734)
!748 = !DILocation(line: 227, column: 6, scope: !734)
!749 = !DILocation(line: 227, column: 4, scope: !734)
!750 = !DILocation(line: 229, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !734, file: !37, line: 229, column: 6)
!752 = !DILocation(line: 229, column: 8, scope: !751)
!753 = !DILocation(line: 229, column: 6, scope: !734)
!754 = !DILocation(line: 230, column: 3, scope: !751)
!755 = !DILocation(line: 232, column: 14, scope: !734)
!756 = !DILocation(line: 232, column: 18, scope: !734)
!757 = !DILocation(line: 232, column: 19, scope: !734)
!758 = !DILocation(line: 232, column: 11, scope: !734)
!759 = !DILocation(line: 232, column: 9, scope: !734)
!760 = !DILocation(line: 233, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !734, file: !37, line: 233, column: 6)
!762 = !DILocation(line: 233, column: 14, scope: !761)
!763 = !DILocation(line: 233, column: 20, scope: !761)
!764 = !DILocation(line: 233, column: 6, scope: !734)
!765 = !DILocation(line: 235, column: 76, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !37, line: 234, column: 2)
!767 = !DILocation(line: 235, column: 3, scope: !766)
!768 = !DILocation(line: 236, column: 3, scope: !766)
!769 = !DILocation(line: 239, column: 14, scope: !734)
!770 = !DILocation(line: 239, column: 18, scope: !734)
!771 = !DILocation(line: 239, column: 19, scope: !734)
!772 = !DILocation(line: 239, column: 11, scope: !734)
!773 = !DILocation(line: 239, column: 9, scope: !734)
!774 = !DILocation(line: 240, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !734, file: !37, line: 240, column: 6)
!776 = !DILocation(line: 240, column: 13, scope: !775)
!777 = !DILocation(line: 240, column: 6, scope: !734)
!778 = !DILocation(line: 242, column: 73, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !37, line: 241, column: 2)
!780 = !DILocation(line: 242, column: 3, scope: !779)
!781 = !DILocation(line: 243, column: 3, scope: !779)
!782 = !DILocation(line: 246, column: 3, scope: !734)
!783 = !DILocation(line: 246, column: 7, scope: !734)
!784 = !DILocation(line: 246, column: 9, scope: !734)
!785 = !DILocation(line: 247, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !734, file: !37, line: 247, column: 6)
!787 = !DILocation(line: 247, column: 13, scope: !786)
!788 = !DILocation(line: 247, column: 6, scope: !734)
!789 = !DILocation(line: 248, column: 4, scope: !786)
!790 = !DILocation(line: 248, column: 8, scope: !786)
!791 = !DILocation(line: 248, column: 10, scope: !786)
!792 = !DILocation(line: 248, column: 3, scope: !786)
!793 = !DILocation(line: 250, column: 11, scope: !734)
!794 = !DILocation(line: 250, column: 15, scope: !734)
!795 = !DILocation(line: 250, column: 21, scope: !734)
!796 = !DILocation(line: 250, column: 25, scope: !734)
!797 = !DILocation(line: 250, column: 17, scope: !734)
!798 = !DILocation(line: 250, column: 2, scope: !734)
!799 = !DILocation(line: 251, column: 1, scope: !734)
!800 = distinct !DISubprogram(name: "mcs_disconnect", scope: !37, file: !37, line: 398, type: !801, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !110}
!803 = !DILocalVariable(name: "reason", arg: 1, scope: !800, file: !37, line: 398, type: !110)
!804 = !DILocation(line: 398, column: 20, scope: !800)
!805 = !DILocation(line: 400, column: 15, scope: !800)
!806 = !DILocation(line: 400, column: 2, scope: !800)
!807 = !DILocation(line: 401, column: 2, scope: !800)
!808 = !DILocation(line: 402, column: 1, scope: !800)
!809 = distinct !DISubprogram(name: "mcs_reset_state", scope: !37, file: !37, line: 406, type: !541, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!810 = !DILocation(line: 408, column: 15, scope: !809)
!811 = !DILocation(line: 409, column: 2, scope: !809)
!812 = !DILocation(line: 410, column: 1, scope: !809)
!813 = distinct !DISubprogram(name: "mcs_out_domain_params", scope: !37, file: !37, line: 31, type: !814, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !52, !110, !110, !110, !110}
!816 = !DILocalVariable(name: "s", arg: 1, scope: !813, file: !37, line: 31, type: !52)
!817 = !DILocation(line: 31, column: 30, scope: !813)
!818 = !DILocalVariable(name: "max_channels", arg: 2, scope: !813, file: !37, line: 31, type: !110)
!819 = !DILocation(line: 31, column: 37, scope: !813)
!820 = !DILocalVariable(name: "max_users", arg: 3, scope: !813, file: !37, line: 31, type: !110)
!821 = !DILocation(line: 31, column: 55, scope: !813)
!822 = !DILocalVariable(name: "max_tokens", arg: 4, scope: !813, file: !37, line: 31, type: !110)
!823 = !DILocation(line: 31, column: 70, scope: !813)
!824 = !DILocalVariable(name: "max_pdusize", arg: 5, scope: !813, file: !37, line: 31, type: !110)
!825 = !DILocation(line: 31, column: 86, scope: !813)
!826 = !DILocation(line: 33, column: 17, scope: !813)
!827 = !DILocation(line: 33, column: 2, scope: !813)
!828 = !DILocation(line: 34, column: 18, scope: !813)
!829 = !DILocation(line: 34, column: 21, scope: !813)
!830 = !DILocation(line: 34, column: 2, scope: !813)
!831 = !DILocation(line: 35, column: 18, scope: !813)
!832 = !DILocation(line: 35, column: 21, scope: !813)
!833 = !DILocation(line: 35, column: 2, scope: !813)
!834 = !DILocation(line: 36, column: 18, scope: !813)
!835 = !DILocation(line: 36, column: 21, scope: !813)
!836 = !DILocation(line: 36, column: 2, scope: !813)
!837 = !DILocation(line: 37, column: 18, scope: !813)
!838 = !DILocation(line: 37, column: 2, scope: !813)
!839 = !DILocation(line: 38, column: 18, scope: !813)
!840 = !DILocation(line: 38, column: 2, scope: !813)
!841 = !DILocation(line: 39, column: 18, scope: !813)
!842 = !DILocation(line: 39, column: 2, scope: !813)
!843 = !DILocation(line: 40, column: 18, scope: !813)
!844 = !DILocation(line: 40, column: 21, scope: !813)
!845 = !DILocation(line: 40, column: 2, scope: !813)
!846 = !DILocation(line: 41, column: 18, scope: !813)
!847 = !DILocation(line: 41, column: 2, scope: !813)
!848 = !DILocation(line: 42, column: 1, scope: !813)
!849 = distinct !DISubprogram(name: "mcs_parse_domain_params", scope: !37, file: !37, line: 46, type: !352, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !47)
!850 = !DILocalVariable(name: "s", arg: 1, scope: !849, file: !37, line: 46, type: !52)
!851 = !DILocation(line: 46, column: 32, scope: !849)
!852 = !DILocalVariable(name: "length", scope: !849, file: !37, line: 48, type: !110)
!853 = !DILocation(line: 48, column: 6, scope: !849)
!854 = !DILocation(line: 50, column: 19, scope: !849)
!855 = !DILocation(line: 50, column: 2, scope: !849)
!856 = !DILocation(line: 51, column: 12, scope: !849)
!857 = !DILocation(line: 51, column: 3, scope: !849)
!858 = !DILocation(line: 51, column: 7, scope: !849)
!859 = !DILocation(line: 51, column: 9, scope: !849)
!860 = !DILocation(line: 53, column: 11, scope: !849)
!861 = !DILocation(line: 53, column: 15, scope: !849)
!862 = !DILocation(line: 53, column: 21, scope: !849)
!863 = !DILocation(line: 53, column: 25, scope: !849)
!864 = !DILocation(line: 53, column: 17, scope: !849)
!865 = !DILocation(line: 53, column: 2, scope: !849)
