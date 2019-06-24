; ModuleID = './line73-recode.o.i'
source_filename = "./line73-recode.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type opaque
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@term_is_utf8 = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"recode_transliterate\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"//TRANSLIT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@translit_charset = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"recode\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"recode_autodetect_utf8\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"recode_fallback\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"recode_out_default_charset\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"recode.c\00", align 1
@__func__.recode_split = private unnamed_addr constant [13 x i8] c"recode_split\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"term_charset\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"CP1252\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"//translit\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"conversions\00", align 1

; Function Attrs: nounwind uwtable
define i32 @is_utf8() #0 !dbg !59 {
  %1 = load i32, i32* @term_is_utf8, align 4, !dbg !63
  ret i32 %1, !dbg !64
}

; Function Attrs: nounwind uwtable
define i32 @is_valid_charset(i8*) #0 !dbg !65 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GIConv*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !68, metadata !69), !dbg !70
  call void @llvm.dbg.declare(metadata %struct._GIConv** %4, metadata !71, metadata !69), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %5, metadata !73, metadata !69), !dbg !74
  store i8* null, i8** %5, align 8, !dbg !74
  %6 = load i8*, i8** %3, align 8, !dbg !75
  %7 = icmp ne i8* %6, null, !dbg !75
  br i1 %7, label %8, label %13, !dbg !77

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !78
  %10 = load i8, i8* %9, align 1, !dbg !80
  %11 = sext i8 %10 to i32, !dbg !80
  %12 = icmp eq i32 %11, 0, !dbg !81
  br i1 %12, label %13, label %14, !dbg !82

; <label>:13:                                     ; preds = %8, %1
  store i32 0, i32* %2, align 4, !dbg !83
  br label %34, !dbg !83

; <label>:14:                                     ; preds = %8
  %15 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !84
  %16 = icmp ne i32 %15, 0, !dbg !84
  br i1 %16, label %17, label %24, !dbg !86

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %3, align 8, !dbg !87
  %19 = call i32 @is_translit(i8* %18), !dbg !89
  %20 = icmp ne i32 %19, 0, !dbg !89
  br i1 %20, label %24, label %21, !dbg !90

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %3, align 8, !dbg !91
  %23 = call noalias i8* (i8*, ...) @g_strconcat(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !92
  store i8* %23, i8** %5, align 8, !dbg !93
  store i8* %23, i8** %3, align 8, !dbg !94
  br label %24, !dbg !95

; <label>:24:                                     ; preds = %21, %17, %14
  %25 = load i8*, i8** %3, align 8, !dbg !96
  %26 = call %struct._GIConv* @g_iconv_open(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)), !dbg !97
  store %struct._GIConv* %26, %struct._GIConv** %4, align 8, !dbg !98
  %27 = load i8*, i8** %5, align 8, !dbg !99
  call void @g_free(i8* %27), !dbg !100
  %28 = load %struct._GIConv*, %struct._GIConv** %4, align 8, !dbg !101
  %29 = icmp ne %struct._GIConv* %28, inttoptr (i64 -1 to %struct._GIConv*), !dbg !103
  br i1 %29, label %30, label %33, !dbg !104

; <label>:30:                                     ; preds = %24
  %31 = load %struct._GIConv*, %struct._GIConv** %4, align 8, !dbg !105
  %32 = call i32 @g_iconv_close(%struct._GIConv* %31), !dbg !107
  store i32 1, i32* %2, align 4, !dbg !108
  br label %34, !dbg !108

; <label>:33:                                     ; preds = %24
  store i32 0, i32* %2, align 4, !dbg !109
  br label %34, !dbg !109

; <label>:34:                                     ; preds = %33, %30, %13
  %35 = load i32, i32* %2, align 4, !dbg !110
  ret i32 %35, !dbg !110
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_translit(i8*) #0 !dbg !111 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !112, metadata !69), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %3, metadata !114, metadata !69), !dbg !115
  %4 = load i8*, i8** %2, align 8, !dbg !116
  %5 = call i8* @stristr(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)), !dbg !117
  store i8* %5, i8** %3, align 8, !dbg !118
  %6 = load i8*, i8** %3, align 8, !dbg !119
  %7 = icmp ne i8* %6, null, !dbg !120
  %8 = zext i1 %7 to i32, !dbg !120
  ret i32 %8, !dbg !121
}

declare noalias i8* @g_strconcat(i8*, ...) #2

declare %struct._GIConv* @g_iconv_open(i8*, i8*) #2

declare void @g_free(i8*) #2

declare i32 @g_iconv_close(%struct._GIConv*) #2

; Function Attrs: nounwind uwtable
define i8* @recode_in(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !122 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !454, metadata !69), !dbg !455
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !456, metadata !69), !dbg !457
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !458, metadata !69), !dbg !459
  call void @llvm.dbg.declare(metadata i8** %8, metadata !460, metadata !69), !dbg !461
  store i8* null, i8** %8, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata i8** %9, metadata !462, metadata !69), !dbg !463
  %15 = load i8*, i8** @translit_charset, align 8, !dbg !464
  store i8* %15, i8** %9, align 8, !dbg !463
  call void @llvm.dbg.declare(metadata i8** %10, metadata !465, metadata !69), !dbg !466
  store i8* null, i8** %10, align 8, !dbg !466
  call void @llvm.dbg.declare(metadata i32* %11, metadata !467, metadata !69), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %12, metadata !469, metadata !69), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %13, metadata !471, metadata !69), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %14, metadata !473, metadata !69), !dbg !474
  %16 = load i8*, i8** %6, align 8, !dbg !475
  %17 = icmp ne i8* %16, null, !dbg !475
  br i1 %17, label %19, label %18, !dbg !477

; <label>:18:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !478
  br label %113, !dbg !478

; <label>:19:                                     ; preds = %3
  %20 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !479
  store i32 %20, i32* %12, align 4, !dbg !480
  %21 = load i32, i32* %12, align 4, !dbg !481
  %22 = icmp ne i32 %21, 0, !dbg !481
  br i1 %22, label %26, label %23, !dbg !483

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %6, align 8, !dbg !484
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !485
  store i8* %25, i8** %4, align 8, !dbg !486
  br label %113, !dbg !486

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %6, align 8, !dbg !487
  %28 = call i64 @strlen(i8* %27) #5, !dbg !488
  %29 = trunc i64 %28 to i32, !dbg !488
  store i32 %29, i32* %14, align 4, !dbg !489
  store i32 0, i32* %11, align 4, !dbg !490
  %30 = load i8*, i8** %6, align 8, !dbg !491
  %31 = call i32 @str_is_ascii(i8* %30), !dbg !493
  %32 = icmp ne i32 %31, 0, !dbg !493
  br i1 %32, label %38, label %33, !dbg !494

; <label>:33:                                     ; preds = %26
  %34 = load i8*, i8** %6, align 8, !dbg !495
  %35 = load i32, i32* %14, align 4, !dbg !496
  %36 = sext i32 %35 to i64, !dbg !496
  %37 = call i32 @g_utf8_validate(i8* %34, i64 %36, i8** null), !dbg !497
  store i32 %37, i32* %11, align 4, !dbg !498
  br label %44, !dbg !499

; <label>:38:                                     ; preds = %26
  %39 = load i8*, i8** %6, align 8, !dbg !500
  %40 = call i8* @strchr(i8* %39, i32 27) #5, !dbg !502
  %41 = icmp ne i8* %40, null, !dbg !502
  br i1 %41, label %43, label %42, !dbg !503

; <label>:42:                                     ; preds = %38
  store i32 1, i32* %11, align 4, !dbg !504
  br label %43, !dbg !505

; <label>:43:                                     ; preds = %42, %38
  br label %44

; <label>:44:                                     ; preds = %43, %33
  %45 = call i32 @settings_get_bool(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)), !dbg !506
  store i32 %45, i32* %13, align 4, !dbg !507
  %46 = load i32, i32* %13, align 4, !dbg !508
  %47 = icmp ne i32 %46, 0, !dbg !508
  br i1 %47, label %48, label %59, !dbg !510

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %11, align 4, !dbg !511
  %50 = icmp ne i32 %49, 0, !dbg !511
  br i1 %50, label %51, label %59, !dbg !513

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* @term_is_utf8, align 4, !dbg !514
  %53 = icmp ne i32 %52, 0, !dbg !514
  br i1 %53, label %54, label %57, !dbg !516

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %6, align 8, !dbg !517
  %56 = call noalias i8* @g_strdup(i8* %55), !dbg !518
  store i8* %56, i8** %4, align 8, !dbg !519
  br label %113, !dbg !519

; <label>:57:                                     ; preds = %51
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 8, !dbg !520
  br label %58

; <label>:58:                                     ; preds = %57
  br label %63, !dbg !521

; <label>:59:                                     ; preds = %48, %44
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !523
  %61 = load i8*, i8** %7, align 8, !dbg !524
  %62 = call i8* @find_conversion(%struct._SERVER_REC* %60, i8* %61), !dbg !525
  store i8* %62, i8** %8, align 8, !dbg !526
  br label %63

; <label>:63:                                     ; preds = %59, %58
  %64 = load i8*, i8** %8, align 8, !dbg !527
  %65 = icmp ne i8* %64, null, !dbg !527
  br i1 %65, label %66, label %73, !dbg !529

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %6, align 8, !dbg !530
  %68 = load i32, i32* %14, align 4, !dbg !531
  %69 = sext i32 %68 to i64, !dbg !531
  %70 = load i8*, i8** %9, align 8, !dbg !532
  %71 = load i8*, i8** %8, align 8, !dbg !533
  %72 = call noalias i8* @g_convert_with_fallback(i8* %67, i64 %69, i8* %70, i8* %71, i8* null, i64* null, i64* null, %struct._GError** null), !dbg !534
  store i8* %72, i8** %10, align 8, !dbg !535
  br label %73, !dbg !536

; <label>:73:                                     ; preds = %66, %63
  %74 = load i8*, i8** %10, align 8, !dbg !537
  %75 = icmp ne i8* %74, null, !dbg !537
  br i1 %75, label %111, label %76, !dbg !539

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %11, align 4, !dbg !540
  %78 = icmp ne i32 %77, 0, !dbg !540
  br i1 %78, label %79, label %87, !dbg !543

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* @term_is_utf8, align 4, !dbg !544
  %81 = icmp ne i32 %80, 0, !dbg !544
  br i1 %81, label %82, label %85, !dbg !546

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %6, align 8, !dbg !547
  %84 = call noalias i8* @g_strdup(i8* %83), !dbg !548
  store i8* %84, i8** %4, align 8, !dbg !549
  br label %113, !dbg !549

; <label>:85:                                     ; preds = %79
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 8, !dbg !550
  br label %86

; <label>:86:                                     ; preds = %85
  br label %94, !dbg !551

; <label>:87:                                     ; preds = %76
  %88 = load i32, i32* @term_is_utf8, align 4, !dbg !553
  %89 = icmp ne i32 %88, 0, !dbg !553
  br i1 %89, label %90, label %92, !dbg !555

; <label>:90:                                     ; preds = %87
  %91 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !556
  store i8* %91, i8** %8, align 8, !dbg !557
  br label %93, !dbg !558

; <label>:92:                                     ; preds = %87
  store i8* null, i8** %8, align 8, !dbg !559
  br label %93

; <label>:93:                                     ; preds = %92, %90
  br label %94

; <label>:94:                                     ; preds = %93, %86
  %95 = load i8*, i8** %8, align 8, !dbg !560
  %96 = icmp ne i8* %95, null, !dbg !560
  br i1 %96, label %97, label %104, !dbg !562

; <label>:97:                                     ; preds = %94
  %98 = load i8*, i8** %6, align 8, !dbg !563
  %99 = load i32, i32* %14, align 4, !dbg !564
  %100 = sext i32 %99 to i64, !dbg !564
  %101 = load i8*, i8** %9, align 8, !dbg !565
  %102 = load i8*, i8** %8, align 8, !dbg !566
  %103 = call noalias i8* @g_convert_with_fallback(i8* %98, i64 %100, i8* %101, i8* %102, i8* null, i64* null, i64* null, %struct._GError** null), !dbg !567
  store i8* %103, i8** %10, align 8, !dbg !568
  br label %104, !dbg !569

; <label>:104:                                    ; preds = %97, %94
  %105 = load i8*, i8** %10, align 8, !dbg !570
  %106 = icmp ne i8* %105, null, !dbg !570
  br i1 %106, label %110, label %107, !dbg !572

; <label>:107:                                    ; preds = %104
  %108 = load i8*, i8** %6, align 8, !dbg !573
  %109 = call noalias i8* @g_strdup(i8* %108), !dbg !574
  store i8* %109, i8** %10, align 8, !dbg !575
  br label %110, !dbg !576

; <label>:110:                                    ; preds = %107, %104
  br label %111, !dbg !577

; <label>:111:                                    ; preds = %110, %73
  %112 = load i8*, i8** %10, align 8, !dbg !578
  store i8* %112, i8** %4, align 8, !dbg !579
  br label %113, !dbg !579

; <label>:113:                                    ; preds = %111, %82, %54, %23, %18
  %114 = load i8*, i8** %4, align 8, !dbg !580
  ret i8* %114, !dbg !580
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @str_is_ascii(i8*) #0 !dbg !581 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !584, metadata !69), !dbg !585
  call void @llvm.dbg.declare(metadata i32* %4, metadata !586, metadata !69), !dbg !587
  store i32 0, i32* %4, align 4, !dbg !588
  br label %5, !dbg !590

; <label>:5:                                      ; preds = %24, %1
  %6 = load i32, i32* %4, align 4, !dbg !591
  %7 = sext i32 %6 to i64, !dbg !594
  %8 = load i8*, i8** %3, align 8, !dbg !594
  %9 = getelementptr inbounds i8, i8* %8, i64 %7, !dbg !594
  %10 = load i8, i8* %9, align 1, !dbg !594
  %11 = sext i8 %10 to i32, !dbg !594
  %12 = icmp ne i32 %11, 0, !dbg !595
  br i1 %12, label %13, label %27, !dbg !596

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %4, align 4, !dbg !597
  %15 = sext i32 %14 to i64, !dbg !599
  %16 = load i8*, i8** %3, align 8, !dbg !599
  %17 = getelementptr inbounds i8, i8* %16, i64 %15, !dbg !599
  %18 = load i8, i8* %17, align 1, !dbg !599
  %19 = sext i8 %18 to i32, !dbg !599
  %20 = and i32 %19, 128, !dbg !600
  %21 = icmp ne i32 %20, 0, !dbg !600
  br i1 %21, label %22, label %23, !dbg !601

; <label>:22:                                     ; preds = %13
  store i32 0, i32* %2, align 4, !dbg !602
  br label %28, !dbg !602

; <label>:23:                                     ; preds = %13
  br label %24, !dbg !603

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !605
  %26 = add nsw i32 %25, 1, !dbg !605
  store i32 %26, i32* %4, align 4, !dbg !605
  br label %5, !dbg !607, !llvm.loop !608

; <label>:27:                                     ; preds = %5
  store i32 1, i32* %2, align 4, !dbg !610
  br label %28, !dbg !610

; <label>:28:                                     ; preds = %27, %22
  %29 = load i32, i32* %2, align 4, !dbg !611
  ret i32 %29, !dbg !611
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @find_conversion(%struct._SERVER_REC*, i8*) #0 !dbg !612 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !615, metadata !69), !dbg !616
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !617, metadata !69), !dbg !618
  call void @llvm.dbg.declare(metadata i8** %5, metadata !619, metadata !69), !dbg !620
  store i8* null, i8** %5, align 8, !dbg !620
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !621
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !623
  br i1 %8, label %9, label %22, !dbg !624

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !625
  %11 = icmp ne i8* %10, null, !dbg !627
  br i1 %11, label %12, label %22, !dbg !628

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !629, metadata !69), !dbg !631
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !632
  %14 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %13, i32 0, i32 6, !dbg !633
  %15 = load i8*, i8** %14, align 8, !dbg !633
  %16 = load i8*, i8** %4, align 8, !dbg !634
  %17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %15, i8* %16), !dbg !635
  store i8* %17, i8** %6, align 8, !dbg !631
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !636
  %19 = load i8*, i8** %6, align 8, !dbg !637
  %20 = call i8* @config_get_str(%struct._CONFIG_REC* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %19, i8* null), !dbg !638
  store i8* %20, i8** %5, align 8, !dbg !639
  %21 = load i8*, i8** %6, align 8, !dbg !640
  call void @g_free(i8* %21), !dbg !641
  br label %22, !dbg !642

; <label>:22:                                     ; preds = %12, %9, %2
  %23 = load i8*, i8** %5, align 8, !dbg !643
  %24 = icmp eq i8* %23, null, !dbg !645
  br i1 %24, label %25, label %32, !dbg !646

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %4, align 8, !dbg !647
  %27 = icmp ne i8* %26, null, !dbg !649
  br i1 %27, label %28, label %32, !dbg !650

; <label>:28:                                     ; preds = %25
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !651
  %30 = load i8*, i8** %4, align 8, !dbg !652
  %31 = call i8* @config_get_str(%struct._CONFIG_REC* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %30, i8* null), !dbg !653
  store i8* %31, i8** %5, align 8, !dbg !654
  br label %32, !dbg !655

; <label>:32:                                     ; preds = %28, %25, %22
  %33 = load i8*, i8** %5, align 8, !dbg !656
  %34 = icmp eq i8* %33, null, !dbg !658
  br i1 %34, label %35, label %44, !dbg !659

; <label>:35:                                     ; preds = %32
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !660
  %37 = icmp ne %struct._SERVER_REC* %36, null, !dbg !662
  br i1 %37, label %38, label %44, !dbg !663

; <label>:38:                                     ; preds = %35
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !664
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !665
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 6, !dbg !666
  %42 = load i8*, i8** %41, align 8, !dbg !666
  %43 = call i8* @config_get_str(%struct._CONFIG_REC* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %42, i8* null), !dbg !667
  store i8* %43, i8** %5, align 8, !dbg !668
  br label %44, !dbg !669

; <label>:44:                                     ; preds = %38, %35, %32
  %45 = load i8*, i8** %5, align 8, !dbg !670
  ret i8* %45, !dbg !671
}

declare noalias i8* @g_convert_with_fallback(i8*, i64, i8*, i8*, i8*, i64*, i64*, %struct._GError**) #2

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @recode_out(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !672 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !673, metadata !69), !dbg !674
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !675, metadata !69), !dbg !676
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !677, metadata !69), !dbg !678
  call void @llvm.dbg.declare(metadata i8** %8, metadata !679, metadata !69), !dbg !680
  store i8* null, i8** %8, align 8, !dbg !680
  call void @llvm.dbg.declare(metadata i8** %9, metadata !681, metadata !69), !dbg !682
  %15 = load i8*, i8** @translit_charset, align 8, !dbg !683
  store i8* %15, i8** %9, align 8, !dbg !682
  call void @llvm.dbg.declare(metadata i8** %10, metadata !684, metadata !69), !dbg !685
  store i8* null, i8** %10, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata i8** %11, metadata !686, metadata !69), !dbg !687
  store i8* null, i8** %11, align 8, !dbg !687
  call void @llvm.dbg.declare(metadata i32* %12, metadata !688, metadata !69), !dbg !689
  call void @llvm.dbg.declare(metadata i32* %13, metadata !690, metadata !69), !dbg !691
  call void @llvm.dbg.declare(metadata i32* %14, metadata !692, metadata !69), !dbg !693
  %16 = load i8*, i8** %6, align 8, !dbg !694
  %17 = icmp ne i8* %16, null, !dbg !694
  br i1 %17, label %19, label %18, !dbg !696

; <label>:18:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !697
  br label %72, !dbg !697

; <label>:19:                                     ; preds = %3
  %20 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !698
  store i32 %20, i32* %13, align 4, !dbg !699
  %21 = load i32, i32* %13, align 4, !dbg !700
  %22 = icmp ne i32 %21, 0, !dbg !700
  br i1 %22, label %26, label %23, !dbg !702

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %6, align 8, !dbg !703
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !704
  store i8* %25, i8** %4, align 8, !dbg !705
  br label %72, !dbg !705

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %6, align 8, !dbg !706
  %28 = call i64 @strlen(i8* %27) #5, !dbg !707
  %29 = trunc i64 %28 to i32, !dbg !707
  store i32 %29, i32* %14, align 4, !dbg !708
  %30 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !709
  store i32 %30, i32* %12, align 4, !dbg !710
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !711
  %32 = load i8*, i8** %7, align 8, !dbg !712
  %33 = call i8* @find_conversion(%struct._SERVER_REC* %31, i8* %32), !dbg !713
  store i8* %33, i8** %10, align 8, !dbg !714
  %34 = load i8*, i8** %10, align 8, !dbg !715
  %35 = icmp eq i8* %34, null, !dbg !717
  br i1 %35, label %36, label %38, !dbg !718

; <label>:36:                                     ; preds = %26
  %37 = call i8* @settings_get_str(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0)), !dbg !719
  store i8* %37, i8** %10, align 8, !dbg !720
  br label %38, !dbg !721

; <label>:38:                                     ; preds = %36, %26
  %39 = load i8*, i8** %10, align 8, !dbg !722
  %40 = icmp ne i8* %39, null, !dbg !722
  br i1 %40, label %41, label %63, !dbg !724

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %10, align 8, !dbg !725
  %43 = load i8, i8* %42, align 1, !dbg !727
  %44 = sext i8 %43 to i32, !dbg !727
  %45 = icmp ne i32 %44, 0, !dbg !728
  br i1 %45, label %46, label %63, !dbg !729

; <label>:46:                                     ; preds = %41
  %47 = load i32, i32* %12, align 4, !dbg !730
  %48 = icmp ne i32 %47, 0, !dbg !730
  br i1 %48, label %49, label %56, !dbg !733

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %10, align 8, !dbg !734
  %51 = call i32 @is_translit(i8* %50), !dbg !736
  %52 = icmp ne i32 %51, 0, !dbg !736
  br i1 %52, label %56, label %53, !dbg !737

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %10, align 8, !dbg !738
  %55 = call noalias i8* (i8*, ...) @g_strconcat(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !739
  store i8* %55, i8** %11, align 8, !dbg !740
  store i8* %55, i8** %10, align 8, !dbg !741
  br label %56, !dbg !742

; <label>:56:                                     ; preds = %53, %49, %46
  %57 = load i8*, i8** %6, align 8, !dbg !743
  %58 = load i32, i32* %14, align 4, !dbg !744
  %59 = sext i32 %58 to i64, !dbg !744
  %60 = load i8*, i8** %10, align 8, !dbg !745
  %61 = load i8*, i8** %9, align 8, !dbg !746
  %62 = call noalias i8* @g_convert(i8* %57, i64 %59, i8* %60, i8* %61, i64* null, i64* null, %struct._GError** null), !dbg !747
  store i8* %62, i8** %8, align 8, !dbg !748
  br label %63, !dbg !749

; <label>:63:                                     ; preds = %56, %41, %38
  %64 = load i8*, i8** %11, align 8, !dbg !750
  call void @g_free(i8* %64), !dbg !751
  %65 = load i8*, i8** %8, align 8, !dbg !752
  %66 = icmp ne i8* %65, null, !dbg !752
  br i1 %66, label %70, label %67, !dbg !754

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** %6, align 8, !dbg !755
  %69 = call noalias i8* @g_strdup(i8* %68), !dbg !756
  store i8* %69, i8** %8, align 8, !dbg !757
  br label %70, !dbg !758

; <label>:70:                                     ; preds = %67, %63
  %71 = load i8*, i8** %8, align 8, !dbg !759
  store i8* %71, i8** %4, align 8, !dbg !760
  br label %72, !dbg !760

; <label>:72:                                     ; preds = %70, %23, %18
  %73 = load i8*, i8** %4, align 8, !dbg !761
  ret i8* %73, !dbg !761
}

declare noalias i8* @g_convert(i8*, i64, i8*, i8*, i64*, i64*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i8** @recode_split(%struct._SERVER_REC*, i8*, i8*, i32, i32) #0 !dbg !762 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._GIConv*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !765, metadata !69), !dbg !766
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !767, metadata !69), !dbg !768
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !769, metadata !69), !dbg !770
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !771, metadata !69), !dbg !772
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !773, metadata !69), !dbg !774
  call void @llvm.dbg.declare(metadata %struct._GIConv** %12, metadata !775, metadata !69), !dbg !776
  store %struct._GIConv* inttoptr (i64 -1 to %struct._GIConv*), %struct._GIConv** %12, align 8, !dbg !776
  call void @llvm.dbg.declare(metadata i8** %13, metadata !777, metadata !69), !dbg !778
  %25 = load i8*, i8** @translit_charset, align 8, !dbg !779
  store i8* %25, i8** %13, align 8, !dbg !778
  call void @llvm.dbg.declare(metadata i8** %14, metadata !780, metadata !69), !dbg !781
  %26 = load i8*, i8** @translit_charset, align 8, !dbg !782
  store i8* %26, i8** %14, align 8, !dbg !781
  call void @llvm.dbg.declare(metadata i8** %15, metadata !783, metadata !69), !dbg !784
  store i8* null, i8** %15, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata i8** %16, metadata !785, metadata !69), !dbg !786
  %27 = load i8*, i8** %8, align 8, !dbg !787
  store i8* %27, i8** %16, align 8, !dbg !786
  call void @llvm.dbg.declare(metadata i8** %17, metadata !788, metadata !69), !dbg !789
  %28 = load i8*, i8** %16, align 8, !dbg !790
  store i8* %28, i8** %17, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata i8** %18, metadata !791, metadata !69), !dbg !792
  store i8* null, i8** %18, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata i8** %19, metadata !793, metadata !69), !dbg !794
  call void @llvm.dbg.declare(metadata i64* %20, metadata !795, metadata !69), !dbg !796
  %29 = load i8*, i8** %16, align 8, !dbg !797
  %30 = call i64 @strlen(i8* %29) #5, !dbg !798
  store i64 %30, i64* %20, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata i64* %21, metadata !799, metadata !69), !dbg !800
  %31 = load i32, i32* %10, align 4, !dbg !801
  %32 = sext i32 %31 to i64, !dbg !801
  store i64 %32, i64* %21, align 8, !dbg !800
  call void @llvm.dbg.declare(metadata i32* %22, metadata !802, metadata !69), !dbg !803
  store i32 0, i32* %22, align 4, !dbg !803
  call void @llvm.dbg.declare(metadata i8*** %23, metadata !804, metadata !69), !dbg !805
  br label %33, !dbg !806, !llvm.loop !807

; <label>:33:                                     ; preds = %5
  %34 = load i8*, i8** %8, align 8, !dbg !808
  %35 = icmp ne i8* %34, null, !dbg !812
  br i1 %35, label %36, label %37, !dbg !808

; <label>:36:                                     ; preds = %33
  br label %38, !dbg !813

; <label>:37:                                     ; preds = %33
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.recode_split, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !815
  br label %38

; <label>:38:                                     ; preds = %37, %36
  br label %39, !dbg !817

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %8, align 8, !dbg !819
  %41 = icmp eq i8* %40, null, !dbg !821
  br i1 %41, label %42, label %48, !dbg !822

; <label>:42:                                     ; preds = %39
  %43 = call noalias i8* @g_malloc_n(i64 1, i64 8), !dbg !823
  %44 = bitcast i8* %43 to i8**, !dbg !825
  store i8** %44, i8*** %23, align 8, !dbg !826
  %45 = load i8**, i8*** %23, align 8, !dbg !827
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !827
  store i8* null, i8** %46, align 8, !dbg !828
  %47 = load i8**, i8*** %23, align 8, !dbg !829
  store i8** %47, i8*** %6, align 8, !dbg !830
  br label %217, !dbg !830

; <label>:48:                                     ; preds = %39
  %49 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !831
  %50 = icmp ne i32 %49, 0, !dbg !831
  br i1 %50, label %51, label %81, !dbg !833

; <label>:51:                                     ; preds = %48
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !834
  %53 = load i8*, i8** %9, align 8, !dbg !836
  %54 = call i8* @find_conversion(%struct._SERVER_REC* %52, i8* %53), !dbg !837
  store i8* %54, i8** %14, align 8, !dbg !838
  %55 = load i8*, i8** %14, align 8, !dbg !839
  %56 = icmp eq i8* %55, null, !dbg !841
  br i1 %56, label %57, label %59, !dbg !842

; <label>:57:                                     ; preds = %51
  %58 = call i8* @settings_get_str(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0)), !dbg !843
  store i8* %58, i8** %14, align 8, !dbg !844
  br label %59, !dbg !845

; <label>:59:                                     ; preds = %57, %51
  %60 = load i8*, i8** %14, align 8, !dbg !846
  %61 = icmp ne i8* %60, null, !dbg !848
  br i1 %61, label %62, label %78, !dbg !849

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %14, align 8, !dbg !850
  %64 = load i8, i8* %63, align 1, !dbg !852
  %65 = sext i8 %64 to i32, !dbg !852
  %66 = icmp ne i32 %65, 0, !dbg !853
  br i1 %66, label %67, label %78, !dbg !854

; <label>:67:                                     ; preds = %62
  %68 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !855
  %69 = icmp ne i32 %68, 0, !dbg !855
  br i1 %69, label %70, label %77, !dbg !858

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** %14, align 8, !dbg !859
  %72 = call i32 @is_translit(i8* %71), !dbg !860
  %73 = icmp ne i32 %72, 0, !dbg !860
  br i1 %73, label %77, label %74, !dbg !861

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %14, align 8, !dbg !863
  %76 = call noalias i8* (i8*, ...) @g_strconcat(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !864
  store i8* %76, i8** %15, align 8, !dbg !865
  store i8* %76, i8** %14, align 8, !dbg !866
  br label %77, !dbg !867

; <label>:77:                                     ; preds = %74, %70, %67
  br label %80, !dbg !868

; <label>:78:                                     ; preds = %62, %59
  %79 = load i8*, i8** %13, align 8, !dbg !869
  store i8* %79, i8** %14, align 8, !dbg !871
  br label %80

; <label>:80:                                     ; preds = %78, %77
  br label %81, !dbg !872

; <label>:81:                                     ; preds = %80, %48
  %82 = load i8*, i8** %14, align 8, !dbg !873
  %83 = load i8*, i8** %13, align 8, !dbg !874
  %84 = call %struct._GIConv* @g_iconv_open(i8* %82, i8* %83), !dbg !875
  store %struct._GIConv* %84, %struct._GIConv** %12, align 8, !dbg !876
  %85 = load %struct._GIConv*, %struct._GIConv** %12, align 8, !dbg !877
  %86 = icmp eq %struct._GIConv* %85, inttoptr (i64 -1 to %struct._GIConv*), !dbg !879
  br i1 %86, label %87, label %92, !dbg !880

; <label>:87:                                     ; preds = %81
  %88 = load i8*, i8** %8, align 8, !dbg !881
  %89 = load i32, i32* %10, align 4, !dbg !883
  %90 = load i32, i32* %11, align 4, !dbg !884
  %91 = call i8** @strsplit_len(i8* %88, i32 %89, i32 %90), !dbg !885
  store i8** %91, i8*** %23, align 8, !dbg !886
  br label %207, !dbg !887

; <label>:92:                                     ; preds = %81
  %93 = load i64, i64* %21, align 8, !dbg !888
  %94 = call noalias i8* @g_malloc(i64 %93), !dbg !889
  store i8* %94, i8** %18, align 8, !dbg !890
  %95 = load i8*, i8** %18, align 8, !dbg !891
  store i8* %95, i8** %19, align 8, !dbg !892
  %96 = call noalias i8* @g_malloc_n(i64 1, i64 8), !dbg !893
  %97 = bitcast i8* %96 to i8**, !dbg !894
  store i8** %97, i8*** %23, align 8, !dbg !895
  br label %98, !dbg !896

; <label>:98:                                     ; preds = %159, %92
  %99 = load %struct._GIConv*, %struct._GIConv** %12, align 8, !dbg !897
  %100 = call i64 @g_iconv(%struct._GIConv* %99, i8** %16, i64* %20, i8** %19, i64* %21), !dbg !899
  %101 = icmp eq i64 %100, -1, !dbg !900
  br i1 %101, label %102, label %183, !dbg !901

; <label>:102:                                    ; preds = %98
  %103 = call i32* @__errno_location() #1, !dbg !902
  %104 = load i32, i32* %103, align 4, !dbg !905
  %105 = icmp ne i32 %104, 7, !dbg !906
  br i1 %105, label %106, label %116, !dbg !907

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %22, align 4, !dbg !908
  %108 = sext i32 %107 to i64, !dbg !910
  %109 = load i8**, i8*** %23, align 8, !dbg !910
  %110 = getelementptr inbounds i8*, i8** %109, i64 %108, !dbg !910
  store i8* null, i8** %110, align 8, !dbg !911
  %111 = load i8**, i8*** %23, align 8, !dbg !912
  call void @g_strfreev(i8** %111), !dbg !913
  %112 = load i8*, i8** %8, align 8, !dbg !914
  %113 = load i32, i32* %10, align 4, !dbg !915
  %114 = load i32, i32* %11, align 4, !dbg !916
  %115 = call i8** @strsplit_len(i8* %112, i32 %113, i32 %114), !dbg !917
  store i8** %115, i8*** %23, align 8, !dbg !918
  br label %207, !dbg !919

; <label>:116:                                    ; preds = %102
  %117 = load i32, i32* %11, align 4, !dbg !920
  %118 = icmp ne i32 %117, 0, !dbg !920
  br i1 %118, label %119, label %159, !dbg !922

; <label>:119:                                    ; preds = %116
  call void @llvm.dbg.declare(metadata i32* %24, metadata !923, metadata !69), !dbg !925
  store i32 0, i32* %24, align 4, !dbg !926
  br label %120, !dbg !928

; <label>:120:                                    ; preds = %155, %119
  %121 = load i32, i32* %24, align 4, !dbg !929
  %122 = sext i32 %121 to i64, !dbg !929
  %123 = load i8*, i8** %16, align 8, !dbg !932
  %124 = load i8*, i8** %17, align 8, !dbg !933
  %125 = ptrtoint i8* %123 to i64, !dbg !934
  %126 = ptrtoint i8* %124 to i64, !dbg !934
  %127 = sub i64 %125, %126, !dbg !934
  %128 = icmp slt i64 %122, %127, !dbg !935
  br i1 %128, label %129, label %158, !dbg !936

; <label>:129:                                    ; preds = %120
  %130 = load i8*, i8** %16, align 8, !dbg !937
  %131 = load i8*, i8** %17, align 8, !dbg !940
  %132 = ptrtoint i8* %130 to i64, !dbg !941
  %133 = ptrtoint i8* %131 to i64, !dbg !941
  %134 = sub i64 %132, %133, !dbg !941
  %135 = sub nsw i64 %134, 1, !dbg !942
  %136 = load i32, i32* %24, align 4, !dbg !943
  %137 = sext i32 %136 to i64, !dbg !943
  %138 = sub nsw i64 %135, %137, !dbg !944
  %139 = load i8*, i8** %17, align 8, !dbg !945
  %140 = getelementptr inbounds i8, i8* %139, i64 %138, !dbg !945
  %141 = load i8, i8* %140, align 1, !dbg !945
  %142 = sext i8 %141 to i32, !dbg !945
  %143 = icmp eq i32 %142, 32, !dbg !946
  br i1 %143, label %144, label %154, !dbg !947

; <label>:144:                                    ; preds = %129
  %145 = load i32, i32* %24, align 4, !dbg !948
  %146 = load i8*, i8** %16, align 8, !dbg !950
  %147 = sext i32 %145 to i64, !dbg !950
  %148 = sub i64 0, %147, !dbg !950
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !950
  store i8* %149, i8** %16, align 8, !dbg !950
  %150 = load i32, i32* %24, align 4, !dbg !951
  %151 = sext i32 %150 to i64, !dbg !951
  %152 = load i64, i64* %20, align 8, !dbg !952
  %153 = add i64 %152, %151, !dbg !952
  store i64 %153, i64* %20, align 8, !dbg !952
  br label %158, !dbg !953

; <label>:154:                                    ; preds = %129
  br label %155, !dbg !954

; <label>:155:                                    ; preds = %154
  %156 = load i32, i32* %24, align 4, !dbg !955
  %157 = add nsw i32 %156, 1, !dbg !955
  store i32 %157, i32* %24, align 4, !dbg !955
  br label %120, !dbg !957, !llvm.loop !958

; <label>:158:                                    ; preds = %144, %120
  br label %159, !dbg !960

; <label>:159:                                    ; preds = %158, %116
  %160 = load i8*, i8** %17, align 8, !dbg !961
  %161 = load i8*, i8** %16, align 8, !dbg !962
  %162 = load i8*, i8** %17, align 8, !dbg !963
  %163 = ptrtoint i8* %161 to i64, !dbg !964
  %164 = ptrtoint i8* %162 to i64, !dbg !964
  %165 = sub i64 %163, %164, !dbg !964
  %166 = call noalias i8* @g_strndup(i8* %160, i64 %165), !dbg !965
  %167 = load i32, i32* %22, align 4, !dbg !966
  %168 = add nsw i32 %167, 1, !dbg !966
  store i32 %168, i32* %22, align 4, !dbg !966
  %169 = sext i32 %167 to i64, !dbg !967
  %170 = load i8**, i8*** %23, align 8, !dbg !967
  %171 = getelementptr inbounds i8*, i8** %170, i64 %169, !dbg !967
  store i8* %166, i8** %171, align 8, !dbg !968
  %172 = load i8**, i8*** %23, align 8, !dbg !969
  %173 = bitcast i8** %172 to i8*, !dbg !969
  %174 = load i32, i32* %22, align 4, !dbg !970
  %175 = add nsw i32 %174, 1, !dbg !971
  %176 = sext i32 %175 to i64, !dbg !972
  %177 = call i8* @g_realloc_n(i8* %173, i64 %176, i64 8), !dbg !973
  %178 = bitcast i8* %177 to i8**, !dbg !974
  store i8** %178, i8*** %23, align 8, !dbg !975
  %179 = load i8*, i8** %16, align 8, !dbg !976
  store i8* %179, i8** %17, align 8, !dbg !977
  %180 = load i8*, i8** %18, align 8, !dbg !978
  store i8* %180, i8** %19, align 8, !dbg !979
  %181 = load i32, i32* %10, align 4, !dbg !980
  %182 = sext i32 %181 to i64, !dbg !980
  store i64 %182, i64* %21, align 8, !dbg !981
  br label %98, !dbg !982, !llvm.loop !984

; <label>:183:                                    ; preds = %98
  %184 = load i8*, i8** %17, align 8, !dbg !985
  %185 = load i8*, i8** %16, align 8, !dbg !986
  %186 = load i8*, i8** %17, align 8, !dbg !987
  %187 = ptrtoint i8* %185 to i64, !dbg !988
  %188 = ptrtoint i8* %186 to i64, !dbg !988
  %189 = sub i64 %187, %188, !dbg !988
  %190 = call noalias i8* @g_strndup(i8* %184, i64 %189), !dbg !989
  %191 = load i32, i32* %22, align 4, !dbg !990
  %192 = add nsw i32 %191, 1, !dbg !990
  store i32 %192, i32* %22, align 4, !dbg !990
  %193 = sext i32 %191 to i64, !dbg !991
  %194 = load i8**, i8*** %23, align 8, !dbg !991
  %195 = getelementptr inbounds i8*, i8** %194, i64 %193, !dbg !991
  store i8* %190, i8** %195, align 8, !dbg !992
  %196 = load i8**, i8*** %23, align 8, !dbg !993
  %197 = bitcast i8** %196 to i8*, !dbg !993
  %198 = load i32, i32* %22, align 4, !dbg !994
  %199 = add nsw i32 %198, 1, !dbg !995
  %200 = sext i32 %199 to i64, !dbg !996
  %201 = call i8* @g_realloc_n(i8* %197, i64 %200, i64 8), !dbg !997
  %202 = bitcast i8* %201 to i8**, !dbg !998
  store i8** %202, i8*** %23, align 8, !dbg !999
  %203 = load i32, i32* %22, align 4, !dbg !1000
  %204 = sext i32 %203 to i64, !dbg !1001
  %205 = load i8**, i8*** %23, align 8, !dbg !1001
  %206 = getelementptr inbounds i8*, i8** %205, i64 %204, !dbg !1001
  store i8* null, i8** %206, align 8, !dbg !1002
  br label %207, !dbg !1001

; <label>:207:                                    ; preds = %183, %106, %87
  %208 = load %struct._GIConv*, %struct._GIConv** %12, align 8, !dbg !1003
  %209 = icmp ne %struct._GIConv* %208, inttoptr (i64 -1 to %struct._GIConv*), !dbg !1005
  br i1 %209, label %210, label %213, !dbg !1006

; <label>:210:                                    ; preds = %207
  %211 = load %struct._GIConv*, %struct._GIConv** %12, align 8, !dbg !1007
  %212 = call i32 @g_iconv_close(%struct._GIConv* %211), !dbg !1008
  br label %213, !dbg !1008

; <label>:213:                                    ; preds = %210, %207
  %214 = load i8*, i8** %15, align 8, !dbg !1009
  call void @g_free(i8* %214), !dbg !1010
  %215 = load i8*, i8** %18, align 8, !dbg !1011
  call void @g_free(i8* %215), !dbg !1012
  %216 = load i8**, i8*** %23, align 8, !dbg !1013
  store i8** %216, i8*** %6, align 8, !dbg !1014
  br label %217, !dbg !1014

; <label>:217:                                    ; preds = %213, %42
  %218 = load i8**, i8*** %6, align 8, !dbg !1015
  ret i8** %218, !dbg !1015
}

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare i8** @strsplit_len(i8*, i32, i32) #2

declare noalias i8* @g_malloc(i64) #2

declare i64 @g_iconv(%struct._GIConv*, i8**, i64*, i8**, i64*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare void @g_strfreev(i8**) #2

declare noalias i8* @g_strndup(i8*, i64) #2

declare i8* @g_realloc_n(i8*, i64, i64) #2

; Function Attrs: nounwind uwtable
define void @recode_update_charset() #0 !dbg !1016 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1017, metadata !69), !dbg !1018
  %2 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1019
  store i8* %2, i8** %1, align 8, !dbg !1018
  %3 = load i8*, i8** %1, align 8, !dbg !1020
  %4 = call i32 @g_ascii_strcasecmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)), !dbg !1021
  %5 = icmp ne i32 %4, 0, !dbg !1022
  %6 = xor i1 %5, true, !dbg !1022
  %7 = zext i1 %6 to i32, !dbg !1022
  store i32 %7, i32* @term_is_utf8, align 4, !dbg !1023
  %8 = load i8*, i8** @translit_charset, align 8, !dbg !1024
  call void @g_free(i8* %8), !dbg !1025
  %9 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !1026
  %10 = icmp ne i32 %9, 0, !dbg !1026
  br i1 %10, label %11, label %18, !dbg !1028

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %1, align 8, !dbg !1029
  %13 = call i32 @is_translit(i8* %12), !dbg !1031
  %14 = icmp ne i32 %13, 0, !dbg !1031
  br i1 %14, label %18, label %15, !dbg !1032

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %1, align 8, !dbg !1033
  %17 = call noalias i8* (i8*, ...) @g_strconcat(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !1034
  store i8* %17, i8** @translit_charset, align 8, !dbg !1035
  br label %21, !dbg !1036

; <label>:18:                                     ; preds = %11, %0
  %19 = load i8*, i8** %1, align 8, !dbg !1037
  %20 = call noalias i8* @g_strdup(i8* %19), !dbg !1038
  store i8* %20, i8** @translit_charset, align 8, !dbg !1039
  br label %21

; <label>:21:                                     ; preds = %18, %15
  ret void, !dbg !1040
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @recode_init() #0 !dbg !1041 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1), !dbg !1042
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !1043
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0)), !dbg !1044
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 1), !dbg !1045
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 1), !dbg !1046
  ret void, !dbg !1047
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @recode_deinit() #0 !dbg !1048 {
  %1 = load i8*, i8** @translit_charset, align 8, !dbg !1049
  call void @g_free(i8* %1), !dbg !1050
  ret void, !dbg !1051
}

declare i8* @stristr(i8*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !49)
!1 = !DIFile(filename: "line73-recode.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !{!36, !37, !41, !45, !47}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !38, line: 77, baseType: !39)
!38 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !38, line: 77, flags: DIFlagFwdDecl)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!49 = !{!50, !52}
!50 = distinct !DIGlobalVariable(name: "translit_charset", scope: !0, file: !51, line: 28, type: !48, isLocal: true, isDefinition: true, variable: i8** @translit_charset)
!51 = !DIFile(filename: "recode.c", directory: "/home/lichi/Desktop/irssi/task1")
!52 = distinct !DIGlobalVariable(name: "term_is_utf8", scope: !0, file: !51, line: 29, type: !53, isLocal: true, isDefinition: true, variable: i32* @term_is_utf8)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !43, line: 50, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !43, line: 49, baseType: !55)
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !{i32 2, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!59 = distinct !DISubprogram(name: "is_utf8", scope: !51, file: !51, line: 31, type: !60, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!53}
!62 = !{}
!63 = !DILocation(line: 33, column: 9, scope: !59)
!64 = !DILocation(line: 33, column: 2, scope: !59)
!65 = distinct !DISubprogram(name: "is_valid_charset", scope: !51, file: !51, line: 44, type: !66, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!66 = !DISubroutineType(types: !67)
!67 = !{!53, !45}
!68 = !DILocalVariable(name: "charset", arg: 1, scope: !65, file: !51, line: 44, type: !45)
!69 = !DIExpression()
!70 = !DILocation(line: 44, column: 39, scope: !65)
!71 = !DILocalVariable(name: "cd", scope: !65, file: !51, line: 46, type: !37)
!72 = !DILocation(line: 46, column: 9, scope: !65)
!73 = !DILocalVariable(name: "to", scope: !65, file: !51, line: 47, type: !48)
!74 = !DILocation(line: 47, column: 8, scope: !65)
!75 = !DILocation(line: 49, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !51, line: 49, column: 6)
!77 = !DILocation(line: 49, column: 15, scope: !76)
!78 = !DILocation(line: 49, column: 19, scope: !79)
!79 = !DILexicalBlockFile(scope: !76, file: !51, discriminator: 1)
!80 = !DILocation(line: 49, column: 18, scope: !79)
!81 = !DILocation(line: 49, column: 27, scope: !79)
!82 = !DILocation(line: 49, column: 6, scope: !79)
!83 = !DILocation(line: 50, column: 3, scope: !76)
!84 = !DILocation(line: 52, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !65, file: !51, line: 52, column: 6)
!86 = !DILocation(line: 52, column: 48, scope: !85)
!87 = !DILocation(line: 52, column: 64, scope: !88)
!88 = !DILexicalBlockFile(scope: !85, file: !51, discriminator: 1)
!89 = !DILocation(line: 52, column: 52, scope: !88)
!90 = !DILocation(line: 52, column: 6, scope: !88)
!91 = !DILocation(line: 53, column: 30, scope: !85)
!92 = !DILocation(line: 53, column: 18, scope: !85)
!93 = !DILocation(line: 53, column: 16, scope: !85)
!94 = !DILocation(line: 53, column: 11, scope: !85)
!95 = !DILocation(line: 53, column: 3, scope: !85)
!96 = !DILocation(line: 55, column: 20, scope: !65)
!97 = !DILocation(line: 55, column: 7, scope: !65)
!98 = !DILocation(line: 55, column: 5, scope: !65)
!99 = !DILocation(line: 56, column: 9, scope: !65)
!100 = !DILocation(line: 56, column: 2, scope: !65)
!101 = !DILocation(line: 57, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !65, file: !51, line: 57, column: 6)
!103 = !DILocation(line: 57, column: 9, scope: !102)
!104 = !DILocation(line: 57, column: 6, scope: !65)
!105 = !DILocation(line: 58, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !51, line: 57, column: 24)
!107 = !DILocation(line: 58, column: 3, scope: !106)
!108 = !DILocation(line: 59, column: 3, scope: !106)
!109 = !DILocation(line: 61, column: 2, scope: !65)
!110 = !DILocation(line: 62, column: 1, scope: !65)
!111 = distinct !DISubprogram(name: "is_translit", scope: !51, file: !51, line: 36, type: !66, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!112 = !DILocalVariable(name: "charset", arg: 1, scope: !111, file: !51, line: 36, type: !45)
!113 = !DILocation(line: 36, column: 41, scope: !111)
!114 = !DILocalVariable(name: "pos", scope: !111, file: !51, line: 38, type: !48)
!115 = !DILocation(line: 38, column: 8, scope: !111)
!116 = !DILocation(line: 40, column: 16, scope: !111)
!117 = !DILocation(line: 40, column: 8, scope: !111)
!118 = !DILocation(line: 40, column: 6, scope: !111)
!119 = !DILocation(line: 41, column: 10, scope: !111)
!120 = !DILocation(line: 41, column: 14, scope: !111)
!121 = !DILocation(line: 41, column: 2, scope: !111)
!122 = distinct !DISubprogram(name: "recode_in", scope: !51, file: !51, line: 90, type: !123, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!123 = !DISubroutineType(types: !124)
!124 = !{!48, !125, !45, !45}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !128, line: 107, baseType: !129)
!128 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !130, line: 30, size: 2240, align: 64, elements: !131)
!130 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!131 = !{!132, !134, !135, !136, !359, !364, !365, !366, !367, !368, !369, !370, !371, !372, !376, !377, !381, !382, !383, !387, !392, !393, !394, !395, !396, !397, !398, !399, !406, !407, !408, !409, !410, !415, !419, !423, !427, !431, !435, !442, !449, !453}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !133, line: 3, baseType: !55, size: 32, align: 32)
!133 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !129, file: !133, line: 4, baseType: !55, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !129, file: !133, line: 6, baseType: !55, size: 32, align: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !129, file: !133, line: 8, baseType: !137, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !128, line: 113, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !130, line: 25, size: 1920, align: 64, elements: !140)
!140 = !{!141, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !142, line: 3, baseType: !55, size: 32, align: 32)
!142 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !139, file: !142, line: 4, baseType: !55, size: 32, align: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !139, file: !142, line: 6, baseType: !55, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !139, file: !142, line: 9, baseType: !48, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !139, file: !142, line: 10, baseType: !55, size: 32, align: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !139, file: !142, line: 11, baseType: !48, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !139, file: !142, line: 11, baseType: !48, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !139, file: !142, line: 11, baseType: !48, size: 64, align: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !139, file: !142, line: 13, baseType: !151, size: 16, align: 16, offset: 448)
!151 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !139, file: !142, line: 14, baseType: !48, size: 64, align: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !139, file: !142, line: 15, baseType: !48, size: 64, align: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !139, file: !142, line: 16, baseType: !55, size: 32, align: 32, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !139, file: !142, line: 17, baseType: !48, size: 64, align: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !139, file: !142, line: 19, baseType: !157, size: 64, align: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !128, line: 99, baseType: !159)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !128, line: 99, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !139, file: !142, line: 19, baseType: !157, size: 64, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !139, file: !142, line: 21, baseType: !48, size: 64, align: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !139, file: !142, line: 22, baseType: !48, size: 64, align: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !139, file: !142, line: 23, baseType: !48, size: 64, align: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !139, file: !142, line: 24, baseType: !48, size: 64, align: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !139, file: !142, line: 26, baseType: !48, size: 64, align: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !139, file: !142, line: 27, baseType: !48, size: 64, align: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !139, file: !142, line: 28, baseType: !48, size: 64, align: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !139, file: !142, line: 29, baseType: !48, size: 64, align: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !139, file: !142, line: 30, baseType: !48, size: 64, align: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !139, file: !142, line: 31, baseType: !48, size: 64, align: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !139, file: !142, line: 32, baseType: !48, size: 64, align: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !139, file: !142, line: 33, baseType: !48, size: 64, align: 64, offset: 1600)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !139, file: !142, line: 35, baseType: !174, size: 64, align: 64, offset: 1664)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !177)
!177 = !{!178, !179, !320, !321, !322, !323, !324, !325, !326, !335, !336, !337, !341, !342, !343, !344, !345, !346, !347, !348}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !176, file: !4, line: 100, baseType: !54, size: 32, align: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !176, file: !4, line: 101, baseType: !180, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !183)
!183 = !{!184, !206, !212, !219, !223, !307, !311, !316}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !182, file: !4, line: 133, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !174, !41, !189, !192, !193}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !190, line: 66, baseType: !191)
!190 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!191 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !196, line: 42, baseType: !197)
!196 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !196, line: 44, size: 128, align: 64, elements: !198)
!198 = !{!199, !204, !205}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !197, file: !196, line: 46, baseType: !200, size: 32, align: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !201, line: 36, baseType: !202)
!201 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !190, line: 45, baseType: !203)
!203 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !197, file: !196, line: 47, baseType: !54, size: 32, align: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !197, file: !196, line: 48, baseType: !41, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !182, file: !4, line: 138, baseType: !207, size: 64, align: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!188, !174, !210, !189, !192, !193}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !182, file: !4, line: 143, baseType: !213, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!188, !174, !216, !218, !193}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !190, line: 51, baseType: !217)
!217 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !182, file: !4, line: 147, baseType: !220, size: 64, align: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!188, !174, !193}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !182, file: !4, line: 149, baseType: !224, size: 64, align: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !174, !306}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !230)
!230 = !{!231, !233, !253, !282, !284, !288, !289, !290, !291, !299, !300, !301, !302}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !229, file: !16, line: 174, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !43, line: 77, baseType: !36)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !229, file: !16, line: 175, baseType: !234, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !237)
!237 = !{!238, !242, !243}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !236, file: !16, line: 198, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !232}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !236, file: !16, line: 199, baseType: !239, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !236, file: !16, line: 200, baseType: !244, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !232, !227, !247, !252}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!53, !232}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !229, file: !16, line: 177, baseType: !254, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !258)
!258 = !{!259, !264, !268, !272, !276, !277}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !257, file: !16, line: 216, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!53, !227, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !257, file: !16, line: 218, baseType: !265, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!53, !227}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !257, file: !16, line: 219, baseType: !269, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!53, !227, !248, !232}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !257, file: !16, line: 222, baseType: !273, size: 64, align: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !227}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !257, file: !16, line: 226, baseType: !248, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !257, file: !16, line: 227, baseType: !278, size: 64, align: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !229, file: !16, line: 178, baseType: !283, size: 32, align: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !43, line: 55, baseType: !203)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !229, file: !16, line: 180, baseType: !285, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !229, file: !16, line: 182, baseType: !54, size: 32, align: 32, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !16, line: 183, baseType: !283, size: 32, align: 32, offset: 352)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !229, file: !16, line: 184, baseType: !283, size: 32, align: 32, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !229, file: !16, line: 186, baseType: !292, size: 64, align: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !294, line: 37, baseType: !295)
!294 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !294, line: 39, size: 128, align: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !295, file: !294, line: 41, baseType: !232, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !294, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !229, file: !16, line: 188, baseType: !227, size: 64, align: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !16, line: 189, baseType: !227, size: 64, align: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !16, line: 191, baseType: !48, size: 64, align: 64, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !229, file: !16, line: 193, baseType: !303, size: 64, align: 64, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !182, file: !4, line: 151, baseType: !308, size: 64, align: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !174}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !182, file: !4, line: 152, baseType: !312, size: 64, align: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!188, !174, !315, !193}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !182, file: !4, line: 155, baseType: !317, size: 64, align: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!315, !174}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !176, file: !4, line: 103, baseType: !41, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !176, file: !4, line: 104, baseType: !37, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !176, file: !4, line: 105, baseType: !37, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !176, file: !4, line: 106, baseType: !41, size: 64, align: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !176, file: !4, line: 107, baseType: !283, size: 32, align: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !176, file: !4, line: 109, baseType: !189, size: 64, align: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !176, file: !4, line: 110, baseType: !327, size: 64, align: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !329, line: 39, baseType: !330)
!329 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !329, line: 41, size: 192, align: 64, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !330, file: !329, line: 43, baseType: !41, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !330, file: !329, line: 44, baseType: !189, size: 64, align: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !330, file: !329, line: 45, baseType: !189, size: 64, align: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !176, file: !4, line: 111, baseType: !327, size: 64, align: 64, offset: 576)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !176, file: !4, line: 112, baseType: !327, size: 64, align: 64, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !176, file: !4, line: 113, baseType: !338, size: 48, align: 8, offset: 704)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 48, align: 8, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 6)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !176, file: !4, line: 117, baseType: !283, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !176, file: !4, line: 118, baseType: !283, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !176, file: !4, line: 119, baseType: !283, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !176, file: !4, line: 120, baseType: !283, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !176, file: !4, line: 121, baseType: !283, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !176, file: !4, line: 122, baseType: !283, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !176, file: !4, line: 124, baseType: !232, size: 64, align: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !176, file: !4, line: 125, baseType: !232, size: 64, align: 64, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !139, file: !142, line: 38, baseType: !203, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !139, file: !142, line: 39, baseType: !203, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !139, file: !142, line: 40, baseType: !203, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !139, file: !142, line: 41, baseType: !203, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !139, file: !142, line: 42, baseType: !203, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !139, file: !142, line: 43, baseType: !203, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !139, file: !142, line: 44, baseType: !203, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !139, file: !142, line: 45, baseType: !203, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !139, file: !142, line: 46, baseType: !48, size: 64, align: 64, offset: 1792)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !139, file: !142, line: 47, baseType: !48, size: 64, align: 64, offset: 1856)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !129, file: !133, line: 9, baseType: !360, size: 64, align: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !361, line: 75, baseType: !362)
!361 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !363, line: 139, baseType: !217)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !129, file: !133, line: 10, baseType: !360, size: 64, align: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !129, file: !133, line: 12, baseType: !48, size: 64, align: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !129, file: !133, line: 13, baseType: !48, size: 64, align: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !129, file: !133, line: 15, baseType: !203, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !129, file: !133, line: 16, baseType: !203, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !129, file: !133, line: 17, baseType: !203, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !129, file: !133, line: 18, baseType: !203, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !129, file: !133, line: 19, baseType: !203, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !129, file: !133, line: 21, baseType: !373, size: 64, align: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !128, line: 102, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !128, line: 102, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !129, file: !133, line: 22, baseType: !55, size: 32, align: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !129, file: !133, line: 25, baseType: !378, size: 128, align: 64, offset: 640)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, align: 64, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 2)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !129, file: !133, line: 26, baseType: !55, size: 32, align: 32, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !129, file: !133, line: 27, baseType: !55, size: 32, align: 32, offset: 800)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !129, file: !133, line: 29, baseType: !384, size: 64, align: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !128, line: 103, baseType: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !128, line: 103, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !129, file: !133, line: 30, baseType: !388, size: 64, align: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !390, line: 37, baseType: !391)
!390 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !390, line: 37, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !129, file: !133, line: 32, baseType: !48, size: 64, align: 64, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !129, file: !133, line: 33, baseType: !48, size: 64, align: 64, offset: 1024)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !129, file: !133, line: 34, baseType: !48, size: 64, align: 64, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !129, file: !133, line: 35, baseType: !203, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !129, file: !133, line: 36, baseType: !203, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !129, file: !133, line: 37, baseType: !203, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !129, file: !133, line: 38, baseType: !203, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !129, file: !133, line: 40, baseType: !400, size: 128, align: 64, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !43, line: 504, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !43, line: 506, size: 128, align: 64, elements: !402)
!402 = !{!403, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !401, file: !43, line: 508, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !43, line: 48, baseType: !217)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !401, file: !43, line: 509, baseType: !404, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !129, file: !133, line: 41, baseType: !360, size: 64, align: 64, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !129, file: !133, line: 42, baseType: !55, size: 32, align: 32, offset: 1408)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !129, file: !133, line: 44, baseType: !292, size: 64, align: 64, offset: 1472)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !129, file: !133, line: 45, baseType: !292, size: 64, align: 64, offset: 1536)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !129, file: !133, line: 53, baseType: !411, size: 64, align: 64, offset: 1600)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414, !45, !55}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !129, file: !133, line: 55, baseType: !416, size: 64, align: 64, offset: 1664)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!55, !414, !44}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !129, file: !133, line: 57, baseType: !420, size: 64, align: 64, offset: 1728)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!55, !414, !45}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !129, file: !133, line: 60, baseType: !424, size: 64, align: 64, offset: 1792)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!45, !414}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !129, file: !133, line: 62, baseType: !428, size: 64, align: 64, offset: 1856)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !414, !45, !45, !55}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !129, file: !133, line: 65, baseType: !432, size: 64, align: 64, offset: 1920)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!47, !414, !45, !45}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !129, file: !133, line: 69, baseType: !436, size: 64, align: 64, offset: 1984)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !414, !45}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !128, line: 109, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !128, line: 109, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !129, file: !133, line: 70, baseType: !443, size: 64, align: 64, offset: 2048)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !414, !45}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !128, line: 110, baseType: !448)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !128, line: 110, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !129, file: !133, line: 71, baseType: !450, size: 64, align: 64, offset: 2112)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!55, !45, !45}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !129, file: !133, line: 73, baseType: !450, size: 64, align: 64, offset: 2176)
!454 = !DILocalVariable(name: "server", arg: 1, scope: !122, file: !51, line: 90, type: !125)
!455 = !DILocation(line: 90, column: 35, scope: !122)
!456 = !DILocalVariable(name: "str", arg: 2, scope: !122, file: !51, line: 90, type: !45)
!457 = !DILocation(line: 90, column: 55, scope: !122)
!458 = !DILocalVariable(name: "target", arg: 3, scope: !122, file: !51, line: 90, type: !45)
!459 = !DILocation(line: 90, column: 72, scope: !122)
!460 = !DILocalVariable(name: "from", scope: !122, file: !51, line: 92, type: !45)
!461 = !DILocation(line: 92, column: 14, scope: !122)
!462 = !DILocalVariable(name: "to", scope: !122, file: !51, line: 93, type: !45)
!463 = !DILocation(line: 93, column: 14, scope: !122)
!464 = !DILocation(line: 93, column: 19, scope: !122)
!465 = !DILocalVariable(name: "recoded", scope: !122, file: !51, line: 94, type: !48)
!466 = !DILocation(line: 94, column: 8, scope: !122)
!467 = !DILocalVariable(name: "str_is_utf8", scope: !122, file: !51, line: 95, type: !53)
!468 = !DILocation(line: 95, column: 11, scope: !122)
!469 = !DILocalVariable(name: "recode", scope: !122, file: !51, line: 95, type: !53)
!470 = !DILocation(line: 95, column: 24, scope: !122)
!471 = !DILocalVariable(name: "autodetect", scope: !122, file: !51, line: 95, type: !53)
!472 = !DILocation(line: 95, column: 32, scope: !122)
!473 = !DILocalVariable(name: "len", scope: !122, file: !51, line: 96, type: !55)
!474 = !DILocation(line: 96, column: 6, scope: !122)
!475 = !DILocation(line: 98, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !122, file: !51, line: 98, column: 6)
!477 = !DILocation(line: 98, column: 6, scope: !122)
!478 = !DILocation(line: 99, column: 3, scope: !476)
!479 = !DILocation(line: 101, column: 11, scope: !122)
!480 = !DILocation(line: 101, column: 9, scope: !122)
!481 = !DILocation(line: 102, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !122, file: !51, line: 102, column: 6)
!483 = !DILocation(line: 102, column: 6, scope: !122)
!484 = !DILocation(line: 103, column: 19, scope: !482)
!485 = !DILocation(line: 103, column: 10, scope: !482)
!486 = !DILocation(line: 103, column: 3, scope: !482)
!487 = !DILocation(line: 105, column: 15, scope: !122)
!488 = !DILocation(line: 105, column: 8, scope: !122)
!489 = !DILocation(line: 105, column: 6, scope: !122)
!490 = !DILocation(line: 108, column: 14, scope: !122)
!491 = !DILocation(line: 109, column: 20, scope: !492)
!492 = distinct !DILexicalBlock(scope: !122, file: !51, line: 109, column: 6)
!493 = !DILocation(line: 109, column: 7, scope: !492)
!494 = !DILocation(line: 109, column: 6, scope: !122)
!495 = !DILocation(line: 110, column: 33, scope: !492)
!496 = !DILocation(line: 110, column: 38, scope: !492)
!497 = !DILocation(line: 110, column: 17, scope: !492)
!498 = !DILocation(line: 110, column: 15, scope: !492)
!499 = !DILocation(line: 110, column: 3, scope: !492)
!500 = !DILocation(line: 111, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !492, file: !51, line: 111, column: 11)
!502 = !DILocation(line: 111, column: 12, scope: !501)
!503 = !DILocation(line: 111, column: 11, scope: !492)
!504 = !DILocation(line: 112, column: 15, scope: !501)
!505 = !DILocation(line: 112, column: 3, scope: !501)
!506 = !DILocation(line: 113, column: 15, scope: !122)
!507 = !DILocation(line: 113, column: 13, scope: !122)
!508 = !DILocation(line: 115, column: 6, scope: !509)
!509 = distinct !DILexicalBlock(scope: !122, file: !51, line: 115, column: 6)
!510 = !DILocation(line: 115, column: 17, scope: !509)
!511 = !DILocation(line: 115, column: 20, scope: !512)
!512 = !DILexicalBlockFile(scope: !509, file: !51, discriminator: 1)
!513 = !DILocation(line: 115, column: 6, scope: !512)
!514 = !DILocation(line: 116, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !509, file: !51, line: 116, column: 7)
!516 = !DILocation(line: 116, column: 7, scope: !509)
!517 = !DILocation(line: 117, column: 20, scope: !515)
!518 = !DILocation(line: 117, column: 11, scope: !515)
!519 = !DILocation(line: 117, column: 4, scope: !515)
!520 = !DILocation(line: 119, column: 9, scope: !515)
!521 = !DILocation(line: 116, column: 7, scope: !522)
!522 = !DILexicalBlockFile(scope: !515, file: !51, discriminator: 1)
!523 = !DILocation(line: 121, column: 26, scope: !509)
!524 = !DILocation(line: 121, column: 34, scope: !509)
!525 = !DILocation(line: 121, column: 10, scope: !509)
!526 = !DILocation(line: 121, column: 8, scope: !509)
!527 = !DILocation(line: 123, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !122, file: !51, line: 123, column: 6)
!529 = !DILocation(line: 123, column: 6, scope: !122)
!530 = !DILocation(line: 124, column: 37, scope: !528)
!531 = !DILocation(line: 124, column: 42, scope: !528)
!532 = !DILocation(line: 124, column: 47, scope: !528)
!533 = !DILocation(line: 124, column: 51, scope: !528)
!534 = !DILocation(line: 124, column: 13, scope: !528)
!535 = !DILocation(line: 124, column: 11, scope: !528)
!536 = !DILocation(line: 124, column: 3, scope: !528)
!537 = !DILocation(line: 126, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !122, file: !51, line: 126, column: 6)
!539 = !DILocation(line: 126, column: 6, scope: !122)
!540 = !DILocation(line: 127, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !51, line: 127, column: 7)
!542 = distinct !DILexicalBlock(scope: !538, file: !51, line: 126, column: 16)
!543 = !DILocation(line: 127, column: 7, scope: !542)
!544 = !DILocation(line: 128, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !51, line: 128, column: 8)
!546 = !DILocation(line: 128, column: 8, scope: !541)
!547 = !DILocation(line: 129, column: 21, scope: !545)
!548 = !DILocation(line: 129, column: 12, scope: !545)
!549 = !DILocation(line: 129, column: 5, scope: !545)
!550 = !DILocation(line: 131, column: 10, scope: !545)
!551 = !DILocation(line: 128, column: 8, scope: !552)
!552 = !DILexicalBlockFile(scope: !545, file: !51, discriminator: 1)
!553 = !DILocation(line: 133, column: 8, scope: !554)
!554 = distinct !DILexicalBlock(scope: !541, file: !51, line: 133, column: 8)
!555 = !DILocation(line: 133, column: 8, scope: !541)
!556 = !DILocation(line: 134, column: 12, scope: !554)
!557 = !DILocation(line: 134, column: 10, scope: !554)
!558 = !DILocation(line: 134, column: 5, scope: !554)
!559 = !DILocation(line: 136, column: 10, scope: !554)
!560 = !DILocation(line: 138, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !542, file: !51, line: 138, column: 7)
!562 = !DILocation(line: 138, column: 7, scope: !542)
!563 = !DILocation(line: 139, column: 38, scope: !561)
!564 = !DILocation(line: 139, column: 43, scope: !561)
!565 = !DILocation(line: 139, column: 48, scope: !561)
!566 = !DILocation(line: 139, column: 52, scope: !561)
!567 = !DILocation(line: 139, column: 14, scope: !561)
!568 = !DILocation(line: 139, column: 12, scope: !561)
!569 = !DILocation(line: 139, column: 4, scope: !561)
!570 = !DILocation(line: 141, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !542, file: !51, line: 141, column: 7)
!572 = !DILocation(line: 141, column: 7, scope: !542)
!573 = !DILocation(line: 142, column: 23, scope: !571)
!574 = !DILocation(line: 142, column: 14, scope: !571)
!575 = !DILocation(line: 142, column: 12, scope: !571)
!576 = !DILocation(line: 142, column: 4, scope: !571)
!577 = !DILocation(line: 143, column: 2, scope: !542)
!578 = !DILocation(line: 144, column: 9, scope: !122)
!579 = !DILocation(line: 144, column: 2, scope: !122)
!580 = !DILocation(line: 145, column: 1, scope: !122)
!581 = distinct !DISubprogram(name: "str_is_ascii", scope: !51, file: !51, line: 80, type: !582, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!582 = !DISubroutineType(types: !583)
!583 = !{!55, !45}
!584 = !DILocalVariable(name: "str", arg: 1, scope: !581, file: !51, line: 80, type: !45)
!585 = !DILocation(line: 80, column: 37, scope: !581)
!586 = !DILocalVariable(name: "i", scope: !581, file: !51, line: 82, type: !55)
!587 = !DILocation(line: 82, column: 6, scope: !581)
!588 = !DILocation(line: 84, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !51, line: 84, column: 2)
!590 = !DILocation(line: 84, column: 7, scope: !589)
!591 = !DILocation(line: 84, column: 18, scope: !592)
!592 = !DILexicalBlockFile(scope: !593, file: !51, discriminator: 1)
!593 = distinct !DILexicalBlock(scope: !589, file: !51, line: 84, column: 2)
!594 = !DILocation(line: 84, column: 14, scope: !592)
!595 = !DILocation(line: 84, column: 21, scope: !592)
!596 = !DILocation(line: 84, column: 2, scope: !592)
!597 = !DILocation(line: 85, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !51, line: 85, column: 7)
!599 = !DILocation(line: 85, column: 7, scope: !598)
!600 = !DILocation(line: 85, column: 14, scope: !598)
!601 = !DILocation(line: 85, column: 7, scope: !593)
!602 = !DILocation(line: 86, column: 4, scope: !598)
!603 = !DILocation(line: 85, column: 16, scope: !604)
!604 = !DILexicalBlockFile(scope: !598, file: !51, discriminator: 1)
!605 = !DILocation(line: 84, column: 31, scope: !606)
!606 = !DILexicalBlockFile(scope: !593, file: !51, discriminator: 2)
!607 = !DILocation(line: 84, column: 2, scope: !606)
!608 = distinct !{!608, !609}
!609 = !DILocation(line: 84, column: 2, scope: !581)
!610 = !DILocation(line: 87, column: 2, scope: !581)
!611 = !DILocation(line: 88, column: 1, scope: !581)
!612 = distinct !DISubprogram(name: "find_conversion", scope: !51, file: !51, line: 64, type: !613, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!613 = !DISubroutineType(types: !614)
!614 = !{!48, !125, !45}
!615 = !DILocalVariable(name: "server", arg: 1, scope: !612, file: !51, line: 64, type: !125)
!616 = !DILocation(line: 64, column: 48, scope: !612)
!617 = !DILocalVariable(name: "target", arg: 2, scope: !612, file: !51, line: 64, type: !45)
!618 = !DILocation(line: 64, column: 68, scope: !612)
!619 = !DILocalVariable(name: "conv", scope: !612, file: !51, line: 66, type: !48)
!620 = !DILocation(line: 66, column: 8, scope: !612)
!621 = !DILocation(line: 68, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !612, file: !51, line: 68, column: 6)
!623 = !DILocation(line: 68, column: 13, scope: !622)
!624 = !DILocation(line: 68, column: 20, scope: !622)
!625 = !DILocation(line: 68, column: 23, scope: !626)
!626 = !DILexicalBlockFile(scope: !622, file: !51, discriminator: 1)
!627 = !DILocation(line: 68, column: 30, scope: !626)
!628 = !DILocation(line: 68, column: 6, scope: !626)
!629 = !DILocalVariable(name: "tagtarget", scope: !630, file: !51, line: 69, type: !48)
!630 = distinct !DILexicalBlock(scope: !622, file: !51, line: 68, column: 39)
!631 = !DILocation(line: 69, column: 9, scope: !630)
!632 = !DILocation(line: 69, column: 46, scope: !630)
!633 = !DILocation(line: 69, column: 54, scope: !630)
!634 = !DILocation(line: 69, column: 59, scope: !630)
!635 = !DILocation(line: 69, column: 21, scope: !630)
!636 = !DILocation(line: 70, column: 25, scope: !630)
!637 = !DILocation(line: 70, column: 52, scope: !630)
!638 = !DILocation(line: 70, column: 10, scope: !630)
!639 = !DILocation(line: 70, column: 8, scope: !630)
!640 = !DILocation(line: 71, column: 10, scope: !630)
!641 = !DILocation(line: 71, column: 3, scope: !630)
!642 = !DILocation(line: 72, column: 2, scope: !630)
!643 = !DILocation(line: 73, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !612, file: !51, line: 73, column: 6)
!645 = !DILocation(line: 73, column: 11, scope: !644)
!646 = !DILocation(line: 73, column: 18, scope: !644)
!647 = !DILocation(line: 73, column: 21, scope: !648)
!648 = !DILexicalBlockFile(scope: !644, file: !51, discriminator: 1)
!649 = !DILocation(line: 73, column: 28, scope: !648)
!650 = !DILocation(line: 73, column: 6, scope: !648)
!651 = !DILocation(line: 74, column: 25, scope: !644)
!652 = !DILocation(line: 74, column: 52, scope: !644)
!653 = !DILocation(line: 74, column: 10, scope: !644)
!654 = !DILocation(line: 74, column: 8, scope: !644)
!655 = !DILocation(line: 74, column: 3, scope: !644)
!656 = !DILocation(line: 75, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !612, file: !51, line: 75, column: 6)
!658 = !DILocation(line: 75, column: 11, scope: !657)
!659 = !DILocation(line: 75, column: 18, scope: !657)
!660 = !DILocation(line: 75, column: 21, scope: !661)
!661 = !DILexicalBlockFile(scope: !657, file: !51, discriminator: 1)
!662 = !DILocation(line: 75, column: 28, scope: !661)
!663 = !DILocation(line: 75, column: 6, scope: !661)
!664 = !DILocation(line: 76, column: 25, scope: !657)
!665 = !DILocation(line: 76, column: 52, scope: !657)
!666 = !DILocation(line: 76, column: 60, scope: !657)
!667 = !DILocation(line: 76, column: 10, scope: !657)
!668 = !DILocation(line: 76, column: 8, scope: !657)
!669 = !DILocation(line: 76, column: 3, scope: !657)
!670 = !DILocation(line: 77, column: 9, scope: !612)
!671 = !DILocation(line: 77, column: 2, scope: !612)
!672 = distinct !DISubprogram(name: "recode_out", scope: !51, file: !51, line: 147, type: !123, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!673 = !DILocalVariable(name: "server", arg: 1, scope: !672, file: !51, line: 147, type: !125)
!674 = !DILocation(line: 147, column: 36, scope: !672)
!675 = !DILocalVariable(name: "str", arg: 2, scope: !672, file: !51, line: 147, type: !45)
!676 = !DILocation(line: 147, column: 56, scope: !672)
!677 = !DILocalVariable(name: "target", arg: 3, scope: !672, file: !51, line: 147, type: !45)
!678 = !DILocation(line: 147, column: 73, scope: !672)
!679 = !DILocalVariable(name: "recoded", scope: !672, file: !51, line: 149, type: !48)
!680 = !DILocation(line: 149, column: 8, scope: !672)
!681 = !DILocalVariable(name: "from", scope: !672, file: !51, line: 150, type: !45)
!682 = !DILocation(line: 150, column: 14, scope: !672)
!683 = !DILocation(line: 150, column: 21, scope: !672)
!684 = !DILocalVariable(name: "to", scope: !672, file: !51, line: 151, type: !45)
!685 = !DILocation(line: 151, column: 14, scope: !672)
!686 = !DILocalVariable(name: "translit_to", scope: !672, file: !51, line: 152, type: !48)
!687 = !DILocation(line: 152, column: 8, scope: !672)
!688 = !DILocalVariable(name: "translit", scope: !672, file: !51, line: 153, type: !53)
!689 = !DILocation(line: 153, column: 11, scope: !672)
!690 = !DILocalVariable(name: "recode", scope: !672, file: !51, line: 153, type: !53)
!691 = !DILocation(line: 153, column: 21, scope: !672)
!692 = !DILocalVariable(name: "len", scope: !672, file: !51, line: 154, type: !55)
!693 = !DILocation(line: 154, column: 6, scope: !672)
!694 = !DILocation(line: 156, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !672, file: !51, line: 156, column: 6)
!696 = !DILocation(line: 156, column: 6, scope: !672)
!697 = !DILocation(line: 157, column: 3, scope: !695)
!698 = !DILocation(line: 159, column: 11, scope: !672)
!699 = !DILocation(line: 159, column: 9, scope: !672)
!700 = !DILocation(line: 160, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !672, file: !51, line: 160, column: 6)
!702 = !DILocation(line: 160, column: 6, scope: !672)
!703 = !DILocation(line: 161, column: 19, scope: !701)
!704 = !DILocation(line: 161, column: 10, scope: !701)
!705 = !DILocation(line: 161, column: 3, scope: !701)
!706 = !DILocation(line: 163, column: 15, scope: !672)
!707 = !DILocation(line: 163, column: 8, scope: !672)
!708 = !DILocation(line: 163, column: 6, scope: !672)
!709 = !DILocation(line: 165, column: 13, scope: !672)
!710 = !DILocation(line: 165, column: 11, scope: !672)
!711 = !DILocation(line: 167, column: 23, scope: !672)
!712 = !DILocation(line: 167, column: 31, scope: !672)
!713 = !DILocation(line: 167, column: 7, scope: !672)
!714 = !DILocation(line: 167, column: 5, scope: !672)
!715 = !DILocation(line: 168, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !672, file: !51, line: 168, column: 6)
!717 = !DILocation(line: 168, column: 9, scope: !716)
!718 = !DILocation(line: 168, column: 6, scope: !672)
!719 = !DILocation(line: 170, column: 8, scope: !716)
!720 = !DILocation(line: 170, column: 6, scope: !716)
!721 = !DILocation(line: 170, column: 3, scope: !716)
!722 = !DILocation(line: 172, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !672, file: !51, line: 172, column: 6)
!724 = !DILocation(line: 172, column: 9, scope: !723)
!725 = !DILocation(line: 172, column: 13, scope: !726)
!726 = !DILexicalBlockFile(scope: !723, file: !51, discriminator: 1)
!727 = !DILocation(line: 172, column: 12, scope: !726)
!728 = !DILocation(line: 172, column: 16, scope: !726)
!729 = !DILocation(line: 172, column: 6, scope: !726)
!730 = !DILocation(line: 173, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !51, line: 173, column: 7)
!732 = distinct !DILexicalBlock(scope: !723, file: !51, line: 172, column: 25)
!733 = !DILocation(line: 173, column: 16, scope: !731)
!734 = !DILocation(line: 173, column: 32, scope: !735)
!735 = !DILexicalBlockFile(scope: !731, file: !51, discriminator: 1)
!736 = !DILocation(line: 173, column: 20, scope: !735)
!737 = !DILocation(line: 173, column: 7, scope: !735)
!738 = !DILocation(line: 174, column: 35, scope: !731)
!739 = !DILocation(line: 174, column: 23, scope: !731)
!740 = !DILocation(line: 174, column: 21, scope: !731)
!741 = !DILocation(line: 174, column: 7, scope: !731)
!742 = !DILocation(line: 174, column: 4, scope: !731)
!743 = !DILocation(line: 176, column: 23, scope: !732)
!744 = !DILocation(line: 176, column: 28, scope: !732)
!745 = !DILocation(line: 176, column: 33, scope: !732)
!746 = !DILocation(line: 176, column: 37, scope: !732)
!747 = !DILocation(line: 176, column: 13, scope: !732)
!748 = !DILocation(line: 176, column: 11, scope: !732)
!749 = !DILocation(line: 177, column: 2, scope: !732)
!750 = !DILocation(line: 178, column: 9, scope: !672)
!751 = !DILocation(line: 178, column: 2, scope: !672)
!752 = !DILocation(line: 179, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !672, file: !51, line: 179, column: 6)
!754 = !DILocation(line: 179, column: 6, scope: !672)
!755 = !DILocation(line: 180, column: 22, scope: !753)
!756 = !DILocation(line: 180, column: 13, scope: !753)
!757 = !DILocation(line: 180, column: 11, scope: !753)
!758 = !DILocation(line: 180, column: 3, scope: !753)
!759 = !DILocation(line: 182, column: 9, scope: !672)
!760 = !DILocation(line: 182, column: 2, scope: !672)
!761 = !DILocation(line: 183, column: 1, scope: !672)
!762 = distinct !DISubprogram(name: "recode_split", scope: !51, file: !51, line: 185, type: !763, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!763 = !DISubroutineType(types: !764)
!764 = !{!47, !125, !45, !45, !55, !53}
!765 = !DILocalVariable(name: "server", arg: 1, scope: !762, file: !51, line: 185, type: !125)
!766 = !DILocation(line: 185, column: 39, scope: !762)
!767 = !DILocalVariable(name: "str", arg: 2, scope: !762, file: !51, line: 185, type: !45)
!768 = !DILocation(line: 185, column: 59, scope: !762)
!769 = !DILocalVariable(name: "target", arg: 3, scope: !762, file: !51, line: 186, type: !45)
!770 = !DILocation(line: 186, column: 19, scope: !762)
!771 = !DILocalVariable(name: "len", arg: 4, scope: !762, file: !51, line: 186, type: !55)
!772 = !DILocation(line: 186, column: 31, scope: !762)
!773 = !DILocalVariable(name: "onspace", arg: 5, scope: !762, file: !51, line: 186, type: !53)
!774 = !DILocation(line: 186, column: 45, scope: !762)
!775 = !DILocalVariable(name: "cd", scope: !762, file: !51, line: 188, type: !37)
!776 = !DILocation(line: 188, column: 9, scope: !762)
!777 = !DILocalVariable(name: "from", scope: !762, file: !51, line: 189, type: !45)
!778 = !DILocation(line: 189, column: 14, scope: !762)
!779 = !DILocation(line: 189, column: 21, scope: !762)
!780 = !DILocalVariable(name: "to", scope: !762, file: !51, line: 190, type: !45)
!781 = !DILocation(line: 190, column: 14, scope: !762)
!782 = !DILocation(line: 190, column: 19, scope: !762)
!783 = !DILocalVariable(name: "translit_to", scope: !762, file: !51, line: 191, type: !48)
!784 = !DILocation(line: 191, column: 8, scope: !762)
!785 = !DILocalVariable(name: "inbuf", scope: !762, file: !51, line: 192, type: !45)
!786 = !DILocation(line: 192, column: 14, scope: !762)
!787 = !DILocation(line: 192, column: 22, scope: !762)
!788 = !DILocalVariable(name: "previnbuf", scope: !762, file: !51, line: 193, type: !45)
!789 = !DILocation(line: 193, column: 14, scope: !762)
!790 = !DILocation(line: 193, column: 26, scope: !762)
!791 = !DILocalVariable(name: "tmp", scope: !762, file: !51, line: 194, type: !48)
!792 = !DILocation(line: 194, column: 8, scope: !762)
!793 = !DILocalVariable(name: "outbuf", scope: !762, file: !51, line: 195, type: !48)
!794 = !DILocation(line: 195, column: 8, scope: !762)
!795 = !DILocalVariable(name: "inbytesleft", scope: !762, file: !51, line: 196, type: !189)
!796 = !DILocation(line: 196, column: 8, scope: !762)
!797 = !DILocation(line: 196, column: 29, scope: !762)
!798 = !DILocation(line: 196, column: 22, scope: !762)
!799 = !DILocalVariable(name: "outbytesleft", scope: !762, file: !51, line: 197, type: !189)
!800 = !DILocation(line: 197, column: 8, scope: !762)
!801 = !DILocation(line: 197, column: 23, scope: !762)
!802 = !DILocalVariable(name: "n", scope: !762, file: !51, line: 198, type: !55)
!803 = !DILocation(line: 198, column: 6, scope: !762)
!804 = !DILocalVariable(name: "ret", scope: !762, file: !51, line: 199, type: !47)
!805 = !DILocation(line: 199, column: 9, scope: !762)
!806 = !DILocation(line: 201, column: 2, scope: !762)
!807 = distinct !{!807, !806}
!808 = !DILocation(line: 201, column: 11, scope: !809)
!809 = !DILexicalBlockFile(scope: !810, file: !51, discriminator: 1)
!810 = distinct !DILexicalBlock(scope: !811, file: !51, line: 201, column: 11)
!811 = distinct !DILexicalBlock(scope: !762, file: !51, line: 201, column: 5)
!812 = !DILocation(line: 201, column: 15, scope: !809)
!813 = !DILocation(line: 201, column: 11, scope: !814)
!814 = !DILexicalBlockFile(scope: !811, file: !51, discriminator: 2)
!815 = !DILocation(line: 201, column: 10, scope: !816)
!816 = !DILexicalBlockFile(scope: !810, file: !51, discriminator: 3)
!817 = !DILocation(line: 201, column: 101, scope: !818)
!818 = !DILexicalBlockFile(scope: !811, file: !51, discriminator: 4)
!819 = !DILocation(line: 202, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !762, file: !51, line: 202, column: 6)
!821 = !DILocation(line: 202, column: 10, scope: !820)
!822 = !DILocation(line: 202, column: 6, scope: !762)
!823 = !DILocation(line: 203, column: 21, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !51, line: 202, column: 18)
!825 = !DILocation(line: 203, column: 10, scope: !824)
!826 = !DILocation(line: 203, column: 7, scope: !824)
!827 = !DILocation(line: 204, column: 3, scope: !824)
!828 = !DILocation(line: 204, column: 10, scope: !824)
!829 = !DILocation(line: 205, column: 10, scope: !824)
!830 = !DILocation(line: 205, column: 3, scope: !824)
!831 = !DILocation(line: 208, column: 6, scope: !832)
!832 = distinct !DILexicalBlock(scope: !762, file: !51, line: 208, column: 6)
!833 = !DILocation(line: 208, column: 6, scope: !762)
!834 = !DILocation(line: 209, column: 24, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !51, line: 208, column: 35)
!836 = !DILocation(line: 209, column: 32, scope: !835)
!837 = !DILocation(line: 209, column: 8, scope: !835)
!838 = !DILocation(line: 209, column: 6, scope: !835)
!839 = !DILocation(line: 210, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !51, line: 210, column: 7)
!841 = !DILocation(line: 210, column: 10, scope: !840)
!842 = !DILocation(line: 210, column: 7, scope: !835)
!843 = !DILocation(line: 212, column: 9, scope: !840)
!844 = !DILocation(line: 212, column: 7, scope: !840)
!845 = !DILocation(line: 212, column: 4, scope: !840)
!846 = !DILocation(line: 213, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !835, file: !51, line: 213, column: 7)
!848 = !DILocation(line: 213, column: 10, scope: !847)
!849 = !DILocation(line: 213, column: 17, scope: !847)
!850 = !DILocation(line: 213, column: 21, scope: !851)
!851 = !DILexicalBlockFile(scope: !847, file: !51, discriminator: 1)
!852 = !DILocation(line: 213, column: 20, scope: !851)
!853 = !DILocation(line: 213, column: 24, scope: !851)
!854 = !DILocation(line: 213, column: 7, scope: !851)
!855 = !DILocation(line: 214, column: 8, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !51, line: 214, column: 8)
!857 = distinct !DILexicalBlock(scope: !847, file: !51, line: 213, column: 33)
!858 = !DILocation(line: 214, column: 50, scope: !856)
!859 = !DILocation(line: 215, column: 21, scope: !856)
!860 = !DILocation(line: 215, column: 9, scope: !856)
!861 = !DILocation(line: 214, column: 8, scope: !862)
!862 = !DILexicalBlockFile(scope: !857, file: !51, discriminator: 1)
!863 = !DILocation(line: 216, column: 36, scope: !856)
!864 = !DILocation(line: 216, column: 24, scope: !856)
!865 = !DILocation(line: 216, column: 22, scope: !856)
!866 = !DILocation(line: 216, column: 8, scope: !856)
!867 = !DILocation(line: 216, column: 5, scope: !856)
!868 = !DILocation(line: 219, column: 3, scope: !857)
!869 = !DILocation(line: 220, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !847, file: !51, line: 219, column: 10)
!871 = !DILocation(line: 220, column: 7, scope: !870)
!872 = !DILocation(line: 222, column: 2, scope: !835)
!873 = !DILocation(line: 224, column: 20, scope: !762)
!874 = !DILocation(line: 224, column: 24, scope: !762)
!875 = !DILocation(line: 224, column: 7, scope: !762)
!876 = !DILocation(line: 224, column: 5, scope: !762)
!877 = !DILocation(line: 225, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !762, file: !51, line: 225, column: 6)
!879 = !DILocation(line: 225, column: 9, scope: !878)
!880 = !DILocation(line: 225, column: 6, scope: !762)
!881 = !DILocation(line: 227, column: 22, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !51, line: 225, column: 24)
!883 = !DILocation(line: 227, column: 27, scope: !882)
!884 = !DILocation(line: 227, column: 32, scope: !882)
!885 = !DILocation(line: 227, column: 9, scope: !882)
!886 = !DILocation(line: 227, column: 7, scope: !882)
!887 = !DILocation(line: 228, column: 3, scope: !882)
!888 = !DILocation(line: 231, column: 17, scope: !762)
!889 = !DILocation(line: 231, column: 8, scope: !762)
!890 = !DILocation(line: 231, column: 6, scope: !762)
!891 = !DILocation(line: 232, column: 11, scope: !762)
!892 = !DILocation(line: 232, column: 9, scope: !762)
!893 = !DILocation(line: 233, column: 20, scope: !762)
!894 = !DILocation(line: 233, column: 9, scope: !762)
!895 = !DILocation(line: 233, column: 6, scope: !762)
!896 = !DILocation(line: 234, column: 2, scope: !762)
!897 = !DILocation(line: 234, column: 17, scope: !898)
!898 = !DILexicalBlockFile(scope: !762, file: !51, discriminator: 1)
!899 = !DILocation(line: 234, column: 9, scope: !898)
!900 = !DILocation(line: 235, column: 25, scope: !762)
!901 = !DILocation(line: 234, column: 2, scope: !898)
!902 = !DILocation(line: 236, column: 8, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !51, line: 236, column: 6)
!904 = distinct !DILexicalBlock(scope: !762, file: !51, line: 235, column: 32)
!905 = !DILocation(line: 236, column: 7, scope: !903)
!906 = !DILocation(line: 236, column: 12, scope: !903)
!907 = !DILocation(line: 236, column: 6, scope: !904)
!908 = !DILocation(line: 241, column: 8, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !51, line: 236, column: 22)
!910 = !DILocation(line: 241, column: 4, scope: !909)
!911 = !DILocation(line: 241, column: 11, scope: !909)
!912 = !DILocation(line: 242, column: 15, scope: !909)
!913 = !DILocation(line: 242, column: 4, scope: !909)
!914 = !DILocation(line: 243, column: 23, scope: !909)
!915 = !DILocation(line: 243, column: 28, scope: !909)
!916 = !DILocation(line: 243, column: 33, scope: !909)
!917 = !DILocation(line: 243, column: 10, scope: !909)
!918 = !DILocation(line: 243, column: 8, scope: !909)
!919 = !DILocation(line: 244, column: 4, scope: !909)
!920 = !DILocation(line: 248, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !904, file: !51, line: 248, column: 7)
!922 = !DILocation(line: 248, column: 7, scope: !904)
!923 = !DILocalVariable(name: "i", scope: !924, file: !51, line: 253, type: !55)
!924 = distinct !DILexicalBlock(scope: !921, file: !51, line: 248, column: 16)
!925 = !DILocation(line: 253, column: 8, scope: !924)
!926 = !DILocation(line: 254, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !51, line: 254, column: 4)
!928 = !DILocation(line: 254, column: 9, scope: !927)
!929 = !DILocation(line: 254, column: 16, scope: !930)
!930 = !DILexicalBlockFile(scope: !931, file: !51, discriminator: 1)
!931 = distinct !DILexicalBlock(scope: !927, file: !51, line: 254, column: 4)
!932 = !DILocation(line: 254, column: 20, scope: !930)
!933 = !DILocation(line: 254, column: 28, scope: !930)
!934 = !DILocation(line: 254, column: 26, scope: !930)
!935 = !DILocation(line: 254, column: 18, scope: !930)
!936 = !DILocation(line: 254, column: 4, scope: !930)
!937 = !DILocation(line: 255, column: 19, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !51, line: 255, column: 9)
!939 = distinct !DILexicalBlock(scope: !931, file: !51, line: 254, column: 44)
!940 = !DILocation(line: 255, column: 25, scope: !938)
!941 = !DILocation(line: 255, column: 24, scope: !938)
!942 = !DILocation(line: 255, column: 34, scope: !938)
!943 = !DILocation(line: 255, column: 37, scope: !938)
!944 = !DILocation(line: 255, column: 36, scope: !938)
!945 = !DILocation(line: 255, column: 9, scope: !938)
!946 = !DILocation(line: 255, column: 40, scope: !938)
!947 = !DILocation(line: 255, column: 9, scope: !939)
!948 = !DILocation(line: 256, column: 15, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !51, line: 255, column: 48)
!950 = !DILocation(line: 256, column: 12, scope: !949)
!951 = !DILocation(line: 257, column: 21, scope: !949)
!952 = !DILocation(line: 257, column: 18, scope: !949)
!953 = !DILocation(line: 258, column: 6, scope: !949)
!954 = !DILocation(line: 260, column: 4, scope: !939)
!955 = !DILocation(line: 254, column: 40, scope: !956)
!956 = !DILexicalBlockFile(scope: !931, file: !51, discriminator: 2)
!957 = !DILocation(line: 254, column: 4, scope: !956)
!958 = distinct !{!958, !959}
!959 = !DILocation(line: 254, column: 4, scope: !924)
!960 = !DILocation(line: 261, column: 3, scope: !924)
!961 = !DILocation(line: 262, column: 24, scope: !904)
!962 = !DILocation(line: 262, column: 35, scope: !904)
!963 = !DILocation(line: 262, column: 43, scope: !904)
!964 = !DILocation(line: 262, column: 41, scope: !904)
!965 = !DILocation(line: 262, column: 14, scope: !904)
!966 = !DILocation(line: 262, column: 8, scope: !904)
!967 = !DILocation(line: 262, column: 3, scope: !904)
!968 = !DILocation(line: 262, column: 12, scope: !904)
!969 = !DILocation(line: 263, column: 34, scope: !904)
!970 = !DILocation(line: 263, column: 40, scope: !904)
!971 = !DILocation(line: 263, column: 42, scope: !904)
!972 = !DILocation(line: 263, column: 39, scope: !904)
!973 = !DILocation(line: 263, column: 21, scope: !904)
!974 = !DILocation(line: 263, column: 10, scope: !904)
!975 = !DILocation(line: 263, column: 7, scope: !904)
!976 = !DILocation(line: 264, column: 15, scope: !904)
!977 = !DILocation(line: 264, column: 13, scope: !904)
!978 = !DILocation(line: 267, column: 12, scope: !904)
!979 = !DILocation(line: 267, column: 10, scope: !904)
!980 = !DILocation(line: 268, column: 18, scope: !904)
!981 = !DILocation(line: 268, column: 16, scope: !904)
!982 = !DILocation(line: 234, column: 2, scope: !983)
!983 = !DILexicalBlockFile(scope: !762, file: !51, discriminator: 2)
!984 = distinct !{!984, !896}
!985 = !DILocation(line: 271, column: 23, scope: !762)
!986 = !DILocation(line: 271, column: 34, scope: !762)
!987 = !DILocation(line: 271, column: 42, scope: !762)
!988 = !DILocation(line: 271, column: 40, scope: !762)
!989 = !DILocation(line: 271, column: 13, scope: !762)
!990 = !DILocation(line: 271, column: 7, scope: !762)
!991 = !DILocation(line: 271, column: 2, scope: !762)
!992 = !DILocation(line: 271, column: 11, scope: !762)
!993 = !DILocation(line: 272, column: 33, scope: !762)
!994 = !DILocation(line: 272, column: 39, scope: !762)
!995 = !DILocation(line: 272, column: 41, scope: !762)
!996 = !DILocation(line: 272, column: 38, scope: !762)
!997 = !DILocation(line: 272, column: 20, scope: !762)
!998 = !DILocation(line: 272, column: 9, scope: !762)
!999 = !DILocation(line: 272, column: 6, scope: !762)
!1000 = !DILocation(line: 273, column: 6, scope: !762)
!1001 = !DILocation(line: 273, column: 2, scope: !762)
!1002 = !DILocation(line: 273, column: 9, scope: !762)
!1003 = !DILocation(line: 276, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !762, file: !51, line: 276, column: 6)
!1005 = !DILocation(line: 276, column: 9, scope: !1004)
!1006 = !DILocation(line: 276, column: 6, scope: !762)
!1007 = !DILocation(line: 277, column: 17, scope: !1004)
!1008 = !DILocation(line: 277, column: 3, scope: !1004)
!1009 = !DILocation(line: 278, column: 9, scope: !762)
!1010 = !DILocation(line: 278, column: 2, scope: !762)
!1011 = !DILocation(line: 279, column: 9, scope: !762)
!1012 = !DILocation(line: 279, column: 2, scope: !762)
!1013 = !DILocation(line: 281, column: 9, scope: !762)
!1014 = !DILocation(line: 281, column: 2, scope: !762)
!1015 = !DILocation(line: 282, column: 1, scope: !762)
!1016 = distinct !DISubprogram(name: "recode_update_charset", scope: !51, file: !51, line: 284, type: !280, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!1017 = !DILocalVariable(name: "charset", scope: !1016, file: !51, line: 286, type: !45)
!1018 = !DILocation(line: 286, column: 14, scope: !1016)
!1019 = !DILocation(line: 286, column: 24, scope: !1016)
!1020 = !DILocation(line: 287, column: 37, scope: !1016)
!1021 = !DILocation(line: 287, column: 18, scope: !1016)
!1022 = !DILocation(line: 287, column: 17, scope: !1016)
!1023 = !DILocation(line: 287, column: 15, scope: !1016)
!1024 = !DILocation(line: 288, column: 9, scope: !1016)
!1025 = !DILocation(line: 288, column: 2, scope: !1016)
!1026 = !DILocation(line: 289, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !51, line: 289, column: 6)
!1028 = !DILocation(line: 289, column: 48, scope: !1027)
!1029 = !DILocation(line: 289, column: 64, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1027, file: !51, discriminator: 1)
!1031 = !DILocation(line: 289, column: 52, scope: !1030)
!1032 = !DILocation(line: 289, column: 6, scope: !1030)
!1033 = !DILocation(line: 290, column: 34, scope: !1027)
!1034 = !DILocation(line: 290, column: 22, scope: !1027)
!1035 = !DILocation(line: 290, column: 20, scope: !1027)
!1036 = !DILocation(line: 290, column: 3, scope: !1027)
!1037 = !DILocation(line: 292, column: 31, scope: !1027)
!1038 = !DILocation(line: 292, column: 22, scope: !1027)
!1039 = !DILocation(line: 292, column: 20, scope: !1027)
!1040 = !DILocation(line: 293, column: 1, scope: !1016)
!1041 = distinct !DISubprogram(name: "recode_init", scope: !51, file: !51, line: 295, type: !280, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!1042 = !DILocation(line: 297, column: 2, scope: !1041)
!1043 = !DILocation(line: 298, column: 2, scope: !1041)
!1044 = !DILocation(line: 299, column: 2, scope: !1041)
!1045 = !DILocation(line: 300, column: 2, scope: !1041)
!1046 = !DILocation(line: 301, column: 2, scope: !1041)
!1047 = !DILocation(line: 302, column: 1, scope: !1041)
!1048 = distinct !DISubprogram(name: "recode_deinit", scope: !51, file: !51, line: 304, type: !280, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!1049 = !DILocation(line: 306, column: 9, scope: !1048)
!1050 = !DILocation(line: 306, column: 2, scope: !1048)
!1051 = !DILocation(line: 307, column: 1, scope: !1048)
