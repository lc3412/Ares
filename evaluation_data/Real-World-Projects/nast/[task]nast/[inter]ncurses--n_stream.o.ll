; ModuleID = './[inter]ncurses--n_stream.o.i'
source_filename = "./[inter]ncurses--n_stream.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scrolling_window = type { %struct._win_st*, %struct._win_st*, i32, i32, i32, i32, i32, i32, i8* }
%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16 }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }
%struct.stream_thread = type { [30 x i8], [200 x i8] }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.tagMENU = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8*, i16, %struct._win_st*, %struct._win_st*, %struct._win_st*, %struct._win_st*, %struct.tagITEM**, i16, %struct.tagITEM*, i16, i64, i64, i64, i8, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, void (%struct.tagMENU*)*, i8*, i8*, i32, i16 }
%struct.tagITEM = type { %struct.TEXT, %struct.TEXT, %struct.tagMENU*, i8*, i32, i16, i16, i16, i8, %struct.tagITEM*, %struct.tagITEM*, %struct.tagITEM*, %struct.tagITEM* }
%struct.TEXT = type { i8*, i16 }
%struct.thread_conn = type { [30 x i8], i64, i64, i16, i16, i32 }
%struct.thread_conn_rst = type { [30 x i8], i64, i64, i16, i16, i32 }
%struct.thread_arp = type { [30 x i8], i32 }
%struct.connections = type { i64, i64, i16, i16, i64, i64, i32, i32, i32 }
%struct.cnn = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i16, i16, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_tcp_hdr = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }

@line = global i32 1, align 4
@col = global i32 3, align 4
@tmp = common global i32 0, align 4
@princ = common global %struct.scrolling_window* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@st_thread_data = common global [1 x %struct.stream_thread] zeroinitializer, align 16
@thID = common global [6 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"NULL DATA\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@packet = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"pcap_open_offline() error: %s\0A\0A\00", align 1
@offset = common global i16 0, align 2
@.str.4 = private unnamed_addr constant [13 x i8] c"Offset error\00", align 1
@fp = common global %struct.bpf_program zeroinitializer, align 8
@netp = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Error calling pcap_compile\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error calling pcap_setfilter\0A\0A\00", align 1
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@logd = common global %struct._IO_FILE* null, align 8
@npkt = common global i32 0, align 4
@buf = common global i8* null, align 8
@descr = common global %struct.pcap* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@maskp = common global i32 0, align 4
@datalink = common global i32 0, align 4
@logname = common global i8* null, align 8
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
@th_data = common global [1 x %struct.thread_conn] zeroinitializer, align 16
@th_r_data = common global [1 x %struct.thread_conn_rst] zeroinitializer, align 16
@th_arp_data = common global [1 x %struct.thread_arp] zeroinitializer, align 16
@c_inf = common global [30 x %struct.connections] zeroinitializer, align 16
@sf = common global [30 x %struct.cnn] zeroinitializer, align 16
@nmax = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @streamg(i8*, i8*) #0 !dbg !485 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !489, metadata !490), !dbg !491
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !492, metadata !490), !dbg !493
  store i32 1, i32* @line, align 4, !dbg !494
  store i32 3, i32* @col, align 4, !dbg !495
  %6 = load i32, i32* @line, align 4, !dbg !496
  store i32 %6, i32* @tmp, align 4, !dbg !497
  %7 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !498
  %8 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %7, i32 0, i32 0, !dbg !499
  %9 = load %struct._win_st*, %struct._win_st** %8, align 8, !dbg !499
  %10 = call i32 @werase(%struct._win_st* %9), !dbg !500
  %11 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !501
  call void @winscroll(%struct.scrolling_window* %11, i32 -1000), !dbg !502
  br label %12, !dbg !503, !llvm.loop !504

; <label>:12:                                     ; preds = %2
  %13 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !505
  %14 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %13, i32 0, i32 0, !dbg !508
  %15 = load %struct._win_st*, %struct._win_st** %14, align 8, !dbg !508
  %16 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !509
  %17 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %16, i32 0, i32 2, !dbg !510
  %18 = load i32, i32* %17, align 8, !dbg !510
  %19 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !511
  %20 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %19, i32 0, i32 7, !dbg !512
  %21 = load i32, i32* %20, align 4, !dbg !512
  %22 = add nsw i32 %21, 1, !dbg !513
  %23 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !514
  %24 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %23, i32 0, i32 6, !dbg !515
  %25 = load i32, i32* %24, align 8, !dbg !515
  %26 = add nsw i32 %25, 1, !dbg !516
  %27 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !517
  %28 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %27, i32 0, i32 7, !dbg !518
  %29 = load i32, i32* %28, align 4, !dbg !518
  %30 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !519
  %31 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %30, i32 0, i32 4, !dbg !520
  %32 = load i32, i32* %31, align 8, !dbg !520
  %33 = add nsw i32 %29, %32, !dbg !521
  %34 = sub nsw i32 %33, 2, !dbg !522
  %35 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !523
  %36 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %35, i32 0, i32 5, !dbg !524
  %37 = load i32, i32* %36, align 4, !dbg !524
  %38 = sub nsw i32 %37, 1, !dbg !525
  %39 = call i32 @pnoutrefresh(%struct._win_st* %15, i32 %18, i32 0, i32 %22, i32 %26, i32 %34, i32 %38), !dbg !526
  %40 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !527
  %41 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %40, i32 0, i32 1, !dbg !528
  %42 = load %struct._win_st*, %struct._win_st** %41, align 8, !dbg !528
  %43 = call i32 @wnoutrefresh(%struct._win_st* %42), !dbg !529
  %44 = call i32 @doupdate(), !dbg !531
  br label %45, !dbg !533

; <label>:45:                                     ; preds = %12
  %46 = load i8*, i8** %5, align 8, !dbg !534
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #6, !dbg !536
  %48 = icmp eq i8* %47, null, !dbg !537
  br i1 %48, label %49, label %50, !dbg !538

; <label>:49:                                     ; preds = %45
  store i32 -1, i32* %3, align 4, !dbg !539
  br label %56, !dbg !539

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %4, align 8, !dbg !540
  %52 = call i8* @strcpy(i8* getelementptr inbounds ([1 x %struct.stream_thread], [1 x %struct.stream_thread]* @st_thread_data, i64 0, i64 0, i32 0, i32 0), i8* %51) #7, !dbg !541
  %53 = load i8*, i8** %5, align 8, !dbg !542
  %54 = call i8* @strcpy(i8* getelementptr inbounds ([1 x %struct.stream_thread], [1 x %struct.stream_thread]* @st_thread_data, i64 0, i64 0, i32 1, i32 0), i8* %53) #7, !dbg !543
  %55 = call i32 @pthread_create(i64* getelementptr inbounds ([6 x i64], [6 x i64]* @thID, i64 0, i64 5), %union.pthread_attr_t* null, i8* (i8*)* @read_packet, i8* getelementptr inbounds ([1 x %struct.stream_thread], [1 x %struct.stream_thread]* @st_thread_data, i32 0, i32 0, i32 0, i32 0)) #7, !dbg !544
  store i32 0, i32* %3, align 4, !dbg !545
  br label %56, !dbg !545

; <label>:56:                                     ; preds = %50, %49
  %57 = load i32, i32* %3, align 4, !dbg !546
  ret i32 %57, !dbg !546
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @werase(%struct._win_st*) #2

declare void @winscroll(%struct.scrolling_window*, i32) #2

declare i32 @pnoutrefresh(%struct._win_st*, i32, i32, i32, i32, i32, i32) #2

declare i32 @wnoutrefresh(%struct._win_st*) #2

declare i32 @doupdate() #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @read_packet(i8*) #0 !dbg !547 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.libnet_ipv4_hdr*, align 8
  %6 = alloca %struct.libnet_tcp_hdr*, align 8
  %7 = alloca %struct.pcap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca %struct.stream_thread*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !550, metadata !490), !dbg !551
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !552, metadata !490), !dbg !556
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %5, metadata !557, metadata !490), !dbg !558
  call void @llvm.dbg.declare(metadata %struct.libnet_tcp_hdr** %6, metadata !559, metadata !490), !dbg !560
  call void @llvm.dbg.declare(metadata %struct.pcap** %7, metadata !561, metadata !490), !dbg !562
  call void @llvm.dbg.declare(metadata i8** %8, metadata !563, metadata !490), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %9, metadata !565, metadata !490), !dbg !566
  call void @llvm.dbg.declare(metadata i16* %10, metadata !567, metadata !490), !dbg !568
  call void @llvm.dbg.declare(metadata %struct.stream_thread** %11, metadata !569, metadata !490), !dbg !570
  %12 = load i8*, i8** %3, align 8, !dbg !571
  %13 = bitcast i8* %12 to %struct.stream_thread*, !dbg !572
  store %struct.stream_thread* %13, %struct.stream_thread** %11, align 8, !dbg !573
  store i8* null, i8** @packet, align 8, !dbg !574
  store i8* null, i8** %8, align 8, !dbg !575
  %14 = load i8*, i8** @tcpdl, align 8, !dbg !576
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !578
  %16 = call %struct.pcap* @pcap_open_offline(i8* %14, i8* %15), !dbg !579
  store %struct.pcap* %16, %struct.pcap** %7, align 8, !dbg !580
  %17 = icmp eq %struct.pcap* %16, null, !dbg !581
  br i1 %17, label %18, label %21, !dbg !582

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !583
  %20 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %19), !dbg !585
  br label %21, !dbg !586

; <label>:21:                                     ; preds = %18, %1
  %22 = load %struct.stream_thread*, %struct.stream_thread** %11, align 8, !dbg !587
  %23 = getelementptr inbounds %struct.stream_thread, %struct.stream_thread* %22, i32 0, i32 0, !dbg !589
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %23, i32 0, i32 0, !dbg !587
  %25 = load %struct.pcap*, %struct.pcap** %7, align 8, !dbg !590
  %26 = call i32 @device(i8* %24, %struct.pcap* %25), !dbg !591
  %27 = trunc i32 %26 to i16, !dbg !592
  store i16 %27, i16* @offset, align 2, !dbg !593
  %28 = sext i16 %27 to i32, !dbg !594
  %29 = icmp eq i32 %28, -1, !dbg !595
  br i1 %29, label %30, label %32, !dbg !596

; <label>:30:                                     ; preds = %21
  %31 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !597
  br label %32, !dbg !597

; <label>:32:                                     ; preds = %30, %21
  %33 = call noalias i8* @malloc(i64 1024) #7, !dbg !598
  store i8* %33, i8** %8, align 8, !dbg !599
  %34 = load %struct.pcap*, %struct.pcap** %7, align 8, !dbg !600
  %35 = load %struct.stream_thread*, %struct.stream_thread** %11, align 8, !dbg !602
  %36 = getelementptr inbounds %struct.stream_thread, %struct.stream_thread* %35, i32 0, i32 1, !dbg !603
  %37 = getelementptr inbounds [200 x i8], [200 x i8]* %36, i32 0, i32 0, !dbg !602
  %38 = load i32, i32* @netp, align 4, !dbg !604
  %39 = call i32 @pcap_compile(%struct.pcap* %34, %struct.bpf_program* @fp, i8* %37, i32 0, i32 %38), !dbg !605
  %40 = icmp eq i32 %39, -1, !dbg !606
  br i1 %40, label %41, label %43, !dbg !607

; <label>:41:                                     ; preds = %32
  %42 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)), !dbg !608
  br label %43, !dbg !610

; <label>:43:                                     ; preds = %41, %32
  %44 = load %struct.pcap*, %struct.pcap** %7, align 8, !dbg !611
  %45 = call i32 @pcap_setfilter(%struct.pcap* %44, %struct.bpf_program* @fp), !dbg !613
  %46 = icmp eq i32 %45, -1, !dbg !614
  br i1 %46, label %47, label %49, !dbg !615

; <label>:47:                                     ; preds = %43
  %48 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)), !dbg !616
  br label %49, !dbg !618

; <label>:49:                                     ; preds = %47, %43
  br label %50, !dbg !619

; <label>:50:                                     ; preds = %49, %55, %68, %69
  %51 = load %struct.pcap*, %struct.pcap** %7, align 8, !dbg !620
  %52 = call i8* @pcap_next(%struct.pcap* %51, %struct.pcap_pkthdr* @hdr), !dbg !622
  store i8* %52, i8** @packet, align 8, !dbg !623
  %53 = load i8*, i8** @packet, align 8, !dbg !624
  %54 = icmp eq i8* %53, null, !dbg !626
  br i1 %54, label %55, label %56, !dbg !627

; <label>:55:                                     ; preds = %50
  br label %50, !dbg !628, !llvm.loop !629

; <label>:56:                                     ; preds = %50
  %57 = load i8*, i8** @packet, align 8, !dbg !630
  %58 = load i16, i16* @offset, align 2, !dbg !631
  %59 = sext i16 %58 to i32, !dbg !631
  %60 = sext i32 %59 to i64, !dbg !632
  %61 = getelementptr inbounds i8, i8* %57, i64 %60, !dbg !632
  %62 = bitcast i8* %61 to %struct.libnet_ipv4_hdr*, !dbg !633
  store %struct.libnet_ipv4_hdr* %62, %struct.libnet_ipv4_hdr** %5, align 8, !dbg !634
  %63 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %5, align 8, !dbg !635
  %64 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %63, i32 0, i32 6, !dbg !637
  %65 = load i8, i8* %64, align 1, !dbg !637
  %66 = zext i8 %65 to i32, !dbg !635
  %67 = icmp ne i32 %66, 6, !dbg !638
  br i1 %67, label %68, label %69, !dbg !639

; <label>:68:                                     ; preds = %56
  br label %50, !dbg !640, !llvm.loop !629

; <label>:69:                                     ; preds = %56
  %70 = load i8*, i8** @packet, align 8, !dbg !642
  %71 = load i16, i16* @offset, align 2, !dbg !643
  %72 = sext i16 %71 to i32, !dbg !643
  %73 = sext i32 %72 to i64, !dbg !644
  %74 = getelementptr inbounds i8, i8* %70, i64 %73, !dbg !644
  %75 = getelementptr inbounds i8, i8* %74, i64 20, !dbg !645
  %76 = bitcast i8* %75 to %struct.libnet_tcp_hdr*, !dbg !646
  store %struct.libnet_tcp_hdr* %76, %struct.libnet_tcp_hdr** %6, align 8, !dbg !647
  %77 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %6, align 8, !dbg !648
  %78 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %77, i32 0, i32 4, !dbg !649
  %79 = load i8, i8* %78, align 4, !dbg !649
  %80 = lshr i8 %79, 4, !dbg !649
  %81 = zext i8 %80 to i32, !dbg !648
  %82 = mul nsw i32 %81, 4, !dbg !650
  %83 = trunc i32 %82 to i16, !dbg !648
  store i16 %83, i16* %10, align 2, !dbg !651
  %84 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %5, align 8, !dbg !652
  %85 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %84, i32 0, i32 2, !dbg !653
  %86 = load i16, i16* %85, align 2, !dbg !653
  %87 = call zeroext i16 @ntohs(i16 zeroext %86) #1, !dbg !654
  %88 = zext i16 %87 to i32, !dbg !654
  %89 = sub nsw i32 %88, 20, !dbg !655
  %90 = load i16, i16* %10, align 2, !dbg !656
  %91 = zext i16 %90 to i32, !dbg !656
  %92 = sub nsw i32 %89, %91, !dbg !657
  store i32 %92, i32* %9, align 4, !dbg !658
  %93 = load i8*, i8** @packet, align 8, !dbg !659
  %94 = load i16, i16* @offset, align 2, !dbg !660
  %95 = sext i16 %94 to i32, !dbg !660
  %96 = sext i32 %95 to i64, !dbg !661
  %97 = getelementptr inbounds i8, i8* %93, i64 %96, !dbg !661
  %98 = getelementptr inbounds i8, i8* %97, i64 20, !dbg !662
  %99 = load i16, i16* %10, align 2, !dbg !663
  %100 = zext i16 %99 to i32, !dbg !663
  %101 = sext i32 %100 to i64, !dbg !664
  %102 = getelementptr inbounds i8, i8* %98, i64 %101, !dbg !664
  store i8* %102, i8** %8, align 8, !dbg !665
  %103 = load i8*, i8** %8, align 8, !dbg !666
  %104 = load i32, i32* %9, align 4, !dbg !667
  call void @data_sniffo_stream(i8* %103, i32 %104), !dbg !668
  br label %50, !dbg !669, !llvm.loop !629
                                                  ; No predecessors!
  %106 = load i8*, i8** %2, align 8, !dbg !671
  ret i8* %106, !dbg !671
}

; Function Attrs: nounwind uwtable
define void @data_sniffo_stream(i8*, i32) #0 !dbg !672 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !675, metadata !490), !dbg !676
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !677, metadata !490), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %5, metadata !679, metadata !490), !dbg !680
  %6 = load i8*, i8** %3, align 8, !dbg !681
  %7 = icmp eq i8* %6, null, !dbg !683
  br i1 %7, label %8, label %51, !dbg !684

; <label>:8:                                      ; preds = %2
  %9 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !685
  %10 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %9, i32 0, i32 0, !dbg !687
  %11 = load %struct._win_st*, %struct._win_st** %10, align 8, !dbg !687
  %12 = load i32, i32* @line, align 4, !dbg !688
  %13 = load i32, i32* @col, align 4, !dbg !689
  %14 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)), !dbg !690
  br label %15, !dbg !691, !llvm.loop !692

; <label>:15:                                     ; preds = %8
  %16 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !693
  %17 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %16, i32 0, i32 0, !dbg !696
  %18 = load %struct._win_st*, %struct._win_st** %17, align 8, !dbg !696
  %19 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !697
  %20 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %19, i32 0, i32 2, !dbg !698
  %21 = load i32, i32* %20, align 8, !dbg !698
  %22 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !699
  %23 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %22, i32 0, i32 7, !dbg !700
  %24 = load i32, i32* %23, align 4, !dbg !700
  %25 = add nsw i32 %24, 1, !dbg !701
  %26 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !702
  %27 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %26, i32 0, i32 6, !dbg !703
  %28 = load i32, i32* %27, align 8, !dbg !703
  %29 = add nsw i32 %28, 1, !dbg !704
  %30 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !705
  %31 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %30, i32 0, i32 7, !dbg !706
  %32 = load i32, i32* %31, align 4, !dbg !706
  %33 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !707
  %34 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %33, i32 0, i32 4, !dbg !708
  %35 = load i32, i32* %34, align 8, !dbg !708
  %36 = add nsw i32 %32, %35, !dbg !709
  %37 = sub nsw i32 %36, 2, !dbg !710
  %38 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !711
  %39 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %38, i32 0, i32 5, !dbg !712
  %40 = load i32, i32* %39, align 4, !dbg !712
  %41 = sub nsw i32 %40, 1, !dbg !713
  %42 = call i32 @pnoutrefresh(%struct._win_st* %18, i32 %21, i32 0, i32 %25, i32 %29, i32 %37, i32 %41), !dbg !714
  %43 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !715
  %44 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %43, i32 0, i32 1, !dbg !716
  %45 = load %struct._win_st*, %struct._win_st** %44, align 8, !dbg !716
  %46 = call i32 @wnoutrefresh(%struct._win_st* %45), !dbg !717
  %47 = call i32 @doupdate(), !dbg !719
  br label %48, !dbg !721

; <label>:48:                                     ; preds = %15
  %49 = load i32, i32* @line, align 4, !dbg !722
  %50 = add nsw i32 %49, 1, !dbg !722
  store i32 %50, i32* @line, align 4, !dbg !722
  br label %51, !dbg !723

; <label>:51:                                     ; preds = %48, %2
  store i32 0, i32* %5, align 4, !dbg !724
  br label %52, !dbg !726

; <label>:52:                                     ; preds = %175, %51
  %53 = load i32, i32* %5, align 4, !dbg !727
  %54 = load i32, i32* %4, align 4, !dbg !730
  %55 = icmp ult i32 %53, %54, !dbg !731
  br i1 %55, label %56, label %178, !dbg !732

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %5, align 4, !dbg !733
  %58 = sext i32 %57 to i64, !dbg !736
  %59 = load i8*, i8** %3, align 8, !dbg !736
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !736
  %61 = load i8, i8* %60, align 1, !dbg !736
  %62 = sext i8 %61 to i32, !dbg !737
  %63 = sext i32 %62 to i64, !dbg !738
  %64 = call i16** @__ctype_b_loc() #1, !dbg !739
  %65 = load i16*, i16** %64, align 8, !dbg !740
  %66 = getelementptr inbounds i16, i16* %65, i64 %63, !dbg !738
  %67 = load i16, i16* %66, align 2, !dbg !738
  %68 = zext i16 %67 to i32, !dbg !738
  %69 = and i32 %68, 4, !dbg !741
  %70 = icmp ne i32 %69, 0, !dbg !741
  br i1 %70, label %86, label %71, !dbg !742

; <label>:71:                                     ; preds = %56
  %72 = load i32, i32* %5, align 4, !dbg !743
  %73 = sext i32 %72 to i64, !dbg !745
  %74 = load i8*, i8** %3, align 8, !dbg !745
  %75 = getelementptr inbounds i8, i8* %74, i64 %73, !dbg !745
  %76 = load i8, i8* %75, align 1, !dbg !745
  %77 = sext i8 %76 to i32, !dbg !746
  %78 = sext i32 %77 to i64, !dbg !747
  %79 = call i16** @__ctype_b_loc() #1, !dbg !748
  %80 = load i16*, i16** %79, align 8, !dbg !749
  %81 = getelementptr inbounds i16, i16* %80, i64 %78, !dbg !747
  %82 = load i16, i16* %81, align 2, !dbg !747
  %83 = zext i16 %82 to i32, !dbg !747
  %84 = and i32 %83, 8, !dbg !750
  %85 = icmp ne i32 %84, 0, !dbg !750
  br i1 %85, label %86, label %135, !dbg !751

; <label>:86:                                     ; preds = %71, %56
  %87 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !752
  %88 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %87, i32 0, i32 0, !dbg !754
  %89 = load %struct._win_st*, %struct._win_st** %88, align 8, !dbg !754
  %90 = load i32, i32* @line, align 4, !dbg !755
  %91 = load i32, i32* @col, align 4, !dbg !756
  %92 = load i32, i32* %5, align 4, !dbg !757
  %93 = sext i32 %92 to i64, !dbg !758
  %94 = load i8*, i8** %3, align 8, !dbg !758
  %95 = getelementptr inbounds i8, i8* %94, i64 %93, !dbg !758
  %96 = load i8, i8* %95, align 1, !dbg !758
  %97 = sext i8 %96 to i32, !dbg !758
  %98 = call i32 (%struct._win_st*, i32, i32, i8*, ...) @mvwprintw(%struct._win_st* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %97), !dbg !759
  br label %99, !dbg !760, !llvm.loop !761

; <label>:99:                                     ; preds = %86
  %100 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !762
  %101 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %100, i32 0, i32 0, !dbg !765
  %102 = load %struct._win_st*, %struct._win_st** %101, align 8, !dbg !765
  %103 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !766
  %104 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %103, i32 0, i32 2, !dbg !767
  %105 = load i32, i32* %104, align 8, !dbg !767
  %106 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !768
  %107 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %106, i32 0, i32 7, !dbg !769
  %108 = load i32, i32* %107, align 4, !dbg !769
  %109 = add nsw i32 %108, 1, !dbg !770
  %110 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !771
  %111 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %110, i32 0, i32 6, !dbg !772
  %112 = load i32, i32* %111, align 8, !dbg !772
  %113 = add nsw i32 %112, 1, !dbg !773
  %114 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !774
  %115 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %114, i32 0, i32 7, !dbg !775
  %116 = load i32, i32* %115, align 4, !dbg !775
  %117 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !776
  %118 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %117, i32 0, i32 4, !dbg !777
  %119 = load i32, i32* %118, align 8, !dbg !777
  %120 = add nsw i32 %116, %119, !dbg !778
  %121 = sub nsw i32 %120, 2, !dbg !779
  %122 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !780
  %123 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %122, i32 0, i32 5, !dbg !781
  %124 = load i32, i32* %123, align 4, !dbg !781
  %125 = sub nsw i32 %124, 1, !dbg !782
  %126 = call i32 @pnoutrefresh(%struct._win_st* %102, i32 %105, i32 0, i32 %109, i32 %113, i32 %121, i32 %125), !dbg !783
  %127 = load %struct.scrolling_window*, %struct.scrolling_window** @princ, align 8, !dbg !784
  %128 = getelementptr inbounds %struct.scrolling_window, %struct.scrolling_window* %127, i32 0, i32 1, !dbg !785
  %129 = load %struct._win_st*, %struct._win_st** %128, align 8, !dbg !785
  %130 = call i32 @wnoutrefresh(%struct._win_st* %129), !dbg !786
  %131 = call i32 @doupdate(), !dbg !788
  br label %132, !dbg !790

; <label>:132:                                    ; preds = %99
  %133 = load i32, i32* @col, align 4, !dbg !791
  %134 = add nsw i32 %133, 1, !dbg !791
  store i32 %134, i32* @col, align 4, !dbg !791
  br label %174, !dbg !792

; <label>:135:                                    ; preds = %71
  %136 = load i32, i32* %5, align 4, !dbg !793
  %137 = sext i32 %136 to i64, !dbg !795
  %138 = load i8*, i8** %3, align 8, !dbg !795
  %139 = getelementptr inbounds i8, i8* %138, i64 %137, !dbg !795
  %140 = load i8, i8* %139, align 1, !dbg !795
  %141 = sext i8 %140 to i32, !dbg !795
  %142 = icmp eq i32 %141, 10, !dbg !796
  br i1 %142, label %143, label %146, !dbg !797

; <label>:143:                                    ; preds = %135
  %144 = load i32, i32* @line, align 4, !dbg !798
  %145 = add nsw i32 %144, 1, !dbg !798
  store i32 %145, i32* @line, align 4, !dbg !798
  store i32 3, i32* @col, align 4, !dbg !800
  br label %173, !dbg !801

; <label>:146:                                    ; preds = %135
  %147 = load i32, i32* %5, align 4, !dbg !802
  %148 = sext i32 %147 to i64, !dbg !804
  %149 = load i8*, i8** %3, align 8, !dbg !804
  %150 = getelementptr inbounds i8, i8* %149, i64 %148, !dbg !804
  %151 = load i8, i8* %150, align 1, !dbg !804
  %152 = sext i8 %151 to i32, !dbg !804
  %153 = icmp eq i32 %152, 13, !dbg !805
  br i1 %153, label %154, label %157, !dbg !806

; <label>:154:                                    ; preds = %146
  %155 = load i32, i32* @col, align 4, !dbg !807
  %156 = add nsw i32 %155, 5, !dbg !808
  store i32 %156, i32* @col, align 4, !dbg !809
  br label %172, !dbg !810

; <label>:157:                                    ; preds = %146
  %158 = load i32, i32* %5, align 4, !dbg !811
  %159 = sext i32 %158 to i64, !dbg !813
  %160 = load i8*, i8** %3, align 8, !dbg !813
  %161 = getelementptr inbounds i8, i8* %160, i64 %159, !dbg !813
  %162 = load i8, i8* %161, align 1, !dbg !813
  %163 = sext i8 %162 to i32, !dbg !813
  %164 = icmp eq i32 %163, 9, !dbg !814
  br i1 %164, label %165, label %168, !dbg !815

; <label>:165:                                    ; preds = %157
  %166 = load i32, i32* @col, align 4, !dbg !816
  %167 = add nsw i32 %166, 3, !dbg !817
  store i32 %167, i32* @col, align 4, !dbg !818
  br label %171, !dbg !819

; <label>:168:                                    ; preds = %157
  %169 = load i32, i32* @col, align 4, !dbg !820
  %170 = add nsw i32 %169, 1, !dbg !820
  store i32 %170, i32* @col, align 4, !dbg !820
  br label %171

; <label>:171:                                    ; preds = %168, %165
  br label %172

; <label>:172:                                    ; preds = %171, %154
  br label %173

; <label>:173:                                    ; preds = %172, %143
  br label %174

; <label>:174:                                    ; preds = %173, %132
  br label %175, !dbg !821

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %5, align 4, !dbg !822
  %177 = add nsw i32 %176, 1, !dbg !822
  store i32 %177, i32* %5, align 4, !dbg !822
  br label %52, !dbg !824, !llvm.loop !825

; <label>:178:                                    ; preds = %52
  ret void, !dbg !827
}

declare i32 @mvwprintw(%struct._win_st*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare %struct.pcap* @pcap_open_offline(i8*, i8*) #2

declare i32 @w_error(i32, i8*, ...) #2

declare i32 @device(i8*, %struct.pcap*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #2

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #2

declare i8* @pcap_next(%struct.pcap*, %struct.pcap_pkthdr*) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!482, !483}
!llvm.ident = !{!484}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, globals: !108)
!1 = !DIFile(filename: "[inter]ncurses--n_stream.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{!3, !18}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 40, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!21 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!22 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!23 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!24 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!25 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!26 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!27 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!28 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!29 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!30 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!31 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!32 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!33 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!34 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!35 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!36 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!37 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!38 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!39 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!40 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!41 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!42 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!43 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!44 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!45 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!46 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!47 = !{!48, !49, !50, !51, !64, !70, !94, !107}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_thread", file: !53, line: 33, size: 1840, align: 8, elements: !54)
!53 = !DIFile(filename: "ncurses/n_stream.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!54 = !{!55, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !52, file: !53, line: 35, baseType: !56, size: 240, align: 8)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 240, align: 8, elements: !58)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !{!59}
!59 = !DISubrange(count: 30)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s_sfilter", scope: !52, file: !53, line: 36, baseType: !61, size: 1600, align: 8, offset: 240)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1600, align: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 200)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !66, line: 33, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !68, line: 30, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!69 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !72, line: 666, size: 160, align: 32, elements: !73)
!72 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!73 = !{!74, !77, !78, !79, !81, !82, !83, !84, !85, !86, !93}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !71, file: !72, line: 669, baseType: !75, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !76, line: 48, baseType: !69)
!76 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !71, file: !72, line: 670, baseType: !75, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !71, file: !72, line: 676, baseType: !75, size: 8, align: 8, offset: 8)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !71, file: !72, line: 689, baseType: !80, size: 16, align: 16, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !76, line: 49, baseType: !50)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !71, file: !72, line: 690, baseType: !80, size: 16, align: 16, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !71, file: !72, line: 691, baseType: !80, size: 16, align: 16, offset: 48)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !71, file: !72, line: 704, baseType: !75, size: 8, align: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !71, file: !72, line: 705, baseType: !75, size: 8, align: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !71, file: !72, line: 706, baseType: !80, size: 16, align: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !71, file: !72, line: 707, baseType: !87, size: 32, align: 32, offset: 96)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, align: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !87, file: !19, line: 33, baseType: !90, size: 32, align: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 51, baseType: !92)
!92 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !71, file: !72, line: 707, baseType: !87, size: 32, align: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_tcp_hdr", file: !72, line: 1653, size: 160, align: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "th_sport", scope: !95, file: !72, line: 1655, baseType: !80, size: 16, align: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "th_dport", scope: !95, file: !72, line: 1656, baseType: !80, size: 16, align: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "th_seq", scope: !95, file: !72, line: 1657, baseType: !91, size: 32, align: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "th_ack", scope: !95, file: !72, line: 1658, baseType: !91, size: 32, align: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "th_x2", scope: !95, file: !72, line: 1660, baseType: !75, size: 4, align: 8, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "th_off", scope: !95, file: !72, line: 1661, baseType: !75, size: 4, align: 8, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "th_flags", scope: !95, file: !72, line: 1667, baseType: !75, size: 8, align: 8, offset: 104)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "th_win", scope: !95, file: !72, line: 1692, baseType: !80, size: 16, align: 16, offset: 112)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "th_sum", scope: !95, file: !72, line: 1693, baseType: !80, size: 16, align: 16, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "th_urp", scope: !95, file: !72, line: 1694, baseType: !80, size: 16, align: 16, offset: 144)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!108 = !{!109, !110, !111, !170, !172, !173, !174, !175, !193, !197, !202, !208, !209, !210, !211, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !242, !243, !246, !250, !251, !252, !253, !299, !300, !301, !315, !316, !317, !318, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !411, !412, !416, !417, !418, !419, !420, !424, !436, !446, !452, !465, !478, !479, !480}
!109 = distinct !DIGlobalVariable(name: "line", scope: !0, file: !53, line: 29, type: !49, isLocal: false, isDefinition: true, variable: i32* @line)
!110 = distinct !DIGlobalVariable(name: "col", scope: !0, file: !53, line: 30, type: !49, isLocal: false, isDefinition: true, variable: i32* @col)
!111 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !112, line: 98, type: !113, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!112 = !DIFile(filename: "ncurses/../include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 48, baseType: !116)
!115 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 241, size: 1728, align: 64, elements: !118)
!117 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !139, !140, !141, !142, !145, !146, !148, !152, !155, !157, !158, !159, !160, !161, !165, !166}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !116, file: !117, line: 242, baseType: !49, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !116, file: !117, line: 247, baseType: !107, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !116, file: !117, line: 248, baseType: !107, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !116, file: !117, line: 249, baseType: !107, size: 64, align: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !116, file: !117, line: 250, baseType: !107, size: 64, align: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !116, file: !117, line: 251, baseType: !107, size: 64, align: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !116, file: !117, line: 252, baseType: !107, size: 64, align: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !116, file: !117, line: 253, baseType: !107, size: 64, align: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !116, file: !117, line: 254, baseType: !107, size: 64, align: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !116, file: !117, line: 256, baseType: !107, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !116, file: !117, line: 257, baseType: !107, size: 64, align: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !116, file: !117, line: 258, baseType: !107, size: 64, align: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !116, file: !117, line: 260, baseType: !132, size: 64, align: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !117, line: 156, size: 192, align: 64, elements: !134)
!134 = !{!135, !136, !138}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !133, file: !117, line: 157, baseType: !132, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !133, file: !117, line: 158, baseType: !137, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !133, file: !117, line: 162, baseType: !49, size: 32, align: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !116, file: !117, line: 262, baseType: !137, size: 64, align: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !116, file: !117, line: 264, baseType: !49, size: 32, align: 32, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !116, file: !117, line: 268, baseType: !49, size: 32, align: 32, offset: 928)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !116, file: !117, line: 270, baseType: !143, size: 64, align: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 131, baseType: !144)
!144 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !116, file: !117, line: 274, baseType: !50, size: 16, align: 16, offset: 1024)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !116, file: !117, line: 275, baseType: !147, size: 8, align: 8, offset: 1040)
!147 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !116, file: !117, line: 276, baseType: !149, size: 8, align: 8, offset: 1048)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 8, align: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 1)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !116, file: !117, line: 280, baseType: !153, size: 64, align: 64, offset: 1088)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !117, line: 150, baseType: null)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !116, file: !117, line: 289, baseType: !156, size: 64, align: 64, offset: 1152)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 132, baseType: !144)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !116, file: !117, line: 297, baseType: !48, size: 64, align: 64, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !116, file: !117, line: 298, baseType: !48, size: 64, align: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !116, file: !117, line: 299, baseType: !48, size: 64, align: 64, offset: 1344)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !116, file: !117, line: 300, baseType: !48, size: 64, align: 64, offset: 1408)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !116, file: !117, line: 302, baseType: !162, size: 64, align: 64, offset: 1472)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 216, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!164 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !116, file: !117, line: 303, baseType: !49, size: 32, align: 32, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !116, file: !117, line: 305, baseType: !167, size: 160, align: 8, offset: 1568)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, align: 8, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 20)
!170 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !112, line: 99, type: !171, isLocal: false, isDefinition: true, variable: i16* @offset)
!171 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!172 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !112, line: 100, type: !49, isLocal: false, isDefinition: true, variable: i32* @npkt)
!173 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !112, line: 101, type: !64, isLocal: false, isDefinition: true, variable: i8** @packet)
!174 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !112, line: 102, type: !64, isLocal: false, isDefinition: true, variable: i8** @buf)
!175 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !112, line: 103, type: !176, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !177, line: 199, size: 192, align: 64, elements: !178)
!177 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!178 = !{!179, !187, !192}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !176, file: !177, line: 200, baseType: !180, size: 128, align: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !181, line: 30, size: 128, align: 64, elements: !182)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !180, file: !181, line: 32, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !68, line: 139, baseType: !144)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !180, file: !181, line: 33, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !68, line: 141, baseType: !144)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !176, file: !177, line: 201, baseType: !188, size: 32, align: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !189, line: 85, baseType: !190)
!189 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !66, line: 35, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !68, line: 32, baseType: !92)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !176, file: !177, line: 202, baseType: !188, size: 32, align: 32, offset: 160)
!193 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !112, line: 104, type: !194, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !177, line: 118, baseType: !196)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !177, line: 118, flags: DIFlagFwdDecl)
!197 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !198, line: 113, type: !199, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!198 = !DIFile(filename: "ncurses/n_nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !177, line: 119, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !177, line: 119, flags: DIFlagFwdDecl)
!202 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !112, line: 106, type: !203, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !177, line: 208, size: 96, align: 32, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !203, file: !177, line: 209, baseType: !190, size: 32, align: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !203, file: !177, line: 210, baseType: !190, size: 32, align: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !203, file: !177, line: 211, baseType: !190, size: 32, align: 32, offset: 64)
!208 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !112, line: 107, type: !188, isLocal: false, isDefinition: true, variable: i32* @maskp)
!209 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !112, line: 108, type: !188, isLocal: false, isDefinition: true, variable: i32* @netp)
!210 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !112, line: 109, type: !49, isLocal: false, isDefinition: true, variable: i32* @datalink)
!211 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !112, line: 110, type: !212, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !189, line: 104, size: 128, align: 64, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !212, file: !189, line: 105, baseType: !190, size: 32, align: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !212, file: !189, line: 106, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !189, line: 234, size: 64, align: 32, elements: !218)
!218 = !{!219, !222, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !217, file: !189, line: 235, baseType: !220, size: 16, align: 16)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !66, line: 34, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !68, line: 31, baseType: !50)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !217, file: !189, line: 236, baseType: !65, size: 8, align: 8, offset: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !217, file: !189, line: 237, baseType: !65, size: 8, align: 8, offset: 24)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !217, file: !189, line: 238, baseType: !188, size: 32, align: 32, offset: 32)
!225 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !112, line: 111, type: !107, isLocal: false, isDefinition: true, variable: i8** @logname)
!226 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !112, line: 112, type: !107, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!227 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !112, line: 113, type: !220, isLocal: false, isDefinition: true, variable: i16* @tr)
!228 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !112, line: 113, type: !220, isLocal: false, isDefinition: true, variable: i16* @tl)
!229 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !112, line: 114, type: !220, isLocal: false, isDefinition: true, variable: i16* @graph)
!230 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !112, line: 115, type: !220, isLocal: false, isDefinition: true, variable: i16* @cont)
!231 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !112, line: 117, type: !49, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!232 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !112, line: 118, type: !49, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!233 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !112, line: 119, type: !49, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!234 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !112, line: 120, type: !49, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!235 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !112, line: 121, type: !49, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!236 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !112, line: 122, type: !237, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, align: 64, elements: !240)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !239, line: 60, baseType: !164)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!240 = !{!241}
!241 = !DISubrange(count: 2)
!242 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !112, line: 123, type: !49, isLocal: false, isDefinition: true, variable: i32* @lg)
!243 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !112, line: 132, type: !244, isLocal: false, isDefinition: true, variable: i64* @tm)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !245, line: 75, baseType: !184)
!245 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!246 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !112, line: 133, type: !247, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 480, align: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 60)
!250 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !112, line: 136, type: !220, isLocal: false, isDefinition: true, variable: i16* @demonize)
!251 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !112, line: 138, type: !49, isLocal: false, isDefinition: true, variable: i32* @line_s)
!252 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !112, line: 139, type: !49, isLocal: false, isDefinition: true, variable: i32* @row_s)
!253 = distinct !DIGlobalVariable(name: "query", scope: !0, file: !198, line: 87, type: !254, isLocal: false, isDefinition: true, variable: %struct._win_st** @query)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW", file: !256, line: 372, baseType: !257)
!256 = !DIFile(filename: "/usr/include/curses.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_win_st", file: !256, line: 421, size: 768, align: 64, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !269, !270, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !284, !285, !286, !287, !288, !289, !298}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cury", scope: !257, file: !256, line: 423, baseType: !171, size: 16, align: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_curx", scope: !257, file: !256, line: 423, baseType: !171, size: 16, align: 16, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_maxy", scope: !257, file: !256, line: 426, baseType: !171, size: 16, align: 16, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_maxx", scope: !257, file: !256, line: 426, baseType: !171, size: 16, align: 16, offset: 48)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_begy", scope: !257, file: !256, line: 427, baseType: !171, size: 16, align: 16, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_begx", scope: !257, file: !256, line: 427, baseType: !171, size: 16, align: 16, offset: 80)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !257, file: !256, line: 429, baseType: !171, size: 16, align: 16, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_attrs", scope: !257, file: !256, line: 432, baseType: !267, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "attr_t", file: !256, line: 374, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "chtype", file: !256, line: 164, baseType: !164)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_bkgd", scope: !257, file: !256, line: 433, baseType: !268, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_notimeout", scope: !257, file: !256, line: 436, baseType: !271, size: 8, align: 8, offset: 256)
!271 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_clear", scope: !257, file: !256, line: 437, baseType: !271, size: 8, align: 8, offset: 264)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_leaveok", scope: !257, file: !256, line: 438, baseType: !271, size: 8, align: 8, offset: 272)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_scroll", scope: !257, file: !256, line: 439, baseType: !271, size: 8, align: 8, offset: 280)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_idlok", scope: !257, file: !256, line: 440, baseType: !271, size: 8, align: 8, offset: 288)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_idcok", scope: !257, file: !256, line: 441, baseType: !271, size: 8, align: 8, offset: 296)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_immed", scope: !257, file: !256, line: 442, baseType: !271, size: 8, align: 8, offset: 304)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !257, file: !256, line: 443, baseType: !271, size: 8, align: 8, offset: 312)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_use_keypad", scope: !257, file: !256, line: 444, baseType: !271, size: 8, align: 8, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_delay", scope: !257, file: !256, line: 445, baseType: !49, size: 32, align: 32, offset: 352)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_line", scope: !257, file: !256, line: 447, baseType: !282, size: 64, align: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldat", file: !256, line: 419, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_regtop", scope: !257, file: !256, line: 450, baseType: !171, size: 16, align: 16, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_regbottom", scope: !257, file: !256, line: 451, baseType: !171, size: 16, align: 16, offset: 464)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_parx", scope: !257, file: !256, line: 454, baseType: !49, size: 32, align: 32, offset: 480)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_pary", scope: !257, file: !256, line: 455, baseType: !49, size: 32, align: 32, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_parent", scope: !257, file: !256, line: 456, baseType: !254, size: 64, align: 64, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !257, file: !256, line: 464, baseType: !290, size: 96, align: 16, offset: 640)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdat", file: !256, line: 459, size: 96, align: 16, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_y", scope: !290, file: !256, line: 461, baseType: !171, size: 16, align: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_x", scope: !290, file: !256, line: 461, baseType: !171, size: 16, align: 16, offset: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_top", scope: !290, file: !256, line: 462, baseType: !171, size: 16, align: 16, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_left", scope: !290, file: !256, line: 462, baseType: !171, size: 16, align: 16, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_bottom", scope: !290, file: !256, line: 463, baseType: !171, size: 16, align: 16, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_right", scope: !290, file: !256, line: 463, baseType: !171, size: 16, align: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_yoffset", scope: !257, file: !256, line: 466, baseType: !171, size: 16, align: 16, offset: 736)
!299 = distinct !DIGlobalVariable(name: "werror", scope: !0, file: !198, line: 88, type: !254, isLocal: false, isDefinition: true, variable: %struct._win_st** @werror)
!300 = distinct !DIGlobalVariable(name: "help", scope: !0, file: !198, line: 89, type: !254, isLocal: false, isDefinition: true, variable: %struct._win_st** @help)
!301 = distinct !DIGlobalVariable(name: "princ", scope: !0, file: !198, line: 90, type: !302, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @princ)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "N_SCROLLWIN", file: !198, line: 61, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scrolling_window", file: !198, line: 49, size: 384, align: 64, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !304, file: !198, line: 51, baseType: !254, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !304, file: !198, line: 52, baseType: !254, size: 64, align: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "y_scroll", scope: !304, file: !198, line: 53, baseType: !49, size: 32, align: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "y_max", scope: !304, file: !198, line: 54, baseType: !49, size: 32, align: 32, offset: 160)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !304, file: !198, line: 55, baseType: !49, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !304, file: !198, line: 56, baseType: !49, size: 32, align: 32, offset: 224)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !304, file: !198, line: 57, baseType: !49, size: 32, align: 32, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !304, file: !198, line: 58, baseType: !49, size: 32, align: 32, offset: 288)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !304, file: !198, line: 59, baseType: !107, size: 64, align: 64, offset: 320)
!315 = distinct !DIGlobalVariable(name: "winfo", scope: !0, file: !198, line: 91, type: !302, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @winfo)
!316 = distinct !DIGlobalVariable(name: "wstream", scope: !0, file: !198, line: 92, type: !302, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @wstream)
!317 = distinct !DIGlobalVariable(name: "wconn", scope: !0, file: !198, line: 93, type: !302, isLocal: false, isDefinition: true, variable: %struct.scrolling_window** @wconn)
!318 = distinct !DIGlobalVariable(name: "my_nmenu", scope: !0, file: !198, line: 95, type: !319, isLocal: false, isDefinition: true, variable: %struct.tagMENU** @my_nmenu)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "MENU", file: !321, line: 132, baseType: !322)
!321 = !DIFile(filename: "/usr/include/menu.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagMENU", file: !321, line: 90, size: 1600, align: 64, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !373, !374, !375, !376, !377, !378, !379, !380, !385, !386, !387, !388, !389, !390, !392}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !322, file: !321, line: 92, baseType: !171, size: 16, align: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !322, file: !321, line: 93, baseType: !171, size: 16, align: 16, offset: 16)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !322, file: !321, line: 94, baseType: !171, size: 16, align: 16, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !322, file: !321, line: 95, baseType: !171, size: 16, align: 16, offset: 48)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "frows", scope: !322, file: !321, line: 96, baseType: !171, size: 16, align: 16, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fcols", scope: !322, file: !321, line: 97, baseType: !171, size: 16, align: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arows", scope: !322, file: !321, line: 98, baseType: !171, size: 16, align: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !322, file: !321, line: 99, baseType: !171, size: 16, align: 16, offset: 112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "desclen", scope: !322, file: !321, line: 100, baseType: !171, size: 16, align: 16, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "marklen", scope: !322, file: !321, line: 101, baseType: !171, size: 16, align: 16, offset: 144)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "itemlen", scope: !322, file: !321, line: 102, baseType: !171, size: 16, align: 16, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "spc_desc", scope: !322, file: !321, line: 103, baseType: !171, size: 16, align: 16, offset: 176)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "spc_cols", scope: !322, file: !321, line: 104, baseType: !171, size: 16, align: 16, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "spc_rows", scope: !322, file: !321, line: 105, baseType: !171, size: 16, align: 16, offset: 208)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !322, file: !321, line: 106, baseType: !107, size: 64, align: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pindex", scope: !322, file: !321, line: 107, baseType: !171, size: 16, align: 16, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !322, file: !321, line: 108, baseType: !254, size: 64, align: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !322, file: !321, line: 109, baseType: !254, size: 64, align: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "userwin", scope: !322, file: !321, line: 110, baseType: !254, size: 64, align: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "usersub", scope: !322, file: !321, line: 111, baseType: !254, size: 64, align: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !322, file: !321, line: 112, baseType: !345, size: 64, align: 64, offset: 640)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ITEM", file: !321, line: 86, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagITEM", file: !321, line: 69, size: 768, align: 64, elements: !349)
!349 = !{!350, !358, !359, !361, !362, !364, !365, !366, !367, !368, !370, !371, !372}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !321, line: 71, baseType: !351, size: 128, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT", file: !321, line: 67, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 63, size: 128, align: 64, elements: !353)
!353 = !{!354, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !352, file: !321, line: 65, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !352, file: !321, line: 66, baseType: !50, size: 16, align: 16, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !348, file: !321, line: 72, baseType: !351, size: 128, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "imenu", scope: !348, file: !321, line: 73, baseType: !360, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !348, file: !321, line: 74, baseType: !48, size: 64, align: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !348, file: !321, line: 75, baseType: !363, size: 32, align: 32, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Item_Options", file: !321, line: 50, baseType: !49)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !348, file: !321, line: 76, baseType: !171, size: 16, align: 16, offset: 416)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !348, file: !321, line: 77, baseType: !171, size: 16, align: 16, offset: 432)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !348, file: !321, line: 78, baseType: !171, size: 16, align: 16, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !321, line: 79, baseType: !271, size: 8, align: 8, offset: 464)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !348, file: !321, line: 81, baseType: !369, size: 64, align: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !348, file: !321, line: 82, baseType: !369, size: 64, align: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !348, file: !321, line: 83, baseType: !369, size: 64, align: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !348, file: !321, line: 84, baseType: !369, size: 64, align: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nitems", scope: !322, file: !321, line: 113, baseType: !171, size: 16, align: 16, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "curitem", scope: !322, file: !321, line: 114, baseType: !346, size: 64, align: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "toprow", scope: !322, file: !321, line: 115, baseType: !171, size: 16, align: 16, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fore", scope: !322, file: !321, line: 116, baseType: !268, size: 64, align: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !322, file: !321, line: 117, baseType: !268, size: 64, align: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "grey", scope: !322, file: !321, line: 118, baseType: !268, size: 64, align: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !322, file: !321, line: 119, baseType: !69, size: 8, align: 8, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "menuinit", scope: !322, file: !321, line: 121, baseType: !381, size: 64, align: 64, offset: 1152)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "Menu_Hook", file: !321, line: 88, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !360}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "menuterm", scope: !322, file: !321, line: 122, baseType: !381, size: 64, align: 64, offset: 1216)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "iteminit", scope: !322, file: !321, line: 123, baseType: !381, size: 64, align: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "itemterm", scope: !322, file: !321, line: 124, baseType: !381, size: 64, align: 64, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "userptr", scope: !322, file: !321, line: 126, baseType: !48, size: 64, align: 64, offset: 1408)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !322, file: !321, line: 127, baseType: !107, size: 64, align: 64, offset: 1472)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !322, file: !321, line: 129, baseType: !391, size: 32, align: 32, offset: 1536)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "Menu_Options", file: !321, line: 49, baseType: !49)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !322, file: !321, line: 130, baseType: !50, size: 16, align: 16, offset: 1568)
!393 = distinct !DIGlobalVariable(name: "curr_item", scope: !0, file: !198, line: 96, type: !346, isLocal: false, isDefinition: true, variable: %struct.tagITEM** @curr_item)
!394 = distinct !DIGlobalVariable(name: "my_nmenu_win", scope: !0, file: !198, line: 97, type: !254, isLocal: false, isDefinition: true, variable: %struct._win_st** @my_nmenu_win)
!395 = distinct !DIGlobalVariable(name: "pop_up", scope: !0, file: !198, line: 98, type: !254, isLocal: false, isDefinition: true, variable: %struct._win_st** @pop_up)
!396 = distinct !DIGlobalVariable(name: "mvar", scope: !0, file: !198, line: 100, type: !220, isLocal: false, isDefinition: true, variable: i16* @mvar)
!397 = distinct !DIGlobalVariable(name: "promisc", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @promisc)
!398 = distinct !DIGlobalVariable(name: "hex", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @hex)
!399 = distinct !DIGlobalVariable(name: "ascii", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @ascii)
!400 = distinct !DIGlobalVariable(name: "ld", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @ld)
!401 = distinct !DIGlobalVariable(name: "f", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @f)
!402 = distinct !DIGlobalVariable(name: "lr", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @lr)
!403 = distinct !DIGlobalVariable(name: "l", scope: !0, file: !198, line: 101, type: !220, isLocal: false, isDefinition: true, variable: i16* @l)
!404 = distinct !DIGlobalVariable(name: "flg", scope: !0, file: !198, line: 102, type: !220, isLocal: false, isDefinition: true, variable: i16* @flg)
!405 = distinct !DIGlobalVariable(name: "linm", scope: !0, file: !198, line: 103, type: !49, isLocal: false, isDefinition: true, variable: i32* @linm)
!406 = distinct !DIGlobalVariable(name: "fileds", scope: !0, file: !198, line: 104, type: !49, isLocal: false, isDefinition: true, variable: i32* @fileds)
!407 = distinct !DIGlobalVariable(name: "dev", scope: !0, file: !198, line: 105, type: !408, isLocal: false, isDefinition: true, variable: [10 x i8]* @dev)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 80, align: 8, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 10)
!411 = distinct !DIGlobalVariable(name: "n_filter", scope: !0, file: !198, line: 106, type: !247, isLocal: false, isDefinition: true, variable: [60 x i8]* @n_filter)
!412 = distinct !DIGlobalVariable(name: "ldfile", scope: !0, file: !198, line: 107, type: !413, isLocal: false, isDefinition: true, variable: [50 x i8]* @ldfile)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 400, align: 8, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 50)
!416 = distinct !DIGlobalVariable(name: "tcpdfile", scope: !0, file: !198, line: 108, type: !413, isLocal: false, isDefinition: true, variable: [50 x i8]* @tcpdfile)
!417 = distinct !DIGlobalVariable(name: "reportl", scope: !0, file: !198, line: 109, type: !413, isLocal: false, isDefinition: true, variable: [50 x i8]* @reportl)
!418 = distinct !DIGlobalVariable(name: "logfile", scope: !0, file: !198, line: 110, type: !413, isLocal: false, isDefinition: true, variable: [50 x i8]* @logfile)
!419 = distinct !DIGlobalVariable(name: "str", scope: !0, file: !198, line: 112, type: !194, isLocal: false, isDefinition: true, variable: %struct.pcap** @str)
!420 = distinct !DIGlobalVariable(name: "thID", scope: !0, file: !198, line: 116, type: !421, isLocal: false, isDefinition: true, variable: [6 x i64]* @thID)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 384, align: 64, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 6)
!424 = distinct !DIGlobalVariable(name: "th_data", scope: !0, file: !198, line: 144, type: !425, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_conn]* @th_data)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 448, align: 64, elements: !150)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_conn", file: !198, line: 118, size: 448, align: 64, elements: !427)
!427 = !{!428, !429, !432, !433, !434, !435}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !426, file: !198, line: 120, baseType: !56, size: 240, align: 8)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !426, file: !198, line: 121, baseType: !430, size: 64, align: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !66, line: 36, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !68, line: 33, baseType: !164)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !426, file: !198, line: 122, baseType: !430, size: 64, align: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !426, file: !198, line: 123, baseType: !220, size: 16, align: 16, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !426, file: !198, line: 124, baseType: !220, size: 16, align: 16, offset: 400)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !426, file: !198, line: 125, baseType: !49, size: 32, align: 32, offset: 416)
!436 = distinct !DIGlobalVariable(name: "th_r_data", scope: !0, file: !198, line: 145, type: !437, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_conn_rst]* @th_r_data)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 448, align: 64, elements: !150)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_conn_rst", file: !198, line: 134, size: 448, align: 64, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !438, file: !198, line: 136, baseType: !56, size: 240, align: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !438, file: !198, line: 137, baseType: !430, size: 64, align: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !438, file: !198, line: 138, baseType: !430, size: 64, align: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !438, file: !198, line: 139, baseType: !220, size: 16, align: 16, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !438, file: !198, line: 140, baseType: !220, size: 16, align: 16, offset: 400)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !438, file: !198, line: 141, baseType: !49, size: 32, align: 32, offset: 416)
!446 = distinct !DIGlobalVariable(name: "th_arp_data", scope: !0, file: !198, line: 146, type: !447, isLocal: false, isDefinition: true, variable: [1 x %struct.thread_arp]* @th_arp_data)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 288, align: 32, elements: !150)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_arp", file: !198, line: 128, size: 288, align: 32, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !448, file: !198, line: 130, baseType: !56, size: 240, align: 8)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !448, file: !198, line: 131, baseType: !49, size: 32, align: 32, offset: 256)
!452 = distinct !DIGlobalVariable(name: "c_inf", scope: !0, file: !198, line: 161, type: !453, isLocal: false, isDefinition: true, variable: [30 x %struct.connections]* @c_inf)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 13440, align: 64, elements: !58)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connections", file: !198, line: 148, size: 448, align: 64, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_ip", scope: !454, file: !198, line: 150, baseType: !164, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_ip", scope: !454, file: !198, line: 151, baseType: !164, size: 64, align: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !454, file: !198, line: 152, baseType: !50, size: 16, align: 16, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !454, file: !198, line: 153, baseType: !50, size: 16, align: 16, offset: 144)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !454, file: !198, line: 154, baseType: !430, size: 64, align: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !454, file: !198, line: 155, baseType: !430, size: 64, align: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lin", scope: !454, file: !198, line: 156, baseType: !49, size: 32, align: 32, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !454, file: !198, line: 157, baseType: !49, size: 32, align: 32, offset: 352)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !454, file: !198, line: 158, baseType: !49, size: 32, align: 32, offset: 384)
!465 = distinct !DIGlobalVariable(name: "sf", scope: !0, file: !198, line: 177, type: !466, isLocal: false, isDefinition: true, variable: [30 x %struct.cnn]* @sf)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 105600, align: 64, elements: !58)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cnn", file: !198, line: 164, size: 3520, align: 64, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !467, file: !198, line: 166, baseType: !61, size: 1600, align: 8)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sfilter", scope: !467, file: !198, line: 168, baseType: !61, size: 1600, align: 8, offset: 1600)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !467, file: !198, line: 169, baseType: !430, size: 64, align: 64, offset: 3200)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !467, file: !198, line: 170, baseType: !430, size: 64, align: 64, offset: 3264)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !467, file: !198, line: 171, baseType: !430, size: 64, align: 64, offset: 3328)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !467, file: !198, line: 172, baseType: !430, size: 64, align: 64, offset: 3392)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !467, file: !198, line: 173, baseType: !220, size: 16, align: 16, offset: 3456)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !467, file: !198, line: 174, baseType: !220, size: 16, align: 16, offset: 3472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cont", scope: !467, file: !198, line: 175, baseType: !49, size: 32, align: 32, offset: 3488)
!478 = distinct !DIGlobalVariable(name: "nmax", scope: !0, file: !198, line: 180, type: !49, isLocal: false, isDefinition: true, variable: i32* @nmax)
!479 = distinct !DIGlobalVariable(name: "tmp", scope: !0, file: !53, line: 31, type: !49, isLocal: false, isDefinition: true, variable: i32* @tmp)
!480 = distinct !DIGlobalVariable(name: "st_thread_data", scope: !0, file: !53, line: 39, type: !481, isLocal: false, isDefinition: true, variable: [1 x %struct.stream_thread]* @st_thread_data)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1840, align: 8, elements: !150)
!482 = !{i32 2, !"Dwarf Version", i32 4}
!483 = !{i32 2, !"Debug Info Version", i32 3}
!484 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!485 = distinct !DISubprogram(name: "streamg", scope: !53, file: !53, line: 41, type: !486, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!49, !107, !107}
!488 = !{}
!489 = !DILocalVariable(name: "dev", arg: 1, scope: !485, file: !53, line: 41, type: !107)
!490 = !DIExpression()
!491 = !DILocation(line: 41, column: 20, scope: !485)
!492 = !DILocalVariable(name: "sfilter", arg: 2, scope: !485, file: !53, line: 41, type: !107)
!493 = !DILocation(line: 41, column: 31, scope: !485)
!494 = !DILocation(line: 44, column: 9, scope: !485)
!495 = !DILocation(line: 45, column: 8, scope: !485)
!496 = !DILocation(line: 47, column: 8, scope: !485)
!497 = !DILocation(line: 47, column: 7, scope: !485)
!498 = !DILocation(line: 49, column: 11, scope: !485)
!499 = !DILocation(line: 49, column: 18, scope: !485)
!500 = !DILocation(line: 49, column: 4, scope: !485)
!501 = !DILocation(line: 50, column: 14, scope: !485)
!502 = !DILocation(line: 50, column: 4, scope: !485)
!503 = !DILocation(line: 51, column: 4, scope: !485)
!504 = distinct !{!504, !503}
!505 = !DILocation(line: 51, column: 22, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !53, discriminator: 1)
!507 = distinct !DILexicalBlock(scope: !485, file: !53, line: 51, column: 7)
!508 = !DILocation(line: 51, column: 29, scope: !506)
!509 = !DILocation(line: 51, column: 34, scope: !506)
!510 = !DILocation(line: 51, column: 41, scope: !506)
!511 = !DILocation(line: 51, column: 54, scope: !506)
!512 = !DILocation(line: 51, column: 61, scope: !506)
!513 = !DILocation(line: 51, column: 63, scope: !506)
!514 = !DILocation(line: 51, column: 68, scope: !506)
!515 = !DILocation(line: 51, column: 75, scope: !506)
!516 = !DILocation(line: 51, column: 77, scope: !506)
!517 = !DILocation(line: 51, column: 82, scope: !506)
!518 = !DILocation(line: 51, column: 89, scope: !506)
!519 = !DILocation(line: 51, column: 93, scope: !506)
!520 = !DILocation(line: 51, column: 100, scope: !506)
!521 = !DILocation(line: 51, column: 91, scope: !506)
!522 = !DILocation(line: 51, column: 106, scope: !506)
!523 = !DILocation(line: 51, column: 111, scope: !506)
!524 = !DILocation(line: 51, column: 118, scope: !506)
!525 = !DILocation(line: 51, column: 123, scope: !506)
!526 = !DILocation(line: 51, column: 9, scope: !506)
!527 = !DILocation(line: 51, column: 143, scope: !506)
!528 = !DILocation(line: 51, column: 150, scope: !506)
!529 = !DILocation(line: 51, column: 130, scope: !530)
!530 = !DILexicalBlockFile(scope: !506, file: !53, discriminator: 2)
!531 = !DILocation(line: 51, column: 156, scope: !532)
!532 = !DILexicalBlockFile(scope: !506, file: !53, discriminator: 3)
!533 = !DILocation(line: 51, column: 168, scope: !506)
!534 = !DILocation(line: 54, column: 14, scope: !535)
!535 = distinct !DILexicalBlock(scope: !485, file: !53, line: 54, column: 7)
!536 = !DILocation(line: 54, column: 7, scope: !535)
!537 = !DILocation(line: 54, column: 30, scope: !535)
!538 = !DILocation(line: 54, column: 7, scope: !485)
!539 = !DILocation(line: 55, column: 6, scope: !535)
!540 = !DILocation(line: 57, column: 35, scope: !485)
!541 = !DILocation(line: 57, column: 4, scope: !485)
!542 = !DILocation(line: 58, column: 39, scope: !485)
!543 = !DILocation(line: 58, column: 4, scope: !485)
!544 = !DILocation(line: 59, column: 4, scope: !485)
!545 = !DILocation(line: 61, column: 4, scope: !485)
!546 = !DILocation(line: 63, column: 1, scope: !485)
!547 = distinct !DISubprogram(name: "read_packet", scope: !53, file: !53, line: 108, type: !548, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !488)
!548 = !DISubroutineType(types: !549)
!549 = !{!48, !48}
!550 = !DILocalVariable(name: "threadid", arg: 1, scope: !547, file: !53, line: 108, type: !48)
!551 = !DILocation(line: 108, column: 25, scope: !547)
!552 = !DILocalVariable(name: "errbuf", scope: !547, file: !53, line: 110, type: !553)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2048, align: 8, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 256)
!556 = !DILocation(line: 110, column: 9, scope: !547)
!557 = !DILocalVariable(name: "ip", scope: !547, file: !53, line: 111, type: !70)
!558 = !DILocation(line: 111, column: 28, scope: !547)
!559 = !DILocalVariable(name: "tcp", scope: !547, file: !53, line: 112, type: !94)
!560 = !DILocation(line: 112, column: 27, scope: !547)
!561 = !DILocalVariable(name: "s_str", scope: !547, file: !53, line: 113, type: !194)
!562 = !DILocation(line: 113, column: 12, scope: !547)
!563 = !DILocalVariable(name: "data", scope: !547, file: !53, line: 114, type: !107)
!564 = !DILocation(line: 114, column: 10, scope: !547)
!565 = !DILocalVariable(name: "n", scope: !547, file: !53, line: 115, type: !49)
!566 = !DILocation(line: 115, column: 8, scope: !547)
!567 = !DILocalVariable(name: "TCP_SIZE_H", scope: !547, file: !53, line: 116, type: !220)
!568 = !DILocation(line: 116, column: 12, scope: !547)
!569 = !DILocalVariable(name: "sdata", scope: !547, file: !53, line: 117, type: !51)
!570 = !DILocation(line: 117, column: 26, scope: !547)
!571 = !DILocation(line: 118, column: 37, scope: !547)
!572 = !DILocation(line: 118, column: 12, scope: !547)
!573 = !DILocation(line: 118, column: 10, scope: !547)
!574 = !DILocation(line: 120, column: 18, scope: !547)
!575 = !DILocation(line: 120, column: 9, scope: !547)
!576 = !DILocation(line: 123, column: 35, scope: !577)
!577 = distinct !DILexicalBlock(scope: !547, file: !53, line: 123, column: 8)
!578 = !DILocation(line: 123, column: 41, scope: !577)
!579 = !DILocation(line: 123, column: 17, scope: !577)
!580 = !DILocation(line: 123, column: 15, scope: !577)
!581 = !DILocation(line: 123, column: 49, scope: !577)
!582 = !DILocation(line: 123, column: 8, scope: !547)
!583 = !DILocation(line: 125, column: 49, scope: !584)
!584 = distinct !DILexicalBlock(scope: !577, file: !53, line: 124, column: 6)
!585 = !DILocation(line: 125, column: 2, scope: !584)
!586 = !DILocation(line: 126, column: 6, scope: !584)
!587 = !DILocation(line: 129, column: 24, scope: !588)
!588 = distinct !DILexicalBlock(scope: !547, file: !53, line: 129, column: 8)
!589 = !DILocation(line: 129, column: 31, scope: !588)
!590 = !DILocation(line: 129, column: 37, scope: !588)
!591 = !DILocation(line: 129, column: 17, scope: !588)
!592 = !DILocation(line: 129, column: 16, scope: !588)
!593 = !DILocation(line: 129, column: 15, scope: !588)
!594 = !DILocation(line: 129, column: 8, scope: !588)
!595 = !DILocation(line: 129, column: 45, scope: !588)
!596 = !DILocation(line: 129, column: 8, scope: !547)
!597 = !DILocation(line: 130, column: 6, scope: !588)
!598 = !DILocation(line: 132, column: 11, scope: !547)
!599 = !DILocation(line: 132, column: 9, scope: !547)
!600 = !DILocation(line: 134, column: 20, scope: !601)
!601 = distinct !DILexicalBlock(scope: !547, file: !53, line: 134, column: 7)
!602 = !DILocation(line: 134, column: 30, scope: !601)
!603 = !DILocation(line: 134, column: 37, scope: !601)
!604 = !DILocation(line: 134, column: 49, scope: !601)
!605 = !DILocation(line: 134, column: 7, scope: !601)
!606 = !DILocation(line: 134, column: 55, scope: !601)
!607 = !DILocation(line: 134, column: 7, scope: !547)
!608 = !DILocation(line: 136, column: 2, scope: !609)
!609 = distinct !DILexicalBlock(scope: !601, file: !53, line: 135, column: 6)
!610 = !DILocation(line: 137, column: 6, scope: !609)
!611 = !DILocation(line: 138, column: 22, scope: !612)
!612 = distinct !DILexicalBlock(scope: !547, file: !53, line: 138, column: 7)
!613 = !DILocation(line: 138, column: 7, scope: !612)
!614 = !DILocation(line: 138, column: 33, scope: !612)
!615 = !DILocation(line: 138, column: 7, scope: !547)
!616 = !DILocation(line: 140, column: 2, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !53, line: 139, column: 6)
!618 = !DILocation(line: 141, column: 6, scope: !617)
!619 = !DILocation(line: 143, column: 4, scope: !547)
!620 = !DILocation(line: 146, column: 32, scope: !621)
!621 = distinct !DILexicalBlock(scope: !547, file: !53, line: 144, column: 6)
!622 = !DILocation(line: 146, column: 22, scope: !621)
!623 = !DILocation(line: 146, column: 9, scope: !621)
!624 = !DILocation(line: 147, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !53, line: 147, column: 5)
!626 = !DILocation(line: 147, column: 11, scope: !625)
!627 = !DILocation(line: 147, column: 5, scope: !621)
!628 = !DILocation(line: 148, column: 3, scope: !625)
!629 = distinct !{!629, !619}
!630 = !DILocation(line: 151, column: 35, scope: !621)
!631 = !DILocation(line: 151, column: 44, scope: !621)
!632 = !DILocation(line: 151, column: 42, scope: !621)
!633 = !DILocation(line: 151, column: 7, scope: !621)
!634 = !DILocation(line: 151, column: 5, scope: !621)
!635 = !DILocation(line: 152, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !621, file: !53, line: 152, column: 6)
!637 = !DILocation(line: 152, column: 10, scope: !636)
!638 = !DILocation(line: 152, column: 15, scope: !636)
!639 = !DILocation(line: 152, column: 6, scope: !621)
!640 = !DILocation(line: 152, column: 30, scope: !641)
!641 = !DILexicalBlockFile(scope: !636, file: !53, discriminator: 1)
!642 = !DILocation(line: 154, column: 35, scope: !621)
!643 = !DILocation(line: 154, column: 44, scope: !621)
!644 = !DILocation(line: 154, column: 42, scope: !621)
!645 = !DILocation(line: 154, column: 51, scope: !621)
!646 = !DILocation(line: 154, column: 8, scope: !621)
!647 = !DILocation(line: 154, column: 6, scope: !621)
!648 = !DILocation(line: 155, column: 15, scope: !621)
!649 = !DILocation(line: 155, column: 20, scope: !621)
!650 = !DILocation(line: 155, column: 26, scope: !621)
!651 = !DILocation(line: 155, column: 13, scope: !621)
!652 = !DILocation(line: 157, column: 10, scope: !621)
!653 = !DILocation(line: 157, column: 14, scope: !621)
!654 = !DILocation(line: 157, column: 4, scope: !621)
!655 = !DILocation(line: 157, column: 22, scope: !621)
!656 = !DILocation(line: 157, column: 39, scope: !621)
!657 = !DILocation(line: 157, column: 37, scope: !621)
!658 = !DILocation(line: 157, column: 3, scope: !621)
!659 = !DILocation(line: 158, column: 19, scope: !621)
!660 = !DILocation(line: 158, column: 28, scope: !621)
!661 = !DILocation(line: 158, column: 26, scope: !621)
!662 = !DILocation(line: 158, column: 35, scope: !621)
!663 = !DILocation(line: 158, column: 52, scope: !621)
!664 = !DILocation(line: 158, column: 50, scope: !621)
!665 = !DILocation(line: 158, column: 7, scope: !621)
!666 = !DILocation(line: 159, column: 21, scope: !621)
!667 = !DILocation(line: 159, column: 27, scope: !621)
!668 = !DILocation(line: 159, column: 2, scope: !621)
!669 = !DILocation(line: 143, column: 4, scope: !670)
!670 = !DILexicalBlockFile(scope: !547, file: !53, discriminator: 1)
!671 = !DILocation(line: 164, column: 1, scope: !547)
!672 = distinct !DISubprogram(name: "data_sniffo_stream", scope: !53, file: !53, line: 65, type: !673, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !488)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !107, !190}
!675 = !DILocalVariable(name: "data_info", arg: 1, scope: !672, file: !53, line: 65, type: !107)
!676 = !DILocation(line: 65, column: 32, scope: !672)
!677 = !DILocalVariable(name: "len", arg: 2, scope: !672, file: !53, line: 65, type: !190)
!678 = !DILocation(line: 65, column: 49, scope: !672)
!679 = !DILocalVariable(name: "i", scope: !672, file: !53, line: 67, type: !49)
!680 = !DILocation(line: 67, column: 8, scope: !672)
!681 = !DILocation(line: 69, column: 8, scope: !682)
!682 = distinct !DILexicalBlock(scope: !672, file: !53, line: 69, column: 8)
!683 = !DILocation(line: 69, column: 18, scope: !682)
!684 = !DILocation(line: 69, column: 8, scope: !672)
!685 = !DILocation(line: 71, column: 12, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !53, line: 70, column: 6)
!687 = !DILocation(line: 71, column: 19, scope: !686)
!688 = !DILocation(line: 71, column: 23, scope: !686)
!689 = !DILocation(line: 71, column: 28, scope: !686)
!690 = !DILocation(line: 71, column: 2, scope: !686)
!691 = !DILocation(line: 72, column: 2, scope: !686)
!692 = distinct !{!692, !691}
!693 = !DILocation(line: 72, column: 20, scope: !694)
!694 = !DILexicalBlockFile(scope: !695, file: !53, discriminator: 1)
!695 = distinct !DILexicalBlock(scope: !686, file: !53, line: 72, column: 5)
!696 = !DILocation(line: 72, column: 27, scope: !694)
!697 = !DILocation(line: 72, column: 32, scope: !694)
!698 = !DILocation(line: 72, column: 39, scope: !694)
!699 = !DILocation(line: 72, column: 52, scope: !694)
!700 = !DILocation(line: 72, column: 59, scope: !694)
!701 = !DILocation(line: 72, column: 61, scope: !694)
!702 = !DILocation(line: 72, column: 66, scope: !694)
!703 = !DILocation(line: 72, column: 73, scope: !694)
!704 = !DILocation(line: 72, column: 75, scope: !694)
!705 = !DILocation(line: 72, column: 80, scope: !694)
!706 = !DILocation(line: 72, column: 87, scope: !694)
!707 = !DILocation(line: 72, column: 91, scope: !694)
!708 = !DILocation(line: 72, column: 98, scope: !694)
!709 = !DILocation(line: 72, column: 89, scope: !694)
!710 = !DILocation(line: 72, column: 104, scope: !694)
!711 = !DILocation(line: 72, column: 109, scope: !694)
!712 = !DILocation(line: 72, column: 116, scope: !694)
!713 = !DILocation(line: 72, column: 121, scope: !694)
!714 = !DILocation(line: 72, column: 7, scope: !694)
!715 = !DILocation(line: 72, column: 141, scope: !694)
!716 = !DILocation(line: 72, column: 148, scope: !694)
!717 = !DILocation(line: 72, column: 128, scope: !718)
!718 = !DILexicalBlockFile(scope: !694, file: !53, discriminator: 2)
!719 = !DILocation(line: 72, column: 154, scope: !720)
!720 = !DILexicalBlockFile(scope: !694, file: !53, discriminator: 3)
!721 = !DILocation(line: 72, column: 166, scope: !694)
!722 = !DILocation(line: 73, column: 2, scope: !686)
!723 = !DILocation(line: 74, column: 6, scope: !686)
!724 = !DILocation(line: 76, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !672, file: !53, line: 76, column: 4)
!726 = !DILocation(line: 76, column: 9, scope: !725)
!727 = !DILocation(line: 76, column: 16, scope: !728)
!728 = !DILexicalBlockFile(scope: !729, file: !53, discriminator: 1)
!729 = distinct !DILexicalBlock(scope: !725, file: !53, line: 76, column: 4)
!730 = !DILocation(line: 76, column: 20, scope: !728)
!731 = !DILocation(line: 76, column: 18, scope: !728)
!732 = !DILocation(line: 76, column: 4, scope: !728)
!733 = !DILocation(line: 78, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !53, line: 78, column: 5)
!735 = distinct !DILexicalBlock(scope: !729, file: !53, line: 77, column: 6)
!736 = !DILocation(line: 78, column: 5, scope: !734)
!737 = !DILocation(line: 78, column: 26, scope: !734)
!738 = !DILocation(line: 78, column: 6, scope: !734)
!739 = !DILocation(line: 78, column: 8, scope: !734)
!740 = !DILocation(line: 78, column: 7, scope: !734)
!741 = !DILocation(line: 78, column: 9, scope: !734)
!742 = !DILocation(line: 78, column: 27, scope: !734)
!743 = !DILocation(line: 78, column: 40, scope: !744)
!744 = !DILexicalBlockFile(scope: !734, file: !53, discriminator: 1)
!745 = !DILocation(line: 78, column: 30, scope: !744)
!746 = !DILocation(line: 78, column: 51, scope: !744)
!747 = !DILocation(line: 78, column: 31, scope: !744)
!748 = !DILocation(line: 78, column: 33, scope: !744)
!749 = !DILocation(line: 78, column: 32, scope: !744)
!750 = !DILocation(line: 78, column: 34, scope: !744)
!751 = !DILocation(line: 78, column: 5, scope: !744)
!752 = !DILocation(line: 80, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !734, file: !53, line: 79, column: 4)
!754 = !DILocation(line: 80, column: 24, scope: !753)
!755 = !DILocation(line: 80, column: 28, scope: !753)
!756 = !DILocation(line: 80, column: 33, scope: !753)
!757 = !DILocation(line: 80, column: 52, scope: !753)
!758 = !DILocation(line: 80, column: 42, scope: !753)
!759 = !DILocation(line: 80, column: 7, scope: !753)
!760 = !DILocation(line: 81, column: 7, scope: !753)
!761 = distinct !{!761, !760}
!762 = !DILocation(line: 81, column: 25, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !53, discriminator: 1)
!764 = distinct !DILexicalBlock(scope: !753, file: !53, line: 81, column: 10)
!765 = !DILocation(line: 81, column: 32, scope: !763)
!766 = !DILocation(line: 81, column: 37, scope: !763)
!767 = !DILocation(line: 81, column: 44, scope: !763)
!768 = !DILocation(line: 81, column: 57, scope: !763)
!769 = !DILocation(line: 81, column: 64, scope: !763)
!770 = !DILocation(line: 81, column: 66, scope: !763)
!771 = !DILocation(line: 81, column: 71, scope: !763)
!772 = !DILocation(line: 81, column: 78, scope: !763)
!773 = !DILocation(line: 81, column: 80, scope: !763)
!774 = !DILocation(line: 81, column: 85, scope: !763)
!775 = !DILocation(line: 81, column: 92, scope: !763)
!776 = !DILocation(line: 81, column: 96, scope: !763)
!777 = !DILocation(line: 81, column: 103, scope: !763)
!778 = !DILocation(line: 81, column: 94, scope: !763)
!779 = !DILocation(line: 81, column: 109, scope: !763)
!780 = !DILocation(line: 81, column: 114, scope: !763)
!781 = !DILocation(line: 81, column: 121, scope: !763)
!782 = !DILocation(line: 81, column: 126, scope: !763)
!783 = !DILocation(line: 81, column: 12, scope: !763)
!784 = !DILocation(line: 81, column: 146, scope: !763)
!785 = !DILocation(line: 81, column: 153, scope: !763)
!786 = !DILocation(line: 81, column: 133, scope: !787)
!787 = !DILexicalBlockFile(scope: !763, file: !53, discriminator: 2)
!788 = !DILocation(line: 81, column: 159, scope: !789)
!789 = !DILexicalBlockFile(scope: !763, file: !53, discriminator: 3)
!790 = !DILocation(line: 81, column: 171, scope: !763)
!791 = !DILocation(line: 82, column: 10, scope: !753)
!792 = !DILocation(line: 83, column: 4, scope: !753)
!793 = !DILocation(line: 84, column: 21, scope: !794)
!794 = distinct !DILexicalBlock(scope: !734, file: !53, line: 84, column: 11)
!795 = !DILocation(line: 84, column: 11, scope: !794)
!796 = !DILocation(line: 84, column: 23, scope: !794)
!797 = !DILocation(line: 84, column: 11, scope: !734)
!798 = !DILocation(line: 86, column: 11, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !53, line: 85, column: 4)
!800 = !DILocation(line: 87, column: 10, scope: !799)
!801 = !DILocation(line: 88, column: 4, scope: !799)
!802 = !DILocation(line: 89, column: 21, scope: !803)
!803 = distinct !DILexicalBlock(scope: !794, file: !53, line: 89, column: 11)
!804 = !DILocation(line: 89, column: 11, scope: !803)
!805 = !DILocation(line: 89, column: 23, scope: !803)
!806 = !DILocation(line: 89, column: 11, scope: !794)
!807 = !DILocation(line: 90, column: 10, scope: !803)
!808 = !DILocation(line: 90, column: 14, scope: !803)
!809 = !DILocation(line: 90, column: 8, scope: !803)
!810 = !DILocation(line: 90, column: 4, scope: !803)
!811 = !DILocation(line: 91, column: 21, scope: !812)
!812 = distinct !DILexicalBlock(scope: !803, file: !53, line: 91, column: 11)
!813 = !DILocation(line: 91, column: 11, scope: !812)
!814 = !DILocation(line: 91, column: 23, scope: !812)
!815 = !DILocation(line: 91, column: 11, scope: !803)
!816 = !DILocation(line: 92, column: 10, scope: !812)
!817 = !DILocation(line: 92, column: 14, scope: !812)
!818 = !DILocation(line: 92, column: 8, scope: !812)
!819 = !DILocation(line: 92, column: 4, scope: !812)
!820 = !DILocation(line: 94, column: 7, scope: !812)
!821 = !DILocation(line: 96, column: 6, scope: !735)
!822 = !DILocation(line: 76, column: 26, scope: !823)
!823 = !DILexicalBlockFile(scope: !729, file: !53, discriminator: 2)
!824 = !DILocation(line: 76, column: 4, scope: !823)
!825 = distinct !{!825, !826}
!826 = !DILocation(line: 76, column: 4, scope: !672)
!827 = !DILocation(line: 105, column: 1, scope: !672)
