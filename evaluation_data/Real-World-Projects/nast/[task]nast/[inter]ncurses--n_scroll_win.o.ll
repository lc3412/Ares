; ModuleID = './[inter]ncurses--n_scroll_win.o.i'
source_filename = "./[inter]ncurses--n_scroll_win.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16 }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }
%struct.scrolling_window = type { %struct._win_st*, %struct._win_st*, i32, i32, i32, i32, i32, i32, i8* }
%struct.tagMENU = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8*, i16, %struct._win_st*, %struct._win_st*, %struct._win_st*, %struct._win_st*, %struct.tagITEM**, i16, %struct.tagITEM*, i16, i64, i64, i64, i8, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, i8*, i8*, i32, i16 }
%struct.tagITEM = type { %struct.TEXT, %struct.TEXT, %struct.tagMENU*, i8*, i32, i16, i16, i16, i8, %struct.tagITEM*, %struct.tagITEM*, %struct.tagITEM*, %struct.tagITEM* }
%struct.TEXT = type { i8*, i16 }
%struct.thread_conn = type { [30 x i8], i64, i64, i16, i16, i32 }
%struct.thread_conn_rst = type { [30 x i8], i64, i64, i16, i16, i32 }
%struct.thread_arp = type { [30 x i8], i32 }
%struct.connections = type { i64, i64, i16, i16, i64, i64, i32, i32, i32 }
%struct.cnn = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i16, i16, i32 }

@acs_map = external global [0 x i64], align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
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
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@sniff_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@pt = common global [2 x i64] zeroinitializer, align 16
@lg = common global i32 0, align 4
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@demonize = common global i16 0, align 2
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4
@query = common global %struct._win_st* null, align 8
@werror = common global %struct._win_st* null, align 8
@help = common global %struct._win_st* null, align 8
@princ = common global %struct.scrolling_window* null, align 8
@winfo = common global %struct.scrolling_window* null, align 8
@wstream = common global %struct.scrolling_window* null, align 8
@wconn = common global %struct.scrolling_window* null, align 8
@my_nmenu = common global %struct.tagMENU* null, align 8
@curr_item = common global %struct.tagITEM* null, align 8
@my_nmenu_win = common global %struct._win_st* null, align 8
@pop_up = common global %struct._win_st* null, align 8
@mvar = common global i16 0, align 2
@promisc = common global i16 0, align 2
@hex = common global i16 0, align 2
@ascii = common global i16 0, align 2
@ld = common global i16 0, align 2
@f = common global i16 0, align 2
@lr = common global i16 0, align 2
@l = common global i16 0, align 2
@flg = common global i16 0, align 2
@linm = common global i32 0, align 4
@fileds = common global i32 0, align 4
@dev = common global [10 x i8] zeroinitializer, align 1
@n_filter = common global [60 x i8] zeroinitializer, align 16
@ldfile = common global [50 x i8] zeroinitializer, align 16
@tcpdfile = common global [50 x i8] zeroinitializer, align 16
@reportl = common global [50 x i8] zeroinitializer, align 16
@logfile = common global [50 x i8] zeroinitializer, align 16
@str = common global %struct.pcap* null, align 8
@thID = common global [6 x i64] zeroinitializer, align 16
@th_data = common global [1 x %struct.thread_conn] zeroinitializer, align 16
@th_r_data = common global [1 x %struct.thread_conn_rst] zeroinitializer, align 16
@th_arp_data = common global [1 x %struct.thread_arp] zeroinitializer, align 16
@c_inf = common global [30 x %struct.connections] zeroinitializer, align 16
@sf = common global [30 x %struct.cnn] zeroinitializer, align 16
@nmax = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define %struct.scrolling_window* @newscrollwin(i32, i32, i32, i32, i8*, i32) #0 !dbg !394 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scrolling_window*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !398, metadata !399), !dbg !400
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !401, metadata !399), !dbg !402
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !403, metadata !399), !dbg !404
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !405, metadata !399), !dbg !406
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !407, metadata !399), !dbg !408
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !409, metadata !399), !dbg !410
  call void @llvm.dbg.declare(metadata %struct.scrolling_window** %13, metadata !411, metadata !399), !dbg !412
  %14 = call noalias i8* @calloc(i64 1, i64 48) #4, !dbg !413
  %15 = bitcast i8* %14 to %struct.scrolling_window*, !dbg !413
  store %struct.scrolling_window* %15, %struct.scrolling_window** %13, align 8, !dbg !414
  %16 = load i32, i32* %12, align 4, !dbg !415
  %17 = load i32, i32* %8, align 4, !dbg !416
  %18 = sub nsw i32 %17, 2, !dbg !417
  %19 = call %struct._win_st* @newpad(i32 %16, i32 %18), !dbg !418
  %20 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !419
  %21 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %20, i32 0, i32 0, !dbg !420
  store %struct._win_st* %19, %struct._win_st** %21, align 8, !dbg !421
  %22 = load i32, i32* %7, align 4, !dbg !422
  %23 = load i32, i32* %8, align 4, !dbg !423
  %24 = load i32, i32* %9, align 4, !dbg !424
  %25 = load i32, i32* %10, align 4, !dbg !425
  %26 = call %struct._win_st* @newwin(i32 %22, i32 %23, i32 %24, i32 %25), !dbg !426
  %27 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !427
  %28 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %27, i32 0, i32 1, !dbg !428
  store %struct._win_st* %26, %struct._win_st** %28, align 8, !dbg !429
  %29 = load i32, i32* %12, align 4, !dbg !430
  %30 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !431
  %31 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %30, i32 0, i32 3, !dbg !432
  store i32 %29, i32* %31, align 4, !dbg !433
  %32 = load i32, i32* %7, align 4, !dbg !434
  %33 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !435
  %34 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %33, i32 0, i32 4, !dbg !436
  store i32 %32, i32* %34, align 8, !dbg !437
  %35 = load i32, i32* %8, align 4, !dbg !438
  %36 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !439
  %37 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %36, i32 0, i32 5, !dbg !440
  store i32 %35, i32* %37, align 4, !dbg !441
  %38 = load i32, i32* %10, align 4, !dbg !442
  %39 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !443
  %40 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %39, i32 0, i32 6, !dbg !444
  store i32 %38, i32* %40, align 8, !dbg !445
  %41 = load i32, i32* %9, align 4, !dbg !446
  %42 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !447
  %43 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %42, i32 0, i32 7, !dbg !448
  store i32 %41, i32* %43, align 4, !dbg !449
  %44 = load i8*, i8** %11, align 8, !dbg !450
  %45 = call noalias i8* @strdup(i8* %44) #4, !dbg !451
  %46 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !452
  %47 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %46, i32 0, i32 8, !dbg !453
  store i8* %45, i8** %47, align 8, !dbg !454
  %48 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !455
  %49 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %48, i32 0, i32 0, !dbg !456
  %50 = load %struct._win_st*, %struct._win_st** %49, align 8, !dbg !456
  %51 = call i32 @scrollok(%struct._win_st* %50, i1 zeroext true), !dbg !457
  %52 = load i32, i32* %12, align 4, !dbg !458
  %53 = load i32, i32* %7, align 4, !dbg !459
  %54 = sub nsw i32 %53, 2, !dbg !460
  %55 = sub nsw i32 %52, %54, !dbg !461
  %56 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !462
  %57 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %56, i32 0, i32 2, !dbg !463
  store i32 %55, i32* %57, align 8, !dbg !464
  %58 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !465
  %59 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %58, i32 0, i32 0, !dbg !466
  %60 = load %struct._win_st*, %struct._win_st** %59, align 8, !dbg !466
  %61 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !467
  %62 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %61, i32 0, i32 2, !dbg !468
  %63 = load i32, i32* %62, align 8, !dbg !468
  %64 = sub nsw i32 %63, 1, !dbg !469
  %65 = call i32 @wmove(%struct._win_st* %60, i32 %64, i32 0), !dbg !470
  %66 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !471
  %67 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %66, i32 0, i32 1, !dbg !472
  %68 = load %struct._win_st*, %struct._win_st** %67, align 8, !dbg !472
  %69 = icmp ne %struct._win_st* %68, null, !dbg !473
  br i1 %69, label %70, label %75, !dbg !473

; <label>:70:                                     ; preds = %6
  %71 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !474
  %72 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %71, i32 0, i32 1, !dbg !476
  %73 = load %struct._win_st*, %struct._win_st** %72, align 8, !dbg !476
  %74 = getelementptr inbounds %struct._win_st, %struct._win_st* %73, i32 0, i32 7, !dbg !477
  store i64 768, i64* %74, align 8, !dbg !478
  br label %76, !dbg !479

; <label>:75:                                     ; preds = %6
  br label %76, !dbg !480

; <label>:76:                                     ; preds = %75, %70
  %77 = phi i32 [ 0, %70 ], [ -1, %75 ], !dbg !482
  %78 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !484
  %79 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %78, i32 0, i32 1, !dbg !485
  %80 = load %struct._win_st*, %struct._win_st** %79, align 8, !dbg !485
  %81 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 120), align 8, !dbg !486
  %82 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 120), align 8, !dbg !487
  %83 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 113), align 8, !dbg !488
  %84 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 113), align 8, !dbg !489
  %85 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 108), align 8, !dbg !490
  %86 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 107), align 8, !dbg !491
  %87 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 109), align 8, !dbg !492
  %88 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 106), align 8, !dbg !493
  %89 = call i32 @wborder(%struct._win_st* %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88), !dbg !494
  %90 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !495
  %91 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %90, i32 0, i32 1, !dbg !496
  %92 = load %struct._win_st*, %struct._win_st** %91, align 8, !dbg !496
  %93 = call i32 @wmove(%struct._win_st* %92, i32 0, i32 2), !dbg !497
  %94 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !498
  %95 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %94, i32 0, i32 1, !dbg !499
  %96 = load %struct._win_st*, %struct._win_st** %95, align 8, !dbg !499
  %97 = icmp ne %struct._win_st* %96, null, !dbg !500
  br i1 %97, label %98, label %103, !dbg !500

; <label>:98:                                     ; preds = %76
  %99 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !501
  %100 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %99, i32 0, i32 1, !dbg !502
  %101 = load %struct._win_st*, %struct._win_st** %100, align 8, !dbg !502
  %102 = getelementptr inbounds %struct._win_st, %struct._win_st* %101, i32 0, i32 7, !dbg !503
  store i64 512, i64* %102, align 8, !dbg !504
  br label %104, !dbg !505

; <label>:103:                                    ; preds = %76
  br label %104, !dbg !506

; <label>:104:                                    ; preds = %103, %98
  %105 = phi i32 [ 0, %98 ], [ -1, %103 ], !dbg !507
  %106 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !508
  %107 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %106, i32 0, i32 1, !dbg !509
  %108 = load %struct._win_st*, %struct._win_st** %107, align 8, !dbg !509
  %109 = call i32 @waddnstr(%struct._win_st* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 -1), !dbg !508
  %110 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !510
  %111 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %110, i32 0, i32 1, !dbg !511
  %112 = load %struct._win_st*, %struct._win_st** %111, align 8, !dbg !511
  %113 = load i8*, i8** %11, align 8, !dbg !510
  %114 = call i32 @waddnstr(%struct._win_st* %112, i8* %113, i32 -1), !dbg !510
  %115 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !512
  %116 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %115, i32 0, i32 1, !dbg !513
  %117 = load %struct._win_st*, %struct._win_st** %116, align 8, !dbg !513
  %118 = call i32 @waddnstr(%struct._win_st* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 -1), !dbg !512
  %119 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !514
  %120 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %119, i32 0, i32 1, !dbg !515
  %121 = load %struct._win_st*, %struct._win_st** %120, align 8, !dbg !515
  %122 = icmp ne %struct._win_st* %121, null, !dbg !516
  br i1 %122, label %123, label %128, !dbg !516

; <label>:123:                                    ; preds = %104
  %124 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !517
  %125 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %124, i32 0, i32 1, !dbg !518
  %126 = load %struct._win_st*, %struct._win_st** %125, align 8, !dbg !518
  %127 = getelementptr inbounds %struct._win_st, %struct._win_st* %126, i32 0, i32 7, !dbg !519
  store i64 768, i64* %127, align 8, !dbg !520
  br label %129, !dbg !521

; <label>:128:                                    ; preds = %104
  br label %129, !dbg !522

; <label>:129:                                    ; preds = %128, %123
  %130 = phi i32 [ 0, %123 ], [ -1, %128 ], !dbg !523
  %131 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !524
  call void @drawscroller(%struct.scrolling_window* %131), !dbg !525
  %132 = load %struct.scrolling_window*, %struct.scrolling_window** %13, align 8, !dbg !526
  ret %struct.scrolling_window* %132, !dbg !527
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare %struct._win_st* @newpad(i32, i32) #3

declare %struct._win_st* @newwin(i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

declare i32 @scrollok(%struct._win_st*, i1 zeroext) #3

declare i32 @wmove(%struct._win_st*, i32, i32) #3

declare i32 @wborder(%struct._win_st*, i64, i64, i64, i64, i64, i64, i64, i64) #3

declare i32 @waddnstr(%struct._win_st*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @drawscroller(%struct.scrolling_window*) #0 !dbg !528 {
  %2 = alloca %struct.scrolling_window*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.scrolling_window* %0, %struct.scrolling_window** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.scrolling_window** %2, metadata !531, metadata !399), !dbg !532
  call void @llvm.dbg.declare(metadata i16* %3, metadata !533, metadata !399), !dbg !534
  %5 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !535
  %6 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %5, i32 0, i32 4, !dbg !536
  %7 = load i32, i32* %6, align 8, !dbg !536
  %8 = sub nsw i32 %7, 2, !dbg !537
  %9 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !538
  %10 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %9, i32 0, i32 4, !dbg !539
  %11 = load i32, i32* %10, align 8, !dbg !539
  %12 = sub nsw i32 %11, 2, !dbg !540
  %13 = mul nsw i32 %8, %12, !dbg !541
  %14 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !542
  %15 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %14, i32 0, i32 3, !dbg !543
  %16 = load i32, i32* %15, align 4, !dbg !543
  %17 = sdiv i32 %13, %16, !dbg !544
  %18 = trunc i32 %17 to i16, !dbg !545
  store i16 %18, i16* %3, align 2, !dbg !534
  call void @llvm.dbg.declare(metadata i16* %4, metadata !546, metadata !399), !dbg !547
  %19 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !548
  %20 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %19, i32 0, i32 4, !dbg !549
  %21 = load i32, i32* %20, align 8, !dbg !549
  %22 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !550
  %23 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %22, i32 0, i32 2, !dbg !551
  %24 = load i32, i32* %23, align 8, !dbg !551
  %25 = mul nsw i32 %21, %24, !dbg !552
  %26 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !553
  %27 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %26, i32 0, i32 3, !dbg !554
  %28 = load i32, i32* %27, align 4, !dbg !554
  %29 = sdiv i32 %25, %28, !dbg !555
  %30 = trunc i32 %29 to i16, !dbg !548
  store i16 %30, i16* %4, align 2, !dbg !547
  %31 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !556
  %32 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %31, i32 0, i32 1, !dbg !557
  %33 = load %struct._win_st*, %struct._win_st** %32, align 8, !dbg !557
  %34 = call i32 @wattr_on(%struct._win_st* %33, i64 512, i8* null), !dbg !556
  %35 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !558
  %36 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %35, i32 0, i32 1, !dbg !559
  %37 = load %struct._win_st*, %struct._win_st** %36, align 8, !dbg !559
  %38 = call i32 @wattr_off(%struct._win_st* %37, i64 2097152, i8* null), !dbg !558
  %39 = load i16, i16* %3, align 2, !dbg !560
  %40 = sext i16 %39 to i32, !dbg !560
  %41 = icmp slt i32 %40, 1, !dbg !561
  br i1 %41, label %42, label %43, !dbg !562

; <label>:42:                                     ; preds = %1
  br label %46, !dbg !563

; <label>:43:                                     ; preds = %1
  %44 = load i16, i16* %3, align 2, !dbg !565
  %45 = sext i16 %44 to i32, !dbg !565
  br label %46, !dbg !567

; <label>:46:                                     ; preds = %43, %42
  %47 = phi i32 [ 1, %42 ], [ %45, %43 ], !dbg !568
  %48 = trunc i32 %47 to i16, !dbg !568
  store i16 %48, i16* %3, align 2, !dbg !570
  %49 = load i16, i16* %4, align 2, !dbg !571
  %50 = sext i16 %49 to i32, !dbg !571
  %51 = icmp eq i32 %50, 0, !dbg !572
  br i1 %51, label %52, label %53, !dbg !573

; <label>:52:                                     ; preds = %46
  br label %56, !dbg !574

; <label>:53:                                     ; preds = %46
  %54 = load i16, i16* %4, align 2, !dbg !575
  %55 = sext i16 %54 to i32, !dbg !575
  br label %56, !dbg !576

; <label>:56:                                     ; preds = %53, %52
  %57 = phi i32 [ 1, %52 ], [ %55, %53 ], !dbg !577
  %58 = trunc i32 %57 to i16, !dbg !577
  store i16 %58, i16* %4, align 2, !dbg !578
  %59 = load i16, i16* %4, align 2, !dbg !579
  %60 = sext i16 %59 to i32, !dbg !579
  %61 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !580
  %62 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %61, i32 0, i32 4, !dbg !581
  %63 = load i32, i32* %62, align 8, !dbg !581
  %64 = sub nsw i32 %63, 1, !dbg !582
  %65 = load i16, i16* %3, align 2, !dbg !583
  %66 = sext i16 %65 to i32, !dbg !583
  %67 = sub nsw i32 %64, %66, !dbg !584
  %68 = icmp sgt i32 %60, %67, !dbg !585
  br i1 %68, label %69, label %77, !dbg !586

; <label>:69:                                     ; preds = %56
  %70 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !587
  %71 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %70, i32 0, i32 4, !dbg !588
  %72 = load i32, i32* %71, align 8, !dbg !588
  %73 = sub nsw i32 %72, 1, !dbg !589
  %74 = load i16, i16* %3, align 2, !dbg !590
  %75 = sext i16 %74 to i32, !dbg !590
  %76 = sub nsw i32 %73, %75, !dbg !591
  br label %80, !dbg !592

; <label>:77:                                     ; preds = %56
  %78 = load i16, i16* %4, align 2, !dbg !593
  %79 = sext i16 %78 to i32, !dbg !593
  br label %80, !dbg !594

; <label>:80:                                     ; preds = %77, %69
  %81 = phi i32 [ %76, %69 ], [ %79, %77 ], !dbg !595
  %82 = trunc i32 %81 to i16, !dbg !595
  store i16 %82, i16* %4, align 2, !dbg !596
  %83 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !597
  %84 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %83, i32 0, i32 1, !dbg !598
  %85 = load %struct._win_st*, %struct._win_st** %84, align 8, !dbg !598
  %86 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !599
  %87 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %86, i32 0, i32 6, !dbg !600
  %88 = load i32, i32* %87, align 8, !dbg !600
  %89 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !601
  %90 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %89, i32 0, i32 5, !dbg !602
  %91 = load i32, i32* %90, align 4, !dbg !602
  %92 = add nsw i32 %88, %91, !dbg !603
  %93 = sub nsw i32 %92, 1, !dbg !604
  %94 = call i32 @wmove(%struct._win_st* %85, i32 1, i32 %93), !dbg !605
  %95 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !606
  %96 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %95, i32 0, i32 1, !dbg !607
  %97 = load %struct._win_st*, %struct._win_st** %96, align 8, !dbg !607
  %98 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 97), align 8, !dbg !608
  %99 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !609
  %100 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %99, i32 0, i32 4, !dbg !610
  %101 = load i32, i32* %100, align 8, !dbg !610
  %102 = sub nsw i32 %101, 2, !dbg !611
  %103 = call i32 @wvline(%struct._win_st* %97, i64 %98, i32 %102), !dbg !612
  %104 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !613
  %105 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %104, i32 0, i32 1, !dbg !614
  %106 = load %struct._win_st*, %struct._win_st** %105, align 8, !dbg !614
  %107 = call i32 @wattr_on(%struct._win_st* %106, i64 262144, i8* null), !dbg !613
  %108 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !615
  %109 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %108, i32 0, i32 1, !dbg !616
  %110 = load %struct._win_st*, %struct._win_st** %109, align 8, !dbg !616
  %111 = load i16, i16* %4, align 2, !dbg !617
  %112 = sext i16 %111 to i32, !dbg !617
  %113 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !618
  %114 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %113, i32 0, i32 6, !dbg !619
  %115 = load i32, i32* %114, align 8, !dbg !619
  %116 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !620
  %117 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %116, i32 0, i32 5, !dbg !621
  %118 = load i32, i32* %117, align 4, !dbg !621
  %119 = add nsw i32 %115, %118, !dbg !622
  %120 = sub nsw i32 %119, 1, !dbg !623
  %121 = call i32 @wmove(%struct._win_st* %110, i32 %112, i32 %120), !dbg !624
  %122 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !625
  %123 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %122, i32 0, i32 1, !dbg !626
  %124 = load %struct._win_st*, %struct._win_st** %123, align 8, !dbg !626
  %125 = load i16, i16* %3, align 2, !dbg !627
  %126 = sext i16 %125 to i32, !dbg !627
  %127 = call i32 @wvline(%struct._win_st* %124, i64 32, i32 %126), !dbg !628
  %128 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !629
  %129 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %128, i32 0, i32 1, !dbg !630
  %130 = load %struct._win_st*, %struct._win_st** %129, align 8, !dbg !630
  %131 = call i32 @wattr_off(%struct._win_st* %130, i64 262144, i8* null), !dbg !629
  %132 = load %struct.scrolling_window*, %struct.scrolling_window** %2, align 8, !dbg !631
  %133 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %132, i32 0, i32 1, !dbg !632
  %134 = load %struct._win_st*, %struct._win_st** %133, align 8, !dbg !632
  %135 = call i32 @wnoutrefresh(%struct._win_st* %134), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: nounwind uwtable
define void @redrawscrollwin(%struct.scrolling_window*, i32) #0 !dbg !635 {
  %3 = alloca %struct.scrolling_window*, align 8
  %4 = alloca i32, align 4
  store %struct.scrolling_window* %0, %struct.scrolling_window** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.scrolling_window** %3, metadata !638, metadata !399), !dbg !639
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !640, metadata !399), !dbg !641
  %5 = load i32, i32* %4, align 4, !dbg !642
  %6 = icmp ne i32 %5, 0, !dbg !642
  br i1 %6, label %7, label %12, !dbg !644

; <label>:7:                                      ; preds = %2
  %8 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !645
  %9 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %8, i32 0, i32 1, !dbg !646
  %10 = load %struct._win_st*, %struct._win_st** %9, align 8, !dbg !646
  %11 = call i32 @wattr_on(%struct._win_st* %10, i64 2097152, i8* null), !dbg !645
  br label %12, !dbg !645

; <label>:12:                                     ; preds = %7, %2
  %13 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !647
  %14 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %13, i32 0, i32 1, !dbg !648
  %15 = load %struct._win_st*, %struct._win_st** %14, align 8, !dbg !648
  %16 = call i32 @werase(%struct._win_st* %15), !dbg !649
  %17 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !650
  %18 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %17, i32 0, i32 1, !dbg !651
  %19 = load %struct._win_st*, %struct._win_st** %18, align 8, !dbg !651
  %20 = call i32 @wmove(%struct._win_st* %19, i32 0, i32 0), !dbg !652
  %21 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !653
  %22 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %21, i32 0, i32 1, !dbg !654
  %23 = load %struct._win_st*, %struct._win_st** %22, align 8, !dbg !654
  %24 = call i32 @wattr_on(%struct._win_st* %23, i64 768, i8* null), !dbg !653
  %25 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !655
  %26 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %25, i32 0, i32 1, !dbg !656
  %27 = load %struct._win_st*, %struct._win_st** %26, align 8, !dbg !656
  %28 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 120), align 8, !dbg !657
  %29 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 120), align 8, !dbg !658
  %30 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 113), align 8, !dbg !659
  %31 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 113), align 8, !dbg !660
  %32 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 108), align 8, !dbg !661
  %33 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 107), align 8, !dbg !662
  %34 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 109), align 8, !dbg !663
  %35 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 106), align 8, !dbg !664
  %36 = call i32 @wborder(%struct._win_st* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35), !dbg !665
  %37 = load i32, i32* %4, align 4, !dbg !666
  %38 = icmp ne i32 %37, 0, !dbg !666
  br i1 %38, label %39, label %62, !dbg !668

; <label>:39:                                     ; preds = %12
  %40 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !669
  %41 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %40, i32 0, i32 1, !dbg !671
  %42 = load %struct._win_st*, %struct._win_st** %41, align 8, !dbg !671
  %43 = call i32 @wmove(%struct._win_st* %42, i32 0, i32 0), !dbg !672
  %44 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !673
  %45 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %44, i32 0, i32 1, !dbg !674
  %46 = load %struct._win_st*, %struct._win_st** %45, align 8, !dbg !674
  %47 = call i32 @wattr_on(%struct._win_st* %46, i64 1024, i8* null), !dbg !673
  %48 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !675
  %49 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %48, i32 0, i32 1, !dbg !676
  %50 = load %struct._win_st*, %struct._win_st** %49, align 8, !dbg !676
  %51 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 44), align 8, !dbg !677
  %52 = call i32 @waddch(%struct._win_st* %50, i64 %51), !dbg !678
  %53 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !679
  %54 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %53, i32 0, i32 1, !dbg !680
  %55 = load %struct._win_st*, %struct._win_st** %54, align 8, !dbg !680
  %56 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i64 0, i64 43), align 8, !dbg !681
  %57 = call i32 @waddch(%struct._win_st* %55, i64 %56), !dbg !682
  %58 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !683
  %59 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %58, i32 0, i32 1, !dbg !684
  %60 = load %struct._win_st*, %struct._win_st** %59, align 8, !dbg !684
  %61 = call i32 @wattr_off(%struct._win_st* %60, i64 1024, i8* null), !dbg !683
  br label %62, !dbg !685

; <label>:62:                                     ; preds = %39, %12
  %63 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !686
  %64 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %63, i32 0, i32 1, !dbg !687
  %65 = load %struct._win_st*, %struct._win_st** %64, align 8, !dbg !687
  %66 = call i32 @wattr_on(%struct._win_st* %65, i64 512, i8* null), !dbg !686
  %67 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !688
  %68 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %67, i32 0, i32 1, !dbg !689
  %69 = load %struct._win_st*, %struct._win_st** %68, align 8, !dbg !689
  %70 = call i32 @wmove(%struct._win_st* %69, i32 0, i32 2), !dbg !690
  %71 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !691
  %72 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %71, i32 0, i32 1, !dbg !692
  %73 = load %struct._win_st*, %struct._win_st** %72, align 8, !dbg !692
  %74 = call i32 @waddnstr(%struct._win_st* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 -1), !dbg !691
  %75 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !693
  %76 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %75, i32 0, i32 1, !dbg !694
  %77 = load %struct._win_st*, %struct._win_st** %76, align 8, !dbg !694
  %78 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !693
  %79 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %78, i32 0, i32 8, !dbg !694
  %80 = load i8*, i8** %79, align 8, !dbg !694
  %81 = call i32 @waddnstr(%struct._win_st* %77, i8* %80, i32 -1), !dbg !693
  %82 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !695
  %83 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %82, i32 0, i32 1, !dbg !696
  %84 = load %struct._win_st*, %struct._win_st** %83, align 8, !dbg !696
  %85 = call i32 @waddnstr(%struct._win_st* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 -1), !dbg !695
  %86 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !697
  %87 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %86, i32 0, i32 1, !dbg !698
  %88 = load %struct._win_st*, %struct._win_st** %87, align 8, !dbg !698
  %89 = call i32 @wattr_off(%struct._win_st* %88, i64 512, i8* null), !dbg !697
  %90 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !699
  %91 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %90, i32 0, i32 1, !dbg !700
  %92 = load %struct._win_st*, %struct._win_st** %91, align 8, !dbg !700
  %93 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !699
  %94 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %93, i32 0, i32 1, !dbg !700
  %95 = load %struct._win_st*, %struct._win_st** %94, align 8, !dbg !700
  %96 = icmp ne %struct._win_st* %95, null, !dbg !701
  br i1 %96, label %97, label %105, !dbg !701

; <label>:97:                                     ; preds = %62
  %98 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !702
  %99 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %98, i32 0, i32 1, !dbg !704
  %100 = load %struct._win_st*, %struct._win_st** %99, align 8, !dbg !704
  %101 = getelementptr inbounds %struct._win_st, %struct._win_st* %100, i32 0, i32 2, !dbg !705
  %102 = load i16, i16* %101, align 4, !dbg !705
  %103 = sext i16 %102 to i32, !dbg !706
  %104 = add nsw i32 %103, 1, !dbg !707
  br label %106, !dbg !708

; <label>:105:                                    ; preds = %62
  br label %106, !dbg !709

; <label>:106:                                    ; preds = %105, %97
  %107 = phi i32 [ %104, %97 ], [ -1, %105 ], !dbg !711
  %108 = call i32 @wredrawln(%struct._win_st* %92, i32 0, i32 %107), !dbg !713
  %109 = load i32, i32* %4, align 4, !dbg !714
  %110 = icmp ne i32 %109, 0, !dbg !714
  br i1 %110, label %111, label %116, !dbg !716

; <label>:111:                                    ; preds = %106
  %112 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !717
  %113 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %112, i32 0, i32 1, !dbg !718
  %114 = load %struct._win_st*, %struct._win_st** %113, align 8, !dbg !718
  %115 = call i32 @wattr_off(%struct._win_st* %114, i64 2097152, i8* null), !dbg !717
  br label %116, !dbg !717

; <label>:116:                                    ; preds = %111, %106
  %117 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !719
  call void @drawscroller(%struct.scrolling_window* %117), !dbg !720
  br label %118, !dbg !721, !llvm.loop !722

; <label>:118:                                    ; preds = %116
  %119 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !723
  %120 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %119, i32 0, i32 0, !dbg !726
  %121 = load %struct._win_st*, %struct._win_st** %120, align 8, !dbg !726
  %122 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !727
  %123 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %122, i32 0, i32 2, !dbg !728
  %124 = load i32, i32* %123, align 8, !dbg !728
  %125 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !729
  %126 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %125, i32 0, i32 7, !dbg !730
  %127 = load i32, i32* %126, align 4, !dbg !730
  %128 = add nsw i32 %127, 1, !dbg !731
  %129 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !732
  %130 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %129, i32 0, i32 6, !dbg !733
  %131 = load i32, i32* %130, align 8, !dbg !733
  %132 = add nsw i32 %131, 1, !dbg !734
  %133 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !735
  %134 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %133, i32 0, i32 7, !dbg !736
  %135 = load i32, i32* %134, align 4, !dbg !736
  %136 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !737
  %137 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %136, i32 0, i32 4, !dbg !738
  %138 = load i32, i32* %137, align 8, !dbg !738
  %139 = add nsw i32 %135, %138, !dbg !739
  %140 = sub nsw i32 %139, 2, !dbg !740
  %141 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !741
  %142 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %141, i32 0, i32 5, !dbg !742
  %143 = load i32, i32* %142, align 4, !dbg !742
  %144 = sub nsw i32 %143, 1, !dbg !743
  %145 = call i32 @pnoutrefresh(%struct._win_st* %121, i32 %124, i32 0, i32 %128, i32 %132, i32 %140, i32 %144), !dbg !744
  %146 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !745
  %147 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %146, i32 0, i32 1, !dbg !746
  %148 = load %struct._win_st*, %struct._win_st** %147, align 8, !dbg !746
  %149 = call i32 @wnoutrefresh(%struct._win_st* %148), !dbg !747
  %150 = call i32 @doupdate(), !dbg !749
  br label %151, !dbg !751

; <label>:151:                                    ; preds = %118
  ret void, !dbg !752
}

declare i32 @wattr_on(%struct._win_st*, i64, i8*) #3

declare i32 @werase(%struct._win_st*) #3

declare i32 @waddch(%struct._win_st*, i64) #3

declare i32 @wattr_off(%struct._win_st*, i64, i8*) #3

declare i32 @wredrawln(%struct._win_st*, i32, i32) #3

declare i32 @pnoutrefresh(%struct._win_st*, i32, i32, i32, i32, i32, i32) #3

declare i32 @wnoutrefresh(%struct._win_st*) #3

declare i32 @doupdate() #3

declare i32 @wvline(%struct._win_st*, i64, i32) #3

; Function Attrs: nounwind uwtable
define void @winscroll(%struct.scrolling_window*, i32) #0 !dbg !753 {
  %3 = alloca %struct.scrolling_window*, align 8
  %4 = alloca i32, align 4
  store %struct.scrolling_window* %0, %struct.scrolling_window** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.scrolling_window** %3, metadata !754, metadata !399), !dbg !755
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !756, metadata !399), !dbg !757
  %5 = load i32, i32* %4, align 4, !dbg !758
  %6 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !759
  %7 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %6, i32 0, i32 2, !dbg !760
  %8 = load i32, i32* %7, align 8, !dbg !761
  %9 = add nsw i32 %8, %5, !dbg !761
  store i32 %9, i32* %7, align 8, !dbg !761
  %10 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !762
  %11 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %10, i32 0, i32 2, !dbg !763
  %12 = load i32, i32* %11, align 8, !dbg !763
  %13 = icmp slt i32 %12, 0, !dbg !764
  br i1 %13, label %14, label %15, !dbg !765

; <label>:14:                                     ; preds = %2
  br label %19, !dbg !766

; <label>:15:                                     ; preds = %2
  %16 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !768
  %17 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %16, i32 0, i32 2, !dbg !770
  %18 = load i32, i32* %17, align 8, !dbg !770
  br label %19, !dbg !771

; <label>:19:                                     ; preds = %15, %14
  %20 = phi i32 [ 0, %14 ], [ %18, %15 ], !dbg !772
  %21 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !774
  %22 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %21, i32 0, i32 2, !dbg !775
  store i32 %20, i32* %22, align 8, !dbg !776
  %23 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !777
  %24 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %23, i32 0, i32 2, !dbg !778
  %25 = load i32, i32* %24, align 8, !dbg !778
  %26 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !779
  %27 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %26, i32 0, i32 3, !dbg !780
  %28 = load i32, i32* %27, align 4, !dbg !780
  %29 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !781
  %30 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %29, i32 0, i32 4, !dbg !782
  %31 = load i32, i32* %30, align 8, !dbg !782
  %32 = sub nsw i32 %31, 2, !dbg !783
  %33 = sub nsw i32 %28, %32, !dbg !784
  %34 = icmp sgt i32 %25, %33, !dbg !785
  br i1 %34, label %35, label %44, !dbg !786

; <label>:35:                                     ; preds = %19
  %36 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !787
  %37 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %36, i32 0, i32 3, !dbg !788
  %38 = load i32, i32* %37, align 4, !dbg !788
  %39 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !789
  %40 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %39, i32 0, i32 4, !dbg !790
  %41 = load i32, i32* %40, align 8, !dbg !790
  %42 = sub nsw i32 %41, 2, !dbg !791
  %43 = sub nsw i32 %38, %42, !dbg !792
  br label %48, !dbg !793

; <label>:44:                                     ; preds = %19
  %45 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !794
  %46 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %45, i32 0, i32 2, !dbg !795
  %47 = load i32, i32* %46, align 8, !dbg !795
  br label %48, !dbg !796

; <label>:48:                                     ; preds = %44, %35
  %49 = phi i32 [ %43, %35 ], [ %47, %44 ], !dbg !797
  %50 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !798
  %51 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %50, i32 0, i32 2, !dbg !799
  store i32 %49, i32* %51, align 8, !dbg !800
  %52 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !801
  call void @drawscroller(%struct.scrolling_window* %52), !dbg !802
  br label %53, !dbg !803, !llvm.loop !804

; <label>:53:                                     ; preds = %48
  %54 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !805
  %55 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %54, i32 0, i32 0, !dbg !808
  %56 = load %struct._win_st*, %struct._win_st** %55, align 8, !dbg !808
  %57 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !809
  %58 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %57, i32 0, i32 2, !dbg !810
  %59 = load i32, i32* %58, align 8, !dbg !810
  %60 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !811
  %61 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %60, i32 0, i32 7, !dbg !812
  %62 = load i32, i32* %61, align 4, !dbg !812
  %63 = add nsw i32 %62, 1, !dbg !813
  %64 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !814
  %65 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %64, i32 0, i32 6, !dbg !815
  %66 = load i32, i32* %65, align 8, !dbg !815
  %67 = add nsw i32 %66, 1, !dbg !816
  %68 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !817
  %69 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %68, i32 0, i32 7, !dbg !818
  %70 = load i32, i32* %69, align 4, !dbg !818
  %71 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !819
  %72 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %71, i32 0, i32 4, !dbg !820
  %73 = load i32, i32* %72, align 8, !dbg !820
  %74 = add nsw i32 %70, %73, !dbg !821
  %75 = sub nsw i32 %74, 2, !dbg !822
  %76 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !823
  %77 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %76, i32 0, i32 5, !dbg !824
  %78 = load i32, i32* %77, align 4, !dbg !824
  %79 = sub nsw i32 %78, 1, !dbg !825
  %80 = call i32 @pnoutrefresh(%struct._win_st* %56, i32 %59, i32 0, i32 %63, i32 %67, i32 %75, i32 %79), !dbg !826
  %81 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !827
  %82 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %81, i32 0, i32 1, !dbg !828
  %83 = load %struct._win_st*, %struct._win_st** %82, align 8, !dbg !828
  %84 = call i32 @wnoutrefresh(%struct._win_st* %83), !dbg !829
  %85 = call i32 @doupdate(), !dbg !831
  br label %86, !dbg !833

; <label>:86:                                     ; preds = %53
  ret void, !dbg !834
}

; Function Attrs: nounwind uwtable
define void @delscrollwin(%struct.scrolling_window**) #0 !dbg !835 {
  %2 = alloca %struct.scrolling_window**, align 8
  store %struct.scrolling_window** %0, %struct.scrolling_window*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.scrolling_window*** %2, metadata !839, metadata !399), !dbg !840
  %3 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !841
  %4 = load %struct.scrolling_window*, %struct.scrolling_window** %3, align 8, !dbg !842
  %5 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %4, i32 0, i32 0, !dbg !843
  %6 = load %struct._win_st*, %struct._win_st** %5, align 8, !dbg !843
  %7 = call i32 @werase(%struct._win_st* %6), !dbg !844
  br label %8, !dbg !845, !llvm.loop !846

; <label>:8:                                      ; preds = %1
  %9 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !847
  %10 = load %struct.scrolling_window*, %struct.scrolling_window** %9, align 8, !dbg !850
  %11 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %10, i32 0, i32 0, !dbg !851
  %12 = load %struct._win_st*, %struct._win_st** %11, align 8, !dbg !851
  %13 = call i32 @wrefresh(%struct._win_st* %12), !dbg !852
  br label %14, !dbg !853

; <label>:14:                                     ; preds = %8
  %15 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !854
  %16 = load %struct.scrolling_window*, %struct.scrolling_window** %15, align 8, !dbg !855
  %17 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %16, i32 0, i32 1, !dbg !856
  %18 = load %struct._win_st*, %struct._win_st** %17, align 8, !dbg !856
  %19 = call i32 @werase(%struct._win_st* %18), !dbg !857
  br label %20, !dbg !858, !llvm.loop !859

; <label>:20:                                     ; preds = %14
  %21 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !860
  %22 = load %struct.scrolling_window*, %struct.scrolling_window** %21, align 8, !dbg !863
  %23 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %22, i32 0, i32 1, !dbg !864
  %24 = load %struct._win_st*, %struct._win_st** %23, align 8, !dbg !864
  %25 = call i32 @wrefresh(%struct._win_st* %24), !dbg !865
  br label %26, !dbg !866

; <label>:26:                                     ; preds = %20
  %27 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !867
  %28 = load %struct.scrolling_window*, %struct.scrolling_window** %27, align 8, !dbg !868
  %29 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %28, i32 0, i32 0, !dbg !869
  %30 = load %struct._win_st*, %struct._win_st** %29, align 8, !dbg !869
  %31 = call i32 @delwin(%struct._win_st* %30), !dbg !870
  %32 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !871
  %33 = load %struct.scrolling_window*, %struct.scrolling_window** %32, align 8, !dbg !872
  %34 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %33, i32 0, i32 1, !dbg !873
  %35 = load %struct._win_st*, %struct._win_st** %34, align 8, !dbg !873
  %36 = call i32 @delwin(%struct._win_st* %35), !dbg !874
  br label %37, !dbg !875, !llvm.loop !876

; <label>:37:                                     ; preds = %26
  %38 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !877
  %39 = load %struct.scrolling_window*, %struct.scrolling_window** %38, align 8, !dbg !881
  %40 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %39, i32 0, i32 8, !dbg !882
  %41 = load i8*, i8** %40, align 8, !dbg !882
  %42 = icmp ne i8* %41, null, !dbg !883
  br i1 %42, label %43, label %51, !dbg !883

; <label>:43:                                     ; preds = %37
  %44 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !884
  %45 = load %struct.scrolling_window*, %struct.scrolling_window** %44, align 8, !dbg !887
  %46 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %45, i32 0, i32 8, !dbg !888
  %47 = load i8*, i8** %46, align 8, !dbg !888
  call void @free(i8* %47) #4, !dbg !889
  %48 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !890
  %49 = load %struct.scrolling_window*, %struct.scrolling_window** %48, align 8, !dbg !891
  %50 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %49, i32 0, i32 8, !dbg !892
  store i8* null, i8** %50, align 8, !dbg !893
  br label %51, !dbg !894

; <label>:51:                                     ; preds = %43, %37
  br label %52, !dbg !895

; <label>:52:                                     ; preds = %51
  br label %53, !dbg !897, !llvm.loop !898

; <label>:53:                                     ; preds = %52
  %54 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !899
  %55 = load %struct.scrolling_window*, %struct.scrolling_window** %54, align 8, !dbg !903
  %56 = icmp ne %struct.scrolling_window* %55, null, !dbg !903
  br i1 %56, label %57, label %62, !dbg !903

; <label>:57:                                     ; preds = %53
  %58 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !904
  %59 = load %struct.scrolling_window*, %struct.scrolling_window** %58, align 8, !dbg !907
  %60 = bitcast %struct.scrolling_window* %59 to i8*, !dbg !907
  call void @free(i8* %60) #4, !dbg !908
  %61 = load %struct.scrolling_window**, %struct.scrolling_window*** %2, align 8, !dbg !909
  store %struct.scrolling_window* null, %struct.scrolling_window** %61, align 8, !dbg !910
  br label %62, !dbg !911

; <label>:62:                                     ; preds = %57, %53
  br label %63, !dbg !912

; <label>:63:                                     ; preds = %62
  ret void, !dbg !914
}

declare i32 @wrefresh(%struct._win_st*) #3

declare i32 @delwin(%struct._win_st*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!391, !392}
!llvm.ident = !{!393}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !10)
!1 = !DIFile(filename: "[inter]ncurses--n_scroll_win.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4, !6, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "attr_t", file: !5, line: 374, baseType: !6)
!5 = !DIFile(filename: "/usr/include/curses.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "chtype", file: !5, line: 164, baseType: !7)
!7 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !{!11, !74, !76, !77, !82, !83, !102, !106, !111, !117, !118, !119, !120, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !151, !152, !155, !159, !160, !161, !162, !205, !206, !207, !221, !222, !223, !224, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !317, !318, !322, !323, !324, !325, !326, !330, !345, !355, !361, !374, !390}
!11 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !12, line: 98, type: !13, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!12 = !DIFile(filename: "ncurses/../include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 48, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !17, line: 241, size: 1728, align: 64, elements: !18)
!17 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!18 = !{!19, !21, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !42, !43, !44, !45, !49, !51, !53, !57, !60, !62, !63, !64, !65, !66, !69, !70}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !16, file: !17, line: 242, baseType: !20, size: 32, align: 32)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !16, file: !17, line: 247, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !16, file: !17, line: 248, baseType: !22, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !16, file: !17, line: 249, baseType: !22, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !16, file: !17, line: 250, baseType: !22, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !16, file: !17, line: 251, baseType: !22, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !16, file: !17, line: 252, baseType: !22, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !16, file: !17, line: 253, baseType: !22, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !16, file: !17, line: 254, baseType: !22, size: 64, align: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !16, file: !17, line: 256, baseType: !22, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !16, file: !17, line: 257, baseType: !22, size: 64, align: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !16, file: !17, line: 258, baseType: !22, size: 64, align: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !16, file: !17, line: 260, baseType: !35, size: 64, align: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !17, line: 156, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !36, file: !17, line: 157, baseType: !35, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !36, file: !17, line: 158, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !36, file: !17, line: 162, baseType: !20, size: 32, align: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !16, file: !17, line: 262, baseType: !40, size: 64, align: 64, offset: 832)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !16, file: !17, line: 264, baseType: !20, size: 32, align: 32, offset: 896)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !16, file: !17, line: 268, baseType: !20, size: 32, align: 32, offset: 928)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !16, file: !17, line: 270, baseType: !46, size: 64, align: 64, offset: 960)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 131, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!48 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !16, file: !17, line: 274, baseType: !50, size: 16, align: 16, offset: 1024)
!50 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !16, file: !17, line: 275, baseType: !52, size: 8, align: 8, offset: 1040)
!52 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !16, file: !17, line: 276, baseType: !54, size: 8, align: 8, offset: 1048)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, align: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !16, file: !17, line: 280, baseType: !58, size: 64, align: 64, offset: 1088)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !17, line: 150, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !16, file: !17, line: 289, baseType: !61, size: 64, align: 64, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 132, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !16, file: !17, line: 297, baseType: !9, size: 64, align: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !16, file: !17, line: 298, baseType: !9, size: 64, align: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !16, file: !17, line: 299, baseType: !9, size: 64, align: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !16, file: !17, line: 300, baseType: !9, size: 64, align: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !16, file: !17, line: 302, baseType: !67, size: 64, align: 64, offset: 1472)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 216, baseType: !7)
!68 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !16, file: !17, line: 303, baseType: !20, size: 32, align: 32, offset: 1536)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !16, file: !17, line: 305, baseType: !71, size: 160, align: 8, offset: 1568)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 20)
!74 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !12, line: 99, type: !75, isLocal: false, isDefinition: true, variable: i16* @offset)
!75 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!76 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !12, line: 100, type: !20, isLocal: false, isDefinition: true, variable: i32* @npkt)
!77 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !12, line: 101, type: !78, isLocal: false, isDefinition: true, variable: i8** @packet)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !80, line: 33, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !47, line: 30, baseType: !8)
!82 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !12, line: 102, type: !78, isLocal: false, isDefinition: true, variable: i8** @buf)
!83 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !12, line: 103, type: !84, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !85, line: 199, size: 192, align: 64, elements: !86)
!85 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!86 = !{!87, !95, !101}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !84, file: !85, line: 200, baseType: !88, size: 128, align: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !89, line: 30, size: 128, align: 64, elements: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !88, file: !89, line: 32, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !47, line: 139, baseType: !48)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !88, file: !89, line: 33, baseType: !94, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !47, line: 141, baseType: !48)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !84, file: !85, line: 201, baseType: !96, size: 32, align: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !97, line: 85, baseType: !98)
!97 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !80, line: 35, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !47, line: 32, baseType: !100)
!100 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !84, file: !85, line: 202, baseType: !96, size: 32, align: 32, offset: 160)
!102 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !12, line: 104, type: !103, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !85, line: 118, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !85, line: 118, flags: DIFlagFwdDecl)
!106 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !107, line: 113, type: !108, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!107 = !DIFile(filename: "ncurses/n_nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !85, line: 119, baseType: !110)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !85, line: 119, flags: DIFlagFwdDecl)
!111 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !12, line: 106, type: !112, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !85, line: 208, size: 96, align: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !112, file: !85, line: 209, baseType: !98, size: 32, align: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !112, file: !85, line: 210, baseType: !98, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !112, file: !85, line: 211, baseType: !98, size: 32, align: 32, offset: 64)
!117 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !12, line: 107, type: !96, isLocal: false, isDefinition: true, variable: i32* @maskp)
!118 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !12, line: 108, type: !96, isLocal: false, isDefinition: true, variable: i32* @netp)
!119 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !12, line: 109, type: !20, isLocal: false, isDefinition: true, variable: i32* @datalink)
!120 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !12, line: 110, type: !121, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !97, line: 104, size: 128, align: 64, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !121, file: !97, line: 105, baseType: !98, size: 32, align: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !121, file: !97, line: 106, baseType: !125, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !97, line: 234, size: 64, align: 32, elements: !127)
!127 = !{!128, !131, !132, !133}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !126, file: !97, line: 235, baseType: !129, size: 16, align: 16)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !80, line: 34, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !47, line: 31, baseType: !50)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !126, file: !97, line: 236, baseType: !79, size: 8, align: 8, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !126, file: !97, line: 237, baseType: !79, size: 8, align: 8, offset: 24)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !126, file: !97, line: 238, baseType: !96, size: 32, align: 32, offset: 32)
!134 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !12, line: 111, type: !22, isLocal: false, isDefinition: true, variable: i8** @logname)
!135 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !12, line: 112, type: !22, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!136 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !12, line: 113, type: !129, isLocal: false, isDefinition: true, variable: i16* @tr)
!137 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !12, line: 113, type: !129, isLocal: false, isDefinition: true, variable: i16* @tl)
!138 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !12, line: 114, type: !129, isLocal: false, isDefinition: true, variable: i16* @graph)
!139 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !12, line: 115, type: !129, isLocal: false, isDefinition: true, variable: i16* @cont)
!140 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !12, line: 117, type: !20, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!141 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !12, line: 118, type: !20, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!142 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !12, line: 119, type: !20, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!143 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !12, line: 120, type: !20, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!144 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !12, line: 121, type: !20, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!145 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !12, line: 122, type: !146, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, align: 64, elements: !149)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !148, line: 60, baseType: !7)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!149 = !{!150}
!150 = !DISubrange(count: 2)
!151 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !12, line: 123, type: !20, isLocal: false, isDefinition: true, variable: i32* @lg)
!152 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !12, line: 132, type: !153, isLocal: false, isDefinition: true, variable: i64* @tm)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !154, line: 75, baseType: !92)
!154 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!155 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !12, line: 133, type: !156, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 480, align: 8, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 60)
!159 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !12, line: 136, type: !129, isLocal: false, isDefinition: true, variable: i16* @demonize)
!160 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !12, line: 138, type: !20, isLocal: false, isDefinition: true, variable: i32* @line_s)
!161 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !12, line: 139, type: !20, isLocal: false, isDefinition: true, variable: i32* @row_s)
!162 = distinct !DIGlobalVariable(name: "query", scope: !0, file: !107, line: 87, type: !163, isLocal: false, isDefinition: true, variable: %struct._win_st** @query)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW", file: !5, line: 372, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_win_st", file: !5, line: 421, size: 768, align: 64, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !191, !192, !193, !194, !195, !204}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_cury", scope: !165, file: !5, line: 423, baseType: !75, size: 16, align: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_curx", scope: !165, file: !5, line: 423, baseType: !75, size: 16, align: 16, offset: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_maxy", scope: !165, file: !5, line: 426, baseType: !75, size: 16, align: 16, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_maxx", scope: !165, file: !5, line: 426, baseType: !75, size: 16, align: 16, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_begy", scope: !165, file: !5, line: 427, baseType: !75, size: 16, align: 16, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_begx", scope: !165, file: !5, line: 427, baseType: !75, size: 16, align: 16, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !165, file: !5, line: 429, baseType: !75, size: 16, align: 16, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_attrs", scope: !165, file: !5, line: 432, baseType: !4, size: 64, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_bkgd", scope: !165, file: !5, line: 433, baseType: !6, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_notimeout", scope: !165, file: !5, line: 436, baseType: !177, size: 8, align: 8, offset: 256)
!177 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_clear", scope: !165, file: !5, line: 437, baseType: !177, size: 8, align: 8, offset: 264)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_leaveok", scope: !165, file: !5, line: 438, baseType: !177, size: 8, align: 8, offset: 272)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_scroll", scope: !165, file: !5, line: 439, baseType: !177, size: 8, align: 8, offset: 280)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_idlok", scope: !165, file: !5, line: 440, baseType: !177, size: 8, align: 8, offset: 288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_idcok", scope: !165, file: !5, line: 441, baseType: !177, size: 8, align: 8, offset: 296)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_immed", scope: !165, file: !5, line: 442, baseType: !177, size: 8, align: 8, offset: 304)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !165, file: !5, line: 443, baseType: !177, size: 8, align: 8, offset: 312)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_use_keypad", scope: !165, file: !5, line: 444, baseType: !177, size: 8, align: 8, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_delay", scope: !165, file: !5, line: 445, baseType: !20, size: 32, align: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_line", scope: !165, file: !5, line: 447, baseType: !188, size: 64, align: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldat", file: !5, line: 419, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_regtop", scope: !165, file: !5, line: 450, baseType: !75, size: 16, align: 16, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_regbottom", scope: !165, file: !5, line: 451, baseType: !75, size: 16, align: 16, offset: 464)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_parx", scope: !165, file: !5, line: 454, baseType: !20, size: 32, align: 32, offset: 480)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_pary", scope: !165, file: !5, line: 455, baseType: !20, size: 32, align: 32, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_parent", scope: !165, file: !5, line: 456, baseType: !163, size: 64, align: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !165, file: !5, line: 464, baseType: !196, size: 96, align: 16, offset: 640)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdat", file: !5, line: 459, size: 96, align: 16, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_y", scope: !196, file: !5, line: 461, baseType: !75, size: 16, align: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_x", scope: !196, file: !5, line: 461, baseType: !75, size: 16, align: 16, offset: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_top", scope: !196, file: !5, line: 462, baseType: !75, size: 16, align: 16, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_left", scope: !196, file: !5, line: 462, baseType: !75, size: 16, align: 16, offset: 48)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_bottom", scope: !196, file: !5, line: 463, baseType: !75, size: 16, align: 16, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_right", scope: !196, file: !5, line: 463, baseType: !75, size: 16, align: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_yoffset", scope: !165, file: !5, line: 466, baseType: !75, size: 16, align: 16, offset: 736)
!205 = distinct !DIGlobalVariable(name: "werror", scope: !0, file: !107, line: 88, type: !163, isLocal: false, isDefinition: true, variable: %struct._win_st** @werror)
!206 = distinct !DIGlobalVariable(name: "help", scope: !0, file: !107, line: 89, type: !163, isLocal: false, isDefinition: true, variable: %struct._win_st** @help)
!207 = distinct !DIGlobalVariable(name: "princ", scope: !0, file: !107, line: 90, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @princ)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "N_SCROLLWIN", file: !107, line: 61, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scrolling_window", file: !107, line: 49, size: 384, align: 64, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !210, file: !107, line: 51, baseType: !163, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !210, file: !107, line: 52, baseType: !163, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "y_scroll", scope: !210, file: !107, line: 53, baseType: !20, size: 32, align: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "y_max", scope: !210, file: !107, line: 54, baseType: !20, size: 32, align: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !210, file: !107, line: 55, baseType: !20, size: 32, align: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !210, file: !107, line: 56, baseType: !20, size: 32, align: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !210, file: !107, line: 57, baseType: !20, size: 32, align: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !210, file: !107, line: 58, baseType: !20, size: 32, align: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !210, file: !107, line: 59, baseType: !22, size: 64, align: 64, offset: 320)
!221 = distinct !DIGlobalVariable(name: "winfo", scope: !0, file: !107, line: 91, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @winfo)
!222 = distinct !DIGlobalVariable(name: "wstream", scope: !0, file: !107, line: 92, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @wstream)
!223 = distinct !DIGlobalVariable(name: "wconn", scope: !0, file: !107, line: 93, type: !208, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @wconn)
!224 = distinct !DIGlobalVariable(name: "my_nmenu", scope: !0, file: !107, line: 95, type: !225, isLocal: false, isDefinition: true, variable: %struct.tagMENU** @my_nmenu)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "MENU", file: !227, line: 132, baseType: !228)
!227 = !DIFile(filename: "/usr/include/menu.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagMENU", file: !227, line: 90, size: 1600, align: 64, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !279, !280, !281, !282, !283, !284, !285, !286, !291, !292, !293, !294, !295, !296, !298}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !228, file: !227, line: 92, baseType: !75, size: 16, align: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !228, file: !227, line: 93, baseType: !75, size: 16, align: 16, offset: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !228, file: !227, line: 94, baseType: !75, size: 16, align: 16, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !228, file: !227, line: 95, baseType: !75, size: 16, align: 16, offset: 48)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "frows", scope: !228, file: !227, line: 96, baseType: !75, size: 16, align: 16, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "fcols", scope: !228, file: !227, line: 97, baseType: !75, size: 16, align: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arows", scope: !228, file: !227, line: 98, baseType: !75, size: 16, align: 16, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !228, file: !227, line: 99, baseType: !75, size: 16, align: 16, offset: 112)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "desclen", scope: !228, file: !227, line: 100, baseType: !75, size: 16, align: 16, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "marklen", scope: !228, file: !227, line: 101, baseType: !75, size: 16, align: 16, offset: 144)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "itemlen", scope: !228, file: !227, line: 102, baseType: !75, size: 16, align: 16, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "spc_desc", scope: !228, file: !227, line: 103, baseType: !75, size: 16, align: 16, offset: 176)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "spc_cols", scope: !228, file: !227, line: 104, baseType: !75, size: 16, align: 16, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "spc_rows", scope: !228, file: !227, line: 105, baseType: !75, size: 16, align: 16, offset: 208)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !228, file: !227, line: 106, baseType: !22, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pindex", scope: !228, file: !227, line: 107, baseType: !75, size: 16, align: 16, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !228, file: !227, line: 108, baseType: !163, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !228, file: !227, line: 109, baseType: !163, size: 64, align: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "userwin", scope: !228, file: !227, line: 110, baseType: !163, size: 64, align: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "usersub", scope: !228, file: !227, line: 111, baseType: !163, size: 64, align: 64, offset: 576)
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
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !227, line: 66, baseType: !50, size: 16, align: 16, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !254, file: !227, line: 72, baseType: !257, size: 128, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "imenu", scope: !254, file: !227, line: 73, baseType: !266, size: 64, align: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !254, file: !227, line: 74, baseType: !9, size: 64, align: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !254, file: !227, line: 75, baseType: !269, size: 32, align: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "Item_Options", file: !227, line: 50, baseType: !20)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !254, file: !227, line: 76, baseType: !75, size: 16, align: 16, offset: 416)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !254, file: !227, line: 77, baseType: !75, size: 16, align: 16, offset: 432)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !254, file: !227, line: 78, baseType: !75, size: 16, align: 16, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !254, file: !227, line: 79, baseType: !177, size: 8, align: 8, offset: 464)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !254, file: !227, line: 81, baseType: !275, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !254, file: !227, line: 82, baseType: !275, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !254, file: !227, line: 83, baseType: !275, size: 64, align: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !254, file: !227, line: 84, baseType: !275, size: 64, align: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nitems", scope: !228, file: !227, line: 113, baseType: !75, size: 16, align: 16, offset: 704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "curitem", scope: !228, file: !227, line: 114, baseType: !252, size: 64, align: 64, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "toprow", scope: !228, file: !227, line: 115, baseType: !75, size: 16, align: 16, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fore", scope: !228, file: !227, line: 116, baseType: !6, size: 64, align: 64, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !228, file: !227, line: 117, baseType: !6, size: 64, align: 64, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "grey", scope: !228, file: !227, line: 118, baseType: !6, size: 64, align: 64, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !228, file: !227, line: 119, baseType: !8, size: 8, align: 8, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "menuinit", scope: !228, file: !227, line: 121, baseType: !287, size: 64, align: 64, offset: 1152)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "Menu_Hook", file: !227, line: 88, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !266}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "menuterm", scope: !228, file: !227, line: 122, baseType: !287, size: 64, align: 64, offset: 1216)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "iteminit", scope: !228, file: !227, line: 123, baseType: !287, size: 64, align: 64, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "itemterm", scope: !228, file: !227, line: 124, baseType: !287, size: 64, align: 64, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !228, file: !227, line: 126, baseType: !9, size: 64, align: 64, offset: 1408)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !228, file: !227, line: 127, baseType: !22, size: 64, align: 64, offset: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !228, file: !227, line: 129, baseType: !297, size: 32, align: 32, offset: 1536)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "Menu_Options", file: !227, line: 49, baseType: !20)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !228, file: !227, line: 130, baseType: !50, size: 16, align: 16, offset: 1568)
!299 = distinct !DIGlobalVariable(name: "curr_item", scope: !0, file: !107, line: 96, type: !252, isLocal: false, isDefinition: true, variable: %struct.tagITEM** @curr_item)
!300 = distinct !DIGlobalVariable(name: "my_nmenu_win", scope: !0, file: !107, line: 97, type: !163, isLocal: false, isDefinition: true, variable: %struct._win_st** @my_nmenu_win)
!301 = distinct !DIGlobalVariable(name: "pop_up", scope: !0, file: !107, line: 98, type: !163, isLocal: false, isDefinition: true, variable: %struct._win_st** @pop_up)
!302 = distinct !DIGlobalVariable(name: "mvar", scope: !0, file: !107, line: 100, type: !129, isLocal: false, isDefinition: true, variable: i16* @mvar)
!303 = distinct !DIGlobalVariable(name: "promisc", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @promisc)
!304 = distinct !DIGlobalVariable(name: "hex", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @hex)
!305 = distinct !DIGlobalVariable(name: "ascii", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @ascii)
!306 = distinct !DIGlobalVariable(name: "ld", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @ld)
!307 = distinct !DIGlobalVariable(name: "f", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @f)
!308 = distinct !DIGlobalVariable(name: "lr", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @lr)
!309 = distinct !DIGlobalVariable(name: "l", scope: !0, file: !107, line: 101, type: !129, isLocal: false, isDefinition: true, variable: i16* @l)
!310 = distinct !DIGlobalVariable(name: "flg", scope: !0, file: !107, line: 102, type: !129, isLocal: false, isDefinition: true, variable: i16* @flg)
!311 = distinct !DIGlobalVariable(name: "linm", scope: !0, file: !107, line: 103, type: !20, isLocal: false, isDefinition: true, variable: i32* @linm)
!312 = distinct !DIGlobalVariable(name: "fileds", scope: !0, file: !107, line: 104, type: !20, isLocal: false, isDefinition: true, variable: i32* @fileds)
!313 = distinct !DIGlobalVariable(name: "dev", scope: !0, file: !107, line: 105, type: !314, isLocal: false, isDefinition: true, variable: [10 x i8]* @dev)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 80, align: 8, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 10)
!317 = distinct !DIGlobalVariable(name: "n_filter", scope: !0, file: !107, line: 106, type: !156, isLocal: false, isDefinition: true, variable: [60 x i8]* @n_filter)
!318 = distinct !DIGlobalVariable(name: "ldfile", scope: !0, file: !107, line: 107, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @ldfile)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 400, align: 8, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 50)
!322 = distinct !DIGlobalVariable(name: "tcpdfile", scope: !0, file: !107, line: 108, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @tcpdfile)
!323 = distinct !DIGlobalVariable(name: "reportl", scope: !0, file: !107, line: 109, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @reportl)
!324 = distinct !DIGlobalVariable(name: "logfile", scope: !0, file: !107, line: 110, type: !319, isLocal: false, isDefinition: true, variable: [50 x i8]* @logfile)
!325 = distinct !DIGlobalVariable(name: "str", scope: !0, file: !107, line: 112, type: !103, isLocal: false, isDefinition: true, variable: %struct.pcap** @str)
!326 = distinct !DIGlobalVariable(name: "thID", scope: !0, file: !107, line: 116, type: !327, isLocal: false, isDefinition: true, variable: [6 x i64]* @thID)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 384, align: 64, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 6)
!330 = distinct !DIGlobalVariable(name: "th_data", scope: !0, file: !107, line: 144, type: !331, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_conn]* @th_data)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 448, align: 64, elements: !55)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_conn", file: !107, line: 118, size: 448, align: 64, elements: !333)
!333 = !{!334, !338, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !332, file: !107, line: 120, baseType: !335, size: 240, align: 8)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 240, align: 8, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 30)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !332, file: !107, line: 121, baseType: !339, size: 64, align: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !80, line: 36, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !47, line: 33, baseType: !7)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !332, file: !107, line: 122, baseType: !339, size: 64, align: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !332, file: !107, line: 123, baseType: !129, size: 16, align: 16, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !332, file: !107, line: 124, baseType: !129, size: 16, align: 16, offset: 400)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !332, file: !107, line: 125, baseType: !20, size: 32, align: 32, offset: 416)
!345 = distinct !DIGlobalVariable(name: "th_r_data", scope: !0, file: !107, line: 145, type: !346, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_conn_rst]* @th_r_data)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 448, align: 64, elements: !55)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_conn_rst", file: !107, line: 134, size: 448, align: 64, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !347, file: !107, line: 136, baseType: !335, size: 240, align: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !347, file: !107, line: 137, baseType: !339, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !347, file: !107, line: 138, baseType: !339, size: 64, align: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !347, file: !107, line: 139, baseType: !129, size: 16, align: 16, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !347, file: !107, line: 140, baseType: !129, size: 16, align: 16, offset: 400)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !107, line: 141, baseType: !20, size: 32, align: 32, offset: 416)
!355 = distinct !DIGlobalVariable(name: "th_arp_data", scope: !0, file: !107, line: 146, type: !356, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_arp]* @th_arp_data)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 288, align: 32, elements: !55)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_arp", file: !107, line: 128, size: 288, align: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !357, file: !107, line: 130, baseType: !335, size: 240, align: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !357, file: !107, line: 131, baseType: !20, size: 32, align: 32, offset: 256)
!361 = distinct !DIGlobalVariable(name: "c_inf", scope: !0, file: !107, line: 161, type: !362, isLocal: false, isDefinition: true, variable: [30 x %struct.connections]* @c_inf)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 13440, align: 64, elements: !336)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connections", file: !107, line: 148, size: 448, align: 64, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s_ip", scope: !363, file: !107, line: 150, baseType: !7, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_ip", scope: !363, file: !107, line: 151, baseType: !7, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !363, file: !107, line: 152, baseType: !50, size: 16, align: 16, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !363, file: !107, line: 153, baseType: !50, size: 16, align: 16, offset: 144)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !363, file: !107, line: 154, baseType: !339, size: 64, align: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !363, file: !107, line: 155, baseType: !339, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lin", scope: !363, file: !107, line: 156, baseType: !20, size: 32, align: 32, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !363, file: !107, line: 157, baseType: !20, size: 32, align: 32, offset: 352)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !363, file: !107, line: 158, baseType: !20, size: 32, align: 32, offset: 384)
!374 = distinct !DIGlobalVariable(name: "sf", scope: !0, file: !107, line: 177, type: !375, isLocal: false, isDefinition: true, variable: [30 x %struct.cnn]* @sf)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 105600, align: 64, elements: !336)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cnn", file: !107, line: 164, size: 3520, align: 64, elements: !377)
!377 = !{!378, !382, !383, !384, !385, !386, !387, !388, !389}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !376, file: !107, line: 166, baseType: !379, size: 1600, align: 8)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1600, align: 8, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 200)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sfilter", scope: !376, file: !107, line: 168, baseType: !379, size: 1600, align: 8, offset: 1600)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !376, file: !107, line: 169, baseType: !339, size: 64, align: 64, offset: 3200)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !376, file: !107, line: 170, baseType: !339, size: 64, align: 64, offset: 3264)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !376, file: !107, line: 171, baseType: !339, size: 64, align: 64, offset: 3328)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !376, file: !107, line: 172, baseType: !339, size: 64, align: 64, offset: 3392)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !376, file: !107, line: 173, baseType: !129, size: 16, align: 16, offset: 3456)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !376, file: !107, line: 174, baseType: !129, size: 16, align: 16, offset: 3472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cont", scope: !376, file: !107, line: 175, baseType: !20, size: 32, align: 32, offset: 3488)
!390 = distinct !DIGlobalVariable(name: "nmax", scope: !0, file: !107, line: 180, type: !20, isLocal: false, isDefinition: true, variable: i32* @nmax)
!391 = !{i32 2, !"Dwarf Version", i32 4}
!392 = !{i32 2, !"Debug Info Version", i32 3}
!393 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!394 = distinct !DISubprogram(name: "newscrollwin", scope: !395, file: !395, line: 24, type: !396, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!395 = !DIFile(filename: "ncurses/n_scroll_win.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!396 = !DISubroutineType(types: !397)
!397 = !{!208, !20, !20, !20, !20, !22, !20}
!398 = !DILocalVariable(name: "lines", arg: 1, scope: !394, file: !395, line: 24, type: !20)
!399 = !DIExpression()
!400 = !DILocation(line: 24, column: 31, scope: !394)
!401 = !DILocalVariable(name: "cols", arg: 2, scope: !394, file: !395, line: 24, type: !20)
!402 = !DILocation(line: 24, column: 42, scope: !394)
!403 = !DILocalVariable(name: "y", arg: 3, scope: !394, file: !395, line: 24, type: !20)
!404 = !DILocation(line: 24, column: 52, scope: !394)
!405 = !DILocalVariable(name: "x", arg: 4, scope: !394, file: !395, line: 24, type: !20)
!406 = !DILocation(line: 24, column: 59, scope: !394)
!407 = !DILocalVariable(name: "title", arg: 5, scope: !394, file: !395, line: 24, type: !22)
!408 = !DILocation(line: 24, column: 68, scope: !394)
!409 = !DILocalVariable(name: "maxlines", arg: 6, scope: !394, file: !395, line: 24, type: !20)
!410 = !DILocation(line: 24, column: 79, scope: !394)
!411 = !DILocalVariable(name: "win", scope: !394, file: !395, line: 26, type: !208)
!412 = !DILocation(line: 26, column: 17, scope: !394)
!413 = !DILocation(line: 28, column: 10, scope: !394)
!414 = !DILocation(line: 28, column: 8, scope: !394)
!415 = !DILocation(line: 30, column: 22, scope: !394)
!416 = !DILocation(line: 30, column: 32, scope: !394)
!417 = !DILocation(line: 30, column: 37, scope: !394)
!418 = !DILocation(line: 30, column: 15, scope: !394)
!419 = !DILocation(line: 30, column: 4, scope: !394)
!420 = !DILocation(line: 30, column: 9, scope: !394)
!421 = !DILocation(line: 30, column: 13, scope: !394)
!422 = !DILocation(line: 31, column: 22, scope: !394)
!423 = !DILocation(line: 31, column: 29, scope: !394)
!424 = !DILocation(line: 31, column: 35, scope: !394)
!425 = !DILocation(line: 31, column: 38, scope: !394)
!426 = !DILocation(line: 31, column: 15, scope: !394)
!427 = !DILocation(line: 31, column: 4, scope: !394)
!428 = !DILocation(line: 31, column: 9, scope: !394)
!429 = !DILocation(line: 31, column: 13, scope: !394)
!430 = !DILocation(line: 32, column: 17, scope: !394)
!431 = !DILocation(line: 32, column: 4, scope: !394)
!432 = !DILocation(line: 32, column: 9, scope: !394)
!433 = !DILocation(line: 32, column: 15, scope: !394)
!434 = !DILocation(line: 33, column: 17, scope: !394)
!435 = !DILocation(line: 33, column: 4, scope: !394)
!436 = !DILocation(line: 33, column: 9, scope: !394)
!437 = !DILocation(line: 33, column: 15, scope: !394)
!438 = !DILocation(line: 34, column: 16, scope: !394)
!439 = !DILocation(line: 34, column: 4, scope: !394)
!440 = !DILocation(line: 34, column: 9, scope: !394)
!441 = !DILocation(line: 34, column: 14, scope: !394)
!442 = !DILocation(line: 35, column: 13, scope: !394)
!443 = !DILocation(line: 35, column: 4, scope: !394)
!444 = !DILocation(line: 35, column: 9, scope: !394)
!445 = !DILocation(line: 35, column: 11, scope: !394)
!446 = !DILocation(line: 36, column: 13, scope: !394)
!447 = !DILocation(line: 36, column: 4, scope: !394)
!448 = !DILocation(line: 36, column: 9, scope: !394)
!449 = !DILocation(line: 36, column: 11, scope: !394)
!450 = !DILocation(line: 37, column: 24, scope: !394)
!451 = !DILocation(line: 37, column: 17, scope: !394)
!452 = !DILocation(line: 37, column: 4, scope: !394)
!453 = !DILocation(line: 37, column: 9, scope: !394)
!454 = !DILocation(line: 37, column: 15, scope: !394)
!455 = !DILocation(line: 39, column: 13, scope: !394)
!456 = !DILocation(line: 39, column: 18, scope: !394)
!457 = !DILocation(line: 39, column: 4, scope: !394)
!458 = !DILocation(line: 43, column: 20, scope: !394)
!459 = !DILocation(line: 43, column: 32, scope: !394)
!460 = !DILocation(line: 43, column: 37, scope: !394)
!461 = !DILocation(line: 43, column: 29, scope: !394)
!462 = !DILocation(line: 43, column: 4, scope: !394)
!463 = !DILocation(line: 43, column: 9, scope: !394)
!464 = !DILocation(line: 43, column: 18, scope: !394)
!465 = !DILocation(line: 44, column: 10, scope: !394)
!466 = !DILocation(line: 44, column: 15, scope: !394)
!467 = !DILocation(line: 44, column: 20, scope: !394)
!468 = !DILocation(line: 44, column: 25, scope: !394)
!469 = !DILocation(line: 44, column: 34, scope: !394)
!470 = !DILocation(line: 44, column: 4, scope: !394)
!471 = !DILocation(line: 48, column: 3, scope: !394)
!472 = !DILocation(line: 48, column: 8, scope: !394)
!473 = !DILocation(line: 48, column: 4, scope: !394)
!474 = !DILocation(line: 48, column: 3, scope: !475)
!475 = !DILexicalBlockFile(scope: !394, file: !395, discriminator: 1)
!476 = !DILocation(line: 48, column: 8, scope: !475)
!477 = !DILocation(line: 48, column: 6, scope: !475)
!478 = !DILocation(line: 48, column: 13, scope: !475)
!479 = !DILocation(line: 48, column: 4, scope: !475)
!480 = !DILocation(line: 48, column: 4, scope: !481)
!481 = !DILexicalBlockFile(scope: !394, file: !395, discriminator: 2)
!482 = !DILocation(line: 48, column: 4, scope: !483)
!483 = !DILexicalBlockFile(scope: !394, file: !395, discriminator: 3)
!484 = !DILocation(line: 50, column: 12, scope: !394)
!485 = !DILocation(line: 50, column: 17, scope: !394)
!486 = !DILocation(line: 50, column: 22, scope: !394)
!487 = !DILocation(line: 50, column: 33, scope: !394)
!488 = !DILocation(line: 50, column: 44, scope: !394)
!489 = !DILocation(line: 50, column: 55, scope: !394)
!490 = !DILocation(line: 51, column: 5, scope: !394)
!491 = !DILocation(line: 51, column: 19, scope: !394)
!492 = !DILocation(line: 52, column: 5, scope: !394)
!493 = !DILocation(line: 52, column: 19, scope: !394)
!494 = !DILocation(line: 50, column: 4, scope: !394)
!495 = !DILocation(line: 54, column: 10, scope: !394)
!496 = !DILocation(line: 54, column: 15, scope: !394)
!497 = !DILocation(line: 54, column: 4, scope: !394)
!498 = !DILocation(line: 55, column: 3, scope: !394)
!499 = !DILocation(line: 55, column: 8, scope: !394)
!500 = !DILocation(line: 55, column: 4, scope: !394)
!501 = !DILocation(line: 55, column: 3, scope: !475)
!502 = !DILocation(line: 55, column: 8, scope: !475)
!503 = !DILocation(line: 55, column: 6, scope: !475)
!504 = !DILocation(line: 55, column: 13, scope: !475)
!505 = !DILocation(line: 55, column: 4, scope: !475)
!506 = !DILocation(line: 55, column: 4, scope: !481)
!507 = !DILocation(line: 55, column: 4, scope: !483)
!508 = !DILocation(line: 56, column: 3, scope: !394)
!509 = !DILocation(line: 56, column: 8, scope: !394)
!510 = !DILocation(line: 57, column: 3, scope: !394)
!511 = !DILocation(line: 57, column: 8, scope: !394)
!512 = !DILocation(line: 58, column: 3, scope: !394)
!513 = !DILocation(line: 58, column: 8, scope: !394)
!514 = !DILocation(line: 59, column: 3, scope: !394)
!515 = !DILocation(line: 59, column: 8, scope: !394)
!516 = !DILocation(line: 59, column: 4, scope: !394)
!517 = !DILocation(line: 59, column: 3, scope: !475)
!518 = !DILocation(line: 59, column: 8, scope: !475)
!519 = !DILocation(line: 59, column: 6, scope: !475)
!520 = !DILocation(line: 59, column: 13, scope: !475)
!521 = !DILocation(line: 59, column: 4, scope: !475)
!522 = !DILocation(line: 59, column: 4, scope: !481)
!523 = !DILocation(line: 59, column: 4, scope: !483)
!524 = !DILocation(line: 61, column: 17, scope: !394)
!525 = !DILocation(line: 61, column: 4, scope: !394)
!526 = !DILocation(line: 63, column: 11, scope: !394)
!527 = !DILocation(line: 63, column: 4, scope: !394)
!528 = distinct !DISubprogram(name: "drawscroller", scope: !395, file: !395, line: 111, type: !529, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !208}
!531 = !DILocalVariable(name: "win", arg: 1, scope: !528, file: !395, line: 111, type: !208)
!532 = !DILocation(line: 111, column: 32, scope: !528)
!533 = !DILocalVariable(name: "height", scope: !528, file: !395, line: 113, type: !75)
!534 = !DILocation(line: 113, column: 10, scope: !528)
!535 = !DILocation(line: 113, column: 20, scope: !528)
!536 = !DILocation(line: 113, column: 25, scope: !528)
!537 = !DILocation(line: 113, column: 30, scope: !528)
!538 = !DILocation(line: 113, column: 37, scope: !528)
!539 = !DILocation(line: 113, column: 42, scope: !528)
!540 = !DILocation(line: 113, column: 47, scope: !528)
!541 = !DILocation(line: 113, column: 34, scope: !528)
!542 = !DILocation(line: 113, column: 53, scope: !528)
!543 = !DILocation(line: 113, column: 58, scope: !528)
!544 = !DILocation(line: 113, column: 51, scope: !528)
!545 = !DILocation(line: 113, column: 19, scope: !528)
!546 = !DILocalVariable(name: "vpos", scope: !528, file: !395, line: 114, type: !75)
!547 = !DILocation(line: 114, column: 10, scope: !528)
!548 = !DILocation(line: 114, column: 17, scope: !528)
!549 = !DILocation(line: 114, column: 22, scope: !528)
!550 = !DILocation(line: 114, column: 30, scope: !528)
!551 = !DILocation(line: 114, column: 35, scope: !528)
!552 = !DILocation(line: 114, column: 28, scope: !528)
!553 = !DILocation(line: 114, column: 46, scope: !528)
!554 = !DILocation(line: 114, column: 51, scope: !528)
!555 = !DILocation(line: 114, column: 44, scope: !528)
!556 = !DILocation(line: 116, column: 3, scope: !528)
!557 = !DILocation(line: 116, column: 8, scope: !528)
!558 = !DILocation(line: 117, column: 3, scope: !528)
!559 = !DILocation(line: 117, column: 8, scope: !528)
!560 = !DILocation(line: 119, column: 14, scope: !528)
!561 = !DILocation(line: 119, column: 21, scope: !528)
!562 = !DILocation(line: 119, column: 13, scope: !528)
!563 = !DILocation(line: 119, column: 13, scope: !564)
!564 = !DILexicalBlockFile(scope: !528, file: !395, discriminator: 1)
!565 = !DILocation(line: 119, column: 32, scope: !566)
!566 = !DILexicalBlockFile(scope: !528, file: !395, discriminator: 2)
!567 = !DILocation(line: 119, column: 13, scope: !566)
!568 = !DILocation(line: 119, column: 13, scope: !569)
!569 = !DILexicalBlockFile(scope: !528, file: !395, discriminator: 3)
!570 = !DILocation(line: 119, column: 11, scope: !569)
!571 = !DILocation(line: 121, column: 12, scope: !528)
!572 = !DILocation(line: 121, column: 17, scope: !528)
!573 = !DILocation(line: 121, column: 11, scope: !528)
!574 = !DILocation(line: 121, column: 11, scope: !564)
!575 = !DILocation(line: 121, column: 29, scope: !566)
!576 = !DILocation(line: 121, column: 11, scope: !566)
!577 = !DILocation(line: 121, column: 11, scope: !569)
!578 = !DILocation(line: 121, column: 9, scope: !569)
!579 = !DILocation(line: 122, column: 12, scope: !528)
!580 = !DILocation(line: 122, column: 20, scope: !528)
!581 = !DILocation(line: 122, column: 25, scope: !528)
!582 = !DILocation(line: 122, column: 30, scope: !528)
!583 = !DILocation(line: 122, column: 36, scope: !528)
!584 = !DILocation(line: 122, column: 34, scope: !528)
!585 = !DILocation(line: 122, column: 17, scope: !528)
!586 = !DILocation(line: 122, column: 11, scope: !528)
!587 = !DILocation(line: 122, column: 47, scope: !564)
!588 = !DILocation(line: 122, column: 52, scope: !564)
!589 = !DILocation(line: 122, column: 57, scope: !564)
!590 = !DILocation(line: 122, column: 63, scope: !564)
!591 = !DILocation(line: 122, column: 61, scope: !564)
!592 = !DILocation(line: 122, column: 11, scope: !564)
!593 = !DILocation(line: 122, column: 72, scope: !566)
!594 = !DILocation(line: 122, column: 11, scope: !566)
!595 = !DILocation(line: 122, column: 11, scope: !569)
!596 = !DILocation(line: 122, column: 9, scope: !569)
!597 = !DILocation(line: 124, column: 10, scope: !528)
!598 = !DILocation(line: 124, column: 15, scope: !528)
!599 = !DILocation(line: 124, column: 23, scope: !528)
!600 = !DILocation(line: 124, column: 28, scope: !528)
!601 = !DILocation(line: 124, column: 32, scope: !528)
!602 = !DILocation(line: 124, column: 37, scope: !528)
!603 = !DILocation(line: 124, column: 30, scope: !528)
!604 = !DILocation(line: 124, column: 42, scope: !528)
!605 = !DILocation(line: 124, column: 4, scope: !528)
!606 = !DILocation(line: 125, column: 11, scope: !528)
!607 = !DILocation(line: 125, column: 16, scope: !528)
!608 = !DILocation(line: 125, column: 21, scope: !528)
!609 = !DILocation(line: 125, column: 33, scope: !528)
!610 = !DILocation(line: 125, column: 38, scope: !528)
!611 = !DILocation(line: 125, column: 44, scope: !528)
!612 = !DILocation(line: 125, column: 4, scope: !528)
!613 = !DILocation(line: 126, column: 3, scope: !528)
!614 = !DILocation(line: 126, column: 8, scope: !528)
!615 = !DILocation(line: 127, column: 10, scope: !528)
!616 = !DILocation(line: 127, column: 15, scope: !528)
!617 = !DILocation(line: 127, column: 20, scope: !528)
!618 = !DILocation(line: 127, column: 26, scope: !528)
!619 = !DILocation(line: 127, column: 31, scope: !528)
!620 = !DILocation(line: 127, column: 35, scope: !528)
!621 = !DILocation(line: 127, column: 40, scope: !528)
!622 = !DILocation(line: 127, column: 33, scope: !528)
!623 = !DILocation(line: 127, column: 45, scope: !528)
!624 = !DILocation(line: 127, column: 4, scope: !528)
!625 = !DILocation(line: 128, column: 11, scope: !528)
!626 = !DILocation(line: 128, column: 16, scope: !528)
!627 = !DILocation(line: 128, column: 26, scope: !528)
!628 = !DILocation(line: 128, column: 4, scope: !528)
!629 = !DILocation(line: 129, column: 3, scope: !528)
!630 = !DILocation(line: 129, column: 8, scope: !528)
!631 = !DILocation(line: 131, column: 17, scope: !528)
!632 = !DILocation(line: 131, column: 22, scope: !528)
!633 = !DILocation(line: 131, column: 4, scope: !528)
!634 = !DILocation(line: 132, column: 1, scope: !528)
!635 = distinct !DISubprogram(name: "redrawscrollwin", scope: !395, file: !395, line: 68, type: !636, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !208, !20}
!638 = !DILocalVariable(name: "win", arg: 1, scope: !635, file: !395, line: 68, type: !208)
!639 = !DILocation(line: 68, column: 35, scope: !635)
!640 = !DILocalVariable(name: "focus", arg: 2, scope: !635, file: !395, line: 68, type: !20)
!641 = !DILocation(line: 68, column: 44, scope: !635)
!642 = !DILocation(line: 71, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !635, file: !395, line: 71, column: 8)
!644 = !DILocation(line: 71, column: 8, scope: !635)
!645 = !DILocation(line: 72, column: 5, scope: !643)
!646 = !DILocation(line: 72, column: 10, scope: !643)
!647 = !DILocation(line: 74, column: 11, scope: !635)
!648 = !DILocation(line: 74, column: 16, scope: !635)
!649 = !DILocation(line: 74, column: 4, scope: !635)
!650 = !DILocation(line: 75, column: 10, scope: !635)
!651 = !DILocation(line: 75, column: 15, scope: !635)
!652 = !DILocation(line: 75, column: 4, scope: !635)
!653 = !DILocation(line: 77, column: 3, scope: !635)
!654 = !DILocation(line: 77, column: 8, scope: !635)
!655 = !DILocation(line: 79, column: 12, scope: !635)
!656 = !DILocation(line: 79, column: 17, scope: !635)
!657 = !DILocation(line: 79, column: 22, scope: !635)
!658 = !DILocation(line: 79, column: 33, scope: !635)
!659 = !DILocation(line: 79, column: 44, scope: !635)
!660 = !DILocation(line: 79, column: 55, scope: !635)
!661 = !DILocation(line: 80, column: 5, scope: !635)
!662 = !DILocation(line: 80, column: 19, scope: !635)
!663 = !DILocation(line: 81, column: 5, scope: !635)
!664 = !DILocation(line: 81, column: 19, scope: !635)
!665 = !DILocation(line: 79, column: 4, scope: !635)
!666 = !DILocation(line: 83, column: 8, scope: !667)
!667 = distinct !DILexicalBlock(scope: !635, file: !395, line: 83, column: 8)
!668 = !DILocation(line: 83, column: 8, scope: !635)
!669 = !DILocation(line: 85, column: 8, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !395, line: 84, column: 6)
!671 = !DILocation(line: 85, column: 13, scope: !670)
!672 = !DILocation(line: 85, column: 2, scope: !670)
!673 = !DILocation(line: 86, column: 1, scope: !670)
!674 = !DILocation(line: 86, column: 6, scope: !670)
!675 = !DILocation(line: 87, column: 9, scope: !670)
!676 = !DILocation(line: 87, column: 14, scope: !670)
!677 = !DILocation(line: 87, column: 19, scope: !670)
!678 = !DILocation(line: 87, column: 2, scope: !670)
!679 = !DILocation(line: 88, column: 9, scope: !670)
!680 = !DILocation(line: 88, column: 14, scope: !670)
!681 = !DILocation(line: 88, column: 19, scope: !670)
!682 = !DILocation(line: 88, column: 2, scope: !670)
!683 = !DILocation(line: 89, column: 1, scope: !670)
!684 = !DILocation(line: 89, column: 6, scope: !670)
!685 = !DILocation(line: 90, column: 6, scope: !670)
!686 = !DILocation(line: 92, column: 3, scope: !635)
!687 = !DILocation(line: 92, column: 8, scope: !635)
!688 = !DILocation(line: 93, column: 10, scope: !635)
!689 = !DILocation(line: 93, column: 15, scope: !635)
!690 = !DILocation(line: 93, column: 4, scope: !635)
!691 = !DILocation(line: 94, column: 3, scope: !635)
!692 = !DILocation(line: 94, column: 8, scope: !635)
!693 = !DILocation(line: 95, column: 3, scope: !635)
!694 = !DILocation(line: 95, column: 8, scope: !635)
!695 = !DILocation(line: 96, column: 3, scope: !635)
!696 = !DILocation(line: 96, column: 8, scope: !635)
!697 = !DILocation(line: 97, column: 3, scope: !635)
!698 = !DILocation(line: 97, column: 8, scope: !635)
!699 = !DILocation(line: 99, column: 3, scope: !635)
!700 = !DILocation(line: 99, column: 8, scope: !635)
!701 = !DILocation(line: 99, column: 9, scope: !635)
!702 = !DILocation(line: 99, column: 3, scope: !703)
!703 = !DILexicalBlockFile(scope: !635, file: !395, discriminator: 1)
!704 = !DILocation(line: 99, column: 8, scope: !703)
!705 = !DILocation(line: 99, column: 6, scope: !703)
!706 = !DILocation(line: 99, column: 7, scope: !703)
!707 = !DILocation(line: 99, column: 11, scope: !703)
!708 = !DILocation(line: 99, column: 9, scope: !703)
!709 = !DILocation(line: 99, column: 9, scope: !710)
!710 = !DILexicalBlockFile(scope: !635, file: !395, discriminator: 2)
!711 = !DILocation(line: 99, column: 9, scope: !712)
!712 = !DILexicalBlockFile(scope: !635, file: !395, discriminator: 3)
!713 = !DILocation(line: 99, column: 3, scope: !712)
!714 = !DILocation(line: 101, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !635, file: !395, line: 101, column: 8)
!716 = !DILocation(line: 101, column: 8, scope: !635)
!717 = !DILocation(line: 102, column: 5, scope: !715)
!718 = !DILocation(line: 102, column: 10, scope: !715)
!719 = !DILocation(line: 104, column: 17, scope: !635)
!720 = !DILocation(line: 104, column: 4, scope: !635)
!721 = !DILocation(line: 106, column: 4, scope: !635)
!722 = distinct !{!722, !721}
!723 = !DILocation(line: 106, column: 22, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !395, discriminator: 1)
!725 = distinct !DILexicalBlock(scope: !635, file: !395, line: 106, column: 7)
!726 = !DILocation(line: 106, column: 27, scope: !724)
!727 = !DILocation(line: 106, column: 32, scope: !724)
!728 = !DILocation(line: 106, column: 37, scope: !724)
!729 = !DILocation(line: 106, column: 50, scope: !724)
!730 = !DILocation(line: 106, column: 55, scope: !724)
!731 = !DILocation(line: 106, column: 57, scope: !724)
!732 = !DILocation(line: 106, column: 62, scope: !724)
!733 = !DILocation(line: 106, column: 67, scope: !724)
!734 = !DILocation(line: 106, column: 69, scope: !724)
!735 = !DILocation(line: 106, column: 74, scope: !724)
!736 = !DILocation(line: 106, column: 79, scope: !724)
!737 = !DILocation(line: 106, column: 83, scope: !724)
!738 = !DILocation(line: 106, column: 88, scope: !724)
!739 = !DILocation(line: 106, column: 81, scope: !724)
!740 = !DILocation(line: 106, column: 94, scope: !724)
!741 = !DILocation(line: 106, column: 99, scope: !724)
!742 = !DILocation(line: 106, column: 104, scope: !724)
!743 = !DILocation(line: 106, column: 109, scope: !724)
!744 = !DILocation(line: 106, column: 9, scope: !724)
!745 = !DILocation(line: 106, column: 129, scope: !724)
!746 = !DILocation(line: 106, column: 134, scope: !724)
!747 = !DILocation(line: 106, column: 116, scope: !748)
!748 = !DILexicalBlockFile(scope: !724, file: !395, discriminator: 2)
!749 = !DILocation(line: 106, column: 140, scope: !750)
!750 = !DILexicalBlockFile(scope: !724, file: !395, discriminator: 3)
!751 = !DILocation(line: 106, column: 152, scope: !724)
!752 = !DILocation(line: 107, column: 1, scope: !635)
!753 = distinct !DISubprogram(name: "winscroll", scope: !395, file: !395, line: 136, type: !636, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!754 = !DILocalVariable(name: "win", arg: 1, scope: !753, file: !395, line: 136, type: !208)
!755 = !DILocation(line: 136, column: 29, scope: !753)
!756 = !DILocalVariable(name: "delta", arg: 2, scope: !753, file: !395, line: 136, type: !20)
!757 = !DILocation(line: 136, column: 38, scope: !753)
!758 = !DILocation(line: 138, column: 21, scope: !753)
!759 = !DILocation(line: 138, column: 4, scope: !753)
!760 = !DILocation(line: 138, column: 9, scope: !753)
!761 = !DILocation(line: 138, column: 18, scope: !753)
!762 = !DILocation(line: 139, column: 21, scope: !753)
!763 = !DILocation(line: 139, column: 26, scope: !753)
!764 = !DILocation(line: 139, column: 35, scope: !753)
!765 = !DILocation(line: 139, column: 20, scope: !753)
!766 = !DILocation(line: 139, column: 20, scope: !767)
!767 = !DILexicalBlockFile(scope: !753, file: !395, discriminator: 1)
!768 = !DILocation(line: 139, column: 46, scope: !769)
!769 = !DILexicalBlockFile(scope: !753, file: !395, discriminator: 2)
!770 = !DILocation(line: 139, column: 51, scope: !769)
!771 = !DILocation(line: 139, column: 20, scope: !769)
!772 = !DILocation(line: 139, column: 20, scope: !773)
!773 = !DILexicalBlockFile(scope: !753, file: !395, discriminator: 3)
!774 = !DILocation(line: 139, column: 4, scope: !773)
!775 = !DILocation(line: 139, column: 9, scope: !773)
!776 = !DILocation(line: 139, column: 18, scope: !773)
!777 = !DILocation(line: 140, column: 21, scope: !753)
!778 = !DILocation(line: 140, column: 26, scope: !753)
!779 = !DILocation(line: 140, column: 37, scope: !753)
!780 = !DILocation(line: 140, column: 42, scope: !753)
!781 = !DILocation(line: 140, column: 51, scope: !753)
!782 = !DILocation(line: 140, column: 56, scope: !753)
!783 = !DILocation(line: 140, column: 61, scope: !753)
!784 = !DILocation(line: 140, column: 48, scope: !753)
!785 = !DILocation(line: 140, column: 35, scope: !753)
!786 = !DILocation(line: 140, column: 20, scope: !753)
!787 = !DILocation(line: 141, column: 8, scope: !753)
!788 = !DILocation(line: 141, column: 13, scope: !753)
!789 = !DILocation(line: 141, column: 22, scope: !753)
!790 = !DILocation(line: 141, column: 27, scope: !753)
!791 = !DILocation(line: 141, column: 32, scope: !753)
!792 = !DILocation(line: 141, column: 19, scope: !753)
!793 = !DILocation(line: 140, column: 20, scope: !767)
!794 = !DILocation(line: 142, column: 10, scope: !753)
!795 = !DILocation(line: 142, column: 15, scope: !753)
!796 = !DILocation(line: 140, column: 20, scope: !769)
!797 = !DILocation(line: 140, column: 20, scope: !773)
!798 = !DILocation(line: 140, column: 4, scope: !773)
!799 = !DILocation(line: 140, column: 9, scope: !773)
!800 = !DILocation(line: 140, column: 18, scope: !773)
!801 = !DILocation(line: 144, column: 17, scope: !753)
!802 = !DILocation(line: 144, column: 4, scope: !753)
!803 = !DILocation(line: 146, column: 4, scope: !753)
!804 = distinct !{!804, !803}
!805 = !DILocation(line: 146, column: 22, scope: !806)
!806 = !DILexicalBlockFile(scope: !807, file: !395, discriminator: 1)
!807 = distinct !DILexicalBlock(scope: !753, file: !395, line: 146, column: 7)
!808 = !DILocation(line: 146, column: 27, scope: !806)
!809 = !DILocation(line: 146, column: 32, scope: !806)
!810 = !DILocation(line: 146, column: 37, scope: !806)
!811 = !DILocation(line: 146, column: 50, scope: !806)
!812 = !DILocation(line: 146, column: 55, scope: !806)
!813 = !DILocation(line: 146, column: 57, scope: !806)
!814 = !DILocation(line: 146, column: 62, scope: !806)
!815 = !DILocation(line: 146, column: 67, scope: !806)
!816 = !DILocation(line: 146, column: 69, scope: !806)
!817 = !DILocation(line: 146, column: 74, scope: !806)
!818 = !DILocation(line: 146, column: 79, scope: !806)
!819 = !DILocation(line: 146, column: 83, scope: !806)
!820 = !DILocation(line: 146, column: 88, scope: !806)
!821 = !DILocation(line: 146, column: 81, scope: !806)
!822 = !DILocation(line: 146, column: 94, scope: !806)
!823 = !DILocation(line: 146, column: 99, scope: !806)
!824 = !DILocation(line: 146, column: 104, scope: !806)
!825 = !DILocation(line: 146, column: 109, scope: !806)
!826 = !DILocation(line: 146, column: 9, scope: !806)
!827 = !DILocation(line: 146, column: 129, scope: !806)
!828 = !DILocation(line: 146, column: 134, scope: !806)
!829 = !DILocation(line: 146, column: 116, scope: !830)
!830 = !DILexicalBlockFile(scope: !806, file: !395, discriminator: 2)
!831 = !DILocation(line: 146, column: 140, scope: !832)
!832 = !DILexicalBlockFile(scope: !806, file: !395, discriminator: 3)
!833 = !DILocation(line: 146, column: 152, scope: !806)
!834 = !DILocation(line: 147, column: 1, scope: !753)
!835 = distinct !DISubprogram(name: "delscrollwin", scope: !395, file: !395, line: 149, type: !836, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!839 = !DILocalVariable(name: "win", arg: 1, scope: !835, file: !395, line: 149, type: !838)
!840 = !DILocation(line: 149, column: 33, scope: !835)
!841 = !DILocation(line: 152, column: 13, scope: !835)
!842 = !DILocation(line: 152, column: 12, scope: !835)
!843 = !DILocation(line: 152, column: 19, scope: !835)
!844 = !DILocation(line: 152, column: 4, scope: !835)
!845 = !DILocation(line: 153, column: 4, scope: !835)
!846 = distinct !{!846, !845}
!847 = !DILocation(line: 153, column: 20, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !395, discriminator: 1)
!849 = distinct !DILexicalBlock(scope: !835, file: !395, line: 153, column: 7)
!850 = !DILocation(line: 153, column: 19, scope: !848)
!851 = !DILocation(line: 153, column: 26, scope: !848)
!852 = !DILocation(line: 153, column: 9, scope: !848)
!853 = !DILocation(line: 153, column: 32, scope: !848)
!854 = !DILocation(line: 154, column: 13, scope: !835)
!855 = !DILocation(line: 154, column: 12, scope: !835)
!856 = !DILocation(line: 154, column: 19, scope: !835)
!857 = !DILocation(line: 154, column: 4, scope: !835)
!858 = !DILocation(line: 155, column: 4, scope: !835)
!859 = distinct !{!859, !858}
!860 = !DILocation(line: 155, column: 20, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !395, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !835, file: !395, line: 155, column: 7)
!863 = !DILocation(line: 155, column: 19, scope: !861)
!864 = !DILocation(line: 155, column: 26, scope: !861)
!865 = !DILocation(line: 155, column: 9, scope: !861)
!866 = !DILocation(line: 155, column: 32, scope: !861)
!867 = !DILocation(line: 156, column: 13, scope: !835)
!868 = !DILocation(line: 156, column: 12, scope: !835)
!869 = !DILocation(line: 156, column: 19, scope: !835)
!870 = !DILocation(line: 156, column: 4, scope: !835)
!871 = !DILocation(line: 157, column: 13, scope: !835)
!872 = !DILocation(line: 157, column: 12, scope: !835)
!873 = !DILocation(line: 157, column: 19, scope: !835)
!874 = !DILocation(line: 157, column: 4, scope: !835)
!875 = !DILocation(line: 158, column: 4, scope: !835)
!876 = distinct !{!876, !875}
!877 = !DILocation(line: 158, column: 13, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !395, discriminator: 1)
!879 = distinct !DILexicalBlock(scope: !880, file: !395, line: 158, column: 11)
!880 = distinct !DILexicalBlock(scope: !835, file: !395, line: 158, column: 6)
!881 = !DILocation(line: 158, column: 12, scope: !878)
!882 = !DILocation(line: 158, column: 19, scope: !878)
!883 = !DILocation(line: 158, column: 11, scope: !878)
!884 = !DILocation(line: 158, column: 35, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !395, discriminator: 2)
!886 = distinct !DILexicalBlock(scope: !879, file: !395, line: 158, column: 26)
!887 = !DILocation(line: 158, column: 34, scope: !885)
!888 = !DILocation(line: 158, column: 41, scope: !885)
!889 = !DILocation(line: 158, column: 28, scope: !885)
!890 = !DILocation(line: 158, column: 51, scope: !885)
!891 = !DILocation(line: 158, column: 50, scope: !885)
!892 = !DILocation(line: 158, column: 57, scope: !885)
!893 = !DILocation(line: 158, column: 63, scope: !885)
!894 = !DILocation(line: 158, column: 5, scope: !885)
!895 = !DILocation(line: 158, column: 7, scope: !896)
!896 = !DILexicalBlockFile(scope: !880, file: !395, discriminator: 3)
!897 = !DILocation(line: 159, column: 4, scope: !835)
!898 = distinct !{!898, !897}
!899 = !DILocation(line: 159, column: 12, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !395, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !902, file: !395, line: 159, column: 11)
!902 = distinct !DILexicalBlock(scope: !835, file: !395, line: 159, column: 6)
!903 = !DILocation(line: 159, column: 11, scope: !900)
!904 = !DILocation(line: 159, column: 25, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !395, discriminator: 2)
!906 = distinct !DILexicalBlock(scope: !901, file: !395, line: 159, column: 17)
!907 = !DILocation(line: 159, column: 24, scope: !905)
!908 = !DILocation(line: 159, column: 19, scope: !905)
!909 = !DILocation(line: 159, column: 32, scope: !905)
!910 = !DILocation(line: 159, column: 36, scope: !905)
!911 = !DILocation(line: 159, column: 5, scope: !905)
!912 = !DILocation(line: 159, column: 7, scope: !913)
!913 = !DILexicalBlockFile(scope: !902, file: !395, discriminator: 3)
!914 = !DILocation(line: 160, column: 1, scope: !835)
