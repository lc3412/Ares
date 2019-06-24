; ModuleID = './[inter]keepalived--vrrp--vrrp_data.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_data.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.1 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.1 = type { %struct.rb_node }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.timeval = type { i64, i64 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._tracking_vrrp = type { i32, %struct._vrrp_t*, i32 }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.2, %struct._interface*, i8*, i32, i32, i8, %union.anon.4, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.2 = type { %struct.in6_addr }
%union.anon.4 = type { %struct.in6_addr }
%struct._vrrp_script = type { i8*, %struct._notify_script, i64, i64, i32, i32, i32, i32, %struct._list*, i32, i32, i32, i8 }
%struct._vrrp_file = type { i8*, i8*, i8*, i32, i32, %struct._list*, i32 }

@vrrp_data = global %struct._vrrp_data* null, align 8
@old_vrrp_data = global %struct._vrrp_data* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"     %s, weight %d\00", align 1
@global_data = external global %struct._data*, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"Configuration error: VRRP instance[%s] malformed unicast peer address[%s]. Skipping...\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"Configuration error: VRRP instance[%s] and unicast peer address[%s] MUST be of the same family !!! Skipping...\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"(%s): address family must match VRRP instance [%s] - ignoring\00", align 1
@vrrp_buffer = common global i8* null, align 8
@vrrp_buffer_len = common global i64 0, align 8
@garp_delay = common global %struct._list* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"------< Gratuitous ARP delays >------\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"------< Interfaces >------\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"     %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" VRRP Instance = %s\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"   VRRP Version = %d\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"   Sync group = %s\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"   Using Native IPv6\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"   State = %s\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"   Master router = %s\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"   Master priority = %d\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"   Master advert int = %.2f sec\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"   Wantstate = %s\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"   Number of interface and track script faults = %u\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"   Number of track scripts init = %d\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"   Last transition = %ld (%.24s)\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"invalid time \00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"   Read timeout = DISABLED\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"   Read timeout = %ld.%6.6ld (%.19s.%6.6ld)\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"   Master down timer = %u usecs\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"   Use VMAC, is_up = %s,  xmit_base = %s\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"   Interface = %s, vmac on %s, xmit %s i/f\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"vmac\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"   Interface = %s\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"   VRRP interface tracking disabled\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"   Skip checking advert IP addresses\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"   Enforcing strict VRRP compliance\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"   Using src_ip = %s%s\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c" (from configuration)\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"   Gratuitous ARP delay = %d\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"   Gratuitous ARP repeat = %d\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"   Gratuitous ARP refresh = %lu\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"   Gratuitous ARP refresh repeat = %d\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"   Gratuitous ARP lower priority delay = %u\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"   Gratuitous ARP lower priority repeat = %u\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"   Send advert after receive lower priority advert = %s\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"   Send advert after receive higher priority advert = %s\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"   Virtual Router ID = %d\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"   Priority = %d\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"   Effective priority = %d\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"   Total priority = %d\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"   Advert interval = %d %s\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"milli-sec\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"   Master advert interval = %d milli-sec\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"   Accept = %s\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"   Preempt = %s\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"   Preempt delay = %g secs\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"   Promote_secondaries = %s\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"   Authentication type = %s\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"IPSEC_AH\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"SIMPLE_PASSWORD\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"   Password = %s\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"   Authentication type = none\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"   Kernel rx buffer size = %lu\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"   Debug level = %d\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"   Virtual IP = %d\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"   Virtual IP Excluded = %d\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"   Unicast Peer = %d\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"   Unicast checksum compatibility = %s\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"   Virtual Routes = %d\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"   Virtual Rules = %d\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"   Tracked interfaces = %d\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"   Tracked scripts = %d\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"   Tracked files = %d\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"   Using smtp notification = %s\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Backup\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"Fault\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Stop\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"Master rx lower pri\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"BACKUP\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"MASTER\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"FAULT\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"DISPATCHER\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"   %s state transition script = %s, uid:gid %d:%d\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"sync group %s - iname vector exists when freeing group\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c" VRRP Sync Group = %s, %s\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"   VRRP member instances = %d\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"   sync group tracking weight set\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c" VRRP Script = %s\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"   Command = %s\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"   Interval = %lu sec\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"   Timeout = %lu sec\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"   Weight = %d\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"   Rise = %d\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"   Fall = %d\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"   Insecure = %s\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"INIT/FAILED\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"GOOD\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"BAD\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"   Status = %s\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"   Script uid:gid = %d:%d\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"   VRRP instances = %d\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"requested termination\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"forcing termination\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c" VRRP Track file = %s\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"   File = %s\00", align 1
@.str.118 = private unnamed_addr constant [32 x i8] c"   Tracking VRRP instances = %d\00", align 1
@.str.119 = private unnamed_addr constant [76 x i8] c"VRRP sockpool: [ifindex(%u), family(%s), proto(%u), unicast(%d), fd(%d,%d)]\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"------< Static Addresses >------\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"------< Static Routes >------\00", align 1
@.str.124 = private unnamed_addr constant [29 x i8] c"------< Static Rules >------\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"------< Static Track groups >------\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"------< VRRP Topology >------\00", align 1
@.str.127 = private unnamed_addr constant [33 x i8] c"------< VRRP Sync groups >------\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"------< VRRP Scripts >------\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"------< VRRP Track files >------\00", align 1

; Function Attrs: nounwind uwtable
define void @alloc_saddress(%struct._vector*) #0 !dbg !638 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !642, metadata !643), !dbg !644
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !645
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 1, !dbg !647
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !647
  %6 = icmp ne %struct._list* %5, null, !dbg !648
  br i1 %6, label %11, label %7, !dbg !649

; <label>:7:                                      ; preds = %1
  %8 = call %struct._list* @alloc_list(void (i8*)* @free_ipaddress, void (%struct._IO_FILE*, i8*)* @dump_ipaddress), !dbg !650
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !651
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 1, !dbg !652
  store %struct._list* %8, %struct._list** %10, align 8, !dbg !653
  br label %11, !dbg !651

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !654
  %13 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %12, i32 0, i32 1, !dbg !655
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !655
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !656
  call void @alloc_ipaddress(%struct._list* %14, %struct._vector* %15, %struct._interface* null, i1 zeroext true), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #2

declare void @free_ipaddress(i8*) #2

declare void @dump_ipaddress(%struct._IO_FILE*, i8*) #2

declare void @alloc_ipaddress(%struct._list*, %struct._vector*, %struct._interface*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define void @alloc_sroute(%struct._vector*) #0 !dbg !659 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !660, metadata !643), !dbg !661
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !662
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 2, !dbg !664
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !664
  %6 = icmp ne %struct._list* %5, null, !dbg !665
  br i1 %6, label %11, label %7, !dbg !666

; <label>:7:                                      ; preds = %1
  %8 = call %struct._list* @alloc_list(void (i8*)* @free_iproute, void (%struct._IO_FILE*, i8*)* @dump_iproute), !dbg !667
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !668
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 2, !dbg !669
  store %struct._list* %8, %struct._list** %10, align 8, !dbg !670
  br label %11, !dbg !668

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !671
  %13 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %12, i32 0, i32 2, !dbg !672
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !672
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !673
  call void @alloc_route(%struct._list* %14, %struct._vector* %15, i1 zeroext true), !dbg !674
  ret void, !dbg !675
}

declare void @free_iproute(i8*) #2

declare void @dump_iproute(%struct._IO_FILE*, i8*) #2

declare void @alloc_route(%struct._list*, %struct._vector*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define void @alloc_srule(%struct._vector*) #0 !dbg !676 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !677, metadata !643), !dbg !678
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !679
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 3, !dbg !681
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !681
  %6 = icmp ne %struct._list* %5, null, !dbg !682
  br i1 %6, label %11, label %7, !dbg !683

; <label>:7:                                      ; preds = %1
  %8 = call %struct._list* @alloc_list(void (i8*)* @free_iprule, void (%struct._IO_FILE*, i8*)* @dump_iprule), !dbg !684
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !685
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 3, !dbg !686
  store %struct._list* %8, %struct._list** %10, align 8, !dbg !687
  br label %11, !dbg !685

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !688
  %13 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %12, i32 0, i32 3, !dbg !689
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !689
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !690
  call void @alloc_rule(%struct._list* %14, %struct._vector* %15, i1 zeroext true), !dbg !691
  ret void, !dbg !692
}

declare void @free_iprule(i8*) #2

declare void @dump_iprule(%struct._IO_FILE*, i8*) #2

declare void @alloc_rule(%struct._list*, %struct._vector*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define void @dump_tracking_vrrp(%struct._IO_FILE*, i8*) #0 !dbg !693 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._tracking_vrrp*, align 8
  %6 = alloca %struct._vrrp_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !694, metadata !643), !dbg !695
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !696, metadata !643), !dbg !697
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %5, metadata !698, metadata !643), !dbg !699
  %7 = load i8*, i8** %4, align 8, !dbg !700
  %8 = bitcast i8* %7 to %struct._tracking_vrrp*, !dbg !701
  store %struct._tracking_vrrp* %8, %struct._tracking_vrrp** %5, align 8, !dbg !699
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %6, metadata !702, metadata !643), !dbg !703
  %9 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !704
  %10 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %9, i32 0, i32 1, !dbg !705
  %11 = load %struct._vrrp_t*, %struct._vrrp_t** %10, align 8, !dbg !705
  store %struct._vrrp_t* %11, %struct._vrrp_t** %6, align 8, !dbg !703
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !706
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !707
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 1, !dbg !708
  %15 = load i8*, i8** %14, align 8, !dbg !708
  %16 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !709
  %17 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %16, i32 0, i32 0, !dbg !710
  %18 = load i32, i32* %17, align 8, !dbg !710
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* %15, i32 %18), !dbg !711
  ret void, !dbg !712
}

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @alloc_static_track_group(i8*) #0 !dbg !713 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._static_track_group*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !716, metadata !643), !dbg !717
  call void @llvm.dbg.declare(metadata i64* %3, metadata !718, metadata !643), !dbg !719
  %5 = load i8*, i8** %2, align 8, !dbg !720
  %6 = call i64 @strlen(i8* %5) #7, !dbg !721
  store i64 %6, i64* %3, align 8, !dbg !719
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %4, metadata !722, metadata !643), !dbg !723
  %7 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !724
  %8 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %7, i32 0, i32 0, !dbg !726
  %9 = load %struct._list*, %struct._list** %8, align 8, !dbg !726
  %10 = icmp ne %struct._list* %9, null, !dbg !727
  br i1 %10, label %15, label %11, !dbg !728

; <label>:11:                                     ; preds = %1
  %12 = call %struct._list* @alloc_list(void (i8*)* @free_tgroup, void (%struct._IO_FILE*, i8*)* @dump_tgroup), !dbg !729
  %13 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !730
  %14 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %13, i32 0, i32 0, !dbg !731
  store %struct._list* %12, %struct._list** %14, align 8, !dbg !732
  br label %15, !dbg !730

; <label>:15:                                     ; preds = %11, %1
  %16 = call i8* @zalloc(i64 24), !dbg !733
  %17 = bitcast i8* %16 to %struct._static_track_group*, !dbg !734
  store %struct._static_track_group* %17, %struct._static_track_group** %4, align 8, !dbg !735
  %18 = load i64, i64* %3, align 8, !dbg !736
  %19 = add i64 %18, 1, !dbg !737
  %20 = call i8* @zalloc(i64 %19), !dbg !738
  %21 = load %struct._static_track_group*, %struct._static_track_group** %4, align 8, !dbg !739
  %22 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %21, i32 0, i32 0, !dbg !740
  store i8* %20, i8** %22, align 8, !dbg !741
  %23 = load %struct._static_track_group*, %struct._static_track_group** %4, align 8, !dbg !742
  %24 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %23, i32 0, i32 0, !dbg !743
  %25 = load i8*, i8** %24, align 8, !dbg !743
  %26 = load i8*, i8** %2, align 8, !dbg !744
  %27 = load i64, i64* %3, align 8, !dbg !745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %27, i32 1, i1 false), !dbg !746
  %28 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !747
  %29 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %28, i32 0, i32 0, !dbg !748
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !748
  %31 = load %struct._static_track_group*, %struct._static_track_group** %4, align 8, !dbg !749
  %32 = bitcast %struct._static_track_group* %31 to i8*, !dbg !749
  call void @list_add(%struct._list* %30, i8* %32), !dbg !750
  ret void, !dbg !751
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @free_tgroup(i8*) #2

declare void @dump_tgroup(%struct._IO_FILE*, i8*) #2

declare i8* @zalloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @list_add(%struct._list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_sync_group(i8*) #0 !dbg !752 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._vrrp_sgroup*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !753, metadata !643), !dbg !754
  call void @llvm.dbg.declare(metadata i64* %3, metadata !755, metadata !643), !dbg !756
  %5 = load i8*, i8** %2, align 8, !dbg !757
  %6 = call i64 @strlen(i8* %5) #7, !dbg !758
  store i64 %6, i64* %3, align 8, !dbg !756
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %4, metadata !759, metadata !643), !dbg !760
  %7 = call i8* @zalloc(i64 128), !dbg !761
  %8 = bitcast i8* %7 to %struct._vrrp_sgroup*, !dbg !762
  store %struct._vrrp_sgroup* %8, %struct._vrrp_sgroup** %4, align 8, !dbg !763
  %9 = load i64, i64* %3, align 8, !dbg !764
  %10 = add i64 %9, 1, !dbg !765
  %11 = call i8* @zalloc(i64 %10), !dbg !766
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !767
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 0, !dbg !768
  store i8* %11, i8** %13, align 8, !dbg !769
  %14 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !770
  %15 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %14, i32 0, i32 5, !dbg !771
  store i32 0, i32* %15, align 8, !dbg !772
  %16 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !773
  %17 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %16, i32 0, i32 18, !dbg !774
  store i32 0, i32* %17, align 4, !dbg !775
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !776
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 0, !dbg !777
  %20 = load i8*, i8** %19, align 8, !dbg !777
  %21 = load i8*, i8** %2, align 8, !dbg !778
  %22 = load i64, i64* %3, align 8, !dbg !779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %22, i32 1, i1 false), !dbg !780
  %23 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !781
  %24 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %23, i32 0, i32 6, !dbg !782
  store i8 0, i8* %24, align 4, !dbg !783
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !784
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 17, !dbg !785
  store i32 -1, i32* %26, align 8, !dbg !786
  %27 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !787
  %28 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %27, i32 0, i32 4, !dbg !788
  %29 = load %struct._list*, %struct._list** %28, align 8, !dbg !788
  %30 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !789
  %31 = bitcast %struct._vrrp_sgroup* %30 to i8*, !dbg !789
  call void @list_add(%struct._list* %29, i8* %31), !dbg !790
  ret void, !dbg !791
}

; Function Attrs: nounwind uwtable
define %struct._vrrp_stats* @alloc_vrrp_stats() #0 !dbg !792 {
  %1 = alloca %struct._vrrp_stats*, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_stats** %1, metadata !795, metadata !643), !dbg !796
  %2 = call i8* @zalloc(i64 96), !dbg !797
  %3 = bitcast i8* %2 to %struct._vrrp_stats*, !dbg !798
  store %struct._vrrp_stats* %3, %struct._vrrp_stats** %1, align 8, !dbg !799
  %4 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !800
  %5 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %4, i32 0, i32 2, !dbg !801
  store i32 0, i32* %5, align 4, !dbg !802
  %6 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !803
  %7 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %6, i32 0, i32 3, !dbg !804
  store i32 0, i32* %7, align 8, !dbg !805
  %8 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !806
  %9 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %8, i32 0, i32 9, !dbg !807
  store i32 0, i32* %9, align 8, !dbg !808
  %10 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !809
  %11 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %10, i32 0, i32 10, !dbg !810
  store i32 0, i32* %11, align 4, !dbg !811
  %12 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !812
  %13 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %12, i32 0, i32 11, !dbg !813
  store i32 0, i32* %13, align 8, !dbg !814
  %14 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !815
  %15 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %14, i32 0, i32 4, !dbg !816
  store i64 0, i64* %15, align 8, !dbg !817
  %16 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !818
  %17 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %16, i32 0, i32 0, !dbg !819
  store i64 0, i64* %17, align 8, !dbg !820
  %18 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !821
  %19 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %18, i32 0, i32 1, !dbg !822
  store i32 0, i32* %19, align 8, !dbg !823
  %20 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !824
  %21 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %20, i32 0, i32 5, !dbg !825
  store i64 0, i64* %21, align 8, !dbg !826
  %22 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !827
  %23 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %22, i32 0, i32 6, !dbg !828
  store i64 0, i64* %23, align 8, !dbg !829
  %24 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !830
  %25 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %24, i32 0, i32 12, !dbg !831
  store i64 0, i64* %25, align 8, !dbg !832
  %26 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !833
  %27 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %26, i32 0, i32 13, !dbg !834
  store i64 0, i64* %27, align 8, !dbg !835
  %28 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !836
  %29 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %28, i32 0, i32 7, !dbg !837
  store i64 0, i64* %29, align 8, !dbg !838
  %30 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !839
  %31 = getelementptr inbounds %struct._vrrp_stats, %struct._vrrp_stats* %30, i32 0, i32 8, !dbg !840
  store i64 0, i64* %31, align 8, !dbg !841
  %32 = load %struct._vrrp_stats*, %struct._vrrp_stats** %1, align 8, !dbg !842
  ret %struct._vrrp_stats* %32, !dbg !843
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp(i8*) #0 !dbg !844 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !845, metadata !643), !dbg !846
  call void @llvm.dbg.declare(metadata i64* %3, metadata !847, metadata !643), !dbg !848
  %6 = load i8*, i8** %2, align 8, !dbg !849
  %7 = call i64 @strlen(i8* %6) #7, !dbg !850
  store i64 %7, i64* %3, align 8, !dbg !848
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !851, metadata !643), !dbg !852
  %8 = call i8* @zalloc(i64 880), !dbg !853
  %9 = bitcast i8* %8 to %struct._vrrp_t*, !dbg !854
  store %struct._vrrp_t* %9, %struct._vrrp_t** %4, align 8, !dbg !855
  %10 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !856
  %11 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %10, i32 0, i32 0, !dbg !857
  store i16 0, i16* %11, align 8, !dbg !858
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !859
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 16, !dbg !860
  %14 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0, !dbg !861
  store i16 0, i16* %14, align 8, !dbg !862
  %15 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !863
  %16 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %15, i32 0, i32 56, !dbg !864
  store i32 0, i32* %16, align 4, !dbg !865
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !866
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 62, !dbg !867
  store i32 0, i32* %18, align 4, !dbg !868
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !869
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 60, !dbg !870
  store i32 0, i32* %20, align 4, !dbg !871
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !872
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 23, !dbg !873
  store i8 0, i8* %22, align 8, !dbg !874
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !875
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 24, !dbg !876
  %25 = call { i64, i64 } @timer_now(), !dbg !877
  %26 = bitcast %struct.timeval* %5 to { i64, i64 }*, !dbg !877
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0, !dbg !877
  %28 = extractvalue { i64, i64 } %25, 0, !dbg !877
  store i64 %28, i64* %27, align 8, !dbg !877
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1, !dbg !877
  %30 = extractvalue { i64, i64 } %25, 1, !dbg !877
  store i64 %30, i64* %29, align 8, !dbg !877
  %31 = bitcast %struct.timeval* %24 to i8*, !dbg !877
  %32 = bitcast %struct.timeval* %5 to i8*, !dbg !877
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !dbg !878
  %33 = load i64, i64* %3, align 8, !dbg !880
  %34 = add i64 %33, 1, !dbg !881
  %35 = call i8* @zalloc(i64 %34), !dbg !882
  %36 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !883
  %37 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %36, i32 0, i32 1, !dbg !884
  store i8* %35, i8** %37, align 8, !dbg !885
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !886
  %39 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %38, i32 0, i32 1, !dbg !887
  %40 = load i8*, i8** %39, align 8, !dbg !887
  %41 = load i8*, i8** %2, align 8, !dbg !888
  %42 = load i64, i64* %3, align 8, !dbg !889
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %42, i32 1, i1 false), !dbg !890
  %43 = call %struct._vrrp_stats* @alloc_vrrp_stats(), !dbg !891
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !892
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 3, !dbg !893
  store %struct._vrrp_stats* %43, %struct._vrrp_stats** %45, align 8, !dbg !894
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !895
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 49, !dbg !896
  store i32 -1, i32* %47, align 8, !dbg !897
  %48 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !898
  %49 = getelementptr inbounds %struct._data, %struct._data* %48, i32 0, i32 26, !dbg !899
  %50 = load i32, i32* %49, align 8, !dbg !899
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !900
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 28, !dbg !901
  store i32 %50, i32* %52, align 8, !dbg !902
  %53 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !903
  %54 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %53, i32 0, i32 26, !dbg !904
  %55 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !905
  %56 = getelementptr inbounds %struct._data, %struct._data* %55, i32 0, i32 25, !dbg !906
  %57 = bitcast %struct.timeval* %54 to i8*, !dbg !906
  %58 = bitcast %struct.timeval* %56 to i8*, !dbg !906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false), !dbg !906
  %59 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !907
  %60 = getelementptr inbounds %struct._data, %struct._data* %59, i32 0, i32 27, !dbg !908
  %61 = load i32, i32* %60, align 4, !dbg !908
  %62 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !909
  %63 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %62, i32 0, i32 29, !dbg !910
  store i32 %61, i32* %63, align 4, !dbg !911
  %64 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !912
  %65 = getelementptr inbounds %struct._data, %struct._data* %64, i32 0, i32 24, !dbg !913
  %66 = load i32, i32* %65, align 8, !dbg !913
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !914
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 25, !dbg !915
  store i32 %66, i32* %68, align 8, !dbg !916
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !917
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 30, !dbg !918
  store i32 -1, i32* %70, align 8, !dbg !919
  %71 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !920
  %72 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %71, i32 0, i32 33, !dbg !921
  store i32 -1, i32* %72, align 8, !dbg !922
  %73 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !923
  %74 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %73, i32 0, i32 34, !dbg !924
  store i32 -1, i32* %74, align 4, !dbg !925
  %75 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !926
  %76 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %75, i32 0, i32 35, !dbg !927
  store i32 -1, i32* %76, align 8, !dbg !928
  %77 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !929
  %78 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %77, i32 0, i32 21, !dbg !930
  store i32 0, i32* %78, align 8, !dbg !931
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !932
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 61, !dbg !933
  store i32 -1, i32* %80, align 8, !dbg !934
  %81 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !935
  %82 = getelementptr inbounds %struct._data, %struct._data* %81, i32 0, i32 42, !dbg !936
  %83 = load i8, i8* %82, align 4, !dbg !936
  %84 = trunc i8 %83 to i1, !dbg !936
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !937
  %86 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %85, i32 0, i32 7, !dbg !938
  %87 = zext i1 %84 to i8, !dbg !939
  store i8 %87, i8* %86, align 2, !dbg !939
  %88 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !940
  %89 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %88, i32 0, i32 8, !dbg !941
  store i32 -1, i32* %89, align 4, !dbg !942
  %90 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !943
  %91 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %90, i32 0, i32 5, !dbg !944
  %92 = load %struct._list*, %struct._list** %91, align 8, !dbg !944
  %93 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !945
  %94 = bitcast %struct._vrrp_t* %93 to i8*, !dbg !945
  call void @list_add(%struct._list* %92, i8* %94), !dbg !946
  ret void, !dbg !947
}

declare { i64, i64 } @timer_now() #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_unicast_peer(%struct._vector*) #0 !dbg !948 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !949, metadata !643), !dbg !950
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !951, metadata !643), !dbg !952
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !953
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !954
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !954
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !955
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !955
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !956
  %11 = load i8*, i8** %10, align 8, !dbg !956
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !957
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !952
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !958, metadata !643), !dbg !959
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %4, align 8, !dbg !959
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !960
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 20, !dbg !962
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !962
  %16 = icmp ne %struct._list* %15, null, !dbg !963
  br i1 %16, label %21, label %17, !dbg !964

; <label>:17:                                     ; preds = %1
  %18 = call %struct._list* @alloc_list(void (i8*)* @free_unicast_peer, void (%struct._IO_FILE*, i8*)* @dump_unicast_peer), !dbg !965
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !966
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 20, !dbg !967
  store %struct._list* %18, %struct._list** %20, align 8, !dbg !968
  br label %21, !dbg !966

; <label>:21:                                     ; preds = %17, %1
  %22 = call i8* @zalloc(i64 128), !dbg !969
  %23 = bitcast i8* %22 to %struct.sockaddr_storage*, !dbg !970
  store %struct.sockaddr_storage* %23, %struct.sockaddr_storage** %4, align 8, !dbg !971
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !972
  %25 = call i8* @strvec_slot(%struct._vector* %24, i64 0), !dbg !974
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !975
  %27 = call i32 @inet_stosockaddr(i8* %25, i8* null, %struct.sockaddr_storage* %26), !dbg !976
  %28 = icmp ne i32 %27, 0, !dbg !978
  br i1 %28, label %29, label %37, !dbg !979

; <label>:29:                                     ; preds = %21
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !980
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 1, !dbg !982
  %32 = load i8*, i8** %31, align 8, !dbg !982
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !983
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 0), !dbg !984
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i8* %32, i8* %34), !dbg !985
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !986
  %36 = bitcast %struct.sockaddr_storage* %35 to i8*, !dbg !986
  call void @free(i8* %36) #8, !dbg !987
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %4, align 8, !dbg !988
  br label %73, !dbg !989

; <label>:37:                                     ; preds = %21
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !990
  %39 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %38, i32 0, i32 0, !dbg !992
  %40 = load i16, i16* %39, align 8, !dbg !992
  %41 = icmp ne i16 %40, 0, !dbg !990
  br i1 %41, label %48, label %42, !dbg !993

; <label>:42:                                     ; preds = %37
  %43 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !994
  %44 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %43, i32 0, i32 0, !dbg !995
  %45 = load i16, i16* %44, align 8, !dbg !995
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !996
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 0, !dbg !997
  store i16 %45, i16* %47, align 8, !dbg !998
  br label %67, !dbg !996

; <label>:48:                                     ; preds = %37
  %49 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !999
  %50 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %49, i32 0, i32 0, !dbg !1001
  %51 = load i16, i16* %50, align 8, !dbg !1001
  %52 = zext i16 %51 to i32, !dbg !999
  %53 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1002
  %54 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %53, i32 0, i32 0, !dbg !1003
  %55 = load i16, i16* %54, align 8, !dbg !1003
  %56 = zext i16 %55 to i32, !dbg !1002
  %57 = icmp ne i32 %52, %56, !dbg !1004
  br i1 %57, label %58, label %66, !dbg !1005

; <label>:58:                                     ; preds = %48
  %59 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1006
  %60 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %59, i32 0, i32 1, !dbg !1008
  %61 = load i8*, i8** %60, align 8, !dbg !1008
  %62 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1009
  %63 = call i8* @strvec_slot(%struct._vector* %62, i64 0), !dbg !1010
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i32 0, i32 0), i8* %61, i8* %63), !dbg !1011
  %64 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1012
  %65 = bitcast %struct.sockaddr_storage* %64 to i8*, !dbg !1012
  call void @free(i8* %65) #8, !dbg !1013
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %4, align 8, !dbg !1014
  br label %73, !dbg !1015

; <label>:66:                                     ; preds = %48
  br label %67

; <label>:67:                                     ; preds = %66, %42
  %68 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1016
  %69 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %68, i32 0, i32 20, !dbg !1017
  %70 = load %struct._list*, %struct._list** %69, align 8, !dbg !1017
  %71 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1018
  %72 = bitcast %struct.sockaddr_storage* %71 to i8*, !dbg !1018
  call void @list_add(%struct._list* %70, i8* %72), !dbg !1019
  br label %73, !dbg !1020

; <label>:73:                                     ; preds = %67, %58, %29
  ret void, !dbg !1021
}

; Function Attrs: nounwind uwtable
define internal void @free_unicast_peer(i8*) #0 !dbg !1023 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1024, metadata !643), !dbg !1025
  %3 = load i8*, i8** %2, align 8, !dbg !1026
  call void @free(i8* %3) #8, !dbg !1027
  store i8* null, i8** %2, align 8, !dbg !1028
  ret void, !dbg !1029
}

; Function Attrs: nounwind uwtable
define internal void @dump_unicast_peer(%struct._IO_FILE*, i8*) #0 !dbg !1030 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1031, metadata !643), !dbg !1032
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1033, metadata !643), !dbg !1034
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %5, metadata !1035, metadata !643), !dbg !1036
  %6 = load i8*, i8** %4, align 8, !dbg !1037
  %7 = bitcast i8* %6 to %struct.sockaddr_storage*, !dbg !1037
  store %struct.sockaddr_storage* %7, %struct.sockaddr_storage** %5, align 8, !dbg !1036
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1038
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !1039
  %10 = call i8* @inet_sockaddrtos(%struct.sockaddr_storage* %9), !dbg !1040
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %10), !dbg !1041
  ret void, !dbg !1043
}

declare i32 @inet_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #2

declare i8* @strvec_slot(%struct._vector*, i64) #2

declare void @report_config_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_track_if(%struct._vector*) #0 !dbg !1044 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1045, metadata !643), !dbg !1046
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1047, metadata !643), !dbg !1048
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1049
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1050
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1050
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1051
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1051
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1052
  %10 = load i8*, i8** %9, align 8, !dbg !1052
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1053
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1048
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1054
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 11, !dbg !1056
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1056
  %15 = icmp ne %struct._list* %14, null, !dbg !1057
  br i1 %15, label %20, label %16, !dbg !1058

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_track_if, void (%struct._IO_FILE*, i8*)* @dump_track_if), !dbg !1059
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1060
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 11, !dbg !1061
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1062
  br label %20, !dbg !1060

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1063
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1064
  call void @alloc_track_if(%struct._vrrp_t* %21, %struct._vector* %22), !dbg !1065
  ret void, !dbg !1066
}

declare void @free_track_if(i8*) #2

declare void @dump_track_if(%struct._IO_FILE*, i8*) #2

declare void @alloc_track_if(%struct._vrrp_t*, %struct._vector*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_track_script(%struct._vector*) #0 !dbg !1067 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1068, metadata !643), !dbg !1069
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1070, metadata !643), !dbg !1071
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1072
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1073
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1073
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1074
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1074
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1075
  %10 = load i8*, i8** %9, align 8, !dbg !1075
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1076
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1071
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1077
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 12, !dbg !1079
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1079
  %15 = icmp ne %struct._list* %14, null, !dbg !1080
  br i1 %15, label %20, label %16, !dbg !1081

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_track_script, void (%struct._IO_FILE*, i8*)* @dump_track_script), !dbg !1082
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1083
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 12, !dbg !1084
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1085
  br label %20, !dbg !1083

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1086
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1087
  call void @alloc_track_script(%struct._vrrp_t* %21, %struct._vector* %22), !dbg !1088
  ret void, !dbg !1089
}

declare void @free_track_script(i8*) #2

declare void @dump_track_script(%struct._IO_FILE*, i8*) #2

declare void @alloc_track_script(%struct._vrrp_t*, %struct._vector*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_track_file(%struct._vector*) #0 !dbg !1090 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1091, metadata !643), !dbg !1092
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1093, metadata !643), !dbg !1094
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1095
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1096
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1096
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1097
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1097
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1098
  %10 = load i8*, i8** %9, align 8, !dbg !1098
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1099
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1094
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1100
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 13, !dbg !1102
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1102
  %15 = icmp ne %struct._list* %14, null, !dbg !1103
  br i1 %15, label %20, label %16, !dbg !1104

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_track_file, void (%struct._IO_FILE*, i8*)* @dump_track_file), !dbg !1105
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1106
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 13, !dbg !1107
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1108
  br label %20, !dbg !1106

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1109
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1110
  call void @alloc_track_file(%struct._vrrp_t* %21, %struct._vector* %22), !dbg !1111
  ret void, !dbg !1112
}

declare void @free_track_file(i8*) #2

declare void @dump_track_file(%struct._IO_FILE*, i8*) #2

declare void @alloc_track_file(%struct._vrrp_t*, %struct._vector*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_group_track_if(%struct._vector*) #0 !dbg !1113 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1114, metadata !643), !dbg !1115
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !1116, metadata !643), !dbg !1117
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1118
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !1119
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1119
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1120
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1120
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1121
  %10 = load i8*, i8** %9, align 8, !dbg !1121
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !1122
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !1117
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1123
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 7, !dbg !1125
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1125
  %15 = icmp ne %struct._list* %14, null, !dbg !1126
  br i1 %15, label %20, label %16, !dbg !1127

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_track_if, void (%struct._IO_FILE*, i8*)* @dump_track_if), !dbg !1128
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1129
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 7, !dbg !1130
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1131
  br label %20, !dbg !1129

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1132
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1133
  call void @alloc_group_track_if(%struct._vrrp_sgroup* %21, %struct._vector* %22), !dbg !1134
  ret void, !dbg !1135
}

declare void @alloc_group_track_if(%struct._vrrp_sgroup*, %struct._vector*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_group_track_script(%struct._vector*) #0 !dbg !1136 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1137, metadata !643), !dbg !1138
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !1139, metadata !643), !dbg !1140
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1141
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !1142
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1142
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1143
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1143
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1144
  %10 = load i8*, i8** %9, align 8, !dbg !1144
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !1145
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !1140
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1146
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 8, !dbg !1148
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1148
  %15 = icmp ne %struct._list* %14, null, !dbg !1149
  br i1 %15, label %20, label %16, !dbg !1150

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_track_script, void (%struct._IO_FILE*, i8*)* @dump_track_script), !dbg !1151
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1152
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 8, !dbg !1153
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1154
  br label %20, !dbg !1152

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1155
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1156
  call void @alloc_group_track_script(%struct._vrrp_sgroup* %21, %struct._vector* %22), !dbg !1157
  ret void, !dbg !1158
}

declare void @alloc_group_track_script(%struct._vrrp_sgroup*, %struct._vector*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_group_track_file(%struct._vector*) #0 !dbg !1159 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1160, metadata !643), !dbg !1161
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !1162, metadata !643), !dbg !1163
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1164
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !1165
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1165
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1166
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1166
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1167
  %10 = load i8*, i8** %9, align 8, !dbg !1167
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !1168
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !1163
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1169
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 9, !dbg !1171
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1171
  %15 = icmp ne %struct._list* %14, null, !dbg !1172
  br i1 %15, label %20, label %16, !dbg !1173

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_track_file, void (%struct._IO_FILE*, i8*)* @dump_track_file), !dbg !1174
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1175
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 9, !dbg !1176
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1177
  br label %20, !dbg !1175

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !1178
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1179
  call void @alloc_group_track_file(%struct._vrrp_sgroup* %21, %struct._vector* %22), !dbg !1180
  ret void, !dbg !1181
}

declare void @alloc_group_track_file(%struct._vrrp_sgroup*, %struct._vector*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_vip(%struct._vector*) #0 !dbg !1182 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1183, metadata !643), !dbg !1184
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1185, metadata !643), !dbg !1186
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1187
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 5, !dbg !1188
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1188
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1189
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1189
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1190
  %12 = load i8*, i8** %11, align 8, !dbg !1190
  %13 = bitcast i8* %12 to %struct._vrrp_t*, !dbg !1191
  store %struct._vrrp_t* %13, %struct._vrrp_t** %3, align 8, !dbg !1186
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1192, metadata !643), !dbg !1193
  store i8* null, i8** %4, align 8, !dbg !1193
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1194, metadata !643), !dbg !1195
  %14 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1196
  %15 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %14, i32 0, i32 41, !dbg !1198
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1198
  %17 = icmp ne %struct._list* %16, null, !dbg !1199
  br i1 %17, label %22, label %18, !dbg !1200

; <label>:18:                                     ; preds = %1
  %19 = call %struct._list* @alloc_list(void (i8*)* @free_ipaddress, void (%struct._IO_FILE*, i8*)* @dump_ipaddress), !dbg !1201
  %20 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1202
  %21 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %20, i32 0, i32 41, !dbg !1203
  store %struct._list* %19, %struct._list** %21, align 8, !dbg !1204
  br label %50, !dbg !1202

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1205
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 41, !dbg !1207
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1207
  %26 = icmp eq %struct._list* %25, null, !dbg !1208
  br i1 %26, label %49, label %27, !dbg !1209

; <label>:27:                                     ; preds = %22
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1210
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 41, !dbg !1212
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1212
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !1213
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !1213
  %33 = icmp eq %struct._element* %32, null, !dbg !1214
  br i1 %33, label %34, label %41, !dbg !1215

; <label>:34:                                     ; preds = %27
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1216
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 41, !dbg !1218
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1218
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 1, !dbg !1219
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !1219
  %40 = icmp eq %struct._element* %39, null, !dbg !1220
  br i1 %40, label %49, label %41, !dbg !1221

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1222
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 41, !dbg !1223
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1223
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 1, !dbg !1224
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !1224
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 2, !dbg !1225
  %48 = load i8*, i8** %47, align 8, !dbg !1225
  store i8* %48, i8** %4, align 8, !dbg !1226
  br label %49, !dbg !1227

; <label>:49:                                     ; preds = %41, %34, %22
  br label %50

; <label>:50:                                     ; preds = %49, %18
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1228
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 41, !dbg !1229
  %53 = load %struct._list*, %struct._list** %52, align 8, !dbg !1229
  %54 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1230
  %55 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1231
  %56 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %55, i32 0, i32 4, !dbg !1232
  %57 = load %struct._interface*, %struct._interface** %56, align 8, !dbg !1232
  call void @alloc_ipaddress(%struct._list* %53, %struct._vector* %54, %struct._interface* %57, i1 zeroext false), !dbg !1233
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1234
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 41, !dbg !1236
  %60 = load %struct._list*, %struct._list** %59, align 8, !dbg !1236
  %61 = icmp eq %struct._list* %60, null, !dbg !1237
  br i1 %61, label %132, label %62, !dbg !1238

; <label>:62:                                     ; preds = %50
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1239
  %64 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %63, i32 0, i32 41, !dbg !1241
  %65 = load %struct._list*, %struct._list** %64, align 8, !dbg !1241
  %66 = getelementptr inbounds %struct._list, %struct._list* %65, i32 0, i32 0, !dbg !1242
  %67 = load %struct._element*, %struct._element** %66, align 8, !dbg !1242
  %68 = icmp eq %struct._element* %67, null, !dbg !1243
  br i1 %68, label %69, label %76, !dbg !1244

; <label>:69:                                     ; preds = %62
  %70 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1245
  %71 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %70, i32 0, i32 41, !dbg !1247
  %72 = load %struct._list*, %struct._list** %71, align 8, !dbg !1247
  %73 = getelementptr inbounds %struct._list, %struct._list* %72, i32 0, i32 1, !dbg !1248
  %74 = load %struct._element*, %struct._element** %73, align 8, !dbg !1248
  %75 = icmp eq %struct._element* %74, null, !dbg !1249
  br i1 %75, label %132, label %76, !dbg !1250

; <label>:76:                                     ; preds = %69, %62
  %77 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1251
  %78 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %77, i32 0, i32 41, !dbg !1253
  %79 = load %struct._list*, %struct._list** %78, align 8, !dbg !1253
  %80 = getelementptr inbounds %struct._list, %struct._list* %79, i32 0, i32 1, !dbg !1254
  %81 = load %struct._element*, %struct._element** %80, align 8, !dbg !1254
  %82 = getelementptr inbounds %struct._element, %struct._element* %81, i32 0, i32 2, !dbg !1255
  %83 = load i8*, i8** %82, align 8, !dbg !1255
  %84 = load i8*, i8** %4, align 8, !dbg !1256
  %85 = icmp ne i8* %83, %84, !dbg !1257
  br i1 %85, label %86, label %132, !dbg !1258

; <label>:86:                                     ; preds = %76
  %87 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1259
  %88 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %87, i32 0, i32 41, !dbg !1261
  %89 = load %struct._list*, %struct._list** %88, align 8, !dbg !1261
  %90 = getelementptr inbounds %struct._list, %struct._list* %89, i32 0, i32 1, !dbg !1262
  %91 = load %struct._element*, %struct._element** %90, align 8, !dbg !1262
  %92 = getelementptr inbounds %struct._element, %struct._element* %91, i32 0, i32 2, !dbg !1263
  %93 = load i8*, i8** %92, align 8, !dbg !1263
  %94 = bitcast i8* %93 to %struct._ip_address*, !dbg !1264
  %95 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %94, i32 0, i32 0, !dbg !1265
  %96 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %95, i32 0, i32 0, !dbg !1266
  %97 = load i8, i8* %96, align 8, !dbg !1266
  %98 = zext i8 %97 to i16, !dbg !1267
  store i16 %98, i16* %5, align 2, !dbg !1268
  %99 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1269
  %100 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %99, i32 0, i32 0, !dbg !1271
  %101 = load i16, i16* %100, align 8, !dbg !1271
  %102 = zext i16 %101 to i32, !dbg !1269
  %103 = icmp eq i32 %102, 0, !dbg !1272
  br i1 %103, label %104, label %108, !dbg !1273

; <label>:104:                                    ; preds = %86
  %105 = load i16, i16* %5, align 2, !dbg !1274
  %106 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1275
  %107 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %106, i32 0, i32 0, !dbg !1276
  store i16 %105, i16* %107, align 8, !dbg !1277
  br label %131, !dbg !1275

; <label>:108:                                    ; preds = %86
  %109 = load i16, i16* %5, align 2, !dbg !1278
  %110 = zext i16 %109 to i32, !dbg !1278
  %111 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1280
  %112 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %111, i32 0, i32 0, !dbg !1281
  %113 = load i16, i16* %112, align 8, !dbg !1281
  %114 = zext i16 %113 to i32, !dbg !1280
  %115 = icmp ne i32 %110, %114, !dbg !1282
  br i1 %115, label %116, label %130, !dbg !1283

; <label>:116:                                    ; preds = %108
  %117 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1284
  %118 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %117, i32 0, i32 1, !dbg !1286
  %119 = load i8*, i8** %118, align 8, !dbg !1286
  %120 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1287
  %121 = call i8* @strvec_slot(%struct._vector* %120, i64 0), !dbg !1288
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i32 0, i32 0), i8* %119, i8* %121), !dbg !1289
  %122 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1291
  %123 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %122, i32 0, i32 41, !dbg !1292
  %124 = load %struct._list*, %struct._list** %123, align 8, !dbg !1292
  %125 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1293
  %126 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %125, i32 0, i32 41, !dbg !1294
  %127 = load %struct._list*, %struct._list** %126, align 8, !dbg !1294
  %128 = getelementptr inbounds %struct._list, %struct._list* %127, i32 0, i32 1, !dbg !1295
  %129 = load %struct._element*, %struct._element** %128, align 8, !dbg !1295
  call void @free_list_element(%struct._list* %124, %struct._element* %129), !dbg !1296
  br label %130, !dbg !1297

; <label>:130:                                    ; preds = %116, %108
  br label %131

; <label>:131:                                    ; preds = %130, %104
  br label %132, !dbg !1298

; <label>:132:                                    ; preds = %131, %76, %69, %50
  ret void, !dbg !1299
}

declare void @free_list_element(%struct._list*, %struct._element*) #2

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_evip(%struct._vector*) #0 !dbg !1300 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1301, metadata !643), !dbg !1302
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1303, metadata !643), !dbg !1304
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1305
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1306
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1306
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1307
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1307
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1308
  %10 = load i8*, i8** %9, align 8, !dbg !1308
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1309
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1304
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1310
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 42, !dbg !1312
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1312
  %15 = icmp ne %struct._list* %14, null, !dbg !1313
  br i1 %15, label %20, label %16, !dbg !1314

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_ipaddress, void (%struct._IO_FILE*, i8*)* @dump_ipaddress), !dbg !1315
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1316
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 42, !dbg !1317
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1318
  br label %20, !dbg !1316

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1319
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 42, !dbg !1320
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1320
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1321
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1322
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 4, !dbg !1323
  %27 = load %struct._interface*, %struct._interface** %26, align 8, !dbg !1323
  call void @alloc_ipaddress(%struct._list* %23, %struct._vector* %24, %struct._interface* %27, i1 zeroext false), !dbg !1324
  ret void, !dbg !1325
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_vroute(%struct._vector*) #0 !dbg !1326 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1327, metadata !643), !dbg !1328
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1329, metadata !643), !dbg !1330
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1331
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1332
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1332
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1333
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1333
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1334
  %10 = load i8*, i8** %9, align 8, !dbg !1334
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1335
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1330
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1336
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 45, !dbg !1338
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1338
  %15 = icmp ne %struct._list* %14, null, !dbg !1339
  br i1 %15, label %20, label %16, !dbg !1340

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_iproute, void (%struct._IO_FILE*, i8*)* @dump_iproute), !dbg !1341
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1342
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 45, !dbg !1343
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1344
  br label %20, !dbg !1342

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1345
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 45, !dbg !1346
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1346
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1347
  call void @alloc_route(%struct._list* %23, %struct._vector* %24, i1 zeroext false), !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_vrule(%struct._vector*) #0 !dbg !1350 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1351, metadata !643), !dbg !1352
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1353, metadata !643), !dbg !1354
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1355
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1356
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1356
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1357
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1357
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1358
  %10 = load i8*, i8** %9, align 8, !dbg !1358
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1359
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1354
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1360
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 46, !dbg !1362
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !1362
  %15 = icmp ne %struct._list* %14, null, !dbg !1363
  br i1 %15, label %20, label %16, !dbg !1364

; <label>:16:                                     ; preds = %1
  %17 = call %struct._list* @alloc_list(void (i8*)* @free_iprule, void (%struct._IO_FILE*, i8*)* @dump_iprule), !dbg !1365
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1366
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 46, !dbg !1367
  store %struct._list* %17, %struct._list** %19, align 8, !dbg !1368
  br label %20, !dbg !1366

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1369
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 46, !dbg !1370
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1370
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1371
  call void @alloc_rule(%struct._list* %23, %struct._vector* %24, i1 zeroext false), !dbg !1372
  ret void, !dbg !1373
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_script(i8*) #0 !dbg !1374 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._vrrp_script*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1375, metadata !643), !dbg !1376
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1377, metadata !643), !dbg !1378
  %5 = load i8*, i8** %2, align 8, !dbg !1379
  %6 = call i64 @strlen(i8* %5) #7, !dbg !1380
  store i64 %6, i64* %3, align 8, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %4, metadata !1381, metadata !643), !dbg !1382
  %7 = call i8* @zalloc(i64 88), !dbg !1383
  %8 = bitcast i8* %7 to %struct._vrrp_script*, !dbg !1384
  store %struct._vrrp_script* %8, %struct._vrrp_script** %4, align 8, !dbg !1385
  %9 = load i64, i64* %3, align 8, !dbg !1386
  %10 = add i64 %9, 1, !dbg !1387
  %11 = call i8* @zalloc(i64 %10), !dbg !1388
  %12 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1389
  %13 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %12, i32 0, i32 0, !dbg !1390
  store i8* %11, i8** %13, align 8, !dbg !1391
  %14 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1392
  %15 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %14, i32 0, i32 0, !dbg !1393
  %16 = load i8*, i8** %15, align 8, !dbg !1393
  %17 = load i8*, i8** %2, align 8, !dbg !1394
  %18 = load i64, i64* %3, align 8, !dbg !1395
  %19 = add i64 %18, 1, !dbg !1396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %19, i32 1, i1 false), !dbg !1397
  %20 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1398
  %21 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %20, i32 0, i32 2, !dbg !1399
  store i64 1000000, i64* %21, align 8, !dbg !1400
  %22 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1401
  %23 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %22, i32 0, i32 3, !dbg !1402
  store i64 0, i64* %23, align 8, !dbg !1403
  %24 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1404
  %25 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %24, i32 0, i32 4, !dbg !1405
  store i32 0, i32* %25, align 8, !dbg !1406
  %26 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1407
  %27 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %26, i32 0, i32 11, !dbg !1408
  store i32 1, i32* %27, align 8, !dbg !1409
  %28 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1410
  %29 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %28, i32 0, i32 10, !dbg !1411
  store i32 0, i32* %29, align 4, !dbg !1412
  %30 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1413
  %31 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %30, i32 0, i32 6, !dbg !1414
  store i32 1, i32* %31, align 8, !dbg !1415
  %32 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1416
  %33 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %32, i32 0, i32 7, !dbg !1417
  store i32 1, i32* %33, align 4, !dbg !1418
  %34 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1419
  %35 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %34, i32 0, i32 9, !dbg !1420
  %36 = load %struct._list*, %struct._list** %35, align 8, !dbg !1420
  %37 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !1421
  %38 = bitcast %struct._vrrp_script* %37 to i8*, !dbg !1421
  call void @list_add(%struct._list* %36, i8* %38), !dbg !1422
  ret void, !dbg !1423
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_file(i8*) #0 !dbg !1424 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._vrrp_file*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1425, metadata !643), !dbg !1426
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1427, metadata !643), !dbg !1428
  %5 = load i8*, i8** %2, align 8, !dbg !1429
  %6 = call i64 @strlen(i8* %5) #7, !dbg !1430
  store i64 %6, i64* %3, align 8, !dbg !1428
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %4, metadata !1431, metadata !643), !dbg !1432
  %7 = call i8* @zalloc(i64 48), !dbg !1433
  %8 = bitcast i8* %7 to %struct._vrrp_file*, !dbg !1434
  store %struct._vrrp_file* %8, %struct._vrrp_file** %4, align 8, !dbg !1435
  %9 = load i64, i64* %3, align 8, !dbg !1436
  %10 = add i64 %9, 1, !dbg !1437
  %11 = call i8* @zalloc(i64 %10), !dbg !1438
  %12 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !1439
  %13 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %12, i32 0, i32 0, !dbg !1440
  store i8* %11, i8** %13, align 8, !dbg !1441
  %14 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !1442
  %15 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %14, i32 0, i32 0, !dbg !1443
  %16 = load i8*, i8** %15, align 8, !dbg !1443
  %17 = load i8*, i8** %2, align 8, !dbg !1444
  %18 = load i64, i64* %3, align 8, !dbg !1445
  %19 = add i64 %18, 1, !dbg !1446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %19, i32 1, i1 false), !dbg !1447
  %20 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !1448
  %21 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %20, i32 0, i32 3, !dbg !1449
  store i32 1, i32* %21, align 8, !dbg !1450
  %22 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1451
  %23 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %22, i32 0, i32 10, !dbg !1452
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !1452
  %25 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !1453
  %26 = bitcast %struct._vrrp_file* %25 to i8*, !dbg !1453
  call void @list_add(%struct._list* %24, i8* %26), !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: nounwind uwtable
define void @alloc_vrrp_buffer(i64) #0 !dbg !1456 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1459, metadata !643), !dbg !1460
  %3 = load i8*, i8** @vrrp_buffer, align 8, !dbg !1461
  %4 = icmp ne i8* %3, null, !dbg !1461
  br i1 %4, label %5, label %6, !dbg !1463

; <label>:5:                                      ; preds = %1
  br label %16, !dbg !1464

; <label>:6:                                      ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !1465
  %8 = call i8* @zalloc(i64 %7), !dbg !1466
  store i8* %8, i8** @vrrp_buffer, align 8, !dbg !1467
  %9 = load i8*, i8** @vrrp_buffer, align 8, !dbg !1468
  %10 = icmp ne i8* %9, null, !dbg !1469
  br i1 %10, label %11, label %13, !dbg !1469

; <label>:11:                                     ; preds = %6
  %12 = load i64, i64* %2, align 8, !dbg !1470
  br label %14, !dbg !1472

; <label>:13:                                     ; preds = %6
  br label %14, !dbg !1473

; <label>:14:                                     ; preds = %13, %11
  %15 = phi i64 [ %12, %11 ], [ 0, %13 ], !dbg !1475
  store i64 %15, i64* @vrrp_buffer_len, align 8, !dbg !1477
  br label %16, !dbg !1478

; <label>:16:                                     ; preds = %14, %5
  ret void, !dbg !1479
}

; Function Attrs: nounwind uwtable
define void @free_vrrp_buffer() #0 !dbg !1480 {
  %1 = load i8*, i8** @vrrp_buffer, align 8, !dbg !1483
  %2 = icmp ne i8* %1, null, !dbg !1483
  br i1 %2, label %4, label %3, !dbg !1485

; <label>:3:                                      ; preds = %0
  br label %6, !dbg !1486

; <label>:4:                                      ; preds = %0
  %5 = load i8*, i8** @vrrp_buffer, align 8, !dbg !1487
  call void @free(i8* %5) #8, !dbg !1488
  store i8* null, i8** @vrrp_buffer, align 8, !dbg !1489
  store i8* null, i8** @vrrp_buffer, align 8, !dbg !1490
  store i64 0, i64* @vrrp_buffer_len, align 8, !dbg !1491
  br label %6, !dbg !1492

; <label>:6:                                      ; preds = %4, %3
  ret void, !dbg !1493
}

; Function Attrs: nounwind uwtable
define %struct._vrrp_data* @alloc_vrrp_data() #0 !dbg !1495 {
  %1 = alloca %struct._vrrp_data*, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_data** %1, metadata !1498, metadata !643), !dbg !1499
  %2 = call i8* @zalloc(i64 88), !dbg !1500
  %3 = bitcast i8* %2 to %struct._vrrp_data*, !dbg !1501
  store %struct._vrrp_data* %3, %struct._vrrp_data** %1, align 8, !dbg !1502
  %4 = call %struct._list* @alloc_list(void (i8*)* @free_vrrp, void (%struct._IO_FILE*, i8*)* @dump_vrrp), !dbg !1503
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1504
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !1505
  store %struct._list* %4, %struct._list** %6, align 8, !dbg !1506
  %7 = call %struct._list* @alloc_mlist(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null, i64 1151), !dbg !1507
  %8 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1508
  %9 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %8, i32 0, i32 6, !dbg !1509
  store %struct._list* %7, %struct._list** %9, align 8, !dbg !1510
  %10 = call %struct._list* @alloc_mlist(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null, i64 1024), !dbg !1511
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1512
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 7, !dbg !1513
  store %struct._list* %10, %struct._list** %12, align 8, !dbg !1514
  %13 = call %struct._list* @alloc_list(void (i8*)* @free_vgroup, void (%struct._IO_FILE*, i8*)* @dump_vgroup), !dbg !1515
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1516
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 4, !dbg !1517
  store %struct._list* %13, %struct._list** %15, align 8, !dbg !1518
  %16 = call %struct._list* @alloc_list(void (i8*)* @free_vscript, void (%struct._IO_FILE*, i8*)* @dump_vscript), !dbg !1519
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1520
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 9, !dbg !1521
  store %struct._list* %16, %struct._list** %18, align 8, !dbg !1522
  %19 = call %struct._list* @alloc_list(void (i8*)* @free_vfile, void (%struct._IO_FILE*, i8*)* @dump_vfile), !dbg !1523
  %20 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1524
  %21 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %20, i32 0, i32 10, !dbg !1525
  store %struct._list* %19, %struct._list** %21, align 8, !dbg !1526
  %22 = call %struct._list* @alloc_list(void (i8*)* @free_sock, void (%struct._IO_FILE*, i8*)* @dump_sock), !dbg !1527
  %23 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1528
  %24 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %23, i32 0, i32 8, !dbg !1529
  store %struct._list* %22, %struct._list** %24, align 8, !dbg !1530
  %25 = load %struct._vrrp_data*, %struct._vrrp_data** %1, align 8, !dbg !1531
  ret %struct._vrrp_data* %25, !dbg !1532
}

; Function Attrs: nounwind uwtable
define internal void @free_vrrp(i8*) #0 !dbg !1533 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1534, metadata !643), !dbg !1535
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1536, metadata !643), !dbg !1537
  %4 = load i8*, i8** %2, align 8, !dbg !1538
  %5 = bitcast i8* %4 to %struct._vrrp_t*, !dbg !1538
  store %struct._vrrp_t* %5, %struct._vrrp_t** %3, align 8, !dbg !1537
  %6 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1539
  %7 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %6, i32 0, i32 1, !dbg !1540
  %8 = load i8*, i8** %7, align 8, !dbg !1540
  call void @free(i8* %8) #8, !dbg !1541
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1542
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 1, !dbg !1543
  store i8* null, i8** %10, align 8, !dbg !1544
  %11 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1545
  %12 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %11, i32 0, i32 72, !dbg !1548
  %13 = load i8*, i8** %12, align 8, !dbg !1548
  %14 = icmp ne i8* %13, null, !dbg !1545
  br i1 %14, label %15, label %21, !dbg !1549

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1550
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 72, !dbg !1553
  %18 = load i8*, i8** %17, align 8, !dbg !1553
  call void @free(i8* %18) #8, !dbg !1554
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1555
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 72, !dbg !1556
  store i8* null, i8** %20, align 8, !dbg !1557
  br label %21, !dbg !1558

; <label>:21:                                     ; preds = %15, %1
  %22 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1559
  %23 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %22, i32 0, i32 64, !dbg !1560
  call void @free_notify_script(%struct._notify_script** %23), !dbg !1561
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1562
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 65, !dbg !1563
  call void @free_notify_script(%struct._notify_script** %25), !dbg !1564
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1565
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 66, !dbg !1566
  call void @free_notify_script(%struct._notify_script** %27), !dbg !1567
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1568
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 67, !dbg !1569
  call void @free_notify_script(%struct._notify_script** %29), !dbg !1570
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1571
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 69, !dbg !1572
  call void @free_notify_script(%struct._notify_script** %31), !dbg !1573
  %32 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1574
  %33 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %32, i32 0, i32 68, !dbg !1575
  call void @free_notify_script(%struct._notify_script** %33), !dbg !1576
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1577
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 3, !dbg !1580
  %36 = load %struct._vrrp_stats*, %struct._vrrp_stats** %35, align 8, !dbg !1580
  %37 = icmp ne %struct._vrrp_stats* %36, null, !dbg !1577
  br i1 %37, label %38, label %45, !dbg !1581

; <label>:38:                                     ; preds = %21
  %39 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1582
  %40 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %39, i32 0, i32 3, !dbg !1585
  %41 = load %struct._vrrp_stats*, %struct._vrrp_stats** %40, align 8, !dbg !1585
  %42 = bitcast %struct._vrrp_stats* %41 to i8*, !dbg !1582
  call void @free(i8* %42) #8, !dbg !1586
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1587
  %44 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %43, i32 0, i32 3, !dbg !1588
  store %struct._vrrp_stats* null, %struct._vrrp_stats** %44, align 8, !dbg !1589
  br label %45, !dbg !1590

; <label>:45:                                     ; preds = %38, %21
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1591
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 11, !dbg !1592
  call void @free_list(%struct._list** %47), !dbg !1593
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1594
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 12, !dbg !1595
  call void @free_list(%struct._list** %49), !dbg !1596
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1597
  %51 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %50, i32 0, i32 13, !dbg !1598
  call void @free_list(%struct._list** %51), !dbg !1599
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1600
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 20, !dbg !1601
  call void @free_list(%struct._list** %53), !dbg !1602
  %54 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1603
  %55 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %54, i32 0, i32 41, !dbg !1604
  call void @free_list(%struct._list** %55), !dbg !1605
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1606
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 42, !dbg !1607
  call void @free_list(%struct._list** %57), !dbg !1608
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1609
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 45, !dbg !1610
  call void @free_list(%struct._list** %59), !dbg !1611
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1612
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 46, !dbg !1613
  call void @free_list(%struct._list** %61), !dbg !1614
  %62 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1615
  %63 = bitcast %struct._vrrp_t* %62 to i8*, !dbg !1615
  call void @free(i8* %63) #8, !dbg !1616
  store %struct._vrrp_t* null, %struct._vrrp_t** %3, align 8, !dbg !1617
  ret void, !dbg !1618
}

; Function Attrs: nounwind uwtable
define internal void @dump_vrrp(%struct._IO_FILE*, i8*) #0 !dbg !1619 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._vrrp_t*, align 8
  %6 = alloca [9 x i8], align 1
  %7 = alloca [26 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1620, metadata !643), !dbg !1621
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1622, metadata !643), !dbg !1623
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %5, metadata !1624, metadata !643), !dbg !1625
  %8 = load i8*, i8** %4, align 8, !dbg !1626
  %9 = bitcast i8* %8 to %struct._vrrp_t*, !dbg !1626
  store %struct._vrrp_t* %9, %struct._vrrp_t** %5, align 8, !dbg !1625
  call void @llvm.dbg.declare(metadata [9 x i8]* %6, metadata !1627, metadata !643), !dbg !1631
  call void @llvm.dbg.declare(metadata [26 x i8]* %7, metadata !1632, metadata !643), !dbg !1636
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1637
  %11 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1638
  %12 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %11, i32 0, i32 1, !dbg !1639
  %13 = load i8*, i8** %12, align 8, !dbg !1639
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %13), !dbg !1640
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1641
  %15 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1642
  %16 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %15, i32 0, i32 60, !dbg !1643
  %17 = load i32, i32* %16, align 4, !dbg !1643
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 %17), !dbg !1644
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1645
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 2, !dbg !1647
  %20 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %19, align 8, !dbg !1647
  %21 = icmp ne %struct._vrrp_sgroup* %20, null, !dbg !1645
  br i1 %21, label %22, label %29, !dbg !1648

; <label>:22:                                     ; preds = %2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1649
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1650
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 2, !dbg !1651
  %26 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %25, align 8, !dbg !1651
  %27 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %26, i32 0, i32 0, !dbg !1652
  %28 = load i8*, i8** %27, align 8, !dbg !1652
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %28), !dbg !1653
  br label %29, !dbg !1653

; <label>:29:                                     ; preds = %22, %2
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1654
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 0, !dbg !1656
  %32 = load i16, i16* %31, align 8, !dbg !1656
  %33 = zext i16 %32 to i32, !dbg !1654
  %34 = icmp eq i32 %33, 10, !dbg !1657
  br i1 %34, label %35, label %37, !dbg !1658

; <label>:35:                                     ; preds = %29
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1659
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0)), !dbg !1660
  br label %37, !dbg !1660

; <label>:37:                                     ; preds = %35, %29
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1661
  %39 = icmp ne %struct._IO_FILE* %38, null, !dbg !1661
  br i1 %39, label %40, label %74, !dbg !1663

; <label>:40:                                     ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1664
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1666
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 55, !dbg !1667
  %44 = load i32, i32* %43, align 8, !dbg !1667
  %45 = call i8* @get_state_str(i32 %44), !dbg !1668
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* %45), !dbg !1669
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1671
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 55, !dbg !1673
  %48 = load i32, i32* %47, align 8, !dbg !1673
  %49 = icmp eq i32 %48, 1, !dbg !1674
  br i1 %49, label %50, label %73, !dbg !1675

; <label>:50:                                     ; preds = %40
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1676
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1678
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 22, !dbg !1679
  %54 = call i8* @inet_sockaddrtos(%struct.sockaddr_storage* %53), !dbg !1680
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %54), !dbg !1681
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1683
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1684
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 23, !dbg !1685
  %58 = load i8, i8* %57, align 8, !dbg !1685
  %59 = zext i8 %58 to i32, !dbg !1684
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 %59), !dbg !1686
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1687
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 60, !dbg !1689
  %62 = load i32, i32* %61, align 4, !dbg !1689
  %63 = icmp eq i32 %62, 3, !dbg !1690
  br i1 %63, label %64, label %72, !dbg !1691

; <label>:64:                                     ; preds = %50
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1692
  %66 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1693
  %67 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %66, i32 0, i32 48, !dbg !1694
  %68 = load i32, i32* %67, align 4, !dbg !1694
  %69 = uitofp i32 %68 to float, !dbg !1695
  %70 = fdiv float %69, 1.000000e+06, !dbg !1696
  %71 = fpext float %70 to double, !dbg !1695
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), double %71), !dbg !1697
  br label %72, !dbg !1697

; <label>:72:                                     ; preds = %64, %50
  br label %73, !dbg !1698

; <label>:73:                                     ; preds = %72, %40
  br label %74, !dbg !1699

; <label>:74:                                     ; preds = %73, %37
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1700
  %76 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1701
  %77 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %76, i32 0, i32 56, !dbg !1702
  %78 = load i32, i32* %77, align 4, !dbg !1702
  %79 = call i8* @get_state_str(i32 %78), !dbg !1703
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* %79), !dbg !1704
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1706
  %81 = icmp ne %struct._IO_FILE* %80, null, !dbg !1706
  br i1 %81, label %82, label %139, !dbg !1708

; <label>:82:                                     ; preds = %74
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1709
  %84 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1711
  %85 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %84, i32 0, i32 14, !dbg !1712
  %86 = load i32, i32* %85, align 8, !dbg !1712
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0), i32 %86), !dbg !1713
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1714
  %88 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1715
  %89 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %88, i32 0, i32 15, !dbg !1716
  %90 = load i32, i32* %89, align 4, !dbg !1716
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i32 %90), !dbg !1717
  %91 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1718
  %92 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %91, i32 0, i32 24, !dbg !1719
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %92, i32 0, i32 0, !dbg !1720
  %94 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i32 0, i32 0, !dbg !1721
  %95 = call i8* @ctime_r(i64* %93, i8* %94) #8, !dbg !1722
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1723
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1724
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 24, !dbg !1725
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %98, i32 0, i32 0, !dbg !1726
  %100 = load i64, i64* %99, align 8, !dbg !1726
  %101 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i32 0, i32 0, !dbg !1727
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i64 %100, i8* %101), !dbg !1728
  %102 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1729
  %103 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %102, i32 0, i32 71, !dbg !1731
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %103, i32 0, i32 0, !dbg !1732
  %105 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i32 0, i32 0, !dbg !1733
  %106 = call i8* @ctime_r(i64* %104, i8* %105) #8, !dbg !1734
  %107 = icmp ne i8* %106, null, !dbg !1734
  br i1 %107, label %111, label %108, !dbg !1735

; <label>:108:                                    ; preds = %82
  %109 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i32 0, i32 0, !dbg !1736
  %110 = call i8* @strcpy(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1737
  br label %111, !dbg !1737

; <label>:111:                                    ; preds = %108, %82
  %112 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1738
  %113 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %112, i32 0, i32 71, !dbg !1740
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %113, i32 0, i32 0, !dbg !1741
  %115 = load i64, i64* %114, align 8, !dbg !1741
  %116 = icmp eq i64 %115, -9223372036854775808, !dbg !1742
  br i1 %116, label %117, label %119, !dbg !1743

; <label>:117:                                    ; preds = %111
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1744
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0)), !dbg !1745
  br label %134, !dbg !1745

; <label>:119:                                    ; preds = %111
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1746
  %121 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1747
  %122 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %121, i32 0, i32 71, !dbg !1748
  %123 = getelementptr inbounds %struct.timeval, %struct.timeval* %122, i32 0, i32 0, !dbg !1749
  %124 = load i64, i64* %123, align 8, !dbg !1749
  %125 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1750
  %126 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %125, i32 0, i32 71, !dbg !1751
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %126, i32 0, i32 1, !dbg !1752
  %128 = load i64, i64* %127, align 8, !dbg !1752
  %129 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i32 0, i32 0, !dbg !1753
  %130 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1754
  %131 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %130, i32 0, i32 71, !dbg !1755
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %131, i32 0, i32 1, !dbg !1756
  %133 = load i64, i64* %132, align 8, !dbg !1756
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), i64 %124, i64 %128, i8* %129, i64 %133), !dbg !1757
  br label %134

; <label>:134:                                    ; preds = %119, %117
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1758
  %136 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1759
  %137 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %136, i32 0, i32 70, !dbg !1760
  %138 = load i32, i32* %137, align 8, !dbg !1760
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i32 %138), !dbg !1761
  br label %139, !dbg !1762

; <label>:139:                                    ; preds = %134, %74
  %140 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1763
  %141 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %140, i32 0, i32 9, !dbg !1765
  %142 = call zeroext i1 @__test_bit(i32 0, i64* %141), !dbg !1766
  br i1 %142, label %143, label %153, !dbg !1767

; <label>:143:                                    ; preds = %139
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1768
  %145 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1769
  %146 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %145, i32 0, i32 9, !dbg !1770
  %147 = call zeroext i1 @__test_bit(i32 1, i64* %146), !dbg !1771
  %148 = select i1 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), !dbg !1771
  %149 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1772
  %150 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %149, i32 0, i32 9, !dbg !1773
  %151 = call zeroext i1 @__test_bit(i32 2, i64* %150), !dbg !1774
  %152 = select i1 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), !dbg !1774
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* %148, i8* %152), !dbg !1775
  br label %153, !dbg !1775

; <label>:153:                                    ; preds = %143, %139
  %154 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1776
  %155 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %154, i32 0, i32 4, !dbg !1778
  %156 = load %struct._interface*, %struct._interface** %155, align 8, !dbg !1778
  %157 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1779
  %158 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %157, i32 0, i32 4, !dbg !1780
  %159 = load %struct._interface*, %struct._interface** %158, align 8, !dbg !1780
  %160 = getelementptr inbounds %struct._interface, %struct._interface* %159, i32 0, i32 14, !dbg !1781
  %161 = load %struct._interface*, %struct._interface** %160, align 8, !dbg !1781
  %162 = icmp ne %struct._interface* %156, %161, !dbg !1782
  br i1 %162, label %163, label %181, !dbg !1783

; <label>:163:                                    ; preds = %153
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1784
  %165 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1785
  %166 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %165, i32 0, i32 4, !dbg !1786
  %167 = load %struct._interface*, %struct._interface** %166, align 8, !dbg !1786
  %168 = getelementptr inbounds %struct._interface, %struct._interface* %167, i32 0, i32 0, !dbg !1787
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %168, i32 0, i32 0, !dbg !1788
  %170 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1789
  %171 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %170, i32 0, i32 4, !dbg !1790
  %172 = load %struct._interface*, %struct._interface** %171, align 8, !dbg !1790
  %173 = getelementptr inbounds %struct._interface, %struct._interface* %172, i32 0, i32 14, !dbg !1791
  %174 = load %struct._interface*, %struct._interface** %173, align 8, !dbg !1791
  %175 = getelementptr inbounds %struct._interface, %struct._interface* %174, i32 0, i32 0, !dbg !1792
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %175, i32 0, i32 0, !dbg !1789
  %177 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1793
  %178 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %177, i32 0, i32 9, !dbg !1794
  %179 = call zeroext i1 @__test_bit(i32 2, i64* %178), !dbg !1795
  %180 = select i1 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), !dbg !1795
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %164, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i32 0, i32 0), i8* %169, i8* %176, i8* %180), !dbg !1796
  br label %188, !dbg !1796

; <label>:181:                                    ; preds = %153
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1797
  %183 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1798
  %184 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %183, i32 0, i32 4, !dbg !1799
  %185 = load %struct._interface*, %struct._interface** %184, align 8, !dbg !1799
  %186 = getelementptr inbounds %struct._interface, %struct._interface* %185, i32 0, i32 0, !dbg !1800
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %186, i32 0, i32 0, !dbg !1801
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* %187), !dbg !1802
  br label %188

; <label>:188:                                    ; preds = %181, %163
  %189 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1803
  %190 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %189, i32 0, i32 5, !dbg !1805
  %191 = load i8, i8* %190, align 8, !dbg !1805
  %192 = trunc i8 %191 to i1, !dbg !1805
  br i1 %192, label %193, label %195, !dbg !1806

; <label>:193:                                    ; preds = %188
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1807
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !1808
  br label %195, !dbg !1808

; <label>:195:                                    ; preds = %193, %188
  %196 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1809
  %197 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %196, i32 0, i32 7, !dbg !1811
  %198 = load i8, i8* %197, align 2, !dbg !1811
  %199 = trunc i8 %198 to i1, !dbg !1811
  br i1 %199, label %200, label %202, !dbg !1812

; <label>:200:                                    ; preds = %195
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1813
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0)), !dbg !1814
  br label %202, !dbg !1814

; <label>:202:                                    ; preds = %200, %195
  %203 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1815
  %204 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %203, i32 0, i32 8, !dbg !1817
  %205 = load i32, i32* %204, align 4, !dbg !1817
  %206 = icmp ne i32 %205, 0, !dbg !1815
  br i1 %206, label %207, label %209, !dbg !1818

; <label>:207:                                    ; preds = %202
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1819
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %208, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !1820
  br label %209, !dbg !1820

; <label>:209:                                    ; preds = %207, %202
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1821
  %211 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1822
  %212 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %211, i32 0, i32 16, !dbg !1823
  %213 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %212, i32 0, i32 0, !dbg !1824
  %214 = load i16, i16* %213, align 8, !dbg !1824
  %215 = zext i16 %214 to i32, !dbg !1822
  %216 = icmp ne i32 %215, 0, !dbg !1825
  br i1 %216, label %217, label %221, !dbg !1822

; <label>:217:                                    ; preds = %209
  %218 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1826
  %219 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %218, i32 0, i32 16, !dbg !1827
  %220 = call i8* @inet_sockaddrtos(%struct.sockaddr_storage* %219), !dbg !1828
  br label %222, !dbg !1829

; <label>:221:                                    ; preds = %209
  br label %222, !dbg !1830

; <label>:222:                                    ; preds = %221, %217
  %223 = phi i8* [ %220, %217 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), %221 ], !dbg !1832
  %224 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1834
  %225 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %224, i32 0, i32 17, !dbg !1835
  %226 = load i8, i8* %225, align 8, !dbg !1835
  %227 = trunc i8 %226 to i1, !dbg !1835
  %228 = select i1 %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), !dbg !1834
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* %223, i8* %228), !dbg !1836
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1837
  %230 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1838
  %231 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %230, i32 0, i32 25, !dbg !1839
  %232 = load i32, i32* %231, align 8, !dbg !1839
  %233 = udiv i32 %232, 1000000, !dbg !1840
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i32 %233), !dbg !1841
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1842
  %235 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1843
  %236 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %235, i32 0, i32 28, !dbg !1844
  %237 = load i32, i32* %236, align 8, !dbg !1844
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), i32 %237), !dbg !1845
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1846
  %239 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1847
  %240 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %239, i32 0, i32 26, !dbg !1848
  %241 = getelementptr inbounds %struct.timeval, %struct.timeval* %240, i32 0, i32 0, !dbg !1849
  %242 = load i64, i64* %241, align 8, !dbg !1849
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %238, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i64 %242), !dbg !1850
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1851
  %244 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1852
  %245 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %244, i32 0, i32 29, !dbg !1853
  %246 = load i32, i32* %245, align 4, !dbg !1853
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i32 %246), !dbg !1854
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1855
  %248 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1856
  %249 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %248, i32 0, i32 30, !dbg !1857
  %250 = load i32, i32* %249, align 8, !dbg !1857
  %251 = udiv i32 %250, 1000000, !dbg !1858
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %247, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 %251), !dbg !1859
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1860
  %253 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1861
  %254 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %253, i32 0, i32 33, !dbg !1862
  %255 = load i32, i32* %254, align 8, !dbg !1862
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %252, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i32 0, i32 0), i32 %255), !dbg !1863
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1864
  %257 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1865
  %258 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %257, i32 0, i32 34, !dbg !1866
  %259 = load i32, i32* %258, align 4, !dbg !1866
  %260 = icmp ne i32 %259, 0, !dbg !1865
  %261 = select i1 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), !dbg !1865
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %256, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.43, i32 0, i32 0), i8* %261), !dbg !1867
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1868
  %263 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1869
  %264 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %263, i32 0, i32 35, !dbg !1870
  %265 = load i32, i32* %264, align 8, !dbg !1870
  %266 = icmp ne i32 %265, 0, !dbg !1869
  %267 = select i1 %266, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), !dbg !1869
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %262, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i32 0, i32 0), i8* %267), !dbg !1871
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1872
  %269 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1873
  %270 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %269, i32 0, i32 36, !dbg !1874
  %271 = load i8, i8* %270, align 4, !dbg !1874
  %272 = zext i8 %271 to i32, !dbg !1873
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %268, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i32 %272), !dbg !1875
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1876
  %274 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1877
  %275 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %274, i32 0, i32 37, !dbg !1878
  %276 = load i8, i8* %275, align 1, !dbg !1878
  %277 = zext i8 %276 to i32, !dbg !1877
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 %277), !dbg !1879
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1880
  %279 = icmp ne %struct._IO_FILE* %278, null, !dbg !1880
  br i1 %279, label %280, label %290, !dbg !1882

; <label>:280:                                    ; preds = %222
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1883
  %282 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1885
  %283 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %282, i32 0, i32 38, !dbg !1886
  %284 = load i8, i8* %283, align 2, !dbg !1886
  %285 = zext i8 %284 to i32, !dbg !1885
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %281, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i32 0, i32 0), i32 %285), !dbg !1887
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1888
  %287 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1889
  %288 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %287, i32 0, i32 39, !dbg !1890
  %289 = load i32, i32* %288, align 8, !dbg !1890
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i32 %289), !dbg !1891
  br label %290, !dbg !1892

; <label>:290:                                    ; preds = %280, %222
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1893
  %292 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1894
  %293 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %292, i32 0, i32 60, !dbg !1895
  %294 = load i32, i32* %293, align 4, !dbg !1895
  %295 = icmp eq i32 %294, 2, !dbg !1896
  br i1 %295, label %296, label %301, !dbg !1897

; <label>:296:                                    ; preds = %290
  %297 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1898
  %298 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %297, i32 0, i32 47, !dbg !1899
  %299 = load i32, i32* %298, align 8, !dbg !1899
  %300 = udiv i32 %299, 1000000, !dbg !1900
  br label %306, !dbg !1901

; <label>:301:                                    ; preds = %290
  %302 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1902
  %303 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %302, i32 0, i32 47, !dbg !1903
  %304 = load i32, i32* %303, align 8, !dbg !1903
  %305 = udiv i32 %304, 1000, !dbg !1904
  br label %306, !dbg !1905

; <label>:306:                                    ; preds = %301, %296
  %307 = phi i32 [ %300, %296 ], [ %305, %301 ], !dbg !1906
  %308 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1907
  %309 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %308, i32 0, i32 60, !dbg !1908
  %310 = load i32, i32* %309, align 4, !dbg !1908
  %311 = icmp eq i32 %310, 2, !dbg !1909
  %312 = select i1 %311, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), !dbg !1910
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i32 %307, i8* %312), !dbg !1911
  %313 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1912
  %314 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %313, i32 0, i32 55, !dbg !1914
  %315 = load i32, i32* %314, align 8, !dbg !1914
  %316 = icmp eq i32 %315, 1, !dbg !1915
  br i1 %316, label %317, label %328, !dbg !1916

; <label>:317:                                    ; preds = %306
  %318 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1917
  %319 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %318, i32 0, i32 60, !dbg !1919
  %320 = load i32, i32* %319, align 4, !dbg !1919
  %321 = icmp eq i32 %320, 3, !dbg !1920
  br i1 %321, label %322, label %328, !dbg !1921

; <label>:322:                                    ; preds = %317
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1922
  %324 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1923
  %325 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %324, i32 0, i32 48, !dbg !1924
  %326 = load i32, i32* %325, align 4, !dbg !1924
  %327 = udiv i32 %326, 1000, !dbg !1925
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %323, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0), i32 %327), !dbg !1926
  br label %328, !dbg !1926

; <label>:328:                                    ; preds = %322, %317, %306
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1927
  %330 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1928
  %331 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %330, i32 0, i32 49, !dbg !1929
  %332 = load i32, i32* %331, align 8, !dbg !1929
  %333 = icmp ne i32 %332, 0, !dbg !1928
  %334 = select i1 %333, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), !dbg !1928
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %329, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* %334), !dbg !1930
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1931
  %336 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1932
  %337 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %336, i32 0, i32 52, !dbg !1933
  %338 = load i8, i8* %337, align 1, !dbg !1933
  %339 = trunc i8 %338 to i1, !dbg !1933
  %340 = select i1 %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), !dbg !1932
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %335, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* %340), !dbg !1934
  %341 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1935
  %342 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %341, i32 0, i32 53, !dbg !1937
  %343 = load i64, i64* %342, align 8, !dbg !1937
  %344 = icmp ne i64 %343, 0, !dbg !1935
  br i1 %344, label %345, label %353, !dbg !1938

; <label>:345:                                    ; preds = %328
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1939
  %347 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1940
  %348 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %347, i32 0, i32 53, !dbg !1941
  %349 = load i64, i64* %348, align 8, !dbg !1941
  %350 = uitofp i64 %349 to float, !dbg !1942
  %351 = fdiv float %350, 1.000000e+06, !dbg !1943
  %352 = fpext float %351 to double, !dbg !1942
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %346, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), double %352), !dbg !1944
  br label %353, !dbg !1944

; <label>:353:                                    ; preds = %345, %328
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1945
  %355 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1946
  %356 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %355, i32 0, i32 43, !dbg !1947
  %357 = load i8, i8* %356, align 8, !dbg !1947
  %358 = trunc i8 %357 to i1, !dbg !1947
  %359 = select i1 %358, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), !dbg !1946
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %354, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i32 0, i32 0), i8* %359), !dbg !1948
  %360 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1949
  %361 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %360, i32 0, i32 75, !dbg !1951
  %362 = load i8, i8* %361, align 4, !dbg !1951
  %363 = icmp ne i8 %362, 0, !dbg !1949
  br i1 %363, label %364, label %386, !dbg !1952

; <label>:364:                                    ; preds = %353
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1953
  %366 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1955
  %367 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %366, i32 0, i32 75, !dbg !1956
  %368 = load i8, i8* %367, align 4, !dbg !1956
  %369 = zext i8 %368 to i32, !dbg !1955
  %370 = icmp eq i32 %369, 2, !dbg !1957
  %371 = select i1 %370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), !dbg !1958
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %365, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0), i8* %371), !dbg !1959
  %372 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1960
  %373 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %372, i32 0, i32 75, !dbg !1962
  %374 = load i8, i8* %373, align 4, !dbg !1962
  %375 = zext i8 %374 to i32, !dbg !1960
  %376 = icmp ne i32 %375, 2, !dbg !1963
  br i1 %376, label %377, label %385, !dbg !1964

; <label>:377:                                    ; preds = %364
  %378 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i32 0, i32 0, !dbg !1965
  %379 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1967
  %380 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %379, i32 0, i32 76, !dbg !1968
  %381 = getelementptr inbounds [8 x i8], [8 x i8]* %380, i32 0, i32 0, !dbg !1965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %378, i8* %381, i64 8, i32 1, i1 false), !dbg !1965
  %382 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 8, !dbg !1969
  store i8 0, i8* %382, align 1, !dbg !1970
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1971
  %384 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i32 0, i32 0, !dbg !1972
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %383, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i8* %384), !dbg !1973
  br label %385, !dbg !1974

; <label>:385:                                    ; preds = %377, %364
  br label %394, !dbg !1975

; <label>:386:                                    ; preds = %353
  %387 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1976
  %388 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %387, i32 0, i32 60, !dbg !1978
  %389 = load i32, i32* %388, align 4, !dbg !1978
  %390 = icmp eq i32 %389, 2, !dbg !1979
  br i1 %390, label %391, label %393, !dbg !1980

; <label>:391:                                    ; preds = %386
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1981
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %392, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0)), !dbg !1982
  br label %393, !dbg !1982

; <label>:393:                                    ; preds = %391, %386
  br label %394

; <label>:394:                                    ; preds = %393, %385
  %395 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1983
  %396 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %395, i32 0, i32 50, !dbg !1985
  %397 = load i64, i64* %396, align 8, !dbg !1985
  %398 = icmp ne i64 %397, 0, !dbg !1983
  br i1 %398, label %399, label %404, !dbg !1986

; <label>:399:                                    ; preds = %394
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1987
  %401 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1988
  %402 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %401, i32 0, i32 50, !dbg !1989
  %403 = load i64, i64* %402, align 8, !dbg !1989
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %400, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0), i64 %403), !dbg !1990
  br label %404, !dbg !1990

; <label>:404:                                    ; preds = %399, %394
  %405 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1991
  %406 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %405, i32 0, i32 59, !dbg !1993
  %407 = load i32, i32* %406, align 8, !dbg !1993
  %408 = icmp ne i32 %407, 0, !dbg !1991
  br i1 %408, label %409, label %414, !dbg !1994

; <label>:409:                                    ; preds = %404
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1995
  %411 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1996
  %412 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %411, i32 0, i32 59, !dbg !1997
  %413 = load i32, i32* %412, align 8, !dbg !1997
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %410, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i32 %413), !dbg !1998
  br label %414, !dbg !1998

; <label>:414:                                    ; preds = %409, %404
  %415 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1999
  %416 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %415, i32 0, i32 41, !dbg !2001
  %417 = load %struct._list*, %struct._list** %416, align 8, !dbg !2001
  %418 = icmp eq %struct._list* %417, null, !dbg !2002
  br i1 %418, label %444, label %419, !dbg !2003

; <label>:419:                                    ; preds = %414
  %420 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2004
  %421 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %420, i32 0, i32 41, !dbg !2006
  %422 = load %struct._list*, %struct._list** %421, align 8, !dbg !2006
  %423 = getelementptr inbounds %struct._list, %struct._list* %422, i32 0, i32 0, !dbg !2007
  %424 = load %struct._element*, %struct._element** %423, align 8, !dbg !2007
  %425 = icmp eq %struct._element* %424, null, !dbg !2008
  br i1 %425, label %426, label %433, !dbg !2009

; <label>:426:                                    ; preds = %419
  %427 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2010
  %428 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %427, i32 0, i32 41, !dbg !2012
  %429 = load %struct._list*, %struct._list** %428, align 8, !dbg !2012
  %430 = getelementptr inbounds %struct._list, %struct._list* %429, i32 0, i32 1, !dbg !2013
  %431 = load %struct._element*, %struct._element** %430, align 8, !dbg !2013
  %432 = icmp eq %struct._element* %431, null, !dbg !2014
  br i1 %432, label %444, label %433, !dbg !2015

; <label>:433:                                    ; preds = %426, %419
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2016
  %435 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2018
  %436 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %435, i32 0, i32 41, !dbg !2019
  %437 = load %struct._list*, %struct._list** %436, align 8, !dbg !2019
  %438 = getelementptr inbounds %struct._list, %struct._list* %437, i32 0, i32 2, !dbg !2020
  %439 = load i32, i32* %438, align 8, !dbg !2020
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %434, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i32 0, i32 0), i32 %439), !dbg !2021
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2022
  %441 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2023
  %442 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %441, i32 0, i32 41, !dbg !2024
  %443 = load %struct._list*, %struct._list** %442, align 8, !dbg !2024
  call void @dump_list(%struct._IO_FILE* %440, %struct._list* %443), !dbg !2025
  br label %444, !dbg !2026

; <label>:444:                                    ; preds = %433, %426, %414
  %445 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2027
  %446 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %445, i32 0, i32 42, !dbg !2029
  %447 = load %struct._list*, %struct._list** %446, align 8, !dbg !2029
  %448 = icmp eq %struct._list* %447, null, !dbg !2030
  br i1 %448, label %474, label %449, !dbg !2031

; <label>:449:                                    ; preds = %444
  %450 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2032
  %451 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %450, i32 0, i32 42, !dbg !2034
  %452 = load %struct._list*, %struct._list** %451, align 8, !dbg !2034
  %453 = getelementptr inbounds %struct._list, %struct._list* %452, i32 0, i32 0, !dbg !2035
  %454 = load %struct._element*, %struct._element** %453, align 8, !dbg !2035
  %455 = icmp eq %struct._element* %454, null, !dbg !2036
  br i1 %455, label %456, label %463, !dbg !2037

; <label>:456:                                    ; preds = %449
  %457 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2038
  %458 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %457, i32 0, i32 42, !dbg !2040
  %459 = load %struct._list*, %struct._list** %458, align 8, !dbg !2040
  %460 = getelementptr inbounds %struct._list, %struct._list* %459, i32 0, i32 1, !dbg !2041
  %461 = load %struct._element*, %struct._element** %460, align 8, !dbg !2041
  %462 = icmp eq %struct._element* %461, null, !dbg !2042
  br i1 %462, label %474, label %463, !dbg !2043

; <label>:463:                                    ; preds = %456, %449
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2044
  %465 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2046
  %466 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %465, i32 0, i32 42, !dbg !2047
  %467 = load %struct._list*, %struct._list** %466, align 8, !dbg !2047
  %468 = getelementptr inbounds %struct._list, %struct._list* %467, i32 0, i32 2, !dbg !2048
  %469 = load i32, i32* %468, align 8, !dbg !2048
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %464, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), i32 %469), !dbg !2049
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2050
  %471 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2051
  %472 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %471, i32 0, i32 42, !dbg !2052
  %473 = load %struct._list*, %struct._list** %472, align 8, !dbg !2052
  call void @dump_list(%struct._IO_FILE* %470, %struct._list* %473), !dbg !2053
  br label %474, !dbg !2054

; <label>:474:                                    ; preds = %463, %456, %444
  %475 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2055
  %476 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %475, i32 0, i32 20, !dbg !2057
  %477 = load %struct._list*, %struct._list** %476, align 8, !dbg !2057
  %478 = icmp eq %struct._list* %477, null, !dbg !2058
  br i1 %478, label %534, label %479, !dbg !2059

; <label>:479:                                    ; preds = %474
  %480 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2060
  %481 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %480, i32 0, i32 20, !dbg !2062
  %482 = load %struct._list*, %struct._list** %481, align 8, !dbg !2062
  %483 = getelementptr inbounds %struct._list, %struct._list* %482, i32 0, i32 0, !dbg !2063
  %484 = load %struct._element*, %struct._element** %483, align 8, !dbg !2063
  %485 = icmp eq %struct._element* %484, null, !dbg !2064
  br i1 %485, label %486, label %493, !dbg !2065

; <label>:486:                                    ; preds = %479
  %487 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2066
  %488 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %487, i32 0, i32 20, !dbg !2068
  %489 = load %struct._list*, %struct._list** %488, align 8, !dbg !2068
  %490 = getelementptr inbounds %struct._list, %struct._list* %489, i32 0, i32 1, !dbg !2069
  %491 = load %struct._element*, %struct._element** %490, align 8, !dbg !2069
  %492 = icmp eq %struct._element* %491, null, !dbg !2070
  br i1 %492, label %534, label %493, !dbg !2071

; <label>:493:                                    ; preds = %486, %479
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2072
  %495 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2074
  %496 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %495, i32 0, i32 20, !dbg !2075
  %497 = load %struct._list*, %struct._list** %496, align 8, !dbg !2075
  %498 = getelementptr inbounds %struct._list, %struct._list* %497, i32 0, i32 2, !dbg !2076
  %499 = load i32, i32* %498, align 8, !dbg !2076
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %494, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i32 %499), !dbg !2077
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2078
  %501 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2079
  %502 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %501, i32 0, i32 20, !dbg !2080
  %503 = load %struct._list*, %struct._list** %502, align 8, !dbg !2080
  call void @dump_list(%struct._IO_FILE* %500, %struct._list* %503), !dbg !2081
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2082
  %505 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2083
  %506 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %505, i32 0, i32 21, !dbg !2084
  %507 = load i32, i32* %506, align 8, !dbg !2084
  %508 = icmp eq i32 %507, 0, !dbg !2085
  br i1 %508, label %509, label %510, !dbg !2083

; <label>:509:                                    ; preds = %493
  br label %532, !dbg !2086

; <label>:510:                                    ; preds = %493
  %511 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2088
  %512 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %511, i32 0, i32 21, !dbg !2089
  %513 = load i32, i32* %512, align 8, !dbg !2089
  %514 = icmp eq i32 %513, 1, !dbg !2090
  br i1 %514, label %515, label %516, !dbg !2088

; <label>:515:                                    ; preds = %510
  br label %530, !dbg !2091

; <label>:516:                                    ; preds = %510
  %517 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2092
  %518 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %517, i32 0, i32 21, !dbg !2093
  %519 = load i32, i32* %518, align 8, !dbg !2093
  %520 = icmp eq i32 %519, 3, !dbg !2094
  br i1 %520, label %521, label %522, !dbg !2092

; <label>:521:                                    ; preds = %516
  br label %528, !dbg !2095

; <label>:522:                                    ; preds = %516
  %523 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2096
  %524 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %523, i32 0, i32 21, !dbg !2097
  %525 = load i32, i32* %524, align 8, !dbg !2097
  %526 = icmp eq i32 %525, 4, !dbg !2098
  %527 = select i1 %526, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), !dbg !2096
  br label %528, !dbg !2099

; <label>:528:                                    ; preds = %522, %521
  %529 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), %521 ], [ %527, %522 ], !dbg !2101
  br label %530, !dbg !2103

; <label>:530:                                    ; preds = %528, %515
  %531 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), %515 ], [ %529, %528 ], !dbg !2104
  br label %532, !dbg !2105

; <label>:532:                                    ; preds = %530, %509
  %533 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), %509 ], [ %531, %530 ], !dbg !2106
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %504, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i8* %533), !dbg !2107
  br label %534, !dbg !2108

; <label>:534:                                    ; preds = %532, %486, %474
  %535 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2109
  %536 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %535, i32 0, i32 45, !dbg !2111
  %537 = load %struct._list*, %struct._list** %536, align 8, !dbg !2111
  %538 = icmp eq %struct._list* %537, null, !dbg !2112
  br i1 %538, label %564, label %539, !dbg !2113

; <label>:539:                                    ; preds = %534
  %540 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2114
  %541 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %540, i32 0, i32 45, !dbg !2116
  %542 = load %struct._list*, %struct._list** %541, align 8, !dbg !2116
  %543 = getelementptr inbounds %struct._list, %struct._list* %542, i32 0, i32 0, !dbg !2117
  %544 = load %struct._element*, %struct._element** %543, align 8, !dbg !2117
  %545 = icmp eq %struct._element* %544, null, !dbg !2118
  br i1 %545, label %546, label %553, !dbg !2119

; <label>:546:                                    ; preds = %539
  %547 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2120
  %548 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %547, i32 0, i32 45, !dbg !2122
  %549 = load %struct._list*, %struct._list** %548, align 8, !dbg !2122
  %550 = getelementptr inbounds %struct._list, %struct._list* %549, i32 0, i32 1, !dbg !2123
  %551 = load %struct._element*, %struct._element** %550, align 8, !dbg !2123
  %552 = icmp eq %struct._element* %551, null, !dbg !2124
  br i1 %552, label %564, label %553, !dbg !2125

; <label>:553:                                    ; preds = %546, %539
  %554 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2126
  %555 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2128
  %556 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %555, i32 0, i32 45, !dbg !2129
  %557 = load %struct._list*, %struct._list** %556, align 8, !dbg !2129
  %558 = getelementptr inbounds %struct._list, %struct._list* %557, i32 0, i32 2, !dbg !2130
  %559 = load i32, i32* %558, align 8, !dbg !2130
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %554, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i32 %559), !dbg !2131
  %560 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2132
  %561 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2133
  %562 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %561, i32 0, i32 45, !dbg !2134
  %563 = load %struct._list*, %struct._list** %562, align 8, !dbg !2134
  call void @dump_list(%struct._IO_FILE* %560, %struct._list* %563), !dbg !2135
  br label %564, !dbg !2136

; <label>:564:                                    ; preds = %553, %546, %534
  %565 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2137
  %566 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %565, i32 0, i32 46, !dbg !2139
  %567 = load %struct._list*, %struct._list** %566, align 8, !dbg !2139
  %568 = icmp eq %struct._list* %567, null, !dbg !2140
  br i1 %568, label %594, label %569, !dbg !2141

; <label>:569:                                    ; preds = %564
  %570 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2142
  %571 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %570, i32 0, i32 46, !dbg !2144
  %572 = load %struct._list*, %struct._list** %571, align 8, !dbg !2144
  %573 = getelementptr inbounds %struct._list, %struct._list* %572, i32 0, i32 0, !dbg !2145
  %574 = load %struct._element*, %struct._element** %573, align 8, !dbg !2145
  %575 = icmp eq %struct._element* %574, null, !dbg !2146
  br i1 %575, label %576, label %583, !dbg !2147

; <label>:576:                                    ; preds = %569
  %577 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2148
  %578 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %577, i32 0, i32 46, !dbg !2150
  %579 = load %struct._list*, %struct._list** %578, align 8, !dbg !2150
  %580 = getelementptr inbounds %struct._list, %struct._list* %579, i32 0, i32 1, !dbg !2151
  %581 = load %struct._element*, %struct._element** %580, align 8, !dbg !2151
  %582 = icmp eq %struct._element* %581, null, !dbg !2152
  br i1 %582, label %594, label %583, !dbg !2153

; <label>:583:                                    ; preds = %576, %569
  %584 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2154
  %585 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2156
  %586 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %585, i32 0, i32 46, !dbg !2157
  %587 = load %struct._list*, %struct._list** %586, align 8, !dbg !2157
  %588 = getelementptr inbounds %struct._list, %struct._list* %587, i32 0, i32 2, !dbg !2158
  %589 = load i32, i32* %588, align 8, !dbg !2158
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %584, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0), i32 %589), !dbg !2159
  %590 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2160
  %591 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2161
  %592 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %591, i32 0, i32 46, !dbg !2162
  %593 = load %struct._list*, %struct._list** %592, align 8, !dbg !2162
  call void @dump_list(%struct._IO_FILE* %590, %struct._list* %593), !dbg !2163
  br label %594, !dbg !2164

; <label>:594:                                    ; preds = %583, %576, %564
  %595 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2165
  %596 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %595, i32 0, i32 11, !dbg !2167
  %597 = load %struct._list*, %struct._list** %596, align 8, !dbg !2167
  %598 = icmp eq %struct._list* %597, null, !dbg !2168
  br i1 %598, label %624, label %599, !dbg !2169

; <label>:599:                                    ; preds = %594
  %600 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2170
  %601 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %600, i32 0, i32 11, !dbg !2172
  %602 = load %struct._list*, %struct._list** %601, align 8, !dbg !2172
  %603 = getelementptr inbounds %struct._list, %struct._list* %602, i32 0, i32 0, !dbg !2173
  %604 = load %struct._element*, %struct._element** %603, align 8, !dbg !2173
  %605 = icmp eq %struct._element* %604, null, !dbg !2174
  br i1 %605, label %606, label %613, !dbg !2175

; <label>:606:                                    ; preds = %599
  %607 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2176
  %608 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %607, i32 0, i32 11, !dbg !2178
  %609 = load %struct._list*, %struct._list** %608, align 8, !dbg !2178
  %610 = getelementptr inbounds %struct._list, %struct._list* %609, i32 0, i32 1, !dbg !2179
  %611 = load %struct._element*, %struct._element** %610, align 8, !dbg !2179
  %612 = icmp eq %struct._element* %611, null, !dbg !2180
  br i1 %612, label %624, label %613, !dbg !2181

; <label>:613:                                    ; preds = %606, %599
  %614 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2182
  %615 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2184
  %616 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %615, i32 0, i32 11, !dbg !2185
  %617 = load %struct._list*, %struct._list** %616, align 8, !dbg !2185
  %618 = getelementptr inbounds %struct._list, %struct._list* %617, i32 0, i32 2, !dbg !2186
  %619 = load i32, i32* %618, align 8, !dbg !2186
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %614, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0), i32 %619), !dbg !2187
  %620 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2188
  %621 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2189
  %622 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %621, i32 0, i32 11, !dbg !2190
  %623 = load %struct._list*, %struct._list** %622, align 8, !dbg !2190
  call void @dump_list(%struct._IO_FILE* %620, %struct._list* %623), !dbg !2191
  br label %624, !dbg !2192

; <label>:624:                                    ; preds = %613, %606, %594
  %625 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2193
  %626 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %625, i32 0, i32 12, !dbg !2195
  %627 = load %struct._list*, %struct._list** %626, align 8, !dbg !2195
  %628 = icmp eq %struct._list* %627, null, !dbg !2196
  br i1 %628, label %654, label %629, !dbg !2197

; <label>:629:                                    ; preds = %624
  %630 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2198
  %631 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %630, i32 0, i32 12, !dbg !2200
  %632 = load %struct._list*, %struct._list** %631, align 8, !dbg !2200
  %633 = getelementptr inbounds %struct._list, %struct._list* %632, i32 0, i32 0, !dbg !2201
  %634 = load %struct._element*, %struct._element** %633, align 8, !dbg !2201
  %635 = icmp eq %struct._element* %634, null, !dbg !2202
  br i1 %635, label %636, label %643, !dbg !2203

; <label>:636:                                    ; preds = %629
  %637 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2204
  %638 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %637, i32 0, i32 12, !dbg !2206
  %639 = load %struct._list*, %struct._list** %638, align 8, !dbg !2206
  %640 = getelementptr inbounds %struct._list, %struct._list* %639, i32 0, i32 1, !dbg !2207
  %641 = load %struct._element*, %struct._element** %640, align 8, !dbg !2207
  %642 = icmp eq %struct._element* %641, null, !dbg !2208
  br i1 %642, label %654, label %643, !dbg !2209

; <label>:643:                                    ; preds = %636, %629
  %644 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2210
  %645 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2212
  %646 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %645, i32 0, i32 12, !dbg !2213
  %647 = load %struct._list*, %struct._list** %646, align 8, !dbg !2213
  %648 = getelementptr inbounds %struct._list, %struct._list* %647, i32 0, i32 2, !dbg !2214
  %649 = load i32, i32* %648, align 8, !dbg !2214
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %644, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0), i32 %649), !dbg !2215
  %650 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2216
  %651 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2217
  %652 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %651, i32 0, i32 12, !dbg !2218
  %653 = load %struct._list*, %struct._list** %652, align 8, !dbg !2218
  call void @dump_list(%struct._IO_FILE* %650, %struct._list* %653), !dbg !2219
  br label %654, !dbg !2220

; <label>:654:                                    ; preds = %643, %636, %624
  %655 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2221
  %656 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %655, i32 0, i32 13, !dbg !2223
  %657 = load %struct._list*, %struct._list** %656, align 8, !dbg !2223
  %658 = icmp eq %struct._list* %657, null, !dbg !2224
  br i1 %658, label %684, label %659, !dbg !2225

; <label>:659:                                    ; preds = %654
  %660 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2226
  %661 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %660, i32 0, i32 13, !dbg !2228
  %662 = load %struct._list*, %struct._list** %661, align 8, !dbg !2228
  %663 = getelementptr inbounds %struct._list, %struct._list* %662, i32 0, i32 0, !dbg !2229
  %664 = load %struct._element*, %struct._element** %663, align 8, !dbg !2229
  %665 = icmp eq %struct._element* %664, null, !dbg !2230
  br i1 %665, label %666, label %673, !dbg !2231

; <label>:666:                                    ; preds = %659
  %667 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2232
  %668 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %667, i32 0, i32 13, !dbg !2234
  %669 = load %struct._list*, %struct._list** %668, align 8, !dbg !2234
  %670 = getelementptr inbounds %struct._list, %struct._list* %669, i32 0, i32 1, !dbg !2235
  %671 = load %struct._element*, %struct._element** %670, align 8, !dbg !2235
  %672 = icmp eq %struct._element* %671, null, !dbg !2236
  br i1 %672, label %684, label %673, !dbg !2237

; <label>:673:                                    ; preds = %666, %659
  %674 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2238
  %675 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2240
  %676 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %675, i32 0, i32 13, !dbg !2241
  %677 = load %struct._list*, %struct._list** %676, align 8, !dbg !2241
  %678 = getelementptr inbounds %struct._list, %struct._list* %677, i32 0, i32 2, !dbg !2242
  %679 = load i32, i32* %678, align 8, !dbg !2242
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %674, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i32 %679), !dbg !2243
  %680 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2244
  %681 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2245
  %682 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %681, i32 0, i32 13, !dbg !2246
  %683 = load %struct._list*, %struct._list** %682, align 8, !dbg !2246
  call void @dump_list(%struct._IO_FILE* %680, %struct._list* %683), !dbg !2247
  br label %684, !dbg !2248

; <label>:684:                                    ; preds = %673, %666, %654
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2249
  %686 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2250
  %687 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %686, i32 0, i32 61, !dbg !2251
  %688 = load i32, i32* %687, align 8, !dbg !2251
  %689 = icmp ne i32 %688, 0, !dbg !2250
  %690 = select i1 %689, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), !dbg !2250
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %685, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0), i8* %690), !dbg !2252
  %691 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2253
  %692 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %691, i32 0, i32 64, !dbg !2255
  %693 = load %struct._notify_script*, %struct._notify_script** %692, align 8, !dbg !2255
  %694 = icmp ne %struct._notify_script* %693, null, !dbg !2253
  br i1 %694, label %695, label %700, !dbg !2256

; <label>:695:                                    ; preds = %684
  %696 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2257
  %697 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2258
  %698 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %697, i32 0, i32 64, !dbg !2259
  %699 = load %struct._notify_script*, %struct._notify_script** %698, align 8, !dbg !2259
  call void @dump_notify_script(%struct._IO_FILE* %696, %struct._notify_script* %699, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2260
  br label %700, !dbg !2260

; <label>:700:                                    ; preds = %695, %684
  %701 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2261
  %702 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %701, i32 0, i32 65, !dbg !2263
  %703 = load %struct._notify_script*, %struct._notify_script** %702, align 8, !dbg !2263
  %704 = icmp ne %struct._notify_script* %703, null, !dbg !2261
  br i1 %704, label %705, label %710, !dbg !2264

; <label>:705:                                    ; preds = %700
  %706 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2265
  %707 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2266
  %708 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %707, i32 0, i32 65, !dbg !2267
  %709 = load %struct._notify_script*, %struct._notify_script** %708, align 8, !dbg !2267
  call void @dump_notify_script(%struct._IO_FILE* %706, %struct._notify_script* %709, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0)), !dbg !2268
  br label %710, !dbg !2268

; <label>:710:                                    ; preds = %705, %700
  %711 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2269
  %712 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %711, i32 0, i32 66, !dbg !2271
  %713 = load %struct._notify_script*, %struct._notify_script** %712, align 8, !dbg !2271
  %714 = icmp ne %struct._notify_script* %713, null, !dbg !2269
  br i1 %714, label %715, label %720, !dbg !2272

; <label>:715:                                    ; preds = %710
  %716 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2273
  %717 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2274
  %718 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %717, i32 0, i32 66, !dbg !2275
  %719 = load %struct._notify_script*, %struct._notify_script** %718, align 8, !dbg !2275
  call void @dump_notify_script(%struct._IO_FILE* %716, %struct._notify_script* %719, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0)), !dbg !2276
  br label %720, !dbg !2276

; <label>:720:                                    ; preds = %715, %710
  %721 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2277
  %722 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %721, i32 0, i32 67, !dbg !2279
  %723 = load %struct._notify_script*, %struct._notify_script** %722, align 8, !dbg !2279
  %724 = icmp ne %struct._notify_script* %723, null, !dbg !2277
  br i1 %724, label %725, label %730, !dbg !2280

; <label>:725:                                    ; preds = %720
  %726 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2281
  %727 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2282
  %728 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %727, i32 0, i32 67, !dbg !2283
  %729 = load %struct._notify_script*, %struct._notify_script** %728, align 8, !dbg !2283
  call void @dump_notify_script(%struct._IO_FILE* %726, %struct._notify_script* %729, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0)), !dbg !2284
  br label %730, !dbg !2284

; <label>:730:                                    ; preds = %725, %720
  %731 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2285
  %732 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %731, i32 0, i32 69, !dbg !2287
  %733 = load %struct._notify_script*, %struct._notify_script** %732, align 8, !dbg !2287
  %734 = icmp ne %struct._notify_script* %733, null, !dbg !2285
  br i1 %734, label %735, label %740, !dbg !2288

; <label>:735:                                    ; preds = %730
  %736 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2289
  %737 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2290
  %738 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %737, i32 0, i32 69, !dbg !2291
  %739 = load %struct._notify_script*, %struct._notify_script** %738, align 8, !dbg !2291
  call void @dump_notify_script(%struct._IO_FILE* %736, %struct._notify_script* %739, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0)), !dbg !2292
  br label %740, !dbg !2292

; <label>:740:                                    ; preds = %735, %730
  %741 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2293
  %742 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %741, i32 0, i32 68, !dbg !2295
  %743 = load %struct._notify_script*, %struct._notify_script** %742, align 8, !dbg !2295
  %744 = icmp ne %struct._notify_script* %743, null, !dbg !2293
  br i1 %744, label %745, label %750, !dbg !2296

; <label>:745:                                    ; preds = %740
  %746 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2297
  %747 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2298
  %748 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %747, i32 0, i32 68, !dbg !2299
  %749 = load %struct._notify_script*, %struct._notify_script** %748, align 8, !dbg !2299
  call void @dump_notify_script(%struct._IO_FILE* %746, %struct._notify_script* %749, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0)), !dbg !2300
  br label %750, !dbg !2300

; <label>:750:                                    ; preds = %745, %740
  ret void, !dbg !2301
}

declare %struct._list* @alloc_mlist(void (i8*)*, void (%struct._IO_FILE*, i8*)*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @free_vgroup(i8*) #0 !dbg !2302 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2303, metadata !643), !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !2305, metadata !643), !dbg !2306
  %4 = load i8*, i8** %2, align 8, !dbg !2307
  %5 = bitcast i8* %4 to %struct._vrrp_sgroup*, !dbg !2307
  store %struct._vrrp_sgroup* %5, %struct._vrrp_sgroup** %3, align 8, !dbg !2306
  %6 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2308
  %7 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %6, i32 0, i32 1, !dbg !2310
  %8 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2310
  %9 = icmp ne %struct._vector* %8, null, !dbg !2308
  br i1 %9, label %10, label %17, !dbg !2311

; <label>:10:                                     ; preds = %1
  %11 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2312
  %12 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %11, i32 0, i32 0, !dbg !2314
  %13 = load i8*, i8** %12, align 8, !dbg !2314
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.94, i32 0, i32 0), i8* %13), !dbg !2315
  %14 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2316
  %15 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %14, i32 0, i32 1, !dbg !2317
  %16 = load %struct._vector*, %struct._vector** %15, align 8, !dbg !2317
  call void @free_strvec(%struct._vector* %16), !dbg !2318
  br label %17, !dbg !2319

; <label>:17:                                     ; preds = %10, %1
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2320
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 0, !dbg !2321
  %20 = load i8*, i8** %19, align 8, !dbg !2321
  call void @free(i8* %20) #8, !dbg !2322
  %21 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2323
  %22 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %21, i32 0, i32 0, !dbg !2324
  store i8* null, i8** %22, align 8, !dbg !2325
  %23 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2326
  %24 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %23, i32 0, i32 2, !dbg !2327
  call void @free_list(%struct._list** %24), !dbg !2328
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2329
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 12, !dbg !2330
  call void @free_notify_script(%struct._notify_script** %26), !dbg !2331
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2332
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 13, !dbg !2333
  call void @free_notify_script(%struct._notify_script** %28), !dbg !2334
  %29 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2335
  %30 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %29, i32 0, i32 14, !dbg !2336
  call void @free_notify_script(%struct._notify_script** %30), !dbg !2337
  %31 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2338
  %32 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %31, i32 0, i32 15, !dbg !2339
  call void @free_notify_script(%struct._notify_script** %32), !dbg !2340
  %33 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2341
  %34 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %33, i32 0, i32 16, !dbg !2342
  call void @free_notify_script(%struct._notify_script** %34), !dbg !2343
  %35 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !2344
  %36 = bitcast %struct._vrrp_sgroup* %35 to i8*, !dbg !2344
  call void @free(i8* %36) #8, !dbg !2345
  store %struct._vrrp_sgroup* null, %struct._vrrp_sgroup** %3, align 8, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: nounwind uwtable
define internal void @dump_vgroup(%struct._IO_FILE*, i8*) #0 !dbg !2348 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._vrrp_sgroup*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._vrrp_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2349, metadata !643), !dbg !2350
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2351, metadata !643), !dbg !2352
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %5, metadata !2353, metadata !643), !dbg !2354
  %8 = load i8*, i8** %4, align 8, !dbg !2355
  %9 = bitcast i8* %8 to %struct._vrrp_sgroup*, !dbg !2355
  store %struct._vrrp_sgroup* %9, %struct._vrrp_sgroup** %5, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !2356, metadata !643), !dbg !2358
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2359
  %11 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2360
  %12 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %11, i32 0, i32 0, !dbg !2361
  %13 = load i8*, i8** %12, align 8, !dbg !2361
  %14 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2362
  %15 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %14, i32 0, i32 5, !dbg !2363
  %16 = load i32, i32* %15, align 8, !dbg !2363
  %17 = call i8* @get_state_str(i32 %16), !dbg !2364
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i32 0, i32 0), i8* %13, i8* %17), !dbg !2365
  %18 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2367
  %19 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %18, i32 0, i32 2, !dbg !2369
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !2369
  %21 = icmp ne %struct._list* %20, null, !dbg !2367
  br i1 %21, label %22, label %59, !dbg !2370

; <label>:22:                                     ; preds = %2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2371
  %24 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2373
  %25 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %24, i32 0, i32 2, !dbg !2374
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !2374
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 2, !dbg !2375
  %28 = load i32, i32* %27, align 8, !dbg !2375
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i32 0, i32 0), i32 %28), !dbg !2376
  %29 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2377
  %30 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %29, i32 0, i32 2, !dbg !2379
  %31 = load %struct._list*, %struct._list** %30, align 8, !dbg !2379
  %32 = icmp ne %struct._list* %31, null, !dbg !2380
  br i1 %32, label %34, label %33, !dbg !2381

; <label>:33:                                     ; preds = %22
  br label %40, !dbg !2382

; <label>:34:                                     ; preds = %22
  %35 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2384
  %36 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %35, i32 0, i32 2, !dbg !2386
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !2386
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 0, !dbg !2387
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !2387
  br label %40, !dbg !2388

; <label>:40:                                     ; preds = %34, %33
  %41 = phi %struct._element* [ null, %33 ], [ %39, %34 ], !dbg !2389
  store %struct._element* %41, %struct._element** %6, align 8, !dbg !2391
  br label %42, !dbg !2392

; <label>:42:                                     ; preds = %54, %40
  %43 = load %struct._element*, %struct._element** %6, align 8, !dbg !2393
  %44 = icmp ne %struct._element* %43, null, !dbg !2396
  br i1 %44, label %45, label %58, !dbg !2396

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %7, metadata !2397, metadata !643), !dbg !2399
  %46 = load %struct._element*, %struct._element** %6, align 8, !dbg !2400
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 2, !dbg !2401
  %48 = load i8*, i8** %47, align 8, !dbg !2401
  %49 = bitcast i8* %48 to %struct._vrrp_t*, !dbg !2402
  store %struct._vrrp_t* %49, %struct._vrrp_t** %7, align 8, !dbg !2399
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2403
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %7, align 8, !dbg !2404
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 1, !dbg !2405
  %53 = load i8*, i8** %52, align 8, !dbg !2405
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %53), !dbg !2406
  br label %54, !dbg !2407

; <label>:54:                                     ; preds = %45
  %55 = load %struct._element*, %struct._element** %6, align 8, !dbg !2408
  %56 = getelementptr inbounds %struct._element, %struct._element* %55, i32 0, i32 0, !dbg !2410
  %57 = load %struct._element*, %struct._element** %56, align 8, !dbg !2410
  store %struct._element* %57, %struct._element** %6, align 8, !dbg !2411
  br label %42, !dbg !2412, !llvm.loop !2413

; <label>:58:                                     ; preds = %42
  br label %59, !dbg !2415

; <label>:59:                                     ; preds = %58, %2
  %60 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2416
  %61 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %60, i32 0, i32 6, !dbg !2418
  %62 = load i8, i8* %61, align 4, !dbg !2418
  %63 = trunc i8 %62 to i1, !dbg !2418
  br i1 %63, label %64, label %66, !dbg !2419

; <label>:64:                                     ; preds = %59
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2420
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i32 0, i32 0)), !dbg !2421
  br label %66, !dbg !2421

; <label>:66:                                     ; preds = %64, %59
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2422
  %68 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2423
  %69 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %68, i32 0, i32 17, !dbg !2424
  %70 = load i32, i32* %69, align 8, !dbg !2424
  %71 = icmp ne i32 %70, 0, !dbg !2423
  %72 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), !dbg !2423
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0), i8* %72), !dbg !2425
  %73 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2426
  %74 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %73, i32 0, i32 7, !dbg !2428
  %75 = load %struct._list*, %struct._list** %74, align 8, !dbg !2428
  %76 = icmp eq %struct._list* %75, null, !dbg !2429
  br i1 %76, label %102, label %77, !dbg !2430

; <label>:77:                                     ; preds = %66
  %78 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2431
  %79 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %78, i32 0, i32 7, !dbg !2433
  %80 = load %struct._list*, %struct._list** %79, align 8, !dbg !2433
  %81 = getelementptr inbounds %struct._list, %struct._list* %80, i32 0, i32 0, !dbg !2434
  %82 = load %struct._element*, %struct._element** %81, align 8, !dbg !2434
  %83 = icmp eq %struct._element* %82, null, !dbg !2435
  br i1 %83, label %84, label %91, !dbg !2436

; <label>:84:                                     ; preds = %77
  %85 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2437
  %86 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %85, i32 0, i32 7, !dbg !2439
  %87 = load %struct._list*, %struct._list** %86, align 8, !dbg !2439
  %88 = getelementptr inbounds %struct._list, %struct._list* %87, i32 0, i32 1, !dbg !2440
  %89 = load %struct._element*, %struct._element** %88, align 8, !dbg !2440
  %90 = icmp eq %struct._element* %89, null, !dbg !2441
  br i1 %90, label %102, label %91, !dbg !2442

; <label>:91:                                     ; preds = %84, %77
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2443
  %93 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2445
  %94 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %93, i32 0, i32 7, !dbg !2446
  %95 = load %struct._list*, %struct._list** %94, align 8, !dbg !2446
  %96 = getelementptr inbounds %struct._list, %struct._list* %95, i32 0, i32 2, !dbg !2447
  %97 = load i32, i32* %96, align 8, !dbg !2447
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0), i32 %97), !dbg !2448
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2449
  %99 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2450
  %100 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %99, i32 0, i32 7, !dbg !2451
  %101 = load %struct._list*, %struct._list** %100, align 8, !dbg !2451
  call void @dump_list(%struct._IO_FILE* %98, %struct._list* %101), !dbg !2452
  br label %102, !dbg !2453

; <label>:102:                                    ; preds = %91, %84, %66
  %103 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2454
  %104 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %103, i32 0, i32 8, !dbg !2456
  %105 = load %struct._list*, %struct._list** %104, align 8, !dbg !2456
  %106 = icmp eq %struct._list* %105, null, !dbg !2457
  br i1 %106, label %132, label %107, !dbg !2458

; <label>:107:                                    ; preds = %102
  %108 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2459
  %109 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %108, i32 0, i32 8, !dbg !2461
  %110 = load %struct._list*, %struct._list** %109, align 8, !dbg !2461
  %111 = getelementptr inbounds %struct._list, %struct._list* %110, i32 0, i32 0, !dbg !2462
  %112 = load %struct._element*, %struct._element** %111, align 8, !dbg !2462
  %113 = icmp eq %struct._element* %112, null, !dbg !2463
  br i1 %113, label %114, label %121, !dbg !2464

; <label>:114:                                    ; preds = %107
  %115 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2465
  %116 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %115, i32 0, i32 8, !dbg !2467
  %117 = load %struct._list*, %struct._list** %116, align 8, !dbg !2467
  %118 = getelementptr inbounds %struct._list, %struct._list* %117, i32 0, i32 1, !dbg !2468
  %119 = load %struct._element*, %struct._element** %118, align 8, !dbg !2468
  %120 = icmp eq %struct._element* %119, null, !dbg !2469
  br i1 %120, label %132, label %121, !dbg !2470

; <label>:121:                                    ; preds = %114, %107
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2471
  %123 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2473
  %124 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %123, i32 0, i32 8, !dbg !2474
  %125 = load %struct._list*, %struct._list** %124, align 8, !dbg !2474
  %126 = getelementptr inbounds %struct._list, %struct._list* %125, i32 0, i32 2, !dbg !2475
  %127 = load i32, i32* %126, align 8, !dbg !2475
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0), i32 %127), !dbg !2476
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2477
  %129 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2478
  %130 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %129, i32 0, i32 8, !dbg !2479
  %131 = load %struct._list*, %struct._list** %130, align 8, !dbg !2479
  call void @dump_list(%struct._IO_FILE* %128, %struct._list* %131), !dbg !2480
  br label %132, !dbg !2481

; <label>:132:                                    ; preds = %121, %114, %102
  %133 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2482
  %134 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %133, i32 0, i32 9, !dbg !2484
  %135 = load %struct._list*, %struct._list** %134, align 8, !dbg !2484
  %136 = icmp eq %struct._list* %135, null, !dbg !2485
  br i1 %136, label %162, label %137, !dbg !2486

; <label>:137:                                    ; preds = %132
  %138 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2487
  %139 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %138, i32 0, i32 9, !dbg !2489
  %140 = load %struct._list*, %struct._list** %139, align 8, !dbg !2489
  %141 = getelementptr inbounds %struct._list, %struct._list* %140, i32 0, i32 0, !dbg !2490
  %142 = load %struct._element*, %struct._element** %141, align 8, !dbg !2490
  %143 = icmp eq %struct._element* %142, null, !dbg !2491
  br i1 %143, label %144, label %151, !dbg !2492

; <label>:144:                                    ; preds = %137
  %145 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2493
  %146 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %145, i32 0, i32 9, !dbg !2495
  %147 = load %struct._list*, %struct._list** %146, align 8, !dbg !2495
  %148 = getelementptr inbounds %struct._list, %struct._list* %147, i32 0, i32 1, !dbg !2496
  %149 = load %struct._element*, %struct._element** %148, align 8, !dbg !2496
  %150 = icmp eq %struct._element* %149, null, !dbg !2497
  br i1 %150, label %162, label %151, !dbg !2498

; <label>:151:                                    ; preds = %144, %137
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2499
  %153 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2501
  %154 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %153, i32 0, i32 9, !dbg !2502
  %155 = load %struct._list*, %struct._list** %154, align 8, !dbg !2502
  %156 = getelementptr inbounds %struct._list, %struct._list* %155, i32 0, i32 2, !dbg !2503
  %157 = load i32, i32* %156, align 8, !dbg !2503
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i32 %157), !dbg !2504
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2505
  %159 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2506
  %160 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %159, i32 0, i32 9, !dbg !2507
  %161 = load %struct._list*, %struct._list** %160, align 8, !dbg !2507
  call void @dump_list(%struct._IO_FILE* %158, %struct._list* %161), !dbg !2508
  br label %162, !dbg !2509

; <label>:162:                                    ; preds = %151, %144, %132
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2510
  %164 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2511
  %165 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %164, i32 0, i32 12, !dbg !2512
  %166 = load %struct._notify_script*, %struct._notify_script** %165, align 8, !dbg !2512
  call void @dump_notify_script(%struct._IO_FILE* %163, %struct._notify_script* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2513
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2514
  %168 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2515
  %169 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %168, i32 0, i32 13, !dbg !2516
  %170 = load %struct._notify_script*, %struct._notify_script** %169, align 8, !dbg !2516
  call void @dump_notify_script(%struct._IO_FILE* %167, %struct._notify_script* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0)), !dbg !2517
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2518
  %172 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2519
  %173 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %172, i32 0, i32 14, !dbg !2520
  %174 = load %struct._notify_script*, %struct._notify_script** %173, align 8, !dbg !2520
  call void @dump_notify_script(%struct._IO_FILE* %171, %struct._notify_script* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0)), !dbg !2521
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2522
  %176 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2523
  %177 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %176, i32 0, i32 15, !dbg !2524
  %178 = load %struct._notify_script*, %struct._notify_script** %177, align 8, !dbg !2524
  call void @dump_notify_script(%struct._IO_FILE* %175, %struct._notify_script* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0)), !dbg !2525
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2526
  %180 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !2527
  %181 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %180, i32 0, i32 16, !dbg !2528
  %182 = load %struct._notify_script*, %struct._notify_script** %181, align 8, !dbg !2528
  call void @dump_notify_script(%struct._IO_FILE* %179, %struct._notify_script* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0)), !dbg !2529
  ret void, !dbg !2530
}

; Function Attrs: nounwind uwtable
define internal void @free_vscript(i8*) #0 !dbg !2531 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2532, metadata !643), !dbg !2533
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !2534, metadata !643), !dbg !2535
  %4 = load i8*, i8** %2, align 8, !dbg !2536
  %5 = bitcast i8* %4 to %struct._vrrp_script*, !dbg !2536
  store %struct._vrrp_script* %5, %struct._vrrp_script** %3, align 8, !dbg !2535
  %6 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2537
  %7 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %6, i32 0, i32 8, !dbg !2538
  call void @free_list(%struct._list** %7), !dbg !2539
  %8 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2540
  %9 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %8, i32 0, i32 0, !dbg !2541
  %10 = load i8*, i8** %9, align 8, !dbg !2541
  call void @free(i8* %10) #8, !dbg !2542
  %11 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2543
  %12 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %11, i32 0, i32 0, !dbg !2544
  store i8* null, i8** %12, align 8, !dbg !2545
  %13 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2546
  %14 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %13, i32 0, i32 1, !dbg !2549
  %15 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %14, i32 0, i32 0, !dbg !2550
  %16 = load i8**, i8*** %15, align 8, !dbg !2550
  %17 = icmp ne i8** %16, null, !dbg !2546
  br i1 %17, label %18, label %27, !dbg !2551

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2552
  %20 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %19, i32 0, i32 1, !dbg !2555
  %21 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %20, i32 0, i32 0, !dbg !2556
  %22 = load i8**, i8*** %21, align 8, !dbg !2556
  %23 = bitcast i8** %22 to i8*, !dbg !2552
  call void @free(i8* %23) #8, !dbg !2557
  %24 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2558
  %25 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %24, i32 0, i32 1, !dbg !2559
  %26 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %25, i32 0, i32 0, !dbg !2560
  store i8** null, i8*** %26, align 8, !dbg !2561
  br label %27, !dbg !2562

; <label>:27:                                     ; preds = %18, %1
  %28 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2563
  %29 = bitcast %struct._vrrp_script* %28 to i8*, !dbg !2563
  call void @free(i8* %29) #8, !dbg !2564
  store %struct._vrrp_script* null, %struct._vrrp_script** %3, align 8, !dbg !2565
  ret void, !dbg !2566
}

; Function Attrs: nounwind uwtable
define internal void @dump_vscript(%struct._IO_FILE*, i8*) #0 !dbg !2567 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._vrrp_script*, align 8
  %6 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2568, metadata !643), !dbg !2569
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2570, metadata !643), !dbg !2571
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %5, metadata !2572, metadata !643), !dbg !2573
  %7 = load i8*, i8** %4, align 8, !dbg !2574
  %8 = bitcast i8* %7 to %struct._vrrp_script*, !dbg !2574
  store %struct._vrrp_script* %8, %struct._vrrp_script** %5, align 8, !dbg !2573
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2575, metadata !643), !dbg !2578
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2579
  %10 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2580
  %11 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %10, i32 0, i32 0, !dbg !2581
  %12 = load i8*, i8** %11, align 8, !dbg !2581
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0), i8* %12), !dbg !2582
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2583
  %14 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2584
  %15 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %14, i32 0, i32 1, !dbg !2585
  %16 = call i8* @cmd_str(%struct._notify_script* %15), !dbg !2586
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i8* %16), !dbg !2587
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2589
  %18 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2590
  %19 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %18, i32 0, i32 2, !dbg !2591
  %20 = load i64, i64* %19, align 8, !dbg !2591
  %21 = udiv i64 %20, 1000000, !dbg !2592
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i32 0, i32 0), i64 %21), !dbg !2593
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2594
  %23 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2595
  %24 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %23, i32 0, i32 3, !dbg !2596
  %25 = load i64, i64* %24, align 8, !dbg !2596
  %26 = udiv i64 %25, 1000000, !dbg !2597
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), i64 %26), !dbg !2598
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2599
  %28 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2600
  %29 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %28, i32 0, i32 4, !dbg !2601
  %30 = load i32, i32* %29, align 8, !dbg !2601
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i32 %30), !dbg !2602
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2603
  %32 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2604
  %33 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %32, i32 0, i32 6, !dbg !2605
  %34 = load i32, i32* %33, align 8, !dbg !2605
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 %34), !dbg !2606
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2607
  %36 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2608
  %37 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %36, i32 0, i32 7, !dbg !2609
  %38 = load i32, i32* %37, align 4, !dbg !2609
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i32 %38), !dbg !2610
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2611
  %40 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2612
  %41 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %40, i32 0, i32 12, !dbg !2613
  %42 = load i8, i8* %41, align 4, !dbg !2613
  %43 = trunc i8 %42 to i1, !dbg !2613
  %44 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), !dbg !2612
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i32 0, i32 0), i8* %44), !dbg !2614
  %45 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2615
  %46 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %45, i32 0, i32 11, !dbg !2616
  %47 = load i32, i32* %46, align 8, !dbg !2616
  switch i32 %47, label %50 [
    i32 1, label %48
    i32 2, label %49
  ], !dbg !2617

; <label>:48:                                     ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8** %6, align 8, !dbg !2618
  br label %59, !dbg !2620

; <label>:49:                                     ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i8** %6, align 8, !dbg !2621
  br label %59, !dbg !2622

; <label>:50:                                     ; preds = %2
  %51 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2623
  %52 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %51, i32 0, i32 5, !dbg !2624
  %53 = load i32, i32* %52, align 4, !dbg !2624
  %54 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2625
  %55 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %54, i32 0, i32 6, !dbg !2626
  %56 = load i32, i32* %55, align 8, !dbg !2626
  %57 = icmp sge i32 %53, %56, !dbg !2627
  %58 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), !dbg !2628
  store i8* %58, i8** %6, align 8, !dbg !2629
  br label %59, !dbg !2630

; <label>:59:                                     ; preds = %50, %49, %48
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2631
  %61 = load i8*, i8** %6, align 8, !dbg !2632
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), i8* %61), !dbg !2633
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2634
  %63 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2635
  %64 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %63, i32 0, i32 1, !dbg !2636
  %65 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %64, i32 0, i32 3, !dbg !2637
  %66 = load i32, i32* %65, align 8, !dbg !2637
  %67 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2638
  %68 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %67, i32 0, i32 1, !dbg !2639
  %69 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %68, i32 0, i32 4, !dbg !2640
  %70 = load i32, i32* %69, align 4, !dbg !2640
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.110, i32 0, i32 0), i32 %66, i32 %70), !dbg !2641
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2642
  %72 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2643
  %73 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %72, i32 0, i32 8, !dbg !2644
  %74 = load %struct._list*, %struct._list** %73, align 8, !dbg !2644
  %75 = icmp ne %struct._list* %74, null, !dbg !2643
  br i1 %75, label %76, label %82, !dbg !2643

; <label>:76:                                     ; preds = %59
  %77 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2645
  %78 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %77, i32 0, i32 8, !dbg !2646
  %79 = load %struct._list*, %struct._list** %78, align 8, !dbg !2646
  %80 = getelementptr inbounds %struct._list, %struct._list* %79, i32 0, i32 2, !dbg !2647
  %81 = load i32, i32* %80, align 8, !dbg !2647
  br label %83, !dbg !2648

; <label>:82:                                     ; preds = %59
  br label %83, !dbg !2649

; <label>:83:                                     ; preds = %82, %76
  %84 = phi i32 [ %81, %76 ], [ 0, %82 ], !dbg !2651
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.111, i32 0, i32 0), i32 %84), !dbg !2653
  %85 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2654
  %86 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %85, i32 0, i32 8, !dbg !2656
  %87 = load %struct._list*, %struct._list** %86, align 8, !dbg !2656
  %88 = icmp ne %struct._list* %87, null, !dbg !2654
  br i1 %88, label %89, label %94, !dbg !2657

; <label>:89:                                     ; preds = %83
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2658
  %91 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2659
  %92 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %91, i32 0, i32 8, !dbg !2660
  %93 = load %struct._list*, %struct._list** %92, align 8, !dbg !2660
  call void @dump_list(%struct._IO_FILE* %90, %struct._list* %93), !dbg !2661
  br label %94, !dbg !2661

; <label>:94:                                     ; preds = %89, %83
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2662
  %96 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2663
  %97 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %96, i32 0, i32 10, !dbg !2664
  %98 = load i32, i32* %97, align 4, !dbg !2664
  %99 = icmp eq i32 %98, 0, !dbg !2665
  br i1 %99, label %100, label %101, !dbg !2663

; <label>:100:                                    ; preds = %94
  br label %123, !dbg !2666

; <label>:101:                                    ; preds = %94
  %102 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2667
  %103 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %102, i32 0, i32 10, !dbg !2668
  %104 = load i32, i32* %103, align 4, !dbg !2668
  %105 = icmp eq i32 %104, 1, !dbg !2669
  br i1 %105, label %106, label %107, !dbg !2667

; <label>:106:                                    ; preds = %101
  br label %121, !dbg !2670

; <label>:107:                                    ; preds = %101
  %108 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2671
  %109 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %108, i32 0, i32 10, !dbg !2672
  %110 = load i32, i32* %109, align 4, !dbg !2672
  %111 = icmp eq i32 %110, 2, !dbg !2673
  br i1 %111, label %112, label %113, !dbg !2671

; <label>:112:                                    ; preds = %107
  br label %119, !dbg !2674

; <label>:113:                                    ; preds = %107
  %114 = load %struct._vrrp_script*, %struct._vrrp_script** %5, align 8, !dbg !2675
  %115 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %114, i32 0, i32 10, !dbg !2676
  %116 = load i32, i32* %115, align 4, !dbg !2676
  %117 = icmp eq i32 %116, 3, !dbg !2677
  %118 = select i1 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), !dbg !2675
  br label %119, !dbg !2678

; <label>:119:                                    ; preds = %113, %112
  %120 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.114, i32 0, i32 0), %112 ], [ %118, %113 ], !dbg !2679
  br label %121, !dbg !2680

; <label>:121:                                    ; preds = %119, %106
  %122 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), %106 ], [ %120, %119 ], !dbg !2681
  br label %123, !dbg !2682

; <label>:123:                                    ; preds = %121, %100
  %124 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), %100 ], [ %122, %121 ], !dbg !2683
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* %124), !dbg !2684
  ret void, !dbg !2685
}

; Function Attrs: nounwind uwtable
define internal void @free_vfile(i8*) #0 !dbg !2686 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._vrrp_file*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2687, metadata !643), !dbg !2688
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %3, metadata !2689, metadata !643), !dbg !2690
  %4 = load i8*, i8** %2, align 8, !dbg !2691
  %5 = bitcast i8* %4 to %struct._vrrp_file*, !dbg !2691
  store %struct._vrrp_file* %5, %struct._vrrp_file** %3, align 8, !dbg !2690
  %6 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2692
  %7 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %6, i32 0, i32 5, !dbg !2693
  call void @free_list(%struct._list** %7), !dbg !2694
  %8 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2695
  %9 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %8, i32 0, i32 0, !dbg !2696
  %10 = load i8*, i8** %9, align 8, !dbg !2696
  call void @free(i8* %10) #8, !dbg !2697
  %11 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2698
  %12 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %11, i32 0, i32 0, !dbg !2699
  store i8* null, i8** %12, align 8, !dbg !2700
  %13 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2701
  %14 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %13, i32 0, i32 1, !dbg !2702
  %15 = load i8*, i8** %14, align 8, !dbg !2702
  call void @free(i8* %15) #8, !dbg !2703
  %16 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2704
  %17 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %16, i32 0, i32 1, !dbg !2705
  store i8* null, i8** %17, align 8, !dbg !2706
  %18 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !2707
  %19 = bitcast %struct._vrrp_file* %18 to i8*, !dbg !2707
  call void @free(i8* %19) #8, !dbg !2708
  store %struct._vrrp_file* null, %struct._vrrp_file** %3, align 8, !dbg !2709
  ret void, !dbg !2710
}

; Function Attrs: nounwind uwtable
define internal void @dump_vfile(%struct._IO_FILE*, i8*) #0 !dbg !2711 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._vrrp_file*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2712, metadata !643), !dbg !2713
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2714, metadata !643), !dbg !2715
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %5, metadata !2716, metadata !643), !dbg !2717
  %6 = load i8*, i8** %4, align 8, !dbg !2718
  %7 = bitcast i8* %6 to %struct._vrrp_file*, !dbg !2718
  store %struct._vrrp_file* %7, %struct._vrrp_file** %5, align 8, !dbg !2717
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2719
  %9 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2720
  %10 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %9, i32 0, i32 0, !dbg !2721
  %11 = load i8*, i8** %10, align 8, !dbg !2721
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.116, i32 0, i32 0), i8* %11), !dbg !2722
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2723
  %13 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2724
  %14 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %13, i32 0, i32 1, !dbg !2725
  %15 = load i8*, i8** %14, align 8, !dbg !2725
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i8* %15), !dbg !2726
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2727
  %17 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2728
  %18 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %17, i32 0, i32 3, !dbg !2729
  %19 = load i32, i32* %18, align 8, !dbg !2729
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i32 %19), !dbg !2730
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2731
  %21 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2732
  %22 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %21, i32 0, i32 5, !dbg !2733
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !2733
  %24 = icmp ne %struct._list* %23, null, !dbg !2732
  br i1 %24, label %25, label %31, !dbg !2732

; <label>:25:                                     ; preds = %2
  %26 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2734
  %27 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %26, i32 0, i32 5, !dbg !2736
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !2736
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 2, !dbg !2737
  %30 = load i32, i32* %29, align 8, !dbg !2737
  br label %32, !dbg !2738

; <label>:31:                                     ; preds = %2
  br label %32, !dbg !2739

; <label>:32:                                     ; preds = %31, %25
  %33 = phi i32 [ %30, %25 ], [ 0, %31 ], !dbg !2741
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.118, i32 0, i32 0), i32 %33), !dbg !2743
  %34 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2744
  %35 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %34, i32 0, i32 5, !dbg !2746
  %36 = load %struct._list*, %struct._list** %35, align 8, !dbg !2746
  %37 = icmp ne %struct._list* %36, null, !dbg !2744
  br i1 %37, label %38, label %43, !dbg !2747

; <label>:38:                                     ; preds = %32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2748
  %40 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !2749
  %41 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %40, i32 0, i32 5, !dbg !2750
  %42 = load %struct._list*, %struct._list** %41, align 8, !dbg !2750
  call void @dump_list(%struct._IO_FILE* %39, %struct._list* %42), !dbg !2751
  br label %43, !dbg !2751

; <label>:43:                                     ; preds = %38, %32
  ret void, !dbg !2752
}

; Function Attrs: nounwind uwtable
define internal void @free_sock(i8*) #0 !dbg !2753 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._sock*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2754, metadata !643), !dbg !2755
  call void @llvm.dbg.declare(metadata %struct._sock** %3, metadata !2756, metadata !643), !dbg !2757
  %4 = load i8*, i8** %2, align 8, !dbg !2758
  %5 = bitcast i8* %4 to %struct._sock*, !dbg !2758
  store %struct._sock* %5, %struct._sock** %3, align 8, !dbg !2757
  %6 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !2759
  %7 = getelementptr inbounds %struct._sock, %struct._sock* %6, i32 0, i32 8, !dbg !2760
  %8 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !2760
  call void @thread_cancel(%struct._thread* %8), !dbg !2761
  %9 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !2762
  %10 = getelementptr inbounds %struct._sock, %struct._sock* %9, i32 0, i32 5, !dbg !2764
  %11 = load i32, i32* %10, align 4, !dbg !2764
  %12 = icmp sgt i32 %11, 0, !dbg !2765
  br i1 %12, label %13, label %18, !dbg !2766

; <label>:13:                                     ; preds = %1
  %14 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !2767
  %15 = getelementptr inbounds %struct._sock, %struct._sock* %14, i32 0, i32 5, !dbg !2768
  %16 = load i32, i32* %15, align 4, !dbg !2768
  %17 = call i32 @close(i32 %16), !dbg !2769
  br label %18, !dbg !2769

; <label>:18:                                     ; preds = %13, %1
  %19 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !2770
  %20 = getelementptr inbounds %struct._sock, %struct._sock* %19, i32 0, i32 6, !dbg !2772
  %21 = load i32, i32* %20, align 8, !dbg !2772
  %22 = icmp sgt i32 %21, 0, !dbg !2773
  br i1 %22, label %23, label %28, !dbg !2774

; <label>:23:                                     ; preds = %18
  %24 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !2775
  %25 = getelementptr inbounds %struct._sock, %struct._sock* %24, i32 0, i32 6, !dbg !2776
  %26 = load i32, i32* %25, align 8, !dbg !2776
  %27 = call i32 @close(i32 %26), !dbg !2777
  br label %28, !dbg !2777

; <label>:28:                                     ; preds = %23, %18
  %29 = load i8*, i8** %2, align 8, !dbg !2778
  call void @free(i8* %29) #8, !dbg !2779
  store i8* null, i8** %2, align 8, !dbg !2780
  ret void, !dbg !2781
}

; Function Attrs: nounwind uwtable
define internal void @dump_sock(%struct._IO_FILE*, i8*) #0 !dbg !2782 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._sock*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2783, metadata !643), !dbg !2784
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2785, metadata !643), !dbg !2786
  call void @llvm.dbg.declare(metadata %struct._sock** %5, metadata !2787, metadata !643), !dbg !2788
  %6 = load i8*, i8** %4, align 8, !dbg !2789
  %7 = bitcast i8* %6 to %struct._sock*, !dbg !2789
  store %struct._sock* %7, %struct._sock** %5, align 8, !dbg !2788
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2790
  %9 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2791
  %10 = getelementptr inbounds %struct._sock, %struct._sock* %9, i32 0, i32 3, !dbg !2792
  %11 = load i32, i32* %10, align 4, !dbg !2792
  %12 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2793
  %13 = getelementptr inbounds %struct._sock, %struct._sock* %12, i32 0, i32 0, !dbg !2794
  %14 = load i16, i16* %13, align 8, !dbg !2794
  %15 = zext i16 %14 to i32, !dbg !2793
  %16 = icmp eq i32 %15, 2, !dbg !2795
  br i1 %16, label %17, label %18, !dbg !2793

; <label>:17:                                     ; preds = %2
  br label %25, !dbg !2796

; <label>:18:                                     ; preds = %2
  %19 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2798
  %20 = getelementptr inbounds %struct._sock, %struct._sock* %19, i32 0, i32 0, !dbg !2800
  %21 = load i16, i16* %20, align 8, !dbg !2800
  %22 = zext i16 %21 to i32, !dbg !2798
  %23 = icmp eq i32 %22, 10, !dbg !2801
  %24 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), !dbg !2798
  br label %25, !dbg !2802

; <label>:25:                                     ; preds = %18, %17
  %26 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), %17 ], [ %24, %18 ], !dbg !2803
  %27 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2805
  %28 = getelementptr inbounds %struct._sock, %struct._sock* %27, i32 0, i32 2, !dbg !2806
  %29 = load i32, i32* %28, align 8, !dbg !2806
  %30 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2807
  %31 = getelementptr inbounds %struct._sock, %struct._sock* %30, i32 0, i32 4, !dbg !2808
  %32 = load i8, i8* %31, align 8, !dbg !2808
  %33 = trunc i8 %32 to i1, !dbg !2808
  %34 = zext i1 %33 to i32, !dbg !2807
  %35 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2809
  %36 = getelementptr inbounds %struct._sock, %struct._sock* %35, i32 0, i32 5, !dbg !2810
  %37 = load i32, i32* %36, align 4, !dbg !2810
  %38 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !2811
  %39 = getelementptr inbounds %struct._sock, %struct._sock* %38, i32 0, i32 6, !dbg !2812
  %40 = load i32, i32* %39, align 8, !dbg !2812
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.119, i32 0, i32 0), i32 %11, i8* %26, i32 %29, i32 %34, i32 %37, i32 %40), !dbg !2813
  ret void, !dbg !2814
}

; Function Attrs: nounwind uwtable
define void @free_vrrp_data(%struct._vrrp_data*) #0 !dbg !2815 {
  %2 = alloca %struct._vrrp_data*, align 8
  store %struct._vrrp_data* %0, %struct._vrrp_data** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_data** %2, metadata !2818, metadata !643), !dbg !2819
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2820
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 1, !dbg !2821
  call void @free_list(%struct._list** %4), !dbg !2822
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2823
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 2, !dbg !2824
  call void @free_list(%struct._list** %6), !dbg !2825
  %7 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2826
  %8 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %7, i32 0, i32 3, !dbg !2827
  call void @free_list(%struct._list** %8), !dbg !2828
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2829
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 0, !dbg !2830
  call void @free_list(%struct._list** %10), !dbg !2831
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2832
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 6, !dbg !2833
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !2833
  call void @free_mlist(%struct._list* %13, i64 1151), !dbg !2834
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2835
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 7, !dbg !2836
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !2836
  call void @free_mlist(%struct._list* %16, i64 1024), !dbg !2837
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2838
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 5, !dbg !2839
  call void @free_list(%struct._list** %18), !dbg !2840
  %19 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2841
  %20 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %19, i32 0, i32 4, !dbg !2842
  call void @free_list(%struct._list** %20), !dbg !2843
  %21 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2844
  %22 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %21, i32 0, i32 9, !dbg !2845
  call void @free_list(%struct._list** %22), !dbg !2846
  %23 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2847
  %24 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %23, i32 0, i32 10, !dbg !2848
  call void @free_list(%struct._list** %24), !dbg !2849
  %25 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !2850
  %26 = bitcast %struct._vrrp_data* %25 to i8*, !dbg !2850
  call void @free(i8* %26) #8, !dbg !2851
  store %struct._vrrp_data* null, %struct._vrrp_data** %2, align 8, !dbg !2852
  ret void, !dbg !2853
}

declare void @free_list(%struct._list**) #2

declare void @free_mlist(%struct._list*, i64) #2

; Function Attrs: nounwind uwtable
define void @dump_data_vrrp(%struct._IO_FILE*) #0 !dbg !2854 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._list*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !2857, metadata !643), !dbg !2858
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !2859, metadata !643), !dbg !2860
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2861
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2862
  call void @dump_global_data(%struct._IO_FILE* %4, %struct._data* %5), !dbg !2863
  %6 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !2864
  %7 = icmp eq %struct._list* %6, null, !dbg !2866
  br i1 %7, label %22, label %8, !dbg !2867

; <label>:8:                                      ; preds = %1
  %9 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !2868
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 0, !dbg !2870
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !2870
  %12 = icmp eq %struct._element* %11, null, !dbg !2871
  br i1 %12, label %13, label %18, !dbg !2872

; <label>:13:                                     ; preds = %8
  %14 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !2873
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 1, !dbg !2875
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !2875
  %17 = icmp eq %struct._element* %16, null, !dbg !2876
  br i1 %17, label %22, label %18, !dbg !2877

; <label>:18:                                     ; preds = %13, %8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2878
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)), !dbg !2880
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2881
  %21 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !2882
  call void @dump_list(%struct._IO_FILE* %20, %struct._list* %21), !dbg !2883
  br label %22, !dbg !2884

; <label>:22:                                     ; preds = %18, %13, %1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2885
  %24 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2886
  call void @dump_vrrp_data(%struct._IO_FILE* %23, %struct._vrrp_data* %24), !dbg !2887
  %25 = call %struct._list* @get_if_list(), !dbg !2888
  store %struct._list* %25, %struct._list** %3, align 8, !dbg !2889
  %26 = load %struct._list*, %struct._list** %3, align 8, !dbg !2890
  %27 = icmp eq %struct._list* %26, null, !dbg !2892
  br i1 %27, label %42, label %28, !dbg !2893

; <label>:28:                                     ; preds = %22
  %29 = load %struct._list*, %struct._list** %3, align 8, !dbg !2894
  %30 = getelementptr inbounds %struct._list, %struct._list* %29, i32 0, i32 0, !dbg !2896
  %31 = load %struct._element*, %struct._element** %30, align 8, !dbg !2896
  %32 = icmp eq %struct._element* %31, null, !dbg !2897
  br i1 %32, label %33, label %38, !dbg !2898

; <label>:33:                                     ; preds = %28
  %34 = load %struct._list*, %struct._list** %3, align 8, !dbg !2899
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 1, !dbg !2901
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !2901
  %37 = icmp eq %struct._element* %36, null, !dbg !2902
  br i1 %37, label %42, label %38, !dbg !2903

; <label>:38:                                     ; preds = %33, %28
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2904
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)), !dbg !2906
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2907
  %41 = load %struct._list*, %struct._list** %3, align 8, !dbg !2908
  call void @dump_list(%struct._IO_FILE* %40, %struct._list* %41), !dbg !2909
  br label %42, !dbg !2910

; <label>:42:                                     ; preds = %38, %33, %22
  call void @clear_rt_names(), !dbg !2911
  ret void, !dbg !2912
}

declare void @dump_global_data(%struct._IO_FILE*, %struct._data*) #2

declare void @dump_list(%struct._IO_FILE*, %struct._list*) #2

; Function Attrs: nounwind uwtable
define internal void @dump_vrrp_data(%struct._IO_FILE*, %struct._vrrp_data*) #0 !dbg !2913 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._vrrp_data*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2916, metadata !643), !dbg !2917
  store %struct._vrrp_data* %1, %struct._vrrp_data** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_data** %4, metadata !2918, metadata !643), !dbg !2919
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2920
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 1, !dbg !2922
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2922
  %8 = icmp eq %struct._list* %7, null, !dbg !2923
  br i1 %8, label %29, label %9, !dbg !2924

; <label>:9:                                      ; preds = %2
  %10 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2925
  %11 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %10, i32 0, i32 1, !dbg !2927
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !2927
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i32 0, i32 0, !dbg !2928
  %14 = load %struct._element*, %struct._element** %13, align 8, !dbg !2928
  %15 = icmp eq %struct._element* %14, null, !dbg !2929
  br i1 %15, label %16, label %23, !dbg !2930

; <label>:16:                                     ; preds = %9
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2931
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 1, !dbg !2933
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !2933
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 1, !dbg !2934
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !2934
  %22 = icmp eq %struct._element* %21, null, !dbg !2935
  br i1 %22, label %29, label %23, !dbg !2936

; <label>:23:                                     ; preds = %16, %9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2937
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.122, i32 0, i32 0)), !dbg !2939
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2940
  %26 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2941
  %27 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %26, i32 0, i32 1, !dbg !2942
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !2942
  call void @dump_list(%struct._IO_FILE* %25, %struct._list* %28), !dbg !2943
  br label %29, !dbg !2944

; <label>:29:                                     ; preds = %23, %16, %2
  %30 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2945
  %31 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %30, i32 0, i32 2, !dbg !2947
  %32 = load %struct._list*, %struct._list** %31, align 8, !dbg !2947
  %33 = icmp eq %struct._list* %32, null, !dbg !2948
  br i1 %33, label %54, label %34, !dbg !2949

; <label>:34:                                     ; preds = %29
  %35 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2950
  %36 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %35, i32 0, i32 2, !dbg !2952
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !2952
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 0, !dbg !2953
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !2953
  %40 = icmp eq %struct._element* %39, null, !dbg !2954
  br i1 %40, label %41, label %48, !dbg !2955

; <label>:41:                                     ; preds = %34
  %42 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2956
  %43 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %42, i32 0, i32 2, !dbg !2958
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !2958
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 1, !dbg !2959
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !2959
  %47 = icmp eq %struct._element* %46, null, !dbg !2960
  br i1 %47, label %54, label %48, !dbg !2961

; <label>:48:                                     ; preds = %41, %34
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2962
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.123, i32 0, i32 0)), !dbg !2964
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2965
  %51 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2966
  %52 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %51, i32 0, i32 2, !dbg !2967
  %53 = load %struct._list*, %struct._list** %52, align 8, !dbg !2967
  call void @dump_list(%struct._IO_FILE* %50, %struct._list* %53), !dbg !2968
  br label %54, !dbg !2969

; <label>:54:                                     ; preds = %48, %41, %29
  %55 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2970
  %56 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %55, i32 0, i32 3, !dbg !2972
  %57 = load %struct._list*, %struct._list** %56, align 8, !dbg !2972
  %58 = icmp eq %struct._list* %57, null, !dbg !2973
  br i1 %58, label %79, label %59, !dbg !2974

; <label>:59:                                     ; preds = %54
  %60 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2975
  %61 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %60, i32 0, i32 3, !dbg !2977
  %62 = load %struct._list*, %struct._list** %61, align 8, !dbg !2977
  %63 = getelementptr inbounds %struct._list, %struct._list* %62, i32 0, i32 0, !dbg !2978
  %64 = load %struct._element*, %struct._element** %63, align 8, !dbg !2978
  %65 = icmp eq %struct._element* %64, null, !dbg !2979
  br i1 %65, label %66, label %73, !dbg !2980

; <label>:66:                                     ; preds = %59
  %67 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2981
  %68 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %67, i32 0, i32 3, !dbg !2983
  %69 = load %struct._list*, %struct._list** %68, align 8, !dbg !2983
  %70 = getelementptr inbounds %struct._list, %struct._list* %69, i32 0, i32 1, !dbg !2984
  %71 = load %struct._element*, %struct._element** %70, align 8, !dbg !2984
  %72 = icmp eq %struct._element* %71, null, !dbg !2985
  br i1 %72, label %79, label %73, !dbg !2986

; <label>:73:                                     ; preds = %66, %59
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2987
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.124, i32 0, i32 0)), !dbg !2989
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2990
  %76 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2991
  %77 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %76, i32 0, i32 3, !dbg !2992
  %78 = load %struct._list*, %struct._list** %77, align 8, !dbg !2992
  call void @dump_list(%struct._IO_FILE* %75, %struct._list* %78), !dbg !2993
  br label %79, !dbg !2994

; <label>:79:                                     ; preds = %73, %66, %54
  %80 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !2995
  %81 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %80, i32 0, i32 0, !dbg !2997
  %82 = load %struct._list*, %struct._list** %81, align 8, !dbg !2997
  %83 = icmp eq %struct._list* %82, null, !dbg !2998
  br i1 %83, label %104, label %84, !dbg !2999

; <label>:84:                                     ; preds = %79
  %85 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3000
  %86 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %85, i32 0, i32 0, !dbg !3002
  %87 = load %struct._list*, %struct._list** %86, align 8, !dbg !3002
  %88 = getelementptr inbounds %struct._list, %struct._list* %87, i32 0, i32 0, !dbg !3003
  %89 = load %struct._element*, %struct._element** %88, align 8, !dbg !3003
  %90 = icmp eq %struct._element* %89, null, !dbg !3004
  br i1 %90, label %91, label %98, !dbg !3005

; <label>:91:                                     ; preds = %84
  %92 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3006
  %93 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %92, i32 0, i32 0, !dbg !3008
  %94 = load %struct._list*, %struct._list** %93, align 8, !dbg !3008
  %95 = getelementptr inbounds %struct._list, %struct._list* %94, i32 0, i32 1, !dbg !3009
  %96 = load %struct._element*, %struct._element** %95, align 8, !dbg !3009
  %97 = icmp eq %struct._element* %96, null, !dbg !3010
  br i1 %97, label %104, label %98, !dbg !3011

; <label>:98:                                     ; preds = %91, %84
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3012
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.125, i32 0, i32 0)), !dbg !3014
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3015
  %101 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3016
  %102 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %101, i32 0, i32 0, !dbg !3017
  %103 = load %struct._list*, %struct._list** %102, align 8, !dbg !3017
  call void @dump_list(%struct._IO_FILE* %100, %struct._list* %103), !dbg !3018
  br label %104, !dbg !3019

; <label>:104:                                    ; preds = %98, %91, %79
  %105 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3020
  %106 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %105, i32 0, i32 5, !dbg !3022
  %107 = load %struct._list*, %struct._list** %106, align 8, !dbg !3022
  %108 = icmp eq %struct._list* %107, null, !dbg !3023
  br i1 %108, label %129, label %109, !dbg !3024

; <label>:109:                                    ; preds = %104
  %110 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3025
  %111 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %110, i32 0, i32 5, !dbg !3027
  %112 = load %struct._list*, %struct._list** %111, align 8, !dbg !3027
  %113 = getelementptr inbounds %struct._list, %struct._list* %112, i32 0, i32 0, !dbg !3028
  %114 = load %struct._element*, %struct._element** %113, align 8, !dbg !3028
  %115 = icmp eq %struct._element* %114, null, !dbg !3029
  br i1 %115, label %116, label %123, !dbg !3030

; <label>:116:                                    ; preds = %109
  %117 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3031
  %118 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %117, i32 0, i32 5, !dbg !3033
  %119 = load %struct._list*, %struct._list** %118, align 8, !dbg !3033
  %120 = getelementptr inbounds %struct._list, %struct._list* %119, i32 0, i32 1, !dbg !3034
  %121 = load %struct._element*, %struct._element** %120, align 8, !dbg !3034
  %122 = icmp eq %struct._element* %121, null, !dbg !3035
  br i1 %122, label %129, label %123, !dbg !3036

; <label>:123:                                    ; preds = %116, %109
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3037
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.126, i32 0, i32 0)), !dbg !3039
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3040
  %126 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3041
  %127 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %126, i32 0, i32 5, !dbg !3042
  %128 = load %struct._list*, %struct._list** %127, align 8, !dbg !3042
  call void @dump_list(%struct._IO_FILE* %125, %struct._list* %128), !dbg !3043
  br label %129, !dbg !3044

; <label>:129:                                    ; preds = %123, %116, %104
  %130 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3045
  %131 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %130, i32 0, i32 4, !dbg !3047
  %132 = load %struct._list*, %struct._list** %131, align 8, !dbg !3047
  %133 = icmp eq %struct._list* %132, null, !dbg !3048
  br i1 %133, label %154, label %134, !dbg !3049

; <label>:134:                                    ; preds = %129
  %135 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3050
  %136 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %135, i32 0, i32 4, !dbg !3052
  %137 = load %struct._list*, %struct._list** %136, align 8, !dbg !3052
  %138 = getelementptr inbounds %struct._list, %struct._list* %137, i32 0, i32 0, !dbg !3053
  %139 = load %struct._element*, %struct._element** %138, align 8, !dbg !3053
  %140 = icmp eq %struct._element* %139, null, !dbg !3054
  br i1 %140, label %141, label %148, !dbg !3055

; <label>:141:                                    ; preds = %134
  %142 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3056
  %143 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %142, i32 0, i32 4, !dbg !3058
  %144 = load %struct._list*, %struct._list** %143, align 8, !dbg !3058
  %145 = getelementptr inbounds %struct._list, %struct._list* %144, i32 0, i32 1, !dbg !3059
  %146 = load %struct._element*, %struct._element** %145, align 8, !dbg !3059
  %147 = icmp eq %struct._element* %146, null, !dbg !3060
  br i1 %147, label %154, label %148, !dbg !3061

; <label>:148:                                    ; preds = %141, %134
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3062
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.127, i32 0, i32 0)), !dbg !3064
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3065
  %151 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3066
  %152 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %151, i32 0, i32 4, !dbg !3067
  %153 = load %struct._list*, %struct._list** %152, align 8, !dbg !3067
  call void @dump_list(%struct._IO_FILE* %150, %struct._list* %153), !dbg !3068
  br label %154, !dbg !3069

; <label>:154:                                    ; preds = %148, %141, %129
  %155 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3070
  %156 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %155, i32 0, i32 9, !dbg !3072
  %157 = load %struct._list*, %struct._list** %156, align 8, !dbg !3072
  %158 = icmp eq %struct._list* %157, null, !dbg !3073
  br i1 %158, label %179, label %159, !dbg !3074

; <label>:159:                                    ; preds = %154
  %160 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3075
  %161 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %160, i32 0, i32 9, !dbg !3077
  %162 = load %struct._list*, %struct._list** %161, align 8, !dbg !3077
  %163 = getelementptr inbounds %struct._list, %struct._list* %162, i32 0, i32 0, !dbg !3078
  %164 = load %struct._element*, %struct._element** %163, align 8, !dbg !3078
  %165 = icmp eq %struct._element* %164, null, !dbg !3079
  br i1 %165, label %166, label %173, !dbg !3080

; <label>:166:                                    ; preds = %159
  %167 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3081
  %168 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %167, i32 0, i32 9, !dbg !3083
  %169 = load %struct._list*, %struct._list** %168, align 8, !dbg !3083
  %170 = getelementptr inbounds %struct._list, %struct._list* %169, i32 0, i32 1, !dbg !3084
  %171 = load %struct._element*, %struct._element** %170, align 8, !dbg !3084
  %172 = icmp eq %struct._element* %171, null, !dbg !3085
  br i1 %172, label %179, label %173, !dbg !3086

; <label>:173:                                    ; preds = %166, %159
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3087
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.128, i32 0, i32 0)), !dbg !3089
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3090
  %176 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3091
  %177 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %176, i32 0, i32 9, !dbg !3092
  %178 = load %struct._list*, %struct._list** %177, align 8, !dbg !3092
  call void @dump_list(%struct._IO_FILE* %175, %struct._list* %178), !dbg !3093
  br label %179, !dbg !3094

; <label>:179:                                    ; preds = %173, %166, %154
  %180 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3095
  %181 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %180, i32 0, i32 10, !dbg !3097
  %182 = load %struct._list*, %struct._list** %181, align 8, !dbg !3097
  %183 = icmp eq %struct._list* %182, null, !dbg !3098
  br i1 %183, label %204, label %184, !dbg !3099

; <label>:184:                                    ; preds = %179
  %185 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3100
  %186 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %185, i32 0, i32 10, !dbg !3102
  %187 = load %struct._list*, %struct._list** %186, align 8, !dbg !3102
  %188 = getelementptr inbounds %struct._list, %struct._list* %187, i32 0, i32 0, !dbg !3103
  %189 = load %struct._element*, %struct._element** %188, align 8, !dbg !3103
  %190 = icmp eq %struct._element* %189, null, !dbg !3104
  br i1 %190, label %191, label %198, !dbg !3105

; <label>:191:                                    ; preds = %184
  %192 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3106
  %193 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %192, i32 0, i32 10, !dbg !3108
  %194 = load %struct._list*, %struct._list** %193, align 8, !dbg !3108
  %195 = getelementptr inbounds %struct._list, %struct._list* %194, i32 0, i32 1, !dbg !3109
  %196 = load %struct._element*, %struct._element** %195, align 8, !dbg !3109
  %197 = icmp eq %struct._element* %196, null, !dbg !3110
  br i1 %197, label %204, label %198, !dbg !3111

; <label>:198:                                    ; preds = %191, %184
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3112
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0)), !dbg !3114
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3115
  %201 = load %struct._vrrp_data*, %struct._vrrp_data** %4, align 8, !dbg !3116
  %202 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %201, i32 0, i32 10, !dbg !3117
  %203 = load %struct._list*, %struct._list** %202, align 8, !dbg !3117
  call void @dump_list(%struct._IO_FILE* %200, %struct._list* %203), !dbg !3118
  br label %204, !dbg !3119

; <label>:204:                                    ; preds = %198, %191, %179
  ret void, !dbg !3120
}

declare %struct._list* @get_if_list() #2

declare void @clear_rt_names() #2

declare i8* @inet_sockaddrtos(%struct.sockaddr_storage*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_notify_script(%struct._notify_script**) #6 !dbg !3121 {
  %2 = alloca %struct._notify_script**, align 8
  store %struct._notify_script** %0, %struct._notify_script*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script*** %2, metadata !3125, metadata !643), !dbg !3126
  %3 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3127
  %4 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !3129
  %5 = icmp ne %struct._notify_script* %4, null, !dbg !3129
  br i1 %5, label %7, label %6, !dbg !3130

; <label>:6:                                      ; preds = %1
  br label %33, !dbg !3131

; <label>:7:                                      ; preds = %1
  %8 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3132
  %9 = load %struct._notify_script*, %struct._notify_script** %8, align 8, !dbg !3135
  %10 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %9, i32 0, i32 0, !dbg !3136
  %11 = load i8**, i8*** %10, align 8, !dbg !3136
  %12 = icmp ne i8** %11, null, !dbg !3137
  br i1 %12, label %13, label %22, !dbg !3138

; <label>:13:                                     ; preds = %7
  %14 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3139
  %15 = load %struct._notify_script*, %struct._notify_script** %14, align 8, !dbg !3142
  %16 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %15, i32 0, i32 0, !dbg !3143
  %17 = load i8**, i8*** %16, align 8, !dbg !3143
  %18 = bitcast i8** %17 to i8*, !dbg !3144
  call void @free(i8* %18) #8, !dbg !3145
  %19 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3146
  %20 = load %struct._notify_script*, %struct._notify_script** %19, align 8, !dbg !3147
  %21 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %20, i32 0, i32 0, !dbg !3148
  store i8** null, i8*** %21, align 8, !dbg !3149
  br label %22, !dbg !3150

; <label>:22:                                     ; preds = %13, %7
  %23 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3151
  %24 = load %struct._notify_script*, %struct._notify_script** %23, align 8, !dbg !3154
  %25 = icmp ne %struct._notify_script* %24, null, !dbg !3154
  br i1 %25, label %26, label %31, !dbg !3155

; <label>:26:                                     ; preds = %22
  %27 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3156
  %28 = load %struct._notify_script*, %struct._notify_script** %27, align 8, !dbg !3159
  %29 = bitcast %struct._notify_script* %28 to i8*, !dbg !3159
  call void @free(i8* %29) #8, !dbg !3160
  %30 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3161
  store %struct._notify_script* null, %struct._notify_script** %30, align 8, !dbg !3162
  br label %31, !dbg !3163

; <label>:31:                                     ; preds = %26, %22
  %32 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !3164
  store %struct._notify_script* null, %struct._notify_script** %32, align 8, !dbg !3165
  br label %33, !dbg !3166

; <label>:33:                                     ; preds = %31, %6
  ret void, !dbg !3167
}

; Function Attrs: nounwind uwtable
define internal i8* @get_state_str(i32) #0 !dbg !3169 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3172, metadata !643), !dbg !3173
  %4 = load i32, i32* %3, align 4, !dbg !3174
  %5 = icmp eq i32 %4, 0, !dbg !3176
  br i1 %5, label %6, label %7, !dbg !3177

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8** %2, align 8, !dbg !3178
  br label %24, !dbg !3178

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !3180
  %9 = icmp eq i32 %8, 1, !dbg !3182
  br i1 %9, label %10, label %11, !dbg !3183

; <label>:10:                                     ; preds = %7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8** %2, align 8, !dbg !3184
  br label %24, !dbg !3184

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !3186
  %13 = icmp eq i32 %12, 2, !dbg !3188
  br i1 %13, label %14, label %15, !dbg !3189

; <label>:14:                                     ; preds = %11
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8** %2, align 8, !dbg !3190
  br label %24, !dbg !3190

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !3192
  %17 = icmp eq i32 %16, 3, !dbg !3194
  br i1 %17, label %18, label %19, !dbg !3195

; <label>:18:                                     ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8** %2, align 8, !dbg !3196
  br label %24, !dbg !3196

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %3, align 4, !dbg !3198
  %21 = icmp eq i32 %20, 99, !dbg !3200
  br i1 %21, label %22, label %23, !dbg !3201

; <label>:22:                                     ; preds = %19
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8** %2, align 8, !dbg !3202
  br label %24, !dbg !3202

; <label>:23:                                     ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8** %2, align 8, !dbg !3204
  br label %24, !dbg !3204

; <label>:24:                                     ; preds = %23, %22, %18, %14, %10, %6
  %25 = load i8*, i8** %2, align 8, !dbg !3205
  ret i8* %25, !dbg !3205
}

; Function Attrs: nounwind
declare i8* @ctime_r(i64*, i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #6 !dbg !3206 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3212, metadata !643), !dbg !3213
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3214, metadata !643), !dbg !3215
  %5 = load i32, i32* %3, align 4, !dbg !3216
  %6 = zext i32 %5 to i64, !dbg !3217
  %7 = udiv i64 %6, 64, !dbg !3218
  %8 = load i64*, i64** %4, align 8, !dbg !3219
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !3219
  %10 = load i64, i64* %9, align 8, !dbg !3219
  %11 = load i32, i32* %3, align 4, !dbg !3220
  %12 = zext i32 %11 to i64, !dbg !3221
  %13 = urem i64 %12, 64, !dbg !3222
  %14 = shl i64 1, %13, !dbg !3223
  %15 = and i64 %10, %14, !dbg !3224
  %16 = icmp ne i64 %15, 0, !dbg !3225
  %17 = xor i1 %16, true, !dbg !3225
  %18 = xor i1 %17, true, !dbg !3226
  ret i1 %18, !dbg !3227
}

; Function Attrs: nounwind uwtable
define internal void @dump_notify_script(%struct._IO_FILE*, %struct._notify_script*, i8*) #0 !dbg !3228 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._notify_script*, align 8
  %6 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !3231, metadata !643), !dbg !3232
  store %struct._notify_script* %1, %struct._notify_script** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %5, metadata !3233, metadata !643), !dbg !3234
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3235, metadata !643), !dbg !3236
  %7 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !3237
  %8 = icmp ne %struct._notify_script* %7, null, !dbg !3237
  br i1 %8, label %10, label %9, !dbg !3239

; <label>:9:                                      ; preds = %3
  br label %21, !dbg !3240

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3241
  %12 = load i8*, i8** %6, align 8, !dbg !3242
  %13 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !3243
  %14 = call i8* @cmd_str(%struct._notify_script* %13), !dbg !3244
  %15 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !3245
  %16 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %15, i32 0, i32 3, !dbg !3246
  %17 = load i32, i32* %16, align 8, !dbg !3246
  %18 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !3247
  %19 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %18, i32 0, i32 4, !dbg !3248
  %20 = load i32, i32* %19, align 4, !dbg !3248
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.93, i32 0, i32 0), i8* %12, i8* %14, i32 %17, i32 %20), !dbg !3249
  br label %21, !dbg !3250

; <label>:21:                                     ; preds = %10, %9
  ret void, !dbg !3251
}

declare i8* @cmd_str(%struct._notify_script*) #2

declare void @log_message(i32, i8*, ...) #2

declare void @free_strvec(%struct._vector*) #2

declare void @thread_cancel(%struct._thread*) #2

declare i32 @close(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!635, !636}
!llvm.ident = !{!637}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !78, globals: !628)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_data.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32, !44, !60, !67, !72}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !4, line: 173, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!7 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!8 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!9 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!10 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 41, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!14 = !DIEnumerator(name: "THREAD_READ", value: 0)
!15 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!16 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!17 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!18 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!19 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!20 = !DIEnumerator(name: "THREAD_READY", value: 6)
!21 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!22 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!23 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!24 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!25 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!26 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!27 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!28 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!29 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!30 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!31 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 119, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !DIEnumerator(name: "TRACK_VRRP", value: 1)
!36 = !DIEnumerator(name: "TRACK_IF", value: 2)
!37 = !DIEnumerator(name: "TRACK_SG", value: 4)
!38 = !DIEnumerator(name: "TRACK_ADDR", value: 4)
!39 = !DIEnumerator(name: "TRACK_ROUTE", value: 8)
!40 = !DIEnumerator(name: "TRACK_RULE", value: 16)
!41 = !DIEnumerator(name: "TRACK_SADDR", value: 32)
!42 = !DIEnumerator(name: "TRACK_SROUTE", value: 64)
!43 = !DIEnumerator(name: "TRACK_SRULE", value: 128)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 44, size: 32, align: 32, elements: !46)
!45 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!47 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!48 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!49 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!50 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!51 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!52 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!53 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!54 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!55 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!56 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!57 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!58 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!59 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 45, size: 32, align: 32, elements: !62)
!61 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "SCRIPT_STATE_IDLE", value: 0)
!64 = !DIEnumerator(name: "SCRIPT_STATE_RUNNING", value: 1)
!65 = !DIEnumerator(name: "SCRIPT_STATE_REQUESTING_TERMINATION", value: 2)
!66 = !DIEnumerator(name: "SCRIPT_STATE_FORCING_TERMINATION", value: 3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 52, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "SCRIPT_INIT_STATE_DONE", value: 0)
!70 = !DIEnumerator(name: "SCRIPT_INIT_STATE_INIT", value: 1)
!71 = !DIEnumerator(name: "SCRIPT_INIT_STATE_FAILED", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vrrp_vmac_bits", file: !73, line: 40, size: 32, align: 32, elements: !74)
!73 = !DIFile(filename: "./../include/vrrp_vmac.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "VRRP_VMAC_BIT", value: 0)
!76 = !DIEnumerator(name: "VRRP_VMAC_UP_BIT", value: 1)
!77 = !DIEnumerator(name: "VRRP_VMAC_XMITBASE_BIT", value: 2)
!78 = !{!79, !80, !529, !95, !98, !228, !537, !539, !540, !581, !600, !611, !627}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracking_vrrp_t", file: !33, line: 136, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracking_vrrp", file: !33, line: 132, size: 192, align: 64, elements: !83)
!83 = !{!84, !86, !527}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !82, file: !33, line: 133, baseType: !85, size: 32, align: 32)
!85 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !82, file: !33, line: 134, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !89)
!89 = !{!90, !94, !97, !227, !249, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !357, !358, !359, !360, !361, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !519, !526}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !88, file: !4, line: 184, baseType: !91, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !92, line: 28, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !88, file: !4, line: 185, baseType: !95, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !88, file: !4, line: 186, baseType: !98, size: 64, align: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !101)
!101 = !{!102, !103, !114, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !221, !222, !223, !224, !225, !226}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !100, file: !4, line: 110, baseType: !95, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !100, file: !4, line: 111, baseType: !104, size: 64, align: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !106, line: 34, baseType: !107)
!106 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !106, line: 30, size: 128, align: 64, elements: !108)
!108 = !{!109, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !107, file: !106, line: 31, baseType: !110, size: 32, align: 32)
!110 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !107, file: !106, line: 32, baseType: !110, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !107, file: !106, line: 33, baseType: !113, size: 64, align: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !100, file: !4, line: 112, baseType: !115, size: 64, align: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !116, line: 31, baseType: !117)
!116 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !116, line: 39, size: 320, align: 64, elements: !119)
!119 = !{!120, !127, !128, !129, !133}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !118, file: !116, line: 40, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !116, line: 33, size: 192, align: 64, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !116, line: 34, baseType: !121, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !116, line: 35, baseType: !121, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !122, file: !116, line: 36, baseType: !79, size: 64, align: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !118, file: !116, line: 41, baseType: !121, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !118, file: !116, line: 42, baseType: !110, size: 32, align: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !118, file: !116, line: 43, baseType: !130, size: 64, align: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !79}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !118, file: !116, line: 44, baseType: !134, size: 64, align: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137, !79}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !139, line: 48, baseType: !140)
!139 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !141, line: 241, size: 1728, align: 64, elements: !142)
!141 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !163, !164, !165, !166, !170, !171, !173, !177, !180, !182, !183, !184, !185, !186, !190, !191}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !140, file: !141, line: 242, baseType: !85, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !140, file: !141, line: 247, baseType: !95, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !140, file: !141, line: 248, baseType: !95, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !140, file: !141, line: 249, baseType: !95, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !140, file: !141, line: 250, baseType: !95, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !140, file: !141, line: 251, baseType: !95, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !140, file: !141, line: 252, baseType: !95, size: 64, align: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !140, file: !141, line: 253, baseType: !95, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !140, file: !141, line: 254, baseType: !95, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !140, file: !141, line: 256, baseType: !95, size: 64, align: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !140, file: !141, line: 257, baseType: !95, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !140, file: !141, line: 258, baseType: !95, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !140, file: !141, line: 260, baseType: !156, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !141, line: 156, size: 192, align: 64, elements: !158)
!158 = !{!159, !160, !162}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !157, file: !141, line: 157, baseType: !156, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !157, file: !141, line: 158, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !157, file: !141, line: 162, baseType: !85, size: 32, align: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !140, file: !141, line: 262, baseType: !161, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !140, file: !141, line: 264, baseType: !85, size: 32, align: 32, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !140, file: !141, line: 268, baseType: !85, size: 32, align: 32, offset: 928)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !140, file: !141, line: 270, baseType: !167, size: 64, align: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !168, line: 131, baseType: !169)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!169 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !140, file: !141, line: 274, baseType: !93, size: 16, align: 16, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !140, file: !141, line: 275, baseType: !172, size: 8, align: 8, offset: 1040)
!172 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !140, file: !141, line: 276, baseType: !174, size: 8, align: 8, offset: 1048)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 8, align: 8, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 1)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !140, file: !141, line: 280, baseType: !178, size: 64, align: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !141, line: 150, baseType: null)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !140, file: !141, line: 289, baseType: !181, size: 64, align: 64, offset: 1152)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !168, line: 132, baseType: !169)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !140, file: !141, line: 297, baseType: !79, size: 64, align: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !140, file: !141, line: 298, baseType: !79, size: 64, align: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !140, file: !141, line: 299, baseType: !79, size: 64, align: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !140, file: !141, line: 300, baseType: !79, size: 64, align: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !140, file: !141, line: 302, baseType: !187, size: 64, align: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !188, line: 216, baseType: !189)
!188 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!189 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !140, file: !141, line: 303, baseType: !85, size: 32, align: 32, offset: 1536)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !140, file: !141, line: 305, baseType: !192, size: 160, align: 8, offset: 1568)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 160, align: 8, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 20)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !100, file: !4, line: 113, baseType: !110, size: 32, align: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !100, file: !4, line: 114, baseType: !110, size: 32, align: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !100, file: !4, line: 115, baseType: !85, size: 32, align: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !100, file: !4, line: 116, baseType: !199, size: 8, align: 8, offset: 288)
!199 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !100, file: !4, line: 119, baseType: !115, size: 64, align: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !100, file: !4, line: 120, baseType: !115, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !100, file: !4, line: 121, baseType: !115, size: 64, align: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !100, file: !4, line: 122, baseType: !115, size: 64, align: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !100, file: !4, line: 125, baseType: !199, size: 8, align: 8, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !100, file: !4, line: 126, baseType: !206, size: 64, align: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !61, line: 65, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !61, line: 59, size: 192, align: 64, elements: !209)
!209 = !{!210, !212, !213, !214, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !208, file: !61, line: 60, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !208, file: !61, line: 61, baseType: !85, size: 32, align: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !61, line: 62, baseType: !85, size: 32, align: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !208, file: !61, line: 63, baseType: !215, size: 32, align: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !216, line: 240, baseType: !217)
!216 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !168, line: 125, baseType: !110)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !208, file: !61, line: 64, baseType: !219, size: 32, align: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !216, line: 235, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !168, line: 126, baseType: !110)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !100, file: !4, line: 127, baseType: !206, size: 64, align: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !100, file: !4, line: 128, baseType: !206, size: 64, align: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !100, file: !4, line: 129, baseType: !206, size: 64, align: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !100, file: !4, line: 130, baseType: !206, size: 64, align: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !100, file: !4, line: 131, baseType: !85, size: 32, align: 32, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !100, file: !4, line: 132, baseType: !85, size: 32, align: 32, offset: 992)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !88, file: !4, line: 187, baseType: !228, size: 64, align: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !231)
!231 = !{!232, !235, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !230, file: !4, line: 137, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !234, line: 55, baseType: !189)
!234 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!235 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !230, file: !4, line: 138, baseType: !236, size: 32, align: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !234, line: 51, baseType: !110)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !230, file: !4, line: 140, baseType: !236, size: 32, align: 32, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !230, file: !4, line: 141, baseType: !236, size: 32, align: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !230, file: !4, line: 143, baseType: !233, size: 64, align: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !230, file: !4, line: 144, baseType: !233, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !230, file: !4, line: 145, baseType: !233, size: 64, align: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !230, file: !4, line: 146, baseType: !233, size: 64, align: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !230, file: !4, line: 147, baseType: !233, size: 64, align: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !230, file: !4, line: 149, baseType: !236, size: 32, align: 32, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !230, file: !4, line: 151, baseType: !236, size: 32, align: 32, offset: 544)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !230, file: !4, line: 152, baseType: !236, size: 32, align: 32, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !230, file: !4, line: 155, baseType: !233, size: 64, align: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !230, file: !4, line: 156, baseType: !233, size: 64, align: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !88, file: !4, line: 188, baseType: !250, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !252, line: 111, baseType: !253)
!252 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !252, line: 76, size: 1792, align: 64, elements: !254)
!254 = !{!255, !259, !261, !267, !286, !287, !288, !289, !290, !297, !298, !299, !300, !301, !302, !304, !305, !306, !307, !328, !329, !330, !331, !332, !333, !334, !335}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !253, file: !252, line: 77, baseType: !256, size: 128, align: 8)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, align: 8, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !253, file: !252, line: 78, baseType: !260, size: 32, align: 32, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !252, line: 62, baseType: !236)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !253, file: !252, line: 79, baseType: !262, size: 32, align: 32, offset: 160)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !263, line: 31, size: 32, align: 32, elements: !264)
!263 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !262, file: !263, line: 33, baseType: !266, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !263, line: 30, baseType: !236)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !253, file: !252, line: 80, baseType: !268, size: 128, align: 32, offset: 192)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !263, line: 211, size: 128, align: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !268, file: !263, line: 220, baseType: !271, size: 128, align: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !263, line: 213, size: 128, align: 32, elements: !272)
!272 = !{!273, !277, !282}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !271, file: !263, line: 215, baseType: !274, size: 128, align: 8)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 128, align: 8, elements: !257)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !234, line: 48, baseType: !276)
!276 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !271, file: !263, line: 217, baseType: !278, size: 128, align: 16)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, align: 16, elements: !280)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !234, line: 49, baseType: !93)
!280 = !{!281}
!281 = !DISubrange(count: 8)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !271, file: !263, line: 218, baseType: !283, size: 128, align: 32)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 128, align: 32, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 4)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !253, file: !252, line: 81, baseType: !110, size: 32, align: 32, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !253, file: !252, line: 82, baseType: !199, size: 8, align: 8, offset: 352)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !253, file: !252, line: 83, baseType: !236, size: 32, align: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !253, file: !252, line: 84, baseType: !93, size: 16, align: 16, offset: 416)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !253, file: !252, line: 85, baseType: !291, size: 256, align: 8, offset: 432)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, align: 8, elements: !295)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !293, line: 33, baseType: !294)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !168, line: 30, baseType: !276)
!295 = !{!296}
!296 = !DISubrange(count: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !253, file: !252, line: 86, baseType: !291, size: 256, align: 8, offset: 688)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !253, file: !252, line: 87, baseType: !187, size: 64, align: 64, offset: 960)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !253, file: !252, line: 88, baseType: !85, size: 32, align: 32, offset: 1024)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !253, file: !252, line: 90, baseType: !199, size: 8, align: 8, offset: 1056)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !253, file: !252, line: 91, baseType: !260, size: 32, align: 32, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !253, file: !252, line: 92, baseType: !303, size: 64, align: 64, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !253, file: !252, line: 94, baseType: !260, size: 32, align: 32, offset: 1216)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !253, file: !252, line: 96, baseType: !303, size: 64, align: 64, offset: 1280)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !253, file: !252, line: 97, baseType: !199, size: 8, align: 8, offset: 1344)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !253, file: !252, line: 100, baseType: !308, size: 64, align: 64, offset: 1408)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !252, line: 73, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !252, line: 65, size: 704, align: 64, elements: !311)
!311 = !{!312, !322, !323, !324, !325, !326, !327}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !310, file: !252, line: 66, baseType: !313, size: 128, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !314, line: 31, baseType: !315)
!314 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !316, line: 30, size: 128, align: 64, elements: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !315, file: !316, line: 32, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !168, line: 139, baseType: !169)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !315, file: !316, line: 33, baseType: !321, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !168, line: 141, baseType: !169)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !310, file: !252, line: 67, baseType: !199, size: 8, align: 8, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !310, file: !252, line: 68, baseType: !313, size: 128, align: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !310, file: !252, line: 69, baseType: !199, size: 8, align: 8, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !310, file: !252, line: 70, baseType: !313, size: 128, align: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !310, file: !252, line: 71, baseType: !313, size: 128, align: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !310, file: !252, line: 72, baseType: !85, size: 32, align: 32, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !253, file: !252, line: 101, baseType: !199, size: 8, align: 8, offset: 1472)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !253, file: !252, line: 102, baseType: !85, size: 32, align: 32, offset: 1504)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !253, file: !252, line: 103, baseType: !236, size: 32, align: 32, offset: 1536)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !253, file: !252, line: 104, baseType: !236, size: 32, align: 32, offset: 1568)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !253, file: !252, line: 105, baseType: !236, size: 32, align: 32, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !253, file: !252, line: 107, baseType: !110, size: 32, align: 32, offset: 1632)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !253, file: !252, line: 109, baseType: !199, size: 8, align: 8, offset: 1664)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !253, file: !252, line: 110, baseType: !115, size: 64, align: 64, offset: 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !88, file: !4, line: 189, baseType: !199, size: 8, align: 8, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !88, file: !4, line: 190, baseType: !199, size: 8, align: 8, offset: 328)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !88, file: !4, line: 191, baseType: !199, size: 8, align: 8, offset: 336)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !88, file: !4, line: 193, baseType: !110, size: 32, align: 32, offset: 352)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !88, file: !4, line: 195, baseType: !189, size: 64, align: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !88, file: !4, line: 196, baseType: !256, size: 128, align: 8, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !88, file: !4, line: 198, baseType: !115, size: 64, align: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !88, file: !4, line: 199, baseType: !115, size: 64, align: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !88, file: !4, line: 200, baseType: !115, size: 64, align: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !88, file: !4, line: 204, baseType: !110, size: 32, align: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !88, file: !4, line: 205, baseType: !110, size: 32, align: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !88, file: !4, line: 206, baseType: !348, size: 1024, align: 64, offset: 832)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !349, line: 166, size: 1024, align: 64, elements: !350)
!349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!350 = !{!351, !352, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !348, file: !349, line: 168, baseType: !91, size: 16, align: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !348, file: !349, line: 169, baseType: !353, size: 944, align: 8, offset: 16)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 944, align: 8, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 118)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !348, file: !349, line: 170, baseType: !189, size: 64, align: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !88, file: !4, line: 207, baseType: !199, size: 8, align: 8, offset: 1856)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !88, file: !4, line: 208, baseType: !199, size: 8, align: 8, offset: 1864)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !88, file: !4, line: 209, baseType: !348, size: 1024, align: 64, offset: 1920)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !88, file: !4, line: 210, baseType: !115, size: 64, align: 64, offset: 2944)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !88, file: !4, line: 212, baseType: !362, size: 32, align: 32, offset: 3008)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !88, file: !4, line: 214, baseType: !348, size: 1024, align: 64, offset: 3072)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !88, file: !4, line: 215, baseType: !275, size: 8, align: 8, offset: 4096)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !88, file: !4, line: 216, baseType: !313, size: 128, align: 64, offset: 4160)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !88, file: !4, line: 217, baseType: !110, size: 32, align: 32, offset: 4288)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !88, file: !4, line: 218, baseType: !313, size: 128, align: 64, offset: 4352)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !88, file: !4, line: 219, baseType: !313, size: 128, align: 64, offset: 4480)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !88, file: !4, line: 220, baseType: !110, size: 32, align: 32, offset: 4608)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !88, file: !4, line: 221, baseType: !110, size: 32, align: 32, offset: 4640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !88, file: !4, line: 222, baseType: !110, size: 32, align: 32, offset: 4672)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !88, file: !4, line: 223, baseType: !199, size: 8, align: 8, offset: 4704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !88, file: !4, line: 224, baseType: !199, size: 8, align: 8, offset: 4712)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !88, file: !4, line: 225, baseType: !110, size: 32, align: 32, offset: 4736)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !88, file: !4, line: 226, baseType: !110, size: 32, align: 32, offset: 4768)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !88, file: !4, line: 227, baseType: !110, size: 32, align: 32, offset: 4800)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !88, file: !4, line: 228, baseType: !275, size: 8, align: 8, offset: 4832)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !88, file: !4, line: 229, baseType: !275, size: 8, align: 8, offset: 4840)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !88, file: !4, line: 230, baseType: !275, size: 8, align: 8, offset: 4848)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !88, file: !4, line: 231, baseType: !85, size: 32, align: 32, offset: 4864)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !88, file: !4, line: 233, baseType: !199, size: 8, align: 8, offset: 4896)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !88, file: !4, line: 234, baseType: !115, size: 64, align: 64, offset: 4928)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !88, file: !4, line: 235, baseType: !115, size: 64, align: 64, offset: 4992)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !88, file: !4, line: 239, baseType: !199, size: 8, align: 8, offset: 5056)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !88, file: !4, line: 240, baseType: !199, size: 8, align: 8, offset: 5064)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !88, file: !4, line: 241, baseType: !115, size: 64, align: 64, offset: 5120)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !88, file: !4, line: 242, baseType: !115, size: 64, align: 64, offset: 5184)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !88, file: !4, line: 243, baseType: !110, size: 32, align: 32, offset: 5248)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !88, file: !4, line: 244, baseType: !110, size: 32, align: 32, offset: 5280)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !88, file: !4, line: 249, baseType: !110, size: 32, align: 32, offset: 5312)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !88, file: !4, line: 252, baseType: !187, size: 64, align: 64, offset: 5376)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !88, file: !4, line: 254, baseType: !199, size: 8, align: 8, offset: 5440)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !88, file: !4, line: 255, baseType: !199, size: 8, align: 8, offset: 5448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !88, file: !4, line: 256, baseType: !189, size: 64, align: 64, offset: 5504)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !88, file: !4, line: 260, baseType: !313, size: 128, align: 64, offset: 5568)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !88, file: !4, line: 261, baseType: !85, size: 32, align: 32, offset: 5696)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !88, file: !4, line: 265, baseType: !85, size: 32, align: 32, offset: 5728)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !88, file: !4, line: 266, baseType: !199, size: 8, align: 8, offset: 5760)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !88, file: !4, line: 267, baseType: !400, size: 64, align: 64, offset: 5824)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !402, line: 50, baseType: !403)
!402 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !402, line: 40, size: 1344, align: 64, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !403, file: !402, line: 41, baseType: !91, size: 16, align: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !403, file: !402, line: 42, baseType: !348, size: 1024, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !403, file: !402, line: 43, baseType: !85, size: 32, align: 32, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !403, file: !402, line: 44, baseType: !260, size: 32, align: 32, offset: 1120)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !403, file: !402, line: 45, baseType: !199, size: 8, align: 8, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !403, file: !402, line: 46, baseType: !85, size: 32, align: 32, offset: 1184)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !403, file: !402, line: 47, baseType: !85, size: 32, align: 32, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !403, file: !402, line: 48, baseType: !85, size: 32, align: 32, offset: 1248)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !403, file: !402, line: 49, baseType: !414, size: 64, align: 64, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !417)
!417 = !{!418, !419, !421, !474, !479, !480, !481, !493, !495}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !416, file: !12, line: 79, baseType: !189, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !12, line: 80, baseType: !420, size: 32, align: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !416, file: !12, line: 81, baseType: !422, size: 64, align: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !424)
!424 = !{!425, !437, !438, !439, !440, !448, !449, !450, !451, !452, !455, !466, !467, !468, !469, !470, !471, !472, !473}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !423, file: !12, line: 113, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !427, line: 109, baseType: !428)
!427 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !427, line: 106, size: 64, align: 64, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !428, file: !427, line: 108, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !427, line: 97, size: 192, align: 64, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !432, file: !427, line: 99, baseType: !189, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !432, file: !427, line: 102, baseType: !431, size: 64, align: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !432, file: !427, line: 103, baseType: !431, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !423, file: !12, line: 114, baseType: !426, size: 64, align: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !423, file: !12, line: 115, baseType: !426, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !423, file: !12, line: 116, baseType: !426, size: 64, align: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !423, file: !12, line: 117, baseType: !441, size: 128, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !442, line: 62, baseType: !443)
!442 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !442, line: 60, size: 128, align: 64, elements: !444)
!444 = !{!445, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !442, line: 61, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !443, file: !442, line: 61, baseType: !446, size: 64, align: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !423, file: !12, line: 121, baseType: !441, size: 128, align: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !423, file: !12, line: 122, baseType: !441, size: 128, align: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !423, file: !12, line: 124, baseType: !115, size: 64, align: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !423, file: !12, line: 127, baseType: !426, size: 64, align: 64, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !423, file: !12, line: 128, baseType: !453, size: 64, align: 64, offset: 768)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !423, file: !12, line: 129, baseType: !456, size: 64, align: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !459)
!459 = !{!460, !461, !462, !463, !464}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !458, file: !12, line: 103, baseType: !414, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !458, file: !12, line: 104, baseType: !414, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !12, line: 105, baseType: !189, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !458, file: !12, line: 106, baseType: !85, size: 32, align: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !458, file: !12, line: 108, baseType: !465, size: 192, align: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !427, line: 104, baseType: !432)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !423, file: !12, line: 130, baseType: !110, size: 32, align: 32, offset: 896)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !423, file: !12, line: 131, baseType: !110, size: 32, align: 32, offset: 928)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !423, file: !12, line: 132, baseType: !85, size: 32, align: 32, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !423, file: !12, line: 135, baseType: !85, size: 32, align: 32, offset: 992)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !423, file: !12, line: 136, baseType: !414, size: 64, align: 64, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !423, file: !12, line: 146, baseType: !189, size: 64, align: 64, offset: 1088)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !423, file: !12, line: 147, baseType: !189, size: 64, align: 64, offset: 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !423, file: !12, line: 148, baseType: !199, size: 8, align: 8, offset: 1216)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !416, file: !12, line: 82, baseType: !475, size: 64, align: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!85, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !416, file: !12, line: 83, baseType: !79, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !416, file: !12, line: 84, baseType: !313, size: 128, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !416, file: !12, line: 92, baseType: !482, size: 64, align: 32, offset: 448)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !12, line: 85, size: 64, align: 32, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !482, file: !12, line: 86, baseType: !85, size: 32, align: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !482, file: !12, line: 87, baseType: !85, size: 32, align: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !482, file: !12, line: 91, baseType: !487, size: 64, align: 32)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !12, line: 88, size: 64, align: 32, elements: !488)
!488 = !{!489, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !487, file: !12, line: 89, baseType: !490, size: 32, align: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !216, line: 263, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !168, line: 133, baseType: !85)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !487, file: !12, line: 90, baseType: !85, size: 32, align: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !416, file: !12, line: 93, baseType: !494, size: 64, align: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !12, line: 95, baseType: !496, size: 192, align: 64, offset: 576)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !12, line: 95, size: 192, align: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !496, file: !12, line: 96, baseType: !465, size: 192, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !12, line: 97, baseType: !441, size: 128, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !88, file: !4, line: 269, baseType: !85, size: 32, align: 32, offset: 5888)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !88, file: !4, line: 271, baseType: !85, size: 32, align: 32, offset: 5920)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !88, file: !4, line: 274, baseType: !85, size: 32, align: 32, offset: 5952)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !88, file: !4, line: 275, baseType: !85, size: 32, align: 32, offset: 5984)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !88, file: !4, line: 276, baseType: !199, size: 8, align: 8, offset: 6016)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !88, file: !4, line: 277, baseType: !206, size: 64, align: 64, offset: 6080)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !88, file: !4, line: 278, baseType: !206, size: 64, align: 64, offset: 6144)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !88, file: !4, line: 279, baseType: !206, size: 64, align: 64, offset: 6208)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !88, file: !4, line: 280, baseType: !206, size: 64, align: 64, offset: 6272)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !88, file: !4, line: 281, baseType: !206, size: 64, align: 64, offset: 6336)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !88, file: !4, line: 282, baseType: !206, size: 64, align: 64, offset: 6400)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !88, file: !4, line: 285, baseType: !236, size: 32, align: 32, offset: 6464)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !88, file: !4, line: 286, baseType: !313, size: 128, align: 64, offset: 6528)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !88, file: !4, line: 289, baseType: !95, size: 64, align: 64, offset: 6656)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !88, file: !4, line: 290, baseType: !187, size: 64, align: 64, offset: 6720)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !88, file: !4, line: 291, baseType: !236, size: 32, align: 32, offset: 6784)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !88, file: !4, line: 295, baseType: !275, size: 8, align: 8, offset: 6816)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !88, file: !4, line: 296, baseType: !518, size: 64, align: 8, offset: 6824)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, align: 8, elements: !280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !88, file: !4, line: 299, baseType: !520, size: 64, align: 32, offset: 6912)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !521, line: 58, baseType: !522)
!521 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !521, line: 55, size: 64, align: 32, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !522, file: !521, line: 56, baseType: !199, size: 8, align: 8)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !522, file: !521, line: 57, baseType: !236, size: 32, align: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !88, file: !4, line: 309, baseType: !85, size: 32, align: 32, offset: 6976)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !33, line: 135, baseType: !528, size: 32, align: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "track_t", file: !33, line: 129, baseType: !32)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !531, line: 39, baseType: !532)
!531 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !531, line: 35, size: 192, align: 64, elements: !533)
!533 = !{!534, !535, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !532, file: !531, line: 36, baseType: !95, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !532, file: !531, line: 37, baseType: !104, size: 64, align: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !532, file: !531, line: 38, baseType: !115, size: 64, align: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !88)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !542, line: 73, baseType: !543)
!542 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !542, line: 41, size: 704, align: 64, elements: !544)
!544 = !{!545, !557, !566, !567, !568, !569, !570, !571, !576, !577, !578, !579, !580}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !543, file: !542, line: 42, baseType: !546, size: 64, align: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !547, line: 7, size: 64, align: 32, elements: !548)
!547 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!548 = !{!549, !552, !553, !554, !555}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !546, file: !547, line: 8, baseType: !550, size: 8, align: 8)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !551, line: 20, baseType: !276)
!551 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !546, file: !547, line: 9, baseType: !550, size: 8, align: 8, offset: 8)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !546, file: !547, line: 10, baseType: !550, size: 8, align: 8, offset: 16)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !546, file: !547, line: 11, baseType: !550, size: 8, align: 8, offset: 24)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !546, file: !547, line: 12, baseType: !556, size: 32, align: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !551, line: 26, baseType: !110)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !543, file: !542, line: 50, baseType: !558, size: 128, align: 32, offset: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !542, line: 44, size: 128, align: 32, elements: !559)
!559 = !{!560, !565}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !558, file: !542, line: 48, baseType: !561, size: 64, align: 32)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !542, line: 45, size: 64, align: 32, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !561, file: !542, line: 46, baseType: !262, size: 32, align: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !561, file: !542, line: 47, baseType: !262, size: 32, align: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !558, file: !542, line: 49, baseType: !268, size: 128, align: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !543, file: !542, line: 52, baseType: !250, size: 64, align: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !543, file: !542, line: 53, baseType: !95, size: 64, align: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !542, line: 55, baseType: !236, size: 32, align: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !543, file: !542, line: 56, baseType: !236, size: 32, align: 32, offset: 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !543, file: !542, line: 61, baseType: !199, size: 8, align: 8, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !543, file: !542, line: 65, baseType: !572, size: 128, align: 32, offset: 416)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !542, line: 62, size: 128, align: 32, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !572, file: !542, line: 63, baseType: !262, size: 32, align: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !572, file: !542, line: 64, baseType: !268, size: 128, align: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !543, file: !542, line: 66, baseType: !199, size: 8, align: 8, offset: 544)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !543, file: !542, line: 67, baseType: !529, size: 64, align: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !543, file: !542, line: 69, baseType: !199, size: 8, align: 8, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !543, file: !542, line: 70, baseType: !199, size: 8, align: 8, offset: 648)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !543, file: !542, line: 72, baseType: !199, size: 8, align: 8, offset: 656)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_script_t", file: !33, line: 74, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_script", file: !33, line: 60, size: 704, align: 64, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !597, !599}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sname", scope: !583, file: !33, line: 61, baseType: !95, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !583, file: !33, line: 62, baseType: !207, size: 192, align: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !583, file: !33, line: 63, baseType: !189, size: 64, align: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !583, file: !33, line: 64, baseType: !189, size: 64, align: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !583, file: !33, line: 65, baseType: !85, size: 32, align: 32, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !583, file: !33, line: 66, baseType: !85, size: 32, align: 32, offset: 416)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rise", scope: !583, file: !33, line: 67, baseType: !85, size: 32, align: 32, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fall", scope: !583, file: !33, line: 68, baseType: !85, size: 32, align: 32, offset: 480)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !583, file: !33, line: 69, baseType: !115, size: 64, align: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !583, file: !33, line: 70, baseType: !85, size: 32, align: 32, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !583, file: !33, line: 71, baseType: !596, size: 32, align: 32, offset: 608)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_state_t", file: !61, line: 50, baseType: !60)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "init_state", scope: !583, file: !33, line: 72, baseType: !598, size: 32, align: 32, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_init_state_t", file: !61, line: 56, baseType: !67)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "insecure", scope: !583, file: !33, line: 73, baseType: !199, size: 8, align: 8, offset: 672)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_tracked_file_t", file: !33, line: 91, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_file", file: !33, line: 83, size: 384, align: 64, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !602, file: !33, line: 84, baseType: !95, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !602, file: !33, line: 85, baseType: !95, size: 64, align: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "file_part", scope: !602, file: !33, line: 86, baseType: !95, size: 64, align: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !602, file: !33, line: 87, baseType: !85, size: 32, align: 32, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !602, file: !33, line: 88, baseType: !85, size: 32, align: 32, offset: 224)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !602, file: !33, line: 89, baseType: !115, size: 64, align: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !602, file: !33, line: 90, baseType: !85, size: 32, align: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_data_t", file: !613, line: 52, baseType: !614)
!613 = !DIFile(filename: "./../include/vrrp_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_data", file: !613, line: 35, size: 704, align: 64, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "static_track_groups", scope: !614, file: !613, line: 36, baseType: !115, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "static_addresses", scope: !614, file: !613, line: 37, baseType: !115, size: 64, align: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "static_routes", scope: !614, file: !613, line: 39, baseType: !115, size: 64, align: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "static_rules", scope: !614, file: !613, line: 40, baseType: !115, size: 64, align: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_sync_group", scope: !614, file: !613, line: 42, baseType: !115, size: 64, align: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !614, file: !613, line: 43, baseType: !115, size: 64, align: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_index", scope: !614, file: !613, line: 44, baseType: !115, size: 64, align: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_index_fd", scope: !614, file: !613, line: 45, baseType: !115, size: 64, align: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_socket_pool", scope: !614, file: !613, line: 46, baseType: !115, size: 64, align: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_script", scope: !614, file: !613, line: 47, baseType: !115, size: 64, align: 64, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_track_files", scope: !614, file: !613, line: 48, baseType: !115, size: 64, align: 64, offset: 640)
!627 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!628 = !{!629, !631, !632, !633, !634}
!629 = distinct !DIGlobalVariable(name: "vrrp_data", scope: !0, file: !630, line: 54, type: !611, isLocal: false, isDefinition: true, variable: %struct._vrrp_data** @vrrp_data)
!630 = !DIFile(filename: "vrrp_data.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!631 = distinct !DIGlobalVariable(name: "old_vrrp_data", scope: !0, file: !630, line: 55, type: !611, isLocal: false, isDefinition: true, variable: %struct._vrrp_data** @old_vrrp_data)
!632 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !252, line: 150, type: !115, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!633 = distinct !DIGlobalVariable(name: "vrrp_buffer", scope: !0, file: !630, line: 56, type: !95, isLocal: false, isDefinition: true, variable: i8** @vrrp_buffer)
!634 = distinct !DIGlobalVariable(name: "vrrp_buffer_len", scope: !0, file: !630, line: 57, type: !187, isLocal: false, isDefinition: true, variable: i64* @vrrp_buffer_len)
!635 = !{i32 2, !"Dwarf Version", i32 4}
!636 = !{i32 2, !"Debug Info Version", i32 3}
!637 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!638 = distinct !DISubprogram(name: "alloc_saddress", scope: !630, file: !630, line: 72, type: !639, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !104}
!641 = !{}
!642 = !DILocalVariable(name: "strvec", arg: 1, scope: !638, file: !630, line: 72, type: !104)
!643 = !DIExpression()
!644 = !DILocation(line: 72, column: 26, scope: !638)
!645 = !DILocation(line: 74, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !638, file: !630, line: 74, column: 6)
!647 = !DILocation(line: 74, column: 20, scope: !646)
!648 = !DILocation(line: 74, column: 38, scope: !646)
!649 = !DILocation(line: 74, column: 6, scope: !638)
!650 = !DILocation(line: 75, column: 33, scope: !646)
!651 = !DILocation(line: 75, column: 3, scope: !646)
!652 = !DILocation(line: 75, column: 14, scope: !646)
!653 = !DILocation(line: 75, column: 31, scope: !646)
!654 = !DILocation(line: 76, column: 18, scope: !638)
!655 = !DILocation(line: 76, column: 29, scope: !638)
!656 = !DILocation(line: 76, column: 47, scope: !638)
!657 = !DILocation(line: 76, column: 2, scope: !638)
!658 = !DILocation(line: 77, column: 1, scope: !638)
!659 = distinct !DISubprogram(name: "alloc_sroute", scope: !630, file: !630, line: 82, type: !639, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!660 = !DILocalVariable(name: "strvec", arg: 1, scope: !659, file: !630, line: 82, type: !104)
!661 = !DILocation(line: 82, column: 24, scope: !659)
!662 = !DILocation(line: 84, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !630, line: 84, column: 6)
!664 = !DILocation(line: 84, column: 20, scope: !663)
!665 = !DILocation(line: 84, column: 35, scope: !663)
!666 = !DILocation(line: 84, column: 6, scope: !659)
!667 = !DILocation(line: 85, column: 30, scope: !663)
!668 = !DILocation(line: 85, column: 3, scope: !663)
!669 = !DILocation(line: 85, column: 14, scope: !663)
!670 = !DILocation(line: 85, column: 28, scope: !663)
!671 = !DILocation(line: 86, column: 14, scope: !659)
!672 = !DILocation(line: 86, column: 25, scope: !659)
!673 = !DILocation(line: 86, column: 40, scope: !659)
!674 = !DILocation(line: 86, column: 2, scope: !659)
!675 = !DILocation(line: 87, column: 1, scope: !659)
!676 = distinct !DISubprogram(name: "alloc_srule", scope: !630, file: !630, line: 91, type: !639, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!677 = !DILocalVariable(name: "strvec", arg: 1, scope: !676, file: !630, line: 91, type: !104)
!678 = !DILocation(line: 91, column: 23, scope: !676)
!679 = !DILocation(line: 93, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !630, line: 93, column: 6)
!681 = !DILocation(line: 93, column: 20, scope: !680)
!682 = !DILocation(line: 93, column: 34, scope: !680)
!683 = !DILocation(line: 93, column: 6, scope: !676)
!684 = !DILocation(line: 94, column: 29, scope: !680)
!685 = !DILocation(line: 94, column: 3, scope: !680)
!686 = !DILocation(line: 94, column: 14, scope: !680)
!687 = !DILocation(line: 94, column: 27, scope: !680)
!688 = !DILocation(line: 95, column: 13, scope: !676)
!689 = !DILocation(line: 95, column: 24, scope: !676)
!690 = !DILocation(line: 95, column: 38, scope: !676)
!691 = !DILocation(line: 95, column: 2, scope: !676)
!692 = !DILocation(line: 96, column: 1, scope: !676)
!693 = distinct !DISubprogram(name: "dump_tracking_vrrp", scope: !630, file: !630, line: 166, type: !135, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!694 = !DILocalVariable(name: "fp", arg: 1, scope: !693, file: !630, line: 166, type: !137)
!695 = !DILocation(line: 166, column: 26, scope: !693)
!696 = !DILocalVariable(name: "data", arg: 2, scope: !693, file: !630, line: 166, type: !79)
!697 = !DILocation(line: 166, column: 36, scope: !693)
!698 = !DILocalVariable(name: "tvp", scope: !693, file: !630, line: 168, type: !80)
!699 = !DILocation(line: 168, column: 19, scope: !693)
!700 = !DILocation(line: 168, column: 44, scope: !693)
!701 = !DILocation(line: 168, column: 25, scope: !693)
!702 = !DILocalVariable(name: "vrrp", scope: !693, file: !630, line: 169, type: !537)
!703 = !DILocation(line: 169, column: 10, scope: !693)
!704 = !DILocation(line: 169, column: 17, scope: !693)
!705 = !DILocation(line: 169, column: 22, scope: !693)
!706 = !DILocation(line: 171, column: 13, scope: !693)
!707 = !DILocation(line: 171, column: 39, scope: !693)
!708 = !DILocation(line: 171, column: 45, scope: !693)
!709 = !DILocation(line: 171, column: 52, scope: !693)
!710 = !DILocation(line: 171, column: 57, scope: !693)
!711 = !DILocation(line: 171, column: 2, scope: !693)
!712 = !DILocation(line: 172, column: 1, scope: !693)
!713 = distinct !DISubprogram(name: "alloc_static_track_group", scope: !630, file: !630, line: 518, type: !714, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !95}
!716 = !DILocalVariable(name: "gname", arg: 1, scope: !713, file: !630, line: 518, type: !95)
!717 = !DILocation(line: 518, column: 32, scope: !713)
!718 = !DILocalVariable(name: "size", scope: !713, file: !630, line: 520, type: !187)
!719 = !DILocation(line: 520, column: 9, scope: !713)
!720 = !DILocation(line: 520, column: 23, scope: !713)
!721 = !DILocation(line: 520, column: 16, scope: !713)
!722 = !DILocalVariable(name: "new", scope: !713, file: !630, line: 521, type: !529)
!723 = !DILocation(line: 521, column: 24, scope: !713)
!724 = !DILocation(line: 523, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !713, file: !630, line: 523, column: 6)
!726 = !DILocation(line: 523, column: 20, scope: !725)
!727 = !DILocation(line: 523, column: 41, scope: !725)
!728 = !DILocation(line: 523, column: 6, scope: !713)
!729 = !DILocation(line: 524, column: 36, scope: !725)
!730 = !DILocation(line: 524, column: 3, scope: !725)
!731 = !DILocation(line: 524, column: 14, scope: !725)
!732 = !DILocation(line: 524, column: 34, scope: !725)
!733 = !DILocation(line: 527, column: 34, scope: !713)
!734 = !DILocation(line: 527, column: 8, scope: !713)
!735 = !DILocation(line: 527, column: 6, scope: !713)
!736 = !DILocation(line: 528, column: 32, scope: !713)
!737 = !DILocation(line: 528, column: 37, scope: !713)
!738 = !DILocation(line: 528, column: 25, scope: !713)
!739 = !DILocation(line: 528, column: 2, scope: !713)
!740 = !DILocation(line: 528, column: 7, scope: !713)
!741 = !DILocation(line: 528, column: 13, scope: !713)
!742 = !DILocation(line: 529, column: 9, scope: !713)
!743 = !DILocation(line: 529, column: 14, scope: !713)
!744 = !DILocation(line: 529, column: 21, scope: !713)
!745 = !DILocation(line: 529, column: 28, scope: !713)
!746 = !DILocation(line: 529, column: 2, scope: !713)
!747 = !DILocation(line: 531, column: 11, scope: !713)
!748 = !DILocation(line: 531, column: 22, scope: !713)
!749 = !DILocation(line: 531, column: 43, scope: !713)
!750 = !DILocation(line: 531, column: 2, scope: !713)
!751 = !DILocation(line: 532, column: 1, scope: !713)
!752 = distinct !DISubprogram(name: "alloc_vrrp_sync_group", scope: !630, file: !630, line: 535, type: !714, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!753 = !DILocalVariable(name: "gname", arg: 1, scope: !752, file: !630, line: 535, type: !95)
!754 = !DILocation(line: 535, column: 29, scope: !752)
!755 = !DILocalVariable(name: "size", scope: !752, file: !630, line: 537, type: !187)
!756 = !DILocation(line: 537, column: 9, scope: !752)
!757 = !DILocation(line: 537, column: 23, scope: !752)
!758 = !DILocation(line: 537, column: 16, scope: !752)
!759 = !DILocalVariable(name: "new", scope: !752, file: !630, line: 538, type: !98)
!760 = !DILocation(line: 538, column: 17, scope: !752)
!761 = !DILocation(line: 541, column: 27, scope: !752)
!762 = !DILocation(line: 541, column: 8, scope: !752)
!763 = !DILocation(line: 541, column: 6, scope: !752)
!764 = !DILocation(line: 542, column: 32, scope: !752)
!765 = !DILocation(line: 542, column: 37, scope: !752)
!766 = !DILocation(line: 542, column: 25, scope: !752)
!767 = !DILocation(line: 542, column: 2, scope: !752)
!768 = !DILocation(line: 542, column: 7, scope: !752)
!769 = !DILocation(line: 542, column: 13, scope: !752)
!770 = !DILocation(line: 543, column: 2, scope: !752)
!771 = !DILocation(line: 543, column: 7, scope: !752)
!772 = !DILocation(line: 543, column: 13, scope: !752)
!773 = !DILocation(line: 544, column: 2, scope: !752)
!774 = !DILocation(line: 544, column: 7, scope: !752)
!775 = !DILocation(line: 544, column: 24, scope: !752)
!776 = !DILocation(line: 545, column: 9, scope: !752)
!777 = !DILocation(line: 545, column: 14, scope: !752)
!778 = !DILocation(line: 545, column: 21, scope: !752)
!779 = !DILocation(line: 545, column: 28, scope: !752)
!780 = !DILocation(line: 545, column: 2, scope: !752)
!781 = !DILocation(line: 546, column: 2, scope: !752)
!782 = !DILocation(line: 546, column: 7, scope: !752)
!783 = !DILocation(line: 546, column: 30, scope: !752)
!784 = !DILocation(line: 547, column: 2, scope: !752)
!785 = !DILocation(line: 547, column: 7, scope: !752)
!786 = !DILocation(line: 547, column: 18, scope: !752)
!787 = !DILocation(line: 549, column: 11, scope: !752)
!788 = !DILocation(line: 549, column: 22, scope: !752)
!789 = !DILocation(line: 549, column: 39, scope: !752)
!790 = !DILocation(line: 549, column: 2, scope: !752)
!791 = !DILocation(line: 550, column: 1, scope: !752)
!792 = distinct !DISubprogram(name: "alloc_vrrp_stats", scope: !630, file: !630, line: 553, type: !793, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!793 = !DISubroutineType(types: !794)
!794 = !{!228}
!795 = !DILocalVariable(name: "new", scope: !792, file: !630, line: 555, type: !228)
!796 = !DILocation(line: 555, column: 14, scope: !792)
!797 = !DILocation(line: 556, column: 24, scope: !792)
!798 = !DILocation(line: 556, column: 8, scope: !792)
!799 = !DILocation(line: 556, column: 6, scope: !792)
!800 = !DILocation(line: 557, column: 2, scope: !792)
!801 = !DILocation(line: 557, column: 7, scope: !792)
!802 = !DILocation(line: 557, column: 21, scope: !792)
!803 = !DILocation(line: 558, column: 2, scope: !792)
!804 = !DILocation(line: 558, column: 7, scope: !792)
!805 = !DILocation(line: 558, column: 22, scope: !792)
!806 = !DILocation(line: 559, column: 2, scope: !792)
!807 = !DILocation(line: 559, column: 7, scope: !792)
!808 = !DILocation(line: 559, column: 24, scope: !792)
!809 = !DILocation(line: 561, column: 2, scope: !792)
!810 = !DILocation(line: 561, column: 7, scope: !792)
!811 = !DILocation(line: 561, column: 25, scope: !792)
!812 = !DILocation(line: 562, column: 2, scope: !792)
!813 = !DILocation(line: 562, column: 7, scope: !792)
!814 = !DILocation(line: 562, column: 20, scope: !792)
!815 = !DILocation(line: 564, column: 2, scope: !792)
!816 = !DILocation(line: 564, column: 7, scope: !792)
!817 = !DILocation(line: 564, column: 22, scope: !792)
!818 = !DILocation(line: 565, column: 2, scope: !792)
!819 = !DILocation(line: 565, column: 7, scope: !792)
!820 = !DILocation(line: 565, column: 19, scope: !792)
!821 = !DILocation(line: 566, column: 2, scope: !792)
!822 = !DILocation(line: 566, column: 7, scope: !792)
!823 = !DILocation(line: 566, column: 19, scope: !792)
!824 = !DILocation(line: 567, column: 2, scope: !792)
!825 = !DILocation(line: 567, column: 7, scope: !792)
!826 = !DILocation(line: 567, column: 27, scope: !792)
!827 = !DILocation(line: 568, column: 2, scope: !792)
!828 = !DILocation(line: 568, column: 7, scope: !792)
!829 = !DILocation(line: 568, column: 18, scope: !792)
!830 = !DILocation(line: 569, column: 2, scope: !792)
!831 = !DILocation(line: 569, column: 7, scope: !792)
!832 = !DILocation(line: 569, column: 21, scope: !792)
!833 = !DILocation(line: 570, column: 2, scope: !792)
!834 = !DILocation(line: 570, column: 7, scope: !792)
!835 = !DILocation(line: 570, column: 21, scope: !792)
!836 = !DILocation(line: 571, column: 2, scope: !792)
!837 = !DILocation(line: 571, column: 7, scope: !792)
!838 = !DILocation(line: 571, column: 25, scope: !792)
!839 = !DILocation(line: 572, column: 2, scope: !792)
!840 = !DILocation(line: 572, column: 7, scope: !792)
!841 = !DILocation(line: 572, column: 21, scope: !792)
!842 = !DILocation(line: 577, column: 9, scope: !792)
!843 = !DILocation(line: 577, column: 2, scope: !792)
!844 = distinct !DISubprogram(name: "alloc_vrrp", scope: !630, file: !630, line: 581, type: !714, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!845 = !DILocalVariable(name: "iname", arg: 1, scope: !844, file: !630, line: 581, type: !95)
!846 = !DILocation(line: 581, column: 18, scope: !844)
!847 = !DILocalVariable(name: "size", scope: !844, file: !630, line: 583, type: !187)
!848 = !DILocation(line: 583, column: 9, scope: !844)
!849 = !DILocation(line: 583, column: 23, scope: !844)
!850 = !DILocation(line: 583, column: 16, scope: !844)
!851 = !DILocalVariable(name: "new", scope: !844, file: !630, line: 584, type: !537)
!852 = !DILocation(line: 584, column: 10, scope: !844)
!853 = !DILocation(line: 587, column: 20, scope: !844)
!854 = !DILocation(line: 587, column: 8, scope: !844)
!855 = !DILocation(line: 587, column: 6, scope: !844)
!856 = !DILocation(line: 590, column: 2, scope: !844)
!857 = !DILocation(line: 590, column: 7, scope: !844)
!858 = !DILocation(line: 590, column: 14, scope: !844)
!859 = !DILocation(line: 591, column: 2, scope: !844)
!860 = !DILocation(line: 591, column: 7, scope: !844)
!861 = !DILocation(line: 591, column: 13, scope: !844)
!862 = !DILocation(line: 591, column: 23, scope: !844)
!863 = !DILocation(line: 592, column: 2, scope: !844)
!864 = !DILocation(line: 592, column: 7, scope: !844)
!865 = !DILocation(line: 592, column: 17, scope: !844)
!866 = !DILocation(line: 593, column: 2, scope: !844)
!867 = !DILocation(line: 593, column: 7, scope: !844)
!868 = !DILocation(line: 593, column: 24, scope: !844)
!869 = !DILocation(line: 594, column: 2, scope: !844)
!870 = !DILocation(line: 594, column: 7, scope: !844)
!871 = !DILocation(line: 594, column: 15, scope: !844)
!872 = !DILocation(line: 595, column: 2, scope: !844)
!873 = !DILocation(line: 595, column: 7, scope: !844)
!874 = !DILocation(line: 595, column: 23, scope: !844)
!875 = !DILocation(line: 596, column: 2, scope: !844)
!876 = !DILocation(line: 596, column: 7, scope: !844)
!877 = !DILocation(line: 596, column: 25, scope: !844)
!878 = !DILocation(line: 596, column: 25, scope: !879)
!879 = !DILexicalBlockFile(scope: !844, file: !630, discriminator: 1)
!880 = !DILocation(line: 597, column: 32, scope: !844)
!881 = !DILocation(line: 597, column: 37, scope: !844)
!882 = !DILocation(line: 597, column: 25, scope: !844)
!883 = !DILocation(line: 597, column: 2, scope: !844)
!884 = !DILocation(line: 597, column: 7, scope: !844)
!885 = !DILocation(line: 597, column: 13, scope: !844)
!886 = !DILocation(line: 598, column: 9, scope: !844)
!887 = !DILocation(line: 598, column: 14, scope: !844)
!888 = !DILocation(line: 598, column: 21, scope: !844)
!889 = !DILocation(line: 598, column: 28, scope: !844)
!890 = !DILocation(line: 598, column: 2, scope: !844)
!891 = !DILocation(line: 599, column: 15, scope: !844)
!892 = !DILocation(line: 599, column: 2, scope: !844)
!893 = !DILocation(line: 599, column: 7, scope: !844)
!894 = !DILocation(line: 599, column: 13, scope: !844)
!895 = !DILocation(line: 600, column: 2, scope: !844)
!896 = !DILocation(line: 600, column: 7, scope: !844)
!897 = !DILocation(line: 600, column: 14, scope: !844)
!898 = !DILocation(line: 601, column: 18, scope: !844)
!899 = !DILocation(line: 601, column: 31, scope: !844)
!900 = !DILocation(line: 601, column: 2, scope: !844)
!901 = !DILocation(line: 601, column: 7, scope: !844)
!902 = !DILocation(line: 601, column: 16, scope: !844)
!903 = !DILocation(line: 602, column: 2, scope: !844)
!904 = !DILocation(line: 602, column: 7, scope: !844)
!905 = !DILocation(line: 602, column: 22, scope: !844)
!906 = !DILocation(line: 602, column: 35, scope: !844)
!907 = !DILocation(line: 603, column: 26, scope: !844)
!908 = !DILocation(line: 603, column: 39, scope: !844)
!909 = !DILocation(line: 603, column: 2, scope: !844)
!910 = !DILocation(line: 603, column: 7, scope: !844)
!911 = !DILocation(line: 603, column: 24, scope: !844)
!912 = !DILocation(line: 604, column: 20, scope: !844)
!913 = !DILocation(line: 604, column: 33, scope: !844)
!914 = !DILocation(line: 604, column: 2, scope: !844)
!915 = !DILocation(line: 604, column: 7, scope: !844)
!916 = !DILocation(line: 604, column: 18, scope: !844)
!917 = !DILocation(line: 605, column: 2, scope: !844)
!918 = !DILocation(line: 605, column: 7, scope: !844)
!919 = !DILocation(line: 605, column: 29, scope: !844)
!920 = !DILocation(line: 606, column: 2, scope: !844)
!921 = !DILocation(line: 606, column: 7, scope: !844)
!922 = !DILocation(line: 606, column: 27, scope: !844)
!923 = !DILocation(line: 607, column: 2, scope: !844)
!924 = !DILocation(line: 607, column: 7, scope: !844)
!925 = !DILocation(line: 607, column: 28, scope: !844)
!926 = !DILocation(line: 608, column: 2, scope: !844)
!927 = !DILocation(line: 608, column: 7, scope: !844)
!928 = !DILocation(line: 608, column: 31, scope: !844)
!929 = !DILocation(line: 610, column: 2, scope: !844)
!930 = !DILocation(line: 610, column: 7, scope: !844)
!931 = !DILocation(line: 610, column: 29, scope: !844)
!932 = !DILocation(line: 612, column: 2, scope: !844)
!933 = !DILocation(line: 612, column: 7, scope: !844)
!934 = !DILocation(line: 612, column: 18, scope: !844)
!935 = !DILocation(line: 614, column: 29, scope: !844)
!936 = !DILocation(line: 614, column: 42, scope: !844)
!937 = !DILocation(line: 614, column: 2, scope: !844)
!938 = !DILocation(line: 614, column: 7, scope: !844)
!939 = !DILocation(line: 614, column: 27, scope: !844)
!940 = !DILocation(line: 615, column: 2, scope: !844)
!941 = !DILocation(line: 615, column: 7, scope: !844)
!942 = !DILocation(line: 615, column: 19, scope: !844)
!943 = !DILocation(line: 617, column: 11, scope: !844)
!944 = !DILocation(line: 617, column: 22, scope: !844)
!945 = !DILocation(line: 617, column: 28, scope: !844)
!946 = !DILocation(line: 617, column: 2, scope: !844)
!947 = !DILocation(line: 618, column: 1, scope: !844)
!948 = distinct !DISubprogram(name: "alloc_vrrp_unicast_peer", scope: !630, file: !630, line: 621, type: !639, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!949 = !DILocalVariable(name: "strvec", arg: 1, scope: !948, file: !630, line: 621, type: !104)
!950 = !DILocation(line: 621, column: 35, scope: !948)
!951 = !DILocalVariable(name: "vrrp", scope: !948, file: !630, line: 623, type: !537)
!952 = !DILocation(line: 623, column: 10, scope: !948)
!953 = !DILocation(line: 623, column: 19, scope: !948)
!954 = !DILocation(line: 623, column: 30, scope: !948)
!955 = !DILocation(line: 623, column: 37, scope: !948)
!956 = !DILocation(line: 623, column: 43, scope: !948)
!957 = !DILocation(line: 623, column: 17, scope: !948)
!958 = !DILocalVariable(name: "peer", scope: !948, file: !630, line: 624, type: !539)
!959 = !DILocation(line: 624, column: 27, scope: !948)
!960 = !DILocation(line: 626, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !948, file: !630, line: 626, column: 6)
!962 = !DILocation(line: 626, column: 15, scope: !961)
!963 = !DILocation(line: 626, column: 29, scope: !961)
!964 = !DILocation(line: 626, column: 6, scope: !948)
!965 = !DILocation(line: 627, column: 24, scope: !961)
!966 = !DILocation(line: 627, column: 3, scope: !961)
!967 = !DILocation(line: 627, column: 9, scope: !961)
!968 = !DILocation(line: 627, column: 22, scope: !961)
!969 = !DILocation(line: 630, column: 38, scope: !948)
!970 = !DILocation(line: 630, column: 9, scope: !948)
!971 = !DILocation(line: 630, column: 7, scope: !948)
!972 = !DILocation(line: 631, column: 35, scope: !973)
!973 = distinct !DILexicalBlock(scope: !948, file: !630, line: 631, column: 6)
!974 = !DILocation(line: 631, column: 23, scope: !973)
!975 = !DILocation(line: 631, column: 52, scope: !973)
!976 = !DILocation(line: 631, column: 6, scope: !977)
!977 = !DILexicalBlockFile(scope: !973, file: !630, discriminator: 1)
!978 = !DILocation(line: 631, column: 6, scope: !973)
!979 = !DILocation(line: 631, column: 6, scope: !948)
!980 = !DILocation(line: 634, column: 10, scope: !981)
!981 = distinct !DILexicalBlock(scope: !973, file: !630, line: 631, column: 59)
!982 = !DILocation(line: 634, column: 16, scope: !981)
!983 = !DILocation(line: 634, column: 43, scope: !981)
!984 = !DILocation(line: 634, column: 31, scope: !981)
!985 = !DILocation(line: 632, column: 3, scope: !981)
!986 = !DILocation(line: 635, column: 9, scope: !981)
!987 = !DILocation(line: 635, column: 4, scope: !981)
!988 = !DILocation(line: 635, column: 23, scope: !981)
!989 = !DILocation(line: 636, column: 3, scope: !981)
!990 = !DILocation(line: 639, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !948, file: !630, line: 639, column: 6)
!992 = !DILocation(line: 639, column: 13, scope: !991)
!993 = !DILocation(line: 639, column: 6, scope: !948)
!994 = !DILocation(line: 640, column: 18, scope: !991)
!995 = !DILocation(line: 640, column: 24, scope: !991)
!996 = !DILocation(line: 640, column: 3, scope: !991)
!997 = !DILocation(line: 640, column: 9, scope: !991)
!998 = !DILocation(line: 640, column: 16, scope: !991)
!999 = !DILocation(line: 641, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !630, line: 641, column: 11)
!1001 = !DILocation(line: 641, column: 17, scope: !1000)
!1002 = !DILocation(line: 641, column: 30, scope: !1000)
!1003 = !DILocation(line: 641, column: 36, scope: !1000)
!1004 = !DILocation(line: 641, column: 27, scope: !1000)
!1005 = !DILocation(line: 641, column: 11, scope: !991)
!1006 = !DILocation(line: 644, column: 10, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !630, line: 641, column: 44)
!1008 = !DILocation(line: 644, column: 16, scope: !1007)
!1009 = !DILocation(line: 644, column: 43, scope: !1007)
!1010 = !DILocation(line: 644, column: 31, scope: !1007)
!1011 = !DILocation(line: 642, column: 3, scope: !1007)
!1012 = !DILocation(line: 645, column: 9, scope: !1007)
!1013 = !DILocation(line: 645, column: 4, scope: !1007)
!1014 = !DILocation(line: 645, column: 23, scope: !1007)
!1015 = !DILocation(line: 646, column: 3, scope: !1007)
!1016 = !DILocation(line: 649, column: 11, scope: !948)
!1017 = !DILocation(line: 649, column: 17, scope: !948)
!1018 = !DILocation(line: 649, column: 31, scope: !948)
!1019 = !DILocation(line: 649, column: 2, scope: !948)
!1020 = !DILocation(line: 650, column: 1, scope: !948)
!1021 = !DILocation(line: 650, column: 1, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !948, file: !630, discriminator: 1)
!1023 = distinct !DISubprogram(name: "free_unicast_peer", scope: !630, file: !630, line: 297, type: !131, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1024 = !DILocalVariable(name: "data", arg: 1, scope: !1023, file: !630, line: 297, type: !79)
!1025 = !DILocation(line: 297, column: 25, scope: !1023)
!1026 = !DILocation(line: 299, column: 8, scope: !1023)
!1027 = !DILocation(line: 299, column: 3, scope: !1023)
!1028 = !DILocation(line: 299, column: 22, scope: !1023)
!1029 = !DILocation(line: 300, column: 1, scope: !1023)
!1030 = distinct !DISubprogram(name: "dump_unicast_peer", scope: !630, file: !630, line: 303, type: !135, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1031 = !DILocalVariable(name: "fp", arg: 1, scope: !1030, file: !630, line: 303, type: !137)
!1032 = !DILocation(line: 303, column: 25, scope: !1030)
!1033 = !DILocalVariable(name: "data", arg: 2, scope: !1030, file: !630, line: 303, type: !79)
!1034 = !DILocation(line: 303, column: 35, scope: !1030)
!1035 = !DILocalVariable(name: "peer", scope: !1030, file: !630, line: 305, type: !539)
!1036 = !DILocation(line: 305, column: 27, scope: !1030)
!1037 = !DILocation(line: 305, column: 34, scope: !1030)
!1038 = !DILocation(line: 307, column: 13, scope: !1030)
!1039 = !DILocation(line: 307, column: 45, scope: !1030)
!1040 = !DILocation(line: 307, column: 28, scope: !1030)
!1041 = !DILocation(line: 307, column: 2, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1030, file: !630, discriminator: 1)
!1043 = !DILocation(line: 308, column: 1, scope: !1030)
!1044 = distinct !DISubprogram(name: "alloc_vrrp_track_if", scope: !630, file: !630, line: 653, type: !639, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1045 = !DILocalVariable(name: "strvec", arg: 1, scope: !1044, file: !630, line: 653, type: !104)
!1046 = !DILocation(line: 653, column: 31, scope: !1044)
!1047 = !DILocalVariable(name: "vrrp", scope: !1044, file: !630, line: 655, type: !537)
!1048 = !DILocation(line: 655, column: 10, scope: !1044)
!1049 = !DILocation(line: 655, column: 19, scope: !1044)
!1050 = !DILocation(line: 655, column: 30, scope: !1044)
!1051 = !DILocation(line: 655, column: 37, scope: !1044)
!1052 = !DILocation(line: 655, column: 43, scope: !1044)
!1053 = !DILocation(line: 655, column: 17, scope: !1044)
!1054 = !DILocation(line: 657, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1044, file: !630, line: 657, column: 6)
!1056 = !DILocation(line: 657, column: 15, scope: !1055)
!1057 = !DILocation(line: 657, column: 26, scope: !1055)
!1058 = !DILocation(line: 657, column: 6, scope: !1044)
!1059 = !DILocation(line: 658, column: 21, scope: !1055)
!1060 = !DILocation(line: 658, column: 3, scope: !1055)
!1061 = !DILocation(line: 658, column: 9, scope: !1055)
!1062 = !DILocation(line: 658, column: 19, scope: !1055)
!1063 = !DILocation(line: 659, column: 17, scope: !1044)
!1064 = !DILocation(line: 659, column: 23, scope: !1044)
!1065 = !DILocation(line: 659, column: 2, scope: !1044)
!1066 = !DILocation(line: 660, column: 1, scope: !1044)
!1067 = distinct !DISubprogram(name: "alloc_vrrp_track_script", scope: !630, file: !630, line: 663, type: !639, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1068 = !DILocalVariable(name: "strvec", arg: 1, scope: !1067, file: !630, line: 663, type: !104)
!1069 = !DILocation(line: 663, column: 35, scope: !1067)
!1070 = !DILocalVariable(name: "vrrp", scope: !1067, file: !630, line: 665, type: !537)
!1071 = !DILocation(line: 665, column: 10, scope: !1067)
!1072 = !DILocation(line: 665, column: 19, scope: !1067)
!1073 = !DILocation(line: 665, column: 30, scope: !1067)
!1074 = !DILocation(line: 665, column: 37, scope: !1067)
!1075 = !DILocation(line: 665, column: 43, scope: !1067)
!1076 = !DILocation(line: 665, column: 17, scope: !1067)
!1077 = !DILocation(line: 667, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !630, line: 667, column: 6)
!1079 = !DILocation(line: 667, column: 15, scope: !1078)
!1080 = !DILocation(line: 667, column: 29, scope: !1078)
!1081 = !DILocation(line: 667, column: 6, scope: !1067)
!1082 = !DILocation(line: 668, column: 24, scope: !1078)
!1083 = !DILocation(line: 668, column: 3, scope: !1078)
!1084 = !DILocation(line: 668, column: 9, scope: !1078)
!1085 = !DILocation(line: 668, column: 22, scope: !1078)
!1086 = !DILocation(line: 669, column: 21, scope: !1067)
!1087 = !DILocation(line: 669, column: 27, scope: !1067)
!1088 = !DILocation(line: 669, column: 2, scope: !1067)
!1089 = !DILocation(line: 670, column: 1, scope: !1067)
!1090 = distinct !DISubprogram(name: "alloc_vrrp_track_file", scope: !630, file: !630, line: 673, type: !639, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1091 = !DILocalVariable(name: "strvec", arg: 1, scope: !1090, file: !630, line: 673, type: !104)
!1092 = !DILocation(line: 673, column: 33, scope: !1090)
!1093 = !DILocalVariable(name: "vrrp", scope: !1090, file: !630, line: 675, type: !537)
!1094 = !DILocation(line: 675, column: 10, scope: !1090)
!1095 = !DILocation(line: 675, column: 19, scope: !1090)
!1096 = !DILocation(line: 675, column: 30, scope: !1090)
!1097 = !DILocation(line: 675, column: 37, scope: !1090)
!1098 = !DILocation(line: 675, column: 43, scope: !1090)
!1099 = !DILocation(line: 675, column: 17, scope: !1090)
!1100 = !DILocation(line: 677, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1090, file: !630, line: 677, column: 6)
!1102 = !DILocation(line: 677, column: 15, scope: !1101)
!1103 = !DILocation(line: 677, column: 27, scope: !1101)
!1104 = !DILocation(line: 677, column: 6, scope: !1090)
!1105 = !DILocation(line: 678, column: 22, scope: !1101)
!1106 = !DILocation(line: 678, column: 3, scope: !1101)
!1107 = !DILocation(line: 678, column: 9, scope: !1101)
!1108 = !DILocation(line: 678, column: 20, scope: !1101)
!1109 = !DILocation(line: 679, column: 19, scope: !1090)
!1110 = !DILocation(line: 679, column: 25, scope: !1090)
!1111 = !DILocation(line: 679, column: 2, scope: !1090)
!1112 = !DILocation(line: 680, column: 1, scope: !1090)
!1113 = distinct !DISubprogram(name: "alloc_vrrp_group_track_if", scope: !630, file: !630, line: 695, type: !639, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1114 = !DILocalVariable(name: "strvec", arg: 1, scope: !1113, file: !630, line: 695, type: !104)
!1115 = !DILocation(line: 695, column: 37, scope: !1113)
!1116 = !DILocalVariable(name: "sgroup", scope: !1113, file: !630, line: 697, type: !98)
!1117 = !DILocation(line: 697, column: 17, scope: !1113)
!1118 = !DILocation(line: 697, column: 28, scope: !1113)
!1119 = !DILocation(line: 697, column: 39, scope: !1113)
!1120 = !DILocation(line: 697, column: 57, scope: !1113)
!1121 = !DILocation(line: 697, column: 63, scope: !1113)
!1122 = !DILocation(line: 697, column: 26, scope: !1113)
!1123 = !DILocation(line: 699, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1113, file: !630, line: 699, column: 6)
!1125 = !DILocation(line: 699, column: 17, scope: !1124)
!1126 = !DILocation(line: 699, column: 28, scope: !1124)
!1127 = !DILocation(line: 699, column: 6, scope: !1113)
!1128 = !DILocation(line: 700, column: 23, scope: !1124)
!1129 = !DILocation(line: 700, column: 3, scope: !1124)
!1130 = !DILocation(line: 700, column: 11, scope: !1124)
!1131 = !DILocation(line: 700, column: 21, scope: !1124)
!1132 = !DILocation(line: 701, column: 23, scope: !1113)
!1133 = !DILocation(line: 701, column: 31, scope: !1113)
!1134 = !DILocation(line: 701, column: 2, scope: !1113)
!1135 = !DILocation(line: 702, column: 1, scope: !1113)
!1136 = distinct !DISubprogram(name: "alloc_vrrp_group_track_script", scope: !630, file: !630, line: 705, type: !639, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1137 = !DILocalVariable(name: "strvec", arg: 1, scope: !1136, file: !630, line: 705, type: !104)
!1138 = !DILocation(line: 705, column: 41, scope: !1136)
!1139 = !DILocalVariable(name: "sgroup", scope: !1136, file: !630, line: 707, type: !98)
!1140 = !DILocation(line: 707, column: 17, scope: !1136)
!1141 = !DILocation(line: 707, column: 28, scope: !1136)
!1142 = !DILocation(line: 707, column: 39, scope: !1136)
!1143 = !DILocation(line: 707, column: 57, scope: !1136)
!1144 = !DILocation(line: 707, column: 63, scope: !1136)
!1145 = !DILocation(line: 707, column: 26, scope: !1136)
!1146 = !DILocation(line: 709, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1136, file: !630, line: 709, column: 6)
!1148 = !DILocation(line: 709, column: 17, scope: !1147)
!1149 = !DILocation(line: 709, column: 31, scope: !1147)
!1150 = !DILocation(line: 709, column: 6, scope: !1136)
!1151 = !DILocation(line: 710, column: 26, scope: !1147)
!1152 = !DILocation(line: 710, column: 3, scope: !1147)
!1153 = !DILocation(line: 710, column: 11, scope: !1147)
!1154 = !DILocation(line: 710, column: 24, scope: !1147)
!1155 = !DILocation(line: 711, column: 27, scope: !1136)
!1156 = !DILocation(line: 711, column: 35, scope: !1136)
!1157 = !DILocation(line: 711, column: 2, scope: !1136)
!1158 = !DILocation(line: 712, column: 1, scope: !1136)
!1159 = distinct !DISubprogram(name: "alloc_vrrp_group_track_file", scope: !630, file: !630, line: 715, type: !639, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1160 = !DILocalVariable(name: "strvec", arg: 1, scope: !1159, file: !630, line: 715, type: !104)
!1161 = !DILocation(line: 715, column: 39, scope: !1159)
!1162 = !DILocalVariable(name: "sgroup", scope: !1159, file: !630, line: 717, type: !98)
!1163 = !DILocation(line: 717, column: 17, scope: !1159)
!1164 = !DILocation(line: 717, column: 28, scope: !1159)
!1165 = !DILocation(line: 717, column: 39, scope: !1159)
!1166 = !DILocation(line: 717, column: 57, scope: !1159)
!1167 = !DILocation(line: 717, column: 63, scope: !1159)
!1168 = !DILocation(line: 717, column: 26, scope: !1159)
!1169 = !DILocation(line: 719, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !630, line: 719, column: 6)
!1171 = !DILocation(line: 719, column: 17, scope: !1170)
!1172 = !DILocation(line: 719, column: 29, scope: !1170)
!1173 = !DILocation(line: 719, column: 6, scope: !1159)
!1174 = !DILocation(line: 720, column: 24, scope: !1170)
!1175 = !DILocation(line: 720, column: 3, scope: !1170)
!1176 = !DILocation(line: 720, column: 11, scope: !1170)
!1177 = !DILocation(line: 720, column: 22, scope: !1170)
!1178 = !DILocation(line: 721, column: 25, scope: !1159)
!1179 = !DILocation(line: 721, column: 33, scope: !1159)
!1180 = !DILocation(line: 721, column: 2, scope: !1159)
!1181 = !DILocation(line: 722, column: 1, scope: !1159)
!1182 = distinct !DISubprogram(name: "alloc_vrrp_vip", scope: !630, file: !630, line: 737, type: !639, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1183 = !DILocalVariable(name: "strvec", arg: 1, scope: !1182, file: !630, line: 737, type: !104)
!1184 = !DILocation(line: 737, column: 26, scope: !1182)
!1185 = !DILocalVariable(name: "vrrp", scope: !1182, file: !630, line: 739, type: !537)
!1186 = !DILocation(line: 739, column: 10, scope: !1182)
!1187 = !DILocation(line: 739, column: 19, scope: !1182)
!1188 = !DILocation(line: 739, column: 30, scope: !1182)
!1189 = !DILocation(line: 739, column: 37, scope: !1182)
!1190 = !DILocation(line: 739, column: 43, scope: !1182)
!1191 = !DILocation(line: 739, column: 17, scope: !1182)
!1192 = !DILocalVariable(name: "list_end", scope: !1182, file: !630, line: 740, type: !79)
!1193 = !DILocation(line: 740, column: 8, scope: !1182)
!1194 = !DILocalVariable(name: "address_family", scope: !1182, file: !630, line: 741, type: !91)
!1195 = !DILocation(line: 741, column: 14, scope: !1182)
!1196 = !DILocation(line: 743, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1182, file: !630, line: 743, column: 6)
!1198 = !DILocation(line: 743, column: 15, scope: !1197)
!1199 = !DILocation(line: 743, column: 20, scope: !1197)
!1200 = !DILocation(line: 743, column: 6, scope: !1182)
!1201 = !DILocation(line: 744, column: 15, scope: !1197)
!1202 = !DILocation(line: 744, column: 3, scope: !1197)
!1203 = !DILocation(line: 744, column: 9, scope: !1197)
!1204 = !DILocation(line: 744, column: 13, scope: !1197)
!1205 = !DILocation(line: 745, column: 14, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1197, file: !630, line: 745, column: 11)
!1207 = !DILocation(line: 745, column: 20, scope: !1206)
!1208 = !DILocation(line: 745, column: 25, scope: !1206)
!1209 = !DILocation(line: 745, column: 11, scope: !1206)
!1210 = !DILocation(line: 745, column: 16, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1206, file: !630, discriminator: 1)
!1212 = !DILocation(line: 745, column: 22, scope: !1211)
!1213 = !DILocation(line: 745, column: 28, scope: !1211)
!1214 = !DILocation(line: 745, column: 33, scope: !1211)
!1215 = !DILocation(line: 745, column: 11, scope: !1211)
!1216 = !DILocation(line: 745, column: 15, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1206, file: !630, discriminator: 2)
!1218 = !DILocation(line: 745, column: 21, scope: !1217)
!1219 = !DILocation(line: 745, column: 27, scope: !1217)
!1220 = !DILocation(line: 745, column: 32, scope: !1217)
!1221 = !DILocation(line: 745, column: 11, scope: !1217)
!1222 = !DILocation(line: 746, column: 16, scope: !1206)
!1223 = !DILocation(line: 746, column: 22, scope: !1206)
!1224 = !DILocation(line: 746, column: 28, scope: !1206)
!1225 = !DILocation(line: 746, column: 34, scope: !1206)
!1226 = !DILocation(line: 746, column: 12, scope: !1206)
!1227 = !DILocation(line: 746, column: 3, scope: !1206)
!1228 = !DILocation(line: 748, column: 18, scope: !1182)
!1229 = !DILocation(line: 748, column: 24, scope: !1182)
!1230 = !DILocation(line: 748, column: 29, scope: !1182)
!1231 = !DILocation(line: 748, column: 37, scope: !1182)
!1232 = !DILocation(line: 748, column: 43, scope: !1182)
!1233 = !DILocation(line: 748, column: 2, scope: !1182)
!1234 = !DILocation(line: 750, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1182, file: !630, line: 750, column: 6)
!1236 = !DILocation(line: 750, column: 15, scope: !1235)
!1237 = !DILocation(line: 750, column: 20, scope: !1235)
!1238 = !DILocation(line: 750, column: 6, scope: !1235)
!1239 = !DILocation(line: 750, column: 11, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1235, file: !630, discriminator: 1)
!1241 = !DILocation(line: 750, column: 17, scope: !1240)
!1242 = !DILocation(line: 750, column: 23, scope: !1240)
!1243 = !DILocation(line: 750, column: 28, scope: !1240)
!1244 = !DILocation(line: 750, column: 6, scope: !1240)
!1245 = !DILocation(line: 750, column: 10, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1235, file: !630, discriminator: 2)
!1247 = !DILocation(line: 750, column: 16, scope: !1246)
!1248 = !DILocation(line: 750, column: 22, scope: !1246)
!1249 = !DILocation(line: 750, column: 27, scope: !1246)
!1250 = !DILocation(line: 750, column: 9, scope: !1246)
!1251 = !DILocation(line: 750, column: 14, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1235, file: !630, discriminator: 3)
!1253 = !DILocation(line: 750, column: 20, scope: !1252)
!1254 = !DILocation(line: 750, column: 26, scope: !1252)
!1255 = !DILocation(line: 750, column: 32, scope: !1252)
!1256 = !DILocation(line: 750, column: 41, scope: !1252)
!1257 = !DILocation(line: 750, column: 38, scope: !1252)
!1258 = !DILocation(line: 750, column: 6, scope: !1252)
!1259 = !DILocation(line: 751, column: 38, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1235, file: !630, line: 750, column: 51)
!1261 = !DILocation(line: 751, column: 44, scope: !1260)
!1262 = !DILocation(line: 751, column: 50, scope: !1260)
!1263 = !DILocation(line: 751, column: 56, scope: !1260)
!1264 = !DILocation(line: 751, column: 21, scope: !1260)
!1265 = !DILocation(line: 751, column: 64, scope: !1260)
!1266 = !DILocation(line: 751, column: 68, scope: !1260)
!1267 = !DILocation(line: 751, column: 20, scope: !1260)
!1268 = !DILocation(line: 751, column: 18, scope: !1260)
!1269 = !DILocation(line: 753, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1260, file: !630, line: 753, column: 7)
!1271 = !DILocation(line: 753, column: 13, scope: !1270)
!1272 = !DILocation(line: 753, column: 20, scope: !1270)
!1273 = !DILocation(line: 753, column: 7, scope: !1260)
!1274 = !DILocation(line: 754, column: 19, scope: !1270)
!1275 = !DILocation(line: 754, column: 4, scope: !1270)
!1276 = !DILocation(line: 754, column: 10, scope: !1270)
!1277 = !DILocation(line: 754, column: 17, scope: !1270)
!1278 = !DILocation(line: 755, column: 12, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1270, file: !630, line: 755, column: 12)
!1280 = !DILocation(line: 755, column: 30, scope: !1279)
!1281 = !DILocation(line: 755, column: 36, scope: !1279)
!1282 = !DILocation(line: 755, column: 27, scope: !1279)
!1283 = !DILocation(line: 755, column: 12, scope: !1270)
!1284 = !DILocation(line: 756, column: 111, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1279, file: !630, line: 755, column: 44)
!1286 = !DILocation(line: 756, column: 117, scope: !1285)
!1287 = !DILocation(line: 756, column: 144, scope: !1285)
!1288 = !DILocation(line: 756, column: 132, scope: !1285)
!1289 = !DILocation(line: 756, column: 4, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1285, file: !630, discriminator: 1)
!1291 = !DILocation(line: 757, column: 22, scope: !1285)
!1292 = !DILocation(line: 757, column: 28, scope: !1285)
!1293 = !DILocation(line: 757, column: 33, scope: !1285)
!1294 = !DILocation(line: 757, column: 39, scope: !1285)
!1295 = !DILocation(line: 757, column: 44, scope: !1285)
!1296 = !DILocation(line: 757, column: 4, scope: !1285)
!1297 = !DILocation(line: 758, column: 3, scope: !1285)
!1298 = !DILocation(line: 759, column: 2, scope: !1260)
!1299 = !DILocation(line: 760, column: 1, scope: !1182)
!1300 = distinct !DISubprogram(name: "alloc_vrrp_evip", scope: !630, file: !630, line: 763, type: !639, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1301 = !DILocalVariable(name: "strvec", arg: 1, scope: !1300, file: !630, line: 763, type: !104)
!1302 = !DILocation(line: 763, column: 27, scope: !1300)
!1303 = !DILocalVariable(name: "vrrp", scope: !1300, file: !630, line: 765, type: !537)
!1304 = !DILocation(line: 765, column: 10, scope: !1300)
!1305 = !DILocation(line: 765, column: 19, scope: !1300)
!1306 = !DILocation(line: 765, column: 30, scope: !1300)
!1307 = !DILocation(line: 765, column: 37, scope: !1300)
!1308 = !DILocation(line: 765, column: 43, scope: !1300)
!1309 = !DILocation(line: 765, column: 17, scope: !1300)
!1310 = !DILocation(line: 767, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !630, line: 767, column: 6)
!1312 = !DILocation(line: 767, column: 15, scope: !1311)
!1313 = !DILocation(line: 767, column: 21, scope: !1311)
!1314 = !DILocation(line: 767, column: 6, scope: !1300)
!1315 = !DILocation(line: 768, column: 16, scope: !1311)
!1316 = !DILocation(line: 768, column: 3, scope: !1311)
!1317 = !DILocation(line: 768, column: 9, scope: !1311)
!1318 = !DILocation(line: 768, column: 14, scope: !1311)
!1319 = !DILocation(line: 769, column: 18, scope: !1300)
!1320 = !DILocation(line: 769, column: 24, scope: !1300)
!1321 = !DILocation(line: 769, column: 30, scope: !1300)
!1322 = !DILocation(line: 769, column: 38, scope: !1300)
!1323 = !DILocation(line: 769, column: 44, scope: !1300)
!1324 = !DILocation(line: 769, column: 2, scope: !1300)
!1325 = !DILocation(line: 770, column: 1, scope: !1300)
!1326 = distinct !DISubprogram(name: "alloc_vrrp_vroute", scope: !630, file: !630, line: 774, type: !639, isLocal: false, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1327 = !DILocalVariable(name: "strvec", arg: 1, scope: !1326, file: !630, line: 774, type: !104)
!1328 = !DILocation(line: 774, column: 29, scope: !1326)
!1329 = !DILocalVariable(name: "vrrp", scope: !1326, file: !630, line: 776, type: !537)
!1330 = !DILocation(line: 776, column: 10, scope: !1326)
!1331 = !DILocation(line: 776, column: 19, scope: !1326)
!1332 = !DILocation(line: 776, column: 30, scope: !1326)
!1333 = !DILocation(line: 776, column: 37, scope: !1326)
!1334 = !DILocation(line: 776, column: 43, scope: !1326)
!1335 = !DILocation(line: 776, column: 17, scope: !1326)
!1336 = !DILocation(line: 778, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1326, file: !630, line: 778, column: 6)
!1338 = !DILocation(line: 778, column: 15, scope: !1337)
!1339 = !DILocation(line: 778, column: 24, scope: !1337)
!1340 = !DILocation(line: 778, column: 6, scope: !1326)
!1341 = !DILocation(line: 779, column: 19, scope: !1337)
!1342 = !DILocation(line: 779, column: 3, scope: !1337)
!1343 = !DILocation(line: 779, column: 9, scope: !1337)
!1344 = !DILocation(line: 779, column: 17, scope: !1337)
!1345 = !DILocation(line: 780, column: 14, scope: !1326)
!1346 = !DILocation(line: 780, column: 20, scope: !1326)
!1347 = !DILocation(line: 780, column: 29, scope: !1326)
!1348 = !DILocation(line: 780, column: 2, scope: !1326)
!1349 = !DILocation(line: 781, column: 1, scope: !1326)
!1350 = distinct !DISubprogram(name: "alloc_vrrp_vrule", scope: !630, file: !630, line: 784, type: !639, isLocal: false, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1351 = !DILocalVariable(name: "strvec", arg: 1, scope: !1350, file: !630, line: 784, type: !104)
!1352 = !DILocation(line: 784, column: 28, scope: !1350)
!1353 = !DILocalVariable(name: "vrrp", scope: !1350, file: !630, line: 786, type: !537)
!1354 = !DILocation(line: 786, column: 10, scope: !1350)
!1355 = !DILocation(line: 786, column: 19, scope: !1350)
!1356 = !DILocation(line: 786, column: 30, scope: !1350)
!1357 = !DILocation(line: 786, column: 37, scope: !1350)
!1358 = !DILocation(line: 786, column: 43, scope: !1350)
!1359 = !DILocation(line: 786, column: 17, scope: !1350)
!1360 = !DILocation(line: 788, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1350, file: !630, line: 788, column: 6)
!1362 = !DILocation(line: 788, column: 15, scope: !1361)
!1363 = !DILocation(line: 788, column: 23, scope: !1361)
!1364 = !DILocation(line: 788, column: 6, scope: !1350)
!1365 = !DILocation(line: 789, column: 18, scope: !1361)
!1366 = !DILocation(line: 789, column: 3, scope: !1361)
!1367 = !DILocation(line: 789, column: 9, scope: !1361)
!1368 = !DILocation(line: 789, column: 16, scope: !1361)
!1369 = !DILocation(line: 790, column: 13, scope: !1350)
!1370 = !DILocation(line: 790, column: 19, scope: !1350)
!1371 = !DILocation(line: 790, column: 27, scope: !1350)
!1372 = !DILocation(line: 790, column: 2, scope: !1350)
!1373 = !DILocation(line: 791, column: 1, scope: !1350)
!1374 = distinct !DISubprogram(name: "alloc_vrrp_script", scope: !630, file: !630, line: 795, type: !714, isLocal: false, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1375 = !DILocalVariable(name: "sname", arg: 1, scope: !1374, file: !630, line: 795, type: !95)
!1376 = !DILocation(line: 795, column: 25, scope: !1374)
!1377 = !DILocalVariable(name: "size", scope: !1374, file: !630, line: 797, type: !187)
!1378 = !DILocation(line: 797, column: 9, scope: !1374)
!1379 = !DILocation(line: 797, column: 23, scope: !1374)
!1380 = !DILocation(line: 797, column: 16, scope: !1374)
!1381 = !DILocalVariable(name: "new", scope: !1374, file: !630, line: 798, type: !581)
!1382 = !DILocation(line: 798, column: 17, scope: !1374)
!1383 = !DILocation(line: 801, column: 27, scope: !1374)
!1384 = !DILocation(line: 801, column: 8, scope: !1374)
!1385 = !DILocation(line: 801, column: 6, scope: !1374)
!1386 = !DILocation(line: 802, column: 32, scope: !1374)
!1387 = !DILocation(line: 802, column: 37, scope: !1374)
!1388 = !DILocation(line: 802, column: 25, scope: !1374)
!1389 = !DILocation(line: 802, column: 2, scope: !1374)
!1390 = !DILocation(line: 802, column: 7, scope: !1374)
!1391 = !DILocation(line: 802, column: 13, scope: !1374)
!1392 = !DILocation(line: 803, column: 9, scope: !1374)
!1393 = !DILocation(line: 803, column: 14, scope: !1374)
!1394 = !DILocation(line: 803, column: 21, scope: !1374)
!1395 = !DILocation(line: 803, column: 28, scope: !1374)
!1396 = !DILocation(line: 803, column: 33, scope: !1374)
!1397 = !DILocation(line: 803, column: 2, scope: !1374)
!1398 = !DILocation(line: 804, column: 2, scope: !1374)
!1399 = !DILocation(line: 804, column: 7, scope: !1374)
!1400 = !DILocation(line: 804, column: 16, scope: !1374)
!1401 = !DILocation(line: 805, column: 2, scope: !1374)
!1402 = !DILocation(line: 805, column: 7, scope: !1374)
!1403 = !DILocation(line: 805, column: 15, scope: !1374)
!1404 = !DILocation(line: 806, column: 2, scope: !1374)
!1405 = !DILocation(line: 806, column: 7, scope: !1374)
!1406 = !DILocation(line: 806, column: 14, scope: !1374)
!1407 = !DILocation(line: 808, column: 2, scope: !1374)
!1408 = !DILocation(line: 808, column: 7, scope: !1374)
!1409 = !DILocation(line: 808, column: 18, scope: !1374)
!1410 = !DILocation(line: 809, column: 2, scope: !1374)
!1411 = !DILocation(line: 809, column: 7, scope: !1374)
!1412 = !DILocation(line: 809, column: 13, scope: !1374)
!1413 = !DILocation(line: 810, column: 2, scope: !1374)
!1414 = !DILocation(line: 810, column: 7, scope: !1374)
!1415 = !DILocation(line: 810, column: 12, scope: !1374)
!1416 = !DILocation(line: 811, column: 2, scope: !1374)
!1417 = !DILocation(line: 811, column: 7, scope: !1374)
!1418 = !DILocation(line: 811, column: 12, scope: !1374)
!1419 = !DILocation(line: 812, column: 11, scope: !1374)
!1420 = !DILocation(line: 812, column: 22, scope: !1374)
!1421 = !DILocation(line: 812, column: 35, scope: !1374)
!1422 = !DILocation(line: 812, column: 2, scope: !1374)
!1423 = !DILocation(line: 813, column: 1, scope: !1374)
!1424 = distinct !DISubprogram(name: "alloc_vrrp_file", scope: !630, file: !630, line: 816, type: !714, isLocal: false, isDefinition: true, scopeLine: 817, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1425 = !DILocalVariable(name: "fname", arg: 1, scope: !1424, file: !630, line: 816, type: !95)
!1426 = !DILocation(line: 816, column: 23, scope: !1424)
!1427 = !DILocalVariable(name: "size", scope: !1424, file: !630, line: 818, type: !187)
!1428 = !DILocation(line: 818, column: 9, scope: !1424)
!1429 = !DILocation(line: 818, column: 23, scope: !1424)
!1430 = !DILocation(line: 818, column: 16, scope: !1424)
!1431 = !DILocalVariable(name: "new", scope: !1424, file: !630, line: 819, type: !600)
!1432 = !DILocation(line: 819, column: 23, scope: !1424)
!1433 = !DILocation(line: 822, column: 33, scope: !1424)
!1434 = !DILocation(line: 822, column: 8, scope: !1424)
!1435 = !DILocation(line: 822, column: 6, scope: !1424)
!1436 = !DILocation(line: 823, column: 32, scope: !1424)
!1437 = !DILocation(line: 823, column: 37, scope: !1424)
!1438 = !DILocation(line: 823, column: 25, scope: !1424)
!1439 = !DILocation(line: 823, column: 2, scope: !1424)
!1440 = !DILocation(line: 823, column: 7, scope: !1424)
!1441 = !DILocation(line: 823, column: 13, scope: !1424)
!1442 = !DILocation(line: 824, column: 9, scope: !1424)
!1443 = !DILocation(line: 824, column: 14, scope: !1424)
!1444 = !DILocation(line: 824, column: 21, scope: !1424)
!1445 = !DILocation(line: 824, column: 28, scope: !1424)
!1446 = !DILocation(line: 824, column: 33, scope: !1424)
!1447 = !DILocation(line: 824, column: 2, scope: !1424)
!1448 = !DILocation(line: 825, column: 2, scope: !1424)
!1449 = !DILocation(line: 825, column: 7, scope: !1424)
!1450 = !DILocation(line: 825, column: 14, scope: !1424)
!1451 = !DILocation(line: 826, column: 11, scope: !1424)
!1452 = !DILocation(line: 826, column: 22, scope: !1424)
!1453 = !DILocation(line: 826, column: 40, scope: !1424)
!1454 = !DILocation(line: 826, column: 2, scope: !1424)
!1455 = !DILocation(line: 827, column: 1, scope: !1424)
!1456 = distinct !DISubprogram(name: "alloc_vrrp_buffer", scope: !630, file: !630, line: 831, type: !1457, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !187}
!1459 = !DILocalVariable(name: "len", arg: 1, scope: !1456, file: !630, line: 831, type: !187)
!1460 = !DILocation(line: 831, column: 26, scope: !1456)
!1461 = !DILocation(line: 833, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !630, line: 833, column: 6)
!1463 = !DILocation(line: 833, column: 6, scope: !1456)
!1464 = !DILocation(line: 834, column: 3, scope: !1462)
!1465 = !DILocation(line: 836, column: 33, scope: !1456)
!1466 = !DILocation(line: 836, column: 26, scope: !1456)
!1467 = !DILocation(line: 836, column: 14, scope: !1456)
!1468 = !DILocation(line: 837, column: 21, scope: !1456)
!1469 = !DILocation(line: 837, column: 20, scope: !1456)
!1470 = !DILocation(line: 837, column: 36, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1456, file: !630, discriminator: 1)
!1472 = !DILocation(line: 837, column: 20, scope: !1471)
!1473 = !DILocation(line: 837, column: 20, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1456, file: !630, discriminator: 2)
!1475 = !DILocation(line: 837, column: 20, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1456, file: !630, discriminator: 3)
!1477 = !DILocation(line: 837, column: 18, scope: !1476)
!1478 = !DILocation(line: 838, column: 1, scope: !1456)
!1479 = !DILocation(line: 838, column: 1, scope: !1471)
!1480 = distinct !DISubprogram(name: "free_vrrp_buffer", scope: !630, file: !630, line: 841, type: !1481, isLocal: false, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null}
!1483 = !DILocation(line: 845, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !630, line: 845, column: 6)
!1485 = !DILocation(line: 845, column: 6, scope: !1480)
!1486 = !DILocation(line: 846, column: 3, scope: !1484)
!1487 = !DILocation(line: 848, column: 8, scope: !1480)
!1488 = !DILocation(line: 848, column: 3, scope: !1480)
!1489 = !DILocation(line: 848, column: 36, scope: !1480)
!1490 = !DILocation(line: 849, column: 14, scope: !1480)
!1491 = !DILocation(line: 850, column: 18, scope: !1480)
!1492 = !DILocation(line: 851, column: 1, scope: !1480)
!1493 = !DILocation(line: 851, column: 1, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1480, file: !630, discriminator: 1)
!1495 = distinct !DISubprogram(name: "alloc_vrrp_data", scope: !630, file: !630, line: 854, type: !1496, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!611}
!1498 = !DILocalVariable(name: "new", scope: !1495, file: !630, line: 856, type: !611)
!1499 = !DILocation(line: 856, column: 15, scope: !1495)
!1500 = !DILocation(line: 858, column: 25, scope: !1495)
!1501 = !DILocation(line: 858, column: 8, scope: !1495)
!1502 = !DILocation(line: 858, column: 6, scope: !1495)
!1503 = !DILocation(line: 859, column: 14, scope: !1495)
!1504 = !DILocation(line: 859, column: 2, scope: !1495)
!1505 = !DILocation(line: 859, column: 7, scope: !1495)
!1506 = !DILocation(line: 859, column: 12, scope: !1495)
!1507 = !DILocation(line: 860, column: 20, scope: !1495)
!1508 = !DILocation(line: 860, column: 2, scope: !1495)
!1509 = !DILocation(line: 860, column: 7, scope: !1495)
!1510 = !DILocation(line: 860, column: 18, scope: !1495)
!1511 = !DILocation(line: 861, column: 23, scope: !1495)
!1512 = !DILocation(line: 861, column: 2, scope: !1495)
!1513 = !DILocation(line: 861, column: 7, scope: !1495)
!1514 = !DILocation(line: 861, column: 21, scope: !1495)
!1515 = !DILocation(line: 862, column: 25, scope: !1495)
!1516 = !DILocation(line: 862, column: 2, scope: !1495)
!1517 = !DILocation(line: 862, column: 7, scope: !1495)
!1518 = !DILocation(line: 862, column: 23, scope: !1495)
!1519 = !DILocation(line: 863, column: 21, scope: !1495)
!1520 = !DILocation(line: 863, column: 2, scope: !1495)
!1521 = !DILocation(line: 863, column: 7, scope: !1495)
!1522 = !DILocation(line: 863, column: 19, scope: !1495)
!1523 = !DILocation(line: 864, column: 26, scope: !1495)
!1524 = !DILocation(line: 864, column: 2, scope: !1495)
!1525 = !DILocation(line: 864, column: 7, scope: !1495)
!1526 = !DILocation(line: 864, column: 24, scope: !1495)
!1527 = !DILocation(line: 868, column: 26, scope: !1495)
!1528 = !DILocation(line: 868, column: 2, scope: !1495)
!1529 = !DILocation(line: 868, column: 7, scope: !1495)
!1530 = !DILocation(line: 868, column: 24, scope: !1495)
!1531 = !DILocation(line: 870, column: 9, scope: !1495)
!1532 = !DILocation(line: 870, column: 2, scope: !1495)
!1533 = distinct !DISubprogram(name: "free_vrrp", scope: !630, file: !630, line: 311, type: !131, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1534 = !DILocalVariable(name: "data", arg: 1, scope: !1533, file: !630, line: 311, type: !79)
!1535 = !DILocation(line: 311, column: 17, scope: !1533)
!1536 = !DILocalVariable(name: "vrrp", scope: !1533, file: !630, line: 313, type: !537)
!1537 = !DILocation(line: 313, column: 10, scope: !1533)
!1538 = !DILocation(line: 313, column: 17, scope: !1533)
!1539 = !DILocation(line: 315, column: 8, scope: !1533)
!1540 = !DILocation(line: 315, column: 14, scope: !1533)
!1541 = !DILocation(line: 315, column: 3, scope: !1533)
!1542 = !DILocation(line: 315, column: 23, scope: !1533)
!1543 = !DILocation(line: 315, column: 29, scope: !1533)
!1544 = !DILocation(line: 315, column: 36, scope: !1533)
!1545 = !DILocation(line: 316, column: 8, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !630, line: 316, column: 8)
!1547 = distinct !DILexicalBlock(scope: !1533, file: !630, line: 316, column: 2)
!1548 = !DILocation(line: 316, column: 14, scope: !1546)
!1549 = !DILocation(line: 316, column: 8, scope: !1547)
!1550 = !DILocation(line: 316, column: 35, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1552, file: !630, discriminator: 1)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !630, line: 316, column: 27)
!1553 = !DILocation(line: 316, column: 41, scope: !1551)
!1554 = !DILocation(line: 316, column: 30, scope: !1551)
!1555 = !DILocation(line: 316, column: 56, scope: !1551)
!1556 = !DILocation(line: 316, column: 62, scope: !1551)
!1557 = !DILocation(line: 316, column: 75, scope: !1551)
!1558 = !DILocation(line: 316, column: 3, scope: !1551)
!1559 = !DILocation(line: 317, column: 22, scope: !1533)
!1560 = !DILocation(line: 317, column: 28, scope: !1533)
!1561 = !DILocation(line: 317, column: 2, scope: !1533)
!1562 = !DILocation(line: 318, column: 22, scope: !1533)
!1563 = !DILocation(line: 318, column: 28, scope: !1533)
!1564 = !DILocation(line: 318, column: 2, scope: !1533)
!1565 = !DILocation(line: 319, column: 22, scope: !1533)
!1566 = !DILocation(line: 319, column: 28, scope: !1533)
!1567 = !DILocation(line: 319, column: 2, scope: !1533)
!1568 = !DILocation(line: 320, column: 22, scope: !1533)
!1569 = !DILocation(line: 320, column: 28, scope: !1533)
!1570 = !DILocation(line: 320, column: 2, scope: !1533)
!1571 = !DILocation(line: 321, column: 22, scope: !1533)
!1572 = !DILocation(line: 321, column: 28, scope: !1533)
!1573 = !DILocation(line: 321, column: 2, scope: !1533)
!1574 = !DILocation(line: 322, column: 22, scope: !1533)
!1575 = !DILocation(line: 322, column: 28, scope: !1533)
!1576 = !DILocation(line: 322, column: 2, scope: !1533)
!1577 = !DILocation(line: 323, column: 8, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !630, line: 323, column: 8)
!1579 = distinct !DILexicalBlock(scope: !1533, file: !630, line: 323, column: 2)
!1580 = !DILocation(line: 323, column: 14, scope: !1578)
!1581 = !DILocation(line: 323, column: 8, scope: !1579)
!1582 = !DILocation(line: 323, column: 29, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !630, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !630, line: 323, column: 21)
!1585 = !DILocation(line: 323, column: 35, scope: !1583)
!1586 = !DILocation(line: 323, column: 24, scope: !1583)
!1587 = !DILocation(line: 323, column: 44, scope: !1583)
!1588 = !DILocation(line: 323, column: 50, scope: !1583)
!1589 = !DILocation(line: 323, column: 57, scope: !1583)
!1590 = !DILocation(line: 323, column: 3, scope: !1583)
!1591 = !DILocation(line: 325, column: 13, scope: !1533)
!1592 = !DILocation(line: 325, column: 19, scope: !1533)
!1593 = !DILocation(line: 325, column: 2, scope: !1533)
!1594 = !DILocation(line: 326, column: 13, scope: !1533)
!1595 = !DILocation(line: 326, column: 19, scope: !1533)
!1596 = !DILocation(line: 326, column: 2, scope: !1533)
!1597 = !DILocation(line: 327, column: 13, scope: !1533)
!1598 = !DILocation(line: 327, column: 19, scope: !1533)
!1599 = !DILocation(line: 327, column: 2, scope: !1533)
!1600 = !DILocation(line: 331, column: 13, scope: !1533)
!1601 = !DILocation(line: 331, column: 19, scope: !1533)
!1602 = !DILocation(line: 331, column: 2, scope: !1533)
!1603 = !DILocation(line: 332, column: 13, scope: !1533)
!1604 = !DILocation(line: 332, column: 19, scope: !1533)
!1605 = !DILocation(line: 332, column: 2, scope: !1533)
!1606 = !DILocation(line: 333, column: 13, scope: !1533)
!1607 = !DILocation(line: 333, column: 19, scope: !1533)
!1608 = !DILocation(line: 333, column: 2, scope: !1533)
!1609 = !DILocation(line: 334, column: 13, scope: !1533)
!1610 = !DILocation(line: 334, column: 19, scope: !1533)
!1611 = !DILocation(line: 334, column: 2, scope: !1533)
!1612 = !DILocation(line: 335, column: 13, scope: !1533)
!1613 = !DILocation(line: 335, column: 19, scope: !1533)
!1614 = !DILocation(line: 335, column: 2, scope: !1533)
!1615 = !DILocation(line: 336, column: 8, scope: !1533)
!1616 = !DILocation(line: 336, column: 3, scope: !1533)
!1617 = !DILocation(line: 336, column: 22, scope: !1533)
!1618 = !DILocation(line: 337, column: 1, scope: !1533)
!1619 = distinct !DISubprogram(name: "dump_vrrp", scope: !630, file: !630, line: 339, type: !135, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!1620 = !DILocalVariable(name: "fp", arg: 1, scope: !1619, file: !630, line: 339, type: !137)
!1621 = !DILocation(line: 339, column: 17, scope: !1619)
!1622 = !DILocalVariable(name: "data", arg: 2, scope: !1619, file: !630, line: 339, type: !79)
!1623 = !DILocation(line: 339, column: 27, scope: !1619)
!1624 = !DILocalVariable(name: "vrrp", scope: !1619, file: !630, line: 341, type: !537)
!1625 = !DILocation(line: 341, column: 10, scope: !1619)
!1626 = !DILocation(line: 341, column: 17, scope: !1619)
!1627 = !DILocalVariable(name: "auth_data", scope: !1619, file: !630, line: 343, type: !1628)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 72, align: 8, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 9)
!1631 = !DILocation(line: 343, column: 7, scope: !1619)
!1632 = !DILocalVariable(name: "time_str", scope: !1619, file: !630, line: 345, type: !1633)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 208, align: 8, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 26)
!1636 = !DILocation(line: 345, column: 7, scope: !1619)
!1637 = !DILocation(line: 351, column: 13, scope: !1619)
!1638 = !DILocation(line: 351, column: 40, scope: !1619)
!1639 = !DILocation(line: 351, column: 46, scope: !1619)
!1640 = !DILocation(line: 351, column: 2, scope: !1619)
!1641 = !DILocation(line: 352, column: 13, scope: !1619)
!1642 = !DILocation(line: 352, column: 41, scope: !1619)
!1643 = !DILocation(line: 352, column: 47, scope: !1619)
!1644 = !DILocation(line: 352, column: 2, scope: !1619)
!1645 = !DILocation(line: 353, column: 6, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 353, column: 6)
!1647 = !DILocation(line: 353, column: 12, scope: !1646)
!1648 = !DILocation(line: 353, column: 6, scope: !1619)
!1649 = !DILocation(line: 354, column: 14, scope: !1646)
!1650 = !DILocation(line: 354, column: 40, scope: !1646)
!1651 = !DILocation(line: 354, column: 46, scope: !1646)
!1652 = !DILocation(line: 354, column: 52, scope: !1646)
!1653 = !DILocation(line: 354, column: 3, scope: !1646)
!1654 = !DILocation(line: 355, column: 6, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 355, column: 6)
!1656 = !DILocation(line: 355, column: 12, scope: !1655)
!1657 = !DILocation(line: 355, column: 19, scope: !1655)
!1658 = !DILocation(line: 355, column: 6, scope: !1619)
!1659 = !DILocation(line: 356, column: 14, scope: !1655)
!1660 = !DILocation(line: 356, column: 3, scope: !1655)
!1661 = !DILocation(line: 357, column: 6, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 357, column: 6)
!1663 = !DILocation(line: 357, column: 6, scope: !1619)
!1664 = !DILocation(line: 358, column: 14, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !630, line: 357, column: 10)
!1666 = !DILocation(line: 358, column: 49, scope: !1665)
!1667 = !DILocation(line: 358, column: 55, scope: !1665)
!1668 = !DILocation(line: 358, column: 35, scope: !1665)
!1669 = !DILocation(line: 358, column: 3, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1665, file: !630, discriminator: 1)
!1671 = !DILocation(line: 359, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !630, line: 359, column: 7)
!1673 = !DILocation(line: 359, column: 13, scope: !1672)
!1674 = !DILocation(line: 359, column: 19, scope: !1672)
!1675 = !DILocation(line: 359, column: 7, scope: !1665)
!1676 = !DILocation(line: 360, column: 15, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !630, line: 359, column: 25)
!1678 = !DILocation(line: 360, column: 62, scope: !1677)
!1679 = !DILocation(line: 360, column: 68, scope: !1677)
!1680 = !DILocation(line: 360, column: 44, scope: !1677)
!1681 = !DILocation(line: 360, column: 4, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1677, file: !630, discriminator: 1)
!1683 = !DILocation(line: 361, column: 15, scope: !1677)
!1684 = !DILocation(line: 361, column: 46, scope: !1677)
!1685 = !DILocation(line: 361, column: 52, scope: !1677)
!1686 = !DILocation(line: 361, column: 4, scope: !1677)
!1687 = !DILocation(line: 362, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1677, file: !630, line: 362, column: 8)
!1689 = !DILocation(line: 362, column: 14, scope: !1688)
!1690 = !DILocation(line: 362, column: 22, scope: !1688)
!1691 = !DILocation(line: 362, column: 8, scope: !1677)
!1692 = !DILocation(line: 363, column: 16, scope: !1688)
!1693 = !DILocation(line: 363, column: 62, scope: !1688)
!1694 = !DILocation(line: 363, column: 68, scope: !1688)
!1695 = !DILocation(line: 363, column: 55, scope: !1688)
!1696 = !DILocation(line: 363, column: 85, scope: !1688)
!1697 = !DILocation(line: 363, column: 5, scope: !1688)
!1698 = !DILocation(line: 364, column: 3, scope: !1677)
!1699 = !DILocation(line: 365, column: 2, scope: !1665)
!1700 = !DILocation(line: 366, column: 13, scope: !1619)
!1701 = !DILocation(line: 366, column: 52, scope: !1619)
!1702 = !DILocation(line: 366, column: 58, scope: !1619)
!1703 = !DILocation(line: 366, column: 38, scope: !1619)
!1704 = !DILocation(line: 366, column: 2, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1619, file: !630, discriminator: 1)
!1706 = !DILocation(line: 367, column: 6, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 367, column: 6)
!1708 = !DILocation(line: 367, column: 6, scope: !1619)
!1709 = !DILocation(line: 368, column: 14, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !630, line: 367, column: 10)
!1711 = !DILocation(line: 368, column: 73, scope: !1710)
!1712 = !DILocation(line: 368, column: 79, scope: !1710)
!1713 = !DILocation(line: 368, column: 3, scope: !1710)
!1714 = !DILocation(line: 369, column: 14, scope: !1710)
!1715 = !DILocation(line: 369, column: 58, scope: !1710)
!1716 = !DILocation(line: 369, column: 64, scope: !1710)
!1717 = !DILocation(line: 369, column: 3, scope: !1710)
!1718 = !DILocation(line: 370, column: 12, scope: !1710)
!1719 = !DILocation(line: 370, column: 18, scope: !1710)
!1720 = !DILocation(line: 370, column: 34, scope: !1710)
!1721 = !DILocation(line: 370, column: 42, scope: !1710)
!1722 = !DILocation(line: 370, column: 3, scope: !1710)
!1723 = !DILocation(line: 371, column: 14, scope: !1710)
!1724 = !DILocation(line: 371, column: 54, scope: !1710)
!1725 = !DILocation(line: 371, column: 60, scope: !1710)
!1726 = !DILocation(line: 371, column: 76, scope: !1710)
!1727 = !DILocation(line: 371, column: 84, scope: !1710)
!1728 = !DILocation(line: 371, column: 3, scope: !1710)
!1729 = !DILocation(line: 372, column: 17, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1710, file: !630, line: 372, column: 7)
!1731 = !DILocation(line: 372, column: 23, scope: !1730)
!1732 = !DILocation(line: 372, column: 29, scope: !1730)
!1733 = !DILocation(line: 372, column: 37, scope: !1730)
!1734 = !DILocation(line: 372, column: 8, scope: !1730)
!1735 = !DILocation(line: 372, column: 7, scope: !1710)
!1736 = !DILocation(line: 373, column: 11, scope: !1730)
!1737 = !DILocation(line: 373, column: 4, scope: !1730)
!1738 = !DILocation(line: 374, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1710, file: !630, line: 374, column: 7)
!1740 = !DILocation(line: 374, column: 13, scope: !1739)
!1741 = !DILocation(line: 374, column: 19, scope: !1739)
!1742 = !DILocation(line: 374, column: 26, scope: !1739)
!1743 = !DILocation(line: 374, column: 7, scope: !1710)
!1744 = !DILocation(line: 375, column: 15, scope: !1739)
!1745 = !DILocation(line: 375, column: 4, scope: !1739)
!1746 = !DILocation(line: 377, column: 15, scope: !1739)
!1747 = !DILocation(line: 377, column: 66, scope: !1739)
!1748 = !DILocation(line: 377, column: 72, scope: !1739)
!1749 = !DILocation(line: 377, column: 78, scope: !1739)
!1750 = !DILocation(line: 377, column: 86, scope: !1739)
!1751 = !DILocation(line: 377, column: 92, scope: !1739)
!1752 = !DILocation(line: 377, column: 98, scope: !1739)
!1753 = !DILocation(line: 377, column: 107, scope: !1739)
!1754 = !DILocation(line: 377, column: 117, scope: !1739)
!1755 = !DILocation(line: 377, column: 123, scope: !1739)
!1756 = !DILocation(line: 377, column: 129, scope: !1739)
!1757 = !DILocation(line: 377, column: 4, scope: !1739)
!1758 = !DILocation(line: 378, column: 14, scope: !1710)
!1759 = !DILocation(line: 378, column: 53, scope: !1710)
!1760 = !DILocation(line: 378, column: 59, scope: !1710)
!1761 = !DILocation(line: 378, column: 3, scope: !1710)
!1762 = !DILocation(line: 379, column: 2, scope: !1710)
!1763 = !DILocation(line: 381, column: 33, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 381, column: 6)
!1765 = !DILocation(line: 381, column: 39, scope: !1764)
!1766 = !DILocation(line: 381, column: 6, scope: !1764)
!1767 = !DILocation(line: 381, column: 6, scope: !1619)
!1768 = !DILocation(line: 382, column: 14, scope: !1764)
!1769 = !DILocation(line: 383, column: 35, scope: !1764)
!1770 = !DILocation(line: 383, column: 41, scope: !1764)
!1771 = !DILocation(line: 383, column: 5, scope: !1764)
!1772 = !DILocation(line: 384, column: 41, scope: !1764)
!1773 = !DILocation(line: 384, column: 47, scope: !1764)
!1774 = !DILocation(line: 384, column: 5, scope: !1764)
!1775 = !DILocation(line: 382, column: 3, scope: !1764)
!1776 = !DILocation(line: 385, column: 6, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 385, column: 6)
!1778 = !DILocation(line: 385, column: 12, scope: !1777)
!1779 = !DILocation(line: 385, column: 19, scope: !1777)
!1780 = !DILocation(line: 385, column: 25, scope: !1777)
!1781 = !DILocation(line: 385, column: 30, scope: !1777)
!1782 = !DILocation(line: 385, column: 16, scope: !1777)
!1783 = !DILocation(line: 385, column: 6, scope: !1619)
!1784 = !DILocation(line: 386, column: 14, scope: !1777)
!1785 = !DILocation(line: 386, column: 66, scope: !1777)
!1786 = !DILocation(line: 386, column: 72, scope: !1777)
!1787 = !DILocation(line: 386, column: 78, scope: !1777)
!1788 = !DILocation(line: 386, column: 64, scope: !1777)
!1789 = !DILocation(line: 387, column: 5, scope: !1777)
!1790 = !DILocation(line: 387, column: 11, scope: !1777)
!1791 = !DILocation(line: 387, column: 16, scope: !1777)
!1792 = !DILocation(line: 387, column: 26, scope: !1777)
!1793 = !DILocation(line: 387, column: 70, scope: !1777)
!1794 = !DILocation(line: 387, column: 76, scope: !1777)
!1795 = !DILocation(line: 387, column: 34, scope: !1777)
!1796 = !DILocation(line: 386, column: 3, scope: !1777)
!1797 = !DILocation(line: 390, column: 14, scope: !1777)
!1798 = !DILocation(line: 390, column: 41, scope: !1777)
!1799 = !DILocation(line: 390, column: 47, scope: !1777)
!1800 = !DILocation(line: 390, column: 53, scope: !1777)
!1801 = !DILocation(line: 390, column: 39, scope: !1777)
!1802 = !DILocation(line: 390, column: 3, scope: !1777)
!1803 = !DILocation(line: 391, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 391, column: 6)
!1805 = !DILocation(line: 391, column: 12, scope: !1804)
!1806 = !DILocation(line: 391, column: 6, scope: !1619)
!1807 = !DILocation(line: 392, column: 14, scope: !1804)
!1808 = !DILocation(line: 392, column: 3, scope: !1804)
!1809 = !DILocation(line: 393, column: 6, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 393, column: 6)
!1811 = !DILocation(line: 393, column: 12, scope: !1810)
!1812 = !DILocation(line: 393, column: 6, scope: !1619)
!1813 = !DILocation(line: 394, column: 14, scope: !1810)
!1814 = !DILocation(line: 394, column: 3, scope: !1810)
!1815 = !DILocation(line: 395, column: 6, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 395, column: 6)
!1817 = !DILocation(line: 395, column: 12, scope: !1816)
!1818 = !DILocation(line: 395, column: 6, scope: !1619)
!1819 = !DILocation(line: 396, column: 14, scope: !1816)
!1820 = !DILocation(line: 396, column: 3, scope: !1816)
!1821 = !DILocation(line: 397, column: 13, scope: !1619)
!1822 = !DILocation(line: 397, column: 43, scope: !1619)
!1823 = !DILocation(line: 397, column: 49, scope: !1619)
!1824 = !DILocation(line: 397, column: 55, scope: !1619)
!1825 = !DILocation(line: 397, column: 65, scope: !1619)
!1826 = !DILocation(line: 398, column: 30, scope: !1619)
!1827 = !DILocation(line: 398, column: 36, scope: !1619)
!1828 = !DILocation(line: 398, column: 12, scope: !1619)
!1829 = !DILocation(line: 397, column: 43, scope: !1705)
!1830 = !DILocation(line: 397, column: 43, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1619, file: !630, discriminator: 2)
!1832 = !DILocation(line: 397, column: 43, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1619, file: !630, discriminator: 3)
!1834 = !DILocation(line: 400, column: 9, scope: !1619)
!1835 = !DILocation(line: 400, column: 15, scope: !1619)
!1836 = !DILocation(line: 397, column: 2, scope: !1833)
!1837 = !DILocation(line: 401, column: 13, scope: !1619)
!1838 = !DILocation(line: 402, column: 10, scope: !1619)
!1839 = !DILocation(line: 402, column: 16, scope: !1619)
!1840 = !DILocation(line: 402, column: 26, scope: !1619)
!1841 = !DILocation(line: 401, column: 2, scope: !1619)
!1842 = !DILocation(line: 403, column: 13, scope: !1619)
!1843 = !DILocation(line: 403, column: 50, scope: !1619)
!1844 = !DILocation(line: 403, column: 56, scope: !1619)
!1845 = !DILocation(line: 403, column: 2, scope: !1619)
!1846 = !DILocation(line: 404, column: 13, scope: !1619)
!1847 = !DILocation(line: 405, column: 10, scope: !1619)
!1848 = !DILocation(line: 405, column: 16, scope: !1619)
!1849 = !DILocation(line: 405, column: 29, scope: !1619)
!1850 = !DILocation(line: 404, column: 2, scope: !1619)
!1851 = !DILocation(line: 406, column: 13, scope: !1619)
!1852 = !DILocation(line: 406, column: 58, scope: !1619)
!1853 = !DILocation(line: 406, column: 64, scope: !1619)
!1854 = !DILocation(line: 406, column: 2, scope: !1619)
!1855 = !DILocation(line: 407, column: 13, scope: !1619)
!1856 = !DILocation(line: 407, column: 64, scope: !1619)
!1857 = !DILocation(line: 407, column: 70, scope: !1619)
!1858 = !DILocation(line: 407, column: 92, scope: !1619)
!1859 = !DILocation(line: 407, column: 2, scope: !1619)
!1860 = !DILocation(line: 408, column: 13, scope: !1619)
!1861 = !DILocation(line: 408, column: 65, scope: !1619)
!1862 = !DILocation(line: 408, column: 71, scope: !1619)
!1863 = !DILocation(line: 408, column: 2, scope: !1619)
!1864 = !DILocation(line: 409, column: 13, scope: !1619)
!1865 = !DILocation(line: 409, column: 76, scope: !1619)
!1866 = !DILocation(line: 409, column: 82, scope: !1619)
!1867 = !DILocation(line: 409, column: 2, scope: !1619)
!1868 = !DILocation(line: 410, column: 13, scope: !1619)
!1869 = !DILocation(line: 410, column: 77, scope: !1619)
!1870 = !DILocation(line: 410, column: 83, scope: !1619)
!1871 = !DILocation(line: 410, column: 2, scope: !1619)
!1872 = !DILocation(line: 411, column: 13, scope: !1619)
!1873 = !DILocation(line: 411, column: 46, scope: !1619)
!1874 = !DILocation(line: 411, column: 52, scope: !1619)
!1875 = !DILocation(line: 411, column: 2, scope: !1619)
!1876 = !DILocation(line: 412, column: 13, scope: !1619)
!1877 = !DILocation(line: 412, column: 37, scope: !1619)
!1878 = !DILocation(line: 412, column: 43, scope: !1619)
!1879 = !DILocation(line: 412, column: 2, scope: !1619)
!1880 = !DILocation(line: 413, column: 6, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 413, column: 6)
!1882 = !DILocation(line: 413, column: 6, scope: !1619)
!1883 = !DILocation(line: 414, column: 14, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !630, line: 413, column: 10)
!1885 = !DILocation(line: 414, column: 48, scope: !1884)
!1886 = !DILocation(line: 414, column: 54, scope: !1884)
!1887 = !DILocation(line: 414, column: 3, scope: !1884)
!1888 = !DILocation(line: 415, column: 14, scope: !1884)
!1889 = !DILocation(line: 415, column: 44, scope: !1884)
!1890 = !DILocation(line: 415, column: 50, scope: !1884)
!1891 = !DILocation(line: 415, column: 3, scope: !1884)
!1892 = !DILocation(line: 416, column: 2, scope: !1884)
!1893 = !DILocation(line: 417, column: 13, scope: !1619)
!1894 = !DILocation(line: 418, column: 4, scope: !1619)
!1895 = !DILocation(line: 418, column: 10, scope: !1619)
!1896 = !DILocation(line: 418, column: 18, scope: !1619)
!1897 = !DILocation(line: 418, column: 3, scope: !1619)
!1898 = !DILocation(line: 418, column: 27, scope: !1705)
!1899 = !DILocation(line: 418, column: 33, scope: !1705)
!1900 = !DILocation(line: 418, column: 43, scope: !1705)
!1901 = !DILocation(line: 418, column: 3, scope: !1705)
!1902 = !DILocation(line: 419, column: 4, scope: !1619)
!1903 = !DILocation(line: 419, column: 10, scope: !1619)
!1904 = !DILocation(line: 419, column: 20, scope: !1619)
!1905 = !DILocation(line: 418, column: 3, scope: !1831)
!1906 = !DILocation(line: 418, column: 3, scope: !1833)
!1907 = !DILocation(line: 420, column: 4, scope: !1619)
!1908 = !DILocation(line: 420, column: 10, scope: !1619)
!1909 = !DILocation(line: 420, column: 18, scope: !1619)
!1910 = !DILocation(line: 420, column: 3, scope: !1619)
!1911 = !DILocation(line: 417, column: 2, scope: !1705)
!1912 = !DILocation(line: 421, column: 6, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 421, column: 6)
!1914 = !DILocation(line: 421, column: 12, scope: !1913)
!1915 = !DILocation(line: 421, column: 18, scope: !1913)
!1916 = !DILocation(line: 421, column: 23, scope: !1913)
!1917 = !DILocation(line: 421, column: 26, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1913, file: !630, discriminator: 1)
!1919 = !DILocation(line: 421, column: 32, scope: !1918)
!1920 = !DILocation(line: 421, column: 40, scope: !1918)
!1921 = !DILocation(line: 421, column: 6, scope: !1918)
!1922 = !DILocation(line: 422, column: 14, scope: !1913)
!1923 = !DILocation(line: 422, column: 62, scope: !1913)
!1924 = !DILocation(line: 422, column: 68, scope: !1913)
!1925 = !DILocation(line: 422, column: 85, scope: !1913)
!1926 = !DILocation(line: 422, column: 3, scope: !1913)
!1927 = !DILocation(line: 423, column: 13, scope: !1619)
!1928 = !DILocation(line: 423, column: 35, scope: !1619)
!1929 = !DILocation(line: 423, column: 41, scope: !1619)
!1930 = !DILocation(line: 423, column: 2, scope: !1619)
!1931 = !DILocation(line: 424, column: 13, scope: !1619)
!1932 = !DILocation(line: 424, column: 36, scope: !1619)
!1933 = !DILocation(line: 424, column: 42, scope: !1619)
!1934 = !DILocation(line: 424, column: 2, scope: !1619)
!1935 = !DILocation(line: 425, column: 6, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 425, column: 6)
!1937 = !DILocation(line: 425, column: 12, scope: !1936)
!1938 = !DILocation(line: 425, column: 6, scope: !1619)
!1939 = !DILocation(line: 426, column: 14, scope: !1936)
!1940 = !DILocation(line: 427, column: 17, scope: !1936)
!1941 = !DILocation(line: 427, column: 23, scope: !1936)
!1942 = !DILocation(line: 427, column: 10, scope: !1936)
!1943 = !DILocation(line: 427, column: 37, scope: !1936)
!1944 = !DILocation(line: 426, column: 3, scope: !1936)
!1945 = !DILocation(line: 428, column: 13, scope: !1619)
!1946 = !DILocation(line: 428, column: 48, scope: !1619)
!1947 = !DILocation(line: 428, column: 54, scope: !1619)
!1948 = !DILocation(line: 428, column: 2, scope: !1619)
!1949 = !DILocation(line: 430, column: 6, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 430, column: 6)
!1951 = !DILocation(line: 430, column: 12, scope: !1950)
!1952 = !DILocation(line: 430, column: 6, scope: !1619)
!1953 = !DILocation(line: 431, column: 14, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !630, line: 430, column: 23)
!1955 = !DILocation(line: 432, column: 11, scope: !1954)
!1956 = !DILocation(line: 432, column: 17, scope: !1954)
!1957 = !DILocation(line: 432, column: 27, scope: !1954)
!1958 = !DILocation(line: 432, column: 10, scope: !1954)
!1959 = !DILocation(line: 431, column: 3, scope: !1954)
!1960 = !DILocation(line: 434, column: 7, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1954, file: !630, line: 434, column: 7)
!1962 = !DILocation(line: 434, column: 13, scope: !1961)
!1963 = !DILocation(line: 434, column: 23, scope: !1961)
!1964 = !DILocation(line: 434, column: 7, scope: !1954)
!1965 = !DILocation(line: 436, column: 4, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !630, line: 434, column: 29)
!1967 = !DILocation(line: 436, column: 22, scope: !1966)
!1968 = !DILocation(line: 436, column: 28, scope: !1966)
!1969 = !DILocation(line: 437, column: 4, scope: !1966)
!1970 = !DILocation(line: 437, column: 39, scope: !1966)
!1971 = !DILocation(line: 438, column: 15, scope: !1966)
!1972 = !DILocation(line: 438, column: 39, scope: !1966)
!1973 = !DILocation(line: 438, column: 4, scope: !1966)
!1974 = !DILocation(line: 439, column: 3, scope: !1966)
!1975 = !DILocation(line: 440, column: 2, scope: !1954)
!1976 = !DILocation(line: 441, column: 11, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1950, file: !630, line: 441, column: 11)
!1978 = !DILocation(line: 441, column: 17, scope: !1977)
!1979 = !DILocation(line: 441, column: 25, scope: !1977)
!1980 = !DILocation(line: 441, column: 11, scope: !1950)
!1981 = !DILocation(line: 442, column: 14, scope: !1977)
!1982 = !DILocation(line: 442, column: 3, scope: !1977)
!1983 = !DILocation(line: 444, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 444, column: 6)
!1985 = !DILocation(line: 444, column: 12, scope: !1984)
!1986 = !DILocation(line: 444, column: 6, scope: !1619)
!1987 = !DILocation(line: 445, column: 14, scope: !1984)
!1988 = !DILocation(line: 445, column: 52, scope: !1984)
!1989 = !DILocation(line: 445, column: 58, scope: !1984)
!1990 = !DILocation(line: 445, column: 3, scope: !1984)
!1991 = !DILocation(line: 447, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 447, column: 6)
!1993 = !DILocation(line: 447, column: 12, scope: !1992)
!1994 = !DILocation(line: 447, column: 6, scope: !1619)
!1995 = !DILocation(line: 448, column: 14, scope: !1992)
!1996 = !DILocation(line: 448, column: 41, scope: !1992)
!1997 = !DILocation(line: 448, column: 47, scope: !1992)
!1998 = !DILocation(line: 448, column: 3, scope: !1992)
!1999 = !DILocation(line: 450, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 450, column: 6)
!2001 = !DILocation(line: 450, column: 15, scope: !2000)
!2002 = !DILocation(line: 450, column: 20, scope: !2000)
!2003 = !DILocation(line: 450, column: 6, scope: !2000)
!2004 = !DILocation(line: 450, column: 11, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2000, file: !630, discriminator: 1)
!2006 = !DILocation(line: 450, column: 17, scope: !2005)
!2007 = !DILocation(line: 450, column: 23, scope: !2005)
!2008 = !DILocation(line: 450, column: 28, scope: !2005)
!2009 = !DILocation(line: 450, column: 6, scope: !2005)
!2010 = !DILocation(line: 450, column: 10, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2000, file: !630, discriminator: 2)
!2012 = !DILocation(line: 450, column: 16, scope: !2011)
!2013 = !DILocation(line: 450, column: 22, scope: !2011)
!2014 = !DILocation(line: 450, column: 27, scope: !2011)
!2015 = !DILocation(line: 450, column: 6, scope: !2011)
!2016 = !DILocation(line: 451, column: 14, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2000, file: !630, line: 450, column: 10)
!2018 = !DILocation(line: 451, column: 42, scope: !2017)
!2019 = !DILocation(line: 451, column: 48, scope: !2017)
!2020 = !DILocation(line: 451, column: 54, scope: !2017)
!2021 = !DILocation(line: 451, column: 3, scope: !2017)
!2022 = !DILocation(line: 452, column: 13, scope: !2017)
!2023 = !DILocation(line: 452, column: 17, scope: !2017)
!2024 = !DILocation(line: 452, column: 23, scope: !2017)
!2025 = !DILocation(line: 452, column: 3, scope: !2017)
!2026 = !DILocation(line: 453, column: 2, scope: !2017)
!2027 = !DILocation(line: 454, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 454, column: 6)
!2029 = !DILocation(line: 454, column: 15, scope: !2028)
!2030 = !DILocation(line: 454, column: 21, scope: !2028)
!2031 = !DILocation(line: 454, column: 6, scope: !2028)
!2032 = !DILocation(line: 454, column: 11, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2028, file: !630, discriminator: 1)
!2034 = !DILocation(line: 454, column: 17, scope: !2033)
!2035 = !DILocation(line: 454, column: 24, scope: !2033)
!2036 = !DILocation(line: 454, column: 29, scope: !2033)
!2037 = !DILocation(line: 454, column: 6, scope: !2033)
!2038 = !DILocation(line: 454, column: 10, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2028, file: !630, discriminator: 2)
!2040 = !DILocation(line: 454, column: 16, scope: !2039)
!2041 = !DILocation(line: 454, column: 23, scope: !2039)
!2042 = !DILocation(line: 454, column: 28, scope: !2039)
!2043 = !DILocation(line: 454, column: 6, scope: !2039)
!2044 = !DILocation(line: 455, column: 14, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2028, file: !630, line: 454, column: 10)
!2046 = !DILocation(line: 456, column: 6, scope: !2045)
!2047 = !DILocation(line: 456, column: 12, scope: !2045)
!2048 = !DILocation(line: 456, column: 19, scope: !2045)
!2049 = !DILocation(line: 455, column: 3, scope: !2045)
!2050 = !DILocation(line: 457, column: 13, scope: !2045)
!2051 = !DILocation(line: 457, column: 17, scope: !2045)
!2052 = !DILocation(line: 457, column: 23, scope: !2045)
!2053 = !DILocation(line: 457, column: 3, scope: !2045)
!2054 = !DILocation(line: 458, column: 2, scope: !2045)
!2055 = !DILocation(line: 459, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 459, column: 6)
!2057 = !DILocation(line: 459, column: 15, scope: !2056)
!2058 = !DILocation(line: 459, column: 29, scope: !2056)
!2059 = !DILocation(line: 459, column: 6, scope: !2056)
!2060 = !DILocation(line: 459, column: 11, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2056, file: !630, discriminator: 1)
!2062 = !DILocation(line: 459, column: 17, scope: !2061)
!2063 = !DILocation(line: 459, column: 32, scope: !2061)
!2064 = !DILocation(line: 459, column: 37, scope: !2061)
!2065 = !DILocation(line: 459, column: 6, scope: !2061)
!2066 = !DILocation(line: 459, column: 10, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2056, file: !630, discriminator: 2)
!2068 = !DILocation(line: 459, column: 16, scope: !2067)
!2069 = !DILocation(line: 459, column: 31, scope: !2067)
!2070 = !DILocation(line: 459, column: 36, scope: !2067)
!2071 = !DILocation(line: 459, column: 6, scope: !2067)
!2072 = !DILocation(line: 460, column: 14, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2056, file: !630, line: 459, column: 10)
!2074 = !DILocation(line: 461, column: 6, scope: !2073)
!2075 = !DILocation(line: 461, column: 12, scope: !2073)
!2076 = !DILocation(line: 461, column: 27, scope: !2073)
!2077 = !DILocation(line: 460, column: 3, scope: !2073)
!2078 = !DILocation(line: 462, column: 13, scope: !2073)
!2079 = !DILocation(line: 462, column: 17, scope: !2073)
!2080 = !DILocation(line: 462, column: 23, scope: !2073)
!2081 = !DILocation(line: 462, column: 3, scope: !2073)
!2082 = !DILocation(line: 464, column: 14, scope: !2073)
!2083 = !DILocation(line: 465, column: 5, scope: !2073)
!2084 = !DILocation(line: 465, column: 11, scope: !2073)
!2085 = !DILocation(line: 465, column: 33, scope: !2073)
!2086 = !DILocation(line: 465, column: 5, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2073, file: !630, discriminator: 1)
!2088 = !DILocation(line: 466, column: 5, scope: !2073)
!2089 = !DILocation(line: 466, column: 11, scope: !2073)
!2090 = !DILocation(line: 466, column: 33, scope: !2073)
!2091 = !DILocation(line: 466, column: 5, scope: !2087)
!2092 = !DILocation(line: 467, column: 5, scope: !2073)
!2093 = !DILocation(line: 467, column: 11, scope: !2073)
!2094 = !DILocation(line: 467, column: 33, scope: !2073)
!2095 = !DILocation(line: 467, column: 5, scope: !2087)
!2096 = !DILocation(line: 468, column: 5, scope: !2073)
!2097 = !DILocation(line: 468, column: 11, scope: !2073)
!2098 = !DILocation(line: 468, column: 33, scope: !2073)
!2099 = !DILocation(line: 467, column: 5, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2073, file: !630, discriminator: 2)
!2101 = !DILocation(line: 467, column: 5, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2073, file: !630, discriminator: 3)
!2103 = !DILocation(line: 466, column: 5, scope: !2100)
!2104 = !DILocation(line: 466, column: 5, scope: !2102)
!2105 = !DILocation(line: 465, column: 5, scope: !2100)
!2106 = !DILocation(line: 465, column: 5, scope: !2102)
!2107 = !DILocation(line: 464, column: 3, scope: !2087)
!2108 = !DILocation(line: 470, column: 2, scope: !2073)
!2109 = !DILocation(line: 472, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 472, column: 6)
!2111 = !DILocation(line: 472, column: 15, scope: !2110)
!2112 = !DILocation(line: 472, column: 24, scope: !2110)
!2113 = !DILocation(line: 472, column: 6, scope: !2110)
!2114 = !DILocation(line: 472, column: 11, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2110, file: !630, discriminator: 1)
!2116 = !DILocation(line: 472, column: 17, scope: !2115)
!2117 = !DILocation(line: 472, column: 27, scope: !2115)
!2118 = !DILocation(line: 472, column: 32, scope: !2115)
!2119 = !DILocation(line: 472, column: 6, scope: !2115)
!2120 = !DILocation(line: 472, column: 10, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2110, file: !630, discriminator: 2)
!2122 = !DILocation(line: 472, column: 16, scope: !2121)
!2123 = !DILocation(line: 472, column: 26, scope: !2121)
!2124 = !DILocation(line: 472, column: 31, scope: !2121)
!2125 = !DILocation(line: 472, column: 6, scope: !2121)
!2126 = !DILocation(line: 473, column: 14, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2110, file: !630, line: 472, column: 10)
!2128 = !DILocation(line: 473, column: 46, scope: !2127)
!2129 = !DILocation(line: 473, column: 52, scope: !2127)
!2130 = !DILocation(line: 473, column: 62, scope: !2127)
!2131 = !DILocation(line: 473, column: 3, scope: !2127)
!2132 = !DILocation(line: 474, column: 13, scope: !2127)
!2133 = !DILocation(line: 474, column: 17, scope: !2127)
!2134 = !DILocation(line: 474, column: 23, scope: !2127)
!2135 = !DILocation(line: 474, column: 3, scope: !2127)
!2136 = !DILocation(line: 475, column: 2, scope: !2127)
!2137 = !DILocation(line: 476, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 476, column: 6)
!2139 = !DILocation(line: 476, column: 15, scope: !2138)
!2140 = !DILocation(line: 476, column: 23, scope: !2138)
!2141 = !DILocation(line: 476, column: 6, scope: !2138)
!2142 = !DILocation(line: 476, column: 11, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2138, file: !630, discriminator: 1)
!2144 = !DILocation(line: 476, column: 17, scope: !2143)
!2145 = !DILocation(line: 476, column: 26, scope: !2143)
!2146 = !DILocation(line: 476, column: 31, scope: !2143)
!2147 = !DILocation(line: 476, column: 6, scope: !2143)
!2148 = !DILocation(line: 476, column: 10, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2138, file: !630, discriminator: 2)
!2150 = !DILocation(line: 476, column: 16, scope: !2149)
!2151 = !DILocation(line: 476, column: 25, scope: !2149)
!2152 = !DILocation(line: 476, column: 30, scope: !2149)
!2153 = !DILocation(line: 476, column: 6, scope: !2149)
!2154 = !DILocation(line: 477, column: 14, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2138, file: !630, line: 476, column: 10)
!2156 = !DILocation(line: 477, column: 45, scope: !2155)
!2157 = !DILocation(line: 477, column: 51, scope: !2155)
!2158 = !DILocation(line: 477, column: 60, scope: !2155)
!2159 = !DILocation(line: 477, column: 3, scope: !2155)
!2160 = !DILocation(line: 478, column: 13, scope: !2155)
!2161 = !DILocation(line: 478, column: 17, scope: !2155)
!2162 = !DILocation(line: 478, column: 23, scope: !2155)
!2163 = !DILocation(line: 478, column: 3, scope: !2155)
!2164 = !DILocation(line: 479, column: 2, scope: !2155)
!2165 = !DILocation(line: 482, column: 9, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 482, column: 6)
!2167 = !DILocation(line: 482, column: 15, scope: !2166)
!2168 = !DILocation(line: 482, column: 26, scope: !2166)
!2169 = !DILocation(line: 482, column: 6, scope: !2166)
!2170 = !DILocation(line: 482, column: 11, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2166, file: !630, discriminator: 1)
!2172 = !DILocation(line: 482, column: 17, scope: !2171)
!2173 = !DILocation(line: 482, column: 29, scope: !2171)
!2174 = !DILocation(line: 482, column: 34, scope: !2171)
!2175 = !DILocation(line: 482, column: 6, scope: !2171)
!2176 = !DILocation(line: 482, column: 10, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2166, file: !630, discriminator: 2)
!2178 = !DILocation(line: 482, column: 16, scope: !2177)
!2179 = !DILocation(line: 482, column: 28, scope: !2177)
!2180 = !DILocation(line: 482, column: 33, scope: !2177)
!2181 = !DILocation(line: 482, column: 6, scope: !2177)
!2182 = !DILocation(line: 483, column: 14, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2166, file: !630, line: 482, column: 10)
!2184 = !DILocation(line: 483, column: 50, scope: !2183)
!2185 = !DILocation(line: 483, column: 56, scope: !2183)
!2186 = !DILocation(line: 483, column: 68, scope: !2183)
!2187 = !DILocation(line: 483, column: 3, scope: !2183)
!2188 = !DILocation(line: 484, column: 13, scope: !2183)
!2189 = !DILocation(line: 484, column: 17, scope: !2183)
!2190 = !DILocation(line: 484, column: 23, scope: !2183)
!2191 = !DILocation(line: 484, column: 3, scope: !2183)
!2192 = !DILocation(line: 485, column: 2, scope: !2183)
!2193 = !DILocation(line: 486, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 486, column: 6)
!2195 = !DILocation(line: 486, column: 15, scope: !2194)
!2196 = !DILocation(line: 486, column: 29, scope: !2194)
!2197 = !DILocation(line: 486, column: 6, scope: !2194)
!2198 = !DILocation(line: 486, column: 11, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2194, file: !630, discriminator: 1)
!2200 = !DILocation(line: 486, column: 17, scope: !2199)
!2201 = !DILocation(line: 486, column: 32, scope: !2199)
!2202 = !DILocation(line: 486, column: 37, scope: !2199)
!2203 = !DILocation(line: 486, column: 6, scope: !2199)
!2204 = !DILocation(line: 486, column: 10, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2194, file: !630, discriminator: 2)
!2206 = !DILocation(line: 486, column: 16, scope: !2205)
!2207 = !DILocation(line: 486, column: 31, scope: !2205)
!2208 = !DILocation(line: 486, column: 36, scope: !2205)
!2209 = !DILocation(line: 486, column: 6, scope: !2205)
!2210 = !DILocation(line: 487, column: 14, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2194, file: !630, line: 486, column: 10)
!2212 = !DILocation(line: 487, column: 47, scope: !2211)
!2213 = !DILocation(line: 487, column: 53, scope: !2211)
!2214 = !DILocation(line: 487, column: 68, scope: !2211)
!2215 = !DILocation(line: 487, column: 3, scope: !2211)
!2216 = !DILocation(line: 488, column: 13, scope: !2211)
!2217 = !DILocation(line: 488, column: 17, scope: !2211)
!2218 = !DILocation(line: 488, column: 23, scope: !2211)
!2219 = !DILocation(line: 488, column: 3, scope: !2211)
!2220 = !DILocation(line: 489, column: 2, scope: !2211)
!2221 = !DILocation(line: 490, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 490, column: 6)
!2223 = !DILocation(line: 490, column: 15, scope: !2222)
!2224 = !DILocation(line: 490, column: 27, scope: !2222)
!2225 = !DILocation(line: 490, column: 6, scope: !2222)
!2226 = !DILocation(line: 490, column: 11, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2222, file: !630, discriminator: 1)
!2228 = !DILocation(line: 490, column: 17, scope: !2227)
!2229 = !DILocation(line: 490, column: 30, scope: !2227)
!2230 = !DILocation(line: 490, column: 35, scope: !2227)
!2231 = !DILocation(line: 490, column: 6, scope: !2227)
!2232 = !DILocation(line: 490, column: 10, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2222, file: !630, discriminator: 2)
!2234 = !DILocation(line: 490, column: 16, scope: !2233)
!2235 = !DILocation(line: 490, column: 29, scope: !2233)
!2236 = !DILocation(line: 490, column: 34, scope: !2233)
!2237 = !DILocation(line: 490, column: 6, scope: !2233)
!2238 = !DILocation(line: 491, column: 14, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2222, file: !630, line: 490, column: 10)
!2240 = !DILocation(line: 491, column: 45, scope: !2239)
!2241 = !DILocation(line: 491, column: 51, scope: !2239)
!2242 = !DILocation(line: 491, column: 64, scope: !2239)
!2243 = !DILocation(line: 491, column: 3, scope: !2239)
!2244 = !DILocation(line: 492, column: 13, scope: !2239)
!2245 = !DILocation(line: 492, column: 17, scope: !2239)
!2246 = !DILocation(line: 492, column: 23, scope: !2239)
!2247 = !DILocation(line: 492, column: 3, scope: !2239)
!2248 = !DILocation(line: 493, column: 2, scope: !2239)
!2249 = !DILocation(line: 501, column: 13, scope: !1619)
!2250 = !DILocation(line: 501, column: 52, scope: !1619)
!2251 = !DILocation(line: 501, column: 58, scope: !1619)
!2252 = !DILocation(line: 501, column: 2, scope: !1619)
!2253 = !DILocation(line: 503, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 503, column: 6)
!2255 = !DILocation(line: 503, column: 12, scope: !2254)
!2256 = !DILocation(line: 503, column: 6, scope: !1619)
!2257 = !DILocation(line: 504, column: 22, scope: !2254)
!2258 = !DILocation(line: 504, column: 26, scope: !2254)
!2259 = !DILocation(line: 504, column: 32, scope: !2254)
!2260 = !DILocation(line: 504, column: 3, scope: !2254)
!2261 = !DILocation(line: 505, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 505, column: 6)
!2263 = !DILocation(line: 505, column: 12, scope: !2262)
!2264 = !DILocation(line: 505, column: 6, scope: !1619)
!2265 = !DILocation(line: 506, column: 22, scope: !2262)
!2266 = !DILocation(line: 506, column: 26, scope: !2262)
!2267 = !DILocation(line: 506, column: 32, scope: !2262)
!2268 = !DILocation(line: 506, column: 3, scope: !2262)
!2269 = !DILocation(line: 507, column: 6, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 507, column: 6)
!2271 = !DILocation(line: 507, column: 12, scope: !2270)
!2272 = !DILocation(line: 507, column: 6, scope: !1619)
!2273 = !DILocation(line: 508, column: 22, scope: !2270)
!2274 = !DILocation(line: 508, column: 26, scope: !2270)
!2275 = !DILocation(line: 508, column: 32, scope: !2270)
!2276 = !DILocation(line: 508, column: 3, scope: !2270)
!2277 = !DILocation(line: 509, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 509, column: 6)
!2279 = !DILocation(line: 509, column: 12, scope: !2278)
!2280 = !DILocation(line: 509, column: 6, scope: !1619)
!2281 = !DILocation(line: 510, column: 22, scope: !2278)
!2282 = !DILocation(line: 510, column: 26, scope: !2278)
!2283 = !DILocation(line: 510, column: 32, scope: !2278)
!2284 = !DILocation(line: 510, column: 3, scope: !2278)
!2285 = !DILocation(line: 511, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 511, column: 6)
!2287 = !DILocation(line: 511, column: 12, scope: !2286)
!2288 = !DILocation(line: 511, column: 6, scope: !1619)
!2289 = !DILocation(line: 512, column: 22, scope: !2286)
!2290 = !DILocation(line: 512, column: 26, scope: !2286)
!2291 = !DILocation(line: 512, column: 32, scope: !2286)
!2292 = !DILocation(line: 512, column: 3, scope: !2286)
!2293 = !DILocation(line: 513, column: 6, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !1619, file: !630, line: 513, column: 6)
!2295 = !DILocation(line: 513, column: 12, scope: !2294)
!2296 = !DILocation(line: 513, column: 6, scope: !1619)
!2297 = !DILocation(line: 514, column: 22, scope: !2294)
!2298 = !DILocation(line: 514, column: 26, scope: !2294)
!2299 = !DILocation(line: 514, column: 32, scope: !2294)
!2300 = !DILocation(line: 514, column: 3, scope: !2294)
!2301 = !DILocation(line: 515, column: 1, scope: !1619)
!2302 = distinct !DISubprogram(name: "free_vgroup", scope: !630, file: !630, line: 101, type: !131, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2303 = !DILocalVariable(name: "data", arg: 1, scope: !2302, file: !630, line: 101, type: !79)
!2304 = !DILocation(line: 101, column: 19, scope: !2302)
!2305 = !DILocalVariable(name: "vgroup", scope: !2302, file: !630, line: 103, type: !98)
!2306 = !DILocation(line: 103, column: 17, scope: !2302)
!2307 = !DILocation(line: 103, column: 26, scope: !2302)
!2308 = !DILocation(line: 105, column: 6, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2302, file: !630, line: 105, column: 6)
!2310 = !DILocation(line: 105, column: 14, scope: !2309)
!2311 = !DILocation(line: 105, column: 6, scope: !2302)
!2312 = !DILocation(line: 106, column: 82, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !630, line: 105, column: 21)
!2314 = !DILocation(line: 106, column: 90, scope: !2313)
!2315 = !DILocation(line: 106, column: 3, scope: !2313)
!2316 = !DILocation(line: 107, column: 15, scope: !2313)
!2317 = !DILocation(line: 107, column: 23, scope: !2313)
!2318 = !DILocation(line: 107, column: 3, scope: !2313)
!2319 = !DILocation(line: 108, column: 2, scope: !2313)
!2320 = !DILocation(line: 109, column: 8, scope: !2302)
!2321 = !DILocation(line: 109, column: 16, scope: !2302)
!2322 = !DILocation(line: 109, column: 3, scope: !2302)
!2323 = !DILocation(line: 109, column: 25, scope: !2302)
!2324 = !DILocation(line: 109, column: 33, scope: !2302)
!2325 = !DILocation(line: 109, column: 40, scope: !2302)
!2326 = !DILocation(line: 110, column: 13, scope: !2302)
!2327 = !DILocation(line: 110, column: 21, scope: !2302)
!2328 = !DILocation(line: 110, column: 2, scope: !2302)
!2329 = !DILocation(line: 111, column: 22, scope: !2302)
!2330 = !DILocation(line: 111, column: 30, scope: !2302)
!2331 = !DILocation(line: 111, column: 2, scope: !2302)
!2332 = !DILocation(line: 112, column: 22, scope: !2302)
!2333 = !DILocation(line: 112, column: 30, scope: !2302)
!2334 = !DILocation(line: 112, column: 2, scope: !2302)
!2335 = !DILocation(line: 113, column: 22, scope: !2302)
!2336 = !DILocation(line: 113, column: 30, scope: !2302)
!2337 = !DILocation(line: 113, column: 2, scope: !2302)
!2338 = !DILocation(line: 114, column: 22, scope: !2302)
!2339 = !DILocation(line: 114, column: 30, scope: !2302)
!2340 = !DILocation(line: 114, column: 2, scope: !2302)
!2341 = !DILocation(line: 115, column: 22, scope: !2302)
!2342 = !DILocation(line: 115, column: 30, scope: !2302)
!2343 = !DILocation(line: 115, column: 2, scope: !2302)
!2344 = !DILocation(line: 116, column: 8, scope: !2302)
!2345 = !DILocation(line: 116, column: 3, scope: !2302)
!2346 = !DILocation(line: 116, column: 26, scope: !2302)
!2347 = !DILocation(line: 117, column: 1, scope: !2302)
!2348 = distinct !DISubprogram(name: "dump_vgroup", scope: !630, file: !630, line: 130, type: !135, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2349 = !DILocalVariable(name: "fp", arg: 1, scope: !2348, file: !630, line: 130, type: !137)
!2350 = !DILocation(line: 130, column: 19, scope: !2348)
!2351 = !DILocalVariable(name: "data", arg: 2, scope: !2348, file: !630, line: 130, type: !79)
!2352 = !DILocation(line: 130, column: 29, scope: !2348)
!2353 = !DILocalVariable(name: "vgroup", scope: !2348, file: !630, line: 132, type: !98)
!2354 = !DILocation(line: 132, column: 17, scope: !2348)
!2355 = !DILocation(line: 132, column: 26, scope: !2348)
!2356 = !DILocalVariable(name: "e", scope: !2348, file: !630, line: 133, type: !2357)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !116, line: 30, baseType: !121)
!2358 = !DILocation(line: 133, column: 10, scope: !2348)
!2359 = !DILocation(line: 135, column: 13, scope: !2348)
!2360 = !DILocation(line: 135, column: 46, scope: !2348)
!2361 = !DILocation(line: 135, column: 54, scope: !2348)
!2362 = !DILocation(line: 135, column: 75, scope: !2348)
!2363 = !DILocation(line: 135, column: 83, scope: !2348)
!2364 = !DILocation(line: 135, column: 61, scope: !2348)
!2365 = !DILocation(line: 135, column: 2, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2348, file: !630, discriminator: 1)
!2367 = !DILocation(line: 136, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2348, file: !630, line: 136, column: 6)
!2369 = !DILocation(line: 136, column: 14, scope: !2368)
!2370 = !DILocation(line: 136, column: 6, scope: !2348)
!2371 = !DILocation(line: 137, column: 14, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !630, line: 136, column: 30)
!2373 = !DILocation(line: 137, column: 53, scope: !2372)
!2374 = !DILocation(line: 137, column: 61, scope: !2372)
!2375 = !DILocation(line: 137, column: 78, scope: !2372)
!2376 = !DILocation(line: 137, column: 3, scope: !2372)
!2377 = !DILocation(line: 138, column: 15, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2372, file: !630, line: 138, column: 3)
!2379 = !DILocation(line: 138, column: 23, scope: !2378)
!2380 = !DILocation(line: 138, column: 14, scope: !2378)
!2381 = !DILocation(line: 138, column: 13, scope: !2378)
!2382 = !DILocation(line: 138, column: 13, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2378, file: !630, discriminator: 1)
!2384 = !DILocation(line: 138, column: 14, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2378, file: !630, discriminator: 2)
!2386 = !DILocation(line: 138, column: 22, scope: !2385)
!2387 = !DILocation(line: 138, column: 39, scope: !2385)
!2388 = !DILocation(line: 138, column: 13, scope: !2385)
!2389 = !DILocation(line: 138, column: 13, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2378, file: !630, discriminator: 3)
!2391 = !DILocation(line: 138, column: 10, scope: !2390)
!2392 = !DILocation(line: 138, column: 8, scope: !2390)
!2393 = !DILocation(line: 138, column: 46, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2395, file: !630, discriminator: 4)
!2395 = distinct !DILexicalBlock(scope: !2378, file: !630, line: 138, column: 3)
!2396 = !DILocation(line: 138, column: 3, scope: !2394)
!2397 = !DILocalVariable(name: "vrrp", scope: !2398, file: !630, line: 139, type: !537)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !630, line: 138, column: 68)
!2399 = !DILocation(line: 139, column: 12, scope: !2398)
!2400 = !DILocation(line: 139, column: 21, scope: !2398)
!2401 = !DILocation(line: 139, column: 25, scope: !2398)
!2402 = !DILocation(line: 139, column: 19, scope: !2398)
!2403 = !DILocation(line: 140, column: 15, scope: !2398)
!2404 = !DILocation(line: 140, column: 30, scope: !2398)
!2405 = !DILocation(line: 140, column: 36, scope: !2398)
!2406 = !DILocation(line: 140, column: 4, scope: !2398)
!2407 = !DILocation(line: 141, column: 3, scope: !2398)
!2408 = !DILocation(line: 138, column: 57, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2395, file: !630, discriminator: 5)
!2410 = !DILocation(line: 138, column: 61, scope: !2409)
!2411 = !DILocation(line: 138, column: 54, scope: !2409)
!2412 = !DILocation(line: 138, column: 3, scope: !2409)
!2413 = distinct !{!2413, !2414}
!2414 = !DILocation(line: 138, column: 3, scope: !2372)
!2415 = !DILocation(line: 142, column: 2, scope: !2372)
!2416 = !DILocation(line: 143, column: 6, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2348, file: !630, line: 143, column: 6)
!2418 = !DILocation(line: 143, column: 14, scope: !2417)
!2419 = !DILocation(line: 143, column: 6, scope: !2348)
!2420 = !DILocation(line: 144, column: 14, scope: !2417)
!2421 = !DILocation(line: 144, column: 3, scope: !2417)
!2422 = !DILocation(line: 145, column: 13, scope: !2348)
!2423 = !DILocation(line: 145, column: 52, scope: !2348)
!2424 = !DILocation(line: 145, column: 60, scope: !2348)
!2425 = !DILocation(line: 145, column: 2, scope: !2348)
!2426 = !DILocation(line: 146, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2348, file: !630, line: 146, column: 6)
!2428 = !DILocation(line: 146, column: 17, scope: !2427)
!2429 = !DILocation(line: 146, column: 28, scope: !2427)
!2430 = !DILocation(line: 146, column: 6, scope: !2427)
!2431 = !DILocation(line: 146, column: 11, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2427, file: !630, discriminator: 1)
!2433 = !DILocation(line: 146, column: 19, scope: !2432)
!2434 = !DILocation(line: 146, column: 31, scope: !2432)
!2435 = !DILocation(line: 146, column: 36, scope: !2432)
!2436 = !DILocation(line: 146, column: 6, scope: !2432)
!2437 = !DILocation(line: 146, column: 10, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !2427, file: !630, discriminator: 2)
!2439 = !DILocation(line: 146, column: 18, scope: !2438)
!2440 = !DILocation(line: 146, column: 30, scope: !2438)
!2441 = !DILocation(line: 146, column: 35, scope: !2438)
!2442 = !DILocation(line: 146, column: 6, scope: !2438)
!2443 = !DILocation(line: 147, column: 14, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2427, file: !630, line: 146, column: 10)
!2445 = !DILocation(line: 147, column: 50, scope: !2444)
!2446 = !DILocation(line: 147, column: 58, scope: !2444)
!2447 = !DILocation(line: 147, column: 70, scope: !2444)
!2448 = !DILocation(line: 147, column: 3, scope: !2444)
!2449 = !DILocation(line: 148, column: 13, scope: !2444)
!2450 = !DILocation(line: 148, column: 17, scope: !2444)
!2451 = !DILocation(line: 148, column: 25, scope: !2444)
!2452 = !DILocation(line: 148, column: 3, scope: !2444)
!2453 = !DILocation(line: 149, column: 2, scope: !2444)
!2454 = !DILocation(line: 150, column: 9, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2348, file: !630, line: 150, column: 6)
!2456 = !DILocation(line: 150, column: 17, scope: !2455)
!2457 = !DILocation(line: 150, column: 31, scope: !2455)
!2458 = !DILocation(line: 150, column: 6, scope: !2455)
!2459 = !DILocation(line: 150, column: 11, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2455, file: !630, discriminator: 1)
!2461 = !DILocation(line: 150, column: 19, scope: !2460)
!2462 = !DILocation(line: 150, column: 34, scope: !2460)
!2463 = !DILocation(line: 150, column: 39, scope: !2460)
!2464 = !DILocation(line: 150, column: 6, scope: !2460)
!2465 = !DILocation(line: 150, column: 10, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2455, file: !630, discriminator: 2)
!2467 = !DILocation(line: 150, column: 18, scope: !2466)
!2468 = !DILocation(line: 150, column: 33, scope: !2466)
!2469 = !DILocation(line: 150, column: 38, scope: !2466)
!2470 = !DILocation(line: 150, column: 6, scope: !2466)
!2471 = !DILocation(line: 151, column: 14, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2455, file: !630, line: 150, column: 10)
!2473 = !DILocation(line: 151, column: 47, scope: !2472)
!2474 = !DILocation(line: 151, column: 55, scope: !2472)
!2475 = !DILocation(line: 151, column: 70, scope: !2472)
!2476 = !DILocation(line: 151, column: 3, scope: !2472)
!2477 = !DILocation(line: 152, column: 13, scope: !2472)
!2478 = !DILocation(line: 152, column: 17, scope: !2472)
!2479 = !DILocation(line: 152, column: 25, scope: !2472)
!2480 = !DILocation(line: 152, column: 3, scope: !2472)
!2481 = !DILocation(line: 153, column: 2, scope: !2472)
!2482 = !DILocation(line: 154, column: 9, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2348, file: !630, line: 154, column: 6)
!2484 = !DILocation(line: 154, column: 17, scope: !2483)
!2485 = !DILocation(line: 154, column: 29, scope: !2483)
!2486 = !DILocation(line: 154, column: 6, scope: !2483)
!2487 = !DILocation(line: 154, column: 11, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2483, file: !630, discriminator: 1)
!2489 = !DILocation(line: 154, column: 19, scope: !2488)
!2490 = !DILocation(line: 154, column: 32, scope: !2488)
!2491 = !DILocation(line: 154, column: 37, scope: !2488)
!2492 = !DILocation(line: 154, column: 6, scope: !2488)
!2493 = !DILocation(line: 154, column: 10, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2483, file: !630, discriminator: 2)
!2495 = !DILocation(line: 154, column: 18, scope: !2494)
!2496 = !DILocation(line: 154, column: 31, scope: !2494)
!2497 = !DILocation(line: 154, column: 36, scope: !2494)
!2498 = !DILocation(line: 154, column: 6, scope: !2494)
!2499 = !DILocation(line: 155, column: 14, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2483, file: !630, line: 154, column: 10)
!2501 = !DILocation(line: 155, column: 45, scope: !2500)
!2502 = !DILocation(line: 155, column: 53, scope: !2500)
!2503 = !DILocation(line: 155, column: 66, scope: !2500)
!2504 = !DILocation(line: 155, column: 3, scope: !2500)
!2505 = !DILocation(line: 156, column: 13, scope: !2500)
!2506 = !DILocation(line: 156, column: 17, scope: !2500)
!2507 = !DILocation(line: 156, column: 25, scope: !2500)
!2508 = !DILocation(line: 156, column: 3, scope: !2500)
!2509 = !DILocation(line: 157, column: 2, scope: !2500)
!2510 = !DILocation(line: 158, column: 21, scope: !2348)
!2511 = !DILocation(line: 158, column: 25, scope: !2348)
!2512 = !DILocation(line: 158, column: 33, scope: !2348)
!2513 = !DILocation(line: 158, column: 2, scope: !2348)
!2514 = !DILocation(line: 159, column: 21, scope: !2348)
!2515 = !DILocation(line: 159, column: 25, scope: !2348)
!2516 = !DILocation(line: 159, column: 33, scope: !2348)
!2517 = !DILocation(line: 159, column: 2, scope: !2348)
!2518 = !DILocation(line: 160, column: 21, scope: !2348)
!2519 = !DILocation(line: 160, column: 25, scope: !2348)
!2520 = !DILocation(line: 160, column: 33, scope: !2348)
!2521 = !DILocation(line: 160, column: 2, scope: !2348)
!2522 = !DILocation(line: 161, column: 21, scope: !2348)
!2523 = !DILocation(line: 161, column: 25, scope: !2348)
!2524 = !DILocation(line: 161, column: 33, scope: !2348)
!2525 = !DILocation(line: 161, column: 2, scope: !2348)
!2526 = !DILocation(line: 162, column: 21, scope: !2348)
!2527 = !DILocation(line: 162, column: 25, scope: !2348)
!2528 = !DILocation(line: 162, column: 33, scope: !2348)
!2529 = !DILocation(line: 162, column: 2, scope: !2348)
!2530 = !DILocation(line: 163, column: 1, scope: !2348)
!2531 = distinct !DISubprogram(name: "free_vscript", scope: !630, file: !630, line: 175, type: !131, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2532 = !DILocalVariable(name: "data", arg: 1, scope: !2531, file: !630, line: 175, type: !79)
!2533 = !DILocation(line: 175, column: 20, scope: !2531)
!2534 = !DILocalVariable(name: "vscript", scope: !2531, file: !630, line: 177, type: !581)
!2535 = !DILocation(line: 177, column: 17, scope: !2531)
!2536 = !DILocation(line: 177, column: 27, scope: !2531)
!2537 = !DILocation(line: 179, column: 13, scope: !2531)
!2538 = !DILocation(line: 179, column: 22, scope: !2531)
!2539 = !DILocation(line: 179, column: 2, scope: !2531)
!2540 = !DILocation(line: 180, column: 8, scope: !2531)
!2541 = !DILocation(line: 180, column: 17, scope: !2531)
!2542 = !DILocation(line: 180, column: 3, scope: !2531)
!2543 = !DILocation(line: 180, column: 26, scope: !2531)
!2544 = !DILocation(line: 180, column: 35, scope: !2531)
!2545 = !DILocation(line: 180, column: 42, scope: !2531)
!2546 = !DILocation(line: 181, column: 8, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !630, line: 181, column: 8)
!2548 = distinct !DILexicalBlock(scope: !2531, file: !630, line: 181, column: 2)
!2549 = !DILocation(line: 181, column: 17, scope: !2547)
!2550 = !DILocation(line: 181, column: 24, scope: !2547)
!2551 = !DILocation(line: 181, column: 8, scope: !2548)
!2552 = !DILocation(line: 181, column: 38, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2554, file: !630, discriminator: 1)
!2554 = distinct !DILexicalBlock(scope: !2547, file: !630, line: 181, column: 30)
!2555 = !DILocation(line: 181, column: 47, scope: !2553)
!2556 = !DILocation(line: 181, column: 54, scope: !2553)
!2557 = !DILocation(line: 181, column: 33, scope: !2553)
!2558 = !DILocation(line: 181, column: 62, scope: !2553)
!2559 = !DILocation(line: 181, column: 71, scope: !2553)
!2560 = !DILocation(line: 181, column: 78, scope: !2553)
!2561 = !DILocation(line: 181, column: 84, scope: !2553)
!2562 = !DILocation(line: 181, column: 3, scope: !2553)
!2563 = !DILocation(line: 182, column: 8, scope: !2531)
!2564 = !DILocation(line: 182, column: 3, scope: !2531)
!2565 = !DILocation(line: 182, column: 28, scope: !2531)
!2566 = !DILocation(line: 183, column: 1, scope: !2531)
!2567 = distinct !DISubprogram(name: "dump_vscript", scope: !630, file: !630, line: 185, type: !135, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2568 = !DILocalVariable(name: "fp", arg: 1, scope: !2567, file: !630, line: 185, type: !137)
!2569 = !DILocation(line: 185, column: 20, scope: !2567)
!2570 = !DILocalVariable(name: "data", arg: 2, scope: !2567, file: !630, line: 185, type: !79)
!2571 = !DILocation(line: 185, column: 30, scope: !2567)
!2572 = !DILocalVariable(name: "vscript", scope: !2567, file: !630, line: 187, type: !581)
!2573 = !DILocation(line: 187, column: 17, scope: !2567)
!2574 = !DILocation(line: 187, column: 27, scope: !2567)
!2575 = !DILocalVariable(name: "str", scope: !2567, file: !630, line: 188, type: !2576)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64, align: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2578 = !DILocation(line: 188, column: 14, scope: !2567)
!2579 = !DILocation(line: 190, column: 13, scope: !2567)
!2580 = !DILocation(line: 190, column: 38, scope: !2567)
!2581 = !DILocation(line: 190, column: 47, scope: !2567)
!2582 = !DILocation(line: 190, column: 2, scope: !2567)
!2583 = !DILocation(line: 191, column: 13, scope: !2567)
!2584 = !DILocation(line: 191, column: 45, scope: !2567)
!2585 = !DILocation(line: 191, column: 54, scope: !2567)
!2586 = !DILocation(line: 191, column: 36, scope: !2567)
!2587 = !DILocation(line: 191, column: 2, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2567, file: !630, discriminator: 1)
!2589 = !DILocation(line: 192, column: 13, scope: !2567)
!2590 = !DILocation(line: 192, column: 42, scope: !2567)
!2591 = !DILocation(line: 192, column: 51, scope: !2567)
!2592 = !DILocation(line: 192, column: 60, scope: !2567)
!2593 = !DILocation(line: 192, column: 2, scope: !2567)
!2594 = !DILocation(line: 193, column: 13, scope: !2567)
!2595 = !DILocation(line: 193, column: 41, scope: !2567)
!2596 = !DILocation(line: 193, column: 50, scope: !2567)
!2597 = !DILocation(line: 193, column: 58, scope: !2567)
!2598 = !DILocation(line: 193, column: 2, scope: !2567)
!2599 = !DILocation(line: 194, column: 13, scope: !2567)
!2600 = !DILocation(line: 194, column: 35, scope: !2567)
!2601 = !DILocation(line: 194, column: 44, scope: !2567)
!2602 = !DILocation(line: 194, column: 2, scope: !2567)
!2603 = !DILocation(line: 195, column: 13, scope: !2567)
!2604 = !DILocation(line: 195, column: 33, scope: !2567)
!2605 = !DILocation(line: 195, column: 42, scope: !2567)
!2606 = !DILocation(line: 195, column: 2, scope: !2567)
!2607 = !DILocation(line: 196, column: 13, scope: !2567)
!2608 = !DILocation(line: 196, column: 33, scope: !2567)
!2609 = !DILocation(line: 196, column: 42, scope: !2567)
!2610 = !DILocation(line: 196, column: 2, scope: !2567)
!2611 = !DILocation(line: 197, column: 13, scope: !2567)
!2612 = !DILocation(line: 197, column: 37, scope: !2567)
!2613 = !DILocation(line: 197, column: 46, scope: !2567)
!2614 = !DILocation(line: 197, column: 2, scope: !2567)
!2615 = !DILocation(line: 199, column: 10, scope: !2567)
!2616 = !DILocation(line: 199, column: 19, scope: !2567)
!2617 = !DILocation(line: 199, column: 2, scope: !2567)
!2618 = !DILocation(line: 201, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2567, file: !630, line: 199, column: 31)
!2620 = !DILocation(line: 201, column: 17, scope: !2619)
!2621 = !DILocation(line: 203, column: 7, scope: !2619)
!2622 = !DILocation(line: 203, column: 24, scope: !2619)
!2623 = !DILocation(line: 205, column: 10, scope: !2619)
!2624 = !DILocation(line: 205, column: 19, scope: !2619)
!2625 = !DILocation(line: 205, column: 29, scope: !2619)
!2626 = !DILocation(line: 205, column: 38, scope: !2619)
!2627 = !DILocation(line: 205, column: 26, scope: !2619)
!2628 = !DILocation(line: 205, column: 9, scope: !2619)
!2629 = !DILocation(line: 205, column: 7, scope: !2619)
!2630 = !DILocation(line: 206, column: 2, scope: !2619)
!2631 = !DILocation(line: 207, column: 13, scope: !2567)
!2632 = !DILocation(line: 207, column: 35, scope: !2567)
!2633 = !DILocation(line: 207, column: 2, scope: !2567)
!2634 = !DILocation(line: 208, column: 13, scope: !2567)
!2635 = !DILocation(line: 208, column: 46, scope: !2567)
!2636 = !DILocation(line: 208, column: 55, scope: !2567)
!2637 = !DILocation(line: 208, column: 62, scope: !2567)
!2638 = !DILocation(line: 208, column: 67, scope: !2567)
!2639 = !DILocation(line: 208, column: 76, scope: !2567)
!2640 = !DILocation(line: 208, column: 83, scope: !2567)
!2641 = !DILocation(line: 208, column: 2, scope: !2567)
!2642 = !DILocation(line: 209, column: 13, scope: !2567)
!2643 = !DILocation(line: 209, column: 43, scope: !2567)
!2644 = !DILocation(line: 209, column: 52, scope: !2567)
!2645 = !DILocation(line: 209, column: 70, scope: !2588)
!2646 = !DILocation(line: 209, column: 79, scope: !2588)
!2647 = !DILocation(line: 209, column: 95, scope: !2588)
!2648 = !DILocation(line: 209, column: 43, scope: !2588)
!2649 = !DILocation(line: 209, column: 43, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2567, file: !630, discriminator: 2)
!2651 = !DILocation(line: 209, column: 43, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2567, file: !630, discriminator: 3)
!2653 = !DILocation(line: 209, column: 2, scope: !2652)
!2654 = !DILocation(line: 210, column: 6, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2567, file: !630, line: 210, column: 6)
!2656 = !DILocation(line: 210, column: 15, scope: !2655)
!2657 = !DILocation(line: 210, column: 6, scope: !2567)
!2658 = !DILocation(line: 211, column: 13, scope: !2655)
!2659 = !DILocation(line: 211, column: 17, scope: !2655)
!2660 = !DILocation(line: 211, column: 26, scope: !2655)
!2661 = !DILocation(line: 211, column: 3, scope: !2655)
!2662 = !DILocation(line: 212, column: 13, scope: !2567)
!2663 = !DILocation(line: 213, column: 4, scope: !2567)
!2664 = !DILocation(line: 213, column: 13, scope: !2567)
!2665 = !DILocation(line: 213, column: 19, scope: !2567)
!2666 = !DILocation(line: 213, column: 4, scope: !2588)
!2667 = !DILocation(line: 214, column: 4, scope: !2567)
!2668 = !DILocation(line: 214, column: 13, scope: !2567)
!2669 = !DILocation(line: 214, column: 19, scope: !2567)
!2670 = !DILocation(line: 214, column: 4, scope: !2588)
!2671 = !DILocation(line: 215, column: 4, scope: !2567)
!2672 = !DILocation(line: 215, column: 13, scope: !2567)
!2673 = !DILocation(line: 215, column: 19, scope: !2567)
!2674 = !DILocation(line: 215, column: 4, scope: !2588)
!2675 = !DILocation(line: 216, column: 4, scope: !2567)
!2676 = !DILocation(line: 216, column: 13, scope: !2567)
!2677 = !DILocation(line: 216, column: 19, scope: !2567)
!2678 = !DILocation(line: 215, column: 4, scope: !2650)
!2679 = !DILocation(line: 215, column: 4, scope: !2652)
!2680 = !DILocation(line: 214, column: 4, scope: !2650)
!2681 = !DILocation(line: 214, column: 4, scope: !2652)
!2682 = !DILocation(line: 213, column: 4, scope: !2650)
!2683 = !DILocation(line: 213, column: 4, scope: !2652)
!2684 = !DILocation(line: 212, column: 2, scope: !2588)
!2685 = !DILocation(line: 217, column: 1, scope: !2567)
!2686 = distinct !DISubprogram(name: "free_vfile", scope: !630, file: !630, line: 220, type: !131, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2687 = !DILocalVariable(name: "data", arg: 1, scope: !2686, file: !630, line: 220, type: !79)
!2688 = !DILocation(line: 220, column: 18, scope: !2686)
!2689 = !DILocalVariable(name: "vfile", scope: !2686, file: !630, line: 222, type: !600)
!2690 = !DILocation(line: 222, column: 23, scope: !2686)
!2691 = !DILocation(line: 222, column: 31, scope: !2686)
!2692 = !DILocation(line: 224, column: 13, scope: !2686)
!2693 = !DILocation(line: 224, column: 20, scope: !2686)
!2694 = !DILocation(line: 224, column: 2, scope: !2686)
!2695 = !DILocation(line: 225, column: 8, scope: !2686)
!2696 = !DILocation(line: 225, column: 15, scope: !2686)
!2697 = !DILocation(line: 225, column: 3, scope: !2686)
!2698 = !DILocation(line: 225, column: 24, scope: !2686)
!2699 = !DILocation(line: 225, column: 31, scope: !2686)
!2700 = !DILocation(line: 225, column: 38, scope: !2686)
!2701 = !DILocation(line: 226, column: 8, scope: !2686)
!2702 = !DILocation(line: 226, column: 15, scope: !2686)
!2703 = !DILocation(line: 226, column: 3, scope: !2686)
!2704 = !DILocation(line: 226, column: 28, scope: !2686)
!2705 = !DILocation(line: 226, column: 35, scope: !2686)
!2706 = !DILocation(line: 226, column: 46, scope: !2686)
!2707 = !DILocation(line: 227, column: 8, scope: !2686)
!2708 = !DILocation(line: 227, column: 3, scope: !2686)
!2709 = !DILocation(line: 227, column: 24, scope: !2686)
!2710 = !DILocation(line: 228, column: 1, scope: !2686)
!2711 = distinct !DISubprogram(name: "dump_vfile", scope: !630, file: !630, line: 230, type: !135, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2712 = !DILocalVariable(name: "fp", arg: 1, scope: !2711, file: !630, line: 230, type: !137)
!2713 = !DILocation(line: 230, column: 18, scope: !2711)
!2714 = !DILocalVariable(name: "data", arg: 2, scope: !2711, file: !630, line: 230, type: !79)
!2715 = !DILocation(line: 230, column: 28, scope: !2711)
!2716 = !DILocalVariable(name: "vfile", scope: !2711, file: !630, line: 232, type: !600)
!2717 = !DILocation(line: 232, column: 23, scope: !2711)
!2718 = !DILocation(line: 232, column: 31, scope: !2711)
!2719 = !DILocation(line: 234, column: 13, scope: !2711)
!2720 = !DILocation(line: 234, column: 42, scope: !2711)
!2721 = !DILocation(line: 234, column: 49, scope: !2711)
!2722 = !DILocation(line: 234, column: 2, scope: !2711)
!2723 = !DILocation(line: 235, column: 13, scope: !2711)
!2724 = !DILocation(line: 235, column: 33, scope: !2711)
!2725 = !DILocation(line: 235, column: 40, scope: !2711)
!2726 = !DILocation(line: 235, column: 2, scope: !2711)
!2727 = !DILocation(line: 236, column: 13, scope: !2711)
!2728 = !DILocation(line: 236, column: 35, scope: !2711)
!2729 = !DILocation(line: 236, column: 42, scope: !2711)
!2730 = !DILocation(line: 236, column: 2, scope: !2711)
!2731 = !DILocation(line: 237, column: 13, scope: !2711)
!2732 = !DILocation(line: 237, column: 52, scope: !2711)
!2733 = !DILocation(line: 237, column: 59, scope: !2711)
!2734 = !DILocation(line: 237, column: 77, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2711, file: !630, discriminator: 1)
!2736 = !DILocation(line: 237, column: 84, scope: !2735)
!2737 = !DILocation(line: 237, column: 100, scope: !2735)
!2738 = !DILocation(line: 237, column: 52, scope: !2735)
!2739 = !DILocation(line: 237, column: 52, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2711, file: !630, discriminator: 2)
!2741 = !DILocation(line: 237, column: 52, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2711, file: !630, discriminator: 3)
!2743 = !DILocation(line: 237, column: 2, scope: !2742)
!2744 = !DILocation(line: 238, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2711, file: !630, line: 238, column: 6)
!2746 = !DILocation(line: 238, column: 13, scope: !2745)
!2747 = !DILocation(line: 238, column: 6, scope: !2711)
!2748 = !DILocation(line: 239, column: 13, scope: !2745)
!2749 = !DILocation(line: 239, column: 17, scope: !2745)
!2750 = !DILocation(line: 239, column: 24, scope: !2745)
!2751 = !DILocation(line: 239, column: 3, scope: !2745)
!2752 = !DILocation(line: 240, column: 1, scope: !2711)
!2753 = distinct !DISubprogram(name: "free_sock", scope: !630, file: !630, line: 268, type: !131, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2754 = !DILocalVariable(name: "sock_data", arg: 1, scope: !2753, file: !630, line: 268, type: !79)
!2755 = !DILocation(line: 268, column: 17, scope: !2753)
!2756 = !DILocalVariable(name: "sock", scope: !2753, file: !630, line: 270, type: !400)
!2757 = !DILocation(line: 270, column: 10, scope: !2753)
!2758 = !DILocation(line: 270, column: 17, scope: !2753)
!2759 = !DILocation(line: 273, column: 16, scope: !2753)
!2760 = !DILocation(line: 273, column: 22, scope: !2753)
!2761 = !DILocation(line: 273, column: 2, scope: !2753)
!2762 = !DILocation(line: 276, column: 6, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2753, file: !630, line: 276, column: 6)
!2764 = !DILocation(line: 276, column: 12, scope: !2763)
!2765 = !DILocation(line: 276, column: 18, scope: !2763)
!2766 = !DILocation(line: 276, column: 6, scope: !2753)
!2767 = !DILocation(line: 277, column: 9, scope: !2763)
!2768 = !DILocation(line: 277, column: 15, scope: !2763)
!2769 = !DILocation(line: 277, column: 3, scope: !2763)
!2770 = !DILocation(line: 278, column: 6, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2753, file: !630, line: 278, column: 6)
!2772 = !DILocation(line: 278, column: 12, scope: !2771)
!2773 = !DILocation(line: 278, column: 19, scope: !2771)
!2774 = !DILocation(line: 278, column: 6, scope: !2753)
!2775 = !DILocation(line: 279, column: 9, scope: !2771)
!2776 = !DILocation(line: 279, column: 15, scope: !2771)
!2777 = !DILocation(line: 279, column: 3, scope: !2771)
!2778 = !DILocation(line: 280, column: 8, scope: !2753)
!2779 = !DILocation(line: 280, column: 3, scope: !2753)
!2780 = !DILocation(line: 280, column: 32, scope: !2753)
!2781 = !DILocation(line: 281, column: 1, scope: !2753)
!2782 = distinct !DISubprogram(name: "dump_sock", scope: !630, file: !630, line: 284, type: !135, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2783 = !DILocalVariable(name: "fp", arg: 1, scope: !2782, file: !630, line: 284, type: !137)
!2784 = !DILocation(line: 284, column: 17, scope: !2782)
!2785 = !DILocalVariable(name: "sock_data", arg: 2, scope: !2782, file: !630, line: 284, type: !79)
!2786 = !DILocation(line: 284, column: 27, scope: !2782)
!2787 = !DILocalVariable(name: "sock", scope: !2782, file: !630, line: 286, type: !400)
!2788 = !DILocation(line: 286, column: 10, scope: !2782)
!2789 = !DILocation(line: 286, column: 17, scope: !2782)
!2790 = !DILocation(line: 287, column: 13, scope: !2782)
!2791 = !DILocation(line: 288, column: 10, scope: !2782)
!2792 = !DILocation(line: 288, column: 16, scope: !2782)
!2793 = !DILocation(line: 289, column: 10, scope: !2782)
!2794 = !DILocation(line: 289, column: 16, scope: !2782)
!2795 = !DILocation(line: 289, column: 23, scope: !2782)
!2796 = !DILocation(line: 289, column: 10, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2782, file: !630, discriminator: 1)
!2798 = !DILocation(line: 289, column: 44, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2782, file: !630, discriminator: 2)
!2800 = !DILocation(line: 289, column: 50, scope: !2799)
!2801 = !DILocation(line: 289, column: 57, scope: !2799)
!2802 = !DILocation(line: 289, column: 10, scope: !2799)
!2803 = !DILocation(line: 289, column: 10, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2782, file: !630, discriminator: 3)
!2805 = !DILocation(line: 290, column: 10, scope: !2782)
!2806 = !DILocation(line: 290, column: 16, scope: !2782)
!2807 = !DILocation(line: 291, column: 10, scope: !2782)
!2808 = !DILocation(line: 291, column: 16, scope: !2782)
!2809 = !DILocation(line: 292, column: 10, scope: !2782)
!2810 = !DILocation(line: 292, column: 16, scope: !2782)
!2811 = !DILocation(line: 293, column: 10, scope: !2782)
!2812 = !DILocation(line: 293, column: 16, scope: !2782)
!2813 = !DILocation(line: 287, column: 2, scope: !2797)
!2814 = !DILocation(line: 294, column: 1, scope: !2782)
!2815 = distinct !DISubprogram(name: "free_vrrp_data", scope: !630, file: !630, line: 874, type: !2816, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !611}
!2818 = !DILocalVariable(name: "data", arg: 1, scope: !2815, file: !630, line: 874, type: !611)
!2819 = !DILocation(line: 874, column: 30, scope: !2815)
!2820 = !DILocation(line: 876, column: 13, scope: !2815)
!2821 = !DILocation(line: 876, column: 19, scope: !2815)
!2822 = !DILocation(line: 876, column: 2, scope: !2815)
!2823 = !DILocation(line: 878, column: 13, scope: !2815)
!2824 = !DILocation(line: 878, column: 19, scope: !2815)
!2825 = !DILocation(line: 878, column: 2, scope: !2815)
!2826 = !DILocation(line: 879, column: 13, scope: !2815)
!2827 = !DILocation(line: 879, column: 19, scope: !2815)
!2828 = !DILocation(line: 879, column: 2, scope: !2815)
!2829 = !DILocation(line: 881, column: 13, scope: !2815)
!2830 = !DILocation(line: 881, column: 19, scope: !2815)
!2831 = !DILocation(line: 881, column: 2, scope: !2815)
!2832 = !DILocation(line: 882, column: 13, scope: !2815)
!2833 = !DILocation(line: 882, column: 19, scope: !2815)
!2834 = !DILocation(line: 882, column: 2, scope: !2815)
!2835 = !DILocation(line: 883, column: 13, scope: !2815)
!2836 = !DILocation(line: 883, column: 19, scope: !2815)
!2837 = !DILocation(line: 883, column: 2, scope: !2815)
!2838 = !DILocation(line: 884, column: 13, scope: !2815)
!2839 = !DILocation(line: 884, column: 19, scope: !2815)
!2840 = !DILocation(line: 884, column: 2, scope: !2815)
!2841 = !DILocation(line: 885, column: 13, scope: !2815)
!2842 = !DILocation(line: 885, column: 19, scope: !2815)
!2843 = !DILocation(line: 885, column: 2, scope: !2815)
!2844 = !DILocation(line: 886, column: 13, scope: !2815)
!2845 = !DILocation(line: 886, column: 19, scope: !2815)
!2846 = !DILocation(line: 886, column: 2, scope: !2815)
!2847 = !DILocation(line: 887, column: 13, scope: !2815)
!2848 = !DILocation(line: 887, column: 19, scope: !2815)
!2849 = !DILocation(line: 887, column: 2, scope: !2815)
!2850 = !DILocation(line: 891, column: 8, scope: !2815)
!2851 = !DILocation(line: 891, column: 3, scope: !2815)
!2852 = !DILocation(line: 891, column: 22, scope: !2815)
!2853 = !DILocation(line: 892, column: 1, scope: !2815)
!2854 = distinct !DISubprogram(name: "dump_data_vrrp", scope: !630, file: !630, line: 940, type: !2855, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !137}
!2857 = !DILocalVariable(name: "fp", arg: 1, scope: !2854, file: !630, line: 940, type: !137)
!2858 = !DILocation(line: 940, column: 22, scope: !2854)
!2859 = !DILocalVariable(name: "ifl", scope: !2854, file: !630, line: 942, type: !115)
!2860 = !DILocation(line: 942, column: 7, scope: !2854)
!2861 = !DILocation(line: 944, column: 19, scope: !2854)
!2862 = !DILocation(line: 944, column: 23, scope: !2854)
!2863 = !DILocation(line: 944, column: 2, scope: !2854)
!2864 = !DILocation(line: 946, column: 9, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2854, file: !630, line: 946, column: 6)
!2866 = !DILocation(line: 946, column: 21, scope: !2865)
!2867 = !DILocation(line: 946, column: 6, scope: !2865)
!2868 = !DILocation(line: 946, column: 11, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2865, file: !630, discriminator: 1)
!2870 = !DILocation(line: 946, column: 24, scope: !2869)
!2871 = !DILocation(line: 946, column: 29, scope: !2869)
!2872 = !DILocation(line: 946, column: 6, scope: !2869)
!2873 = !DILocation(line: 946, column: 10, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2865, file: !630, discriminator: 2)
!2875 = !DILocation(line: 946, column: 23, scope: !2874)
!2876 = !DILocation(line: 946, column: 28, scope: !2874)
!2877 = !DILocation(line: 946, column: 6, scope: !2874)
!2878 = !DILocation(line: 947, column: 14, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2865, file: !630, line: 946, column: 10)
!2880 = !DILocation(line: 947, column: 3, scope: !2879)
!2881 = !DILocation(line: 948, column: 13, scope: !2879)
!2882 = !DILocation(line: 948, column: 17, scope: !2879)
!2883 = !DILocation(line: 948, column: 3, scope: !2879)
!2884 = !DILocation(line: 949, column: 2, scope: !2879)
!2885 = !DILocation(line: 951, column: 17, scope: !2854)
!2886 = !DILocation(line: 951, column: 21, scope: !2854)
!2887 = !DILocation(line: 951, column: 2, scope: !2854)
!2888 = !DILocation(line: 953, column: 8, scope: !2854)
!2889 = !DILocation(line: 953, column: 6, scope: !2854)
!2890 = !DILocation(line: 954, column: 9, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2854, file: !630, line: 954, column: 6)
!2892 = !DILocation(line: 954, column: 14, scope: !2891)
!2893 = !DILocation(line: 954, column: 6, scope: !2891)
!2894 = !DILocation(line: 954, column: 11, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2891, file: !630, discriminator: 1)
!2896 = !DILocation(line: 954, column: 17, scope: !2895)
!2897 = !DILocation(line: 954, column: 22, scope: !2895)
!2898 = !DILocation(line: 954, column: 6, scope: !2895)
!2899 = !DILocation(line: 954, column: 10, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2891, file: !630, discriminator: 2)
!2901 = !DILocation(line: 954, column: 16, scope: !2900)
!2902 = !DILocation(line: 954, column: 21, scope: !2900)
!2903 = !DILocation(line: 954, column: 6, scope: !2900)
!2904 = !DILocation(line: 955, column: 14, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2891, file: !630, line: 954, column: 10)
!2906 = !DILocation(line: 955, column: 3, scope: !2905)
!2907 = !DILocation(line: 956, column: 13, scope: !2905)
!2908 = !DILocation(line: 956, column: 17, scope: !2905)
!2909 = !DILocation(line: 956, column: 3, scope: !2905)
!2910 = !DILocation(line: 957, column: 2, scope: !2905)
!2911 = !DILocation(line: 959, column: 2, scope: !2854)
!2912 = !DILocation(line: 960, column: 1, scope: !2854)
!2913 = distinct !DISubprogram(name: "dump_vrrp_data", scope: !630, file: !630, line: 895, type: !2914, isLocal: true, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !137, !611}
!2916 = !DILocalVariable(name: "fp", arg: 1, scope: !2913, file: !630, line: 895, type: !137)
!2917 = !DILocation(line: 895, column: 22, scope: !2913)
!2918 = !DILocalVariable(name: "data", arg: 2, scope: !2913, file: !630, line: 895, type: !611)
!2919 = !DILocation(line: 895, column: 40, scope: !2913)
!2920 = !DILocation(line: 897, column: 9, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 897, column: 6)
!2922 = !DILocation(line: 897, column: 15, scope: !2921)
!2923 = !DILocation(line: 897, column: 33, scope: !2921)
!2924 = !DILocation(line: 897, column: 6, scope: !2921)
!2925 = !DILocation(line: 897, column: 11, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2921, file: !630, discriminator: 1)
!2927 = !DILocation(line: 897, column: 17, scope: !2926)
!2928 = !DILocation(line: 897, column: 36, scope: !2926)
!2929 = !DILocation(line: 897, column: 41, scope: !2926)
!2930 = !DILocation(line: 897, column: 6, scope: !2926)
!2931 = !DILocation(line: 897, column: 10, scope: !2932)
!2932 = !DILexicalBlockFile(scope: !2921, file: !630, discriminator: 2)
!2933 = !DILocation(line: 897, column: 16, scope: !2932)
!2934 = !DILocation(line: 897, column: 35, scope: !2932)
!2935 = !DILocation(line: 897, column: 40, scope: !2932)
!2936 = !DILocation(line: 897, column: 6, scope: !2932)
!2937 = !DILocation(line: 898, column: 14, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2921, file: !630, line: 897, column: 10)
!2939 = !DILocation(line: 898, column: 3, scope: !2938)
!2940 = !DILocation(line: 899, column: 13, scope: !2938)
!2941 = !DILocation(line: 899, column: 17, scope: !2938)
!2942 = !DILocation(line: 899, column: 23, scope: !2938)
!2943 = !DILocation(line: 899, column: 3, scope: !2938)
!2944 = !DILocation(line: 900, column: 2, scope: !2938)
!2945 = !DILocation(line: 902, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 902, column: 6)
!2947 = !DILocation(line: 902, column: 15, scope: !2946)
!2948 = !DILocation(line: 902, column: 30, scope: !2946)
!2949 = !DILocation(line: 902, column: 6, scope: !2946)
!2950 = !DILocation(line: 902, column: 11, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2946, file: !630, discriminator: 1)
!2952 = !DILocation(line: 902, column: 17, scope: !2951)
!2953 = !DILocation(line: 902, column: 33, scope: !2951)
!2954 = !DILocation(line: 902, column: 38, scope: !2951)
!2955 = !DILocation(line: 902, column: 6, scope: !2951)
!2956 = !DILocation(line: 902, column: 10, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2946, file: !630, discriminator: 2)
!2958 = !DILocation(line: 902, column: 16, scope: !2957)
!2959 = !DILocation(line: 902, column: 32, scope: !2957)
!2960 = !DILocation(line: 902, column: 37, scope: !2957)
!2961 = !DILocation(line: 902, column: 6, scope: !2957)
!2962 = !DILocation(line: 903, column: 14, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2946, file: !630, line: 902, column: 10)
!2964 = !DILocation(line: 903, column: 3, scope: !2963)
!2965 = !DILocation(line: 904, column: 13, scope: !2963)
!2966 = !DILocation(line: 904, column: 17, scope: !2963)
!2967 = !DILocation(line: 904, column: 23, scope: !2963)
!2968 = !DILocation(line: 904, column: 3, scope: !2963)
!2969 = !DILocation(line: 905, column: 2, scope: !2963)
!2970 = !DILocation(line: 906, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 906, column: 6)
!2972 = !DILocation(line: 906, column: 15, scope: !2971)
!2973 = !DILocation(line: 906, column: 29, scope: !2971)
!2974 = !DILocation(line: 906, column: 6, scope: !2971)
!2975 = !DILocation(line: 906, column: 11, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2971, file: !630, discriminator: 1)
!2977 = !DILocation(line: 906, column: 17, scope: !2976)
!2978 = !DILocation(line: 906, column: 32, scope: !2976)
!2979 = !DILocation(line: 906, column: 37, scope: !2976)
!2980 = !DILocation(line: 906, column: 6, scope: !2976)
!2981 = !DILocation(line: 906, column: 10, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2971, file: !630, discriminator: 2)
!2983 = !DILocation(line: 906, column: 16, scope: !2982)
!2984 = !DILocation(line: 906, column: 31, scope: !2982)
!2985 = !DILocation(line: 906, column: 36, scope: !2982)
!2986 = !DILocation(line: 906, column: 6, scope: !2982)
!2987 = !DILocation(line: 907, column: 14, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2971, file: !630, line: 906, column: 10)
!2989 = !DILocation(line: 907, column: 3, scope: !2988)
!2990 = !DILocation(line: 908, column: 13, scope: !2988)
!2991 = !DILocation(line: 908, column: 17, scope: !2988)
!2992 = !DILocation(line: 908, column: 23, scope: !2988)
!2993 = !DILocation(line: 908, column: 3, scope: !2988)
!2994 = !DILocation(line: 909, column: 2, scope: !2988)
!2995 = !DILocation(line: 911, column: 9, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 911, column: 6)
!2997 = !DILocation(line: 911, column: 15, scope: !2996)
!2998 = !DILocation(line: 911, column: 36, scope: !2996)
!2999 = !DILocation(line: 911, column: 6, scope: !2996)
!3000 = !DILocation(line: 911, column: 11, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !2996, file: !630, discriminator: 1)
!3002 = !DILocation(line: 911, column: 17, scope: !3001)
!3003 = !DILocation(line: 911, column: 39, scope: !3001)
!3004 = !DILocation(line: 911, column: 44, scope: !3001)
!3005 = !DILocation(line: 911, column: 6, scope: !3001)
!3006 = !DILocation(line: 911, column: 10, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !2996, file: !630, discriminator: 2)
!3008 = !DILocation(line: 911, column: 16, scope: !3007)
!3009 = !DILocation(line: 911, column: 38, scope: !3007)
!3010 = !DILocation(line: 911, column: 43, scope: !3007)
!3011 = !DILocation(line: 911, column: 6, scope: !3007)
!3012 = !DILocation(line: 912, column: 14, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2996, file: !630, line: 911, column: 10)
!3014 = !DILocation(line: 912, column: 3, scope: !3013)
!3015 = !DILocation(line: 913, column: 13, scope: !3013)
!3016 = !DILocation(line: 913, column: 17, scope: !3013)
!3017 = !DILocation(line: 913, column: 23, scope: !3013)
!3018 = !DILocation(line: 913, column: 3, scope: !3013)
!3019 = !DILocation(line: 914, column: 2, scope: !3013)
!3020 = !DILocation(line: 915, column: 9, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 915, column: 6)
!3022 = !DILocation(line: 915, column: 15, scope: !3021)
!3023 = !DILocation(line: 915, column: 21, scope: !3021)
!3024 = !DILocation(line: 915, column: 6, scope: !3021)
!3025 = !DILocation(line: 915, column: 11, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !3021, file: !630, discriminator: 1)
!3027 = !DILocation(line: 915, column: 17, scope: !3026)
!3028 = !DILocation(line: 915, column: 24, scope: !3026)
!3029 = !DILocation(line: 915, column: 29, scope: !3026)
!3030 = !DILocation(line: 915, column: 6, scope: !3026)
!3031 = !DILocation(line: 915, column: 10, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !3021, file: !630, discriminator: 2)
!3033 = !DILocation(line: 915, column: 16, scope: !3032)
!3034 = !DILocation(line: 915, column: 23, scope: !3032)
!3035 = !DILocation(line: 915, column: 28, scope: !3032)
!3036 = !DILocation(line: 915, column: 6, scope: !3032)
!3037 = !DILocation(line: 916, column: 14, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3021, file: !630, line: 915, column: 10)
!3039 = !DILocation(line: 916, column: 3, scope: !3038)
!3040 = !DILocation(line: 917, column: 13, scope: !3038)
!3041 = !DILocation(line: 917, column: 17, scope: !3038)
!3042 = !DILocation(line: 917, column: 23, scope: !3038)
!3043 = !DILocation(line: 917, column: 3, scope: !3038)
!3044 = !DILocation(line: 918, column: 2, scope: !3038)
!3045 = !DILocation(line: 919, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 919, column: 6)
!3047 = !DILocation(line: 919, column: 15, scope: !3046)
!3048 = !DILocation(line: 919, column: 32, scope: !3046)
!3049 = !DILocation(line: 919, column: 6, scope: !3046)
!3050 = !DILocation(line: 919, column: 11, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3046, file: !630, discriminator: 1)
!3052 = !DILocation(line: 919, column: 17, scope: !3051)
!3053 = !DILocation(line: 919, column: 35, scope: !3051)
!3054 = !DILocation(line: 919, column: 40, scope: !3051)
!3055 = !DILocation(line: 919, column: 6, scope: !3051)
!3056 = !DILocation(line: 919, column: 10, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3046, file: !630, discriminator: 2)
!3058 = !DILocation(line: 919, column: 16, scope: !3057)
!3059 = !DILocation(line: 919, column: 34, scope: !3057)
!3060 = !DILocation(line: 919, column: 39, scope: !3057)
!3061 = !DILocation(line: 919, column: 6, scope: !3057)
!3062 = !DILocation(line: 920, column: 14, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3046, file: !630, line: 919, column: 10)
!3064 = !DILocation(line: 920, column: 3, scope: !3063)
!3065 = !DILocation(line: 921, column: 13, scope: !3063)
!3066 = !DILocation(line: 921, column: 17, scope: !3063)
!3067 = !DILocation(line: 921, column: 23, scope: !3063)
!3068 = !DILocation(line: 921, column: 3, scope: !3063)
!3069 = !DILocation(line: 922, column: 2, scope: !3063)
!3070 = !DILocation(line: 923, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 923, column: 6)
!3072 = !DILocation(line: 923, column: 15, scope: !3071)
!3073 = !DILocation(line: 923, column: 28, scope: !3071)
!3074 = !DILocation(line: 923, column: 6, scope: !3071)
!3075 = !DILocation(line: 923, column: 11, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3071, file: !630, discriminator: 1)
!3077 = !DILocation(line: 923, column: 17, scope: !3076)
!3078 = !DILocation(line: 923, column: 31, scope: !3076)
!3079 = !DILocation(line: 923, column: 36, scope: !3076)
!3080 = !DILocation(line: 923, column: 6, scope: !3076)
!3081 = !DILocation(line: 923, column: 10, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3071, file: !630, discriminator: 2)
!3083 = !DILocation(line: 923, column: 16, scope: !3082)
!3084 = !DILocation(line: 923, column: 30, scope: !3082)
!3085 = !DILocation(line: 923, column: 35, scope: !3082)
!3086 = !DILocation(line: 923, column: 6, scope: !3082)
!3087 = !DILocation(line: 924, column: 14, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3071, file: !630, line: 923, column: 10)
!3089 = !DILocation(line: 924, column: 3, scope: !3088)
!3090 = !DILocation(line: 925, column: 13, scope: !3088)
!3091 = !DILocation(line: 925, column: 17, scope: !3088)
!3092 = !DILocation(line: 925, column: 23, scope: !3088)
!3093 = !DILocation(line: 925, column: 3, scope: !3088)
!3094 = !DILocation(line: 926, column: 2, scope: !3088)
!3095 = !DILocation(line: 927, column: 9, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2913, file: !630, line: 927, column: 6)
!3097 = !DILocation(line: 927, column: 15, scope: !3096)
!3098 = !DILocation(line: 927, column: 33, scope: !3096)
!3099 = !DILocation(line: 927, column: 6, scope: !3096)
!3100 = !DILocation(line: 927, column: 11, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3096, file: !630, discriminator: 1)
!3102 = !DILocation(line: 927, column: 17, scope: !3101)
!3103 = !DILocation(line: 927, column: 36, scope: !3101)
!3104 = !DILocation(line: 927, column: 41, scope: !3101)
!3105 = !DILocation(line: 927, column: 6, scope: !3101)
!3106 = !DILocation(line: 927, column: 10, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3096, file: !630, discriminator: 2)
!3108 = !DILocation(line: 927, column: 16, scope: !3107)
!3109 = !DILocation(line: 927, column: 35, scope: !3107)
!3110 = !DILocation(line: 927, column: 40, scope: !3107)
!3111 = !DILocation(line: 927, column: 6, scope: !3107)
!3112 = !DILocation(line: 928, column: 14, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3096, file: !630, line: 927, column: 10)
!3114 = !DILocation(line: 928, column: 3, scope: !3113)
!3115 = !DILocation(line: 929, column: 13, scope: !3113)
!3116 = !DILocation(line: 929, column: 17, scope: !3113)
!3117 = !DILocation(line: 929, column: 23, scope: !3113)
!3118 = !DILocation(line: 929, column: 3, scope: !3113)
!3119 = !DILocation(line: 930, column: 2, scope: !3113)
!3120 = !DILocation(line: 937, column: 1, scope: !2913)
!3121 = distinct !DISubprogram(name: "free_notify_script", scope: !61, file: !61, line: 76, type: !3122, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!3125 = !DILocalVariable(name: "script", arg: 1, scope: !3121, file: !61, line: 76, type: !3124)
!3126 = !DILocation(line: 76, column: 38, scope: !3121)
!3127 = !DILocation(line: 78, column: 8, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3121, file: !61, line: 78, column: 6)
!3129 = !DILocation(line: 78, column: 7, scope: !3128)
!3130 = !DILocation(line: 78, column: 6, scope: !3121)
!3131 = !DILocation(line: 79, column: 3, scope: !3128)
!3132 = !DILocation(line: 80, column: 10, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !61, line: 80, column: 8)
!3134 = distinct !DILexicalBlock(scope: !3121, file: !61, line: 80, column: 2)
!3135 = !DILocation(line: 80, column: 9, scope: !3133)
!3136 = !DILocation(line: 80, column: 19, scope: !3133)
!3137 = !DILocation(line: 80, column: 8, scope: !3133)
!3138 = !DILocation(line: 80, column: 8, scope: !3134)
!3139 = !DILocation(line: 80, column: 35, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3141, file: !61, discriminator: 1)
!3141 = distinct !DILexicalBlock(scope: !3133, file: !61, line: 80, column: 25)
!3142 = !DILocation(line: 80, column: 34, scope: !3140)
!3143 = !DILocation(line: 80, column: 44, scope: !3140)
!3144 = !DILocation(line: 80, column: 33, scope: !3140)
!3145 = !DILocation(line: 80, column: 28, scope: !3140)
!3146 = !DILocation(line: 80, column: 54, scope: !3140)
!3147 = !DILocation(line: 80, column: 53, scope: !3140)
!3148 = !DILocation(line: 80, column: 63, scope: !3140)
!3149 = !DILocation(line: 80, column: 69, scope: !3140)
!3150 = !DILocation(line: 80, column: 3, scope: !3140)
!3151 = !DILocation(line: 81, column: 9, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !61, line: 81, column: 8)
!3153 = distinct !DILexicalBlock(scope: !3121, file: !61, line: 81, column: 2)
!3154 = !DILocation(line: 81, column: 8, scope: !3152)
!3155 = !DILocation(line: 81, column: 8, scope: !3153)
!3156 = !DILocation(line: 81, column: 26, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3158, file: !61, discriminator: 1)
!3158 = distinct !DILexicalBlock(scope: !3152, file: !61, line: 81, column: 17)
!3159 = !DILocation(line: 81, column: 25, scope: !3157)
!3160 = !DILocation(line: 81, column: 20, scope: !3157)
!3161 = !DILocation(line: 81, column: 37, scope: !3157)
!3162 = !DILocation(line: 81, column: 45, scope: !3157)
!3163 = !DILocation(line: 81, column: 3, scope: !3157)
!3164 = !DILocation(line: 82, column: 3, scope: !3121)
!3165 = !DILocation(line: 82, column: 10, scope: !3121)
!3166 = !DILocation(line: 83, column: 1, scope: !3121)
!3167 = !DILocation(line: 83, column: 1, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3121, file: !61, discriminator: 1)
!3169 = distinct !DISubprogram(name: "get_state_str", scope: !630, file: !630, line: 60, type: !3170, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!95, !85}
!3172 = !DILocalVariable(name: "state", arg: 1, scope: !3169, file: !630, line: 60, type: !85)
!3173 = !DILocation(line: 60, column: 19, scope: !3169)
!3174 = !DILocation(line: 62, column: 6, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3169, file: !630, line: 62, column: 6)
!3176 = !DILocation(line: 62, column: 12, scope: !3175)
!3177 = !DILocation(line: 62, column: 6, scope: !3169)
!3178 = !DILocation(line: 62, column: 18, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3175, file: !630, discriminator: 1)
!3180 = !DILocation(line: 63, column: 6, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3169, file: !630, line: 63, column: 6)
!3182 = !DILocation(line: 63, column: 12, scope: !3181)
!3183 = !DILocation(line: 63, column: 6, scope: !3169)
!3184 = !DILocation(line: 63, column: 18, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3181, file: !630, discriminator: 1)
!3186 = !DILocation(line: 64, column: 6, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3169, file: !630, line: 64, column: 6)
!3188 = !DILocation(line: 64, column: 12, scope: !3187)
!3189 = !DILocation(line: 64, column: 6, scope: !3169)
!3190 = !DILocation(line: 64, column: 18, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3187, file: !630, discriminator: 1)
!3192 = !DILocation(line: 65, column: 6, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3169, file: !630, line: 65, column: 6)
!3194 = !DILocation(line: 65, column: 12, scope: !3193)
!3195 = !DILocation(line: 65, column: 6, scope: !3169)
!3196 = !DILocation(line: 65, column: 18, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3193, file: !630, discriminator: 1)
!3198 = !DILocation(line: 66, column: 6, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3169, file: !630, line: 66, column: 6)
!3200 = !DILocation(line: 66, column: 12, scope: !3199)
!3201 = !DILocation(line: 66, column: 6, scope: !3169)
!3202 = !DILocation(line: 66, column: 19, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3199, file: !630, discriminator: 1)
!3204 = !DILocation(line: 67, column: 2, scope: !3169)
!3205 = !DILocation(line: 68, column: 1, scope: !3169)
!3206 = distinct !DISubprogram(name: "__test_bit", scope: !3207, file: !3207, line: 47, type: !3208, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!3207 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!199, !110, !3210}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64, align: 64)
!3211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!3212 = !DILocalVariable(name: "idx", arg: 1, scope: !3206, file: !3207, line: 47, type: !110)
!3213 = !DILocation(line: 47, column: 39, scope: !3206)
!3214 = !DILocalVariable(name: "bmap", arg: 2, scope: !3206, file: !3207, line: 47, type: !3210)
!3215 = !DILocation(line: 47, column: 65, scope: !3206)
!3216 = !DILocation(line: 49, column: 19, scope: !3206)
!3217 = !DILocation(line: 49, column: 18, scope: !3206)
!3218 = !DILocation(line: 49, column: 24, scope: !3206)
!3219 = !DILocation(line: 49, column: 12, scope: !3206)
!3220 = !DILocation(line: 49, column: 68, scope: !3206)
!3221 = !DILocation(line: 49, column: 67, scope: !3206)
!3222 = !DILocation(line: 49, column: 73, scope: !3206)
!3223 = !DILocation(line: 49, column: 63, scope: !3206)
!3224 = !DILocation(line: 49, column: 56, scope: !3206)
!3225 = !DILocation(line: 49, column: 10, scope: !3206)
!3226 = !DILocation(line: 49, column: 9, scope: !3206)
!3227 = !DILocation(line: 49, column: 2, scope: !3206)
!3228 = distinct !DISubprogram(name: "dump_notify_script", scope: !630, file: !630, line: 120, type: !3229, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !641)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !137, !206, !95}
!3231 = !DILocalVariable(name: "fp", arg: 1, scope: !3228, file: !630, line: 120, type: !137)
!3232 = !DILocation(line: 120, column: 26, scope: !3228)
!3233 = !DILocalVariable(name: "script", arg: 2, scope: !3228, file: !630, line: 120, type: !206)
!3234 = !DILocation(line: 120, column: 47, scope: !3228)
!3235 = !DILocalVariable(name: "type", arg: 3, scope: !3228, file: !630, line: 120, type: !95)
!3236 = !DILocation(line: 120, column: 61, scope: !3228)
!3237 = !DILocation(line: 122, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3228, file: !630, line: 122, column: 6)
!3239 = !DILocation(line: 122, column: 6, scope: !3228)
!3240 = !DILocation(line: 123, column: 3, scope: !3238)
!3241 = !DILocation(line: 125, column: 13, scope: !3228)
!3242 = !DILocation(line: 125, column: 70, scope: !3228)
!3243 = !DILocation(line: 126, column: 17, scope: !3228)
!3244 = !DILocation(line: 126, column: 9, scope: !3228)
!3245 = !DILocation(line: 126, column: 26, scope: !3228)
!3246 = !DILocation(line: 126, column: 34, scope: !3228)
!3247 = !DILocation(line: 126, column: 39, scope: !3228)
!3248 = !DILocation(line: 126, column: 47, scope: !3228)
!3249 = !DILocation(line: 125, column: 2, scope: !3228)
!3250 = !DILocation(line: 127, column: 1, scope: !3228)
!3251 = !DILocation(line: 127, column: 1, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3228, file: !630, discriminator: 1)
