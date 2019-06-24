; ModuleID = './[inter]ncurses--n_comm.o.i'
source_filename = "./[inter]ncurses--n_comm.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scrolling_window = type { %struct._win_st*, %struct._win_st*, i32, i32, i32, i32, i32, i32, i8* }
%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16 }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.tagMENU = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8*, i16, %struct._win_st*, %struct._win_st*, %struct._win_st*, %struct._win_st*, %struct.tagITEM**, i16, %struct.tagITEM*, i16, i64, i64, i64, i8, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, i8*, i8*, i32, i16 }
%struct.tagITEM = type { %struct.TEXT, %struct.TEXT, %struct.tagMENU*, i8*, i32, i16, i16, i16, i8, %struct.tagITEM*, %struct.tagITEM*, %struct.tagITEM*, %struct.tagITEM* }
%struct.TEXT = type { i8*, i16 }
%struct.thread_conn = type { [30 x i8], i64, i64, i16, i16, i32 }
%struct.thread_conn_rst = type { [30 x i8], i64, i64, i16, i16, i32 }
%struct.thread_arp = type { [30 x i8], i32 }
%struct.connections = type { i64, i64, i16, i16, i64, i64, i32, i32, i32 }
%struct.cnn = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i16, i16, i32 }

@.str = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@princ = common global %struct.scrolling_window* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"winfo\00", align 1
@winfo = common global %struct.scrolling_window* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop_up = common global %struct._win_st* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Press 'q' to close this window\00", align 1
@sniff_glob = common global i32 0, align 4
@mvar = common global i16 0, align 2
@tmp = common global i32 0, align 4
@line_s = common global i32 0, align 4
@LINES = external global i32, align 4
@linm = common global i32 0, align 4
@row_s = common global i32 0, align 4
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@lg = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Warning, another function is running!\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Should i stop its thread (y/n)?\00", align 1
@thID = common global [6 x i64] zeroinitializer, align 16
@pt = common global [2 x i64] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [38 x i8] c"I will continue with the old function\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Press 'q' to quit\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@offset = common global i16 0, align 2
@npkt = common global i32 0, align 4
@packet = common global i8* null, align 8
@buf = common global i8* null, align 8
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@descr = common global %struct.pcap* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@maskp = common global i32 0, align 4
@netp = common global i32 0, align 4
@datalink = common global i32 0, align 4
@fp = common global %struct.bpf_program zeroinitializer, align 8
@logname = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@tr = common global i16 0, align 2
@tl = common global i16 0, align 2
@graph = common global i16 0, align 2
@cont = common global i16 0, align 2
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@demonize = common global i16 0, align 2
@query = common global %struct._win_st* null, align 8
@werror = common global %struct._win_st* null, align 8
@help = common global %struct._win_st* null, align 8
@wstream = common global %struct.scrolling_window* null, align 8
@wconn = common global %struct.scrolling_window* null, align 8
@my_nmenu = common global %struct.tagMENU* null, align 8
@curr_item = common global %struct.tagITEM* null, align 8
@my_nmenu_win = common global %struct._win_st* null, align 8
@promisc = common global i16 0, align 2
@hex = common global i16 0, align 2
@ascii = common global i16 0, align 2
@ld = common global i16 0, align 2
@f = common global i16 0, align 2
@lr = common global i16 0, align 2
@l = common global i16 0, align 2
@flg = common global i16 0, align 2
@fileds = common global i32 0, align 4
@dev = common global [10 x i8] zeroinitializer, align 1
@n_filter = common global [60 x i8] zeroinitializer, align 16
@ldfile = common global [50 x i8] zeroinitializer, align 16
@tcpdfile = common global [50 x i8] zeroinitializer, align 16
@reportl = common global [50 x i8] zeroinitializer, align 16
@logfile = common global [50 x i8] zeroinitializer, align 16
@str = common global %struct.pcap* null, align 8
@th_data = common global [1 x %struct.thread_conn] zeroinitializer, align 16
@th_r_data = common global [1 x %struct.thread_conn_rst] zeroinitializer, align 16
@th_arp_data = common global [1 x %struct.thread_arp] zeroinitializer, align 16
@c_inf = common global [30 x %struct.connections] zeroinitializer, align 16
@sf = common global [30 x %struct.cnn] zeroinitializer, align 16
@nmax = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @ng_print(i8*, i32, i32, i8*) #0 !dbg !396 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scrolling_window*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !399, metadata !400), !dbg !401
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !402, metadata !400), !dbg !403
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !404, metadata !400), !dbg !405
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !406, metadata !400), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.scrolling_window** %10, metadata !408, metadata !400), !dbg !409
  call void @llvm.dbg.declare(metadata i32* %11, metadata !410, metadata !400), !dbg !411
  store i32 0, i32* %11, align 4, !dbg !412
  store %struct.scrolling_window* null, %struct.scrolling_window** %10, align 8, !dbg !413
  %12 = load i8*, i8** %6, align 8, !dbg !414
  %13 = icmp eq i8* %12, null, !dbg !416
  br i1 %13, label %14, label %15, !dbg !417

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !418
  br label %222, !dbg !418

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %6, align 8, !dbg !419
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5, !dbg !421
  %18 = icmp ne i32 %17, 0, !dbg !421
  br i1 %18, label %21, label %19, !dbg !422

; <label>:19:                                     ; preds = %15
  %20 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !423
  store %struct.scrolling_window* %20, %struct.scrolling_window** %10, align 8, !dbg !424
  br label %21, !dbg !425

; <label>:21:                                     ; preds = %19, %15
  %22 = load i8*, i8** %6, align 8, !dbg !426
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !428
  %24 = icmp ne i32 %23, 0, !dbg !428
  br i1 %24, label %27, label %25, !dbg !429

; <label>:25:                                     ; preds = %21
  %26 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !430
  store %struct.scrolling_window* %26, %struct.scrolling_window** %10, align 8, !dbg !431
  br label %27, !dbg !432

; <label>:27:                                     ; preds = %25, %21
  %28 = load i8*, i8** %6, align 8, !dbg !433
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !435
  %30 = icmp ne i32 %29, 0, !dbg !435
  br i1 %30, label %67, label %31, !dbg !436

; <label>:31:                                     ; preds = %27
  call void @pop_up_win(), !dbg !437
  %32 = load i8*, i8** %9, align 8, !dbg !439
  %33 = call i64 @strlen(i8* %32) #5, !dbg !441
  %34 = sub i64 %33, 1, !dbg !442
  %35 = load i8*, i8** %9, align 8, !dbg !443
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !443
  %37 = load i8, i8* %36, align 1, !dbg !443
  %38 = sext i8 %37 to i32, !dbg !443
  %39 = icmp eq i32 %38, 10, !dbg !444
  br i1 %39, label %40, label %46, !dbg !445

; <label>:40:                                     ; preds = %31
  %41 = load i8*, i8** %9, align 8, !dbg !446
  %42 = call i64 @strlen(i8* %41) #5, !dbg !447
  %43 = sub i64 %42, 1, !dbg !448
  %44 = load i8*, i8** %9, align 8, !dbg !449
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !449
  store i8 0, i8* %45, align 1, !dbg !450
  br label %46, !dbg !451

; <label>:46:                                     ; preds = %40, %31
  %47 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !452
  %48 = load i32, i32* %7, align 4, !dbg !453
  %49 = load i32, i32* %8, align 4, !dbg !454
  %50 = load i8*, i8** %9, align 8, !dbg !455
  %51 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %50), !dbg !456
  %52 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !457
  %53 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %52, i32 11, i32 13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)), !dbg !458
  %54 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !459
  %55 = call i32 @wrefresh(%struct._win_st* %54), !dbg !460
  br label %56, !dbg !461, !llvm.loop !462

; <label>:56:                                     ; preds = %59, %46
  %57 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !463
  %58 = call i32 @wgetch(%struct._win_st* %57), !dbg !465
  store i32 %58, i32* %11, align 4, !dbg !466
  br label %59, !dbg !467

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %11, align 4, !dbg !468
  %61 = icmp ne i32 %60, 113, !dbg !469
  br i1 %61, label %56, label %62, !dbg !470, !llvm.loop !462

; <label>:62:                                     ; preds = %59
  %63 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !472
  %64 = call i32 @delwin(%struct._win_st* %63), !dbg !473
  call void @nmenu(), !dbg !474
  %65 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !475
  call void @redrawscrollwin(%struct.scrolling_window* %65, i32 0), !dbg !476
  %66 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !477
  call void @redrawscrollwin(%struct.scrolling_window* %66, i32 0), !dbg !478
  store i32 0, i32* %5, align 4, !dbg !479
  br label %222, !dbg !479

; <label>:67:                                     ; preds = %27
  %68 = load i8*, i8** %9, align 8, !dbg !480
  %69 = getelementptr inbounds i8, i8* %68, i64 0, !dbg !480
  %70 = load i8, i8* %69, align 1, !dbg !480
  %71 = sext i8 %70 to i32, !dbg !480
  %72 = icmp eq i32 %71, 10, !dbg !482
  br i1 %72, label %73, label %76, !dbg !483

; <label>:73:                                     ; preds = %67
  %74 = load i8*, i8** %9, align 8, !dbg !484
  %75 = getelementptr inbounds i8, i8* %74, i64 0, !dbg !484
  store i8 32, i8* %75, align 1, !dbg !485
  br label %76, !dbg !484

; <label>:76:                                     ; preds = %73, %67
  %77 = load i8*, i8** %9, align 8, !dbg !486
  %78 = call i64 @strlen(i8* %77) #5, !dbg !488
  %79 = sub i64 %78, 1, !dbg !489
  %80 = load i8*, i8** %9, align 8, !dbg !490
  %81 = getelementptr inbounds i8, i8* %80, i64 %79, !dbg !490
  %82 = load i8, i8* %81, align 1, !dbg !490
  %83 = sext i8 %82 to i32, !dbg !490
  %84 = icmp eq i32 %83, 10, !dbg !491
  br i1 %84, label %85, label %91, !dbg !492

; <label>:85:                                     ; preds = %76
  %86 = load i8*, i8** %9, align 8, !dbg !493
  %87 = call i64 @strlen(i8* %86) #5, !dbg !494
  %88 = sub i64 %87, 1, !dbg !495
  %89 = load i8*, i8** %9, align 8, !dbg !496
  %90 = getelementptr inbounds i8, i8* %89, i64 %88, !dbg !496
  store i8 0, i8* %90, align 1, !dbg !497
  br label %91, !dbg !498

; <label>:91:                                     ; preds = %85, %76
  %92 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !499
  %93 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %92, i32 0, i32 0, !dbg !500
  %94 = load %struct._win_st*, %struct._win_st** %93, align 8, !dbg !500
  %95 = load i32, i32* %7, align 4, !dbg !501
  %96 = load i32, i32* %8, align 4, !dbg !502
  %97 = load i8*, i8** %9, align 8, !dbg !503
  %98 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %97), !dbg !504
  %99 = load i32, i32* @sniff_glob, align 4, !dbg !505
  %100 = icmp ne i32 %99, 0, !dbg !505
  br i1 %100, label %101, label %141, !dbg !507

; <label>:101:                                    ; preds = %91
  %102 = load i16, i16* @mvar, align 2, !dbg !508
  %103 = icmp ne i16 %102, 0, !dbg !508
  br i1 %103, label %139, label %104, !dbg !511

; <label>:104:                                    ; preds = %101
  br label %105, !dbg !512, !llvm.loop !513

; <label>:105:                                    ; preds = %104
  %106 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !514
  %107 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %106, i32 0, i32 0, !dbg !517
  %108 = load %struct._win_st*, %struct._win_st** %107, align 8, !dbg !517
  %109 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !518
  %110 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %109, i32 0, i32 2, !dbg !519
  %111 = load i32, i32* %110, align 8, !dbg !519
  %112 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !520
  %113 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %112, i32 0, i32 7, !dbg !521
  %114 = load i32, i32* %113, align 4, !dbg !521
  %115 = add nsw i32 %114, 1, !dbg !522
  %116 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !523
  %117 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %116, i32 0, i32 6, !dbg !524
  %118 = load i32, i32* %117, align 8, !dbg !524
  %119 = add nsw i32 %118, 1, !dbg !525
  %120 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !526
  %121 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %120, i32 0, i32 7, !dbg !527
  %122 = load i32, i32* %121, align 4, !dbg !527
  %123 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !528
  %124 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %123, i32 0, i32 4, !dbg !529
  %125 = load i32, i32* %124, align 8, !dbg !529
  %126 = add nsw i32 %122, %125, !dbg !530
  %127 = sub nsw i32 %126, 2, !dbg !531
  %128 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !532
  %129 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %128, i32 0, i32 5, !dbg !533
  %130 = load i32, i32* %129, align 4, !dbg !533
  %131 = sub nsw i32 %130, 1, !dbg !534
  %132 = call i32 @pnoutrefresh(%struct._win_st* %108, i32 %111, i32 0, i32 %115, i32 %119, i32 %127, i32 %131), !dbg !535
  %133 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !536
  %134 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %133, i32 0, i32 1, !dbg !537
  %135 = load %struct._win_st*, %struct._win_st** %134, align 8, !dbg !537
  %136 = call i32 @wnoutrefresh(%struct._win_st* %135), !dbg !538
  %137 = call i32 @doupdate(), !dbg !540
  br label %138, !dbg !542

; <label>:138:                                    ; preds = %105
  br label %140, !dbg !543

; <label>:139:                                    ; preds = %101
  br label %140

; <label>:140:                                    ; preds = %139, %138
  br label %141, !dbg !545

; <label>:141:                                    ; preds = %140, %91
  %142 = load i32, i32* @sniff_glob, align 4, !dbg !546
  %143 = icmp ne i32 %142, 0, !dbg !546
  br i1 %143, label %179, label %144, !dbg !548

; <label>:144:                                    ; preds = %141
  br label %145, !dbg !549, !llvm.loop !550

; <label>:145:                                    ; preds = %144
  %146 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !551
  %147 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %146, i32 0, i32 0, !dbg !554
  %148 = load %struct._win_st*, %struct._win_st** %147, align 8, !dbg !554
  %149 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !555
  %150 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %149, i32 0, i32 2, !dbg !556
  %151 = load i32, i32* %150, align 8, !dbg !556
  %152 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !557
  %153 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %152, i32 0, i32 7, !dbg !558
  %154 = load i32, i32* %153, align 4, !dbg !558
  %155 = add nsw i32 %154, 1, !dbg !559
  %156 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !560
  %157 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %156, i32 0, i32 6, !dbg !561
  %158 = load i32, i32* %157, align 8, !dbg !561
  %159 = add nsw i32 %158, 1, !dbg !562
  %160 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !563
  %161 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %160, i32 0, i32 7, !dbg !564
  %162 = load i32, i32* %161, align 4, !dbg !564
  %163 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !565
  %164 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %163, i32 0, i32 4, !dbg !566
  %165 = load i32, i32* %164, align 8, !dbg !566
  %166 = add nsw i32 %162, %165, !dbg !567
  %167 = sub nsw i32 %166, 2, !dbg !568
  %168 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !569
  %169 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %168, i32 0, i32 5, !dbg !570
  %170 = load i32, i32* %169, align 4, !dbg !570
  %171 = sub nsw i32 %170, 1, !dbg !571
  %172 = call i32 @pnoutrefresh(%struct._win_st* %148, i32 %151, i32 0, i32 %155, i32 %159, i32 %167, i32 %171), !dbg !572
  %173 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !573
  %174 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %173, i32 0, i32 1, !dbg !574
  %175 = load %struct._win_st*, %struct._win_st** %174, align 8, !dbg !574
  %176 = call i32 @wnoutrefresh(%struct._win_st* %175), !dbg !575
  %177 = call i32 @doupdate(), !dbg !577
  br label %178, !dbg !579

; <label>:178:                                    ; preds = %145
  br label %179, !dbg !580

; <label>:179:                                    ; preds = %178, %141
  %180 = load %struct.scrolling_window*, %struct.scrolling_window** %10, align 8, !dbg !582
  %181 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !584
  %182 = icmp eq %struct.scrolling_window* %180, %181, !dbg !585
  br i1 %182, label %183, label %212, !dbg !586

; <label>:183:                                    ; preds = %179
  %184 = load i32, i32* %7, align 4, !dbg !587
  %185 = load i32, i32* @tmp, align 4, !dbg !590
  %186 = icmp ne i32 %184, %185, !dbg !591
  br i1 %186, label %187, label %210, !dbg !592

; <label>:187:                                    ; preds = %183
  %188 = load i32, i32* @line_s, align 4, !dbg !593
  %189 = load i32, i32* @LINES, align 4, !dbg !596
  %190 = sub nsw i32 %189, 16, !dbg !597
  %191 = icmp sgt i32 %188, %190, !dbg !598
  br i1 %191, label %192, label %209, !dbg !599

; <label>:192:                                    ; preds = %187
  %193 = load i16, i16* @mvar, align 2, !dbg !600
  %194 = icmp ne i16 %193, 0, !dbg !600
  br i1 %194, label %202, label %195, !dbg !603

; <label>:195:                                    ; preds = %192
  %196 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !604
  %197 = load i32, i32* @linm, align 4, !dbg !606
  call void @winscroll(%struct.scrolling_window* %196, i32 %197), !dbg !607
  %198 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !608
  %199 = load i32, i32* %7, align 4, !dbg !609
  %200 = load i32, i32* @tmp, align 4, !dbg !610
  %201 = sub nsw i32 %199, %200, !dbg !611
  call void @winscroll(%struct.scrolling_window* %198, i32 %201), !dbg !612
  store i32 0, i32* @linm, align 4, !dbg !613
  br label %208, !dbg !614

; <label>:202:                                    ; preds = %192
  %203 = load i32, i32* %7, align 4, !dbg !615
  %204 = load i32, i32* @tmp, align 4, !dbg !616
  %205 = sub nsw i32 %203, %204, !dbg !617
  %206 = load i32, i32* @linm, align 4, !dbg !618
  %207 = add nsw i32 %206, %205, !dbg !618
  store i32 %207, i32* @linm, align 4, !dbg !618
  br label %208

; <label>:208:                                    ; preds = %202, %195
  br label %209, !dbg !619

; <label>:209:                                    ; preds = %208, %187
  br label %210, !dbg !620

; <label>:210:                                    ; preds = %209, %183
  %211 = load i32, i32* %7, align 4, !dbg !621
  store i32 %211, i32* @tmp, align 4, !dbg !622
  br label %212, !dbg !623

; <label>:212:                                    ; preds = %210, %179
  %213 = load i32, i32* @line_s, align 4, !dbg !624
  %214 = icmp sge i32 %213, 10000, !dbg !626
  br i1 %214, label %215, label %221, !dbg !627

; <label>:215:                                    ; preds = %212
  %216 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !628
  %217 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %216, i32 0, i32 0, !dbg !630
  %218 = load %struct._win_st*, %struct._win_st** %217, align 8, !dbg !630
  %219 = call i32 @werase(%struct._win_st* %218), !dbg !631
  %220 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !632
  call void @winscroll(%struct.scrolling_window* %220, i32 -10000), !dbg !633
  store i32 0, i32* @line_s, align 4, !dbg !634
  store i32 0, i32* @row_s, align 4, !dbg !635
  br label %221, !dbg !636

; <label>:221:                                    ; preds = %215, %212
  store i32 0, i32* %5, align 4, !dbg !637
  br label %222, !dbg !637

; <label>:222:                                    ; preds = %221, %62, %14
  %223 = load i32, i32* %5, align 4, !dbg !638
  ret i32 %223, !dbg !638
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @pop_up_win() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @mvwprintw(%struct._win_st*, i32, i32, i8*, ...) #3

declare i32 @wrefresh(%struct._win_st*) #3

declare i32 @wgetch(%struct._win_st*) #3

declare i32 @delwin(%struct._win_st*) #3

declare void @nmenu() #3

declare void @redrawscrollwin(%struct.scrolling_window*, i32) #3

declare i32 @pnoutrefresh(%struct._win_st*, i32, i32, i32, i32, i32, i32) #3

declare i32 @wnoutrefresh(%struct._win_st*) #3

declare i32 @doupdate() #3

declare void @winscroll(%struct.scrolling_window*, i32) #3

declare i32 @werase(%struct._win_st*) #3

; Function Attrs: nounwind uwtable
define void @init_scr() #0 !dbg !639 {
  %1 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !642
  %2 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %1, i32 0, i32 0, !dbg !643
  %3 = load %struct._win_st*, %struct._win_st** %2, align 8, !dbg !643
  %4 = call i32 @werase(%struct._win_st* %3), !dbg !644
  %5 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !645
  %6 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %5, i32 0, i32 0, !dbg !646
  %7 = load %struct._win_st*, %struct._win_st** %6, align 8, !dbg !646
  %8 = call i32 @werase(%struct._win_st* %7), !dbg !647
  %9 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !648
  call void @winscroll(%struct.scrolling_window* %9, i32 -10000), !dbg !649
  %10 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !650
  call void @winscroll(%struct.scrolling_window* %10, i32 -300), !dbg !651
  %11 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !652
  call void @redrawscrollwin(%struct.scrolling_window* %11, i32 0), !dbg !653
  %12 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !654
  call void @redrawscrollwin(%struct.scrolling_window* %12, i32 0), !dbg !655
  ret void, !dbg !656
}

; Function Attrs: nounwind uwtable
define i32 @check_pthread() #0 !dbg !657 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !660, metadata !400), !dbg !661
  call void @llvm.dbg.declare(metadata i32* %3, metadata !662, metadata !400), !dbg !663
  call void @llvm.dbg.declare(metadata i32* %4, metadata !664, metadata !400), !dbg !665
  store i32 0, i32* %4, align 4, !dbg !666
  store i32 0, i32* %3, align 4, !dbg !667
  store i32 0, i32* %2, align 4, !dbg !668
  %5 = load i32, i32* @sniff_glob, align 4, !dbg !669
  %6 = icmp ne i32 %5, 0, !dbg !669
  br i1 %6, label %19, label %7, !dbg !671

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @stream_glob, align 4, !dbg !672
  %9 = icmp ne i32 %8, 0, !dbg !672
  br i1 %9, label %19, label %10, !dbg !674

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* @bc_glob, align 4, !dbg !675
  %12 = icmp ne i32 %11, 0, !dbg !675
  br i1 %12, label %19, label %13, !dbg !677

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* @rst_glob, align 4, !dbg !678
  %15 = icmp ne i32 %14, 0, !dbg !678
  br i1 %15, label %19, label %16, !dbg !680

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* @arp_glob, align 4, !dbg !681
  %18 = icmp ne i32 %17, 0, !dbg !683
  br label %19, !dbg !683

; <label>:19:                                     ; preds = %16, %13, %10, %7, %0
  %20 = phi i1 [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %0 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32, !dbg !684
  %22 = icmp eq i32 %21, 1, !dbg !686
  br i1 %22, label %23, label %105, !dbg !687

; <label>:23:                                     ; preds = %19
  store i32 0, i32* @lg, align 4, !dbg !688
  call void @pop_up_win(), !dbg !690
  %24 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !691
  %25 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %24, i32 6, i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)), !dbg !692
  %26 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !693
  %27 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %26, i32 7, i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)), !dbg !694
  %28 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !695
  %29 = call i32 @wmove(%struct._win_st* %28, i32 8, i32 6), !dbg !696
  br label %30, !dbg !697, !llvm.loop !698

; <label>:30:                                     ; preds = %99, %23
  %31 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !699
  %32 = call i32 @wgetch(%struct._win_st* %31), !dbg !701
  store i32 %32, i32* %2, align 4, !dbg !702
  %33 = load i32, i32* %2, align 4, !dbg !703
  %34 = icmp eq i32 %33, 121, !dbg !705
  br i1 %34, label %35, label %83, !dbg !706

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* @stream_glob, align 4, !dbg !707
  %37 = icmp ne i32 %36, 0, !dbg !707
  br i1 %37, label %38, label %43, !dbg !710

; <label>:38:                                     ; preds = %35
  store i32 0, i32* %3, align 4, !dbg !711
  %39 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @thID, i64 0, i64 5), align 8, !dbg !713
  %40 = call i32 @pthread_cancel(i64 %39), !dbg !714
  %41 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @thID, i64 0, i64 5), align 8, !dbg !715
  %42 = call i32 @pthread_join(i64 %41, i8** null), !dbg !716
  br label %43, !dbg !717

; <label>:43:                                     ; preds = %38, %35
  %44 = load i32, i32* @sniff_glob, align 4, !dbg !718
  %45 = icmp ne i32 %44, 0, !dbg !718
  br i1 %45, label %46, label %47, !dbg !720

; <label>:46:                                     ; preds = %43
  store i32 1, i32* %3, align 4, !dbg !721
  br label %47, !dbg !723

; <label>:47:                                     ; preds = %46, %43
  %48 = load i32, i32* @rst_glob, align 4, !dbg !724
  %49 = icmp ne i32 %48, 0, !dbg !724
  br i1 %49, label %50, label %51, !dbg !726

; <label>:50:                                     ; preds = %47
  store i32 2, i32* %3, align 4, !dbg !727
  br label %51, !dbg !729

; <label>:51:                                     ; preds = %50, %47
  %52 = load i32, i32* @arp_glob, align 4, !dbg !730
  %53 = icmp ne i32 %52, 0, !dbg !730
  br i1 %53, label %54, label %55, !dbg !732

; <label>:54:                                     ; preds = %51
  store i32 6, i32* %3, align 4, !dbg !733
  br label %55, !dbg !735

; <label>:55:                                     ; preds = %54, %51
  %56 = load i32, i32* @bc_glob, align 4, !dbg !736
  %57 = icmp ne i32 %56, 0, !dbg !736
  br i1 %57, label %58, label %67, !dbg !738

; <label>:58:                                     ; preds = %55
  store i32 0, i32* @bc_glob, align 4, !dbg !739
  %59 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @pt, i64 0, i64 1), align 8, !dbg !741
  %60 = call i32 @pthread_cancel(i64 %59), !dbg !742
  %61 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @pt, i64 0, i64 1), align 8, !dbg !743
  %62 = call i32 @pthread_join(i64 %61, i8** null), !dbg !744
  %63 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !745
  %64 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %63, i32 0, i32 0, !dbg !746
  %65 = load %struct._win_st*, %struct._win_st** %64, align 8, !dbg !746
  %66 = call i32 @werase(%struct._win_st* %65), !dbg !747
  store i32 0, i32* %1, align 4, !dbg !748
  br label %107, !dbg !748

; <label>:67:                                     ; preds = %55
  store i32 0, i32* @arp_glob, align 4, !dbg !749
  store i32 0, i32* @rst_glob, align 4, !dbg !750
  store i32 0, i32* @sniff_glob, align 4, !dbg !751
  store i32 0, i32* @stream_glob, align 4, !dbg !752
  %68 = load i32, i32* %3, align 4, !dbg !753
  %69 = sext i32 %68 to i64, !dbg !754
  %70 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %69, !dbg !754
  %71 = load i64, i64* %70, align 8, !dbg !754
  %72 = call i32 @pthread_cancel(i64 %71), !dbg !755
  %73 = load i32, i32* %3, align 4, !dbg !756
  %74 = sext i32 %73 to i64, !dbg !757
  %75 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %74, !dbg !757
  %76 = load i64, i64* %75, align 8, !dbg !757
  %77 = call i32 @pthread_join(i64 %76, i8** null), !dbg !758
  %78 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !759
  call void @winscroll(%struct.scrolling_window* %78, i32 -10000), !dbg !760
  %79 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !761
  %80 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %79, i32 0, i32 0, !dbg !762
  %81 = load %struct._win_st*, %struct._win_st** %80, align 8, !dbg !762
  %82 = call i32 @werase(%struct._win_st* %81), !dbg !763
  store i32 0, i32* %4, align 4, !dbg !764
  br label %92, !dbg !765

; <label>:83:                                     ; preds = %30
  %84 = load i32, i32* %2, align 4, !dbg !766
  %85 = icmp eq i32 %84, 110, !dbg !768
  br i1 %85, label %86, label %91, !dbg !769

; <label>:86:                                     ; preds = %83
  %87 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !770
  %88 = call i32 @delwin(%struct._win_st* %87), !dbg !772
  call void @pop_up_win(), !dbg !773
  %89 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !774
  %90 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %89, i32 6, i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)), !dbg !775
  store i32 1, i32* %4, align 4, !dbg !776
  br label %91, !dbg !777

; <label>:91:                                     ; preds = %86, %83
  br label %92

; <label>:92:                                     ; preds = %91, %67
  br label %93, !dbg !778

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %2, align 4, !dbg !779
  %95 = icmp ne i32 %94, 121, !dbg !780
  br i1 %95, label %96, label %99, !dbg !781

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %2, align 4, !dbg !782
  %98 = icmp ne i32 %97, 110, !dbg !784
  br label %99

; <label>:99:                                     ; preds = %96, %93
  %100 = phi i1 [ false, %93 ], [ %98, %96 ]
  br i1 %100, label %30, label %101, !dbg !785, !llvm.loop !698

; <label>:101:                                    ; preds = %99
  %102 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !787
  %103 = call i32 @delwin(%struct._win_st* %102), !dbg !788
  %104 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !789
  call void @redrawscrollwin(%struct.scrolling_window* %104, i32 0), !dbg !790
  br label %105, !dbg !791

; <label>:105:                                    ; preds = %101, %19
  %106 = load i32, i32* %4, align 4, !dbg !792
  store i32 %106, i32* %1, align 4, !dbg !793
  br label %107, !dbg !793

; <label>:107:                                    ; preds = %105, %58
  %108 = load i32, i32* %1, align 4, !dbg !794
  ret i32 %108, !dbg !794
}

declare i32 @wmove(%struct._win_st*, i32, i32) #3

declare i32 @pthread_cancel(i64) #3

declare i32 @pthread_join(i64, i8**) #3

; Function Attrs: nounwind uwtable
define i32 @n_error(i8*, i32) #0 !dbg !795 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !798, metadata !400), !dbg !799
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !800, metadata !400), !dbg !801
  call void @llvm.dbg.declare(metadata i32* %5, metadata !802, metadata !400), !dbg !803
  store i32 0, i32* %5, align 4, !dbg !804
  %6 = load i32, i32* %4, align 4, !dbg !805
  %7 = icmp ne i32 %6, 0, !dbg !805
  br i1 %7, label %8, label %13, !dbg !807

; <label>:8:                                      ; preds = %2
  %9 = call i32 @endwin(), !dbg !808
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !810
  %11 = load i8*, i8** %3, align 8, !dbg !811
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %11), !dbg !812
  call void @exit(i32 -1) #6, !dbg !813
  unreachable, !dbg !813

; <label>:13:                                     ; preds = %2
  call void @pop_up_win(), !dbg !814
  %14 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !816
  %15 = load i8*, i8** %3, align 8, !dbg !817
  %16 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %14, i32 6, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %15), !dbg !818
  %17 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !819
  %18 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %17, i32 12, i32 18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)), !dbg !820
  br label %19, !dbg !821, !llvm.loop !822

; <label>:19:                                     ; preds = %22, %13
  %20 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !823
  %21 = call i32 @wgetch(%struct._win_st* %20), !dbg !825
  store i32 %21, i32* %5, align 4, !dbg !826
  br label %22, !dbg !827

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %5, align 4, !dbg !828
  %24 = icmp ne i32 %23, 113, !dbg !829
  br i1 %24, label %19, label %25, !dbg !830, !llvm.loop !822

; <label>:25:                                     ; preds = %22
  %26 = load %struct._win_st*, %struct._win_st** @pop_up, align 8, !dbg !832
  %27 = call i32 @delwin(%struct._win_st* %26), !dbg !833
  %28 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !834
  %29 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %28, i32 0, i32 0, !dbg !835
  %30 = load %struct._win_st*, %struct._win_st** %29, align 8, !dbg !835
  %31 = call i32 @werase(%struct._win_st* %30), !dbg !836
  %32 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !837
  call void @redrawscrollwin(%struct.scrolling_window* %32, i32 0), !dbg !838
  ret i32 0, !dbg !839
}

declare i32 @endwin() #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @shutdown_thread() #0 !dbg !840 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !841, metadata !400), !dbg !842
  call void @llvm.dbg.declare(metadata i32* %3, metadata !843, metadata !400), !dbg !844
  call void @llvm.dbg.declare(metadata i32* %4, metadata !845, metadata !400), !dbg !846
  store i32 0, i32* %4, align 4, !dbg !847
  store i32 0, i32* %3, align 4, !dbg !848
  store i32 0, i32* %2, align 4, !dbg !849
  %5 = load i32, i32* @sniff_glob, align 4, !dbg !850
  %6 = icmp ne i32 %5, 0, !dbg !850
  br i1 %6, label %19, label %7, !dbg !852

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @stream_glob, align 4, !dbg !853
  %9 = icmp ne i32 %8, 0, !dbg !853
  br i1 %9, label %19, label %10, !dbg !855

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* @bc_glob, align 4, !dbg !856
  %12 = icmp ne i32 %11, 0, !dbg !856
  br i1 %12, label %19, label %13, !dbg !858

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* @rst_glob, align 4, !dbg !859
  %15 = icmp ne i32 %14, 0, !dbg !859
  br i1 %15, label %19, label %16, !dbg !861

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* @arp_glob, align 4, !dbg !862
  %18 = icmp ne i32 %17, 0, !dbg !864
  br label %19, !dbg !864

; <label>:19:                                     ; preds = %16, %13, %10, %7, %0
  %20 = phi i1 [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %0 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32, !dbg !865
  %22 = icmp eq i32 %21, 1, !dbg !867
  br i1 %22, label %23, label %135, !dbg !868

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* @bc_glob, align 4, !dbg !869
  %25 = icmp ne i32 %24, 0, !dbg !869
  br i1 %25, label %26, label %39, !dbg !872

; <label>:26:                                     ; preds = %23
  store i32 0, i32* @bc_glob, align 4, !dbg !873
  %27 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !875
  %28 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %27, i32 0, i32 0, !dbg !876
  %29 = load %struct._win_st*, %struct._win_st** %28, align 8, !dbg !876
  %30 = call i32 @werase(%struct._win_st* %29), !dbg !877
  %31 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !878
  %32 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %31, i32 0, i32 0, !dbg !879
  %33 = load %struct._win_st*, %struct._win_st** %32, align 8, !dbg !879
  %34 = call i32 @werase(%struct._win_st* %33), !dbg !880
  %35 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @pt, i64 0, i64 1), align 8, !dbg !881
  %36 = call i32 @pthread_cancel(i64 %35), !dbg !882
  %37 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @pt, i64 0, i64 1), align 8, !dbg !883
  %38 = call i32 @pthread_join(i64 %37, i8** null), !dbg !884
  store i32 0, i32* %1, align 4, !dbg !885
  br label %136, !dbg !885

; <label>:39:                                     ; preds = %23
  %40 = load i32, i32* @stream_glob, align 4, !dbg !886
  %41 = icmp ne i32 %40, 0, !dbg !886
  br i1 %41, label %42, label %65, !dbg !888

; <label>:42:                                     ; preds = %39
  store i32 3, i32* %3, align 4, !dbg !889
  store i32 0, i32* @stream_glob, align 4, !dbg !891
  %43 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !892
  %44 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %43, i32 0, i32 0, !dbg !893
  %45 = load %struct._win_st*, %struct._win_st** %44, align 8, !dbg !893
  %46 = call i32 @werase(%struct._win_st* %45), !dbg !894
  %47 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !895
  %48 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %47, i32 0, i32 0, !dbg !896
  %49 = load %struct._win_st*, %struct._win_st** %48, align 8, !dbg !896
  %50 = call i32 @werase(%struct._win_st* %49), !dbg !897
  %51 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @thID, i64 0, i64 5), align 8, !dbg !898
  %52 = call i32 @pthread_cancel(i64 %51), !dbg !899
  %53 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @thID, i64 0, i64 5), align 8, !dbg !900
  %54 = call i32 @pthread_join(i64 %53, i8** null), !dbg !901
  %55 = load i32, i32* %3, align 4, !dbg !902
  %56 = sext i32 %55 to i64, !dbg !903
  %57 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %56, !dbg !903
  %58 = load i64, i64* %57, align 8, !dbg !903
  %59 = call i32 @pthread_cancel(i64 %58), !dbg !904
  %60 = load i32, i32* %3, align 4, !dbg !905
  %61 = sext i32 %60 to i64, !dbg !906
  %62 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %61, !dbg !906
  %63 = load i64, i64* %62, align 8, !dbg !906
  %64 = call i32 @pthread_join(i64 %63, i8** null), !dbg !907
  store i32 0, i32* %1, align 4, !dbg !908
  br label %136, !dbg !908

; <label>:65:                                     ; preds = %39
  %66 = load i32, i32* @sniff_glob, align 4, !dbg !909
  %67 = icmp ne i32 %66, 0, !dbg !909
  br i1 %67, label %68, label %88, !dbg !911

; <label>:68:                                     ; preds = %65
  store i32 1, i32* %3, align 4, !dbg !912
  store i32 0, i32* @sniff_glob, align 4, !dbg !914
  %69 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !915
  %70 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %69, i32 0, i32 0, !dbg !916
  %71 = load %struct._win_st*, %struct._win_st** %70, align 8, !dbg !916
  %72 = call i32 @werase(%struct._win_st* %71), !dbg !917
  %73 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !918
  %74 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %73, i32 0, i32 0, !dbg !919
  %75 = load %struct._win_st*, %struct._win_st** %74, align 8, !dbg !919
  %76 = call i32 @werase(%struct._win_st* %75), !dbg !920
  %77 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !921
  call void @redrawscrollwin(%struct.scrolling_window* %77, i32 0), !dbg !922
  %78 = load i32, i32* %3, align 4, !dbg !923
  %79 = sext i32 %78 to i64, !dbg !924
  %80 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %79, !dbg !924
  %81 = load i64, i64* %80, align 8, !dbg !924
  %82 = call i32 @pthread_cancel(i64 %81), !dbg !925
  %83 = load i32, i32* %3, align 4, !dbg !926
  %84 = sext i32 %83 to i64, !dbg !927
  %85 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %84, !dbg !927
  %86 = load i64, i64* %85, align 8, !dbg !927
  %87 = call i32 @pthread_join(i64 %86, i8** null), !dbg !928
  store i32 0, i32* %1, align 4, !dbg !929
  br label %136, !dbg !929

; <label>:88:                                     ; preds = %65
  %89 = load i32, i32* @rst_glob, align 4, !dbg !930
  %90 = icmp ne i32 %89, 0, !dbg !930
  br i1 %90, label %91, label %111, !dbg !932

; <label>:91:                                     ; preds = %88
  store i32 2, i32* %3, align 4, !dbg !933
  store i32 0, i32* @rst_glob, align 4, !dbg !935
  %92 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !936
  %93 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %92, i32 0, i32 0, !dbg !937
  %94 = load %struct._win_st*, %struct._win_st** %93, align 8, !dbg !937
  %95 = call i32 @werase(%struct._win_st* %94), !dbg !938
  %96 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !939
  %97 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %96, i32 0, i32 0, !dbg !940
  %98 = load %struct._win_st*, %struct._win_st** %97, align 8, !dbg !940
  %99 = call i32 @werase(%struct._win_st* %98), !dbg !941
  %100 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !942
  call void @redrawscrollwin(%struct.scrolling_window* %100, i32 0), !dbg !943
  %101 = load i32, i32* %3, align 4, !dbg !944
  %102 = sext i32 %101 to i64, !dbg !945
  %103 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %102, !dbg !945
  %104 = load i64, i64* %103, align 8, !dbg !945
  %105 = call i32 @pthread_cancel(i64 %104), !dbg !946
  %106 = load i32, i32* %3, align 4, !dbg !947
  %107 = sext i32 %106 to i64, !dbg !948
  %108 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %107, !dbg !948
  %109 = load i64, i64* %108, align 8, !dbg !948
  %110 = call i32 @pthread_join(i64 %109, i8** null), !dbg !949
  store i32 0, i32* %1, align 4, !dbg !950
  br label %136, !dbg !950

; <label>:111:                                    ; preds = %88
  %112 = load i32, i32* @arp_glob, align 4, !dbg !951
  %113 = icmp ne i32 %112, 0, !dbg !951
  br i1 %113, label %114, label %134, !dbg !953

; <label>:114:                                    ; preds = %111
  store i32 6, i32* %3, align 4, !dbg !954
  store i32 0, i32* @arp_glob, align 4, !dbg !956
  %115 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !957
  %116 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %115, i32 0, i32 0, !dbg !958
  %117 = load %struct._win_st*, %struct._win_st** %116, align 8, !dbg !958
  %118 = call i32 @werase(%struct._win_st* %117), !dbg !959
  %119 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !960
  %120 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %119, i32 0, i32 0, !dbg !961
  %121 = load %struct._win_st*, %struct._win_st** %120, align 8, !dbg !961
  %122 = call i32 @werase(%struct._win_st* %121), !dbg !962
  %123 = load %struct.scrolling_window*, %struct.scrolling_window** @winfo, align 8, !dbg !963
  call void @redrawscrollwin(%struct.scrolling_window* %123, i32 0), !dbg !964
  %124 = load i32, i32* %3, align 4, !dbg !965
  %125 = sext i32 %124 to i64, !dbg !966
  %126 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %125, !dbg !966
  %127 = load i64, i64* %126, align 8, !dbg !966
  %128 = call i32 @pthread_cancel(i64 %127), !dbg !967
  %129 = load i32, i32* %3, align 4, !dbg !968
  %130 = sext i32 %129 to i64, !dbg !969
  %131 = getelementptr inbounds [6 x i64], [6 x i64]* @thID, i64 0, i64 %130, !dbg !969
  %132 = load i64, i64* %131, align 8, !dbg !969
  %133 = call i32 @pthread_join(i64 %132, i8** null), !dbg !970
  store i32 0, i32* %1, align 4, !dbg !971
  br label %136, !dbg !971

; <label>:134:                                    ; preds = %111
  br label %135, !dbg !972

; <label>:135:                                    ; preds = %134, %19
  store i32 0, i32* %1, align 4, !dbg !973
  br label %136, !dbg !973

; <label>:136:                                    ; preds = %135, %114, %91, %68, %42, %26
  %137 = load i32, i32* %1, align 4, !dbg !974
  ret i32 %137, !dbg !974
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!393, !394}
!llvm.ident = !{!395}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]ncurses--n_comm.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !70, !72, !73, !79, !80, !99, !103, !108, !114, !115, !116, !117, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !148, !149, !152, !156, !157, !158, !159, !205, !206, !207, !221, !222, !223, !224, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !317, !318, !322, !323, !324, !325, !326, !330, !345, !355, !361, !374, !390, !391}
!6 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !7, line: 98, type: !8, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!7 = !DIFile(filename: "ncurses/../include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !10, line: 48, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !12, line: 241, size: 1728, align: 64, elements: !13)
!12 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!13 = !{!14, !16, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !37, !38, !39, !40, !44, !46, !48, !52, !55, !57, !58, !59, !60, !61, !65, !66}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !11, file: !12, line: 242, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !11, file: !12, line: 247, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !11, file: !12, line: 248, baseType: !17, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !11, file: !12, line: 249, baseType: !17, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !11, file: !12, line: 250, baseType: !17, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !11, file: !12, line: 251, baseType: !17, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !11, file: !12, line: 252, baseType: !17, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !11, file: !12, line: 253, baseType: !17, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !11, file: !12, line: 254, baseType: !17, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !11, file: !12, line: 256, baseType: !17, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !11, file: !12, line: 257, baseType: !17, size: 64, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !11, file: !12, line: 258, baseType: !17, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !11, file: !12, line: 260, baseType: !30, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !12, line: 156, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !31, file: !12, line: 157, baseType: !30, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !31, file: !12, line: 158, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !31, file: !12, line: 162, baseType: !15, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !11, file: !12, line: 262, baseType: !35, size: 64, align: 64, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !11, file: !12, line: 264, baseType: !15, size: 32, align: 32, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !11, file: !12, line: 268, baseType: !15, size: 32, align: 32, offset: 928)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !11, file: !12, line: 270, baseType: !41, size: 64, align: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 131, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!43 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !11, file: !12, line: 274, baseType: !45, size: 16, align: 16, offset: 1024)
!45 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !11, file: !12, line: 275, baseType: !47, size: 8, align: 8, offset: 1040)
!47 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !11, file: !12, line: 276, baseType: !49, size: 8, align: 8, offset: 1048)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !11, file: !12, line: 280, baseType: !53, size: 64, align: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !12, line: 150, baseType: null)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !11, file: !12, line: 289, baseType: !56, size: 64, align: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !42, line: 132, baseType: !43)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !11, file: !12, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !11, file: !12, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !11, file: !12, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !11, file: !12, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !11, file: !12, line: 302, baseType: !62, size: 64, align: 64, offset: 1472)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 216, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!64 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !11, file: !12, line: 303, baseType: !15, size: 32, align: 32, offset: 1536)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !11, file: !12, line: 305, baseType: !67, size: 160, align: 8, offset: 1568)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20)
!70 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !7, line: 99, type: !71, isLocal: false, isDefinition: true, variable: i16* @offset)
!71 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!72 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !7, line: 100, type: !15, isLocal: false, isDefinition: true, variable: i32* @npkt)
!73 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !7, line: 101, type: !74, isLocal: false, isDefinition: true, variable: i8** @packet)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !76, line: 33, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !42, line: 30, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!79 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !7, line: 102, type: !74, isLocal: false, isDefinition: true, variable: i8** @buf)
!80 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !7, line: 103, type: !81, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !82, line: 199, size: 192, align: 64, elements: !83)
!82 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!83 = !{!84, !92, !98}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !81, file: !82, line: 200, baseType: !85, size: 128, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !86, line: 30, size: 128, align: 64, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !85, file: !86, line: 32, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !42, line: 139, baseType: !43)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !85, file: !86, line: 33, baseType: !91, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !42, line: 141, baseType: !43)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !81, file: !82, line: 201, baseType: !93, size: 32, align: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !94, line: 85, baseType: !95)
!94 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !76, line: 35, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !42, line: 32, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !81, file: !82, line: 202, baseType: !93, size: 32, align: 32, offset: 160)
!99 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !7, line: 104, type: !100, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !82, line: 118, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !82, line: 118, flags: DIFlagFwdDecl)
!103 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !104, line: 113, type: !105, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!104 = !DIFile(filename: "ncurses/n_nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !82, line: 119, baseType: !107)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !82, line: 119, flags: DIFlagFwdDecl)
!108 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !7, line: 106, type: !109, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !82, line: 208, size: 96, align: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !109, file: !82, line: 209, baseType: !95, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !109, file: !82, line: 210, baseType: !95, size: 32, align: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !109, file: !82, line: 211, baseType: !95, size: 32, align: 32, offset: 64)
!114 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !7, line: 107, type: !93, isLocal: false, isDefinition: true, variable: i32* @maskp)
!115 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !7, line: 108, type: !93, isLocal: false, isDefinition: true, variable: i32* @netp)
!116 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !7, line: 109, type: !15, isLocal: false, isDefinition: true, variable: i32* @datalink)
!117 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !7, line: 110, type: !118, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !94, line: 104, size: 128, align: 64, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !118, file: !94, line: 105, baseType: !95, size: 32, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !118, file: !94, line: 106, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !94, line: 234, size: 64, align: 32, elements: !124)
!124 = !{!125, !128, !129, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !123, file: !94, line: 235, baseType: !126, size: 16, align: 16)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !76, line: 34, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !42, line: 31, baseType: !45)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !123, file: !94, line: 236, baseType: !75, size: 8, align: 8, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !123, file: !94, line: 237, baseType: !75, size: 8, align: 8, offset: 24)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !123, file: !94, line: 238, baseType: !93, size: 32, align: 32, offset: 32)
!131 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !7, line: 111, type: !17, isLocal: false, isDefinition: true, variable: i8** @logname)
!132 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !7, line: 112, type: !17, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!133 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !7, line: 113, type: !126, isLocal: false, isDefinition: true, variable: i16* @tr)
!134 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !7, line: 113, type: !126, isLocal: false, isDefinition: true, variable: i16* @tl)
!135 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !7, line: 114, type: !126, isLocal: false, isDefinition: true, variable: i16* @graph)
!136 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !7, line: 115, type: !126, isLocal: false, isDefinition: true, variable: i16* @cont)
!137 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !7, line: 117, type: !15, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!138 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !7, line: 118, type: !15, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!139 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !7, line: 119, type: !15, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!140 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !7, line: 120, type: !15, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!141 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !7, line: 121, type: !15, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!142 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !7, line: 122, type: !143, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, align: 64, elements: !146)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !145, line: 60, baseType: !64)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!146 = !{!147}
!147 = !DISubrange(count: 2)
!148 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !7, line: 123, type: !15, isLocal: false, isDefinition: true, variable: i32* @lg)
!149 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !7, line: 132, type: !150, isLocal: false, isDefinition: true, variable: i64* @tm)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !151, line: 75, baseType: !89)
!151 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!152 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !7, line: 133, type: !153, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 480, align: 8, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 60)
!156 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !7, line: 136, type: !126, isLocal: false, isDefinition: true, variable: i16* @demonize)
!157 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !7, line: 138, type: !15, isLocal: false, isDefinition: true, variable: i32* @line_s)
!158 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !7, line: 139, type: !15, isLocal: false, isDefinition: true, variable: i32* @row_s)
!159 = distinct !DIGlobalVariable(name: "query", scope: !0, file: !104, line: 87, type: !160, isLocal: false, isDefinition: true, variable: %struct._win_st** @query)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW", file: !162, line: 372, baseType: !163)
!162 = !DIFile(filename: "/usr/include/curses.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_win_st", file: !162, line: 421, size: 768, align: 64, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !175, !176, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !191, !192, !193, !194, !195, !204}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_cury", scope: !163, file: !162, line: 423, baseType: !71, size: 16, align: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_curx", scope: !163, file: !162, line: 423, baseType: !71, size: 16, align: 16, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_maxy", scope: !163, file: !162, line: 426, baseType: !71, size: 16, align: 16, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_maxx", scope: !163, file: !162, line: 426, baseType: !71, size: 16, align: 16, offset: 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_begy", scope: !163, file: !162, line: 427, baseType: !71, size: 16, align: 16, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_begx", scope: !163, file: !162, line: 427, baseType: !71, size: 16, align: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !163, file: !162, line: 429, baseType: !71, size: 16, align: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_attrs", scope: !163, file: !162, line: 432, baseType: !173, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "attr_t", file: !162, line: 374, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "chtype", file: !162, line: 164, baseType: !64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_bkgd", scope: !163, file: !162, line: 433, baseType: !174, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_notimeout", scope: !163, file: !162, line: 436, baseType: !177, size: 8, align: 8, offset: 256)
!177 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_clear", scope: !163, file: !162, line: 437, baseType: !177, size: 8, align: 8, offset: 264)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_leaveok", scope: !163, file: !162, line: 438, baseType: !177, size: 8, align: 8, offset: 272)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_scroll", scope: !163, file: !162, line: 439, baseType: !177, size: 8, align: 8, offset: 280)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_idlok", scope: !163, file: !162, line: 440, baseType: !177, size: 8, align: 8, offset: 288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_idcok", scope: !163, file: !162, line: 441, baseType: !177, size: 8, align: 8, offset: 296)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_immed", scope: !163, file: !162, line: 442, baseType: !177, size: 8, align: 8, offset: 304)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !163, file: !162, line: 443, baseType: !177, size: 8, align: 8, offset: 312)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_use_keypad", scope: !163, file: !162, line: 444, baseType: !177, size: 8, align: 8, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_delay", scope: !163, file: !162, line: 445, baseType: !15, size: 32, align: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_line", scope: !163, file: !162, line: 447, baseType: !188, size: 64, align: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldat", file: !162, line: 419, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_regtop", scope: !163, file: !162, line: 450, baseType: !71, size: 16, align: 16, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_regbottom", scope: !163, file: !162, line: 451, baseType: !71, size: 16, align: 16, offset: 464)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_parx", scope: !163, file: !162, line: 454, baseType: !15, size: 32, align: 32, offset: 480)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_pary", scope: !163, file: !162, line: 455, baseType: !15, size: 32, align: 32, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_parent", scope: !163, file: !162, line: 456, baseType: !160, size: 64, align: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !163, file: !162, line: 464, baseType: !196, size: 96, align: 16, offset: 640)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdat", file: !162, line: 459, size: 96, align: 16, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_y", scope: !196, file: !162, line: 461, baseType: !71, size: 16, align: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_x", scope: !196, file: !162, line: 461, baseType: !71, size: 16, align: 16, offset: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_top", scope: !196, file: !162, line: 462, baseType: !71, size: 16, align: 16, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_left", scope: !196, file: !162, line: 462, baseType: !71, size: 16, align: 16, offset: 48)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_bottom", scope: !196, file: !162, line: 463, baseType: !71, size: 16, align: 16, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_right", scope: !196, file: !162, line: 463, baseType: !71, size: 16, align: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_yoffset", scope: !163, file: !162, line: 466, baseType: !71, size: 16, align: 16, offset: 736)
!205 = distinct !DIGlobalVariable(name: "werror", scope: !0, file: !104, line: 88, type: !160, isLocal: false, isDefinition: true, variable: %struct._win_st** @werror)
!206 = distinct !DIGlobalVariable(name: "help", scope: !0, file: !104, line: 89, type: !160, isLocal: false, isDefinition: true, variable: %struct._win_st** @help)
!207 = distinct !DIGlobalVariable(name: "princ", scope: !0, file: !104, line: 90, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @princ)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "N_SCROLLWIN", file: !104, line: 61, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scrolling_window", file: !104, line: 49, size: 384, align: 64, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !210, file: !104, line: 51, baseType: !160, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !210, file: !104, line: 52, baseType: !160, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "y_scroll", scope: !210, file: !104, line: 53, baseType: !15, size: 32, align: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "y_max", scope: !210, file: !104, line: 54, baseType: !15, size: 32, align: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !210, file: !104, line: 55, baseType: !15, size: 32, align: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !210, file: !104, line: 56, baseType: !15, size: 32, align: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !210, file: !104, line: 57, baseType: !15, size: 32, align: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !210, file: !104, line: 58, baseType: !15, size: 32, align: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !210, file: !104, line: 59, baseType: !17, size: 64, align: 64, offset: 320)
!221 = distinct !DIGlobalVariable(name: "winfo", scope: !0, file: !104, line: 91, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @winfo)
!222 = distinct !DIGlobalVariable(name: "wstream", scope: !0, file: !104, line: 92, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @wstream)
!223 = distinct !DIGlobalVariable(name: "wconn", scope: !0, file: !104, line: 93, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @wconn)
!224 = distinct !DIGlobalVariable(name: "my_nmenu", scope: !0, file: !104, line: 95, type: !225, isLocal: false, isDefinition: true, variable: %struct.tagMENU** @my_nmenu)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "MENU", file: !227, line: 132, baseType: !228)
!227 = !DIFile(filename: "/usr/include/menu.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagMENU", file: !227, line: 90, size: 1600, align: 64, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !279, !280, !281, !282, !283, !284, !285, !286, !291, !292, !293, !294, !295, !296, !298}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !228, file: !227, line: 92, baseType: !71, size: 16, align: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !228, file: !227, line: 93, baseType: !71, size: 16, align: 16, offset: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !228, file: !227, line: 94, baseType: !71, size: 16, align: 16, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !228, file: !227, line: 95, baseType: !71, size: 16, align: 16, offset: 48)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "frows", scope: !228, file: !227, line: 96, baseType: !71, size: 16, align: 16, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "fcols", scope: !228, file: !227, line: 97, baseType: !71, size: 16, align: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arows", scope: !228, file: !227, line: 98, baseType: !71, size: 16, align: 16, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !228, file: !227, line: 99, baseType: !71, size: 16, align: 16, offset: 112)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "desclen", scope: !228, file: !227, line: 100, baseType: !71, size: 16, align: 16, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "marklen", scope: !228, file: !227, line: 101, baseType: !71, size: 16, align: 16, offset: 144)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "itemlen", scope: !228, file: !227, line: 102, baseType: !71, size: 16, align: 16, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "spc_desc", scope: !228, file: !227, line: 103, baseType: !71, size: 16, align: 16, offset: 176)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "spc_cols", scope: !228, file: !227, line: 104, baseType: !71, size: 16, align: 16, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "spc_rows", scope: !228, file: !227, line: 105, baseType: !71, size: 16, align: 16, offset: 208)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !228, file: !227, line: 106, baseType: !17, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pindex", scope: !228, file: !227, line: 107, baseType: !71, size: 16, align: 16, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !228, file: !227, line: 108, baseType: !160, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !228, file: !227, line: 109, baseType: !160, size: 64, align: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "userwin", scope: !228, file: !227, line: 110, baseType: !160, size: 64, align: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "usersub", scope: !228, file: !227, line: 111, baseType: !160, size: 64, align: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !228, file: !227, line: 112, baseType: !251, size: 64, align: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ITEM", file: !227, line: 86, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagITEM", file: !227, line: 69, size: 768, align: 64, elements: !255)
!255 = !{!256, !264, !265, !267, !268, !270, !271, !272, !273, !274, !276, !277, !278}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !227, line: 71, baseType: !257, size: 128, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT", file: !227, line: 67, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 63, size: 128, align: 64, elements: !259)
!259 = !{!260, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !258, file: !227, line: 65, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !227, line: 66, baseType: !45, size: 16, align: 16, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !254, file: !227, line: 72, baseType: !257, size: 128, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "imenu", scope: !254, file: !227, line: 73, baseType: !266, size: 64, align: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !254, file: !227, line: 74, baseType: !4, size: 64, align: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !254, file: !227, line: 75, baseType: !269, size: 32, align: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "Item_Options", file: !227, line: 50, baseType: !15)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !254, file: !227, line: 76, baseType: !71, size: 16, align: 16, offset: 416)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !254, file: !227, line: 77, baseType: !71, size: 16, align: 16, offset: 432)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !254, file: !227, line: 78, baseType: !71, size: 16, align: 16, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !254, file: !227, line: 79, baseType: !177, size: 8, align: 8, offset: 464)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !254, file: !227, line: 81, baseType: !275, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !254, file: !227, line: 82, baseType: !275, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !254, file: !227, line: 83, baseType: !275, size: 64, align: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !254, file: !227, line: 84, baseType: !275, size: 64, align: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nitems", scope: !228, file: !227, line: 113, baseType: !71, size: 16, align: 16, offset: 704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "curitem", scope: !228, file: !227, line: 114, baseType: !252, size: 64, align: 64, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "toprow", scope: !228, file: !227, line: 115, baseType: !71, size: 16, align: 16, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fore", scope: !228, file: !227, line: 116, baseType: !174, size: 64, align: 64, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !228, file: !227, line: 117, baseType: !174, size: 64, align: 64, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "grey", scope: !228, file: !227, line: 118, baseType: !174, size: 64, align: 64, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !228, file: !227, line: 119, baseType: !78, size: 8, align: 8, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "menuinit", scope: !228, file: !227, line: 121, baseType: !287, size: 64, align: 64, offset: 1152)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "Menu_Hook", file: !227, line: 88, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !266}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "menuterm", scope: !228, file: !227, line: 122, baseType: !287, size: 64, align: 64, offset: 1216)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "iteminit", scope: !228, file: !227, line: 123, baseType: !287, size: 64, align: 64, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "itemterm", scope: !228, file: !227, line: 124, baseType: !287, size: 64, align: 64, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !228, file: !227, line: 126, baseType: !4, size: 64, align: 64, offset: 1408)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !228, file: !227, line: 127, baseType: !17, size: 64, align: 64, offset: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !228, file: !227, line: 129, baseType: !297, size: 32, align: 32, offset: 1536)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "Menu_Options", file: !227, line: 49, baseType: !15)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !228, file: !227, line: 130, baseType: !45, size: 16, align: 16, offset: 1568)
!299 = distinct !DIGlobalVariable(name: "curr_item", scope: !0, file: !104, line: 96, type: !252, isLocal: false, isDefinition: true, variable: %struct.tagITEM** @curr_item)
!300 = distinct !DIGlobalVariable(name: "my_nmenu_win", scope: !0, file: !104, line: 97, type: !160, isLocal: false, isDefinition: true, variable: %struct._win_st** @my_nmenu_win)
!301 = distinct !DIGlobalVariable(name: "pop_up", scope: !0, file: !104, line: 98, type: !160, isLocal: false, isDefinition: true, variable: %struct._win_st** @pop_up)
!302 = distinct !DIGlobalVariable(name: "mvar", scope: !0, file: !104, line: 100, type: !126, isLocal: false, isDefinition: true, variable: i16* @mvar)
!303 = distinct !DIGlobalVariable(name: "promisc", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @promisc)
!304 = distinct !DIGlobalVariable(name: "hex", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @hex)
!305 = distinct !DIGlobalVariable(name: "ascii", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @ascii)
!306 = distinct !DIGlobalVariable(name: "ld", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @ld)
!307 = distinct !DIGlobalVariable(name: "f", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @f)
!308 = distinct !DIGlobalVariable(name: "lr", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @lr)
!309 = distinct !DIGlobalVariable(name: "l", scope: !0, file: !104, line: 101, type: !126, isLocal: false, isDefinition: true, variable: i16* @l)
!310 = distinct !DIGlobalVariable(name: "flg", scope: !0, file: !104, line: 102, type: !126, isLocal: false, isDefinition: true, variable: i16* @flg)
!311 = distinct !DIGlobalVariable(name: "linm", scope: !0, file: !104, line: 103, type: !15, isLocal: false, isDefinition: true, variable: i32* @linm)
!312 = distinct !DIGlobalVariable(name: "fileds", scope: !0, file: !104, line: 104, type: !15, isLocal: false, isDefinition: true, variable: i32* @fileds)
!313 = distinct !DIGlobalVariable(name: "dev", scope: !0, file: !104, line: 105, type: !314, isLocal: false, isDefinition: true, variable: [10 x i8]* @dev)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 80, align: 8, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 10)
!317 = distinct !DIGlobalVariable(name: "n_filter", scope: !0, file: !104, line: 106, type: !153, isLocal: false, isDefinition: true, variable: [60 x i8]* @n_filter)
!318 = distinct !DIGlobalVariable(name: "ldfile", scope: !0, file: !104, line: 107, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @ldfile)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 400, align: 8, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 50)
!322 = distinct !DIGlobalVariable(name: "tcpdfile", scope: !0, file: !104, line: 108, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @tcpdfile)
!323 = distinct !DIGlobalVariable(name: "reportl", scope: !0, file: !104, line: 109, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @reportl)
!324 = distinct !DIGlobalVariable(name: "logfile", scope: !0, file: !104, line: 110, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @logfile)
!325 = distinct !DIGlobalVariable(name: "str", scope: !0, file: !104, line: 112, type: !100, isLocal: false, isDefinition: true, variable: %struct.pcap** @str)
!326 = distinct !DIGlobalVariable(name: "thID", scope: !0, file: !104, line: 116, type: !327, isLocal: false, isDefinition: true, variable: [6 x i64]* @thID)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 384, align: 64, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 6)
!330 = distinct !DIGlobalVariable(name: "th_data", scope: !0, file: !104, line: 144, type: !331, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_conn]* @th_data)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 448, align: 64, elements: !50)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_conn", file: !104, line: 118, size: 448, align: 64, elements: !333)
!333 = !{!334, !338, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !332, file: !104, line: 120, baseType: !335, size: 240, align: 8)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 240, align: 8, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 30)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !332, file: !104, line: 121, baseType: !339, size: 64, align: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !76, line: 36, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !42, line: 33, baseType: !64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !332, file: !104, line: 122, baseType: !339, size: 64, align: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !332, file: !104, line: 123, baseType: !126, size: 16, align: 16, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !332, file: !104, line: 124, baseType: !126, size: 16, align: 16, offset: 400)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !332, file: !104, line: 125, baseType: !15, size: 32, align: 32, offset: 416)
!345 = distinct !DIGlobalVariable(name: "th_r_data", scope: !0, file: !104, line: 145, type: !346, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_conn_rst]* @th_r_data)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 448, align: 64, elements: !50)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_conn_rst", file: !104, line: 134, size: 448, align: 64, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !347, file: !104, line: 136, baseType: !335, size: 240, align: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !347, file: !104, line: 137, baseType: !339, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !347, file: !104, line: 138, baseType: !339, size: 64, align: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !347, file: !104, line: 139, baseType: !126, size: 16, align: 16, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !347, file: !104, line: 140, baseType: !126, size: 16, align: 16, offset: 400)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !104, line: 141, baseType: !15, size: 32, align: 32, offset: 416)
!355 = distinct !DIGlobalVariable(name: "th_arp_data", scope: !0, file: !104, line: 146, type: !356, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_arp]* @th_arp_data)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 288, align: 32, elements: !50)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_arp", file: !104, line: 128, size: 288, align: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !357, file: !104, line: 130, baseType: !335, size: 240, align: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !357, file: !104, line: 131, baseType: !15, size: 32, align: 32, offset: 256)
!361 = distinct !DIGlobalVariable(name: "c_inf", scope: !0, file: !104, line: 161, type: !362, isLocal: false, isDefinition: true, variable: [30 x %struct.connections]* @c_inf)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 13440, align: 64, elements: !336)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connections", file: !104, line: 148, size: 448, align: 64, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s_ip", scope: !363, file: !104, line: 150, baseType: !64, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_ip", scope: !363, file: !104, line: 151, baseType: !64, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !363, file: !104, line: 152, baseType: !45, size: 16, align: 16, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !363, file: !104, line: 153, baseType: !45, size: 16, align: 16, offset: 144)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !363, file: !104, line: 154, baseType: !339, size: 64, align: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !363, file: !104, line: 155, baseType: !339, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lin", scope: !363, file: !104, line: 156, baseType: !15, size: 32, align: 32, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !363, file: !104, line: 157, baseType: !15, size: 32, align: 32, offset: 352)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !363, file: !104, line: 158, baseType: !15, size: 32, align: 32, offset: 384)
!374 = distinct !DIGlobalVariable(name: "sf", scope: !0, file: !104, line: 177, type: !375, isLocal: false, isDefinition: true, variable: [30 x %struct.cnn]* @sf)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 105600, align: 64, elements: !336)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cnn", file: !104, line: 164, size: 3520, align: 64, elements: !377)
!377 = !{!378, !382, !383, !384, !385, !386, !387, !388, !389}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !376, file: !104, line: 166, baseType: !379, size: 1600, align: 8)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1600, align: 8, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 200)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sfilter", scope: !376, file: !104, line: 168, baseType: !379, size: 1600, align: 8, offset: 1600)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !376, file: !104, line: 169, baseType: !339, size: 64, align: 64, offset: 3200)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !376, file: !104, line: 170, baseType: !339, size: 64, align: 64, offset: 3264)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !376, file: !104, line: 171, baseType: !339, size: 64, align: 64, offset: 3328)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !376, file: !104, line: 172, baseType: !339, size: 64, align: 64, offset: 3392)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !376, file: !104, line: 173, baseType: !126, size: 16, align: 16, offset: 3456)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !376, file: !104, line: 174, baseType: !126, size: 16, align: 16, offset: 3472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cont", scope: !376, file: !104, line: 175, baseType: !15, size: 32, align: 32, offset: 3488)
!390 = distinct !DIGlobalVariable(name: "nmax", scope: !0, file: !104, line: 180, type: !15, isLocal: false, isDefinition: true, variable: i32* @nmax)
!391 = distinct !DIGlobalVariable(name: "tmp", scope: !0, file: !392, line: 24, type: !15, isLocal: false, isDefinition: true, variable: i32* @tmp)
!392 = !DIFile(filename: "ncurses/n_comm.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!393 = !{i32 2, !"Dwarf Version", i32 4}
!394 = !{i32 2, !"Debug Info Version", i32 3}
!395 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!396 = distinct !DISubprogram(name: "ng_print", scope: !392, file: !392, line: 26, type: !397, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!397 = !DISubroutineType(types: !398)
!398 = !{!15, !17, !15, !15, !17}
!399 = !DILocalVariable(name: "wins", arg: 1, scope: !396, file: !392, line: 26, type: !17)
!400 = !DIExpression()
!401 = !DILocation(line: 26, column: 20, scope: !396)
!402 = !DILocalVariable(name: "y", arg: 2, scope: !396, file: !392, line: 26, type: !15)
!403 = !DILocation(line: 26, column: 30, scope: !396)
!404 = !DILocalVariable(name: "x", arg: 3, scope: !396, file: !392, line: 26, type: !15)
!405 = !DILocation(line: 26, column: 37, scope: !396)
!406 = !DILocalVariable(name: "string", arg: 4, scope: !396, file: !392, line: 26, type: !17)
!407 = !DILocation(line: 26, column: 46, scope: !396)
!408 = !DILocalVariable(name: "w", scope: !396, file: !392, line: 29, type: !208)
!409 = !DILocation(line: 29, column: 17, scope: !396)
!410 = !DILocalVariable(name: "ris", scope: !396, file: !392, line: 30, type: !15)
!411 = !DILocation(line: 30, column: 8, scope: !396)
!412 = !DILocation(line: 32, column: 8, scope: !396)
!413 = !DILocation(line: 33, column: 6, scope: !396)
!414 = !DILocation(line: 35, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !396, file: !392, line: 35, column: 7)
!416 = !DILocation(line: 35, column: 11, scope: !415)
!417 = !DILocation(line: 35, column: 7, scope: !396)
!418 = !DILocation(line: 36, column: 6, scope: !415)
!419 = !DILocation(line: 38, column: 15, scope: !420)
!420 = distinct !DILexicalBlock(scope: !396, file: !392, line: 38, column: 7)
!421 = !DILocation(line: 38, column: 8, scope: !420)
!422 = !DILocation(line: 38, column: 7, scope: !396)
!423 = !DILocation(line: 39, column: 8, scope: !420)
!424 = !DILocation(line: 39, column: 7, scope: !420)
!425 = !DILocation(line: 39, column: 6, scope: !420)
!426 = !DILocation(line: 40, column: 15, scope: !427)
!427 = distinct !DILexicalBlock(scope: !396, file: !392, line: 40, column: 7)
!428 = !DILocation(line: 40, column: 8, scope: !427)
!429 = !DILocation(line: 40, column: 7, scope: !396)
!430 = !DILocation(line: 41, column: 8, scope: !427)
!431 = !DILocation(line: 41, column: 7, scope: !427)
!432 = !DILocation(line: 41, column: 6, scope: !427)
!433 = !DILocation(line: 42, column: 15, scope: !434)
!434 = distinct !DILexicalBlock(scope: !396, file: !392, line: 42, column: 7)
!435 = !DILocation(line: 42, column: 8, scope: !434)
!436 = !DILocation(line: 42, column: 7, scope: !396)
!437 = !DILocation(line: 44, column: 2, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !392, line: 43, column: 6)
!439 = !DILocation(line: 45, column: 19, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !392, line: 45, column: 5)
!441 = !DILocation(line: 45, column: 12, scope: !440)
!442 = !DILocation(line: 45, column: 26, scope: !440)
!443 = !DILocation(line: 45, column: 5, scope: !440)
!444 = !DILocation(line: 45, column: 29, scope: !440)
!445 = !DILocation(line: 45, column: 5, scope: !438)
!446 = !DILocation(line: 46, column: 18, scope: !440)
!447 = !DILocation(line: 46, column: 11, scope: !440)
!448 = !DILocation(line: 46, column: 25, scope: !440)
!449 = !DILocation(line: 46, column: 4, scope: !440)
!450 = !DILocation(line: 46, column: 28, scope: !440)
!451 = !DILocation(line: 46, column: 3, scope: !440)
!452 = !DILocation(line: 47, column: 12, scope: !438)
!453 = !DILocation(line: 47, column: 19, scope: !438)
!454 = !DILocation(line: 47, column: 21, scope: !438)
!455 = !DILocation(line: 47, column: 28, scope: !438)
!456 = !DILocation(line: 47, column: 2, scope: !438)
!457 = !DILocation(line: 48, column: 12, scope: !438)
!458 = !DILocation(line: 48, column: 2, scope: !438)
!459 = !DILocation(line: 49, column: 11, scope: !438)
!460 = !DILocation(line: 49, column: 2, scope: !438)
!461 = !DILocation(line: 50, column: 2, scope: !438)
!462 = distinct !{!462, !461}
!463 = !DILocation(line: 52, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !438, file: !392, line: 51, column: 4)
!465 = !DILocation(line: 52, column: 11, scope: !464)
!466 = !DILocation(line: 52, column: 10, scope: !464)
!467 = !DILocation(line: 53, column: 4, scope: !464)
!468 = !DILocation(line: 54, column: 8, scope: !438)
!469 = !DILocation(line: 54, column: 11, scope: !438)
!470 = !DILocation(line: 53, column: 4, scope: !471)
!471 = !DILexicalBlockFile(scope: !464, file: !392, discriminator: 1)
!472 = !DILocation(line: 55, column: 9, scope: !438)
!473 = !DILocation(line: 55, column: 2, scope: !438)
!474 = !DILocation(line: 56, column: 2, scope: !438)
!475 = !DILocation(line: 57, column: 18, scope: !438)
!476 = !DILocation(line: 57, column: 2, scope: !438)
!477 = !DILocation(line: 58, column: 25, scope: !438)
!478 = !DILocation(line: 58, column: 9, scope: !438)
!479 = !DILocation(line: 59, column: 2, scope: !438)
!480 = !DILocation(line: 62, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !396, file: !392, line: 62, column: 7)
!482 = !DILocation(line: 62, column: 16, scope: !481)
!483 = !DILocation(line: 62, column: 7, scope: !396)
!484 = !DILocation(line: 63, column: 2, scope: !481)
!485 = !DILocation(line: 63, column: 11, scope: !481)
!486 = !DILocation(line: 65, column: 21, scope: !487)
!487 = distinct !DILexicalBlock(scope: !396, file: !392, line: 65, column: 7)
!488 = !DILocation(line: 65, column: 14, scope: !487)
!489 = !DILocation(line: 65, column: 28, scope: !487)
!490 = !DILocation(line: 65, column: 7, scope: !487)
!491 = !DILocation(line: 65, column: 31, scope: !487)
!492 = !DILocation(line: 65, column: 7, scope: !396)
!493 = !DILocation(line: 66, column: 17, scope: !487)
!494 = !DILocation(line: 66, column: 10, scope: !487)
!495 = !DILocation(line: 66, column: 24, scope: !487)
!496 = !DILocation(line: 66, column: 3, scope: !487)
!497 = !DILocation(line: 66, column: 27, scope: !487)
!498 = !DILocation(line: 66, column: 2, scope: !487)
!499 = !DILocation(line: 68, column: 14, scope: !396)
!500 = !DILocation(line: 68, column: 17, scope: !396)
!501 = !DILocation(line: 68, column: 21, scope: !396)
!502 = !DILocation(line: 68, column: 23, scope: !396)
!503 = !DILocation(line: 68, column: 30, scope: !396)
!504 = !DILocation(line: 68, column: 4, scope: !396)
!505 = !DILocation(line: 70, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !396, file: !392, line: 70, column: 7)
!507 = !DILocation(line: 70, column: 7, scope: !396)
!508 = !DILocation(line: 72, column: 6, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !392, line: 72, column: 5)
!510 = distinct !DILexicalBlock(scope: !506, file: !392, line: 71, column: 5)
!511 = !DILocation(line: 72, column: 5, scope: !510)
!512 = !DILocation(line: 73, column: 10, scope: !509)
!513 = distinct !{!513, !512}
!514 = !DILocation(line: 73, column: 28, scope: !515)
!515 = !DILexicalBlockFile(scope: !516, file: !392, discriminator: 1)
!516 = distinct !DILexicalBlock(scope: !509, file: !392, line: 73, column: 13)
!517 = !DILocation(line: 73, column: 31, scope: !515)
!518 = !DILocation(line: 73, column: 36, scope: !515)
!519 = !DILocation(line: 73, column: 39, scope: !515)
!520 = !DILocation(line: 73, column: 52, scope: !515)
!521 = !DILocation(line: 73, column: 55, scope: !515)
!522 = !DILocation(line: 73, column: 57, scope: !515)
!523 = !DILocation(line: 73, column: 62, scope: !515)
!524 = !DILocation(line: 73, column: 65, scope: !515)
!525 = !DILocation(line: 73, column: 67, scope: !515)
!526 = !DILocation(line: 73, column: 72, scope: !515)
!527 = !DILocation(line: 73, column: 75, scope: !515)
!528 = !DILocation(line: 73, column: 79, scope: !515)
!529 = !DILocation(line: 73, column: 82, scope: !515)
!530 = !DILocation(line: 73, column: 77, scope: !515)
!531 = !DILocation(line: 73, column: 88, scope: !515)
!532 = !DILocation(line: 73, column: 93, scope: !515)
!533 = !DILocation(line: 73, column: 96, scope: !515)
!534 = !DILocation(line: 73, column: 101, scope: !515)
!535 = !DILocation(line: 73, column: 15, scope: !515)
!536 = !DILocation(line: 73, column: 121, scope: !515)
!537 = !DILocation(line: 73, column: 124, scope: !515)
!538 = !DILocation(line: 73, column: 108, scope: !539)
!539 = !DILexicalBlockFile(scope: !515, file: !392, discriminator: 3)
!540 = !DILocation(line: 73, column: 130, scope: !541)
!541 = !DILexicalBlockFile(scope: !515, file: !392, discriminator: 4)
!542 = !DILocation(line: 73, column: 142, scope: !515)
!543 = !DILocation(line: 73, column: 142, scope: !544)
!544 = !DILexicalBlockFile(scope: !516, file: !392, discriminator: 2)
!545 = !DILocation(line: 75, column: 2, scope: !510)
!546 = !DILocation(line: 77, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !396, file: !392, line: 77, column: 7)
!548 = !DILocation(line: 77, column: 7, scope: !396)
!549 = !DILocation(line: 78, column: 11, scope: !547)
!550 = distinct !{!550, !549}
!551 = !DILocation(line: 78, column: 29, scope: !552)
!552 = !DILexicalBlockFile(scope: !553, file: !392, discriminator: 1)
!553 = distinct !DILexicalBlock(scope: !547, file: !392, line: 78, column: 14)
!554 = !DILocation(line: 78, column: 32, scope: !552)
!555 = !DILocation(line: 78, column: 37, scope: !552)
!556 = !DILocation(line: 78, column: 40, scope: !552)
!557 = !DILocation(line: 78, column: 53, scope: !552)
!558 = !DILocation(line: 78, column: 56, scope: !552)
!559 = !DILocation(line: 78, column: 58, scope: !552)
!560 = !DILocation(line: 78, column: 63, scope: !552)
!561 = !DILocation(line: 78, column: 66, scope: !552)
!562 = !DILocation(line: 78, column: 68, scope: !552)
!563 = !DILocation(line: 78, column: 73, scope: !552)
!564 = !DILocation(line: 78, column: 76, scope: !552)
!565 = !DILocation(line: 78, column: 80, scope: !552)
!566 = !DILocation(line: 78, column: 83, scope: !552)
!567 = !DILocation(line: 78, column: 78, scope: !552)
!568 = !DILocation(line: 78, column: 89, scope: !552)
!569 = !DILocation(line: 78, column: 94, scope: !552)
!570 = !DILocation(line: 78, column: 97, scope: !552)
!571 = !DILocation(line: 78, column: 102, scope: !552)
!572 = !DILocation(line: 78, column: 16, scope: !552)
!573 = !DILocation(line: 78, column: 122, scope: !552)
!574 = !DILocation(line: 78, column: 125, scope: !552)
!575 = !DILocation(line: 78, column: 109, scope: !576)
!576 = !DILexicalBlockFile(scope: !552, file: !392, discriminator: 3)
!577 = !DILocation(line: 78, column: 131, scope: !578)
!578 = !DILexicalBlockFile(scope: !552, file: !392, discriminator: 4)
!579 = !DILocation(line: 78, column: 143, scope: !552)
!580 = !DILocation(line: 78, column: 143, scope: !581)
!581 = !DILexicalBlockFile(scope: !553, file: !392, discriminator: 2)
!582 = !DILocation(line: 80, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !396, file: !392, line: 80, column: 7)
!584 = !DILocation(line: 80, column: 10, scope: !583)
!585 = !DILocation(line: 80, column: 8, scope: !583)
!586 = !DILocation(line: 80, column: 7, scope: !396)
!587 = !DILocation(line: 82, column: 5, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !392, line: 82, column: 5)
!589 = distinct !DILexicalBlock(scope: !583, file: !392, line: 81, column: 6)
!590 = !DILocation(line: 82, column: 8, scope: !588)
!591 = !DILocation(line: 82, column: 6, scope: !588)
!592 = !DILocation(line: 82, column: 5, scope: !589)
!593 = !DILocation(line: 84, column: 10, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !392, line: 84, column: 10)
!595 = distinct !DILexicalBlock(scope: !588, file: !392, line: 83, column: 4)
!596 = !DILocation(line: 84, column: 17, scope: !594)
!597 = !DILocation(line: 84, column: 22, scope: !594)
!598 = !DILocation(line: 84, column: 16, scope: !594)
!599 = !DILocation(line: 84, column: 10, scope: !595)
!600 = !DILocation(line: 86, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !392, line: 86, column: 8)
!602 = distinct !DILexicalBlock(scope: !594, file: !392, line: 85, column: 9)
!603 = !DILocation(line: 86, column: 8, scope: !602)
!604 = !DILocation(line: 88, column: 20, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !392, line: 87, column: 7)
!606 = !DILocation(line: 88, column: 26, scope: !605)
!607 = !DILocation(line: 88, column: 10, scope: !605)
!608 = !DILocation(line: 89, column: 20, scope: !605)
!609 = !DILocation(line: 89, column: 28, scope: !605)
!610 = !DILocation(line: 89, column: 30, scope: !605)
!611 = !DILocation(line: 89, column: 29, scope: !605)
!612 = !DILocation(line: 89, column: 10, scope: !605)
!613 = !DILocation(line: 90, column: 14, scope: !605)
!614 = !DILocation(line: 91, column: 7, scope: !605)
!615 = !DILocation(line: 92, column: 16, scope: !601)
!616 = !DILocation(line: 92, column: 18, scope: !601)
!617 = !DILocation(line: 92, column: 17, scope: !601)
!618 = !DILocation(line: 92, column: 14, scope: !601)
!619 = !DILocation(line: 93, column: 9, scope: !602)
!620 = !DILocation(line: 94, column: 4, scope: !595)
!621 = !DILocation(line: 95, column: 6, scope: !589)
!622 = !DILocation(line: 95, column: 5, scope: !589)
!623 = !DILocation(line: 96, column: 6, scope: !589)
!624 = !DILocation(line: 98, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !396, file: !392, line: 98, column: 7)
!626 = !DILocation(line: 98, column: 14, scope: !625)
!627 = !DILocation(line: 98, column: 7, scope: !396)
!628 = !DILocation(line: 100, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !392, line: 99, column: 6)
!630 = !DILocation(line: 100, column: 16, scope: !629)
!631 = !DILocation(line: 100, column: 2, scope: !629)
!632 = !DILocation(line: 101, column: 12, scope: !629)
!633 = !DILocation(line: 101, column: 2, scope: !629)
!634 = !DILocation(line: 102, column: 8, scope: !629)
!635 = !DILocation(line: 103, column: 7, scope: !629)
!636 = !DILocation(line: 104, column: 6, scope: !629)
!637 = !DILocation(line: 106, column: 3, scope: !396)
!638 = !DILocation(line: 107, column: 1, scope: !396)
!639 = distinct !DISubprogram(name: "init_scr", scope: !392, file: !392, line: 109, type: !640, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!640 = !DISubroutineType(types: !641)
!641 = !{null}
!642 = !DILocation(line: 111, column: 11, scope: !639)
!643 = !DILocation(line: 111, column: 18, scope: !639)
!644 = !DILocation(line: 111, column: 4, scope: !639)
!645 = !DILocation(line: 112, column: 11, scope: !639)
!646 = !DILocation(line: 112, column: 18, scope: !639)
!647 = !DILocation(line: 112, column: 4, scope: !639)
!648 = !DILocation(line: 114, column: 14, scope: !639)
!649 = !DILocation(line: 114, column: 4, scope: !639)
!650 = !DILocation(line: 115, column: 14, scope: !639)
!651 = !DILocation(line: 115, column: 4, scope: !639)
!652 = !DILocation(line: 117, column: 20, scope: !639)
!653 = !DILocation(line: 117, column: 4, scope: !639)
!654 = !DILocation(line: 118, column: 20, scope: !639)
!655 = !DILocation(line: 118, column: 4, scope: !639)
!656 = !DILocation(line: 119, column: 1, scope: !639)
!657 = distinct !DISubprogram(name: "check_pthread", scope: !392, file: !392, line: 121, type: !658, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!658 = !DISubroutineType(types: !659)
!659 = !{!15}
!660 = !DILocalVariable(name: "ris", scope: !657, file: !392, line: 123, type: !15)
!661 = !DILocation(line: 123, column: 8, scope: !657)
!662 = !DILocalVariable(name: "i", scope: !657, file: !392, line: 123, type: !15)
!663 = !DILocation(line: 123, column: 12, scope: !657)
!664 = !DILocalVariable(name: "ret", scope: !657, file: !392, line: 123, type: !15)
!665 = !DILocation(line: 123, column: 14, scope: !657)
!666 = !DILocation(line: 124, column: 18, scope: !657)
!667 = !DILocation(line: 124, column: 12, scope: !657)
!668 = !DILocation(line: 124, column: 8, scope: !657)
!669 = !DILocation(line: 126, column: 10, scope: !670)
!670 = distinct !DILexicalBlock(scope: !657, file: !392, line: 126, column: 9)
!671 = !DILocation(line: 126, column: 21, scope: !670)
!672 = !DILocation(line: 126, column: 24, scope: !673)
!673 = !DILexicalBlockFile(scope: !670, file: !392, discriminator: 1)
!674 = !DILocation(line: 126, column: 36, scope: !673)
!675 = !DILocation(line: 126, column: 39, scope: !676)
!676 = !DILexicalBlockFile(scope: !670, file: !392, discriminator: 2)
!677 = !DILocation(line: 126, column: 47, scope: !676)
!678 = !DILocation(line: 126, column: 50, scope: !679)
!679 = !DILexicalBlockFile(scope: !670, file: !392, discriminator: 3)
!680 = !DILocation(line: 126, column: 59, scope: !679)
!681 = !DILocation(line: 126, column: 62, scope: !682)
!682 = !DILexicalBlockFile(scope: !670, file: !392, discriminator: 4)
!683 = !DILocation(line: 126, column: 59, scope: !682)
!684 = !DILocation(line: 126, column: 59, scope: !685)
!685 = !DILexicalBlockFile(scope: !670, file: !392, discriminator: 5)
!686 = !DILocation(line: 126, column: 72, scope: !685)
!687 = !DILocation(line: 126, column: 9, scope: !685)
!688 = !DILocation(line: 128, column: 12, scope: !689)
!689 = distinct !DILexicalBlock(scope: !670, file: !392, line: 127, column: 6)
!690 = !DILocation(line: 129, column: 2, scope: !689)
!691 = !DILocation(line: 130, column: 12, scope: !689)
!692 = !DILocation(line: 130, column: 2, scope: !689)
!693 = !DILocation(line: 131, column: 12, scope: !689)
!694 = !DILocation(line: 131, column: 2, scope: !689)
!695 = !DILocation(line: 132, column: 8, scope: !689)
!696 = !DILocation(line: 132, column: 2, scope: !689)
!697 = !DILocation(line: 133, column: 2, scope: !689)
!698 = distinct !{!698, !697}
!699 = !DILocation(line: 135, column: 18, scope: !700)
!700 = distinct !DILexicalBlock(scope: !689, file: !392, line: 134, column: 4)
!701 = !DILocation(line: 135, column: 11, scope: !700)
!702 = !DILocation(line: 135, column: 10, scope: !700)
!703 = !DILocation(line: 136, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !392, line: 136, column: 11)
!705 = !DILocation(line: 136, column: 15, scope: !704)
!706 = !DILocation(line: 136, column: 11, scope: !700)
!707 = !DILocation(line: 138, column: 8, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !392, line: 138, column: 8)
!709 = distinct !DILexicalBlock(scope: !704, file: !392, line: 137, column: 9)
!710 = !DILocation(line: 138, column: 8, scope: !709)
!711 = !DILocation(line: 140, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !392, line: 139, column: 6)
!713 = !DILocation(line: 141, column: 19, scope: !712)
!714 = !DILocation(line: 141, column: 4, scope: !712)
!715 = !DILocation(line: 142, column: 19, scope: !712)
!716 = !DILocation(line: 142, column: 6, scope: !712)
!717 = !DILocation(line: 143, column: 6, scope: !712)
!718 = !DILocation(line: 144, column: 8, scope: !719)
!719 = distinct !DILexicalBlock(scope: !709, file: !392, line: 144, column: 8)
!720 = !DILocation(line: 144, column: 8, scope: !709)
!721 = !DILocation(line: 144, column: 22, scope: !722)
!722 = !DILexicalBlockFile(scope: !719, file: !392, discriminator: 1)
!723 = !DILocation(line: 144, column: 20, scope: !722)
!724 = !DILocation(line: 145, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !709, file: !392, line: 145, column: 8)
!726 = !DILocation(line: 145, column: 8, scope: !709)
!727 = !DILocation(line: 145, column: 20, scope: !728)
!728 = !DILexicalBlockFile(scope: !725, file: !392, discriminator: 1)
!729 = !DILocation(line: 145, column: 18, scope: !728)
!730 = !DILocation(line: 146, column: 8, scope: !731)
!731 = distinct !DILexicalBlock(scope: !709, file: !392, line: 146, column: 8)
!732 = !DILocation(line: 146, column: 8, scope: !709)
!733 = !DILocation(line: 146, column: 20, scope: !734)
!734 = !DILexicalBlockFile(scope: !731, file: !392, discriminator: 1)
!735 = !DILocation(line: 146, column: 18, scope: !734)
!736 = !DILocation(line: 147, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !709, file: !392, line: 147, column: 8)
!738 = !DILocation(line: 147, column: 8, scope: !709)
!739 = !DILocation(line: 149, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !392, line: 148, column: 7)
!741 = !DILocation(line: 150, column: 25, scope: !740)
!742 = !DILocation(line: 150, column: 10, scope: !740)
!743 = !DILocation(line: 151, column: 23, scope: !740)
!744 = !DILocation(line: 151, column: 10, scope: !740)
!745 = !DILocation(line: 152, column: 17, scope: !740)
!746 = !DILocation(line: 152, column: 24, scope: !740)
!747 = !DILocation(line: 152, column: 10, scope: !740)
!748 = !DILocation(line: 153, column: 10, scope: !740)
!749 = !DILocation(line: 155, column: 52, scope: !709)
!750 = !DILocation(line: 155, column: 41, scope: !709)
!751 = !DILocation(line: 155, column: 30, scope: !709)
!752 = !DILocation(line: 155, column: 17, scope: !709)
!753 = !DILocation(line: 156, column: 25, scope: !709)
!754 = !DILocation(line: 156, column: 20, scope: !709)
!755 = !DILocation(line: 156, column: 5, scope: !709)
!756 = !DILocation(line: 157, column: 23, scope: !709)
!757 = !DILocation(line: 157, column: 18, scope: !709)
!758 = !DILocation(line: 157, column: 5, scope: !709)
!759 = !DILocation(line: 158, column: 15, scope: !709)
!760 = !DILocation(line: 158, column: 5, scope: !709)
!761 = !DILocation(line: 159, column: 12, scope: !709)
!762 = !DILocation(line: 159, column: 19, scope: !709)
!763 = !DILocation(line: 159, column: 5, scope: !709)
!764 = !DILocation(line: 160, column: 9, scope: !709)
!765 = !DILocation(line: 161, column: 9, scope: !709)
!766 = !DILocation(line: 163, column: 16, scope: !767)
!767 = distinct !DILexicalBlock(scope: !704, file: !392, line: 163, column: 16)
!768 = !DILocation(line: 163, column: 20, scope: !767)
!769 = !DILocation(line: 163, column: 16, scope: !704)
!770 = !DILocation(line: 165, column: 12, scope: !771)
!771 = distinct !DILexicalBlock(scope: !767, file: !392, line: 164, column: 9)
!772 = !DILocation(line: 165, column: 5, scope: !771)
!773 = !DILocation(line: 166, column: 5, scope: !771)
!774 = !DILocation(line: 167, column: 15, scope: !771)
!775 = !DILocation(line: 167, column: 5, scope: !771)
!776 = !DILocation(line: 168, column: 9, scope: !771)
!777 = !DILocation(line: 169, column: 9, scope: !771)
!778 = !DILocation(line: 170, column: 4, scope: !700)
!779 = !DILocation(line: 171, column: 9, scope: !689)
!780 = !DILocation(line: 171, column: 13, scope: !689)
!781 = !DILocation(line: 171, column: 20, scope: !689)
!782 = !DILocation(line: 171, column: 23, scope: !783)
!783 = !DILexicalBlockFile(scope: !689, file: !392, discriminator: 1)
!784 = !DILocation(line: 171, column: 27, scope: !783)
!785 = !DILocation(line: 170, column: 4, scope: !786)
!786 = !DILexicalBlockFile(scope: !700, file: !392, discriminator: 1)
!787 = !DILocation(line: 172, column: 9, scope: !689)
!788 = !DILocation(line: 172, column: 2, scope: !689)
!789 = !DILocation(line: 173, column: 18, scope: !689)
!790 = !DILocation(line: 173, column: 2, scope: !689)
!791 = !DILocation(line: 174, column: 6, scope: !689)
!792 = !DILocation(line: 175, column: 11, scope: !657)
!793 = !DILocation(line: 175, column: 4, scope: !657)
!794 = !DILocation(line: 176, column: 1, scope: !657)
!795 = distinct !DISubprogram(name: "n_error", scope: !392, file: !392, line: 178, type: !796, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!796 = !DISubroutineType(types: !797)
!797 = !{!15, !17, !15}
!798 = !DILocalVariable(name: "err", arg: 1, scope: !795, file: !392, line: 178, type: !17)
!799 = !DILocation(line: 178, column: 19, scope: !795)
!800 = !DILocalVariable(name: "fatal", arg: 2, scope: !795, file: !392, line: 178, type: !15)
!801 = !DILocation(line: 178, column: 28, scope: !795)
!802 = !DILocalVariable(name: "ris", scope: !795, file: !392, line: 180, type: !15)
!803 = !DILocation(line: 180, column: 8, scope: !795)
!804 = !DILocation(line: 181, column: 8, scope: !795)
!805 = !DILocation(line: 183, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !795, file: !392, line: 183, column: 7)
!807 = !DILocation(line: 183, column: 7, scope: !795)
!808 = !DILocation(line: 185, column: 2, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !392, line: 184, column: 6)
!810 = !DILocation(line: 186, column: 9, scope: !809)
!811 = !DILocation(line: 186, column: 29, scope: !809)
!812 = !DILocation(line: 186, column: 2, scope: !809)
!813 = !DILocation(line: 187, column: 2, scope: !809)
!814 = !DILocation(line: 191, column: 2, scope: !815)
!815 = distinct !DILexicalBlock(scope: !806, file: !392, line: 190, column: 6)
!816 = !DILocation(line: 192, column: 12, scope: !815)
!817 = !DILocation(line: 192, column: 28, scope: !815)
!818 = !DILocation(line: 192, column: 2, scope: !815)
!819 = !DILocation(line: 193, column: 12, scope: !815)
!820 = !DILocation(line: 193, column: 2, scope: !815)
!821 = !DILocation(line: 194, column: 2, scope: !815)
!822 = distinct !{!822, !821}
!823 = !DILocation(line: 196, column: 18, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !392, line: 195, column: 4)
!825 = !DILocation(line: 196, column: 11, scope: !824)
!826 = !DILocation(line: 196, column: 10, scope: !824)
!827 = !DILocation(line: 197, column: 4, scope: !824)
!828 = !DILocation(line: 198, column: 9, scope: !815)
!829 = !DILocation(line: 198, column: 13, scope: !815)
!830 = !DILocation(line: 197, column: 4, scope: !831)
!831 = !DILexicalBlockFile(scope: !824, file: !392, discriminator: 1)
!832 = !DILocation(line: 199, column: 9, scope: !815)
!833 = !DILocation(line: 199, column: 2, scope: !815)
!834 = !DILocation(line: 200, column: 9, scope: !815)
!835 = !DILocation(line: 200, column: 16, scope: !815)
!836 = !DILocation(line: 200, column: 2, scope: !815)
!837 = !DILocation(line: 201, column: 18, scope: !815)
!838 = !DILocation(line: 201, column: 2, scope: !815)
!839 = !DILocation(line: 202, column: 2, scope: !815)
!840 = distinct !DISubprogram(name: "shutdown_thread", scope: !392, file: !392, line: 207, type: !658, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!841 = !DILocalVariable(name: "ris", scope: !840, file: !392, line: 209, type: !15)
!842 = !DILocation(line: 209, column: 8, scope: !840)
!843 = !DILocalVariable(name: "i", scope: !840, file: !392, line: 209, type: !15)
!844 = !DILocation(line: 209, column: 12, scope: !840)
!845 = !DILocalVariable(name: "ret", scope: !840, file: !392, line: 209, type: !15)
!846 = !DILocation(line: 209, column: 14, scope: !840)
!847 = !DILocation(line: 210, column: 18, scope: !840)
!848 = !DILocation(line: 210, column: 12, scope: !840)
!849 = !DILocation(line: 210, column: 8, scope: !840)
!850 = !DILocation(line: 212, column: 10, scope: !851)
!851 = distinct !DILexicalBlock(scope: !840, file: !392, line: 212, column: 9)
!852 = !DILocation(line: 212, column: 21, scope: !851)
!853 = !DILocation(line: 212, column: 24, scope: !854)
!854 = !DILexicalBlockFile(scope: !851, file: !392, discriminator: 1)
!855 = !DILocation(line: 212, column: 36, scope: !854)
!856 = !DILocation(line: 212, column: 39, scope: !857)
!857 = !DILexicalBlockFile(scope: !851, file: !392, discriminator: 2)
!858 = !DILocation(line: 212, column: 47, scope: !857)
!859 = !DILocation(line: 212, column: 50, scope: !860)
!860 = !DILexicalBlockFile(scope: !851, file: !392, discriminator: 3)
!861 = !DILocation(line: 212, column: 59, scope: !860)
!862 = !DILocation(line: 212, column: 62, scope: !863)
!863 = !DILexicalBlockFile(scope: !851, file: !392, discriminator: 4)
!864 = !DILocation(line: 212, column: 59, scope: !863)
!865 = !DILocation(line: 212, column: 59, scope: !866)
!866 = !DILexicalBlockFile(scope: !851, file: !392, discriminator: 5)
!867 = !DILocation(line: 212, column: 72, scope: !866)
!868 = !DILocation(line: 212, column: 9, scope: !866)
!869 = !DILocation(line: 214, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !392, line: 214, column: 5)
!871 = distinct !DILexicalBlock(scope: !851, file: !392, line: 213, column: 6)
!872 = !DILocation(line: 214, column: 5, scope: !871)
!873 = !DILocation(line: 216, column: 14, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !392, line: 215, column: 4)
!875 = !DILocation(line: 217, column: 14, scope: !874)
!876 = !DILocation(line: 217, column: 21, scope: !874)
!877 = !DILocation(line: 217, column: 7, scope: !874)
!878 = !DILocation(line: 218, column: 14, scope: !874)
!879 = !DILocation(line: 218, column: 21, scope: !874)
!880 = !DILocation(line: 218, column: 7, scope: !874)
!881 = !DILocation(line: 219, column: 22, scope: !874)
!882 = !DILocation(line: 219, column: 7, scope: !874)
!883 = !DILocation(line: 220, column: 20, scope: !874)
!884 = !DILocation(line: 220, column: 7, scope: !874)
!885 = !DILocation(line: 221, column: 7, scope: !874)
!886 = !DILocation(line: 223, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !871, file: !392, line: 223, column: 5)
!888 = !DILocation(line: 223, column: 5, scope: !871)
!889 = !DILocation(line: 225, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !392, line: 224, column: 4)
!891 = !DILocation(line: 226, column: 18, scope: !890)
!892 = !DILocation(line: 227, column: 14, scope: !890)
!893 = !DILocation(line: 227, column: 21, scope: !890)
!894 = !DILocation(line: 227, column: 7, scope: !890)
!895 = !DILocation(line: 228, column: 14, scope: !890)
!896 = !DILocation(line: 228, column: 21, scope: !890)
!897 = !DILocation(line: 228, column: 7, scope: !890)
!898 = !DILocation(line: 229, column: 22, scope: !890)
!899 = !DILocation(line: 229, column: 7, scope: !890)
!900 = !DILocation(line: 230, column: 20, scope: !890)
!901 = !DILocation(line: 230, column: 7, scope: !890)
!902 = !DILocation(line: 231, column: 27, scope: !890)
!903 = !DILocation(line: 231, column: 22, scope: !890)
!904 = !DILocation(line: 231, column: 7, scope: !890)
!905 = !DILocation(line: 232, column: 25, scope: !890)
!906 = !DILocation(line: 232, column: 20, scope: !890)
!907 = !DILocation(line: 232, column: 7, scope: !890)
!908 = !DILocation(line: 233, column: 7, scope: !890)
!909 = !DILocation(line: 236, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !871, file: !392, line: 236, column: 5)
!911 = !DILocation(line: 236, column: 5, scope: !871)
!912 = !DILocation(line: 238, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !392, line: 237, column: 4)
!914 = !DILocation(line: 239, column: 17, scope: !913)
!915 = !DILocation(line: 240, column: 14, scope: !913)
!916 = !DILocation(line: 240, column: 21, scope: !913)
!917 = !DILocation(line: 240, column: 7, scope: !913)
!918 = !DILocation(line: 241, column: 14, scope: !913)
!919 = !DILocation(line: 241, column: 21, scope: !913)
!920 = !DILocation(line: 241, column: 7, scope: !913)
!921 = !DILocation(line: 242, column: 23, scope: !913)
!922 = !DILocation(line: 242, column: 7, scope: !913)
!923 = !DILocation(line: 243, column: 27, scope: !913)
!924 = !DILocation(line: 243, column: 22, scope: !913)
!925 = !DILocation(line: 243, column: 7, scope: !913)
!926 = !DILocation(line: 244, column: 25, scope: !913)
!927 = !DILocation(line: 244, column: 20, scope: !913)
!928 = !DILocation(line: 244, column: 7, scope: !913)
!929 = !DILocation(line: 245, column: 7, scope: !913)
!930 = !DILocation(line: 248, column: 5, scope: !931)
!931 = distinct !DILexicalBlock(scope: !871, file: !392, line: 248, column: 5)
!932 = !DILocation(line: 248, column: 5, scope: !871)
!933 = !DILocation(line: 250, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !392, line: 249, column: 4)
!935 = !DILocation(line: 251, column: 15, scope: !934)
!936 = !DILocation(line: 252, column: 14, scope: !934)
!937 = !DILocation(line: 252, column: 21, scope: !934)
!938 = !DILocation(line: 252, column: 7, scope: !934)
!939 = !DILocation(line: 253, column: 14, scope: !934)
!940 = !DILocation(line: 253, column: 21, scope: !934)
!941 = !DILocation(line: 253, column: 7, scope: !934)
!942 = !DILocation(line: 254, column: 23, scope: !934)
!943 = !DILocation(line: 254, column: 7, scope: !934)
!944 = !DILocation(line: 255, column: 27, scope: !934)
!945 = !DILocation(line: 255, column: 22, scope: !934)
!946 = !DILocation(line: 255, column: 7, scope: !934)
!947 = !DILocation(line: 256, column: 25, scope: !934)
!948 = !DILocation(line: 256, column: 20, scope: !934)
!949 = !DILocation(line: 256, column: 7, scope: !934)
!950 = !DILocation(line: 257, column: 7, scope: !934)
!951 = !DILocation(line: 259, column: 5, scope: !952)
!952 = distinct !DILexicalBlock(scope: !871, file: !392, line: 259, column: 5)
!953 = !DILocation(line: 259, column: 5, scope: !871)
!954 = !DILocation(line: 261, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !392, line: 260, column: 4)
!956 = !DILocation(line: 262, column: 15, scope: !955)
!957 = !DILocation(line: 263, column: 14, scope: !955)
!958 = !DILocation(line: 263, column: 21, scope: !955)
!959 = !DILocation(line: 263, column: 7, scope: !955)
!960 = !DILocation(line: 264, column: 14, scope: !955)
!961 = !DILocation(line: 264, column: 21, scope: !955)
!962 = !DILocation(line: 264, column: 7, scope: !955)
!963 = !DILocation(line: 265, column: 23, scope: !955)
!964 = !DILocation(line: 265, column: 7, scope: !955)
!965 = !DILocation(line: 266, column: 27, scope: !955)
!966 = !DILocation(line: 266, column: 22, scope: !955)
!967 = !DILocation(line: 266, column: 7, scope: !955)
!968 = !DILocation(line: 267, column: 25, scope: !955)
!969 = !DILocation(line: 267, column: 20, scope: !955)
!970 = !DILocation(line: 267, column: 7, scope: !955)
!971 = !DILocation(line: 268, column: 7, scope: !955)
!972 = !DILocation(line: 270, column: 6, scope: !871)
!973 = !DILocation(line: 272, column: 4, scope: !840)
!974 = !DILocation(line: 273, column: 1, scope: !840)
