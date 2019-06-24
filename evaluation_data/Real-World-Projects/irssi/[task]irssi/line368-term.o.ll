; ModuleID = './line368-term.o.i'
source_filename = "./line368-term.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.winsize = type { i16, i16, i16, i16 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@resize_dirty = internal global i32 0, align 4
@term_width = common global i32 0, align 4
@term_height = common global i32 0, align 4
@term_color256map = global [257 x i32] [i32 0, i32 4, i32 2, i32 6, i32 1, i32 5, i32 3, i32 7, i32 8, i32 12, i32 10, i32 14, i32 9, i32 13, i32 11, i32 15, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 3, i32 1, i32 1, i32 9, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, i32 3, i32 11, i32 10, i32 10, i32 3, i32 3, i32 11, i32 11, i32 0, i32 0, i32 5, i32 1, i32 1, i32 9, i32 0, i32 8, i32 8, i32 8, i32 9, i32 9, i32 2, i32 8, i32 8, i32 8, i32 9, i32 9, i32 2, i32 8, i32 8, i32 8, i32 9, i32 9, i32 2, i32 8, i32 8, i32 3, i32 3, i32 11, i32 10, i32 10, i32 3, i32 3, i32 11, i32 11, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 4, i32 8, i32 8, i32 8, i32 9, i32 9, i32 6, i32 8, i32 8, i32 8, i32 9, i32 9, i32 6, i32 8, i32 8, i32 8, i32 8, i32 9, i32 6, i32 8, i32 8, i32 8, i32 7, i32 7, i32 6, i32 6, i32 8, i32 7, i32 7, i32 7, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 4, i32 8, i32 8, i32 8, i32 9, i32 9, i32 6, i32 8, i32 8, i32 8, i32 8, i32 9, i32 6, i32 8, i32 8, i32 8, i32 7, i32 7, i32 6, i32 6, i32 8, i32 7, i32 7, i32 7, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 4, i32 4, i32 5, i32 5, i32 5, i32 13, i32 4, i32 8, i32 8, i32 5, i32 5, i32 13, i32 6, i32 8, i32 8, i32 8, i32 7, i32 7, i32 6, i32 6, i32 8, i32 7, i32 7, i32 7, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 14, i32 14, i32 7, i32 7, i32 7, i32 7, i32 12, i32 12, i32 5, i32 5, i32 13, i32 13, i32 12, i32 12, i32 5, i32 5, i32 13, i32 13, i32 6, i32 6, i32 8, i32 7, i32 7, i32 7, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 14, i32 14, i32 7, i32 7, i32 7, i32 7, i32 14, i32 14, i32 7, i32 7, i32 7, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0], align 16
@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"term_force_colors\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"mirc_blink_fix\00", align 1
@force_colors = internal global i32 0, align 4
@term_use_colors = common global i32 0, align 4
@term_use_colors24 = common global i32 0, align 4
@term_type = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"redraw\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"term_charset\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"big5\00", align 1

; Function Attrs: nounwind uwtable
define i32 @term_get_size(i32*, i32*) #0 !dbg !29 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.winsize, align 2
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !33, metadata !34), !dbg !35
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !36, metadata !34), !dbg !37
  call void @llvm.dbg.declare(metadata %struct.winsize* %6, metadata !38, metadata !34), !dbg !47
  %7 = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21523, %struct.winsize* %6) #4, !dbg !48
  %8 = icmp slt i32 %7, 0, !dbg !50
  br i1 %8, label %9, label %10, !dbg !51

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !52
  br label %42, !dbg !52

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 0, !dbg !53
  %12 = load i16, i16* %11, align 2, !dbg !53
  %13 = zext i16 %12 to i32, !dbg !55
  %14 = icmp eq i32 %13, 0, !dbg !56
  br i1 %14, label %15, label %21, !dbg !57

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 1, !dbg !58
  %17 = load i16, i16* %16, align 2, !dbg !58
  %18 = zext i16 %17 to i32, !dbg !60
  %19 = icmp eq i32 %18, 0, !dbg !61
  br i1 %19, label %20, label %21, !dbg !62

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %3, align 4, !dbg !63
  br label %42, !dbg !63

; <label>:21:                                     ; preds = %15, %10
  %22 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 1, !dbg !64
  %23 = load i16, i16* %22, align 2, !dbg !64
  %24 = zext i16 %23 to i32, !dbg !65
  %25 = load i32*, i32** %4, align 8, !dbg !66
  store i32 %24, i32* %25, align 4, !dbg !67
  %26 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 0, !dbg !68
  %27 = load i16, i16* %26, align 2, !dbg !68
  %28 = zext i16 %27 to i32, !dbg !69
  %29 = load i32*, i32** %5, align 8, !dbg !70
  store i32 %28, i32* %29, align 4, !dbg !71
  %30 = load i32*, i32** %4, align 8, !dbg !72
  %31 = load i32, i32* %30, align 4, !dbg !74
  %32 = icmp slt i32 %31, 20, !dbg !75
  br i1 %32, label %33, label %35, !dbg !76

; <label>:33:                                     ; preds = %21
  %34 = load i32*, i32** %4, align 8, !dbg !77
  store i32 20, i32* %34, align 4, !dbg !78
  br label %35, !dbg !79

; <label>:35:                                     ; preds = %33, %21
  %36 = load i32*, i32** %5, align 8, !dbg !80
  %37 = load i32, i32* %36, align 4, !dbg !82
  %38 = icmp slt i32 %37, 1, !dbg !83
  br i1 %38, label %39, label %41, !dbg !84

; <label>:39:                                     ; preds = %35
  %40 = load i32*, i32** %5, align 8, !dbg !85
  store i32 1, i32* %40, align 4, !dbg !86
  br label %41, !dbg !87

; <label>:41:                                     ; preds = %39, %35
  store i32 1, i32* %3, align 4, !dbg !88
  br label %42, !dbg !88

; <label>:42:                                     ; preds = %41, %20, %9
  %43 = load i32, i32* %3, align 4, !dbg !89
  ret i32 %43, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

; Function Attrs: nounwind uwtable
define void @term_resize_dirty() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !93, metadata !34), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %2, metadata !95, metadata !34), !dbg !96
  %3 = load i32, i32* @resize_dirty, align 4, !dbg !97
  %4 = icmp ne i32 %3, 0, !dbg !97
  br i1 %4, label %6, label %5, !dbg !99

; <label>:5:                                      ; preds = %0
  br label %17, !dbg !100

; <label>:6:                                      ; preds = %0
  store i32 0, i32* @resize_dirty, align 4, !dbg !101
  %7 = call i32 @term_get_size(i32* %1, i32* %2), !dbg !102
  %8 = icmp ne i32 %7, 0, !dbg !102
  br i1 %8, label %10, label %9, !dbg !104

; <label>:9:                                      ; preds = %6
  store i32 -1, i32* %2, align 4, !dbg !105
  store i32 -1, i32* %1, align 4, !dbg !106
  br label %10, !dbg !107

; <label>:10:                                     ; preds = %9, %6
  %11 = load i32, i32* %1, align 4, !dbg !108
  %12 = load i32, i32* %2, align 4, !dbg !109
  call void @term_resize(i32 %11, i32 %12), !dbg !110
  %13 = load i32, i32* @term_width, align 4, !dbg !111
  %14 = load i32, i32* @term_height, align 4, !dbg !112
  call void @mainwindows_resize(i32 %13, i32 %14), !dbg !113
  %15 = load i32, i32* %1, align 4, !dbg !114
  %16 = load i32, i32* %2, align 4, !dbg !115
  call void @term_resize_final(i32 %15, i32 %16), !dbg !116
  br label %17, !dbg !117

; <label>:17:                                     ; preds = %10, %5
  ret void, !dbg !118
}

declare void @term_resize(i32, i32) #3

declare void @mainwindows_resize(i32, i32) #3

declare void @term_resize_final(i32, i32) #3

; Function Attrs: nounwind uwtable
define void @term_common_init() #0 !dbg !120 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !121, metadata !34), !dbg !125
  call void @llvm.dbg.declare(metadata %struct.sigaction* %2, metadata !126, metadata !34), !dbg !230
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !231
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !232
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !233
  store i32 0, i32* @force_colors, align 4, !dbg !234
  %3 = call i32 @term_has_colors(), !dbg !235
  %4 = icmp ne i32 %3, 0, !dbg !235
  br i1 %4, label %5, label %8, !dbg !236

; <label>:5:                                      ; preds = %0
  %6 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !237
  %7 = icmp ne i32 %6, 0, !dbg !239
  br label %8

; <label>:8:                                      ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !240
  store i32 %10, i32* @term_use_colors, align 4, !dbg !242
  store i32 0, i32* @term_use_colors24, align 4, !dbg !243
  call void @read_settings(), !dbg !244
  %11 = call i32 @g_get_charset(i8** %1), !dbg !245
  %12 = icmp ne i32 %11, 0, !dbg !245
  br i1 %12, label %13, label %14, !dbg !247

; <label>:13:                                     ; preds = %8
  store i32 1, i32* @term_type, align 4, !dbg !248
  call void @term_set_input_type(i32 1), !dbg !250
  br label %14, !dbg !251

; <label>:14:                                     ; preds = %13, %8
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @term_beep to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !252
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !253
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_resize to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !254
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_redraw to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !255
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1, !dbg !256
  %16 = call i32 @sigemptyset(%struct.__sigset_t* %15) #4, !dbg !257
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2, !dbg !258
  store i32 0, i32* %17, align 8, !dbg !259
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0, !dbg !260
  %19 = bitcast %union.anon* %18 to void (i32)**, !dbg !261
  store void (i32)* @sig_winch, void (i32)** %19, align 8, !dbg !262
  %20 = call i32 @sigaction(i32 28, %struct.sigaction* %2, %struct.sigaction* null) #4, !dbg !263
  ret void, !dbg !264
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #3

declare i32 @term_has_colors() #3

declare i32 @settings_get_bool(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !265 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !266, metadata !34), !dbg !267
  call void @llvm.dbg.declare(metadata i32* %2, metadata !268, metadata !34), !dbg !269
  %5 = load i32, i32* @term_use_colors, align 4, !dbg !270
  store i32 %5, i32* %2, align 4, !dbg !269
  call void @llvm.dbg.declare(metadata i32* %3, metadata !271, metadata !34), !dbg !272
  %6 = load i32, i32* @term_use_colors24, align 4, !dbg !273
  store i32 %6, i32* %3, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata i32* %4, metadata !274, metadata !34), !dbg !275
  %7 = load i32, i32* @term_type, align 4, !dbg !276
  store i32 %7, i32* %4, align 4, !dbg !275
  %8 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !277
  store i8* %8, i8** %1, align 8, !dbg !278
  %9 = load i8*, i8** %1, align 8, !dbg !279
  %10 = call i32 @g_ascii_strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)), !dbg !281
  %11 = icmp eq i32 %10, 0, !dbg !282
  br i1 %11, label %12, label %13, !dbg !283

; <label>:12:                                     ; preds = %0
  store i32 1, i32* @term_type, align 4, !dbg !284
  br label %20, !dbg !285

; <label>:13:                                     ; preds = %0
  %14 = load i8*, i8** %1, align 8, !dbg !286
  %15 = call i32 @g_ascii_strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)), !dbg !288
  %16 = icmp eq i32 %15, 0, !dbg !289
  br i1 %16, label %17, label %18, !dbg !290

; <label>:17:                                     ; preds = %13
  store i32 2, i32* @term_type, align 4, !dbg !291
  br label %19, !dbg !292

; <label>:18:                                     ; preds = %13
  store i32 0, i32* @term_type, align 4, !dbg !293
  br label %19

; <label>:19:                                     ; preds = %18, %17
  br label %20

; <label>:20:                                     ; preds = %19, %12
  %21 = load i32, i32* %4, align 4, !dbg !294
  %22 = load i32, i32* @term_type, align 4, !dbg !296
  %23 = icmp ne i32 %21, %22, !dbg !297
  br i1 %23, label %24, label %26, !dbg !298

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* @term_type, align 4, !dbg !299
  call void @term_set_input_type(i32 %25), !dbg !300
  br label %26, !dbg !300

; <label>:26:                                     ; preds = %24, %20
  %27 = load i32, i32* @force_colors, align 4, !dbg !301
  %28 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)), !dbg !303
  %29 = icmp ne i32 %27, %28, !dbg !304
  br i1 %29, label %30, label %33, !dbg !305

; <label>:30:                                     ; preds = %26
  %31 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)), !dbg !306
  store i32 %31, i32* @force_colors, align 4, !dbg !308
  %32 = load i32, i32* @force_colors, align 4, !dbg !309
  call void @term_force_colors(i32 %32), !dbg !310
  br label %33, !dbg !311

; <label>:33:                                     ; preds = %30, %26
  %34 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !312
  %35 = icmp ne i32 %34, 0, !dbg !312
  br i1 %35, label %36, label %44, !dbg !313

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* @force_colors, align 4, !dbg !314
  %38 = icmp ne i32 %37, 0, !dbg !314
  br i1 %38, label %42, label %39, !dbg !315

; <label>:39:                                     ; preds = %36
  %40 = call i32 @term_has_colors(), !dbg !316
  %41 = icmp ne i32 %40, 0, !dbg !318
  br label %42, !dbg !318

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i1 [ true, %36 ], [ %41, %39 ]
  br label %44

; <label>:44:                                     ; preds = %42, %33
  %45 = phi i1 [ false, %33 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32, !dbg !319
  store i32 %46, i32* @term_use_colors, align 4, !dbg !320
  store i32 0, i32* @term_use_colors24, align 4, !dbg !321
  %47 = load i32, i32* @term_use_colors, align 4, !dbg !322
  %48 = load i32, i32* %2, align 4, !dbg !324
  %49 = icmp ne i32 %47, %48, !dbg !325
  br i1 %49, label %54, label %50, !dbg !326

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* @term_use_colors24, align 4, !dbg !327
  %52 = load i32, i32* %3, align 4, !dbg !329
  %53 = icmp ne i32 %51, %52, !dbg !330
  br i1 %53, label %54, label %55, !dbg !331

; <label>:54:                                     ; preds = %50, %44
  call void @irssi_redraw(), !dbg !332
  br label %55, !dbg !332

; <label>:55:                                     ; preds = %54, %50
  ret void, !dbg !333
}

declare i32 @g_get_charset(i8**) #3

declare void @term_set_input_type(i32) #3

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

declare void @term_beep() #3

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @cmd_resize() #0 !dbg !334 {
  store i32 1, i32* @resize_dirty, align 4, !dbg !335
  call void @term_resize_dirty(), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: nounwind uwtable
define internal void @cmd_redraw() #0 !dbg !338 {
  call void @irssi_redraw(), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_winch(i32) #0 !dbg !341 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !342, metadata !34), !dbg !343
  call void @irssi_set_dirty(), !dbg !344
  store i32 1, i32* @resize_dirty, align 4, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

; Function Attrs: nounwind uwtable
define void @term_common_deinit() #0 !dbg !347 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_resize to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !348
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_redraw to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !349
  call void @signal_remove_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @term_beep to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !350
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !351
  ret void, !dbg !352
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

declare i8* @settings_get_str(i8*) #3

declare i32 @g_ascii_strcasecmp(i8*, i8*) #3

declare void @term_force_colors(i32) #3

declare void @irssi_redraw() #3

declare void @irssi_set_dirty() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !12)
!1 = !DIFile(filename: "line368-term.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !9, !9, !9, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13, !19, !20, !21, !22, !23, !24, !25}
!13 = distinct !DIGlobalVariable(name: "term_color256map", scope: !0, file: !14, line: 108, type: !15, isLocal: false, isDefinition: true, variable: [257 x i32]* @term_color256map)
!14 = !DIFile(filename: "term.c", directory: "/home/lichi/Desktop/irssi/task1")
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8224, align: 32, elements: !17)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !{!18}
!18 = !DISubrange(count: 257)
!19 = distinct !DIGlobalVariable(name: "term_width", scope: !0, file: !14, line: 37, type: !16, isLocal: false, isDefinition: true, variable: i32* @term_width)
!20 = distinct !DIGlobalVariable(name: "term_height", scope: !0, file: !14, line: 37, type: !16, isLocal: false, isDefinition: true, variable: i32* @term_height)
!21 = distinct !DIGlobalVariable(name: "term_use_colors", scope: !0, file: !14, line: 39, type: !16, isLocal: false, isDefinition: true, variable: i32* @term_use_colors)
!22 = distinct !DIGlobalVariable(name: "term_use_colors24", scope: !0, file: !14, line: 40, type: !16, isLocal: false, isDefinition: true, variable: i32* @term_use_colors24)
!23 = distinct !DIGlobalVariable(name: "term_type", scope: !0, file: !14, line: 41, type: !16, isLocal: false, isDefinition: true, variable: i32* @term_type)
!24 = distinct !DIGlobalVariable(name: "force_colors", scope: !0, file: !14, line: 43, type: !16, isLocal: true, isDefinition: true, variable: i32* @force_colors)
!25 = distinct !DIGlobalVariable(name: "resize_dirty", scope: !0, file: !14, line: 44, type: !16, isLocal: true, isDefinition: true, variable: i32* @resize_dirty)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!29 = distinct !DISubprogram(name: "term_get_size", scope: !14, file: !14, line: 46, type: !30, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{!16, !32, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!33 = !DILocalVariable(name: "width", arg: 1, scope: !29, file: !14, line: 46, type: !32)
!34 = !DIExpression()
!35 = !DILocation(line: 46, column: 24, scope: !29)
!36 = !DILocalVariable(name: "height", arg: 2, scope: !29, file: !14, line: 46, type: !32)
!37 = !DILocation(line: 46, column: 36, scope: !29)
!38 = !DILocalVariable(name: "ws", scope: !29, file: !14, line: 49, type: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !40, line: 27, size: 64, align: 16, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !{!42, !44, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !39, file: !40, line: 29, baseType: !43, size: 16, align: 16)
!43 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !39, file: !40, line: 30, baseType: !43, size: 16, align: 16, offset: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !39, file: !40, line: 31, baseType: !43, size: 16, align: 16, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !39, file: !40, line: 32, baseType: !43, size: 16, align: 16, offset: 48)
!47 = !DILocation(line: 49, column: 17, scope: !29)
!48 = !DILocation(line: 52, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !29, file: !14, line: 52, column: 6)
!50 = !DILocation(line: 52, column: 31, scope: !49)
!51 = !DILocation(line: 52, column: 6, scope: !29)
!52 = !DILocation(line: 53, column: 3, scope: !49)
!53 = !DILocation(line: 55, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !29, file: !14, line: 55, column: 6)
!55 = !DILocation(line: 55, column: 6, scope: !54)
!56 = !DILocation(line: 55, column: 16, scope: !54)
!57 = !DILocation(line: 55, column: 21, scope: !54)
!58 = !DILocation(line: 55, column: 27, scope: !59)
!59 = !DILexicalBlockFile(scope: !54, file: !14, discriminator: 1)
!60 = !DILocation(line: 55, column: 24, scope: !59)
!61 = !DILocation(line: 55, column: 34, scope: !59)
!62 = !DILocation(line: 55, column: 6, scope: !59)
!63 = !DILocation(line: 56, column: 3, scope: !54)
!64 = !DILocation(line: 58, column: 14, scope: !29)
!65 = !DILocation(line: 58, column: 11, scope: !29)
!66 = !DILocation(line: 58, column: 3, scope: !29)
!67 = !DILocation(line: 58, column: 9, scope: !29)
!68 = !DILocation(line: 59, column: 22, scope: !29)
!69 = !DILocation(line: 59, column: 19, scope: !29)
!70 = !DILocation(line: 59, column: 10, scope: !29)
!71 = !DILocation(line: 59, column: 17, scope: !29)
!72 = !DILocation(line: 61, column: 7, scope: !73)
!73 = distinct !DILexicalBlock(scope: !29, file: !14, line: 61, column: 6)
!74 = !DILocation(line: 61, column: 6, scope: !73)
!75 = !DILocation(line: 61, column: 13, scope: !73)
!76 = !DILocation(line: 61, column: 6, scope: !29)
!77 = !DILocation(line: 62, column: 4, scope: !73)
!78 = !DILocation(line: 62, column: 10, scope: !73)
!79 = !DILocation(line: 62, column: 3, scope: !73)
!80 = !DILocation(line: 63, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !29, file: !14, line: 63, column: 6)
!82 = !DILocation(line: 63, column: 6, scope: !81)
!83 = !DILocation(line: 63, column: 14, scope: !81)
!84 = !DILocation(line: 63, column: 6, scope: !29)
!85 = !DILocation(line: 64, column: 18, scope: !81)
!86 = !DILocation(line: 64, column: 25, scope: !81)
!87 = !DILocation(line: 64, column: 17, scope: !81)
!88 = !DILocation(line: 65, column: 2, scope: !29)
!89 = !DILocation(line: 69, column: 1, scope: !29)
!90 = distinct !DISubprogram(name: "term_resize_dirty", scope: !14, file: !14, line: 72, type: !91, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{null}
!93 = !DILocalVariable(name: "width", scope: !90, file: !14, line: 74, type: !16)
!94 = !DILocation(line: 74, column: 13, scope: !90)
!95 = !DILocalVariable(name: "height", scope: !90, file: !14, line: 74, type: !16)
!96 = !DILocation(line: 74, column: 20, scope: !90)
!97 = !DILocation(line: 76, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !14, line: 76, column: 6)
!99 = !DILocation(line: 76, column: 6, scope: !90)
!100 = !DILocation(line: 77, column: 3, scope: !98)
!101 = !DILocation(line: 79, column: 22, scope: !90)
!102 = !DILocation(line: 81, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !90, file: !14, line: 81, column: 6)
!104 = !DILocation(line: 81, column: 6, scope: !90)
!105 = !DILocation(line: 82, column: 18, scope: !103)
!106 = !DILocation(line: 82, column: 9, scope: !103)
!107 = !DILocation(line: 82, column: 3, scope: !103)
!108 = !DILocation(line: 84, column: 14, scope: !90)
!109 = !DILocation(line: 84, column: 21, scope: !90)
!110 = !DILocation(line: 84, column: 2, scope: !90)
!111 = !DILocation(line: 85, column: 21, scope: !90)
!112 = !DILocation(line: 85, column: 33, scope: !90)
!113 = !DILocation(line: 85, column: 2, scope: !90)
!114 = !DILocation(line: 86, column: 20, scope: !90)
!115 = !DILocation(line: 86, column: 27, scope: !90)
!116 = !DILocation(line: 86, column: 2, scope: !90)
!117 = !DILocation(line: 87, column: 1, scope: !90)
!118 = !DILocation(line: 87, column: 1, scope: !119)
!119 = !DILexicalBlockFile(scope: !90, file: !14, discriminator: 1)
!120 = distinct !DISubprogram(name: "term_common_init", scope: !14, file: !14, line: 164, type: !91, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!121 = !DILocalVariable(name: "dummy", scope: !120, file: !14, line: 166, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!125 = !DILocation(line: 166, column: 14, scope: !120)
!126 = !DILocalVariable(name: "act", scope: !120, file: !14, line: 168, type: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !128, line: 24, size: 1216, align: 64, elements: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/irssi/task1")
!129 = !{!130, !217, !227, !228}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !127, file: !128, line: 35, baseType: !131, size: 64, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !128, line: 28, size: 64, align: 64, elements: !132)
!132 = !{!133, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !131, file: !128, line: 31, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !135, line: 85, baseType: !136)
!135 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !16}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !131, file: !128, line: 33, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !16, !143, !11}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !145, line: 133, baseType: !146)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 62, size: 1024, align: 64, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !146, file: !145, line: 64, baseType: !16, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !146, file: !145, line: 65, baseType: !16, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !146, file: !145, line: 67, baseType: !16, size: 32, align: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !146, file: !145, line: 132, baseType: !152, size: 896, align: 64, offset: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !145, line: 69, size: 896, align: 64, elements: !153)
!153 = !{!154, !158, !167, !178, !184, !195, !206, !211}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !152, file: !145, line: 71, baseType: !155, size: 896, align: 32)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 896, align: 32, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 28)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !152, file: !145, line: 78, baseType: !159, size: 64, align: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 74, size: 64, align: 32, elements: !160)
!160 = !{!161, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !159, file: !145, line: 76, baseType: !162, size: 32, align: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !163, line: 133, baseType: !16)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !159, file: !145, line: 77, baseType: !165, size: 32, align: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !163, line: 125, baseType: !166)
!166 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !152, file: !145, line: 86, baseType: !168, size: 128, align: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 81, size: 128, align: 64, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !168, file: !145, line: 83, baseType: !16, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !168, file: !145, line: 84, baseType: !16, size: 32, align: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !168, file: !145, line: 85, baseType: !173, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !145, line: 36, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !145, line: 32, size: 64, align: 64, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !174, file: !145, line: 34, baseType: !16, size: 32, align: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !174, file: !145, line: 35, baseType: !11, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !152, file: !145, line: 94, baseType: !179, size: 128, align: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 89, size: 128, align: 64, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !179, file: !145, line: 91, baseType: !162, size: 32, align: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !179, file: !145, line: 92, baseType: !165, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !179, file: !145, line: 93, baseType: !173, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !152, file: !145, line: 104, baseType: !185, size: 256, align: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 97, size: 256, align: 64, elements: !186)
!186 = !{!187, !188, !189, !190, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !185, file: !145, line: 99, baseType: !162, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !185, file: !145, line: 100, baseType: !165, size: 32, align: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !185, file: !145, line: 101, baseType: !16, size: 32, align: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !185, file: !145, line: 102, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !145, line: 58, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !163, line: 135, baseType: !193)
!193 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !185, file: !145, line: 103, baseType: !191, size: 64, align: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !152, file: !145, line: 116, baseType: !196, size: 256, align: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 107, size: 256, align: 64, elements: !197)
!197 = !{!198, !199, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !196, file: !145, line: 109, baseType: !11, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !196, file: !145, line: 110, baseType: !200, size: 16, align: 16, offset: 64)
!200 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !196, file: !145, line: 115, baseType: !202, size: 128, align: 64, offset: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !145, line: 111, size: 128, align: 64, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !202, file: !145, line: 113, baseType: !11, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !202, file: !145, line: 114, baseType: !11, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !152, file: !145, line: 123, baseType: !207, size: 128, align: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 119, size: 128, align: 64, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !207, file: !145, line: 121, baseType: !193, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !207, file: !145, line: 122, baseType: !16, size: 32, align: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !152, file: !145, line: 131, baseType: !212, size: 128, align: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !145, line: 126, size: 128, align: 64, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !212, file: !145, line: 128, baseType: !11, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !212, file: !145, line: 129, baseType: !16, size: 32, align: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !212, file: !145, line: 130, baseType: !166, size: 32, align: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !127, file: !128, line: 43, baseType: !218, size: 1024, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !219, line: 30, baseType: !220)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/irssi/task1")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 27, size: 1024, align: 64, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !220, file: !219, line: 29, baseType: !223, size: 1024, align: 64)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, align: 64, elements: !225)
!224 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!225 = !{!226}
!226 = !DISubrange(count: 16)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !127, file: !128, line: 46, baseType: !16, size: 32, align: 32, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !127, file: !128, line: 49, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!230 = !DILocation(line: 168, column: 19, scope: !120)
!231 = !DILocation(line: 170, column: 2, scope: !120)
!232 = !DILocation(line: 171, column: 2, scope: !120)
!233 = !DILocation(line: 172, column: 9, scope: !120)
!234 = !DILocation(line: 174, column: 15, scope: !120)
!235 = !DILocation(line: 175, column: 20, scope: !120)
!236 = !DILocation(line: 175, column: 38, scope: !120)
!237 = !DILocation(line: 175, column: 41, scope: !238)
!238 = !DILexicalBlockFile(scope: !120, file: !14, discriminator: 1)
!239 = !DILocation(line: 175, column: 38, scope: !238)
!240 = !DILocation(line: 175, column: 38, scope: !241)
!241 = !DILexicalBlockFile(scope: !120, file: !14, discriminator: 2)
!242 = !DILocation(line: 175, column: 18, scope: !241)
!243 = !DILocation(line: 180, column: 20, scope: !120)
!244 = !DILocation(line: 182, column: 9, scope: !120)
!245 = !DILocation(line: 184, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !120, file: !14, line: 184, column: 6)
!247 = !DILocation(line: 184, column: 6, scope: !120)
!248 = !DILocation(line: 185, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !14, line: 184, column: 29)
!250 = !DILocation(line: 186, column: 3, scope: !249)
!251 = !DILocation(line: 187, column: 2, scope: !249)
!252 = !DILocation(line: 189, column: 2, scope: !120)
!253 = !DILocation(line: 190, column: 2, scope: !120)
!254 = !DILocation(line: 191, column: 2, scope: !120)
!255 = !DILocation(line: 192, column: 2, scope: !120)
!256 = !DILocation(line: 195, column: 20, scope: !120)
!257 = !DILocation(line: 195, column: 2, scope: !120)
!258 = !DILocation(line: 196, column: 6, scope: !120)
!259 = !DILocation(line: 196, column: 15, scope: !120)
!260 = !DILocation(line: 197, column: 5, scope: !120)
!261 = !DILocation(line: 197, column: 25, scope: !120)
!262 = !DILocation(line: 197, column: 16, scope: !120)
!263 = !DILocation(line: 198, column: 2, scope: !120)
!264 = !DILocation(line: 200, column: 1, scope: !120)
!265 = distinct !DISubprogram(name: "read_settings", scope: !14, file: !14, line: 125, type: !91, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!266 = !DILocalVariable(name: "str", scope: !265, file: !14, line: 127, type: !122)
!267 = !DILocation(line: 127, column: 21, scope: !265)
!268 = !DILocalVariable(name: "old_colors", scope: !265, file: !14, line: 128, type: !16)
!269 = !DILocation(line: 128, column: 6, scope: !265)
!270 = !DILocation(line: 128, column: 19, scope: !265)
!271 = !DILocalVariable(name: "old_colors24", scope: !265, file: !14, line: 129, type: !16)
!272 = !DILocation(line: 129, column: 6, scope: !265)
!273 = !DILocation(line: 129, column: 21, scope: !265)
!274 = !DILocalVariable(name: "old_type", scope: !265, file: !14, line: 130, type: !16)
!275 = !DILocation(line: 130, column: 13, scope: !265)
!276 = !DILocation(line: 130, column: 24, scope: !265)
!277 = !DILocation(line: 133, column: 8, scope: !265)
!278 = !DILocation(line: 133, column: 6, scope: !265)
!279 = !DILocation(line: 134, column: 25, scope: !280)
!280 = distinct !DILexicalBlock(scope: !265, file: !14, line: 134, column: 6)
!281 = !DILocation(line: 134, column: 6, scope: !280)
!282 = !DILocation(line: 134, column: 39, scope: !280)
!283 = !DILocation(line: 134, column: 6, scope: !265)
!284 = !DILocation(line: 135, column: 13, scope: !280)
!285 = !DILocation(line: 135, column: 3, scope: !280)
!286 = !DILocation(line: 136, column: 30, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !14, line: 136, column: 11)
!288 = !DILocation(line: 136, column: 11, scope: !287)
!289 = !DILocation(line: 136, column: 43, scope: !287)
!290 = !DILocation(line: 136, column: 11, scope: !280)
!291 = !DILocation(line: 137, column: 13, scope: !287)
!292 = !DILocation(line: 137, column: 3, scope: !287)
!293 = !DILocation(line: 139, column: 13, scope: !287)
!294 = !DILocation(line: 141, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !265, file: !14, line: 141, column: 6)
!296 = !DILocation(line: 141, column: 18, scope: !295)
!297 = !DILocation(line: 141, column: 15, scope: !295)
!298 = !DILocation(line: 141, column: 6, scope: !265)
!299 = !DILocation(line: 142, column: 37, scope: !295)
!300 = !DILocation(line: 142, column: 17, scope: !295)
!301 = !DILocation(line: 145, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !265, file: !14, line: 145, column: 6)
!303 = !DILocation(line: 145, column: 22, scope: !302)
!304 = !DILocation(line: 145, column: 19, scope: !302)
!305 = !DILocation(line: 145, column: 6, scope: !265)
!306 = !DILocation(line: 146, column: 18, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !14, line: 145, column: 62)
!308 = !DILocation(line: 146, column: 16, scope: !307)
!309 = !DILocation(line: 147, column: 21, scope: !307)
!310 = !DILocation(line: 147, column: 3, scope: !307)
!311 = !DILocation(line: 148, column: 2, scope: !307)
!312 = !DILocation(line: 150, column: 20, scope: !265)
!313 = !DILocation(line: 150, column: 48, scope: !265)
!314 = !DILocation(line: 151, column: 4, scope: !265)
!315 = !DILocation(line: 151, column: 17, scope: !265)
!316 = !DILocation(line: 151, column: 20, scope: !317)
!317 = !DILexicalBlockFile(scope: !265, file: !14, discriminator: 1)
!318 = !DILocation(line: 151, column: 17, scope: !317)
!319 = !DILocation(line: 150, column: 48, scope: !317)
!320 = !DILocation(line: 150, column: 18, scope: !317)
!321 = !DILocation(line: 157, column: 20, scope: !265)
!322 = !DILocation(line: 160, column: 6, scope: !323)
!323 = distinct !DILexicalBlock(scope: !265, file: !14, line: 160, column: 6)
!324 = !DILocation(line: 160, column: 25, scope: !323)
!325 = !DILocation(line: 160, column: 22, scope: !323)
!326 = !DILocation(line: 160, column: 36, scope: !323)
!327 = !DILocation(line: 160, column: 39, scope: !328)
!328 = !DILexicalBlockFile(scope: !323, file: !14, discriminator: 1)
!329 = !DILocation(line: 160, column: 60, scope: !328)
!330 = !DILocation(line: 160, column: 57, scope: !328)
!331 = !DILocation(line: 160, column: 6, scope: !328)
!332 = !DILocation(line: 161, column: 3, scope: !323)
!333 = !DILocation(line: 162, column: 1, scope: !265)
!334 = distinct !DISubprogram(name: "cmd_resize", scope: !14, file: !14, line: 97, type: !91, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!335 = !DILocation(line: 99, column: 15, scope: !334)
!336 = !DILocation(line: 100, column: 9, scope: !334)
!337 = !DILocation(line: 101, column: 1, scope: !334)
!338 = distinct !DISubprogram(name: "cmd_redraw", scope: !14, file: !14, line: 103, type: !91, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!339 = !DILocation(line: 105, column: 2, scope: !338)
!340 = !DILocation(line: 106, column: 1, scope: !338)
!341 = distinct !DISubprogram(name: "sig_winch", scope: !14, file: !14, line: 90, type: !137, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!342 = !DILocalVariable(name: "p", arg: 1, scope: !341, file: !14, line: 90, type: !16)
!343 = !DILocation(line: 90, column: 27, scope: !341)
!344 = !DILocation(line: 92, column: 9, scope: !341)
!345 = !DILocation(line: 93, column: 22, scope: !341)
!346 = !DILocation(line: 94, column: 1, scope: !341)
!347 = distinct !DISubprogram(name: "term_common_deinit", scope: !14, file: !14, line: 202, type: !91, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!348 = !DILocation(line: 204, column: 2, scope: !347)
!349 = !DILocation(line: 205, column: 2, scope: !347)
!350 = !DILocation(line: 206, column: 2, scope: !347)
!351 = !DILocation(line: 207, column: 2, scope: !347)
!352 = !DILocation(line: 208, column: 1, scope: !347)
