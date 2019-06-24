; ModuleID = './[inter]ewmhints.o.i'
source_filename = "./[inter]ewmhints.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._XDisplay = type opaque
%struct.anon = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct._XrmHashBucketRec = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XGC = type opaque
%union._XEvent = type { [24 x i64] }
%struct.XClientMessageEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i32, %union.anon }
%union.anon = type { [5 x i64] }

@g_display = external global %struct._XDisplay*, align 8
@.str = private unnamed_addr constant [14 x i8] c"_NET_WORKAREA\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"get_current_workarea(),_NET_WORKAREA has bad length\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_VERT\00", align 1
@g_net_wm_state_maximized_vert_atom = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_HORZ\00", align 1
@g_net_wm_state_maximized_horz_atom = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"_NET_WM_STATE_HIDDEN\00", align 1
@g_net_wm_state_hidden_atom = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"_NET_WM_STATE_SKIP_TASKBAR\00", align 1
@g_net_wm_state_skip_taskbar_atom = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_SKIP_PAGER\00", align 1
@g_net_wm_state_skip_pager_atom = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_MODAL\00", align 1
@g_net_wm_state_modal_atom = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_ABOVE\00", align 1
@g_net_wm_state_above_atom = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@g_net_wm_state_atom = common global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"_NET_WM_DESKTOP\00", align 1
@g_net_wm_desktop_atom = common global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"_NET_WM_NAME\00", align 1
@g_net_wm_name_atom = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"_NET_WM_ICON\00", align 1
@g_net_wm_icon_atom = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"_NET_WM_PID\00", align 1
@g_net_wm_pid_atom = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"_NET_WM_PING\00", align 1
@g_net_wm_ping_atom = common global i64 0, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@g_utf8_string_atom = internal global i64 0, align 8
@.str.16 = private unnamed_addr constant [58 x i8] c"ewmh_get_window_desktop(), _NET_WM_DESKTOP has bad length\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"get_property_value(), atom '%s' does not exist\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"get_property_value(), XGetWindowProperty failed\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"get_property_value(), window is missing atom '%s'\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"get_property_value(), atom '%s' is too big for me\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"get_property_value(), atom '%s' has bad format\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"_NET_CURRENT_DESKTOP\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"get_current_desktop(), _NET_CURRENT_DESKTOP has bad length\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"WM_STATE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_current_workarea(i32*, i32*, i32*, i32*) #0 !dbg !190 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !194, metadata !195), !dbg !196
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !197, metadata !195), !dbg !198
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !199, metadata !195), !dbg !200
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !201, metadata !195), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %10, metadata !203, metadata !195), !dbg !204
  call void @llvm.dbg.declare(metadata i64* %11, metadata !205, metadata !195), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %12, metadata !207, metadata !195), !dbg !208
  call void @llvm.dbg.declare(metadata i64** %13, metadata !209, metadata !195), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %14, metadata !211, metadata !195), !dbg !213
  store i32 0, i32* %14, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %15, metadata !214, metadata !195), !dbg !215
  store i32 1, i32* %15, align 4, !dbg !215
  call void @llvm.dbg.declare(metadata i32* %16, metadata !216, metadata !195), !dbg !217
  store i32 2, i32* %16, align 4, !dbg !217
  call void @llvm.dbg.declare(metadata i32* %17, metadata !218, metadata !195), !dbg !219
  store i32 3, i32* %17, align 4, !dbg !219
  call void @llvm.dbg.declare(metadata i32* %18, metadata !220, metadata !195), !dbg !221
  store i32 128, i32* %18, align 4, !dbg !221
  %19 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !222
  %20 = bitcast %struct._XDisplay* %19 to %struct.anon*, !dbg !224
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 33, !dbg !224
  %22 = load i32, i32* %21, align 8, !dbg !224
  %23 = sext i32 %22 to i64, !dbg !224
  %24 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !222
  %25 = bitcast %struct._XDisplay* %24 to %struct.anon*, !dbg !224
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 35, !dbg !224
  %27 = load %struct.Screen*, %struct.Screen** %26, align 8, !dbg !224
  %28 = getelementptr inbounds %struct.Screen, %struct.Screen* %27, i64 %23, !dbg !224
  %29 = getelementptr inbounds %struct.Screen, %struct.Screen* %28, i32 0, i32 2, !dbg !225
  %30 = load i64, i64* %29, align 8, !dbg !225
  %31 = call i32 @get_property_value(i64 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 128, i64* %11, i8** %12, i32 0), !dbg !226
  %32 = icmp slt i32 %31, 0, !dbg !227
  br i1 %32, label %33, label %34, !dbg !228

; <label>:33:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !229
  br label %85, !dbg !229

; <label>:34:                                     ; preds = %4
  %35 = load i64, i64* %11, align 8, !dbg !230
  %36 = urem i64 %35, 4, !dbg !232
  %37 = icmp ne i64 %36, 0, !dbg !232
  br i1 %37, label %38, label %39, !dbg !233

; <label>:38:                                     ; preds = %34
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0)), !dbg !234
  store i32 -1, i32* %5, align 4, !dbg !236
  br label %85, !dbg !236

; <label>:39:                                     ; preds = %34
  %40 = call i32 @get_current_desktop(), !dbg !237
  store i32 %40, i32* %10, align 4, !dbg !238
  %41 = load i32, i32* %10, align 4, !dbg !239
  %42 = icmp slt i32 %41, 0, !dbg !241
  br i1 %42, label %43, label %44, !dbg !242

; <label>:43:                                     ; preds = %39
  store i32 -1, i32* %5, align 4, !dbg !243
  br label %85, !dbg !243

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %12, align 8, !dbg !244
  %46 = bitcast i8* %45 to i64*, !dbg !245
  store i64* %46, i64** %13, align 8, !dbg !246
  %47 = load i32, i32* %10, align 4, !dbg !247
  %48 = mul nsw i32 %47, 4, !dbg !248
  %49 = add i32 %48, 0, !dbg !249
  %50 = zext i32 %49 to i64, !dbg !250
  %51 = load i64*, i64** %13, align 8, !dbg !250
  %52 = getelementptr inbounds i64, i64* %51, i64 %50, !dbg !250
  %53 = load i64, i64* %52, align 8, !dbg !250
  %54 = trunc i64 %53 to i32, !dbg !250
  %55 = load i32*, i32** %6, align 8, !dbg !251
  store i32 %54, i32* %55, align 4, !dbg !252
  %56 = load i32, i32* %10, align 4, !dbg !253
  %57 = mul nsw i32 %56, 4, !dbg !254
  %58 = add i32 %57, 1, !dbg !255
  %59 = zext i32 %58 to i64, !dbg !256
  %60 = load i64*, i64** %13, align 8, !dbg !256
  %61 = getelementptr inbounds i64, i64* %60, i64 %59, !dbg !256
  %62 = load i64, i64* %61, align 8, !dbg !256
  %63 = trunc i64 %62 to i32, !dbg !256
  %64 = load i32*, i32** %7, align 8, !dbg !257
  store i32 %63, i32* %64, align 4, !dbg !258
  %65 = load i32, i32* %10, align 4, !dbg !259
  %66 = mul nsw i32 %65, 4, !dbg !260
  %67 = add i32 %66, 2, !dbg !261
  %68 = zext i32 %67 to i64, !dbg !262
  %69 = load i64*, i64** %13, align 8, !dbg !262
  %70 = getelementptr inbounds i64, i64* %69, i64 %68, !dbg !262
  %71 = load i64, i64* %70, align 8, !dbg !262
  %72 = trunc i64 %71 to i32, !dbg !262
  %73 = load i32*, i32** %8, align 8, !dbg !263
  store i32 %72, i32* %73, align 4, !dbg !264
  %74 = load i32, i32* %10, align 4, !dbg !265
  %75 = mul nsw i32 %74, 4, !dbg !266
  %76 = add i32 %75, 3, !dbg !267
  %77 = zext i32 %76 to i64, !dbg !268
  %78 = load i64*, i64** %13, align 8, !dbg !268
  %79 = getelementptr inbounds i64, i64* %78, i64 %77, !dbg !268
  %80 = load i64, i64* %79, align 8, !dbg !268
  %81 = trunc i64 %80 to i32, !dbg !268
  %82 = load i32*, i32** %9, align 8, !dbg !269
  store i32 %81, i32* %82, align 4, !dbg !270
  %83 = load i8*, i8** %12, align 8, !dbg !271
  %84 = call i32 @XFree(i8* %83), !dbg !272
  store i32 0, i32* %5, align 4, !dbg !273
  br label %85, !dbg !273

; <label>:85:                                     ; preds = %44, %43, %38, %33
  %86 = load i32, i32* %5, align 4, !dbg !274
  ret i32 %86, !dbg !274
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_property_value(i64, i8*, i64, i64*, i8**, i32) #0 !dbg !275 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !279, metadata !195), !dbg !280
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !281, metadata !195), !dbg !282
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !283, metadata !195), !dbg !284
  store i64* %3, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !285, metadata !195), !dbg !286
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !287, metadata !195), !dbg !288
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !289, metadata !195), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %14, metadata !291, metadata !195), !dbg !292
  call void @llvm.dbg.declare(metadata i64* %15, metadata !293, metadata !195), !dbg !294
  call void @llvm.dbg.declare(metadata i64* %16, metadata !295, metadata !195), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %17, metadata !297, metadata !195), !dbg !298
  call void @llvm.dbg.declare(metadata i64* %18, metadata !299, metadata !195), !dbg !300
  %19 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !301
  %20 = load i8*, i8** %9, align 8, !dbg !302
  %21 = call i64 @XInternAtom(%struct._XDisplay* %19, i8* %20, i32 1), !dbg !303
  store i64 %21, i64* %15, align 8, !dbg !304
  %22 = load i64, i64* %15, align 8, !dbg !305
  %23 = icmp eq i64 %22, 0, !dbg !307
  br i1 %23, label %24, label %26, !dbg !308

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %9, align 8, !dbg !309
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i8* %25), !dbg !311
  store i32 -1, i32* %7, align 4, !dbg !312
  br label %60, !dbg !312

; <label>:26:                                     ; preds = %6
  %27 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !313
  %28 = load i64, i64* %8, align 8, !dbg !314
  %29 = load i64, i64* %15, align 8, !dbg !315
  %30 = load i64, i64* %10, align 8, !dbg !316
  %31 = load i64*, i64** %11, align 8, !dbg !317
  %32 = load i8**, i8*** %12, align 8, !dbg !318
  %33 = call i32 @XGetWindowProperty(%struct._XDisplay* %27, i64 %28, i64 %29, i64 0, i64 %30, i32 0, i64 0, i64* %16, i32* %17, i64* %31, i64* %18, i8** %32), !dbg !319
  store i32 %33, i32* %14, align 4, !dbg !320
  %34 = load i32, i32* %14, align 4, !dbg !321
  %35 = icmp ne i32 %34, 0, !dbg !323
  br i1 %35, label %36, label %37, !dbg !324

; <label>:36:                                     ; preds = %26
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0)), !dbg !325
  store i32 -1, i32* %7, align 4, !dbg !327
  br label %60, !dbg !327

; <label>:37:                                     ; preds = %26
  %38 = load i64, i64* %16, align 8, !dbg !328
  %39 = icmp eq i64 %38, 0, !dbg !330
  br i1 %39, label %43, label %40, !dbg !331

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %17, align 4, !dbg !332
  %42 = icmp eq i32 %41, 0, !dbg !334
  br i1 %42, label %43, label %49, !dbg !335

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32, i32* %13, align 4, !dbg !336
  %45 = icmp ne i32 %44, 0, !dbg !336
  br i1 %45, label %48, label %46, !dbg !339

; <label>:46:                                     ; preds = %43
  %47 = load i8*, i8** %9, align 8, !dbg !340
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0), i8* %47), !dbg !341
  br label %48, !dbg !341

; <label>:48:                                     ; preds = %46, %43
  store i32 -1, i32* %7, align 4, !dbg !342
  br label %60, !dbg !342

; <label>:49:                                     ; preds = %40
  %50 = load i64, i64* %18, align 8, !dbg !343
  %51 = icmp ne i64 %50, 0, !dbg !343
  br i1 %51, label %52, label %54, !dbg !345

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %9, align 8, !dbg !346
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0), i8* %53), !dbg !348
  store i32 -1, i32* %7, align 4, !dbg !349
  br label %60, !dbg !349

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %17, align 4, !dbg !350
  %56 = icmp ne i32 %55, 32, !dbg !352
  br i1 %56, label %57, label %59, !dbg !353

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %9, align 8, !dbg !354
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0), i8* %58), !dbg !356
  store i32 -1, i32* %7, align 4, !dbg !357
  br label %60, !dbg !357

; <label>:59:                                     ; preds = %54
  store i32 0, i32* %7, align 4, !dbg !358
  br label %60, !dbg !358

; <label>:60:                                     ; preds = %59, %57, %52, %48, %36, %24
  %61 = load i32, i32* %7, align 4, !dbg !359
  ret i32 %61, !dbg !359
}

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_current_desktop() #0 !dbg !360 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !363, metadata !195), !dbg !364
  call void @llvm.dbg.declare(metadata i8** %3, metadata !365, metadata !195), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %4, metadata !367, metadata !195), !dbg !368
  %5 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !369
  %6 = bitcast %struct._XDisplay* %5 to %struct.anon*, !dbg !371
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 33, !dbg !371
  %8 = load i32, i32* %7, align 8, !dbg !371
  %9 = sext i32 %8 to i64, !dbg !371
  %10 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !369
  %11 = bitcast %struct._XDisplay* %10 to %struct.anon*, !dbg !371
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 35, !dbg !371
  %13 = load %struct.Screen*, %struct.Screen** %12, align 8, !dbg !371
  %14 = getelementptr inbounds %struct.Screen, %struct.Screen* %13, i64 %9, !dbg !371
  %15 = getelementptr inbounds %struct.Screen, %struct.Screen* %14, i32 0, i32 2, !dbg !372
  %16 = load i64, i64* %15, align 8, !dbg !372
  %17 = call i32 @get_property_value(i64 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i64 1, i64* %2, i8** %3, i32 0), !dbg !373
  %18 = icmp slt i32 %17, 0, !dbg !374
  br i1 %18, label %19, label %20, !dbg !375

; <label>:19:                                     ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !376
  br label %31, !dbg !376

; <label>:20:                                     ; preds = %0
  %21 = load i64, i64* %2, align 8, !dbg !377
  %22 = icmp ne i64 %21, 1, !dbg !379
  br i1 %22, label %23, label %24, !dbg !380

; <label>:23:                                     ; preds = %20
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0)), !dbg !381
  store i32 -1, i32* %1, align 4, !dbg !383
  br label %31, !dbg !383

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %3, align 8, !dbg !384
  %26 = load i8, i8* %25, align 1, !dbg !385
  %27 = zext i8 %26 to i32, !dbg !385
  store i32 %27, i32* %4, align 4, !dbg !386
  %28 = load i8*, i8** %3, align 8, !dbg !387
  %29 = call i32 @XFree(i8* %28), !dbg !388
  %30 = load i32, i32* %4, align 4, !dbg !389
  store i32 %30, i32* %1, align 4, !dbg !390
  br label %31, !dbg !390

; <label>:31:                                     ; preds = %24, %23, %19
  %32 = load i32, i32* %1, align 4, !dbg !391
  ret i32 %32, !dbg !391
}

declare i32 @XFree(i8*) #2

; Function Attrs: nounwind uwtable
define void @ewmh_init() #0 !dbg !392 {
  %1 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !395
  %2 = call i64 @XInternAtom(%struct._XDisplay* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !396
  store i64 %2, i64* @g_net_wm_state_maximized_vert_atom, align 8, !dbg !397
  %3 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !398
  %4 = call i64 @XInternAtom(%struct._XDisplay* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !399
  store i64 %4, i64* @g_net_wm_state_maximized_horz_atom, align 8, !dbg !400
  %5 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !401
  %6 = call i64 @XInternAtom(%struct._XDisplay* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !402
  store i64 %6, i64* @g_net_wm_state_hidden_atom, align 8, !dbg !403
  %7 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !404
  %8 = call i64 @XInternAtom(%struct._XDisplay* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 0), !dbg !405
  store i64 %8, i64* @g_net_wm_state_skip_taskbar_atom, align 8, !dbg !406
  %9 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !407
  %10 = call i64 @XInternAtom(%struct._XDisplay* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 0), !dbg !408
  store i64 %10, i64* @g_net_wm_state_skip_pager_atom, align 8, !dbg !409
  %11 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !410
  %12 = call i64 @XInternAtom(%struct._XDisplay* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0), !dbg !411
  store i64 %12, i64* @g_net_wm_state_modal_atom, align 8, !dbg !412
  %13 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !413
  %14 = call i64 @XInternAtom(%struct._XDisplay* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 0), !dbg !414
  store i64 %14, i64* @g_net_wm_state_above_atom, align 8, !dbg !415
  %15 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !416
  %16 = call i64 @XInternAtom(%struct._XDisplay* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 0), !dbg !417
  store i64 %16, i64* @g_net_wm_state_atom, align 8, !dbg !418
  %17 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !419
  %18 = call i64 @XInternAtom(%struct._XDisplay* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !420
  store i64 %18, i64* @g_net_wm_desktop_atom, align 8, !dbg !421
  %19 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !422
  %20 = call i64 @XInternAtom(%struct._XDisplay* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 0), !dbg !423
  store i64 %20, i64* @g_net_wm_name_atom, align 8, !dbg !424
  %21 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !425
  %22 = call i64 @XInternAtom(%struct._XDisplay* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !426
  store i64 %22, i64* @g_net_wm_icon_atom, align 8, !dbg !427
  %23 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !428
  %24 = call i64 @XInternAtom(%struct._XDisplay* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !429
  store i64 %24, i64* @g_net_wm_pid_atom, align 8, !dbg !430
  %25 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !431
  %26 = call i64 @XInternAtom(%struct._XDisplay* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !432
  store i64 %26, i64* @g_net_wm_ping_atom, align 8, !dbg !433
  %27 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !434
  %28 = call i64 @XInternAtom(%struct._XDisplay* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !435
  store i64 %28, i64* @g_utf8_string_atom, align 8, !dbg !436
  ret void, !dbg !437
}

declare i64 @XInternAtom(%struct._XDisplay*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ewmh_get_window_state(i64) #0 !dbg !438 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !441, metadata !195), !dbg !442
  call void @llvm.dbg.declare(metadata i64* %4, metadata !443, metadata !195), !dbg !444
  call void @llvm.dbg.declare(metadata i8** %5, metadata !445, metadata !195), !dbg !446
  call void @llvm.dbg.declare(metadata i64** %6, metadata !447, metadata !195), !dbg !448
  call void @llvm.dbg.declare(metadata i64* %7, metadata !449, metadata !195), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %8, metadata !451, metadata !195), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %9, metadata !454, metadata !195), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %10, metadata !456, metadata !195), !dbg !457
  store i32 0, i32* %10, align 4, !dbg !458
  store i32 0, i32* %9, align 4, !dbg !459
  store i32 0, i32* %8, align 4, !dbg !460
  %11 = load i64, i64* %3, align 8, !dbg !461
  %12 = call i32 @get_property_value(i64 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i64 64, i64* %4, i8** %5, i32 0), !dbg !463
  %13 = icmp slt i32 %12, 0, !dbg !464
  br i1 %13, label %14, label %15, !dbg !465

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !466
  br label %64, !dbg !466

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %5, align 8, !dbg !467
  %17 = bitcast i8* %16 to i64*, !dbg !468
  store i64* %17, i64** %6, align 8, !dbg !469
  store i64 0, i64* %7, align 8, !dbg !470
  br label %18, !dbg !472

; <label>:18:                                     ; preds = %47, %15
  %19 = load i64, i64* %7, align 8, !dbg !473
  %20 = load i64, i64* %4, align 8, !dbg !476
  %21 = icmp ult i64 %19, %20, !dbg !477
  br i1 %21, label %22, label %50, !dbg !478

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* %7, align 8, !dbg !479
  %24 = load i64*, i64** %6, align 8, !dbg !482
  %25 = getelementptr inbounds i64, i64* %24, i64 %23, !dbg !482
  %26 = load i64, i64* %25, align 8, !dbg !482
  %27 = load i64, i64* @g_net_wm_state_maximized_vert_atom, align 8, !dbg !483
  %28 = icmp eq i64 %26, %27, !dbg !484
  br i1 %28, label %29, label %30, !dbg !485

; <label>:29:                                     ; preds = %22
  store i32 1, i32* %8, align 4, !dbg !486
  br label %30, !dbg !487

; <label>:30:                                     ; preds = %29, %22
  %31 = load i64, i64* %7, align 8, !dbg !488
  %32 = load i64*, i64** %6, align 8, !dbg !490
  %33 = getelementptr inbounds i64, i64* %32, i64 %31, !dbg !490
  %34 = load i64, i64* %33, align 8, !dbg !490
  %35 = load i64, i64* @g_net_wm_state_maximized_horz_atom, align 8, !dbg !491
  %36 = icmp eq i64 %34, %35, !dbg !492
  br i1 %36, label %37, label %38, !dbg !493

; <label>:37:                                     ; preds = %30
  store i32 1, i32* %9, align 4, !dbg !494
  br label %38, !dbg !495

; <label>:38:                                     ; preds = %37, %30
  %39 = load i64, i64* %7, align 8, !dbg !496
  %40 = load i64*, i64** %6, align 8, !dbg !498
  %41 = getelementptr inbounds i64, i64* %40, i64 %39, !dbg !498
  %42 = load i64, i64* %41, align 8, !dbg !498
  %43 = load i64, i64* @g_net_wm_state_hidden_atom, align 8, !dbg !499
  %44 = icmp eq i64 %42, %43, !dbg !500
  br i1 %44, label %45, label %46, !dbg !501

; <label>:45:                                     ; preds = %38
  store i32 1, i32* %10, align 4, !dbg !502
  br label %46, !dbg !503

; <label>:46:                                     ; preds = %45, %38
  br label %47, !dbg !504

; <label>:47:                                     ; preds = %46
  %48 = load i64, i64* %7, align 8, !dbg !505
  %49 = add i64 %48, 1, !dbg !505
  store i64 %49, i64* %7, align 8, !dbg !505
  br label %18, !dbg !507, !llvm.loop !508

; <label>:50:                                     ; preds = %18
  %51 = load i8*, i8** %5, align 8, !dbg !510
  %52 = call i32 @XFree(i8* %51), !dbg !511
  %53 = load i32, i32* %10, align 4, !dbg !512
  %54 = icmp ne i32 %53, 0, !dbg !512
  br i1 %54, label %55, label %56, !dbg !514

; <label>:55:                                     ; preds = %50
  store i32 1, i32* %2, align 4, !dbg !515
  br label %64, !dbg !515

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %8, align 4, !dbg !516
  %58 = icmp ne i32 %57, 0, !dbg !516
  br i1 %58, label %59, label %63, !dbg !518

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %9, align 4, !dbg !519
  %61 = icmp ne i32 %60, 0, !dbg !519
  br i1 %61, label %62, label %63, !dbg !521

; <label>:62:                                     ; preds = %59
  store i32 2, i32* %2, align 4, !dbg !522
  br label %64, !dbg !522

; <label>:63:                                     ; preds = %59, %56
  store i32 0, i32* %2, align 4, !dbg !523
  br label %64, !dbg !523

; <label>:64:                                     ; preds = %63, %62, %55, %14
  %65 = load i32, i32* %2, align 4, !dbg !524
  ret i32 %65, !dbg !524
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_change_state(i64, i32) #0 !dbg !525 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !528, metadata !195), !dbg !529
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !530, metadata !195), !dbg !531
  %6 = load i32, i32* %5, align 4, !dbg !532
  %7 = icmp eq i32 %6, 2, !dbg !534
  br i1 %7, label %8, label %16, !dbg !535

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !536
  %10 = load i64, i64* @g_net_wm_state_maximized_vert_atom, align 8, !dbg !539
  %11 = load i64, i64* @g_net_wm_state_maximized_horz_atom, align 8, !dbg !540
  %12 = call i32 @ewmh_modify_state(i64 %9, i32 1, i64 %10, i64 %11), !dbg !541
  %13 = icmp slt i32 %12, 0, !dbg !542
  br i1 %13, label %14, label %15, !dbg !543

; <label>:14:                                     ; preds = %8
  store i32 -1, i32* %3, align 4, !dbg !544
  br label %25, !dbg !544

; <label>:15:                                     ; preds = %8
  br label %24, !dbg !545

; <label>:16:                                     ; preds = %2
  %17 = load i64, i64* %4, align 8, !dbg !546
  %18 = load i64, i64* @g_net_wm_state_maximized_vert_atom, align 8, !dbg !549
  %19 = load i64, i64* @g_net_wm_state_maximized_horz_atom, align 8, !dbg !550
  %20 = call i32 @ewmh_modify_state(i64 %17, i32 0, i64 %18, i64 %19), !dbg !551
  %21 = icmp slt i32 %20, 0, !dbg !552
  br i1 %21, label %22, label %23, !dbg !553

; <label>:22:                                     ; preds = %16
  store i32 -1, i32* %3, align 4, !dbg !554
  br label %25, !dbg !554

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %15
  store i32 0, i32* %3, align 4, !dbg !555
  br label %25, !dbg !555

; <label>:25:                                     ; preds = %24, %22, %14
  %26 = load i32, i32* %3, align 4, !dbg !556
  ret i32 %26, !dbg !556
}

; Function Attrs: nounwind uwtable
define internal i32 @ewmh_modify_state(i64, i32, i64, i64) #0 !dbg !557 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union._XEvent, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2 x i64], align 16
  %18 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !560, metadata !195), !dbg !561
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !562, metadata !195), !dbg !563
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !564, metadata !195), !dbg !565
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !566, metadata !195), !dbg !567
  call void @llvm.dbg.declare(metadata i32* %10, metadata !568, metadata !195), !dbg !569
  call void @llvm.dbg.declare(metadata %union._XEvent* %11, metadata !570, metadata !195), !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1033, metadata !195), !dbg !1034
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1035, metadata !195), !dbg !1036
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1037, metadata !195), !dbg !1038
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1039, metadata !195), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1041, metadata !195), !dbg !1042
  store i32 0, i32* %16, align 4, !dbg !1042
  %19 = load i64, i64* %6, align 8, !dbg !1043
  %20 = call i32 @get_property_value(i64 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 64, i64* %14, i8** %15, i32 1), !dbg !1044
  store i32 %20, i32* %12, align 4, !dbg !1045
  %21 = load i32, i32* %12, align 4, !dbg !1046
  %22 = icmp sge i32 %21, 0, !dbg !1048
  br i1 %22, label %23, label %32, !dbg !1049

; <label>:23:                                     ; preds = %4
  %24 = load i64, i64* %14, align 8, !dbg !1050
  %25 = icmp ne i64 %24, 0, !dbg !1050
  br i1 %25, label %26, label %32, !dbg !1052

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %15, align 8, !dbg !1053
  %28 = bitcast i8* %27 to i32*, !dbg !1055
  %29 = load i32, i32* %28, align 4, !dbg !1055
  store i32 %29, i32* %16, align 4, !dbg !1056
  %30 = load i8*, i8** %15, align 8, !dbg !1057
  %31 = call i32 @XFree(i8* %30), !dbg !1058
  br label %32, !dbg !1059

; <label>:32:                                     ; preds = %26, %23, %4
  %33 = load i32, i32* %16, align 4, !dbg !1060
  %34 = icmp eq i32 %33, 0, !dbg !1062
  br i1 %34, label %35, label %125, !dbg !1063

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %7, align 4, !dbg !1064
  %37 = icmp ne i32 %36, 0, !dbg !1064
  br i1 %37, label %38, label %55, !dbg !1067

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata [2 x i64]* %17, metadata !1068, metadata !195), !dbg !1073
  %39 = load i64, i64* %8, align 8, !dbg !1074
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0, !dbg !1075
  store i64 %39, i64* %40, align 16, !dbg !1076
  store i64 1, i64* %14, align 8, !dbg !1077
  %41 = load i64, i64* %9, align 8, !dbg !1078
  %42 = icmp ne i64 %41, 0, !dbg !1078
  br i1 %42, label %43, label %46, !dbg !1080

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %9, align 8, !dbg !1081
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1, !dbg !1083
  store i64 %44, i64* %45, align 8, !dbg !1084
  store i64 2, i64* %14, align 8, !dbg !1085
  br label %46, !dbg !1086

; <label>:46:                                     ; preds = %43, %38
  %47 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1087
  %48 = load i64, i64* %6, align 8, !dbg !1088
  %49 = load i64, i64* @g_net_wm_state_atom, align 8, !dbg !1089
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i32 0, i32 0, !dbg !1090
  %51 = bitcast i64* %50 to i8*, !dbg !1091
  %52 = load i64, i64* %14, align 8, !dbg !1092
  %53 = trunc i64 %52 to i32, !dbg !1092
  %54 = call i32 @XChangeProperty(%struct._XDisplay* %47, i64 %48, i64 %49, i64 4, i32 32, i32 2, i8* %51, i32 %53), !dbg !1093
  br label %124, !dbg !1094

; <label>:55:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i64** %18, metadata !1095, metadata !195), !dbg !1097
  %56 = load i64, i64* %6, align 8, !dbg !1098
  %57 = call i32 @get_property_value(i64 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i64 64, i64* %14, i8** %15, i32 1), !dbg !1100
  %58 = icmp slt i32 %57, 0, !dbg !1101
  br i1 %58, label %59, label %60, !dbg !1102

; <label>:59:                                     ; preds = %55
  store i32 0, i32* %5, align 4, !dbg !1103
  br label %184, !dbg !1103

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %15, align 8, !dbg !1104
  %62 = bitcast i8* %61 to i64*, !dbg !1105
  store i64* %62, i64** %18, align 8, !dbg !1106
  store i64 0, i64* %13, align 8, !dbg !1107
  br label %63, !dbg !1109

; <label>:63:                                     ; preds = %110, %60
  %64 = load i64, i64* %13, align 8, !dbg !1110
  %65 = load i64, i64* %14, align 8, !dbg !1113
  %66 = icmp ult i64 %64, %65, !dbg !1114
  br i1 %66, label %67, label %113, !dbg !1115

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %13, align 8, !dbg !1116
  %69 = load i64*, i64** %18, align 8, !dbg !1119
  %70 = getelementptr inbounds i64, i64* %69, i64 %68, !dbg !1119
  %71 = load i64, i64* %70, align 8, !dbg !1119
  %72 = load i64, i64* %8, align 8, !dbg !1120
  %73 = icmp eq i64 %71, %72, !dbg !1121
  br i1 %73, label %84, label %74, !dbg !1122

; <label>:74:                                     ; preds = %67
  %75 = load i64, i64* %9, align 8, !dbg !1123
  %76 = icmp ne i64 %75, 0, !dbg !1123
  br i1 %76, label %77, label %109, !dbg !1125

; <label>:77:                                     ; preds = %74
  %78 = load i64, i64* %13, align 8, !dbg !1126
  %79 = load i64*, i64** %18, align 8, !dbg !1128
  %80 = getelementptr inbounds i64, i64* %79, i64 %78, !dbg !1128
  %81 = load i64, i64* %80, align 8, !dbg !1128
  %82 = load i64, i64* %9, align 8, !dbg !1129
  %83 = icmp eq i64 %81, %82, !dbg !1130
  br i1 %83, label %84, label %109, !dbg !1131

; <label>:84:                                     ; preds = %77, %67
  %85 = load i64, i64* %13, align 8, !dbg !1132
  %86 = load i64, i64* %14, align 8, !dbg !1135
  %87 = sub i64 %86, 1, !dbg !1136
  %88 = icmp ne i64 %85, %87, !dbg !1137
  br i1 %88, label %89, label %104, !dbg !1138

; <label>:89:                                     ; preds = %84
  %90 = load i64, i64* %13, align 8, !dbg !1139
  %91 = load i64*, i64** %18, align 8, !dbg !1140
  %92 = getelementptr inbounds i64, i64* %91, i64 %90, !dbg !1140
  %93 = bitcast i64* %92 to i8*, !dbg !1141
  %94 = load i64, i64* %13, align 8, !dbg !1142
  %95 = add i64 %94, 1, !dbg !1143
  %96 = load i64*, i64** %18, align 8, !dbg !1144
  %97 = getelementptr inbounds i64, i64* %96, i64 %95, !dbg !1144
  %98 = bitcast i64* %97 to i8*, !dbg !1141
  %99 = load i64, i64* %14, align 8, !dbg !1145
  %100 = load i64, i64* %13, align 8, !dbg !1146
  %101 = sub i64 %99, %100, !dbg !1147
  %102 = sub i64 %101, 1, !dbg !1148
  %103 = mul i64 8, %102, !dbg !1149
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %93, i8* %98, i64 %103, i32 8, i1 false), !dbg !1141
  br label %104, !dbg !1141

; <label>:104:                                    ; preds = %89, %84
  %105 = load i64, i64* %14, align 8, !dbg !1150
  %106 = add i64 %105, -1, !dbg !1150
  store i64 %106, i64* %14, align 8, !dbg !1150
  %107 = load i64, i64* %13, align 8, !dbg !1151
  %108 = add i64 %107, -1, !dbg !1151
  store i64 %108, i64* %13, align 8, !dbg !1151
  br label %109, !dbg !1152

; <label>:109:                                    ; preds = %104, %77, %74
  br label %110, !dbg !1153

; <label>:110:                                    ; preds = %109
  %111 = load i64, i64* %13, align 8, !dbg !1154
  %112 = add i64 %111, 1, !dbg !1154
  store i64 %112, i64* %13, align 8, !dbg !1154
  br label %63, !dbg !1156, !llvm.loop !1157

; <label>:113:                                    ; preds = %63
  %114 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1159
  %115 = load i64, i64* %6, align 8, !dbg !1160
  %116 = load i64, i64* @g_net_wm_state_atom, align 8, !dbg !1161
  %117 = load i64*, i64** %18, align 8, !dbg !1162
  %118 = bitcast i64* %117 to i8*, !dbg !1163
  %119 = load i64, i64* %14, align 8, !dbg !1164
  %120 = trunc i64 %119 to i32, !dbg !1164
  %121 = call i32 @XChangeProperty(%struct._XDisplay* %114, i64 %115, i64 %116, i64 4, i32 32, i32 0, i8* %118, i32 %120), !dbg !1165
  %122 = load i8*, i8** %15, align 8, !dbg !1166
  %123 = call i32 @XFree(i8* %122), !dbg !1167
  br label %124

; <label>:124:                                    ; preds = %113, %46
  store i32 0, i32* %5, align 4, !dbg !1168
  br label %184, !dbg !1168

; <label>:125:                                    ; preds = %32
  %126 = bitcast %union._XEvent* %11 to i32*, !dbg !1169
  store i32 33, i32* %126, align 8, !dbg !1170
  %127 = load i64, i64* %6, align 8, !dbg !1171
  %128 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1172
  %129 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %128, i32 0, i32 4, !dbg !1173
  store i64 %127, i64* %129, align 8, !dbg !1174
  %130 = load i64, i64* @g_net_wm_state_atom, align 8, !dbg !1175
  %131 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1176
  %132 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %131, i32 0, i32 5, !dbg !1177
  store i64 %130, i64* %132, align 8, !dbg !1178
  %133 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1179
  %134 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %133, i32 0, i32 6, !dbg !1180
  store i32 32, i32* %134, align 8, !dbg !1181
  %135 = load i32, i32* %7, align 4, !dbg !1182
  %136 = icmp ne i32 %135, 0, !dbg !1182
  br i1 %136, label %137, label %142, !dbg !1184

; <label>:137:                                    ; preds = %125
  %138 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1185
  %139 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %138, i32 0, i32 7, !dbg !1186
  %140 = bitcast %union.anon* %139 to [5 x i64]*, !dbg !1187
  %141 = getelementptr inbounds [5 x i64], [5 x i64]* %140, i64 0, i64 0, !dbg !1188
  store i64 1, i64* %141, align 8, !dbg !1189
  br label %147, !dbg !1188

; <label>:142:                                    ; preds = %125
  %143 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1190
  %144 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %143, i32 0, i32 7, !dbg !1191
  %145 = bitcast %union.anon* %144 to [5 x i64]*, !dbg !1192
  %146 = getelementptr inbounds [5 x i64], [5 x i64]* %145, i64 0, i64 0, !dbg !1193
  store i64 0, i64* %146, align 8, !dbg !1194
  br label %147

; <label>:147:                                    ; preds = %142, %137
  %148 = load i64, i64* %8, align 8, !dbg !1195
  %149 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1196
  %150 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %149, i32 0, i32 7, !dbg !1197
  %151 = bitcast %union.anon* %150 to [5 x i64]*, !dbg !1198
  %152 = getelementptr inbounds [5 x i64], [5 x i64]* %151, i64 0, i64 1, !dbg !1199
  store i64 %148, i64* %152, align 8, !dbg !1200
  %153 = load i64, i64* %9, align 8, !dbg !1201
  %154 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1202
  %155 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %154, i32 0, i32 7, !dbg !1203
  %156 = bitcast %union.anon* %155 to [5 x i64]*, !dbg !1204
  %157 = getelementptr inbounds [5 x i64], [5 x i64]* %156, i64 0, i64 2, !dbg !1205
  store i64 %153, i64* %157, align 8, !dbg !1206
  %158 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1207
  %159 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %158, i32 0, i32 7, !dbg !1208
  %160 = bitcast %union.anon* %159 to [5 x i64]*, !dbg !1209
  %161 = getelementptr inbounds [5 x i64], [5 x i64]* %160, i64 0, i64 3, !dbg !1210
  store i64 0, i64* %161, align 8, !dbg !1211
  %162 = bitcast %union._XEvent* %11 to %struct.XClientMessageEvent*, !dbg !1212
  %163 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %162, i32 0, i32 7, !dbg !1213
  %164 = bitcast %union.anon* %163 to [5 x i64]*, !dbg !1214
  %165 = getelementptr inbounds [5 x i64], [5 x i64]* %164, i64 0, i64 4, !dbg !1215
  store i64 0, i64* %165, align 8, !dbg !1216
  %166 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1217
  %167 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1218
  %168 = bitcast %struct._XDisplay* %167 to %struct.anon*, !dbg !1219
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 33, !dbg !1219
  %170 = load i32, i32* %169, align 8, !dbg !1219
  %171 = sext i32 %170 to i64, !dbg !1219
  %172 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1218
  %173 = bitcast %struct._XDisplay* %172 to %struct.anon*, !dbg !1219
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 35, !dbg !1219
  %175 = load %struct.Screen*, %struct.Screen** %174, align 8, !dbg !1219
  %176 = getelementptr inbounds %struct.Screen, %struct.Screen* %175, i64 %171, !dbg !1219
  %177 = getelementptr inbounds %struct.Screen, %struct.Screen* %176, i32 0, i32 2, !dbg !1220
  %178 = load i64, i64* %177, align 8, !dbg !1220
  %179 = call i32 @XSendEvent(%struct._XDisplay* %166, i64 %178, i32 0, i64 1572864, %union._XEvent* %11), !dbg !1221
  store i32 %179, i32* %10, align 4, !dbg !1222
  %180 = load i32, i32* %10, align 4, !dbg !1223
  %181 = icmp ne i32 %180, 0, !dbg !1223
  br i1 %181, label %183, label %182, !dbg !1225

; <label>:182:                                    ; preds = %147
  store i32 -1, i32* %5, align 4, !dbg !1226
  br label %184, !dbg !1226

; <label>:183:                                    ; preds = %147
  store i32 0, i32* %5, align 4, !dbg !1227
  br label %184, !dbg !1227

; <label>:184:                                    ; preds = %183, %182, %124, %59
  %185 = load i32, i32* %5, align 4, !dbg !1228
  ret i32 %185, !dbg !1228
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_get_window_desktop(i64) #0 !dbg !1229 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1230, metadata !195), !dbg !1231
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1232, metadata !195), !dbg !1233
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1234, metadata !195), !dbg !1235
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1236, metadata !195), !dbg !1237
  %7 = load i64, i64* %3, align 8, !dbg !1238
  %8 = call i32 @get_property_value(i64 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i64 1, i64* %4, i8** %5, i32 0), !dbg !1240
  %9 = icmp slt i32 %8, 0, !dbg !1241
  br i1 %9, label %10, label %11, !dbg !1242

; <label>:10:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1243
  br label %22, !dbg !1243

; <label>:11:                                     ; preds = %1
  %12 = load i64, i64* %4, align 8, !dbg !1244
  %13 = icmp ne i64 %12, 1, !dbg !1246
  br i1 %13, label %14, label %15, !dbg !1247

; <label>:14:                                     ; preds = %11
  call void (i32, i32, i8*, ...) @logger(i32 0, i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i32 0, i32 0)), !dbg !1248
  store i32 -1, i32* %2, align 4, !dbg !1250
  br label %22, !dbg !1250

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %5, align 8, !dbg !1251
  %17 = load i8, i8* %16, align 1, !dbg !1252
  %18 = zext i8 %17 to i32, !dbg !1252
  store i32 %18, i32* %6, align 4, !dbg !1253
  %19 = load i8*, i8** %5, align 8, !dbg !1254
  %20 = call i32 @XFree(i8* %19), !dbg !1255
  %21 = load i32, i32* %6, align 4, !dbg !1256
  store i32 %21, i32* %2, align 4, !dbg !1257
  br label %22, !dbg !1257

; <label>:22:                                     ; preds = %15, %14, %10
  %23 = load i32, i32* %2, align 4, !dbg !1258
  ret i32 %23, !dbg !1258
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_move_to_desktop(i64, i32) #0 !dbg !1259 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union._XEvent, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1262, metadata !195), !dbg !1263
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1264, metadata !195), !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1266, metadata !195), !dbg !1267
  call void @llvm.dbg.declare(metadata %union._XEvent* %7, metadata !1268, metadata !195), !dbg !1269
  %8 = bitcast %union._XEvent* %7 to i32*, !dbg !1270
  store i32 33, i32* %8, align 8, !dbg !1271
  %9 = load i64, i64* %4, align 8, !dbg !1272
  %10 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1273
  %11 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %10, i32 0, i32 4, !dbg !1274
  store i64 %9, i64* %11, align 8, !dbg !1275
  %12 = load i64, i64* @g_net_wm_desktop_atom, align 8, !dbg !1276
  %13 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1277
  %14 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %13, i32 0, i32 5, !dbg !1278
  store i64 %12, i64* %14, align 8, !dbg !1279
  %15 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1280
  %16 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %15, i32 0, i32 6, !dbg !1281
  store i32 32, i32* %16, align 8, !dbg !1282
  %17 = load i32, i32* %5, align 4, !dbg !1283
  %18 = zext i32 %17 to i64, !dbg !1283
  %19 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1284
  %20 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %19, i32 0, i32 7, !dbg !1285
  %21 = bitcast %union.anon* %20 to [5 x i64]*, !dbg !1286
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 0, !dbg !1287
  store i64 %18, i64* %22, align 8, !dbg !1288
  %23 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1289
  %24 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %23, i32 0, i32 7, !dbg !1290
  %25 = bitcast %union.anon* %24 to [5 x i64]*, !dbg !1291
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %25, i64 0, i64 1, !dbg !1292
  store i64 0, i64* %26, align 8, !dbg !1293
  %27 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1294
  %28 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %27, i32 0, i32 7, !dbg !1295
  %29 = bitcast %union.anon* %28 to [5 x i64]*, !dbg !1296
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 2, !dbg !1297
  store i64 0, i64* %30, align 8, !dbg !1298
  %31 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1299
  %32 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %31, i32 0, i32 7, !dbg !1300
  %33 = bitcast %union.anon* %32 to [5 x i64]*, !dbg !1301
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 3, !dbg !1302
  store i64 0, i64* %34, align 8, !dbg !1303
  %35 = bitcast %union._XEvent* %7 to %struct.XClientMessageEvent*, !dbg !1304
  %36 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %35, i32 0, i32 7, !dbg !1305
  %37 = bitcast %union.anon* %36 to [5 x i64]*, !dbg !1306
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %37, i64 0, i64 4, !dbg !1307
  store i64 0, i64* %38, align 8, !dbg !1308
  %39 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1309
  %40 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1310
  %41 = bitcast %struct._XDisplay* %40 to %struct.anon*, !dbg !1311
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 33, !dbg !1311
  %43 = load i32, i32* %42, align 8, !dbg !1311
  %44 = sext i32 %43 to i64, !dbg !1311
  %45 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1310
  %46 = bitcast %struct._XDisplay* %45 to %struct.anon*, !dbg !1311
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 35, !dbg !1311
  %48 = load %struct.Screen*, %struct.Screen** %47, align 8, !dbg !1311
  %49 = getelementptr inbounds %struct.Screen, %struct.Screen* %48, i64 %44, !dbg !1311
  %50 = getelementptr inbounds %struct.Screen, %struct.Screen* %49, i32 0, i32 2, !dbg !1312
  %51 = load i64, i64* %50, align 8, !dbg !1312
  %52 = call i32 @XSendEvent(%struct._XDisplay* %39, i64 %51, i32 0, i64 1572864, %union._XEvent* %7), !dbg !1313
  store i32 %52, i32* %6, align 4, !dbg !1314
  %53 = load i32, i32* %6, align 4, !dbg !1315
  %54 = icmp ne i32 %53, 0, !dbg !1315
  br i1 %54, label %56, label %55, !dbg !1317

; <label>:55:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1318
  br label %57, !dbg !1318

; <label>:56:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1319
  br label %57, !dbg !1319

; <label>:57:                                     ; preds = %56, %55
  %58 = load i32, i32* %3, align 4, !dbg !1320
  ret i32 %58, !dbg !1320
}

declare i32 @XSendEvent(%struct._XDisplay*, i64, i32, i64, %union._XEvent*) #2

; Function Attrs: nounwind uwtable
define void @ewmh_set_wm_name(i64, i8*) #0 !dbg !1321 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1326, metadata !195), !dbg !1327
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1328, metadata !195), !dbg !1329
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1330, metadata !195), !dbg !1331
  %6 = load i8*, i8** %4, align 8, !dbg !1332
  %7 = call i64 @strlen(i8* %6) #5, !dbg !1333
  %8 = trunc i64 %7 to i32, !dbg !1333
  store i32 %8, i32* %5, align 4, !dbg !1334
  %9 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1335
  %10 = load i64, i64* %3, align 8, !dbg !1336
  %11 = load i64, i64* @g_net_wm_name_atom, align 8, !dbg !1337
  %12 = load i64, i64* @g_utf8_string_atom, align 8, !dbg !1338
  %13 = load i8*, i8** %4, align 8, !dbg !1339
  %14 = load i32, i32* %5, align 4, !dbg !1340
  %15 = call i32 @XChangeProperty(%struct._XDisplay* %9, i64 %10, i64 %11, i64 %12, i32 8, i32 0, i8* %13, i32 %14), !dbg !1341
  ret void, !dbg !1342
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @XChangeProperty(%struct._XDisplay*, i64, i64, i64, i32, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @ewmh_set_wm_pid(i64, i32) #0 !dbg !1343 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1350, metadata !195), !dbg !1351
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1352, metadata !195), !dbg !1353
  %5 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1354
  %6 = load i64, i64* %3, align 8, !dbg !1355
  %7 = load i64, i64* @g_net_wm_pid_atom, align 8, !dbg !1356
  %8 = bitcast i32* %4 to i8*, !dbg !1357
  %9 = call i32 @XChangeProperty(%struct._XDisplay* %5, i64 %6, i64 %7, i64 6, i32 32, i32 0, i8* %8, i32 1), !dbg !1358
  ret void, !dbg !1359
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_set_window_popup(i64) #0 !dbg !1360 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1361, metadata !195), !dbg !1362
  %4 = load i64, i64* %3, align 8, !dbg !1363
  %5 = load i64, i64* @g_net_wm_state_skip_taskbar_atom, align 8, !dbg !1365
  %6 = load i64, i64* @g_net_wm_state_skip_pager_atom, align 8, !dbg !1366
  %7 = call i32 @ewmh_modify_state(i64 %4, i32 1, i64 %5, i64 %6), !dbg !1367
  %8 = icmp slt i32 %7, 0, !dbg !1368
  br i1 %8, label %9, label %10, !dbg !1369

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1370
  br label %11, !dbg !1370

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1371
  br label %11, !dbg !1371

; <label>:11:                                     ; preds = %10, %9
  %12 = load i32, i32* %2, align 4, !dbg !1372
  ret i32 %12, !dbg !1372
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_set_window_modal(i64) #0 !dbg !1373 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1374, metadata !195), !dbg !1375
  %4 = load i64, i64* %3, align 8, !dbg !1376
  %5 = load i64, i64* @g_net_wm_state_modal_atom, align 8, !dbg !1378
  %6 = call i32 @ewmh_modify_state(i64 %4, i32 1, i64 %5, i64 0), !dbg !1379
  %7 = icmp slt i32 %6, 0, !dbg !1380
  br i1 %7, label %8, label %9, !dbg !1381

; <label>:8:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1382
  br label %10, !dbg !1382

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1383
  br label %10, !dbg !1383

; <label>:10:                                     ; preds = %9, %8
  %11 = load i32, i32* %2, align 4, !dbg !1384
  ret i32 %11, !dbg !1384
}

; Function Attrs: nounwind uwtable
define void @ewmh_set_icon(i64, i32, i32, i8*) #0 !dbg !1385 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1388, metadata !195), !dbg !1389
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1390, metadata !195), !dbg !1391
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1392, metadata !195), !dbg !1393
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1394, metadata !195), !dbg !1395
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1396, metadata !195), !dbg !1397
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1398, metadata !195), !dbg !1399
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1400, metadata !195), !dbg !1401
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1402, metadata !195), !dbg !1403
  call void @llvm.dbg.declare(metadata i64** %13, metadata !1404, metadata !195), !dbg !1405
  call void @llvm.dbg.declare(metadata i64** %14, metadata !1406, metadata !195), !dbg !1407
  store i64* null, i64** %12, align 8, !dbg !1408
  store i64* null, i64** %13, align 8, !dbg !1409
  %15 = load i64, i64* %5, align 8, !dbg !1410
  %16 = call i32 @get_property_value(i64 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i64 10000, i64* %9, i8** %11, i32 1), !dbg !1412
  %17 = icmp sge i32 %16, 0, !dbg !1413
  br i1 %17, label %18, label %94, !dbg !1414

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %11, align 8, !dbg !1415
  %20 = bitcast i8* %19 to i64*, !dbg !1417
  store i64* %20, i64** %12, align 8, !dbg !1418
  store i64 0, i64* %10, align 8, !dbg !1419
  br label %21, !dbg !1421

; <label>:21:                                     ; preds = %43, %18
  %22 = load i64, i64* %10, align 8, !dbg !1422
  %23 = load i64, i64* %9, align 8, !dbg !1425
  %24 = icmp ult i64 %22, %23, !dbg !1426
  br i1 %24, label %25, label %57, !dbg !1427

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %10, align 8, !dbg !1428
  %27 = load i64*, i64** %12, align 8, !dbg !1431
  %28 = getelementptr inbounds i64, i64* %27, i64 %26, !dbg !1431
  %29 = load i64, i64* %28, align 8, !dbg !1431
  %30 = load i32, i32* %6, align 4, !dbg !1432
  %31 = zext i32 %30 to i64, !dbg !1432
  %32 = icmp eq i64 %29, %31, !dbg !1433
  br i1 %32, label %33, label %43, !dbg !1434

; <label>:33:                                     ; preds = %25
  %34 = load i64, i64* %10, align 8, !dbg !1435
  %35 = add i64 %34, 1, !dbg !1437
  %36 = load i64*, i64** %12, align 8, !dbg !1438
  %37 = getelementptr inbounds i64, i64* %36, i64 %35, !dbg !1438
  %38 = load i64, i64* %37, align 8, !dbg !1438
  %39 = load i32, i32* %7, align 4, !dbg !1439
  %40 = zext i32 %39 to i64, !dbg !1439
  %41 = icmp eq i64 %38, %40, !dbg !1440
  br i1 %41, label %42, label %43, !dbg !1441

; <label>:42:                                     ; preds = %33
  br label %57, !dbg !1442

; <label>:43:                                     ; preds = %33, %25
  %44 = load i64, i64* %10, align 8, !dbg !1443
  %45 = load i64*, i64** %12, align 8, !dbg !1444
  %46 = getelementptr inbounds i64, i64* %45, i64 %44, !dbg !1444
  %47 = load i64, i64* %46, align 8, !dbg !1444
  %48 = load i64, i64* %10, align 8, !dbg !1445
  %49 = add i64 %48, 1, !dbg !1446
  %50 = load i64*, i64** %12, align 8, !dbg !1447
  %51 = getelementptr inbounds i64, i64* %50, i64 %49, !dbg !1447
  %52 = load i64, i64* %51, align 8, !dbg !1447
  %53 = mul i64 %47, %52, !dbg !1448
  %54 = add i64 2, %53, !dbg !1449
  %55 = load i64, i64* %10, align 8, !dbg !1450
  %56 = add i64 %55, %54, !dbg !1450
  store i64 %56, i64* %10, align 8, !dbg !1450
  br label %21, !dbg !1451, !llvm.loop !1453

; <label>:57:                                     ; preds = %42, %21
  %58 = load i64, i64* %10, align 8, !dbg !1455
  %59 = load i64, i64* %9, align 8, !dbg !1457
  %60 = icmp ne i64 %58, %59, !dbg !1458
  br i1 %60, label %61, label %65, !dbg !1459

; <label>:61:                                     ; preds = %57
  %62 = load i64*, i64** %12, align 8, !dbg !1460
  %63 = load i64, i64* %10, align 8, !dbg !1461
  %64 = getelementptr inbounds i64, i64* %62, i64 %63, !dbg !1462
  store i64* %64, i64** %14, align 8, !dbg !1463
  br label %93, !dbg !1464

; <label>:65:                                     ; preds = %57
  %66 = load i64, i64* %9, align 8, !dbg !1465
  %67 = load i32, i32* %6, align 4, !dbg !1467
  %68 = load i32, i32* %7, align 4, !dbg !1468
  %69 = mul i32 %67, %68, !dbg !1469
  %70 = zext i32 %69 to i64, !dbg !1467
  %71 = add i64 %66, %70, !dbg !1470
  %72 = add i64 %71, 2, !dbg !1471
  %73 = mul i64 %72, 8, !dbg !1472
  %74 = trunc i64 %73 to i32, !dbg !1473
  %75 = call i8* @xmalloc(i32 %74), !dbg !1474
  %76 = bitcast i8* %75 to i64*, !dbg !1474
  store i64* %76, i64** %13, align 8, !dbg !1475
  %77 = load i64*, i64** %13, align 8, !dbg !1476
  %78 = bitcast i64* %77 to i8*, !dbg !1477
  %79 = load i64*, i64** %12, align 8, !dbg !1478
  %80 = bitcast i64* %79 to i8*, !dbg !1477
  %81 = load i64, i64* %9, align 8, !dbg !1479
  %82 = mul i64 %81, 8, !dbg !1480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %80, i64 %82, i32 8, i1 false), !dbg !1477
  %83 = load i64*, i64** %13, align 8, !dbg !1481
  %84 = load i64, i64* %9, align 8, !dbg !1482
  %85 = getelementptr inbounds i64, i64* %83, i64 %84, !dbg !1483
  store i64* %85, i64** %14, align 8, !dbg !1484
  %86 = load i32, i32* %6, align 4, !dbg !1485
  %87 = load i32, i32* %7, align 4, !dbg !1486
  %88 = mul i32 %86, %87, !dbg !1487
  %89 = add i32 %88, 2, !dbg !1488
  %90 = zext i32 %89 to i64, !dbg !1485
  %91 = load i64, i64* %9, align 8, !dbg !1489
  %92 = add i64 %91, %90, !dbg !1489
  store i64 %92, i64* %9, align 8, !dbg !1489
  br label %93

; <label>:93:                                     ; preds = %65, %61
  br label %110, !dbg !1490

; <label>:94:                                     ; preds = %4
  %95 = load i32, i32* %6, align 4, !dbg !1491
  %96 = load i32, i32* %7, align 4, !dbg !1493
  %97 = mul i32 %95, %96, !dbg !1494
  %98 = add i32 %97, 2, !dbg !1495
  %99 = zext i32 %98 to i64, !dbg !1496
  %100 = mul i64 %99, 8, !dbg !1497
  %101 = trunc i64 %100 to i32, !dbg !1496
  %102 = call i8* @xmalloc(i32 %101), !dbg !1498
  %103 = bitcast i8* %102 to i64*, !dbg !1498
  store i64* %103, i64** %13, align 8, !dbg !1499
  %104 = load i64*, i64** %13, align 8, !dbg !1500
  store i64* %104, i64** %14, align 8, !dbg !1501
  %105 = load i32, i32* %6, align 4, !dbg !1502
  %106 = load i32, i32* %7, align 4, !dbg !1503
  %107 = mul i32 %105, %106, !dbg !1504
  %108 = add i32 %107, 2, !dbg !1505
  %109 = zext i32 %108 to i64, !dbg !1502
  store i64 %109, i64* %9, align 8, !dbg !1506
  br label %110

; <label>:110:                                    ; preds = %94, %93
  %111 = load i32, i32* %6, align 4, !dbg !1507
  %112 = zext i32 %111 to i64, !dbg !1507
  %113 = load i64*, i64** %14, align 8, !dbg !1508
  %114 = getelementptr inbounds i64, i64* %113, i64 0, !dbg !1508
  store i64 %112, i64* %114, align 8, !dbg !1509
  %115 = load i32, i32* %7, align 4, !dbg !1510
  %116 = zext i32 %115 to i64, !dbg !1510
  %117 = load i64*, i64** %14, align 8, !dbg !1511
  %118 = getelementptr inbounds i64, i64* %117, i64 1, !dbg !1511
  store i64 %116, i64* %118, align 8, !dbg !1512
  store i64 0, i64* %10, align 8, !dbg !1513
  br label %119, !dbg !1515

; <label>:119:                                    ; preds = %170, %110
  %120 = load i64, i64* %10, align 8, !dbg !1516
  %121 = load i32, i32* %6, align 4, !dbg !1519
  %122 = load i32, i32* %7, align 4, !dbg !1520
  %123 = mul i32 %121, %122, !dbg !1521
  %124 = zext i32 %123 to i64, !dbg !1522
  %125 = icmp ult i64 %120, %124, !dbg !1523
  br i1 %125, label %126, label %173, !dbg !1524

; <label>:126:                                    ; preds = %119
  %127 = load i64, i64* %10, align 8, !dbg !1525
  %128 = mul i64 %127, 4, !dbg !1527
  %129 = add i64 %128, 3, !dbg !1528
  %130 = load i8*, i8** %8, align 8, !dbg !1529
  %131 = getelementptr inbounds i8, i8* %130, i64 %129, !dbg !1529
  %132 = load i8, i8* %131, align 1, !dbg !1529
  %133 = sext i8 %132 to i32, !dbg !1529
  %134 = shl i32 %133, 24, !dbg !1530
  %135 = load i64, i64* %10, align 8, !dbg !1531
  %136 = mul i64 %135, 4, !dbg !1532
  %137 = add i64 %136, 0, !dbg !1533
  %138 = load i8*, i8** %8, align 8, !dbg !1534
  %139 = getelementptr inbounds i8, i8* %138, i64 %137, !dbg !1534
  %140 = load i8, i8* %139, align 1, !dbg !1534
  %141 = sext i8 %140 to i32, !dbg !1534
  %142 = shl i32 %141, 16, !dbg !1535
  %143 = and i32 %142, 16711680, !dbg !1536
  %144 = or i32 %134, %143, !dbg !1537
  %145 = load i64, i64* %10, align 8, !dbg !1538
  %146 = mul i64 %145, 4, !dbg !1539
  %147 = add i64 %146, 1, !dbg !1540
  %148 = load i8*, i8** %8, align 8, !dbg !1541
  %149 = getelementptr inbounds i8, i8* %148, i64 %147, !dbg !1541
  %150 = load i8, i8* %149, align 1, !dbg !1541
  %151 = sext i8 %150 to i32, !dbg !1541
  %152 = shl i32 %151, 8, !dbg !1542
  %153 = and i32 %152, 65280, !dbg !1543
  %154 = or i32 %144, %153, !dbg !1544
  %155 = load i64, i64* %10, align 8, !dbg !1545
  %156 = mul i64 %155, 4, !dbg !1546
  %157 = add i64 %156, 2, !dbg !1547
  %158 = load i8*, i8** %8, align 8, !dbg !1548
  %159 = getelementptr inbounds i8, i8* %158, i64 %157, !dbg !1548
  %160 = load i8, i8* %159, align 1, !dbg !1548
  %161 = sext i8 %160 to i32, !dbg !1548
  %162 = shl i32 %161, 0, !dbg !1549
  %163 = and i32 %162, 255, !dbg !1550
  %164 = or i32 %154, %163, !dbg !1551
  %165 = sext i32 %164 to i64, !dbg !1529
  %166 = load i64, i64* %10, align 8, !dbg !1552
  %167 = add i64 %166, 2, !dbg !1553
  %168 = load i64*, i64** %14, align 8, !dbg !1554
  %169 = getelementptr inbounds i64, i64* %168, i64 %167, !dbg !1554
  store i64 %165, i64* %169, align 8, !dbg !1555
  br label %170, !dbg !1556

; <label>:170:                                    ; preds = %126
  %171 = load i64, i64* %10, align 8, !dbg !1557
  %172 = add i64 %171, 1, !dbg !1557
  store i64 %172, i64* %10, align 8, !dbg !1557
  br label %119, !dbg !1559, !llvm.loop !1560

; <label>:173:                                    ; preds = %119
  %174 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1562
  %175 = load i64, i64* %5, align 8, !dbg !1563
  %176 = load i64, i64* @g_net_wm_icon_atom, align 8, !dbg !1564
  %177 = load i64*, i64** %13, align 8, !dbg !1565
  %178 = icmp ne i64* %177, null, !dbg !1565
  br i1 %178, label %179, label %181, !dbg !1565

; <label>:179:                                    ; preds = %173
  %180 = load i64*, i64** %13, align 8, !dbg !1566
  br label %183, !dbg !1568

; <label>:181:                                    ; preds = %173
  %182 = load i64*, i64** %12, align 8, !dbg !1569
  br label %183, !dbg !1571

; <label>:183:                                    ; preds = %181, %179
  %184 = phi i64* [ %180, %179 ], [ %182, %181 ], !dbg !1572
  %185 = bitcast i64* %184 to i8*, !dbg !1574
  %186 = load i64, i64* %9, align 8, !dbg !1575
  %187 = trunc i64 %186 to i32, !dbg !1575
  %188 = call i32 @XChangeProperty(%struct._XDisplay* %174, i64 %175, i64 %176, i64 6, i32 32, i32 0, i8* %185, i32 %187), !dbg !1576
  %189 = load i64*, i64** %12, align 8, !dbg !1577
  %190 = icmp ne i64* %189, null, !dbg !1577
  br i1 %190, label %191, label %195, !dbg !1579

; <label>:191:                                    ; preds = %183
  %192 = load i64*, i64** %12, align 8, !dbg !1580
  %193 = bitcast i64* %192 to i8*, !dbg !1580
  %194 = call i32 @XFree(i8* %193), !dbg !1581
  br label %195, !dbg !1581

; <label>:195:                                    ; preds = %191, %183
  %196 = load i64*, i64** %13, align 8, !dbg !1582
  %197 = icmp ne i64* %196, null, !dbg !1582
  br i1 %197, label %198, label %201, !dbg !1584

; <label>:198:                                    ; preds = %195
  %199 = load i64*, i64** %13, align 8, !dbg !1585
  %200 = bitcast i64* %199 to i8*, !dbg !1585
  call void @xfree(i8* %200), !dbg !1586
  br label %201, !dbg !1586

; <label>:201:                                    ; preds = %198, %195
  ret void, !dbg !1587
}

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @xfree(i8*) #2

; Function Attrs: nounwind uwtable
define void @ewmh_del_icon(i64, i32, i32) #0 !dbg !1588 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1591, metadata !195), !dbg !1592
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1593, metadata !195), !dbg !1594
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1595, metadata !195), !dbg !1596
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1597, metadata !195), !dbg !1598
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1599, metadata !195), !dbg !1600
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1601, metadata !195), !dbg !1602
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1603, metadata !195), !dbg !1604
  call void @llvm.dbg.declare(metadata i64** %11, metadata !1605, metadata !195), !dbg !1606
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1607, metadata !195), !dbg !1608
  store i64* null, i64** %11, align 8, !dbg !1609
  store i64* null, i64** %12, align 8, !dbg !1610
  %13 = load i64, i64* %4, align 8, !dbg !1611
  %14 = call i32 @get_property_value(i64 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i64 10000, i64* %7, i8** %10, i32 1), !dbg !1613
  %15 = icmp slt i32 %14, 0, !dbg !1614
  br i1 %15, label %16, label %17, !dbg !1615

; <label>:16:                                     ; preds = %3
  br label %124, !dbg !1616

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %10, align 8, !dbg !1617
  %19 = bitcast i8* %18 to i64*, !dbg !1618
  store i64* %19, i64** %11, align 8, !dbg !1619
  store i64 0, i64* %8, align 8, !dbg !1620
  br label %20, !dbg !1622

; <label>:20:                                     ; preds = %42, %17
  %21 = load i64, i64* %8, align 8, !dbg !1623
  %22 = load i64, i64* %7, align 8, !dbg !1626
  %23 = icmp ult i64 %21, %22, !dbg !1627
  br i1 %23, label %24, label %56, !dbg !1628

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* %8, align 8, !dbg !1629
  %26 = load i64*, i64** %11, align 8, !dbg !1632
  %27 = getelementptr inbounds i64, i64* %26, i64 %25, !dbg !1632
  %28 = load i64, i64* %27, align 8, !dbg !1632
  %29 = load i32, i32* %5, align 4, !dbg !1633
  %30 = zext i32 %29 to i64, !dbg !1633
  %31 = icmp eq i64 %28, %30, !dbg !1634
  br i1 %31, label %32, label %42, !dbg !1635

; <label>:32:                                     ; preds = %24
  %33 = load i64, i64* %8, align 8, !dbg !1636
  %34 = add i64 %33, 1, !dbg !1638
  %35 = load i64*, i64** %11, align 8, !dbg !1639
  %36 = getelementptr inbounds i64, i64* %35, i64 %34, !dbg !1639
  %37 = load i64, i64* %36, align 8, !dbg !1639
  %38 = load i32, i32* %6, align 4, !dbg !1640
  %39 = zext i32 %38 to i64, !dbg !1640
  %40 = icmp eq i64 %37, %39, !dbg !1641
  br i1 %40, label %41, label %42, !dbg !1642

; <label>:41:                                     ; preds = %32
  br label %56, !dbg !1643

; <label>:42:                                     ; preds = %32, %24
  %43 = load i64, i64* %8, align 8, !dbg !1644
  %44 = load i64*, i64** %11, align 8, !dbg !1645
  %45 = getelementptr inbounds i64, i64* %44, i64 %43, !dbg !1645
  %46 = load i64, i64* %45, align 8, !dbg !1645
  %47 = load i64, i64* %8, align 8, !dbg !1646
  %48 = add i64 %47, 1, !dbg !1647
  %49 = load i64*, i64** %11, align 8, !dbg !1648
  %50 = getelementptr inbounds i64, i64* %49, i64 %48, !dbg !1648
  %51 = load i64, i64* %50, align 8, !dbg !1648
  %52 = mul i64 %46, %51, !dbg !1649
  %53 = add i64 2, %52, !dbg !1650
  %54 = load i64, i64* %8, align 8, !dbg !1651
  %55 = add i64 %54, %53, !dbg !1651
  store i64 %55, i64* %8, align 8, !dbg !1651
  br label %20, !dbg !1652, !llvm.loop !1654

; <label>:56:                                     ; preds = %41, %20
  %57 = load i64, i64* %8, align 8, !dbg !1656
  %58 = load i64, i64* %7, align 8, !dbg !1658
  %59 = icmp eq i64 %57, %58, !dbg !1659
  br i1 %59, label %60, label %61, !dbg !1660

; <label>:60:                                     ; preds = %56
  br label %120, !dbg !1661

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %5, align 4, !dbg !1662
  %63 = load i32, i32* %6, align 4, !dbg !1663
  %64 = mul i32 %62, %63, !dbg !1664
  %65 = add i32 %64, 2, !dbg !1665
  %66 = zext i32 %65 to i64, !dbg !1662
  store i64 %66, i64* %9, align 8, !dbg !1666
  %67 = load i64, i64* %7, align 8, !dbg !1667
  %68 = load i64, i64* %9, align 8, !dbg !1668
  %69 = sub i64 %67, %68, !dbg !1669
  %70 = mul i64 %69, 8, !dbg !1670
  %71 = trunc i64 %70 to i32, !dbg !1671
  %72 = call i8* @xmalloc(i32 %71), !dbg !1672
  %73 = bitcast i8* %72 to i64*, !dbg !1672
  store i64* %73, i64** %12, align 8, !dbg !1673
  %74 = load i64, i64* %8, align 8, !dbg !1674
  %75 = icmp ne i64 %74, 0, !dbg !1676
  br i1 %75, label %76, label %83, !dbg !1677

; <label>:76:                                     ; preds = %61
  %77 = load i64*, i64** %12, align 8, !dbg !1678
  %78 = bitcast i64* %77 to i8*, !dbg !1679
  %79 = load i64*, i64** %11, align 8, !dbg !1680
  %80 = bitcast i64* %79 to i8*, !dbg !1679
  %81 = load i64, i64* %8, align 8, !dbg !1681
  %82 = mul i64 %81, 8, !dbg !1682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %80, i64 %82, i32 8, i1 false), !dbg !1679
  br label %83, !dbg !1679

; <label>:83:                                     ; preds = %76, %61
  %84 = load i64, i64* %8, align 8, !dbg !1683
  %85 = load i64, i64* %7, align 8, !dbg !1685
  %86 = load i64, i64* %9, align 8, !dbg !1686
  %87 = sub i64 %85, %86, !dbg !1687
  %88 = icmp ne i64 %84, %87, !dbg !1688
  br i1 %88, label %89, label %106, !dbg !1689

; <label>:89:                                     ; preds = %83
  %90 = load i64*, i64** %12, align 8, !dbg !1690
  %91 = load i64, i64* %8, align 8, !dbg !1691
  %92 = getelementptr inbounds i64, i64* %90, i64 %91, !dbg !1692
  %93 = bitcast i64* %92 to i8*, !dbg !1693
  %94 = load i64*, i64** %11, align 8, !dbg !1694
  %95 = load i64, i64* %8, align 8, !dbg !1695
  %96 = getelementptr inbounds i64, i64* %94, i64 %95, !dbg !1696
  %97 = load i64, i64* %9, align 8, !dbg !1697
  %98 = getelementptr inbounds i64, i64* %96, i64 %97, !dbg !1698
  %99 = bitcast i64* %98 to i8*, !dbg !1693
  %100 = load i64, i64* %7, align 8, !dbg !1699
  %101 = load i64, i64* %8, align 8, !dbg !1700
  %102 = load i64, i64* %9, align 8, !dbg !1701
  %103 = add i64 %101, %102, !dbg !1702
  %104 = sub i64 %100, %103, !dbg !1703
  %105 = mul i64 %104, 8, !dbg !1704
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %99, i64 %105, i32 8, i1 false), !dbg !1693
  br label %106, !dbg !1693

; <label>:106:                                    ; preds = %89, %83
  %107 = load i64, i64* %9, align 8, !dbg !1705
  %108 = load i64, i64* %7, align 8, !dbg !1706
  %109 = sub i64 %108, %107, !dbg !1706
  store i64 %109, i64* %7, align 8, !dbg !1706
  %110 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1707
  %111 = load i64, i64* %4, align 8, !dbg !1708
  %112 = load i64, i64* @g_net_wm_icon_atom, align 8, !dbg !1709
  %113 = load i64*, i64** %12, align 8, !dbg !1710
  %114 = bitcast i64* %113 to i8*, !dbg !1711
  %115 = load i64, i64* %7, align 8, !dbg !1712
  %116 = trunc i64 %115 to i32, !dbg !1712
  %117 = call i32 @XChangeProperty(%struct._XDisplay* %110, i64 %111, i64 %112, i64 6, i32 32, i32 0, i8* %114, i32 %116), !dbg !1713
  %118 = load i64*, i64** %12, align 8, !dbg !1714
  %119 = bitcast i64* %118 to i8*, !dbg !1714
  call void @xfree(i8* %119), !dbg !1715
  br label %120, !dbg !1715

; <label>:120:                                    ; preds = %106, %60
  %121 = load i64*, i64** %11, align 8, !dbg !1716
  %122 = bitcast i64* %121 to i8*, !dbg !1716
  %123 = call i32 @XFree(i8* %122), !dbg !1717
  br label %124, !dbg !1718

; <label>:124:                                    ; preds = %120, %16
  ret void, !dbg !1719
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_set_window_above(i64) #0 !dbg !1721 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1722, metadata !195), !dbg !1723
  %4 = load i64, i64* %3, align 8, !dbg !1724
  %5 = load i64, i64* @g_net_wm_state_above_atom, align 8, !dbg !1726
  %6 = call i32 @ewmh_modify_state(i64 %4, i32 1, i64 %5, i64 0), !dbg !1727
  %7 = icmp slt i32 %6, 0, !dbg !1728
  br i1 %7, label %8, label %9, !dbg !1729

; <label>:8:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1730
  br label %10, !dbg !1730

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1731
  br label %10, !dbg !1731

; <label>:10:                                     ; preds = %9, %8
  %11 = load i32, i32* %2, align 4, !dbg !1732
  ret i32 %11, !dbg !1732
}

; Function Attrs: nounwind uwtable
define i32 @ewmh_is_window_above(i64) #0 !dbg !1733 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1736, metadata !195), !dbg !1737
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1738, metadata !195), !dbg !1739
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1740, metadata !195), !dbg !1741
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1742, metadata !195), !dbg !1743
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1744, metadata !195), !dbg !1745
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1746, metadata !195), !dbg !1747
  store i32 0, i32* %8, align 4, !dbg !1748
  %9 = load i64, i64* %3, align 8, !dbg !1749
  %10 = call i32 @get_property_value(i64 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i64 64, i64* %4, i8** %5, i32 0), !dbg !1751
  %11 = icmp slt i32 %10, 0, !dbg !1752
  br i1 %11, label %12, label %13, !dbg !1753

; <label>:12:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1754
  br label %36, !dbg !1754

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %5, align 8, !dbg !1755
  %15 = bitcast i8* %14 to i64*, !dbg !1756
  store i64* %15, i64** %6, align 8, !dbg !1757
  store i64 0, i64* %7, align 8, !dbg !1758
  br label %16, !dbg !1760

; <label>:16:                                     ; preds = %29, %13
  %17 = load i64, i64* %7, align 8, !dbg !1761
  %18 = load i64, i64* %4, align 8, !dbg !1764
  %19 = icmp ult i64 %17, %18, !dbg !1765
  br i1 %19, label %20, label %32, !dbg !1766

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %7, align 8, !dbg !1767
  %22 = load i64*, i64** %6, align 8, !dbg !1770
  %23 = getelementptr inbounds i64, i64* %22, i64 %21, !dbg !1770
  %24 = load i64, i64* %23, align 8, !dbg !1770
  %25 = load i64, i64* @g_net_wm_state_above_atom, align 8, !dbg !1771
  %26 = icmp eq i64 %24, %25, !dbg !1772
  br i1 %26, label %27, label %28, !dbg !1773

; <label>:27:                                     ; preds = %20
  store i32 1, i32* %8, align 4, !dbg !1774
  br label %28, !dbg !1775

; <label>:28:                                     ; preds = %27, %20
  br label %29, !dbg !1776

; <label>:29:                                     ; preds = %28
  %30 = load i64, i64* %7, align 8, !dbg !1777
  %31 = add i64 %30, 1, !dbg !1777
  store i64 %31, i64* %7, align 8, !dbg !1777
  br label %16, !dbg !1779, !llvm.loop !1780

; <label>:32:                                     ; preds = %16
  %33 = load i8*, i8** %5, align 8, !dbg !1782
  %34 = call i32 @XFree(i8* %33), !dbg !1783
  %35 = load i32, i32* %8, align 4, !dbg !1784
  store i32 %35, i32* %2, align 4, !dbg !1785
  br label %36, !dbg !1785

; <label>:36:                                     ; preds = %32, %12
  %37 = load i32, i32* %2, align 4, !dbg !1786
  ret i32 %37, !dbg !1786
}

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!187, !188}
!llvm.ident = !{!189}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !171)
!1 = !DIFile(filename: "[inter]ewmhints.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
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
!22 = !{!23, !162, !163, !164, !166, !167, !170}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "_XPrivDisplay", file: !24, line: 550, baseType: !25)
!24 = !DIFile(filename: "/usr/include/X11/Xlib.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 493, size: 2368, align: 64, elements: !27)
!27 = !{!28, !45, !48, !49, !50, !51, !52, !53, !57, !58, !59, !60, !66, !67, !68, !69, !70, !71, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !96, !100, !101, !102, !103, !154, !155, !156, !157, !158, !159, !160, !161}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !26, file: !24, line: 498, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "XExtData", file: !24, line: 155, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_XExtData", file: !24, line: 148, size: 256, align: 64, elements: !32)
!32 = !{!33, !35, !37, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !31, file: !24, line: 149, baseType: !34, size: 32, align: 32)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !24, line: 150, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "free_private", scope: !31, file: !24, line: 151, baseType: !38, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!34, !36}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !31, file: !24, line: 154, baseType: !42, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPointer", file: !24, line: 80, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !26, file: !24, line: 499, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XPrivate", file: !24, line: 490, flags: DIFlagFwdDecl)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !26, file: !24, line: 500, baseType: !34, size: 32, align: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !26, file: !24, line: 501, baseType: !34, size: 32, align: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "proto_major_version", scope: !26, file: !24, line: 502, baseType: !34, size: 32, align: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "proto_minor_version", scope: !26, file: !24, line: 503, baseType: !34, size: 32, align: 32, offset: 224)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !26, file: !24, line: 504, baseType: !43, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !26, file: !24, line: 505, baseType: !54, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "XID", file: !55, line: 66, baseType: !56)
!55 = !DIFile(filename: "/usr/include/X11/X.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "private4", scope: !26, file: !24, line: 506, baseType: !54, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !26, file: !24, line: 507, baseType: !54, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !26, file: !24, line: 508, baseType: !34, size: 32, align: 32, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "resource_alloc", scope: !26, file: !24, line: 509, baseType: !61, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!54, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XDisplay", file: !24, line: 255, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "byte_order", scope: !26, file: !24, line: 512, baseType: !34, size: 32, align: 32, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_unit", scope: !26, file: !24, line: 513, baseType: !34, size: 32, align: 32, offset: 672)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_pad", scope: !26, file: !24, line: 514, baseType: !34, size: 32, align: 32, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_bit_order", scope: !26, file: !24, line: 515, baseType: !34, size: 32, align: 32, offset: 736)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nformats", scope: !26, file: !24, line: 516, baseType: !34, size: 32, align: 32, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap_format", scope: !26, file: !24, line: 517, baseType: !72, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ScreenFormat", file: !24, line: 285, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 280, size: 192, align: 64, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !74, file: !24, line: 281, baseType: !29, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !74, file: !24, line: 282, baseType: !34, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !74, file: !24, line: 283, baseType: !34, size: 32, align: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "scanline_pad", scope: !74, file: !24, line: 284, baseType: !34, size: 32, align: 32, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "private8", scope: !26, file: !24, line: 518, baseType: !34, size: 32, align: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !26, file: !24, line: 519, baseType: !34, size: 32, align: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "private9", scope: !26, file: !24, line: 520, baseType: !46, size: 64, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "private10", scope: !26, file: !24, line: 520, baseType: !46, size: 64, align: 64, offset: 1024)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !26, file: !24, line: 521, baseType: !34, size: 32, align: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "last_request_read", scope: !26, file: !24, line: 522, baseType: !56, size: 64, align: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !26, file: !24, line: 523, baseType: !56, size: 64, align: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "private11", scope: !26, file: !24, line: 524, baseType: !42, size: 64, align: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "private12", scope: !26, file: !24, line: 525, baseType: !42, size: 64, align: 64, offset: 1344)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "private13", scope: !26, file: !24, line: 526, baseType: !42, size: 64, align: 64, offset: 1408)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "private14", scope: !26, file: !24, line: 527, baseType: !42, size: 64, align: 64, offset: 1472)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_size", scope: !26, file: !24, line: 528, baseType: !92, size: 32, align: 32, offset: 1536)
!92 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !26, file: !24, line: 529, baseType: !94, size: 64, align: 64, offset: 1600)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XrmHashBucketRec", file: !24, line: 491, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "private15", scope: !26, file: !24, line: 530, baseType: !97, size: 64, align: 64, offset: 1664)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!34, !64}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "display_name", scope: !26, file: !24, line: 533, baseType: !43, size: 64, align: 64, offset: 1728)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "default_screen", scope: !26, file: !24, line: 534, baseType: !34, size: 32, align: 32, offset: 1792)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nscreens", scope: !26, file: !24, line: 535, baseType: !34, size: 32, align: 32, offset: 1824)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "screens", scope: !26, file: !24, line: 536, baseType: !104, size: 64, align: 64, offset: 1856)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Screen", file: !24, line: 275, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 257, size: 1024, align: 64, elements: !107)
!107 = !{!108, !109, !110, !112, !113, !114, !115, !116, !117, !138, !139, !140, !144, !146, !147, !148, !149, !150, !151, !152}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !106, file: !24, line: 258, baseType: !29, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !106, file: !24, line: 259, baseType: !64, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !106, file: !24, line: 260, baseType: !111, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Window", file: !55, line: 96, baseType: !54)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !106, file: !24, line: 261, baseType: !34, size: 32, align: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !106, file: !24, line: 261, baseType: !34, size: 32, align: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mwidth", scope: !106, file: !24, line: 262, baseType: !34, size: 32, align: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "mheight", scope: !106, file: !24, line: 262, baseType: !34, size: 32, align: 32, offset: 288)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ndepths", scope: !106, file: !24, line: 263, baseType: !34, size: 32, align: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "depths", scope: !106, file: !24, line: 264, baseType: !118, size: 64, align: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "Depth", file: !24, line: 247, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 243, size: 128, align: 64, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !120, file: !24, line: 244, baseType: !34, size: 32, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nvisuals", scope: !120, file: !24, line: 245, baseType: !34, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "visuals", scope: !120, file: !24, line: 246, baseType: !125, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "Visual", file: !24, line: 238, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 227, size: 448, align: 64, elements: !128)
!128 = !{!129, !130, !132, !133, !134, !135, !136, !137}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !127, file: !24, line: 228, baseType: !29, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "visualid", scope: !127, file: !24, line: 229, baseType: !131, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "VisualID", file: !55, line: 76, baseType: !56)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !127, file: !24, line: 233, baseType: !34, size: 32, align: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "red_mask", scope: !127, file: !24, line: 235, baseType: !56, size: 64, align: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "green_mask", scope: !127, file: !24, line: 235, baseType: !56, size: 64, align: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "blue_mask", scope: !127, file: !24, line: 235, baseType: !56, size: 64, align: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_rgb", scope: !127, file: !24, line: 236, baseType: !34, size: 32, align: 32, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "map_entries", scope: !127, file: !24, line: 237, baseType: !34, size: 32, align: 32, offset: 416)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "root_depth", scope: !106, file: !24, line: 265, baseType: !34, size: 32, align: 32, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "root_visual", scope: !106, file: !24, line: 266, baseType: !125, size: 64, align: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "default_gc", scope: !106, file: !24, line: 267, baseType: !141, size: 64, align: 64, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GC", file: !24, line: 222, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XGC", file: !24, line: 214, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !106, file: !24, line: 268, baseType: !145, size: 64, align: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Colormap", file: !55, line: 104, baseType: !54)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "white_pixel", scope: !106, file: !24, line: 269, baseType: !56, size: 64, align: 64, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "black_pixel", scope: !106, file: !24, line: 270, baseType: !56, size: 64, align: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "max_maps", scope: !106, file: !24, line: 271, baseType: !34, size: 32, align: 32, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "min_maps", scope: !106, file: !24, line: 271, baseType: !34, size: 32, align: 32, offset: 864)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "backing_store", scope: !106, file: !24, line: 272, baseType: !34, size: 32, align: 32, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "save_unders", scope: !106, file: !24, line: 273, baseType: !34, size: 32, align: 32, offset: 928)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "root_input_mask", scope: !106, file: !24, line: 274, baseType: !153, size: 64, align: 64, offset: 960)
!153 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "motion_buffer", scope: !26, file: !24, line: 537, baseType: !56, size: 64, align: 64, offset: 1920)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "private16", scope: !26, file: !24, line: 538, baseType: !56, size: 64, align: 64, offset: 1984)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "min_keycode", scope: !26, file: !24, line: 539, baseType: !34, size: 32, align: 32, offset: 2048)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "max_keycode", scope: !26, file: !24, line: 540, baseType: !34, size: 32, align: 32, offset: 2080)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "private17", scope: !26, file: !24, line: 541, baseType: !42, size: 64, align: 64, offset: 2112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "private18", scope: !26, file: !24, line: 542, baseType: !42, size: 64, align: 64, offset: 2176)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "private19", scope: !26, file: !24, line: 543, baseType: !34, size: 32, align: 32, offset: 2240)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "xdefaults", scope: !26, file: !24, line: 544, baseType: !43, size: 64, align: 64, offset: 2304)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atom", file: !55, line: 74, baseType: !56)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !169, line: 43, baseType: !92)
!169 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!171 = !{!172, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!172 = distinct !DIGlobalVariable(name: "g_net_wm_state_maximized_vert_atom", scope: !0, file: !173, line: 36, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_maximized_vert_atom)
!173 = !DIFile(filename: "ewmhints.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!174 = distinct !DIGlobalVariable(name: "g_net_wm_state_maximized_horz_atom", scope: !0, file: !173, line: 36, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_maximized_horz_atom)
!175 = distinct !DIGlobalVariable(name: "g_net_wm_state_hidden_atom", scope: !0, file: !173, line: 37, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_hidden_atom)
!176 = distinct !DIGlobalVariable(name: "g_net_wm_name_atom", scope: !0, file: !173, line: 37, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_name_atom)
!177 = distinct !DIGlobalVariable(name: "g_utf8_string_atom", scope: !0, file: !173, line: 37, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_utf8_string_atom)
!178 = distinct !DIGlobalVariable(name: "g_net_wm_state_skip_taskbar_atom", scope: !0, file: !173, line: 38, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_skip_taskbar_atom)
!179 = distinct !DIGlobalVariable(name: "g_net_wm_state_skip_pager_atom", scope: !0, file: !173, line: 38, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_skip_pager_atom)
!180 = distinct !DIGlobalVariable(name: "g_net_wm_state_modal_atom", scope: !0, file: !173, line: 39, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_modal_atom)
!181 = distinct !DIGlobalVariable(name: "g_net_wm_icon_atom", scope: !0, file: !173, line: 39, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_icon_atom)
!182 = distinct !DIGlobalVariable(name: "g_net_wm_state_above_atom", scope: !0, file: !173, line: 39, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_state_above_atom)
!183 = distinct !DIGlobalVariable(name: "g_net_wm_pid_atom", scope: !0, file: !173, line: 39, type: !166, isLocal: true, isDefinition: true, variable: i64* @g_net_wm_pid_atom)
!184 = distinct !DIGlobalVariable(name: "g_net_wm_state_atom", scope: !0, file: !173, line: 41, type: !166, isLocal: false, isDefinition: true, variable: i64* @g_net_wm_state_atom)
!185 = distinct !DIGlobalVariable(name: "g_net_wm_desktop_atom", scope: !0, file: !173, line: 41, type: !166, isLocal: false, isDefinition: true, variable: i64* @g_net_wm_desktop_atom)
!186 = distinct !DIGlobalVariable(name: "g_net_wm_ping_atom", scope: !0, file: !173, line: 41, type: !166, isLocal: false, isDefinition: true, variable: i64* @g_net_wm_ping_atom)
!187 = !{i32 2, !"Dwarf Version", i32 4}
!188 = !{i32 2, !"Debug Info Version", i32 3}
!189 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!190 = distinct !DISubprogram(name: "get_current_workarea", scope: !173, file: !173, line: 134, type: !191, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!34, !167, !167, !167, !167}
!193 = !{}
!194 = !DILocalVariable(name: "x", arg: 1, scope: !190, file: !173, line: 134, type: !167)
!195 = !DIExpression()
!196 = !DILocation(line: 134, column: 31, scope: !190)
!197 = !DILocalVariable(name: "y", arg: 2, scope: !190, file: !173, line: 134, type: !167)
!198 = !DILocation(line: 134, column: 43, scope: !190)
!199 = !DILocalVariable(name: "width", arg: 3, scope: !190, file: !173, line: 134, type: !167)
!200 = !DILocation(line: 134, column: 55, scope: !190)
!201 = !DILocalVariable(name: "height", arg: 4, scope: !190, file: !173, line: 134, type: !167)
!202 = !DILocation(line: 134, column: 71, scope: !190)
!203 = !DILocalVariable(name: "current_desktop", scope: !190, file: !173, line: 136, type: !34)
!204 = !DILocation(line: 136, column: 6, scope: !190)
!205 = !DILocalVariable(name: "nitems_return", scope: !190, file: !173, line: 137, type: !56)
!206 = !DILocation(line: 137, column: 16, scope: !190)
!207 = !DILocalVariable(name: "prop_return", scope: !190, file: !173, line: 138, type: !164)
!208 = !DILocation(line: 138, column: 17, scope: !190)
!209 = !DILocalVariable(name: "return_words", scope: !190, file: !173, line: 139, type: !162)
!210 = !DILocation(line: 139, column: 8, scope: !190)
!211 = !DILocalVariable(name: "net_workarea_x_offset", scope: !190, file: !173, line: 140, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!213 = !DILocation(line: 140, column: 15, scope: !190)
!214 = !DILocalVariable(name: "net_workarea_y_offset", scope: !190, file: !173, line: 141, type: !212)
!215 = !DILocation(line: 141, column: 15, scope: !190)
!216 = !DILocalVariable(name: "net_workarea_width_offset", scope: !190, file: !173, line: 142, type: !212)
!217 = !DILocation(line: 142, column: 15, scope: !190)
!218 = !DILocalVariable(name: "net_workarea_height_offset", scope: !190, file: !173, line: 143, type: !212)
!219 = !DILocation(line: 143, column: 15, scope: !190)
!220 = !DILocalVariable(name: "max_prop_length", scope: !190, file: !173, line: 144, type: !212)
!221 = !DILocation(line: 144, column: 15, scope: !190)
!222 = !DILocation(line: 147, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !190, file: !173, line: 146, column: 6)
!224 = !DILocation(line: 147, column: 9, scope: !223)
!225 = !DILocation(line: 147, column: 28, scope: !223)
!226 = !DILocation(line: 146, column: 6, scope: !223)
!227 = !DILocation(line: 148, column: 24, scope: !223)
!228 = !DILocation(line: 146, column: 6, scope: !190)
!229 = !DILocation(line: 149, column: 3, scope: !223)
!230 = !DILocation(line: 151, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !190, file: !173, line: 151, column: 6)
!232 = !DILocation(line: 151, column: 20, scope: !231)
!233 = !DILocation(line: 151, column: 6, scope: !190)
!234 = !DILocation(line: 153, column: 3, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !173, line: 152, column: 2)
!236 = !DILocation(line: 154, column: 3, scope: !235)
!237 = !DILocation(line: 157, column: 20, scope: !190)
!238 = !DILocation(line: 157, column: 18, scope: !190)
!239 = !DILocation(line: 159, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !190, file: !173, line: 159, column: 6)
!241 = !DILocation(line: 159, column: 22, scope: !240)
!242 = !DILocation(line: 159, column: 6, scope: !190)
!243 = !DILocation(line: 160, column: 3, scope: !240)
!244 = !DILocation(line: 162, column: 26, scope: !190)
!245 = !DILocation(line: 162, column: 17, scope: !190)
!246 = !DILocation(line: 162, column: 15, scope: !190)
!247 = !DILocation(line: 164, column: 20, scope: !190)
!248 = !DILocation(line: 164, column: 36, scope: !190)
!249 = !DILocation(line: 164, column: 40, scope: !190)
!250 = !DILocation(line: 164, column: 7, scope: !190)
!251 = !DILocation(line: 164, column: 3, scope: !190)
!252 = !DILocation(line: 164, column: 5, scope: !190)
!253 = !DILocation(line: 165, column: 20, scope: !190)
!254 = !DILocation(line: 165, column: 36, scope: !190)
!255 = !DILocation(line: 165, column: 40, scope: !190)
!256 = !DILocation(line: 165, column: 7, scope: !190)
!257 = !DILocation(line: 165, column: 3, scope: !190)
!258 = !DILocation(line: 165, column: 5, scope: !190)
!259 = !DILocation(line: 166, column: 24, scope: !190)
!260 = !DILocation(line: 166, column: 40, scope: !190)
!261 = !DILocation(line: 166, column: 44, scope: !190)
!262 = !DILocation(line: 166, column: 11, scope: !190)
!263 = !DILocation(line: 166, column: 3, scope: !190)
!264 = !DILocation(line: 166, column: 9, scope: !190)
!265 = !DILocation(line: 167, column: 25, scope: !190)
!266 = !DILocation(line: 167, column: 41, scope: !190)
!267 = !DILocation(line: 167, column: 45, scope: !190)
!268 = !DILocation(line: 167, column: 12, scope: !190)
!269 = !DILocation(line: 167, column: 3, scope: !190)
!270 = !DILocation(line: 167, column: 10, scope: !190)
!271 = !DILocation(line: 169, column: 8, scope: !190)
!272 = !DILocation(line: 169, column: 2, scope: !190)
!273 = !DILocation(line: 171, column: 2, scope: !190)
!274 = !DILocation(line: 173, column: 1, scope: !190)
!275 = distinct !DISubprogram(name: "get_property_value", scope: !173, file: !173, line: 48, type: !276, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!276 = !DISubroutineType(types: !277)
!277 = !{!34, !111, !43, !153, !163, !278, !34}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!279 = !DILocalVariable(name: "wnd", arg: 1, scope: !275, file: !173, line: 48, type: !111)
!280 = !DILocation(line: 48, column: 27, scope: !275)
!281 = !DILocalVariable(name: "propname", arg: 2, scope: !275, file: !173, line: 48, type: !43)
!282 = !DILocation(line: 48, column: 38, scope: !275)
!283 = !DILocalVariable(name: "max_length", arg: 3, scope: !275, file: !173, line: 48, type: !153)
!284 = !DILocation(line: 48, column: 53, scope: !275)
!285 = !DILocalVariable(name: "nitems_return", arg: 4, scope: !275, file: !173, line: 49, type: !163)
!286 = !DILocation(line: 49, column: 21, scope: !275)
!287 = !DILocalVariable(name: "prop_return", arg: 5, scope: !275, file: !173, line: 49, type: !278)
!288 = !DILocation(line: 49, column: 52, scope: !275)
!289 = !DILocalVariable(name: "nowarn", arg: 6, scope: !275, file: !173, line: 49, type: !34)
!290 = !DILocation(line: 49, column: 69, scope: !275)
!291 = !DILocalVariable(name: "result", scope: !275, file: !173, line: 51, type: !34)
!292 = !DILocation(line: 51, column: 6, scope: !275)
!293 = !DILocalVariable(name: "property", scope: !275, file: !173, line: 52, type: !166)
!294 = !DILocation(line: 52, column: 7, scope: !275)
!295 = !DILocalVariable(name: "actual_type_return", scope: !275, file: !173, line: 53, type: !166)
!296 = !DILocation(line: 53, column: 7, scope: !275)
!297 = !DILocalVariable(name: "actual_format_return", scope: !275, file: !173, line: 54, type: !34)
!298 = !DILocation(line: 54, column: 6, scope: !275)
!299 = !DILocalVariable(name: "bytes_after_return", scope: !275, file: !173, line: 55, type: !56)
!300 = !DILocation(line: 55, column: 16, scope: !275)
!301 = !DILocation(line: 57, column: 25, scope: !275)
!302 = !DILocation(line: 57, column: 36, scope: !275)
!303 = !DILocation(line: 57, column: 13, scope: !275)
!304 = !DILocation(line: 57, column: 11, scope: !275)
!305 = !DILocation(line: 58, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !275, file: !173, line: 58, column: 6)
!307 = !DILocation(line: 58, column: 15, scope: !306)
!308 = !DILocation(line: 58, column: 6, scope: !275)
!309 = !DILocation(line: 60, column: 72, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !173, line: 59, column: 2)
!311 = !DILocation(line: 60, column: 3, scope: !310)
!312 = !DILocation(line: 61, column: 3, scope: !310)
!313 = !DILocation(line: 64, column: 30, scope: !275)
!314 = !DILocation(line: 64, column: 41, scope: !275)
!315 = !DILocation(line: 64, column: 46, scope: !275)
!316 = !DILocation(line: 65, column: 9, scope: !275)
!317 = !DILocation(line: 70, column: 9, scope: !275)
!318 = !DILocation(line: 70, column: 45, scope: !275)
!319 = !DILocation(line: 64, column: 11, scope: !275)
!320 = !DILocation(line: 64, column: 9, scope: !275)
!321 = !DILocation(line: 72, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !275, file: !173, line: 72, column: 6)
!323 = !DILocation(line: 72, column: 13, scope: !322)
!324 = !DILocation(line: 72, column: 6, scope: !275)
!325 = !DILocation(line: 74, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !173, line: 73, column: 2)
!327 = !DILocation(line: 75, column: 3, scope: !326)
!328 = !DILocation(line: 78, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !275, file: !173, line: 78, column: 6)
!330 = !DILocation(line: 78, column: 25, scope: !329)
!331 = !DILocation(line: 78, column: 32, scope: !329)
!332 = !DILocation(line: 78, column: 35, scope: !333)
!333 = !DILexicalBlockFile(scope: !329, file: !173, discriminator: 1)
!334 = !DILocation(line: 78, column: 56, scope: !333)
!335 = !DILocation(line: 78, column: 6, scope: !333)
!336 = !DILocation(line: 80, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !173, line: 80, column: 7)
!338 = distinct !DILexicalBlock(scope: !329, file: !173, line: 79, column: 2)
!339 = !DILocation(line: 80, column: 7, scope: !338)
!340 = !DILocation(line: 82, column: 11, scope: !337)
!341 = !DILocation(line: 81, column: 4, scope: !337)
!342 = !DILocation(line: 83, column: 3, scope: !338)
!343 = !DILocation(line: 86, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !275, file: !173, line: 86, column: 6)
!345 = !DILocation(line: 86, column: 6, scope: !275)
!346 = !DILocation(line: 88, column: 75, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !173, line: 87, column: 2)
!348 = !DILocation(line: 88, column: 3, scope: !347)
!349 = !DILocation(line: 89, column: 3, scope: !347)
!350 = !DILocation(line: 92, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !275, file: !173, line: 92, column: 6)
!352 = !DILocation(line: 92, column: 27, scope: !351)
!353 = !DILocation(line: 92, column: 6, scope: !275)
!354 = !DILocation(line: 94, column: 72, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !173, line: 93, column: 2)
!356 = !DILocation(line: 94, column: 3, scope: !355)
!357 = !DILocation(line: 95, column: 3, scope: !355)
!358 = !DILocation(line: 98, column: 2, scope: !275)
!359 = !DILocation(line: 99, column: 1, scope: !275)
!360 = distinct !DISubprogram(name: "get_current_desktop", scope: !173, file: !173, line: 106, type: !361, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!361 = !DISubroutineType(types: !362)
!362 = !{!34}
!363 = !DILocalVariable(name: "nitems_return", scope: !360, file: !173, line: 108, type: !56)
!364 = !DILocation(line: 108, column: 16, scope: !360)
!365 = !DILocalVariable(name: "prop_return", scope: !360, file: !173, line: 109, type: !164)
!366 = !DILocation(line: 109, column: 17, scope: !360)
!367 = !DILocalVariable(name: "current_desktop", scope: !360, file: !173, line: 110, type: !34)
!368 = !DILocation(line: 110, column: 6, scope: !360)
!369 = !DILocation(line: 113, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !360, file: !173, line: 112, column: 6)
!371 = !DILocation(line: 113, column: 9, scope: !370)
!372 = !DILocation(line: 113, column: 28, scope: !370)
!373 = !DILocation(line: 112, column: 6, scope: !370)
!374 = !DILocation(line: 114, column: 24, scope: !370)
!375 = !DILocation(line: 112, column: 6, scope: !360)
!376 = !DILocation(line: 115, column: 3, scope: !370)
!377 = !DILocation(line: 117, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !360, file: !173, line: 117, column: 6)
!379 = !DILocation(line: 117, column: 20, scope: !378)
!380 = !DILocation(line: 117, column: 6, scope: !360)
!381 = !DILocation(line: 119, column: 3, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !173, line: 118, column: 2)
!383 = !DILocation(line: 120, column: 3, scope: !382)
!384 = !DILocation(line: 123, column: 21, scope: !360)
!385 = !DILocation(line: 123, column: 20, scope: !360)
!386 = !DILocation(line: 123, column: 18, scope: !360)
!387 = !DILocation(line: 124, column: 8, scope: !360)
!388 = !DILocation(line: 124, column: 2, scope: !360)
!389 = !DILocation(line: 125, column: 9, scope: !360)
!390 = !DILocation(line: 125, column: 2, scope: !360)
!391 = !DILocation(line: 126, column: 1, scope: !360)
!392 = distinct !DISubprogram(name: "ewmh_init", scope: !173, file: !173, line: 178, type: !393, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!393 = !DISubroutineType(types: !394)
!394 = !{null}
!395 = !DILocation(line: 182, column: 15, scope: !392)
!396 = !DILocation(line: 182, column: 3, scope: !392)
!397 = !DILocation(line: 181, column: 37, scope: !392)
!398 = !DILocation(line: 184, column: 15, scope: !392)
!399 = !DILocation(line: 184, column: 3, scope: !392)
!400 = !DILocation(line: 183, column: 37, scope: !392)
!401 = !DILocation(line: 185, column: 43, scope: !392)
!402 = !DILocation(line: 185, column: 31, scope: !392)
!403 = !DILocation(line: 185, column: 29, scope: !392)
!404 = !DILocation(line: 187, column: 15, scope: !392)
!405 = !DILocation(line: 187, column: 3, scope: !392)
!406 = !DILocation(line: 186, column: 35, scope: !392)
!407 = !DILocation(line: 188, column: 47, scope: !392)
!408 = !DILocation(line: 188, column: 35, scope: !392)
!409 = !DILocation(line: 188, column: 33, scope: !392)
!410 = !DILocation(line: 189, column: 42, scope: !392)
!411 = !DILocation(line: 189, column: 30, scope: !392)
!412 = !DILocation(line: 189, column: 28, scope: !392)
!413 = !DILocation(line: 190, column: 42, scope: !392)
!414 = !DILocation(line: 190, column: 30, scope: !392)
!415 = !DILocation(line: 190, column: 28, scope: !392)
!416 = !DILocation(line: 191, column: 36, scope: !392)
!417 = !DILocation(line: 191, column: 24, scope: !392)
!418 = !DILocation(line: 191, column: 22, scope: !392)
!419 = !DILocation(line: 192, column: 38, scope: !392)
!420 = !DILocation(line: 192, column: 26, scope: !392)
!421 = !DILocation(line: 192, column: 24, scope: !392)
!422 = !DILocation(line: 193, column: 35, scope: !392)
!423 = !DILocation(line: 193, column: 23, scope: !392)
!424 = !DILocation(line: 193, column: 21, scope: !392)
!425 = !DILocation(line: 194, column: 35, scope: !392)
!426 = !DILocation(line: 194, column: 23, scope: !392)
!427 = !DILocation(line: 194, column: 21, scope: !392)
!428 = !DILocation(line: 195, column: 34, scope: !392)
!429 = !DILocation(line: 195, column: 22, scope: !392)
!430 = !DILocation(line: 195, column: 20, scope: !392)
!431 = !DILocation(line: 196, column: 35, scope: !392)
!432 = !DILocation(line: 196, column: 23, scope: !392)
!433 = !DILocation(line: 196, column: 21, scope: !392)
!434 = !DILocation(line: 197, column: 35, scope: !392)
!435 = !DILocation(line: 197, column: 23, scope: !392)
!436 = !DILocation(line: 197, column: 21, scope: !392)
!437 = !DILocation(line: 198, column: 1, scope: !392)
!438 = distinct !DISubprogram(name: "ewmh_get_window_state", scope: !173, file: !173, line: 206, type: !439, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!439 = !DISubroutineType(types: !440)
!440 = !{!34, !111}
!441 = !DILocalVariable(name: "w", arg: 1, scope: !438, file: !173, line: 206, type: !111)
!442 = !DILocation(line: 206, column: 30, scope: !438)
!443 = !DILocalVariable(name: "nitems_return", scope: !438, file: !173, line: 208, type: !56)
!444 = !DILocation(line: 208, column: 16, scope: !438)
!445 = !DILocalVariable(name: "prop_return", scope: !438, file: !173, line: 209, type: !164)
!446 = !DILocation(line: 209, column: 17, scope: !438)
!447 = !DILocalVariable(name: "return_words", scope: !438, file: !173, line: 210, type: !163)
!448 = !DILocation(line: 210, column: 17, scope: !438)
!449 = !DILocalVariable(name: "item", scope: !438, file: !173, line: 211, type: !56)
!450 = !DILocation(line: 211, column: 16, scope: !438)
!451 = !DILocalVariable(name: "maximized_vert", scope: !438, file: !173, line: 212, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !169, line: 28, baseType: !34)
!453 = !DILocation(line: 212, column: 10, scope: !438)
!454 = !DILocalVariable(name: "maximized_horz", scope: !438, file: !173, line: 212, type: !452)
!455 = !DILocation(line: 212, column: 26, scope: !438)
!456 = !DILocalVariable(name: "hidden", scope: !438, file: !173, line: 212, type: !452)
!457 = !DILocation(line: 212, column: 42, scope: !438)
!458 = !DILocation(line: 214, column: 43, scope: !438)
!459 = !DILocation(line: 214, column: 34, scope: !438)
!460 = !DILocation(line: 214, column: 17, scope: !438)
!461 = !DILocation(line: 216, column: 25, scope: !462)
!462 = distinct !DILexicalBlock(scope: !438, file: !173, line: 216, column: 6)
!463 = !DILocation(line: 216, column: 6, scope: !462)
!464 = !DILocation(line: 216, column: 82, scope: !462)
!465 = !DILocation(line: 216, column: 6, scope: !438)
!466 = !DILocation(line: 217, column: 3, scope: !462)
!467 = !DILocation(line: 219, column: 35, scope: !438)
!468 = !DILocation(line: 219, column: 17, scope: !438)
!469 = !DILocation(line: 219, column: 15, scope: !438)
!470 = !DILocation(line: 221, column: 12, scope: !471)
!471 = distinct !DILexicalBlock(scope: !438, file: !173, line: 221, column: 2)
!472 = !DILocation(line: 221, column: 7, scope: !471)
!473 = !DILocation(line: 221, column: 17, scope: !474)
!474 = !DILexicalBlockFile(scope: !475, file: !173, discriminator: 1)
!475 = distinct !DILexicalBlock(scope: !471, file: !173, line: 221, column: 2)
!476 = !DILocation(line: 221, column: 24, scope: !474)
!477 = !DILocation(line: 221, column: 22, scope: !474)
!478 = !DILocation(line: 221, column: 2, scope: !474)
!479 = !DILocation(line: 223, column: 20, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !173, line: 223, column: 7)
!481 = distinct !DILexicalBlock(scope: !475, file: !173, line: 222, column: 2)
!482 = !DILocation(line: 223, column: 7, scope: !480)
!483 = !DILocation(line: 223, column: 29, scope: !480)
!484 = !DILocation(line: 223, column: 26, scope: !480)
!485 = !DILocation(line: 223, column: 7, scope: !481)
!486 = !DILocation(line: 224, column: 19, scope: !480)
!487 = !DILocation(line: 224, column: 4, scope: !480)
!488 = !DILocation(line: 225, column: 20, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !173, line: 225, column: 7)
!490 = !DILocation(line: 225, column: 7, scope: !489)
!491 = !DILocation(line: 225, column: 29, scope: !489)
!492 = !DILocation(line: 225, column: 26, scope: !489)
!493 = !DILocation(line: 225, column: 7, scope: !481)
!494 = !DILocation(line: 226, column: 19, scope: !489)
!495 = !DILocation(line: 226, column: 4, scope: !489)
!496 = !DILocation(line: 227, column: 20, scope: !497)
!497 = distinct !DILexicalBlock(scope: !481, file: !173, line: 227, column: 7)
!498 = !DILocation(line: 227, column: 7, scope: !497)
!499 = !DILocation(line: 227, column: 29, scope: !497)
!500 = !DILocation(line: 227, column: 26, scope: !497)
!501 = !DILocation(line: 227, column: 7, scope: !481)
!502 = !DILocation(line: 228, column: 11, scope: !497)
!503 = !DILocation(line: 228, column: 4, scope: !497)
!504 = !DILocation(line: 229, column: 2, scope: !481)
!505 = !DILocation(line: 221, column: 43, scope: !506)
!506 = !DILexicalBlockFile(scope: !475, file: !173, discriminator: 2)
!507 = !DILocation(line: 221, column: 2, scope: !506)
!508 = distinct !{!508, !509}
!509 = !DILocation(line: 221, column: 2, scope: !438)
!510 = !DILocation(line: 231, column: 8, scope: !438)
!511 = !DILocation(line: 231, column: 2, scope: !438)
!512 = !DILocation(line: 234, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !438, file: !173, line: 234, column: 6)
!514 = !DILocation(line: 234, column: 6, scope: !438)
!515 = !DILocation(line: 235, column: 3, scope: !513)
!516 = !DILocation(line: 236, column: 11, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !173, line: 236, column: 11)
!518 = !DILocation(line: 236, column: 26, scope: !517)
!519 = !DILocation(line: 236, column: 29, scope: !520)
!520 = !DILexicalBlockFile(scope: !517, file: !173, discriminator: 1)
!521 = !DILocation(line: 236, column: 11, scope: !520)
!522 = !DILocation(line: 237, column: 3, scope: !517)
!523 = !DILocation(line: 239, column: 3, scope: !517)
!524 = !DILocation(line: 240, column: 1, scope: !438)
!525 = distinct !DISubprogram(name: "ewmh_change_state", scope: !173, file: !173, line: 336, type: !526, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!526 = !DISubroutineType(types: !527)
!527 = !{!34, !111, !34}
!528 = !DILocalVariable(name: "wnd", arg: 1, scope: !525, file: !173, line: 336, type: !111)
!529 = !DILocation(line: 336, column: 26, scope: !525)
!530 = !DILocalVariable(name: "state", arg: 2, scope: !525, file: !173, line: 336, type: !34)
!531 = !DILocation(line: 336, column: 35, scope: !525)
!532 = !DILocation(line: 341, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !525, file: !173, line: 341, column: 6)
!534 = !DILocation(line: 341, column: 12, scope: !533)
!535 = !DILocation(line: 341, column: 6, scope: !525)
!536 = !DILocation(line: 344, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !173, line: 343, column: 7)
!538 = distinct !DILexicalBlock(scope: !533, file: !173, line: 342, column: 2)
!539 = !DILocation(line: 344, column: 16, scope: !537)
!540 = !DILocation(line: 345, column: 8, scope: !537)
!541 = !DILocation(line: 343, column: 7, scope: !537)
!542 = !DILocation(line: 345, column: 44, scope: !537)
!543 = !DILocation(line: 343, column: 7, scope: !538)
!544 = !DILocation(line: 346, column: 4, scope: !537)
!545 = !DILocation(line: 347, column: 2, scope: !538)
!546 = !DILocation(line: 351, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !173, line: 350, column: 7)
!548 = distinct !DILexicalBlock(scope: !533, file: !173, line: 349, column: 2)
!549 = !DILocation(line: 351, column: 16, scope: !547)
!550 = !DILocation(line: 352, column: 8, scope: !547)
!551 = !DILocation(line: 350, column: 7, scope: !547)
!552 = !DILocation(line: 352, column: 44, scope: !547)
!553 = !DILocation(line: 350, column: 7, scope: !548)
!554 = !DILocation(line: 353, column: 4, scope: !547)
!555 = !DILocation(line: 356, column: 2, scope: !525)
!556 = !DILocation(line: 357, column: 1, scope: !525)
!557 = distinct !DISubprogram(name: "ewmh_modify_state", scope: !173, file: !173, line: 243, type: !558, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!558 = !DISubroutineType(types: !559)
!559 = !{!34, !111, !34, !166, !166}
!560 = !DILocalVariable(name: "wnd", arg: 1, scope: !557, file: !173, line: 243, type: !111)
!561 = !DILocation(line: 243, column: 26, scope: !557)
!562 = !DILocalVariable(name: "add", arg: 2, scope: !557, file: !173, line: 243, type: !34)
!563 = !DILocation(line: 243, column: 35, scope: !557)
!564 = !DILocalVariable(name: "atom1", arg: 3, scope: !557, file: !173, line: 243, type: !166)
!565 = !DILocation(line: 243, column: 45, scope: !557)
!566 = !DILocalVariable(name: "atom2", arg: 4, scope: !557, file: !173, line: 243, type: !166)
!567 = !DILocation(line: 243, column: 57, scope: !557)
!568 = !DILocalVariable(name: "status", scope: !557, file: !173, line: 245, type: !34)
!569 = !DILocation(line: 245, column: 8, scope: !557)
!570 = !DILocalVariable(name: "xevent", scope: !557, file: !173, line: 246, type: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "XEvent", file: !24, line: 1009, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_XEvent", file: !24, line: 973, size: 1536, align: 64, elements: !573)
!573 = !{!574, !575, !586, !606, !625, !644, !665, !676, !690, !707, !718, !728, !744, !754, !765, !776, !786, !800, !817, !829, !840, !858, !869, !880, !892, !903, !917, !930, !942, !969, !981, !992, !1005, !1015, !1028}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !24, line: 974, baseType: !34, size: 32, align: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "xany", scope: !572, file: !24, line: 975, baseType: !576, size: 320, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "XAnyEvent", file: !24, line: 940, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 934, size: 320, align: 64, elements: !578)
!578 = !{!579, !580, !581, !582, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !24, line: 935, baseType: !34, size: 32, align: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !577, file: !24, line: 936, baseType: !56, size: 64, align: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !577, file: !24, line: 937, baseType: !34, size: 32, align: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !577, file: !24, line: 938, baseType: !583, size: 64, align: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "Display", file: !24, line: 487, baseType: !65)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !577, file: !24, line: 939, baseType: !111, size: 64, align: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "xkey", scope: !572, file: !24, line: 976, baseType: !587, size: 768, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "XKeyEvent", file: !24, line: 571, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 557, size: 768, align: 64, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !599, !600, !601, !602, !603, !604, !605}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !24, line: 558, baseType: !34, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !588, file: !24, line: 559, baseType: !56, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !588, file: !24, line: 560, baseType: !34, size: 32, align: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !588, file: !24, line: 561, baseType: !583, size: 64, align: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !588, file: !24, line: 562, baseType: !111, size: 64, align: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !588, file: !24, line: 563, baseType: !111, size: 64, align: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !588, file: !24, line: 564, baseType: !111, size: 64, align: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !588, file: !24, line: 565, baseType: !598, size: 64, align: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "Time", file: !55, line: 77, baseType: !56)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !588, file: !24, line: 566, baseType: !34, size: 32, align: 32, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !588, file: !24, line: 566, baseType: !34, size: 32, align: 32, offset: 544)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !588, file: !24, line: 567, baseType: !34, size: 32, align: 32, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !588, file: !24, line: 567, baseType: !34, size: 32, align: 32, offset: 608)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !588, file: !24, line: 568, baseType: !92, size: 32, align: 32, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !588, file: !24, line: 569, baseType: !92, size: 32, align: 32, offset: 672)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !588, file: !24, line: 570, baseType: !34, size: 32, align: 32, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "xbutton", scope: !572, file: !24, line: 977, baseType: !607, size: 768, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "XButtonEvent", file: !24, line: 589, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 575, size: 768, align: 64, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !24, line: 576, baseType: !34, size: 32, align: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !608, file: !24, line: 577, baseType: !56, size: 64, align: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !608, file: !24, line: 578, baseType: !34, size: 32, align: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !608, file: !24, line: 579, baseType: !583, size: 64, align: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !608, file: !24, line: 580, baseType: !111, size: 64, align: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !608, file: !24, line: 581, baseType: !111, size: 64, align: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !608, file: !24, line: 582, baseType: !111, size: 64, align: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !608, file: !24, line: 583, baseType: !598, size: 64, align: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !608, file: !24, line: 584, baseType: !34, size: 32, align: 32, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !608, file: !24, line: 584, baseType: !34, size: 32, align: 32, offset: 544)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !608, file: !24, line: 585, baseType: !34, size: 32, align: 32, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !608, file: !24, line: 585, baseType: !34, size: 32, align: 32, offset: 608)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !608, file: !24, line: 586, baseType: !92, size: 32, align: 32, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !608, file: !24, line: 587, baseType: !92, size: 32, align: 32, offset: 672)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !608, file: !24, line: 588, baseType: !34, size: 32, align: 32, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xmotion", scope: !572, file: !24, line: 978, baseType: !626, size: 768, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMotionEvent", file: !24, line: 607, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 593, size: 768, align: 64, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !24, line: 594, baseType: !34, size: 32, align: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !627, file: !24, line: 595, baseType: !56, size: 64, align: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !627, file: !24, line: 596, baseType: !34, size: 32, align: 32, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !627, file: !24, line: 597, baseType: !583, size: 64, align: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !627, file: !24, line: 598, baseType: !111, size: 64, align: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !627, file: !24, line: 599, baseType: !111, size: 64, align: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !627, file: !24, line: 600, baseType: !111, size: 64, align: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !627, file: !24, line: 601, baseType: !598, size: 64, align: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !627, file: !24, line: 602, baseType: !34, size: 32, align: 32, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !627, file: !24, line: 602, baseType: !34, size: 32, align: 32, offset: 544)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !627, file: !24, line: 603, baseType: !34, size: 32, align: 32, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !627, file: !24, line: 603, baseType: !34, size: 32, align: 32, offset: 608)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !627, file: !24, line: 604, baseType: !92, size: 32, align: 32, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "is_hint", scope: !627, file: !24, line: 605, baseType: !44, size: 8, align: 8, offset: 672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !627, file: !24, line: 606, baseType: !34, size: 32, align: 32, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xcrossing", scope: !572, file: !24, line: 979, baseType: !645, size: 832, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCrossingEvent", file: !24, line: 630, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 610, size: 832, align: 64, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !24, line: 611, baseType: !34, size: 32, align: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !646, file: !24, line: 612, baseType: !56, size: 64, align: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !646, file: !24, line: 613, baseType: !34, size: 32, align: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !646, file: !24, line: 614, baseType: !583, size: 64, align: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !646, file: !24, line: 615, baseType: !111, size: 64, align: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !646, file: !24, line: 616, baseType: !111, size: 64, align: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !646, file: !24, line: 617, baseType: !111, size: 64, align: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !646, file: !24, line: 618, baseType: !598, size: 64, align: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !646, file: !24, line: 619, baseType: !34, size: 32, align: 32, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !646, file: !24, line: 619, baseType: !34, size: 32, align: 32, offset: 544)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !646, file: !24, line: 620, baseType: !34, size: 32, align: 32, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !646, file: !24, line: 620, baseType: !34, size: 32, align: 32, offset: 608)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !646, file: !24, line: 621, baseType: !34, size: 32, align: 32, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !646, file: !24, line: 622, baseType: !34, size: 32, align: 32, offset: 672)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !646, file: !24, line: 627, baseType: !34, size: 32, align: 32, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "focus", scope: !646, file: !24, line: 628, baseType: !34, size: 32, align: 32, offset: 736)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !646, file: !24, line: 629, baseType: !92, size: 32, align: 32, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "xfocus", scope: !572, file: !24, line: 980, baseType: !666, size: 384, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "XFocusChangeEvent", file: !24, line: 648, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 634, size: 384, align: 64, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !24, line: 635, baseType: !34, size: 32, align: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !667, file: !24, line: 636, baseType: !56, size: 64, align: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !667, file: !24, line: 637, baseType: !34, size: 32, align: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !667, file: !24, line: 638, baseType: !583, size: 64, align: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !667, file: !24, line: 639, baseType: !111, size: 64, align: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !667, file: !24, line: 640, baseType: !34, size: 32, align: 32, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !667, file: !24, line: 642, baseType: !34, size: 32, align: 32, offset: 352)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "xexpose", scope: !572, file: !24, line: 981, baseType: !677, size: 512, align: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "XExposeEvent", file: !24, line: 671, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 662, size: 512, align: 64, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !24, line: 663, baseType: !34, size: 32, align: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !678, file: !24, line: 664, baseType: !56, size: 64, align: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !678, file: !24, line: 665, baseType: !34, size: 32, align: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !678, file: !24, line: 666, baseType: !583, size: 64, align: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !678, file: !24, line: 667, baseType: !111, size: 64, align: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !678, file: !24, line: 668, baseType: !34, size: 32, align: 32, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !678, file: !24, line: 668, baseType: !34, size: 32, align: 32, offset: 352)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !678, file: !24, line: 669, baseType: !34, size: 32, align: 32, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !678, file: !24, line: 669, baseType: !34, size: 32, align: 32, offset: 416)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !678, file: !24, line: 670, baseType: !34, size: 32, align: 32, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "xgraphicsexpose", scope: !572, file: !24, line: 982, baseType: !691, size: 576, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGraphicsExposeEvent", file: !24, line: 684, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 673, size: 576, align: 64, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !700, !701, !702, !703, !704, !705, !706}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !24, line: 674, baseType: !34, size: 32, align: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !692, file: !24, line: 675, baseType: !56, size: 64, align: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !692, file: !24, line: 676, baseType: !34, size: 32, align: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !692, file: !24, line: 677, baseType: !583, size: 64, align: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "drawable", scope: !692, file: !24, line: 678, baseType: !699, size: 64, align: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drawable", file: !55, line: 97, baseType: !54)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !692, file: !24, line: 679, baseType: !34, size: 32, align: 32, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !692, file: !24, line: 679, baseType: !34, size: 32, align: 32, offset: 352)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !692, file: !24, line: 680, baseType: !34, size: 32, align: 32, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !692, file: !24, line: 680, baseType: !34, size: 32, align: 32, offset: 416)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !24, line: 681, baseType: !34, size: 32, align: 32, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "major_code", scope: !692, file: !24, line: 682, baseType: !34, size: 32, align: 32, offset: 480)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "minor_code", scope: !692, file: !24, line: 683, baseType: !34, size: 32, align: 32, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "xnoexpose", scope: !572, file: !24, line: 983, baseType: !708, size: 384, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "XNoExposeEvent", file: !24, line: 694, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 686, size: 384, align: 64, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !24, line: 687, baseType: !34, size: 32, align: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !709, file: !24, line: 688, baseType: !56, size: 64, align: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !709, file: !24, line: 689, baseType: !34, size: 32, align: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !709, file: !24, line: 690, baseType: !583, size: 64, align: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "drawable", scope: !709, file: !24, line: 691, baseType: !699, size: 64, align: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "major_code", scope: !709, file: !24, line: 692, baseType: !34, size: 32, align: 32, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "minor_code", scope: !709, file: !24, line: 693, baseType: !34, size: 32, align: 32, offset: 352)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "xvisibility", scope: !572, file: !24, line: 984, baseType: !719, size: 384, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "XVisibilityEvent", file: !24, line: 703, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 696, size: 384, align: 64, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !24, line: 697, baseType: !34, size: 32, align: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !720, file: !24, line: 698, baseType: !56, size: 64, align: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !720, file: !24, line: 699, baseType: !34, size: 32, align: 32, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !720, file: !24, line: 700, baseType: !583, size: 64, align: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !720, file: !24, line: 701, baseType: !111, size: 64, align: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !720, file: !24, line: 702, baseType: !34, size: 32, align: 32, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "xcreatewindow", scope: !572, file: !24, line: 985, baseType: !729, size: 576, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCreateWindowEvent", file: !24, line: 716, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 705, size: 576, align: 64, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !24, line: 706, baseType: !34, size: 32, align: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !730, file: !24, line: 707, baseType: !56, size: 64, align: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !730, file: !24, line: 708, baseType: !34, size: 32, align: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !730, file: !24, line: 709, baseType: !583, size: 64, align: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !730, file: !24, line: 710, baseType: !111, size: 64, align: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !730, file: !24, line: 711, baseType: !111, size: 64, align: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !730, file: !24, line: 712, baseType: !34, size: 32, align: 32, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !730, file: !24, line: 712, baseType: !34, size: 32, align: 32, offset: 416)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !730, file: !24, line: 713, baseType: !34, size: 32, align: 32, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !730, file: !24, line: 713, baseType: !34, size: 32, align: 32, offset: 480)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !730, file: !24, line: 714, baseType: !34, size: 32, align: 32, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !730, file: !24, line: 715, baseType: !34, size: 32, align: 32, offset: 544)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xdestroywindow", scope: !572, file: !24, line: 986, baseType: !745, size: 384, align: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDestroyWindowEvent", file: !24, line: 725, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 718, size: 384, align: 64, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !24, line: 719, baseType: !34, size: 32, align: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !746, file: !24, line: 720, baseType: !56, size: 64, align: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !746, file: !24, line: 721, baseType: !34, size: 32, align: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !746, file: !24, line: 722, baseType: !583, size: 64, align: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !746, file: !24, line: 723, baseType: !111, size: 64, align: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !746, file: !24, line: 724, baseType: !111, size: 64, align: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xunmap", scope: !572, file: !24, line: 987, baseType: !755, size: 448, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "XUnmapEvent", file: !24, line: 735, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 727, size: 448, align: 64, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !24, line: 728, baseType: !34, size: 32, align: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !756, file: !24, line: 729, baseType: !56, size: 64, align: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !756, file: !24, line: 730, baseType: !34, size: 32, align: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !756, file: !24, line: 731, baseType: !583, size: 64, align: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !756, file: !24, line: 732, baseType: !111, size: 64, align: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !756, file: !24, line: 733, baseType: !111, size: 64, align: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "from_configure", scope: !756, file: !24, line: 734, baseType: !34, size: 32, align: 32, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xmap", scope: !572, file: !24, line: 988, baseType: !766, size: 448, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMapEvent", file: !24, line: 745, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 737, size: 448, align: 64, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !24, line: 738, baseType: !34, size: 32, align: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !767, file: !24, line: 739, baseType: !56, size: 64, align: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !767, file: !24, line: 740, baseType: !34, size: 32, align: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !767, file: !24, line: 741, baseType: !583, size: 64, align: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !767, file: !24, line: 742, baseType: !111, size: 64, align: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !767, file: !24, line: 743, baseType: !111, size: 64, align: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !767, file: !24, line: 744, baseType: !34, size: 32, align: 32, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xmaprequest", scope: !572, file: !24, line: 989, baseType: !777, size: 384, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMapRequestEvent", file: !24, line: 754, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 747, size: 384, align: 64, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !24, line: 748, baseType: !34, size: 32, align: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !778, file: !24, line: 749, baseType: !56, size: 64, align: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !778, file: !24, line: 750, baseType: !34, size: 32, align: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !778, file: !24, line: 751, baseType: !583, size: 64, align: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !778, file: !24, line: 752, baseType: !111, size: 64, align: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !778, file: !24, line: 753, baseType: !111, size: 64, align: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "xreparent", scope: !572, file: !24, line: 990, baseType: !787, size: 576, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "XReparentEvent", file: !24, line: 766, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 756, size: 576, align: 64, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !24, line: 757, baseType: !34, size: 32, align: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !788, file: !24, line: 758, baseType: !56, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !788, file: !24, line: 759, baseType: !34, size: 32, align: 32, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !788, file: !24, line: 760, baseType: !583, size: 64, align: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !788, file: !24, line: 761, baseType: !111, size: 64, align: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !788, file: !24, line: 762, baseType: !111, size: 64, align: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !788, file: !24, line: 763, baseType: !111, size: 64, align: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !788, file: !24, line: 764, baseType: !34, size: 32, align: 32, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !788, file: !24, line: 764, baseType: !34, size: 32, align: 32, offset: 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !788, file: !24, line: 765, baseType: !34, size: 32, align: 32, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "xconfigure", scope: !572, file: !24, line: 991, baseType: !801, size: 704, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "XConfigureEvent", file: !24, line: 780, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 768, size: 704, align: 64, elements: !803)
!803 = !{!804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !802, file: !24, line: 769, baseType: !34, size: 32, align: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !802, file: !24, line: 770, baseType: !56, size: 64, align: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !802, file: !24, line: 771, baseType: !34, size: 32, align: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !802, file: !24, line: 772, baseType: !583, size: 64, align: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !802, file: !24, line: 773, baseType: !111, size: 64, align: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !802, file: !24, line: 774, baseType: !111, size: 64, align: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !802, file: !24, line: 775, baseType: !34, size: 32, align: 32, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !802, file: !24, line: 775, baseType: !34, size: 32, align: 32, offset: 416)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !802, file: !24, line: 776, baseType: !34, size: 32, align: 32, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !802, file: !24, line: 776, baseType: !34, size: 32, align: 32, offset: 480)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !802, file: !24, line: 777, baseType: !34, size: 32, align: 32, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !802, file: !24, line: 778, baseType: !111, size: 64, align: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !802, file: !24, line: 779, baseType: !34, size: 32, align: 32, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "xgravity", scope: !572, file: !24, line: 992, baseType: !818, size: 448, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGravityEvent", file: !24, line: 790, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 782, size: 448, align: 64, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !24, line: 783, baseType: !34, size: 32, align: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !819, file: !24, line: 784, baseType: !56, size: 64, align: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !819, file: !24, line: 785, baseType: !34, size: 32, align: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !819, file: !24, line: 786, baseType: !583, size: 64, align: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !819, file: !24, line: 787, baseType: !111, size: 64, align: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !819, file: !24, line: 788, baseType: !111, size: 64, align: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !819, file: !24, line: 789, baseType: !34, size: 32, align: 32, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !819, file: !24, line: 789, baseType: !34, size: 32, align: 32, offset: 416)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "xresizerequest", scope: !572, file: !24, line: 993, baseType: !830, size: 384, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "XResizeRequestEvent", file: !24, line: 799, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 792, size: 384, align: 64, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838, !839}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !24, line: 793, baseType: !34, size: 32, align: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !831, file: !24, line: 794, baseType: !56, size: 64, align: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !831, file: !24, line: 795, baseType: !34, size: 32, align: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !831, file: !24, line: 796, baseType: !583, size: 64, align: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !831, file: !24, line: 797, baseType: !111, size: 64, align: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !831, file: !24, line: 798, baseType: !34, size: 32, align: 32, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !831, file: !24, line: 798, baseType: !34, size: 32, align: 32, offset: 352)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "xconfigurerequest", scope: !572, file: !24, line: 994, baseType: !841, size: 768, align: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "XConfigureRequestEvent", file: !24, line: 814, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 801, size: 768, align: 64, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !842, file: !24, line: 802, baseType: !34, size: 32, align: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !842, file: !24, line: 803, baseType: !56, size: 64, align: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !842, file: !24, line: 804, baseType: !34, size: 32, align: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !842, file: !24, line: 805, baseType: !583, size: 64, align: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !842, file: !24, line: 806, baseType: !111, size: 64, align: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !842, file: !24, line: 807, baseType: !111, size: 64, align: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !842, file: !24, line: 808, baseType: !34, size: 32, align: 32, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !842, file: !24, line: 808, baseType: !34, size: 32, align: 32, offset: 416)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !842, file: !24, line: 809, baseType: !34, size: 32, align: 32, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !842, file: !24, line: 809, baseType: !34, size: 32, align: 32, offset: 480)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !842, file: !24, line: 810, baseType: !34, size: 32, align: 32, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !842, file: !24, line: 811, baseType: !111, size: 64, align: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !842, file: !24, line: 812, baseType: !34, size: 32, align: 32, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "value_mask", scope: !842, file: !24, line: 813, baseType: !56, size: 64, align: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "xcirculate", scope: !572, file: !24, line: 995, baseType: !859, size: 448, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCirculateEvent", file: !24, line: 824, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 816, size: 448, align: 64, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !24, line: 817, baseType: !34, size: 32, align: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !860, file: !24, line: 818, baseType: !56, size: 64, align: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !860, file: !24, line: 819, baseType: !34, size: 32, align: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !860, file: !24, line: 820, baseType: !583, size: 64, align: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !860, file: !24, line: 821, baseType: !111, size: 64, align: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !860, file: !24, line: 822, baseType: !111, size: 64, align: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "place", scope: !860, file: !24, line: 823, baseType: !34, size: 32, align: 32, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "xcirculaterequest", scope: !572, file: !24, line: 996, baseType: !870, size: 448, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCirculateRequestEvent", file: !24, line: 834, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 826, size: 448, align: 64, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !871, file: !24, line: 827, baseType: !34, size: 32, align: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !871, file: !24, line: 828, baseType: !56, size: 64, align: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !871, file: !24, line: 829, baseType: !34, size: 32, align: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !871, file: !24, line: 830, baseType: !583, size: 64, align: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !871, file: !24, line: 831, baseType: !111, size: 64, align: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !871, file: !24, line: 832, baseType: !111, size: 64, align: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "place", scope: !871, file: !24, line: 833, baseType: !34, size: 32, align: 32, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "xproperty", scope: !572, file: !24, line: 997, baseType: !881, size: 512, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPropertyEvent", file: !24, line: 845, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 836, size: 512, align: 64, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !882, file: !24, line: 837, baseType: !34, size: 32, align: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !882, file: !24, line: 838, baseType: !56, size: 64, align: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !882, file: !24, line: 839, baseType: !34, size: 32, align: 32, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !882, file: !24, line: 840, baseType: !583, size: 64, align: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !882, file: !24, line: 841, baseType: !111, size: 64, align: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !882, file: !24, line: 842, baseType: !166, size: 64, align: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !882, file: !24, line: 843, baseType: !598, size: 64, align: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !882, file: !24, line: 844, baseType: !34, size: 32, align: 32, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "xselectionclear", scope: !572, file: !24, line: 998, baseType: !893, size: 448, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSelectionClearEvent", file: !24, line: 855, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 847, size: 448, align: 64, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !902}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !894, file: !24, line: 848, baseType: !34, size: 32, align: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !894, file: !24, line: 849, baseType: !56, size: 64, align: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !894, file: !24, line: 850, baseType: !34, size: 32, align: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !894, file: !24, line: 851, baseType: !583, size: 64, align: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !894, file: !24, line: 852, baseType: !111, size: 64, align: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "selection", scope: !894, file: !24, line: 853, baseType: !166, size: 64, align: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !894, file: !24, line: 854, baseType: !598, size: 64, align: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "xselectionrequest", scope: !572, file: !24, line: 999, baseType: !904, size: 640, align: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSelectionRequestEvent", file: !24, line: 868, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 857, size: 640, align: 64, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914, !915, !916}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !905, file: !24, line: 858, baseType: !34, size: 32, align: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !905, file: !24, line: 859, baseType: !56, size: 64, align: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !905, file: !24, line: 860, baseType: !34, size: 32, align: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !905, file: !24, line: 861, baseType: !583, size: 64, align: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !905, file: !24, line: 862, baseType: !111, size: 64, align: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "requestor", scope: !905, file: !24, line: 863, baseType: !111, size: 64, align: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "selection", scope: !905, file: !24, line: 864, baseType: !166, size: 64, align: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !905, file: !24, line: 865, baseType: !166, size: 64, align: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "property", scope: !905, file: !24, line: 866, baseType: !166, size: 64, align: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !905, file: !24, line: 867, baseType: !598, size: 64, align: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "xselection", scope: !572, file: !24, line: 1000, baseType: !918, size: 576, align: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSelectionEvent", file: !24, line: 880, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 870, size: 576, align: 64, elements: !920)
!920 = !{!921, !922, !923, !924, !925, !926, !927, !928, !929}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !919, file: !24, line: 871, baseType: !34, size: 32, align: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !919, file: !24, line: 872, baseType: !56, size: 64, align: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !919, file: !24, line: 873, baseType: !34, size: 32, align: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !919, file: !24, line: 874, baseType: !583, size: 64, align: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "requestor", scope: !919, file: !24, line: 875, baseType: !111, size: 64, align: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "selection", scope: !919, file: !24, line: 876, baseType: !166, size: 64, align: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !919, file: !24, line: 877, baseType: !166, size: 64, align: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "property", scope: !919, file: !24, line: 878, baseType: !166, size: 64, align: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !919, file: !24, line: 879, baseType: !598, size: 64, align: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "xcolormap", scope: !572, file: !24, line: 1001, baseType: !931, size: 448, align: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "XColormapEvent", file: !24, line: 895, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 882, size: 448, align: 64, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !932, file: !24, line: 883, baseType: !34, size: 32, align: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !932, file: !24, line: 884, baseType: !56, size: 64, align: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !932, file: !24, line: 885, baseType: !34, size: 32, align: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !932, file: !24, line: 886, baseType: !583, size: 64, align: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !932, file: !24, line: 887, baseType: !111, size: 64, align: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !932, file: !24, line: 888, baseType: !145, size: 64, align: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "new", scope: !932, file: !24, line: 892, baseType: !34, size: 32, align: 32, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !932, file: !24, line: 894, baseType: !34, size: 32, align: 32, offset: 416)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "xclient", scope: !572, file: !24, line: 1002, baseType: !943, size: 768, align: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "XClientMessageEvent", file: !24, line: 910, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 897, size: 768, align: 64, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951, !952, !953}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !24, line: 898, baseType: !34, size: 32, align: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !944, file: !24, line: 899, baseType: !56, size: 64, align: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !944, file: !24, line: 900, baseType: !34, size: 32, align: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !944, file: !24, line: 901, baseType: !583, size: 64, align: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !944, file: !24, line: 902, baseType: !111, size: 64, align: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !944, file: !24, line: 903, baseType: !166, size: 64, align: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !944, file: !24, line: 904, baseType: !34, size: 32, align: 32, offset: 384)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !944, file: !24, line: 909, baseType: !954, size: 320, align: 64, offset: 448)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !24, line: 905, size: 320, align: 64, elements: !955)
!955 = !{!956, !960, !965}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !954, file: !24, line: 906, baseType: !957, size: 160, align: 8)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, align: 8, elements: !958)
!958 = !{!959}
!959 = !DISubrange(count: 20)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !954, file: !24, line: 907, baseType: !961, size: 160, align: 16)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 160, align: 16, elements: !963)
!962 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!963 = !{!964}
!964 = !DISubrange(count: 10)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !954, file: !24, line: 908, baseType: !966, size: 320, align: 64)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 320, align: 64, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 5)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "xmapping", scope: !572, file: !24, line: 1003, baseType: !970, size: 448, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMappingEvent", file: !24, line: 922, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 912, size: 448, align: 64, elements: !972)
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !971, file: !24, line: 913, baseType: !34, size: 32, align: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !971, file: !24, line: 914, baseType: !56, size: 64, align: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !971, file: !24, line: 915, baseType: !34, size: 32, align: 32, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !971, file: !24, line: 916, baseType: !583, size: 64, align: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !971, file: !24, line: 917, baseType: !111, size: 64, align: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !971, file: !24, line: 918, baseType: !34, size: 32, align: 32, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "first_keycode", scope: !971, file: !24, line: 920, baseType: !34, size: 32, align: 32, offset: 352)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !971, file: !24, line: 921, baseType: !34, size: 32, align: 32, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "xerror", scope: !572, file: !24, line: 1004, baseType: !982, size: 320, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "XErrorEvent", file: !24, line: 932, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 924, size: 320, align: 64, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !991}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !983, file: !24, line: 925, baseType: !34, size: 32, align: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !983, file: !24, line: 926, baseType: !583, size: 64, align: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "resourceid", scope: !983, file: !24, line: 927, baseType: !54, size: 64, align: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !983, file: !24, line: 928, baseType: !56, size: 64, align: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !983, file: !24, line: 929, baseType: !165, size: 8, align: 8, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "request_code", scope: !983, file: !24, line: 930, baseType: !165, size: 8, align: 8, offset: 264)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "minor_code", scope: !983, file: !24, line: 931, baseType: !165, size: 8, align: 8, offset: 272)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "xkeymap", scope: !572, file: !24, line: 1005, baseType: !993, size: 576, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "XKeymapEvent", file: !24, line: 660, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 653, size: 576, align: 64, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !994, file: !24, line: 654, baseType: !34, size: 32, align: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !994, file: !24, line: 655, baseType: !56, size: 64, align: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !994, file: !24, line: 656, baseType: !34, size: 32, align: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !994, file: !24, line: 657, baseType: !583, size: 64, align: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !994, file: !24, line: 658, baseType: !111, size: 64, align: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "key_vector", scope: !994, file: !24, line: 659, baseType: !1002, size: 256, align: 8, offset: 320)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, align: 8, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "xgeneric", scope: !572, file: !24, line: 1006, baseType: !1006, size: 320, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGenericEvent", file: !24, line: 956, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 948, size: 320, align: 64, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1007, file: !24, line: 950, baseType: !34, size: 32, align: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1007, file: !24, line: 951, baseType: !56, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1007, file: !24, line: 952, baseType: !34, size: 32, align: 32, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1007, file: !24, line: 953, baseType: !583, size: 64, align: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !1007, file: !24, line: 954, baseType: !34, size: 32, align: 32, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "evtype", scope: !1007, file: !24, line: 955, baseType: !34, size: 32, align: 32, offset: 288)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "xcookie", scope: !572, file: !24, line: 1007, baseType: !1016, size: 448, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGenericEventCookie", file: !24, line: 967, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 958, size: 448, align: 64, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1017, file: !24, line: 959, baseType: !34, size: 32, align: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1017, file: !24, line: 960, baseType: !56, size: 64, align: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1017, file: !24, line: 961, baseType: !34, size: 32, align: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1017, file: !24, line: 962, baseType: !583, size: 64, align: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !1017, file: !24, line: 963, baseType: !34, size: 32, align: 32, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "evtype", scope: !1017, file: !24, line: 964, baseType: !34, size: 32, align: 32, offset: 288)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1017, file: !24, line: 965, baseType: !92, size: 32, align: 32, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1017, file: !24, line: 966, baseType: !1027, size: 64, align: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !572, file: !24, line: 1008, baseType: !1029, size: 1536, align: 64)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1536, align: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 24)
!1032 = !DILocation(line: 246, column: 9, scope: !557)
!1033 = !DILocalVariable(name: "result", scope: !557, file: !173, line: 248, type: !34)
!1034 = !DILocation(line: 248, column: 6, scope: !557)
!1035 = !DILocalVariable(name: "i", scope: !557, file: !173, line: 249, type: !56)
!1036 = !DILocation(line: 249, column: 16, scope: !557)
!1037 = !DILocalVariable(name: "nitems", scope: !557, file: !173, line: 249, type: !56)
!1038 = !DILocation(line: 249, column: 19, scope: !557)
!1039 = !DILocalVariable(name: "props", scope: !557, file: !173, line: 250, type: !164)
!1040 = !DILocation(line: 250, column: 17, scope: !557)
!1041 = !DILocalVariable(name: "state", scope: !557, file: !173, line: 251, type: !168)
!1042 = !DILocation(line: 251, column: 9, scope: !557)
!1043 = !DILocation(line: 257, column: 30, scope: !557)
!1044 = !DILocation(line: 257, column: 11, scope: !557)
!1045 = !DILocation(line: 257, column: 9, scope: !557)
!1046 = !DILocation(line: 258, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !557, file: !173, line: 258, column: 6)
!1048 = !DILocation(line: 258, column: 14, scope: !1047)
!1049 = !DILocation(line: 258, column: 20, scope: !1047)
!1050 = !DILocation(line: 258, column: 23, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1047, file: !173, discriminator: 1)
!1052 = !DILocation(line: 258, column: 6, scope: !1051)
!1053 = !DILocation(line: 260, column: 23, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !173, line: 259, column: 2)
!1055 = !DILocation(line: 260, column: 11, scope: !1054)
!1056 = !DILocation(line: 260, column: 9, scope: !1054)
!1057 = !DILocation(line: 261, column: 9, scope: !1054)
!1058 = !DILocation(line: 261, column: 3, scope: !1054)
!1059 = !DILocation(line: 262, column: 2, scope: !1054)
!1060 = !DILocation(line: 264, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !557, file: !173, line: 264, column: 6)
!1062 = !DILocation(line: 264, column: 12, scope: !1061)
!1063 = !DILocation(line: 264, column: 6, scope: !557)
!1064 = !DILocation(line: 266, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !173, line: 266, column: 7)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !173, line: 265, column: 2)
!1067 = !DILocation(line: 266, column: 7, scope: !1066)
!1068 = !DILocalVariable(name: "atoms", scope: !1069, file: !173, line: 268, type: !1070)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !173, line: 267, column: 3)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, align: 64, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 2)
!1073 = !DILocation(line: 268, column: 9, scope: !1069)
!1074 = !DILocation(line: 270, column: 15, scope: !1069)
!1075 = !DILocation(line: 270, column: 4, scope: !1069)
!1076 = !DILocation(line: 270, column: 13, scope: !1069)
!1077 = !DILocation(line: 271, column: 11, scope: !1069)
!1078 = !DILocation(line: 272, column: 8, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1069, file: !173, line: 272, column: 8)
!1080 = !DILocation(line: 272, column: 8, scope: !1069)
!1081 = !DILocation(line: 274, column: 16, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !173, line: 273, column: 4)
!1083 = !DILocation(line: 274, column: 5, scope: !1082)
!1084 = !DILocation(line: 274, column: 14, scope: !1082)
!1085 = !DILocation(line: 275, column: 12, scope: !1082)
!1086 = !DILocation(line: 276, column: 4, scope: !1082)
!1087 = !DILocation(line: 278, column: 20, scope: !1069)
!1088 = !DILocation(line: 278, column: 31, scope: !1069)
!1089 = !DILocation(line: 278, column: 36, scope: !1069)
!1090 = !DILocation(line: 279, column: 43, scope: !1069)
!1091 = !DILocation(line: 279, column: 25, scope: !1069)
!1092 = !DILocation(line: 279, column: 50, scope: !1069)
!1093 = !DILocation(line: 278, column: 4, scope: !1069)
!1094 = !DILocation(line: 280, column: 3, scope: !1069)
!1095 = !DILocalVariable(name: "atoms", scope: !1096, file: !173, line: 283, type: !170)
!1096 = distinct !DILexicalBlock(scope: !1065, file: !173, line: 282, column: 3)
!1097 = !DILocation(line: 283, column: 10, scope: !1096)
!1098 = !DILocation(line: 285, column: 27, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !173, line: 285, column: 8)
!1100 = !DILocation(line: 285, column: 8, scope: !1099)
!1101 = !DILocation(line: 285, column: 73, scope: !1099)
!1102 = !DILocation(line: 285, column: 8, scope: !1096)
!1103 = !DILocation(line: 286, column: 5, scope: !1099)
!1104 = !DILocation(line: 288, column: 21, scope: !1096)
!1105 = !DILocation(line: 288, column: 12, scope: !1096)
!1106 = !DILocation(line: 288, column: 10, scope: !1096)
!1107 = !DILocation(line: 290, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1096, file: !173, line: 290, column: 4)
!1109 = !DILocation(line: 290, column: 9, scope: !1108)
!1110 = !DILocation(line: 290, column: 16, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !173, discriminator: 1)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !173, line: 290, column: 4)
!1113 = !DILocation(line: 290, column: 20, scope: !1111)
!1114 = !DILocation(line: 290, column: 18, scope: !1111)
!1115 = !DILocation(line: 290, column: 4, scope: !1111)
!1116 = !DILocation(line: 292, column: 16, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !173, line: 292, column: 9)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !173, line: 291, column: 4)
!1119 = !DILocation(line: 292, column: 10, scope: !1117)
!1120 = !DILocation(line: 292, column: 22, scope: !1117)
!1121 = !DILocation(line: 292, column: 19, scope: !1117)
!1122 = !DILocation(line: 292, column: 29, scope: !1117)
!1123 = !DILocation(line: 292, column: 33, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1117, file: !173, discriminator: 1)
!1125 = !DILocation(line: 292, column: 39, scope: !1124)
!1126 = !DILocation(line: 292, column: 49, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1117, file: !173, discriminator: 2)
!1128 = !DILocation(line: 292, column: 43, scope: !1127)
!1129 = !DILocation(line: 292, column: 55, scope: !1127)
!1130 = !DILocation(line: 292, column: 52, scope: !1127)
!1131 = !DILocation(line: 292, column: 9, scope: !1127)
!1132 = !DILocation(line: 294, column: 10, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !173, line: 294, column: 10)
!1134 = distinct !DILexicalBlock(scope: !1117, file: !173, line: 293, column: 5)
!1135 = !DILocation(line: 294, column: 16, scope: !1133)
!1136 = !DILocation(line: 294, column: 23, scope: !1133)
!1137 = !DILocation(line: 294, column: 12, scope: !1133)
!1138 = !DILocation(line: 294, column: 10, scope: !1134)
!1139 = !DILocation(line: 295, column: 22, scope: !1133)
!1140 = !DILocation(line: 295, column: 16, scope: !1133)
!1141 = !DILocation(line: 295, column: 7, scope: !1133)
!1142 = !DILocation(line: 295, column: 33, scope: !1133)
!1143 = !DILocation(line: 295, column: 35, scope: !1133)
!1144 = !DILocation(line: 295, column: 27, scope: !1133)
!1145 = !DILocation(line: 296, column: 24, scope: !1133)
!1146 = !DILocation(line: 296, column: 33, scope: !1133)
!1147 = !DILocation(line: 296, column: 31, scope: !1133)
!1148 = !DILocation(line: 296, column: 35, scope: !1133)
!1149 = !DILocation(line: 296, column: 21, scope: !1133)
!1150 = !DILocation(line: 297, column: 12, scope: !1134)
!1151 = !DILocation(line: 298, column: 7, scope: !1134)
!1152 = !DILocation(line: 299, column: 5, scope: !1134)
!1153 = !DILocation(line: 300, column: 4, scope: !1118)
!1154 = !DILocation(line: 290, column: 29, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1112, file: !173, discriminator: 2)
!1156 = !DILocation(line: 290, column: 4, scope: !1155)
!1157 = distinct !{!1157, !1158}
!1158 = !DILocation(line: 290, column: 4, scope: !1096)
!1159 = !DILocation(line: 302, column: 20, scope: !1096)
!1160 = !DILocation(line: 302, column: 31, scope: !1096)
!1161 = !DILocation(line: 302, column: 36, scope: !1096)
!1162 = !DILocation(line: 303, column: 44, scope: !1096)
!1163 = !DILocation(line: 303, column: 26, scope: !1096)
!1164 = !DILocation(line: 303, column: 51, scope: !1096)
!1165 = !DILocation(line: 302, column: 4, scope: !1096)
!1166 = !DILocation(line: 305, column: 10, scope: !1096)
!1167 = !DILocation(line: 305, column: 4, scope: !1096)
!1168 = !DILocation(line: 308, column: 3, scope: !1066)
!1169 = !DILocation(line: 311, column: 9, scope: !557)
!1170 = !DILocation(line: 311, column: 14, scope: !557)
!1171 = !DILocation(line: 312, column: 26, scope: !557)
!1172 = !DILocation(line: 312, column: 9, scope: !557)
!1173 = !DILocation(line: 312, column: 17, scope: !557)
!1174 = !DILocation(line: 312, column: 24, scope: !557)
!1175 = !DILocation(line: 313, column: 32, scope: !557)
!1176 = !DILocation(line: 313, column: 9, scope: !557)
!1177 = !DILocation(line: 313, column: 17, scope: !557)
!1178 = !DILocation(line: 313, column: 30, scope: !557)
!1179 = !DILocation(line: 314, column: 9, scope: !557)
!1180 = !DILocation(line: 314, column: 17, scope: !557)
!1181 = !DILocation(line: 314, column: 24, scope: !557)
!1182 = !DILocation(line: 315, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !557, file: !173, line: 315, column: 6)
!1184 = !DILocation(line: 315, column: 6, scope: !557)
!1185 = !DILocation(line: 316, column: 10, scope: !1183)
!1186 = !DILocation(line: 316, column: 18, scope: !1183)
!1187 = !DILocation(line: 316, column: 23, scope: !1183)
!1188 = !DILocation(line: 316, column: 3, scope: !1183)
!1189 = !DILocation(line: 316, column: 28, scope: !1183)
!1190 = !DILocation(line: 318, column: 10, scope: !1183)
!1191 = !DILocation(line: 318, column: 18, scope: !1183)
!1192 = !DILocation(line: 318, column: 23, scope: !1183)
!1193 = !DILocation(line: 318, column: 3, scope: !1183)
!1194 = !DILocation(line: 318, column: 28, scope: !1183)
!1195 = !DILocation(line: 319, column: 29, scope: !557)
!1196 = !DILocation(line: 319, column: 9, scope: !557)
!1197 = !DILocation(line: 319, column: 17, scope: !557)
!1198 = !DILocation(line: 319, column: 22, scope: !557)
!1199 = !DILocation(line: 319, column: 2, scope: !557)
!1200 = !DILocation(line: 319, column: 27, scope: !557)
!1201 = !DILocation(line: 320, column: 29, scope: !557)
!1202 = !DILocation(line: 320, column: 9, scope: !557)
!1203 = !DILocation(line: 320, column: 17, scope: !557)
!1204 = !DILocation(line: 320, column: 22, scope: !557)
!1205 = !DILocation(line: 320, column: 2, scope: !557)
!1206 = !DILocation(line: 320, column: 27, scope: !557)
!1207 = !DILocation(line: 321, column: 9, scope: !557)
!1208 = !DILocation(line: 321, column: 17, scope: !557)
!1209 = !DILocation(line: 321, column: 22, scope: !557)
!1210 = !DILocation(line: 321, column: 2, scope: !557)
!1211 = !DILocation(line: 321, column: 27, scope: !557)
!1212 = !DILocation(line: 322, column: 9, scope: !557)
!1213 = !DILocation(line: 322, column: 17, scope: !557)
!1214 = !DILocation(line: 322, column: 22, scope: !557)
!1215 = !DILocation(line: 322, column: 2, scope: !557)
!1216 = !DILocation(line: 322, column: 27, scope: !557)
!1217 = !DILocation(line: 323, column: 22, scope: !557)
!1218 = !DILocation(line: 323, column: 32, scope: !557)
!1219 = !DILocation(line: 323, column: 35, scope: !557)
!1220 = !DILocation(line: 323, column: 54, scope: !557)
!1221 = !DILocation(line: 323, column: 11, scope: !557)
!1222 = !DILocation(line: 323, column: 9, scope: !557)
!1223 = !DILocation(line: 325, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !557, file: !173, line: 325, column: 6)
!1225 = !DILocation(line: 325, column: 6, scope: !557)
!1226 = !DILocation(line: 326, column: 3, scope: !1224)
!1227 = !DILocation(line: 328, column: 2, scope: !557)
!1228 = !DILocation(line: 329, column: 1, scope: !557)
!1229 = distinct !DISubprogram(name: "ewmh_get_window_desktop", scope: !173, file: !173, line: 361, type: !439, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1230 = !DILocalVariable(name: "wnd", arg: 1, scope: !1229, file: !173, line: 361, type: !111)
!1231 = !DILocation(line: 361, column: 32, scope: !1229)
!1232 = !DILocalVariable(name: "nitems_return", scope: !1229, file: !173, line: 363, type: !56)
!1233 = !DILocation(line: 363, column: 16, scope: !1229)
!1234 = !DILocalVariable(name: "prop_return", scope: !1229, file: !173, line: 364, type: !164)
!1235 = !DILocation(line: 364, column: 17, scope: !1229)
!1236 = !DILocalVariable(name: "desktop", scope: !1229, file: !173, line: 365, type: !34)
!1237 = !DILocation(line: 365, column: 6, scope: !1229)
!1238 = !DILocation(line: 367, column: 25, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1229, file: !173, line: 367, column: 6)
!1240 = !DILocation(line: 367, column: 6, scope: !1239)
!1241 = !DILocation(line: 367, column: 85, scope: !1239)
!1242 = !DILocation(line: 367, column: 6, scope: !1229)
!1243 = !DILocation(line: 368, column: 3, scope: !1239)
!1244 = !DILocation(line: 370, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1229, file: !173, line: 370, column: 6)
!1246 = !DILocation(line: 370, column: 20, scope: !1245)
!1247 = !DILocation(line: 370, column: 6, scope: !1229)
!1248 = !DILocation(line: 372, column: 3, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !173, line: 371, column: 2)
!1250 = !DILocation(line: 373, column: 3, scope: !1249)
!1251 = !DILocation(line: 376, column: 13, scope: !1229)
!1252 = !DILocation(line: 376, column: 12, scope: !1229)
!1253 = !DILocation(line: 376, column: 10, scope: !1229)
!1254 = !DILocation(line: 377, column: 8, scope: !1229)
!1255 = !DILocation(line: 377, column: 2, scope: !1229)
!1256 = !DILocation(line: 378, column: 9, scope: !1229)
!1257 = !DILocation(line: 378, column: 2, scope: !1229)
!1258 = !DILocation(line: 379, column: 1, scope: !1229)
!1259 = distinct !DISubprogram(name: "ewmh_move_to_desktop", scope: !173, file: !173, line: 383, type: !1260, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!34, !111, !92}
!1262 = !DILocalVariable(name: "wnd", arg: 1, scope: !1259, file: !173, line: 383, type: !111)
!1263 = !DILocation(line: 383, column: 29, scope: !1259)
!1264 = !DILocalVariable(name: "desktop", arg: 2, scope: !1259, file: !173, line: 383, type: !92)
!1265 = !DILocation(line: 383, column: 47, scope: !1259)
!1266 = !DILocalVariable(name: "status", scope: !1259, file: !173, line: 385, type: !34)
!1267 = !DILocation(line: 385, column: 8, scope: !1259)
!1268 = !DILocalVariable(name: "xevent", scope: !1259, file: !173, line: 386, type: !571)
!1269 = !DILocation(line: 386, column: 9, scope: !1259)
!1270 = !DILocation(line: 388, column: 9, scope: !1259)
!1271 = !DILocation(line: 388, column: 14, scope: !1259)
!1272 = !DILocation(line: 389, column: 26, scope: !1259)
!1273 = !DILocation(line: 389, column: 9, scope: !1259)
!1274 = !DILocation(line: 389, column: 17, scope: !1259)
!1275 = !DILocation(line: 389, column: 24, scope: !1259)
!1276 = !DILocation(line: 390, column: 32, scope: !1259)
!1277 = !DILocation(line: 390, column: 9, scope: !1259)
!1278 = !DILocation(line: 390, column: 17, scope: !1259)
!1279 = !DILocation(line: 390, column: 30, scope: !1259)
!1280 = !DILocation(line: 391, column: 9, scope: !1259)
!1281 = !DILocation(line: 391, column: 17, scope: !1259)
!1282 = !DILocation(line: 391, column: 24, scope: !1259)
!1283 = !DILocation(line: 392, column: 29, scope: !1259)
!1284 = !DILocation(line: 392, column: 9, scope: !1259)
!1285 = !DILocation(line: 392, column: 17, scope: !1259)
!1286 = !DILocation(line: 392, column: 22, scope: !1259)
!1287 = !DILocation(line: 392, column: 2, scope: !1259)
!1288 = !DILocation(line: 392, column: 27, scope: !1259)
!1289 = !DILocation(line: 393, column: 9, scope: !1259)
!1290 = !DILocation(line: 393, column: 17, scope: !1259)
!1291 = !DILocation(line: 393, column: 22, scope: !1259)
!1292 = !DILocation(line: 393, column: 2, scope: !1259)
!1293 = !DILocation(line: 393, column: 27, scope: !1259)
!1294 = !DILocation(line: 394, column: 9, scope: !1259)
!1295 = !DILocation(line: 394, column: 17, scope: !1259)
!1296 = !DILocation(line: 394, column: 22, scope: !1259)
!1297 = !DILocation(line: 394, column: 2, scope: !1259)
!1298 = !DILocation(line: 394, column: 27, scope: !1259)
!1299 = !DILocation(line: 395, column: 9, scope: !1259)
!1300 = !DILocation(line: 395, column: 17, scope: !1259)
!1301 = !DILocation(line: 395, column: 22, scope: !1259)
!1302 = !DILocation(line: 395, column: 2, scope: !1259)
!1303 = !DILocation(line: 395, column: 27, scope: !1259)
!1304 = !DILocation(line: 396, column: 9, scope: !1259)
!1305 = !DILocation(line: 396, column: 17, scope: !1259)
!1306 = !DILocation(line: 396, column: 22, scope: !1259)
!1307 = !DILocation(line: 396, column: 2, scope: !1259)
!1308 = !DILocation(line: 396, column: 27, scope: !1259)
!1309 = !DILocation(line: 397, column: 22, scope: !1259)
!1310 = !DILocation(line: 397, column: 32, scope: !1259)
!1311 = !DILocation(line: 397, column: 35, scope: !1259)
!1312 = !DILocation(line: 397, column: 54, scope: !1259)
!1313 = !DILocation(line: 397, column: 11, scope: !1259)
!1314 = !DILocation(line: 397, column: 9, scope: !1259)
!1315 = !DILocation(line: 399, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1259, file: !173, line: 399, column: 6)
!1317 = !DILocation(line: 399, column: 6, scope: !1259)
!1318 = !DILocation(line: 400, column: 3, scope: !1316)
!1319 = !DILocation(line: 402, column: 2, scope: !1259)
!1320 = !DILocation(line: 403, column: 1, scope: !1259)
!1321 = distinct !DISubprogram(name: "ewmh_set_wm_name", scope: !173, file: !173, line: 406, type: !1322, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !111, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!1326 = !DILocalVariable(name: "wnd", arg: 1, scope: !1321, file: !173, line: 406, type: !111)
!1327 = !DILocation(line: 406, column: 25, scope: !1321)
!1328 = !DILocalVariable(name: "title", arg: 2, scope: !1321, file: !173, line: 406, type: !1324)
!1329 = !DILocation(line: 406, column: 42, scope: !1321)
!1330 = !DILocalVariable(name: "len", scope: !1321, file: !173, line: 408, type: !34)
!1331 = !DILocation(line: 408, column: 6, scope: !1321)
!1332 = !DILocation(line: 410, column: 15, scope: !1321)
!1333 = !DILocation(line: 410, column: 8, scope: !1321)
!1334 = !DILocation(line: 410, column: 6, scope: !1321)
!1335 = !DILocation(line: 411, column: 18, scope: !1321)
!1336 = !DILocation(line: 411, column: 29, scope: !1321)
!1337 = !DILocation(line: 411, column: 34, scope: !1321)
!1338 = !DILocation(line: 411, column: 54, scope: !1321)
!1339 = !DILocation(line: 412, column: 41, scope: !1321)
!1340 = !DILocation(line: 412, column: 48, scope: !1321)
!1341 = !DILocation(line: 411, column: 2, scope: !1321)
!1342 = !DILocation(line: 413, column: 1, scope: !1321)
!1343 = distinct !DISubprogram(name: "ewmh_set_wm_pid", scope: !173, file: !173, line: 416, type: !1344, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !111, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1347, line: 98, baseType: !1348)
!1347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !1349, line: 133, baseType: !34)
!1349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1350 = !DILocalVariable(name: "wnd", arg: 1, scope: !1343, file: !173, line: 416, type: !111)
!1351 = !DILocation(line: 416, column: 24, scope: !1343)
!1352 = !DILocalVariable(name: "pid", arg: 2, scope: !1343, file: !173, line: 416, type: !1346)
!1353 = !DILocation(line: 416, column: 35, scope: !1343)
!1354 = !DILocation(line: 418, column: 18, scope: !1343)
!1355 = !DILocation(line: 418, column: 29, scope: !1343)
!1356 = !DILocation(line: 418, column: 34, scope: !1343)
!1357 = !DILocation(line: 419, column: 52, scope: !1343)
!1358 = !DILocation(line: 418, column: 2, scope: !1343)
!1359 = !DILocation(line: 420, column: 1, scope: !1343)
!1360 = distinct !DISubprogram(name: "ewmh_set_window_popup", scope: !173, file: !173, line: 423, type: !439, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1361 = !DILocalVariable(name: "wnd", arg: 1, scope: !1360, file: !173, line: 423, type: !111)
!1362 = !DILocation(line: 423, column: 30, scope: !1360)
!1363 = !DILocation(line: 426, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !173, line: 425, column: 6)
!1365 = !DILocation(line: 426, column: 15, scope: !1364)
!1366 = !DILocation(line: 426, column: 49, scope: !1364)
!1367 = !DILocation(line: 425, column: 6, scope: !1364)
!1368 = !DILocation(line: 426, column: 81, scope: !1364)
!1369 = !DILocation(line: 425, column: 6, scope: !1360)
!1370 = !DILocation(line: 427, column: 3, scope: !1364)
!1371 = !DILocation(line: 428, column: 2, scope: !1360)
!1372 = !DILocation(line: 429, column: 1, scope: !1360)
!1373 = distinct !DISubprogram(name: "ewmh_set_window_modal", scope: !173, file: !173, line: 432, type: !439, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1374 = !DILocalVariable(name: "wnd", arg: 1, scope: !1373, file: !173, line: 432, type: !111)
!1375 = !DILocation(line: 432, column: 30, scope: !1373)
!1376 = !DILocation(line: 434, column: 24, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !173, line: 434, column: 6)
!1378 = !DILocation(line: 434, column: 32, scope: !1377)
!1379 = !DILocation(line: 434, column: 6, scope: !1377)
!1380 = !DILocation(line: 434, column: 62, scope: !1377)
!1381 = !DILocation(line: 434, column: 6, scope: !1373)
!1382 = !DILocation(line: 435, column: 3, scope: !1377)
!1383 = !DILocation(line: 436, column: 2, scope: !1373)
!1384 = !DILocation(line: 437, column: 1, scope: !1373)
!1385 = distinct !DISubprogram(name: "ewmh_set_icon", scope: !173, file: !173, line: 440, type: !1386, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !111, !168, !168, !1324}
!1388 = !DILocalVariable(name: "wnd", arg: 1, scope: !1385, file: !173, line: 440, type: !111)
!1389 = !DILocation(line: 440, column: 22, scope: !1385)
!1390 = !DILocalVariable(name: "width", arg: 2, scope: !1385, file: !173, line: 440, type: !168)
!1391 = !DILocation(line: 440, column: 34, scope: !1385)
!1392 = !DILocalVariable(name: "height", arg: 3, scope: !1385, file: !173, line: 440, type: !168)
!1393 = !DILocation(line: 440, column: 48, scope: !1385)
!1394 = !DILocalVariable(name: "rgba_data", arg: 4, scope: !1385, file: !173, line: 440, type: !1324)
!1395 = !DILocation(line: 440, column: 68, scope: !1385)
!1396 = !DILocalVariable(name: "nitems", scope: !1385, file: !173, line: 442, type: !56)
!1397 = !DILocation(line: 442, column: 16, scope: !1385)
!1398 = !DILocalVariable(name: "i", scope: !1385, file: !173, line: 442, type: !56)
!1399 = !DILocation(line: 442, column: 24, scope: !1385)
!1400 = !DILocalVariable(name: "props", scope: !1385, file: !173, line: 443, type: !164)
!1401 = !DILocation(line: 443, column: 17, scope: !1385)
!1402 = !DILocalVariable(name: "cur_set", scope: !1385, file: !173, line: 444, type: !163)
!1403 = !DILocation(line: 444, column: 17, scope: !1385)
!1404 = !DILocalVariable(name: "new_set", scope: !1385, file: !173, line: 444, type: !163)
!1405 = !DILocation(line: 444, column: 27, scope: !1385)
!1406 = !DILocalVariable(name: "icon", scope: !1385, file: !173, line: 445, type: !163)
!1407 = !DILocation(line: 445, column: 17, scope: !1385)
!1408 = !DILocation(line: 447, column: 10, scope: !1385)
!1409 = !DILocation(line: 448, column: 10, scope: !1385)
!1410 = !DILocation(line: 450, column: 25, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1385, file: !173, line: 450, column: 6)
!1412 = !DILocation(line: 450, column: 6, scope: !1411)
!1413 = !DILocation(line: 450, column: 73, scope: !1411)
!1414 = !DILocation(line: 450, column: 6, scope: !1385)
!1415 = !DILocation(line: 452, column: 31, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !173, line: 451, column: 2)
!1417 = !DILocation(line: 452, column: 13, scope: !1416)
!1418 = !DILocation(line: 452, column: 11, scope: !1416)
!1419 = !DILocation(line: 454, column: 10, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !173, line: 454, column: 3)
!1421 = !DILocation(line: 454, column: 8, scope: !1420)
!1422 = !DILocation(line: 454, column: 15, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1424, file: !173, discriminator: 1)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !173, line: 454, column: 3)
!1425 = !DILocation(line: 454, column: 19, scope: !1423)
!1426 = !DILocation(line: 454, column: 17, scope: !1423)
!1427 = !DILocation(line: 454, column: 3, scope: !1423)
!1428 = !DILocation(line: 456, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !173, line: 456, column: 8)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !173, line: 455, column: 3)
!1431 = !DILocation(line: 456, column: 8, scope: !1429)
!1432 = !DILocation(line: 456, column: 22, scope: !1429)
!1433 = !DILocation(line: 456, column: 19, scope: !1429)
!1434 = !DILocation(line: 456, column: 28, scope: !1429)
!1435 = !DILocation(line: 456, column: 39, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1429, file: !173, discriminator: 1)
!1437 = !DILocation(line: 456, column: 41, scope: !1436)
!1438 = !DILocation(line: 456, column: 31, scope: !1436)
!1439 = !DILocation(line: 456, column: 49, scope: !1436)
!1440 = !DILocation(line: 456, column: 46, scope: !1436)
!1441 = !DILocation(line: 456, column: 8, scope: !1436)
!1442 = !DILocation(line: 457, column: 5, scope: !1429)
!1443 = !DILocation(line: 459, column: 21, scope: !1430)
!1444 = !DILocation(line: 459, column: 13, scope: !1430)
!1445 = !DILocation(line: 459, column: 34, scope: !1430)
!1446 = !DILocation(line: 459, column: 36, scope: !1430)
!1447 = !DILocation(line: 459, column: 26, scope: !1430)
!1448 = !DILocation(line: 459, column: 24, scope: !1430)
!1449 = !DILocation(line: 459, column: 11, scope: !1430)
!1450 = !DILocation(line: 459, column: 6, scope: !1430)
!1451 = !DILocation(line: 454, column: 3, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1424, file: !173, discriminator: 2)
!1453 = distinct !{!1453, !1454}
!1454 = !DILocation(line: 454, column: 3, scope: !1416)
!1455 = !DILocation(line: 462, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1416, file: !173, line: 462, column: 7)
!1457 = !DILocation(line: 462, column: 12, scope: !1456)
!1458 = !DILocation(line: 462, column: 9, scope: !1456)
!1459 = !DILocation(line: 462, column: 7, scope: !1416)
!1460 = !DILocation(line: 463, column: 11, scope: !1456)
!1461 = !DILocation(line: 463, column: 21, scope: !1456)
!1462 = !DILocation(line: 463, column: 19, scope: !1456)
!1463 = !DILocation(line: 463, column: 9, scope: !1456)
!1464 = !DILocation(line: 463, column: 4, scope: !1456)
!1465 = !DILocation(line: 466, column: 23, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1456, file: !173, line: 465, column: 3)
!1467 = !DILocation(line: 466, column: 32, scope: !1466)
!1468 = !DILocation(line: 466, column: 40, scope: !1466)
!1469 = !DILocation(line: 466, column: 38, scope: !1466)
!1470 = !DILocation(line: 466, column: 30, scope: !1466)
!1471 = !DILocation(line: 466, column: 47, scope: !1466)
!1472 = !DILocation(line: 466, column: 52, scope: !1466)
!1473 = !DILocation(line: 466, column: 22, scope: !1466)
!1474 = !DILocation(line: 466, column: 14, scope: !1466)
!1475 = !DILocation(line: 466, column: 12, scope: !1466)
!1476 = !DILocation(line: 467, column: 11, scope: !1466)
!1477 = !DILocation(line: 467, column: 4, scope: !1466)
!1478 = !DILocation(line: 467, column: 20, scope: !1466)
!1479 = !DILocation(line: 467, column: 29, scope: !1466)
!1480 = !DILocation(line: 467, column: 36, scope: !1466)
!1481 = !DILocation(line: 468, column: 11, scope: !1466)
!1482 = !DILocation(line: 468, column: 21, scope: !1466)
!1483 = !DILocation(line: 468, column: 19, scope: !1466)
!1484 = !DILocation(line: 468, column: 9, scope: !1466)
!1485 = !DILocation(line: 469, column: 14, scope: !1466)
!1486 = !DILocation(line: 469, column: 22, scope: !1466)
!1487 = !DILocation(line: 469, column: 20, scope: !1466)
!1488 = !DILocation(line: 469, column: 29, scope: !1466)
!1489 = !DILocation(line: 469, column: 11, scope: !1466)
!1490 = !DILocation(line: 471, column: 2, scope: !1416)
!1491 = !DILocation(line: 474, column: 22, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1411, file: !173, line: 473, column: 2)
!1493 = !DILocation(line: 474, column: 30, scope: !1492)
!1494 = !DILocation(line: 474, column: 28, scope: !1492)
!1495 = !DILocation(line: 474, column: 37, scope: !1492)
!1496 = !DILocation(line: 474, column: 21, scope: !1492)
!1497 = !DILocation(line: 474, column: 42, scope: !1492)
!1498 = !DILocation(line: 474, column: 13, scope: !1492)
!1499 = !DILocation(line: 474, column: 11, scope: !1492)
!1500 = !DILocation(line: 475, column: 10, scope: !1492)
!1501 = !DILocation(line: 475, column: 8, scope: !1492)
!1502 = !DILocation(line: 476, column: 12, scope: !1492)
!1503 = !DILocation(line: 476, column: 20, scope: !1492)
!1504 = !DILocation(line: 476, column: 18, scope: !1492)
!1505 = !DILocation(line: 476, column: 27, scope: !1492)
!1506 = !DILocation(line: 476, column: 10, scope: !1492)
!1507 = !DILocation(line: 479, column: 12, scope: !1385)
!1508 = !DILocation(line: 479, column: 2, scope: !1385)
!1509 = !DILocation(line: 479, column: 10, scope: !1385)
!1510 = !DILocation(line: 480, column: 12, scope: !1385)
!1511 = !DILocation(line: 480, column: 2, scope: !1385)
!1512 = !DILocation(line: 480, column: 10, scope: !1385)
!1513 = !DILocation(line: 483, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1385, file: !173, line: 483, column: 2)
!1515 = !DILocation(line: 483, column: 7, scope: !1514)
!1516 = !DILocation(line: 483, column: 14, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !173, discriminator: 1)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !173, line: 483, column: 2)
!1519 = !DILocation(line: 483, column: 19, scope: !1517)
!1520 = !DILocation(line: 483, column: 27, scope: !1517)
!1521 = !DILocation(line: 483, column: 25, scope: !1517)
!1522 = !DILocation(line: 483, column: 18, scope: !1517)
!1523 = !DILocation(line: 483, column: 16, scope: !1517)
!1524 = !DILocation(line: 483, column: 2, scope: !1517)
!1525 = !DILocation(line: 486, column: 14, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !173, line: 484, column: 2)
!1527 = !DILocation(line: 486, column: 16, scope: !1526)
!1528 = !DILocation(line: 486, column: 20, scope: !1526)
!1529 = !DILocation(line: 486, column: 4, scope: !1526)
!1530 = !DILocation(line: 486, column: 25, scope: !1526)
!1531 = !DILocation(line: 487, column: 16, scope: !1526)
!1532 = !DILocation(line: 487, column: 18, scope: !1526)
!1533 = !DILocation(line: 487, column: 22, scope: !1526)
!1534 = !DILocation(line: 487, column: 6, scope: !1526)
!1535 = !DILocation(line: 487, column: 27, scope: !1526)
!1536 = !DILocation(line: 487, column: 34, scope: !1526)
!1537 = !DILocation(line: 486, column: 31, scope: !1526)
!1538 = !DILocation(line: 488, column: 16, scope: !1526)
!1539 = !DILocation(line: 488, column: 18, scope: !1526)
!1540 = !DILocation(line: 488, column: 22, scope: !1526)
!1541 = !DILocation(line: 488, column: 6, scope: !1526)
!1542 = !DILocation(line: 488, column: 27, scope: !1526)
!1543 = !DILocation(line: 488, column: 33, scope: !1526)
!1544 = !DILocation(line: 487, column: 48, scope: !1526)
!1545 = !DILocation(line: 489, column: 16, scope: !1526)
!1546 = !DILocation(line: 489, column: 18, scope: !1526)
!1547 = !DILocation(line: 489, column: 22, scope: !1526)
!1548 = !DILocation(line: 489, column: 6, scope: !1526)
!1549 = !DILocation(line: 489, column: 27, scope: !1526)
!1550 = !DILocation(line: 489, column: 33, scope: !1526)
!1551 = !DILocation(line: 488, column: 47, scope: !1526)
!1552 = !DILocation(line: 485, column: 8, scope: !1526)
!1553 = !DILocation(line: 485, column: 10, scope: !1526)
!1554 = !DILocation(line: 485, column: 3, scope: !1526)
!1555 = !DILocation(line: 485, column: 15, scope: !1526)
!1556 = !DILocation(line: 490, column: 2, scope: !1526)
!1557 = !DILocation(line: 483, column: 37, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1518, file: !173, discriminator: 2)
!1559 = !DILocation(line: 483, column: 2, scope: !1558)
!1560 = distinct !{!1560, !1561}
!1561 = !DILocation(line: 483, column: 2, scope: !1385)
!1562 = !DILocation(line: 492, column: 18, scope: !1385)
!1563 = !DILocation(line: 492, column: 29, scope: !1385)
!1564 = !DILocation(line: 492, column: 34, scope: !1385)
!1565 = !DILocation(line: 493, column: 39, scope: !1385)
!1566 = !DILocation(line: 493, column: 49, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1385, file: !173, discriminator: 1)
!1568 = !DILocation(line: 493, column: 39, scope: !1567)
!1569 = !DILocation(line: 493, column: 59, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1385, file: !173, discriminator: 2)
!1571 = !DILocation(line: 493, column: 39, scope: !1570)
!1572 = !DILocation(line: 493, column: 39, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1385, file: !173, discriminator: 3)
!1574 = !DILocation(line: 493, column: 20, scope: !1573)
!1575 = !DILocation(line: 493, column: 69, scope: !1573)
!1576 = !DILocation(line: 492, column: 2, scope: !1567)
!1577 = !DILocation(line: 495, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1385, file: !173, line: 495, column: 6)
!1579 = !DILocation(line: 495, column: 6, scope: !1385)
!1580 = !DILocation(line: 496, column: 9, scope: !1578)
!1581 = !DILocation(line: 496, column: 3, scope: !1578)
!1582 = !DILocation(line: 497, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1385, file: !173, line: 497, column: 6)
!1584 = !DILocation(line: 497, column: 6, scope: !1385)
!1585 = !DILocation(line: 498, column: 9, scope: !1583)
!1586 = !DILocation(line: 498, column: 3, scope: !1583)
!1587 = !DILocation(line: 499, column: 1, scope: !1385)
!1588 = distinct !DISubprogram(name: "ewmh_del_icon", scope: !173, file: !173, line: 502, type: !1589, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !111, !168, !168}
!1591 = !DILocalVariable(name: "wnd", arg: 1, scope: !1588, file: !173, line: 502, type: !111)
!1592 = !DILocation(line: 502, column: 22, scope: !1588)
!1593 = !DILocalVariable(name: "width", arg: 2, scope: !1588, file: !173, line: 502, type: !168)
!1594 = !DILocation(line: 502, column: 34, scope: !1588)
!1595 = !DILocalVariable(name: "height", arg: 3, scope: !1588, file: !173, line: 502, type: !168)
!1596 = !DILocation(line: 502, column: 48, scope: !1588)
!1597 = !DILocalVariable(name: "nitems", scope: !1588, file: !173, line: 504, type: !56)
!1598 = !DILocation(line: 504, column: 16, scope: !1588)
!1599 = !DILocalVariable(name: "i", scope: !1588, file: !173, line: 504, type: !56)
!1600 = !DILocation(line: 504, column: 24, scope: !1588)
!1601 = !DILocalVariable(name: "icon_size", scope: !1588, file: !173, line: 504, type: !56)
!1602 = !DILocation(line: 504, column: 27, scope: !1588)
!1603 = !DILocalVariable(name: "props", scope: !1588, file: !173, line: 505, type: !164)
!1604 = !DILocation(line: 505, column: 17, scope: !1588)
!1605 = !DILocalVariable(name: "cur_set", scope: !1588, file: !173, line: 506, type: !163)
!1606 = !DILocation(line: 506, column: 17, scope: !1588)
!1607 = !DILocalVariable(name: "new_set", scope: !1588, file: !173, line: 506, type: !163)
!1608 = !DILocation(line: 506, column: 27, scope: !1588)
!1609 = !DILocation(line: 508, column: 10, scope: !1588)
!1610 = !DILocation(line: 509, column: 10, scope: !1588)
!1611 = !DILocation(line: 511, column: 25, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1588, file: !173, line: 511, column: 6)
!1613 = !DILocation(line: 511, column: 6, scope: !1612)
!1614 = !DILocation(line: 511, column: 73, scope: !1612)
!1615 = !DILocation(line: 511, column: 6, scope: !1588)
!1616 = !DILocation(line: 512, column: 3, scope: !1612)
!1617 = !DILocation(line: 514, column: 30, scope: !1588)
!1618 = !DILocation(line: 514, column: 12, scope: !1588)
!1619 = !DILocation(line: 514, column: 10, scope: !1588)
!1620 = !DILocation(line: 516, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1588, file: !173, line: 516, column: 2)
!1622 = !DILocation(line: 516, column: 7, scope: !1621)
!1623 = !DILocation(line: 516, column: 14, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1625, file: !173, discriminator: 1)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !173, line: 516, column: 2)
!1626 = !DILocation(line: 516, column: 18, scope: !1624)
!1627 = !DILocation(line: 516, column: 16, scope: !1624)
!1628 = !DILocation(line: 516, column: 2, scope: !1624)
!1629 = !DILocation(line: 518, column: 15, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !173, line: 518, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !173, line: 517, column: 2)
!1632 = !DILocation(line: 518, column: 7, scope: !1630)
!1633 = !DILocation(line: 518, column: 21, scope: !1630)
!1634 = !DILocation(line: 518, column: 18, scope: !1630)
!1635 = !DILocation(line: 518, column: 27, scope: !1630)
!1636 = !DILocation(line: 518, column: 38, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1630, file: !173, discriminator: 1)
!1638 = !DILocation(line: 518, column: 40, scope: !1637)
!1639 = !DILocation(line: 518, column: 30, scope: !1637)
!1640 = !DILocation(line: 518, column: 48, scope: !1637)
!1641 = !DILocation(line: 518, column: 45, scope: !1637)
!1642 = !DILocation(line: 518, column: 7, scope: !1637)
!1643 = !DILocation(line: 519, column: 4, scope: !1630)
!1644 = !DILocation(line: 521, column: 20, scope: !1631)
!1645 = !DILocation(line: 521, column: 12, scope: !1631)
!1646 = !DILocation(line: 521, column: 33, scope: !1631)
!1647 = !DILocation(line: 521, column: 35, scope: !1631)
!1648 = !DILocation(line: 521, column: 25, scope: !1631)
!1649 = !DILocation(line: 521, column: 23, scope: !1631)
!1650 = !DILocation(line: 521, column: 10, scope: !1631)
!1651 = !DILocation(line: 521, column: 5, scope: !1631)
!1652 = !DILocation(line: 516, column: 2, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1625, file: !173, discriminator: 2)
!1654 = distinct !{!1654, !1655}
!1655 = !DILocation(line: 516, column: 2, scope: !1588)
!1656 = !DILocation(line: 524, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1588, file: !173, line: 524, column: 6)
!1658 = !DILocation(line: 524, column: 11, scope: !1657)
!1659 = !DILocation(line: 524, column: 8, scope: !1657)
!1660 = !DILocation(line: 524, column: 6, scope: !1588)
!1661 = !DILocation(line: 525, column: 3, scope: !1657)
!1662 = !DILocation(line: 527, column: 14, scope: !1588)
!1663 = !DILocation(line: 527, column: 22, scope: !1588)
!1664 = !DILocation(line: 527, column: 20, scope: !1588)
!1665 = !DILocation(line: 527, column: 29, scope: !1588)
!1666 = !DILocation(line: 527, column: 12, scope: !1588)
!1667 = !DILocation(line: 528, column: 21, scope: !1588)
!1668 = !DILocation(line: 528, column: 30, scope: !1588)
!1669 = !DILocation(line: 528, column: 28, scope: !1588)
!1670 = !DILocation(line: 528, column: 41, scope: !1588)
!1671 = !DILocation(line: 528, column: 20, scope: !1588)
!1672 = !DILocation(line: 528, column: 12, scope: !1588)
!1673 = !DILocation(line: 528, column: 10, scope: !1588)
!1674 = !DILocation(line: 530, column: 6, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1588, file: !173, line: 530, column: 6)
!1676 = !DILocation(line: 530, column: 8, scope: !1675)
!1677 = !DILocation(line: 530, column: 6, scope: !1588)
!1678 = !DILocation(line: 531, column: 10, scope: !1675)
!1679 = !DILocation(line: 531, column: 3, scope: !1675)
!1680 = !DILocation(line: 531, column: 19, scope: !1675)
!1681 = !DILocation(line: 531, column: 28, scope: !1675)
!1682 = !DILocation(line: 531, column: 30, scope: !1675)
!1683 = !DILocation(line: 532, column: 6, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1588, file: !173, line: 532, column: 6)
!1685 = !DILocation(line: 532, column: 11, scope: !1684)
!1686 = !DILocation(line: 532, column: 20, scope: !1684)
!1687 = !DILocation(line: 532, column: 18, scope: !1684)
!1688 = !DILocation(line: 532, column: 8, scope: !1684)
!1689 = !DILocation(line: 532, column: 6, scope: !1588)
!1690 = !DILocation(line: 533, column: 10, scope: !1684)
!1691 = !DILocation(line: 533, column: 20, scope: !1684)
!1692 = !DILocation(line: 533, column: 18, scope: !1684)
!1693 = !DILocation(line: 533, column: 3, scope: !1684)
!1694 = !DILocation(line: 533, column: 23, scope: !1684)
!1695 = !DILocation(line: 533, column: 33, scope: !1684)
!1696 = !DILocation(line: 533, column: 31, scope: !1684)
!1697 = !DILocation(line: 533, column: 37, scope: !1684)
!1698 = !DILocation(line: 533, column: 35, scope: !1684)
!1699 = !DILocation(line: 534, column: 11, scope: !1684)
!1700 = !DILocation(line: 534, column: 21, scope: !1684)
!1701 = !DILocation(line: 534, column: 25, scope: !1684)
!1702 = !DILocation(line: 534, column: 23, scope: !1684)
!1703 = !DILocation(line: 534, column: 18, scope: !1684)
!1704 = !DILocation(line: 534, column: 37, scope: !1684)
!1705 = !DILocation(line: 536, column: 12, scope: !1588)
!1706 = !DILocation(line: 536, column: 9, scope: !1588)
!1707 = !DILocation(line: 538, column: 18, scope: !1588)
!1708 = !DILocation(line: 538, column: 29, scope: !1588)
!1709 = !DILocation(line: 538, column: 34, scope: !1588)
!1710 = !DILocation(line: 539, column: 38, scope: !1588)
!1711 = !DILocation(line: 539, column: 20, scope: !1588)
!1712 = !DILocation(line: 539, column: 47, scope: !1588)
!1713 = !DILocation(line: 538, column: 2, scope: !1588)
!1714 = !DILocation(line: 541, column: 8, scope: !1588)
!1715 = !DILocation(line: 541, column: 2, scope: !1588)
!1716 = !DILocation(line: 544, column: 8, scope: !1588)
!1717 = !DILocation(line: 544, column: 2, scope: !1588)
!1718 = !DILocation(line: 545, column: 1, scope: !1588)
!1719 = !DILocation(line: 545, column: 1, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1588, file: !173, discriminator: 1)
!1721 = distinct !DISubprogram(name: "ewmh_set_window_above", scope: !173, file: !173, line: 548, type: !439, isLocal: false, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1722 = !DILocalVariable(name: "wnd", arg: 1, scope: !1721, file: !173, line: 548, type: !111)
!1723 = !DILocation(line: 548, column: 30, scope: !1721)
!1724 = !DILocation(line: 550, column: 24, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !173, line: 550, column: 6)
!1726 = !DILocation(line: 550, column: 32, scope: !1725)
!1727 = !DILocation(line: 550, column: 6, scope: !1725)
!1728 = !DILocation(line: 550, column: 62, scope: !1725)
!1729 = !DILocation(line: 550, column: 6, scope: !1721)
!1730 = !DILocation(line: 551, column: 3, scope: !1725)
!1731 = !DILocation(line: 552, column: 2, scope: !1721)
!1732 = !DILocation(line: 553, column: 1, scope: !1721)
!1733 = distinct !DISubprogram(name: "ewmh_is_window_above", scope: !173, file: !173, line: 556, type: !1734, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!452, !111}
!1736 = !DILocalVariable(name: "w", arg: 1, scope: !1733, file: !173, line: 556, type: !111)
!1737 = !DILocation(line: 556, column: 29, scope: !1733)
!1738 = !DILocalVariable(name: "nitems_return", scope: !1733, file: !173, line: 558, type: !56)
!1739 = !DILocation(line: 558, column: 16, scope: !1733)
!1740 = !DILocalVariable(name: "prop_return", scope: !1733, file: !173, line: 559, type: !164)
!1741 = !DILocation(line: 559, column: 17, scope: !1733)
!1742 = !DILocalVariable(name: "return_words", scope: !1733, file: !173, line: 560, type: !163)
!1743 = !DILocation(line: 560, column: 17, scope: !1733)
!1744 = !DILocalVariable(name: "item", scope: !1733, file: !173, line: 561, type: !56)
!1745 = !DILocation(line: 561, column: 16, scope: !1733)
!1746 = !DILocalVariable(name: "above", scope: !1733, file: !173, line: 562, type: !452)
!1747 = !DILocation(line: 562, column: 10, scope: !1733)
!1748 = !DILocation(line: 564, column: 8, scope: !1733)
!1749 = !DILocation(line: 566, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1733, file: !173, line: 566, column: 6)
!1751 = !DILocation(line: 566, column: 6, scope: !1750)
!1752 = !DILocation(line: 566, column: 82, scope: !1750)
!1753 = !DILocation(line: 566, column: 6, scope: !1733)
!1754 = !DILocation(line: 567, column: 3, scope: !1750)
!1755 = !DILocation(line: 569, column: 35, scope: !1733)
!1756 = !DILocation(line: 569, column: 17, scope: !1733)
!1757 = !DILocation(line: 569, column: 15, scope: !1733)
!1758 = !DILocation(line: 571, column: 12, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1733, file: !173, line: 571, column: 2)
!1760 = !DILocation(line: 571, column: 7, scope: !1759)
!1761 = !DILocation(line: 571, column: 17, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !173, discriminator: 1)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !173, line: 571, column: 2)
!1764 = !DILocation(line: 571, column: 24, scope: !1762)
!1765 = !DILocation(line: 571, column: 22, scope: !1762)
!1766 = !DILocation(line: 571, column: 2, scope: !1762)
!1767 = !DILocation(line: 573, column: 20, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !173, line: 573, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !173, line: 572, column: 2)
!1770 = !DILocation(line: 573, column: 7, scope: !1768)
!1771 = !DILocation(line: 573, column: 29, scope: !1768)
!1772 = !DILocation(line: 573, column: 26, scope: !1768)
!1773 = !DILocation(line: 573, column: 7, scope: !1769)
!1774 = !DILocation(line: 574, column: 10, scope: !1768)
!1775 = !DILocation(line: 574, column: 4, scope: !1768)
!1776 = !DILocation(line: 575, column: 2, scope: !1769)
!1777 = !DILocation(line: 571, column: 43, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1763, file: !173, discriminator: 2)
!1779 = !DILocation(line: 571, column: 2, scope: !1778)
!1780 = distinct !{!1780, !1781}
!1781 = !DILocation(line: 571, column: 2, scope: !1733)
!1782 = !DILocation(line: 577, column: 8, scope: !1733)
!1783 = !DILocation(line: 577, column: 2, scope: !1733)
!1784 = !DILocation(line: 579, column: 9, scope: !1733)
!1785 = !DILocation(line: 579, column: 2, scope: !1733)
!1786 = !DILocation(line: 580, column: 1, scope: !1733)
