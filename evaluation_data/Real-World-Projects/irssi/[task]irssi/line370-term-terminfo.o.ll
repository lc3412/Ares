; ModuleID = './line370-term-terminfo.o.i'
source_filename = "./line370-term-terminfo.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._TERM_REC = type { void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32, i32, i32)*, void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32, i32, i32)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*, i8, i32)*, void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*)*, [1024 x i8], [1024 x i8], %struct._IO_FILE*, %struct._IO_FILE*, %struct.termios, %struct.termios, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i32, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._TERM_WINDOW = type { %struct._TERM_REC*, i32, i32, i32, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct._GArray = type { i8*, i32 }

@last_bg = internal global i32 0, align 4
@last_fg = internal global i32 0, align 4
@last_attrs = internal global i32 0, align 4
@vcy = internal global i32 0, align 4
@vcx = internal global i32 0, align 4
@crealy = internal global i32 0, align 4
@crealx = internal global i32 0, align 4
@vcmove = internal global i32 0, align 4
@cforcemove = internal global i32 0, align 4
@curs_visible = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@current_term = external global %struct._TERM_REC*, align 8
@sigcont_funcs = internal global %struct._GSourceFuncs { i32 (%struct._GSource*, i32*)* @sigcont_prepare, i32 (%struct._GSource*)* @sigcont_check, i32 (%struct._GSource*, i32 (i8*)*, i8*)* @sigcont_dispatch, void (%struct._GSource*)* null, i32 (i8*)* null, void ()* null }, align 8
@sigcont_source = internal global %struct._GSource* null, align 8
@curs_y = internal global i32 0, align 4
@curs_x = internal global i32 0, align 4
@term_width = external global i32, align 4
@term_height = external global i32, align 4
@root_window = common global %struct._TERM_WINDOW* null, align 8
@term_lines_empty = internal global i8* null, align 8
@term_use_colors = external global i32, align 4
@term_color256map = external global [0 x i32], align 4
@term_type = external global i32, align 4
@g_utf8_skip = external constant i8*, align 8
@freeze_counter = internal global i32 0, align 4
@input_func = internal global i32 (i8*, i32, i32*)* null, align 8
@term_inbuf = internal global [256 x i8] zeroinitializer, align 16
@term_inbuf_pos = internal global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"command quit\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Lost terminal\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"STY\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TMUX\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"tmux\00", align 1
@term_env_warning = internal global i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.8, i32 0, i32 0), align 8
@got_sigcont = internal global i32 0, align 4
@quitting = external global i32, align 4
@termctl_set_color_24bit.buf = internal global [20 x i8] zeroinitializer, align 16
@term_use_colors24 = external global i32, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"\1B[%d8;2;%d;%d;%dm\00", align 1
@.str.8 = private unnamed_addr constant [189 x i8] c"You seem to be running Irssi inside %2$s, but the TERM environment variable is set to '%1$s', which can cause display glitches.\0AConsider changing TERM to '%2$s' or '%2$s-256color' instead.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @term_init() #0 !dbg !353 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.sigaction* %2, metadata !356, metadata !449), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %3, metadata !451, metadata !449), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %4, metadata !453, metadata !449), !dbg !454
  store i32 -1, i32* @last_bg, align 4, !dbg !455
  store i32 -1, i32* @last_fg, align 4, !dbg !456
  store i32 0, i32* @last_attrs, align 4, !dbg !457
  store i32 0, i32* @vcy, align 4, !dbg !458
  store i32 0, i32* @vcx, align 4, !dbg !459
  store i32 -1, i32* @crealy, align 4, !dbg !460
  store i32 -1, i32* @crealx, align 4, !dbg !461
  store i32 0, i32* @vcmove, align 4, !dbg !462
  store i32 1, i32* @cforcemove, align 4, !dbg !463
  store i32 1, i32* @curs_visible, align 4, !dbg !464
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !465
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !466
  %7 = call %struct._TERM_REC* @terminfo_core_init(%struct._IO_FILE* %5, %struct._IO_FILE* %6), !dbg !467
  store %struct._TERM_REC* %7, %struct._TERM_REC** @current_term, align 8, !dbg !468
  %8 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !469
  %9 = icmp eq %struct._TERM_REC* %8, null, !dbg !471
  br i1 %9, label %10, label %11, !dbg !472

; <label>:10:                                     ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !473
  br label %45, !dbg !473

; <label>:11:                                     ; preds = %0
  %12 = call i32 @term_get_size(i32* %3, i32* %4), !dbg !474
  %13 = icmp ne i32 %12, 0, !dbg !474
  br i1 %13, label %14, label %21, !dbg !476

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !477
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !479
  %17 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %16, i32 0, i32 23, !dbg !480
  store i32 %15, i32* %17, align 8, !dbg !481
  %18 = load i32, i32* %4, align 4, !dbg !482
  %19 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !483
  %20 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %19, i32 0, i32 24, !dbg !484
  store i32 %18, i32* %20, align 4, !dbg !485
  br label %21, !dbg !486

; <label>:21:                                     ; preds = %14, %11
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1, !dbg !487
  %23 = call i32 @sigemptyset(%struct.__sigset_t* %22) #8, !dbg !488
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2, !dbg !489
  store i32 0, i32* %24, align 8, !dbg !490
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0, !dbg !491
  %26 = bitcast %union.anon* %25 to void (i32)**, !dbg !492
  store void (i32)* @sig_cont, void (i32)** %26, align 8, !dbg !493
  %27 = call i32 @sigaction(i32 18, %struct.sigaction* %2, %struct.sigaction* null) #8, !dbg !494
  %28 = call %struct._GSource* @g_source_new(%struct._GSourceFuncs* @sigcont_funcs, i32 96), !dbg !495
  store %struct._GSource* %28, %struct._GSource** @sigcont_source, align 8, !dbg !496
  %29 = load %struct._GSource*, %struct._GSource** @sigcont_source, align 8, !dbg !497
  call void @g_source_set_callback(%struct._GSource* %29, i32 (i8*)* @do_redraw, i8* null, void (i8*)* null), !dbg !498
  %30 = load %struct._GSource*, %struct._GSource** @sigcont_source, align 8, !dbg !499
  %31 = call i32 @g_source_attach(%struct._GSource* %30, %struct._GMainContext* null), !dbg !500
  store i32 0, i32* @curs_y, align 4, !dbg !501
  store i32 0, i32* @curs_x, align 4, !dbg !502
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !503
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 23, !dbg !504
  %34 = load i32, i32* %33, align 8, !dbg !504
  store i32 %34, i32* @term_width, align 4, !dbg !505
  %35 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !506
  %36 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %35, i32 0, i32 24, !dbg !507
  %37 = load i32, i32* %36, align 4, !dbg !507
  store i32 %37, i32* @term_height, align 4, !dbg !508
  %38 = load i32, i32* @term_width, align 4, !dbg !509
  %39 = load i32, i32* @term_height, align 4, !dbg !510
  %40 = call %struct._TERM_WINDOW* @term_window_create(i32 0, i32 0, i32 %38, i32 %39), !dbg !511
  store %struct._TERM_WINDOW* %40, %struct._TERM_WINDOW** @root_window, align 8, !dbg !512
  %41 = load i32, i32* @term_height, align 4, !dbg !513
  %42 = sext i32 %41 to i64, !dbg !514
  %43 = call noalias i8* @g_malloc0_n(i64 %42, i64 1), !dbg !515
  store i8* %43, i8** @term_lines_empty, align 8, !dbg !516
  call void @term_set_input_type(i32 0), !dbg !517
  call void @term_common_init(), !dbg !518
  %44 = call i32 @atexit(void ()* @term_atexit) #8, !dbg !519
  store i32 1, i32* %1, align 4, !dbg !520
  br label %45, !dbg !520

; <label>:45:                                     ; preds = %21, %10
  %46 = load i32, i32* %1, align 4, !dbg !521
  ret i32 %46, !dbg !521
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._TERM_REC* @terminfo_core_init(%struct._IO_FILE*, %struct._IO_FILE*) #2

declare i32 @term_get_size(i32*, i32*) #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind uwtable
define internal void @sig_cont(i32) #0 !dbg !522 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !523, metadata !449), !dbg !524
  store volatile i32 1, i32* @got_sigcont, align 4, !dbg !525
  ret void, !dbg !526
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

declare %struct._GSource* @g_source_new(%struct._GSourceFuncs*, i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_redraw(i8*) #0 !dbg !527 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !528, metadata !449), !dbg !529
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !530
  call void @terminfo_cont(%struct._TERM_REC* %3), !dbg !531
  call void @irssi_redraw(), !dbg !532
  ret i32 1, !dbg !533
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

; Function Attrs: nounwind uwtable
define %struct._TERM_WINDOW* @term_window_create(i32, i32, i32, i32) #0 !dbg !534 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._TERM_WINDOW*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !537, metadata !449), !dbg !538
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !539, metadata !449), !dbg !540
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !541, metadata !449), !dbg !542
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !543, metadata !449), !dbg !544
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %9, metadata !545, metadata !449), !dbg !546
  %10 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !547
  %11 = bitcast i8* %10 to %struct._TERM_WINDOW*, !dbg !548
  store %struct._TERM_WINDOW* %11, %struct._TERM_WINDOW** %9, align 8, !dbg !549
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !550
  %13 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %9, align 8, !dbg !551
  %14 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %13, i32 0, i32 0, !dbg !552
  store %struct._TERM_REC* %12, %struct._TERM_REC** %14, align 8, !dbg !553
  %15 = load i32, i32* %5, align 4, !dbg !554
  %16 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %9, align 8, !dbg !555
  %17 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %16, i32 0, i32 1, !dbg !556
  store i32 %15, i32* %17, align 8, !dbg !557
  %18 = load i32, i32* %6, align 4, !dbg !558
  %19 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %9, align 8, !dbg !559
  %20 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %19, i32 0, i32 2, !dbg !560
  store i32 %18, i32* %20, align 4, !dbg !561
  %21 = load i32, i32* %7, align 4, !dbg !562
  %22 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %9, align 8, !dbg !563
  %23 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %22, i32 0, i32 3, !dbg !564
  store i32 %21, i32* %23, align 8, !dbg !565
  %24 = load i32, i32* %8, align 4, !dbg !566
  %25 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %9, align 8, !dbg !567
  %26 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %25, i32 0, i32 4, !dbg !568
  store i32 %24, i32* %26, align 4, !dbg !569
  %27 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %9, align 8, !dbg !570
  ret %struct._TERM_WINDOW* %27, !dbg !571
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @term_set_input_type(i32) #0 !dbg !572 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !573, metadata !449), !dbg !574
  %3 = load i32, i32* %2, align 4, !dbg !575
  switch i32 %3, label %6 [
    i32 1, label %4
    i32 2, label %5
  ], !dbg !576

; <label>:4:                                      ; preds = %1
  store i32 (i8*, i32, i32*)* @input_utf8, i32 (i8*, i32, i32*)** @input_func, align 8, !dbg !577
  br label %7, !dbg !579

; <label>:5:                                      ; preds = %1
  store i32 (i8*, i32, i32*)* @input_big5, i32 (i8*, i32, i32*)** @input_func, align 8, !dbg !580
  br label %7, !dbg !581

; <label>:6:                                      ; preds = %1
  store i32 (i8*, i32, i32*)* @input_8bit, i32 (i8*, i32, i32*)** @input_func, align 8, !dbg !582
  br label %7, !dbg !583

; <label>:7:                                      ; preds = %6, %5, %4
  ret void, !dbg !584
}

declare void @term_common_init() #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #3

; Function Attrs: nounwind uwtable
define internal void @term_atexit() #0 !dbg !585 {
  %1 = load i32, i32* @quitting, align 4, !dbg !586
  %2 = icmp ne i32 %1, 0, !dbg !586
  br i1 %2, label %14, label %3, !dbg !588

; <label>:3:                                      ; preds = %0
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !589
  %5 = icmp ne %struct._TERM_REC* %4, null, !dbg !589
  br i1 %5, label %6, label %14, !dbg !591

; <label>:6:                                      ; preds = %3
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !592
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 26, !dbg !594
  %9 = load i8*, i8** %8, align 8, !dbg !594
  %10 = icmp ne i8* %9, null, !dbg !592
  br i1 %10, label %11, label %14, !dbg !595

; <label>:11:                                     ; preds = %6
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !596
  %13 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %12, i32 0, i32 26, !dbg !598
  store i8* null, i8** %13, align 8, !dbg !599
  br label %14, !dbg !600

; <label>:14:                                     ; preds = %11, %6, %3, %0
  call void @term_deinit(), !dbg !601
  ret void, !dbg !602
}

; Function Attrs: nounwind uwtable
define void @term_deinit() #0 !dbg !603 {
  %1 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !604
  %2 = icmp ne %struct._TERM_REC* %1, null, !dbg !606
  br i1 %2, label %3, label %8, !dbg !607

; <label>:3:                                      ; preds = %0
  %4 = call void (i32)* @signal(i32 18, void (i32)* null) #8, !dbg !608
  %5 = load %struct._GSource*, %struct._GSource** @sigcont_source, align 8, !dbg !610
  call void @g_source_destroy(%struct._GSource* %5), !dbg !611
  %6 = load %struct._GSource*, %struct._GSource** @sigcont_source, align 8, !dbg !612
  call void @g_source_unref(%struct._GSource* %6), !dbg !613
  call void @term_common_deinit(), !dbg !614
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !615
  call void @terminfo_core_deinit(%struct._TERM_REC* %7), !dbg !616
  store %struct._TERM_REC* null, %struct._TERM_REC** @current_term, align 8, !dbg !617
  br label %8, !dbg !618

; <label>:8:                                      ; preds = %3, %0
  ret void, !dbg !619
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @g_source_destroy(%struct._GSource*) #2

declare void @g_source_unref(%struct._GSource*) #2

declare void @term_common_deinit() #2

declare void @terminfo_core_deinit(%struct._TERM_REC*) #2

; Function Attrs: nounwind uwtable
define void @term_resize(i32, i32) #0 !dbg !620 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !623, metadata !449), !dbg !624
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !625, metadata !449), !dbg !626
  %5 = load i32, i32* %3, align 4, !dbg !627
  %6 = icmp slt i32 %5, 0, !dbg !629
  br i1 %6, label %10, label %7, !dbg !630

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %4, align 4, !dbg !631
  %9 = icmp slt i32 %8, 0, !dbg !633
  br i1 %9, label %10, label %17, !dbg !634

; <label>:10:                                     ; preds = %7, %2
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !635
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 23, !dbg !637
  %13 = load i32, i32* %12, align 8, !dbg !637
  store i32 %13, i32* %3, align 4, !dbg !638
  %14 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !639
  %15 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %14, i32 0, i32 24, !dbg !640
  %16 = load i32, i32* %15, align 4, !dbg !640
  store i32 %16, i32* %4, align 4, !dbg !641
  br label %17, !dbg !642

; <label>:17:                                     ; preds = %10, %7
  %18 = load i32, i32* @term_width, align 4, !dbg !643
  %19 = load i32, i32* %3, align 4, !dbg !645
  %20 = icmp ne i32 %18, %19, !dbg !646
  br i1 %20, label %25, label %21, !dbg !647

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* @term_height, align 4, !dbg !648
  %23 = load i32, i32* %4, align 4, !dbg !650
  %24 = icmp ne i32 %22, %23, !dbg !651
  br i1 %24, label %25, label %39, !dbg !652

; <label>:25:                                     ; preds = %21, %17
  %26 = load i32, i32* %3, align 4, !dbg !653
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !655
  %28 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %27, i32 0, i32 23, !dbg !656
  store i32 %26, i32* %28, align 8, !dbg !657
  store i32 %26, i32* @term_width, align 4, !dbg !658
  %29 = load i32, i32* %4, align 4, !dbg !659
  %30 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !660
  %31 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %30, i32 0, i32 24, !dbg !661
  store i32 %29, i32* %31, align 4, !dbg !662
  store i32 %29, i32* @term_height, align 4, !dbg !663
  %32 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !664
  %33 = load i32, i32* @term_width, align 4, !dbg !665
  %34 = load i32, i32* @term_height, align 4, !dbg !666
  call void @term_window_move(%struct._TERM_WINDOW* %32, i32 0, i32 0, i32 %33, i32 %34), !dbg !667
  %35 = load i8*, i8** @term_lines_empty, align 8, !dbg !668
  call void @g_free(i8* %35), !dbg !669
  %36 = load i32, i32* @term_height, align 4, !dbg !670
  %37 = sext i32 %36 to i64, !dbg !671
  %38 = call noalias i8* @g_malloc0_n(i64 %37, i64 1), !dbg !672
  store i8* %38, i8** @term_lines_empty, align 8, !dbg !673
  br label %39, !dbg !674

; <label>:39:                                     ; preds = %25, %21
  call void @term_move_reset(i32 0, i32 0), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: nounwind uwtable
define void @term_window_move(%struct._TERM_WINDOW*, i32, i32, i32, i32) #0 !dbg !677 {
  %6 = alloca %struct._TERM_WINDOW*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %6, metadata !680, metadata !449), !dbg !681
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !682, metadata !449), !dbg !683
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !684, metadata !449), !dbg !685
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !686, metadata !449), !dbg !687
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !688, metadata !449), !dbg !689
  %11 = load i32, i32* %7, align 4, !dbg !690
  %12 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %6, align 8, !dbg !691
  %13 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %12, i32 0, i32 1, !dbg !692
  store i32 %11, i32* %13, align 8, !dbg !693
  %14 = load i32, i32* %8, align 4, !dbg !694
  %15 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %6, align 8, !dbg !695
  %16 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %15, i32 0, i32 2, !dbg !696
  store i32 %14, i32* %16, align 4, !dbg !697
  %17 = load i32, i32* %9, align 4, !dbg !698
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %6, align 8, !dbg !699
  %19 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %18, i32 0, i32 3, !dbg !700
  store i32 %17, i32* %19, align 8, !dbg !701
  %20 = load i32, i32* %10, align 4, !dbg !702
  %21 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %6, align 8, !dbg !703
  %22 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %21, i32 0, i32 4, !dbg !704
  store i32 %20, i32* %22, align 4, !dbg !705
  ret void, !dbg !706
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @term_move_reset(i32, i32) #0 !dbg !707 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !708, metadata !449), !dbg !709
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !710, metadata !449), !dbg !711
  %5 = load i32, i32* %3, align 4, !dbg !712
  %6 = load i32, i32* @term_width, align 4, !dbg !714
  %7 = icmp sge i32 %5, %6, !dbg !715
  br i1 %7, label %8, label %11, !dbg !716

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* @term_width, align 4, !dbg !717
  %10 = sub nsw i32 %9, 1, !dbg !719
  store i32 %10, i32* %3, align 4, !dbg !720
  br label %11, !dbg !721

; <label>:11:                                     ; preds = %8, %2
  %12 = load i32, i32* %4, align 4, !dbg !722
  %13 = load i32, i32* @term_height, align 4, !dbg !724
  %14 = icmp sge i32 %12, %13, !dbg !725
  br i1 %14, label %15, label %18, !dbg !726

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* @term_height, align 4, !dbg !727
  %17 = sub nsw i32 %16, 1, !dbg !729
  store i32 %17, i32* %4, align 4, !dbg !730
  br label %18, !dbg !731

; <label>:18:                                     ; preds = %15, %11
  %19 = load i32, i32* %3, align 4, !dbg !732
  store i32 %19, i32* @vcx, align 4, !dbg !733
  %20 = load i32, i32* %4, align 4, !dbg !734
  store i32 %20, i32* @vcy, align 4, !dbg !735
  store i32 1, i32* @cforcemove, align 4, !dbg !736
  call void @term_move_real(), !dbg !737
  ret void, !dbg !738
}

; Function Attrs: nounwind uwtable
define void @term_resize_final(i32, i32) #0 !dbg !739 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !740, metadata !449), !dbg !741
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !742, metadata !449), !dbg !743
  ret void, !dbg !744
}

; Function Attrs: nounwind uwtable
define i32 @term_has_colors() #0 !dbg !745 {
  %1 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !746
  %2 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %1, i32 0, i32 48, !dbg !747
  %3 = load i32, i32* %2, align 8, !dbg !747
  %4 = icmp sgt i32 %3, 0, !dbg !748
  %5 = zext i1 %4 to i32, !dbg !748
  ret i32 %5, !dbg !749
}

; Function Attrs: nounwind uwtable
define void @term_force_colors(i32) #0 !dbg !750 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !751, metadata !449), !dbg !752
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !753
  %4 = load i32, i32* %2, align 4, !dbg !754
  call void @terminfo_setup_colors(%struct._TERM_REC* %3, i32 %4), !dbg !755
  ret void, !dbg !756
}

declare void @terminfo_setup_colors(%struct._TERM_REC*, i32) #2

; Function Attrs: nounwind uwtable
define void @term_clear() #0 !dbg !757 {
  %1 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !758
  call void @term_set_color(%struct._TERM_WINDOW* %1, i32 196608), !dbg !759
  %2 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !760
  %3 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %2, i32 0, i32 4, !dbg !761
  %4 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %3, align 8, !dbg !761
  %5 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !762
  call void %4(%struct._TERM_REC* %5), !dbg !760
  call void @term_move_reset(i32 0, i32 0), !dbg !763
  %6 = load i8*, i8** @term_lines_empty, align 8, !dbg !764
  %7 = load i32, i32* @term_height, align 4, !dbg !765
  %8 = sext i32 %7 to i64, !dbg !765
  call void @llvm.memset.p0i8.i64(i8* %6, i8 1, i64 %8, i32 1, i1 false), !dbg !766
  ret void, !dbg !767
}

; Function Attrs: nounwind uwtable
define void @term_set_color(%struct._TERM_WINDOW*, i32) #0 !dbg !768 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !771, metadata !449), !dbg !772
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !773, metadata !449), !dbg !774
  call void @llvm.dbg.declare(metadata i32* %5, metadata !775, metadata !449), !dbg !776
  call void @llvm.dbg.declare(metadata i32* %6, metadata !777, metadata !449), !dbg !778
  call void @llvm.dbg.declare(metadata i32* %7, metadata !779, metadata !449), !dbg !780
  %8 = load i32, i32* %4, align 4, !dbg !781
  %9 = and i32 %8, 255, !dbg !782
  store i32 %9, i32* %6, align 4, !dbg !783
  %10 = load i32, i32* %4, align 4, !dbg !784
  %11 = and i32 %10, 65280, !dbg !785
  %12 = ashr i32 %11, 8, !dbg !786
  store i32 %12, i32* %7, align 4, !dbg !787
  %13 = load i32, i32* @term_use_colors, align 4, !dbg !788
  %14 = icmp ne i32 %13, 0, !dbg !788
  br i1 %14, label %21, label %15, !dbg !790

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %7, align 4, !dbg !791
  %17 = icmp ugt i32 %16, 0, !dbg !793
  br i1 %17, label %18, label %21, !dbg !794

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %4, align 4, !dbg !795
  %20 = or i32 %19, 2097152, !dbg !795
  store i32 %20, i32* %4, align 4, !dbg !795
  br label %21, !dbg !796

; <label>:21:                                     ; preds = %18, %15, %2
  %22 = load i32, i32* %4, align 4, !dbg !797
  %23 = and i32 %22, 65536, !dbg !798
  %24 = icmp ne i32 %23, 0, !dbg !798
  br i1 %24, label %25, label %28, !dbg !799

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* @last_fg, align 4, !dbg !800
  %27 = icmp ne i32 %26, -1, !dbg !802
  br i1 %27, label %37, label %28, !dbg !803

; <label>:28:                                     ; preds = %25, %21
  %29 = load i32, i32* %4, align 4, !dbg !804
  %30 = and i32 %29, 131072, !dbg !805
  %31 = icmp ne i32 %30, 0, !dbg !805
  br i1 %31, label %32, label %35, !dbg !806

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* @last_bg, align 4, !dbg !807
  %34 = icmp ne i32 %33, -1, !dbg !808
  br label %35

; <label>:35:                                     ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br label %37, !dbg !809

; <label>:37:                                     ; preds = %35, %25
  %38 = phi i1 [ true, %25 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32, !dbg !811
  store i32 %39, i32* %5, align 4, !dbg !813
  %40 = load i32, i32* @last_attrs, align 4, !dbg !814
  %41 = and i32 %40, 262144, !dbg !816
  %42 = icmp ne i32 %41, 0, !dbg !816
  br i1 %42, label %43, label %47, !dbg !817

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %4, align 4, !dbg !818
  %45 = and i32 %44, 262144, !dbg !820
  %46 = icmp eq i32 %45, 0, !dbg !821
  br i1 %46, label %63, label %47, !dbg !822

; <label>:47:                                     ; preds = %43, %37
  %48 = load i32, i32* @last_attrs, align 4, !dbg !823
  %49 = and i32 %48, 2097152, !dbg !824
  %50 = icmp ne i32 %49, 0, !dbg !824
  br i1 %50, label %51, label %55, !dbg !825

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %4, align 4, !dbg !826
  %53 = and i32 %52, 2097152, !dbg !827
  %54 = icmp eq i32 %53, 0, !dbg !828
  br i1 %54, label %63, label %55, !dbg !829

; <label>:55:                                     ; preds = %51, %47
  %56 = load i32, i32* @last_attrs, align 4, !dbg !830
  %57 = and i32 %56, 524288, !dbg !831
  %58 = icmp ne i32 %57, 0, !dbg !831
  br i1 %58, label %59, label %64, !dbg !832

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %4, align 4, !dbg !833
  %61 = and i32 %60, 524288, !dbg !834
  %62 = icmp eq i32 %61, 0, !dbg !835
  br i1 %62, label %63, label %64, !dbg !836

; <label>:63:                                     ; preds = %59, %51, %43
  store i32 1, i32* %5, align 4, !dbg !837
  br label %64, !dbg !839

; <label>:64:                                     ; preds = %63, %59, %55
  %65 = load i32, i32* %5, align 4, !dbg !840
  %66 = icmp ne i32 %65, 0, !dbg !840
  br i1 %66, label %67, label %72, !dbg !842

; <label>:67:                                     ; preds = %64
  store i32 -1, i32* @last_bg, align 4, !dbg !843
  store i32 -1, i32* @last_fg, align 4, !dbg !845
  store i32 0, i32* @last_attrs, align 4, !dbg !846
  %68 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !847
  %69 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %68, i32 0, i32 9, !dbg !848
  %70 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %69, align 8, !dbg !848
  %71 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !849
  call void %70(%struct._TERM_REC* %71), !dbg !847
  br label %72, !dbg !850

; <label>:72:                                     ; preds = %67, %64
  %73 = load i32, i32* %6, align 4, !dbg !851
  %74 = load i32, i32* @last_fg, align 4, !dbg !853
  %75 = icmp ne i32 %73, %74, !dbg !854
  br i1 %75, label %76, label %109, !dbg !855

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %6, align 4, !dbg !856
  %78 = icmp ne i32 %77, 0, !dbg !857
  br i1 %78, label %83, label %79, !dbg !858

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %4, align 4, !dbg !859
  %81 = and i32 %80, 65536, !dbg !861
  %82 = icmp eq i32 %81, 0, !dbg !862
  br i1 %82, label %83, label %109, !dbg !863

; <label>:83:                                     ; preds = %79, %76
  %84 = load i32, i32* @term_use_colors, align 4, !dbg !864
  %85 = icmp ne i32 %84, 0, !dbg !864
  br i1 %85, label %86, label %108, !dbg !867

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %6, align 4, !dbg !868
  store i32 %87, i32* @last_fg, align 4, !dbg !870
  %88 = load i32, i32* %6, align 4, !dbg !871
  %89 = lshr i32 %88, 8, !dbg !873
  %90 = icmp ne i32 %89, 0, !dbg !873
  br i1 %90, label %91, label %101, !dbg !874

; <label>:91:                                     ; preds = %86
  %92 = load i32, i32* @last_fg, align 4, !dbg !875
  %93 = icmp eq i32 %92, -2, !dbg !876
  br i1 %93, label %94, label %95, !dbg !875

; <label>:94:                                     ; preds = %91
  br label %98, !dbg !877

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* @last_fg, align 4, !dbg !879
  %97 = lshr i32 %96, 8, !dbg !880
  br label %98, !dbg !881

; <label>:98:                                     ; preds = %95, %94
  %99 = phi i32 [ 0, %94 ], [ %97, %95 ], !dbg !883
  %100 = call i32 @termctl_set_color_24bit(i32 0, i32 %99), !dbg !885
  br label %107, !dbg !885

; <label>:101:                                    ; preds = %86
  %102 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !886
  %103 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %102, i32 0, i32 7, !dbg !887
  %104 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %103, align 8, !dbg !887
  %105 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !888
  %106 = load i32, i32* @last_fg, align 4, !dbg !889
  call void %104(%struct._TERM_REC* %105, i32 %106), !dbg !886
  br label %107

; <label>:107:                                    ; preds = %101, %98
  br label %108, !dbg !890

; <label>:108:                                    ; preds = %107, %83
  br label %109, !dbg !891

; <label>:109:                                    ; preds = %108, %79, %72
  %110 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !892
  %111 = icmp ne %struct._TERM_WINDOW* %110, null, !dbg !892
  br i1 %111, label %112, label %135, !dbg !894

; <label>:112:                                    ; preds = %109
  %113 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !895
  %114 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %113, i32 0, i32 0, !dbg !897
  %115 = load %struct._TERM_REC*, %struct._TERM_REC** %114, align 8, !dbg !897
  %116 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %115, i32 0, i32 48, !dbg !898
  %117 = load i32, i32* %116, align 8, !dbg !898
  %118 = icmp ne i32 %117, 0, !dbg !895
  br i1 %118, label %119, label %135, !dbg !899

; <label>:119:                                    ; preds = %112
  %120 = load i32, i32* %7, align 4, !dbg !900
  %121 = and i32 %120, 255, !dbg !901
  %122 = zext i32 %121 to i64, !dbg !902
  %123 = getelementptr inbounds [0 x i32], [0 x i32]* @term_color256map, i64 0, i64 %122, !dbg !902
  %124 = load i32, i32* %123, align 4, !dbg !902
  %125 = and i32 %124, 8, !dbg !903
  %126 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !904
  %127 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %126, i32 0, i32 0, !dbg !905
  %128 = load %struct._TERM_REC*, %struct._TERM_REC** %127, align 8, !dbg !905
  %129 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %128, i32 0, i32 48, !dbg !906
  %130 = load i32, i32* %129, align 8, !dbg !906
  %131 = icmp eq i32 %125, %130, !dbg !907
  br i1 %131, label %132, label %135, !dbg !908

; <label>:132:                                    ; preds = %119
  %133 = load i32, i32* %4, align 4, !dbg !909
  %134 = or i32 %133, 524288, !dbg !909
  store i32 %134, i32* %4, align 4, !dbg !909
  br label %135, !dbg !910

; <label>:135:                                    ; preds = %132, %119, %112, %109
  %136 = load i32, i32* %4, align 4, !dbg !911
  %137 = and i32 %136, 524288, !dbg !913
  %138 = icmp ne i32 %137, 0, !dbg !913
  br i1 %138, label %139, label %144, !dbg !914

; <label>:139:                                    ; preds = %135
  %140 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !915
  %141 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %140, i32 0, i32 10, !dbg !916
  %142 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %141, align 8, !dbg !916
  %143 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !917
  call void %142(%struct._TERM_REC* %143), !dbg !915
  br label %144, !dbg !915

; <label>:144:                                    ; preds = %139, %135
  %145 = load i32, i32* %7, align 4, !dbg !918
  %146 = load i32, i32* @last_bg, align 4, !dbg !920
  %147 = icmp ne i32 %145, %146, !dbg !921
  br i1 %147, label %148, label %181, !dbg !922

; <label>:148:                                    ; preds = %144
  %149 = load i32, i32* %7, align 4, !dbg !923
  %150 = icmp ne i32 %149, 0, !dbg !924
  br i1 %150, label %155, label %151, !dbg !925

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* %4, align 4, !dbg !926
  %153 = and i32 %152, 131072, !dbg !928
  %154 = icmp eq i32 %153, 0, !dbg !929
  br i1 %154, label %155, label %181, !dbg !930

; <label>:155:                                    ; preds = %151, %148
  %156 = load i32, i32* @term_use_colors, align 4, !dbg !931
  %157 = icmp ne i32 %156, 0, !dbg !931
  br i1 %157, label %158, label %180, !dbg !934

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %7, align 4, !dbg !935
  store i32 %159, i32* @last_bg, align 4, !dbg !937
  %160 = load i32, i32* %7, align 4, !dbg !938
  %161 = lshr i32 %160, 8, !dbg !940
  %162 = icmp ne i32 %161, 0, !dbg !940
  br i1 %162, label %163, label %173, !dbg !941

; <label>:163:                                    ; preds = %158
  %164 = load i32, i32* @last_bg, align 4, !dbg !942
  %165 = icmp eq i32 %164, -2, !dbg !943
  br i1 %165, label %166, label %167, !dbg !942

; <label>:166:                                    ; preds = %163
  br label %170, !dbg !944

; <label>:167:                                    ; preds = %163
  %168 = load i32, i32* @last_bg, align 4, !dbg !946
  %169 = lshr i32 %168, 8, !dbg !947
  br label %170, !dbg !948

; <label>:170:                                    ; preds = %167, %166
  %171 = phi i32 [ 0, %166 ], [ %169, %167 ], !dbg !950
  %172 = call i32 @termctl_set_color_24bit(i32 1, i32 %171), !dbg !952
  br label %179, !dbg !952

; <label>:173:                                    ; preds = %158
  %174 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !953
  %175 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %174, i32 0, i32 8, !dbg !954
  %176 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %175, align 8, !dbg !954
  %177 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !955
  %178 = load i32, i32* @last_bg, align 4, !dbg !956
  call void %176(%struct._TERM_REC* %177, i32 %178), !dbg !953
  br label %179

; <label>:179:                                    ; preds = %173, %170
  br label %180, !dbg !957

; <label>:180:                                    ; preds = %179, %155
  br label %181, !dbg !958

; <label>:181:                                    ; preds = %180, %151, %144
  %182 = load i32, i32* %4, align 4, !dbg !959
  %183 = and i32 %182, 2097152, !dbg !961
  %184 = icmp ne i32 %183, 0, !dbg !961
  br i1 %184, label %185, label %190, !dbg !962

; <label>:185:                                    ; preds = %181
  %186 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !963
  %187 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %186, i32 0, i32 12, !dbg !964
  %188 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %187, align 8, !dbg !964
  %189 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !965
  call void %188(%struct._TERM_REC* %189), !dbg !963
  br label %190, !dbg !963

; <label>:190:                                    ; preds = %185, %181
  %191 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !966
  %192 = icmp ne %struct._TERM_WINDOW* %191, null, !dbg !966
  br i1 %192, label %193, label %216, !dbg !968

; <label>:193:                                    ; preds = %190
  %194 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !969
  %195 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %194, i32 0, i32 0, !dbg !971
  %196 = load %struct._TERM_REC*, %struct._TERM_REC** %195, align 8, !dbg !971
  %197 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %196, i32 0, i32 48, !dbg !972
  %198 = load i32, i32* %197, align 8, !dbg !972
  %199 = icmp ne i32 %198, 0, !dbg !969
  br i1 %199, label %200, label %216, !dbg !973

; <label>:200:                                    ; preds = %193
  %201 = load i32, i32* %6, align 4, !dbg !974
  %202 = and i32 %201, 255, !dbg !975
  %203 = zext i32 %202 to i64, !dbg !976
  %204 = getelementptr inbounds [0 x i32], [0 x i32]* @term_color256map, i64 0, i64 %203, !dbg !976
  %205 = load i32, i32* %204, align 4, !dbg !976
  %206 = and i32 %205, 8, !dbg !977
  %207 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !978
  %208 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %207, i32 0, i32 0, !dbg !979
  %209 = load %struct._TERM_REC*, %struct._TERM_REC** %208, align 8, !dbg !979
  %210 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %209, i32 0, i32 48, !dbg !980
  %211 = load i32, i32* %210, align 8, !dbg !980
  %212 = icmp eq i32 %206, %211, !dbg !981
  br i1 %212, label %213, label %216, !dbg !982

; <label>:213:                                    ; preds = %200
  %214 = load i32, i32* %4, align 4, !dbg !983
  %215 = or i32 %214, 262144, !dbg !983
  store i32 %215, i32* %4, align 4, !dbg !983
  br label %216, !dbg !984

; <label>:216:                                    ; preds = %213, %200, %193, %190
  %217 = load i32, i32* %4, align 4, !dbg !985
  %218 = and i32 %217, 262144, !dbg !987
  %219 = icmp ne i32 %218, 0, !dbg !987
  br i1 %219, label %220, label %225, !dbg !988

; <label>:220:                                    ; preds = %216
  %221 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !989
  %222 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %221, i32 0, i32 11, !dbg !990
  %223 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %222, align 8, !dbg !990
  %224 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !991
  call void %223(%struct._TERM_REC* %224), !dbg !989
  br label %225, !dbg !989

; <label>:225:                                    ; preds = %220, %216
  %226 = load i32, i32* %4, align 4, !dbg !992
  %227 = and i32 %226, 1048576, !dbg !994
  %228 = icmp ne i32 %227, 0, !dbg !994
  br i1 %228, label %229, label %239, !dbg !995

; <label>:229:                                    ; preds = %225
  %230 = load i32, i32* @last_attrs, align 4, !dbg !996
  %231 = and i32 %230, 1048576, !dbg !999
  %232 = icmp eq i32 %231, 0, !dbg !1000
  br i1 %232, label %233, label %238, !dbg !1001

; <label>:233:                                    ; preds = %229
  %234 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1002
  %235 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %234, i32 0, i32 13, !dbg !1003
  %236 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %235, align 8, !dbg !1003
  %237 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1004
  call void %236(%struct._TERM_REC* %237, i32 1), !dbg !1002
  br label %238, !dbg !1002

; <label>:238:                                    ; preds = %233, %229
  br label %249, !dbg !1005

; <label>:239:                                    ; preds = %225
  %240 = load i32, i32* @last_attrs, align 4, !dbg !1006
  %241 = and i32 %240, 1048576, !dbg !1009
  %242 = icmp ne i32 %241, 0, !dbg !1009
  br i1 %242, label %243, label %248, !dbg !1006

; <label>:243:                                    ; preds = %239
  %244 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1010
  %245 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %244, i32 0, i32 13, !dbg !1011
  %246 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %245, align 8, !dbg !1011
  %247 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1012
  call void %246(%struct._TERM_REC* %247, i32 0), !dbg !1010
  br label %248, !dbg !1010

; <label>:248:                                    ; preds = %243, %239
  br label %249

; <label>:249:                                    ; preds = %248, %238
  %250 = load i32, i32* %4, align 4, !dbg !1013
  %251 = and i32 %250, 4194304, !dbg !1015
  %252 = icmp ne i32 %251, 0, !dbg !1015
  br i1 %252, label %253, label %263, !dbg !1016

; <label>:253:                                    ; preds = %249
  %254 = load i32, i32* @last_attrs, align 4, !dbg !1017
  %255 = and i32 %254, 4194304, !dbg !1020
  %256 = icmp eq i32 %255, 0, !dbg !1021
  br i1 %256, label %257, label %262, !dbg !1022

; <label>:257:                                    ; preds = %253
  %258 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1023
  %259 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %258, i32 0, i32 15, !dbg !1024
  %260 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %259, align 8, !dbg !1024
  %261 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1025
  call void %260(%struct._TERM_REC* %261, i32 1), !dbg !1023
  br label %262, !dbg !1023

; <label>:262:                                    ; preds = %257, %253
  br label %273, !dbg !1026

; <label>:263:                                    ; preds = %249
  %264 = load i32, i32* @last_attrs, align 4, !dbg !1027
  %265 = and i32 %264, 4194304, !dbg !1030
  %266 = icmp ne i32 %265, 0, !dbg !1030
  br i1 %266, label %267, label %272, !dbg !1027

; <label>:267:                                    ; preds = %263
  %268 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1031
  %269 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %268, i32 0, i32 15, !dbg !1032
  %270 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %269, align 8, !dbg !1032
  %271 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1033
  call void %270(%struct._TERM_REC* %271, i32 0), !dbg !1031
  br label %272, !dbg !1031

; <label>:272:                                    ; preds = %267, %263
  br label %273

; <label>:273:                                    ; preds = %272, %262
  %274 = load i32, i32* %4, align 4, !dbg !1034
  %275 = and i32 %274, -65536, !dbg !1035
  store i32 %275, i32* @last_attrs, align 4, !dbg !1036
  ret void, !dbg !1037
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @term_beep() #0 !dbg !1038 {
  %1 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1039
  %2 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %1, i32 0, i32 16, !dbg !1040
  %3 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %2, align 8, !dbg !1040
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1041
  call void %3(%struct._TERM_REC* %4), !dbg !1039
  ret void, !dbg !1042
}

; Function Attrs: nounwind uwtable
define void @term_window_destroy(%struct._TERM_WINDOW*) #0 !dbg !1043 {
  %2 = alloca %struct._TERM_WINDOW*, align 8
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %2, metadata !1046, metadata !449), !dbg !1047
  %3 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1048
  %4 = bitcast %struct._TERM_WINDOW* %3 to i8*, !dbg !1048
  call void @g_free(i8* %4), !dbg !1049
  ret void, !dbg !1050
}

; Function Attrs: nounwind uwtable
define void @term_window_clear(%struct._TERM_WINDOW*) #0 !dbg !1051 {
  %2 = alloca %struct._TERM_WINDOW*, align 8
  %3 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %2, metadata !1052, metadata !449), !dbg !1053
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1054, metadata !449), !dbg !1055
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1056
  %5 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %4, i32 0, i32 9, !dbg !1057
  %6 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %5, align 8, !dbg !1057
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1058
  call void %6(%struct._TERM_REC* %7), !dbg !1056
  %8 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1059
  %9 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %8, i32 0, i32 2, !dbg !1061
  %10 = load i32, i32* %9, align 4, !dbg !1061
  %11 = icmp eq i32 %10, 0, !dbg !1062
  br i1 %11, label %12, label %25, !dbg !1063

; <label>:12:                                     ; preds = %1
  %13 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1064
  %14 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %13, i32 0, i32 4, !dbg !1066
  %15 = load i32, i32* %14, align 4, !dbg !1066
  %16 = load i32, i32* @term_height, align 4, !dbg !1067
  %17 = icmp eq i32 %15, %16, !dbg !1068
  br i1 %17, label %18, label %25, !dbg !1069

; <label>:18:                                     ; preds = %12
  %19 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1070
  %20 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %19, i32 0, i32 3, !dbg !1072
  %21 = load i32, i32* %20, align 8, !dbg !1072
  %22 = load i32, i32* @term_width, align 4, !dbg !1073
  %23 = icmp eq i32 %21, %22, !dbg !1074
  br i1 %23, label %24, label %25, !dbg !1075

; <label>:24:                                     ; preds = %18
  call void @term_clear(), !dbg !1076
  br label %40, !dbg !1078

; <label>:25:                                     ; preds = %18, %12, %1
  store i32 0, i32* %3, align 4, !dbg !1079
  br label %26, !dbg !1082

; <label>:26:                                     ; preds = %36, %25
  %27 = load i32, i32* %3, align 4, !dbg !1083
  %28 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1086
  %29 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %28, i32 0, i32 4, !dbg !1087
  %30 = load i32, i32* %29, align 4, !dbg !1087
  %31 = icmp slt i32 %27, %30, !dbg !1088
  br i1 %31, label %32, label %39, !dbg !1089

; <label>:32:                                     ; preds = %26
  %33 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1090
  %34 = load i32, i32* %3, align 4, !dbg !1092
  call void @term_move(%struct._TERM_WINDOW* %33, i32 0, i32 %34), !dbg !1093
  %35 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1094
  call void @term_clrtoeol(%struct._TERM_WINDOW* %35), !dbg !1095
  br label %36, !dbg !1096

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %3, align 4, !dbg !1097
  %38 = add nsw i32 %37, 1, !dbg !1097
  store i32 %38, i32* %3, align 4, !dbg !1097
  br label %26, !dbg !1099, !llvm.loop !1100

; <label>:39:                                     ; preds = %26
  br label %40

; <label>:40:                                     ; preds = %39, %24
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define void @term_move(%struct._TERM_WINDOW*, i32, i32) #0 !dbg !1103 {
  %4 = alloca %struct._TERM_WINDOW*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %4, metadata !1106, metadata !449), !dbg !1107
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1108, metadata !449), !dbg !1109
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1110, metadata !449), !dbg !1111
  %7 = load i32, i32* %5, align 4, !dbg !1112
  %8 = icmp sge i32 %7, 0, !dbg !1114
  br i1 %8, label %9, label %37, !dbg !1115

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %6, align 4, !dbg !1116
  %11 = icmp sge i32 %10, 0, !dbg !1118
  br i1 %11, label %12, label %37, !dbg !1119

; <label>:12:                                     ; preds = %9
  store i32 1, i32* @vcmove, align 4, !dbg !1120
  %13 = load i32, i32* %5, align 4, !dbg !1122
  %14 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %4, align 8, !dbg !1123
  %15 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %14, i32 0, i32 1, !dbg !1124
  %16 = load i32, i32* %15, align 8, !dbg !1124
  %17 = add nsw i32 %13, %16, !dbg !1125
  store i32 %17, i32* @vcx, align 4, !dbg !1126
  %18 = load i32, i32* %6, align 4, !dbg !1127
  %19 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %4, align 8, !dbg !1128
  %20 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %19, i32 0, i32 2, !dbg !1129
  %21 = load i32, i32* %20, align 4, !dbg !1129
  %22 = add nsw i32 %18, %21, !dbg !1130
  store i32 %22, i32* @vcy, align 4, !dbg !1131
  %23 = load i32, i32* @vcx, align 4, !dbg !1132
  %24 = load i32, i32* @term_width, align 4, !dbg !1134
  %25 = icmp sge i32 %23, %24, !dbg !1135
  br i1 %25, label %26, label %29, !dbg !1136

; <label>:26:                                     ; preds = %12
  %27 = load i32, i32* @term_width, align 4, !dbg !1137
  %28 = sub nsw i32 %27, 1, !dbg !1138
  store i32 %28, i32* @vcx, align 4, !dbg !1139
  br label %29, !dbg !1140

; <label>:29:                                     ; preds = %26, %12
  %30 = load i32, i32* @vcy, align 4, !dbg !1141
  %31 = load i32, i32* @term_height, align 4, !dbg !1143
  %32 = icmp sge i32 %30, %31, !dbg !1144
  br i1 %32, label %33, label %36, !dbg !1145

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* @term_height, align 4, !dbg !1146
  %35 = sub nsw i32 %34, 1, !dbg !1147
  store i32 %35, i32* @vcy, align 4, !dbg !1148
  br label %36, !dbg !1149

; <label>:36:                                     ; preds = %33, %29
  br label %37, !dbg !1150

; <label>:37:                                     ; preds = %36, %9, %3
  ret void, !dbg !1151
}

; Function Attrs: nounwind uwtable
define void @term_clrtoeol(%struct._TERM_WINDOW*) #0 !dbg !1152 {
  %2 = alloca %struct._TERM_WINDOW*, align 8
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %2, metadata !1153, metadata !449), !dbg !1154
  %3 = load i32, i32* @vcx, align 4, !dbg !1155
  %4 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1157
  %5 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %4, i32 0, i32 1, !dbg !1158
  %6 = load i32, i32* %5, align 8, !dbg !1158
  %7 = icmp slt i32 %3, %6, !dbg !1159
  br i1 %7, label %8, label %14, !dbg !1160

; <label>:8:                                      ; preds = %1
  %9 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1161
  %10 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %9, i32 0, i32 1, !dbg !1163
  %11 = load i32, i32* %10, align 8, !dbg !1163
  %12 = load i32, i32* @vcx, align 4, !dbg !1164
  %13 = add nsw i32 %12, %11, !dbg !1164
  store i32 %13, i32* @vcx, align 4, !dbg !1164
  store i32 1, i32* @vcmove, align 4, !dbg !1165
  br label %14, !dbg !1166

; <label>:14:                                     ; preds = %8, %1
  %15 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1167
  %16 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %15, i32 0, i32 1, !dbg !1169
  %17 = load i32, i32* %16, align 8, !dbg !1169
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1170
  %19 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %18, i32 0, i32 3, !dbg !1171
  %20 = load i32, i32* %19, align 8, !dbg !1171
  %21 = add nsw i32 %17, %20, !dbg !1172
  %22 = load i32, i32* @term_width, align 4, !dbg !1173
  %23 = icmp slt i32 %21, %22, !dbg !1174
  br i1 %23, label %24, label %53, !dbg !1175

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* @vcmove, align 4, !dbg !1176
  %26 = icmp ne i32 %25, 0, !dbg !1176
  br i1 %26, label %27, label %28, !dbg !1179

; <label>:27:                                     ; preds = %24
  call void @term_move_real(), !dbg !1180
  br label %28, !dbg !1180

; <label>:28:                                     ; preds = %27, %24
  %29 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1182
  %30 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %29, i32 0, i32 6, !dbg !1183
  %31 = load void (%struct._TERM_REC*, i8, i32)*, void (%struct._TERM_REC*, i8, i32)** %30, align 8, !dbg !1183
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1184
  %33 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1185
  %34 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %33, i32 0, i32 1, !dbg !1186
  %35 = load i32, i32* %34, align 8, !dbg !1186
  %36 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1187
  %37 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %36, i32 0, i32 3, !dbg !1188
  %38 = load i32, i32* %37, align 8, !dbg !1188
  %39 = add nsw i32 %35, %38, !dbg !1189
  %40 = load i32, i32* @vcx, align 4, !dbg !1190
  %41 = sub nsw i32 %39, %40, !dbg !1191
  %42 = add nsw i32 %41, 1, !dbg !1192
  call void %31(%struct._TERM_REC* %32, i8 signext 32, i32 %42), !dbg !1182
  %43 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1193
  %44 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %43, i32 0, i32 0, !dbg !1194
  %45 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %44, align 8, !dbg !1194
  %46 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1195
  %47 = load i32, i32* @vcx, align 4, !dbg !1196
  %48 = load i32, i32* @vcy, align 4, !dbg !1197
  call void %45(%struct._TERM_REC* %46, i32 %47, i32 %48), !dbg !1193
  %49 = load i32, i32* @vcy, align 4, !dbg !1198
  %50 = sext i32 %49 to i64, !dbg !1199
  %51 = load i8*, i8** @term_lines_empty, align 8, !dbg !1199
  %52 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !1199
  store i8 0, i8* %52, align 1, !dbg !1200
  br label %116, !dbg !1201

; <label>:53:                                     ; preds = %14
  %54 = load i32, i32* @last_fg, align 4, !dbg !1202
  %55 = icmp eq i32 %54, -1, !dbg !1205
  br i1 %55, label %56, label %88, !dbg !1206

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* @last_bg, align 4, !dbg !1207
  %58 = icmp eq i32 %57, -1, !dbg !1209
  br i1 %58, label %59, label %88, !dbg !1210

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* @last_attrs, align 4, !dbg !1211
  %61 = and i32 %60, 7340032, !dbg !1212
  %62 = icmp eq i32 %61, 0, !dbg !1213
  br i1 %62, label %63, label %88, !dbg !1214

; <label>:63:                                     ; preds = %59
  %64 = load i32, i32* @vcy, align 4, !dbg !1216
  %65 = sext i32 %64 to i64, !dbg !1219
  %66 = load i8*, i8** @term_lines_empty, align 8, !dbg !1219
  %67 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !1219
  %68 = load i8, i8* %67, align 1, !dbg !1219
  %69 = icmp ne i8 %68, 0, !dbg !1219
  br i1 %69, label %87, label %70, !dbg !1220

; <label>:70:                                     ; preds = %63
  %71 = load i32, i32* @vcmove, align 4, !dbg !1221
  %72 = icmp ne i32 %71, 0, !dbg !1221
  br i1 %72, label %73, label %74, !dbg !1224

; <label>:73:                                     ; preds = %70
  call void @term_move_real(), !dbg !1225
  br label %74, !dbg !1225

; <label>:74:                                     ; preds = %73, %70
  %75 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1227
  %76 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %75, i32 0, i32 5, !dbg !1228
  %77 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %76, align 8, !dbg !1228
  %78 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1229
  call void %77(%struct._TERM_REC* %78), !dbg !1227
  %79 = load i32, i32* @vcx, align 4, !dbg !1230
  %80 = icmp eq i32 %79, 0, !dbg !1232
  br i1 %80, label %81, label %86, !dbg !1233

; <label>:81:                                     ; preds = %74
  %82 = load i32, i32* @vcy, align 4, !dbg !1234
  %83 = sext i32 %82 to i64, !dbg !1236
  %84 = load i8*, i8** @term_lines_empty, align 8, !dbg !1236
  %85 = getelementptr inbounds i8, i8* %84, i64 %83, !dbg !1236
  store i8 1, i8* %85, align 1, !dbg !1237
  br label %86, !dbg !1236

; <label>:86:                                     ; preds = %81, %74
  br label %87, !dbg !1238

; <label>:87:                                     ; preds = %86, %63
  br label %115, !dbg !1239

; <label>:88:                                     ; preds = %59, %56, %53
  %89 = load i32, i32* @vcx, align 4, !dbg !1240
  %90 = load i32, i32* @term_width, align 4, !dbg !1243
  %91 = icmp slt i32 %89, %90, !dbg !1244
  br i1 %91, label %92, label %114, !dbg !1240

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* @vcmove, align 4, !dbg !1245
  %94 = icmp ne i32 %93, 0, !dbg !1245
  br i1 %94, label %95, label %96, !dbg !1248

; <label>:95:                                     ; preds = %92
  call void @term_move_real(), !dbg !1249
  br label %96, !dbg !1249

; <label>:96:                                     ; preds = %95, %92
  %97 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1251
  %98 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %97, i32 0, i32 6, !dbg !1252
  %99 = load void (%struct._TERM_REC*, i8, i32)*, void (%struct._TERM_REC*, i8, i32)** %98, align 8, !dbg !1252
  %100 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1253
  %101 = load i32, i32* @term_width, align 4, !dbg !1254
  %102 = load i32, i32* @vcx, align 4, !dbg !1255
  %103 = sub nsw i32 %101, %102, !dbg !1256
  call void %99(%struct._TERM_REC* %100, i8 signext 32, i32 %103), !dbg !1251
  %104 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1257
  %105 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %104, i32 0, i32 0, !dbg !1258
  %106 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %105, align 8, !dbg !1258
  %107 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1259
  %108 = load i32, i32* @vcx, align 4, !dbg !1260
  %109 = load i32, i32* @vcy, align 4, !dbg !1261
  call void %106(%struct._TERM_REC* %107, i32 %108, i32 %109), !dbg !1257
  %110 = load i32, i32* @vcy, align 4, !dbg !1262
  %111 = sext i32 %110 to i64, !dbg !1263
  %112 = load i8*, i8** @term_lines_empty, align 8, !dbg !1263
  %113 = getelementptr inbounds i8, i8* %112, i64 %111, !dbg !1263
  store i8 0, i8* %113, align 1, !dbg !1264
  br label %114, !dbg !1265

; <label>:114:                                    ; preds = %96, %88
  br label %115

; <label>:115:                                    ; preds = %114, %87
  br label %116

; <label>:116:                                    ; preds = %115, %28
  ret void, !dbg !1266
}

; Function Attrs: nounwind uwtable
define void @term_window_scroll(%struct._TERM_WINDOW*, i32) #0 !dbg !1267 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1268, metadata !449), !dbg !1269
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1270, metadata !449), !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1272, metadata !449), !dbg !1273
  %6 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1274
  %7 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %6, i32 0, i32 3, !dbg !1275
  %8 = load void (%struct._TERM_REC*, i32, i32, i32)*, void (%struct._TERM_REC*, i32, i32, i32)** %7, align 8, !dbg !1275
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1276
  %10 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1277
  %11 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %10, i32 0, i32 2, !dbg !1278
  %12 = load i32, i32* %11, align 4, !dbg !1278
  %13 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1279
  %14 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %13, i32 0, i32 2, !dbg !1280
  %15 = load i32, i32* %14, align 4, !dbg !1280
  %16 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1281
  %17 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %16, i32 0, i32 4, !dbg !1282
  %18 = load i32, i32* %17, align 4, !dbg !1282
  %19 = add nsw i32 %15, %18, !dbg !1283
  %20 = sub nsw i32 %19, 1, !dbg !1284
  %21 = load i32, i32* %4, align 4, !dbg !1285
  call void %8(%struct._TERM_REC* %9, i32 %12, i32 %20, i32 %21), !dbg !1274
  %22 = load i32, i32* @vcx, align 4, !dbg !1286
  %23 = load i32, i32* @vcy, align 4, !dbg !1287
  call void @term_move_reset(i32 %22, i32 %23), !dbg !1288
  store i32 0, i32* %5, align 4, !dbg !1289
  br label %24, !dbg !1291

; <label>:24:                                     ; preds = %49, %2
  %25 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1292
  %26 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %25, i32 0, i32 2, !dbg !1295
  %27 = load i32, i32* %26, align 4, !dbg !1295
  %28 = load i32, i32* %5, align 4, !dbg !1296
  %29 = add nsw i32 %27, %28, !dbg !1297
  %30 = load i32, i32* @term_height, align 4, !dbg !1298
  %31 = icmp slt i32 %29, %30, !dbg !1299
  br i1 %31, label %32, label %38, !dbg !1300

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %5, align 4, !dbg !1301
  %34 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1303
  %35 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %34, i32 0, i32 4, !dbg !1304
  %36 = load i32, i32* %35, align 4, !dbg !1304
  %37 = icmp slt i32 %33, %36, !dbg !1305
  br label %38

; <label>:38:                                     ; preds = %32, %24
  %39 = phi i1 [ false, %24 ], [ %37, %32 ]
  br i1 %39, label %40, label %52, !dbg !1306

; <label>:40:                                     ; preds = %38
  %41 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1308
  %42 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %41, i32 0, i32 2, !dbg !1309
  %43 = load i32, i32* %42, align 4, !dbg !1309
  %44 = load i32, i32* %5, align 4, !dbg !1310
  %45 = add nsw i32 %43, %44, !dbg !1311
  %46 = sext i32 %45 to i64, !dbg !1312
  %47 = load i8*, i8** @term_lines_empty, align 8, !dbg !1312
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !1312
  store i8 0, i8* %48, align 1, !dbg !1313
  br label %49, !dbg !1312

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %5, align 4, !dbg !1314
  %51 = add nsw i32 %50, 1, !dbg !1314
  store i32 %51, i32* %5, align 4, !dbg !1314
  br label %24, !dbg !1316, !llvm.loop !1317

; <label>:52:                                     ; preds = %38
  ret void, !dbg !1319
}

; Function Attrs: nounwind uwtable
define internal i32 @termctl_set_color_24bit(i32, i32) #0 !dbg !345 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1320, metadata !449), !dbg !1321
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1322, metadata !449), !dbg !1323
  call void @llvm.dbg.declare(metadata [3 x i8]* %6, metadata !1324, metadata !449), !dbg !1328
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0, !dbg !1329
  %8 = load i32, i32* %5, align 4, !dbg !1330
  %9 = lshr i32 %8, 16, !dbg !1331
  %10 = trunc i32 %9 to i8, !dbg !1330
  store i8 %10, i8* %7, align 1, !dbg !1329
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1329
  %12 = load i32, i32* %5, align 4, !dbg !1332
  %13 = lshr i32 %12, 8, !dbg !1333
  %14 = trunc i32 %13 to i8, !dbg !1332
  store i8 %14, i8* %11, align 1, !dbg !1329
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1329
  %16 = load i32, i32* %5, align 4, !dbg !1334
  %17 = trunc i32 %16 to i8, !dbg !1334
  store i8 %17, i8* %15, align 1, !dbg !1329
  %18 = load i32, i32* @term_use_colors24, align 4, !dbg !1335
  %19 = icmp ne i32 %18, 0, !dbg !1335
  br i1 %19, label %40, label %20, !dbg !1337

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %4, align 4, !dbg !1338
  %22 = icmp ne i32 %21, 0, !dbg !1338
  br i1 %22, label %23, label %31, !dbg !1341

; <label>:23:                                     ; preds = %20
  %24 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1342
  %25 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %24, i32 0, i32 8, !dbg !1343
  %26 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %25, align 8, !dbg !1343
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1344
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i32 0, i32 0, !dbg !1345
  %29 = call signext i16 @color_24bit_256(i8* %28), !dbg !1346
  %30 = sext i16 %29 to i32, !dbg !1346
  call void %26(%struct._TERM_REC* %27, i32 %30), !dbg !1347
  br label %39, !dbg !1342

; <label>:31:                                     ; preds = %20
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1349
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 7, !dbg !1350
  %34 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %33, align 8, !dbg !1350
  %35 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1351
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i32 0, i32 0, !dbg !1352
  %37 = call signext i16 @color_24bit_256(i8* %36), !dbg !1353
  %38 = sext i16 %37 to i32, !dbg !1353
  call void %34(%struct._TERM_REC* %35, i32 %38), !dbg !1354
  br label %39

; <label>:39:                                     ; preds = %31, %23
  store i32 -1, i32* %3, align 4, !dbg !1355
  br label %55, !dbg !1355

; <label>:40:                                     ; preds = %2
  %41 = load i32, i32* %4, align 4, !dbg !1356
  %42 = icmp ne i32 %41, 0, !dbg !1356
  %43 = select i1 %42, i32 4, i32 3, !dbg !1356
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0, !dbg !1357
  %45 = load i8, i8* %44, align 1, !dbg !1357
  %46 = zext i8 %45 to i32, !dbg !1357
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1, !dbg !1358
  %48 = load i8, i8* %47, align 1, !dbg !1358
  %49 = zext i8 %48 to i32, !dbg !1358
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2, !dbg !1359
  %51 = load i8, i8* %50, align 1, !dbg !1359
  %52 = zext i8 %51 to i32, !dbg !1359
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @termctl_set_color_24bit.buf, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %43, i32 %46, i32 %49, i32 %52) #8, !dbg !1360
  %54 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @termctl_set_color_24bit.buf, i32 0, i32 0), i32 0, i32 (i32)* @term_putchar), !dbg !1361
  store i32 %54, i32* %3, align 4, !dbg !1362
  br label %55, !dbg !1362

; <label>:55:                                     ; preds = %40, %39
  %56 = load i32, i32* %3, align 4, !dbg !1363
  ret i32 %56, !dbg !1363
}

; Function Attrs: nounwind uwtable
define void @term_addch(%struct._TERM_WINDOW*, i8 signext) #0 !dbg !1364 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i8, align 1
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1367, metadata !449), !dbg !1368
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1369, metadata !449), !dbg !1370
  %5 = load i32, i32* @vcmove, align 4, !dbg !1371
  %6 = icmp ne i32 %5, 0, !dbg !1371
  br i1 %6, label %7, label %8, !dbg !1373

; <label>:7:                                      ; preds = %2
  call void @term_move_real(), !dbg !1374
  br label %8, !dbg !1374

; <label>:8:                                      ; preds = %7, %2
  %9 = load i32, i32* @term_type, align 4, !dbg !1376
  %10 = icmp ne i32 %9, 1, !dbg !1378
  br i1 %10, label %21, label %11, !dbg !1379

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %4, align 1, !dbg !1380
  %13 = sext i8 %12 to i32, !dbg !1380
  %14 = and i32 %13, 128, !dbg !1381
  %15 = icmp eq i32 %14, 0, !dbg !1382
  br i1 %15, label %21, label %16, !dbg !1383

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %4, align 1, !dbg !1384
  %18 = sext i8 %17 to i32, !dbg !1384
  %19 = and i32 %18, 64, !dbg !1386
  %20 = icmp eq i32 %19, 0, !dbg !1387
  br i1 %20, label %21, label %22, !dbg !1388

; <label>:21:                                     ; preds = %16, %11, %8
  call void @term_printed_text(i32 1), !dbg !1390
  br label %22, !dbg !1392

; <label>:22:                                     ; preds = %21, %16
  %23 = load i8, i8* %4, align 1, !dbg !1393
  %24 = sext i8 %23 to i32, !dbg !1393
  %25 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1393
  %26 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %25, i32 0, i32 0, !dbg !1394
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** %26, align 8, !dbg !1394
  %28 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %27, i32 0, i32 20, !dbg !1395
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8, !dbg !1395
  %30 = call i32 @_IO_putc(i32 %24, %struct._IO_FILE* %29), !dbg !1393
  ret void, !dbg !1396
}

; Function Attrs: nounwind uwtable
define internal void @term_move_real() #0 !dbg !1397 {
  %1 = load i32, i32* @vcx, align 4, !dbg !1398
  %2 = load i32, i32* @crealx, align 4, !dbg !1400
  %3 = icmp ne i32 %1, %2, !dbg !1401
  br i1 %3, label %11, label %4, !dbg !1402

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @vcy, align 4, !dbg !1403
  %6 = load i32, i32* @crealy, align 4, !dbg !1405
  %7 = icmp ne i32 %5, %6, !dbg !1406
  br i1 %7, label %11, label %8, !dbg !1407

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @cforcemove, align 4, !dbg !1408
  %10 = icmp ne i32 %9, 0, !dbg !1408
  br i1 %10, label %11, label %34, !dbg !1410

; <label>:11:                                     ; preds = %8, %4, %0
  %12 = load i32, i32* @curs_visible, align 4, !dbg !1411
  %13 = icmp ne i32 %12, 0, !dbg !1411
  br i1 %13, label %14, label %19, !dbg !1414

; <label>:14:                                     ; preds = %11
  %15 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1415
  %16 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %15, i32 0, i32 2, !dbg !1417
  %17 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %16, align 8, !dbg !1417
  %18 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1418
  call void %17(%struct._TERM_REC* %18, i32 0), !dbg !1415
  store i32 0, i32* @curs_visible, align 4, !dbg !1419
  br label %19, !dbg !1420

; <label>:19:                                     ; preds = %14, %11
  %20 = load i32, i32* @cforcemove, align 4, !dbg !1421
  %21 = icmp ne i32 %20, 0, !dbg !1421
  br i1 %21, label %22, label %23, !dbg !1423

; <label>:22:                                     ; preds = %19
  store i32 -1, i32* @crealy, align 4, !dbg !1424
  store i32 -1, i32* @crealx, align 4, !dbg !1426
  store i32 0, i32* @cforcemove, align 4, !dbg !1427
  br label %23, !dbg !1428

; <label>:23:                                     ; preds = %22, %19
  %24 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1429
  %25 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %24, i32 0, i32 1, !dbg !1430
  %26 = load void (%struct._TERM_REC*, i32, i32, i32, i32)*, void (%struct._TERM_REC*, i32, i32, i32, i32)** %25, align 8, !dbg !1430
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1431
  %28 = load i32, i32* @crealx, align 4, !dbg !1432
  %29 = load i32, i32* @crealy, align 4, !dbg !1433
  %30 = load i32, i32* @vcx, align 4, !dbg !1434
  %31 = load i32, i32* @vcy, align 4, !dbg !1435
  call void %26(%struct._TERM_REC* %27, i32 %28, i32 %29, i32 %30, i32 %31), !dbg !1429
  %32 = load i32, i32* @vcx, align 4, !dbg !1436
  store i32 %32, i32* @crealx, align 4, !dbg !1437
  %33 = load i32, i32* @vcy, align 4, !dbg !1438
  store i32 %33, i32* @crealy, align 4, !dbg !1439
  br label %34, !dbg !1440

; <label>:34:                                     ; preds = %23, %8
  store i32 0, i32* @vcmove, align 4, !dbg !1441
  ret void, !dbg !1442
}

; Function Attrs: nounwind uwtable
define internal void @term_printed_text(i32) #0 !dbg !1443 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1444, metadata !449), !dbg !1445
  %3 = load i32, i32* @vcy, align 4, !dbg !1446
  %4 = sext i32 %3 to i64, !dbg !1447
  %5 = load i8*, i8** @term_lines_empty, align 8, !dbg !1447
  %6 = getelementptr inbounds i8, i8* %5, i64 %4, !dbg !1447
  store i8 0, i8* %6, align 1, !dbg !1448
  %7 = load i32, i32* %2, align 4, !dbg !1449
  %8 = load i32, i32* @vcx, align 4, !dbg !1450
  %9 = add nsw i32 %8, %7, !dbg !1450
  store i32 %9, i32* @vcx, align 4, !dbg !1450
  br label %10, !dbg !1451

; <label>:10:                                     ; preds = %33, %1
  %11 = load i32, i32* @vcx, align 4, !dbg !1452
  %12 = load i32, i32* @term_width, align 4, !dbg !1454
  %13 = icmp sge i32 %11, %12, !dbg !1455
  br i1 %13, label %14, label %34, !dbg !1456

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* @term_width, align 4, !dbg !1457
  %16 = load i32, i32* @vcx, align 4, !dbg !1459
  %17 = sub nsw i32 %16, %15, !dbg !1459
  store i32 %17, i32* @vcx, align 4, !dbg !1459
  %18 = load i32, i32* @vcy, align 4, !dbg !1460
  %19 = load i32, i32* @term_height, align 4, !dbg !1462
  %20 = sub nsw i32 %19, 1, !dbg !1463
  %21 = icmp slt i32 %18, %20, !dbg !1464
  br i1 %21, label %22, label %25, !dbg !1465

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* @vcy, align 4, !dbg !1466
  %24 = add nsw i32 %23, 1, !dbg !1466
  store i32 %24, i32* @vcy, align 4, !dbg !1466
  br label %25, !dbg !1468

; <label>:25:                                     ; preds = %22, %14
  %26 = load i32, i32* @vcx, align 4, !dbg !1469
  %27 = icmp sgt i32 %26, 0, !dbg !1471
  br i1 %27, label %28, label %33, !dbg !1472

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* @vcy, align 4, !dbg !1473
  %30 = sext i32 %29 to i64, !dbg !1475
  %31 = load i8*, i8** @term_lines_empty, align 8, !dbg !1475
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !1475
  store i8 0, i8* %32, align 1, !dbg !1476
  br label %33, !dbg !1475

; <label>:33:                                     ; preds = %28, %25
  br label %10, !dbg !1477, !llvm.loop !1479

; <label>:34:                                     ; preds = %10
  %35 = load i32, i32* %2, align 4, !dbg !1480
  %36 = load i32, i32* @crealx, align 4, !dbg !1481
  %37 = add nsw i32 %36, %35, !dbg !1481
  store i32 %37, i32* @crealx, align 4, !dbg !1481
  %38 = load i32, i32* @crealx, align 4, !dbg !1482
  %39 = load i32, i32* @term_width, align 4, !dbg !1484
  %40 = icmp sge i32 %38, %39, !dbg !1485
  br i1 %40, label %41, label %42, !dbg !1486

; <label>:41:                                     ; preds = %34
  store i32 1, i32* @cforcemove, align 4, !dbg !1487
  br label %42, !dbg !1488

; <label>:42:                                     ; preds = %41, %34
  ret void, !dbg !1489
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @term_add_unichar(%struct._TERM_WINDOW*, i32) #0 !dbg !1490 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1493, metadata !449), !dbg !1494
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1495, metadata !449), !dbg !1496
  %5 = load i32, i32* @vcmove, align 4, !dbg !1497
  %6 = icmp ne i32 %5, 0, !dbg !1497
  br i1 %6, label %7, label %8, !dbg !1499

; <label>:7:                                      ; preds = %2
  call void @term_move_real(), !dbg !1500
  br label %8, !dbg !1500

; <label>:8:                                      ; preds = %7, %2
  %9 = load i32, i32* @term_type, align 4, !dbg !1502
  switch i32 %9, label %45 [
    i32 1, label %10
    i32 2, label %22
  ], !dbg !1503

; <label>:10:                                     ; preds = %8
  %11 = load i32, i32* %4, align 4, !dbg !1504
  %12 = and i32 %11, -129, !dbg !1506
  %13 = icmp uge i32 %12, 32, !dbg !1507
  br i1 %13, label %14, label %17, !dbg !1508

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %4, align 4, !dbg !1509
  %16 = call i32 @i_wcwidth(i32 %15), !dbg !1511
  br label %18, !dbg !1512

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !1513

; <label>:18:                                     ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 1, %17 ], !dbg !1515
  call void @term_printed_text(i32 %19), !dbg !1517
  %20 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1518
  %21 = load i32, i32* %4, align 4, !dbg !1519
  call void @term_addch_utf8(%struct._TERM_WINDOW* %20, i32 %21), !dbg !1520
  br label %53, !dbg !1521

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* %4, align 4, !dbg !1522
  %24 = icmp ugt i32 %23, 255, !dbg !1524
  br i1 %24, label %25, label %35, !dbg !1525

; <label>:25:                                     ; preds = %22
  call void @term_printed_text(i32 2), !dbg !1526
  %26 = load i32, i32* %4, align 4, !dbg !1528
  %27 = lshr i32 %26, 8, !dbg !1529
  %28 = and i32 %27, 255, !dbg !1530
  %29 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1531
  %30 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %29, i32 0, i32 0, !dbg !1532
  %31 = load %struct._TERM_REC*, %struct._TERM_REC** %30, align 8, !dbg !1532
  %32 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %31, i32 0, i32 20, !dbg !1533
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8, !dbg !1533
  %34 = call i32 @_IO_putc(i32 %28, %struct._IO_FILE* %33), !dbg !1531
  br label %36, !dbg !1534

; <label>:35:                                     ; preds = %22
  call void @term_printed_text(i32 1), !dbg !1535
  br label %36

; <label>:36:                                     ; preds = %35, %25
  %37 = load i32, i32* %4, align 4, !dbg !1537
  %38 = and i32 %37, 255, !dbg !1538
  %39 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1539
  %40 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %39, i32 0, i32 0, !dbg !1540
  %41 = load %struct._TERM_REC*, %struct._TERM_REC** %40, align 8, !dbg !1540
  %42 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %41, i32 0, i32 20, !dbg !1541
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %42, align 8, !dbg !1541
  %44 = call i32 @_IO_putc(i32 %38, %struct._IO_FILE* %43), !dbg !1539
  br label %53, !dbg !1542

; <label>:45:                                     ; preds = %8
  call void @term_printed_text(i32 1), !dbg !1543
  %46 = load i32, i32* %4, align 4, !dbg !1544
  %47 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1544
  %48 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %47, i32 0, i32 0, !dbg !1545
  %49 = load %struct._TERM_REC*, %struct._TERM_REC** %48, align 8, !dbg !1545
  %50 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %49, i32 0, i32 20, !dbg !1546
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8, !dbg !1546
  %52 = call i32 @_IO_putc(i32 %46, %struct._IO_FILE* %51), !dbg !1544
  br label %53, !dbg !1547

; <label>:53:                                     ; preds = %45, %36, %18
  ret void, !dbg !1548
}

declare i32 @i_wcwidth(i32) #2

; Function Attrs: nounwind uwtable
define internal void @term_addch_utf8(%struct._TERM_WINDOW*, i32) #0 !dbg !1549 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1550, metadata !449), !dbg !1551
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1552, metadata !449), !dbg !1553
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !1554, metadata !449), !dbg !1558
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1559, metadata !449), !dbg !1560
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1561, metadata !449), !dbg !1562
  %8 = load i32, i32* %4, align 4, !dbg !1563
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0, !dbg !1564
  %10 = call i32 @g_unichar_to_utf8(i32 %8, i8* %9), !dbg !1565
  store i32 %10, i32* %7, align 4, !dbg !1566
  store i32 0, i32* %6, align 4, !dbg !1567
  br label %11, !dbg !1569

; <label>:11:                                     ; preds = %27, %2
  %12 = load i32, i32* %6, align 4, !dbg !1570
  %13 = load i32, i32* %7, align 4, !dbg !1573
  %14 = icmp slt i32 %12, %13, !dbg !1574
  br i1 %14, label %15, label %30, !dbg !1575

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !1576
  %17 = sext i32 %16 to i64, !dbg !1577
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %17, !dbg !1577
  %19 = load i8, i8* %18, align 1, !dbg !1577
  %20 = sext i8 %19 to i32, !dbg !1577
  %21 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1577
  %22 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %21, i32 0, i32 0, !dbg !1578
  %23 = load %struct._TERM_REC*, %struct._TERM_REC** %22, align 8, !dbg !1578
  %24 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %23, i32 0, i32 20, !dbg !1579
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8, !dbg !1579
  %26 = call i32 @_IO_putc(i32 %20, %struct._IO_FILE* %25), !dbg !1577
  br label %27, !dbg !1577

; <label>:27:                                     ; preds = %15
  %28 = load i32, i32* %6, align 4, !dbg !1580
  %29 = add nsw i32 %28, 1, !dbg !1580
  store i32 %29, i32* %6, align 4, !dbg !1580
  br label %11, !dbg !1582, !llvm.loop !1583

; <label>:30:                                     ; preds = %11
  ret void, !dbg !1585
}

; Function Attrs: nounwind uwtable
define i32 @term_addstr(%struct._TERM_WINDOW*, i8*) #0 !dbg !1586 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1589, metadata !449), !dbg !1590
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1591, metadata !449), !dbg !1592
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1593, metadata !449), !dbg !1594
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1595, metadata !449), !dbg !1596
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1597, metadata !449), !dbg !1598
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1599, metadata !449), !dbg !1600
  %9 = load i32, i32* @vcmove, align 4, !dbg !1601
  %10 = icmp ne i32 %9, 0, !dbg !1601
  br i1 %10, label %11, label %12, !dbg !1603

; <label>:11:                                     ; preds = %2
  call void @term_move_real(), !dbg !1604
  br label %12, !dbg !1604

; <label>:12:                                     ; preds = %11, %2
  store i32 0, i32* %5, align 4, !dbg !1606
  %13 = load i8*, i8** %4, align 8, !dbg !1607
  %14 = call i64 @strlen(i8* %13) #9, !dbg !1608
  %15 = trunc i64 %14 to i32, !dbg !1608
  store i32 %15, i32* %6, align 4, !dbg !1609
  %16 = load i8*, i8** %4, align 8, !dbg !1610
  store i8* %16, i8** %8, align 8, !dbg !1611
  %17 = load i32, i32* @term_type, align 4, !dbg !1612
  %18 = icmp eq i32 %17, 1, !dbg !1614
  br i1 %18, label %19, label %62, !dbg !1615

; <label>:19:                                     ; preds = %12
  br label %20, !dbg !1616

; <label>:20:                                     ; preds = %60, %19
  %21 = load i8*, i8** %8, align 8, !dbg !1618
  %22 = load i8, i8* %21, align 1, !dbg !1620
  %23 = sext i8 %22 to i32, !dbg !1620
  %24 = icmp ne i32 %23, 0, !dbg !1621
  br i1 %24, label %25, label %61, !dbg !1622

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %8, align 8, !dbg !1623
  %27 = call i32 @g_utf8_get_char_validated(i8* %26, i64 -1) #9, !dbg !1625
  store i32 %27, i32* %7, align 4, !dbg !1626
  %28 = load i32, i32* %7, align 4, !dbg !1627
  %29 = icmp eq i32 %28, -1, !dbg !1629
  br i1 %29, label %33, label %30, !dbg !1630

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %7, align 4, !dbg !1631
  %32 = icmp eq i32 %31, -2, !dbg !1633
  br i1 %32, label %33, label %38, !dbg !1634

; <label>:33:                                     ; preds = %30, %25
  %34 = load i32, i32* %5, align 4, !dbg !1635
  %35 = add nsw i32 %34, 1, !dbg !1635
  store i32 %35, i32* %5, align 4, !dbg !1635
  %36 = load i8*, i8** %8, align 8, !dbg !1637
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !1637
  store i8* %37, i8** %8, align 8, !dbg !1637
  br label %60, !dbg !1638

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %7, align 4, !dbg !1639
  %40 = and i32 %39, -129, !dbg !1641
  %41 = icmp uge i32 %40, 32, !dbg !1642
  br i1 %41, label %42, label %45, !dbg !1643

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %7, align 4, !dbg !1644
  %44 = call i32 @i_wcwidth(i32 %43), !dbg !1646
  br label %46, !dbg !1647

; <label>:45:                                     ; preds = %38
  br label %46, !dbg !1648

; <label>:46:                                     ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 1, %45 ], !dbg !1650
  %48 = load i32, i32* %5, align 4, !dbg !1652
  %49 = add nsw i32 %48, %47, !dbg !1652
  store i32 %49, i32* %5, align 4, !dbg !1652
  %50 = load i8*, i8** %8, align 8, !dbg !1653
  %51 = load i8*, i8** %8, align 8, !dbg !1654
  %52 = load i8, i8* %51, align 1, !dbg !1655
  %53 = zext i8 %52 to i64, !dbg !1656
  %54 = load i8*, i8** @g_utf8_skip, align 8, !dbg !1656
  %55 = getelementptr inbounds i8, i8* %54, i64 %53, !dbg !1656
  %56 = load i8, i8* %55, align 1, !dbg !1656
  %57 = sext i8 %56 to i32, !dbg !1656
  %58 = sext i32 %57 to i64, !dbg !1657
  %59 = getelementptr inbounds i8, i8* %50, i64 %58, !dbg !1657
  store i8* %59, i8** %8, align 8, !dbg !1658
  br label %60

; <label>:60:                                     ; preds = %46, %33
  br label %20, !dbg !1659, !llvm.loop !1661

; <label>:61:                                     ; preds = %20
  br label %64, !dbg !1662

; <label>:62:                                     ; preds = %12
  %63 = load i32, i32* %6, align 4, !dbg !1663
  store i32 %63, i32* %5, align 4, !dbg !1664
  br label %64

; <label>:64:                                     ; preds = %62, %61
  %65 = load i32, i32* %5, align 4, !dbg !1665
  call void @term_printed_text(i32 %65), !dbg !1666
  %66 = load i8*, i8** %4, align 8, !dbg !1667
  %67 = load i32, i32* %6, align 4, !dbg !1668
  %68 = sext i32 %67 to i64, !dbg !1668
  %69 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1669
  %70 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %69, i32 0, i32 0, !dbg !1670
  %71 = load %struct._TERM_REC*, %struct._TERM_REC** %70, align 8, !dbg !1670
  %72 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %71, i32 0, i32 20, !dbg !1671
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %72, align 8, !dbg !1671
  %74 = call i64 @fwrite(i8* %66, i64 1, i64 %68, %struct._IO_FILE* %73), !dbg !1672
  %75 = load i32, i32* %5, align 4, !dbg !1673
  ret i32 %75, !dbg !1674
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char_validated(i8*, i64) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @term_window_clrtoeol(%struct._TERM_WINDOW*, i32) #0 !dbg !1675 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1676, metadata !449), !dbg !1677
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1678, metadata !449), !dbg !1679
  %5 = load i32, i32* %4, align 4, !dbg !1680
  %6 = icmp sge i32 %5, 0, !dbg !1682
  br i1 %6, label %7, label %16, !dbg !1683

; <label>:7:                                      ; preds = %2
  %8 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1684
  %9 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %8, i32 0, i32 2, !dbg !1686
  %10 = load i32, i32* %9, align 4, !dbg !1686
  %11 = load i32, i32* %4, align 4, !dbg !1687
  %12 = add nsw i32 %10, %11, !dbg !1688
  %13 = load i32, i32* @vcy, align 4, !dbg !1689
  %14 = icmp ne i32 %12, %13, !dbg !1690
  br i1 %14, label %15, label %16, !dbg !1691

; <label>:15:                                     ; preds = %7
  br label %41, !dbg !1692

; <label>:16:                                     ; preds = %7, %2
  %17 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1694
  call void @term_clrtoeol(%struct._TERM_WINDOW* %17), !dbg !1695
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1696
  %19 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %18, i32 0, i32 1, !dbg !1698
  %20 = load i32, i32* %19, align 8, !dbg !1698
  %21 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1699
  %22 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %21, i32 0, i32 3, !dbg !1700
  %23 = load i32, i32* %22, align 8, !dbg !1700
  %24 = add nsw i32 %20, %23, !dbg !1701
  %25 = load i32, i32* @term_width, align 4, !dbg !1702
  %26 = icmp slt i32 %24, %25, !dbg !1703
  br i1 %26, label %27, label %41, !dbg !1704

; <label>:27:                                     ; preds = %16
  %28 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1705
  %29 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %28, i32 0, i32 1, !dbg !1707
  %30 = load i32, i32* %29, align 8, !dbg !1707
  %31 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1708
  %32 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %31, i32 0, i32 3, !dbg !1709
  %33 = load i32, i32* %32, align 8, !dbg !1709
  %34 = add nsw i32 %30, %33, !dbg !1710
  %35 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1711
  %36 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %35, i32 0, i32 2, !dbg !1712
  %37 = load i32, i32* %36, align 4, !dbg !1712
  %38 = load i32, i32* %4, align 4, !dbg !1713
  %39 = add nsw i32 %37, %38, !dbg !1714
  call void @gui_printtext_window_border(i32 %34, i32 %39), !dbg !1715
  %40 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1716
  call void @term_set_color(%struct._TERM_WINDOW* %40, i32 196608), !dbg !1717
  br label %41, !dbg !1718

; <label>:41:                                     ; preds = %15, %27, %16
  ret void, !dbg !1719
}

declare void @gui_printtext_window_border(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @term_window_clrtoeol_abs(%struct._TERM_WINDOW*, i32) #0 !dbg !1720 {
  %3 = alloca %struct._TERM_WINDOW*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %3, metadata !1721, metadata !449), !dbg !1722
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1723, metadata !449), !dbg !1724
  %5 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1725
  %6 = load i32, i32* %4, align 4, !dbg !1726
  %7 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %3, align 8, !dbg !1727
  %8 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %7, i32 0, i32 2, !dbg !1728
  %9 = load i32, i32* %8, align 4, !dbg !1728
  %10 = sub nsw i32 %6, %9, !dbg !1729
  call void @term_window_clrtoeol(%struct._TERM_WINDOW* %5, i32 %10), !dbg !1730
  ret void, !dbg !1731
}

; Function Attrs: nounwind uwtable
define void @term_move_cursor(i32, i32) #0 !dbg !1732 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1733, metadata !449), !dbg !1734
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1735, metadata !449), !dbg !1736
  %5 = load i32, i32* %3, align 4, !dbg !1737
  store i32 %5, i32* @curs_x, align 4, !dbg !1738
  %6 = load i32, i32* %4, align 4, !dbg !1739
  store i32 %6, i32* @curs_y, align 4, !dbg !1740
  ret void, !dbg !1741
}

; Function Attrs: nounwind uwtable
define void @term_refresh(%struct._TERM_WINDOW*) #0 !dbg !1742 {
  %2 = alloca %struct._TERM_WINDOW*, align 8
  store %struct._TERM_WINDOW* %0, %struct._TERM_WINDOW** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_WINDOW** %2, metadata !1743, metadata !449), !dbg !1744
  %3 = load i32, i32* @freeze_counter, align 4, !dbg !1745
  %4 = icmp sgt i32 %3, 0, !dbg !1747
  br i1 %4, label %5, label %6, !dbg !1748

; <label>:5:                                      ; preds = %1
  br label %34, !dbg !1749

; <label>:6:                                      ; preds = %1
  %7 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** @root_window, align 8, !dbg !1750
  %8 = load i32, i32* @curs_x, align 4, !dbg !1751
  %9 = load i32, i32* @curs_y, align 4, !dbg !1752
  call void @term_move(%struct._TERM_WINDOW* %7, i32 %8, i32 %9), !dbg !1753
  call void @term_move_real(), !dbg !1754
  %10 = load i32, i32* @curs_visible, align 4, !dbg !1755
  %11 = icmp ne i32 %10, 0, !dbg !1755
  br i1 %11, label %17, label %12, !dbg !1757

; <label>:12:                                     ; preds = %6
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1758
  %14 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %13, i32 0, i32 2, !dbg !1760
  %15 = load void (%struct._TERM_REC*, i32)*, void (%struct._TERM_REC*, i32)** %14, align 8, !dbg !1760
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1761
  call void %15(%struct._TERM_REC* %16, i32 1), !dbg !1758
  store i32 1, i32* @curs_visible, align 4, !dbg !1762
  br label %17, !dbg !1763

; <label>:17:                                     ; preds = %12, %6
  %18 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1764
  call void @term_set_color(%struct._TERM_WINDOW* %18, i32 196608), !dbg !1765
  %19 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1766
  %20 = icmp ne %struct._TERM_WINDOW* %19, null, !dbg !1767
  br i1 %20, label %21, label %27, !dbg !1766

; <label>:21:                                     ; preds = %17
  %22 = load %struct._TERM_WINDOW*, %struct._TERM_WINDOW** %2, align 8, !dbg !1768
  %23 = getelementptr inbounds %struct._TERM_WINDOW, %struct._TERM_WINDOW* %22, i32 0, i32 0, !dbg !1770
  %24 = load %struct._TERM_REC*, %struct._TERM_REC** %23, align 8, !dbg !1770
  %25 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %24, i32 0, i32 20, !dbg !1771
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8, !dbg !1771
  br label %31, !dbg !1772

; <label>:27:                                     ; preds = %17
  %28 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1773
  %29 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %28, i32 0, i32 20, !dbg !1775
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %29, align 8, !dbg !1775
  br label %31, !dbg !1776

; <label>:31:                                     ; preds = %27, %21
  %32 = phi %struct._IO_FILE* [ %26, %21 ], [ %30, %27 ], !dbg !1777
  %33 = call i32 @fflush(%struct._IO_FILE* %32), !dbg !1779
  br label %34, !dbg !1780

; <label>:34:                                     ; preds = %31, %5
  ret void, !dbg !1781
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @term_refresh_freeze() #0 !dbg !1782 {
  %1 = load i32, i32* @freeze_counter, align 4, !dbg !1783
  %2 = add nsw i32 %1, 1, !dbg !1783
  store i32 %2, i32* @freeze_counter, align 4, !dbg !1783
  ret void, !dbg !1784
}

; Function Attrs: nounwind uwtable
define void @term_refresh_thaw() #0 !dbg !1785 {
  %1 = load i32, i32* @freeze_counter, align 4, !dbg !1786
  %2 = add nsw i32 %1, -1, !dbg !1786
  store i32 %2, i32* @freeze_counter, align 4, !dbg !1786
  %3 = icmp eq i32 %2, 0, !dbg !1788
  br i1 %3, label %4, label %5, !dbg !1789

; <label>:4:                                      ; preds = %0
  call void @term_refresh(%struct._TERM_WINDOW* null), !dbg !1790
  br label %5, !dbg !1790

; <label>:5:                                      ; preds = %4, %0
  ret void, !dbg !1791
}

; Function Attrs: nounwind uwtable
define void @term_stop() #0 !dbg !1792 {
  %1 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1793
  call void @terminfo_stop(%struct._TERM_REC* %1), !dbg !1794
  %2 = call i32 @getpid() #8, !dbg !1795
  %3 = call i32 @kill(i32 %2, i32 20) #8, !dbg !1796
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1798
  call void @terminfo_cont(%struct._TERM_REC* %4), !dbg !1799
  call void @irssi_redraw(), !dbg !1800
  ret void, !dbg !1801
}

declare void @terminfo_stop(%struct._TERM_REC*) #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind
declare i32 @getpid() #3

declare void @terminfo_cont(%struct._TERM_REC*) #2

declare void @irssi_redraw() #2

; Function Attrs: nounwind uwtable
define internal i32 @input_utf8(i8*, i32, i32*) #0 !dbg !1802 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1803, metadata !449), !dbg !1804
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1805, metadata !449), !dbg !1806
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1807, metadata !449), !dbg !1808
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1809, metadata !449), !dbg !1810
  %9 = load i8*, i8** %5, align 8, !dbg !1811
  %10 = load i32, i32* %6, align 4, !dbg !1812
  %11 = sext i32 %10 to i64, !dbg !1812
  %12 = call i32 @g_utf8_get_char_validated(i8* %9, i64 %11) #9, !dbg !1813
  store i32 %12, i32* %8, align 4, !dbg !1810
  %13 = load i32, i32* %8, align 4, !dbg !1814
  switch i32 %13, label %20 [
    i32 -1, label %14
    i32 -2, label %19
  ], !dbg !1815

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !1816
  %16 = load i8, i8* %15, align 1, !dbg !1818
  %17 = zext i8 %16 to i32, !dbg !1818
  %18 = load i32*, i32** %7, align 8, !dbg !1819
  store i32 %17, i32* %18, align 4, !dbg !1820
  store i32 1, i32* %4, align 4, !dbg !1821
  br label %30, !dbg !1821

; <label>:19:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1822
  br label %30, !dbg !1822

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %8, align 4, !dbg !1823
  %22 = load i32*, i32** %7, align 8, !dbg !1824
  store i32 %21, i32* %22, align 4, !dbg !1825
  %23 = load i8*, i8** %5, align 8, !dbg !1826
  %24 = load i8, i8* %23, align 1, !dbg !1827
  %25 = zext i8 %24 to i64, !dbg !1828
  %26 = load i8*, i8** @g_utf8_skip, align 8, !dbg !1828
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !1828
  %28 = load i8, i8* %27, align 1, !dbg !1828
  %29 = sext i8 %28 to i32, !dbg !1828
  store i32 %29, i32* %4, align 4, !dbg !1829
  br label %30, !dbg !1829

; <label>:30:                                     ; preds = %20, %19, %14
  %31 = load i32, i32* %4, align 4, !dbg !1830
  ret i32 %31, !dbg !1830
}

; Function Attrs: nounwind uwtable
define internal i32 @input_big5(i8*, i32, i32*) #0 !dbg !1831 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1832, metadata !449), !dbg !1833
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1834, metadata !449), !dbg !1835
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1836, metadata !449), !dbg !1837
  %8 = load i8*, i8** %5, align 8, !dbg !1838
  %9 = load i8, i8* %8, align 1, !dbg !1840
  %10 = zext i8 %9 to i32, !dbg !1841
  %11 = icmp sle i32 129, %10, !dbg !1842
  br i1 %11, label %12, label %57, !dbg !1843

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !1844
  %14 = load i8, i8* %13, align 1, !dbg !1846
  %15 = zext i8 %14 to i32, !dbg !1847
  %16 = icmp sle i32 %15, 254, !dbg !1848
  br i1 %16, label %17, label %57, !dbg !1849

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %6, align 4, !dbg !1850
  %19 = icmp eq i32 %18, 1, !dbg !1853
  br i1 %19, label %20, label %21, !dbg !1854

; <label>:20:                                     ; preds = %17
  store i32 -1, i32* %4, align 4, !dbg !1855
  br label %62, !dbg !1855

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %5, align 8, !dbg !1856
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1856
  %24 = load i8, i8* %23, align 1, !dbg !1856
  %25 = zext i8 %24 to i32, !dbg !1858
  %26 = icmp sle i32 64, %25, !dbg !1859
  br i1 %26, label %27, label %33, !dbg !1860

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %5, align 8, !dbg !1861
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1861
  %30 = load i8, i8* %29, align 1, !dbg !1861
  %31 = zext i8 %30 to i32, !dbg !1863
  %32 = icmp sle i32 %31, 126, !dbg !1864
  br i1 %32, label %45, label %33, !dbg !1865

; <label>:33:                                     ; preds = %27, %21
  %34 = load i8*, i8** %5, align 8, !dbg !1866
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1866
  %36 = load i8, i8* %35, align 1, !dbg !1866
  %37 = zext i8 %36 to i32, !dbg !1868
  %38 = icmp sle i32 128, %37, !dbg !1869
  br i1 %38, label %39, label %56, !dbg !1870

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %5, align 8, !dbg !1871
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1871
  %42 = load i8, i8* %41, align 1, !dbg !1871
  %43 = zext i8 %42 to i32, !dbg !1873
  %44 = icmp sle i32 %43, 254, !dbg !1874
  br i1 %44, label %45, label %56, !dbg !1875

; <label>:45:                                     ; preds = %39, %27
  %46 = load i8*, i8** %5, align 8, !dbg !1876
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1876
  %48 = load i8, i8* %47, align 1, !dbg !1876
  %49 = zext i8 %48 to i32, !dbg !1876
  %50 = load i8*, i8** %5, align 8, !dbg !1878
  %51 = load i8, i8* %50, align 1, !dbg !1879
  %52 = zext i8 %51 to i32, !dbg !1880
  %53 = shl i32 %52, 8, !dbg !1881
  %54 = add nsw i32 %49, %53, !dbg !1882
  %55 = load i32*, i32** %7, align 8, !dbg !1883
  store i32 %54, i32* %55, align 4, !dbg !1884
  store i32 2, i32* %4, align 4, !dbg !1885
  br label %62, !dbg !1885

; <label>:56:                                     ; preds = %39, %33
  br label %57, !dbg !1886

; <label>:57:                                     ; preds = %56, %12, %3
  %58 = load i8*, i8** %5, align 8, !dbg !1887
  %59 = load i8, i8* %58, align 1, !dbg !1888
  %60 = zext i8 %59 to i32, !dbg !1888
  %61 = load i32*, i32** %7, align 8, !dbg !1889
  store i32 %60, i32* %61, align 4, !dbg !1890
  store i32 1, i32* %4, align 4, !dbg !1891
  br label %62, !dbg !1891

; <label>:62:                                     ; preds = %57, %45, %20
  %63 = load i32, i32* %4, align 4, !dbg !1892
  ret i32 %63, !dbg !1892
}

; Function Attrs: nounwind uwtable
define internal i32 @input_8bit(i8*, i32, i32*) #0 !dbg !1893 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1894, metadata !449), !dbg !1895
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1896, metadata !449), !dbg !1897
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1898, metadata !449), !dbg !1899
  %7 = load i8*, i8** %4, align 8, !dbg !1900
  %8 = load i8, i8* %7, align 1, !dbg !1901
  %9 = zext i8 %8 to i32, !dbg !1901
  %10 = load i32*, i32** %6, align 8, !dbg !1902
  store i32 %9, i32* %10, align 4, !dbg !1903
  ret i32 1, !dbg !1904
}

; Function Attrs: nounwind uwtable
define void @term_gets(%struct._GArray*, i32*) #0 !dbg !1905 {
  %3 = alloca %struct._GArray*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._GArray* %0, %struct._GArray** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GArray** %3, metadata !1916, metadata !449), !dbg !1917
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1918, metadata !449), !dbg !1919
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1920, metadata !449), !dbg !1921
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1922, metadata !449), !dbg !1923
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1924, metadata !449), !dbg !1925
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1926
  %10 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %9, i32 0, i32 19, !dbg !1927
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1927
  %12 = call i32 @fileno(%struct._IO_FILE* %11) #8, !dbg !1928
  %13 = load i32, i32* @term_inbuf_pos, align 4, !dbg !1929
  %14 = sext i32 %13 to i64, !dbg !1930
  %15 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @term_inbuf, i32 0, i32 0), i64 %14, !dbg !1930
  %16 = load i32, i32* @term_inbuf_pos, align 4, !dbg !1931
  %17 = sext i32 %16 to i64, !dbg !1931
  %18 = sub i64 256, %17, !dbg !1932
  %19 = call i64 @read(i32 %12, i8* %15, i64 %18), !dbg !1933
  %20 = trunc i64 %19 to i32, !dbg !1935
  store i32 %20, i32* %5, align 4, !dbg !1936
  %21 = load i32, i32* %5, align 4, !dbg !1937
  %22 = icmp eq i32 %21, 0, !dbg !1939
  br i1 %22, label %23, label %24, !dbg !1940

; <label>:23:                                     ; preds = %2
  store i32 -1, i32* %5, align 4, !dbg !1941
  br label %37, !dbg !1943

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %5, align 4, !dbg !1944
  %26 = icmp eq i32 %25, -1, !dbg !1947
  br i1 %26, label %27, label %36, !dbg !1948

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno_location() #1, !dbg !1949
  %29 = load i32, i32* %28, align 4, !dbg !1951
  %30 = icmp eq i32 %29, 4, !dbg !1952
  br i1 %30, label %35, label %31, !dbg !1953

; <label>:31:                                     ; preds = %27
  %32 = call i32* @__errno_location() #1, !dbg !1954
  %33 = load i32, i32* %32, align 4, !dbg !1956
  %34 = icmp eq i32 %33, 11, !dbg !1957
  br i1 %34, label %35, label %36, !dbg !1958

; <label>:35:                                     ; preds = %31, %27
  store i32 0, i32* %5, align 4, !dbg !1959
  br label %36, !dbg !1960

; <label>:36:                                     ; preds = %35, %31, %24
  br label %37

; <label>:37:                                     ; preds = %36, %23
  %38 = load i32, i32* %5, align 4, !dbg !1961
  %39 = icmp eq i32 %38, -1, !dbg !1963
  br i1 %39, label %40, label %42, !dbg !1964

; <label>:40:                                     ; preds = %37
  %41 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !1965
  br label %42, !dbg !1965

; <label>:42:                                     ; preds = %40, %37
  %43 = load i32, i32* %5, align 4, !dbg !1966
  %44 = icmp sgt i32 %43, 0, !dbg !1968
  br i1 %44, label %45, label %103, !dbg !1969

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %5, align 4, !dbg !1970
  %47 = load i32, i32* @term_inbuf_pos, align 4, !dbg !1972
  %48 = add nsw i32 %47, %46, !dbg !1972
  store i32 %48, i32* @term_inbuf_pos, align 4, !dbg !1972
  store i32 0, i32* %6, align 4, !dbg !1973
  br label %49, !dbg !1975

; <label>:49:                                     ; preds = %78, %45
  %50 = load i32, i32* %6, align 4, !dbg !1976
  %51 = load i32, i32* @term_inbuf_pos, align 4, !dbg !1979
  %52 = icmp slt i32 %50, %51, !dbg !1980
  br i1 %52, label %53, label %82, !dbg !1981

; <label>:53:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1982, metadata !449), !dbg !1984
  %54 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** @input_func, align 8, !dbg !1985
  %55 = load i32, i32* %6, align 4, !dbg !1986
  %56 = sext i32 %55 to i64, !dbg !1987
  %57 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @term_inbuf, i32 0, i32 0), i64 %56, !dbg !1987
  %58 = load i32, i32* @term_inbuf_pos, align 4, !dbg !1988
  %59 = load i32, i32* %6, align 4, !dbg !1989
  %60 = sub nsw i32 %58, %59, !dbg !1990
  %61 = call i32 %54(i8* %57, i32 %60, i32* %8), !dbg !1985
  store i32 %61, i32* %7, align 4, !dbg !1991
  %62 = load i32, i32* %7, align 4, !dbg !1992
  %63 = icmp slt i32 %62, 0, !dbg !1994
  br i1 %63, label %64, label %65, !dbg !1995

; <label>:64:                                     ; preds = %53
  br label %82, !dbg !1996

; <label>:65:                                     ; preds = %53
  %66 = load %struct._GArray*, %struct._GArray** %3, align 8, !dbg !1997
  %67 = bitcast i32* %8 to i8*, !dbg !1998
  %68 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %66, i8* %67, i32 1), !dbg !1999
  %69 = load i32, i32* %8, align 4, !dbg !2000
  %70 = icmp eq i32 %69, 13, !dbg !2002
  br i1 %70, label %74, label %71, !dbg !2003

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* %8, align 4, !dbg !2004
  %73 = icmp eq i32 %72, 10, !dbg !2006
  br i1 %73, label %74, label %78, !dbg !2007

; <label>:74:                                     ; preds = %71, %65
  %75 = load i32*, i32** %4, align 8, !dbg !2008
  %76 = load i32, i32* %75, align 4, !dbg !2009
  %77 = add nsw i32 %76, 1, !dbg !2009
  store i32 %77, i32* %75, align 4, !dbg !2009
  br label %78, !dbg !2010

; <label>:78:                                     ; preds = %74, %71
  %79 = load i32, i32* %7, align 4, !dbg !2011
  %80 = load i32, i32* %6, align 4, !dbg !2012
  %81 = add nsw i32 %80, %79, !dbg !2012
  store i32 %81, i32* %6, align 4, !dbg !2012
  br label %49, !dbg !2013, !llvm.loop !2015

; <label>:82:                                     ; preds = %64, %49
  %83 = load i32, i32* %6, align 4, !dbg !2017
  %84 = load i32, i32* @term_inbuf_pos, align 4, !dbg !2019
  %85 = icmp sge i32 %83, %84, !dbg !2020
  br i1 %85, label %86, label %87, !dbg !2021

; <label>:86:                                     ; preds = %82
  store i32 0, i32* @term_inbuf_pos, align 4, !dbg !2022
  br label %102, !dbg !2023

; <label>:87:                                     ; preds = %82
  %88 = load i32, i32* %6, align 4, !dbg !2024
  %89 = icmp sgt i32 %88, 0, !dbg !2026
  br i1 %89, label %90, label %101, !dbg !2027

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %6, align 4, !dbg !2028
  %92 = sext i32 %91 to i64, !dbg !2030
  %93 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @term_inbuf, i32 0, i32 0), i64 %92, !dbg !2030
  %94 = load i32, i32* @term_inbuf_pos, align 4, !dbg !2031
  %95 = load i32, i32* %6, align 4, !dbg !2032
  %96 = sub nsw i32 %94, %95, !dbg !2033
  %97 = sext i32 %96 to i64, !dbg !2031
  call void @llvm.memmove.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @term_inbuf, i32 0, i32 0), i8* %93, i64 %97, i32 1, i1 false), !dbg !2034
  %98 = load i32, i32* %6, align 4, !dbg !2035
  %99 = load i32, i32* @term_inbuf_pos, align 4, !dbg !2036
  %100 = sub nsw i32 %99, %98, !dbg !2036
  store i32 %100, i32* @term_inbuf_pos, align 4, !dbg !2036
  br label %101, !dbg !2037

; <label>:101:                                    ; preds = %90, %87
  br label %102

; <label>:102:                                    ; preds = %101, %86
  br label %103, !dbg !2038

; <label>:103:                                    ; preds = %102, %42
  ret void, !dbg !2039
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @signal_emit(i8*, i32, ...) #2

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @term_environment_check() #0 !dbg !2040 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !2041, metadata !449), !dbg !2042
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2043, metadata !449), !dbg !2044
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2045, metadata !449), !dbg !2046
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2047, metadata !449), !dbg !2048
  %5 = call i8* @g_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !2049
  store i8* %5, i8** %1, align 8, !dbg !2050
  %6 = call i8* @g_getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !2051
  store i8* %6, i8** %2, align 8, !dbg !2052
  %7 = call i8* @g_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)), !dbg !2053
  store i8* %7, i8** %3, align 8, !dbg !2054
  %8 = load i8*, i8** %2, align 8, !dbg !2055
  %9 = icmp ne i8* %8, null, !dbg !2055
  br i1 %9, label %10, label %16, !dbg !2056

; <label>:10:                                     ; preds = %0
  %11 = load i8*, i8** %2, align 8, !dbg !2057
  %12 = load i8, i8* %11, align 1, !dbg !2059
  %13 = sext i8 %12 to i32, !dbg !2059
  %14 = icmp ne i32 %13, 0, !dbg !2059
  br i1 %14, label %15, label %16, !dbg !2060

; <label>:15:                                     ; preds = %10
  br label %27, !dbg !2061

; <label>:16:                                     ; preds = %10, %0
  %17 = load i8*, i8** %3, align 8, !dbg !2063
  %18 = icmp ne i8* %17, null, !dbg !2063
  br i1 %18, label %19, label %24, !dbg !2064

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %3, align 8, !dbg !2065
  %21 = load i8, i8* %20, align 1, !dbg !2066
  %22 = sext i8 %21 to i32, !dbg !2066
  %23 = icmp ne i32 %22, 0, !dbg !2067
  br label %24

; <label>:24:                                     ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  %26 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, !dbg !2068
  br label %27, !dbg !2069

; <label>:27:                                     ; preds = %24, %15
  %28 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %15 ], [ %26, %24 ], !dbg !2071
  store i8* %28, i8** %4, align 8, !dbg !2073
  %29 = load i8*, i8** %4, align 8, !dbg !2074
  %30 = icmp ne i8* %29, null, !dbg !2074
  br i1 %30, label %32, label %31, !dbg !2076

; <label>:31:                                     ; preds = %27
  br label %48, !dbg !2077

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %1, align 8, !dbg !2079
  %34 = icmp ne i8* %33, null, !dbg !2079
  br i1 %34, label %35, label %44, !dbg !2081

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %1, align 8, !dbg !2082
  %37 = call i32 @g_str_has_prefix(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !2084
  %38 = icmp ne i32 %37, 0, !dbg !2084
  br i1 %38, label %43, label %39, !dbg !2085

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %1, align 8, !dbg !2086
  %41 = call i32 @g_str_has_prefix(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !2087
  %42 = icmp ne i32 %41, 0, !dbg !2087
  br i1 %42, label %43, label %44, !dbg !2088

; <label>:43:                                     ; preds = %39, %35
  br label %48, !dbg !2089

; <label>:44:                                     ; preds = %39, %32
  %45 = load i8*, i8** @term_env_warning, align 8, !dbg !2091
  %46 = load i8*, i8** %1, align 8, !dbg !2092
  %47 = load i8*, i8** %4, align 8, !dbg !2093
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* %45, i8* %46, i8* %47), !dbg !2094
  br label %48, !dbg !2095

; <label>:48:                                     ; preds = %44, %43, %31
  ret void, !dbg !2096
}

declare i8* @g_getenv(i8*) #2

declare i32 @g_str_has_prefix(i8*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @sigcont_prepare(%struct._GSource*, i32*) #0 !dbg !2097 {
  %3 = alloca %struct._GSource*, align 8
  %4 = alloca i32*, align 8
  store %struct._GSource* %0, %struct._GSource** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %3, metadata !2098, metadata !449), !dbg !2099
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2100, metadata !449), !dbg !2101
  %5 = load i32*, i32** %4, align 8, !dbg !2102
  store i32 -1, i32* %5, align 4, !dbg !2103
  %6 = load volatile i32, i32* @got_sigcont, align 4, !dbg !2104
  ret i32 %6, !dbg !2105
}

; Function Attrs: nounwind uwtable
define internal i32 @sigcont_check(%struct._GSource*) #0 !dbg !2106 {
  %2 = alloca %struct._GSource*, align 8
  store %struct._GSource* %0, %struct._GSource** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %2, metadata !2107, metadata !449), !dbg !2108
  %3 = load volatile i32, i32* @got_sigcont, align 4, !dbg !2109
  ret i32 %3, !dbg !2110
}

; Function Attrs: nounwind uwtable
define internal i32 @sigcont_dispatch(%struct._GSource*, i32 (i8*)*, i8*) #0 !dbg !2111 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSource*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i8*, align 8
  store %struct._GSource* %0, %struct._GSource** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %5, metadata !2112, metadata !449), !dbg !2113
  store i32 (i8*)* %1, i32 (i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %6, metadata !2114, metadata !449), !dbg !2115
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2116, metadata !449), !dbg !2117
  store volatile i32 0, i32* @got_sigcont, align 4, !dbg !2118
  %8 = load i32 (i8*)*, i32 (i8*)** %6, align 8, !dbg !2119
  %9 = icmp eq i32 (i8*)* %8, null, !dbg !2121
  br i1 %9, label %10, label %11, !dbg !2122

; <label>:10:                                     ; preds = %3
  store i32 1, i32* %4, align 4, !dbg !2123
  br label %15, !dbg !2123

; <label>:11:                                     ; preds = %3
  %12 = load i32 (i8*)*, i32 (i8*)** %6, align 8, !dbg !2124
  %13 = load i8*, i8** %7, align 8, !dbg !2125
  %14 = call i32 %12(i8* %13), !dbg !2124
  store i32 %14, i32* %4, align 4, !dbg !2126
  br label %15, !dbg !2126

; <label>:15:                                     ; preds = %11, %10
  %16 = load i32, i32* %4, align 4, !dbg !2127
  ret i32 %16, !dbg !2127
}

declare signext i16 @color_24bit_256(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @tputs(...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_putchar(i32) #7 !dbg !2128 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2131, metadata !449), !dbg !2132
  %3 = load i32, i32* %2, align 4, !dbg !2133
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !2134
  %5 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %4, i32 0, i32 20, !dbg !2135
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2135
  %7 = call i32 @fputc(i32 %3, %struct._IO_FILE* %6), !dbg !2136
  ret i32 %7, !dbg !2137
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @g_unichar_to_utf8(i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!350, !351}
!llvm.ident = !{!352}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !224)
!1 = !DIFile(filename: "line370-term-terminfo.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!15 = !{!16, !17, !19, !25, !214, !218, !222, !24}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !20, line: 85, baseType: !21)
!20 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !27, line: 4, baseType: !28)
!27 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !29, line: 39, size: 192, align: 64, elements: !30)
!29 = !DIFile(filename: "term-terminfo.c", directory: "/home/lichi/Desktop/irssi/task1")
!30 = !{!31, !210, !211, !212, !213}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "term", scope: !28, file: !29, line: 41, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_REC", file: !34, line: 24, baseType: !35)
!34 = !DIFile(filename: "terminfo-core.h", directory: "/home/lichi/Desktop/irssi/task1")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_REC", file: !34, line: 26, size: 21504, align: 64, elements: !36)
!36 = !{!37, !41, !45, !49, !53, !57, !58, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !76, !77, !137, !138, !158, !159, !160, !161, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !203, !204, !205, !206, !207, !208, !209}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !35, file: !34, line: 28, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !32, !24, !24}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "move_relative", scope: !35, file: !34, line: 29, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !32, !24, !24, !24, !24}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "set_cursor_visible", scope: !35, file: !34, line: 30, baseType: !46, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !32, !24}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !35, file: !34, line: 31, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !32, !24, !24, !24}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !35, file: !34, line: 33, baseType: !54, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !32}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "clrtoeol", scope: !35, file: !34, line: 34, baseType: !54, size: 64, align: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !35, file: !34, line: 35, baseType: !59, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !32, !18, !24}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "set_fg", scope: !35, file: !34, line: 37, baseType: !46, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "set_bg", scope: !35, file: !34, line: 38, baseType: !46, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "set_normal", scope: !35, file: !34, line: 39, baseType: !54, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "set_blink", scope: !35, file: !34, line: 40, baseType: !54, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "set_bold", scope: !35, file: !34, line: 41, baseType: !54, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "set_reverse", scope: !35, file: !34, line: 42, baseType: !54, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "set_uline", scope: !35, file: !34, line: 43, baseType: !46, size: 64, align: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "set_standout", scope: !35, file: !34, line: 44, baseType: !46, size: 64, align: 64, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "set_italic", scope: !35, file: !34, line: 45, baseType: !46, size: 64, align: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "beep", scope: !35, file: !34, line: 47, baseType: !54, size: 64, align: 64, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "buffer1", scope: !35, file: !34, line: 50, baseType: !73, size: 8192, align: 8, offset: 1088)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, align: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1024)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buffer2", scope: !35, file: !34, line: 50, baseType: !73, size: 8192, align: 8, offset: 9280)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !35, file: !34, line: 52, baseType: !78, size: 64, align: 64, offset: 17472)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !80, line: 48, baseType: !81)
!80 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !82, line: 241, size: 1728, align: 64, elements: !83)
!82 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !104, !105, !106, !107, !111, !113, !115, !119, !122, !124, !125, !126, !127, !128, !132, !133}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !81, file: !82, line: 242, baseType: !24, size: 32, align: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !81, file: !82, line: 247, baseType: !17, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !81, file: !82, line: 248, baseType: !17, size: 64, align: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !81, file: !82, line: 249, baseType: !17, size: 64, align: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !81, file: !82, line: 250, baseType: !17, size: 64, align: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !81, file: !82, line: 251, baseType: !17, size: 64, align: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !81, file: !82, line: 252, baseType: !17, size: 64, align: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !81, file: !82, line: 253, baseType: !17, size: 64, align: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !81, file: !82, line: 254, baseType: !17, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !81, file: !82, line: 256, baseType: !17, size: 64, align: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !81, file: !82, line: 257, baseType: !17, size: 64, align: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !81, file: !82, line: 258, baseType: !17, size: 64, align: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !81, file: !82, line: 260, baseType: !97, size: 64, align: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !82, line: 156, size: 192, align: 64, elements: !99)
!99 = !{!100, !101, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !98, file: !82, line: 157, baseType: !97, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !98, file: !82, line: 158, baseType: !102, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !98, file: !82, line: 162, baseType: !24, size: 32, align: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !81, file: !82, line: 262, baseType: !102, size: 64, align: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !81, file: !82, line: 264, baseType: !24, size: 32, align: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !81, file: !82, line: 268, baseType: !24, size: 32, align: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !81, file: !82, line: 270, baseType: !108, size: 64, align: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 131, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !81, file: !82, line: 274, baseType: !112, size: 16, align: 16, offset: 1024)
!112 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !81, file: !82, line: 275, baseType: !114, size: 8, align: 8, offset: 1040)
!114 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !81, file: !82, line: 276, baseType: !116, size: 8, align: 8, offset: 1048)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !81, file: !82, line: 280, baseType: !120, size: 64, align: 64, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !82, line: 150, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !81, file: !82, line: 289, baseType: !123, size: 64, align: 64, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 132, baseType: !110)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !81, file: !82, line: 297, baseType: !16, size: 64, align: 64, offset: 1216)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !81, file: !82, line: 298, baseType: !16, size: 64, align: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !81, file: !82, line: 299, baseType: !16, size: 64, align: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !81, file: !82, line: 300, baseType: !16, size: 64, align: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !81, file: !82, line: 302, baseType: !129, size: 64, align: 64, offset: 1472)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 216, baseType: !131)
!130 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!131 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !81, file: !82, line: 303, baseType: !24, size: 32, align: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !81, file: !82, line: 305, baseType: !134, size: 160, align: 8, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, align: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !35, file: !34, line: 52, baseType: !78, size: 64, align: 64, offset: 17536)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tio", scope: !35, file: !34, line: 53, baseType: !139, size: 480, align: 32, offset: 17600)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !140, line: 28, size: 480, align: 32, elements: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !{!142, !145, !146, !147, !148, !151, !155, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !139, file: !140, line: 30, baseType: !143, size: 32, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !140, line: 25, baseType: !144)
!144 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !139, file: !140, line: 31, baseType: !143, size: 32, align: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !139, file: !140, line: 32, baseType: !143, size: 32, align: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !139, file: !140, line: 33, baseType: !143, size: 32, align: 32, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !139, file: !140, line: 34, baseType: !149, size: 8, align: 8, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !140, line: 23, baseType: !150)
!150 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !139, file: !140, line: 35, baseType: !152, size: 256, align: 8, offset: 136)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, align: 8, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !139, file: !140, line: 36, baseType: !156, size: 32, align: 32, offset: 416)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !140, line: 24, baseType: !144)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !139, file: !140, line: 37, baseType: !156, size: 32, align: 32, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "old_tio", scope: !35, file: !34, line: 53, baseType: !139, size: 480, align: 32, offset: 18080)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !35, file: !34, line: 56, baseType: !24, size: 32, align: 32, offset: 18560)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !35, file: !34, line: 56, baseType: !24, size: 32, align: 32, offset: 18592)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smcup", scope: !35, file: !34, line: 59, baseType: !162, size: 64, align: 64, offset: 18624)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmcup", scope: !35, file: !34, line: 59, baseType: !162, size: 64, align: 64, offset: 18688)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cup", scope: !35, file: !34, line: 59, baseType: !162, size: 64, align: 64, offset: 18752)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "TI_hpa", scope: !35, file: !34, line: 60, baseType: !162, size: 64, align: 64, offset: 18816)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "TI_vpa", scope: !35, file: !34, line: 60, baseType: !162, size: 64, align: 64, offset: 18880)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cub1", scope: !35, file: !34, line: 60, baseType: !162, size: 64, align: 64, offset: 18944)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cuf1", scope: !35, file: !34, line: 60, baseType: !162, size: 64, align: 64, offset: 19008)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "TI_civis", scope: !35, file: !34, line: 61, baseType: !162, size: 64, align: 64, offset: 19072)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cnorm", scope: !35, file: !34, line: 61, baseType: !162, size: 64, align: 64, offset: 19136)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "TI_csr", scope: !35, file: !34, line: 64, baseType: !162, size: 64, align: 64, offset: 19200)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "TI_wind", scope: !35, file: !34, line: 64, baseType: !162, size: 64, align: 64, offset: 19264)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ri", scope: !35, file: !34, line: 65, baseType: !162, size: 64, align: 64, offset: 19328)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rin", scope: !35, file: !34, line: 65, baseType: !162, size: 64, align: 64, offset: 19392)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ind", scope: !35, file: !34, line: 65, baseType: !162, size: 64, align: 64, offset: 19456)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "TI_indn", scope: !35, file: !34, line: 65, baseType: !162, size: 64, align: 64, offset: 19520)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "TI_il", scope: !35, file: !34, line: 66, baseType: !162, size: 64, align: 64, offset: 19584)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "TI_il1", scope: !35, file: !34, line: 66, baseType: !162, size: 64, align: 64, offset: 19648)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "TI_dl", scope: !35, file: !34, line: 66, baseType: !162, size: 64, align: 64, offset: 19712)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "TI_dl1", scope: !35, file: !34, line: 66, baseType: !162, size: 64, align: 64, offset: 19776)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "TI_clear", scope: !35, file: !34, line: 69, baseType: !162, size: 64, align: 64, offset: 19840)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ed", scope: !35, file: !34, line: 69, baseType: !162, size: 64, align: 64, offset: 19904)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "TI_el", scope: !35, file: !34, line: 72, baseType: !162, size: 64, align: 64, offset: 19968)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rep", scope: !35, file: !34, line: 75, baseType: !162, size: 64, align: 64, offset: 20032)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "TI_colors", scope: !35, file: !34, line: 78, baseType: !24, size: 32, align: 32, offset: 20096)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "TI_sgr0", scope: !35, file: !34, line: 79, baseType: !162, size: 64, align: 64, offset: 20160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smul", scope: !35, file: !34, line: 80, baseType: !162, size: 64, align: 64, offset: 20224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmul", scope: !35, file: !34, line: 80, baseType: !162, size: 64, align: 64, offset: 20288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smso", scope: !35, file: !34, line: 81, baseType: !162, size: 64, align: 64, offset: 20352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmso", scope: !35, file: !34, line: 81, baseType: !162, size: 64, align: 64, offset: 20416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "TI_sitm", scope: !35, file: !34, line: 82, baseType: !162, size: 64, align: 64, offset: 20480)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ritm", scope: !35, file: !34, line: 82, baseType: !162, size: 64, align: 64, offset: 20544)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "TI_bold", scope: !35, file: !34, line: 83, baseType: !162, size: 64, align: 64, offset: 20608)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "TI_blink", scope: !35, file: !34, line: 83, baseType: !162, size: 64, align: 64, offset: 20672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rev", scope: !35, file: !34, line: 83, baseType: !162, size: 64, align: 64, offset: 20736)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setaf", scope: !35, file: !34, line: 84, baseType: !162, size: 64, align: 64, offset: 20800)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setab", scope: !35, file: !34, line: 84, baseType: !162, size: 64, align: 64, offset: 20864)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setf", scope: !35, file: !34, line: 84, baseType: !162, size: 64, align: 64, offset: 20928)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setb", scope: !35, file: !34, line: 84, baseType: !162, size: 64, align: 64, offset: 20992)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "TI_fg", scope: !35, file: !34, line: 87, baseType: !202, size: 64, align: 64, offset: 21056)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "TI_bg", scope: !35, file: !34, line: 87, baseType: !202, size: 64, align: 64, offset: 21120)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "TI_normal", scope: !35, file: !34, line: 87, baseType: !17, size: 64, align: 64, offset: 21184)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "TI_bel", scope: !35, file: !34, line: 90, baseType: !17, size: 64, align: 64, offset: 21248)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smkx", scope: !35, file: !34, line: 93, baseType: !162, size: 64, align: 64, offset: 21312)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmkx", scope: !35, file: !34, line: 94, baseType: !162, size: 64, align: 64, offset: 21376)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "appkey_enabled", scope: !35, file: !34, line: 97, baseType: !24, size: 32, align: 32, offset: 21440)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bracketed_paste_enabled", scope: !35, file: !34, line: 98, baseType: !24, size: 32, align: 32, offset: 21472)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !28, file: !29, line: 44, baseType: !24, size: 32, align: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !28, file: !29, line: 44, baseType: !24, size: 32, align: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !28, file: !29, line: 45, baseType: !24, size: 32, align: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !28, file: !29, line: 45, baseType: !24, size: 32, align: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gunichar", file: !215, line: 60, baseType: !216)
!215 = !DIFile(filename: "/usr/include/glib-2.0/glib/gunicode.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !217, line: 45, baseType: !144)
!217 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !221, line: 52, baseType: !150)
!221 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !221, line: 46, baseType: !18)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !322, !323, !333, !337, !338, !343, !344, !349}
!225 = distinct !DIGlobalVariable(name: "root_window", scope: !0, file: !29, line: 48, type: !25, isLocal: false, isDefinition: true, variable: %struct._TERM_WINDOW** @root_window)
!226 = distinct !DIGlobalVariable(name: "term_lines_empty", scope: !0, file: !29, line: 50, type: !17, isLocal: true, isDefinition: true, variable: i8** @term_lines_empty)
!227 = distinct !DIGlobalVariable(name: "vcmove", scope: !0, file: !29, line: 51, type: !24, isLocal: true, isDefinition: true, variable: i32* @vcmove)
!228 = distinct !DIGlobalVariable(name: "vcx", scope: !0, file: !29, line: 51, type: !24, isLocal: true, isDefinition: true, variable: i32* @vcx)
!229 = distinct !DIGlobalVariable(name: "vcy", scope: !0, file: !29, line: 51, type: !24, isLocal: true, isDefinition: true, variable: i32* @vcy)
!230 = distinct !DIGlobalVariable(name: "curs_visible", scope: !0, file: !29, line: 51, type: !24, isLocal: true, isDefinition: true, variable: i32* @curs_visible)
!231 = distinct !DIGlobalVariable(name: "crealx", scope: !0, file: !29, line: 52, type: !24, isLocal: true, isDefinition: true, variable: i32* @crealx)
!232 = distinct !DIGlobalVariable(name: "crealy", scope: !0, file: !29, line: 52, type: !24, isLocal: true, isDefinition: true, variable: i32* @crealy)
!233 = distinct !DIGlobalVariable(name: "cforcemove", scope: !0, file: !29, line: 52, type: !24, isLocal: true, isDefinition: true, variable: i32* @cforcemove)
!234 = distinct !DIGlobalVariable(name: "curs_x", scope: !0, file: !29, line: 53, type: !24, isLocal: true, isDefinition: true, variable: i32* @curs_x)
!235 = distinct !DIGlobalVariable(name: "curs_y", scope: !0, file: !29, line: 53, type: !24, isLocal: true, isDefinition: true, variable: i32* @curs_y)
!236 = distinct !DIGlobalVariable(name: "last_fg", scope: !0, file: !29, line: 55, type: !144, isLocal: true, isDefinition: true, variable: i32* @last_fg)
!237 = distinct !DIGlobalVariable(name: "last_bg", scope: !0, file: !29, line: 55, type: !144, isLocal: true, isDefinition: true, variable: i32* @last_bg)
!238 = distinct !DIGlobalVariable(name: "last_attrs", scope: !0, file: !29, line: 56, type: !24, isLocal: true, isDefinition: true, variable: i32* @last_attrs)
!239 = distinct !DIGlobalVariable(name: "sigcont_source", scope: !0, file: !29, line: 58, type: !240, isLocal: true, isDefinition: true, variable: %struct._GSource** @sigcont_source)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !242, line: 64, baseType: !243)
!242 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !242, line: 171, size: 768, align: 64, elements: !244)
!244 = !{!245, !247, !269, !298, !300, !304, !305, !306, !307, !315, !316, !317, !318}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !243, file: !242, line: 174, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !221, line: 77, baseType: !16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !243, file: !242, line: 175, baseType: !248, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !242, line: 77, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !242, line: 196, size: 192, align: 64, elements: !251)
!251 = !{!252, !256, !257}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !250, file: !242, line: 198, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !246}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !250, file: !242, line: 199, baseType: !253, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !250, file: !242, line: 200, baseType: !258, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !246, !240, !261, !268}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !242, line: 155, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !246}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !221, line: 50, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !221, line: 49, baseType: !24)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !243, file: !242, line: 177, baseType: !270, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !242, line: 130, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !242, line: 214, size: 384, align: 64, elements: !274)
!274 = !{!275, !280, !284, !288, !292, !293}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !273, file: !242, line: 216, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!266, !240, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !273, file: !242, line: 218, baseType: !281, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!266, !240}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !273, file: !242, line: 219, baseType: !285, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!266, !240, !262, !246}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !273, file: !242, line: 222, baseType: !289, size: 64, align: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !240}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !273, file: !242, line: 226, baseType: !262, size: 64, align: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !273, file: !242, line: 227, baseType: !294, size: 64, align: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !242, line: 212, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !243, file: !242, line: 178, baseType: !299, size: 32, align: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !221, line: 55, baseType: !144)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !243, file: !242, line: 180, baseType: !301, size: 64, align: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !242, line: 48, baseType: !303)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !242, line: 48, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !243, file: !242, line: 182, baseType: !267, size: 32, align: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !242, line: 183, baseType: !299, size: 32, align: 32, offset: 352)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !243, file: !242, line: 184, baseType: !299, size: 32, align: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !243, file: !242, line: 186, baseType: !308, size: 64, align: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !310, line: 37, baseType: !311)
!310 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !310, line: 39, size: 128, align: 64, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !311, file: !310, line: 41, baseType: !246, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !310, line: 42, baseType: !308, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !243, file: !242, line: 188, baseType: !240, size: 64, align: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !242, line: 189, baseType: !240, size: 64, align: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !242, line: 191, baseType: !17, size: 64, align: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !243, file: !242, line: 193, baseType: !319, size: 64, align: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !242, line: 65, baseType: !321)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !242, line: 65, flags: DIFlagFwdDecl)
!322 = distinct !DIGlobalVariable(name: "freeze_counter", scope: !0, file: !29, line: 60, type: !24, isLocal: true, isDefinition: true, variable: i32* @freeze_counter)
!323 = distinct !DIGlobalVariable(name: "input_func", scope: !0, file: !29, line: 62, type: !324, isLocal: true, isDefinition: true, variable: i32 (i8*, i32, i32*)** @input_func)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_INPUT_FUNC", file: !29, line: 36, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!24, !328, !24, !330}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !332, line: 12, baseType: !216)
!332 = !DIFile(filename: "../../src/core/utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!333 = distinct !DIGlobalVariable(name: "term_inbuf", scope: !0, file: !29, line: 63, type: !334, isLocal: true, isDefinition: true, variable: [256 x i8]* @term_inbuf)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2048, align: 8, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = distinct !DIGlobalVariable(name: "term_inbuf_pos", scope: !0, file: !29, line: 64, type: !24, isLocal: true, isDefinition: true, variable: i32* @term_inbuf_pos)
!338 = distinct !DIGlobalVariable(name: "got_sigcont", scope: !0, file: !29, line: 59, type: !339, isLocal: true, isDefinition: true, variable: i32* @got_sigcont)
!339 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !20, line: 40, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !342, line: 22, baseType: !24)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = distinct !DIGlobalVariable(name: "sigcont_funcs", scope: !0, file: !29, line: 100, type: !272, isLocal: true, isDefinition: true, variable: %struct._GSourceFuncs* @sigcont_funcs)
!344 = distinct !DIGlobalVariable(name: "buf", scope: !345, file: !29, line: 322, type: !134, isLocal: true, isDefinition: true, variable: [20 x i8]* @termctl_set_color_24bit.buf)
!345 = distinct !DISubprogram(name: "termctl_set_color_24bit", scope: !29, file: !29, line: 320, type: !346, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!24, !24, !144}
!348 = !{}
!349 = distinct !DIGlobalVariable(name: "term_env_warning", scope: !0, file: !29, line: 769, type: !162, isLocal: true, isDefinition: true, variable: i8** @term_env_warning)
!350 = !{i32 2, !"Dwarf Version", i32 4}
!351 = !{i32 2, !"Debug Info Version", i32 3}
!352 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!353 = distinct !DISubprogram(name: "term_init", scope: !29, file: !29, line: 117, type: !354, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!354 = !DISubroutineType(types: !355)
!355 = !{!24}
!356 = !DILocalVariable(name: "act", scope: !353, file: !29, line: 119, type: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !358, line: 24, size: 1216, align: 64, elements: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/irssi/task1")
!359 = !{!360, !439, !447, !448}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !357, file: !358, line: 35, baseType: !361, size: 64, align: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !358, line: 28, size: 64, align: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !361, file: !358, line: 31, baseType: !19, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !361, file: !358, line: 33, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !24, !368, !16}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !370, line: 133, baseType: !371)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 62, size: 1024, align: 64, elements: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !371, file: !370, line: 64, baseType: !24, size: 32, align: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !371, file: !370, line: 65, baseType: !24, size: 32, align: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !371, file: !370, line: 67, baseType: !24, size: 32, align: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !371, file: !370, line: 132, baseType: !377, size: 896, align: 64, offset: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !370, line: 69, size: 896, align: 64, elements: !378)
!378 = !{!379, !383, !390, !401, !407, !417, !428, !433}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !377, file: !370, line: 71, baseType: !380, size: 896, align: 32)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 896, align: 32, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 28)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !377, file: !370, line: 78, baseType: !384, size: 64, align: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 74, size: 64, align: 32, elements: !385)
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !384, file: !370, line: 76, baseType: !387, size: 32, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !109, line: 133, baseType: !24)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !384, file: !370, line: 77, baseType: !389, size: 32, align: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !109, line: 125, baseType: !144)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !377, file: !370, line: 86, baseType: !391, size: 128, align: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 81, size: 128, align: 64, elements: !392)
!392 = !{!393, !394, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !391, file: !370, line: 83, baseType: !24, size: 32, align: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !391, file: !370, line: 84, baseType: !24, size: 32, align: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !391, file: !370, line: 85, baseType: !396, size: 64, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !370, line: 36, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !370, line: 32, size: 64, align: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !397, file: !370, line: 34, baseType: !24, size: 32, align: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !397, file: !370, line: 35, baseType: !16, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !377, file: !370, line: 94, baseType: !402, size: 128, align: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 89, size: 128, align: 64, elements: !403)
!403 = !{!404, !405, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !402, file: !370, line: 91, baseType: !387, size: 32, align: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !402, file: !370, line: 92, baseType: !389, size: 32, align: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !402, file: !370, line: 93, baseType: !396, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !377, file: !370, line: 104, baseType: !408, size: 256, align: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 97, size: 256, align: 64, elements: !409)
!409 = !{!410, !411, !412, !413, !416}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !408, file: !370, line: 99, baseType: !387, size: 32, align: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !408, file: !370, line: 100, baseType: !389, size: 32, align: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !408, file: !370, line: 101, baseType: !24, size: 32, align: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !408, file: !370, line: 102, baseType: !414, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !370, line: 58, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !109, line: 135, baseType: !110)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !408, file: !370, line: 103, baseType: !414, size: 64, align: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !377, file: !370, line: 116, baseType: !418, size: 256, align: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 107, size: 256, align: 64, elements: !419)
!419 = !{!420, !421, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !418, file: !370, line: 109, baseType: !16, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !418, file: !370, line: 110, baseType: !422, size: 16, align: 16, offset: 64)
!422 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !418, file: !370, line: 115, baseType: !424, size: 128, align: 64, offset: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !370, line: 111, size: 128, align: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !424, file: !370, line: 113, baseType: !16, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !424, file: !370, line: 114, baseType: !16, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !377, file: !370, line: 123, baseType: !429, size: 128, align: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 119, size: 128, align: 64, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !429, file: !370, line: 121, baseType: !110, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !429, file: !370, line: 122, baseType: !24, size: 32, align: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !377, file: !370, line: 131, baseType: !434, size: 128, align: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !370, line: 126, size: 128, align: 64, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !434, file: !370, line: 128, baseType: !16, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !434, file: !370, line: 129, baseType: !24, size: 32, align: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !434, file: !370, line: 130, baseType: !144, size: 32, align: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !357, file: !358, line: 43, baseType: !440, size: 1024, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !342, line: 30, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 27, size: 1024, align: 64, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !441, file: !342, line: 29, baseType: !444, size: 1024, align: 64)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, align: 64, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !357, file: !358, line: 46, baseType: !24, size: 32, align: 32, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !357, file: !358, line: 49, baseType: !295, size: 64, align: 64, offset: 1152)
!449 = !DIExpression()
!450 = !DILocation(line: 119, column: 19, scope: !353)
!451 = !DILocalVariable(name: "width", scope: !353, file: !29, line: 120, type: !24)
!452 = !DILocation(line: 120, column: 13, scope: !353)
!453 = !DILocalVariable(name: "height", scope: !353, file: !29, line: 120, type: !24)
!454 = !DILocation(line: 120, column: 20, scope: !353)
!455 = !DILocation(line: 122, column: 20, scope: !353)
!456 = !DILocation(line: 122, column: 10, scope: !353)
!457 = !DILocation(line: 123, column: 13, scope: !353)
!458 = !DILocation(line: 124, column: 12, scope: !353)
!459 = !DILocation(line: 124, column: 6, scope: !353)
!460 = !DILocation(line: 124, column: 33, scope: !353)
!461 = !DILocation(line: 124, column: 24, scope: !353)
!462 = !DILocation(line: 125, column: 9, scope: !353)
!463 = !DILocation(line: 125, column: 27, scope: !353)
!464 = !DILocation(line: 126, column: 22, scope: !353)
!465 = !DILocation(line: 128, column: 35, scope: !353)
!466 = !DILocation(line: 128, column: 42, scope: !353)
!467 = !DILocation(line: 128, column: 17, scope: !353)
!468 = !DILocation(line: 128, column: 15, scope: !353)
!469 = !DILocation(line: 129, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !353, file: !29, line: 129, column: 6)
!471 = !DILocation(line: 129, column: 19, scope: !470)
!472 = !DILocation(line: 129, column: 6, scope: !353)
!473 = !DILocation(line: 130, column: 3, scope: !470)
!474 = !DILocation(line: 132, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !353, file: !29, line: 132, column: 6)
!476 = !DILocation(line: 132, column: 6, scope: !353)
!477 = !DILocation(line: 133, column: 39, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !29, line: 132, column: 38)
!479 = !DILocation(line: 133, column: 17, scope: !478)
!480 = !DILocation(line: 133, column: 31, scope: !478)
!481 = !DILocation(line: 133, column: 37, scope: !478)
!482 = !DILocation(line: 134, column: 40, scope: !478)
!483 = !DILocation(line: 134, column: 17, scope: !478)
!484 = !DILocation(line: 134, column: 31, scope: !478)
!485 = !DILocation(line: 134, column: 38, scope: !478)
!486 = !DILocation(line: 135, column: 2, scope: !478)
!487 = !DILocation(line: 138, column: 19, scope: !353)
!488 = !DILocation(line: 138, column: 2, scope: !353)
!489 = !DILocation(line: 139, column: 6, scope: !353)
!490 = !DILocation(line: 139, column: 15, scope: !353)
!491 = !DILocation(line: 140, column: 5, scope: !353)
!492 = !DILocation(line: 140, column: 25, scope: !353)
!493 = !DILocation(line: 140, column: 16, scope: !353)
!494 = !DILocation(line: 141, column: 2, scope: !353)
!495 = !DILocation(line: 142, column: 19, scope: !353)
!496 = !DILocation(line: 142, column: 17, scope: !353)
!497 = !DILocation(line: 143, column: 24, scope: !353)
!498 = !DILocation(line: 143, column: 2, scope: !353)
!499 = !DILocation(line: 144, column: 18, scope: !353)
!500 = !DILocation(line: 144, column: 2, scope: !353)
!501 = !DILocation(line: 146, column: 18, scope: !353)
!502 = !DILocation(line: 146, column: 9, scope: !353)
!503 = !DILocation(line: 147, column: 15, scope: !353)
!504 = !DILocation(line: 147, column: 29, scope: !353)
!505 = !DILocation(line: 147, column: 13, scope: !353)
!506 = !DILocation(line: 148, column: 16, scope: !353)
!507 = !DILocation(line: 148, column: 30, scope: !353)
!508 = !DILocation(line: 148, column: 14, scope: !353)
!509 = !DILocation(line: 149, column: 41, scope: !353)
!510 = !DILocation(line: 149, column: 53, scope: !353)
!511 = !DILocation(line: 149, column: 16, scope: !353)
!512 = !DILocation(line: 149, column: 14, scope: !353)
!513 = !DILocation(line: 151, column: 52, scope: !353)
!514 = !DILocation(line: 151, column: 51, scope: !353)
!515 = !DILocation(line: 151, column: 38, scope: !353)
!516 = !DILocation(line: 151, column: 26, scope: !353)
!517 = !DILocation(line: 153, column: 9, scope: !353)
!518 = !DILocation(line: 154, column: 2, scope: !353)
!519 = !DILocation(line: 155, column: 2, scope: !353)
!520 = !DILocation(line: 156, column: 9, scope: !353)
!521 = !DILocation(line: 157, column: 1, scope: !353)
!522 = distinct !DISubprogram(name: "sig_cont", scope: !29, file: !29, line: 67, type: !22, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!523 = !DILocalVariable(name: "p", arg: 1, scope: !522, file: !29, line: 67, type: !24)
!524 = !DILocation(line: 67, column: 26, scope: !522)
!525 = !DILocation(line: 69, column: 21, scope: !522)
!526 = !DILocation(line: 70, column: 1, scope: !522)
!527 = distinct !DISubprogram(name: "do_redraw", scope: !29, file: !29, line: 92, type: !264, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!528 = !DILocalVariable(name: "unused", arg: 1, scope: !527, file: !29, line: 92, type: !246)
!529 = !DILocation(line: 92, column: 36, scope: !527)
!530 = !DILocation(line: 94, column: 16, scope: !527)
!531 = !DILocation(line: 94, column: 2, scope: !527)
!532 = !DILocation(line: 95, column: 2, scope: !527)
!533 = !DILocation(line: 97, column: 9, scope: !527)
!534 = distinct !DISubprogram(name: "term_window_create", scope: !29, file: !29, line: 256, type: !535, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!535 = !DISubroutineType(types: !536)
!536 = !{!25, !24, !24, !24, !24}
!537 = !DILocalVariable(name: "x", arg: 1, scope: !534, file: !29, line: 256, type: !24)
!538 = !DILocation(line: 256, column: 37, scope: !534)
!539 = !DILocalVariable(name: "y", arg: 2, scope: !534, file: !29, line: 256, type: !24)
!540 = !DILocation(line: 256, column: 44, scope: !534)
!541 = !DILocalVariable(name: "width", arg: 3, scope: !534, file: !29, line: 256, type: !24)
!542 = !DILocation(line: 256, column: 51, scope: !534)
!543 = !DILocalVariable(name: "height", arg: 4, scope: !534, file: !29, line: 256, type: !24)
!544 = !DILocation(line: 256, column: 62, scope: !534)
!545 = !DILocalVariable(name: "window", scope: !534, file: !29, line: 258, type: !25)
!546 = !DILocation(line: 258, column: 15, scope: !534)
!547 = !DILocation(line: 260, column: 28, scope: !534)
!548 = !DILocation(line: 260, column: 12, scope: !534)
!549 = !DILocation(line: 260, column: 9, scope: !534)
!550 = !DILocation(line: 261, column: 24, scope: !534)
!551 = !DILocation(line: 261, column: 9, scope: !534)
!552 = !DILocation(line: 261, column: 17, scope: !534)
!553 = !DILocation(line: 261, column: 22, scope: !534)
!554 = !DILocation(line: 262, column: 14, scope: !534)
!555 = !DILocation(line: 262, column: 2, scope: !534)
!556 = !DILocation(line: 262, column: 10, scope: !534)
!557 = !DILocation(line: 262, column: 12, scope: !534)
!558 = !DILocation(line: 262, column: 29, scope: !534)
!559 = !DILocation(line: 262, column: 17, scope: !534)
!560 = !DILocation(line: 262, column: 25, scope: !534)
!561 = !DILocation(line: 262, column: 27, scope: !534)
!562 = !DILocation(line: 263, column: 18, scope: !534)
!563 = !DILocation(line: 263, column: 2, scope: !534)
!564 = !DILocation(line: 263, column: 10, scope: !534)
!565 = !DILocation(line: 263, column: 16, scope: !534)
!566 = !DILocation(line: 263, column: 42, scope: !534)
!567 = !DILocation(line: 263, column: 25, scope: !534)
!568 = !DILocation(line: 263, column: 33, scope: !534)
!569 = !DILocation(line: 263, column: 40, scope: !534)
!570 = !DILocation(line: 264, column: 16, scope: !534)
!571 = !DILocation(line: 264, column: 9, scope: !534)
!572 = distinct !DISubprogram(name: "term_set_input_type", scope: !29, file: !29, line: 714, type: !22, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!573 = !DILocalVariable(name: "type", arg: 1, scope: !572, file: !29, line: 714, type: !24)
!574 = !DILocation(line: 714, column: 30, scope: !572)
!575 = !DILocation(line: 716, column: 10, scope: !572)
!576 = !DILocation(line: 716, column: 2, scope: !572)
!577 = !DILocation(line: 718, column: 28, scope: !578)
!578 = distinct !DILexicalBlock(scope: !572, file: !29, line: 716, column: 16)
!579 = !DILocation(line: 719, column: 17, scope: !578)
!580 = !DILocation(line: 721, column: 28, scope: !578)
!581 = !DILocation(line: 722, column: 3, scope: !578)
!582 = !DILocation(line: 724, column: 28, scope: !578)
!583 = !DILocation(line: 725, column: 2, scope: !578)
!584 = !DILocation(line: 726, column: 1, scope: !572)
!585 = distinct !DISubprogram(name: "term_atexit", scope: !29, file: !29, line: 106, type: !296, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!586 = !DILocation(line: 108, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !585, file: !29, line: 108, column: 6)
!588 = !DILocation(line: 108, column: 16, scope: !587)
!589 = !DILocation(line: 108, column: 19, scope: !590)
!590 = !DILexicalBlockFile(scope: !587, file: !29, discriminator: 1)
!591 = !DILocation(line: 108, column: 32, scope: !590)
!592 = !DILocation(line: 108, column: 35, scope: !593)
!593 = !DILexicalBlockFile(scope: !587, file: !29, discriminator: 2)
!594 = !DILocation(line: 108, column: 49, scope: !593)
!595 = !DILocation(line: 108, column: 6, scope: !593)
!596 = !DILocation(line: 111, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !587, file: !29, line: 108, column: 59)
!598 = !DILocation(line: 111, column: 17, scope: !597)
!599 = !DILocation(line: 111, column: 26, scope: !597)
!600 = !DILocation(line: 112, column: 2, scope: !597)
!601 = !DILocation(line: 114, column: 2, scope: !585)
!602 = !DILocation(line: 115, column: 1, scope: !585)
!603 = distinct !DISubprogram(name: "term_deinit", scope: !29, file: !29, line: 159, type: !296, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!604 = !DILocation(line: 161, column: 6, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !29, line: 161, column: 6)
!606 = !DILocation(line: 161, column: 19, scope: !605)
!607 = !DILocation(line: 161, column: 6, scope: !603)
!608 = !DILocation(line: 162, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !29, line: 161, column: 27)
!610 = !DILocation(line: 163, column: 20, scope: !609)
!611 = !DILocation(line: 163, column: 3, scope: !609)
!612 = !DILocation(line: 164, column: 18, scope: !609)
!613 = !DILocation(line: 164, column: 3, scope: !609)
!614 = !DILocation(line: 166, column: 3, scope: !609)
!615 = !DILocation(line: 167, column: 24, scope: !609)
!616 = !DILocation(line: 167, column: 3, scope: !609)
!617 = !DILocation(line: 168, column: 16, scope: !609)
!618 = !DILocation(line: 169, column: 2, scope: !609)
!619 = !DILocation(line: 170, column: 1, scope: !603)
!620 = distinct !DISubprogram(name: "term_resize", scope: !29, file: !29, line: 204, type: !621, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !24, !24}
!623 = !DILocalVariable(name: "width", arg: 1, scope: !620, file: !29, line: 204, type: !24)
!624 = !DILocation(line: 204, column: 22, scope: !620)
!625 = !DILocalVariable(name: "height", arg: 2, scope: !620, file: !29, line: 204, type: !24)
!626 = !DILocation(line: 204, column: 33, scope: !620)
!627 = !DILocation(line: 206, column: 6, scope: !628)
!628 = distinct !DILexicalBlock(scope: !620, file: !29, line: 206, column: 6)
!629 = !DILocation(line: 206, column: 12, scope: !628)
!630 = !DILocation(line: 206, column: 16, scope: !628)
!631 = !DILocation(line: 206, column: 19, scope: !632)
!632 = !DILexicalBlockFile(scope: !628, file: !29, discriminator: 1)
!633 = !DILocation(line: 206, column: 26, scope: !632)
!634 = !DILocation(line: 206, column: 6, scope: !632)
!635 = !DILocation(line: 207, column: 11, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !29, line: 206, column: 31)
!637 = !DILocation(line: 207, column: 25, scope: !636)
!638 = !DILocation(line: 207, column: 9, scope: !636)
!639 = !DILocation(line: 208, column: 26, scope: !636)
!640 = !DILocation(line: 208, column: 40, scope: !636)
!641 = !DILocation(line: 208, column: 24, scope: !636)
!642 = !DILocation(line: 209, column: 2, scope: !636)
!643 = !DILocation(line: 211, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !620, file: !29, line: 211, column: 6)
!645 = !DILocation(line: 211, column: 20, scope: !644)
!646 = !DILocation(line: 211, column: 17, scope: !644)
!647 = !DILocation(line: 211, column: 26, scope: !644)
!648 = !DILocation(line: 211, column: 29, scope: !649)
!649 = !DILexicalBlockFile(scope: !644, file: !29, discriminator: 1)
!650 = !DILocation(line: 211, column: 44, scope: !649)
!651 = !DILocation(line: 211, column: 41, scope: !649)
!652 = !DILocation(line: 211, column: 6, scope: !649)
!653 = !DILocation(line: 212, column: 38, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !29, line: 211, column: 52)
!655 = !DILocation(line: 212, column: 16, scope: !654)
!656 = !DILocation(line: 212, column: 30, scope: !654)
!657 = !DILocation(line: 212, column: 36, scope: !654)
!658 = !DILocation(line: 212, column: 14, scope: !654)
!659 = !DILocation(line: 213, column: 40, scope: !654)
!660 = !DILocation(line: 213, column: 17, scope: !654)
!661 = !DILocation(line: 213, column: 31, scope: !654)
!662 = !DILocation(line: 213, column: 38, scope: !654)
!663 = !DILocation(line: 213, column: 15, scope: !654)
!664 = !DILocation(line: 214, column: 20, scope: !654)
!665 = !DILocation(line: 214, column: 39, scope: !654)
!666 = !DILocation(line: 214, column: 51, scope: !654)
!667 = !DILocation(line: 214, column: 3, scope: !654)
!668 = !DILocation(line: 216, column: 24, scope: !654)
!669 = !DILocation(line: 216, column: 17, scope: !654)
!670 = !DILocation(line: 217, column: 46, scope: !654)
!671 = !DILocation(line: 217, column: 45, scope: !654)
!672 = !DILocation(line: 217, column: 32, scope: !654)
!673 = !DILocation(line: 217, column: 20, scope: !654)
!674 = !DILocation(line: 218, column: 2, scope: !654)
!675 = !DILocation(line: 220, column: 9, scope: !620)
!676 = !DILocation(line: 221, column: 1, scope: !620)
!677 = distinct !DISubprogram(name: "term_window_move", scope: !29, file: !29, line: 274, type: !678, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !25, !24, !24, !24, !24}
!680 = !DILocalVariable(name: "window", arg: 1, scope: !677, file: !29, line: 274, type: !25)
!681 = !DILocation(line: 274, column: 36, scope: !677)
!682 = !DILocalVariable(name: "x", arg: 2, scope: !677, file: !29, line: 274, type: !24)
!683 = !DILocation(line: 274, column: 48, scope: !677)
!684 = !DILocalVariable(name: "y", arg: 3, scope: !677, file: !29, line: 274, type: !24)
!685 = !DILocation(line: 274, column: 55, scope: !677)
!686 = !DILocalVariable(name: "width", arg: 4, scope: !677, file: !29, line: 275, type: !24)
!687 = !DILocation(line: 275, column: 13, scope: !677)
!688 = !DILocalVariable(name: "height", arg: 5, scope: !677, file: !29, line: 275, type: !24)
!689 = !DILocation(line: 275, column: 24, scope: !677)
!690 = !DILocation(line: 277, column: 14, scope: !677)
!691 = !DILocation(line: 277, column: 2, scope: !677)
!692 = !DILocation(line: 277, column: 10, scope: !677)
!693 = !DILocation(line: 277, column: 12, scope: !677)
!694 = !DILocation(line: 278, column: 14, scope: !677)
!695 = !DILocation(line: 278, column: 2, scope: !677)
!696 = !DILocation(line: 278, column: 10, scope: !677)
!697 = !DILocation(line: 278, column: 12, scope: !677)
!698 = !DILocation(line: 279, column: 18, scope: !677)
!699 = !DILocation(line: 279, column: 2, scope: !677)
!700 = !DILocation(line: 279, column: 10, scope: !677)
!701 = !DILocation(line: 279, column: 16, scope: !677)
!702 = !DILocation(line: 280, column: 26, scope: !677)
!703 = !DILocation(line: 280, column: 9, scope: !677)
!704 = !DILocation(line: 280, column: 17, scope: !677)
!705 = !DILocation(line: 280, column: 24, scope: !677)
!706 = !DILocation(line: 281, column: 1, scope: !677)
!707 = distinct !DISubprogram(name: "term_move_reset", scope: !29, file: !29, line: 192, type: !621, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!708 = !DILocalVariable(name: "x", arg: 1, scope: !707, file: !29, line: 192, type: !24)
!709 = !DILocation(line: 192, column: 33, scope: !707)
!710 = !DILocalVariable(name: "y", arg: 2, scope: !707, file: !29, line: 192, type: !24)
!711 = !DILocation(line: 192, column: 40, scope: !707)
!712 = !DILocation(line: 194, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !707, file: !29, line: 194, column: 6)
!714 = !DILocation(line: 194, column: 11, scope: !713)
!715 = !DILocation(line: 194, column: 8, scope: !713)
!716 = !DILocation(line: 194, column: 6, scope: !707)
!717 = !DILocation(line: 194, column: 27, scope: !718)
!718 = !DILexicalBlockFile(scope: !713, file: !29, discriminator: 1)
!719 = !DILocation(line: 194, column: 37, scope: !718)
!720 = !DILocation(line: 194, column: 25, scope: !718)
!721 = !DILocation(line: 194, column: 23, scope: !718)
!722 = !DILocation(line: 195, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !707, file: !29, line: 195, column: 6)
!724 = !DILocation(line: 195, column: 11, scope: !723)
!725 = !DILocation(line: 195, column: 8, scope: !723)
!726 = !DILocation(line: 195, column: 6, scope: !707)
!727 = !DILocation(line: 195, column: 28, scope: !728)
!728 = !DILexicalBlockFile(scope: !723, file: !29, discriminator: 1)
!729 = !DILocation(line: 195, column: 39, scope: !728)
!730 = !DILocation(line: 195, column: 26, scope: !728)
!731 = !DILocation(line: 195, column: 24, scope: !728)
!732 = !DILocation(line: 197, column: 8, scope: !707)
!733 = !DILocation(line: 197, column: 6, scope: !707)
!734 = !DILocation(line: 197, column: 17, scope: !707)
!735 = !DILocation(line: 197, column: 15, scope: !707)
!736 = !DILocation(line: 198, column: 20, scope: !707)
!737 = !DILocation(line: 199, column: 9, scope: !707)
!738 = !DILocation(line: 200, column: 1, scope: !707)
!739 = distinct !DISubprogram(name: "term_resize_final", scope: !29, file: !29, line: 223, type: !621, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!740 = !DILocalVariable(name: "width", arg: 1, scope: !739, file: !29, line: 223, type: !24)
!741 = !DILocation(line: 223, column: 28, scope: !739)
!742 = !DILocalVariable(name: "height", arg: 2, scope: !739, file: !29, line: 223, type: !24)
!743 = !DILocation(line: 223, column: 39, scope: !739)
!744 = !DILocation(line: 225, column: 1, scope: !739)
!745 = distinct !DISubprogram(name: "term_has_colors", scope: !29, file: !29, line: 228, type: !354, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!746 = !DILocation(line: 230, column: 16, scope: !745)
!747 = !DILocation(line: 230, column: 30, scope: !745)
!748 = !DILocation(line: 230, column: 40, scope: !745)
!749 = !DILocation(line: 230, column: 9, scope: !745)
!750 = distinct !DISubprogram(name: "term_force_colors", scope: !29, file: !29, line: 234, type: !22, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!751 = !DILocalVariable(name: "set", arg: 1, scope: !750, file: !29, line: 234, type: !24)
!752 = !DILocation(line: 234, column: 28, scope: !750)
!753 = !DILocation(line: 236, column: 24, scope: !750)
!754 = !DILocation(line: 236, column: 38, scope: !750)
!755 = !DILocation(line: 236, column: 2, scope: !750)
!756 = !DILocation(line: 237, column: 1, scope: !750)
!757 = distinct !DISubprogram(name: "term_clear", scope: !29, file: !29, line: 240, type: !296, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!758 = !DILocation(line: 242, column: 24, scope: !757)
!759 = !DILocation(line: 242, column: 9, scope: !757)
!760 = !DILocation(line: 243, column: 2, scope: !757)
!761 = !DILocation(line: 243, column: 16, scope: !757)
!762 = !DILocation(line: 243, column: 22, scope: !757)
!763 = !DILocation(line: 244, column: 9, scope: !757)
!764 = !DILocation(line: 246, column: 9, scope: !757)
!765 = !DILocation(line: 246, column: 30, scope: !757)
!766 = !DILocation(line: 246, column: 2, scope: !757)
!767 = !DILocation(line: 247, column: 1, scope: !757)
!768 = distinct !DISubprogram(name: "term_set_color", scope: !29, file: !29, line: 345, type: !769, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !25, !24}
!771 = !DILocalVariable(name: "window", arg: 1, scope: !768, file: !29, line: 345, type: !25)
!772 = !DILocation(line: 345, column: 34, scope: !768)
!773 = !DILocalVariable(name: "col", arg: 2, scope: !768, file: !29, line: 345, type: !24)
!774 = !DILocation(line: 345, column: 46, scope: !768)
!775 = !DILocalVariable(name: "set_normal", scope: !768, file: !29, line: 348, type: !24)
!776 = !DILocation(line: 348, column: 6, scope: !768)
!777 = !DILocalVariable(name: "fg", scope: !768, file: !29, line: 350, type: !144)
!778 = !DILocation(line: 350, column: 15, scope: !768)
!779 = !DILocalVariable(name: "bg", scope: !768, file: !29, line: 350, type: !144)
!780 = !DILocation(line: 350, column: 19, scope: !768)
!781 = !DILocation(line: 359, column: 9, scope: !768)
!782 = !DILocation(line: 359, column: 13, scope: !768)
!783 = !DILocation(line: 359, column: 6, scope: !768)
!784 = !DILocation(line: 369, column: 10, scope: !768)
!785 = !DILocation(line: 369, column: 14, scope: !768)
!786 = !DILocation(line: 369, column: 28, scope: !768)
!787 = !DILocation(line: 369, column: 6, scope: !768)
!788 = !DILocation(line: 371, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !768, file: !29, line: 371, column: 6)
!790 = !DILocation(line: 371, column: 23, scope: !789)
!791 = !DILocation(line: 371, column: 26, scope: !792)
!792 = !DILexicalBlockFile(scope: !789, file: !29, discriminator: 1)
!793 = !DILocation(line: 371, column: 29, scope: !792)
!794 = !DILocation(line: 371, column: 6, scope: !792)
!795 = !DILocation(line: 372, column: 7, scope: !789)
!796 = !DILocation(line: 372, column: 3, scope: !789)
!797 = !DILocation(line: 374, column: 24, scope: !768)
!798 = !DILocation(line: 374, column: 28, scope: !768)
!799 = !DILocation(line: 374, column: 44, scope: !768)
!800 = !DILocation(line: 374, column: 47, scope: !801)
!801 = !DILexicalBlockFile(scope: !768, file: !29, discriminator: 1)
!802 = !DILocation(line: 374, column: 55, scope: !801)
!803 = !DILocation(line: 374, column: 70, scope: !801)
!804 = !DILocation(line: 375, column: 5, scope: !768)
!805 = !DILocation(line: 375, column: 9, scope: !768)
!806 = !DILocation(line: 375, column: 25, scope: !768)
!807 = !DILocation(line: 375, column: 28, scope: !801)
!808 = !DILocation(line: 375, column: 36, scope: !801)
!809 = !DILocation(line: 374, column: 70, scope: !810)
!810 = !DILexicalBlockFile(scope: !768, file: !29, discriminator: 2)
!811 = !DILocation(line: 374, column: 70, scope: !812)
!812 = !DILexicalBlockFile(scope: !768, file: !29, discriminator: 3)
!813 = !DILocation(line: 374, column: 20, scope: !812)
!814 = !DILocation(line: 376, column: 8, scope: !815)
!815 = distinct !DILexicalBlock(scope: !768, file: !29, line: 376, column: 6)
!816 = !DILocation(line: 376, column: 19, scope: !815)
!817 = !DILocation(line: 376, column: 35, scope: !815)
!818 = !DILocation(line: 376, column: 39, scope: !819)
!819 = !DILexicalBlockFile(scope: !815, file: !29, discriminator: 1)
!820 = !DILocation(line: 376, column: 43, scope: !819)
!821 = !DILocation(line: 376, column: 59, scope: !819)
!822 = !DILocation(line: 376, column: 65, scope: !819)
!823 = !DILocation(line: 377, column: 8, scope: !815)
!824 = !DILocation(line: 377, column: 19, scope: !815)
!825 = !DILocation(line: 377, column: 35, scope: !815)
!826 = !DILocation(line: 377, column: 39, scope: !819)
!827 = !DILocation(line: 377, column: 43, scope: !819)
!828 = !DILocation(line: 377, column: 59, scope: !819)
!829 = !DILocation(line: 377, column: 65, scope: !819)
!830 = !DILocation(line: 378, column: 8, scope: !815)
!831 = !DILocation(line: 378, column: 19, scope: !815)
!832 = !DILocation(line: 378, column: 35, scope: !815)
!833 = !DILocation(line: 378, column: 39, scope: !819)
!834 = !DILocation(line: 378, column: 43, scope: !819)
!835 = !DILocation(line: 378, column: 59, scope: !819)
!836 = !DILocation(line: 376, column: 6, scope: !810)
!837 = !DILocation(line: 381, column: 14, scope: !838)
!838 = distinct !DILexicalBlock(scope: !815, file: !29, line: 378, column: 66)
!839 = !DILocation(line: 382, column: 2, scope: !838)
!840 = !DILocation(line: 384, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !768, file: !29, line: 384, column: 6)
!842 = !DILocation(line: 384, column: 6, scope: !768)
!843 = !DILocation(line: 385, column: 21, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !29, line: 384, column: 18)
!845 = !DILocation(line: 385, column: 11, scope: !844)
!846 = !DILocation(line: 386, column: 28, scope: !844)
!847 = !DILocation(line: 387, column: 3, scope: !844)
!848 = !DILocation(line: 387, column: 17, scope: !844)
!849 = !DILocation(line: 387, column: 28, scope: !844)
!850 = !DILocation(line: 388, column: 2, scope: !844)
!851 = !DILocation(line: 391, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !768, file: !29, line: 391, column: 6)
!853 = !DILocation(line: 391, column: 12, scope: !852)
!854 = !DILocation(line: 391, column: 9, scope: !852)
!855 = !DILocation(line: 391, column: 20, scope: !852)
!856 = !DILocation(line: 392, column: 7, scope: !852)
!857 = !DILocation(line: 392, column: 10, scope: !852)
!858 = !DILocation(line: 392, column: 15, scope: !852)
!859 = !DILocation(line: 392, column: 19, scope: !860)
!860 = !DILexicalBlockFile(scope: !852, file: !29, discriminator: 1)
!861 = !DILocation(line: 392, column: 23, scope: !860)
!862 = !DILocation(line: 392, column: 39, scope: !860)
!863 = !DILocation(line: 391, column: 6, scope: !801)
!864 = !DILocation(line: 393, column: 21, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !29, line: 393, column: 21)
!866 = distinct !DILexicalBlock(scope: !852, file: !29, line: 392, column: 46)
!867 = !DILocation(line: 393, column: 21, scope: !866)
!868 = !DILocation(line: 394, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !29, line: 393, column: 38)
!870 = !DILocation(line: 394, column: 12, scope: !869)
!871 = !DILocation(line: 395, column: 8, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !29, line: 395, column: 8)
!873 = !DILocation(line: 395, column: 11, scope: !872)
!874 = !DILocation(line: 395, column: 8, scope: !869)
!875 = !DILocation(line: 397, column: 8, scope: !872)
!876 = !DILocation(line: 397, column: 16, scope: !872)
!877 = !DILocation(line: 397, column: 8, scope: !878)
!878 = !DILexicalBlockFile(scope: !872, file: !29, discriminator: 1)
!879 = !DILocation(line: 398, column: 10, scope: !872)
!880 = !DILocation(line: 398, column: 18, scope: !872)
!881 = !DILocation(line: 397, column: 8, scope: !882)
!882 = !DILexicalBlockFile(scope: !872, file: !29, discriminator: 2)
!883 = !DILocation(line: 397, column: 8, scope: !884)
!884 = !DILexicalBlockFile(scope: !872, file: !29, discriminator: 3)
!885 = !DILocation(line: 396, column: 5, scope: !872)
!886 = !DILocation(line: 400, column: 5, scope: !872)
!887 = !DILocation(line: 400, column: 19, scope: !872)
!888 = !DILocation(line: 400, column: 26, scope: !872)
!889 = !DILocation(line: 400, column: 40, scope: !872)
!890 = !DILocation(line: 401, column: 3, scope: !869)
!891 = !DILocation(line: 402, column: 2, scope: !866)
!892 = !DILocation(line: 405, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !768, file: !29, line: 405, column: 6)
!894 = !DILocation(line: 405, column: 13, scope: !893)
!895 = !DILocation(line: 405, column: 16, scope: !896)
!896 = !DILexicalBlockFile(scope: !893, file: !29, discriminator: 1)
!897 = !DILocation(line: 405, column: 24, scope: !896)
!898 = !DILocation(line: 405, column: 30, scope: !896)
!899 = !DILocation(line: 405, column: 40, scope: !896)
!900 = !DILocation(line: 406, column: 24, scope: !893)
!901 = !DILocation(line: 406, column: 26, scope: !893)
!902 = !DILocation(line: 406, column: 7, scope: !893)
!903 = !DILocation(line: 406, column: 32, scope: !893)
!904 = !DILocation(line: 406, column: 39, scope: !893)
!905 = !DILocation(line: 406, column: 47, scope: !893)
!906 = !DILocation(line: 406, column: 53, scope: !893)
!907 = !DILocation(line: 406, column: 36, scope: !893)
!908 = !DILocation(line: 405, column: 6, scope: !810)
!909 = !DILocation(line: 407, column: 7, scope: !893)
!910 = !DILocation(line: 407, column: 3, scope: !893)
!911 = !DILocation(line: 408, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !768, file: !29, line: 408, column: 6)
!913 = !DILocation(line: 408, column: 10, scope: !912)
!914 = !DILocation(line: 408, column: 6, scope: !768)
!915 = !DILocation(line: 409, column: 3, scope: !912)
!916 = !DILocation(line: 409, column: 17, scope: !912)
!917 = !DILocation(line: 409, column: 27, scope: !912)
!918 = !DILocation(line: 411, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !768, file: !29, line: 411, column: 6)
!920 = !DILocation(line: 411, column: 12, scope: !919)
!921 = !DILocation(line: 411, column: 9, scope: !919)
!922 = !DILocation(line: 411, column: 20, scope: !919)
!923 = !DILocation(line: 412, column: 7, scope: !919)
!924 = !DILocation(line: 412, column: 10, scope: !919)
!925 = !DILocation(line: 412, column: 15, scope: !919)
!926 = !DILocation(line: 412, column: 19, scope: !927)
!927 = !DILexicalBlockFile(scope: !919, file: !29, discriminator: 1)
!928 = !DILocation(line: 412, column: 23, scope: !927)
!929 = !DILocation(line: 412, column: 39, scope: !927)
!930 = !DILocation(line: 411, column: 6, scope: !801)
!931 = !DILocation(line: 413, column: 21, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !29, line: 413, column: 21)
!933 = distinct !DILexicalBlock(scope: !919, file: !29, line: 412, column: 46)
!934 = !DILocation(line: 413, column: 21, scope: !933)
!935 = !DILocation(line: 414, column: 14, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !29, line: 413, column: 38)
!937 = !DILocation(line: 414, column: 12, scope: !936)
!938 = !DILocation(line: 415, column: 8, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !29, line: 415, column: 8)
!940 = !DILocation(line: 415, column: 11, scope: !939)
!941 = !DILocation(line: 415, column: 8, scope: !936)
!942 = !DILocation(line: 417, column: 8, scope: !939)
!943 = !DILocation(line: 417, column: 16, scope: !939)
!944 = !DILocation(line: 417, column: 8, scope: !945)
!945 = !DILexicalBlockFile(scope: !939, file: !29, discriminator: 1)
!946 = !DILocation(line: 418, column: 10, scope: !939)
!947 = !DILocation(line: 418, column: 18, scope: !939)
!948 = !DILocation(line: 417, column: 8, scope: !949)
!949 = !DILexicalBlockFile(scope: !939, file: !29, discriminator: 2)
!950 = !DILocation(line: 417, column: 8, scope: !951)
!951 = !DILexicalBlockFile(scope: !939, file: !29, discriminator: 3)
!952 = !DILocation(line: 416, column: 5, scope: !939)
!953 = !DILocation(line: 420, column: 5, scope: !939)
!954 = !DILocation(line: 420, column: 19, scope: !939)
!955 = !DILocation(line: 420, column: 26, scope: !939)
!956 = !DILocation(line: 420, column: 40, scope: !939)
!957 = !DILocation(line: 421, column: 3, scope: !936)
!958 = !DILocation(line: 422, column: 2, scope: !933)
!959 = !DILocation(line: 425, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !768, file: !29, line: 425, column: 6)
!961 = !DILocation(line: 425, column: 10, scope: !960)
!962 = !DILocation(line: 425, column: 6, scope: !768)
!963 = !DILocation(line: 426, column: 3, scope: !960)
!964 = !DILocation(line: 426, column: 17, scope: !960)
!965 = !DILocation(line: 426, column: 29, scope: !960)
!966 = !DILocation(line: 429, column: 6, scope: !967)
!967 = distinct !DILexicalBlock(scope: !768, file: !29, line: 429, column: 6)
!968 = !DILocation(line: 429, column: 13, scope: !967)
!969 = !DILocation(line: 429, column: 16, scope: !970)
!970 = !DILexicalBlockFile(scope: !967, file: !29, discriminator: 1)
!971 = !DILocation(line: 429, column: 24, scope: !970)
!972 = !DILocation(line: 429, column: 30, scope: !970)
!973 = !DILocation(line: 429, column: 40, scope: !970)
!974 = !DILocation(line: 430, column: 24, scope: !967)
!975 = !DILocation(line: 430, column: 26, scope: !967)
!976 = !DILocation(line: 430, column: 7, scope: !967)
!977 = !DILocation(line: 430, column: 32, scope: !967)
!978 = !DILocation(line: 430, column: 39, scope: !967)
!979 = !DILocation(line: 430, column: 47, scope: !967)
!980 = !DILocation(line: 430, column: 53, scope: !967)
!981 = !DILocation(line: 430, column: 36, scope: !967)
!982 = !DILocation(line: 429, column: 6, scope: !810)
!983 = !DILocation(line: 431, column: 7, scope: !967)
!984 = !DILocation(line: 431, column: 3, scope: !967)
!985 = !DILocation(line: 432, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !768, file: !29, line: 432, column: 6)
!987 = !DILocation(line: 432, column: 10, scope: !986)
!988 = !DILocation(line: 432, column: 6, scope: !768)
!989 = !DILocation(line: 433, column: 3, scope: !986)
!990 = !DILocation(line: 433, column: 17, scope: !986)
!991 = !DILocation(line: 433, column: 26, scope: !986)
!992 = !DILocation(line: 436, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !768, file: !29, line: 436, column: 6)
!994 = !DILocation(line: 436, column: 10, scope: !993)
!995 = !DILocation(line: 436, column: 6, scope: !768)
!996 = !DILocation(line: 437, column: 8, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !29, line: 437, column: 7)
!998 = distinct !DILexicalBlock(scope: !993, file: !29, line: 436, column: 26)
!999 = !DILocation(line: 437, column: 19, scope: !997)
!1000 = !DILocation(line: 437, column: 35, scope: !997)
!1001 = !DILocation(line: 437, column: 7, scope: !998)
!1002 = !DILocation(line: 438, column: 4, scope: !997)
!1003 = !DILocation(line: 438, column: 18, scope: !997)
!1004 = !DILocation(line: 438, column: 28, scope: !997)
!1005 = !DILocation(line: 439, column: 2, scope: !998)
!1006 = !DILocation(line: 439, column: 13, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !29, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !993, file: !29, line: 439, column: 13)
!1009 = !DILocation(line: 439, column: 24, scope: !1007)
!1010 = !DILocation(line: 440, column: 3, scope: !1008)
!1011 = !DILocation(line: 440, column: 17, scope: !1008)
!1012 = !DILocation(line: 440, column: 27, scope: !1008)
!1013 = !DILocation(line: 443, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !768, file: !29, line: 443, column: 6)
!1015 = !DILocation(line: 443, column: 10, scope: !1014)
!1016 = !DILocation(line: 443, column: 6, scope: !768)
!1017 = !DILocation(line: 444, column: 8, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !29, line: 444, column: 7)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !29, line: 443, column: 26)
!1020 = !DILocation(line: 444, column: 19, scope: !1018)
!1021 = !DILocation(line: 444, column: 35, scope: !1018)
!1022 = !DILocation(line: 444, column: 7, scope: !1019)
!1023 = !DILocation(line: 445, column: 4, scope: !1018)
!1024 = !DILocation(line: 445, column: 18, scope: !1018)
!1025 = !DILocation(line: 445, column: 29, scope: !1018)
!1026 = !DILocation(line: 446, column: 2, scope: !1019)
!1027 = !DILocation(line: 446, column: 13, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !29, discriminator: 1)
!1029 = distinct !DILexicalBlock(scope: !1014, file: !29, line: 446, column: 13)
!1030 = !DILocation(line: 446, column: 24, scope: !1028)
!1031 = !DILocation(line: 447, column: 3, scope: !1029)
!1032 = !DILocation(line: 447, column: 17, scope: !1029)
!1033 = !DILocation(line: 447, column: 28, scope: !1029)
!1034 = !DILocation(line: 450, column: 15, scope: !768)
!1035 = !DILocation(line: 450, column: 19, scope: !768)
!1036 = !DILocation(line: 450, column: 13, scope: !768)
!1037 = !DILocation(line: 451, column: 1, scope: !768)
!1038 = distinct !DISubprogram(name: "term_beep", scope: !29, file: !29, line: 250, type: !296, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1039 = !DILocation(line: 252, column: 9, scope: !1038)
!1040 = !DILocation(line: 252, column: 23, scope: !1038)
!1041 = !DILocation(line: 252, column: 28, scope: !1038)
!1042 = !DILocation(line: 253, column: 1, scope: !1038)
!1043 = distinct !DISubprogram(name: "term_window_destroy", scope: !29, file: !29, line: 268, type: !1044, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !25}
!1046 = !DILocalVariable(name: "window", arg: 1, scope: !1043, file: !29, line: 268, type: !25)
!1047 = !DILocation(line: 268, column: 39, scope: !1043)
!1048 = !DILocation(line: 270, column: 16, scope: !1043)
!1049 = !DILocation(line: 270, column: 9, scope: !1043)
!1050 = !DILocation(line: 271, column: 1, scope: !1043)
!1051 = distinct !DISubprogram(name: "term_window_clear", scope: !29, file: !29, line: 284, type: !1044, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1052 = !DILocalVariable(name: "window", arg: 1, scope: !1051, file: !29, line: 284, type: !25)
!1053 = !DILocation(line: 284, column: 37, scope: !1051)
!1054 = !DILocalVariable(name: "y", scope: !1051, file: !29, line: 286, type: !24)
!1055 = !DILocation(line: 286, column: 6, scope: !1051)
!1056 = !DILocation(line: 288, column: 2, scope: !1051)
!1057 = !DILocation(line: 288, column: 16, scope: !1051)
!1058 = !DILocation(line: 288, column: 27, scope: !1051)
!1059 = !DILocation(line: 289, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !29, line: 289, column: 6)
!1061 = !DILocation(line: 289, column: 14, scope: !1060)
!1062 = !DILocation(line: 289, column: 16, scope: !1060)
!1063 = !DILocation(line: 289, column: 21, scope: !1060)
!1064 = !DILocation(line: 289, column: 24, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1060, file: !29, discriminator: 1)
!1066 = !DILocation(line: 289, column: 32, scope: !1065)
!1067 = !DILocation(line: 289, column: 42, scope: !1065)
!1068 = !DILocation(line: 289, column: 39, scope: !1065)
!1069 = !DILocation(line: 289, column: 54, scope: !1065)
!1070 = !DILocation(line: 289, column: 57, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1060, file: !29, discriminator: 2)
!1072 = !DILocation(line: 289, column: 65, scope: !1071)
!1073 = !DILocation(line: 289, column: 74, scope: !1071)
!1074 = !DILocation(line: 289, column: 71, scope: !1071)
!1075 = !DILocation(line: 289, column: 6, scope: !1071)
!1076 = !DILocation(line: 290, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1060, file: !29, line: 289, column: 86)
!1078 = !DILocation(line: 291, column: 2, scope: !1077)
!1079 = !DILocation(line: 292, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !29, line: 292, column: 3)
!1081 = distinct !DILexicalBlock(scope: !1060, file: !29, line: 291, column: 9)
!1082 = !DILocation(line: 292, column: 8, scope: !1080)
!1083 = !DILocation(line: 292, column: 15, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !29, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !29, line: 292, column: 3)
!1086 = !DILocation(line: 292, column: 19, scope: !1084)
!1087 = !DILocation(line: 292, column: 27, scope: !1084)
!1088 = !DILocation(line: 292, column: 17, scope: !1084)
!1089 = !DILocation(line: 292, column: 3, scope: !1084)
!1090 = !DILocation(line: 293, column: 14, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !29, line: 292, column: 40)
!1092 = !DILocation(line: 293, column: 25, scope: !1091)
!1093 = !DILocation(line: 293, column: 4, scope: !1091)
!1094 = !DILocation(line: 294, column: 18, scope: !1091)
!1095 = !DILocation(line: 294, column: 4, scope: !1091)
!1096 = !DILocation(line: 295, column: 3, scope: !1091)
!1097 = !DILocation(line: 292, column: 36, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1085, file: !29, discriminator: 2)
!1099 = !DILocation(line: 292, column: 3, scope: !1098)
!1100 = distinct !{!1100, !1101}
!1101 = !DILocation(line: 292, column: 3, scope: !1081)
!1102 = !DILocation(line: 297, column: 1, scope: !1051)
!1103 = distinct !DISubprogram(name: "term_move", scope: !29, file: !29, line: 453, type: !1104, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !25, !24, !24}
!1106 = !DILocalVariable(name: "window", arg: 1, scope: !1103, file: !29, line: 453, type: !25)
!1107 = !DILocation(line: 453, column: 29, scope: !1103)
!1108 = !DILocalVariable(name: "x", arg: 2, scope: !1103, file: !29, line: 453, type: !24)
!1109 = !DILocation(line: 453, column: 41, scope: !1103)
!1110 = !DILocalVariable(name: "y", arg: 3, scope: !1103, file: !29, line: 453, type: !24)
!1111 = !DILocation(line: 453, column: 48, scope: !1103)
!1112 = !DILocation(line: 455, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !29, line: 455, column: 6)
!1114 = !DILocation(line: 455, column: 8, scope: !1113)
!1115 = !DILocation(line: 455, column: 13, scope: !1113)
!1116 = !DILocation(line: 455, column: 16, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1113, file: !29, discriminator: 1)
!1118 = !DILocation(line: 455, column: 18, scope: !1117)
!1119 = !DILocation(line: 455, column: 6, scope: !1117)
!1120 = !DILocation(line: 456, column: 10, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !29, line: 455, column: 24)
!1122 = !DILocation(line: 457, column: 9, scope: !1121)
!1123 = !DILocation(line: 457, column: 11, scope: !1121)
!1124 = !DILocation(line: 457, column: 19, scope: !1121)
!1125 = !DILocation(line: 457, column: 10, scope: !1121)
!1126 = !DILocation(line: 457, column: 7, scope: !1121)
!1127 = !DILocation(line: 458, column: 9, scope: !1121)
!1128 = !DILocation(line: 458, column: 11, scope: !1121)
!1129 = !DILocation(line: 458, column: 19, scope: !1121)
!1130 = !DILocation(line: 458, column: 10, scope: !1121)
!1131 = !DILocation(line: 458, column: 7, scope: !1121)
!1132 = !DILocation(line: 460, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1121, file: !29, line: 460, column: 7)
!1134 = !DILocation(line: 460, column: 14, scope: !1133)
!1135 = !DILocation(line: 460, column: 11, scope: !1133)
!1136 = !DILocation(line: 460, column: 7, scope: !1121)
!1137 = !DILocation(line: 461, column: 10, scope: !1133)
!1138 = !DILocation(line: 461, column: 20, scope: !1133)
!1139 = !DILocation(line: 461, column: 8, scope: !1133)
!1140 = !DILocation(line: 461, column: 4, scope: !1133)
!1141 = !DILocation(line: 462, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1121, file: !29, line: 462, column: 7)
!1143 = !DILocation(line: 462, column: 14, scope: !1142)
!1144 = !DILocation(line: 462, column: 11, scope: !1142)
!1145 = !DILocation(line: 462, column: 7, scope: !1121)
!1146 = !DILocation(line: 463, column: 10, scope: !1142)
!1147 = !DILocation(line: 463, column: 21, scope: !1142)
!1148 = !DILocation(line: 463, column: 8, scope: !1142)
!1149 = !DILocation(line: 463, column: 4, scope: !1142)
!1150 = !DILocation(line: 464, column: 2, scope: !1121)
!1151 = !DILocation(line: 465, column: 1, scope: !1103)
!1152 = distinct !DISubprogram(name: "term_clrtoeol", scope: !29, file: !29, line: 576, type: !1044, isLocal: false, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1153 = !DILocalVariable(name: "window", arg: 1, scope: !1152, file: !29, line: 576, type: !25)
!1154 = !DILocation(line: 576, column: 33, scope: !1152)
!1155 = !DILocation(line: 578, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !29, line: 578, column: 6)
!1157 = !DILocation(line: 578, column: 12, scope: !1156)
!1158 = !DILocation(line: 578, column: 20, scope: !1156)
!1159 = !DILocation(line: 578, column: 10, scope: !1156)
!1160 = !DILocation(line: 578, column: 6, scope: !1152)
!1161 = !DILocation(line: 580, column: 10, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !29, line: 578, column: 23)
!1163 = !DILocation(line: 580, column: 18, scope: !1162)
!1164 = !DILocation(line: 580, column: 7, scope: !1162)
!1165 = !DILocation(line: 581, column: 10, scope: !1162)
!1166 = !DILocation(line: 582, column: 2, scope: !1162)
!1167 = !DILocation(line: 583, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1152, file: !29, line: 583, column: 6)
!1169 = !DILocation(line: 583, column: 14, scope: !1168)
!1170 = !DILocation(line: 583, column: 18, scope: !1168)
!1171 = !DILocation(line: 583, column: 26, scope: !1168)
!1172 = !DILocation(line: 583, column: 16, scope: !1168)
!1173 = !DILocation(line: 583, column: 34, scope: !1168)
!1174 = !DILocation(line: 583, column: 32, scope: !1168)
!1175 = !DILocation(line: 583, column: 6, scope: !1152)
!1176 = !DILocation(line: 585, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !29, line: 585, column: 7)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !29, line: 583, column: 46)
!1179 = !DILocation(line: 585, column: 7, scope: !1178)
!1180 = !DILocation(line: 585, column: 15, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1177, file: !29, discriminator: 1)
!1182 = !DILocation(line: 586, column: 3, scope: !1178)
!1183 = !DILocation(line: 586, column: 17, scope: !1178)
!1184 = !DILocation(line: 586, column: 24, scope: !1178)
!1185 = !DILocation(line: 586, column: 43, scope: !1178)
!1186 = !DILocation(line: 586, column: 51, scope: !1178)
!1187 = !DILocation(line: 586, column: 55, scope: !1178)
!1188 = !DILocation(line: 586, column: 63, scope: !1178)
!1189 = !DILocation(line: 586, column: 53, scope: !1178)
!1190 = !DILocation(line: 586, column: 71, scope: !1178)
!1191 = !DILocation(line: 586, column: 69, scope: !1178)
!1192 = !DILocation(line: 586, column: 75, scope: !1178)
!1193 = !DILocation(line: 587, column: 3, scope: !1178)
!1194 = !DILocation(line: 587, column: 17, scope: !1178)
!1195 = !DILocation(line: 587, column: 22, scope: !1178)
!1196 = !DILocation(line: 587, column: 36, scope: !1178)
!1197 = !DILocation(line: 587, column: 41, scope: !1178)
!1198 = !DILocation(line: 588, column: 20, scope: !1178)
!1199 = !DILocation(line: 588, column: 3, scope: !1178)
!1200 = !DILocation(line: 588, column: 25, scope: !1178)
!1201 = !DILocation(line: 589, column: 2, scope: !1178)
!1202 = !DILocation(line: 591, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !29, line: 591, column: 7)
!1204 = distinct !DILexicalBlock(scope: !1168, file: !29, line: 589, column: 9)
!1205 = !DILocation(line: 591, column: 15, scope: !1203)
!1206 = !DILocation(line: 591, column: 21, scope: !1203)
!1207 = !DILocation(line: 591, column: 24, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1203, file: !29, discriminator: 1)
!1209 = !DILocation(line: 591, column: 32, scope: !1208)
!1210 = !DILocation(line: 591, column: 38, scope: !1208)
!1211 = !DILocation(line: 592, column: 8, scope: !1203)
!1212 = !DILocation(line: 592, column: 19, scope: !1203)
!1213 = !DILocation(line: 592, column: 63, scope: !1203)
!1214 = !DILocation(line: 591, column: 7, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1204, file: !29, discriminator: 2)
!1216 = !DILocation(line: 593, column: 26, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !29, line: 593, column: 8)
!1218 = distinct !DILexicalBlock(scope: !1203, file: !29, line: 592, column: 69)
!1219 = !DILocation(line: 593, column: 9, scope: !1217)
!1220 = !DILocation(line: 593, column: 8, scope: !1218)
!1221 = !DILocation(line: 594, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !29, line: 594, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !29, line: 593, column: 32)
!1224 = !DILocation(line: 594, column: 9, scope: !1223)
!1225 = !DILocation(line: 594, column: 17, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1222, file: !29, discriminator: 1)
!1227 = !DILocation(line: 595, column: 5, scope: !1223)
!1228 = !DILocation(line: 595, column: 19, scope: !1223)
!1229 = !DILocation(line: 595, column: 28, scope: !1223)
!1230 = !DILocation(line: 596, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !29, line: 596, column: 9)
!1232 = !DILocation(line: 596, column: 13, scope: !1231)
!1233 = !DILocation(line: 596, column: 9, scope: !1223)
!1234 = !DILocation(line: 596, column: 36, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1231, file: !29, discriminator: 1)
!1236 = !DILocation(line: 596, column: 19, scope: !1235)
!1237 = !DILocation(line: 596, column: 41, scope: !1235)
!1238 = !DILocation(line: 597, column: 4, scope: !1223)
!1239 = !DILocation(line: 598, column: 3, scope: !1218)
!1240 = !DILocation(line: 598, column: 14, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !29, discriminator: 1)
!1242 = distinct !DILexicalBlock(scope: !1203, file: !29, line: 598, column: 14)
!1243 = !DILocation(line: 598, column: 20, scope: !1241)
!1244 = !DILocation(line: 598, column: 18, scope: !1241)
!1245 = !DILocation(line: 600, column: 8, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !29, line: 600, column: 8)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !29, line: 598, column: 32)
!1248 = !DILocation(line: 600, column: 8, scope: !1247)
!1249 = !DILocation(line: 600, column: 16, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1246, file: !29, discriminator: 1)
!1251 = !DILocation(line: 601, column: 4, scope: !1247)
!1252 = !DILocation(line: 601, column: 18, scope: !1247)
!1253 = !DILocation(line: 601, column: 25, scope: !1247)
!1254 = !DILocation(line: 601, column: 44, scope: !1247)
!1255 = !DILocation(line: 601, column: 55, scope: !1247)
!1256 = !DILocation(line: 601, column: 54, scope: !1247)
!1257 = !DILocation(line: 602, column: 4, scope: !1247)
!1258 = !DILocation(line: 602, column: 18, scope: !1247)
!1259 = !DILocation(line: 602, column: 23, scope: !1247)
!1260 = !DILocation(line: 602, column: 37, scope: !1247)
!1261 = !DILocation(line: 602, column: 42, scope: !1247)
!1262 = !DILocation(line: 603, column: 21, scope: !1247)
!1263 = !DILocation(line: 603, column: 4, scope: !1247)
!1264 = !DILocation(line: 603, column: 26, scope: !1247)
!1265 = !DILocation(line: 604, column: 3, scope: !1247)
!1266 = !DILocation(line: 606, column: 1, scope: !1152)
!1267 = distinct !DISubprogram(name: "term_window_scroll", scope: !29, file: !29, line: 300, type: !769, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1268 = !DILocalVariable(name: "window", arg: 1, scope: !1267, file: !29, line: 300, type: !25)
!1269 = !DILocation(line: 300, column: 38, scope: !1267)
!1270 = !DILocalVariable(name: "count", arg: 2, scope: !1267, file: !29, line: 300, type: !24)
!1271 = !DILocation(line: 300, column: 50, scope: !1267)
!1272 = !DILocalVariable(name: "y", scope: !1267, file: !29, line: 302, type: !24)
!1273 = !DILocation(line: 302, column: 6, scope: !1267)
!1274 = !DILocation(line: 304, column: 2, scope: !1267)
!1275 = !DILocation(line: 304, column: 16, scope: !1267)
!1276 = !DILocation(line: 304, column: 23, scope: !1267)
!1277 = !DILocation(line: 304, column: 37, scope: !1267)
!1278 = !DILocation(line: 304, column: 45, scope: !1267)
!1279 = !DILocation(line: 304, column: 48, scope: !1267)
!1280 = !DILocation(line: 304, column: 56, scope: !1267)
!1281 = !DILocation(line: 304, column: 58, scope: !1267)
!1282 = !DILocation(line: 304, column: 66, scope: !1267)
!1283 = !DILocation(line: 304, column: 57, scope: !1267)
!1284 = !DILocation(line: 304, column: 72, scope: !1267)
!1285 = !DILocation(line: 304, column: 76, scope: !1267)
!1286 = !DILocation(line: 305, column: 25, scope: !1267)
!1287 = !DILocation(line: 305, column: 30, scope: !1267)
!1288 = !DILocation(line: 305, column: 9, scope: !1267)
!1289 = !DILocation(line: 308, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1267, file: !29, line: 308, column: 2)
!1291 = !DILocation(line: 308, column: 7, scope: !1290)
!1292 = !DILocation(line: 308, column: 15, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1294, file: !29, discriminator: 1)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !29, line: 308, column: 2)
!1295 = !DILocation(line: 308, column: 23, scope: !1293)
!1296 = !DILocation(line: 308, column: 25, scope: !1293)
!1297 = !DILocation(line: 308, column: 24, scope: !1293)
!1298 = !DILocation(line: 308, column: 30, scope: !1293)
!1299 = !DILocation(line: 308, column: 28, scope: !1293)
!1300 = !DILocation(line: 308, column: 42, scope: !1293)
!1301 = !DILocation(line: 308, column: 45, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1294, file: !29, discriminator: 2)
!1303 = !DILocation(line: 308, column: 49, scope: !1302)
!1304 = !DILocation(line: 308, column: 57, scope: !1302)
!1305 = !DILocation(line: 308, column: 47, scope: !1302)
!1306 = !DILocation(line: 308, column: 2, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1290, file: !29, discriminator: 3)
!1308 = !DILocation(line: 309, column: 20, scope: !1294)
!1309 = !DILocation(line: 309, column: 28, scope: !1294)
!1310 = !DILocation(line: 309, column: 30, scope: !1294)
!1311 = !DILocation(line: 309, column: 29, scope: !1294)
!1312 = !DILocation(line: 309, column: 3, scope: !1294)
!1313 = !DILocation(line: 309, column: 33, scope: !1294)
!1314 = !DILocation(line: 308, column: 66, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1294, file: !29, discriminator: 4)
!1316 = !DILocation(line: 308, column: 2, scope: !1315)
!1317 = distinct !{!1317, !1318}
!1318 = !DILocation(line: 308, column: 2, scope: !1267)
!1319 = !DILocation(line: 310, column: 1, scope: !1267)
!1320 = !DILocalVariable(name: "bg", arg: 1, scope: !345, file: !29, line: 320, type: !24)
!1321 = !DILocation(line: 320, column: 40, scope: !345)
!1322 = !DILocalVariable(name: "lc", arg: 2, scope: !345, file: !29, line: 320, type: !144)
!1323 = !DILocation(line: 320, column: 57, scope: !345)
!1324 = !DILocalVariable(name: "color", scope: !345, file: !29, line: 323, type: !1325)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 24, align: 8, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 3)
!1328 = !DILocation(line: 323, column: 22, scope: !345)
!1329 = !DILocation(line: 323, column: 32, scope: !345)
!1330 = !DILocation(line: 323, column: 34, scope: !345)
!1331 = !DILocation(line: 323, column: 37, scope: !345)
!1332 = !DILocation(line: 323, column: 44, scope: !345)
!1333 = !DILocation(line: 323, column: 47, scope: !345)
!1334 = !DILocation(line: 323, column: 53, scope: !345)
!1335 = !DILocation(line: 325, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !345, file: !29, line: 325, column: 6)
!1337 = !DILocation(line: 325, column: 6, scope: !345)
!1338 = !DILocation(line: 326, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !29, line: 326, column: 7)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !29, line: 325, column: 26)
!1341 = !DILocation(line: 326, column: 7, scope: !1340)
!1342 = !DILocation(line: 327, column: 4, scope: !1339)
!1343 = !DILocation(line: 327, column: 18, scope: !1339)
!1344 = !DILocation(line: 327, column: 25, scope: !1339)
!1345 = !DILocation(line: 327, column: 55, scope: !1339)
!1346 = !DILocation(line: 327, column: 39, scope: !1339)
!1347 = !DILocation(line: 327, column: 4, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1339, file: !29, discriminator: 1)
!1349 = !DILocation(line: 329, column: 4, scope: !1339)
!1350 = !DILocation(line: 329, column: 18, scope: !1339)
!1351 = !DILocation(line: 329, column: 25, scope: !1339)
!1352 = !DILocation(line: 329, column: 55, scope: !1339)
!1353 = !DILocation(line: 329, column: 39, scope: !1339)
!1354 = !DILocation(line: 329, column: 4, scope: !1348)
!1355 = !DILocation(line: 330, column: 3, scope: !1340)
!1356 = !DILocation(line: 334, column: 39, scope: !345)
!1357 = !DILocation(line: 334, column: 51, scope: !345)
!1358 = !DILocation(line: 334, column: 61, scope: !345)
!1359 = !DILocation(line: 334, column: 71, scope: !345)
!1360 = !DILocation(line: 334, column: 2, scope: !345)
!1361 = !DILocation(line: 335, column: 9, scope: !345)
!1362 = !DILocation(line: 335, column: 2, scope: !345)
!1363 = !DILocation(line: 336, column: 1, scope: !345)
!1364 = distinct !DISubprogram(name: "term_addch", scope: !29, file: !29, line: 487, type: !1365, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !25, !18}
!1367 = !DILocalVariable(name: "window", arg: 1, scope: !1364, file: !29, line: 487, type: !25)
!1368 = !DILocation(line: 487, column: 30, scope: !1364)
!1369 = !DILocalVariable(name: "chr", arg: 2, scope: !1364, file: !29, line: 487, type: !18)
!1370 = !DILocation(line: 487, column: 43, scope: !1364)
!1371 = !DILocation(line: 489, column: 6, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1364, file: !29, line: 489, column: 6)
!1373 = !DILocation(line: 489, column: 6, scope: !1364)
!1374 = !DILocation(line: 489, column: 14, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1372, file: !29, discriminator: 1)
!1376 = !DILocation(line: 494, column: 6, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1364, file: !29, line: 494, column: 6)
!1378 = !DILocation(line: 494, column: 16, scope: !1377)
!1379 = !DILocation(line: 494, column: 21, scope: !1377)
!1380 = !DILocation(line: 495, column: 7, scope: !1377)
!1381 = !DILocation(line: 495, column: 11, scope: !1377)
!1382 = !DILocation(line: 495, column: 19, scope: !1377)
!1383 = !DILocation(line: 495, column: 24, scope: !1377)
!1384 = !DILocation(line: 495, column: 28, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1377, file: !29, discriminator: 1)
!1386 = !DILocation(line: 495, column: 32, scope: !1385)
!1387 = !DILocation(line: 495, column: 40, scope: !1385)
!1388 = !DILocation(line: 494, column: 6, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1364, file: !29, discriminator: 1)
!1390 = !DILocation(line: 496, column: 3, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1377, file: !29, line: 495, column: 46)
!1392 = !DILocation(line: 497, column: 2, scope: !1391)
!1393 = !DILocation(line: 499, column: 1, scope: !1364)
!1394 = !DILocation(line: 499, column: 9, scope: !1364)
!1395 = !DILocation(line: 499, column: 15, scope: !1364)
!1396 = !DILocation(line: 500, column: 1, scope: !1364)
!1397 = distinct !DISubprogram(name: "term_move_real", scope: !29, file: !29, line: 172, type: !296, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1398 = !DILocation(line: 174, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !29, line: 174, column: 6)
!1400 = !DILocation(line: 174, column: 13, scope: !1399)
!1401 = !DILocation(line: 174, column: 10, scope: !1399)
!1402 = !DILocation(line: 174, column: 20, scope: !1399)
!1403 = !DILocation(line: 174, column: 23, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1399, file: !29, discriminator: 1)
!1405 = !DILocation(line: 174, column: 30, scope: !1404)
!1406 = !DILocation(line: 174, column: 27, scope: !1404)
!1407 = !DILocation(line: 174, column: 37, scope: !1404)
!1408 = !DILocation(line: 174, column: 40, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1399, file: !29, discriminator: 2)
!1410 = !DILocation(line: 174, column: 6, scope: !1409)
!1411 = !DILocation(line: 175, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !29, line: 175, column: 7)
!1413 = distinct !DILexicalBlock(scope: !1399, file: !29, line: 174, column: 52)
!1414 = !DILocation(line: 175, column: 7, scope: !1413)
!1415 = !DILocation(line: 176, column: 4, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !29, line: 175, column: 21)
!1417 = !DILocation(line: 176, column: 18, scope: !1416)
!1418 = !DILocation(line: 176, column: 37, scope: !1416)
!1419 = !DILocation(line: 177, column: 17, scope: !1416)
!1420 = !DILocation(line: 178, column: 3, scope: !1416)
!1421 = !DILocation(line: 180, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !29, line: 180, column: 7)
!1423 = !DILocation(line: 180, column: 7, scope: !1413)
!1424 = !DILocation(line: 181, column: 20, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !29, line: 180, column: 19)
!1426 = !DILocation(line: 181, column: 11, scope: !1425)
!1427 = !DILocation(line: 182, column: 15, scope: !1425)
!1428 = !DILocation(line: 183, column: 3, scope: !1425)
!1429 = !DILocation(line: 184, column: 3, scope: !1413)
!1430 = !DILocation(line: 184, column: 17, scope: !1413)
!1431 = !DILocation(line: 184, column: 31, scope: !1413)
!1432 = !DILocation(line: 184, column: 45, scope: !1413)
!1433 = !DILocation(line: 184, column: 53, scope: !1413)
!1434 = !DILocation(line: 184, column: 61, scope: !1413)
!1435 = !DILocation(line: 184, column: 66, scope: !1413)
!1436 = !DILocation(line: 185, column: 26, scope: !1413)
!1437 = !DILocation(line: 185, column: 24, scope: !1413)
!1438 = !DILocation(line: 185, column: 40, scope: !1413)
!1439 = !DILocation(line: 185, column: 38, scope: !1413)
!1440 = !DILocation(line: 186, column: 2, scope: !1413)
!1441 = !DILocation(line: 188, column: 16, scope: !1397)
!1442 = !DILocation(line: 189, column: 1, scope: !1397)
!1443 = distinct !DISubprogram(name: "term_printed_text", scope: !29, file: !29, line: 467, type: !22, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1444 = !DILocalVariable(name: "count", arg: 1, scope: !1443, file: !29, line: 467, type: !24)
!1445 = !DILocation(line: 467, column: 35, scope: !1443)
!1446 = !DILocation(line: 469, column: 19, scope: !1443)
!1447 = !DILocation(line: 469, column: 2, scope: !1443)
!1448 = !DILocation(line: 469, column: 24, scope: !1443)
!1449 = !DILocation(line: 475, column: 9, scope: !1443)
!1450 = !DILocation(line: 475, column: 6, scope: !1443)
!1451 = !DILocation(line: 476, column: 2, scope: !1443)
!1452 = !DILocation(line: 476, column: 9, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1443, file: !29, discriminator: 1)
!1454 = !DILocation(line: 476, column: 16, scope: !1453)
!1455 = !DILocation(line: 476, column: 13, scope: !1453)
!1456 = !DILocation(line: 476, column: 2, scope: !1453)
!1457 = !DILocation(line: 477, column: 10, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1443, file: !29, line: 476, column: 28)
!1459 = !DILocation(line: 477, column: 7, scope: !1458)
!1460 = !DILocation(line: 478, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !29, line: 478, column: 7)
!1462 = !DILocation(line: 478, column: 13, scope: !1461)
!1463 = !DILocation(line: 478, column: 24, scope: !1461)
!1464 = !DILocation(line: 478, column: 11, scope: !1461)
!1465 = !DILocation(line: 478, column: 7, scope: !1458)
!1466 = !DILocation(line: 478, column: 31, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1461, file: !29, discriminator: 1)
!1468 = !DILocation(line: 478, column: 28, scope: !1467)
!1469 = !DILocation(line: 479, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1458, file: !29, line: 479, column: 7)
!1471 = !DILocation(line: 479, column: 11, scope: !1470)
!1472 = !DILocation(line: 479, column: 7, scope: !1458)
!1473 = !DILocation(line: 479, column: 33, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1470, file: !29, discriminator: 1)
!1475 = !DILocation(line: 479, column: 16, scope: !1474)
!1476 = !DILocation(line: 479, column: 38, scope: !1474)
!1477 = !DILocation(line: 476, column: 2, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1443, file: !29, discriminator: 2)
!1479 = distinct !{!1479, !1451}
!1480 = !DILocation(line: 482, column: 12, scope: !1443)
!1481 = !DILocation(line: 482, column: 9, scope: !1443)
!1482 = !DILocation(line: 483, column: 6, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1443, file: !29, line: 483, column: 6)
!1484 = !DILocation(line: 483, column: 16, scope: !1483)
!1485 = !DILocation(line: 483, column: 13, scope: !1483)
!1486 = !DILocation(line: 483, column: 6, scope: !1443)
!1487 = !DILocation(line: 484, column: 14, scope: !1483)
!1488 = !DILocation(line: 484, column: 3, scope: !1483)
!1489 = !DILocation(line: 485, column: 1, scope: !1443)
!1490 = distinct !DISubprogram(name: "term_add_unichar", scope: !29, file: !29, line: 512, type: !1491, isLocal: false, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !25, !331}
!1493 = !DILocalVariable(name: "window", arg: 1, scope: !1490, file: !29, line: 512, type: !25)
!1494 = !DILocation(line: 512, column: 36, scope: !1490)
!1495 = !DILocalVariable(name: "chr", arg: 2, scope: !1490, file: !29, line: 512, type: !331)
!1496 = !DILocation(line: 512, column: 52, scope: !1490)
!1497 = !DILocation(line: 514, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1490, file: !29, line: 514, column: 6)
!1499 = !DILocation(line: 514, column: 6, scope: !1490)
!1500 = !DILocation(line: 514, column: 14, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1498, file: !29, discriminator: 1)
!1502 = !DILocation(line: 516, column: 10, scope: !1490)
!1503 = !DILocation(line: 516, column: 2, scope: !1490)
!1504 = !DILocation(line: 518, column: 24, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1490, file: !29, line: 516, column: 21)
!1506 = !DILocation(line: 518, column: 29, scope: !1505)
!1507 = !DILocation(line: 518, column: 38, scope: !1505)
!1508 = !DILocation(line: 518, column: 21, scope: !1505)
!1509 = !DILocation(line: 518, column: 57, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1505, file: !29, discriminator: 1)
!1511 = !DILocation(line: 518, column: 47, scope: !1510)
!1512 = !DILocation(line: 518, column: 21, scope: !1510)
!1513 = !DILocation(line: 518, column: 21, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1505, file: !29, discriminator: 2)
!1515 = !DILocation(line: 518, column: 21, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1505, file: !29, discriminator: 3)
!1517 = !DILocation(line: 518, column: 3, scope: !1516)
!1518 = !DILocation(line: 519, column: 33, scope: !1505)
!1519 = !DILocation(line: 519, column: 41, scope: !1505)
!1520 = !DILocation(line: 519, column: 17, scope: !1505)
!1521 = !DILocation(line: 520, column: 3, scope: !1505)
!1522 = !DILocation(line: 522, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1505, file: !29, line: 522, column: 7)
!1524 = !DILocation(line: 522, column: 11, scope: !1523)
!1525 = !DILocation(line: 522, column: 7, scope: !1505)
!1526 = !DILocation(line: 523, column: 4, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !29, line: 522, column: 19)
!1528 = !DILocation(line: 524, column: 4, scope: !1527)
!1529 = !DILocation(line: 524, column: 8, scope: !1527)
!1530 = !DILocation(line: 524, column: 14, scope: !1527)
!1531 = !DILocation(line: 524, column: 3, scope: !1527)
!1532 = !DILocation(line: 524, column: 11, scope: !1527)
!1533 = !DILocation(line: 524, column: 17, scope: !1527)
!1534 = !DILocation(line: 525, column: 3, scope: !1527)
!1535 = !DILocation(line: 526, column: 4, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1523, file: !29, line: 525, column: 10)
!1537 = !DILocation(line: 528, column: 3, scope: !1505)
!1538 = !DILocation(line: 528, column: 7, scope: !1505)
!1539 = !DILocation(line: 528, column: 2, scope: !1505)
!1540 = !DILocation(line: 528, column: 10, scope: !1505)
!1541 = !DILocation(line: 528, column: 16, scope: !1505)
!1542 = !DILocation(line: 529, column: 17, scope: !1505)
!1543 = !DILocation(line: 531, column: 3, scope: !1505)
!1544 = !DILocation(line: 532, column: 2, scope: !1505)
!1545 = !DILocation(line: 532, column: 10, scope: !1505)
!1546 = !DILocation(line: 532, column: 16, scope: !1505)
!1547 = !DILocation(line: 533, column: 17, scope: !1505)
!1548 = !DILocation(line: 535, column: 1, scope: !1490)
!1549 = distinct !DISubprogram(name: "term_addch_utf8", scope: !29, file: !29, line: 502, type: !1491, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1550 = !DILocalVariable(name: "window", arg: 1, scope: !1549, file: !29, line: 502, type: !25)
!1551 = !DILocation(line: 502, column: 42, scope: !1549)
!1552 = !DILocalVariable(name: "chr", arg: 2, scope: !1549, file: !29, line: 502, type: !331)
!1553 = !DILocation(line: 502, column: 58, scope: !1549)
!1554 = !DILocalVariable(name: "buf", scope: !1549, file: !29, line: 504, type: !1555)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 80, align: 8, elements: !1556)
!1556 = !{!1557}
!1557 = !DISubrange(count: 10)
!1558 = !DILocation(line: 504, column: 7, scope: !1549)
!1559 = !DILocalVariable(name: "i", scope: !1549, file: !29, line: 505, type: !24)
!1560 = !DILocation(line: 505, column: 6, scope: !1549)
!1561 = !DILocalVariable(name: "len", scope: !1549, file: !29, line: 505, type: !24)
!1562 = !DILocation(line: 505, column: 9, scope: !1549)
!1563 = !DILocation(line: 507, column: 26, scope: !1549)
!1564 = !DILocation(line: 507, column: 31, scope: !1549)
!1565 = !DILocation(line: 507, column: 8, scope: !1549)
!1566 = !DILocation(line: 507, column: 6, scope: !1549)
!1567 = !DILocation(line: 508, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1549, file: !29, line: 508, column: 2)
!1569 = !DILocation(line: 508, column: 7, scope: !1568)
!1570 = !DILocation(line: 508, column: 14, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !29, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !29, line: 508, column: 2)
!1573 = !DILocation(line: 508, column: 18, scope: !1571)
!1574 = !DILocation(line: 508, column: 16, scope: !1571)
!1575 = !DILocation(line: 508, column: 2, scope: !1571)
!1576 = !DILocation(line: 509, column: 20, scope: !1572)
!1577 = !DILocation(line: 509, column: 16, scope: !1572)
!1578 = !DILocation(line: 509, column: 24, scope: !1572)
!1579 = !DILocation(line: 509, column: 30, scope: !1572)
!1580 = !DILocation(line: 508, column: 24, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1572, file: !29, discriminator: 2)
!1582 = !DILocation(line: 508, column: 2, scope: !1581)
!1583 = distinct !{!1583, !1584}
!1584 = !DILocation(line: 508, column: 2, scope: !1549)
!1585 = !DILocation(line: 510, column: 1, scope: !1549)
!1586 = distinct !DISubprogram(name: "term_addstr", scope: !29, file: !29, line: 537, type: !1587, isLocal: false, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!24, !25, !162}
!1589 = !DILocalVariable(name: "window", arg: 1, scope: !1586, file: !29, line: 537, type: !25)
!1590 = !DILocation(line: 537, column: 30, scope: !1586)
!1591 = !DILocalVariable(name: "str", arg: 2, scope: !1586, file: !29, line: 537, type: !162)
!1592 = !DILocation(line: 537, column: 50, scope: !1586)
!1593 = !DILocalVariable(name: "len", scope: !1586, file: !29, line: 539, type: !24)
!1594 = !DILocation(line: 539, column: 6, scope: !1586)
!1595 = !DILocalVariable(name: "raw_len", scope: !1586, file: !29, line: 539, type: !24)
!1596 = !DILocation(line: 539, column: 11, scope: !1586)
!1597 = !DILocalVariable(name: "tmp", scope: !1586, file: !29, line: 540, type: !331)
!1598 = !DILocation(line: 540, column: 10, scope: !1586)
!1599 = !DILocalVariable(name: "ptr", scope: !1586, file: !29, line: 541, type: !162)
!1600 = !DILocation(line: 541, column: 14, scope: !1586)
!1601 = !DILocation(line: 543, column: 6, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1586, file: !29, line: 543, column: 6)
!1603 = !DILocation(line: 543, column: 6, scope: !1586)
!1604 = !DILocation(line: 543, column: 14, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1602, file: !29, discriminator: 1)
!1606 = !DILocation(line: 545, column: 6, scope: !1586)
!1607 = !DILocation(line: 546, column: 19, scope: !1586)
!1608 = !DILocation(line: 546, column: 12, scope: !1586)
!1609 = !DILocation(line: 546, column: 10, scope: !1586)
!1610 = !DILocation(line: 550, column: 8, scope: !1586)
!1611 = !DILocation(line: 550, column: 6, scope: !1586)
!1612 = !DILocation(line: 552, column: 6, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1586, file: !29, line: 552, column: 6)
!1614 = !DILocation(line: 552, column: 16, scope: !1613)
!1615 = !DILocation(line: 552, column: 6, scope: !1586)
!1616 = !DILocation(line: 553, column: 3, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !29, line: 552, column: 22)
!1618 = !DILocation(line: 553, column: 11, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1617, file: !29, discriminator: 1)
!1620 = !DILocation(line: 553, column: 10, scope: !1619)
!1621 = !DILocation(line: 553, column: 15, scope: !1619)
!1622 = !DILocation(line: 553, column: 3, scope: !1619)
!1623 = !DILocation(line: 554, column: 36, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1617, file: !29, line: 553, column: 24)
!1625 = !DILocation(line: 554, column: 10, scope: !1624)
!1626 = !DILocation(line: 554, column: 8, scope: !1624)
!1627 = !DILocation(line: 557, column: 8, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !29, line: 557, column: 8)
!1629 = !DILocation(line: 557, column: 12, scope: !1628)
!1630 = !DILocation(line: 557, column: 28, scope: !1628)
!1631 = !DILocation(line: 557, column: 31, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1628, file: !29, discriminator: 1)
!1633 = !DILocation(line: 557, column: 35, scope: !1632)
!1634 = !DILocation(line: 557, column: 8, scope: !1632)
!1635 = !DILocation(line: 558, column: 8, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1628, file: !29, line: 557, column: 52)
!1637 = !DILocation(line: 559, column: 8, scope: !1636)
!1638 = !DILocation(line: 560, column: 4, scope: !1636)
!1639 = !DILocation(line: 561, column: 15, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1628, file: !29, line: 560, column: 11)
!1641 = !DILocation(line: 561, column: 20, scope: !1640)
!1642 = !DILocation(line: 561, column: 29, scope: !1640)
!1643 = !DILocation(line: 561, column: 12, scope: !1640)
!1644 = !DILocation(line: 561, column: 48, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1640, file: !29, discriminator: 1)
!1646 = !DILocation(line: 561, column: 38, scope: !1645)
!1647 = !DILocation(line: 561, column: 12, scope: !1645)
!1648 = !DILocation(line: 561, column: 12, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1640, file: !29, discriminator: 2)
!1650 = !DILocation(line: 561, column: 12, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1640, file: !29, discriminator: 3)
!1652 = !DILocation(line: 561, column: 9, scope: !1651)
!1653 = !DILocation(line: 562, column: 21, scope: !1640)
!1654 = !DILocation(line: 562, column: 58, scope: !1640)
!1655 = !DILocation(line: 562, column: 40, scope: !1640)
!1656 = !DILocation(line: 562, column: 28, scope: !1640)
!1657 = !DILocation(line: 562, column: 26, scope: !1640)
!1658 = !DILocation(line: 562, column: 9, scope: !1640)
!1659 = !DILocation(line: 553, column: 3, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1617, file: !29, discriminator: 2)
!1661 = distinct !{!1661, !1616}
!1662 = !DILocation(line: 565, column: 2, scope: !1617)
!1663 = !DILocation(line: 566, column: 9, scope: !1613)
!1664 = !DILocation(line: 566, column: 7, scope: !1613)
!1665 = !DILocation(line: 568, column: 27, scope: !1586)
!1666 = !DILocation(line: 568, column: 9, scope: !1586)
!1667 = !DILocation(line: 571, column: 9, scope: !1586)
!1668 = !DILocation(line: 571, column: 17, scope: !1586)
!1669 = !DILocation(line: 571, column: 26, scope: !1586)
!1670 = !DILocation(line: 571, column: 34, scope: !1586)
!1671 = !DILocation(line: 571, column: 40, scope: !1586)
!1672 = !DILocation(line: 571, column: 2, scope: !1586)
!1673 = !DILocation(line: 573, column: 9, scope: !1586)
!1674 = !DILocation(line: 573, column: 2, scope: !1586)
!1675 = distinct !DISubprogram(name: "term_window_clrtoeol", scope: !29, file: !29, line: 608, type: !769, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1676 = !DILocalVariable(name: "window", arg: 1, scope: !1675, file: !29, line: 608, type: !25)
!1677 = !DILocation(line: 608, column: 40, scope: !1675)
!1678 = !DILocalVariable(name: "ypos", arg: 2, scope: !1675, file: !29, line: 608, type: !24)
!1679 = !DILocation(line: 608, column: 52, scope: !1675)
!1680 = !DILocation(line: 610, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1675, file: !29, line: 610, column: 6)
!1682 = !DILocation(line: 610, column: 11, scope: !1681)
!1683 = !DILocation(line: 610, column: 16, scope: !1681)
!1684 = !DILocation(line: 610, column: 19, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1681, file: !29, discriminator: 1)
!1686 = !DILocation(line: 610, column: 27, scope: !1685)
!1687 = !DILocation(line: 610, column: 31, scope: !1685)
!1688 = !DILocation(line: 610, column: 29, scope: !1685)
!1689 = !DILocation(line: 610, column: 39, scope: !1685)
!1690 = !DILocation(line: 610, column: 36, scope: !1685)
!1691 = !DILocation(line: 610, column: 6, scope: !1685)
!1692 = !DILocation(line: 612, column: 3, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1681, file: !29, line: 610, column: 44)
!1694 = !DILocation(line: 614, column: 16, scope: !1675)
!1695 = !DILocation(line: 614, column: 2, scope: !1675)
!1696 = !DILocation(line: 615, column: 6, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1675, file: !29, line: 615, column: 6)
!1698 = !DILocation(line: 615, column: 14, scope: !1697)
!1699 = !DILocation(line: 615, column: 18, scope: !1697)
!1700 = !DILocation(line: 615, column: 26, scope: !1697)
!1701 = !DILocation(line: 615, column: 16, scope: !1697)
!1702 = !DILocation(line: 615, column: 34, scope: !1697)
!1703 = !DILocation(line: 615, column: 32, scope: !1697)
!1704 = !DILocation(line: 615, column: 6, scope: !1675)
!1705 = !DILocation(line: 616, column: 31, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1697, file: !29, line: 615, column: 46)
!1707 = !DILocation(line: 616, column: 39, scope: !1706)
!1708 = !DILocation(line: 616, column: 43, scope: !1706)
!1709 = !DILocation(line: 616, column: 51, scope: !1706)
!1710 = !DILocation(line: 616, column: 41, scope: !1706)
!1711 = !DILocation(line: 616, column: 58, scope: !1706)
!1712 = !DILocation(line: 616, column: 66, scope: !1706)
!1713 = !DILocation(line: 616, column: 70, scope: !1706)
!1714 = !DILocation(line: 616, column: 68, scope: !1706)
!1715 = !DILocation(line: 616, column: 3, scope: !1706)
!1716 = !DILocation(line: 617, column: 18, scope: !1706)
!1717 = !DILocation(line: 617, column: 3, scope: !1706)
!1718 = !DILocation(line: 618, column: 2, scope: !1706)
!1719 = !DILocation(line: 619, column: 1, scope: !1675)
!1720 = distinct !DISubprogram(name: "term_window_clrtoeol_abs", scope: !29, file: !29, line: 621, type: !769, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1721 = !DILocalVariable(name: "window", arg: 1, scope: !1720, file: !29, line: 621, type: !25)
!1722 = !DILocation(line: 621, column: 44, scope: !1720)
!1723 = !DILocalVariable(name: "ypos", arg: 2, scope: !1720, file: !29, line: 621, type: !24)
!1724 = !DILocation(line: 621, column: 56, scope: !1720)
!1725 = !DILocation(line: 623, column: 23, scope: !1720)
!1726 = !DILocation(line: 623, column: 31, scope: !1720)
!1727 = !DILocation(line: 623, column: 38, scope: !1720)
!1728 = !DILocation(line: 623, column: 46, scope: !1720)
!1729 = !DILocation(line: 623, column: 36, scope: !1720)
!1730 = !DILocation(line: 623, column: 2, scope: !1720)
!1731 = !DILocation(line: 624, column: 1, scope: !1720)
!1732 = distinct !DISubprogram(name: "term_move_cursor", scope: !29, file: !29, line: 626, type: !621, isLocal: false, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1733 = !DILocalVariable(name: "x", arg: 1, scope: !1732, file: !29, line: 626, type: !24)
!1734 = !DILocation(line: 626, column: 27, scope: !1732)
!1735 = !DILocalVariable(name: "y", arg: 2, scope: !1732, file: !29, line: 626, type: !24)
!1736 = !DILocation(line: 626, column: 34, scope: !1732)
!1737 = !DILocation(line: 628, column: 11, scope: !1732)
!1738 = !DILocation(line: 628, column: 9, scope: !1732)
!1739 = !DILocation(line: 629, column: 18, scope: !1732)
!1740 = !DILocation(line: 629, column: 16, scope: !1732)
!1741 = !DILocation(line: 630, column: 1, scope: !1732)
!1742 = distinct !DISubprogram(name: "term_refresh", scope: !29, file: !29, line: 632, type: !1044, isLocal: false, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1743 = !DILocalVariable(name: "window", arg: 1, scope: !1742, file: !29, line: 632, type: !25)
!1744 = !DILocation(line: 632, column: 32, scope: !1742)
!1745 = !DILocation(line: 634, column: 6, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !29, line: 634, column: 6)
!1747 = !DILocation(line: 634, column: 21, scope: !1746)
!1748 = !DILocation(line: 634, column: 6, scope: !1742)
!1749 = !DILocation(line: 635, column: 3, scope: !1746)
!1750 = !DILocation(line: 637, column: 12, scope: !1742)
!1751 = !DILocation(line: 637, column: 25, scope: !1742)
!1752 = !DILocation(line: 637, column: 33, scope: !1742)
!1753 = !DILocation(line: 637, column: 2, scope: !1742)
!1754 = !DILocation(line: 638, column: 2, scope: !1742)
!1755 = !DILocation(line: 640, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1742, file: !29, line: 640, column: 6)
!1757 = !DILocation(line: 640, column: 6, scope: !1742)
!1758 = !DILocation(line: 641, column: 3, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !29, line: 640, column: 21)
!1760 = !DILocation(line: 641, column: 17, scope: !1759)
!1761 = !DILocation(line: 641, column: 36, scope: !1759)
!1762 = !DILocation(line: 642, column: 30, scope: !1759)
!1763 = !DILocation(line: 643, column: 2, scope: !1759)
!1764 = !DILocation(line: 645, column: 17, scope: !1742)
!1765 = !DILocation(line: 645, column: 2, scope: !1742)
!1766 = !DILocation(line: 646, column: 9, scope: !1742)
!1767 = !DILocation(line: 646, column: 16, scope: !1742)
!1768 = !DILocation(line: 646, column: 25, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1742, file: !29, discriminator: 1)
!1770 = !DILocation(line: 646, column: 33, scope: !1769)
!1771 = !DILocation(line: 646, column: 39, scope: !1769)
!1772 = !DILocation(line: 646, column: 9, scope: !1769)
!1773 = !DILocation(line: 646, column: 45, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1742, file: !29, discriminator: 2)
!1775 = !DILocation(line: 646, column: 59, scope: !1774)
!1776 = !DILocation(line: 646, column: 9, scope: !1774)
!1777 = !DILocation(line: 646, column: 9, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1742, file: !29, discriminator: 3)
!1779 = !DILocation(line: 646, column: 2, scope: !1778)
!1780 = !DILocation(line: 647, column: 1, scope: !1742)
!1781 = !DILocation(line: 647, column: 1, scope: !1769)
!1782 = distinct !DISubprogram(name: "term_refresh_freeze", scope: !29, file: !29, line: 649, type: !296, isLocal: false, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1783 = !DILocation(line: 651, column: 23, scope: !1782)
!1784 = !DILocation(line: 652, column: 1, scope: !1782)
!1785 = distinct !DISubprogram(name: "term_refresh_thaw", scope: !29, file: !29, line: 654, type: !296, isLocal: false, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1786 = !DILocation(line: 656, column: 6, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1785, file: !29, line: 656, column: 6)
!1788 = !DILocation(line: 656, column: 23, scope: !1787)
!1789 = !DILocation(line: 656, column: 6, scope: !1785)
!1790 = !DILocation(line: 657, column: 17, scope: !1787)
!1791 = !DILocation(line: 658, column: 1, scope: !1785)
!1792 = distinct !DISubprogram(name: "term_stop", scope: !29, file: !29, line: 660, type: !296, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1793 = !DILocation(line: 662, column: 16, scope: !1792)
!1794 = !DILocation(line: 662, column: 2, scope: !1792)
!1795 = !DILocation(line: 663, column: 7, scope: !1792)
!1796 = !DILocation(line: 663, column: 2, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1792, file: !29, discriminator: 1)
!1798 = !DILocation(line: 669, column: 16, scope: !1792)
!1799 = !DILocation(line: 669, column: 2, scope: !1792)
!1800 = !DILocation(line: 670, column: 2, scope: !1792)
!1801 = !DILocation(line: 671, column: 1, scope: !1792)
!1802 = distinct !DISubprogram(name: "input_utf8", scope: !29, file: !29, line: 673, type: !326, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1803 = !DILocalVariable(name: "buffer", arg: 1, scope: !1802, file: !29, line: 673, type: !328)
!1804 = !DILocation(line: 673, column: 44, scope: !1802)
!1805 = !DILocalVariable(name: "size", arg: 2, scope: !1802, file: !29, line: 673, type: !24)
!1806 = !DILocation(line: 673, column: 56, scope: !1802)
!1807 = !DILocalVariable(name: "result", arg: 3, scope: !1802, file: !29, line: 673, type: !330)
!1808 = !DILocation(line: 673, column: 71, scope: !1802)
!1809 = !DILocalVariable(name: "c", scope: !1802, file: !29, line: 675, type: !331)
!1810 = !DILocation(line: 675, column: 10, scope: !1802)
!1811 = !DILocation(line: 675, column: 48, scope: !1802)
!1812 = !DILocation(line: 675, column: 56, scope: !1802)
!1813 = !DILocation(line: 675, column: 14, scope: !1802)
!1814 = !DILocation(line: 677, column: 10, scope: !1802)
!1815 = !DILocation(line: 677, column: 2, scope: !1802)
!1816 = !DILocation(line: 680, column: 14, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1802, file: !29, line: 677, column: 13)
!1818 = !DILocation(line: 680, column: 13, scope: !1817)
!1819 = !DILocation(line: 680, column: 4, scope: !1817)
!1820 = !DILocation(line: 680, column: 11, scope: !1817)
!1821 = !DILocation(line: 681, column: 3, scope: !1817)
!1822 = !DILocation(line: 684, column: 3, scope: !1817)
!1823 = !DILocation(line: 686, column: 13, scope: !1817)
!1824 = !DILocation(line: 686, column: 4, scope: !1817)
!1825 = !DILocation(line: 686, column: 11, scope: !1817)
!1826 = !DILocation(line: 687, column: 23, scope: !1817)
!1827 = !DILocation(line: 687, column: 22, scope: !1817)
!1828 = !DILocation(line: 687, column: 10, scope: !1817)
!1829 = !DILocation(line: 687, column: 3, scope: !1817)
!1830 = !DILocation(line: 689, column: 1, scope: !1802)
!1831 = distinct !DISubprogram(name: "input_big5", scope: !29, file: !29, line: 691, type: !326, isLocal: true, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1832 = !DILocalVariable(name: "buffer", arg: 1, scope: !1831, file: !29, line: 691, type: !328)
!1833 = !DILocation(line: 691, column: 44, scope: !1831)
!1834 = !DILocalVariable(name: "size", arg: 2, scope: !1831, file: !29, line: 691, type: !24)
!1835 = !DILocation(line: 691, column: 56, scope: !1831)
!1836 = !DILocalVariable(name: "result", arg: 3, scope: !1831, file: !29, line: 691, type: !330)
!1837 = !DILocation(line: 691, column: 71, scope: !1831)
!1838 = !DILocation(line: 693, column: 17, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1831, file: !29, line: 693, column: 6)
!1840 = !DILocation(line: 693, column: 16, scope: !1839)
!1841 = !DILocation(line: 693, column: 15, scope: !1839)
!1842 = !DILocation(line: 693, column: 12, scope: !1839)
!1843 = !DILocation(line: 693, column: 25, scope: !1839)
!1844 = !DILocation(line: 693, column: 30, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1839, file: !29, discriminator: 1)
!1846 = !DILocation(line: 693, column: 29, scope: !1845)
!1847 = !DILocation(line: 693, column: 28, scope: !1845)
!1848 = !DILocation(line: 693, column: 38, scope: !1845)
!1849 = !DILocation(line: 693, column: 6, scope: !1845)
!1850 = !DILocation(line: 695, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !29, line: 695, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1839, file: !29, line: 693, column: 48)
!1853 = !DILocation(line: 695, column: 12, scope: !1851)
!1854 = !DILocation(line: 695, column: 7, scope: !1852)
!1855 = !DILocation(line: 696, column: 4, scope: !1851)
!1856 = !DILocation(line: 698, column: 17, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !29, line: 698, column: 7)
!1858 = !DILocation(line: 698, column: 16, scope: !1857)
!1859 = !DILocation(line: 698, column: 13, scope: !1857)
!1860 = !DILocation(line: 698, column: 28, scope: !1857)
!1861 = !DILocation(line: 698, column: 32, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1857, file: !29, discriminator: 1)
!1863 = !DILocation(line: 698, column: 31, scope: !1862)
!1864 = !DILocation(line: 698, column: 43, scope: !1862)
!1865 = !DILocation(line: 698, column: 52, scope: !1862)
!1866 = !DILocation(line: 698, column: 65, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1857, file: !29, discriminator: 2)
!1868 = !DILocation(line: 698, column: 64, scope: !1867)
!1869 = !DILocation(line: 698, column: 61, scope: !1867)
!1870 = !DILocation(line: 698, column: 76, scope: !1867)
!1871 = !DILocation(line: 698, column: 80, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1857, file: !29, discriminator: 3)
!1873 = !DILocation(line: 698, column: 79, scope: !1872)
!1874 = !DILocation(line: 698, column: 91, scope: !1872)
!1875 = !DILocation(line: 698, column: 7, scope: !1872)
!1876 = !DILocation(line: 699, column: 35, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1857, file: !29, line: 698, column: 101)
!1878 = !DILocation(line: 699, column: 55, scope: !1877)
!1879 = !DILocation(line: 699, column: 54, scope: !1877)
!1880 = !DILocation(line: 699, column: 48, scope: !1877)
!1881 = !DILocation(line: 699, column: 62, scope: !1877)
!1882 = !DILocation(line: 699, column: 45, scope: !1877)
!1883 = !DILocation(line: 699, column: 26, scope: !1877)
!1884 = !DILocation(line: 699, column: 33, scope: !1877)
!1885 = !DILocation(line: 700, column: 4, scope: !1877)
!1886 = !DILocation(line: 702, column: 2, scope: !1852)
!1887 = !DILocation(line: 704, column: 20, scope: !1831)
!1888 = !DILocation(line: 704, column: 19, scope: !1831)
!1889 = !DILocation(line: 704, column: 10, scope: !1831)
!1890 = !DILocation(line: 704, column: 17, scope: !1831)
!1891 = !DILocation(line: 705, column: 2, scope: !1831)
!1892 = !DILocation(line: 706, column: 1, scope: !1831)
!1893 = distinct !DISubprogram(name: "input_8bit", scope: !29, file: !29, line: 708, type: !326, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1894 = !DILocalVariable(name: "buffer", arg: 1, scope: !1893, file: !29, line: 708, type: !328)
!1895 = !DILocation(line: 708, column: 44, scope: !1893)
!1896 = !DILocalVariable(name: "size", arg: 2, scope: !1893, file: !29, line: 708, type: !24)
!1897 = !DILocation(line: 708, column: 56, scope: !1893)
!1898 = !DILocalVariable(name: "result", arg: 3, scope: !1893, file: !29, line: 708, type: !330)
!1899 = !DILocation(line: 708, column: 71, scope: !1893)
!1900 = !DILocation(line: 710, column: 20, scope: !1893)
!1901 = !DILocation(line: 710, column: 19, scope: !1893)
!1902 = !DILocation(line: 710, column: 10, scope: !1893)
!1903 = !DILocation(line: 710, column: 17, scope: !1893)
!1904 = !DILocation(line: 711, column: 9, scope: !1893)
!1905 = distinct !DISubprogram(name: "term_gets", scope: !29, file: !29, line: 728, type: !1906, isLocal: false, isDefinition: true, scopeLine: 729, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1908, !1915}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64, align: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !1910, line: 37, baseType: !1911)
!1910 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/irssi/task1")
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !1910, line: 41, size: 128, align: 64, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1911, file: !1910, line: 43, baseType: !222, size: 64, align: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1911, file: !1910, line: 44, baseType: !299, size: 32, align: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!1916 = !DILocalVariable(name: "buffer", arg: 1, scope: !1905, file: !29, line: 728, type: !1908)
!1917 = !DILocation(line: 728, column: 24, scope: !1905)
!1918 = !DILocalVariable(name: "line_count", arg: 2, scope: !1905, file: !29, line: 728, type: !1915)
!1919 = !DILocation(line: 728, column: 37, scope: !1905)
!1920 = !DILocalVariable(name: "ret", scope: !1905, file: !29, line: 730, type: !24)
!1921 = !DILocation(line: 730, column: 6, scope: !1905)
!1922 = !DILocalVariable(name: "i", scope: !1905, file: !29, line: 730, type: !24)
!1923 = !DILocation(line: 730, column: 11, scope: !1905)
!1924 = !DILocalVariable(name: "char_len", scope: !1905, file: !29, line: 730, type: !24)
!1925 = !DILocation(line: 730, column: 14, scope: !1905)
!1926 = !DILocation(line: 734, column: 20, scope: !1905)
!1927 = !DILocation(line: 734, column: 34, scope: !1905)
!1928 = !DILocation(line: 734, column: 13, scope: !1905)
!1929 = !DILocation(line: 735, column: 19, scope: !1905)
!1930 = !DILocation(line: 735, column: 17, scope: !1905)
!1931 = !DILocation(line: 735, column: 54, scope: !1905)
!1932 = !DILocation(line: 735, column: 53, scope: !1905)
!1933 = !DILocation(line: 734, column: 8, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1905, file: !29, discriminator: 1)
!1935 = !DILocation(line: 734, column: 8, scope: !1905)
!1936 = !DILocation(line: 734, column: 6, scope: !1905)
!1937 = !DILocation(line: 736, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1905, file: !29, line: 736, column: 6)
!1939 = !DILocation(line: 736, column: 10, scope: !1938)
!1940 = !DILocation(line: 736, column: 6, scope: !1905)
!1941 = !DILocation(line: 738, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !29, line: 736, column: 16)
!1943 = !DILocation(line: 739, column: 2, scope: !1942)
!1944 = !DILocation(line: 739, column: 13, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1946, file: !29, discriminator: 1)
!1946 = distinct !DILexicalBlock(scope: !1938, file: !29, line: 739, column: 13)
!1947 = !DILocation(line: 739, column: 17, scope: !1945)
!1948 = !DILocation(line: 739, column: 23, scope: !1945)
!1949 = !DILocation(line: 739, column: 28, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1946, file: !29, discriminator: 2)
!1951 = !DILocation(line: 739, column: 27, scope: !1950)
!1952 = !DILocation(line: 739, column: 32, scope: !1950)
!1953 = !DILocation(line: 739, column: 41, scope: !1950)
!1954 = !DILocation(line: 739, column: 46, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1946, file: !29, discriminator: 3)
!1956 = !DILocation(line: 739, column: 45, scope: !1955)
!1957 = !DILocation(line: 739, column: 50, scope: !1955)
!1958 = !DILocation(line: 739, column: 13, scope: !1955)
!1959 = !DILocation(line: 740, column: 7, scope: !1946)
!1960 = !DILocation(line: 740, column: 3, scope: !1946)
!1961 = !DILocation(line: 741, column: 6, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1905, file: !29, line: 741, column: 6)
!1963 = !DILocation(line: 741, column: 10, scope: !1962)
!1964 = !DILocation(line: 741, column: 6, scope: !1905)
!1965 = !DILocation(line: 742, column: 3, scope: !1962)
!1966 = !DILocation(line: 744, column: 6, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1905, file: !29, line: 744, column: 6)
!1968 = !DILocation(line: 744, column: 10, scope: !1967)
!1969 = !DILocation(line: 744, column: 6, scope: !1905)
!1970 = !DILocation(line: 746, column: 21, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !29, line: 744, column: 15)
!1972 = !DILocation(line: 746, column: 18, scope: !1971)
!1973 = !DILocation(line: 747, column: 10, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !29, line: 747, column: 3)
!1975 = !DILocation(line: 747, column: 8, scope: !1974)
!1976 = !DILocation(line: 747, column: 15, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !29, discriminator: 1)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !29, line: 747, column: 3)
!1979 = !DILocation(line: 747, column: 19, scope: !1977)
!1980 = !DILocation(line: 747, column: 17, scope: !1977)
!1981 = !DILocation(line: 747, column: 3, scope: !1977)
!1982 = !DILocalVariable(name: "key", scope: !1983, file: !29, line: 748, type: !331)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !29, line: 747, column: 37)
!1984 = !DILocation(line: 748, column: 12, scope: !1983)
!1985 = !DILocation(line: 749, column: 15, scope: !1983)
!1986 = !DILocation(line: 749, column: 37, scope: !1983)
!1987 = !DILocation(line: 749, column: 36, scope: !1983)
!1988 = !DILocation(line: 749, column: 40, scope: !1983)
!1989 = !DILocation(line: 749, column: 55, scope: !1983)
!1990 = !DILocation(line: 749, column: 54, scope: !1983)
!1991 = !DILocation(line: 749, column: 13, scope: !1983)
!1992 = !DILocation(line: 751, column: 8, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1983, file: !29, line: 751, column: 8)
!1994 = !DILocation(line: 751, column: 17, scope: !1993)
!1995 = !DILocation(line: 751, column: 8, scope: !1983)
!1996 = !DILocation(line: 752, column: 5, scope: !1993)
!1997 = !DILocation(line: 753, column: 25, scope: !1983)
!1998 = !DILocation(line: 753, column: 33, scope: !1983)
!1999 = !DILocation(line: 753, column: 4, scope: !1983)
!2000 = !DILocation(line: 754, column: 8, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1983, file: !29, line: 754, column: 8)
!2002 = !DILocation(line: 754, column: 12, scope: !2001)
!2003 = !DILocation(line: 754, column: 20, scope: !2001)
!2004 = !DILocation(line: 754, column: 23, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2001, file: !29, discriminator: 1)
!2006 = !DILocation(line: 754, column: 27, scope: !2005)
!2007 = !DILocation(line: 754, column: 8, scope: !2005)
!2008 = !DILocation(line: 755, column: 7, scope: !2001)
!2009 = !DILocation(line: 755, column: 18, scope: !2001)
!2010 = !DILocation(line: 755, column: 5, scope: !2001)
!2011 = !DILocation(line: 757, column: 9, scope: !1983)
!2012 = !DILocation(line: 757, column: 6, scope: !1983)
!2013 = !DILocation(line: 747, column: 3, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !1978, file: !29, discriminator: 2)
!2015 = distinct !{!2015, !2016}
!2016 = !DILocation(line: 747, column: 3, scope: !1971)
!2017 = !DILocation(line: 760, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1971, file: !29, line: 760, column: 7)
!2019 = !DILocation(line: 760, column: 12, scope: !2018)
!2020 = !DILocation(line: 760, column: 9, scope: !2018)
!2021 = !DILocation(line: 760, column: 7, scope: !1971)
!2022 = !DILocation(line: 761, column: 19, scope: !2018)
!2023 = !DILocation(line: 761, column: 4, scope: !2018)
!2024 = !DILocation(line: 762, column: 12, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2018, file: !29, line: 762, column: 12)
!2026 = !DILocation(line: 762, column: 14, scope: !2025)
!2027 = !DILocation(line: 762, column: 12, scope: !2018)
!2028 = !DILocation(line: 763, column: 35, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !29, line: 762, column: 19)
!2030 = !DILocation(line: 763, column: 34, scope: !2029)
!2031 = !DILocation(line: 763, column: 38, scope: !2029)
!2032 = !DILocation(line: 763, column: 53, scope: !2029)
!2033 = !DILocation(line: 763, column: 52, scope: !2029)
!2034 = !DILocation(line: 763, column: 4, scope: !2029)
!2035 = !DILocation(line: 764, column: 43, scope: !2029)
!2036 = !DILocation(line: 764, column: 40, scope: !2029)
!2037 = !DILocation(line: 765, column: 3, scope: !2029)
!2038 = !DILocation(line: 766, column: 2, scope: !1971)
!2039 = !DILocation(line: 767, column: 1, scope: !1905)
!2040 = distinct !DISubprogram(name: "term_environment_check", scope: !29, file: !29, line: 774, type: !296, isLocal: false, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!2041 = !DILocalVariable(name: "term", scope: !2040, file: !29, line: 776, type: !162)
!2042 = !DILocation(line: 776, column: 14, scope: !2040)
!2043 = !DILocalVariable(name: "sty", scope: !2040, file: !29, line: 776, type: !162)
!2044 = !DILocation(line: 776, column: 21, scope: !2040)
!2045 = !DILocalVariable(name: "tmux", scope: !2040, file: !29, line: 776, type: !162)
!2046 = !DILocation(line: 776, column: 27, scope: !2040)
!2047 = !DILocalVariable(name: "multiplexer", scope: !2040, file: !29, line: 776, type: !162)
!2048 = !DILocation(line: 776, column: 34, scope: !2040)
!2049 = !DILocation(line: 778, column: 9, scope: !2040)
!2050 = !DILocation(line: 778, column: 7, scope: !2040)
!2051 = !DILocation(line: 779, column: 8, scope: !2040)
!2052 = !DILocation(line: 779, column: 6, scope: !2040)
!2053 = !DILocation(line: 780, column: 9, scope: !2040)
!2054 = !DILocation(line: 780, column: 7, scope: !2040)
!2055 = !DILocation(line: 782, column: 17, scope: !2040)
!2056 = !DILocation(line: 782, column: 21, scope: !2040)
!2057 = !DILocation(line: 782, column: 25, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2040, file: !29, discriminator: 1)
!2059 = !DILocation(line: 782, column: 24, scope: !2058)
!2060 = !DILocation(line: 782, column: 16, scope: !2058)
!2061 = !DILocation(line: 782, column: 16, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2040, file: !29, discriminator: 2)
!2063 = !DILocation(line: 783, column: 17, scope: !2040)
!2064 = !DILocation(line: 783, column: 22, scope: !2040)
!2065 = !DILocation(line: 783, column: 26, scope: !2058)
!2066 = !DILocation(line: 783, column: 25, scope: !2058)
!2067 = !DILocation(line: 783, column: 22, scope: !2058)
!2068 = !DILocation(line: 783, column: 16, scope: !2062)
!2069 = !DILocation(line: 782, column: 16, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2040, file: !29, discriminator: 3)
!2071 = !DILocation(line: 782, column: 16, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2040, file: !29, discriminator: 4)
!2073 = !DILocation(line: 782, column: 14, scope: !2072)
!2074 = !DILocation(line: 785, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2040, file: !29, line: 785, column: 6)
!2076 = !DILocation(line: 785, column: 6, scope: !2040)
!2077 = !DILocation(line: 786, column: 3, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !29, line: 785, column: 20)
!2079 = !DILocation(line: 789, column: 6, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2040, file: !29, line: 789, column: 6)
!2081 = !DILocation(line: 789, column: 11, scope: !2080)
!2082 = !DILocation(line: 789, column: 32, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2080, file: !29, discriminator: 1)
!2084 = !DILocation(line: 789, column: 15, scope: !2083)
!2085 = !DILocation(line: 789, column: 48, scope: !2083)
!2086 = !DILocation(line: 790, column: 32, scope: !2080)
!2087 = !DILocation(line: 790, column: 15, scope: !2080)
!2088 = !DILocation(line: 789, column: 6, scope: !2062)
!2089 = !DILocation(line: 791, column: 3, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2080, file: !29, line: 790, column: 48)
!2091 = !DILocation(line: 794, column: 44, scope: !2040)
!2092 = !DILocation(line: 794, column: 62, scope: !2040)
!2093 = !DILocation(line: 794, column: 68, scope: !2040)
!2094 = !DILocation(line: 794, column: 2, scope: !2040)
!2095 = !DILocation(line: 795, column: 1, scope: !2040)
!2096 = !DILocation(line: 795, column: 1, scope: !2058)
!2097 = distinct !DISubprogram(name: "sigcont_prepare", scope: !29, file: !29, line: 73, type: !277, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!2098 = !DILocalVariable(name: "source", arg: 1, scope: !2097, file: !29, line: 73, type: !240)
!2099 = !DILocation(line: 73, column: 42, scope: !2097)
!2100 = !DILocalVariable(name: "timeout", arg: 2, scope: !2097, file: !29, line: 73, type: !279)
!2101 = !DILocation(line: 73, column: 56, scope: !2097)
!2102 = !DILocation(line: 75, column: 3, scope: !2097)
!2103 = !DILocation(line: 75, column: 11, scope: !2097)
!2104 = !DILocation(line: 76, column: 9, scope: !2097)
!2105 = !DILocation(line: 76, column: 2, scope: !2097)
!2106 = distinct !DISubprogram(name: "sigcont_check", scope: !29, file: !29, line: 79, type: !282, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!2107 = !DILocalVariable(name: "source", arg: 1, scope: !2106, file: !29, line: 79, type: !240)
!2108 = !DILocation(line: 79, column: 40, scope: !2106)
!2109 = !DILocation(line: 81, column: 9, scope: !2106)
!2110 = !DILocation(line: 81, column: 2, scope: !2106)
!2111 = distinct !DISubprogram(name: "sigcont_dispatch", scope: !29, file: !29, line: 84, type: !286, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!2112 = !DILocalVariable(name: "source", arg: 1, scope: !2111, file: !29, line: 84, type: !240)
!2113 = !DILocation(line: 84, column: 43, scope: !2111)
!2114 = !DILocalVariable(name: "callback", arg: 2, scope: !2111, file: !29, line: 84, type: !262)
!2115 = !DILocation(line: 84, column: 63, scope: !2111)
!2116 = !DILocalVariable(name: "user_data", arg: 3, scope: !2111, file: !29, line: 84, type: !246)
!2117 = !DILocation(line: 84, column: 82, scope: !2111)
!2118 = !DILocation(line: 86, column: 14, scope: !2111)
!2119 = !DILocation(line: 87, column: 6, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2111, file: !29, line: 87, column: 6)
!2121 = !DILocation(line: 87, column: 15, scope: !2120)
!2122 = !DILocation(line: 87, column: 6, scope: !2111)
!2123 = !DILocation(line: 88, column: 3, scope: !2120)
!2124 = !DILocation(line: 89, column: 9, scope: !2111)
!2125 = !DILocation(line: 89, column: 18, scope: !2111)
!2126 = !DILocation(line: 89, column: 2, scope: !2111)
!2127 = !DILocation(line: 90, column: 1, scope: !2111)
!2128 = distinct !DISubprogram(name: "term_putchar", scope: !29, file: !29, line: 312, type: !2129, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !348)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!24, !24}
!2131 = !DILocalVariable(name: "c", arg: 1, scope: !2128, file: !29, line: 312, type: !24)
!2132 = !DILocation(line: 312, column: 36, scope: !2128)
!2133 = !DILocation(line: 314, column: 22, scope: !2128)
!2134 = !DILocation(line: 314, column: 25, scope: !2128)
!2135 = !DILocation(line: 314, column: 39, scope: !2128)
!2136 = !DILocation(line: 314, column: 16, scope: !2128)
!2137 = !DILocation(line: 314, column: 9, scope: !2128)
