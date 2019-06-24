; ModuleID = './[inter]licence.o.i'
source_filename = "./[inter]licence.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.rc4_key_st = type { i32, i32, [256 x i32] }

@g_licence_issued = global i32 0, align 4
@g_licence_error_result = global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"License error alert from server: No license server\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"License error alert from server: Invalid client\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"License error alert from server: code %u, state transition %u\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"license_process(), processing licensing PDU (message type 0x%02x)\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"license_process(), unhandled license PDU tag 0x%02\00", align 1
@g_licence_sign_key = internal global [16 x i8] zeroinitializer, align 16
@g_licence_key = internal global [16 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [71 x i8] c"license_process_request(), sending licensing PDU (message type 0x%02x)\00", align 1
@g_username = external global i8*, align 8
@g_hostname = external global [16 x i8], align 16
@g_rdp_version = external global i32, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"license_parse_platform_challenge(), tokenlen != LICENSE_TOKEN_SIZE\00", align 1

; Function Attrs: nounwind uwtable
define void @licence_process_error_alert(%struct.stream*) #0 !dbg !53 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !72, metadata !73), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %3, metadata !75, metadata !73), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %4, metadata !77, metadata !73), !dbg !78
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !79
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !81
  %7 = load i8*, i8** %6, align 8, !dbg !81
  %8 = bitcast i8* %7 to i32*, !dbg !82
  %9 = load i32, i32* %8, align 4, !dbg !82
  store i32 %9, i32* %3, align 4, !dbg !83
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !84
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !85
  %12 = load i8*, i8** %11, align 8, !dbg !86
  %13 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !86
  store i8* %13, i8** %11, align 8, !dbg !86
  %14 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !87
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !89
  %16 = load i8*, i8** %15, align 8, !dbg !89
  %17 = bitcast i8* %16 to i32*, !dbg !90
  %18 = load i32, i32* %17, align 4, !dbg !90
  store i32 %18, i32* %4, align 4, !dbg !91
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !92
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !93
  %21 = load i8*, i8** %20, align 8, !dbg !94
  %22 = getelementptr inbounds i8, i8* %21, i64 4, !dbg !94
  store i8* %22, i8** %20, align 8, !dbg !94
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !95
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !96
  %25 = load i8*, i8** %24, align 8, !dbg !97
  %26 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !97
  store i8* %26, i8** %24, align 8, !dbg !97
  %27 = load i32, i32* %3, align 4, !dbg !98
  %28 = icmp eq i32 %27, 7, !dbg !100
  br i1 %28, label %29, label %30, !dbg !101

; <label>:29:                                     ; preds = %1
  store i32 1, i32* @g_licence_issued, align 4, !dbg !102
  br label %39, !dbg !104

; <label>:30:                                     ; preds = %1
  %31 = load i32, i32* %3, align 4, !dbg !105
  switch i32 %31, label %35 [
    i32 6, label %32
    i32 8, label %33
    i32 4, label %34
    i32 11, label %34
    i32 12, label %34
  ], !dbg !106

; <label>:32:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0)), !dbg !107
  br label %38, !dbg !109

; <label>:33:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0)), !dbg !110
  br label %38, !dbg !111

; <label>:34:                                     ; preds = %30, %30, %30
  br label %35, !dbg !112

; <label>:35:                                     ; preds = %30, %34
  %36 = load i32, i32* %3, align 4, !dbg !114
  %37 = load i32, i32* %4, align 4, !dbg !115
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i32 0, i32 0), i32 %36, i32 %37), !dbg !116
  br label %38, !dbg !117

; <label>:38:                                     ; preds = %35, %33, %32
  store i32 1, i32* @g_licence_error_result, align 4, !dbg !118
  br label %39, !dbg !119

; <label>:39:                                     ; preds = %38, %29
  ret void, !dbg !120
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @licence_process(%struct.stream*) #0 !dbg !122 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8, align 1
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !123, metadata !73), !dbg !124
  call void @llvm.dbg.declare(metadata i8* %3, metadata !125, metadata !73), !dbg !126
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !127
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !128
  %6 = load i8*, i8** %5, align 8, !dbg !129
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !129
  store i8* %7, i8** %5, align 8, !dbg !129
  %8 = load i8, i8* %6, align 1, !dbg !130
  store i8 %8, i8* %3, align 1, !dbg !131
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !132
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !133
  %11 = load i8*, i8** %10, align 8, !dbg !134
  %12 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !134
  store i8* %12, i8** %10, align 8, !dbg !134
  %13 = load i8, i8* %3, align 1, !dbg !135
  %14 = zext i8 %13 to i32, !dbg !135
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0), i32 %14), !dbg !136
  %15 = load i8, i8* %3, align 1, !dbg !137
  %16 = zext i8 %15 to i32, !dbg !137
  switch i32 %16, label %25 [
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
    i32 4, label %21
    i32 255, label %23
  ], !dbg !138

; <label>:17:                                     ; preds = %1
  %18 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !139
  call void @licence_process_request(%struct.stream* %18), !dbg !141
  br label %28, !dbg !142

; <label>:19:                                     ; preds = %1
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !143
  call void @licence_process_platform_challenge(%struct.stream* %20), !dbg !144
  br label %28, !dbg !145

; <label>:21:                                     ; preds = %1, %1
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !146
  call void @licence_process_new_license(%struct.stream* %22), !dbg !147
  br label %28, !dbg !148

; <label>:23:                                     ; preds = %1
  %24 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !149
  call void @licence_process_error_alert(%struct.stream* %24), !dbg !150
  br label %28, !dbg !151

; <label>:25:                                     ; preds = %1
  %26 = load i8, i8* %3, align 1, !dbg !152
  %27 = zext i8 %26 to i32, !dbg !152
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 %27), !dbg !153
  br label %28, !dbg !154

; <label>:28:                                     ; preds = %25, %23, %21, %19, %17
  ret void, !dbg !155
}

; Function Attrs: nounwind uwtable
define internal void @licence_process_request(%struct.stream*) #0 !dbg !156 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rc4_key_st, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !157, metadata !73), !dbg !158
  call void @llvm.dbg.declare(metadata [64 x i8]* %3, metadata !159, metadata !73), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !73), !dbg !166
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !167, metadata !73), !dbg !168
  call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !169, metadata !73), !dbg !173
  call void @llvm.dbg.declare(metadata i8** %7, metadata !174, metadata !73), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %8, metadata !176, metadata !73), !dbg !177
  call void @llvm.dbg.declare(metadata %struct.rc4_key_st* %9, metadata !178, metadata !73), !dbg !189
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !190
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !192
  %12 = load i8*, i8** %11, align 8, !dbg !192
  store i8* %12, i8** %4, align 8, !dbg !193
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !194
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !195
  %15 = load i8*, i8** %14, align 8, !dbg !196
  %16 = getelementptr inbounds i8, i8* %15, i64 32, !dbg !196
  store i8* %16, i8** %14, align 8, !dbg !196
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !197
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 64, i32 16, i1 false), !dbg !197
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !198
  %19 = load i8*, i8** %4, align 8, !dbg !199
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !200
  call void @licence_generate_keys(i8* %18, i8* %19, i8* %20), !dbg !201
  %21 = call i32 @load_licence(i8** %7), !dbg !202
  store i32 %21, i32* %8, align 4, !dbg !203
  %22 = load i32, i32* %8, align 4, !dbg !204
  %23 = icmp sgt i32 %22, 0, !dbg !206
  br i1 %23, label %24, label %37, !dbg !207

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !208
  call void @licence_generate_hwid(i8* %25), !dbg !210
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !211
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !212
  call void @sec_sign(i8* %26, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_sign_key, i32 0, i32 0), i32 16, i8* %27, i32 20), !dbg !213
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_key, i32 0, i32 0), i32 16), !dbg !214
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !215
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !216
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* %9, i8* %28, i8* %29, i32 20), !dbg !217
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i32 18), !dbg !218
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !219
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !220
  %32 = load i8*, i8** %7, align 8, !dbg !221
  %33 = load i32, i32* %8, align 4, !dbg !222
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !223
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !224
  call void @licence_info(i8* %30, i8* %31, i8* %32, i32 %33, i8* %34, i8* %35), !dbg !225
  %36 = load i8*, i8** %7, align 8, !dbg !226
  call void @xfree(i8* %36), !dbg !227
  br label %41, !dbg !228

; <label>:37:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i32 19), !dbg !229
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !230
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !231
  %40 = load i8*, i8** @g_username, align 8, !dbg !232
  call void @licence_send_new_licence_request(i8* %38, i8* %39, i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0)), !dbg !233
  br label %41, !dbg !234

; <label>:41:                                     ; preds = %37, %24
  ret void, !dbg !235
}

; Function Attrs: nounwind uwtable
define internal void @licence_process_platform_challenge(%struct.stream*) #0 !dbg !237 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [30 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.rc4_key_st, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !238, metadata !73), !dbg !239
  call void @llvm.dbg.declare(metadata i8** %3, metadata !240, metadata !73), !dbg !241
  store i8* null, i8** %3, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i8** %4, metadata !242, metadata !73), !dbg !243
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !244, metadata !73), !dbg !248
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !249, metadata !73), !dbg !250
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !251, metadata !73), !dbg !252
  call void @llvm.dbg.declare(metadata [20 x i8]* %8, metadata !253, metadata !73), !dbg !254
  call void @llvm.dbg.declare(metadata [30 x i8]* %9, metadata !255, metadata !73), !dbg !259
  call void @llvm.dbg.declare(metadata [16 x i8]* %10, metadata !260, metadata !73), !dbg !261
  call void @llvm.dbg.declare(metadata %struct.rc4_key_st* %11, metadata !262, metadata !73), !dbg !263
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !264
  %13 = call i32 @licence_parse_platform_challenge(%struct.stream* %12, i8** %3, i8** %4), !dbg !265
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0, !dbg !266
  %15 = load i8*, i8** %3, align 8, !dbg !267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 10, i32 1, i1 false), !dbg !266
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_key, i32 0, i32 0), i32 16), !dbg !268
  %16 = load i8*, i8** %3, align 8, !dbg !269
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i32 0, i32 0, !dbg !270
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* %11, i8* %16, i8* %17, i32 10), !dbg !271
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i32 0, i32 0, !dbg !272
  call void @licence_generate_hwid(i8* %18), !dbg !273
  %19 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i32 0, i32 0, !dbg !274
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i32 0, i32 0, !dbg !274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 10, i32 1, i1 false), !dbg !274
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i32 0, i32 0, !dbg !275
  %22 = getelementptr inbounds i8, i8* %21, i64 10, !dbg !276
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i32 0, i32 0, !dbg !277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 20, i32 1, i1 false), !dbg !277
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0, !dbg !278
  %25 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i32 0, i32 0, !dbg !279
  call void @sec_sign(i8* %24, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_sign_key, i32 0, i32 0), i32 16, i8* %25, i32 30), !dbg !280
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_key, i32 0, i32 0), i32 16), !dbg !281
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i32 0, i32 0, !dbg !282
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i32 0, i32 0, !dbg !283
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* %11, i8* %26, i8* %27, i32 20), !dbg !284
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0, !dbg !285
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i32 0, i32 0, !dbg !286
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0, !dbg !287
  call void @licence_send_platform_challenge_response(i8* %28, i8* %29, i8* %30), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind uwtable
define internal void @licence_process_new_license(%struct.stream*) #0 !dbg !290 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca %struct.rc4_key_st, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !291, metadata !73), !dbg !292
  call void @llvm.dbg.declare(metadata %struct.rc4_key_st* %3, metadata !293, metadata !73), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %4, metadata !295, metadata !73), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %5, metadata !297, metadata !73), !dbg !298
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !299
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !300
  %8 = load i8*, i8** %7, align 8, !dbg !301
  %9 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !301
  store i8* %9, i8** %7, align 8, !dbg !301
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !302
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !304
  %12 = load i8*, i8** %11, align 8, !dbg !304
  %13 = bitcast i8* %12 to i16*, !dbg !305
  %14 = load i16, i16* %13, align 2, !dbg !305
  %15 = zext i16 %14 to i32, !dbg !305
  store i32 %15, i32* %4, align 4, !dbg !306
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !307
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !308
  %18 = load i8*, i8** %17, align 8, !dbg !309
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !309
  store i8* %19, i8** %17, align 8, !dbg !309
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !310
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !312
  %22 = load i8*, i8** %21, align 8, !dbg !312
  %23 = load i32, i32* %4, align 4, !dbg !313
  %24 = zext i32 %23 to i64, !dbg !314
  %25 = getelementptr inbounds i8, i8* %22, i64 %24, !dbg !314
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !315
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 1, !dbg !316
  %28 = load i8*, i8** %27, align 8, !dbg !316
  %29 = icmp ule i8* %25, %28, !dbg !317
  br i1 %29, label %31, label %30, !dbg !318

; <label>:30:                                     ; preds = %1
  br label %82, !dbg !319

; <label>:31:                                     ; preds = %1
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_key, i32 0, i32 0), i32 16), !dbg !320
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !321
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !322
  %34 = load i8*, i8** %33, align 8, !dbg !322
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !323
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !324
  %37 = load i8*, i8** %36, align 8, !dbg !324
  %38 = load i32, i32* %4, align 4, !dbg !325
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* %3, i8* %34, i8* %37, i32 %38), !dbg !326
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !327
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !328
  %41 = load i8*, i8** %40, align 8, !dbg !329
  %42 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !329
  store i8* %42, i8** %40, align 8, !dbg !329
  store i32 0, i32* %4, align 4, !dbg !330
  store i32 0, i32* %5, align 4, !dbg !331
  br label %43, !dbg !333

; <label>:43:                                     ; preds = %74, %31
  %44 = load i32, i32* %5, align 4, !dbg !334
  %45 = icmp slt i32 %44, 4, !dbg !337
  br i1 %45, label %46, label %77, !dbg !338

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %4, align 4, !dbg !339
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !341
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !342
  %50 = load i8*, i8** %49, align 8, !dbg !343
  %51 = zext i32 %47 to i64, !dbg !343
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !343
  store i8* %52, i8** %49, align 8, !dbg !343
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !344
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !346
  %55 = load i8*, i8** %54, align 8, !dbg !346
  %56 = bitcast i8* %55 to i32*, !dbg !347
  %57 = load i32, i32* %56, align 4, !dbg !347
  store i32 %57, i32* %4, align 4, !dbg !348
  %58 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !349
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !350
  %60 = load i8*, i8** %59, align 8, !dbg !351
  %61 = getelementptr inbounds i8, i8* %60, i64 4, !dbg !351
  store i8* %61, i8** %59, align 8, !dbg !351
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !352
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !354
  %64 = load i8*, i8** %63, align 8, !dbg !354
  %65 = load i32, i32* %4, align 4, !dbg !355
  %66 = zext i32 %65 to i64, !dbg !356
  %67 = getelementptr inbounds i8, i8* %64, i64 %66, !dbg !356
  %68 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !357
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 1, !dbg !358
  %70 = load i8*, i8** %69, align 8, !dbg !358
  %71 = icmp ule i8* %67, %70, !dbg !359
  br i1 %71, label %73, label %72, !dbg !360

; <label>:72:                                     ; preds = %46
  br label %82, !dbg !361

; <label>:73:                                     ; preds = %46
  br label %74, !dbg !362

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %5, align 4, !dbg !363
  %76 = add nsw i32 %75, 1, !dbg !363
  store i32 %76, i32* %5, align 4, !dbg !363
  br label %43, !dbg !365, !llvm.loop !366

; <label>:77:                                     ; preds = %43
  store i32 1, i32* @g_licence_issued, align 4, !dbg !368
  %78 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !369
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 0, !dbg !370
  %80 = load i8*, i8** %79, align 8, !dbg !370
  %81 = load i32, i32* %4, align 4, !dbg !371
  call void @save_licence(i8* %80, i32 %81), !dbg !372
  br label %82, !dbg !373

; <label>:82:                                     ; preds = %77, %72, %30
  ret void, !dbg !374
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @licence_generate_keys(i8*, i8*, i8*) #0 !dbg !376 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [48 x i8], align 16
  %8 = alloca [48 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !379, metadata !73), !dbg !380
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !381, metadata !73), !dbg !382
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !383, metadata !73), !dbg !384
  call void @llvm.dbg.declare(metadata [48 x i8]* %7, metadata !385, metadata !73), !dbg !389
  call void @llvm.dbg.declare(metadata [48 x i8]* %8, metadata !390, metadata !73), !dbg !391
  %9 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0, !dbg !392
  %10 = load i8*, i8** %6, align 8, !dbg !393
  %11 = load i8*, i8** %4, align 8, !dbg !394
  %12 = load i8*, i8** %5, align 8, !dbg !395
  call void @sec_hash_48(i8* %9, i8* %10, i8* %11, i8* %12, i8 zeroext 65), !dbg !396
  %13 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i32 0, i32 0, !dbg !397
  %14 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0, !dbg !398
  %15 = load i8*, i8** %5, align 8, !dbg !399
  %16 = load i8*, i8** %4, align 8, !dbg !400
  call void @sec_hash_48(i8* %13, i8* %14, i8* %15, i8* %16, i8 zeroext 65), !dbg !401
  %17 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i32 0, i32 0, !dbg !402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_sign_key, i32 0, i32 0), i8* %17, i64 16, i32 16, i1 false), !dbg !402
  %18 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 16, !dbg !403
  %19 = load i8*, i8** %4, align 8, !dbg !404
  %20 = load i8*, i8** %5, align 8, !dbg !405
  call void @sec_hash_16(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_licence_key, i32 0, i32 0), i8* %18, i8* %19, i8* %20), !dbg !406
  ret void, !dbg !407
}

declare i32 @load_licence(i8**) #2

; Function Attrs: nounwind uwtable
define internal void @licence_generate_hwid(i8*) #0 !dbg !408 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !411, metadata !73), !dbg !412
  %3 = load i8*, i8** %2, align 8, !dbg !413
  call void @buf_out_uint32(i8* %3, i32 2), !dbg !414
  %4 = load i8*, i8** %2, align 8, !dbg !415
  %5 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !416
  %6 = call i8* @strncpy(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0), i64 16) #6, !dbg !417
  ret void, !dbg !418
}

declare void @sec_sign(i8*, i32, i8*, i32, i8*, i32) #2

declare void @rdssl_rc4_set_key(%struct.rc4_key_st*, i8*, i32) #2

declare void @rdssl_rc4_crypt(%struct.rc4_key_st*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @licence_info(i8*, i8*, i8*, i32, i8*, i8*) #0 !dbg !419 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca %struct.stream*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !422, metadata !73), !dbg !423
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !424, metadata !73), !dbg !425
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !426, metadata !73), !dbg !427
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !428, metadata !73), !dbg !429
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !430, metadata !73), !dbg !431
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !432, metadata !73), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %13, metadata !434, metadata !73), !dbg !435
  store i32 128, i32* %13, align 4, !dbg !435
  call void @llvm.dbg.declare(metadata i16* %14, metadata !436, metadata !73), !dbg !437
  %16 = load i32, i32* %10, align 4, !dbg !438
  %17 = add nsw i32 128, %16, !dbg !439
  %18 = add nsw i32 %17, 20, !dbg !440
  %19 = add nsw i32 %18, 16, !dbg !441
  %20 = trunc i32 %19 to i16, !dbg !442
  store i16 %20, i16* %14, align 2, !dbg !437
  call void @llvm.dbg.declare(metadata %struct.stream** %15, metadata !443, metadata !73), !dbg !444
  %21 = load i32, i32* %13, align 4, !dbg !445
  %22 = load i16, i16* %14, align 2, !dbg !446
  %23 = zext i16 %22 to i32, !dbg !446
  %24 = add nsw i32 %23, 2, !dbg !447
  %25 = call %struct.stream* @sec_init(i32 %21, i32 %24), !dbg !448
  store %struct.stream* %25, %struct.stream** %15, align 8, !dbg !449
  %26 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !450
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !451
  %28 = load i8*, i8** %27, align 8, !dbg !452
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !452
  store i8* %29, i8** %27, align 8, !dbg !452
  store i8 18, i8* %28, align 1, !dbg !453
  %30 = load i32, i32* @g_rdp_version, align 4, !dbg !454
  %31 = icmp uge i32 %30, 5, !dbg !455
  %32 = select i1 %31, i32 3, i32 2, !dbg !456
  %33 = trunc i32 %32 to i8, !dbg !457
  %34 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !458
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !459
  %36 = load i8*, i8** %35, align 8, !dbg !460
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !460
  store i8* %37, i8** %35, align 8, !dbg !460
  store i8 %33, i8* %36, align 1, !dbg !461
  %38 = load i16, i16* %14, align 2, !dbg !462
  %39 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !464
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !465
  %41 = load i8*, i8** %40, align 8, !dbg !465
  %42 = bitcast i8* %41 to i16*, !dbg !466
  store i16 %38, i16* %42, align 2, !dbg !467
  %43 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !468
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !469
  %45 = load i8*, i8** %44, align 8, !dbg !470
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !470
  store i8* %46, i8** %44, align 8, !dbg !470
  %47 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !471
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !473
  %49 = load i8*, i8** %48, align 8, !dbg !473
  %50 = bitcast i8* %49 to i32*, !dbg !474
  store i32 1, i32* %50, align 4, !dbg !475
  %51 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !476
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !477
  %53 = load i8*, i8** %52, align 8, !dbg !478
  %54 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !478
  store i8* %54, i8** %52, align 8, !dbg !478
  %55 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !479
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !481
  %57 = load i8*, i8** %56, align 8, !dbg !481
  %58 = bitcast i8* %57 to i16*, !dbg !482
  store i16 0, i16* %58, align 2, !dbg !483
  %59 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !484
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !485
  %61 = load i8*, i8** %60, align 8, !dbg !486
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !486
  store i8* %62, i8** %60, align 8, !dbg !486
  %63 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !487
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !489
  %65 = load i8*, i8** %64, align 8, !dbg !489
  %66 = bitcast i8* %65 to i16*, !dbg !490
  store i16 513, i16* %66, align 2, !dbg !491
  %67 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !492
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !493
  %69 = load i8*, i8** %68, align 8, !dbg !494
  %70 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !494
  store i8* %70, i8** %68, align 8, !dbg !494
  %71 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !495
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !497
  %73 = load i8*, i8** %72, align 8, !dbg !497
  %74 = load i8*, i8** %7, align 8, !dbg !498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 1, i1 false), !dbg !499
  %75 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !500
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !501
  %77 = load i8*, i8** %76, align 8, !dbg !502
  %78 = getelementptr inbounds i8, i8* %77, i64 32, !dbg !502
  store i8* %78, i8** %76, align 8, !dbg !502
  %79 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !503
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !505
  %81 = load i8*, i8** %80, align 8, !dbg !505
  %82 = bitcast i8* %81 to i16*, !dbg !506
  store i16 2, i16* %82, align 2, !dbg !507
  %83 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !508
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !509
  %85 = load i8*, i8** %84, align 8, !dbg !510
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !510
  store i8* %86, i8** %84, align 8, !dbg !510
  %87 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !511
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !513
  %89 = load i8*, i8** %88, align 8, !dbg !513
  %90 = bitcast i8* %89 to i16*, !dbg !514
  store i16 72, i16* %90, align 2, !dbg !515
  %91 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !516
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 0, !dbg !517
  %93 = load i8*, i8** %92, align 8, !dbg !518
  %94 = getelementptr inbounds i8, i8* %93, i64 2, !dbg !518
  store i8* %94, i8** %92, align 8, !dbg !518
  %95 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !519
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !521
  %97 = load i8*, i8** %96, align 8, !dbg !521
  %98 = load i8*, i8** %8, align 8, !dbg !522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 64, i32 1, i1 false), !dbg !523
  %99 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !524
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 0, !dbg !525
  %101 = load i8*, i8** %100, align 8, !dbg !526
  %102 = getelementptr inbounds i8, i8* %101, i64 64, !dbg !526
  store i8* %102, i8** %100, align 8, !dbg !526
  %103 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !527
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !529
  %105 = load i8*, i8** %104, align 8, !dbg !529
  call void @llvm.memset.p0i8.i64(i8* %105, i8 0, i64 8, i32 1, i1 false), !dbg !530
  %106 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !531
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 0, !dbg !532
  %108 = load i8*, i8** %107, align 8, !dbg !533
  %109 = getelementptr inbounds i8, i8* %108, i64 8, !dbg !533
  store i8* %109, i8** %107, align 8, !dbg !533
  %110 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !534
  %111 = getelementptr inbounds %struct.stream, %struct.stream* %110, i32 0, i32 0, !dbg !536
  %112 = load i8*, i8** %111, align 8, !dbg !536
  %113 = bitcast i8* %112 to i16*, !dbg !537
  store i16 1, i16* %113, align 2, !dbg !538
  %114 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !539
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 0, !dbg !540
  %116 = load i8*, i8** %115, align 8, !dbg !541
  %117 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !541
  store i8* %117, i8** %115, align 8, !dbg !541
  %118 = load i32, i32* %10, align 4, !dbg !542
  %119 = trunc i32 %118 to i16, !dbg !542
  %120 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !544
  %121 = getelementptr inbounds %struct.stream, %struct.stream* %120, i32 0, i32 0, !dbg !545
  %122 = load i8*, i8** %121, align 8, !dbg !545
  %123 = bitcast i8* %122 to i16*, !dbg !546
  store i16 %119, i16* %123, align 2, !dbg !547
  %124 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !548
  %125 = getelementptr inbounds %struct.stream, %struct.stream* %124, i32 0, i32 0, !dbg !549
  %126 = load i8*, i8** %125, align 8, !dbg !550
  %127 = getelementptr inbounds i8, i8* %126, i64 2, !dbg !550
  store i8* %127, i8** %125, align 8, !dbg !550
  %128 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !551
  %129 = getelementptr inbounds %struct.stream, %struct.stream* %128, i32 0, i32 0, !dbg !553
  %130 = load i8*, i8** %129, align 8, !dbg !553
  %131 = load i8*, i8** %9, align 8, !dbg !554
  %132 = load i32, i32* %10, align 4, !dbg !555
  %133 = sext i32 %132 to i64, !dbg !555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 %133, i32 1, i1 false), !dbg !556
  %134 = load i32, i32* %10, align 4, !dbg !557
  %135 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !558
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !559
  %137 = load i8*, i8** %136, align 8, !dbg !560
  %138 = sext i32 %134 to i64, !dbg !560
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !560
  store i8* %139, i8** %136, align 8, !dbg !560
  %140 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !561
  %141 = getelementptr inbounds %struct.stream, %struct.stream* %140, i32 0, i32 0, !dbg !563
  %142 = load i8*, i8** %141, align 8, !dbg !563
  %143 = bitcast i8* %142 to i16*, !dbg !564
  store i16 1, i16* %143, align 2, !dbg !565
  %144 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !566
  %145 = getelementptr inbounds %struct.stream, %struct.stream* %144, i32 0, i32 0, !dbg !567
  %146 = load i8*, i8** %145, align 8, !dbg !568
  %147 = getelementptr inbounds i8, i8* %146, i64 2, !dbg !568
  store i8* %147, i8** %145, align 8, !dbg !568
  %148 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !569
  %149 = getelementptr inbounds %struct.stream, %struct.stream* %148, i32 0, i32 0, !dbg !571
  %150 = load i8*, i8** %149, align 8, !dbg !571
  %151 = bitcast i8* %150 to i16*, !dbg !572
  store i16 20, i16* %151, align 2, !dbg !573
  %152 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !574
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 0, !dbg !575
  %154 = load i8*, i8** %153, align 8, !dbg !576
  %155 = getelementptr inbounds i8, i8* %154, i64 2, !dbg !576
  store i8* %155, i8** %153, align 8, !dbg !576
  %156 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !577
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !579
  %158 = load i8*, i8** %157, align 8, !dbg !579
  %159 = load i8*, i8** %11, align 8, !dbg !580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 20, i32 1, i1 false), !dbg !581
  %160 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !582
  %161 = getelementptr inbounds %struct.stream, %struct.stream* %160, i32 0, i32 0, !dbg !583
  %162 = load i8*, i8** %161, align 8, !dbg !584
  %163 = getelementptr inbounds i8, i8* %162, i64 20, !dbg !584
  store i8* %163, i8** %161, align 8, !dbg !584
  %164 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !585
  %165 = getelementptr inbounds %struct.stream, %struct.stream* %164, i32 0, i32 0, !dbg !587
  %166 = load i8*, i8** %165, align 8, !dbg !587
  %167 = load i8*, i8** %12, align 8, !dbg !588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 16, i32 1, i1 false), !dbg !589
  %168 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !590
  %169 = getelementptr inbounds %struct.stream, %struct.stream* %168, i32 0, i32 0, !dbg !591
  %170 = load i8*, i8** %169, align 8, !dbg !592
  %171 = getelementptr inbounds i8, i8* %170, i64 16, !dbg !592
  store i8* %171, i8** %169, align 8, !dbg !592
  %172 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !593
  %173 = getelementptr inbounds %struct.stream, %struct.stream* %172, i32 0, i32 0, !dbg !594
  %174 = load i8*, i8** %173, align 8, !dbg !594
  %175 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !595
  %176 = getelementptr inbounds %struct.stream, %struct.stream* %175, i32 0, i32 1, !dbg !596
  store i8* %174, i8** %176, align 8, !dbg !597
  %177 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !598
  %178 = load i32, i32* %13, align 4, !dbg !599
  call void @sec_send(%struct.stream* %177, i32 %178), !dbg !600
  ret void, !dbg !601
}

declare void @xfree(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @licence_send_new_licence_request(i8*, i8*, i8*, i8*) #0 !dbg !602 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.stream*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !605, metadata !73), !dbg !606
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !607, metadata !73), !dbg !608
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !609, metadata !73), !dbg !610
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !611, metadata !73), !dbg !612
  call void @llvm.dbg.declare(metadata i32* %9, metadata !613, metadata !73), !dbg !614
  store i32 128, i32* %9, align 4, !dbg !614
  call void @llvm.dbg.declare(metadata i16* %10, metadata !615, metadata !73), !dbg !616
  %14 = load i8*, i8** %7, align 8, !dbg !617
  %15 = call i64 @strlen(i8* %14) #7, !dbg !618
  %16 = add i64 %15, 1, !dbg !619
  %17 = trunc i64 %16 to i16, !dbg !618
  store i16 %17, i16* %10, align 2, !dbg !616
  call void @llvm.dbg.declare(metadata i16* %11, metadata !620, metadata !73), !dbg !621
  %18 = load i8*, i8** %8, align 8, !dbg !622
  %19 = call i64 @strlen(i8* %18) #7, !dbg !623
  %20 = add i64 %19, 1, !dbg !624
  %21 = trunc i64 %20 to i16, !dbg !623
  store i16 %21, i16* %11, align 2, !dbg !621
  call void @llvm.dbg.declare(metadata i16* %12, metadata !625, metadata !73), !dbg !626
  %22 = load i16, i16* %10, align 2, !dbg !627
  %23 = zext i16 %22 to i32, !dbg !627
  %24 = add nsw i32 128, %23, !dbg !628
  %25 = load i16, i16* %11, align 2, !dbg !629
  %26 = zext i16 %25 to i32, !dbg !629
  %27 = add nsw i32 %24, %26, !dbg !630
  %28 = trunc i32 %27 to i16, !dbg !631
  store i16 %28, i16* %12, align 2, !dbg !626
  call void @llvm.dbg.declare(metadata %struct.stream** %13, metadata !632, metadata !73), !dbg !633
  %29 = load i32, i32* %9, align 4, !dbg !634
  %30 = load i16, i16* %12, align 2, !dbg !635
  %31 = zext i16 %30 to i32, !dbg !635
  %32 = add nsw i32 %31, 2, !dbg !636
  %33 = call %struct.stream* @sec_init(i32 %29, i32 %32), !dbg !637
  store %struct.stream* %33, %struct.stream** %13, align 8, !dbg !638
  %34 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !639
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !640
  %36 = load i8*, i8** %35, align 8, !dbg !641
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !641
  store i8* %37, i8** %35, align 8, !dbg !641
  store i8 19, i8* %36, align 1, !dbg !642
  %38 = load i32, i32* @g_rdp_version, align 4, !dbg !643
  %39 = icmp uge i32 %38, 5, !dbg !644
  %40 = select i1 %39, i32 3, i32 2, !dbg !645
  %41 = trunc i32 %40 to i8, !dbg !646
  %42 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !647
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !648
  %44 = load i8*, i8** %43, align 8, !dbg !649
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !649
  store i8* %45, i8** %43, align 8, !dbg !649
  store i8 %41, i8* %44, align 1, !dbg !650
  %46 = load i16, i16* %12, align 2, !dbg !651
  %47 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !653
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !654
  %49 = load i8*, i8** %48, align 8, !dbg !654
  %50 = bitcast i8* %49 to i16*, !dbg !655
  store i16 %46, i16* %50, align 2, !dbg !656
  %51 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !657
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !658
  %53 = load i8*, i8** %52, align 8, !dbg !659
  %54 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !659
  store i8* %54, i8** %52, align 8, !dbg !659
  %55 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !660
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !662
  %57 = load i8*, i8** %56, align 8, !dbg !662
  %58 = bitcast i8* %57 to i32*, !dbg !663
  store i32 1, i32* %58, align 4, !dbg !664
  %59 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !665
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !666
  %61 = load i8*, i8** %60, align 8, !dbg !667
  %62 = getelementptr inbounds i8, i8* %61, i64 4, !dbg !667
  store i8* %62, i8** %60, align 8, !dbg !667
  %63 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !668
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !670
  %65 = load i8*, i8** %64, align 8, !dbg !670
  %66 = bitcast i8* %65 to i16*, !dbg !671
  store i16 0, i16* %66, align 2, !dbg !672
  %67 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !673
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !674
  %69 = load i8*, i8** %68, align 8, !dbg !675
  %70 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !675
  store i8* %70, i8** %68, align 8, !dbg !675
  %71 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !676
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !678
  %73 = load i8*, i8** %72, align 8, !dbg !678
  %74 = bitcast i8* %73 to i16*, !dbg !679
  store i16 -255, i16* %74, align 2, !dbg !680
  %75 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !681
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !682
  %77 = load i8*, i8** %76, align 8, !dbg !683
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !683
  store i8* %78, i8** %76, align 8, !dbg !683
  %79 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !684
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !686
  %81 = load i8*, i8** %80, align 8, !dbg !686
  %82 = load i8*, i8** %5, align 8, !dbg !687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 1, i1 false), !dbg !688
  %83 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !689
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !690
  %85 = load i8*, i8** %84, align 8, !dbg !691
  %86 = getelementptr inbounds i8, i8* %85, i64 32, !dbg !691
  store i8* %86, i8** %84, align 8, !dbg !691
  %87 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !692
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !694
  %89 = load i8*, i8** %88, align 8, !dbg !694
  %90 = bitcast i8* %89 to i16*, !dbg !695
  store i16 2, i16* %90, align 2, !dbg !696
  %91 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !697
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 0, !dbg !698
  %93 = load i8*, i8** %92, align 8, !dbg !699
  %94 = getelementptr inbounds i8, i8* %93, i64 2, !dbg !699
  store i8* %94, i8** %92, align 8, !dbg !699
  %95 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !700
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !702
  %97 = load i8*, i8** %96, align 8, !dbg !702
  %98 = bitcast i8* %97 to i16*, !dbg !703
  store i16 72, i16* %98, align 2, !dbg !704
  %99 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !705
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 0, !dbg !706
  %101 = load i8*, i8** %100, align 8, !dbg !707
  %102 = getelementptr inbounds i8, i8* %101, i64 2, !dbg !707
  store i8* %102, i8** %100, align 8, !dbg !707
  %103 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !708
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !710
  %105 = load i8*, i8** %104, align 8, !dbg !710
  %106 = load i8*, i8** %6, align 8, !dbg !711
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 64, i32 1, i1 false), !dbg !712
  %107 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !713
  %108 = getelementptr inbounds %struct.stream, %struct.stream* %107, i32 0, i32 0, !dbg !714
  %109 = load i8*, i8** %108, align 8, !dbg !715
  %110 = getelementptr inbounds i8, i8* %109, i64 64, !dbg !715
  store i8* %110, i8** %108, align 8, !dbg !715
  %111 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !716
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !718
  %113 = load i8*, i8** %112, align 8, !dbg !718
  call void @llvm.memset.p0i8.i64(i8* %113, i8 0, i64 8, i32 1, i1 false), !dbg !719
  %114 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !720
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 0, !dbg !721
  %116 = load i8*, i8** %115, align 8, !dbg !722
  %117 = getelementptr inbounds i8, i8* %116, i64 8, !dbg !722
  store i8* %117, i8** %115, align 8, !dbg !722
  %118 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !723
  %119 = getelementptr inbounds %struct.stream, %struct.stream* %118, i32 0, i32 0, !dbg !725
  %120 = load i8*, i8** %119, align 8, !dbg !725
  %121 = bitcast i8* %120 to i16*, !dbg !726
  store i16 15, i16* %121, align 2, !dbg !727
  %122 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !728
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !729
  %124 = load i8*, i8** %123, align 8, !dbg !730
  %125 = getelementptr inbounds i8, i8* %124, i64 2, !dbg !730
  store i8* %125, i8** %123, align 8, !dbg !730
  %126 = load i16, i16* %10, align 2, !dbg !731
  %127 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !733
  %128 = getelementptr inbounds %struct.stream, %struct.stream* %127, i32 0, i32 0, !dbg !734
  %129 = load i8*, i8** %128, align 8, !dbg !734
  %130 = bitcast i8* %129 to i16*, !dbg !735
  store i16 %126, i16* %130, align 2, !dbg !736
  %131 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !737
  %132 = getelementptr inbounds %struct.stream, %struct.stream* %131, i32 0, i32 0, !dbg !738
  %133 = load i8*, i8** %132, align 8, !dbg !739
  %134 = getelementptr inbounds i8, i8* %133, i64 2, !dbg !739
  store i8* %134, i8** %132, align 8, !dbg !739
  %135 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !740
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !742
  %137 = load i8*, i8** %136, align 8, !dbg !742
  %138 = load i8*, i8** %7, align 8, !dbg !743
  %139 = load i16, i16* %10, align 2, !dbg !744
  %140 = zext i16 %139 to i64, !dbg !744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 %140, i32 1, i1 false), !dbg !745
  %141 = load i16, i16* %10, align 2, !dbg !746
  %142 = zext i16 %141 to i32, !dbg !746
  %143 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !747
  %144 = getelementptr inbounds %struct.stream, %struct.stream* %143, i32 0, i32 0, !dbg !748
  %145 = load i8*, i8** %144, align 8, !dbg !749
  %146 = sext i32 %142 to i64, !dbg !749
  %147 = getelementptr inbounds i8, i8* %145, i64 %146, !dbg !749
  store i8* %147, i8** %144, align 8, !dbg !749
  %148 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !750
  %149 = getelementptr inbounds %struct.stream, %struct.stream* %148, i32 0, i32 0, !dbg !752
  %150 = load i8*, i8** %149, align 8, !dbg !752
  %151 = bitcast i8* %150 to i16*, !dbg !753
  store i16 16, i16* %151, align 2, !dbg !754
  %152 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !755
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 0, !dbg !756
  %154 = load i8*, i8** %153, align 8, !dbg !757
  %155 = getelementptr inbounds i8, i8* %154, i64 2, !dbg !757
  store i8* %155, i8** %153, align 8, !dbg !757
  %156 = load i16, i16* %11, align 2, !dbg !758
  %157 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !760
  %158 = getelementptr inbounds %struct.stream, %struct.stream* %157, i32 0, i32 0, !dbg !761
  %159 = load i8*, i8** %158, align 8, !dbg !761
  %160 = bitcast i8* %159 to i16*, !dbg !762
  store i16 %156, i16* %160, align 2, !dbg !763
  %161 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !764
  %162 = getelementptr inbounds %struct.stream, %struct.stream* %161, i32 0, i32 0, !dbg !765
  %163 = load i8*, i8** %162, align 8, !dbg !766
  %164 = getelementptr inbounds i8, i8* %163, i64 2, !dbg !766
  store i8* %164, i8** %162, align 8, !dbg !766
  %165 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !767
  %166 = getelementptr inbounds %struct.stream, %struct.stream* %165, i32 0, i32 0, !dbg !769
  %167 = load i8*, i8** %166, align 8, !dbg !769
  %168 = load i8*, i8** %8, align 8, !dbg !770
  %169 = load i16, i16* %11, align 2, !dbg !771
  %170 = zext i16 %169 to i64, !dbg !771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %168, i64 %170, i32 1, i1 false), !dbg !772
  %171 = load i16, i16* %11, align 2, !dbg !773
  %172 = zext i16 %171 to i32, !dbg !773
  %173 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !774
  %174 = getelementptr inbounds %struct.stream, %struct.stream* %173, i32 0, i32 0, !dbg !775
  %175 = load i8*, i8** %174, align 8, !dbg !776
  %176 = sext i32 %172 to i64, !dbg !776
  %177 = getelementptr inbounds i8, i8* %175, i64 %176, !dbg !776
  store i8* %177, i8** %174, align 8, !dbg !776
  %178 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !777
  %179 = getelementptr inbounds %struct.stream, %struct.stream* %178, i32 0, i32 0, !dbg !778
  %180 = load i8*, i8** %179, align 8, !dbg !778
  %181 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !779
  %182 = getelementptr inbounds %struct.stream, %struct.stream* %181, i32 0, i32 1, !dbg !780
  store i8* %180, i8** %182, align 8, !dbg !781
  %183 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !782
  %184 = load i32, i32* %9, align 4, !dbg !783
  call void @sec_send(%struct.stream* %183, i32 %184), !dbg !784
  ret void, !dbg !785
}

declare void @sec_hash_48(i8*, i8*, i8*, i8*, i8 zeroext) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare void @sec_hash_16(i8*, i8*, i8*, i8*) #2

declare void @buf_out_uint32(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare %struct.stream* @sec_init(i32, i32) #2

declare void @sec_send(%struct.stream*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @licence_parse_platform_challenge(%struct.stream*, i8**, i8**) #0 !dbg !786 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !790, metadata !73), !dbg !791
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !792, metadata !73), !dbg !793
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !794, metadata !73), !dbg !795
  call void @llvm.dbg.declare(metadata i16* %8, metadata !796, metadata !73), !dbg !797
  %9 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !798
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !799
  %11 = load i8*, i8** %10, align 8, !dbg !800
  %12 = getelementptr inbounds i8, i8* %11, i64 6, !dbg !800
  store i8* %12, i8** %10, align 8, !dbg !800
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !801
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !803
  %15 = load i8*, i8** %14, align 8, !dbg !803
  %16 = bitcast i8* %15 to i16*, !dbg !804
  %17 = load i16, i16* %16, align 2, !dbg !804
  store i16 %17, i16* %8, align 2, !dbg !805
  %18 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !806
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0, !dbg !807
  %20 = load i8*, i8** %19, align 8, !dbg !808
  %21 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !808
  store i8* %21, i8** %19, align 8, !dbg !808
  %22 = load i16, i16* %8, align 2, !dbg !809
  %23 = zext i16 %22 to i32, !dbg !809
  %24 = icmp ne i32 %23, 10, !dbg !811
  br i1 %24, label %25, label %26, !dbg !812

; <label>:25:                                     ; preds = %3
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0)), !dbg !813
  store i32 0, i32* %4, align 4, !dbg !815
  br label %54, !dbg !815

; <label>:26:                                     ; preds = %3
  %27 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !816
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !818
  %29 = load i8*, i8** %28, align 8, !dbg !818
  %30 = load i8**, i8*** %6, align 8, !dbg !819
  store i8* %29, i8** %30, align 8, !dbg !820
  %31 = load i16, i16* %8, align 2, !dbg !821
  %32 = zext i16 %31 to i32, !dbg !821
  %33 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !822
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !823
  %35 = load i8*, i8** %34, align 8, !dbg !824
  %36 = sext i32 %32 to i64, !dbg !824
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !824
  store i8* %37, i8** %34, align 8, !dbg !824
  %38 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !825
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !827
  %40 = load i8*, i8** %39, align 8, !dbg !827
  %41 = load i8**, i8*** %7, align 8, !dbg !828
  store i8* %40, i8** %41, align 8, !dbg !829
  %42 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !830
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !831
  %44 = load i8*, i8** %43, align 8, !dbg !832
  %45 = getelementptr inbounds i8, i8* %44, i64 16, !dbg !832
  store i8* %45, i8** %43, align 8, !dbg !832
  %46 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !833
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !834
  %48 = load i8*, i8** %47, align 8, !dbg !834
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !835
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 1, !dbg !836
  %51 = load i8*, i8** %50, align 8, !dbg !836
  %52 = icmp eq i8* %48, %51, !dbg !837
  %53 = zext i1 %52 to i32, !dbg !837
  store i32 %53, i32* %4, align 4, !dbg !838
  br label %54, !dbg !838

; <label>:54:                                     ; preds = %26, %25
  %55 = load i32, i32* %4, align 4, !dbg !839
  ret i32 %55, !dbg !839
}

; Function Attrs: nounwind uwtable
define internal void @licence_send_platform_challenge_response(i8*, i8*, i8*) #0 !dbg !840 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.stream*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !841, metadata !73), !dbg !842
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !843, metadata !73), !dbg !844
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !845, metadata !73), !dbg !846
  call void @llvm.dbg.declare(metadata i32* %7, metadata !847, metadata !73), !dbg !848
  store i32 128, i32* %7, align 4, !dbg !848
  call void @llvm.dbg.declare(metadata i16* %8, metadata !849, metadata !73), !dbg !850
  store i16 58, i16* %8, align 2, !dbg !850
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !851, metadata !73), !dbg !852
  %10 = load i32, i32* %7, align 4, !dbg !853
  %11 = load i16, i16* %8, align 2, !dbg !854
  %12 = zext i16 %11 to i32, !dbg !854
  %13 = add nsw i32 %12, 2, !dbg !855
  %14 = call %struct.stream* @sec_init(i32 %10, i32 %13), !dbg !856
  store %struct.stream* %14, %struct.stream** %9, align 8, !dbg !857
  %15 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !858
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !859
  %17 = load i8*, i8** %16, align 8, !dbg !860
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !860
  store i8* %18, i8** %16, align 8, !dbg !860
  store i8 21, i8* %17, align 1, !dbg !861
  %19 = load i32, i32* @g_rdp_version, align 4, !dbg !862
  %20 = icmp uge i32 %19, 5, !dbg !863
  %21 = select i1 %20, i32 3, i32 2, !dbg !864
  %22 = trunc i32 %21 to i8, !dbg !865
  %23 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !866
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !867
  %25 = load i8*, i8** %24, align 8, !dbg !868
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !868
  store i8* %26, i8** %24, align 8, !dbg !868
  store i8 %22, i8* %25, align 1, !dbg !869
  %27 = load i16, i16* %8, align 2, !dbg !870
  %28 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !872
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !873
  %30 = load i8*, i8** %29, align 8, !dbg !873
  %31 = bitcast i8* %30 to i16*, !dbg !874
  store i16 %27, i16* %31, align 2, !dbg !875
  %32 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !876
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !877
  %34 = load i8*, i8** %33, align 8, !dbg !878
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !878
  store i8* %35, i8** %33, align 8, !dbg !878
  %36 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !879
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !881
  %38 = load i8*, i8** %37, align 8, !dbg !881
  %39 = bitcast i8* %38 to i16*, !dbg !882
  store i16 1, i16* %39, align 2, !dbg !883
  %40 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !884
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !885
  %42 = load i8*, i8** %41, align 8, !dbg !886
  %43 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !886
  store i8* %43, i8** %41, align 8, !dbg !886
  %44 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !887
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !889
  %46 = load i8*, i8** %45, align 8, !dbg !889
  %47 = bitcast i8* %46 to i16*, !dbg !890
  store i16 10, i16* %47, align 2, !dbg !891
  %48 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !892
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !893
  %50 = load i8*, i8** %49, align 8, !dbg !894
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !894
  store i8* %51, i8** %49, align 8, !dbg !894
  %52 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !895
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !897
  %54 = load i8*, i8** %53, align 8, !dbg !897
  %55 = load i8*, i8** %4, align 8, !dbg !898
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 10, i32 1, i1 false), !dbg !899
  %56 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !900
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !901
  %58 = load i8*, i8** %57, align 8, !dbg !902
  %59 = getelementptr inbounds i8, i8* %58, i64 10, !dbg !902
  store i8* %59, i8** %57, align 8, !dbg !902
  %60 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !903
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !905
  %62 = load i8*, i8** %61, align 8, !dbg !905
  %63 = bitcast i8* %62 to i16*, !dbg !906
  store i16 1, i16* %63, align 2, !dbg !907
  %64 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !908
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !909
  %66 = load i8*, i8** %65, align 8, !dbg !910
  %67 = getelementptr inbounds i8, i8* %66, i64 2, !dbg !910
  store i8* %67, i8** %65, align 8, !dbg !910
  %68 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !911
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !913
  %70 = load i8*, i8** %69, align 8, !dbg !913
  %71 = bitcast i8* %70 to i16*, !dbg !914
  store i16 20, i16* %71, align 2, !dbg !915
  %72 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !916
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !917
  %74 = load i8*, i8** %73, align 8, !dbg !918
  %75 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !918
  store i8* %75, i8** %73, align 8, !dbg !918
  %76 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !919
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !921
  %78 = load i8*, i8** %77, align 8, !dbg !921
  %79 = load i8*, i8** %5, align 8, !dbg !922
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 20, i32 1, i1 false), !dbg !923
  %80 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !924
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !925
  %82 = load i8*, i8** %81, align 8, !dbg !926
  %83 = getelementptr inbounds i8, i8* %82, i64 20, !dbg !926
  store i8* %83, i8** %81, align 8, !dbg !926
  %84 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !927
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !929
  %86 = load i8*, i8** %85, align 8, !dbg !929
  %87 = load i8*, i8** %6, align 8, !dbg !930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 16, i32 1, i1 false), !dbg !931
  %88 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !932
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !933
  %90 = load i8*, i8** %89, align 8, !dbg !934
  %91 = getelementptr inbounds i8, i8* %90, i64 16, !dbg !934
  store i8* %91, i8** %89, align 8, !dbg !934
  %92 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !935
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 0, !dbg !936
  %94 = load i8*, i8** %93, align 8, !dbg !936
  %95 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !937
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 1, !dbg !938
  store i8* %94, i8** %96, align 8, !dbg !939
  %97 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !940
  %98 = load i32, i32* %7, align 4, !dbg !941
  call void @sec_send(%struct.stream* %97, i32 %98), !dbg !942
  ret void, !dbg !943
}

declare void @save_licence(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!50, !51}
!llvm.ident = !{!52}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28, globals: !37)
!1 = !DIFile(filename: "[inter]licence.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !23, line: 52, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "RDP_V4", value: 4)
!26 = !DIEnumerator(name: "RDP_V5", value: 5)
!27 = !DIEnumerator(name: "RDP_V6", value: 6)
!28 = !{!29, !32, !34}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !23, line: 43, baseType: !31)
!31 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !23, line: 41, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!37 = !{!38, !42, !43, !49}
!38 = distinct !DIGlobalVariable(name: "g_licence_issued", scope: !0, file: !39, line: 33, type: !40, isLocal: false, isDefinition: true, variable: i32* @g_licence_issued)
!39 = !DIFile(filename: "licence.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !23, line: 28, baseType: !41)
!41 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!42 = distinct !DIGlobalVariable(name: "g_licence_error_result", scope: !0, file: !39, line: 34, type: !40, isLocal: false, isDefinition: true, variable: i32* @g_licence_error_result)
!43 = distinct !DIGlobalVariable(name: "g_licence_sign_key", scope: !0, file: !39, line: 31, type: !44, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_licence_sign_key)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !47)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !23, line: 39, baseType: !46)
!46 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = distinct !DIGlobalVariable(name: "g_licence_key", scope: !0, file: !39, line: 30, type: !44, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_licence_key)
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!53 = distinct !DISubprogram(name: "licence_process_error_alert", scope: !39, file: !39, line: 309, type: !54, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !57, line: 40, baseType: !58)
!57 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !57, line: 25, size: 576, align: 64, elements: !60)
!60 = !{!61, !63, !64, !65, !66, !67, !68, !69, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !59, file: !57, line: 27, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !59, file: !57, line: 28, baseType: !62, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !59, file: !57, line: 29, baseType: !62, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !59, file: !57, line: 30, baseType: !31, size: 32, align: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !59, file: !57, line: 33, baseType: !62, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !59, file: !57, line: 34, baseType: !62, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !59, file: !57, line: 35, baseType: !62, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !59, file: !57, line: 36, baseType: !62, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !59, file: !57, line: 37, baseType: !62, size: 64, align: 64, offset: 512)
!71 = !{}
!72 = !DILocalVariable(name: "s", arg: 1, scope: !53, file: !39, line: 309, type: !56)
!73 = !DIExpression()
!74 = !DILocation(line: 309, column: 36, scope: !53)
!75 = !DILocalVariable(name: "error_code", scope: !53, file: !39, line: 311, type: !30)
!76 = !DILocation(line: 311, column: 9, scope: !53)
!77 = !DILocalVariable(name: "state_transition", scope: !53, file: !39, line: 312, type: !30)
!78 = !DILocation(line: 312, column: 9, scope: !53)
!79 = !DILocation(line: 314, column: 30, scope: !80)
!80 = distinct !DILexicalBlock(scope: !53, file: !39, line: 314, column: 2)
!81 = !DILocation(line: 314, column: 34, scope: !80)
!82 = !DILocation(line: 314, column: 17, scope: !80)
!83 = !DILocation(line: 314, column: 15, scope: !80)
!84 = !DILocation(line: 314, column: 39, scope: !80)
!85 = !DILocation(line: 314, column: 43, scope: !80)
!86 = !DILocation(line: 314, column: 45, scope: !80)
!87 = !DILocation(line: 315, column: 36, scope: !88)
!88 = distinct !DILexicalBlock(scope: !53, file: !39, line: 315, column: 2)
!89 = !DILocation(line: 315, column: 40, scope: !88)
!90 = !DILocation(line: 315, column: 23, scope: !88)
!91 = !DILocation(line: 315, column: 21, scope: !88)
!92 = !DILocation(line: 315, column: 45, scope: !88)
!93 = !DILocation(line: 315, column: 49, scope: !88)
!94 = !DILocation(line: 315, column: 51, scope: !88)
!95 = !DILocation(line: 316, column: 3, scope: !53)
!96 = !DILocation(line: 316, column: 7, scope: !53)
!97 = !DILocation(line: 316, column: 9, scope: !53)
!98 = !DILocation(line: 324, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !53, file: !39, line: 324, column: 6)
!100 = !DILocation(line: 324, column: 17, scope: !99)
!101 = !DILocation(line: 324, column: 6, scope: !53)
!102 = !DILocation(line: 326, column: 20, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !39, line: 325, column: 2)
!104 = !DILocation(line: 327, column: 3, scope: !103)
!105 = !DILocation(line: 331, column: 10, scope: !53)
!106 = !DILocation(line: 331, column: 2, scope: !53)
!107 = !DILocation(line: 334, column: 4, scope: !108)
!108 = distinct !DILexicalBlock(scope: !53, file: !39, line: 332, column: 2)
!109 = !DILocation(line: 335, column: 4, scope: !108)
!110 = !DILocation(line: 338, column: 4, scope: !108)
!111 = !DILocation(line: 339, column: 4, scope: !108)
!112 = !DILocation(line: 339, column: 4, scope: !113)
!113 = !DILexicalBlockFile(scope: !108, file: !39, discriminator: 1)
!114 = !DILocation(line: 347, column: 11, scope: !108)
!115 = !DILocation(line: 347, column: 23, scope: !108)
!116 = !DILocation(line: 345, column: 4, scope: !108)
!117 = !DILocation(line: 348, column: 4, scope: !108)
!118 = !DILocation(line: 351, column: 25, scope: !53)
!119 = !DILocation(line: 352, column: 1, scope: !53)
!120 = !DILocation(line: 352, column: 1, scope: !121)
!121 = !DILexicalBlockFile(scope: !53, file: !39, discriminator: 1)
!122 = distinct !DISubprogram(name: "licence_process", scope: !39, file: !39, line: 357, type: !54, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!123 = !DILocalVariable(name: "s", arg: 1, scope: !122, file: !39, line: 357, type: !56)
!124 = !DILocation(line: 357, column: 24, scope: !122)
!125 = !DILocalVariable(name: "tag", scope: !122, file: !39, line: 359, type: !45)
!126 = !DILocation(line: 359, column: 8, scope: !122)
!127 = !DILocation(line: 361, column: 11, scope: !122)
!128 = !DILocation(line: 361, column: 15, scope: !122)
!129 = !DILocation(line: 361, column: 16, scope: !122)
!130 = !DILocation(line: 361, column: 8, scope: !122)
!131 = !DILocation(line: 361, column: 6, scope: !122)
!132 = !DILocation(line: 362, column: 3, scope: !122)
!133 = !DILocation(line: 362, column: 7, scope: !122)
!134 = !DILocation(line: 362, column: 9, scope: !122)
!135 = !DILocation(line: 365, column: 9, scope: !122)
!136 = !DILocation(line: 364, column: 2, scope: !122)
!137 = !DILocation(line: 367, column: 10, scope: !122)
!138 = !DILocation(line: 367, column: 2, scope: !122)
!139 = !DILocation(line: 370, column: 28, scope: !140)
!140 = distinct !DILexicalBlock(scope: !122, file: !39, line: 368, column: 2)
!141 = !DILocation(line: 370, column: 4, scope: !140)
!142 = !DILocation(line: 371, column: 4, scope: !140)
!143 = !DILocation(line: 374, column: 39, scope: !140)
!144 = !DILocation(line: 374, column: 4, scope: !140)
!145 = !DILocation(line: 375, column: 4, scope: !140)
!146 = !DILocation(line: 380, column: 32, scope: !140)
!147 = !DILocation(line: 380, column: 4, scope: !140)
!148 = !DILocation(line: 381, column: 4, scope: !140)
!149 = !DILocation(line: 384, column: 32, scope: !140)
!150 = !DILocation(line: 384, column: 4, scope: !140)
!151 = !DILocation(line: 385, column: 4, scope: !140)
!152 = !DILocation(line: 389, column: 65, scope: !140)
!153 = !DILocation(line: 388, column: 4, scope: !140)
!154 = !DILocation(line: 390, column: 2, scope: !140)
!155 = !DILocation(line: 391, column: 1, scope: !122)
!156 = distinct !DISubprogram(name: "licence_process_request", scope: !39, file: !39, line: 145, type: !54, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!157 = !DILocalVariable(name: "s", arg: 1, scope: !156, file: !39, line: 145, type: !56)
!158 = !DILocation(line: 145, column: 32, scope: !156)
!159 = !DILocalVariable(name: "null_data", scope: !156, file: !39, line: 147, type: !160)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, align: 8, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 64)
!163 = !DILocation(line: 147, column: 8, scope: !156)
!164 = !DILocalVariable(name: "server_random", scope: !156, file: !39, line: 148, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!166 = !DILocation(line: 148, column: 9, scope: !156)
!167 = !DILocalVariable(name: "signature", scope: !156, file: !39, line: 149, type: !44)
!168 = !DILocation(line: 149, column: 8, scope: !156)
!169 = !DILocalVariable(name: "hwid", scope: !156, file: !39, line: 150, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 20)
!173 = !DILocation(line: 150, column: 8, scope: !156)
!174 = !DILocalVariable(name: "licence_data", scope: !156, file: !39, line: 151, type: !165)
!175 = !DILocation(line: 151, column: 9, scope: !156)
!176 = !DILocalVariable(name: "licence_size", scope: !156, file: !39, line: 152, type: !41)
!177 = !DILocation(line: 152, column: 6, scope: !156)
!178 = !DILocalVariable(name: "crypt_key", scope: !156, file: !39, line: 153, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "RC4_KEY", file: !180, line: 76, baseType: !181)
!180 = !DIFile(filename: "/usr/include/openssl/rc4.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc4_key_st", file: !180, line: 73, size: 8256, align: 32, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !181, file: !180, line: 74, baseType: !31, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !181, file: !180, line: 74, baseType: !31, size: 32, align: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !181, file: !180, line: 75, baseType: !186, size: 8192, align: 32, offset: 64)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8192, align: 32, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 256)
!189 = !DILocation(line: 153, column: 10, scope: !156)
!190 = !DILocation(line: 156, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !156, file: !39, line: 156, column: 2)
!192 = !DILocation(line: 156, column: 25, scope: !191)
!193 = !DILocation(line: 156, column: 18, scope: !191)
!194 = !DILocation(line: 156, column: 29, scope: !191)
!195 = !DILocation(line: 156, column: 33, scope: !191)
!196 = !DILocation(line: 156, column: 35, scope: !191)
!197 = !DILocation(line: 160, column: 2, scope: !156)
!198 = !DILocation(line: 161, column: 24, scope: !156)
!199 = !DILocation(line: 161, column: 35, scope: !156)
!200 = !DILocation(line: 161, column: 50, scope: !156)
!201 = !DILocation(line: 161, column: 2, scope: !156)
!202 = !DILocation(line: 163, column: 17, scope: !156)
!203 = !DILocation(line: 163, column: 15, scope: !156)
!204 = !DILocation(line: 164, column: 6, scope: !205)
!205 = distinct !DILexicalBlock(scope: !156, file: !39, line: 164, column: 6)
!206 = !DILocation(line: 164, column: 19, scope: !205)
!207 = !DILocation(line: 164, column: 6, scope: !156)
!208 = !DILocation(line: 167, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !39, line: 165, column: 2)
!210 = !DILocation(line: 167, column: 3, scope: !209)
!211 = !DILocation(line: 168, column: 12, scope: !209)
!212 = !DILocation(line: 168, column: 51, scope: !209)
!213 = !DILocation(line: 168, column: 3, scope: !209)
!214 = !DILocation(line: 171, column: 3, scope: !209)
!215 = !DILocation(line: 172, column: 31, scope: !209)
!216 = !DILocation(line: 172, column: 37, scope: !209)
!217 = !DILocation(line: 172, column: 3, scope: !209)
!218 = !DILocation(line: 174, column: 3, scope: !209)
!219 = !DILocation(line: 178, column: 16, scope: !209)
!220 = !DILocation(line: 178, column: 27, scope: !209)
!221 = !DILocation(line: 178, column: 38, scope: !209)
!222 = !DILocation(line: 178, column: 52, scope: !209)
!223 = !DILocation(line: 178, column: 66, scope: !209)
!224 = !DILocation(line: 178, column: 72, scope: !209)
!225 = !DILocation(line: 178, column: 3, scope: !209)
!226 = !DILocation(line: 180, column: 9, scope: !209)
!227 = !DILocation(line: 180, column: 3, scope: !209)
!228 = !DILocation(line: 181, column: 3, scope: !209)
!229 = !DILocation(line: 184, column: 2, scope: !156)
!230 = !DILocation(line: 188, column: 35, scope: !156)
!231 = !DILocation(line: 188, column: 46, scope: !156)
!232 = !DILocation(line: 188, column: 57, scope: !156)
!233 = !DILocation(line: 188, column: 2, scope: !156)
!234 = !DILocation(line: 189, column: 1, scope: !156)
!235 = !DILocation(line: 189, column: 1, scope: !236)
!236 = !DILexicalBlockFile(scope: !156, file: !39, discriminator: 1)
!237 = distinct !DISubprogram(name: "licence_process_platform_challenge", scope: !39, file: !39, line: 243, type: !54, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!238 = !DILocalVariable(name: "s", arg: 1, scope: !237, file: !39, line: 243, type: !56)
!239 = !DILocation(line: 243, column: 43, scope: !237)
!240 = !DILocalVariable(name: "in_token", scope: !237, file: !39, line: 245, type: !165)
!241 = !DILocation(line: 245, column: 9, scope: !237)
!242 = !DILocalVariable(name: "in_sig", scope: !237, file: !39, line: 245, type: !165)
!243 = !DILocation(line: 245, column: 26, scope: !237)
!244 = !DILocalVariable(name: "out_token", scope: !237, file: !39, line: 246, type: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 10)
!248 = !DILocation(line: 246, column: 8, scope: !237)
!249 = !DILocalVariable(name: "decrypt_token", scope: !237, file: !39, line: 246, type: !245)
!250 = !DILocation(line: 246, column: 23, scope: !237)
!251 = !DILocalVariable(name: "hwid", scope: !237, file: !39, line: 247, type: !170)
!252 = !DILocation(line: 247, column: 8, scope: !237)
!253 = !DILocalVariable(name: "crypt_hwid", scope: !237, file: !39, line: 247, type: !170)
!254 = !DILocation(line: 247, column: 18, scope: !237)
!255 = !DILocalVariable(name: "sealed_buffer", scope: !237, file: !39, line: 248, type: !256)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 240, align: 8, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 30)
!259 = !DILocation(line: 248, column: 8, scope: !237)
!260 = !DILocalVariable(name: "out_sig", scope: !237, file: !39, line: 249, type: !44)
!261 = !DILocation(line: 249, column: 8, scope: !237)
!262 = !DILocalVariable(name: "crypt_key", scope: !237, file: !39, line: 250, type: !179)
!263 = !DILocation(line: 250, column: 10, scope: !237)
!264 = !DILocation(line: 253, column: 35, scope: !237)
!265 = !DILocation(line: 253, column: 2, scope: !237)
!266 = !DILocation(line: 254, column: 2, scope: !237)
!267 = !DILocation(line: 254, column: 20, scope: !237)
!268 = !DILocation(line: 257, column: 2, scope: !237)
!269 = !DILocation(line: 258, column: 30, scope: !237)
!270 = !DILocation(line: 258, column: 40, scope: !237)
!271 = !DILocation(line: 258, column: 2, scope: !237)
!272 = !DILocation(line: 261, column: 24, scope: !237)
!273 = !DILocation(line: 261, column: 2, scope: !237)
!274 = !DILocation(line: 262, column: 2, scope: !237)
!275 = !DILocation(line: 263, column: 9, scope: !237)
!276 = !DILocation(line: 263, column: 23, scope: !237)
!277 = !DILocation(line: 263, column: 2, scope: !237)
!278 = !DILocation(line: 264, column: 11, scope: !237)
!279 = !DILocation(line: 264, column: 48, scope: !237)
!280 = !DILocation(line: 264, column: 2, scope: !237)
!281 = !DILocation(line: 267, column: 2, scope: !237)
!282 = !DILocation(line: 268, column: 30, scope: !237)
!283 = !DILocation(line: 268, column: 36, scope: !237)
!284 = !DILocation(line: 268, column: 2, scope: !237)
!285 = !DILocation(line: 270, column: 43, scope: !237)
!286 = !DILocation(line: 270, column: 54, scope: !237)
!287 = !DILocation(line: 270, column: 66, scope: !237)
!288 = !DILocation(line: 270, column: 2, scope: !237)
!289 = !DILocation(line: 271, column: 1, scope: !237)
!290 = distinct !DISubprogram(name: "licence_process_new_license", scope: !39, file: !39, line: 275, type: !54, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!291 = !DILocalVariable(name: "s", arg: 1, scope: !290, file: !39, line: 275, type: !56)
!292 = !DILocation(line: 275, column: 36, scope: !290)
!293 = !DILocalVariable(name: "crypt_key", scope: !290, file: !39, line: 277, type: !179)
!294 = !DILocation(line: 277, column: 10, scope: !290)
!295 = !DILocalVariable(name: "length", scope: !290, file: !39, line: 278, type: !30)
!296 = !DILocation(line: 278, column: 9, scope: !290)
!297 = !DILocalVariable(name: "i", scope: !290, file: !39, line: 279, type: !41)
!298 = !DILocation(line: 279, column: 6, scope: !290)
!299 = !DILocation(line: 281, column: 3, scope: !290)
!300 = !DILocation(line: 281, column: 7, scope: !290)
!301 = !DILocation(line: 281, column: 9, scope: !290)
!302 = !DILocation(line: 282, column: 26, scope: !303)
!303 = distinct !DILexicalBlock(scope: !290, file: !39, line: 282, column: 2)
!304 = !DILocation(line: 282, column: 30, scope: !303)
!305 = !DILocation(line: 282, column: 13, scope: !303)
!306 = !DILocation(line: 282, column: 11, scope: !303)
!307 = !DILocation(line: 282, column: 35, scope: !303)
!308 = !DILocation(line: 282, column: 39, scope: !303)
!309 = !DILocation(line: 282, column: 41, scope: !303)
!310 = !DILocation(line: 283, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !290, file: !39, line: 283, column: 6)
!312 = !DILocation(line: 283, column: 13, scope: !311)
!313 = !DILocation(line: 283, column: 17, scope: !311)
!314 = !DILocation(line: 283, column: 15, scope: !311)
!315 = !DILocation(line: 283, column: 28, scope: !311)
!316 = !DILocation(line: 283, column: 32, scope: !311)
!317 = !DILocation(line: 283, column: 24, scope: !311)
!318 = !DILocation(line: 283, column: 6, scope: !290)
!319 = !DILocation(line: 284, column: 3, scope: !311)
!320 = !DILocation(line: 286, column: 2, scope: !290)
!321 = !DILocation(line: 287, column: 30, scope: !290)
!322 = !DILocation(line: 287, column: 33, scope: !290)
!323 = !DILocation(line: 287, column: 36, scope: !290)
!324 = !DILocation(line: 287, column: 39, scope: !290)
!325 = !DILocation(line: 287, column: 42, scope: !290)
!326 = !DILocation(line: 287, column: 2, scope: !290)
!327 = !DILocation(line: 290, column: 3, scope: !290)
!328 = !DILocation(line: 290, column: 7, scope: !290)
!329 = !DILocation(line: 290, column: 9, scope: !290)
!330 = !DILocation(line: 294, column: 9, scope: !290)
!331 = !DILocation(line: 295, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !290, file: !39, line: 295, column: 2)
!333 = !DILocation(line: 295, column: 7, scope: !332)
!334 = !DILocation(line: 295, column: 14, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !39, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !332, file: !39, line: 295, column: 2)
!337 = !DILocation(line: 295, column: 16, scope: !335)
!338 = !DILocation(line: 295, column: 2, scope: !335)
!339 = !DILocation(line: 297, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !39, line: 296, column: 2)
!341 = !DILocation(line: 297, column: 4, scope: !340)
!342 = !DILocation(line: 297, column: 8, scope: !340)
!343 = !DILocation(line: 297, column: 10, scope: !340)
!344 = !DILocation(line: 298, column: 27, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !39, line: 298, column: 3)
!346 = !DILocation(line: 298, column: 31, scope: !345)
!347 = !DILocation(line: 298, column: 14, scope: !345)
!348 = !DILocation(line: 298, column: 12, scope: !345)
!349 = !DILocation(line: 298, column: 36, scope: !345)
!350 = !DILocation(line: 298, column: 40, scope: !345)
!351 = !DILocation(line: 298, column: 42, scope: !345)
!352 = !DILocation(line: 299, column: 10, scope: !353)
!353 = distinct !DILexicalBlock(scope: !340, file: !39, line: 299, column: 7)
!354 = !DILocation(line: 299, column: 14, scope: !353)
!355 = !DILocation(line: 299, column: 18, scope: !353)
!356 = !DILocation(line: 299, column: 16, scope: !353)
!357 = !DILocation(line: 299, column: 29, scope: !353)
!358 = !DILocation(line: 299, column: 33, scope: !353)
!359 = !DILocation(line: 299, column: 25, scope: !353)
!360 = !DILocation(line: 299, column: 7, scope: !340)
!361 = !DILocation(line: 300, column: 4, scope: !353)
!362 = !DILocation(line: 301, column: 2, scope: !340)
!363 = !DILocation(line: 295, column: 22, scope: !364)
!364 = !DILexicalBlockFile(scope: !336, file: !39, discriminator: 2)
!365 = !DILocation(line: 295, column: 2, scope: !364)
!366 = distinct !{!366, !367}
!367 = !DILocation(line: 295, column: 2, scope: !290)
!368 = !DILocation(line: 303, column: 19, scope: !290)
!369 = !DILocation(line: 304, column: 15, scope: !290)
!370 = !DILocation(line: 304, column: 18, scope: !290)
!371 = !DILocation(line: 304, column: 21, scope: !290)
!372 = !DILocation(line: 304, column: 2, scope: !290)
!373 = !DILocation(line: 305, column: 1, scope: !290)
!374 = !DILocation(line: 305, column: 1, scope: !375)
!375 = !DILexicalBlockFile(scope: !290, file: !39, discriminator: 1)
!376 = distinct !DISubprogram(name: "licence_generate_keys", scope: !39, file: !39, line: 38, type: !377, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !165, !165, !165}
!379 = !DILocalVariable(name: "client_random", arg: 1, scope: !376, file: !39, line: 38, type: !165)
!380 = !DILocation(line: 38, column: 31, scope: !376)
!381 = !DILocalVariable(name: "server_random", arg: 2, scope: !376, file: !39, line: 38, type: !165)
!382 = !DILocation(line: 38, column: 54, scope: !376)
!383 = !DILocalVariable(name: "pre_master_secret", arg: 3, scope: !376, file: !39, line: 38, type: !165)
!384 = !DILocation(line: 38, column: 77, scope: !376)
!385 = !DILocalVariable(name: "master_secret", scope: !376, file: !39, line: 40, type: !386)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 48)
!389 = !DILocation(line: 40, column: 8, scope: !376)
!390 = !DILocalVariable(name: "key_block", scope: !376, file: !39, line: 41, type: !386)
!391 = !DILocation(line: 41, column: 8, scope: !376)
!392 = !DILocation(line: 44, column: 14, scope: !376)
!393 = !DILocation(line: 44, column: 29, scope: !376)
!394 = !DILocation(line: 44, column: 48, scope: !376)
!395 = !DILocation(line: 44, column: 63, scope: !376)
!396 = !DILocation(line: 44, column: 2, scope: !376)
!397 = !DILocation(line: 45, column: 14, scope: !376)
!398 = !DILocation(line: 45, column: 25, scope: !376)
!399 = !DILocation(line: 45, column: 40, scope: !376)
!400 = !DILocation(line: 45, column: 55, scope: !376)
!401 = !DILocation(line: 45, column: 2, scope: !376)
!402 = !DILocation(line: 48, column: 2, scope: !376)
!403 = !DILocation(line: 51, column: 30, scope: !376)
!404 = !DILocation(line: 51, column: 45, scope: !376)
!405 = !DILocation(line: 51, column: 60, scope: !376)
!406 = !DILocation(line: 51, column: 2, scope: !376)
!407 = !DILocation(line: 52, column: 1, scope: !376)
!408 = distinct !DISubprogram(name: "licence_generate_hwid", scope: !39, file: !39, line: 55, type: !409, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !165}
!411 = !DILocalVariable(name: "hwid", arg: 1, scope: !408, file: !39, line: 55, type: !165)
!412 = !DILocation(line: 55, column: 31, scope: !408)
!413 = !DILocation(line: 57, column: 17, scope: !408)
!414 = !DILocation(line: 57, column: 2, scope: !408)
!415 = !DILocation(line: 58, column: 20, scope: !408)
!416 = !DILocation(line: 58, column: 25, scope: !408)
!417 = !DILocation(line: 58, column: 2, scope: !408)
!418 = !DILocation(line: 59, column: 1, scope: !408)
!419 = distinct !DISubprogram(name: "licence_info", scope: !39, file: !39, line: 63, type: !420, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !165, !165, !165, !41, !165, !165}
!422 = !DILocalVariable(name: "client_random", arg: 1, scope: !419, file: !39, line: 63, type: !165)
!423 = !DILocation(line: 63, column: 22, scope: !419)
!424 = !DILocalVariable(name: "rsa_data", arg: 2, scope: !419, file: !39, line: 63, type: !165)
!425 = !DILocation(line: 63, column: 45, scope: !419)
!426 = !DILocalVariable(name: "licence_data", arg: 3, scope: !419, file: !39, line: 64, type: !165)
!427 = !DILocation(line: 64, column: 15, scope: !419)
!428 = !DILocalVariable(name: "licence_size", arg: 4, scope: !419, file: !39, line: 64, type: !41)
!429 = !DILocation(line: 64, column: 33, scope: !419)
!430 = !DILocalVariable(name: "hwid", arg: 5, scope: !419, file: !39, line: 64, type: !165)
!431 = !DILocation(line: 64, column: 55, scope: !419)
!432 = !DILocalVariable(name: "signature", arg: 6, scope: !419, file: !39, line: 64, type: !165)
!433 = !DILocation(line: 64, column: 69, scope: !419)
!434 = !DILocalVariable(name: "sec_flags", scope: !419, file: !39, line: 66, type: !30)
!435 = !DILocation(line: 66, column: 9, scope: !419)
!436 = !DILocalVariable(name: "length", scope: !419, file: !39, line: 67, type: !35)
!437 = !DILocation(line: 67, column: 9, scope: !419)
!438 = !DILocation(line: 69, column: 3, scope: !419)
!439 = !DILocation(line: 68, column: 20, scope: !419)
!440 = !DILocation(line: 69, column: 16, scope: !419)
!441 = !DILocation(line: 69, column: 21, scope: !419)
!442 = !DILocation(line: 68, column: 3, scope: !419)
!443 = !DILocalVariable(name: "s", scope: !419, file: !39, line: 70, type: !56)
!444 = !DILocation(line: 70, column: 9, scope: !419)
!445 = !DILocation(line: 72, column: 15, scope: !419)
!446 = !DILocation(line: 72, column: 26, scope: !419)
!447 = !DILocation(line: 72, column: 33, scope: !419)
!448 = !DILocation(line: 72, column: 6, scope: !419)
!449 = !DILocation(line: 72, column: 4, scope: !419)
!450 = !DILocation(line: 74, column: 5, scope: !419)
!451 = !DILocation(line: 74, column: 9, scope: !419)
!452 = !DILocation(line: 74, column: 10, scope: !419)
!453 = !DILocation(line: 74, column: 14, scope: !419)
!454 = !DILocation(line: 75, column: 18, scope: !419)
!455 = !DILocation(line: 75, column: 32, scope: !419)
!456 = !DILocation(line: 75, column: 17, scope: !419)
!457 = !DILocation(line: 75, column: 16, scope: !419)
!458 = !DILocation(line: 75, column: 5, scope: !419)
!459 = !DILocation(line: 75, column: 9, scope: !419)
!460 = !DILocation(line: 75, column: 10, scope: !419)
!461 = !DILocation(line: 75, column: 14, scope: !419)
!462 = !DILocation(line: 76, column: 26, scope: !463)
!463 = distinct !DILexicalBlock(scope: !419, file: !39, line: 76, column: 2)
!464 = !DILocation(line: 76, column: 17, scope: !463)
!465 = !DILocation(line: 76, column: 21, scope: !463)
!466 = !DILocation(line: 76, column: 4, scope: !463)
!467 = !DILocation(line: 76, column: 24, scope: !463)
!468 = !DILocation(line: 76, column: 35, scope: !463)
!469 = !DILocation(line: 76, column: 39, scope: !463)
!470 = !DILocation(line: 76, column: 41, scope: !463)
!471 = !DILocation(line: 78, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !419, file: !39, line: 78, column: 2)
!473 = !DILocation(line: 78, column: 21, scope: !472)
!474 = !DILocation(line: 78, column: 4, scope: !472)
!475 = !DILocation(line: 78, column: 24, scope: !472)
!476 = !DILocation(line: 78, column: 30, scope: !472)
!477 = !DILocation(line: 78, column: 34, scope: !472)
!478 = !DILocation(line: 78, column: 36, scope: !472)
!479 = !DILocation(line: 79, column: 17, scope: !480)
!480 = distinct !DILexicalBlock(scope: !419, file: !39, line: 79, column: 2)
!481 = !DILocation(line: 79, column: 21, scope: !480)
!482 = !DILocation(line: 79, column: 4, scope: !480)
!483 = !DILocation(line: 79, column: 24, scope: !480)
!484 = !DILocation(line: 79, column: 30, scope: !480)
!485 = !DILocation(line: 79, column: 34, scope: !480)
!486 = !DILocation(line: 79, column: 36, scope: !480)
!487 = !DILocation(line: 80, column: 17, scope: !488)
!488 = distinct !DILexicalBlock(scope: !419, file: !39, line: 80, column: 2)
!489 = !DILocation(line: 80, column: 21, scope: !488)
!490 = !DILocation(line: 80, column: 4, scope: !488)
!491 = !DILocation(line: 80, column: 24, scope: !488)
!492 = !DILocation(line: 80, column: 35, scope: !488)
!493 = !DILocation(line: 80, column: 39, scope: !488)
!494 = !DILocation(line: 80, column: 41, scope: !488)
!495 = !DILocation(line: 82, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !419, file: !39, line: 82, column: 2)
!497 = !DILocation(line: 82, column: 16, scope: !496)
!498 = !DILocation(line: 82, column: 18, scope: !496)
!499 = !DILocation(line: 82, column: 4, scope: !496)
!500 = !DILocation(line: 82, column: 38, scope: !496)
!501 = !DILocation(line: 82, column: 42, scope: !496)
!502 = !DILocation(line: 82, column: 44, scope: !496)
!503 = !DILocation(line: 83, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !419, file: !39, line: 83, column: 2)
!505 = !DILocation(line: 83, column: 21, scope: !504)
!506 = !DILocation(line: 83, column: 4, scope: !504)
!507 = !DILocation(line: 83, column: 24, scope: !504)
!508 = !DILocation(line: 83, column: 30, scope: !504)
!509 = !DILocation(line: 83, column: 34, scope: !504)
!510 = !DILocation(line: 83, column: 36, scope: !504)
!511 = !DILocation(line: 84, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !419, file: !39, line: 84, column: 2)
!513 = !DILocation(line: 84, column: 21, scope: !512)
!514 = !DILocation(line: 84, column: 4, scope: !512)
!515 = !DILocation(line: 84, column: 24, scope: !512)
!516 = !DILocation(line: 84, column: 37, scope: !512)
!517 = !DILocation(line: 84, column: 41, scope: !512)
!518 = !DILocation(line: 84, column: 43, scope: !512)
!519 = !DILocation(line: 85, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !419, file: !39, line: 85, column: 2)
!521 = !DILocation(line: 85, column: 16, scope: !520)
!522 = !DILocation(line: 85, column: 18, scope: !520)
!523 = !DILocation(line: 85, column: 4, scope: !520)
!524 = !DILocation(line: 85, column: 33, scope: !520)
!525 = !DILocation(line: 85, column: 37, scope: !520)
!526 = !DILocation(line: 85, column: 39, scope: !520)
!527 = !DILocation(line: 86, column: 12, scope: !528)
!528 = distinct !DILexicalBlock(scope: !419, file: !39, line: 86, column: 2)
!529 = !DILocation(line: 86, column: 16, scope: !528)
!530 = !DILocation(line: 86, column: 4, scope: !528)
!531 = !DILocation(line: 86, column: 25, scope: !528)
!532 = !DILocation(line: 86, column: 29, scope: !528)
!533 = !DILocation(line: 86, column: 31, scope: !528)
!534 = !DILocation(line: 88, column: 17, scope: !535)
!535 = distinct !DILexicalBlock(scope: !419, file: !39, line: 88, column: 2)
!536 = !DILocation(line: 88, column: 21, scope: !535)
!537 = !DILocation(line: 88, column: 4, scope: !535)
!538 = !DILocation(line: 88, column: 24, scope: !535)
!539 = !DILocation(line: 88, column: 30, scope: !535)
!540 = !DILocation(line: 88, column: 34, scope: !535)
!541 = !DILocation(line: 88, column: 36, scope: !535)
!542 = !DILocation(line: 89, column: 26, scope: !543)
!543 = distinct !DILexicalBlock(scope: !419, file: !39, line: 89, column: 2)
!544 = !DILocation(line: 89, column: 17, scope: !543)
!545 = !DILocation(line: 89, column: 21, scope: !543)
!546 = !DILocation(line: 89, column: 4, scope: !543)
!547 = !DILocation(line: 89, column: 24, scope: !543)
!548 = !DILocation(line: 89, column: 41, scope: !543)
!549 = !DILocation(line: 89, column: 45, scope: !543)
!550 = !DILocation(line: 89, column: 47, scope: !543)
!551 = !DILocation(line: 90, column: 12, scope: !552)
!552 = distinct !DILexicalBlock(scope: !419, file: !39, line: 90, column: 2)
!553 = !DILocation(line: 90, column: 16, scope: !552)
!554 = !DILocation(line: 90, column: 18, scope: !552)
!555 = !DILocation(line: 90, column: 31, scope: !552)
!556 = !DILocation(line: 90, column: 4, scope: !552)
!557 = !DILocation(line: 90, column: 56, scope: !552)
!558 = !DILocation(line: 90, column: 47, scope: !552)
!559 = !DILocation(line: 90, column: 51, scope: !552)
!560 = !DILocation(line: 90, column: 53, scope: !552)
!561 = !DILocation(line: 92, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !419, file: !39, line: 92, column: 2)
!563 = !DILocation(line: 92, column: 21, scope: !562)
!564 = !DILocation(line: 92, column: 4, scope: !562)
!565 = !DILocation(line: 92, column: 24, scope: !562)
!566 = !DILocation(line: 92, column: 30, scope: !562)
!567 = !DILocation(line: 92, column: 34, scope: !562)
!568 = !DILocation(line: 92, column: 36, scope: !562)
!569 = !DILocation(line: 93, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !419, file: !39, line: 93, column: 2)
!571 = !DILocation(line: 93, column: 21, scope: !570)
!572 = !DILocation(line: 93, column: 4, scope: !570)
!573 = !DILocation(line: 93, column: 24, scope: !570)
!574 = !DILocation(line: 93, column: 31, scope: !570)
!575 = !DILocation(line: 93, column: 35, scope: !570)
!576 = !DILocation(line: 93, column: 37, scope: !570)
!577 = !DILocation(line: 94, column: 12, scope: !578)
!578 = distinct !DILexicalBlock(scope: !419, file: !39, line: 94, column: 2)
!579 = !DILocation(line: 94, column: 16, scope: !578)
!580 = !DILocation(line: 94, column: 18, scope: !578)
!581 = !DILocation(line: 94, column: 4, scope: !578)
!582 = !DILocation(line: 94, column: 29, scope: !578)
!583 = !DILocation(line: 94, column: 33, scope: !578)
!584 = !DILocation(line: 94, column: 35, scope: !578)
!585 = !DILocation(line: 96, column: 12, scope: !586)
!586 = distinct !DILexicalBlock(scope: !419, file: !39, line: 96, column: 2)
!587 = !DILocation(line: 96, column: 16, scope: !586)
!588 = !DILocation(line: 96, column: 18, scope: !586)
!589 = !DILocation(line: 96, column: 4, scope: !586)
!590 = !DILocation(line: 96, column: 34, scope: !586)
!591 = !DILocation(line: 96, column: 38, scope: !586)
!592 = !DILocation(line: 96, column: 40, scope: !586)
!593 = !DILocation(line: 98, column: 14, scope: !419)
!594 = !DILocation(line: 98, column: 18, scope: !419)
!595 = !DILocation(line: 98, column: 3, scope: !419)
!596 = !DILocation(line: 98, column: 7, scope: !419)
!597 = !DILocation(line: 98, column: 11, scope: !419)
!598 = !DILocation(line: 99, column: 11, scope: !419)
!599 = !DILocation(line: 99, column: 14, scope: !419)
!600 = !DILocation(line: 99, column: 2, scope: !419)
!601 = !DILocation(line: 100, column: 1, scope: !419)
!602 = distinct !DISubprogram(name: "licence_send_new_licence_request", scope: !39, file: !39, line: 104, type: !603, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !165, !165, !32, !32}
!605 = !DILocalVariable(name: "client_random", arg: 1, scope: !602, file: !39, line: 104, type: !165)
!606 = !DILocation(line: 104, column: 42, scope: !602)
!607 = !DILocalVariable(name: "rsa_data", arg: 2, scope: !602, file: !39, line: 104, type: !165)
!608 = !DILocation(line: 104, column: 65, scope: !602)
!609 = !DILocalVariable(name: "user", arg: 3, scope: !602, file: !39, line: 104, type: !32)
!610 = !DILocation(line: 104, column: 81, scope: !602)
!611 = !DILocalVariable(name: "host", arg: 4, scope: !602, file: !39, line: 104, type: !32)
!612 = !DILocation(line: 104, column: 93, scope: !602)
!613 = !DILocalVariable(name: "sec_flags", scope: !602, file: !39, line: 106, type: !30)
!614 = !DILocation(line: 106, column: 9, scope: !602)
!615 = !DILocalVariable(name: "userlen", scope: !602, file: !39, line: 107, type: !35)
!616 = !DILocation(line: 107, column: 9, scope: !602)
!617 = !DILocation(line: 107, column: 26, scope: !602)
!618 = !DILocation(line: 107, column: 19, scope: !602)
!619 = !DILocation(line: 107, column: 32, scope: !602)
!620 = !DILocalVariable(name: "hostlen", scope: !602, file: !39, line: 108, type: !35)
!621 = !DILocation(line: 108, column: 9, scope: !602)
!622 = !DILocation(line: 108, column: 26, scope: !602)
!623 = !DILocation(line: 108, column: 19, scope: !602)
!624 = !DILocation(line: 108, column: 32, scope: !602)
!625 = !DILocalVariable(name: "length", scope: !602, file: !39, line: 109, type: !35)
!626 = !DILocation(line: 109, column: 9, scope: !602)
!627 = !DILocation(line: 110, column: 22, scope: !602)
!628 = !DILocation(line: 110, column: 20, scope: !602)
!629 = !DILocation(line: 110, column: 32, scope: !602)
!630 = !DILocation(line: 110, column: 30, scope: !602)
!631 = !DILocation(line: 110, column: 3, scope: !602)
!632 = !DILocalVariable(name: "s", scope: !602, file: !39, line: 111, type: !56)
!633 = !DILocation(line: 111, column: 9, scope: !602)
!634 = !DILocation(line: 113, column: 15, scope: !602)
!635 = !DILocation(line: 113, column: 26, scope: !602)
!636 = !DILocation(line: 113, column: 33, scope: !602)
!637 = !DILocation(line: 113, column: 6, scope: !602)
!638 = !DILocation(line: 113, column: 4, scope: !602)
!639 = !DILocation(line: 115, column: 5, scope: !602)
!640 = !DILocation(line: 115, column: 9, scope: !602)
!641 = !DILocation(line: 115, column: 10, scope: !602)
!642 = !DILocation(line: 115, column: 14, scope: !602)
!643 = !DILocation(line: 116, column: 18, scope: !602)
!644 = !DILocation(line: 116, column: 32, scope: !602)
!645 = !DILocation(line: 116, column: 17, scope: !602)
!646 = !DILocation(line: 116, column: 16, scope: !602)
!647 = !DILocation(line: 116, column: 5, scope: !602)
!648 = !DILocation(line: 116, column: 9, scope: !602)
!649 = !DILocation(line: 116, column: 10, scope: !602)
!650 = !DILocation(line: 116, column: 14, scope: !602)
!651 = !DILocation(line: 117, column: 26, scope: !652)
!652 = distinct !DILexicalBlock(scope: !602, file: !39, line: 117, column: 2)
!653 = !DILocation(line: 117, column: 17, scope: !652)
!654 = !DILocation(line: 117, column: 21, scope: !652)
!655 = !DILocation(line: 117, column: 4, scope: !652)
!656 = !DILocation(line: 117, column: 24, scope: !652)
!657 = !DILocation(line: 117, column: 35, scope: !652)
!658 = !DILocation(line: 117, column: 39, scope: !652)
!659 = !DILocation(line: 117, column: 41, scope: !652)
!660 = !DILocation(line: 119, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !602, file: !39, line: 119, column: 2)
!662 = !DILocation(line: 119, column: 21, scope: !661)
!663 = !DILocation(line: 119, column: 4, scope: !661)
!664 = !DILocation(line: 119, column: 24, scope: !661)
!665 = !DILocation(line: 119, column: 30, scope: !661)
!666 = !DILocation(line: 119, column: 34, scope: !661)
!667 = !DILocation(line: 119, column: 36, scope: !661)
!668 = !DILocation(line: 120, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !602, file: !39, line: 120, column: 2)
!670 = !DILocation(line: 120, column: 21, scope: !669)
!671 = !DILocation(line: 120, column: 4, scope: !669)
!672 = !DILocation(line: 120, column: 24, scope: !669)
!673 = !DILocation(line: 120, column: 30, scope: !669)
!674 = !DILocation(line: 120, column: 34, scope: !669)
!675 = !DILocation(line: 120, column: 36, scope: !669)
!676 = !DILocation(line: 121, column: 17, scope: !677)
!677 = distinct !DILexicalBlock(scope: !602, file: !39, line: 121, column: 2)
!678 = !DILocation(line: 121, column: 21, scope: !677)
!679 = !DILocation(line: 121, column: 4, scope: !677)
!680 = !DILocation(line: 121, column: 24, scope: !677)
!681 = !DILocation(line: 121, column: 35, scope: !677)
!682 = !DILocation(line: 121, column: 39, scope: !677)
!683 = !DILocation(line: 121, column: 41, scope: !677)
!684 = !DILocation(line: 123, column: 12, scope: !685)
!685 = distinct !DILexicalBlock(scope: !602, file: !39, line: 123, column: 2)
!686 = !DILocation(line: 123, column: 16, scope: !685)
!687 = !DILocation(line: 123, column: 18, scope: !685)
!688 = !DILocation(line: 123, column: 4, scope: !685)
!689 = !DILocation(line: 123, column: 38, scope: !685)
!690 = !DILocation(line: 123, column: 42, scope: !685)
!691 = !DILocation(line: 123, column: 44, scope: !685)
!692 = !DILocation(line: 124, column: 17, scope: !693)
!693 = distinct !DILexicalBlock(scope: !602, file: !39, line: 124, column: 2)
!694 = !DILocation(line: 124, column: 21, scope: !693)
!695 = !DILocation(line: 124, column: 4, scope: !693)
!696 = !DILocation(line: 124, column: 24, scope: !693)
!697 = !DILocation(line: 124, column: 30, scope: !693)
!698 = !DILocation(line: 124, column: 34, scope: !693)
!699 = !DILocation(line: 124, column: 36, scope: !693)
!700 = !DILocation(line: 125, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !602, file: !39, line: 125, column: 2)
!702 = !DILocation(line: 125, column: 21, scope: !701)
!703 = !DILocation(line: 125, column: 4, scope: !701)
!704 = !DILocation(line: 125, column: 24, scope: !701)
!705 = !DILocation(line: 125, column: 37, scope: !701)
!706 = !DILocation(line: 125, column: 41, scope: !701)
!707 = !DILocation(line: 125, column: 43, scope: !701)
!708 = !DILocation(line: 126, column: 12, scope: !709)
!709 = distinct !DILexicalBlock(scope: !602, file: !39, line: 126, column: 2)
!710 = !DILocation(line: 126, column: 16, scope: !709)
!711 = !DILocation(line: 126, column: 18, scope: !709)
!712 = !DILocation(line: 126, column: 4, scope: !709)
!713 = !DILocation(line: 126, column: 33, scope: !709)
!714 = !DILocation(line: 126, column: 37, scope: !709)
!715 = !DILocation(line: 126, column: 39, scope: !709)
!716 = !DILocation(line: 127, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !602, file: !39, line: 127, column: 2)
!718 = !DILocation(line: 127, column: 16, scope: !717)
!719 = !DILocation(line: 127, column: 4, scope: !717)
!720 = !DILocation(line: 127, column: 25, scope: !717)
!721 = !DILocation(line: 127, column: 29, scope: !717)
!722 = !DILocation(line: 127, column: 31, scope: !717)
!723 = !DILocation(line: 130, column: 17, scope: !724)
!724 = distinct !DILexicalBlock(scope: !602, file: !39, line: 130, column: 2)
!725 = !DILocation(line: 130, column: 21, scope: !724)
!726 = !DILocation(line: 130, column: 4, scope: !724)
!727 = !DILocation(line: 130, column: 24, scope: !724)
!728 = !DILocation(line: 130, column: 35, scope: !724)
!729 = !DILocation(line: 130, column: 39, scope: !724)
!730 = !DILocation(line: 130, column: 41, scope: !724)
!731 = !DILocation(line: 131, column: 26, scope: !732)
!732 = distinct !DILexicalBlock(scope: !602, file: !39, line: 131, column: 2)
!733 = !DILocation(line: 131, column: 17, scope: !732)
!734 = !DILocation(line: 131, column: 21, scope: !732)
!735 = !DILocation(line: 131, column: 4, scope: !732)
!736 = !DILocation(line: 131, column: 24, scope: !732)
!737 = !DILocation(line: 131, column: 36, scope: !732)
!738 = !DILocation(line: 131, column: 40, scope: !732)
!739 = !DILocation(line: 131, column: 42, scope: !732)
!740 = !DILocation(line: 132, column: 12, scope: !741)
!741 = distinct !DILexicalBlock(scope: !602, file: !39, line: 132, column: 2)
!742 = !DILocation(line: 132, column: 16, scope: !741)
!743 = !DILocation(line: 132, column: 18, scope: !741)
!744 = !DILocation(line: 132, column: 23, scope: !741)
!745 = !DILocation(line: 132, column: 4, scope: !741)
!746 = !DILocation(line: 132, column: 43, scope: !741)
!747 = !DILocation(line: 132, column: 34, scope: !741)
!748 = !DILocation(line: 132, column: 38, scope: !741)
!749 = !DILocation(line: 132, column: 40, scope: !741)
!750 = !DILocation(line: 135, column: 17, scope: !751)
!751 = distinct !DILexicalBlock(scope: !602, file: !39, line: 135, column: 2)
!752 = !DILocation(line: 135, column: 21, scope: !751)
!753 = !DILocation(line: 135, column: 4, scope: !751)
!754 = !DILocation(line: 135, column: 24, scope: !751)
!755 = !DILocation(line: 135, column: 35, scope: !751)
!756 = !DILocation(line: 135, column: 39, scope: !751)
!757 = !DILocation(line: 135, column: 41, scope: !751)
!758 = !DILocation(line: 136, column: 26, scope: !759)
!759 = distinct !DILexicalBlock(scope: !602, file: !39, line: 136, column: 2)
!760 = !DILocation(line: 136, column: 17, scope: !759)
!761 = !DILocation(line: 136, column: 21, scope: !759)
!762 = !DILocation(line: 136, column: 4, scope: !759)
!763 = !DILocation(line: 136, column: 24, scope: !759)
!764 = !DILocation(line: 136, column: 36, scope: !759)
!765 = !DILocation(line: 136, column: 40, scope: !759)
!766 = !DILocation(line: 136, column: 42, scope: !759)
!767 = !DILocation(line: 137, column: 12, scope: !768)
!768 = distinct !DILexicalBlock(scope: !602, file: !39, line: 137, column: 2)
!769 = !DILocation(line: 137, column: 16, scope: !768)
!770 = !DILocation(line: 137, column: 18, scope: !768)
!771 = !DILocation(line: 137, column: 23, scope: !768)
!772 = !DILocation(line: 137, column: 4, scope: !768)
!773 = !DILocation(line: 137, column: 43, scope: !768)
!774 = !DILocation(line: 137, column: 34, scope: !768)
!775 = !DILocation(line: 137, column: 38, scope: !768)
!776 = !DILocation(line: 137, column: 40, scope: !768)
!777 = !DILocation(line: 139, column: 14, scope: !602)
!778 = !DILocation(line: 139, column: 18, scope: !602)
!779 = !DILocation(line: 139, column: 3, scope: !602)
!780 = !DILocation(line: 139, column: 7, scope: !602)
!781 = !DILocation(line: 139, column: 11, scope: !602)
!782 = !DILocation(line: 140, column: 11, scope: !602)
!783 = !DILocation(line: 140, column: 14, scope: !602)
!784 = !DILocation(line: 140, column: 2, scope: !602)
!785 = !DILocation(line: 141, column: 1, scope: !602)
!786 = distinct !DISubprogram(name: "licence_parse_platform_challenge", scope: !39, file: !39, line: 221, type: !787, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!787 = !DISubroutineType(types: !788)
!788 = !{!40, !56, !789, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!790 = !DILocalVariable(name: "s", arg: 1, scope: !786, file: !39, line: 221, type: !56)
!791 = !DILocation(line: 221, column: 41, scope: !786)
!792 = !DILocalVariable(name: "token", arg: 2, scope: !786, file: !39, line: 221, type: !789)
!793 = !DILocation(line: 221, column: 53, scope: !786)
!794 = !DILocalVariable(name: "signature", arg: 3, scope: !786, file: !39, line: 221, type: !789)
!795 = !DILocation(line: 221, column: 69, scope: !786)
!796 = !DILocalVariable(name: "tokenlen", scope: !786, file: !39, line: 223, type: !35)
!797 = !DILocation(line: 223, column: 9, scope: !786)
!798 = !DILocation(line: 225, column: 3, scope: !786)
!799 = !DILocation(line: 225, column: 7, scope: !786)
!800 = !DILocation(line: 225, column: 9, scope: !786)
!801 = !DILocation(line: 227, column: 28, scope: !802)
!802 = distinct !DILexicalBlock(scope: !786, file: !39, line: 227, column: 2)
!803 = !DILocation(line: 227, column: 32, scope: !802)
!804 = !DILocation(line: 227, column: 15, scope: !802)
!805 = !DILocation(line: 227, column: 13, scope: !802)
!806 = !DILocation(line: 227, column: 37, scope: !802)
!807 = !DILocation(line: 227, column: 41, scope: !802)
!808 = !DILocation(line: 227, column: 43, scope: !802)
!809 = !DILocation(line: 228, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !786, file: !39, line: 228, column: 6)
!811 = !DILocation(line: 228, column: 15, scope: !810)
!812 = !DILocation(line: 228, column: 6, scope: !786)
!813 = !DILocation(line: 230, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !39, line: 229, column: 2)
!815 = !DILocation(line: 232, column: 3, scope: !814)
!816 = !DILocation(line: 235, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !786, file: !39, line: 235, column: 2)
!818 = !DILocation(line: 235, column: 18, scope: !817)
!819 = !DILocation(line: 235, column: 5, scope: !817)
!820 = !DILocation(line: 235, column: 11, scope: !817)
!821 = !DILocation(line: 235, column: 31, scope: !817)
!822 = !DILocation(line: 235, column: 22, scope: !817)
!823 = !DILocation(line: 235, column: 26, scope: !817)
!824 = !DILocation(line: 235, column: 28, scope: !817)
!825 = !DILocation(line: 236, column: 18, scope: !826)
!826 = distinct !DILexicalBlock(scope: !786, file: !39, line: 236, column: 2)
!827 = !DILocation(line: 236, column: 22, scope: !826)
!828 = !DILocation(line: 236, column: 5, scope: !826)
!829 = !DILocation(line: 236, column: 15, scope: !826)
!830 = !DILocation(line: 236, column: 26, scope: !826)
!831 = !DILocation(line: 236, column: 30, scope: !826)
!832 = !DILocation(line: 236, column: 32, scope: !826)
!833 = !DILocation(line: 238, column: 11, scope: !786)
!834 = !DILocation(line: 238, column: 15, scope: !786)
!835 = !DILocation(line: 238, column: 21, scope: !786)
!836 = !DILocation(line: 238, column: 25, scope: !786)
!837 = !DILocation(line: 238, column: 17, scope: !786)
!838 = !DILocation(line: 238, column: 2, scope: !786)
!839 = !DILocation(line: 239, column: 1, scope: !786)
!840 = distinct !DISubprogram(name: "licence_send_platform_challenge_response", scope: !39, file: !39, line: 193, type: !377, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!841 = !DILocalVariable(name: "token", arg: 1, scope: !840, file: !39, line: 193, type: !165)
!842 = !DILocation(line: 193, column: 50, scope: !840)
!843 = !DILocalVariable(name: "crypt_hwid", arg: 2, scope: !840, file: !39, line: 193, type: !165)
!844 = !DILocation(line: 193, column: 65, scope: !840)
!845 = !DILocalVariable(name: "signature", arg: 3, scope: !840, file: !39, line: 193, type: !165)
!846 = !DILocation(line: 193, column: 85, scope: !840)
!847 = !DILocalVariable(name: "sec_flags", scope: !840, file: !39, line: 195, type: !30)
!848 = !DILocation(line: 195, column: 9, scope: !840)
!849 = !DILocalVariable(name: "length", scope: !840, file: !39, line: 196, type: !35)
!850 = !DILocation(line: 196, column: 9, scope: !840)
!851 = !DILocalVariable(name: "s", scope: !840, file: !39, line: 197, type: !56)
!852 = !DILocation(line: 197, column: 9, scope: !840)
!853 = !DILocation(line: 199, column: 15, scope: !840)
!854 = !DILocation(line: 199, column: 26, scope: !840)
!855 = !DILocation(line: 199, column: 33, scope: !840)
!856 = !DILocation(line: 199, column: 6, scope: !840)
!857 = !DILocation(line: 199, column: 4, scope: !840)
!858 = !DILocation(line: 201, column: 5, scope: !840)
!859 = !DILocation(line: 201, column: 9, scope: !840)
!860 = !DILocation(line: 201, column: 10, scope: !840)
!861 = !DILocation(line: 201, column: 14, scope: !840)
!862 = !DILocation(line: 202, column: 18, scope: !840)
!863 = !DILocation(line: 202, column: 32, scope: !840)
!864 = !DILocation(line: 202, column: 17, scope: !840)
!865 = !DILocation(line: 202, column: 16, scope: !840)
!866 = !DILocation(line: 202, column: 5, scope: !840)
!867 = !DILocation(line: 202, column: 9, scope: !840)
!868 = !DILocation(line: 202, column: 10, scope: !840)
!869 = !DILocation(line: 202, column: 14, scope: !840)
!870 = !DILocation(line: 203, column: 26, scope: !871)
!871 = distinct !DILexicalBlock(scope: !840, file: !39, line: 203, column: 2)
!872 = !DILocation(line: 203, column: 17, scope: !871)
!873 = !DILocation(line: 203, column: 21, scope: !871)
!874 = !DILocation(line: 203, column: 4, scope: !871)
!875 = !DILocation(line: 203, column: 24, scope: !871)
!876 = !DILocation(line: 203, column: 35, scope: !871)
!877 = !DILocation(line: 203, column: 39, scope: !871)
!878 = !DILocation(line: 203, column: 41, scope: !871)
!879 = !DILocation(line: 205, column: 17, scope: !880)
!880 = distinct !DILexicalBlock(scope: !840, file: !39, line: 205, column: 2)
!881 = !DILocation(line: 205, column: 21, scope: !880)
!882 = !DILocation(line: 205, column: 4, scope: !880)
!883 = !DILocation(line: 205, column: 24, scope: !880)
!884 = !DILocation(line: 205, column: 30, scope: !880)
!885 = !DILocation(line: 205, column: 34, scope: !880)
!886 = !DILocation(line: 205, column: 36, scope: !880)
!887 = !DILocation(line: 206, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !840, file: !39, line: 206, column: 2)
!889 = !DILocation(line: 206, column: 21, scope: !888)
!890 = !DILocation(line: 206, column: 4, scope: !888)
!891 = !DILocation(line: 206, column: 24, scope: !888)
!892 = !DILocation(line: 206, column: 31, scope: !888)
!893 = !DILocation(line: 206, column: 35, scope: !888)
!894 = !DILocation(line: 206, column: 37, scope: !888)
!895 = !DILocation(line: 207, column: 12, scope: !896)
!896 = distinct !DILexicalBlock(scope: !840, file: !39, line: 207, column: 2)
!897 = !DILocation(line: 207, column: 16, scope: !896)
!898 = !DILocation(line: 207, column: 18, scope: !896)
!899 = !DILocation(line: 207, column: 4, scope: !896)
!900 = !DILocation(line: 207, column: 30, scope: !896)
!901 = !DILocation(line: 207, column: 34, scope: !896)
!902 = !DILocation(line: 207, column: 36, scope: !896)
!903 = !DILocation(line: 209, column: 17, scope: !904)
!904 = distinct !DILexicalBlock(scope: !840, file: !39, line: 209, column: 2)
!905 = !DILocation(line: 209, column: 21, scope: !904)
!906 = !DILocation(line: 209, column: 4, scope: !904)
!907 = !DILocation(line: 209, column: 24, scope: !904)
!908 = !DILocation(line: 209, column: 30, scope: !904)
!909 = !DILocation(line: 209, column: 34, scope: !904)
!910 = !DILocation(line: 209, column: 36, scope: !904)
!911 = !DILocation(line: 210, column: 17, scope: !912)
!912 = distinct !DILexicalBlock(scope: !840, file: !39, line: 210, column: 2)
!913 = !DILocation(line: 210, column: 21, scope: !912)
!914 = !DILocation(line: 210, column: 4, scope: !912)
!915 = !DILocation(line: 210, column: 24, scope: !912)
!916 = !DILocation(line: 210, column: 31, scope: !912)
!917 = !DILocation(line: 210, column: 35, scope: !912)
!918 = !DILocation(line: 210, column: 37, scope: !912)
!919 = !DILocation(line: 211, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !840, file: !39, line: 211, column: 2)
!921 = !DILocation(line: 211, column: 16, scope: !920)
!922 = !DILocation(line: 211, column: 18, scope: !920)
!923 = !DILocation(line: 211, column: 4, scope: !920)
!924 = !DILocation(line: 211, column: 35, scope: !920)
!925 = !DILocation(line: 211, column: 39, scope: !920)
!926 = !DILocation(line: 211, column: 41, scope: !920)
!927 = !DILocation(line: 213, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !840, file: !39, line: 213, column: 2)
!929 = !DILocation(line: 213, column: 16, scope: !928)
!930 = !DILocation(line: 213, column: 18, scope: !928)
!931 = !DILocation(line: 213, column: 4, scope: !928)
!932 = !DILocation(line: 213, column: 34, scope: !928)
!933 = !DILocation(line: 213, column: 38, scope: !928)
!934 = !DILocation(line: 213, column: 40, scope: !928)
!935 = !DILocation(line: 215, column: 14, scope: !840)
!936 = !DILocation(line: 215, column: 18, scope: !840)
!937 = !DILocation(line: 215, column: 3, scope: !840)
!938 = !DILocation(line: 215, column: 7, scope: !840)
!939 = !DILocation(line: 215, column: 11, scope: !840)
!940 = !DILocation(line: 216, column: 11, scope: !840)
!941 = !DILocation(line: 216, column: 14, scope: !840)
!942 = !DILocation(line: 216, column: 2, scope: !840)
!943 = !DILocation(line: 217, column: 1, scope: !840)
