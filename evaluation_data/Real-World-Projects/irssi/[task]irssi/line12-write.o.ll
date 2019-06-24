; ModuleID = './line12-write.o.i'
source_filename = "./line12-write.o.i"
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

@__func__.config_write = private unnamed_addr constant [13 x i8] c"config_write\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"fname != NULL || rec->fname != NULL\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"create_mode != -1 || rec->create_mode != -1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s.XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bug\00", align 1
@__func__.config_write_block = private unnamed_addr constant [19 x i8] c"config_write_block\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"is_node_list(node)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@__func__.config_block_fit_one_line = private unnamed_addr constant [26 x i8] c"config_block_fit_one_line\00", align 1
@__func__.config_write_str = private unnamed_addr constant [17 x i8] c"config_write_str\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@indent_block = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@__func__.config_write_node = private unnamed_addr constant [18 x i8] c"config_write_node\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"(\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@__func__.config_write_word = private unnamed_addr constant [18 x i8] c"config_write_word\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"word != NULL\00", align 1
@__func__.config_has_specials = private unnamed_addr constant [20 x i8] c"config_has_specials\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@__func__.config_escape_string = private unnamed_addr constant [21 x i8] c"config_escape_string\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"\5C%c\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1

; Function Attrs: nounwind uwtable
define i32 @config_write(%struct._CONFIG_REC*, i8*, i32) #0 !dbg !102 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !399, metadata !400), !dbg !401
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !402, metadata !400), !dbg !403
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !404, metadata !400), !dbg !405
  call void @llvm.dbg.declare(metadata i32* %8, metadata !406, metadata !400), !dbg !407
  call void @llvm.dbg.declare(metadata i32* %9, metadata !408, metadata !400), !dbg !409
  call void @llvm.dbg.declare(metadata i32* %10, metadata !410, metadata !400), !dbg !411
  call void @llvm.dbg.declare(metadata i8** %11, metadata !412, metadata !400), !dbg !413
  call void @llvm.dbg.declare(metadata i8** %12, metadata !414, metadata !400), !dbg !415
  store i8* null, i8** %12, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata i8** %13, metadata !416, metadata !400), !dbg !417
  store i8* null, i8** %13, align 8, !dbg !417
  br label %14, !dbg !418, !llvm.loop !419

; <label>:14:                                     ; preds = %3
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !420
  %16 = icmp ne %struct._CONFIG_REC* %15, null, !dbg !424
  br i1 %16, label %17, label %18, !dbg !420

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !425

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.config_write, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !428
  store i32 -1, i32* %4, align 4, !dbg !431
  br label %184, !dbg !431

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !432

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !434, !llvm.loop !435

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !436
  %23 = icmp ne i8* %22, null, !dbg !440
  br i1 %23, label %29, label %24, !dbg !441

; <label>:24:                                     ; preds = %21
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !442
  %26 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %25, i32 0, i32 0, !dbg !444
  %27 = load i8*, i8** %26, align 8, !dbg !444
  %28 = icmp ne i8* %27, null, !dbg !445
  br i1 %28, label %29, label %30, !dbg !446

; <label>:29:                                     ; preds = %24, %21
  br label %31, !dbg !447

; <label>:30:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.config_write, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)), !dbg !450
  store i32 -1, i32* %4, align 4, !dbg !453
  br label %184, !dbg !453

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !454

; <label>:32:                                     ; preds = %31
  br label %33, !dbg !456, !llvm.loop !457

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %7, align 4, !dbg !458
  %35 = icmp ne i32 %34, -1, !dbg !462
  br i1 %35, label %41, label %36, !dbg !463

; <label>:36:                                     ; preds = %33
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !464
  %38 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %37, i32 0, i32 1, !dbg !466
  %39 = load i32, i32* %38, align 8, !dbg !466
  %40 = icmp ne i32 %39, -1, !dbg !467
  br i1 %40, label %41, label %42, !dbg !468

; <label>:41:                                     ; preds = %36, %33
  br label %43, !dbg !469

; <label>:42:                                     ; preds = %36
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.config_write, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0)), !dbg !472
  store i32 -1, i32* %4, align 4, !dbg !475
  br label %184, !dbg !475

; <label>:43:                                     ; preds = %41
  br label %44, !dbg !476

; <label>:44:                                     ; preds = %43
  %45 = load i8*, i8** %6, align 8, !dbg !478
  %46 = icmp ne i8* %45, null, !dbg !479
  br i1 %46, label %47, label %49, !dbg !478

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %6, align 8, !dbg !480
  br label %53, !dbg !482

; <label>:49:                                     ; preds = %44
  %50 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !483
  %51 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %50, i32 0, i32 0, !dbg !485
  %52 = load i8*, i8** %51, align 8, !dbg !485
  br label %53, !dbg !486

; <label>:53:                                     ; preds = %49, %47
  %54 = phi i8* [ %48, %47 ], [ %52, %49 ], !dbg !487
  store i8* %54, i8** %11, align 8, !dbg !489
  %55 = load i8*, i8** %11, align 8, !dbg !490
  %56 = call i8* @realpath(i8* %55, i8* null) #7, !dbg !491
  store i8* %56, i8** %13, align 8, !dbg !492
  %57 = load i8*, i8** %13, align 8, !dbg !493
  %58 = icmp eq i8* %57, null, !dbg !495
  br i1 %58, label %59, label %74, !dbg !496

; <label>:59:                                     ; preds = %53
  %60 = call i32* @__errno_location() #1, !dbg !497
  %61 = load i32, i32* %60, align 4, !dbg !500
  %62 = icmp eq i32 %61, 2, !dbg !501
  br i1 %62, label %63, label %67, !dbg !502

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %11, align 8, !dbg !503
  %65 = call noalias i8* @g_strdup(i8* %64), !dbg !505
  store i8* %65, i8** %13, align 8, !dbg !506
  %66 = call i32* @__errno_location() #1, !dbg !507
  store i32 0, i32* %66, align 4, !dbg !508
  br label %73, !dbg !509

; <label>:67:                                     ; preds = %59
  %68 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !510
  %69 = call i32* @__errno_location() #1, !dbg !512
  %70 = load i32, i32* %69, align 4, !dbg !513
  %71 = call i8* @g_strerror(i32 %70) #1, !dbg !514
  %72 = call i32 @config_error(%struct._CONFIG_REC* %68, i8* %71), !dbg !516
  store i32 -1, i32* %8, align 4, !dbg !518
  br label %169, !dbg !519

; <label>:73:                                     ; preds = %63
  br label %74, !dbg !520

; <label>:74:                                     ; preds = %73, %53
  %75 = load i8*, i8** %13, align 8, !dbg !521
  %76 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %75), !dbg !522
  store i8* %76, i8** %12, align 8, !dbg !523
  %77 = load i8*, i8** %12, align 8, !dbg !524
  %78 = load i32, i32* %7, align 4, !dbg !525
  %79 = icmp ne i32 %78, -1, !dbg !526
  br i1 %79, label %80, label %82, !dbg !525

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %7, align 4, !dbg !527
  br label %86, !dbg !528

; <label>:82:                                     ; preds = %74
  %83 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !529
  %84 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %83, i32 0, i32 1, !dbg !530
  %85 = load i32, i32* %84, align 8, !dbg !530
  br label %86, !dbg !531

; <label>:86:                                     ; preds = %82, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ], !dbg !532
  %88 = call i32 @g_mkstemp_full(i8* %77, i32 577, i32 %87), !dbg !533
  store i32 %88, i32* %9, align 4, !dbg !534
  %89 = load i32, i32* %9, align 4, !dbg !535
  %90 = icmp eq i32 %89, -1, !dbg !537
  br i1 %90, label %91, label %97, !dbg !538

; <label>:91:                                     ; preds = %86
  %92 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !539
  %93 = call i32* @__errno_location() #1, !dbg !541
  %94 = load i32, i32* %93, align 4, !dbg !542
  %95 = call i8* @g_strerror(i32 %94) #1, !dbg !543
  %96 = call i32 @config_error(%struct._CONFIG_REC* %92, i8* %95), !dbg !545
  store i32 -1, i32* %8, align 4, !dbg !547
  br label %169, !dbg !548

; <label>:97:                                     ; preds = %86
  %98 = load i32, i32* %9, align 4, !dbg !549
  %99 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %98), !dbg !550
  %100 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !551
  %101 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %100, i32 0, i32 8, !dbg !552
  store %struct._GIOChannel* %99, %struct._GIOChannel** %101, align 8, !dbg !553
  %102 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !554
  %103 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %102, i32 0, i32 8, !dbg !555
  %104 = load %struct._GIOChannel*, %struct._GIOChannel** %103, align 8, !dbg !555
  %105 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %104, i8* null, %struct._GError** null), !dbg !556
  %106 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !557
  %107 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %106, i32 0, i32 8, !dbg !558
  %108 = load %struct._GIOChannel*, %struct._GIOChannel** %107, align 8, !dbg !558
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %108, i32 1), !dbg !559
  %109 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !560
  %110 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %109, i32 0, i32 9, !dbg !561
  store i32 0, i32* %110, align 8, !dbg !562
  %111 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !563
  %112 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %111, i32 0, i32 10, !dbg !564
  store i32 1, i32* %112, align 4, !dbg !565
  %113 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !566
  %114 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !567
  %115 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %114, i32 0, i32 4, !dbg !568
  %116 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %115, align 8, !dbg !568
  %117 = call i32 @config_write_block(%struct._CONFIG_REC* %113, %struct._CONFIG_NODE* %116, i32 0, i32 1), !dbg !569
  store i32 %117, i32* %8, align 4, !dbg !570
  %118 = call i32* @__errno_location() #1, !dbg !571
  %119 = load i32, i32* %118, align 4, !dbg !572
  store i32 %119, i32* %10, align 4, !dbg !573
  %120 = load i32, i32* %8, align 4, !dbg !574
  %121 = icmp eq i32 %120, -1, !dbg !576
  br i1 %121, label %122, label %135, !dbg !577

; <label>:122:                                    ; preds = %97
  %123 = load i8*, i8** %12, align 8, !dbg !578
  %124 = call i32 @unlink(i8* %123) #7, !dbg !580
  %125 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !581
  %126 = load i32, i32* %10, align 4, !dbg !582
  %127 = icmp eq i32 %126, 0, !dbg !583
  br i1 %127, label %128, label %129, !dbg !582

; <label>:128:                                    ; preds = %122
  br label %132, !dbg !584

; <label>:129:                                    ; preds = %122
  %130 = load i32, i32* %10, align 4, !dbg !586
  %131 = call i8* @g_strerror(i32 %130) #1, !dbg !588
  br label %132, !dbg !589

; <label>:132:                                    ; preds = %129, %128
  %133 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %128 ], [ %131, %129 ], !dbg !590
  %134 = call i32 @config_error(%struct._CONFIG_REC* %125, i8* %133), !dbg !592
  br label %169, !dbg !593

; <label>:135:                                    ; preds = %97
  %136 = load i32, i32* %9, align 4, !dbg !594
  %137 = call i32 @fsync(i32 %136), !dbg !595
  store i32 %137, i32* %8, align 4, !dbg !596
  %138 = call i32* @__errno_location() #1, !dbg !597
  %139 = load i32, i32* %138, align 4, !dbg !598
  store i32 %139, i32* %10, align 4, !dbg !599
  %140 = load i32, i32* %8, align 4, !dbg !600
  %141 = icmp eq i32 %140, -1, !dbg !602
  br i1 %141, label %142, label %150, !dbg !603

; <label>:142:                                    ; preds = %135
  %143 = load i8*, i8** %12, align 8, !dbg !604
  %144 = call i32 @unlink(i8* %143) #7, !dbg !606
  %145 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !607
  %146 = call i32* @__errno_location() #1, !dbg !608
  %147 = load i32, i32* %146, align 4, !dbg !609
  %148 = call i8* @g_strerror(i32 %147) #1, !dbg !610
  %149 = call i32 @config_error(%struct._CONFIG_REC* %145, i8* %148), !dbg !612
  br label %169, !dbg !614

; <label>:150:                                    ; preds = %135
  %151 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !615
  %152 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %151, i32 0, i32 8, !dbg !616
  %153 = load %struct._GIOChannel*, %struct._GIOChannel** %152, align 8, !dbg !616
  call void @g_io_channel_unref(%struct._GIOChannel* %153), !dbg !617
  %154 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !618
  %155 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %154, i32 0, i32 8, !dbg !619
  store %struct._GIOChannel* null, %struct._GIOChannel** %155, align 8, !dbg !620
  %156 = load i8*, i8** %12, align 8, !dbg !621
  %157 = load i8*, i8** %13, align 8, !dbg !623
  %158 = call i32 @rename(i8* %156, i8* %157) #7, !dbg !624
  %159 = icmp eq i32 %158, -1, !dbg !625
  br i1 %159, label %160, label %168, !dbg !626

; <label>:160:                                    ; preds = %150
  %161 = load i8*, i8** %12, align 8, !dbg !627
  %162 = call i32 @unlink(i8* %161) #7, !dbg !629
  %163 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !630
  %164 = call i32* @__errno_location() #1, !dbg !631
  %165 = load i32, i32* %164, align 4, !dbg !632
  %166 = call i8* @g_strerror(i32 %165) #1, !dbg !633
  %167 = call i32 @config_error(%struct._CONFIG_REC* %163, i8* %166), !dbg !635
  br label %169, !dbg !637

; <label>:168:                                    ; preds = %150
  br label %169, !dbg !638

; <label>:169:                                    ; preds = %168, %160, %142, %132, %91, %67
  %170 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !640
  %171 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %170, i32 0, i32 8, !dbg !642
  %172 = load %struct._GIOChannel*, %struct._GIOChannel** %171, align 8, !dbg !642
  %173 = icmp ne %struct._GIOChannel* %172, null, !dbg !640
  br i1 %173, label %174, label %180, !dbg !643

; <label>:174:                                    ; preds = %169
  %175 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !644
  %176 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %175, i32 0, i32 8, !dbg !646
  %177 = load %struct._GIOChannel*, %struct._GIOChannel** %176, align 8, !dbg !646
  call void @g_io_channel_unref(%struct._GIOChannel* %177), !dbg !647
  %178 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !648
  %179 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %178, i32 0, i32 8, !dbg !649
  store %struct._GIOChannel* null, %struct._GIOChannel** %179, align 8, !dbg !650
  br label %180, !dbg !651

; <label>:180:                                    ; preds = %174, %169
  %181 = load i8*, i8** %12, align 8, !dbg !652
  call void @g_free(i8* %181), !dbg !653
  %182 = load i8*, i8** %13, align 8, !dbg !654
  call void @g_free(i8* %182), !dbg !655
  %183 = load i32, i32* %8, align 4, !dbg !656
  store i32 %183, i32* %4, align 4, !dbg !657
  br label %184, !dbg !657

; <label>:184:                                    ; preds = %180, %42, %30, %18
  %185 = load i32, i32* %4, align 4, !dbg !658
  ret i32 %185, !dbg !658
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare noalias i8* @g_strdup(i8*) #2

declare i32 @config_error(%struct._CONFIG_REC*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @g_mkstemp_full(i8*, i32, i32) #2

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #2

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #2

declare void @g_io_channel_set_close_on_unref(%struct._GIOChannel*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @config_write_block(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32, i32) #0 !dbg !659 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !662, metadata !400), !dbg !663
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !664, metadata !400), !dbg !665
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !666, metadata !400), !dbg !667
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !668, metadata !400), !dbg !669
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !670, metadata !400), !dbg !671
  call void @llvm.dbg.declare(metadata i32* %11, metadata !672, metadata !400), !dbg !673
  call void @llvm.dbg.declare(metadata i32* %12, metadata !674, metadata !400), !dbg !675
  br label %14, !dbg !676, !llvm.loop !677

; <label>:14:                                     ; preds = %4
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !678
  %16 = icmp ne %struct._CONFIG_REC* %15, null, !dbg !682
  br i1 %16, label %17, label %18, !dbg !678

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !683

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.config_write_block, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !686
  store i32 -1, i32* %5, align 4, !dbg !689
  br label %129, !dbg !689

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !690

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !692, !llvm.loop !693

; <label>:21:                                     ; preds = %20
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !694
  %23 = icmp ne %struct._CONFIG_NODE* %22, null, !dbg !698
  br i1 %23, label %24, label %25, !dbg !694

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !699

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.config_write_block, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !702
  store i32 -1, i32* %5, align 4, !dbg !705
  br label %129, !dbg !705

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !706

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !708, !llvm.loop !709

; <label>:28:                                     ; preds = %27
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !710
  %30 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %29, i32 0, i32 0, !dbg !714
  %31 = load i32, i32* %30, align 8, !dbg !714
  %32 = icmp eq i32 %31, 2, !dbg !715
  br i1 %32, label %38, label %33, !dbg !716

; <label>:33:                                     ; preds = %28
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !717
  %35 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %34, i32 0, i32 0, !dbg !719
  %36 = load i32, i32* %35, align 8, !dbg !719
  %37 = icmp eq i32 %36, 3, !dbg !720
  br i1 %37, label %38, label %39, !dbg !721

; <label>:38:                                     ; preds = %33, %28
  br label %40, !dbg !722

; <label>:39:                                     ; preds = %33
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.config_write_block, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)), !dbg !725
  store i32 -1, i32* %5, align 4, !dbg !728
  br label %129, !dbg !728

; <label>:40:                                     ; preds = %38
  br label %41, !dbg !729

; <label>:41:                                     ; preds = %40
  %42 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !731
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !732
  %44 = call i32 @config_block_fit_one_line(%struct._CONFIG_REC* %42, %struct._CONFIG_NODE* %43), !dbg !733
  %45 = icmp ne i32 %44, 0, !dbg !734
  %46 = xor i1 %45, true, !dbg !734
  %47 = zext i1 %46 to i32, !dbg !734
  store i32 %47, i32* %11, align 4, !dbg !735
  %48 = load i32, i32* %9, align 4, !dbg !736
  %49 = icmp ne i32 %48, 0, !dbg !736
  br i1 %49, label %56, label %50, !dbg !738

; <label>:50:                                     ; preds = %41
  %51 = load i32, i32* %11, align 4, !dbg !739
  %52 = icmp ne i32 %51, 0, !dbg !739
  br i1 %52, label %53, label %56, !dbg !741

; <label>:53:                                     ; preds = %50
  %54 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !742
  %55 = call i32 @config_write_str(%struct._CONFIG_REC* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !743
  br label %56, !dbg !743

; <label>:56:                                     ; preds = %53, %50, %41
  %57 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !744
  %58 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %57, i32 0, i32 2, !dbg !746
  %59 = load i8*, i8** %58, align 8, !dbg !746
  %60 = bitcast i8* %59 to %struct._GSList*, !dbg !744
  store %struct._GSList* %60, %struct._GSList** %10, align 8, !dbg !747
  br label %61, !dbg !748

; <label>:61:                                     ; preds = %124, %56
  %62 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !749
  %63 = icmp ne %struct._GSList* %62, null, !dbg !752
  br i1 %63, label %64, label %128, !dbg !753

; <label>:64:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %13, metadata !754, metadata !400), !dbg !756
  %65 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !757
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0, !dbg !758
  %67 = load i8*, i8** %66, align 8, !dbg !758
  %68 = bitcast i8* %67 to %struct._CONFIG_NODE*, !dbg !757
  store %struct._CONFIG_NODE* %68, %struct._CONFIG_NODE** %13, align 8, !dbg !756
  %69 = load i32, i32* %9, align 4, !dbg !759
  %70 = icmp ne i32 %69, 0, !dbg !759
  br i1 %70, label %72, label %71, !dbg !760

; <label>:71:                                     ; preds = %64
  br label %79, !dbg !761

; <label>:72:                                     ; preds = %64
  %73 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !763
  %74 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %13, align 8, !dbg !765
  %75 = call i32 @config_block_fit_one_line(%struct._CONFIG_REC* %73, %struct._CONFIG_NODE* %74), !dbg !766
  %76 = icmp ne i32 %75, 0, !dbg !767
  %77 = xor i1 %76, true, !dbg !767
  %78 = zext i1 %77 to i32, !dbg !767
  br label %79, !dbg !768

; <label>:79:                                     ; preds = %72, %71
  %80 = phi i32 [ 0, %71 ], [ %78, %72 ], !dbg !769
  store i32 %80, i32* %12, align 4, !dbg !771
  %81 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !772
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %13, align 8, !dbg !774
  %83 = load i32, i32* %12, align 4, !dbg !775
  %84 = call i32 @config_write_node(%struct._CONFIG_REC* %81, %struct._CONFIG_NODE* %82, i32 %83), !dbg !776
  %85 = icmp eq i32 %84, -1, !dbg !777
  br i1 %85, label %86, label %87, !dbg !778

; <label>:86:                                     ; preds = %79
  store i32 -1, i32* %5, align 4, !dbg !779
  br label %129, !dbg !779

; <label>:87:                                     ; preds = %79
  %88 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %13, align 8, !dbg !780
  %89 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %88, i32 0, i32 0, !dbg !782
  %90 = load i32, i32* %89, align 8, !dbg !782
  %91 = icmp eq i32 %90, 4, !dbg !783
  br i1 %91, label %92, label %95, !dbg !784

; <label>:92:                                     ; preds = %87
  %93 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !785
  %94 = call i32 @config_write_str(%struct._CONFIG_REC* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !786
  br label %123, !dbg !786

; <label>:95:                                     ; preds = %87
  %96 = load i32, i32* %8, align 4, !dbg !787
  %97 = icmp ne i32 %96, 0, !dbg !787
  br i1 %97, label %98, label %116, !dbg !789

; <label>:98:                                     ; preds = %95
  %99 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !790
  %100 = getelementptr inbounds %struct._GSList, %struct._GSList* %99, i32 0, i32 1, !dbg !793
  %101 = load %struct._GSList*, %struct._GSList** %100, align 8, !dbg !793
  %102 = icmp ne %struct._GSList* %101, null, !dbg !794
  br i1 %102, label %103, label %109, !dbg !795

; <label>:103:                                    ; preds = %98
  %104 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !796
  %105 = load i32, i32* %11, align 4, !dbg !797
  %106 = icmp ne i32 %105, 0, !dbg !797
  %107 = select i1 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), !dbg !797
  %108 = call i32 @config_write_str(%struct._CONFIG_REC* %104, i8* %107), !dbg !798
  br label %115, !dbg !798

; <label>:109:                                    ; preds = %98
  %110 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !799
  %111 = load i32, i32* %11, align 4, !dbg !800
  %112 = icmp ne i32 %111, 0, !dbg !800
  %113 = select i1 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), !dbg !800
  %114 = call i32 @config_write_str(%struct._CONFIG_REC* %110, i8* %113), !dbg !801
  br label %115

; <label>:115:                                    ; preds = %109, %103
  br label %122, !dbg !802

; <label>:116:                                    ; preds = %95
  %117 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !803
  %118 = load i32, i32* %11, align 4, !dbg !805
  %119 = icmp ne i32 %118, 0, !dbg !805
  %120 = select i1 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), !dbg !805
  %121 = call i32 @config_write_str(%struct._CONFIG_REC* %117, i8* %120), !dbg !806
  br label %122

; <label>:122:                                    ; preds = %116, %115
  br label %123

; <label>:123:                                    ; preds = %122, %92
  br label %124, !dbg !807

; <label>:124:                                    ; preds = %123
  %125 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !808
  %126 = getelementptr inbounds %struct._GSList, %struct._GSList* %125, i32 0, i32 1, !dbg !810
  %127 = load %struct._GSList*, %struct._GSList** %126, align 8, !dbg !810
  store %struct._GSList* %127, %struct._GSList** %10, align 8, !dbg !811
  br label %61, !dbg !812, !llvm.loop !813

; <label>:128:                                    ; preds = %61
  store i32 0, i32* %5, align 4, !dbg !815
  br label %129, !dbg !815

; <label>:129:                                    ; preds = %128, %86, %39, %25, %18
  %130 = load i32, i32* %5, align 4, !dbg !816
  ret i32 %130, !dbg !816
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

declare i32 @fsync(i32) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @config_block_fit_one_line(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !817 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !820, metadata !400), !dbg !821
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !822, metadata !400), !dbg !823
  br label %6, !dbg !824, !llvm.loop !825

; <label>:6:                                      ; preds = %2
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !826
  %8 = icmp ne %struct._CONFIG_REC* %7, null, !dbg !830
  br i1 %8, label %9, label %10, !dbg !826

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !831

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.config_block_fit_one_line, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !834
  store i32 0, i32* %3, align 4, !dbg !837
  br label %29, !dbg !837

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !838

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !840, !llvm.loop !841

; <label>:13:                                     ; preds = %12
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !842
  %15 = icmp ne %struct._CONFIG_NODE* %14, null, !dbg !846
  br i1 %15, label %16, label %17, !dbg !842

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !847

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.config_block_fit_one_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !850
  store i32 0, i32* %3, align 4, !dbg !853
  br label %29, !dbg !853

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !854

; <label>:19:                                     ; preds = %18
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !856
  %21 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %20, i32 0, i32 9, !dbg !857
  %22 = load i32, i32* %21, align 8, !dbg !857
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !858
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !859
  %25 = call i32 @config_node_get_length(%struct._CONFIG_REC* %23, %struct._CONFIG_NODE* %24), !dbg !860
  %26 = add nsw i32 %22, %25, !dbg !861
  %27 = icmp sle i32 %26, 70, !dbg !862
  %28 = zext i1 %27 to i32, !dbg !862
  store i32 %28, i32* %3, align 4, !dbg !863
  br label %29, !dbg !863

; <label>:29:                                     ; preds = %19, %17, %10
  %30 = load i32, i32* %3, align 4, !dbg !864
  ret i32 %30, !dbg !864
}

; Function Attrs: nounwind uwtable
define internal i32 @config_write_str(%struct._CONFIG_REC*, i8*) #0 !dbg !865 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !868, metadata !400), !dbg !869
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !870, metadata !400), !dbg !871
  call void @llvm.dbg.declare(metadata i8** %6, metadata !872, metadata !400), !dbg !873
  call void @llvm.dbg.declare(metadata i8** %7, metadata !874, metadata !400), !dbg !875
  br label %8, !dbg !876, !llvm.loop !877

; <label>:8:                                      ; preds = %2
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !878
  %10 = icmp ne %struct._CONFIG_REC* %9, null, !dbg !882
  br i1 %10, label %11, label %12, !dbg !878

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !883

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.config_write_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !886
  store i32 -1, i32* %3, align 4, !dbg !889
  br label %90, !dbg !889

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !890

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !892, !llvm.loop !893

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !894
  %17 = icmp ne i8* %16, null, !dbg !898
  br i1 %17, label %18, label %19, !dbg !894

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !899

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.config_write_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !902
  store i32 -1, i32* %3, align 4, !dbg !905
  br label %90, !dbg !905

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !906

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %5, align 8, !dbg !908
  store i8* %22, i8** %6, align 8, !dbg !909
  br label %23, !dbg !910

; <label>:23:                                     ; preds = %88, %21
  %24 = load i8*, i8** %6, align 8, !dbg !911
  %25 = load i8, i8* %24, align 1, !dbg !913
  %26 = sext i8 %25 to i32, !dbg !913
  %27 = icmp ne i32 %26, 0, !dbg !914
  br i1 %27, label %28, label %89, !dbg !915

; <label>:28:                                     ; preds = %23
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !916
  %30 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %29, i32 0, i32 10, !dbg !919
  %31 = load i32, i32* %30, align 4, !dbg !919
  %32 = icmp ne i32 %31, 0, !dbg !916
  br i1 %32, label %33, label %49, !dbg !920

; <label>:33:                                     ; preds = %28
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !921
  %35 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %34, i32 0, i32 9, !dbg !923
  %36 = load i32, i32* %35, align 8, !dbg !923
  %37 = icmp sgt i32 %36, 0, !dbg !924
  br i1 %37, label %38, label %49, !dbg !925

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %5, align 8, !dbg !926
  %40 = load i8, i8* %39, align 1, !dbg !927
  %41 = sext i8 %40 to i32, !dbg !927
  %42 = icmp ne i32 %41, 10, !dbg !928
  br i1 %42, label %43, label %49, !dbg !929

; <label>:43:                                     ; preds = %38
  %44 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !931
  %45 = call i32 @config_write_indent(%struct._CONFIG_REC* %44), !dbg !934
  %46 = icmp eq i32 %45, -1, !dbg !935
  br i1 %46, label %47, label %48, !dbg !936

; <label>:47:                                     ; preds = %43
  store i32 -1, i32* %3, align 4, !dbg !937
  br label %90, !dbg !937

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !938

; <label>:49:                                     ; preds = %48, %38, %33, %28
  %50 = load i8*, i8** %6, align 8, !dbg !939
  %51 = call i8* @strchr(i8* %50, i32 10) #8, !dbg !940
  store i8* %51, i8** %7, align 8, !dbg !941
  %52 = load i8*, i8** %7, align 8, !dbg !942
  %53 = icmp eq i8* %52, null, !dbg !944
  br i1 %53, label %54, label %67, !dbg !945

; <label>:54:                                     ; preds = %49
  %55 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !946
  %56 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %55, i32 0, i32 8, !dbg !949
  %57 = load %struct._GIOChannel*, %struct._GIOChannel** %56, align 8, !dbg !949
  %58 = load i8*, i8** %6, align 8, !dbg !950
  %59 = load i8*, i8** %6, align 8, !dbg !951
  %60 = call i64 @strlen(i8* %59) #8, !dbg !952
  %61 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %57, i8* %58, i64 %60, i64* null, %struct._GError** null), !dbg !953
  %62 = icmp eq i32 %61, 0, !dbg !955
  br i1 %62, label %63, label %64, !dbg !956

; <label>:63:                                     ; preds = %54
  store i32 -1, i32* %3, align 4, !dbg !957
  br label %90, !dbg !957

; <label>:64:                                     ; preds = %54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8** %6, align 8, !dbg !958
  %65 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !959
  %66 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %65, i32 0, i32 10, !dbg !960
  store i32 0, i32* %66, align 4, !dbg !961
  br label %88, !dbg !962

; <label>:67:                                     ; preds = %49
  %68 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !963
  %69 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %68, i32 0, i32 8, !dbg !966
  %70 = load %struct._GIOChannel*, %struct._GIOChannel** %69, align 8, !dbg !966
  %71 = load i8*, i8** %6, align 8, !dbg !967
  %72 = load i8*, i8** %7, align 8, !dbg !968
  %73 = load i8*, i8** %6, align 8, !dbg !969
  %74 = ptrtoint i8* %72 to i64, !dbg !970
  %75 = ptrtoint i8* %73 to i64, !dbg !970
  %76 = sub i64 %74, %75, !dbg !970
  %77 = trunc i64 %76 to i32, !dbg !971
  %78 = add nsw i32 %77, 1, !dbg !972
  %79 = sext i32 %78 to i64, !dbg !971
  %80 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %70, i8* %71, i64 %79, i64* null, %struct._GError** null), !dbg !973
  %81 = icmp eq i32 %80, 0, !dbg !974
  br i1 %81, label %82, label %83, !dbg !975

; <label>:82:                                     ; preds = %67
  store i32 -1, i32* %3, align 4, !dbg !976
  br label %90, !dbg !976

; <label>:83:                                     ; preds = %67
  %84 = load i8*, i8** %7, align 8, !dbg !977
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !978
  store i8* %85, i8** %6, align 8, !dbg !979
  %86 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !980
  %87 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %86, i32 0, i32 10, !dbg !981
  store i32 1, i32* %87, align 4, !dbg !982
  br label %88

; <label>:88:                                     ; preds = %83, %64
  br label %23, !dbg !983, !llvm.loop !985

; <label>:89:                                     ; preds = %23
  store i32 0, i32* %3, align 4, !dbg !986
  br label %90, !dbg !986

; <label>:90:                                     ; preds = %89, %82, %63, %47, %19, %12
  %91 = load i32, i32* %3, align 4, !dbg !987
  ret i32 %91, !dbg !987
}

; Function Attrs: nounwind uwtable
define internal i32 @config_write_node(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32) #0 !dbg !988 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !991, metadata !400), !dbg !992
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !993, metadata !400), !dbg !994
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !995, metadata !400), !dbg !996
  br label %8, !dbg !997, !llvm.loop !998

; <label>:8:                                      ; preds = %3
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !999
  %10 = icmp ne %struct._CONFIG_REC* %9, null, !dbg !1003
  br i1 %10, label %11, label %12, !dbg !999

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1004

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_write_node, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1007
  store i32 -1, i32* %4, align 4, !dbg !1010
  br label %168, !dbg !1010

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1011

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1013, !llvm.loop !1014

; <label>:15:                                     ; preds = %14
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1015
  %17 = icmp ne %struct._CONFIG_NODE* %16, null, !dbg !1019
  br i1 %17, label %18, label %19, !dbg !1015

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1020

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_write_node, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1023
  store i32 -1, i32* %4, align 4, !dbg !1026
  br label %168, !dbg !1026

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1027

; <label>:21:                                     ; preds = %20
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1029
  %23 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %22, i32 0, i32 0, !dbg !1030
  %24 = load i32, i32* %23, align 8, !dbg !1030
  switch i32 %24, label %167 [
    i32 0, label %25
    i32 1, label %45
    i32 2, label %54
    i32 3, label %101
    i32 4, label %148
  ], !dbg !1031

; <label>:25:                                     ; preds = %21
  %26 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1032
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1035
  %28 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %27, i32 0, i32 1, !dbg !1036
  %29 = load i8*, i8** %28, align 8, !dbg !1036
  %30 = call i32 @config_write_word(%struct._CONFIG_REC* %26, i8* %29, i32 0), !dbg !1037
  %31 = icmp eq i32 %30, -1, !dbg !1038
  br i1 %31, label %43, label %32, !dbg !1039

; <label>:32:                                     ; preds = %25
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1040
  %34 = call i32 @config_write_str(%struct._CONFIG_REC* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !1041
  %35 = icmp eq i32 %34, -1, !dbg !1042
  br i1 %35, label %43, label %36, !dbg !1043

; <label>:36:                                     ; preds = %32
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1044
  %38 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1045
  %39 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %38, i32 0, i32 2, !dbg !1046
  %40 = load i8*, i8** %39, align 8, !dbg !1046
  %41 = call i32 @config_write_word(%struct._CONFIG_REC* %37, i8* %40, i32 1), !dbg !1047
  %42 = icmp eq i32 %41, -1, !dbg !1048
  br i1 %42, label %43, label %44, !dbg !1049

; <label>:43:                                     ; preds = %36, %32, %25
  store i32 -1, i32* %4, align 4, !dbg !1051
  br label %168, !dbg !1051

; <label>:44:                                     ; preds = %36
  br label %167, !dbg !1052

; <label>:45:                                     ; preds = %21
  %46 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1053
  %47 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1055
  %48 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %47, i32 0, i32 2, !dbg !1056
  %49 = load i8*, i8** %48, align 8, !dbg !1056
  %50 = call i32 @config_write_word(%struct._CONFIG_REC* %46, i8* %49, i32 1), !dbg !1057
  %51 = icmp eq i32 %50, -1, !dbg !1058
  br i1 %51, label %52, label %53, !dbg !1059

; <label>:52:                                     ; preds = %45
  store i32 -1, i32* %4, align 4, !dbg !1060
  br label %168, !dbg !1060

; <label>:53:                                     ; preds = %45
  br label %167, !dbg !1061

; <label>:54:                                     ; preds = %21
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1062
  %56 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %55, i32 0, i32 1, !dbg !1064
  %57 = load i8*, i8** %56, align 8, !dbg !1064
  %58 = icmp ne i8* %57, null, !dbg !1065
  br i1 %58, label %59, label %72, !dbg !1066

; <label>:59:                                     ; preds = %54
  %60 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1067
  %61 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1070
  %62 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %61, i32 0, i32 1, !dbg !1071
  %63 = load i8*, i8** %62, align 8, !dbg !1071
  %64 = call i32 @config_write_word(%struct._CONFIG_REC* %60, i8* %63, i32 0), !dbg !1072
  %65 = icmp eq i32 %64, -1, !dbg !1073
  br i1 %65, label %70, label %66, !dbg !1074

; <label>:66:                                     ; preds = %59
  %67 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1075
  %68 = call i32 @config_write_str(%struct._CONFIG_REC* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !1076
  %69 = icmp eq i32 %68, -1, !dbg !1077
  br i1 %69, label %70, label %71, !dbg !1078

; <label>:70:                                     ; preds = %66, %59
  store i32 -1, i32* %4, align 4, !dbg !1080
  br label %168, !dbg !1080

; <label>:71:                                     ; preds = %66
  br label %72, !dbg !1081

; <label>:72:                                     ; preds = %71, %54
  %73 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1082
  %74 = load i32, i32* %7, align 4, !dbg !1084
  %75 = icmp ne i32 %74, 0, !dbg !1084
  %76 = select i1 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), !dbg !1084
  %77 = call i32 @config_write_str(%struct._CONFIG_REC* %73, i8* %76), !dbg !1085
  %78 = icmp eq i32 %77, -1, !dbg !1086
  br i1 %78, label %79, label %80, !dbg !1087

; <label>:79:                                     ; preds = %72
  store i32 -1, i32* %4, align 4, !dbg !1088
  br label %168, !dbg !1088

; <label>:80:                                     ; preds = %72
  %81 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1089
  %82 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %81, i32 0, i32 9, !dbg !1090
  %83 = load i32, i32* %82, align 8, !dbg !1091
  %84 = add nsw i32 %83, 2, !dbg !1091
  store i32 %84, i32* %82, align 8, !dbg !1091
  %85 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1092
  %86 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1094
  %87 = load i32, i32* %7, align 4, !dbg !1095
  %88 = call i32 @config_write_block(%struct._CONFIG_REC* %85, %struct._CONFIG_NODE* %86, i32 0, i32 %87), !dbg !1096
  %89 = icmp eq i32 %88, -1, !dbg !1097
  br i1 %89, label %90, label %91, !dbg !1098

; <label>:90:                                     ; preds = %80
  store i32 -1, i32* %4, align 4, !dbg !1099
  br label %168, !dbg !1099

; <label>:91:                                     ; preds = %80
  %92 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1100
  %93 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %92, i32 0, i32 9, !dbg !1101
  %94 = load i32, i32* %93, align 8, !dbg !1102
  %95 = sub nsw i32 %94, 2, !dbg !1102
  store i32 %95, i32* %93, align 8, !dbg !1102
  %96 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1103
  %97 = call i32 @config_write_str(%struct._CONFIG_REC* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !1105
  %98 = icmp eq i32 %97, -1, !dbg !1106
  br i1 %98, label %99, label %100, !dbg !1107

; <label>:99:                                     ; preds = %91
  store i32 -1, i32* %4, align 4, !dbg !1108
  br label %168, !dbg !1108

; <label>:100:                                    ; preds = %91
  br label %167, !dbg !1109

; <label>:101:                                    ; preds = %21
  %102 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1110
  %103 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %102, i32 0, i32 1, !dbg !1112
  %104 = load i8*, i8** %103, align 8, !dbg !1112
  %105 = icmp ne i8* %104, null, !dbg !1113
  br i1 %105, label %106, label %119, !dbg !1114

; <label>:106:                                    ; preds = %101
  %107 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1115
  %108 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1118
  %109 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %108, i32 0, i32 1, !dbg !1119
  %110 = load i8*, i8** %109, align 8, !dbg !1119
  %111 = call i32 @config_write_word(%struct._CONFIG_REC* %107, i8* %110, i32 0), !dbg !1120
  %112 = icmp eq i32 %111, -1, !dbg !1121
  br i1 %112, label %117, label %113, !dbg !1122

; <label>:113:                                    ; preds = %106
  %114 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1123
  %115 = call i32 @config_write_str(%struct._CONFIG_REC* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !1124
  %116 = icmp eq i32 %115, -1, !dbg !1125
  br i1 %116, label %117, label %118, !dbg !1126

; <label>:117:                                    ; preds = %113, %106
  store i32 -1, i32* %4, align 4, !dbg !1128
  br label %168, !dbg !1128

; <label>:118:                                    ; preds = %113
  br label %119, !dbg !1129

; <label>:119:                                    ; preds = %118, %101
  %120 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1130
  %121 = load i32, i32* %7, align 4, !dbg !1132
  %122 = icmp ne i32 %121, 0, !dbg !1132
  %123 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), !dbg !1132
  %124 = call i32 @config_write_str(%struct._CONFIG_REC* %120, i8* %123), !dbg !1133
  %125 = icmp eq i32 %124, -1, !dbg !1134
  br i1 %125, label %126, label %127, !dbg !1135

; <label>:126:                                    ; preds = %119
  store i32 -1, i32* %4, align 4, !dbg !1136
  br label %168, !dbg !1136

; <label>:127:                                    ; preds = %119
  %128 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1137
  %129 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %128, i32 0, i32 9, !dbg !1138
  %130 = load i32, i32* %129, align 8, !dbg !1139
  %131 = add nsw i32 %130, 2, !dbg !1139
  store i32 %131, i32* %129, align 8, !dbg !1139
  %132 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1140
  %133 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1142
  %134 = load i32, i32* %7, align 4, !dbg !1143
  %135 = call i32 @config_write_block(%struct._CONFIG_REC* %132, %struct._CONFIG_NODE* %133, i32 1, i32 %134), !dbg !1144
  %136 = icmp eq i32 %135, -1, !dbg !1145
  br i1 %136, label %137, label %138, !dbg !1146

; <label>:137:                                    ; preds = %127
  store i32 -1, i32* %4, align 4, !dbg !1147
  br label %168, !dbg !1147

; <label>:138:                                    ; preds = %127
  %139 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1148
  %140 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %139, i32 0, i32 9, !dbg !1149
  %141 = load i32, i32* %140, align 8, !dbg !1150
  %142 = sub nsw i32 %141, 2, !dbg !1150
  store i32 %142, i32* %140, align 8, !dbg !1150
  %143 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1151
  %144 = call i32 @config_write_str(%struct._CONFIG_REC* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !1153
  %145 = icmp eq i32 %144, -1, !dbg !1154
  br i1 %145, label %146, label %147, !dbg !1155

; <label>:146:                                    ; preds = %138
  store i32 -1, i32* %4, align 4, !dbg !1156
  br label %168, !dbg !1156

; <label>:147:                                    ; preds = %138
  br label %167, !dbg !1157

; <label>:148:                                    ; preds = %21
  %149 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1158
  %150 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %149, i32 0, i32 2, !dbg !1160
  %151 = load i8*, i8** %150, align 8, !dbg !1160
  %152 = icmp eq i8* %151, null, !dbg !1161
  br i1 %152, label %153, label %154, !dbg !1162

; <label>:153:                                    ; preds = %148
  br label %167, !dbg !1163

; <label>:154:                                    ; preds = %148
  %155 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1164
  %156 = call i32 @config_write_str(%struct._CONFIG_REC* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !1166
  %157 = icmp eq i32 %156, -1, !dbg !1167
  br i1 %157, label %165, label %158, !dbg !1168

; <label>:158:                                    ; preds = %154
  %159 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1169
  %160 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1170
  %161 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %160, i32 0, i32 2, !dbg !1171
  %162 = load i8*, i8** %161, align 8, !dbg !1171
  %163 = call i32 @config_write_str(%struct._CONFIG_REC* %159, i8* %162), !dbg !1172
  %164 = icmp eq i32 %163, -1, !dbg !1173
  br i1 %164, label %165, label %166, !dbg !1174

; <label>:165:                                    ; preds = %158, %154
  store i32 -1, i32* %4, align 4, !dbg !1175
  br label %168, !dbg !1175

; <label>:166:                                    ; preds = %158
  br label %167, !dbg !1176

; <label>:167:                                    ; preds = %21, %166, %153, %147, %100, %53, %44
  store i32 0, i32* %4, align 4, !dbg !1177
  br label %168, !dbg !1177

; <label>:168:                                    ; preds = %167, %165, %146, %137, %126, %117, %99, %90, %79, %70, %52, %43, %19, %12
  %169 = load i32, i32* %4, align 4, !dbg !1178
  ret i32 %169, !dbg !1178
}

; Function Attrs: nounwind uwtable
define internal i32 @config_node_get_length(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1179 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !1180, metadata !400), !dbg !1181
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1182, metadata !400), !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1184, metadata !400), !dbg !1185
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1186
  %7 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %6, i32 0, i32 0, !dbg !1187
  %8 = load i32, i32* %7, align 8, !dbg !1187
  switch i32 %8, label %48 [
    i32 0, label %9
    i32 1, label %21
    i32 2, label %28
    i32 3, label %28
  ], !dbg !1188

; <label>:9:                                      ; preds = %2
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1189
  %11 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %10, i32 0, i32 1, !dbg !1191
  %12 = load i8*, i8** %11, align 8, !dbg !1191
  %13 = call i64 @strlen(i8* %12) #8, !dbg !1192
  %14 = add i64 5, %13, !dbg !1193
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1194
  %16 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %15, i32 0, i32 2, !dbg !1195
  %17 = load i8*, i8** %16, align 8, !dbg !1195
  %18 = call i64 @strlen(i8* %17) #8, !dbg !1196
  %19 = add i64 %14, %18, !dbg !1198
  %20 = trunc i64 %19 to i32, !dbg !1199
  store i32 %20, i32* %5, align 4, !dbg !1200
  br label %49, !dbg !1201

; <label>:21:                                     ; preds = %2
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1202
  %23 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %22, i32 0, i32 2, !dbg !1203
  %24 = load i8*, i8** %23, align 8, !dbg !1203
  %25 = call i64 @strlen(i8* %24) #8, !dbg !1204
  %26 = add i64 2, %25, !dbg !1205
  %27 = trunc i64 %26 to i32, !dbg !1206
  store i32 %27, i32* %5, align 4, !dbg !1207
  br label %49, !dbg !1208

; <label>:28:                                     ; preds = %2, %2
  store i32 6, i32* %5, align 4, !dbg !1209
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1210
  %30 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %29, i32 0, i32 1, !dbg !1212
  %31 = load i8*, i8** %30, align 8, !dbg !1212
  %32 = icmp ne i8* %31, null, !dbg !1213
  br i1 %32, label %33, label %42, !dbg !1214

; <label>:33:                                     ; preds = %28
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1215
  %35 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %34, i32 0, i32 1, !dbg !1217
  %36 = load i8*, i8** %35, align 8, !dbg !1217
  %37 = call i64 @strlen(i8* %36) #8, !dbg !1218
  %38 = load i32, i32* %5, align 4, !dbg !1219
  %39 = sext i32 %38 to i64, !dbg !1219
  %40 = add i64 %39, %37, !dbg !1219
  %41 = trunc i64 %40 to i32, !dbg !1219
  store i32 %41, i32* %5, align 4, !dbg !1219
  br label %42, !dbg !1220

; <label>:42:                                     ; preds = %33, %28
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !1221
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1222
  %45 = call i32 @config_block_get_length(%struct._CONFIG_REC* %43, %struct._CONFIG_NODE* %44), !dbg !1223
  %46 = load i32, i32* %5, align 4, !dbg !1224
  %47 = add nsw i32 %46, %45, !dbg !1224
  store i32 %47, i32* %5, align 4, !dbg !1224
  br label %49, !dbg !1225

; <label>:48:                                     ; preds = %2
  store i32 1000, i32* %5, align 4, !dbg !1226
  br label %49, !dbg !1227

; <label>:49:                                     ; preds = %48, %42, %21, %9
  %50 = load i32, i32* %5, align 4, !dbg !1228
  ret i32 %50, !dbg !1229
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @config_block_get_length(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1230 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !1231, metadata !400), !dbg !1232
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1233, metadata !400), !dbg !1234
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1235, metadata !400), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1237, metadata !400), !dbg !1238
  store i32 0, i32* %7, align 4, !dbg !1239
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1240
  %10 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %9, i32 0, i32 2, !dbg !1242
  %11 = load i8*, i8** %10, align 8, !dbg !1242
  %12 = bitcast i8* %11 to %struct._GSList*, !dbg !1240
  store %struct._GSList* %12, %struct._GSList** %6, align 8, !dbg !1243
  br label %13, !dbg !1244

; <label>:13:                                     ; preds = %31, %2
  %14 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1245
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1248
  br i1 %15, label %16, label %35, !dbg !1249

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !1250, metadata !400), !dbg !1252
  %17 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1253
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1254
  %19 = load i8*, i8** %18, align 8, !dbg !1254
  %20 = bitcast i8* %19 to %struct._CONFIG_NODE*, !dbg !1253
  store %struct._CONFIG_NODE* %20, %struct._CONFIG_NODE** %8, align 8, !dbg !1252
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1255
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1256
  %23 = call i32 @config_node_get_length(%struct._CONFIG_REC* %21, %struct._CONFIG_NODE* %22), !dbg !1257
  %24 = load i32, i32* %7, align 4, !dbg !1258
  %25 = add nsw i32 %24, %23, !dbg !1258
  store i32 %25, i32* %7, align 4, !dbg !1258
  %26 = load i32, i32* %7, align 4, !dbg !1259
  %27 = icmp sgt i32 %26, 70, !dbg !1261
  br i1 %27, label %28, label %30, !dbg !1262

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %7, align 4, !dbg !1263
  store i32 %29, i32* %3, align 4, !dbg !1265
  br label %37, !dbg !1265

; <label>:30:                                     ; preds = %16
  br label %31, !dbg !1266

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1267
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !1269
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !1269
  store %struct._GSList* %34, %struct._GSList** %6, align 8, !dbg !1270
  br label %13, !dbg !1271, !llvm.loop !1272

; <label>:35:                                     ; preds = %13
  %36 = load i32, i32* %7, align 4, !dbg !1274
  store i32 %36, i32* %3, align 4, !dbg !1275
  br label %37, !dbg !1275

; <label>:37:                                     ; preds = %35, %28
  %38 = load i32, i32* %3, align 4, !dbg !1276
  ret i32 %38, !dbg !1276
}

; Function Attrs: nounwind uwtable
define internal i32 @config_write_indent(%struct._CONFIG_REC*) #0 !dbg !1277 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !1280, metadata !400), !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1282, metadata !400), !dbg !1283
  store i32 0, i32* %4, align 4, !dbg !1284
  br label %5, !dbg !1286

; <label>:5:                                      ; preds = %21, %1
  %6 = load i32, i32* %4, align 4, !dbg !1287
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !1290
  %8 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %7, i32 0, i32 9, !dbg !1291
  %9 = load i32, i32* %8, align 8, !dbg !1291
  %10 = sdiv i32 %9, 2, !dbg !1292
  %11 = icmp slt i32 %6, %10, !dbg !1293
  br i1 %11, label %12, label %24, !dbg !1294

; <label>:12:                                     ; preds = %5
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !1295
  %14 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %13, i32 0, i32 8, !dbg !1298
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %14, align 8, !dbg !1298
  %16 = load i8*, i8** @indent_block, align 8, !dbg !1299
  %17 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %15, i8* %16, i64 2, i64* null, %struct._GError** null), !dbg !1300
  %18 = icmp eq i32 %17, 0, !dbg !1301
  br i1 %18, label %19, label %20, !dbg !1302

; <label>:19:                                     ; preds = %12
  store i32 -1, i32* %2, align 4, !dbg !1303
  br label %25, !dbg !1303

; <label>:20:                                     ; preds = %12
  br label %21, !dbg !1304

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %4, align 4, !dbg !1305
  %23 = add nsw i32 %22, 1, !dbg !1305
  store i32 %23, i32* %4, align 4, !dbg !1305
  br label %5, !dbg !1307, !llvm.loop !1308

; <label>:24:                                     ; preds = %5
  store i32 0, i32* %2, align 4, !dbg !1310
  br label %25, !dbg !1310

; <label>:25:                                     ; preds = %24, %19
  %26 = load i32, i32* %2, align 4, !dbg !1311
  ret i32 %26, !dbg !1311
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i32 @g_io_channel_write_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define internal i32 @config_write_word(%struct._CONFIG_REC*, i8*, i32) #0 !dbg !1312 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !1313, metadata !400), !dbg !1314
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1315, metadata !400), !dbg !1316
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1317, metadata !400), !dbg !1318
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1319, metadata !400), !dbg !1320
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1321, metadata !400), !dbg !1322
  br label %10, !dbg !1323, !llvm.loop !1324

; <label>:10:                                     ; preds = %3
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1325
  %12 = icmp ne %struct._CONFIG_REC* %11, null, !dbg !1329
  br i1 %12, label %13, label %14, !dbg !1325

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1330

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_write_word, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1333
  store i32 -1, i32* %4, align 4, !dbg !1336
  br label %42, !dbg !1336

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1337

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1339, !llvm.loop !1340

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1341
  %19 = icmp ne i8* %18, null, !dbg !1345
  br i1 %19, label %20, label %21, !dbg !1341

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1346

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_write_word, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1349
  store i32 -1, i32* %4, align 4, !dbg !1352
  br label %42, !dbg !1352

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1353

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %7, align 4, !dbg !1355
  %25 = icmp ne i32 %24, 0, !dbg !1355
  br i1 %25, label %34, label %26, !dbg !1357

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %6, align 8, !dbg !1358
  %28 = call i32 @config_has_specials(i8* %27), !dbg !1360
  %29 = icmp ne i32 %28, 0, !dbg !1360
  br i1 %29, label %34, label %30, !dbg !1361

; <label>:30:                                     ; preds = %26
  %31 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1362
  %32 = load i8*, i8** %6, align 8, !dbg !1363
  %33 = call i32 @config_write_str(%struct._CONFIG_REC* %31, i8* %32), !dbg !1364
  store i32 %33, i32* %4, align 4, !dbg !1365
  br label %42, !dbg !1365

; <label>:34:                                     ; preds = %26, %23
  %35 = load i8*, i8** %6, align 8, !dbg !1366
  %36 = call i8* @config_escape_string(i8* %35), !dbg !1367
  store i8* %36, i8** %8, align 8, !dbg !1368
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1369
  %38 = load i8*, i8** %8, align 8, !dbg !1370
  %39 = call i32 @config_write_str(%struct._CONFIG_REC* %37, i8* %38), !dbg !1371
  store i32 %39, i32* %9, align 4, !dbg !1372
  %40 = load i8*, i8** %8, align 8, !dbg !1373
  call void @g_free(i8* %40), !dbg !1374
  %41 = load i32, i32* %9, align 4, !dbg !1375
  store i32 %41, i32* %4, align 4, !dbg !1376
  br label %42, !dbg !1376

; <label>:42:                                     ; preds = %34, %30, %21, %14
  %43 = load i32, i32* %4, align 4, !dbg !1377
  ret i32 %43, !dbg !1377
}

; Function Attrs: nounwind uwtable
define internal i32 @config_has_specials(i8*) #0 !dbg !1378 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1381, metadata !400), !dbg !1382
  br label %4, !dbg !1383, !llvm.loop !1384

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %3, align 8, !dbg !1385
  %6 = icmp ne i8* %5, null, !dbg !1389
  br i1 %6, label %7, label %8, !dbg !1385

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1390

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.config_has_specials, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)), !dbg !1393
  store i32 0, i32* %2, align 4, !dbg !1396
  br label %38, !dbg !1396

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1397

; <label>:10:                                     ; preds = %9
  br label %11, !dbg !1399

; <label>:11:                                     ; preds = %34, %10
  %12 = load i8*, i8** %3, align 8, !dbg !1400
  %13 = load i8, i8* %12, align 1, !dbg !1402
  %14 = sext i8 %13 to i32, !dbg !1402
  %15 = icmp ne i32 %14, 0, !dbg !1403
  br i1 %15, label %16, label %37, !dbg !1404

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %3, align 8, !dbg !1405
  %18 = load i8, i8* %17, align 1, !dbg !1408
  %19 = zext i8 %18 to i32, !dbg !1409
  %20 = sext i32 %19 to i64, !dbg !1410
  %21 = call i16** @__ctype_b_loc() #1, !dbg !1411
  %22 = load i16*, i16** %21, align 8, !dbg !1412
  %23 = getelementptr inbounds i16, i16* %22, i64 %20, !dbg !1410
  %24 = load i16, i16* %23, align 2, !dbg !1410
  %25 = zext i16 %24 to i32, !dbg !1410
  %26 = and i32 %25, 8, !dbg !1413
  %27 = icmp ne i32 %26, 0, !dbg !1413
  br i1 %27, label %34, label %28, !dbg !1414

; <label>:28:                                     ; preds = %16
  %29 = load i8*, i8** %3, align 8, !dbg !1415
  %30 = load i8, i8* %29, align 1, !dbg !1417
  %31 = sext i8 %30 to i32, !dbg !1417
  %32 = icmp ne i32 %31, 95, !dbg !1418
  br i1 %32, label %33, label %34, !dbg !1419

; <label>:33:                                     ; preds = %28
  store i32 1, i32* %2, align 4, !dbg !1420
  br label %38, !dbg !1420

; <label>:34:                                     ; preds = %28, %16
  %35 = load i8*, i8** %3, align 8, !dbg !1421
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !1421
  store i8* %36, i8** %3, align 8, !dbg !1421
  br label %11, !dbg !1422, !llvm.loop !1424

; <label>:37:                                     ; preds = %11
  store i32 0, i32* %2, align 4, !dbg !1425
  br label %38, !dbg !1425

; <label>:38:                                     ; preds = %37, %33, %8
  %39 = load i32, i32* %2, align 4, !dbg !1426
  ret i32 %39, !dbg !1426
}

; Function Attrs: nounwind uwtable
define internal i8* @config_escape_string(i8*) #0 !dbg !1427 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1430, metadata !400), !dbg !1431
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1432, metadata !400), !dbg !1433
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1434, metadata !400), !dbg !1435
  br label %6, !dbg !1436, !llvm.loop !1437

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !1438
  %8 = icmp ne i8* %7, null, !dbg !1442
  br i1 %8, label %9, label %10, !dbg !1438

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1443

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.config_escape_string, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)), !dbg !1446
  store i8* null, i8** %2, align 8, !dbg !1449
  br label %62, !dbg !1449

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1450

; <label>:12:                                     ; preds = %11
  %13 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1452
  store %struct._GString* %13, %struct._GString** %4, align 8, !dbg !1453
  br label %14, !dbg !1454

; <label>:14:                                     ; preds = %50, %12
  %15 = load i8*, i8** %3, align 8, !dbg !1455
  %16 = load i8, i8* %15, align 1, !dbg !1457
  %17 = sext i8 %16 to i32, !dbg !1457
  %18 = icmp ne i32 %17, 0, !dbg !1458
  br i1 %18, label %19, label %53, !dbg !1459

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %3, align 8, !dbg !1460
  %21 = load i8, i8* %20, align 1, !dbg !1463
  %22 = sext i8 %21 to i32, !dbg !1463
  %23 = icmp eq i32 %22, 92, !dbg !1464
  br i1 %23, label %29, label %24, !dbg !1465

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %3, align 8, !dbg !1466
  %26 = load i8, i8* %25, align 1, !dbg !1468
  %27 = sext i8 %26 to i32, !dbg !1468
  %28 = icmp eq i32 %27, 34, !dbg !1469
  br i1 %28, label %29, label %34, !dbg !1470

; <label>:29:                                     ; preds = %24, %19
  %30 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1471
  %31 = load i8*, i8** %3, align 8, !dbg !1472
  %32 = load i8, i8* %31, align 1, !dbg !1473
  %33 = sext i8 %32 to i32, !dbg !1473
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %33), !dbg !1474
  br label %50, !dbg !1474

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %3, align 8, !dbg !1475
  %36 = load i8, i8* %35, align 1, !dbg !1477
  %37 = zext i8 %36 to i32, !dbg !1478
  %38 = icmp slt i32 %37, 32, !dbg !1479
  br i1 %38, label %39, label %44, !dbg !1480

; <label>:39:                                     ; preds = %34
  %40 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1481
  %41 = load i8*, i8** %3, align 8, !dbg !1482
  %42 = load i8, i8* %41, align 1, !dbg !1483
  %43 = sext i8 %42 to i32, !dbg !1483
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %43), !dbg !1484
  br label %49, !dbg !1484

; <label>:44:                                     ; preds = %34
  %45 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1485
  %46 = load i8*, i8** %3, align 8, !dbg !1486
  %47 = load i8, i8* %46, align 1, !dbg !1487
  %48 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %45, i8 signext %47), !dbg !1488
  br label %49

; <label>:49:                                     ; preds = %44, %39
  br label %50

; <label>:50:                                     ; preds = %49, %29
  %51 = load i8*, i8** %3, align 8, !dbg !1489
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !1489
  store i8* %52, i8** %3, align 8, !dbg !1489
  br label %14, !dbg !1490, !llvm.loop !1492

; <label>:53:                                     ; preds = %14
  %54 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1493
  %55 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %54, i8 signext 34), !dbg !1494
  %56 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1495
  %57 = getelementptr inbounds %struct._GString, %struct._GString* %56, i32 0, i32 0, !dbg !1496
  %58 = load i8*, i8** %57, align 8, !dbg !1496
  store i8* %58, i8** %5, align 8, !dbg !1497
  %59 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1498
  %60 = call i8* @g_string_free(%struct._GString* %59, i32 0), !dbg !1499
  %61 = load i8*, i8** %5, align 8, !dbg !1500
  store i8* %61, i8** %2, align 8, !dbg !1501
  br label %62, !dbg !1501

; <label>:62:                                     ; preds = %53, %10
  %63 = load i8*, i8** %2, align 8, !dbg !1502
  ret i8* %63, !dbg !1502
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #6 !dbg !1503 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1506, metadata !400), !dbg !1507
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1508, metadata !400), !dbg !1509
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1510
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1512
  %7 = load i64, i64* %6, align 8, !dbg !1512
  %8 = add i64 %7, 1, !dbg !1513
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1514
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1515
  %11 = load i64, i64* %10, align 8, !dbg !1515
  %12 = icmp ult i64 %8, %11, !dbg !1516
  br i1 %12, label %13, label %30, !dbg !1517

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1518
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1520
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1521
  %17 = load i64, i64* %16, align 8, !dbg !1522
  %18 = add i64 %17, 1, !dbg !1522
  store i64 %18, i64* %16, align 8, !dbg !1522
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1523
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1524
  %21 = load i8*, i8** %20, align 8, !dbg !1524
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1523
  store i8 %14, i8* %22, align 1, !dbg !1525
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1526
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1527
  %25 = load i64, i64* %24, align 8, !dbg !1527
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1528
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1529
  %28 = load i8*, i8** %27, align 8, !dbg !1529
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1528
  store i8 0, i8* %29, align 1, !dbg !1530
  br label %34, !dbg !1531

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1532
  %32 = load i8, i8* %4, align 1, !dbg !1533
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1534
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1535
  ret %struct._GString* %35, !dbg !1536
}

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !85, globals: !96)
!1 = !DIFile(filename: "line12-write.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !30, !37, !42, !51, !62, !70}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 75, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!6 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!7 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!8 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!9 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!10 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!11 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!12 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!13 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!14 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!15 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!16 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!17 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!18 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!19 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!20 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!21 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!22 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!23 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!24 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!25 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!26 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!27 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!28 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!29 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 69, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!34 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!35 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!36 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 77, size: 32, align: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!40 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!41 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 31, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "G_IO_IN", value: 1)
!46 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!47 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!48 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!49 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!50 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 84, size: 32, align: 32, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!54 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!55 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!56 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!57 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!58 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!59 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!60 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!61 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 4, size: 32, align: 32, elements: !64)
!63 = !DIFile(filename: "iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!66 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!67 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!68 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!69 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 46, size: 32, align: 32, elements: !72)
!71 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!73 = !DIEnumerator(name: "_ISupper", value: 256)
!74 = !DIEnumerator(name: "_ISlower", value: 512)
!75 = !DIEnumerator(name: "_ISalpha", value: 1024)
!76 = !DIEnumerator(name: "_ISdigit", value: 2048)
!77 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!78 = !DIEnumerator(name: "_ISspace", value: 8192)
!79 = !DIEnumerator(name: "_ISprint", value: 16384)
!80 = !DIEnumerator(name: "_ISgraph", value: 32768)
!81 = !DIEnumerator(name: "_ISblank", value: 1)
!82 = !DIEnumerator(name: "_IScntrl", value: 2)
!83 = !DIEnumerator(name: "_ISpunct", value: 4)
!84 = !DIEnumerator(name: "_ISalnum", value: 8)
!85 = !{!86, !87, !91, !93, !94, !95}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !89, line: 46, baseType: !90)
!89 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!90 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!93 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!94 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!96 = !{!97}
!97 = distinct !DIGlobalVariable(name: "indent_block", scope: !0, file: !98, line: 27, type: !91, isLocal: true, isDefinition: true, variable: i8** @indent_block)
!98 = !DIFile(filename: "write.c", directory: "/home/lichi/Desktop/irssi/task1")
!99 = !{i32 2, !"Dwarf Version", i32 4}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!102 = distinct !DISubprogram(name: "config_write", scope: !98, file: !98, line: 300, type: !103, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!103 = !DISubroutineType(types: !104)
!104 = !{!93, !105, !91, !93}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !63, line: 18, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !63, line: 49, size: 576, align: 64, elements: !108)
!108 = !{!109, !111, !112, !113, !114, !122, !127, !128, !223, !396, !397}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !107, file: !63, line: 50, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !107, file: !63, line: 51, baseType: !93, size: 32, align: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !107, file: !63, line: 52, baseType: !93, size: 32, align: 32, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !107, file: !63, line: 54, baseType: !110, size: 64, align: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !107, file: !63, line: 55, baseType: !115, size: 64, align: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !63, line: 17, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !63, line: 20, size: 192, align: 64, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !63, line: 21, baseType: !93, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !117, file: !63, line: 22, baseType: !110, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !117, file: !63, line: 23, baseType: !86, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !107, file: !63, line: 56, baseType: !123, size: 64, align: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !125, line: 37, baseType: !126)
!125 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !125, line: 37, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !107, file: !63, line: 57, baseType: !123, size: 64, align: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !107, file: !63, line: 59, baseType: !129, size: 64, align: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !4, line: 37, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !4, line: 169, size: 1152, align: 64, elements: !132)
!132 = !{!133, !135, !138, !139, !142, !147, !179, !181, !204, !205, !206, !207, !208, !209, !210, !211, !213, !214, !215, !216, !217}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !131, file: !4, line: 172, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !89, line: 77, baseType: !86)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !131, file: !4, line: 173, baseType: !136, size: 32, align: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !89, line: 55, baseType: !137)
!137 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !131, file: !4, line: 176, baseType: !136, size: 32, align: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !131, file: !4, line: 179, baseType: !140, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !131, file: !4, line: 182, baseType: !143, size: 64, align: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !145, line: 36, baseType: !146)
!145 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !145, line: 36, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !131, file: !4, line: 185, baseType: !148, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !4, line: 38, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !4, line: 127, size: 320, align: 64, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !150, file: !4, line: 131, baseType: !87, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !150, file: !4, line: 132, baseType: !87, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !150, file: !4, line: 133, baseType: !87, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !150, file: !4, line: 134, baseType: !87, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !150, file: !4, line: 138, baseType: !136, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !150, file: !4, line: 143, baseType: !136, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !150, file: !4, line: 144, baseType: !136, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !150, file: !4, line: 145, baseType: !136, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !150, file: !4, line: 146, baseType: !136, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !150, file: !4, line: 147, baseType: !136, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !150, file: !4, line: 148, baseType: !136, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !150, file: !4, line: 149, baseType: !136, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !150, file: !4, line: 150, baseType: !136, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !150, file: !4, line: 151, baseType: !136, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !150, file: !4, line: 152, baseType: !136, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !150, file: !4, line: 153, baseType: !136, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !150, file: !4, line: 154, baseType: !136, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !150, file: !4, line: 155, baseType: !136, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !150, file: !4, line: 156, baseType: !136, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !150, file: !4, line: 157, baseType: !136, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !150, file: !4, line: 158, baseType: !136, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !150, file: !4, line: 159, baseType: !136, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !150, file: !4, line: 160, baseType: !136, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !150, file: !4, line: 161, baseType: !136, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !150, file: !4, line: 162, baseType: !136, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !150, file: !4, line: 163, baseType: !136, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !150, file: !4, line: 166, baseType: !136, size: 32, align: 32, offset: 288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !131, file: !4, line: 188, baseType: !180, size: 32, align: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !4, line: 109, baseType: !3)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !4, line: 189, baseType: !182, size: 64, align: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !4, line: 39, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !4, line: 111, size: 64, align: 64, elements: !184)
!184 = !{!185, !186, !187, !190, !191, !192, !195, !198, !199, !200, !201, !203}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !183, file: !4, line: 113, baseType: !134, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !183, file: !4, line: 114, baseType: !87, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !183, file: !4, line: 115, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !89, line: 54, baseType: !189)
!189 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !183, file: !4, line: 116, baseType: !188, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !183, file: !4, line: 117, baseType: !188, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !183, file: !4, line: 118, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !194, line: 52, baseType: !189)
!194 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !183, file: !4, line: 119, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !89, line: 58, baseType: !197)
!197 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !183, file: !4, line: 120, baseType: !188, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !183, file: !4, line: 121, baseType: !87, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !183, file: !4, line: 122, baseType: !87, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !183, file: !4, line: 123, baseType: !202, size: 8, align: 8)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !89, line: 52, baseType: !94)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !183, file: !4, line: 124, baseType: !136, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !131, file: !4, line: 190, baseType: !136, size: 32, align: 32, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !131, file: !4, line: 191, baseType: !136, size: 32, align: 32, offset: 480)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !131, file: !4, line: 194, baseType: !180, size: 32, align: 32, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !131, file: !4, line: 195, baseType: !182, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !131, file: !4, line: 196, baseType: !136, size: 32, align: 32, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !131, file: !4, line: 197, baseType: !136, size: 32, align: 32, offset: 672)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !131, file: !4, line: 201, baseType: !123, size: 64, align: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !131, file: !4, line: 202, baseType: !212, size: 32, align: 32, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !89, line: 49, baseType: !93)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !131, file: !4, line: 203, baseType: !140, size: 64, align: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !131, file: !4, line: 204, baseType: !140, size: 64, align: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !131, file: !4, line: 205, baseType: !87, size: 64, align: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !131, file: !4, line: 206, baseType: !136, size: 32, align: 32, offset: 1024)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !131, file: !4, line: 210, baseType: !218, size: 64, align: 64, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !4, line: 41, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !129, !87, !222}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !89, line: 50, baseType: !212)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !107, file: !63, line: 62, baseType: !224, size: 64, align: 64, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !31, line: 41, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !31, line: 97, size: 896, align: 64, elements: !227)
!227 = !{!228, !229, !363, !364, !369, !370, !371, !372, !373, !382, !383, !384, !388, !389, !390, !391, !392, !393, !394, !395}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !226, file: !31, line: 100, baseType: !212, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !226, file: !31, line: 101, baseType: !230, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !31, line: 42, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !31, line: 131, size: 512, align: 64, elements: !233)
!233 = !{!234, !253, !257, !264, !268, !350, !354, !359}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !232, file: !31, line: 133, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !224, !87, !239, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !31, line: 75, baseType: !30)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !194, line: 66, baseType: !189)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !244, line: 42, baseType: !245)
!244 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !244, line: 44, size: 128, align: 64, elements: !246)
!246 = !{!247, !251, !252}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !245, file: !244, line: 46, baseType: !248, size: 32, align: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !249, line: 36, baseType: !250)
!249 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !194, line: 45, baseType: !137)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !245, file: !244, line: 47, baseType: !212, size: 32, align: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !245, file: !244, line: 48, baseType: !87, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !232, file: !31, line: 138, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!238, !224, !140, !239, !240, !241}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !232, file: !31, line: 143, baseType: !258, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!238, !224, !261, !263, !241}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !194, line: 51, baseType: !262)
!262 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !31, line: 82, baseType: !37)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !232, file: !31, line: 147, baseType: !265, size: 64, align: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!238, !224, !241}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !232, file: !31, line: 149, baseType: !269, size: 64, align: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !224, !349}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !43, line: 64, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !43, line: 171, size: 768, align: 64, elements: !275)
!275 = !{!276, !277, !297, !326, !327, !331, !332, !333, !334, !342, !343, !344, !345}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !274, file: !43, line: 174, baseType: !134, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !274, file: !43, line: 175, baseType: !278, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !43, line: 77, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !43, line: 196, size: 192, align: 64, elements: !281)
!281 = !{!282, !286, !287}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !280, file: !43, line: 198, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !134}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !280, file: !43, line: 199, baseType: !283, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !280, file: !43, line: 200, baseType: !288, size: 64, align: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !134, !272, !291, !296}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !43, line: 155, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!222, !134}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !274, file: !43, line: 177, baseType: !298, size: 64, align: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !43, line: 130, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !43, line: 214, size: 384, align: 64, elements: !302)
!302 = !{!303, !308, !312, !316, !320, !321}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !301, file: !43, line: 216, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!222, !272, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !301, file: !43, line: 218, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!222, !272}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !301, file: !43, line: 219, baseType: !313, size: 64, align: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!222, !272, !292, !134}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !301, file: !43, line: 222, baseType: !317, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !272}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !301, file: !43, line: 226, baseType: !292, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !301, file: !43, line: 227, baseType: !322, size: 64, align: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !43, line: 212, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !274, file: !43, line: 178, baseType: !136, size: 32, align: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !274, file: !43, line: 180, baseType: !328, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !43, line: 48, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !43, line: 48, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !274, file: !43, line: 182, baseType: !212, size: 32, align: 32, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !43, line: 183, baseType: !136, size: 32, align: 32, offset: 352)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !274, file: !43, line: 184, baseType: !136, size: 32, align: 32, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !274, file: !43, line: 186, baseType: !335, size: 64, align: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !337, line: 37, baseType: !338)
!337 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !337, line: 39, size: 128, align: 64, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !338, file: !337, line: 41, baseType: !134, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !337, line: 42, baseType: !335, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !43, line: 188, baseType: !272, size: 64, align: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !43, line: 189, baseType: !272, size: 64, align: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !43, line: 191, baseType: !110, size: 64, align: 64, offset: 640)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !274, file: !43, line: 193, baseType: !346, size: 64, align: 64, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !43, line: 65, baseType: !348)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !43, line: 65, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !43, line: 39, baseType: !42)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !232, file: !31, line: 151, baseType: !351, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !224}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !232, file: !31, line: 152, baseType: !355, size: 64, align: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!238, !224, !358, !241}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !31, line: 95, baseType: !51)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !232, file: !31, line: 155, baseType: !360, size: 64, align: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!358, !224}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !226, file: !31, line: 103, baseType: !87, size: 64, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !226, file: !31, line: 104, baseType: !365, size: 64, align: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !366, line: 77, baseType: !367)
!366 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !366, line: 77, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !226, file: !31, line: 105, baseType: !365, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !226, file: !31, line: 106, baseType: !87, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !226, file: !31, line: 107, baseType: !136, size: 32, align: 32, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !226, file: !31, line: 109, baseType: !239, size: 64, align: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !226, file: !31, line: 110, baseType: !374, size: 64, align: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !376, line: 39, baseType: !377)
!376 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !376, line: 41, size: 192, align: 64, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !377, file: !376, line: 43, baseType: !87, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !377, file: !376, line: 44, baseType: !239, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !377, file: !376, line: 45, baseType: !239, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !226, file: !31, line: 111, baseType: !374, size: 64, align: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !226, file: !31, line: 112, baseType: !374, size: 64, align: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !226, file: !31, line: 113, baseType: !385, size: 48, align: 8, offset: 704)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 48, align: 8, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 6)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !226, file: !31, line: 117, baseType: !136, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !226, file: !31, line: 118, baseType: !136, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !226, file: !31, line: 119, baseType: !136, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !226, file: !31, line: 120, baseType: !136, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !226, file: !31, line: 121, baseType: !136, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !226, file: !31, line: 122, baseType: !136, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !226, file: !31, line: 124, baseType: !134, size: 64, align: 64, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !226, file: !31, line: 125, baseType: !134, size: 64, align: 64, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !107, file: !63, line: 63, baseType: !93, size: 32, align: 32, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !107, file: !63, line: 64, baseType: !93, size: 32, align: 32, offset: 544)
!398 = !{}
!399 = !DILocalVariable(name: "rec", arg: 1, scope: !102, file: !98, line: 300, type: !105)
!400 = !DIExpression()
!401 = !DILocation(line: 300, column: 30, scope: !102)
!402 = !DILocalVariable(name: "fname", arg: 2, scope: !102, file: !98, line: 300, type: !91)
!403 = !DILocation(line: 300, column: 47, scope: !102)
!404 = !DILocalVariable(name: "create_mode", arg: 3, scope: !102, file: !98, line: 300, type: !93)
!405 = !DILocation(line: 300, column: 58, scope: !102)
!406 = !DILocalVariable(name: "ret", scope: !102, file: !98, line: 302, type: !93)
!407 = !DILocation(line: 302, column: 6, scope: !102)
!408 = !DILocalVariable(name: "fd", scope: !102, file: !98, line: 303, type: !93)
!409 = !DILocation(line: 303, column: 6, scope: !102)
!410 = !DILocalVariable(name: "save_errno", scope: !102, file: !98, line: 304, type: !93)
!411 = !DILocation(line: 304, column: 6, scope: !102)
!412 = !DILocalVariable(name: "base_name", scope: !102, file: !98, line: 305, type: !91)
!413 = !DILocation(line: 305, column: 14, scope: !102)
!414 = !DILocalVariable(name: "tmp_name", scope: !102, file: !98, line: 306, type: !110)
!415 = !DILocation(line: 306, column: 8, scope: !102)
!416 = !DILocalVariable(name: "dest_name", scope: !102, file: !98, line: 307, type: !110)
!417 = !DILocation(line: 307, column: 8, scope: !102)
!418 = !DILocation(line: 309, column: 2, scope: !102)
!419 = distinct !{!419, !418}
!420 = !DILocation(line: 309, column: 10, scope: !421)
!421 = !DILexicalBlockFile(scope: !422, file: !98, discriminator: 1)
!422 = distinct !DILexicalBlock(scope: !423, file: !98, line: 309, column: 10)
!423 = distinct !DILexicalBlock(scope: !102, file: !98, line: 309, column: 4)
!424 = !DILocation(line: 309, column: 14, scope: !421)
!425 = !DILocation(line: 309, column: 5, scope: !426)
!426 = !DILexicalBlockFile(scope: !427, file: !98, discriminator: 2)
!427 = distinct !DILexicalBlock(scope: !422, file: !98, line: 309, column: 3)
!428 = !DILocation(line: 309, column: 14, scope: !429)
!429 = !DILexicalBlockFile(scope: !430, file: !98, discriminator: 3)
!430 = distinct !DILexicalBlock(scope: !422, file: !98, line: 309, column: 12)
!431 = !DILocation(line: 309, column: 98, scope: !429)
!432 = !DILocation(line: 309, column: 114, scope: !433)
!433 = !DILexicalBlockFile(scope: !423, file: !98, discriminator: 4)
!434 = !DILocation(line: 310, column: 9, scope: !102)
!435 = distinct !{!435, !434}
!436 = !DILocation(line: 310, column: 17, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !98, discriminator: 1)
!438 = distinct !DILexicalBlock(scope: !439, file: !98, line: 310, column: 17)
!439 = distinct !DILexicalBlock(scope: !102, file: !98, line: 310, column: 11)
!440 = !DILocation(line: 310, column: 23, scope: !437)
!441 = !DILocation(line: 310, column: 8, scope: !437)
!442 = !DILocation(line: 310, column: 11, scope: !443)
!443 = !DILexicalBlockFile(scope: !438, file: !98, discriminator: 2)
!444 = !DILocation(line: 310, column: 16, scope: !443)
!445 = !DILocation(line: 310, column: 22, scope: !443)
!446 = !DILocation(line: 310, column: 17, scope: !443)
!447 = !DILocation(line: 310, column: 12, scope: !448)
!448 = !DILexicalBlockFile(scope: !449, file: !98, discriminator: 3)
!449 = distinct !DILexicalBlock(scope: !438, file: !98, line: 310, column: 10)
!450 = !DILocation(line: 310, column: 21, scope: !451)
!451 = !DILexicalBlockFile(scope: !452, file: !98, discriminator: 4)
!452 = distinct !DILexicalBlock(scope: !438, file: !98, line: 310, column: 19)
!453 = !DILocation(line: 310, column: 129, scope: !451)
!454 = !DILocation(line: 310, column: 145, scope: !455)
!455 = !DILexicalBlockFile(scope: !439, file: !98, discriminator: 5)
!456 = !DILocation(line: 311, column: 9, scope: !102)
!457 = distinct !{!457, !456}
!458 = !DILocation(line: 311, column: 17, scope: !459)
!459 = !DILexicalBlockFile(scope: !460, file: !98, discriminator: 1)
!460 = distinct !DILexicalBlock(scope: !461, file: !98, line: 311, column: 17)
!461 = distinct !DILexicalBlock(scope: !102, file: !98, line: 311, column: 11)
!462 = !DILocation(line: 311, column: 29, scope: !459)
!463 = !DILocation(line: 311, column: 35, scope: !459)
!464 = !DILocation(line: 311, column: 38, scope: !465)
!465 = !DILexicalBlockFile(scope: !460, file: !98, discriminator: 2)
!466 = !DILocation(line: 311, column: 43, scope: !465)
!467 = !DILocation(line: 311, column: 55, scope: !465)
!468 = !DILocation(line: 311, column: 17, scope: !465)
!469 = !DILocation(line: 311, column: 64, scope: !470)
!470 = !DILexicalBlockFile(scope: !471, file: !98, discriminator: 3)
!471 = distinct !DILexicalBlock(scope: !460, file: !98, line: 311, column: 62)
!472 = !DILocation(line: 311, column: 73, scope: !473)
!473 = !DILexicalBlockFile(scope: !474, file: !98, discriminator: 4)
!474 = distinct !DILexicalBlock(scope: !460, file: !98, line: 311, column: 71)
!475 = !DILocation(line: 311, column: 189, scope: !473)
!476 = !DILocation(line: 311, column: 205, scope: !477)
!477 = !DILexicalBlockFile(scope: !461, file: !98, discriminator: 5)
!478 = !DILocation(line: 313, column: 14, scope: !102)
!479 = !DILocation(line: 313, column: 20, scope: !102)
!480 = !DILocation(line: 313, column: 29, scope: !481)
!481 = !DILexicalBlockFile(scope: !102, file: !98, discriminator: 1)
!482 = !DILocation(line: 313, column: 14, scope: !481)
!483 = !DILocation(line: 313, column: 37, scope: !484)
!484 = !DILexicalBlockFile(scope: !102, file: !98, discriminator: 2)
!485 = !DILocation(line: 313, column: 42, scope: !484)
!486 = !DILocation(line: 313, column: 14, scope: !484)
!487 = !DILocation(line: 313, column: 14, scope: !488)
!488 = !DILexicalBlockFile(scope: !102, file: !98, discriminator: 3)
!489 = !DILocation(line: 313, column: 12, scope: !488)
!490 = !DILocation(line: 316, column: 23, scope: !102)
!491 = !DILocation(line: 316, column: 14, scope: !102)
!492 = !DILocation(line: 316, column: 12, scope: !102)
!493 = !DILocation(line: 318, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !102, file: !98, line: 318, column: 6)
!495 = !DILocation(line: 318, column: 16, scope: !494)
!496 = !DILocation(line: 318, column: 6, scope: !102)
!497 = !DILocation(line: 319, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !98, line: 319, column: 6)
!499 = distinct !DILexicalBlock(scope: !494, file: !98, line: 318, column: 24)
!500 = !DILocation(line: 319, column: 7, scope: !498)
!501 = !DILocation(line: 319, column: 12, scope: !498)
!502 = !DILocation(line: 319, column: 6, scope: !499)
!503 = !DILocation(line: 320, column: 25, scope: !504)
!504 = distinct !DILexicalBlock(scope: !498, file: !98, line: 319, column: 23)
!505 = !DILocation(line: 320, column: 16, scope: !504)
!506 = !DILocation(line: 320, column: 14, scope: !504)
!507 = !DILocation(line: 321, column: 5, scope: !504)
!508 = !DILocation(line: 321, column: 9, scope: !504)
!509 = !DILocation(line: 322, column: 3, scope: !504)
!510 = !DILocation(line: 323, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !498, file: !98, line: 322, column: 10)
!512 = !DILocation(line: 323, column: 34, scope: !511)
!513 = !DILocation(line: 323, column: 33, scope: !511)
!514 = !DILocation(line: 323, column: 22, scope: !515)
!515 = !DILexicalBlockFile(scope: !511, file: !98, discriminator: 1)
!516 = !DILocation(line: 323, column: 4, scope: !517)
!517 = !DILexicalBlockFile(scope: !511, file: !98, discriminator: 2)
!518 = !DILocation(line: 324, column: 8, scope: !511)
!519 = !DILocation(line: 325, column: 4, scope: !511)
!520 = !DILocation(line: 327, column: 2, scope: !499)
!521 = !DILocation(line: 329, column: 42, scope: !102)
!522 = !DILocation(line: 329, column: 13, scope: !102)
!523 = !DILocation(line: 329, column: 11, scope: !102)
!524 = !DILocation(line: 331, column: 22, scope: !102)
!525 = !DILocation(line: 333, column: 7, scope: !102)
!526 = !DILocation(line: 333, column: 19, scope: !102)
!527 = !DILocation(line: 333, column: 27, scope: !481)
!528 = !DILocation(line: 333, column: 7, scope: !481)
!529 = !DILocation(line: 333, column: 41, scope: !484)
!530 = !DILocation(line: 333, column: 46, scope: !484)
!531 = !DILocation(line: 333, column: 7, scope: !484)
!532 = !DILocation(line: 333, column: 7, scope: !488)
!533 = !DILocation(line: 331, column: 7, scope: !481)
!534 = !DILocation(line: 331, column: 5, scope: !481)
!535 = !DILocation(line: 334, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !102, file: !98, line: 334, column: 6)
!537 = !DILocation(line: 334, column: 9, scope: !536)
!538 = !DILocation(line: 334, column: 6, scope: !102)
!539 = !DILocation(line: 335, column: 16, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !98, line: 334, column: 16)
!541 = !DILocation(line: 335, column: 33, scope: !540)
!542 = !DILocation(line: 335, column: 32, scope: !540)
!543 = !DILocation(line: 335, column: 21, scope: !544)
!544 = !DILexicalBlockFile(scope: !540, file: !98, discriminator: 1)
!545 = !DILocation(line: 335, column: 3, scope: !546)
!546 = !DILexicalBlockFile(scope: !540, file: !98, discriminator: 2)
!547 = !DILocation(line: 336, column: 7, scope: !540)
!548 = !DILocation(line: 337, column: 3, scope: !540)
!549 = !DILocation(line: 340, column: 38, scope: !102)
!550 = !DILocation(line: 340, column: 16, scope: !102)
!551 = !DILocation(line: 340, column: 2, scope: !102)
!552 = !DILocation(line: 340, column: 7, scope: !102)
!553 = !DILocation(line: 340, column: 14, scope: !102)
!554 = !DILocation(line: 341, column: 28, scope: !102)
!555 = !DILocation(line: 341, column: 33, scope: !102)
!556 = !DILocation(line: 341, column: 2, scope: !102)
!557 = !DILocation(line: 342, column: 34, scope: !102)
!558 = !DILocation(line: 342, column: 39, scope: !102)
!559 = !DILocation(line: 342, column: 2, scope: !102)
!560 = !DILocation(line: 344, column: 2, scope: !102)
!561 = !DILocation(line: 344, column: 7, scope: !102)
!562 = !DILocation(line: 344, column: 24, scope: !102)
!563 = !DILocation(line: 345, column: 2, scope: !102)
!564 = !DILocation(line: 345, column: 7, scope: !102)
!565 = !DILocation(line: 345, column: 19, scope: !102)
!566 = !DILocation(line: 346, column: 34, scope: !102)
!567 = !DILocation(line: 346, column: 39, scope: !102)
!568 = !DILocation(line: 346, column: 44, scope: !102)
!569 = !DILocation(line: 346, column: 15, scope: !102)
!570 = !DILocation(line: 346, column: 13, scope: !102)
!571 = !DILocation(line: 347, column: 16, scope: !102)
!572 = !DILocation(line: 347, column: 15, scope: !102)
!573 = !DILocation(line: 347, column: 13, scope: !102)
!574 = !DILocation(line: 349, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !102, file: !98, line: 349, column: 6)
!576 = !DILocation(line: 349, column: 10, scope: !575)
!577 = !DILocation(line: 349, column: 6, scope: !102)
!578 = !DILocation(line: 351, column: 10, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !98, line: 349, column: 17)
!580 = !DILocation(line: 351, column: 3, scope: !579)
!581 = !DILocation(line: 352, column: 16, scope: !579)
!582 = !DILocation(line: 352, column: 21, scope: !579)
!583 = !DILocation(line: 352, column: 32, scope: !579)
!584 = !DILocation(line: 352, column: 21, scope: !585)
!585 = !DILexicalBlockFile(scope: !579, file: !98, discriminator: 1)
!586 = !DILocation(line: 352, column: 58, scope: !587)
!587 = !DILexicalBlockFile(scope: !579, file: !98, discriminator: 2)
!588 = !DILocation(line: 352, column: 47, scope: !587)
!589 = !DILocation(line: 352, column: 21, scope: !587)
!590 = !DILocation(line: 352, column: 21, scope: !591)
!591 = !DILexicalBlockFile(scope: !579, file: !98, discriminator: 3)
!592 = !DILocation(line: 352, column: 3, scope: !591)
!593 = !DILocation(line: 353, column: 3, scope: !579)
!594 = !DILocation(line: 356, column: 14, scope: !102)
!595 = !DILocation(line: 356, column: 8, scope: !102)
!596 = !DILocation(line: 356, column: 6, scope: !102)
!597 = !DILocation(line: 357, column: 16, scope: !102)
!598 = !DILocation(line: 357, column: 15, scope: !102)
!599 = !DILocation(line: 357, column: 13, scope: !102)
!600 = !DILocation(line: 359, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !102, file: !98, line: 359, column: 6)
!602 = !DILocation(line: 359, column: 10, scope: !601)
!603 = !DILocation(line: 359, column: 6, scope: !102)
!604 = !DILocation(line: 360, column: 10, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !98, line: 359, column: 17)
!606 = !DILocation(line: 360, column: 3, scope: !605)
!607 = !DILocation(line: 361, column: 16, scope: !605)
!608 = !DILocation(line: 361, column: 33, scope: !605)
!609 = !DILocation(line: 361, column: 32, scope: !605)
!610 = !DILocation(line: 361, column: 21, scope: !611)
!611 = !DILexicalBlockFile(scope: !605, file: !98, discriminator: 1)
!612 = !DILocation(line: 361, column: 3, scope: !613)
!613 = !DILexicalBlockFile(scope: !605, file: !98, discriminator: 2)
!614 = !DILocation(line: 362, column: 3, scope: !605)
!615 = !DILocation(line: 365, column: 21, scope: !102)
!616 = !DILocation(line: 365, column: 26, scope: !102)
!617 = !DILocation(line: 365, column: 2, scope: !102)
!618 = !DILocation(line: 366, column: 2, scope: !102)
!619 = !DILocation(line: 366, column: 7, scope: !102)
!620 = !DILocation(line: 366, column: 14, scope: !102)
!621 = !DILocation(line: 368, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !102, file: !98, line: 368, column: 6)
!623 = !DILocation(line: 368, column: 23, scope: !622)
!624 = !DILocation(line: 368, column: 6, scope: !622)
!625 = !DILocation(line: 368, column: 34, scope: !622)
!626 = !DILocation(line: 368, column: 6, scope: !102)
!627 = !DILocation(line: 369, column: 10, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !98, line: 368, column: 41)
!629 = !DILocation(line: 369, column: 3, scope: !628)
!630 = !DILocation(line: 370, column: 16, scope: !628)
!631 = !DILocation(line: 370, column: 33, scope: !628)
!632 = !DILocation(line: 370, column: 32, scope: !628)
!633 = !DILocation(line: 370, column: 21, scope: !634)
!634 = !DILexicalBlockFile(scope: !628, file: !98, discriminator: 1)
!635 = !DILocation(line: 370, column: 3, scope: !636)
!636 = !DILexicalBlockFile(scope: !628, file: !98, discriminator: 2)
!637 = !DILocation(line: 371, column: 3, scope: !628)
!638 = !DILocation(line: 368, column: 38, scope: !639)
!639 = !DILexicalBlockFile(scope: !622, file: !98, discriminator: 1)
!640 = !DILocation(line: 375, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !102, file: !98, line: 375, column: 6)
!642 = !DILocation(line: 375, column: 11, scope: !641)
!643 = !DILocation(line: 375, column: 6, scope: !102)
!644 = !DILocation(line: 376, column: 22, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !98, line: 375, column: 19)
!646 = !DILocation(line: 376, column: 27, scope: !645)
!647 = !DILocation(line: 376, column: 3, scope: !645)
!648 = !DILocation(line: 377, column: 3, scope: !645)
!649 = !DILocation(line: 377, column: 8, scope: !645)
!650 = !DILocation(line: 377, column: 15, scope: !645)
!651 = !DILocation(line: 378, column: 2, scope: !645)
!652 = !DILocation(line: 380, column: 9, scope: !102)
!653 = !DILocation(line: 380, column: 2, scope: !102)
!654 = !DILocation(line: 381, column: 9, scope: !102)
!655 = !DILocation(line: 381, column: 2, scope: !102)
!656 = !DILocation(line: 383, column: 9, scope: !102)
!657 = !DILocation(line: 383, column: 2, scope: !102)
!658 = !DILocation(line: 384, column: 1, scope: !102)
!659 = distinct !DISubprogram(name: "config_write_block", scope: !98, file: !98, line: 264, type: !660, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!660 = !DISubroutineType(types: !661)
!661 = !{!93, !105, !115, !93, !93}
!662 = !DILocalVariable(name: "rec", arg: 1, scope: !659, file: !98, line: 264, type: !105)
!663 = !DILocation(line: 264, column: 43, scope: !659)
!664 = !DILocalVariable(name: "node", arg: 2, scope: !659, file: !98, line: 264, type: !115)
!665 = !DILocation(line: 264, column: 61, scope: !659)
!666 = !DILocalVariable(name: "list", arg: 3, scope: !659, file: !98, line: 264, type: !93)
!667 = !DILocation(line: 264, column: 71, scope: !659)
!668 = !DILocalVariable(name: "line_feeds", arg: 4, scope: !659, file: !98, line: 264, type: !93)
!669 = !DILocation(line: 264, column: 81, scope: !659)
!670 = !DILocalVariable(name: "tmp", scope: !659, file: !98, line: 266, type: !335)
!671 = !DILocation(line: 266, column: 10, scope: !659)
!672 = !DILocalVariable(name: "list_line_feeds", scope: !659, file: !98, line: 267, type: !93)
!673 = !DILocation(line: 267, column: 6, scope: !659)
!674 = !DILocalVariable(name: "node_line_feeds", scope: !659, file: !98, line: 267, type: !93)
!675 = !DILocation(line: 267, column: 23, scope: !659)
!676 = !DILocation(line: 269, column: 2, scope: !659)
!677 = distinct !{!677, !676}
!678 = !DILocation(line: 269, column: 10, scope: !679)
!679 = !DILexicalBlockFile(scope: !680, file: !98, discriminator: 1)
!680 = distinct !DILexicalBlock(scope: !681, file: !98, line: 269, column: 10)
!681 = distinct !DILexicalBlock(scope: !659, file: !98, line: 269, column: 4)
!682 = !DILocation(line: 269, column: 14, scope: !679)
!683 = !DILocation(line: 269, column: 5, scope: !684)
!684 = !DILexicalBlockFile(scope: !685, file: !98, discriminator: 2)
!685 = distinct !DILexicalBlock(scope: !680, file: !98, line: 269, column: 3)
!686 = !DILocation(line: 269, column: 14, scope: !687)
!687 = !DILexicalBlockFile(scope: !688, file: !98, discriminator: 3)
!688 = distinct !DILexicalBlock(scope: !680, file: !98, line: 269, column: 12)
!689 = !DILocation(line: 269, column: 98, scope: !687)
!690 = !DILocation(line: 269, column: 114, scope: !691)
!691 = !DILexicalBlockFile(scope: !681, file: !98, discriminator: 4)
!692 = !DILocation(line: 270, column: 2, scope: !659)
!693 = distinct !{!693, !692}
!694 = !DILocation(line: 270, column: 10, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !98, discriminator: 1)
!696 = distinct !DILexicalBlock(scope: !697, file: !98, line: 270, column: 10)
!697 = distinct !DILexicalBlock(scope: !659, file: !98, line: 270, column: 4)
!698 = !DILocation(line: 270, column: 15, scope: !695)
!699 = !DILocation(line: 270, column: 5, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !98, discriminator: 2)
!701 = distinct !DILexicalBlock(scope: !696, file: !98, line: 270, column: 3)
!702 = !DILocation(line: 270, column: 14, scope: !703)
!703 = !DILexicalBlockFile(scope: !704, file: !98, discriminator: 3)
!704 = distinct !DILexicalBlock(scope: !696, file: !98, line: 270, column: 12)
!705 = !DILocation(line: 270, column: 99, scope: !703)
!706 = !DILocation(line: 270, column: 115, scope: !707)
!707 = !DILexicalBlockFile(scope: !697, file: !98, discriminator: 4)
!708 = !DILocation(line: 271, column: 2, scope: !659)
!709 = distinct !{!709, !708}
!710 = !DILocation(line: 271, column: 12, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !98, discriminator: 1)
!712 = distinct !DILexicalBlock(scope: !713, file: !98, line: 271, column: 10)
!713 = distinct !DILexicalBlock(scope: !659, file: !98, line: 271, column: 4)
!714 = !DILocation(line: 271, column: 19, scope: !711)
!715 = !DILocation(line: 271, column: 24, scope: !711)
!716 = !DILocation(line: 271, column: 43, scope: !711)
!717 = !DILocation(line: 271, column: 47, scope: !718)
!718 = !DILexicalBlockFile(scope: !712, file: !98, discriminator: 2)
!719 = !DILocation(line: 271, column: 54, scope: !718)
!720 = !DILocation(line: 271, column: 59, scope: !718)
!721 = !DILocation(line: 271, column: 10, scope: !718)
!722 = !DILocation(line: 271, column: 81, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !98, discriminator: 3)
!724 = distinct !DILexicalBlock(scope: !712, file: !98, line: 271, column: 79)
!725 = !DILocation(line: 271, column: 90, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !98, discriminator: 4)
!727 = distinct !DILexicalBlock(scope: !712, file: !98, line: 271, column: 88)
!728 = !DILocation(line: 271, column: 181, scope: !726)
!729 = !DILocation(line: 271, column: 197, scope: !730)
!730 = !DILexicalBlockFile(scope: !713, file: !98, discriminator: 5)
!731 = !DILocation(line: 273, column: 47, scope: !659)
!732 = !DILocation(line: 273, column: 52, scope: !659)
!733 = !DILocation(line: 273, column: 21, scope: !659)
!734 = !DILocation(line: 273, column: 20, scope: !659)
!735 = !DILocation(line: 273, column: 18, scope: !659)
!736 = !DILocation(line: 275, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !659, file: !98, line: 275, column: 6)
!738 = !DILocation(line: 275, column: 18, scope: !737)
!739 = !DILocation(line: 275, column: 21, scope: !740)
!740 = !DILexicalBlockFile(scope: !737, file: !98, discriminator: 1)
!741 = !DILocation(line: 275, column: 6, scope: !740)
!742 = !DILocation(line: 276, column: 20, scope: !737)
!743 = !DILocation(line: 276, column: 3, scope: !737)
!744 = !DILocation(line: 278, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !659, file: !98, line: 278, column: 2)
!746 = !DILocation(line: 278, column: 19, scope: !745)
!747 = !DILocation(line: 278, column: 11, scope: !745)
!748 = !DILocation(line: 278, column: 7, scope: !745)
!749 = !DILocation(line: 278, column: 26, scope: !750)
!750 = !DILexicalBlockFile(scope: !751, file: !98, discriminator: 1)
!751 = distinct !DILexicalBlock(scope: !745, file: !98, line: 278, column: 2)
!752 = !DILocation(line: 278, column: 30, scope: !750)
!753 = !DILocation(line: 278, column: 2, scope: !750)
!754 = !DILocalVariable(name: "subnode", scope: !755, file: !98, line: 279, type: !115)
!755 = distinct !DILexicalBlock(scope: !751, file: !98, line: 278, column: 55)
!756 = !DILocation(line: 279, column: 16, scope: !755)
!757 = !DILocation(line: 279, column: 26, scope: !755)
!758 = !DILocation(line: 279, column: 31, scope: !755)
!759 = !DILocation(line: 281, column: 22, scope: !755)
!760 = !DILocation(line: 281, column: 21, scope: !755)
!761 = !DILocation(line: 281, column: 21, scope: !762)
!762 = !DILexicalBlockFile(scope: !755, file: !98, discriminator: 1)
!763 = !DILocation(line: 281, column: 68, scope: !764)
!764 = !DILexicalBlockFile(scope: !755, file: !98, discriminator: 2)
!765 = !DILocation(line: 281, column: 73, scope: !764)
!766 = !DILocation(line: 281, column: 42, scope: !764)
!767 = !DILocation(line: 281, column: 41, scope: !764)
!768 = !DILocation(line: 281, column: 21, scope: !764)
!769 = !DILocation(line: 281, column: 21, scope: !770)
!770 = !DILexicalBlockFile(scope: !755, file: !98, discriminator: 3)
!771 = !DILocation(line: 281, column: 19, scope: !770)
!772 = !DILocation(line: 282, column: 25, scope: !773)
!773 = distinct !DILexicalBlock(scope: !755, file: !98, line: 282, column: 7)
!774 = !DILocation(line: 282, column: 30, scope: !773)
!775 = !DILocation(line: 282, column: 39, scope: !773)
!776 = !DILocation(line: 282, column: 7, scope: !773)
!777 = !DILocation(line: 282, column: 56, scope: !773)
!778 = !DILocation(line: 282, column: 7, scope: !755)
!779 = !DILocation(line: 283, column: 4, scope: !773)
!780 = !DILocation(line: 285, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !755, file: !98, line: 285, column: 7)
!782 = !DILocation(line: 285, column: 16, scope: !781)
!783 = !DILocation(line: 285, column: 21, scope: !781)
!784 = !DILocation(line: 285, column: 7, scope: !755)
!785 = !DILocation(line: 286, column: 21, scope: !781)
!786 = !DILocation(line: 286, column: 4, scope: !781)
!787 = !DILocation(line: 287, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !781, file: !98, line: 287, column: 12)
!789 = !DILocation(line: 287, column: 12, scope: !781)
!790 = !DILocation(line: 288, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !98, line: 288, column: 8)
!792 = distinct !DILexicalBlock(scope: !788, file: !98, line: 287, column: 18)
!793 = !DILocation(line: 288, column: 13, scope: !791)
!794 = !DILocation(line: 288, column: 18, scope: !791)
!795 = !DILocation(line: 288, column: 8, scope: !792)
!796 = !DILocation(line: 289, column: 22, scope: !791)
!797 = !DILocation(line: 289, column: 27, scope: !791)
!798 = !DILocation(line: 289, column: 5, scope: !791)
!799 = !DILocation(line: 291, column: 22, scope: !791)
!800 = !DILocation(line: 291, column: 27, scope: !791)
!801 = !DILocation(line: 291, column: 5, scope: !791)
!802 = !DILocation(line: 292, column: 3, scope: !792)
!803 = !DILocation(line: 293, column: 21, scope: !804)
!804 = distinct !DILexicalBlock(scope: !788, file: !98, line: 292, column: 10)
!805 = !DILocation(line: 293, column: 26, scope: !804)
!806 = !DILocation(line: 293, column: 4, scope: !804)
!807 = !DILocation(line: 295, column: 2, scope: !755)
!808 = !DILocation(line: 278, column: 44, scope: !809)
!809 = !DILexicalBlockFile(scope: !751, file: !98, discriminator: 2)
!810 = !DILocation(line: 278, column: 49, scope: !809)
!811 = !DILocation(line: 278, column: 42, scope: !809)
!812 = !DILocation(line: 278, column: 2, scope: !809)
!813 = distinct !{!813, !814}
!814 = !DILocation(line: 278, column: 2, scope: !659)
!815 = !DILocation(line: 297, column: 2, scope: !659)
!816 = !DILocation(line: 298, column: 1, scope: !659)
!817 = distinct !DISubprogram(name: "config_block_fit_one_line", scope: !98, file: !98, line: 255, type: !818, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!818 = !DISubroutineType(types: !819)
!819 = !{!93, !105, !115}
!820 = !DILocalVariable(name: "rec", arg: 1, scope: !817, file: !98, line: 255, type: !105)
!821 = !DILocation(line: 255, column: 50, scope: !817)
!822 = !DILocalVariable(name: "node", arg: 2, scope: !817, file: !98, line: 255, type: !115)
!823 = !DILocation(line: 255, column: 68, scope: !817)
!824 = !DILocation(line: 257, column: 2, scope: !817)
!825 = distinct !{!825, !824}
!826 = !DILocation(line: 257, column: 10, scope: !827)
!827 = !DILexicalBlockFile(scope: !828, file: !98, discriminator: 1)
!828 = distinct !DILexicalBlock(scope: !829, file: !98, line: 257, column: 10)
!829 = distinct !DILexicalBlock(scope: !817, file: !98, line: 257, column: 4)
!830 = !DILocation(line: 257, column: 14, scope: !827)
!831 = !DILocation(line: 257, column: 5, scope: !832)
!832 = !DILexicalBlockFile(scope: !833, file: !98, discriminator: 2)
!833 = distinct !DILexicalBlock(scope: !828, file: !98, line: 257, column: 3)
!834 = !DILocation(line: 257, column: 14, scope: !835)
!835 = !DILexicalBlockFile(scope: !836, file: !98, discriminator: 3)
!836 = distinct !DILexicalBlock(scope: !828, file: !98, line: 257, column: 12)
!837 = !DILocation(line: 257, column: 98, scope: !835)
!838 = !DILocation(line: 257, column: 113, scope: !839)
!839 = !DILexicalBlockFile(scope: !829, file: !98, discriminator: 4)
!840 = !DILocation(line: 258, column: 2, scope: !817)
!841 = distinct !{!841, !840}
!842 = !DILocation(line: 258, column: 10, scope: !843)
!843 = !DILexicalBlockFile(scope: !844, file: !98, discriminator: 1)
!844 = distinct !DILexicalBlock(scope: !845, file: !98, line: 258, column: 10)
!845 = distinct !DILexicalBlock(scope: !817, file: !98, line: 258, column: 4)
!846 = !DILocation(line: 258, column: 15, scope: !843)
!847 = !DILocation(line: 258, column: 5, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !98, discriminator: 2)
!849 = distinct !DILexicalBlock(scope: !844, file: !98, line: 258, column: 3)
!850 = !DILocation(line: 258, column: 14, scope: !851)
!851 = !DILexicalBlockFile(scope: !852, file: !98, discriminator: 3)
!852 = distinct !DILexicalBlock(scope: !844, file: !98, line: 258, column: 12)
!853 = !DILocation(line: 258, column: 99, scope: !851)
!854 = !DILocation(line: 258, column: 114, scope: !855)
!855 = !DILexicalBlockFile(scope: !845, file: !98, discriminator: 4)
!856 = !DILocation(line: 260, column: 9, scope: !817)
!857 = !DILocation(line: 260, column: 14, scope: !817)
!858 = !DILocation(line: 261, column: 26, scope: !817)
!859 = !DILocation(line: 261, column: 31, scope: !817)
!860 = !DILocation(line: 261, column: 3, scope: !817)
!861 = !DILocation(line: 260, column: 31, scope: !817)
!862 = !DILocation(line: 261, column: 37, scope: !817)
!863 = !DILocation(line: 260, column: 2, scope: !817)
!864 = !DILocation(line: 262, column: 1, scope: !817)
!865 = distinct !DISubprogram(name: "config_write_str", scope: !98, file: !98, line: 43, type: !866, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!866 = !DISubroutineType(types: !867)
!867 = !{!93, !105, !91}
!868 = !DILocalVariable(name: "rec", arg: 1, scope: !865, file: !98, line: 43, type: !105)
!869 = !DILocation(line: 43, column: 41, scope: !865)
!870 = !DILocalVariable(name: "str", arg: 2, scope: !865, file: !98, line: 43, type: !91)
!871 = !DILocation(line: 43, column: 58, scope: !865)
!872 = !DILocalVariable(name: "strpos", scope: !865, file: !98, line: 45, type: !91)
!873 = !DILocation(line: 45, column: 14, scope: !865)
!874 = !DILocalVariable(name: "p", scope: !865, file: !98, line: 45, type: !91)
!875 = !DILocation(line: 45, column: 23, scope: !865)
!876 = !DILocation(line: 47, column: 2, scope: !865)
!877 = distinct !{!877, !876}
!878 = !DILocation(line: 47, column: 10, scope: !879)
!879 = !DILexicalBlockFile(scope: !880, file: !98, discriminator: 1)
!880 = distinct !DILexicalBlock(scope: !881, file: !98, line: 47, column: 10)
!881 = distinct !DILexicalBlock(scope: !865, file: !98, line: 47, column: 4)
!882 = !DILocation(line: 47, column: 14, scope: !879)
!883 = !DILocation(line: 47, column: 5, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !98, discriminator: 2)
!885 = distinct !DILexicalBlock(scope: !880, file: !98, line: 47, column: 3)
!886 = !DILocation(line: 47, column: 14, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !98, discriminator: 3)
!888 = distinct !DILexicalBlock(scope: !880, file: !98, line: 47, column: 12)
!889 = !DILocation(line: 47, column: 98, scope: !887)
!890 = !DILocation(line: 47, column: 114, scope: !891)
!891 = !DILexicalBlockFile(scope: !881, file: !98, discriminator: 4)
!892 = !DILocation(line: 48, column: 2, scope: !865)
!893 = distinct !{!893, !892}
!894 = !DILocation(line: 48, column: 10, scope: !895)
!895 = !DILexicalBlockFile(scope: !896, file: !98, discriminator: 1)
!896 = distinct !DILexicalBlock(scope: !897, file: !98, line: 48, column: 10)
!897 = distinct !DILexicalBlock(scope: !865, file: !98, line: 48, column: 4)
!898 = !DILocation(line: 48, column: 14, scope: !895)
!899 = !DILocation(line: 48, column: 5, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !98, discriminator: 2)
!901 = distinct !DILexicalBlock(scope: !896, file: !98, line: 48, column: 3)
!902 = !DILocation(line: 48, column: 14, scope: !903)
!903 = !DILexicalBlockFile(scope: !904, file: !98, discriminator: 3)
!904 = distinct !DILexicalBlock(scope: !896, file: !98, line: 48, column: 12)
!905 = !DILocation(line: 48, column: 98, scope: !903)
!906 = !DILocation(line: 48, column: 114, scope: !907)
!907 = !DILexicalBlockFile(scope: !897, file: !98, discriminator: 4)
!908 = !DILocation(line: 50, column: 11, scope: !865)
!909 = !DILocation(line: 50, column: 9, scope: !865)
!910 = !DILocation(line: 51, column: 2, scope: !865)
!911 = !DILocation(line: 51, column: 10, scope: !912)
!912 = !DILexicalBlockFile(scope: !865, file: !98, discriminator: 1)
!913 = !DILocation(line: 51, column: 9, scope: !912)
!914 = !DILocation(line: 51, column: 17, scope: !912)
!915 = !DILocation(line: 51, column: 2, scope: !912)
!916 = !DILocation(line: 53, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !98, line: 53, column: 7)
!918 = distinct !DILexicalBlock(scope: !865, file: !98, line: 51, column: 26)
!919 = !DILocation(line: 53, column: 12, scope: !917)
!920 = !DILocation(line: 53, column: 24, scope: !917)
!921 = !DILocation(line: 53, column: 27, scope: !922)
!922 = !DILexicalBlockFile(scope: !917, file: !98, discriminator: 1)
!923 = !DILocation(line: 53, column: 32, scope: !922)
!924 = !DILocation(line: 53, column: 49, scope: !922)
!925 = !DILocation(line: 53, column: 53, scope: !922)
!926 = !DILocation(line: 54, column: 8, scope: !917)
!927 = !DILocation(line: 54, column: 7, scope: !917)
!928 = !DILocation(line: 54, column: 12, scope: !917)
!929 = !DILocation(line: 53, column: 7, scope: !930)
!930 = !DILexicalBlockFile(scope: !918, file: !98, discriminator: 2)
!931 = !DILocation(line: 55, column: 28, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !98, line: 55, column: 8)
!933 = distinct !DILexicalBlock(scope: !917, file: !98, line: 54, column: 21)
!934 = !DILocation(line: 55, column: 8, scope: !932)
!935 = !DILocation(line: 55, column: 33, scope: !932)
!936 = !DILocation(line: 55, column: 8, scope: !933)
!937 = !DILocation(line: 56, column: 5, scope: !932)
!938 = !DILocation(line: 57, column: 3, scope: !933)
!939 = !DILocation(line: 59, column: 14, scope: !918)
!940 = !DILocation(line: 59, column: 7, scope: !918)
!941 = !DILocation(line: 59, column: 5, scope: !918)
!942 = !DILocation(line: 60, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !918, file: !98, line: 60, column: 7)
!944 = !DILocation(line: 60, column: 9, scope: !943)
!945 = !DILocation(line: 60, column: 7, scope: !918)
!946 = !DILocation(line: 61, column: 33, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !98, line: 61, column: 8)
!948 = distinct !DILexicalBlock(scope: !943, file: !98, line: 60, column: 17)
!949 = !DILocation(line: 61, column: 38, scope: !947)
!950 = !DILocation(line: 61, column: 46, scope: !947)
!951 = !DILocation(line: 61, column: 61, scope: !947)
!952 = !DILocation(line: 61, column: 54, scope: !947)
!953 = !DILocation(line: 61, column: 8, scope: !954)
!954 = !DILexicalBlockFile(scope: !947, file: !98, discriminator: 1)
!955 = !DILocation(line: 62, column: 23, scope: !947)
!956 = !DILocation(line: 61, column: 8, scope: !948)
!957 = !DILocation(line: 63, column: 5, scope: !947)
!958 = !DILocation(line: 64, column: 11, scope: !948)
!959 = !DILocation(line: 65, column: 4, scope: !948)
!960 = !DILocation(line: 65, column: 9, scope: !948)
!961 = !DILocation(line: 65, column: 21, scope: !948)
!962 = !DILocation(line: 66, column: 3, scope: !948)
!963 = !DILocation(line: 67, column: 33, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !98, line: 67, column: 8)
!965 = distinct !DILexicalBlock(scope: !943, file: !98, line: 66, column: 10)
!966 = !DILocation(line: 67, column: 38, scope: !964)
!967 = !DILocation(line: 67, column: 46, scope: !964)
!968 = !DILocation(line: 67, column: 61, scope: !964)
!969 = !DILocation(line: 67, column: 63, scope: !964)
!970 = !DILocation(line: 67, column: 62, scope: !964)
!971 = !DILocation(line: 67, column: 54, scope: !964)
!972 = !DILocation(line: 67, column: 70, scope: !964)
!973 = !DILocation(line: 67, column: 8, scope: !964)
!974 = !DILocation(line: 68, column: 23, scope: !964)
!975 = !DILocation(line: 67, column: 8, scope: !965)
!976 = !DILocation(line: 69, column: 5, scope: !964)
!977 = !DILocation(line: 70, column: 13, scope: !965)
!978 = !DILocation(line: 70, column: 14, scope: !965)
!979 = !DILocation(line: 70, column: 11, scope: !965)
!980 = !DILocation(line: 71, column: 4, scope: !965)
!981 = !DILocation(line: 71, column: 9, scope: !965)
!982 = !DILocation(line: 71, column: 21, scope: !965)
!983 = !DILocation(line: 51, column: 2, scope: !984)
!984 = !DILexicalBlockFile(scope: !865, file: !98, discriminator: 2)
!985 = distinct !{!985, !910}
!986 = !DILocation(line: 75, column: 2, scope: !865)
!987 = !DILocation(line: 76, column: 1, scope: !865)
!988 = distinct !DISubprogram(name: "config_write_node", scope: !98, file: !98, line: 136, type: !989, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!989 = !DISubroutineType(types: !990)
!990 = !{!93, !105, !115, !93}
!991 = !DILocalVariable(name: "rec", arg: 1, scope: !988, file: !98, line: 136, type: !105)
!992 = !DILocation(line: 136, column: 42, scope: !988)
!993 = !DILocalVariable(name: "node", arg: 2, scope: !988, file: !98, line: 136, type: !115)
!994 = !DILocation(line: 136, column: 60, scope: !988)
!995 = !DILocalVariable(name: "line_feeds", arg: 3, scope: !988, file: !98, line: 136, type: !93)
!996 = !DILocation(line: 136, column: 70, scope: !988)
!997 = !DILocation(line: 138, column: 2, scope: !988)
!998 = distinct !{!998, !997}
!999 = !DILocation(line: 138, column: 10, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !1001, file: !98, discriminator: 1)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !98, line: 138, column: 10)
!1002 = distinct !DILexicalBlock(scope: !988, file: !98, line: 138, column: 4)
!1003 = !DILocation(line: 138, column: 14, scope: !1000)
!1004 = !DILocation(line: 138, column: 5, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !98, discriminator: 2)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !98, line: 138, column: 3)
!1007 = !DILocation(line: 138, column: 14, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1009, file: !98, discriminator: 3)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !98, line: 138, column: 12)
!1010 = !DILocation(line: 138, column: 98, scope: !1008)
!1011 = !DILocation(line: 138, column: 114, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1002, file: !98, discriminator: 4)
!1013 = !DILocation(line: 139, column: 2, scope: !988)
!1014 = distinct !{!1014, !1013}
!1015 = !DILocation(line: 139, column: 10, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1017, file: !98, discriminator: 1)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !98, line: 139, column: 10)
!1018 = distinct !DILexicalBlock(scope: !988, file: !98, line: 139, column: 4)
!1019 = !DILocation(line: 139, column: 15, scope: !1016)
!1020 = !DILocation(line: 139, column: 5, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !98, discriminator: 2)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !98, line: 139, column: 3)
!1023 = !DILocation(line: 139, column: 14, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1025, file: !98, discriminator: 3)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !98, line: 139, column: 12)
!1026 = !DILocation(line: 139, column: 99, scope: !1024)
!1027 = !DILocation(line: 139, column: 115, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1018, file: !98, discriminator: 4)
!1029 = !DILocation(line: 141, column: 10, scope: !988)
!1030 = !DILocation(line: 141, column: 16, scope: !988)
!1031 = !DILocation(line: 141, column: 2, scope: !988)
!1032 = !DILocation(line: 143, column: 25, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 143, column: 7)
!1034 = distinct !DILexicalBlock(scope: !988, file: !98, line: 141, column: 22)
!1035 = !DILocation(line: 143, column: 30, scope: !1033)
!1036 = !DILocation(line: 143, column: 36, scope: !1033)
!1037 = !DILocation(line: 143, column: 7, scope: !1033)
!1038 = !DILocation(line: 143, column: 46, scope: !1033)
!1039 = !DILocation(line: 143, column: 52, scope: !1033)
!1040 = !DILocation(line: 144, column: 24, scope: !1033)
!1041 = !DILocation(line: 144, column: 7, scope: !1033)
!1042 = !DILocation(line: 144, column: 36, scope: !1033)
!1043 = !DILocation(line: 144, column: 42, scope: !1033)
!1044 = !DILocation(line: 145, column: 25, scope: !1033)
!1045 = !DILocation(line: 145, column: 30, scope: !1033)
!1046 = !DILocation(line: 145, column: 36, scope: !1033)
!1047 = !DILocation(line: 145, column: 7, scope: !1033)
!1048 = !DILocation(line: 145, column: 51, scope: !1033)
!1049 = !DILocation(line: 143, column: 7, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1034, file: !98, discriminator: 1)
!1051 = !DILocation(line: 146, column: 4, scope: !1033)
!1052 = !DILocation(line: 147, column: 3, scope: !1034)
!1053 = !DILocation(line: 149, column: 25, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 149, column: 7)
!1055 = !DILocation(line: 149, column: 30, scope: !1054)
!1056 = !DILocation(line: 149, column: 36, scope: !1054)
!1057 = !DILocation(line: 149, column: 7, scope: !1054)
!1058 = !DILocation(line: 149, column: 51, scope: !1054)
!1059 = !DILocation(line: 149, column: 7, scope: !1034)
!1060 = !DILocation(line: 150, column: 4, scope: !1054)
!1061 = !DILocation(line: 151, column: 3, scope: !1034)
!1062 = !DILocation(line: 154, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 154, column: 7)
!1064 = !DILocation(line: 154, column: 13, scope: !1063)
!1065 = !DILocation(line: 154, column: 17, scope: !1063)
!1066 = !DILocation(line: 154, column: 7, scope: !1034)
!1067 = !DILocation(line: 155, column: 26, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !98, line: 155, column: 8)
!1069 = distinct !DILexicalBlock(scope: !1063, file: !98, line: 154, column: 25)
!1070 = !DILocation(line: 155, column: 31, scope: !1068)
!1071 = !DILocation(line: 155, column: 37, scope: !1068)
!1072 = !DILocation(line: 155, column: 8, scope: !1068)
!1073 = !DILocation(line: 155, column: 47, scope: !1068)
!1074 = !DILocation(line: 155, column: 53, scope: !1068)
!1075 = !DILocation(line: 156, column: 25, scope: !1068)
!1076 = !DILocation(line: 156, column: 8, scope: !1068)
!1077 = !DILocation(line: 156, column: 37, scope: !1068)
!1078 = !DILocation(line: 155, column: 8, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1069, file: !98, discriminator: 1)
!1080 = !DILocation(line: 157, column: 5, scope: !1068)
!1081 = !DILocation(line: 158, column: 3, scope: !1069)
!1082 = !DILocation(line: 159, column: 24, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 159, column: 7)
!1084 = !DILocation(line: 159, column: 29, scope: !1083)
!1085 = !DILocation(line: 159, column: 7, scope: !1083)
!1086 = !DILocation(line: 159, column: 56, scope: !1083)
!1087 = !DILocation(line: 159, column: 7, scope: !1034)
!1088 = !DILocation(line: 160, column: 4, scope: !1083)
!1089 = !DILocation(line: 163, column: 3, scope: !1034)
!1090 = !DILocation(line: 163, column: 8, scope: !1034)
!1091 = !DILocation(line: 163, column: 25, scope: !1034)
!1092 = !DILocation(line: 164, column: 26, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 164, column: 7)
!1094 = !DILocation(line: 164, column: 31, scope: !1093)
!1095 = !DILocation(line: 164, column: 42, scope: !1093)
!1096 = !DILocation(line: 164, column: 7, scope: !1093)
!1097 = !DILocation(line: 164, column: 54, scope: !1093)
!1098 = !DILocation(line: 164, column: 7, scope: !1034)
!1099 = !DILocation(line: 165, column: 4, scope: !1093)
!1100 = !DILocation(line: 166, column: 3, scope: !1034)
!1101 = !DILocation(line: 166, column: 8, scope: !1034)
!1102 = !DILocation(line: 166, column: 25, scope: !1034)
!1103 = !DILocation(line: 169, column: 24, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 169, column: 7)
!1105 = !DILocation(line: 169, column: 7, scope: !1104)
!1106 = !DILocation(line: 169, column: 34, scope: !1104)
!1107 = !DILocation(line: 169, column: 7, scope: !1034)
!1108 = !DILocation(line: 170, column: 4, scope: !1104)
!1109 = !DILocation(line: 171, column: 3, scope: !1034)
!1110 = !DILocation(line: 174, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 174, column: 7)
!1112 = !DILocation(line: 174, column: 13, scope: !1111)
!1113 = !DILocation(line: 174, column: 17, scope: !1111)
!1114 = !DILocation(line: 174, column: 7, scope: !1034)
!1115 = !DILocation(line: 175, column: 26, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !98, line: 175, column: 8)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !98, line: 174, column: 25)
!1118 = !DILocation(line: 175, column: 31, scope: !1116)
!1119 = !DILocation(line: 175, column: 37, scope: !1116)
!1120 = !DILocation(line: 175, column: 8, scope: !1116)
!1121 = !DILocation(line: 175, column: 47, scope: !1116)
!1122 = !DILocation(line: 175, column: 53, scope: !1116)
!1123 = !DILocation(line: 176, column: 25, scope: !1116)
!1124 = !DILocation(line: 176, column: 8, scope: !1116)
!1125 = !DILocation(line: 176, column: 37, scope: !1116)
!1126 = !DILocation(line: 175, column: 8, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1117, file: !98, discriminator: 1)
!1128 = !DILocation(line: 177, column: 5, scope: !1116)
!1129 = !DILocation(line: 178, column: 3, scope: !1117)
!1130 = !DILocation(line: 179, column: 24, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 179, column: 7)
!1132 = !DILocation(line: 179, column: 29, scope: !1131)
!1133 = !DILocation(line: 179, column: 7, scope: !1131)
!1134 = !DILocation(line: 179, column: 56, scope: !1131)
!1135 = !DILocation(line: 179, column: 7, scope: !1034)
!1136 = !DILocation(line: 180, column: 4, scope: !1131)
!1137 = !DILocation(line: 183, column: 3, scope: !1034)
!1138 = !DILocation(line: 183, column: 8, scope: !1034)
!1139 = !DILocation(line: 183, column: 25, scope: !1034)
!1140 = !DILocation(line: 184, column: 26, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 184, column: 7)
!1142 = !DILocation(line: 184, column: 31, scope: !1141)
!1143 = !DILocation(line: 184, column: 45, scope: !1141)
!1144 = !DILocation(line: 184, column: 7, scope: !1141)
!1145 = !DILocation(line: 184, column: 57, scope: !1141)
!1146 = !DILocation(line: 184, column: 7, scope: !1034)
!1147 = !DILocation(line: 185, column: 4, scope: !1141)
!1148 = !DILocation(line: 186, column: 3, scope: !1034)
!1149 = !DILocation(line: 186, column: 8, scope: !1034)
!1150 = !DILocation(line: 186, column: 25, scope: !1034)
!1151 = !DILocation(line: 189, column: 24, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 189, column: 7)
!1153 = !DILocation(line: 189, column: 7, scope: !1152)
!1154 = !DILocation(line: 189, column: 34, scope: !1152)
!1155 = !DILocation(line: 189, column: 7, scope: !1034)
!1156 = !DILocation(line: 190, column: 4, scope: !1152)
!1157 = !DILocation(line: 191, column: 3, scope: !1034)
!1158 = !DILocation(line: 193, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 193, column: 7)
!1160 = !DILocation(line: 193, column: 13, scope: !1159)
!1161 = !DILocation(line: 193, column: 19, scope: !1159)
!1162 = !DILocation(line: 193, column: 7, scope: !1034)
!1163 = !DILocation(line: 194, column: 4, scope: !1159)
!1164 = !DILocation(line: 196, column: 24, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1034, file: !98, line: 196, column: 7)
!1166 = !DILocation(line: 196, column: 7, scope: !1165)
!1167 = !DILocation(line: 196, column: 34, scope: !1165)
!1168 = !DILocation(line: 196, column: 40, scope: !1165)
!1169 = !DILocation(line: 197, column: 24, scope: !1165)
!1170 = !DILocation(line: 197, column: 29, scope: !1165)
!1171 = !DILocation(line: 197, column: 35, scope: !1165)
!1172 = !DILocation(line: 197, column: 7, scope: !1165)
!1173 = !DILocation(line: 197, column: 42, scope: !1165)
!1174 = !DILocation(line: 196, column: 7, scope: !1050)
!1175 = !DILocation(line: 198, column: 4, scope: !1165)
!1176 = !DILocation(line: 199, column: 3, scope: !1034)
!1177 = !DILocation(line: 202, column: 2, scope: !988)
!1178 = !DILocation(line: 203, column: 1, scope: !988)
!1179 = distinct !DISubprogram(name: "config_node_get_length", scope: !98, file: !98, line: 207, type: !818, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1180 = !DILocalVariable(name: "rec", arg: 1, scope: !1179, file: !98, line: 207, type: !105)
!1181 = !DILocation(line: 207, column: 47, scope: !1179)
!1182 = !DILocalVariable(name: "node", arg: 2, scope: !1179, file: !98, line: 207, type: !115)
!1183 = !DILocation(line: 207, column: 65, scope: !1179)
!1184 = !DILocalVariable(name: "len", scope: !1179, file: !98, line: 209, type: !93)
!1185 = !DILocation(line: 209, column: 6, scope: !1179)
!1186 = !DILocation(line: 211, column: 10, scope: !1179)
!1187 = !DILocation(line: 211, column: 16, scope: !1179)
!1188 = !DILocation(line: 211, column: 2, scope: !1179)
!1189 = !DILocation(line: 214, column: 20, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1179, file: !98, line: 211, column: 22)
!1191 = !DILocation(line: 214, column: 26, scope: !1190)
!1192 = !DILocation(line: 214, column: 13, scope: !1190)
!1193 = !DILocation(line: 214, column: 11, scope: !1190)
!1194 = !DILocation(line: 214, column: 40, scope: !1190)
!1195 = !DILocation(line: 214, column: 46, scope: !1190)
!1196 = !DILocation(line: 214, column: 33, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1190, file: !98, discriminator: 1)
!1198 = !DILocation(line: 214, column: 31, scope: !1190)
!1199 = !DILocation(line: 214, column: 9, scope: !1190)
!1200 = !DILocation(line: 214, column: 7, scope: !1190)
!1201 = !DILocation(line: 215, column: 3, scope: !1190)
!1202 = !DILocation(line: 218, column: 20, scope: !1190)
!1203 = !DILocation(line: 218, column: 26, scope: !1190)
!1204 = !DILocation(line: 218, column: 13, scope: !1190)
!1205 = !DILocation(line: 218, column: 11, scope: !1190)
!1206 = !DILocation(line: 218, column: 9, scope: !1190)
!1207 = !DILocation(line: 218, column: 7, scope: !1190)
!1208 = !DILocation(line: 219, column: 3, scope: !1190)
!1209 = !DILocation(line: 223, column: 7, scope: !1190)
!1210 = !DILocation(line: 224, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1190, file: !98, line: 224, column: 7)
!1212 = !DILocation(line: 224, column: 13, scope: !1211)
!1213 = !DILocation(line: 224, column: 17, scope: !1211)
!1214 = !DILocation(line: 224, column: 7, scope: !1190)
!1215 = !DILocation(line: 224, column: 39, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1211, file: !98, discriminator: 1)
!1217 = !DILocation(line: 224, column: 45, scope: !1216)
!1218 = !DILocation(line: 224, column: 32, scope: !1216)
!1219 = !DILocation(line: 224, column: 29, scope: !1216)
!1220 = !DILocation(line: 224, column: 25, scope: !1216)
!1221 = !DILocation(line: 225, column: 34, scope: !1190)
!1222 = !DILocation(line: 225, column: 39, scope: !1190)
!1223 = !DILocation(line: 225, column: 10, scope: !1190)
!1224 = !DILocation(line: 225, column: 7, scope: !1190)
!1225 = !DILocation(line: 226, column: 3, scope: !1190)
!1226 = !DILocation(line: 229, column: 7, scope: !1190)
!1227 = !DILocation(line: 230, column: 3, scope: !1190)
!1228 = !DILocation(line: 233, column: 9, scope: !1179)
!1229 = !DILocation(line: 233, column: 2, scope: !1179)
!1230 = distinct !DISubprogram(name: "config_block_get_length", scope: !98, file: !98, line: 238, type: !818, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1231 = !DILocalVariable(name: "rec", arg: 1, scope: !1230, file: !98, line: 238, type: !105)
!1232 = !DILocation(line: 238, column: 48, scope: !1230)
!1233 = !DILocalVariable(name: "node", arg: 2, scope: !1230, file: !98, line: 238, type: !115)
!1234 = !DILocation(line: 238, column: 66, scope: !1230)
!1235 = !DILocalVariable(name: "tmp", scope: !1230, file: !98, line: 240, type: !335)
!1236 = !DILocation(line: 240, column: 10, scope: !1230)
!1237 = !DILocalVariable(name: "len", scope: !1230, file: !98, line: 241, type: !93)
!1238 = !DILocation(line: 241, column: 6, scope: !1230)
!1239 = !DILocation(line: 243, column: 6, scope: !1230)
!1240 = !DILocation(line: 244, column: 13, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !98, line: 244, column: 2)
!1242 = !DILocation(line: 244, column: 19, scope: !1241)
!1243 = !DILocation(line: 244, column: 11, scope: !1241)
!1244 = !DILocation(line: 244, column: 7, scope: !1241)
!1245 = !DILocation(line: 244, column: 26, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !98, discriminator: 1)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !98, line: 244, column: 2)
!1248 = !DILocation(line: 244, column: 30, scope: !1246)
!1249 = !DILocation(line: 244, column: 2, scope: !1246)
!1250 = !DILocalVariable(name: "subnode", scope: !1251, file: !98, line: 245, type: !115)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !98, line: 244, column: 55)
!1252 = !DILocation(line: 245, column: 16, scope: !1251)
!1253 = !DILocation(line: 245, column: 26, scope: !1251)
!1254 = !DILocation(line: 245, column: 31, scope: !1251)
!1255 = !DILocation(line: 247, column: 47, scope: !1251)
!1256 = !DILocation(line: 247, column: 52, scope: !1251)
!1257 = !DILocation(line: 247, column: 24, scope: !1251)
!1258 = !DILocation(line: 247, column: 21, scope: !1251)
!1259 = !DILocation(line: 248, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !98, line: 248, column: 7)
!1261 = !DILocation(line: 248, column: 11, scope: !1260)
!1262 = !DILocation(line: 248, column: 7, scope: !1251)
!1263 = !DILocation(line: 248, column: 24, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1260, file: !98, discriminator: 1)
!1265 = !DILocation(line: 248, column: 17, scope: !1264)
!1266 = !DILocation(line: 249, column: 2, scope: !1251)
!1267 = !DILocation(line: 244, column: 44, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1247, file: !98, discriminator: 2)
!1269 = !DILocation(line: 244, column: 49, scope: !1268)
!1270 = !DILocation(line: 244, column: 42, scope: !1268)
!1271 = !DILocation(line: 244, column: 2, scope: !1268)
!1272 = distinct !{!1272, !1273}
!1273 = !DILocation(line: 244, column: 2, scope: !1230)
!1274 = !DILocation(line: 251, column: 9, scope: !1230)
!1275 = !DILocation(line: 251, column: 2, scope: !1230)
!1276 = !DILocation(line: 252, column: 1, scope: !1230)
!1277 = distinct !DISubprogram(name: "config_write_indent", scope: !98, file: !98, line: 30, type: !1278, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!93, !105}
!1280 = !DILocalVariable(name: "rec", arg: 1, scope: !1277, file: !98, line: 30, type: !105)
!1281 = !DILocation(line: 30, column: 44, scope: !1277)
!1282 = !DILocalVariable(name: "n", scope: !1277, file: !98, line: 32, type: !93)
!1283 = !DILocation(line: 32, column: 6, scope: !1277)
!1284 = !DILocation(line: 34, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !98, line: 34, column: 2)
!1286 = !DILocation(line: 34, column: 7, scope: !1285)
!1287 = !DILocation(line: 34, column: 14, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1289, file: !98, discriminator: 1)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !98, line: 34, column: 2)
!1290 = !DILocation(line: 34, column: 18, scope: !1288)
!1291 = !DILocation(line: 34, column: 23, scope: !1288)
!1292 = !DILocation(line: 34, column: 39, scope: !1288)
!1293 = !DILocation(line: 34, column: 16, scope: !1288)
!1294 = !DILocation(line: 34, column: 2, scope: !1288)
!1295 = !DILocation(line: 35, column: 32, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !98, line: 35, column: 7)
!1297 = distinct !DILexicalBlock(scope: !1289, file: !98, line: 34, column: 48)
!1298 = !DILocation(line: 35, column: 37, scope: !1296)
!1299 = !DILocation(line: 35, column: 45, scope: !1296)
!1300 = !DILocation(line: 35, column: 7, scope: !1296)
!1301 = !DILocation(line: 36, column: 22, scope: !1296)
!1302 = !DILocation(line: 35, column: 7, scope: !1297)
!1303 = !DILocation(line: 37, column: 4, scope: !1296)
!1304 = !DILocation(line: 38, column: 2, scope: !1297)
!1305 = !DILocation(line: 34, column: 44, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1289, file: !98, discriminator: 2)
!1307 = !DILocation(line: 34, column: 2, scope: !1306)
!1308 = distinct !{!1308, !1309}
!1309 = !DILocation(line: 34, column: 2, scope: !1277)
!1310 = !DILocation(line: 40, column: 2, scope: !1277)
!1311 = !DILocation(line: 41, column: 1, scope: !1277)
!1312 = distinct !DISubprogram(name: "config_write_word", scope: !98, file: !98, line: 116, type: !103, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1313 = !DILocalVariable(name: "rec", arg: 1, scope: !1312, file: !98, line: 116, type: !105)
!1314 = !DILocation(line: 116, column: 42, scope: !1312)
!1315 = !DILocalVariable(name: "word", arg: 2, scope: !1312, file: !98, line: 116, type: !91)
!1316 = !DILocation(line: 116, column: 59, scope: !1312)
!1317 = !DILocalVariable(name: "string", arg: 3, scope: !1312, file: !98, line: 116, type: !93)
!1318 = !DILocation(line: 116, column: 69, scope: !1312)
!1319 = !DILocalVariable(name: "str", scope: !1312, file: !98, line: 118, type: !110)
!1320 = !DILocation(line: 118, column: 8, scope: !1312)
!1321 = !DILocalVariable(name: "ret", scope: !1312, file: !98, line: 119, type: !93)
!1322 = !DILocation(line: 119, column: 6, scope: !1312)
!1323 = !DILocation(line: 121, column: 2, scope: !1312)
!1324 = distinct !{!1324, !1323}
!1325 = !DILocation(line: 121, column: 10, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !98, discriminator: 1)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !98, line: 121, column: 10)
!1328 = distinct !DILexicalBlock(scope: !1312, file: !98, line: 121, column: 4)
!1329 = !DILocation(line: 121, column: 14, scope: !1326)
!1330 = !DILocation(line: 121, column: 5, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1332, file: !98, discriminator: 2)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !98, line: 121, column: 3)
!1333 = !DILocation(line: 121, column: 14, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1335, file: !98, discriminator: 3)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !98, line: 121, column: 12)
!1336 = !DILocation(line: 121, column: 98, scope: !1334)
!1337 = !DILocation(line: 121, column: 114, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1328, file: !98, discriminator: 4)
!1339 = !DILocation(line: 122, column: 2, scope: !1312)
!1340 = distinct !{!1340, !1339}
!1341 = !DILocation(line: 122, column: 10, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !98, discriminator: 1)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !98, line: 122, column: 10)
!1344 = distinct !DILexicalBlock(scope: !1312, file: !98, line: 122, column: 4)
!1345 = !DILocation(line: 122, column: 15, scope: !1342)
!1346 = !DILocation(line: 122, column: 5, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !98, discriminator: 2)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !98, line: 122, column: 3)
!1349 = !DILocation(line: 122, column: 14, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !98, discriminator: 3)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !98, line: 122, column: 12)
!1352 = !DILocation(line: 122, column: 99, scope: !1350)
!1353 = !DILocation(line: 122, column: 115, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1344, file: !98, discriminator: 4)
!1355 = !DILocation(line: 124, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1312, file: !98, line: 124, column: 6)
!1357 = !DILocation(line: 124, column: 14, scope: !1356)
!1358 = !DILocation(line: 124, column: 38, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1356, file: !98, discriminator: 1)
!1360 = !DILocation(line: 124, column: 18, scope: !1359)
!1361 = !DILocation(line: 124, column: 6, scope: !1359)
!1362 = !DILocation(line: 125, column: 27, scope: !1356)
!1363 = !DILocation(line: 125, column: 32, scope: !1356)
!1364 = !DILocation(line: 125, column: 10, scope: !1356)
!1365 = !DILocation(line: 125, column: 3, scope: !1356)
!1366 = !DILocation(line: 127, column: 29, scope: !1312)
!1367 = !DILocation(line: 127, column: 8, scope: !1312)
!1368 = !DILocation(line: 127, column: 6, scope: !1312)
!1369 = !DILocation(line: 128, column: 25, scope: !1312)
!1370 = !DILocation(line: 128, column: 30, scope: !1312)
!1371 = !DILocation(line: 128, column: 8, scope: !1312)
!1372 = !DILocation(line: 128, column: 6, scope: !1312)
!1373 = !DILocation(line: 129, column: 9, scope: !1312)
!1374 = !DILocation(line: 129, column: 2, scope: !1312)
!1375 = !DILocation(line: 131, column: 9, scope: !1312)
!1376 = !DILocation(line: 131, column: 2, scope: !1312)
!1377 = !DILocation(line: 132, column: 1, scope: !1312)
!1378 = distinct !DISubprogram(name: "config_has_specials", scope: !98, file: !98, line: 78, type: !1379, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!93, !91}
!1381 = !DILocalVariable(name: "text", arg: 1, scope: !1378, file: !98, line: 78, type: !91)
!1382 = !DILocation(line: 78, column: 44, scope: !1378)
!1383 = !DILocation(line: 80, column: 2, scope: !1378)
!1384 = distinct !{!1384, !1383}
!1385 = !DILocation(line: 80, column: 10, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !98, discriminator: 1)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !98, line: 80, column: 10)
!1388 = distinct !DILexicalBlock(scope: !1378, file: !98, line: 80, column: 4)
!1389 = !DILocation(line: 80, column: 15, scope: !1386)
!1390 = !DILocation(line: 80, column: 5, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !98, discriminator: 2)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !98, line: 80, column: 3)
!1393 = !DILocation(line: 80, column: 14, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !98, discriminator: 3)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !98, line: 80, column: 12)
!1396 = !DILocation(line: 80, column: 99, scope: !1394)
!1397 = !DILocation(line: 80, column: 116, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1388, file: !98, discriminator: 4)
!1399 = !DILocation(line: 82, column: 2, scope: !1378)
!1400 = !DILocation(line: 82, column: 10, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1378, file: !98, discriminator: 1)
!1402 = !DILocation(line: 82, column: 9, scope: !1401)
!1403 = !DILocation(line: 82, column: 15, scope: !1401)
!1404 = !DILocation(line: 82, column: 2, scope: !1401)
!1405 = !DILocation(line: 83, column: 31, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !98, line: 83, column: 7)
!1407 = distinct !DILexicalBlock(scope: !1378, file: !98, line: 82, column: 24)
!1408 = !DILocation(line: 83, column: 30, scope: !1406)
!1409 = !DILocation(line: 83, column: 7, scope: !1406)
!1410 = !DILocation(line: 83, column: 8, scope: !1406)
!1411 = !DILocation(line: 83, column: 10, scope: !1406)
!1412 = !DILocation(line: 83, column: 9, scope: !1406)
!1413 = !DILocation(line: 83, column: 11, scope: !1406)
!1414 = !DILocation(line: 83, column: 24, scope: !1406)
!1415 = !DILocation(line: 83, column: 28, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1406, file: !98, discriminator: 1)
!1417 = !DILocation(line: 83, column: 27, scope: !1416)
!1418 = !DILocation(line: 83, column: 33, scope: !1416)
!1419 = !DILocation(line: 83, column: 7, scope: !1416)
!1420 = !DILocation(line: 84, column: 4, scope: !1406)
!1421 = !DILocation(line: 85, column: 7, scope: !1407)
!1422 = !DILocation(line: 82, column: 2, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1378, file: !98, discriminator: 2)
!1424 = distinct !{!1424, !1399}
!1425 = !DILocation(line: 88, column: 2, scope: !1378)
!1426 = !DILocation(line: 89, column: 1, scope: !1378)
!1427 = distinct !DISubprogram(name: "config_escape_string", scope: !98, file: !98, line: 91, type: !1428, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!110, !91}
!1430 = !DILocalVariable(name: "text", arg: 1, scope: !1427, file: !98, line: 91, type: !91)
!1431 = !DILocation(line: 91, column: 47, scope: !1427)
!1432 = !DILocalVariable(name: "str", scope: !1427, file: !98, line: 93, type: !374)
!1433 = !DILocation(line: 93, column: 11, scope: !1427)
!1434 = !DILocalVariable(name: "ret", scope: !1427, file: !98, line: 94, type: !110)
!1435 = !DILocation(line: 94, column: 8, scope: !1427)
!1436 = !DILocation(line: 96, column: 2, scope: !1427)
!1437 = distinct !{!1437, !1436}
!1438 = !DILocation(line: 96, column: 10, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1440, file: !98, discriminator: 1)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !98, line: 96, column: 10)
!1441 = distinct !DILexicalBlock(scope: !1427, file: !98, line: 96, column: 4)
!1442 = !DILocation(line: 96, column: 15, scope: !1439)
!1443 = !DILocation(line: 96, column: 5, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1445, file: !98, discriminator: 2)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !98, line: 96, column: 3)
!1446 = !DILocation(line: 96, column: 14, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1448, file: !98, discriminator: 3)
!1448 = distinct !DILexicalBlock(scope: !1440, file: !98, line: 96, column: 12)
!1449 = !DILocation(line: 96, column: 99, scope: !1447)
!1450 = !DILocation(line: 96, column: 7, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1441, file: !98, discriminator: 4)
!1452 = !DILocation(line: 98, column: 8, scope: !1427)
!1453 = !DILocation(line: 98, column: 6, scope: !1427)
!1454 = !DILocation(line: 99, column: 2, scope: !1427)
!1455 = !DILocation(line: 99, column: 10, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1427, file: !98, discriminator: 1)
!1457 = !DILocation(line: 99, column: 9, scope: !1456)
!1458 = !DILocation(line: 99, column: 15, scope: !1456)
!1459 = !DILocation(line: 99, column: 2, scope: !1456)
!1460 = !DILocation(line: 100, column: 8, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !98, line: 100, column: 7)
!1462 = distinct !DILexicalBlock(scope: !1427, file: !98, line: 99, column: 24)
!1463 = !DILocation(line: 100, column: 7, scope: !1461)
!1464 = !DILocation(line: 100, column: 13, scope: !1461)
!1465 = !DILocation(line: 100, column: 21, scope: !1461)
!1466 = !DILocation(line: 100, column: 25, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1461, file: !98, discriminator: 1)
!1468 = !DILocation(line: 100, column: 24, scope: !1467)
!1469 = !DILocation(line: 100, column: 30, scope: !1467)
!1470 = !DILocation(line: 100, column: 7, scope: !1467)
!1471 = !DILocation(line: 101, column: 27, scope: !1461)
!1472 = !DILocation(line: 101, column: 41, scope: !1461)
!1473 = !DILocation(line: 101, column: 40, scope: !1461)
!1474 = !DILocation(line: 101, column: 4, scope: !1461)
!1475 = !DILocation(line: 102, column: 29, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1461, file: !98, line: 102, column: 12)
!1477 = !DILocation(line: 102, column: 28, scope: !1476)
!1478 = !DILocation(line: 102, column: 12, scope: !1476)
!1479 = !DILocation(line: 102, column: 34, scope: !1476)
!1480 = !DILocation(line: 102, column: 12, scope: !1461)
!1481 = !DILocation(line: 103, column: 27, scope: !1476)
!1482 = !DILocation(line: 103, column: 43, scope: !1476)
!1483 = !DILocation(line: 103, column: 42, scope: !1476)
!1484 = !DILocation(line: 103, column: 4, scope: !1476)
!1485 = !DILocation(line: 105, column: 30, scope: !1476)
!1486 = !DILocation(line: 105, column: 36, scope: !1476)
!1487 = !DILocation(line: 105, column: 35, scope: !1476)
!1488 = !DILocation(line: 105, column: 4, scope: !1476)
!1489 = !DILocation(line: 106, column: 7, scope: !1462)
!1490 = !DILocation(line: 99, column: 2, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1427, file: !98, discriminator: 2)
!1492 = distinct !{!1492, !1454}
!1493 = !DILocation(line: 109, column: 28, scope: !1427)
!1494 = !DILocation(line: 109, column: 2, scope: !1427)
!1495 = !DILocation(line: 111, column: 8, scope: !1427)
!1496 = !DILocation(line: 111, column: 13, scope: !1427)
!1497 = !DILocation(line: 111, column: 6, scope: !1427)
!1498 = !DILocation(line: 112, column: 16, scope: !1427)
!1499 = !DILocation(line: 112, column: 2, scope: !1427)
!1500 = !DILocation(line: 113, column: 9, scope: !1427)
!1501 = !DILocation(line: 113, column: 2, scope: !1427)
!1502 = !DILocation(line: 114, column: 1, scope: !1427)
!1503 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !376, file: !376, line: 161, type: !1504, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !398)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!374, !374, !88}
!1506 = !DILocalVariable(name: "gstring", arg: 1, scope: !1503, file: !376, line: 161, type: !374)
!1507 = !DILocation(line: 161, column: 36, scope: !1503)
!1508 = !DILocalVariable(name: "c", arg: 2, scope: !1503, file: !376, line: 162, type: !88)
!1509 = !DILocation(line: 162, column: 33, scope: !1503)
!1510 = !DILocation(line: 164, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1503, file: !376, line: 164, column: 7)
!1512 = !DILocation(line: 164, column: 16, scope: !1511)
!1513 = !DILocation(line: 164, column: 20, scope: !1511)
!1514 = !DILocation(line: 164, column: 26, scope: !1511)
!1515 = !DILocation(line: 164, column: 35, scope: !1511)
!1516 = !DILocation(line: 164, column: 24, scope: !1511)
!1517 = !DILocation(line: 164, column: 7, scope: !1503)
!1518 = !DILocation(line: 166, column: 38, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1511, file: !376, line: 165, column: 5)
!1520 = !DILocation(line: 166, column: 20, scope: !1519)
!1521 = !DILocation(line: 166, column: 29, scope: !1519)
!1522 = !DILocation(line: 166, column: 32, scope: !1519)
!1523 = !DILocation(line: 166, column: 7, scope: !1519)
!1524 = !DILocation(line: 166, column: 16, scope: !1519)
!1525 = !DILocation(line: 166, column: 36, scope: !1519)
!1526 = !DILocation(line: 167, column: 20, scope: !1519)
!1527 = !DILocation(line: 167, column: 29, scope: !1519)
!1528 = !DILocation(line: 167, column: 7, scope: !1519)
!1529 = !DILocation(line: 167, column: 16, scope: !1519)
!1530 = !DILocation(line: 167, column: 34, scope: !1519)
!1531 = !DILocation(line: 168, column: 5, scope: !1519)
!1532 = !DILocation(line: 170, column: 24, scope: !1511)
!1533 = !DILocation(line: 170, column: 37, scope: !1511)
!1534 = !DILocation(line: 170, column: 5, scope: !1511)
!1535 = !DILocation(line: 171, column: 10, scope: !1503)
!1536 = !DILocation(line: 171, column: 3, scope: !1503)
