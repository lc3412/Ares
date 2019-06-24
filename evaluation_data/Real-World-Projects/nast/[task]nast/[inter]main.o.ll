; ModuleID = './[inter]main.o.i'
source_filename = "./[inter]main.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.FLAGSTRUCT = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.host = type { [6 x i8], [4 x i8] }

@main.ports = internal global [14 x i16] [i16 21, i16 22, i16 23, i16 25, i16 43, i16 53, i16 79, i16 80, i16 110, i16 119, i16 143, i16 220, i16 513, i16 514], align 16
@main.long_options = internal global [25 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i32 1, i32* null, i32 82 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"promisc\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ascii-data\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ascii-hex-data\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"log-file\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"check-sniffers\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"host-list\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"tcp-stream\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"find-gateway\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"reset-connection\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"port-scanner\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"multi-port-scanner\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"find-link\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"daemon-banner\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"check-arp-poisoning\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ncurses\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"byte-counting\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"tcpdump-log\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"tcpdump-log-read\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\0A%sNast V. %s%s\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"0.2.0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [26 x i8] c"You must be root, Sorry\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Error: can't find a suitable interface to use: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Error: can't initialize libnet engine: %s\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"Have you activate a non-loopback iface? (man ifconfig)\0A\00", align 1
@lg = common global i32 0, align 4
@cont = common global i16 0, align 2
@row_s = common global i32 0, align 4
@line_s = common global i32 0, align 4
@sniff_glob = common global i32 0, align 4
@tcpdl = common global i8* null, align 8
@logname = common global i8* null, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"mi:hHpdxl:f:C:P:R:T:sgrSLbMcGBV0\00", align 1
@optarg = external global i8*, align 8
@.str.35 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Error: cannot resolve %s\0A\0A\00", align 1
@demonize = common global i16 0, align 2
@tl = common global i16 0, align 2
@tr = common global i16 0, align 2
@graph = common global i16 0, align 2
@.str.37 = private unnamed_addr constant [33 x i8] c"%s2003-2004 (c) Embyte & Snifth\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"Running on %s %s (%s)\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"See http://nast.berlios.de%s\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"Cannot find a suitable network interface!\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"Check you connection (will ifconfig help you?)\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@logd = common global %struct._IO_FILE* null, align 8
@.str.42 = private unnamed_addr constant [29 x i8] c"\0A%sUsage:%s nast [options]\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"%sSniffer options:%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"  -i, --interface                    Interface\0A\00", align 1
@.str.45 = private unnamed_addr constant [77 x i8] c"                                      if not specified will be autodetected\0A\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"  -p, --promisc                      Set promisc mode (set by default)\0A\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"  -d, --ascii-data                   Print ascii data\0A\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"  -x, --ascii-hex-data               Print ascii-hex data\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"  -f, --filter <\22filter\22>            Apply filter\0A\00", align 1
@.str.50 = private unnamed_addr constant [84 x i8] c"      --ld <filename>                Log sniffed data to <filename> (only payload)\0A\00", align 1
@.str.51 = private unnamed_addr constant [85 x i8] c"                                      use -l to log all packets too, useful with -B\0A\00", align 1
@.str.52 = private unnamed_addr constant [72 x i8] c"  -T, --tcpdump-log <filename>       Log all packets in tcpdump format\0A\00", align 1
@.str.53 = private unnamed_addr constant [79 x i8] c"  -R, --tcpdump-log-read <filename>  Read all packets saved in tcpdump format\0A\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"                                      from saved file\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"\0A%sAnalyzer options:%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [65 x i8] c"  -P, --check-sniffers <ip>          Check for remote sniffers,\0A\00", align 1
@.str.57 = private unnamed_addr constant [75 x i8] c"                                      use -P all to query all network NIC\0A\00", align 1
@.str.58 = private unnamed_addr constant [66 x i8] c"  -m, --host-list                    Build hosts list of the LAN\0A\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"  -s, --tcp-stream                   Follow TCP Stream\0A\00", align 1
@.str.60 = private unnamed_addr constant [66 x i8] c"  -g, --find-gateway                 Try to find a valid gateway\0A\00", align 1
@.str.61 = private unnamed_addr constant [76 x i8] c"  -r, --reset-connection             Reset a connection (use with caution)\0A\00", align 1
@.str.62 = private unnamed_addr constant [61 x i8] c"  -S, --port-scanner                 Syn style port scanner\0A\00", align 1
@.str.63 = private unnamed_addr constant [78 x i8] c"  -M, --multi-port-scanner           Port scanner all LAN's host (SYN style)\0A\00", align 1
@.str.64 = private unnamed_addr constant [89 x i8] c"  -L, --find-link                    Try to resolve if there's a hub or a switch in LAN\0A\00", align 1
@.str.65 = private unnamed_addr constant [79 x i8] c"  -b, --daemon-banner                Catch daemon banner for the hosts in LAN\0A\00", align 1
@.str.66 = private unnamed_addr constant [80 x i8] c"  -c, --check-arp-poisoning          Verify if someone is making arp-poisoning\0A\00", align 1
@.str.67 = private unnamed_addr constant [63 x i8] c"                                      comparing arp responses\0A\00", align 1
@.str.68 = private unnamed_addr constant [73 x i8] c"  -C, --byte-counting <\22filter\22>     Apply traffic counting to \22filter\22\0A\00", align 1
@.str.69 = private unnamed_addr constant [68 x i8] c"                                      use -C any to disable filter\0A\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"\0A%sGraphical options:%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"  -G, --ncurses                      Ncurses menu:\0A\00", align 1
@.str.72 = private unnamed_addr constant [76 x i8] c"                                      this option is available only if you\0A\00", align 1
@.str.73 = private unnamed_addr constant [80 x i8] c"                                      have compiled nast with ncurses support,\0A\00", align 1
@.str.74 = private unnamed_addr constant [81 x i8] c"                                      this is the default if I found libncurses\0A\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"                                      installed in your *unix-box\0A\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"\0A%sOther options:%s\0A\00", align 1
@.str.77 = private unnamed_addr constant [84 x i8] c"  -l, --log-file <filename>          Log reports to file (work with many features)\0A\00", align 1
@.str.78 = private unnamed_addr constant [68 x i8] c"  -B, --daemon                       Run in background like demon:\0A\00", align 1
@.str.79 = private unnamed_addr constant [86 x i8] c"                                      usefull for sniffer/stream/arp_control logging\0A\00", align 1
@.str.80 = private unnamed_addr constant [63 x i8] c"  -V, --version                      Show version information\0A\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"  -h, --help                         Print this help\0A\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@pt = common global [2 x i64] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [50 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.libnet_context*, align 8
  %16 = alloca %struct.utsname, align 1
  %17 = alloca %struct.FLAGSTRUCT, align 2
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !184, metadata !185), !dbg !186
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !187, metadata !185), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %6, metadata !189, metadata !185), !dbg !190
  call void @llvm.dbg.declare(metadata i8** %7, metadata !191, metadata !185), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %8, metadata !193, metadata !185), !dbg !194
  call void @llvm.dbg.declare(metadata i8** %9, metadata !195, metadata !185), !dbg !196
  call void @llvm.dbg.declare(metadata [50 x i8]* %10, metadata !197, metadata !185), !dbg !201
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !202, metadata !185), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %12, metadata !207, metadata !185), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %13, metadata !209, metadata !185), !dbg !210
  call void @llvm.dbg.declare(metadata i64* %14, metadata !211, metadata !185), !dbg !214
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %15, metadata !215, metadata !185), !dbg !265
  call void @llvm.dbg.declare(metadata %struct.utsname* %16, metadata !266, metadata !185), !dbg !279
  call void @llvm.dbg.declare(metadata %struct.FLAGSTRUCT* %17, metadata !280, metadata !185), !dbg !303
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !304
  %19 = call i32 @getuid() #7, !dbg !305
  %20 = icmp ne i32 %19, 0, !dbg !305
  br i1 %20, label %24, label %21, !dbg !307

; <label>:21:                                     ; preds = %2
  %22 = call i32 @getgid() #7, !dbg !308
  %23 = icmp ne i32 %22, 0, !dbg !308
  br i1 %23, label %24, label %27, !dbg !310

; <label>:24:                                     ; preds = %21, %2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !311
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)), !dbg !313
  store i32 -1, i32* %3, align 4, !dbg !314
  br label %315, !dbg !314

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !315
  %29 = call i8* @pcap_lookupdev(i8* %28), !dbg !316
  store i8* %29, i8** %6, align 8, !dbg !317
  %30 = load i8*, i8** %6, align 8, !dbg !318
  %31 = icmp eq i8* %30, null, !dbg !320
  br i1 %31, label %32, label %36, !dbg !321

; <label>:32:                                     ; preds = %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !322
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !324
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i32 0, i32 0), i8* %34), !dbg !325
  store i32 -1, i32* %3, align 4, !dbg !326
  br label %315, !dbg !326

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %6, align 8, !dbg !327
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !329
  %39 = call %struct.libnet_context* @libnet_init(i32 0, i8* %37, i8* %38), !dbg !330
  store %struct.libnet_context* %39, %struct.libnet_context** %15, align 8, !dbg !331
  %40 = icmp eq %struct.libnet_context* %39, null, !dbg !332
  br i1 %40, label %41, label %47, !dbg !333

; <label>:41:                                     ; preds = %36
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !334
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !336
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* %43), !dbg !337
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !338
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i32 0, i32 0)), !dbg !339
  call void @exit(i32 -1) #8, !dbg !340
  unreachable, !dbg !340

; <label>:47:                                     ; preds = %36
  store i32 0, i32* @lg, align 4, !dbg !341
  store i16 0, i16* @cont, align 2, !dbg !342
  store i32 0, i32* @row_s, align 4, !dbg !343
  store i32 0, i32* @line_s, align 4, !dbg !344
  store i32 0, i32* %13, align 4, !dbg !345
  store i64 0, i64* %14, align 8, !dbg !346
  store i32 0, i32* @sniff_glob, align 4, !dbg !347
  %48 = bitcast %struct.FLAGSTRUCT* %17 to i8*, !dbg !348
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 40, i32 2, i1 false), !dbg !348
  %49 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 0, !dbg !349
  store i16 1, i16* %49, align 2, !dbg !350
  store i8* null, i8** @tcpdl, align 8, !dbg !351
  store i8* null, i8** %9, align 8, !dbg !352
  store i8* null, i8** %8, align 8, !dbg !353
  store i8* null, i8** @logname, align 8, !dbg !354
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i32 0, i32 0, !dbg !355
  %51 = call i8* @strcpy(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !356
  %52 = call i64 @time(i64* null) #7, !dbg !357
  store i64 %52, i64* @tm, align 8, !dbg !358
  %53 = call %struct.tm* @localtime(i64* @tm) #7, !dbg !359
  %54 = call i64 @strftime(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @timed, i32 0, i32 0), i64 60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), %struct.tm* %53) #7, !dbg !360
  br label %55, !dbg !362

; <label>:55:                                     ; preds = %166, %47
  %56 = load i32, i32* %4, align 4, !dbg !363
  %57 = load i8**, i8*** %5, align 8, !dbg !364
  %58 = call i32 @getopt_long(i32 %56, i8** %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), %struct.option* getelementptr inbounds ([25 x %struct.option], [25 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %13) #7, !dbg !365
  store i32 %58, i32* %12, align 4, !dbg !366
  %59 = icmp ne i32 %58, -1, !dbg !367
  br i1 %59, label %60, label %167, !dbg !368

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %12, align 4, !dbg !369
  switch i32 %61, label %162 [
    i32 104, label %62
    i32 72, label %62
    i32 105, label %66
    i32 108, label %71
    i32 112, label %74
    i32 100, label %76
    i32 120, label %78
    i32 102, label %80
    i32 80, label %83
    i32 115, label %105
    i32 103, label %107
    i32 114, label %109
    i32 83, label %111
    i32 76, label %113
    i32 98, label %115
    i32 77, label %117
    i32 109, label %119
    i32 99, label %121
    i32 66, label %123
    i32 67, label %124
    i32 84, label %127
    i32 82, label %130
    i32 71, label %133
    i32 86, label %135
    i32 0, label %149
  ], !dbg !370

; <label>:62:                                     ; preds = %60, %60
  %63 = load i8**, i8*** %5, align 8, !dbg !371
  %64 = getelementptr inbounds i8*, i8** %63, i64 0, !dbg !371
  %65 = load i8*, i8** %64, align 8, !dbg !371
  call void @usage(i8* %65), !dbg !373
  br label %166, !dbg !374

; <label>:66:                                     ; preds = %60
  %67 = load i8*, i8** @optarg, align 8, !dbg !375
  store i8* %67, i8** %7, align 8, !dbg !376
  %68 = load i8*, i8** %6, align 8, !dbg !377
  %69 = load i8*, i8** %7, align 8, !dbg !378
  %70 = call i8* @strcpy(i8* %68, i8* %69) #7, !dbg !379
  br label %166, !dbg !380

; <label>:71:                                     ; preds = %60
  %72 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !381
  store i16 1, i16* %72, align 2, !dbg !382
  store i32 1, i32* @lg, align 4, !dbg !383
  %73 = load i8*, i8** @optarg, align 8, !dbg !384
  store i8* %73, i8** @logname, align 8, !dbg !385
  br label %166, !dbg !386

; <label>:74:                                     ; preds = %60
  %75 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 0, !dbg !387
  store i16 0, i16* %75, align 2, !dbg !388
  br label %166, !dbg !389

; <label>:76:                                     ; preds = %60
  %77 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 2, !dbg !390
  store i16 1, i16* %77, align 2, !dbg !391
  br label %166, !dbg !392

; <label>:78:                                     ; preds = %60
  %79 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 3, !dbg !393
  store i16 1, i16* %79, align 2, !dbg !394
  br label %166, !dbg !395

; <label>:80:                                     ; preds = %60
  %81 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 4, !dbg !396
  store i16 1, i16* %81, align 2, !dbg !397
  %82 = load i8*, i8** @optarg, align 8, !dbg !398
  store i8* %82, i8** %8, align 8, !dbg !399
  br label %166, !dbg !400

; <label>:83:                                     ; preds = %60
  %84 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 5, !dbg !401
  store i16 1, i16* %84, align 2, !dbg !402
  %85 = load i8*, i8** %6, align 8, !dbg !403
  %86 = icmp ne i8* %85, null, !dbg !405
  br i1 %86, label %87, label %104, !dbg !406

; <label>:87:                                     ; preds = %83
  %88 = load i8*, i8** @optarg, align 8, !dbg !407
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #9, !dbg !409
  %90 = icmp ne i32 %89, 0, !dbg !409
  br i1 %90, label %91, label %103, !dbg !410

; <label>:91:                                     ; preds = %87
  %92 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !411
  %93 = load i8*, i8** @optarg, align 8, !dbg !413
  %94 = call i32 @libnet_name2addr4(%struct.libnet_context* %92, i8* %93, i8 zeroext 1), !dbg !414
  %95 = zext i32 %94 to i64, !dbg !414
  store i64 %95, i64* %14, align 8, !dbg !415
  %96 = load i64, i64* %14, align 8, !dbg !416
  %97 = icmp eq i64 %96, -1, !dbg !418
  br i1 %97, label %98, label %102, !dbg !419

; <label>:98:                                     ; preds = %91
  %99 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !420
  call void @libnet_destroy(%struct.libnet_context* %99), !dbg !422
  %100 = load i8*, i8** @optarg, align 8, !dbg !423
  %101 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), i8* %100), !dbg !424
  br label %102, !dbg !425

; <label>:102:                                    ; preds = %98, %91
  br label %103, !dbg !426

; <label>:103:                                    ; preds = %102, %87
  br label %104, !dbg !427

; <label>:104:                                    ; preds = %103, %83
  br label %166, !dbg !429

; <label>:105:                                    ; preds = %60
  %106 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 10, !dbg !430
  store i16 1, i16* %106, align 2, !dbg !431
  br label %166, !dbg !432

; <label>:107:                                    ; preds = %60
  %108 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 6, !dbg !433
  store i16 1, i16* %108, align 2, !dbg !434
  br label %166, !dbg !435

; <label>:109:                                    ; preds = %60
  %110 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 7, !dbg !436
  store i16 1, i16* %110, align 2, !dbg !437
  br label %166, !dbg !438

; <label>:111:                                    ; preds = %60
  %112 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 9, !dbg !439
  store i16 1, i16* %112, align 2, !dbg !440
  br label %166, !dbg !441

; <label>:113:                                    ; preds = %60
  %114 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 8, !dbg !442
  store i16 1, i16* %114, align 2, !dbg !443
  br label %166, !dbg !444

; <label>:115:                                    ; preds = %60
  %116 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 12, !dbg !445
  store i16 1, i16* %116, align 2, !dbg !446
  br label %166, !dbg !447

; <label>:117:                                    ; preds = %60
  %118 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 11, !dbg !448
  store i16 1, i16* %118, align 2, !dbg !449
  br label %166, !dbg !450

; <label>:119:                                    ; preds = %60
  %120 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 13, !dbg !451
  store i16 1, i16* %120, align 2, !dbg !452
  br label %166, !dbg !453

; <label>:121:                                    ; preds = %60
  %122 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 14, !dbg !454
  store i16 1, i16* %122, align 2, !dbg !455
  br label %166, !dbg !456

; <label>:123:                                    ; preds = %60
  store i16 1, i16* @demonize, align 2, !dbg !457
  br label %166, !dbg !458

; <label>:124:                                    ; preds = %60
  %125 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 16, !dbg !459
  store i16 1, i16* %125, align 2, !dbg !460
  %126 = load i8*, i8** @optarg, align 8, !dbg !461
  store i8* %126, i8** %8, align 8, !dbg !462
  br label %166, !dbg !463

; <label>:127:                                    ; preds = %60
  %128 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 18, !dbg !464
  store i16 1, i16* %128, align 2, !dbg !465
  store i16 1, i16* @tl, align 2, !dbg !466
  %129 = load i8*, i8** @optarg, align 8, !dbg !467
  store i8* %129, i8** @tcpdl, align 8, !dbg !468
  br label %166, !dbg !469

; <label>:130:                                    ; preds = %60
  %131 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 19, !dbg !470
  store i16 1, i16* %131, align 2, !dbg !471
  store i16 1, i16* @tr, align 2, !dbg !472
  %132 = load i8*, i8** @optarg, align 8, !dbg !473
  store i8* %132, i8** @tcpdl, align 8, !dbg !474
  br label %166, !dbg !475

; <label>:133:                                    ; preds = %60
  %134 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 17, !dbg !476
  store i16 1, i16* %134, align 2, !dbg !477
  store i16 1, i16* @graph, align 2, !dbg !478
  br label %166, !dbg !479

; <label>:135:                                    ; preds = %60
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !480
  %137 = call i32 @uname(%struct.utsname* %16) #7, !dbg !481
  %138 = icmp ne i32 %137, -1, !dbg !483
  br i1 %138, label %139, label %147, !dbg !484

; <label>:139:                                    ; preds = %135
  %140 = getelementptr inbounds %struct.utsname, %struct.utsname* %16, i32 0, i32 0, !dbg !485
  %141 = getelementptr inbounds [65 x i8], [65 x i8]* %140, i32 0, i32 0, !dbg !487
  %142 = getelementptr inbounds %struct.utsname, %struct.utsname* %16, i32 0, i32 2, !dbg !488
  %143 = getelementptr inbounds [65 x i8], [65 x i8]* %142, i32 0, i32 0, !dbg !489
  %144 = getelementptr inbounds %struct.utsname, %struct.utsname* %16, i32 0, i32 4, !dbg !490
  %145 = getelementptr inbounds [65 x i8], [65 x i8]* %144, i32 0, i32 0, !dbg !491
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* %141, i8* %143, i8* %145), !dbg !492
  br label %147, !dbg !493

; <label>:147:                                    ; preds = %139, %135
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !494
  call void @exit(i32 0) #8, !dbg !495
  unreachable, !dbg !495

; <label>:149:                                    ; preds = %60
  %150 = load i32, i32* %13, align 4, !dbg !496
  %151 = sext i32 %150 to i64, !dbg !498
  %152 = getelementptr inbounds [25 x %struct.option], [25 x %struct.option]* @main.long_options, i64 0, i64 %151, !dbg !498
  %153 = getelementptr inbounds %struct.option, %struct.option* %152, i32 0, i32 0, !dbg !499
  %154 = load i8*, i8** %153, align 16, !dbg !499
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #9, !dbg !500
  %156 = icmp ne i32 %155, 0, !dbg !500
  br i1 %156, label %161, label %157, !dbg !501

; <label>:157:                                    ; preds = %149
  %158 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i32 0, i32 0, !dbg !502
  %159 = load i8*, i8** @optarg, align 8, !dbg !503
  %160 = call i8* @strcpy(i8* %158, i8* %159) #7, !dbg !504
  br label %161, !dbg !504

; <label>:161:                                    ; preds = %157, %149
  br label %166, !dbg !505

; <label>:162:                                    ; preds = %60
  %163 = load i8**, i8*** %5, align 8, !dbg !506
  %164 = getelementptr inbounds i8*, i8** %163, i64 0, !dbg !506
  %165 = load i8*, i8** %164, align 8, !dbg !506
  call void @usage(i8* %165), !dbg !507
  br label %166, !dbg !508

; <label>:166:                                    ; preds = %162, %161, %133, %130, %127, %124, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %104, %80, %78, %76, %74, %71, %66, %62
  br label %55, !dbg !509, !llvm.loop !511

; <label>:167:                                    ; preds = %55
  %168 = load i8*, i8** %6, align 8, !dbg !512
  %169 = icmp eq i8* %168, null, !dbg !514
  br i1 %169, label %170, label %176, !dbg !515

; <label>:170:                                    ; preds = %167
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !516
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i32 0, i32 0)), !dbg !518
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !519
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i32 0, i32 0)), !dbg !520
  %175 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !521
  call void @libnet_destroy(%struct.libnet_context* %175), !dbg !522
  store i32 -1, i32* %3, align 4, !dbg !523
  br label %315, !dbg !523

; <label>:176:                                    ; preds = %167
  %177 = load %struct.libnet_context*, %struct.libnet_context** %15, align 8, !dbg !524
  call void @libnet_destroy(%struct.libnet_context* %177), !dbg !525
  %178 = call void (i32)* @signal(i32 9, void (i32)* bitcast (void (...)* @sigexit to void (i32)*)) #7, !dbg !526
  %179 = call void (i32)* @signal(i32 3, void (i32)* bitcast (void (...)* @sigexit to void (i32)*)) #7, !dbg !527
  %180 = call void (i32)* @signal(i32 15, void (i32)* bitcast (void (...)* @sigexit to void (i32)*)) #7, !dbg !528
  %181 = call void (i32)* @signal(i32 2, void (i32)* bitcast (void (...)* @sigexit to void (i32)*)) #7, !dbg !529
  %182 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !530
  %183 = load i16, i16* %182, align 2, !dbg !530
  %184 = zext i16 %183 to i32, !dbg !532
  %185 = icmp eq i32 %184, 0, !dbg !533
  br i1 %185, label %186, label %188, !dbg !534

; <label>:186:                                    ; preds = %176
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !535
  store %struct._IO_FILE* %187, %struct._IO_FILE** @logd, align 8, !dbg !536
  br label %188, !dbg !537

; <label>:188:                                    ; preds = %186, %176
  %189 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 17, !dbg !538
  %190 = load i16, i16* %189, align 2, !dbg !538
  %191 = icmp ne i16 %190, 0, !dbg !540
  br i1 %191, label %192, label %194, !dbg !541

; <label>:192:                                    ; preds = %188
  %193 = call i32 @main_graph(), !dbg !542
  store i32 %193, i32* %3, align 4, !dbg !544
  br label %315, !dbg !544

; <label>:194:                                    ; preds = %188
  %195 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 12, !dbg !545
  %196 = load i16, i16* %195, align 2, !dbg !545
  %197 = icmp ne i16 %196, 0, !dbg !547
  br i1 %197, label %198, label %204, !dbg !548

; <label>:198:                                    ; preds = %194
  %199 = load i8*, i8** %6, align 8, !dbg !549
  %200 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !551
  %201 = load i16, i16* %200, align 2, !dbg !551
  %202 = zext i16 %201 to i32, !dbg !552
  %203 = call i32 @mport(i8* %199, i16* getelementptr inbounds ([14 x i16], [14 x i16]* @main.ports, i32 0, i32 0), i32 %202), !dbg !553
  store i32 %203, i32* %3, align 4, !dbg !554
  br label %315, !dbg !554

; <label>:204:                                    ; preds = %194
  %205 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 13, !dbg !555
  %206 = load i16, i16* %205, align 2, !dbg !555
  %207 = icmp ne i16 %206, 0, !dbg !557
  br i1 %207, label %208, label %214, !dbg !558

; <label>:208:                                    ; preds = %204
  %209 = load i8*, i8** %6, align 8, !dbg !559
  %210 = call %struct.host* @map_lan(i8* %209, i16 zeroext 1, i16* null), !dbg !562
  %211 = icmp eq %struct.host* %210, null, !dbg !563
  br i1 %211, label %212, label %213, !dbg !564

; <label>:212:                                    ; preds = %208
  store i32 0, i32* %3, align 4, !dbg !565
  br label %315, !dbg !565

; <label>:213:                                    ; preds = %208
  store i32 -1, i32* %3, align 4, !dbg !567
  br label %315, !dbg !567

; <label>:214:                                    ; preds = %204
  %215 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 14, !dbg !568
  %216 = load i16, i16* %215, align 2, !dbg !568
  %217 = icmp ne i16 %216, 0, !dbg !570
  br i1 %217, label %218, label %224, !dbg !571

; <label>:218:                                    ; preds = %214
  %219 = load i8*, i8** %6, align 8, !dbg !572
  %220 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !574
  %221 = load i16, i16* %220, align 2, !dbg !574
  %222 = zext i16 %221 to i32, !dbg !575
  %223 = call i32 @car(i8* %219, i32 %222), !dbg !576
  store i32 %223, i32* %3, align 4, !dbg !577
  br label %315, !dbg !577

; <label>:224:                                    ; preds = %214
  %225 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 6, !dbg !578
  %226 = load i16, i16* %225, align 2, !dbg !578
  %227 = icmp ne i16 %226, 0, !dbg !580
  br i1 %227, label %228, label %231, !dbg !581

; <label>:228:                                    ; preds = %224
  %229 = load i8*, i8** %6, align 8, !dbg !582
  %230 = call i32 @fgw(i8* %229), !dbg !584
  store i32 %230, i32* %3, align 4, !dbg !585
  br label %315, !dbg !585

; <label>:231:                                    ; preds = %224
  %232 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 8, !dbg !586
  %233 = load i16, i16* %232, align 2, !dbg !586
  %234 = icmp ne i16 %233, 0, !dbg !588
  br i1 %234, label %235, label %238, !dbg !589

; <label>:235:                                    ; preds = %231
  %236 = load i8*, i8** %6, align 8, !dbg !590
  %237 = call i32 @flink(i8* %236), !dbg !592
  store i32 %237, i32* %3, align 4, !dbg !593
  br label %315, !dbg !593

; <label>:238:                                    ; preds = %231
  %239 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 7, !dbg !594
  %240 = load i16, i16* %239, align 2, !dbg !594
  %241 = icmp ne i16 %240, 0, !dbg !596
  br i1 %241, label %242, label %248, !dbg !597

; <label>:242:                                    ; preds = %238
  %243 = load i8*, i8** %6, align 8, !dbg !598
  %244 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !600
  %245 = load i16, i16* %244, align 2, !dbg !600
  %246 = zext i16 %245 to i32, !dbg !601
  %247 = call i32 @runcplx(i8 signext 114, i8* %243, i32 %246), !dbg !602
  store i32 %247, i32* %3, align 4, !dbg !603
  br label %315, !dbg !603

; <label>:248:                                    ; preds = %238
  %249 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 10, !dbg !604
  %250 = load i16, i16* %249, align 2, !dbg !604
  %251 = icmp ne i16 %250, 0, !dbg !606
  br i1 %251, label %252, label %258, !dbg !607

; <label>:252:                                    ; preds = %248
  %253 = load i8*, i8** %6, align 8, !dbg !608
  %254 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !610
  %255 = load i16, i16* %254, align 2, !dbg !610
  %256 = zext i16 %255 to i32, !dbg !611
  %257 = call i32 @runcplx(i8 signext 115, i8* %253, i32 %256), !dbg !612
  store i32 %257, i32* %3, align 4, !dbg !613
  br label %315, !dbg !613

; <label>:258:                                    ; preds = %248
  %259 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 11, !dbg !614
  %260 = load i16, i16* %259, align 2, !dbg !614
  %261 = icmp ne i16 %260, 0, !dbg !616
  br i1 %261, label %262, label %268, !dbg !617

; <label>:262:                                    ; preds = %258
  %263 = load i8*, i8** %6, align 8, !dbg !618
  %264 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !620
  %265 = load i16, i16* %264, align 2, !dbg !620
  %266 = zext i16 %265 to i32, !dbg !621
  %267 = call i32 @runcplx(i8 signext 77, i8* %263, i32 %266), !dbg !622
  store i32 %267, i32* %3, align 4, !dbg !623
  br label %315, !dbg !623

; <label>:268:                                    ; preds = %258
  %269 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 9, !dbg !624
  %270 = load i16, i16* %269, align 2, !dbg !624
  %271 = icmp ne i16 %270, 0, !dbg !626
  br i1 %271, label %272, label %278, !dbg !627

; <label>:272:                                    ; preds = %268
  %273 = load i8*, i8** %6, align 8, !dbg !628
  %274 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !630
  %275 = load i16, i16* %274, align 2, !dbg !630
  %276 = zext i16 %275 to i32, !dbg !631
  %277 = call i32 @runcplx(i8 signext 83, i8* %273, i32 %276), !dbg !632
  store i32 %277, i32* %3, align 4, !dbg !633
  br label %315, !dbg !633

; <label>:278:                                    ; preds = %268
  %279 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 5, !dbg !634
  %280 = load i16, i16* %279, align 2, !dbg !634
  %281 = icmp ne i16 %280, 0, !dbg !636
  br i1 %281, label %282, label %288, !dbg !637

; <label>:282:                                    ; preds = %278
  %283 = load i8*, i8** %6, align 8, !dbg !638
  %284 = load i64, i64* %14, align 8, !dbg !640
  %285 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !641
  %286 = load i16, i16* %285, align 2, !dbg !641
  %287 = call i32 @psearch(i8* %283, i64 %284, i16 zeroext %286), !dbg !642
  store i32 %287, i32* %3, align 4, !dbg !643
  br label %315, !dbg !643

; <label>:288:                                    ; preds = %278
  %289 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 16, !dbg !644
  %290 = load i16, i16* %289, align 2, !dbg !644
  %291 = icmp ne i16 %290, 0, !dbg !646
  br i1 %291, label %292, label %296, !dbg !647

; <label>:292:                                    ; preds = %288
  %293 = load i8*, i8** %6, align 8, !dbg !648
  %294 = load i8*, i8** %8, align 8, !dbg !650
  %295 = call i32 @run_bc(i8* %293, i8* %294), !dbg !651
  store i32 %295, i32* %3, align 4, !dbg !652
  br label %315, !dbg !652

; <label>:296:                                    ; preds = %288
  store i32 1, i32* @sniff_glob, align 4, !dbg !653
  %297 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 0, !dbg !654
  %298 = load i16, i16* %297, align 2, !dbg !654
  %299 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 2, !dbg !655
  %300 = load i16, i16* %299, align 2, !dbg !655
  %301 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 3, !dbg !656
  %302 = load i16, i16* %301, align 2, !dbg !656
  %303 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 4, !dbg !657
  %304 = load i16, i16* %303, align 2, !dbg !657
  %305 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 1, !dbg !658
  %306 = load i16, i16* %305, align 2, !dbg !658
  %307 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 18, !dbg !659
  %308 = load i16, i16* %307, align 2, !dbg !659
  %309 = getelementptr inbounds %struct.FLAGSTRUCT, %struct.FLAGSTRUCT* %17, i32 0, i32 19, !dbg !660
  %310 = load i16, i16* %309, align 2, !dbg !660
  %311 = load i8*, i8** %8, align 8, !dbg !661
  %312 = load i8*, i8** %6, align 8, !dbg !662
  %313 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i32 0, i32 0, !dbg !663
  %314 = call i32 @run_sniffer(i16 zeroext %298, i16 zeroext %300, i16 zeroext %302, i16 zeroext %304, i16 zeroext %306, i16 zeroext %308, i16 zeroext %310, i8* %311, i8* %312, i8* %313), !dbg !664
  store i32 %314, i32* %3, align 4, !dbg !665
  br label %315, !dbg !665

; <label>:315:                                    ; preds = %296, %292, %282, %272, %262, %252, %242, %235, %228, %218, %213, %212, %198, %192, %170, %32, %24
  %316 = load i32, i32* %3, align 4, !dbg !666
  ret i32 %316, !dbg !666
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i32 @getgid() #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @pcap_lookupdev(i8*) #2

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #3

; Function Attrs: nounwind uwtable
define void @usage(i8*) #0 !dbg !667 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !670, metadata !185), !dbg !671
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !672
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !673
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i32 0, i32 0)), !dbg !674
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.45, i32 0, i32 0)), !dbg !675
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i32 0, i32 0)), !dbg !676
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i32 0, i32 0)), !dbg !677
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.48, i32 0, i32 0)), !dbg !678
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i32 0, i32 0)), !dbg !679
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.50, i32 0, i32 0)), !dbg !680
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.51, i32 0, i32 0)), !dbg !681
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.52, i32 0, i32 0)), !dbg !682
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.53, i32 0, i32 0)), !dbg !683
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.54, i32 0, i32 0)), !dbg !684
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !685
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.56, i32 0, i32 0)), !dbg !686
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.57, i32 0, i32 0)), !dbg !687
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.58, i32 0, i32 0)), !dbg !688
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i32 0, i32 0)), !dbg !689
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.60, i32 0, i32 0)), !dbg !690
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.61, i32 0, i32 0)), !dbg !691
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.62, i32 0, i32 0)), !dbg !692
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.63, i32 0, i32 0)), !dbg !693
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.64, i32 0, i32 0)), !dbg !694
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.65, i32 0, i32 0)), !dbg !695
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.66, i32 0, i32 0)), !dbg !696
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.67, i32 0, i32 0)), !dbg !697
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.68, i32 0, i32 0)), !dbg !698
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.69, i32 0, i32 0)), !dbg !699
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !700
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i32 0, i32 0)), !dbg !701
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.72, i32 0, i32 0)), !dbg !702
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.73, i32 0, i32 0)), !dbg !703
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.74, i32 0, i32 0)), !dbg !704
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i32 0, i32 0)), !dbg !705
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !706
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.77, i32 0, i32 0)), !dbg !707
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.78, i32 0, i32 0)), !dbg !708
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.79, i32 0, i32 0)), !dbg !709
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.80, i32 0, i32 0)), !dbg !710
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.81, i32 0, i32 0)), !dbg !711
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0)), !dbg !712
  call void @exit(i32 0) #8, !dbg !713
  unreachable, !dbg !713
                                                  ; No predecessors!
  ret void, !dbg !714
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare i32 @libnet_name2addr4(%struct.libnet_context*, i8*, i8 zeroext) #2

declare void @libnet_destroy(%struct.libnet_context*) #2

declare i32 @w_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @sigexit(...) #2

declare i32 @main_graph() #2

declare i32 @mport(i8*, i16*, i32) #2

declare %struct.host* @map_lan(i8*, i16 zeroext, i16*) #2

declare i32 @car(i8*, i32) #2

declare i32 @fgw(i8*) #2

declare i32 @flink(i8*) #2

declare i32 @runcplx(i8 signext, i8*, i32) #2

declare i32 @psearch(i8*, i64, i16 zeroext) #2

declare i32 @run_bc(i8*, i8*) #2

declare i32 @run_sniffer(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!181, !182}
!llvm.ident = !{!183}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]main.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !23, !37, !96, !98, !99, !104, !105, !124, !128, !132, !138, !139, !140, !141, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !170, !171, !174, !178, !179, !180}
!6 = distinct !DIGlobalVariable(name: "ports", scope: !7, file: !8, line: 42, type: !15, isLocal: true, isDefinition: true, variable: [14 x i16]* @main.ports)
!7 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 31, type: !9, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "main.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 224, align: 16, elements: !21)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !17, line: 34, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !19, line: 31, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!20 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 14)
!23 = distinct !DIGlobalVariable(name: "long_options", scope: !7, file: !8, line: 71, type: !24, isLocal: true, isDefinition: true, variable: [25 x %struct.option]* @main.long_options)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 6400, align: 64, elements: !35)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !26, line: 104, size: 256, align: 64, elements: !27)
!26 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!27 = !{!28, !31, !32, !34}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 106, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !25, file: !26, line: 109, baseType: !11, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !25, file: !26, line: 110, baseType: !33, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !25, file: !26, line: 111, baseType: !11, size: 32, align: 32, offset: 192)
!35 = !{!36}
!36 = !DISubrange(count: 25)
!37 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !38, line: 98, type: !39, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!38 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 48, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 241, size: 1728, align: 64, elements: !44)
!43 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !65, !66, !67, !68, !71, !72, !74, !78, !81, !83, !84, !85, !86, !87, !91, !92}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !43, line: 242, baseType: !11, size: 32, align: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !42, file: !43, line: 247, baseType: !13, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !42, file: !43, line: 248, baseType: !13, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !42, file: !43, line: 249, baseType: !13, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !42, file: !43, line: 250, baseType: !13, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !42, file: !43, line: 251, baseType: !13, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !42, file: !43, line: 252, baseType: !13, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !42, file: !43, line: 253, baseType: !13, size: 64, align: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !42, file: !43, line: 254, baseType: !13, size: 64, align: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !42, file: !43, line: 256, baseType: !13, size: 64, align: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !42, file: !43, line: 257, baseType: !13, size: 64, align: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !42, file: !43, line: 258, baseType: !13, size: 64, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !42, file: !43, line: 260, baseType: !58, size: 64, align: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !43, line: 156, size: 192, align: 64, elements: !60)
!60 = !{!61, !62, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !59, file: !43, line: 157, baseType: !58, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !59, file: !43, line: 158, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !59, file: !43, line: 162, baseType: !11, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !42, file: !43, line: 262, baseType: !63, size: 64, align: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !42, file: !43, line: 264, baseType: !11, size: 32, align: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !43, line: 268, baseType: !11, size: 32, align: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !42, file: !43, line: 270, baseType: !69, size: 64, align: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 131, baseType: !70)
!70 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !42, file: !43, line: 274, baseType: !20, size: 16, align: 16, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !42, file: !43, line: 275, baseType: !73, size: 8, align: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !42, file: !43, line: 276, baseType: !75, size: 8, align: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !43, line: 280, baseType: !79, size: 64, align: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !43, line: 150, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !43, line: 289, baseType: !82, size: 64, align: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 132, baseType: !70)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !42, file: !43, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !42, file: !43, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !42, file: !43, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !42, file: !43, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !42, file: !43, line: 302, baseType: !88, size: 64, align: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 216, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!90 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !42, file: !43, line: 303, baseType: !11, size: 32, align: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !42, file: !43, line: 305, baseType: !93, size: 160, align: 8, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !38, line: 99, type: !97, isLocal: false, isDefinition: true, variable: i16* @offset)
!97 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!98 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !38, line: 100, type: !11, isLocal: false, isDefinition: true, variable: i32* @npkt)
!99 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !38, line: 101, type: !100, isLocal: false, isDefinition: true, variable: i8** @packet)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !17, line: 33, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !19, line: 30, baseType: !103)
!103 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!104 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !38, line: 102, type: !100, isLocal: false, isDefinition: true, variable: i8** @buf)
!105 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !38, line: 103, type: !106, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !107, line: 199, size: 192, align: 64, elements: !108)
!107 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!108 = !{!109, !117, !123}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !106, file: !107, line: 200, baseType: !110, size: 128, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !111, line: 30, size: 128, align: 64, elements: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !110, file: !111, line: 32, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !19, line: 139, baseType: !70)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !110, file: !111, line: 33, baseType: !116, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !19, line: 141, baseType: !70)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !106, file: !107, line: 201, baseType: !118, size: 32, align: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !119, line: 85, baseType: !120)
!119 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !17, line: 35, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !19, line: 32, baseType: !122)
!122 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !107, line: 202, baseType: !118, size: 32, align: 32, offset: 160)
!124 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !38, line: 104, type: !125, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !107, line: 118, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !107, line: 118, flags: DIFlagFwdDecl)
!128 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !38, line: 105, type: !129, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !107, line: 119, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !107, line: 119, flags: DIFlagFwdDecl)
!132 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !38, line: 106, type: !133, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !107, line: 208, size: 96, align: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !133, file: !107, line: 209, baseType: !120, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !133, file: !107, line: 210, baseType: !120, size: 32, align: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !133, file: !107, line: 211, baseType: !120, size: 32, align: 32, offset: 64)
!138 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !38, line: 107, type: !118, isLocal: false, isDefinition: true, variable: i32* @maskp)
!139 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !38, line: 108, type: !118, isLocal: false, isDefinition: true, variable: i32* @netp)
!140 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !38, line: 109, type: !11, isLocal: false, isDefinition: true, variable: i32* @datalink)
!141 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !38, line: 110, type: !142, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !119, line: 104, size: 128, align: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !142, file: !119, line: 105, baseType: !120, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !142, file: !119, line: 106, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !119, line: 234, size: 64, align: 32, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !147, file: !119, line: 235, baseType: !16, size: 16, align: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !147, file: !119, line: 236, baseType: !101, size: 8, align: 8, offset: 16)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !147, file: !119, line: 237, baseType: !101, size: 8, align: 8, offset: 24)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !147, file: !119, line: 238, baseType: !118, size: 32, align: 32, offset: 32)
!153 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !38, line: 111, type: !13, isLocal: false, isDefinition: true, variable: i8** @logname)
!154 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !38, line: 112, type: !13, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!155 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !38, line: 113, type: !16, isLocal: false, isDefinition: true, variable: i16* @tr)
!156 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !38, line: 113, type: !16, isLocal: false, isDefinition: true, variable: i16* @tl)
!157 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !38, line: 114, type: !16, isLocal: false, isDefinition: true, variable: i16* @graph)
!158 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !38, line: 115, type: !16, isLocal: false, isDefinition: true, variable: i16* @cont)
!159 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !38, line: 117, type: !11, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!160 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !38, line: 118, type: !11, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!161 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !38, line: 119, type: !11, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!162 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !38, line: 120, type: !11, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!163 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !38, line: 121, type: !11, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!164 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !38, line: 122, type: !165, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, align: 64, elements: !168)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !167, line: 60, baseType: !90)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!168 = !{!169}
!169 = !DISubrange(count: 2)
!170 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !38, line: 123, type: !11, isLocal: false, isDefinition: true, variable: i32* @lg)
!171 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !38, line: 132, type: !172, isLocal: false, isDefinition: true, variable: i64* @tm)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !173, line: 75, baseType: !114)
!173 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!174 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !38, line: 133, type: !175, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 480, align: 8, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 60)
!178 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !38, line: 136, type: !16, isLocal: false, isDefinition: true, variable: i16* @demonize)
!179 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !38, line: 138, type: !11, isLocal: false, isDefinition: true, variable: i32* @line_s)
!180 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !38, line: 139, type: !11, isLocal: false, isDefinition: true, variable: i32* @row_s)
!181 = !{i32 2, !"Dwarf Version", i32 4}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!184 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !8, line: 31, type: !11)
!185 = !DIExpression()
!186 = !DILocation(line: 31, column: 14, scope: !7)
!187 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !8, line: 31, type: !12)
!188 = !DILocation(line: 31, column: 26, scope: !7)
!189 = !DILocalVariable(name: "dev", scope: !7, file: !8, line: 33, type: !13)
!190 = !DILocation(line: 33, column: 10, scope: !7)
!191 = !DILocalVariable(name: "app", scope: !7, file: !8, line: 33, type: !13)
!192 = !DILocation(line: 33, column: 16, scope: !7)
!193 = !DILocalVariable(name: "filter", scope: !7, file: !8, line: 34, type: !13)
!194 = !DILocation(line: 34, column: 10, scope: !7)
!195 = !DILocalVariable(name: "buffer", scope: !7, file: !8, line: 34, type: !13)
!196 = !DILocation(line: 34, column: 19, scope: !7)
!197 = !DILocalVariable(name: "ldname", scope: !7, file: !8, line: 34, type: !198)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 400, align: 8, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 50)
!201 = !DILocation(line: 34, column: 27, scope: !7)
!202 = !DILocalVariable(name: "errbuf", scope: !7, file: !8, line: 35, type: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, align: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 256)
!206 = !DILocation(line: 35, column: 9, scope: !7)
!207 = !DILocalVariable(name: "option", scope: !7, file: !8, line: 37, type: !11)
!208 = !DILocation(line: 37, column: 8, scope: !7)
!209 = !DILocalVariable(name: "option_index", scope: !7, file: !8, line: 37, type: !11)
!210 = !DILocation(line: 37, column: 16, scope: !7)
!211 = !DILocalVariable(name: "anip", scope: !7, file: !8, line: 38, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !17, line: 36, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !19, line: 33, baseType: !90)
!214 = !DILocation(line: 38, column: 11, scope: !7)
!215 = !DILocalVariable(name: "L", scope: !7, file: !8, line: 39, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !218, line: 235, baseType: !219)
!218 = !DIFile(filename: "/usr/local/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !218, line: 186, size: 3200, align: 64, elements: !220)
!220 = !{!221, !222, !223, !245, !246, !247, !248, !249, !250, !251, !258, !259, !263, !264}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !219, file: !218, line: 192, baseType: !11, size: 32, align: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !219, file: !218, line: 194, baseType: !11, size: 32, align: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !219, file: !218, line: 206, baseType: !224, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !218, line: 178, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !218, line: 77, size: 384, align: 64, elements: !227)
!227 = !{!228, !232, !234, !236, !237, !238, !239, !242, !244}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !226, file: !218, line: 79, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !231, line: 48, baseType: !103)
!231 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !226, file: !218, line: 80, baseType: !233, size: 32, align: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !231, line: 51, baseType: !122)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !226, file: !218, line: 81, baseType: !235, size: 16, align: 16, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !231, line: 49, baseType: !20)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !226, file: !218, line: 92, baseType: !233, size: 32, align: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !218, line: 94, baseType: !230, size: 8, align: 8, offset: 160)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !218, line: 168, baseType: !230, size: 8, align: 8, offset: 168)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !226, file: !218, line: 170, baseType: !240, size: 32, align: 32, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !218, line: 70, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !17, line: 196, baseType: !11)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !218, line: 175, baseType: !243, size: 64, align: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !226, file: !218, line: 176, baseType: !243, size: 64, align: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !219, file: !218, line: 207, baseType: !224, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !219, file: !218, line: 208, baseType: !233, size: 32, align: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !219, file: !218, line: 210, baseType: !11, size: 32, align: 32, offset: 224)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !219, file: !218, line: 224, baseType: !11, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !219, file: !218, line: 225, baseType: !11, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !219, file: !218, line: 226, baseType: !13, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !219, file: !218, line: 228, baseType: !252, size: 192, align: 64, offset: 384)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !218, line: 52, size: 192, align: 64, elements: !253)
!253 = !{!254, !256, !257}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !252, file: !218, line: 55, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !231, line: 55, baseType: !90)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !252, file: !218, line: 56, baseType: !255, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !252, file: !218, line: 57, baseType: !255, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !219, file: !218, line: 229, baseType: !240, size: 32, align: 32, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !219, file: !218, line: 230, baseType: !260, size: 512, align: 8, offset: 608)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 8, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !219, file: !218, line: 232, baseType: !203, size: 2048, align: 8, offset: 1120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !219, file: !218, line: 233, baseType: !233, size: 32, align: 32, offset: 3168)
!265 = !DILocation(line: 39, column: 14, scope: !7)
!266 = !DILocalVariable(name: "buf", scope: !7, file: !8, line: 40, type: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !268, line: 48, size: 3120, align: 8, elements: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!269 = !{!270, !274, !275, !276, !277, !278}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !267, file: !268, line: 51, baseType: !271, size: 520, align: 8)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 520, align: 8, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 65)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !267, file: !268, line: 54, baseType: !271, size: 520, align: 8, offset: 520)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !267, file: !268, line: 57, baseType: !271, size: 520, align: 8, offset: 1040)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !267, file: !268, line: 59, baseType: !271, size: 520, align: 8, offset: 1560)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !267, file: !268, line: 62, baseType: !271, size: 520, align: 8, offset: 2080)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__domainname", scope: !267, file: !268, line: 69, baseType: !271, size: 520, align: 8, offset: 2600)
!279 = !DILocation(line: 40, column: 19, scope: !7)
!280 = !DILocalVariable(name: "flags", scope: !7, file: !8, line: 70, type: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FLAGSTRUCT", scope: !7, file: !8, line: 47, size: 320, align: 16, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "promisc", scope: !281, file: !8, line: 49, baseType: !16, size: 16, align: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !281, file: !8, line: 50, baseType: !16, size: 16, align: 16, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !281, file: !8, line: 51, baseType: !16, size: 16, align: 16, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !281, file: !8, line: 52, baseType: !16, size: 16, align: 16, offset: 48)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !281, file: !8, line: 53, baseType: !16, size: 16, align: 16, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !281, file: !8, line: 54, baseType: !16, size: 16, align: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !281, file: !8, line: 55, baseType: !16, size: 16, align: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !281, file: !8, line: 56, baseType: !16, size: 16, align: 16, offset: 112)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "lk", scope: !281, file: !8, line: 57, baseType: !16, size: 16, align: 16, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !281, file: !8, line: 58, baseType: !16, size: 16, align: 16, offset: 144)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !281, file: !8, line: 59, baseType: !16, size: 16, align: 16, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !281, file: !8, line: 60, baseType: !16, size: 16, align: 16, offset: 176)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "banner", scope: !281, file: !8, line: 61, baseType: !16, size: 16, align: 16, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "maplan", scope: !281, file: !8, line: 62, baseType: !16, size: 16, align: 16, offset: 208)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "c_arp", scope: !281, file: !8, line: 63, baseType: !16, size: 16, align: 16, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ld", scope: !281, file: !8, line: 64, baseType: !16, size: 16, align: 16, offset: 240)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "bytecount", scope: !281, file: !8, line: 65, baseType: !16, size: 16, align: 16, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ncurses", scope: !281, file: !8, line: 66, baseType: !16, size: 16, align: 16, offset: 272)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tcpdlog", scope: !281, file: !8, line: 67, baseType: !16, size: 16, align: 16, offset: 288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tcpdread", scope: !281, file: !8, line: 68, baseType: !16, size: 16, align: 16, offset: 304)
!303 = !DILocation(line: 70, column: 4, scope: !7)
!304 = !DILocation(line: 100, column: 4, scope: !7)
!305 = !DILocation(line: 103, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !7, file: !8, line: 103, column: 8)
!307 = !DILocation(line: 103, column: 17, scope: !306)
!308 = !DILocation(line: 103, column: 20, scope: !309)
!309 = !DILexicalBlockFile(scope: !306, file: !8, discriminator: 1)
!310 = !DILocation(line: 103, column: 8, scope: !309)
!311 = !DILocation(line: 105, column: 16, scope: !312)
!312 = distinct !DILexicalBlock(scope: !306, file: !8, line: 104, column: 6)
!313 = !DILocation(line: 105, column: 9, scope: !312)
!314 = !DILocation(line: 106, column: 9, scope: !312)
!315 = !DILocation(line: 110, column: 25, scope: !7)
!316 = !DILocation(line: 110, column: 10, scope: !7)
!317 = !DILocation(line: 110, column: 8, scope: !7)
!318 = !DILocation(line: 111, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !7, file: !8, line: 111, column: 8)
!320 = !DILocation(line: 111, column: 11, scope: !319)
!321 = !DILocation(line: 111, column: 8, scope: !7)
!322 = !DILocation(line: 113, column: 10, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !8, line: 112, column: 6)
!324 = !DILocation(line: 113, column: 73, scope: !323)
!325 = !DILocation(line: 113, column: 2, scope: !323)
!326 = !DILocation(line: 114, column: 2, scope: !323)
!327 = !DILocation(line: 145, column: 39, scope: !328)
!328 = distinct !DILexicalBlock(scope: !7, file: !8, line: 145, column: 8)
!329 = !DILocation(line: 145, column: 44, scope: !328)
!330 = !DILocation(line: 145, column: 13, scope: !328)
!331 = !DILocation(line: 145, column: 11, scope: !328)
!332 = !DILocation(line: 145, column: 52, scope: !328)
!333 = !DILocation(line: 145, column: 8, scope: !7)
!334 = !DILocation(line: 147, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !8, line: 146, column: 6)
!336 = !DILocation(line: 147, column: 62, scope: !335)
!337 = !DILocation(line: 147, column: 2, scope: !335)
!338 = !DILocation(line: 148, column: 9, scope: !335)
!339 = !DILocation(line: 148, column: 2, scope: !335)
!340 = !DILocation(line: 149, column: 2, scope: !335)
!341 = !DILocation(line: 152, column: 31, scope: !7)
!342 = !DILocation(line: 152, column: 26, scope: !7)
!343 = !DILocation(line: 152, column: 19, scope: !7)
!344 = !DILocation(line: 152, column: 11, scope: !7)
!345 = !DILocation(line: 153, column: 17, scope: !7)
!346 = !DILocation(line: 154, column: 9, scope: !7)
!347 = !DILocation(line: 155, column: 15, scope: !7)
!348 = !DILocation(line: 156, column: 4, scope: !7)
!349 = !DILocation(line: 157, column: 10, scope: !7)
!350 = !DILocation(line: 157, column: 18, scope: !7)
!351 = !DILocation(line: 158, column: 38, scope: !7)
!352 = !DILocation(line: 158, column: 30, scope: !7)
!353 = !DILocation(line: 158, column: 21, scope: !7)
!354 = !DILocation(line: 158, column: 12, scope: !7)
!355 = !DILocation(line: 159, column: 11, scope: !7)
!356 = !DILocation(line: 159, column: 4, scope: !7)
!357 = !DILocation(line: 162, column: 9, scope: !7)
!358 = !DILocation(line: 162, column: 7, scope: !7)
!359 = !DILocation(line: 163, column: 27, scope: !7)
!360 = !DILocation(line: 163, column: 4, scope: !361)
!361 = !DILexicalBlockFile(scope: !7, file: !8, discriminator: 1)
!362 = !DILocation(line: 165, column: 4, scope: !7)
!363 = !DILocation(line: 165, column: 31, scope: !361)
!364 = !DILocation(line: 165, column: 37, scope: !361)
!365 = !DILocation(line: 165, column: 19, scope: !361)
!366 = !DILocation(line: 165, column: 18, scope: !361)
!367 = !DILocation(line: 165, column: 109, scope: !361)
!368 = !DILocation(line: 165, column: 4, scope: !361)
!369 = !DILocation(line: 166, column: 13, scope: !7)
!370 = !DILocation(line: 166, column: 6, scope: !7)
!371 = !DILocation(line: 170, column: 10, scope: !372)
!372 = distinct !DILexicalBlock(scope: !7, file: !8, line: 167, column: 8)
!373 = !DILocation(line: 170, column: 4, scope: !372)
!374 = !DILocation(line: 171, column: 4, scope: !372)
!375 = !DILocation(line: 173, column: 9, scope: !372)
!376 = !DILocation(line: 173, column: 8, scope: !372)
!377 = !DILocation(line: 174, column: 11, scope: !372)
!378 = !DILocation(line: 174, column: 15, scope: !372)
!379 = !DILocation(line: 174, column: 4, scope: !372)
!380 = !DILocation(line: 175, column: 4, scope: !372)
!381 = !DILocation(line: 177, column: 10, scope: !372)
!382 = !DILocation(line: 177, column: 11, scope: !372)
!383 = !DILocation(line: 178, column: 7, scope: !372)
!384 = !DILocation(line: 179, column: 15, scope: !372)
!385 = !DILocation(line: 179, column: 13, scope: !372)
!386 = !DILocation(line: 180, column: 4, scope: !372)
!387 = !DILocation(line: 182, column: 10, scope: !372)
!388 = !DILocation(line: 182, column: 17, scope: !372)
!389 = !DILocation(line: 183, column: 4, scope: !372)
!390 = !DILocation(line: 185, column: 10, scope: !372)
!391 = !DILocation(line: 185, column: 14, scope: !372)
!392 = !DILocation(line: 186, column: 4, scope: !372)
!393 = !DILocation(line: 188, column: 10, scope: !372)
!394 = !DILocation(line: 188, column: 13, scope: !372)
!395 = !DILocation(line: 189, column: 4, scope: !372)
!396 = !DILocation(line: 191, column: 10, scope: !372)
!397 = !DILocation(line: 191, column: 11, scope: !372)
!398 = !DILocation(line: 192, column: 14, scope: !372)
!399 = !DILocation(line: 192, column: 12, scope: !372)
!400 = !DILocation(line: 193, column: 4, scope: !372)
!401 = !DILocation(line: 195, column: 10, scope: !372)
!402 = !DILocation(line: 195, column: 12, scope: !372)
!403 = !DILocation(line: 196, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !372, file: !8, line: 196, column: 8)
!405 = !DILocation(line: 196, column: 11, scope: !404)
!406 = !DILocation(line: 196, column: 8, scope: !372)
!407 = !DILocation(line: 197, column: 18, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !8, line: 197, column: 10)
!409 = !DILocation(line: 197, column: 10, scope: !408)
!410 = !DILocation(line: 197, column: 10, scope: !404)
!411 = !DILocation(line: 199, column: 29, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !8, line: 198, column: 8)
!413 = !DILocation(line: 199, column: 32, scope: !412)
!414 = !DILocation(line: 199, column: 11, scope: !412)
!415 = !DILocation(line: 199, column: 9, scope: !412)
!416 = !DILocation(line: 200, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !8, line: 200, column: 8)
!418 = !DILocation(line: 200, column: 12, scope: !417)
!419 = !DILocation(line: 200, column: 8, scope: !412)
!420 = !DILocation(line: 202, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !8, line: 201, column: 6)
!422 = !DILocation(line: 202, column: 9, scope: !421)
!423 = !DILocation(line: 203, column: 52, scope: !421)
!424 = !DILocation(line: 203, column: 9, scope: !421)
!425 = !DILocation(line: 204, column: 6, scope: !421)
!426 = !DILocation(line: 205, column: 8, scope: !412)
!427 = !DILocation(line: 197, column: 31, scope: !428)
!428 = !DILexicalBlockFile(scope: !408, file: !8, discriminator: 1)
!429 = !DILocation(line: 207, column: 4, scope: !372)
!430 = !DILocation(line: 209, column: 10, scope: !372)
!431 = !DILocation(line: 209, column: 12, scope: !372)
!432 = !DILocation(line: 210, column: 4, scope: !372)
!433 = !DILocation(line: 212, column: 10, scope: !372)
!434 = !DILocation(line: 212, column: 12, scope: !372)
!435 = !DILocation(line: 213, column: 4, scope: !372)
!436 = !DILocation(line: 215, column: 10, scope: !372)
!437 = !DILocation(line: 215, column: 12, scope: !372)
!438 = !DILocation(line: 216, column: 4, scope: !372)
!439 = !DILocation(line: 218, column: 10, scope: !372)
!440 = !DILocation(line: 218, column: 13, scope: !372)
!441 = !DILocation(line: 219, column: 4, scope: !372)
!442 = !DILocation(line: 221, column: 10, scope: !372)
!443 = !DILocation(line: 221, column: 12, scope: !372)
!444 = !DILocation(line: 222, column: 4, scope: !372)
!445 = !DILocation(line: 224, column: 10, scope: !372)
!446 = !DILocation(line: 224, column: 16, scope: !372)
!447 = !DILocation(line: 225, column: 4, scope: !372)
!448 = !DILocation(line: 227, column: 10, scope: !372)
!449 = !DILocation(line: 227, column: 12, scope: !372)
!450 = !DILocation(line: 228, column: 4, scope: !372)
!451 = !DILocation(line: 230, column: 10, scope: !372)
!452 = !DILocation(line: 230, column: 16, scope: !372)
!453 = !DILocation(line: 231, column: 4, scope: !372)
!454 = !DILocation(line: 233, column: 10, scope: !372)
!455 = !DILocation(line: 233, column: 15, scope: !372)
!456 = !DILocation(line: 234, column: 4, scope: !372)
!457 = !DILocation(line: 236, column: 12, scope: !372)
!458 = !DILocation(line: 237, column: 4, scope: !372)
!459 = !DILocation(line: 239, column: 10, scope: !372)
!460 = !DILocation(line: 239, column: 19, scope: !372)
!461 = !DILocation(line: 240, column: 14, scope: !372)
!462 = !DILocation(line: 240, column: 12, scope: !372)
!463 = !DILocation(line: 241, column: 4, scope: !372)
!464 = !DILocation(line: 243, column: 10, scope: !372)
!465 = !DILocation(line: 243, column: 17, scope: !372)
!466 = !DILocation(line: 244, column: 6, scope: !372)
!467 = !DILocation(line: 245, column: 13, scope: !372)
!468 = !DILocation(line: 245, column: 11, scope: !372)
!469 = !DILocation(line: 246, column: 4, scope: !372)
!470 = !DILocation(line: 248, column: 10, scope: !372)
!471 = !DILocation(line: 248, column: 18, scope: !372)
!472 = !DILocation(line: 249, column: 6, scope: !372)
!473 = !DILocation(line: 250, column: 13, scope: !372)
!474 = !DILocation(line: 250, column: 11, scope: !372)
!475 = !DILocation(line: 251, column: 4, scope: !372)
!476 = !DILocation(line: 254, column: 10, scope: !372)
!477 = !DILocation(line: 254, column: 17, scope: !372)
!478 = !DILocation(line: 255, column: 9, scope: !372)
!479 = !DILocation(line: 263, column: 4, scope: !372)
!480 = !DILocation(line: 265, column: 4, scope: !372)
!481 = !DILocation(line: 266, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !372, file: !8, line: 266, column: 8)
!483 = !DILocation(line: 266, column: 19, scope: !482)
!484 = !DILocation(line: 266, column: 8, scope: !372)
!485 = !DILocation(line: 268, column: 48, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !8, line: 267, column: 6)
!487 = !DILocation(line: 268, column: 44, scope: !486)
!488 = !DILocation(line: 268, column: 61, scope: !486)
!489 = !DILocation(line: 268, column: 57, scope: !486)
!490 = !DILocation(line: 268, column: 74, scope: !486)
!491 = !DILocation(line: 268, column: 70, scope: !486)
!492 = !DILocation(line: 268, column: 9, scope: !486)
!493 = !DILocation(line: 269, column: 6, scope: !486)
!494 = !DILocation(line: 270, column: 4, scope: !372)
!495 = !DILocation(line: 271, column: 4, scope: !372)
!496 = !DILocation(line: 275, column: 29, scope: !497)
!497 = distinct !DILexicalBlock(scope: !372, file: !8, line: 275, column: 8)
!498 = !DILocation(line: 275, column: 16, scope: !497)
!499 = !DILocation(line: 275, column: 43, scope: !497)
!500 = !DILocation(line: 275, column: 9, scope: !497)
!501 = !DILocation(line: 275, column: 8, scope: !372)
!502 = !DILocation(line: 276, column: 13, scope: !497)
!503 = !DILocation(line: 276, column: 20, scope: !497)
!504 = !DILocation(line: 276, column: 6, scope: !497)
!505 = !DILocation(line: 277, column: 4, scope: !372)
!506 = !DILocation(line: 279, column: 10, scope: !372)
!507 = !DILocation(line: 279, column: 4, scope: !372)
!508 = !DILocation(line: 280, column: 4, scope: !372)
!509 = !DILocation(line: 165, column: 4, scope: !510)
!510 = !DILexicalBlockFile(scope: !7, file: !8, discriminator: 2)
!511 = distinct !{!511, !362}
!512 = !DILocation(line: 284, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !7, file: !8, line: 284, column: 8)
!514 = !DILocation(line: 284, column: 11, scope: !513)
!515 = !DILocation(line: 284, column: 8, scope: !7)
!516 = !DILocation(line: 286, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !8, line: 285, column: 6)
!518 = !DILocation(line: 286, column: 2, scope: !517)
!519 = !DILocation(line: 287, column: 9, scope: !517)
!520 = !DILocation(line: 287, column: 2, scope: !517)
!521 = !DILocation(line: 288, column: 17, scope: !517)
!522 = !DILocation(line: 288, column: 2, scope: !517)
!523 = !DILocation(line: 289, column: 2, scope: !517)
!524 = !DILocation(line: 293, column: 19, scope: !7)
!525 = !DILocation(line: 293, column: 4, scope: !7)
!526 = !DILocation(line: 296, column: 4, scope: !7)
!527 = !DILocation(line: 297, column: 4, scope: !7)
!528 = !DILocation(line: 298, column: 4, scope: !7)
!529 = !DILocation(line: 299, column: 4, scope: !7)
!530 = !DILocation(line: 302, column: 14, scope: !531)
!531 = distinct !DILexicalBlock(scope: !7, file: !8, line: 302, column: 8)
!532 = !DILocation(line: 302, column: 8, scope: !531)
!533 = !DILocation(line: 302, column: 16, scope: !531)
!534 = !DILocation(line: 302, column: 8, scope: !7)
!535 = !DILocation(line: 303, column: 12, scope: !531)
!536 = !DILocation(line: 303, column: 11, scope: !531)
!537 = !DILocation(line: 303, column: 6, scope: !531)
!538 = !DILocation(line: 307, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !7, file: !8, line: 307, column: 8)
!540 = !DILocation(line: 307, column: 8, scope: !539)
!541 = !DILocation(line: 307, column: 8, scope: !7)
!542 = !DILocation(line: 307, column: 30, scope: !543)
!543 = !DILexicalBlockFile(scope: !539, file: !8, discriminator: 1)
!544 = !DILocation(line: 307, column: 23, scope: !543)
!545 = !DILocation(line: 309, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !7, file: !8, line: 309, column: 8)
!547 = !DILocation(line: 309, column: 8, scope: !546)
!548 = !DILocation(line: 309, column: 8, scope: !7)
!549 = !DILocation(line: 309, column: 36, scope: !550)
!550 = !DILexicalBlockFile(scope: !546, file: !8, discriminator: 1)
!551 = !DILocation(line: 309, column: 54, scope: !550)
!552 = !DILocation(line: 309, column: 48, scope: !550)
!553 = !DILocation(line: 309, column: 29, scope: !550)
!554 = !DILocation(line: 309, column: 22, scope: !550)
!555 = !DILocation(line: 310, column: 14, scope: !556)
!556 = distinct !DILexicalBlock(scope: !7, file: !8, line: 310, column: 8)
!557 = !DILocation(line: 310, column: 8, scope: !556)
!558 = !DILocation(line: 310, column: 8, scope: !7)
!559 = !DILocation(line: 312, column: 14, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !8, line: 312, column: 6)
!561 = distinct !DILexicalBlock(scope: !556, file: !8, line: 311, column: 6)
!562 = !DILocation(line: 312, column: 6, scope: !560)
!563 = !DILocation(line: 312, column: 26, scope: !560)
!564 = !DILocation(line: 312, column: 6, scope: !561)
!565 = !DILocation(line: 312, column: 34, scope: !566)
!566 = !DILexicalBlockFile(scope: !560, file: !8, discriminator: 1)
!567 = !DILocation(line: 313, column: 7, scope: !560)
!568 = !DILocation(line: 315, column: 14, scope: !569)
!569 = distinct !DILexicalBlock(scope: !7, file: !8, line: 315, column: 8)
!570 = !DILocation(line: 315, column: 8, scope: !569)
!571 = !DILocation(line: 315, column: 8, scope: !7)
!572 = !DILocation(line: 315, column: 33, scope: !573)
!573 = !DILexicalBlockFile(scope: !569, file: !8, discriminator: 1)
!574 = !DILocation(line: 315, column: 43, scope: !573)
!575 = !DILocation(line: 315, column: 37, scope: !573)
!576 = !DILocation(line: 315, column: 28, scope: !573)
!577 = !DILocation(line: 315, column: 21, scope: !573)
!578 = !DILocation(line: 316, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !7, file: !8, line: 316, column: 8)
!580 = !DILocation(line: 316, column: 8, scope: !579)
!581 = !DILocation(line: 316, column: 8, scope: !7)
!582 = !DILocation(line: 316, column: 30, scope: !583)
!583 = !DILexicalBlockFile(scope: !579, file: !8, discriminator: 1)
!584 = !DILocation(line: 316, column: 25, scope: !583)
!585 = !DILocation(line: 316, column: 18, scope: !583)
!586 = !DILocation(line: 317, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !7, file: !8, line: 317, column: 8)
!588 = !DILocation(line: 317, column: 8, scope: !587)
!589 = !DILocation(line: 317, column: 8, scope: !7)
!590 = !DILocation(line: 317, column: 32, scope: !591)
!591 = !DILexicalBlockFile(scope: !587, file: !8, discriminator: 1)
!592 = !DILocation(line: 317, column: 25, scope: !591)
!593 = !DILocation(line: 317, column: 18, scope: !591)
!594 = !DILocation(line: 318, column: 14, scope: !595)
!595 = distinct !DILexicalBlock(scope: !7, file: !8, line: 318, column: 8)
!596 = !DILocation(line: 318, column: 8, scope: !595)
!597 = !DILocation(line: 318, column: 8, scope: !7)
!598 = !DILocation(line: 318, column: 39, scope: !599)
!599 = !DILexicalBlockFile(scope: !595, file: !8, discriminator: 1)
!600 = !DILocation(line: 318, column: 50, scope: !599)
!601 = !DILocation(line: 318, column: 44, scope: !599)
!602 = !DILocation(line: 318, column: 25, scope: !599)
!603 = !DILocation(line: 318, column: 18, scope: !599)
!604 = !DILocation(line: 319, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !7, file: !8, line: 319, column: 8)
!606 = !DILocation(line: 319, column: 8, scope: !605)
!607 = !DILocation(line: 319, column: 8, scope: !7)
!608 = !DILocation(line: 319, column: 39, scope: !609)
!609 = !DILexicalBlockFile(scope: !605, file: !8, discriminator: 1)
!610 = !DILocation(line: 319, column: 50, scope: !609)
!611 = !DILocation(line: 319, column: 44, scope: !609)
!612 = !DILocation(line: 319, column: 25, scope: !609)
!613 = !DILocation(line: 319, column: 18, scope: !609)
!614 = !DILocation(line: 320, column: 14, scope: !615)
!615 = distinct !DILexicalBlock(scope: !7, file: !8, line: 320, column: 8)
!616 = !DILocation(line: 320, column: 8, scope: !615)
!617 = !DILocation(line: 320, column: 8, scope: !7)
!618 = !DILocation(line: 320, column: 39, scope: !619)
!619 = !DILexicalBlockFile(scope: !615, file: !8, discriminator: 1)
!620 = !DILocation(line: 320, column: 50, scope: !619)
!621 = !DILocation(line: 320, column: 44, scope: !619)
!622 = !DILocation(line: 320, column: 25, scope: !619)
!623 = !DILocation(line: 320, column: 18, scope: !619)
!624 = !DILocation(line: 321, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !7, file: !8, line: 321, column: 8)
!626 = !DILocation(line: 321, column: 8, scope: !625)
!627 = !DILocation(line: 321, column: 8, scope: !7)
!628 = !DILocation(line: 321, column: 39, scope: !629)
!629 = !DILexicalBlockFile(scope: !625, file: !8, discriminator: 1)
!630 = !DILocation(line: 321, column: 50, scope: !629)
!631 = !DILocation(line: 321, column: 44, scope: !629)
!632 = !DILocation(line: 321, column: 25, scope: !629)
!633 = !DILocation(line: 321, column: 18, scope: !629)
!634 = !DILocation(line: 322, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !7, file: !8, line: 322, column: 8)
!636 = !DILocation(line: 322, column: 8, scope: !635)
!637 = !DILocation(line: 322, column: 8, scope: !7)
!638 = !DILocation(line: 322, column: 34, scope: !639)
!639 = !DILexicalBlockFile(scope: !635, file: !8, discriminator: 1)
!640 = !DILocation(line: 322, column: 39, scope: !639)
!641 = !DILocation(line: 322, column: 51, scope: !639)
!642 = !DILocation(line: 322, column: 25, scope: !639)
!643 = !DILocation(line: 322, column: 18, scope: !639)
!644 = !DILocation(line: 323, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !7, file: !8, line: 323, column: 8)
!646 = !DILocation(line: 323, column: 8, scope: !645)
!647 = !DILocation(line: 323, column: 8, scope: !7)
!648 = !DILocation(line: 323, column: 40, scope: !649)
!649 = !DILexicalBlockFile(scope: !645, file: !8, discriminator: 1)
!650 = !DILocation(line: 323, column: 45, scope: !649)
!651 = !DILocation(line: 323, column: 32, scope: !649)
!652 = !DILocation(line: 323, column: 25, scope: !649)
!653 = !DILocation(line: 327, column: 15, scope: !7)
!654 = !DILocation(line: 328, column: 30, scope: !7)
!655 = !DILocation(line: 328, column: 45, scope: !7)
!656 = !DILocation(line: 328, column: 57, scope: !7)
!657 = !DILocation(line: 328, column: 68, scope: !7)
!658 = !DILocation(line: 328, column: 77, scope: !7)
!659 = !DILocation(line: 328, column: 86, scope: !7)
!660 = !DILocation(line: 328, column: 101, scope: !7)
!661 = !DILocation(line: 328, column: 111, scope: !7)
!662 = !DILocation(line: 328, column: 119, scope: !7)
!663 = !DILocation(line: 328, column: 124, scope: !7)
!664 = !DILocation(line: 328, column: 11, scope: !7)
!665 = !DILocation(line: 328, column: 4, scope: !7)
!666 = !DILocation(line: 329, column: 1, scope: !7)
!667 = distinct !DISubprogram(name: "usage", scope: !8, file: !8, line: 331, type: !668, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !13}
!670 = !DILocalVariable(name: "name", arg: 1, scope: !667, file: !8, line: 331, type: !13)
!671 = !DILocation(line: 331, column: 18, scope: !667)
!672 = !DILocation(line: 334, column: 4, scope: !667)
!673 = !DILocation(line: 336, column: 4, scope: !667)
!674 = !DILocation(line: 337, column: 4, scope: !667)
!675 = !DILocation(line: 338, column: 4, scope: !667)
!676 = !DILocation(line: 339, column: 4, scope: !667)
!677 = !DILocation(line: 340, column: 4, scope: !667)
!678 = !DILocation(line: 341, column: 4, scope: !667)
!679 = !DILocation(line: 342, column: 4, scope: !667)
!680 = !DILocation(line: 343, column: 4, scope: !667)
!681 = !DILocation(line: 344, column: 4, scope: !667)
!682 = !DILocation(line: 345, column: 4, scope: !667)
!683 = !DILocation(line: 346, column: 4, scope: !667)
!684 = !DILocation(line: 347, column: 4, scope: !667)
!685 = !DILocation(line: 349, column: 4, scope: !667)
!686 = !DILocation(line: 350, column: 4, scope: !667)
!687 = !DILocation(line: 351, column: 4, scope: !667)
!688 = !DILocation(line: 352, column: 4, scope: !667)
!689 = !DILocation(line: 353, column: 4, scope: !667)
!690 = !DILocation(line: 354, column: 4, scope: !667)
!691 = !DILocation(line: 355, column: 4, scope: !667)
!692 = !DILocation(line: 356, column: 4, scope: !667)
!693 = !DILocation(line: 357, column: 4, scope: !667)
!694 = !DILocation(line: 358, column: 4, scope: !667)
!695 = !DILocation(line: 359, column: 4, scope: !667)
!696 = !DILocation(line: 360, column: 4, scope: !667)
!697 = !DILocation(line: 361, column: 4, scope: !667)
!698 = !DILocation(line: 362, column: 4, scope: !667)
!699 = !DILocation(line: 363, column: 4, scope: !667)
!700 = !DILocation(line: 365, column: 4, scope: !667)
!701 = !DILocation(line: 366, column: 4, scope: !667)
!702 = !DILocation(line: 367, column: 4, scope: !667)
!703 = !DILocation(line: 368, column: 4, scope: !667)
!704 = !DILocation(line: 369, column: 4, scope: !667)
!705 = !DILocation(line: 370, column: 4, scope: !667)
!706 = !DILocation(line: 372, column: 4, scope: !667)
!707 = !DILocation(line: 373, column: 4, scope: !667)
!708 = !DILocation(line: 374, column: 4, scope: !667)
!709 = !DILocation(line: 375, column: 4, scope: !667)
!710 = !DILocation(line: 376, column: 4, scope: !667)
!711 = !DILocation(line: 377, column: 4, scope: !667)
!712 = !DILocation(line: 378, column: 4, scope: !667)
!713 = !DILocation(line: 380, column: 4, scope: !667)
!714 = !DILocation(line: 381, column: 1, scope: !667)
