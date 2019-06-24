; ModuleID = './[inter]keepalived--core--main.o.i'
source_filename = "./[inter]keepalived--core--main.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.option = type { i8*, i32, i32*, i32 }
%struct.anon.2 = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.signalfd_siginfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, [48 x i8] }
%struct.__sigset_t = type { [16 x i64] }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Keepalived v2.0.7 (09/18,2018)\00", align 1
@version_string = global i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"/etc/keepalived/keepalived.conf\00", align 1
@conf_file = global i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), align 8
@log_facility = global i32 24, align 4
@child_wait_time = global i32 5, align 4
@syslog_ident = internal global i8* null, align 8
@orig_core_dump_pattern = internal global i8* null, align 8
@free_main_pidfile = internal global i8 0, align 1
@main_pidfile = common global i8* null, align 8
@free_vrrp_pidfile = internal global i8 0, align 1
@vrrp_pidfile = common global i8* null, align 8
@free_checkers_pidfile = internal global i8 0, align 1
@checkers_pidfile = common global i8* null, align 8
@config_id = external global i8*, align 8
@global_data = external global %struct._data*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@daemon_mode = common global i64 0, align 8
@master = external global %struct._thread_master*, align 8
@debug = external global i64, align 8
@prog_type = external global i32, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Keepalived\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to get uname() information - error %d\00", align 1
@os_major = common global i32 0, align 4
@os_minor = common global i32 0, align 4
@os_release = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to parse kernel version %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Starting %s, git commit %s\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"v2.0.7-77-g3e3b4e7\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"WARNING - keepalived was build for newer Linux %d.%d.%d, running on %s %s %s\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Running on %s %s %s (built for Linux %d.%d.%d)\00", align 1
@override_namespace = internal global i8* null, align 8
@.str.10 = private unnamed_addr constant [70 x i8] c"Overriding config net_namespace '%s' with command line namespace '%s'\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Changing syslog ident to %s\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Unable to change syslog ident\00", align 1
@use_pid_dir = common global i8 0, align 1
@log_file_name = external global i8*, align 8
@.str.13 = private unnamed_addr constant [45 x i8] c"Unable to set network namespace %s - exiting\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"/var/run/keepalived/keepalived\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".pid\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"/var/run/keepalived/checkers\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"/var/run/keepalived/vrrp\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"/var/run/keepalived/keepalived.pid\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"/var/run/keepalived/checkers.pid\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"/var/run/keepalived/vrrp.pid\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"/var/run/keepalived.pid\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"/var/run/checkers.pid\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"/var/run/vrrp.pid\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"daemon is already running\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"Warning - keepalived has no configuration to run\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Stopped %s, git commit %s\00", align 1
@garp_delay = common global %struct._list* null, align 8
@reload = common global i8 0, align 1
@checkers_child = common global i32 0, align 4
@vrrp_child = common global i32 0, align 4
@hostname = common global i8* null, align 8
@.str.27 = private unnamed_addr constant [26 x i8] c"Keepalived_healthcheckers\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Keepalived_vrrp\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"use-file\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"vrrp\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"log-console\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"log-detail\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"log-facility\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"log-file\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"flush-log-file\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"no-syslog\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"release-vips\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"dont-release-vrrp\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"dont-release-ipvs\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"dont-respawn\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"dont-fork\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"dump-conf\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"vrrp_pid\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"checkers_pid\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"address-monitoring\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"core-dump\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"core-dump-pattern\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"config-id\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"signum\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"config-test\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@parse_cmdline.long_options = private unnamed_addr constant [29 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 3 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 2, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 2 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 2, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 4 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 2, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@optind = external global i32, align 4
@.str.57 = private unnamed_addr constant [40 x i8] c":vhlndDRS:f:p:i:mM::g::Gt::PCr:VXac:Is:\00", align 1
@optarg = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c", git commit %s\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"\0A\0A%s\0A\0A\00", align 1
@.str.61 = private unnamed_addr constant [61 x i8] c"Copyright(C) 2001-2018 Alexandre Cassen, <acassen@gmail.com>\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"Built with kernel headers for Linux %d.%d.%d\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Running on %s %s %s\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"configure options: %s\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Config options: %s\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [67 x i8] c" LIBIPSET_DYNAMIC LVS VRRP VRRP_AUTH OLD_CHKSUM_COMPAT FIB_ROUTING\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"System options: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [500 x i8] c" PIPE2 SIGNALFD INOTIFY_INIT1 VSYSLOG EPOLL_CREATE1 IPV4_DEVCONF LIBNL3 RTA_ENCAP RTA_NEWDST RTA_PREF FRA_SUPPRESS_PREFIXLEN FRA_SUPPRESS_IFGROUP FRA_TUN_ID RTAX_CC_ALGO RTAX_QUICKACK RTEXT_FILTER_SKIP_STATS RTA_VIA FRA_OIFNAME IFA_FLAGS IP_MULTICAST_ALL LWTUNNEL_ENCAP_MPLS LWTUNNEL_ENCAP_ILA LIBIPTC LIBIPVS_NETLINK IPVS_DEST_ATTR_ADDR_FAMILY IPVS_SYNCD_ATTRIBUTES IPVS_64BIT_STATS VRRP_VMAC SOCK_NONBLOCK SOCK_CLOEXEC O_PATH GLOB_BRACE INET6_ADDR_GEN_MODE VRF SO_MARK SCHED_RT SCHED_RESET_ON_FORK\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Invalid log facility '%s'\0A\00", align 1
@LOG_FACILITY = internal global [8 x %struct.anon.2] [%struct.anon.2 { i32 128 }, %struct.anon.2 { i32 136 }, %struct.anon.2 { i32 144 }, %struct.anon.2 { i32 152 }, %struct.anon.2 { i32 160 }, %struct.anon.2 { i32 168 }, %struct.anon.2 { i32 176 }, %struct.anon.2 { i32 184 }], align 16
@.str.71 = private unnamed_addr constant [20 x i8] c"/tmp/keepalived.log\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"Unable to open config-test log file %s\0A\00", align 1
@set_core_dump_pattern = internal global i8 0, align 1
@core_dump_pattern = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), align 8
@create_core_dump = internal global i8 0, align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"Unknown sigfunc %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@optopt = external global i32, align 4
@.str.75 = private unnamed_addr constant [20 x i8] c"Unknown option -%c\0A\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"Unknown option %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"Missing parameter for option -%c\0A\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"Missing parameter for option --%s\0A\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"Unexpected argument(s): \00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION...]\0A\00", align 1
@.str.83 = private unnamed_addr constant [69 x i8] c"  -f, --use-file=FILE          Use the specified configuration file\0A\00", align 1
@.str.84 = private unnamed_addr constant [61 x i8] c"  -P, --vrrp                   Only run with VRRP subsystem\0A\00", align 1
@.str.85 = private unnamed_addr constant [71 x i8] c"  -C, --check                  Only run with Health-checker subsystem\0A\00", align 1
@.str.86 = private unnamed_addr constant [96 x i8] c"      --all                    Force all child processes to run, even if have no configuration\0A\00", align 1
@.str.87 = private unnamed_addr constant [62 x i8] c"  -l, --log-console            Log messages to local console\0A\00", align 1
@.str.88 = private unnamed_addr constant [54 x i8] c"  -D, --log-detail             Detailed log messages\0A\00", align 1
@.str.89 = private unnamed_addr constant [70 x i8] c"  -S, --log-facility=[0-7]     Set syslog facility to LOG_LOCAL[0-7]\0A\00", align 1
@.str.90 = private unnamed_addr constant [79 x i8] c"  -g, --log-file=FILE          Also log to FILE (default /tmp/keepalived.log)\0A\00", align 1
@.str.91 = private unnamed_addr constant [56 x i8] c"      --flush-log-file         Flush log file on write\0A\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"  -G, --no-syslog              Don't log via syslog\0A\00", align 1
@.str.93 = private unnamed_addr constant [68 x i8] c"  -X, --release-vips           Drop VIP on transition from signal.\0A\00", align 1
@.str.94 = private unnamed_addr constant [82 x i8] c"  -V, --dont-release-vrrp      Don't remove VRRP VIPs and VROUTEs on daemon stop\0A\00", align 1
@.str.95 = private unnamed_addr constant [74 x i8] c"  -I, --dont-release-ipvs      Don't remove IPVS topology on daemon stop\0A\00", align 1
@.str.96 = private unnamed_addr constant [62 x i8] c"  -R, --dont-respawn           Don't respawn child processes\0A\00", align 1
@.str.97 = private unnamed_addr constant [62 x i8] c"  -n, --dont-fork              Don't fork the daemon process\0A\00", align 1
@.str.98 = private unnamed_addr constant [60 x i8] c"  -d, --dump-conf              Dump the configuration data\0A\00", align 1
@.str.99 = private unnamed_addr constant [73 x i8] c"  -p, --pid=FILE               Use specified pidfile for parent process\0A\00", align 1
@.str.100 = private unnamed_addr constant [77 x i8] c"  -r, --vrrp_pid=FILE          Use specified pidfile for VRRP child process\0A\00", align 1
@.str.101 = private unnamed_addr constant [81 x i8] c"  -c, --checkers_pid=FILE      Use specified pidfile for checkers child process\0A\00", align 1
@.str.102 = private unnamed_addr constant [92 x i8] c"  -a, --address-monitoring     Report all address additions/deletions notified via netlink\0A\00", align 1
@.str.103 = private unnamed_addr constant [81 x i8] c"  -s, --namespace=NAME         Run in network namespace NAME (overrides config)\0A\00", align 1
@.str.104 = private unnamed_addr constant [74 x i8] c"  -m, --core-dump              Produce core dump if terminate abnormally\0A\00", align 1
@.str.105 = private unnamed_addr constant [96 x i8] c"  -M, --core-dump-pattern=PATN Also set /proc/sys/kernel/core_pattern to PATN (default 'core')\0A\00", align 1
@.str.106 = private unnamed_addr constant [259 x i8] c"  -i, --config-id id           Skip any configuration lines beginning '@' that don't match id\0A                                or any lines beginning @^ that do match.\0A                                The config-id defaults to the node name if option not used\0A\00", align 1
@.str.107 = private unnamed_addr constant [83 x i8] c"      --signum=SIGFUNC         Return signal number for STOP, RELOAD, DATA, STATS\0A\00", align 1
@.str.108 = private unnamed_addr constant [136 x i8] c"  -t, --config-test[=LOG_FILE] Check the configuration for obvious errors, output to\0A                                stderr by default\0A\00", align 1
@.str.109 = private unnamed_addr constant [59 x i8] c"  -v, --version                Display the version number\0A\00", align 1
@.str.110 = private unnamed_addr constant [58 x i8] c"  -h, --help                   Display this help message\0A\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"Failed to get core file size\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"Failed to set core file size\00", align 1
@keywords = external global %struct._vector*, align 8
@.str.114 = private unnamed_addr constant [35 x i8] c"Unable to make pidfile name for %s\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"Reloading ...\00", align 1
@old_global_data = external global %struct._data*, align 8
@.str.116 = private unnamed_addr constant [64 x i8] c"Cannot change network namespace at a reload - please restart %s\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"keepalived\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"Cannot change instance name at a reload - please restart %s\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"Stopping\00", align 1
@.str.120 = private unnamed_addr constant [37 x i8] c"Terminating select returned errno %d\00", align 1
@.str.121 = private unnamed_addr constant [44 x i8] c"Terminating select did not return select_fd\00", align 1
@.str.122 = private unnamed_addr constant [52 x i8] c"Terminating signal read did not read entire siginfo\00", align 1
@.str.123 = private unnamed_addr constant [49 x i8] c"vrrp process failed to die - forcing termination\00", align 1
@.str.124 = private unnamed_addr constant [52 x i8] c"checker process failed to die - forcing termination\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"/proc/sys/kernel/core_pattern\00", align 1
@.str.126 = private unnamed_addr constant [34 x i8] c"Unable to read/write core_pattern\00", align 1

; Function Attrs: nounwind uwtable
define void @free_parent_mallocs_startup(i1 zeroext) #0 !dbg !247 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !251, metadata !252), !dbg !253
  %4 = load i8, i8* %2, align 1, !dbg !254
  %5 = trunc i8 %4 to i1, !dbg !254
  br i1 %5, label %6, label %21, !dbg !256

; <label>:6:                                      ; preds = %1
  call void @free_dirname(), !dbg !257
  %7 = load i8*, i8** @syslog_ident, align 8, !dbg !259
  %8 = icmp ne i8* %7, null, !dbg !259
  br i1 %8, label %9, label %11, !dbg !262

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** @syslog_ident, align 8, !dbg !263
  call void @free(i8* %10) #9, !dbg !266
  store i8* null, i8** @syslog_ident, align 8, !dbg !267
  br label %11, !dbg !268

; <label>:11:                                     ; preds = %9, %6
  store i8* null, i8** @syslog_ident, align 8, !dbg !269
  %12 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !270
  %13 = icmp ne i8* %12, null, !dbg !270
  br i1 %13, label %14, label %20, !dbg !272

; <label>:14:                                     ; preds = %11
  %15 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !273
  %16 = icmp ne i8* %15, null, !dbg !273
  br i1 %16, label %17, label %19, !dbg !277

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !278
  call void @free(i8* %18) #9, !dbg !281
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !282
  br label %19, !dbg !283

; <label>:19:                                     ; preds = %17, %14
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !284
  br label %20, !dbg !285

; <label>:20:                                     ; preds = %19, %11
  br label %21, !dbg !286

; <label>:21:                                     ; preds = %20, %1
  %22 = load i8, i8* @free_main_pidfile, align 1, !dbg !287
  %23 = trunc i8 %22 to i1, !dbg !287
  br i1 %23, label %24, label %30, !dbg !289

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** @main_pidfile, align 8, !dbg !290
  %26 = icmp ne i8* %25, null, !dbg !290
  br i1 %26, label %27, label %29, !dbg !294

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** @main_pidfile, align 8, !dbg !295
  call void @free(i8* %28) #9, !dbg !298
  store i8* null, i8** @main_pidfile, align 8, !dbg !299
  br label %29, !dbg !300

; <label>:29:                                     ; preds = %27, %24
  store i8* null, i8** @main_pidfile, align 8, !dbg !301
  store i8 0, i8* @free_main_pidfile, align 1, !dbg !302
  br label %30, !dbg !303

; <label>:30:                                     ; preds = %29, %21
  ret void, !dbg !304
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @free_dirname() #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @free_parent_mallocs_exit() #0 !dbg !305 {
  %1 = load i8, i8* @free_vrrp_pidfile, align 1, !dbg !308
  %2 = trunc i8 %1 to i1, !dbg !308
  br i1 %2, label %3, label %9, !dbg !310

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !311
  %5 = icmp ne i8* %4, null, !dbg !311
  br i1 %5, label %6, label %8, !dbg !314

; <label>:6:                                      ; preds = %3
  %7 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !315
  call void @free(i8* %7) #9, !dbg !318
  store i8* null, i8** @vrrp_pidfile, align 8, !dbg !319
  br label %8, !dbg !320

; <label>:8:                                      ; preds = %6, %3
  br label %9, !dbg !321

; <label>:9:                                      ; preds = %8, %0
  %10 = load i8, i8* @free_checkers_pidfile, align 1, !dbg !323
  %11 = trunc i8 %10 to i1, !dbg !323
  br i1 %11, label %12, label %18, !dbg !325

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** @checkers_pidfile, align 8, !dbg !326
  %14 = icmp ne i8* %13, null, !dbg !326
  br i1 %14, label %15, label %17, !dbg !329

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** @checkers_pidfile, align 8, !dbg !330
  call void @free(i8* %16) #9, !dbg !333
  store i8* null, i8** @checkers_pidfile, align 8, !dbg !334
  br label %17, !dbg !335

; <label>:17:                                     ; preds = %15, %12
  br label %18, !dbg !336

; <label>:18:                                     ; preds = %17, %9
  %19 = load i8*, i8** @config_id, align 8, !dbg !338
  %20 = icmp ne i8* %19, null, !dbg !338
  br i1 %20, label %21, label %23, !dbg !341

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** @config_id, align 8, !dbg !342
  call void @free(i8* %22) #9, !dbg !345
  store i8* null, i8** @config_id, align 8, !dbg !346
  br label %23, !dbg !347

; <label>:23:                                     ; preds = %21, %18
  ret void, !dbg !348
}

; Function Attrs: nounwind uwtable
define i8* @make_syslog_ident(i8*) #0 !dbg !349 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !352, metadata !252), !dbg !353
  call void @llvm.dbg.declare(metadata i64* %4, metadata !354, metadata !252), !dbg !355
  %6 = load i8*, i8** %3, align 8, !dbg !356
  %7 = call i64 @strlen(i8* %6) #10, !dbg !357
  %8 = add i64 %7, 1, !dbg !358
  store i64 %8, i64* %4, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata i8** %5, metadata !359, metadata !252), !dbg !360
  %9 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !361
  %10 = getelementptr inbounds %struct._data, %struct._data* %9, i32 0, i32 0, !dbg !363
  %11 = load i8*, i8** %10, align 8, !dbg !363
  %12 = icmp ne i8* %11, null, !dbg !361
  br i1 %12, label %13, label %21, !dbg !364

; <label>:13:                                     ; preds = %1
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !365
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 0, !dbg !366
  %16 = load i8*, i8** %15, align 8, !dbg !366
  %17 = call i64 @strlen(i8* %16) #10, !dbg !367
  %18 = add i64 %17, 1, !dbg !368
  %19 = load i64, i64* %4, align 8, !dbg !369
  %20 = add i64 %19, %18, !dbg !369
  store i64 %20, i64* %4, align 8, !dbg !369
  br label %21, !dbg !370

; <label>:21:                                     ; preds = %13, %1
  %22 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !371
  %23 = getelementptr inbounds %struct._data, %struct._data* %22, i32 0, i32 2, !dbg !373
  %24 = load i8*, i8** %23, align 8, !dbg !373
  %25 = icmp ne i8* %24, null, !dbg !371
  br i1 %25, label %26, label %34, !dbg !374

; <label>:26:                                     ; preds = %21
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !375
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 2, !dbg !376
  %29 = load i8*, i8** %28, align 8, !dbg !376
  %30 = call i64 @strlen(i8* %29) #10, !dbg !377
  %31 = add i64 %30, 1, !dbg !378
  %32 = load i64, i64* %4, align 8, !dbg !379
  %33 = add i64 %32, %31, !dbg !379
  store i64 %33, i64* %4, align 8, !dbg !379
  br label %34, !dbg !380

; <label>:34:                                     ; preds = %26, %21
  %35 = load i64, i64* %4, align 8, !dbg !381
  %36 = call i8* @zalloc(i64 %35), !dbg !382
  store i8* %36, i8** %5, align 8, !dbg !383
  %37 = load i8*, i8** %5, align 8, !dbg !384
  %38 = icmp ne i8* %37, null, !dbg !384
  br i1 %38, label %40, label %39, !dbg !386

; <label>:39:                                     ; preds = %34
  store i8* null, i8** %2, align 8, !dbg !387
  br label %71, !dbg !387

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %5, align 8, !dbg !388
  %42 = load i8*, i8** %3, align 8, !dbg !389
  %43 = call i8* @strcpy(i8* %41, i8* %42) #9, !dbg !390
  %44 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !391
  %45 = getelementptr inbounds %struct._data, %struct._data* %44, i32 0, i32 0, !dbg !393
  %46 = load i8*, i8** %45, align 8, !dbg !393
  %47 = icmp ne i8* %46, null, !dbg !391
  br i1 %47, label %48, label %56, !dbg !394

; <label>:48:                                     ; preds = %40
  %49 = load i8*, i8** %5, align 8, !dbg !395
  %50 = call i8* @strcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !397
  %51 = load i8*, i8** %5, align 8, !dbg !398
  %52 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !399
  %53 = getelementptr inbounds %struct._data, %struct._data* %52, i32 0, i32 0, !dbg !400
  %54 = load i8*, i8** %53, align 8, !dbg !400
  %55 = call i8* @strcat(i8* %51, i8* %54) #9, !dbg !401
  br label %56, !dbg !402

; <label>:56:                                     ; preds = %48, %40
  %57 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !403
  %58 = getelementptr inbounds %struct._data, %struct._data* %57, i32 0, i32 2, !dbg !405
  %59 = load i8*, i8** %58, align 8, !dbg !405
  %60 = icmp ne i8* %59, null, !dbg !403
  br i1 %60, label %61, label %69, !dbg !406

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %5, align 8, !dbg !407
  %63 = call i8* @strcat(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !409
  %64 = load i8*, i8** %5, align 8, !dbg !410
  %65 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !411
  %66 = getelementptr inbounds %struct._data, %struct._data* %65, i32 0, i32 2, !dbg !412
  %67 = load i8*, i8** %66, align 8, !dbg !412
  %68 = call i8* @strcat(i8* %64, i8* %67) #9, !dbg !413
  br label %69, !dbg !414

; <label>:69:                                     ; preds = %61, %56
  %70 = load i8*, i8** %5, align 8, !dbg !415
  store i8* %70, i8** %2, align 8, !dbg !416
  br label %71, !dbg !416

; <label>:71:                                     ; preds = %69, %39
  %72 = load i8*, i8** %2, align 8, !dbg !417
  ret i8* %72, !dbg !417
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @running_vrrp() #0 !dbg !418 {
  %1 = call zeroext i1 @__test_bit(i32 0, i64* @daemon_mode), !dbg !421
  br i1 %1, label %2, label %11, !dbg !422

; <label>:2:                                      ; preds = %0
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !423
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 44, !dbg !424
  %5 = load i8, i8* %4, align 2, !dbg !424
  %6 = trunc i8 %5 to i1, !dbg !424
  br i1 %6, label %9, label %7, !dbg !425

; <label>:7:                                      ; preds = %2
  %8 = call zeroext i1 @__test_bit(i32 2, i64* @daemon_mode), !dbg !426
  br label %9, !dbg !427

; <label>:9:                                      ; preds = %7, %2
  %10 = phi i1 [ true, %2 ], [ %8, %7 ]
  br label %11

; <label>:11:                                     ; preds = %9, %0
  %12 = phi i1 [ false, %0 ], [ %10, %9 ]
  ret i1 %12, !dbg !429
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #5 !dbg !430 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !435, metadata !252), !dbg !436
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !437, metadata !252), !dbg !438
  %5 = load i32, i32* %3, align 4, !dbg !439
  %6 = zext i32 %5 to i64, !dbg !440
  %7 = udiv i64 %6, 64, !dbg !441
  %8 = load i64*, i64** %4, align 8, !dbg !442
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !442
  %10 = load i64, i64* %9, align 8, !dbg !442
  %11 = load i32, i32* %3, align 4, !dbg !443
  %12 = zext i32 %11 to i64, !dbg !444
  %13 = urem i64 %12, 64, !dbg !445
  %14 = shl i64 1, %13, !dbg !446
  %15 = and i64 %10, %14, !dbg !447
  %16 = icmp ne i64 %15, 0, !dbg !448
  %17 = xor i1 %16, true, !dbg !448
  %18 = xor i1 %17, true, !dbg !449
  ret i1 %18, !dbg !450
}

; Function Attrs: nounwind uwtable
define zeroext i1 @running_checker() #0 !dbg !451 {
  %1 = call zeroext i1 @__test_bit(i32 1, i64* @daemon_mode), !dbg !452
  br i1 %1, label %2, label %11, !dbg !453

; <label>:2:                                      ; preds = %0
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !454
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 49, !dbg !455
  %5 = load i8, i8* %4, align 8, !dbg !455
  %6 = trunc i8 %5 to i1, !dbg !455
  br i1 %6, label %9, label %7, !dbg !456

; <label>:7:                                      ; preds = %2
  %8 = call zeroext i1 @__test_bit(i32 2, i64* @daemon_mode), !dbg !457
  br label %9, !dbg !458

; <label>:9:                                      ; preds = %7, %2
  %10 = phi i1 [ true, %2 ], [ %8, %7 ]
  br label %11

; <label>:11:                                     ; preds = %9, %0
  %12 = phi i1 [ false, %0 ], [ %10, %9 ]
  ret i1 %12, !dbg !460
}

; Function Attrs: nounwind uwtable
define void @stop_keepalived() #0 !dbg !461 {
  %1 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !462
  call void @thread_destroy_master(%struct._thread_master* %1), !dbg !463
  %2 = call zeroext i1 @__test_bit(i32 0, i64* @daemon_mode), !dbg !464
  br i1 %2, label %3, label %5, !dbg !466

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !467
  call void @pidfile_rm(i8* %4), !dbg !468
  br label %5, !dbg !468

; <label>:5:                                      ; preds = %3, %0
  %6 = call zeroext i1 @__test_bit(i32 1, i64* @daemon_mode), !dbg !469
  br i1 %6, label %7, label %9, !dbg !471

; <label>:7:                                      ; preds = %5
  %8 = load i8*, i8** @checkers_pidfile, align 8, !dbg !472
  call void @pidfile_rm(i8* %8), !dbg !473
  br label %9, !dbg !473

; <label>:9:                                      ; preds = %7, %5
  %10 = load i8*, i8** @main_pidfile, align 8, !dbg !474
  call void @pidfile_rm(i8* %10), !dbg !475
  ret void, !dbg !476
}

declare void @thread_destroy_master(%struct._thread_master*) #2

declare void @pidfile_rm(i8*) #2

; Function Attrs: nounwind uwtable
define void @initialise_debug_options() #0 !dbg !477 {
  ret void, !dbg !478
}

; Function Attrs: nounwind uwtable
define i32 @keepalived_main(i32, i8**) #0 !dbg !479 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.utsname, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !483, metadata !252), !dbg !484
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !485, metadata !252), !dbg !486
  call void @llvm.dbg.declare(metadata i8* %6, metadata !487, metadata !252), !dbg !488
  store i8 1, i8* %6, align 1, !dbg !488
  call void @llvm.dbg.declare(metadata %struct.utsname* %7, metadata !489, metadata !252), !dbg !502
  call void @llvm.dbg.declare(metadata i8** %8, metadata !503, metadata !252), !dbg !504
  %10 = call { i64, i64 } @set_time_now(), !dbg !505
  %11 = bitcast %struct.timeval* %9 to { i64, i64 }*, !dbg !505
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0, !dbg !505
  %13 = extractvalue { i64, i64 } %10, 0, !dbg !505
  store i64 %13, i64* %12, align 8, !dbg !505
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1, !dbg !505
  %15 = extractvalue { i64, i64 } %10, 1, !dbg !505
  store i64 %15, i64* %14, align 8, !dbg !505
  %16 = load i32, i32* %4, align 4, !dbg !506
  %17 = load i8**, i8*** %5, align 8, !dbg !507
  call void @save_cmd_line_options(i32 %16, i8** %17), !dbg !508
  store i64 0, i64* @debug, align 8, !dbg !509
  store i32 0, i32* @prog_type, align 4, !dbg !510
  call void @set_child_finder_name(i8* (i32)* @find_keepalived_child_name), !dbg !511
  call void @set_child_remover(void (%struct._thread*)* @parent_child_remover), !dbg !512
  call void @__set_bit(i32 0, i64* @daemon_mode), !dbg !513
  call void @__set_bit(i32 1, i64* @daemon_mode), !dbg !514
  %18 = load i32, i32* @log_facility, align 4, !dbg !515
  call void @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 %18), !dbg !516
  %19 = call i32 @uname(%struct.utsname* %7) #9, !dbg !517
  %20 = icmp ne i32 %19, 0, !dbg !517
  br i1 %20, label %21, label %24, !dbg !519

; <label>:21:                                     ; preds = %2
  %22 = call i32* @__errno_location() #1, !dbg !520
  %23 = load i32, i32* %22, align 4, !dbg !521
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i32 %23), !dbg !522
  br label %105, !dbg !524

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 2, !dbg !525
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* %25, i32 0, i32 0, !dbg !527
  %27 = call i64 @strtoul(i8* %26, i8** %8, i32 10) #9, !dbg !528
  %28 = trunc i64 %27 to i32, !dbg !529
  store i32 %28, i32* @os_major, align 4, !dbg !530
  %29 = load i8*, i8** %8, align 8, !dbg !531
  %30 = load i8, i8* %29, align 1, !dbg !533
  %31 = sext i8 %30 to i32, !dbg !533
  %32 = icmp ne i32 %31, 46, !dbg !534
  br i1 %32, label %33, label %34, !dbg !535

; <label>:33:                                     ; preds = %24
  store i32 0, i32* @os_major, align 4, !dbg !536
  br label %65, !dbg !537

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %8, align 8, !dbg !538
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !540
  %37 = call i64 @strtoul(i8* %36, i8** %8, i32 10) #9, !dbg !541
  %38 = trunc i64 %37 to i32, !dbg !542
  store i32 %38, i32* @os_minor, align 4, !dbg !543
  %39 = load i8*, i8** %8, align 8, !dbg !544
  %40 = load i8, i8* %39, align 1, !dbg !546
  %41 = sext i8 %40 to i32, !dbg !546
  %42 = icmp ne i32 %41, 46, !dbg !547
  br i1 %42, label %43, label %44, !dbg !548

; <label>:43:                                     ; preds = %34
  store i32 0, i32* @os_major, align 4, !dbg !549
  br label %64, !dbg !550

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %8, align 8, !dbg !551
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !551
  %47 = load i8, i8* %46, align 1, !dbg !551
  %48 = sext i8 %47 to i32, !dbg !554
  %49 = sext i32 %48 to i64, !dbg !555
  %50 = call i16** @__ctype_b_loc() #1, !dbg !556
  %51 = load i16*, i16** %50, align 8, !dbg !557
  %52 = getelementptr inbounds i16, i16* %51, i64 %49, !dbg !555
  %53 = load i16, i16* %52, align 2, !dbg !555
  %54 = zext i16 %53 to i32, !dbg !555
  %55 = and i32 %54, 2048, !dbg !558
  %56 = icmp ne i32 %55, 0, !dbg !558
  br i1 %56, label %58, label %57, !dbg !559

; <label>:57:                                     ; preds = %44
  store i32 0, i32* @os_major, align 4, !dbg !560
  br label %63, !dbg !561

; <label>:58:                                     ; preds = %44
  %59 = load i8*, i8** %8, align 8, !dbg !562
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !563
  %61 = call i64 @strtoul(i8* %60, i8** %8, i32 10) #9, !dbg !564
  %62 = trunc i64 %61 to i32, !dbg !565
  store i32 %62, i32* @os_release, align 4, !dbg !566
  br label %63

; <label>:63:                                     ; preds = %58, %57
  br label %64

; <label>:64:                                     ; preds = %63, %43
  br label %65

; <label>:65:                                     ; preds = %64, %33
  %66 = load i32, i32* @os_major, align 4, !dbg !567
  %67 = icmp ne i32 %66, 0, !dbg !567
  br i1 %67, label %71, label %68, !dbg !569

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 2, !dbg !570
  %70 = getelementptr inbounds [65 x i8], [65 x i8]* %69, i32 0, i32 0, !dbg !571
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %70), !dbg !572
  br label %71, !dbg !572

; <label>:71:                                     ; preds = %68, %65
  %72 = load i8*, i8** @config_id, align 8, !dbg !573
  %73 = icmp ne i8* %72, null, !dbg !573
  br i1 %73, label %104, label %74, !dbg !575

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 1, !dbg !576
  %76 = getelementptr inbounds [65 x i8], [65 x i8]* %75, i32 0, i32 0, !dbg !578
  %77 = call i8* @strchrnul(i8* %76, i32 46) #10, !dbg !579
  store i8* %77, i8** %8, align 8, !dbg !580
  %78 = load i8*, i8** %8, align 8, !dbg !581
  %79 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 1, !dbg !582
  %80 = getelementptr inbounds [65 x i8], [65 x i8]* %79, i32 0, i32 0, !dbg !583
  %81 = ptrtoint i8* %78 to i64, !dbg !584
  %82 = ptrtoint i8* %80 to i64, !dbg !584
  %83 = sub i64 %81, %82, !dbg !584
  %84 = add i64 %83, 1, !dbg !585
  %85 = call i8* @zalloc(i64 %84), !dbg !586
  store i8* %85, i8** @config_id, align 8, !dbg !587
  %86 = load i8*, i8** @config_id, align 8, !dbg !588
  %87 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 1, !dbg !589
  %88 = getelementptr inbounds [65 x i8], [65 x i8]* %87, i32 0, i32 0, !dbg !590
  %89 = load i8*, i8** %8, align 8, !dbg !591
  %90 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 1, !dbg !592
  %91 = getelementptr inbounds [65 x i8], [65 x i8]* %90, i32 0, i32 0, !dbg !593
  %92 = ptrtoint i8* %89 to i64, !dbg !594
  %93 = ptrtoint i8* %91 to i64, !dbg !594
  %94 = sub i64 %92, %93, !dbg !594
  %95 = call i8* @strncpy(i8* %86, i8* %88, i64 %94) #9, !dbg !595
  %96 = load i8*, i8** %8, align 8, !dbg !596
  %97 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 1, !dbg !597
  %98 = getelementptr inbounds [65 x i8], [65 x i8]* %97, i32 0, i32 0, !dbg !598
  %99 = ptrtoint i8* %96 to i64, !dbg !599
  %100 = ptrtoint i8* %98 to i64, !dbg !599
  %101 = sub i64 %99, %100, !dbg !599
  %102 = load i8*, i8** @config_id, align 8, !dbg !600
  %103 = getelementptr inbounds i8, i8* %102, i64 %101, !dbg !600
  store i8 0, i8* %103, align 1, !dbg !601
  br label %104, !dbg !602

; <label>:104:                                    ; preds = %74, %71
  br label %105

; <label>:105:                                    ; preds = %104, %21
  %106 = load i32, i32* %4, align 4, !dbg !603
  %107 = load i8**, i8*** %5, align 8, !dbg !605
  %108 = call zeroext i1 @parse_cmdline(i32 %106, i8** %107), !dbg !606
  br i1 %108, label %109, label %117, !dbg !607

; <label>:109:                                    ; preds = %105
  call void @closelog(), !dbg !608
  %110 = call zeroext i1 @__test_bit(i32 1, i64* @debug), !dbg !610
  br i1 %110, label %116, label %111, !dbg !612

; <label>:111:                                    ; preds = %109
  %112 = call zeroext i1 @__test_bit(i32 0, i64* @debug), !dbg !613
  %113 = select i1 %112, i32 2, i32 0, !dbg !614
  %114 = or i32 1, %113, !dbg !615
  %115 = load i32, i32* @log_facility, align 4, !dbg !616
  call void @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %114, i32 %115), !dbg !617
  br label %116, !dbg !619

; <label>:116:                                    ; preds = %111, %109
  br label %117, !dbg !620

; <label>:117:                                    ; preds = %116, %105
  %118 = call zeroext i1 @__test_bit(i32 0, i64* @debug), !dbg !621
  br i1 %118, label %119, label %120, !dbg !623

; <label>:119:                                    ; preds = %117
  call void @enable_console_log(), !dbg !624
  br label %120, !dbg !624

; <label>:120:                                    ; preds = %119, %117
  %121 = load i8*, i8** @version_string, align 8, !dbg !625
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)), !dbg !626
  call void @core_dump_init(), !dbg !627
  %122 = load i32, i32* @os_major, align 4, !dbg !628
  %123 = icmp ne i32 %122, 0, !dbg !628
  br i1 %123, label %124, label %148, !dbg !630

; <label>:124:                                    ; preds = %120
  %125 = load i32, i32* @os_major, align 4, !dbg !631
  %126 = shl i32 %125, 16, !dbg !634
  %127 = load i32, i32* @os_minor, align 4, !dbg !631
  %128 = shl i32 %127, 8, !dbg !634
  %129 = add i32 %126, %128, !dbg !635
  %130 = load i32, i32* @os_release, align 4, !dbg !631
  %131 = add i32 %129, %130, !dbg !636
  %132 = icmp ult i32 %131, 263338, !dbg !637
  br i1 %132, label %133, label %140, !dbg !638

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 0, !dbg !639
  %135 = getelementptr inbounds [65 x i8], [65 x i8]* %134, i32 0, i32 0, !dbg !641
  %136 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 2, !dbg !642
  %137 = getelementptr inbounds [65 x i8], [65 x i8]* %136, i32 0, i32 0, !dbg !643
  %138 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 3, !dbg !644
  %139 = getelementptr inbounds [65 x i8], [65 x i8]* %138, i32 0, i32 0, !dbg !645
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i32 0, i32 0), i32 4, i32 4, i32 170, i8* %135, i8* %137, i8* %139), !dbg !646
  br label %147, !dbg !647

; <label>:140:                                    ; preds = %124
  %141 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 0, !dbg !648
  %142 = getelementptr inbounds [65 x i8], [65 x i8]* %141, i32 0, i32 0, !dbg !650
  %143 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 2, !dbg !651
  %144 = getelementptr inbounds [65 x i8], [65 x i8]* %143, i32 0, i32 0, !dbg !652
  %145 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 3, !dbg !653
  %146 = getelementptr inbounds [65 x i8], [65 x i8]* %145, i32 0, i32 0, !dbg !654
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8* %142, i8* %144, i8* %146, i32 4, i32 4, i32 170), !dbg !655
  br label %147

; <label>:147:                                    ; preds = %140, %133
  br label %148, !dbg !656

; <label>:148:                                    ; preds = %147, %120
  call void @log_command_line(i32 0), !dbg !657
  call void @netlink_set_recv_buf_size(), !dbg !658
  %149 = load i8*, i8** @conf_file, align 8, !dbg !659
  %150 = call zeroext i1 @check_conf_file(i8* %149), !dbg !661
  br i1 %150, label %155, label %151, !dbg !662

; <label>:151:                                    ; preds = %148
  %152 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !663
  br i1 %152, label %153, label %154, !dbg !666

; <label>:153:                                    ; preds = %151
  call void @config_test_exit(), !dbg !667
  br label %154, !dbg !667

; <label>:154:                                    ; preds = %153, %151
  br label %334, !dbg !668

; <label>:155:                                    ; preds = %148
  %156 = call %struct._data* @alloc_global_data(), !dbg !669
  store %struct._data* %156, %struct._data** @global_data, align 8, !dbg !670
  call void @read_config_file(), !dbg !671
  %157 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !672
  call void @init_global_data(%struct._data* %157), !dbg !673
  %158 = load i8*, i8** @override_namespace, align 8, !dbg !674
  %159 = icmp ne i8* %158, null, !dbg !674
  br i1 %159, label %160, label %179, !dbg !676

; <label>:160:                                    ; preds = %155
  %161 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !677
  %162 = getelementptr inbounds %struct._data, %struct._data* %161, i32 0, i32 0, !dbg !680
  %163 = load i8*, i8** %162, align 8, !dbg !680
  %164 = icmp ne i8* %163, null, !dbg !677
  br i1 %164, label %165, label %175, !dbg !681

; <label>:165:                                    ; preds = %160
  %166 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !682
  %167 = getelementptr inbounds %struct._data, %struct._data* %166, i32 0, i32 0, !dbg !684
  %168 = load i8*, i8** %167, align 8, !dbg !684
  %169 = load i8*, i8** @override_namespace, align 8, !dbg !685
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i32 0, i32 0), i8* %168, i8* %169), !dbg !686
  %170 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !687
  %171 = getelementptr inbounds %struct._data, %struct._data* %170, i32 0, i32 0, !dbg !688
  %172 = load i8*, i8** %171, align 8, !dbg !688
  call void @free(i8* %172) #9, !dbg !689
  %173 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !690
  %174 = getelementptr inbounds %struct._data, %struct._data* %173, i32 0, i32 0, !dbg !691
  store i8* null, i8** %174, align 8, !dbg !692
  br label %175, !dbg !693

; <label>:175:                                    ; preds = %165, %160
  %176 = load i8*, i8** @override_namespace, align 8, !dbg !694
  %177 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !695
  %178 = getelementptr inbounds %struct._data, %struct._data* %177, i32 0, i32 0, !dbg !696
  store i8* %176, i8** %178, align 8, !dbg !697
  store i8* null, i8** @override_namespace, align 8, !dbg !698
  br label %179, !dbg !699

; <label>:179:                                    ; preds = %175, %155
  %180 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !700
  br i1 %180, label %210, label %181, !dbg !702

; <label>:181:                                    ; preds = %179
  %182 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !703
  %183 = getelementptr inbounds %struct._data, %struct._data* %182, i32 0, i32 2, !dbg !704
  %184 = load i8*, i8** %183, align 8, !dbg !704
  %185 = icmp ne i8* %184, null, !dbg !703
  br i1 %185, label %191, label %186, !dbg !705

; <label>:186:                                    ; preds = %181
  %187 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !706
  %188 = getelementptr inbounds %struct._data, %struct._data* %187, i32 0, i32 0, !dbg !708
  %189 = load i8*, i8** %188, align 8, !dbg !708
  %190 = icmp ne i8* %189, null, !dbg !706
  br i1 %190, label %191, label %210, !dbg !709

; <label>:191:                                    ; preds = %186, %181
  %192 = call i8* @make_syslog_ident(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !711
  store i8* %192, i8** @syslog_ident, align 8, !dbg !714
  %193 = icmp ne i8* %192, null, !dbg !714
  br i1 %193, label %194, label %201, !dbg !715

; <label>:194:                                    ; preds = %191
  %195 = load i8*, i8** @syslog_ident, align 8, !dbg !716
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* %195), !dbg !718
  call void @closelog(), !dbg !719
  %196 = load i8*, i8** @syslog_ident, align 8, !dbg !720
  %197 = call zeroext i1 @__test_bit(i32 0, i64* @debug), !dbg !721
  %198 = select i1 %197, i32 2, i32 0, !dbg !722
  %199 = or i32 1, %198, !dbg !723
  %200 = load i32, i32* @log_facility, align 4, !dbg !724
  call void @openlog(i8* %196, i32 %199, i32 %200), !dbg !725
  br label %202, !dbg !727

; <label>:201:                                    ; preds = %191
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)), !dbg !728
  br label %202

; <label>:202:                                    ; preds = %201, %194
  store i8 1, i8* @use_pid_dir, align 1, !dbg !729
  %203 = load i8*, i8** @log_file_name, align 8, !dbg !730
  %204 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !731
  %205 = getelementptr inbounds %struct._data, %struct._data* %204, i32 0, i32 0, !dbg !732
  %206 = load i8*, i8** %205, align 8, !dbg !732
  %207 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !733
  %208 = getelementptr inbounds %struct._data, %struct._data* %207, i32 0, i32 2, !dbg !734
  %209 = load i8*, i8** %208, align 8, !dbg !734
  call void @open_log_file(i8* %203, i8* null, i8* %206, i8* %209), !dbg !735
  br label %210, !dbg !736

; <label>:210:                                    ; preds = %202, %186, %179
  %211 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !737
  br i1 %211, label %217, label %212, !dbg !739

; <label>:212:                                    ; preds = %210
  %213 = load i8, i8* @use_pid_dir, align 1, !dbg !740
  %214 = trunc i8 %213 to i1, !dbg !740
  br i1 %214, label %215, label %216, !dbg !743

; <label>:215:                                    ; preds = %212
  call void @create_pid_dir(), !dbg !744
  br label %216, !dbg !746

; <label>:216:                                    ; preds = %215, %212
  br label %217, !dbg !747

; <label>:217:                                    ; preds = %216, %210
  %218 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !748
  %219 = getelementptr inbounds %struct._data, %struct._data* %218, i32 0, i32 0, !dbg !750
  %220 = load i8*, i8** %219, align 8, !dbg !750
  %221 = icmp ne i8* %220, null, !dbg !748
  br i1 %221, label %222, label %237, !dbg !751

; <label>:222:                                    ; preds = %217
  %223 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !752
  %224 = getelementptr inbounds %struct._data, %struct._data* %223, i32 0, i32 0, !dbg !755
  %225 = load i8*, i8** %224, align 8, !dbg !755
  %226 = icmp ne i8* %225, null, !dbg !752
  br i1 %226, label %227, label %236, !dbg !756

; <label>:227:                                    ; preds = %222
  %228 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !757
  %229 = getelementptr inbounds %struct._data, %struct._data* %228, i32 0, i32 0, !dbg !759
  %230 = load i8*, i8** %229, align 8, !dbg !759
  %231 = call zeroext i1 @set_namespaces(i8* %230), !dbg !760
  br i1 %231, label %236, label %232, !dbg !761

; <label>:232:                                    ; preds = %227
  %233 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !762
  %234 = getelementptr inbounds %struct._data, %struct._data* %233, i32 0, i32 0, !dbg !764
  %235 = load i8*, i8** %234, align 8, !dbg !764
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* %235), !dbg !765
  br label %334, !dbg !766

; <label>:236:                                    ; preds = %227, %222
  br label %237, !dbg !767

; <label>:237:                                    ; preds = %236, %217
  %238 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !768
  br i1 %238, label %309, label %239, !dbg !770

; <label>:239:                                    ; preds = %237
  %240 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !771
  %241 = getelementptr inbounds %struct._data, %struct._data* %240, i32 0, i32 2, !dbg !774
  %242 = load i8*, i8** %241, align 8, !dbg !774
  %243 = icmp ne i8* %242, null, !dbg !771
  br i1 %243, label %244, label %275, !dbg !775

; <label>:244:                                    ; preds = %239
  %245 = load i8*, i8** @main_pidfile, align 8, !dbg !776
  %246 = icmp ne i8* %245, null, !dbg !776
  br i1 %246, label %254, label %247, !dbg !779

; <label>:247:                                    ; preds = %244
  %248 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !780
  %249 = getelementptr inbounds %struct._data, %struct._data* %248, i32 0, i32 2, !dbg !782
  %250 = load i8*, i8** %249, align 8, !dbg !782
  %251 = call i8* @make_pidfile_name(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !783
  store i8* %251, i8** @main_pidfile, align 8, !dbg !784
  %252 = icmp ne i8* %251, null, !dbg !784
  br i1 %252, label %253, label %254, !dbg !785

; <label>:253:                                    ; preds = %247
  store i8 1, i8* @free_main_pidfile, align 1, !dbg !786
  br label %254, !dbg !787

; <label>:254:                                    ; preds = %253, %247, %244
  %255 = load i8*, i8** @checkers_pidfile, align 8, !dbg !788
  %256 = icmp ne i8* %255, null, !dbg !788
  br i1 %256, label %264, label %257, !dbg !790

; <label>:257:                                    ; preds = %254
  %258 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !791
  %259 = getelementptr inbounds %struct._data, %struct._data* %258, i32 0, i32 2, !dbg !793
  %260 = load i8*, i8** %259, align 8, !dbg !793
  %261 = call i8* @make_pidfile_name(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !794
  store i8* %261, i8** @checkers_pidfile, align 8, !dbg !795
  %262 = icmp ne i8* %261, null, !dbg !795
  br i1 %262, label %263, label %264, !dbg !796

; <label>:263:                                    ; preds = %257
  store i8 1, i8* @free_checkers_pidfile, align 1, !dbg !797
  br label %264, !dbg !798

; <label>:264:                                    ; preds = %263, %257, %254
  %265 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !799
  %266 = icmp ne i8* %265, null, !dbg !799
  br i1 %266, label %274, label %267, !dbg !801

; <label>:267:                                    ; preds = %264
  %268 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !802
  %269 = getelementptr inbounds %struct._data, %struct._data* %268, i32 0, i32 2, !dbg !804
  %270 = load i8*, i8** %269, align 8, !dbg !804
  %271 = call i8* @make_pidfile_name(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* %270, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !805
  store i8* %271, i8** @vrrp_pidfile, align 8, !dbg !806
  %272 = icmp ne i8* %271, null, !dbg !806
  br i1 %272, label %273, label %274, !dbg !807

; <label>:273:                                    ; preds = %267
  store i8 1, i8* @free_vrrp_pidfile, align 1, !dbg !808
  br label %274, !dbg !809

; <label>:274:                                    ; preds = %273, %267, %264
  br label %275, !dbg !810

; <label>:275:                                    ; preds = %274, %239
  %276 = load i8, i8* @use_pid_dir, align 1, !dbg !811
  %277 = trunc i8 %276 to i1, !dbg !811
  br i1 %277, label %278, label %291, !dbg !813

; <label>:278:                                    ; preds = %275
  %279 = load i8*, i8** @main_pidfile, align 8, !dbg !814
  %280 = icmp ne i8* %279, null, !dbg !814
  br i1 %280, label %282, label %281, !dbg !817

; <label>:281:                                    ; preds = %278
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8** @main_pidfile, align 8, !dbg !818
  br label %282, !dbg !819

; <label>:282:                                    ; preds = %281, %278
  %283 = load i8*, i8** @checkers_pidfile, align 8, !dbg !820
  %284 = icmp ne i8* %283, null, !dbg !820
  br i1 %284, label %286, label %285, !dbg !822

; <label>:285:                                    ; preds = %282
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8** @checkers_pidfile, align 8, !dbg !823
  br label %286, !dbg !824

; <label>:286:                                    ; preds = %285, %282
  %287 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !825
  %288 = icmp ne i8* %287, null, !dbg !825
  br i1 %288, label %290, label %289, !dbg !827

; <label>:289:                                    ; preds = %286
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8** @vrrp_pidfile, align 8, !dbg !828
  br label %290, !dbg !829

; <label>:290:                                    ; preds = %289, %286
  br label %304, !dbg !830

; <label>:291:                                    ; preds = %275
  %292 = load i8*, i8** @main_pidfile, align 8, !dbg !831
  %293 = icmp ne i8* %292, null, !dbg !831
  br i1 %293, label %295, label %294, !dbg !834

; <label>:294:                                    ; preds = %291
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8** @main_pidfile, align 8, !dbg !835
  br label %295, !dbg !836

; <label>:295:                                    ; preds = %294, %291
  %296 = load i8*, i8** @checkers_pidfile, align 8, !dbg !837
  %297 = icmp ne i8* %296, null, !dbg !837
  br i1 %297, label %299, label %298, !dbg !839

; <label>:298:                                    ; preds = %295
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8** @checkers_pidfile, align 8, !dbg !840
  br label %299, !dbg !841

; <label>:299:                                    ; preds = %298, %295
  %300 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !842
  %301 = icmp ne i8* %300, null, !dbg !842
  br i1 %301, label %303, label %302, !dbg !844

; <label>:302:                                    ; preds = %299
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8** @vrrp_pidfile, align 8, !dbg !845
  br label %303, !dbg !846

; <label>:303:                                    ; preds = %302, %299
  br label %304

; <label>:304:                                    ; preds = %303, %290
  %305 = load i64, i64* @daemon_mode, align 8, !dbg !847
  %306 = call zeroext i1 @keepalived_running(i64 %305), !dbg !849
  br i1 %306, label %307, label %308, !dbg !850

; <label>:307:                                    ; preds = %304
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0)), !dbg !851
  store i8 0, i8* %6, align 1, !dbg !853
  br label %334, !dbg !854

; <label>:308:                                    ; preds = %304
  br label %309, !dbg !855

; <label>:309:                                    ; preds = %308, %237
  %310 = call zeroext i1 @__test_bit(i32 2, i64* @debug), !dbg !856
  br i1 %310, label %317, label %311, !dbg !858

; <label>:311:                                    ; preds = %309
  %312 = call i32 @xdaemon(i1 zeroext false, i1 zeroext false, i1 zeroext true), !dbg !859
  %313 = icmp sgt i32 %312, 0, !dbg !860
  br i1 %313, label %314, label %317, !dbg !861

; <label>:314:                                    ; preds = %311
  call void @closelog(), !dbg !862
  %315 = load i8*, i8** @config_id, align 8, !dbg !864
  call void @free(i8* %315) #9, !dbg !865
  store i8* null, i8** @config_id, align 8, !dbg !866
  %316 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !867
  call void @free(i8* %316) #9, !dbg !868
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !869
  call void @close_std_fd(), !dbg !870
  call void @exit(i32 0) #11, !dbg !871
  unreachable, !dbg !871

; <label>:317:                                    ; preds = %311, %309
  %318 = call i32 @umask(i32 0) #9, !dbg !872
  %319 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !873
  br i1 %319, label %320, label %321, !dbg !875

; <label>:320:                                    ; preds = %317
  call void @validate_config(), !dbg !876
  call void @config_test_exit(), !dbg !878
  br label %321, !dbg !879

; <label>:321:                                    ; preds = %320, %317
  %322 = load i8*, i8** @main_pidfile, align 8, !dbg !880
  %323 = call i32 @getpid() #9, !dbg !882
  %324 = call i32 @pidfile_write(i8* %322, i32 %323), !dbg !883
  %325 = icmp ne i32 %324, 0, !dbg !885
  br i1 %325, label %327, label %326, !dbg !886

; <label>:326:                                    ; preds = %321
  br label %334, !dbg !887

; <label>:327:                                    ; preds = %321
  %328 = call %struct._thread_master* @thread_make_master(), !dbg !888
  store %struct._thread_master* %328, %struct._thread_master** @master, align 8, !dbg !889
  call void @signal_init(), !dbg !890
  %329 = call i32 @start_keepalived(), !dbg !891
  %330 = icmp ne i32 %329, 0, !dbg !891
  br i1 %330, label %332, label %331, !dbg !893

; <label>:331:                                    ; preds = %327
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0)), !dbg !894
  br label %332, !dbg !894

; <label>:332:                                    ; preds = %331, %327
  call void @initialise_debug_options(), !dbg !895
  %333 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !896
  call void @launch_thread_scheduler(%struct._thread_master* %333), !dbg !897
  call void @stop_keepalived(), !dbg !898
  br label %334, !dbg !898

; <label>:334:                                    ; preds = %332, %326, %307, %232, %154
  %335 = load i8, i8* %6, align 1, !dbg !899
  %336 = trunc i8 %335 to i1, !dbg !899
  br i1 %336, label %337, label %339, !dbg !901

; <label>:337:                                    ; preds = %334
  %338 = load i8*, i8** @version_string, align 8, !dbg !902
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8* %338, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)), !dbg !904
  br label %339, !dbg !905

; <label>:339:                                    ; preds = %337, %334
  %340 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !906
  %341 = icmp ne %struct._data* %340, null, !dbg !906
  br i1 %341, label %342, label %348, !dbg !908

; <label>:342:                                    ; preds = %339
  %343 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !909
  %344 = getelementptr inbounds %struct._data, %struct._data* %343, i32 0, i32 0, !dbg !911
  %345 = load i8*, i8** %344, align 8, !dbg !911
  %346 = icmp ne i8* %345, null, !dbg !909
  br i1 %346, label %347, label %348, !dbg !912

; <label>:347:                                    ; preds = %342
  call void @clear_namespaces(), !dbg !913
  br label %348, !dbg !913

; <label>:348:                                    ; preds = %347, %342, %339
  %349 = load i8, i8* @use_pid_dir, align 1, !dbg !914
  %350 = trunc i8 %349 to i1, !dbg !914
  br i1 %350, label %351, label %352, !dbg !916

; <label>:351:                                    ; preds = %348
  call void @remove_pid_dir(), !dbg !917
  br label %352, !dbg !917

; <label>:352:                                    ; preds = %351, %348
  %353 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !918
  %354 = icmp ne i8* %353, null, !dbg !918
  br i1 %354, label %355, label %357, !dbg !920

; <label>:355:                                    ; preds = %352
  %356 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !921
  call void @update_core_dump_pattern(i8* %356), !dbg !922
  br label %357, !dbg !922

; <label>:357:                                    ; preds = %355, %352
  call void @free_parent_mallocs_startup(i1 zeroext false), !dbg !923
  call void @free_parent_mallocs_exit(), !dbg !924
  %358 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !925
  call void @free_global_data(%struct._data* %358), !dbg !926
  call void @closelog(), !dbg !927
  %359 = load i8*, i8** @syslog_ident, align 8, !dbg !928
  %360 = icmp ne i8* %359, null, !dbg !928
  br i1 %360, label %361, label %363, !dbg !931

; <label>:361:                                    ; preds = %357
  %362 = load i8*, i8** @syslog_ident, align 8, !dbg !932
  call void @free(i8* %362) #9, !dbg !935
  store i8* null, i8** @syslog_ident, align 8, !dbg !936
  br label %363, !dbg !937

; <label>:363:                                    ; preds = %361, %357
  call void @close_std_fd(), !dbg !938
  call void @exit(i32 0) #11, !dbg !939
  unreachable, !dbg !939
                                                  ; No predecessors!
  %365 = load i32, i32* %3, align 4, !dbg !940
  ret i32 %365, !dbg !940
}

declare { i64, i64 } @set_time_now() #2

declare void @save_cmd_line_options(i32, i8**) #2

declare void @set_child_finder_name(i8* (i32)*) #2

; Function Attrs: nounwind uwtable
define internal i8* @find_keepalived_child_name(i32) #0 !dbg !941 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !944, metadata !252), !dbg !945
  %4 = load i32, i32* %3, align 4, !dbg !946
  %5 = load i32, i32* @checkers_child, align 4, !dbg !948
  %6 = icmp eq i32 %4, %5, !dbg !949
  br i1 %6, label %7, label %8, !dbg !950

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8** %2, align 8, !dbg !951
  br label %14, !dbg !951

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !952
  %10 = load i32, i32* @vrrp_child, align 4, !dbg !954
  %11 = icmp eq i32 %9, %10, !dbg !955
  br i1 %11, label %12, label %13, !dbg !956

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8** %2, align 8, !dbg !957
  br label %14, !dbg !957

; <label>:13:                                     ; preds = %8
  store i8* null, i8** %2, align 8, !dbg !958
  br label %14, !dbg !958

; <label>:14:                                     ; preds = %13, %12, %7
  %15 = load i8*, i8** %2, align 8, !dbg !959
  ret i8* %15, !dbg !959
}

declare void @set_child_remover(void (%struct._thread*)*) #2

; Function Attrs: nounwind uwtable
define internal void @parent_child_remover(%struct._thread*) #0 !dbg !960 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1056, metadata !252), !dbg !1057
  %3 = load i32, i32* @prog_type, align 4, !dbg !1058
  %4 = icmp eq i32 %3, 0, !dbg !1060
  br i1 %4, label %5, label %24, !dbg !1061

; <label>:5:                                      ; preds = %1
  %6 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1062
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 6, !dbg !1065
  %8 = bitcast %union.anon.0* %7 to %struct.anon*, !dbg !1066
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1067
  %10 = load i32, i32* %9, align 8, !dbg !1067
  %11 = load i32, i32* @vrrp_child, align 4, !dbg !1068
  %12 = icmp eq i32 %10, %11, !dbg !1069
  br i1 %12, label %13, label %14, !dbg !1070

; <label>:13:                                     ; preds = %5
  store i32 0, i32* @vrrp_child, align 4, !dbg !1071
  br label %14, !dbg !1072

; <label>:14:                                     ; preds = %13, %5
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1073
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 6, !dbg !1075
  %17 = bitcast %union.anon.0* %16 to %struct.anon*, !dbg !1076
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0, !dbg !1077
  %19 = load i32, i32* %18, align 8, !dbg !1077
  %20 = load i32, i32* @checkers_child, align 4, !dbg !1078
  %21 = icmp eq i32 %19, %20, !dbg !1079
  br i1 %21, label %22, label %23, !dbg !1080

; <label>:22:                                     ; preds = %14
  store i32 0, i32* @checkers_child, align 4, !dbg !1081
  br label %23, !dbg !1082

; <label>:23:                                     ; preds = %22, %14
  br label %24, !dbg !1083

; <label>:24:                                     ; preds = %23, %1
  ret void, !dbg !1084
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__set_bit(i32, i64*) #5 !dbg !1085 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1089, metadata !252), !dbg !1090
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1091, metadata !252), !dbg !1092
  %5 = load i32, i32* %3, align 4, !dbg !1093
  %6 = zext i32 %5 to i64, !dbg !1094
  %7 = urem i64 %6, 64, !dbg !1095
  %8 = shl i64 1, %7, !dbg !1096
  %9 = load i32, i32* %3, align 4, !dbg !1097
  %10 = zext i32 %9 to i64, !dbg !1098
  %11 = udiv i64 %10, 64, !dbg !1099
  %12 = load i64*, i64** %4, align 8, !dbg !1100
  %13 = getelementptr inbounds i64, i64* %12, i64 %11, !dbg !1100
  %14 = load i64, i64* %13, align 8, !dbg !1101
  %15 = or i64 %14, %8, !dbg !1101
  store i64 %15, i64* %13, align 8, !dbg !1101
  ret void, !dbg !1102
}

declare void @openlog(i8*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #3

declare void @log_message(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readonly
declare i8* @strchrnul(i8*, i32) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @parse_cmdline(i32, i8**) #0 !dbg !1103 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.utsname, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca [29 x %struct.option], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1106, metadata !252), !dbg !1107
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1108, metadata !252), !dbg !1109
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1110, metadata !252), !dbg !1111
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1112, metadata !252), !dbg !1113
  store i8 0, i8* %6, align 1, !dbg !1113
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1114, metadata !252), !dbg !1115
  call void @llvm.dbg.declare(metadata %struct.utsname* %8, metadata !1116, metadata !252), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1118, metadata !252), !dbg !1119
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1120, metadata !252), !dbg !1121
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1122, metadata !252), !dbg !1123
  store i8 0, i8* %11, align 1, !dbg !1123
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1124, metadata !252), !dbg !1125
  call void @llvm.dbg.declare(metadata [29 x %struct.option]* %13, metadata !1126, metadata !252), !dbg !1138
  %15 = bitcast [29 x %struct.option]* %13 to i8*, !dbg !1138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([29 x %struct.option]* @parse_cmdline.long_options to i8*), i64 928, i32 16, i1 false), !dbg !1138
  %16 = load i32, i32* @optind, align 4, !dbg !1139
  store i32 %16, i32* %10, align 4, !dbg !1140
  br label %17, !dbg !1141

; <label>:17:                                     ; preds = %250, %2
  store i32 -1, i32* %9, align 4, !dbg !1142
  %18 = load i32, i32* %3, align 4, !dbg !1144
  %19 = load i8**, i8*** %4, align 8, !dbg !1145
  %20 = getelementptr inbounds [29 x %struct.option], [29 x %struct.option]* %13, i32 0, i32 0, !dbg !1146
  %21 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i32 0, i32 0), %struct.option* %20, i32* %9) #9, !dbg !1147
  store i32 %21, i32* %5, align 4, !dbg !1148
  %22 = icmp ne i32 %21, -1, !dbg !1149
  br i1 %22, label %23, label %252, !dbg !1150

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %9, align 4, !dbg !1151
  %25 = icmp sge i32 %24, 0, !dbg !1154
  br i1 %25, label %26, label %42, !dbg !1155

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %9, align 4, !dbg !1156
  %28 = sext i32 %27 to i64, !dbg !1158
  %29 = getelementptr inbounds [29 x %struct.option], [29 x %struct.option]* %13, i64 0, i64 %28, !dbg !1158
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 1, !dbg !1159
  %31 = load i32, i32* %30, align 8, !dbg !1159
  %32 = icmp eq i32 %31, 1, !dbg !1160
  br i1 %32, label %33, label %42, !dbg !1161

; <label>:33:                                     ; preds = %26
  %34 = load i8*, i8** @optarg, align 8, !dbg !1162
  %35 = icmp ne i8* %34, null, !dbg !1162
  br i1 %35, label %36, label %42, !dbg !1164

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** @optarg, align 8, !dbg !1165
  %38 = getelementptr inbounds i8, i8* %37, i64 0, !dbg !1165
  %39 = load i8, i8* %38, align 1, !dbg !1165
  %40 = icmp ne i8 %39, 0, !dbg !1165
  br i1 %40, label %42, label %41, !dbg !1167

; <label>:41:                                     ; preds = %36
  store i32 58, i32* %5, align 4, !dbg !1168
  store i8* null, i8** @optarg, align 8, !dbg !1170
  br label %42, !dbg !1171

; <label>:42:                                     ; preds = %41, %36, %33, %26, %23
  %43 = load i32, i32* %5, align 4, !dbg !1172
  switch i32 %43, label %249 [
    i32 118, label %44
    i32 104, label %69
    i32 108, label %73
    i32 110, label %74
    i32 100, label %75
    i32 86, label %76
    i32 73, label %77
    i32 68, label %78
    i32 82, label %83
    i32 88, label %84
    i32 83, label %85
    i32 103, label %99
    i32 71, label %113
    i32 116, label %114
    i32 102, label %138
    i32 2, label %140
    i32 80, label %141
    i32 67, label %142
    i32 112, label %143
    i32 99, label %145
    i32 97, label %147
    i32 114, label %148
    i32 77, label %150
    i32 109, label %162
    i32 115, label %163
    i32 105, label %171
    i32 4, label %184
    i32 3, label %196
    i32 63, label %197
    i32 58, label %223
  ], !dbg !1173

; <label>:44:                                     ; preds = %42
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1174
  %46 = load i8*, i8** @version_string, align 8, !dbg !1176
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* %46), !dbg !1177
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1178
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)), !dbg !1179
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1180
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.61, i32 0, i32 0)), !dbg !1181
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1182
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i32 0, i32 0), i32 4, i32 4, i32 170), !dbg !1183
  %54 = call i32 @uname(%struct.utsname* %8) #9, !dbg !1184
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1185
  %56 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 0, !dbg !1186
  %57 = getelementptr inbounds [65 x i8], [65 x i8]* %56, i32 0, i32 0, !dbg !1187
  %58 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 2, !dbg !1188
  %59 = getelementptr inbounds [65 x i8], [65 x i8]* %58, i32 0, i32 0, !dbg !1189
  %60 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 3, !dbg !1190
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* %60, i32 0, i32 0, !dbg !1191
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0), i8* %57, i8* %59, i8* %61), !dbg !1192
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1193
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0)), !dbg !1194
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1195
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.67, i32 0, i32 0)), !dbg !1196
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([500 x i8], [500 x i8]* @.str.69, i32 0, i32 0)), !dbg !1198
  call void @exit(i32 0) #11, !dbg !1199
  unreachable, !dbg !1199

; <label>:69:                                     ; preds = %42
  %70 = load i8**, i8*** %4, align 8, !dbg !1200
  %71 = getelementptr inbounds i8*, i8** %70, i64 0, !dbg !1200
  %72 = load i8*, i8** %71, align 8, !dbg !1200
  call void @usage(i8* %72), !dbg !1201
  call void @exit(i32 0) #11, !dbg !1202
  unreachable, !dbg !1202

; <label>:73:                                     ; preds = %42
  call void @__set_bit(i32 0, i64* @debug), !dbg !1203
  store i8 1, i8* %6, align 1, !dbg !1204
  br label %250, !dbg !1205

; <label>:74:                                     ; preds = %42
  call void @__set_bit(i32 2, i64* @debug), !dbg !1206
  br label %250, !dbg !1207

; <label>:75:                                     ; preds = %42
  call void @__set_bit(i32 3, i64* @debug), !dbg !1208
  br label %250, !dbg !1209

; <label>:76:                                     ; preds = %42
  call void @__set_bit(i32 4, i64* @debug), !dbg !1210
  br label %250, !dbg !1211

; <label>:77:                                     ; preds = %42
  call void @__set_bit(i32 6, i64* @debug), !dbg !1212
  br label %250, !dbg !1213

; <label>:78:                                     ; preds = %42
  %79 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !1214
  br i1 %79, label %80, label %81, !dbg !1216

; <label>:80:                                     ; preds = %78
  call void @__set_bit(i32 8, i64* @debug), !dbg !1217
  br label %82, !dbg !1217

; <label>:81:                                     ; preds = %78
  call void @__set_bit(i32 7, i64* @debug), !dbg !1218
  br label %82

; <label>:82:                                     ; preds = %81, %80
  br label %250, !dbg !1219

; <label>:83:                                     ; preds = %42
  call void @__set_bit(i32 9, i64* @debug), !dbg !1220
  br label %250, !dbg !1221

; <label>:84:                                     ; preds = %42
  call void @__set_bit(i32 5, i64* @debug), !dbg !1222
  br label %250, !dbg !1223

; <label>:85:                                     ; preds = %42
  %86 = load i8*, i8** @optarg, align 8, !dbg !1224
  %87 = call zeroext i1 @read_unsigned(i8* %86, i32* %12, i32 0, i32 7, i1 zeroext false), !dbg !1226
  br i1 %87, label %92, label %88, !dbg !1227

; <label>:88:                                     ; preds = %85
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1228
  %90 = load i8*, i8** @optarg, align 8, !dbg !1229
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i32 0, i32 0), i8* %90), !dbg !1230
  br label %98, !dbg !1230

; <label>:92:                                     ; preds = %85
  %93 = load i32, i32* %12, align 4, !dbg !1231
  %94 = zext i32 %93 to i64, !dbg !1233
  %95 = getelementptr inbounds [8 x %struct.anon.2], [8 x %struct.anon.2]* @LOG_FACILITY, i64 0, i64 %94, !dbg !1233
  %96 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %95, i32 0, i32 0, !dbg !1234
  %97 = load i32, i32* %96, align 4, !dbg !1234
  store i32 %97, i32* @log_facility, align 4, !dbg !1235
  store i8 1, i8* %6, align 1, !dbg !1236
  br label %98

; <label>:98:                                     ; preds = %92, %88
  br label %250, !dbg !1237

; <label>:99:                                     ; preds = %42
  %100 = load i8*, i8** @optarg, align 8, !dbg !1238
  %101 = icmp ne i8* %100, null, !dbg !1238
  br i1 %101, label %102, label %110, !dbg !1240

; <label>:102:                                    ; preds = %99
  %103 = load i8*, i8** @optarg, align 8, !dbg !1241
  %104 = getelementptr inbounds i8, i8* %103, i64 0, !dbg !1241
  %105 = load i8, i8* %104, align 1, !dbg !1241
  %106 = sext i8 %105 to i32, !dbg !1241
  %107 = icmp ne i32 %106, 0, !dbg !1241
  br i1 %107, label %108, label %110, !dbg !1243

; <label>:108:                                    ; preds = %102
  %109 = load i8*, i8** @optarg, align 8, !dbg !1244
  store i8* %109, i8** @log_file_name, align 8, !dbg !1245
  br label %111, !dbg !1246

; <label>:110:                                    ; preds = %102, %99
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i8** @log_file_name, align 8, !dbg !1247
  br label %111

; <label>:111:                                    ; preds = %110, %108
  %112 = load i8*, i8** @log_file_name, align 8, !dbg !1248
  call void @open_log_file(i8* %112, i8* null, i8* null, i8* null), !dbg !1249
  br label %250, !dbg !1250

; <label>:113:                                    ; preds = %42
  call void @__set_bit(i32 1, i64* @debug), !dbg !1251
  store i8 1, i8* %6, align 1, !dbg !1252
  br label %250, !dbg !1253

; <label>:114:                                    ; preds = %42
  call void @__set_bit(i32 11, i64* @debug), !dbg !1254
  call void @__set_bit(i32 9, i64* @debug), !dbg !1255
  call void @__set_bit(i32 2, i64* @debug), !dbg !1256
  call void @__set_bit(i32 1, i64* @debug), !dbg !1257
  %115 = load i8*, i8** @optarg, align 8, !dbg !1258
  %116 = icmp ne i8* %115, null, !dbg !1258
  br i1 %116, label %117, label %137, !dbg !1260

; <label>:117:                                    ; preds = %114
  %118 = load i8*, i8** @optarg, align 8, !dbg !1261
  %119 = getelementptr inbounds i8, i8* %118, i64 0, !dbg !1261
  %120 = load i8, i8* %119, align 1, !dbg !1261
  %121 = sext i8 %120 to i32, !dbg !1261
  %122 = icmp ne i32 %121, 0, !dbg !1261
  br i1 %122, label %123, label %137, !dbg !1263

; <label>:123:                                    ; preds = %117
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1264, metadata !252), !dbg !1266
  %124 = load i8*, i8** @optarg, align 8, !dbg !1267
  %125 = call i32 (i8*, i32, ...) @open(i8* %124, i32 1089, i32 420), !dbg !1268
  store i32 %125, i32* %14, align 4, !dbg !1266
  %126 = load i32, i32* %14, align 4, !dbg !1269
  %127 = icmp eq i32 %126, -1, !dbg !1271
  br i1 %127, label %128, label %132, !dbg !1272

; <label>:128:                                    ; preds = %123
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1273
  %130 = load i8*, i8** @optarg, align 8, !dbg !1275
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.72, i32 0, i32 0), i8* %130), !dbg !1276
  call void @exit(i32 1) #11, !dbg !1277
  unreachable, !dbg !1277

; <label>:132:                                    ; preds = %123
  %133 = load i32, i32* %14, align 4, !dbg !1278
  %134 = call i32 @dup2(i32 %133, i32 2) #9, !dbg !1279
  %135 = load i32, i32* %14, align 4, !dbg !1280
  %136 = call i32 @close(i32 %135), !dbg !1281
  br label %137, !dbg !1282

; <label>:137:                                    ; preds = %132, %117, %114
  br label %250, !dbg !1283

; <label>:138:                                    ; preds = %42
  %139 = load i8*, i8** @optarg, align 8, !dbg !1284
  store i8* %139, i8** @conf_file, align 8, !dbg !1285
  br label %250, !dbg !1286

; <label>:140:                                    ; preds = %42
  call void @set_flush_log_file(), !dbg !1287
  br label %250, !dbg !1288

; <label>:141:                                    ; preds = %42
  call void @__clear_bit(i32 1, i64* @daemon_mode), !dbg !1289
  br label %250, !dbg !1290

; <label>:142:                                    ; preds = %42
  call void @__clear_bit(i32 0, i64* @daemon_mode), !dbg !1291
  br label %250, !dbg !1292

; <label>:143:                                    ; preds = %42
  %144 = load i8*, i8** @optarg, align 8, !dbg !1293
  store i8* %144, i8** @main_pidfile, align 8, !dbg !1294
  br label %250, !dbg !1295

; <label>:145:                                    ; preds = %42
  %146 = load i8*, i8** @optarg, align 8, !dbg !1296
  store i8* %146, i8** @checkers_pidfile, align 8, !dbg !1297
  br label %250, !dbg !1298

; <label>:147:                                    ; preds = %42
  call void @__set_bit(i32 10, i64* @debug), !dbg !1299
  br label %250, !dbg !1300

; <label>:148:                                    ; preds = %42
  %149 = load i8*, i8** @optarg, align 8, !dbg !1301
  store i8* %149, i8** @vrrp_pidfile, align 8, !dbg !1302
  br label %250, !dbg !1303

; <label>:150:                                    ; preds = %42
  store i8 1, i8* @set_core_dump_pattern, align 1, !dbg !1304
  %151 = load i8*, i8** @optarg, align 8, !dbg !1305
  %152 = icmp ne i8* %151, null, !dbg !1305
  br i1 %152, label %153, label %161, !dbg !1307

; <label>:153:                                    ; preds = %150
  %154 = load i8*, i8** @optarg, align 8, !dbg !1308
  %155 = getelementptr inbounds i8, i8* %154, i64 0, !dbg !1308
  %156 = load i8, i8* %155, align 1, !dbg !1308
  %157 = sext i8 %156 to i32, !dbg !1308
  %158 = icmp ne i32 %157, 0, !dbg !1308
  br i1 %158, label %159, label %161, !dbg !1310

; <label>:159:                                    ; preds = %153
  %160 = load i8*, i8** @optarg, align 8, !dbg !1311
  store i8* %160, i8** @core_dump_pattern, align 8, !dbg !1312
  br label %161, !dbg !1313

; <label>:161:                                    ; preds = %159, %153, %150
  br label %162, !dbg !1314

; <label>:162:                                    ; preds = %42, %161
  store i8 1, i8* @create_core_dump, align 1, !dbg !1316
  br label %250, !dbg !1317

; <label>:163:                                    ; preds = %42
  %164 = load i8*, i8** @optarg, align 8, !dbg !1318
  %165 = call i64 @strlen(i8* %164) #10, !dbg !1319
  %166 = add i64 %165, 1, !dbg !1320
  %167 = call i8* @zalloc(i64 %166), !dbg !1321
  store i8* %167, i8** @override_namespace, align 8, !dbg !1323
  %168 = load i8*, i8** @override_namespace, align 8, !dbg !1324
  %169 = load i8*, i8** @optarg, align 8, !dbg !1325
  %170 = call i8* @strcpy(i8* %168, i8* %169) #9, !dbg !1326
  br label %250, !dbg !1327

; <label>:171:                                    ; preds = %42
  %172 = load i8*, i8** @config_id, align 8, !dbg !1328
  %173 = icmp ne i8* %172, null, !dbg !1328
  br i1 %173, label %174, label %176, !dbg !1331

; <label>:174:                                    ; preds = %171
  %175 = load i8*, i8** @config_id, align 8, !dbg !1332
  call void @free(i8* %175) #9, !dbg !1335
  store i8* null, i8** @config_id, align 8, !dbg !1336
  br label %176, !dbg !1337

; <label>:176:                                    ; preds = %174, %171
  %177 = load i8*, i8** @optarg, align 8, !dbg !1338
  %178 = call i64 @strlen(i8* %177) #10, !dbg !1339
  %179 = add i64 %178, 1, !dbg !1340
  %180 = call i8* @zalloc(i64 %179), !dbg !1341
  store i8* %180, i8** @config_id, align 8, !dbg !1342
  %181 = load i8*, i8** @config_id, align 8, !dbg !1343
  %182 = load i8*, i8** @optarg, align 8, !dbg !1344
  %183 = call i8* @strcpy(i8* %181, i8* %182) #9, !dbg !1345
  br label %250, !dbg !1346

; <label>:184:                                    ; preds = %42
  %185 = load i8*, i8** @optarg, align 8, !dbg !1347
  %186 = call i32 @get_signum(i8* %185), !dbg !1348
  store i32 %186, i32* %7, align 4, !dbg !1349
  %187 = load i32, i32* %7, align 4, !dbg !1350
  %188 = icmp eq i32 %187, -1, !dbg !1352
  br i1 %188, label %189, label %193, !dbg !1353

; <label>:189:                                    ; preds = %184
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1354
  %191 = load i8*, i8** @optarg, align 8, !dbg !1356
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0), i8* %191), !dbg !1357
  call void @exit(i32 1) #11, !dbg !1358
  unreachable, !dbg !1358

; <label>:193:                                    ; preds = %184
  %194 = load i32, i32* %7, align 4, !dbg !1359
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i32 %194), !dbg !1360
  call void @exit(i32 0) #11, !dbg !1361
  unreachable, !dbg !1361

; <label>:196:                                    ; preds = %42
  call void @__set_bit(i32 2, i64* @daemon_mode), !dbg !1362
  call void @__set_bit(i32 0, i64* @daemon_mode), !dbg !1363
  call void @__set_bit(i32 1, i64* @daemon_mode), !dbg !1364
  br label %250, !dbg !1365

; <label>:197:                                    ; preds = %42
  %198 = load i32, i32* @optopt, align 4, !dbg !1366
  %199 = icmp ne i32 %198, 0, !dbg !1366
  br i1 %199, label %200, label %214, !dbg !1368

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %10, align 4, !dbg !1369
  %202 = sext i32 %201 to i64, !dbg !1371
  %203 = load i8**, i8*** %4, align 8, !dbg !1371
  %204 = getelementptr inbounds i8*, i8** %203, i64 %202, !dbg !1371
  %205 = load i8*, i8** %204, align 8, !dbg !1371
  %206 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !1371
  %207 = load i8, i8* %206, align 1, !dbg !1371
  %208 = sext i8 %207 to i32, !dbg !1371
  %209 = icmp ne i32 %208, 45, !dbg !1372
  br i1 %209, label %210, label %214, !dbg !1373

; <label>:210:                                    ; preds = %200
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1374
  %212 = load i32, i32* @optopt, align 4, !dbg !1375
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i32 %212), !dbg !1376
  br label %222, !dbg !1376

; <label>:214:                                    ; preds = %200, %197
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1377
  %216 = load i32, i32* %10, align 4, !dbg !1378
  %217 = sext i32 %216 to i64, !dbg !1379
  %218 = load i8**, i8*** %4, align 8, !dbg !1379
  %219 = getelementptr inbounds i8*, i8** %218, i64 %217, !dbg !1379
  %220 = load i8*, i8** %219, align 8, !dbg !1379
  %221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i8* %220), !dbg !1380
  br label %222

; <label>:222:                                    ; preds = %214, %210
  store i8 1, i8* %11, align 1, !dbg !1381
  br label %250, !dbg !1382

; <label>:223:                                    ; preds = %42
  %224 = load i32, i32* @optopt, align 4, !dbg !1383
  %225 = icmp ne i32 %224, 0, !dbg !1383
  br i1 %225, label %226, label %240, !dbg !1385

; <label>:226:                                    ; preds = %223
  %227 = load i32, i32* %10, align 4, !dbg !1386
  %228 = sext i32 %227 to i64, !dbg !1388
  %229 = load i8**, i8*** %4, align 8, !dbg !1388
  %230 = getelementptr inbounds i8*, i8** %229, i64 %228, !dbg !1388
  %231 = load i8*, i8** %230, align 8, !dbg !1388
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !1388
  %233 = load i8, i8* %232, align 1, !dbg !1388
  %234 = sext i8 %233 to i32, !dbg !1388
  %235 = icmp ne i32 %234, 45, !dbg !1389
  br i1 %235, label %236, label %240, !dbg !1390

; <label>:236:                                    ; preds = %226
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1391
  %238 = load i32, i32* @optopt, align 4, !dbg !1392
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i32 0, i32 0), i32 %238), !dbg !1393
  br label %248, !dbg !1393

; <label>:240:                                    ; preds = %226, %223
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1394
  %242 = load i32, i32* %9, align 4, !dbg !1395
  %243 = sext i32 %242 to i64, !dbg !1396
  %244 = getelementptr inbounds [29 x %struct.option], [29 x %struct.option]* %13, i64 0, i64 %243, !dbg !1396
  %245 = getelementptr inbounds %struct.option, %struct.option* %244, i32 0, i32 0, !dbg !1397
  %246 = load i8*, i8** %245, align 16, !dbg !1397
  %247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* %246), !dbg !1398
  br label %248

; <label>:248:                                    ; preds = %240, %236
  store i8 1, i8* %11, align 1, !dbg !1399
  br label %250, !dbg !1400

; <label>:249:                                    ; preds = %42
  call void @exit(i32 1) #11, !dbg !1401
  unreachable, !dbg !1401

; <label>:250:                                    ; preds = %248, %222, %196, %176, %163, %162, %148, %147, %145, %143, %142, %141, %140, %138, %137, %113, %111, %98, %84, %83, %82, %77, %76, %75, %74, %73
  %251 = load i32, i32* @optind, align 4, !dbg !1402
  store i32 %251, i32* %10, align 4, !dbg !1403
  br label %17, !dbg !1404, !llvm.loop !1406

; <label>:252:                                    ; preds = %17
  %253 = load i32, i32* @optind, align 4, !dbg !1407
  %254 = load i32, i32* %3, align 4, !dbg !1409
  %255 = icmp slt i32 %253, %254, !dbg !1410
  br i1 %255, label %256, label %272, !dbg !1411

; <label>:256:                                    ; preds = %252
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i32 0, i32 0)), !dbg !1412
  br label %258, !dbg !1414

; <label>:258:                                    ; preds = %262, %256
  %259 = load i32, i32* @optind, align 4, !dbg !1415
  %260 = load i32, i32* %3, align 4, !dbg !1417
  %261 = icmp slt i32 %259, %260, !dbg !1418
  br i1 %261, label %262, label %270, !dbg !1419

; <label>:262:                                    ; preds = %258
  %263 = load i32, i32* @optind, align 4, !dbg !1420
  %264 = add nsw i32 %263, 1, !dbg !1420
  store i32 %264, i32* @optind, align 4, !dbg !1420
  %265 = sext i32 %263 to i64, !dbg !1421
  %266 = load i8**, i8*** %4, align 8, !dbg !1421
  %267 = getelementptr inbounds i8*, i8** %266, i64 %265, !dbg !1421
  %268 = load i8*, i8** %267, align 8, !dbg !1421
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i8* %268), !dbg !1422
  br label %258, !dbg !1423, !llvm.loop !1425

; <label>:270:                                    ; preds = %258
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0)), !dbg !1426
  br label %272, !dbg !1427

; <label>:272:                                    ; preds = %270, %252
  %273 = load i8, i8* %11, align 1, !dbg !1428
  %274 = trunc i8 %273 to i1, !dbg !1428
  br i1 %274, label %275, label %276, !dbg !1430

; <label>:275:                                    ; preds = %272
  call void @exit(i32 1) #11, !dbg !1431
  unreachable, !dbg !1431

; <label>:276:                                    ; preds = %272
  %277 = load i8, i8* %6, align 1, !dbg !1432
  %278 = trunc i8 %277 to i1, !dbg !1432
  ret i1 %278, !dbg !1433
}

declare void @closelog() #2

declare void @enable_console_log() #2

; Function Attrs: nounwind uwtable
define internal void @core_dump_init() #0 !dbg !1434 {
  %1 = alloca %struct.rlimit, align 8
  %2 = alloca %struct.rlimit, align 8
  call void @llvm.dbg.declare(metadata %struct.rlimit* %1, metadata !1435, metadata !252), !dbg !1441
  call void @llvm.dbg.declare(metadata %struct.rlimit* %2, metadata !1442, metadata !252), !dbg !1443
  %3 = load i8, i8* @set_core_dump_pattern, align 1, !dbg !1444
  %4 = trunc i8 %3 to i1, !dbg !1444
  br i1 %4, label %5, label %7, !dbg !1446

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** @core_dump_pattern, align 8, !dbg !1447
  call void @update_core_dump_pattern(i8* %6), !dbg !1449
  br label %7, !dbg !1450

; <label>:7:                                      ; preds = %5, %0
  %8 = load i8, i8* @create_core_dump, align 1, !dbg !1451
  %9 = trunc i8 %8 to i1, !dbg !1451
  br i1 %9, label %10, label %23, !dbg !1453

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1454
  store i64 -1, i64* %11, align 8, !dbg !1456
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1, !dbg !1457
  store i64 -1, i64* %12, align 8, !dbg !1458
  %13 = call i32 @getrlimit(i32 4, %struct.rlimit* %1) #9, !dbg !1459
  %14 = icmp eq i32 %13, -1, !dbg !1461
  br i1 %14, label %15, label %16, !dbg !1462

; <label>:15:                                     ; preds = %10
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.112, i32 0, i32 0)), !dbg !1463
  br label %22, !dbg !1463

; <label>:16:                                     ; preds = %10
  %17 = call i32 @setrlimit(i32 4, %struct.rlimit* %2) #9, !dbg !1464
  %18 = icmp eq i32 %17, -1, !dbg !1466
  br i1 %18, label %19, label %20, !dbg !1467

; <label>:19:                                     ; preds = %16
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0)), !dbg !1468
  br label %21, !dbg !1468

; <label>:20:                                     ; preds = %16
  call void @set_child_rlimit(i32 4, %struct.rlimit* %1), !dbg !1469
  br label %21

; <label>:21:                                     ; preds = %20, %19
  br label %22

; <label>:22:                                     ; preds = %21, %15
  br label %23, !dbg !1470

; <label>:23:                                     ; preds = %22, %7
  ret void, !dbg !1471
}

declare void @log_command_line(i32) #2

declare void @netlink_set_recv_buf_size() #2

declare zeroext i1 @check_conf_file(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @config_test_exit() #0 !dbg !1472 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1473, metadata !252), !dbg !1475
  %2 = call i32 @get_config_status(), !dbg !1476
  store i32 %2, i32* %1, align 4, !dbg !1475
  %3 = load i32, i32* %1, align 4, !dbg !1477
  switch i32 %3, label %7 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 12, label %6
  ], !dbg !1478

; <label>:4:                                      ; preds = %0
  call void @exit(i32 0) #11, !dbg !1479
  unreachable, !dbg !1479

; <label>:5:                                      ; preds = %0, %0, %0
  call void @exit(i32 3) #11, !dbg !1481
  unreachable, !dbg !1481

; <label>:6:                                      ; preds = %0
  call void @exit(i32 5) #11, !dbg !1482
  unreachable, !dbg !1482

; <label>:7:                                      ; preds = %0
  call void @exit(i32 4) #11, !dbg !1483
  unreachable, !dbg !1483
                                                  ; No predecessors!
  ret void, !dbg !1484
}

declare %struct._data* @alloc_global_data() #2

; Function Attrs: nounwind uwtable
define internal void @read_config_file() #0 !dbg !1485 {
  %1 = load i8*, i8** @conf_file, align 8, !dbg !1486
  call void @init_data(i8* %1, %struct._vector* ()* @global_init_keywords), !dbg !1487
  ret void, !dbg !1488
}

declare void @init_global_data(%struct._data*) #2

declare void @open_log_file(i8*, i8*, i8*, i8*) #2

declare void @create_pid_dir() #2

declare zeroext i1 @set_namespaces(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @make_pidfile_name(i8*, i8*, i8*) #0 !dbg !1489 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1492, metadata !252), !dbg !1493
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1494, metadata !252), !dbg !1495
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1496, metadata !252), !dbg !1497
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1498, metadata !252), !dbg !1499
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1500, metadata !252), !dbg !1501
  %10 = load i8*, i8** %5, align 8, !dbg !1502
  %11 = call i64 @strlen(i8* %10) #10, !dbg !1503
  %12 = add i64 %11, 1, !dbg !1504
  store i64 %12, i64* %8, align 8, !dbg !1505
  %13 = load i8*, i8** %6, align 8, !dbg !1506
  %14 = icmp ne i8* %13, null, !dbg !1506
  br i1 %14, label %15, label %21, !dbg !1508

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !1509
  %17 = call i64 @strlen(i8* %16) #10, !dbg !1510
  %18 = add i64 %17, 1, !dbg !1511
  %19 = load i64, i64* %8, align 8, !dbg !1512
  %20 = add i64 %19, %18, !dbg !1512
  store i64 %20, i64* %8, align 8, !dbg !1512
  br label %21, !dbg !1513

; <label>:21:                                     ; preds = %15, %3
  %22 = load i8*, i8** %7, align 8, !dbg !1514
  %23 = icmp ne i8* %22, null, !dbg !1514
  br i1 %23, label %24, label %29, !dbg !1516

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %7, align 8, !dbg !1517
  %26 = call i64 @strlen(i8* %25) #10, !dbg !1518
  %27 = load i64, i64* %8, align 8, !dbg !1519
  %28 = add i64 %27, %26, !dbg !1519
  store i64 %28, i64* %8, align 8, !dbg !1519
  br label %29, !dbg !1520

; <label>:29:                                     ; preds = %24, %21
  %30 = load i64, i64* %8, align 8, !dbg !1521
  %31 = call i8* @zalloc(i64 %30), !dbg !1522
  store i8* %31, i8** %9, align 8, !dbg !1523
  %32 = load i8*, i8** %9, align 8, !dbg !1524
  %33 = icmp ne i8* %32, null, !dbg !1524
  br i1 %33, label %36, label %34, !dbg !1526

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %5, align 8, !dbg !1527
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.114, i32 0, i32 0), i8* %35), !dbg !1529
  store i8* null, i8** %4, align 8, !dbg !1530
  br label %57, !dbg !1530

; <label>:36:                                     ; preds = %29
  %37 = load i8*, i8** %9, align 8, !dbg !1531
  %38 = load i8*, i8** %5, align 8, !dbg !1532
  %39 = call i8* @strcpy(i8* %37, i8* %38) #9, !dbg !1533
  %40 = load i8*, i8** %6, align 8, !dbg !1534
  %41 = icmp ne i8* %40, null, !dbg !1534
  br i1 %41, label %42, label %48, !dbg !1536

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %9, align 8, !dbg !1537
  %44 = call i8* @strcat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !1539
  %45 = load i8*, i8** %9, align 8, !dbg !1540
  %46 = load i8*, i8** %6, align 8, !dbg !1541
  %47 = call i8* @strcat(i8* %45, i8* %46) #9, !dbg !1542
  br label %48, !dbg !1543

; <label>:48:                                     ; preds = %42, %36
  %49 = load i8*, i8** %7, align 8, !dbg !1544
  %50 = icmp ne i8* %49, null, !dbg !1544
  br i1 %50, label %51, label %55, !dbg !1546

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %9, align 8, !dbg !1547
  %53 = load i8*, i8** %7, align 8, !dbg !1548
  %54 = call i8* @strcat(i8* %52, i8* %53) #9, !dbg !1549
  br label %55, !dbg !1549

; <label>:55:                                     ; preds = %51, %48
  %56 = load i8*, i8** %9, align 8, !dbg !1550
  store i8* %56, i8** %4, align 8, !dbg !1551
  br label %57, !dbg !1551

; <label>:57:                                     ; preds = %55, %34
  %58 = load i8*, i8** %4, align 8, !dbg !1552
  ret i8* %58, !dbg !1552
}

declare zeroext i1 @keepalived_running(i64) #2

declare i32 @xdaemon(i1 zeroext, i1 zeroext, i1 zeroext) #2

declare void @close_std_fd() #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind
declare i32 @umask(i32) #3

; Function Attrs: nounwind uwtable
define internal void @validate_config() #0 !dbg !1553 {
  call void @kernel_netlink_read_interfaces(), !dbg !1554
  store i32 2, i32* @prog_type, align 4, !dbg !1555
  call void @check_validate_config(), !dbg !1556
  store i32 1, i32* @prog_type, align 4, !dbg !1557
  call void @vrrp_validate_config(), !dbg !1558
  ret void, !dbg !1559
}

declare i32 @pidfile_write(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @getpid() #3

declare %struct._thread_master* @thread_make_master() #2

; Function Attrs: nounwind uwtable
define internal void @signal_init() #0 !dbg !1560 {
  call void @signal_set(i32 1, void (i8*, i32)* @propogate_signal, i8* null), !dbg !1561
  call void @signal_set(i32 10, void (i8*, i32)* @propogate_signal, i8* null), !dbg !1562
  call void @signal_set(i32 12, void (i8*, i32)* @propogate_signal, i8* null), !dbg !1563
  call void @signal_set(i32 2, void (i8*, i32)* @sigend, i8* null), !dbg !1564
  call void @signal_set(i32 15, void (i8*, i32)* @sigend, i8* null), !dbg !1565
  call void @signal_ignore(i32 13), !dbg !1566
  ret void, !dbg !1567
}

; Function Attrs: nounwind uwtable
define internal i32 @start_keepalived() #0 !dbg !1568 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !1571, metadata !252), !dbg !1572
  store i8 0, i8* %1, align 1, !dbg !1572
  %2 = call zeroext i1 @running_checker(), !dbg !1573
  br i1 %2, label %3, label %5, !dbg !1575

; <label>:3:                                      ; preds = %0
  %4 = call i32 @start_check_child(), !dbg !1576
  store i8 1, i8* %1, align 1, !dbg !1578
  br label %5, !dbg !1579

; <label>:5:                                      ; preds = %3, %0
  %6 = call zeroext i1 @running_vrrp(), !dbg !1580
  br i1 %6, label %7, label %9, !dbg !1582

; <label>:7:                                      ; preds = %5
  %8 = call i32 @start_vrrp_child(), !dbg !1583
  store i8 1, i8* %1, align 1, !dbg !1585
  br label %9, !dbg !1586

; <label>:9:                                      ; preds = %7, %5
  %10 = load i8, i8* %1, align 1, !dbg !1587
  %11 = trunc i8 %10 to i1, !dbg !1587
  %12 = zext i1 %11 to i32, !dbg !1587
  ret i32 %12, !dbg !1588
}

declare void @launch_thread_scheduler(%struct._thread_master*) #2

declare void @clear_namespaces() #2

declare void @remove_pid_dir() #2

; Function Attrs: nounwind uwtable
define internal void @update_core_dump_pattern(i8*) #0 !dbg !1589 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1592, metadata !252), !dbg !1593
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1594, metadata !252), !dbg !1595
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1596, metadata !252), !dbg !1597
  %5 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !1598
  %6 = icmp eq i8* %5, null, !dbg !1599
  %7 = zext i1 %6 to i8, !dbg !1597
  store i8 %7, i8* %4, align 1, !dbg !1597
  %8 = load i8, i8* %4, align 1, !dbg !1600
  %9 = trunc i8 %8 to i1, !dbg !1600
  br i1 %9, label %10, label %12, !dbg !1602

; <label>:10:                                     ; preds = %1
  %11 = call i8* @zalloc(i64 128), !dbg !1603
  store i8* %11, i8** @orig_core_dump_pattern, align 8, !dbg !1604
  br label %12, !dbg !1605

; <label>:12:                                     ; preds = %10, %1
  %13 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.125, i32 0, i32 0), i32 2), !dbg !1606
  store i32 %13, i32* %3, align 4, !dbg !1607
  %14 = load i32, i32* %3, align 4, !dbg !1608
  %15 = icmp eq i32 %14, -1, !dbg !1610
  br i1 %15, label %31, label %16, !dbg !1611

; <label>:16:                                     ; preds = %12
  %17 = load i8, i8* %4, align 1, !dbg !1612
  %18 = trunc i8 %17 to i1, !dbg !1612
  br i1 %18, label %19, label %24, !dbg !1613

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4, !dbg !1614
  %21 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !1616
  %22 = call i64 @read(i32 %20, i8* %21, i64 127), !dbg !1617
  %23 = icmp eq i64 %22, -1, !dbg !1618
  br i1 %23, label %31, label %24, !dbg !1619

; <label>:24:                                     ; preds = %19, %16
  %25 = load i32, i32* %3, align 4, !dbg !1620
  %26 = load i8*, i8** %2, align 8, !dbg !1621
  %27 = load i8*, i8** %2, align 8, !dbg !1622
  %28 = call i64 @strlen(i8* %27) #10, !dbg !1623
  %29 = call i64 @write(i32 %25, i8* %26, i64 %28), !dbg !1624
  %30 = icmp eq i64 %29, -1, !dbg !1625
  br i1 %30, label %31, label %39, !dbg !1626

; <label>:31:                                     ; preds = %24, %19, %12
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.126, i32 0, i32 0)), !dbg !1628
  %32 = load i32, i32* %3, align 4, !dbg !1630
  %33 = icmp ne i32 %32, -1, !dbg !1632
  br i1 %33, label %34, label %37, !dbg !1633

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %3, align 4, !dbg !1634
  %36 = call i32 @close(i32 %35), !dbg !1635
  br label %37, !dbg !1635

; <label>:37:                                     ; preds = %34, %31
  %38 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !1636
  call void @free(i8* %38) #9, !dbg !1637
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !1638
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !1639
  br label %46, !dbg !1640

; <label>:39:                                     ; preds = %24
  %40 = load i32, i32* %3, align 4, !dbg !1641
  %41 = call i32 @close(i32 %40), !dbg !1642
  %42 = load i8, i8* %4, align 1, !dbg !1643
  %43 = trunc i8 %42 to i1, !dbg !1643
  br i1 %43, label %46, label %44, !dbg !1645

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** @orig_core_dump_pattern, align 8, !dbg !1646
  call void @free(i8* %45) #9, !dbg !1648
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !1649
  store i8* null, i8** @orig_core_dump_pattern, align 8, !dbg !1650
  br label %46, !dbg !1651

; <label>:46:                                     ; preds = %37, %44, %39
  ret void, !dbg !1652
}

declare void @free_global_data(%struct._data*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !1653 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1654, metadata !252), !dbg !1655
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1656
  %4 = load i8*, i8** %2, align 8, !dbg !1657
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0), i8* %4), !dbg !1658
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1659
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.83, i32 0, i32 0)), !dbg !1660
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1661
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.84, i32 0, i32 0)), !dbg !1662
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1663
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.85, i32 0, i32 0)), !dbg !1664
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1665
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.86, i32 0, i32 0)), !dbg !1666
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1667
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i32 0, i32 0)), !dbg !1668
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1669
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.88, i32 0, i32 0)), !dbg !1670
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1671
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.89, i32 0, i32 0)), !dbg !1672
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1673
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.90, i32 0, i32 0)), !dbg !1674
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1675
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.91, i32 0, i32 0)), !dbg !1676
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1677
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.92, i32 0, i32 0)), !dbg !1678
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1679
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i32 0, i32 0)), !dbg !1680
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1681
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.94, i32 0, i32 0)), !dbg !1682
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1683
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.95, i32 0, i32 0)), !dbg !1684
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1685
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.96, i32 0, i32 0)), !dbg !1686
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1687
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.97, i32 0, i32 0)), !dbg !1688
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1689
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.98, i32 0, i32 0)), !dbg !1690
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1691
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.99, i32 0, i32 0)), !dbg !1692
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1693
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.100, i32 0, i32 0)), !dbg !1694
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1695
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.101, i32 0, i32 0)), !dbg !1696
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1697
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.102, i32 0, i32 0)), !dbg !1698
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1699
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.103, i32 0, i32 0)), !dbg !1700
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1701
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.104, i32 0, i32 0)), !dbg !1702
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1703
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.105, i32 0, i32 0)), !dbg !1704
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1705
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str.106, i32 0, i32 0)), !dbg !1706
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1707
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.107, i32 0, i32 0)), !dbg !1708
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1709
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.108, i32 0, i32 0)), !dbg !1710
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1711
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.109, i32 0, i32 0)), !dbg !1712
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1713
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.110, i32 0, i32 0)), !dbg !1714
  ret void, !dbg !1715
}

declare zeroext i1 @read_unsigned(i8*, i32*, i32, i32, i1 zeroext) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

declare i32 @close(i32) #2

declare void @set_flush_log_file() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @__clear_bit(i32, i64*) #5 !dbg !1716 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1717, metadata !252), !dbg !1718
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1719, metadata !252), !dbg !1720
  %5 = load i32, i32* %3, align 4, !dbg !1721
  %6 = zext i32 %5 to i64, !dbg !1722
  %7 = urem i64 %6, 64, !dbg !1723
  %8 = shl i64 1, %7, !dbg !1724
  %9 = xor i64 %8, -1, !dbg !1725
  %10 = load i32, i32* %3, align 4, !dbg !1726
  %11 = zext i32 %10 to i64, !dbg !1727
  %12 = udiv i64 %11, 64, !dbg !1728
  %13 = load i64*, i64** %4, align 8, !dbg !1729
  %14 = getelementptr inbounds i64, i64* %13, i64 %12, !dbg !1729
  %15 = load i64, i64* %14, align 8, !dbg !1730
  %16 = and i64 %15, %9, !dbg !1730
  store i64 %16, i64* %14, align 8, !dbg !1730
  ret void, !dbg !1731
}

declare i32 @get_signum(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #3

declare void @set_child_rlimit(i32, %struct.rlimit*) #2

declare i32 @get_config_status() #2

declare void @init_data(i8*, %struct._vector* ()*) #2

; Function Attrs: nounwind uwtable
define internal %struct._vector* @global_init_keywords() #0 !dbg !1732 {
  call void @init_global_keywords(i1 zeroext true), !dbg !1744
  call void @init_vrrp_keywords(i1 zeroext false), !dbg !1745
  call void @init_check_keywords(i1 zeroext false), !dbg !1746
  %1 = load %struct._vector*, %struct._vector** @keywords, align 8, !dbg !1747
  ret %struct._vector* %1, !dbg !1748
}

declare void @init_global_keywords(i1 zeroext) #2

declare void @init_vrrp_keywords(i1 zeroext) #2

declare void @init_check_keywords(i1 zeroext) #2

declare void @kernel_netlink_read_interfaces() #2

declare void @check_validate_config() #2

declare void @vrrp_validate_config() #2

declare void @signal_set(i32, void (i8*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @propogate_signal(i8*, i32) #0 !dbg !1749 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1752, metadata !252), !dbg !1753
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1754, metadata !252), !dbg !1755
  %5 = load i32, i32* %4, align 4, !dbg !1756
  %6 = icmp eq i32 %5, 1, !dbg !1758
  br i1 %6, label %7, label %11, !dbg !1759

; <label>:7:                                      ; preds = %2
  %8 = call zeroext i1 @reload_config(), !dbg !1760
  br i1 %8, label %10, label %9, !dbg !1763

; <label>:9:                                      ; preds = %7
  br label %42, !dbg !1764

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !1765

; <label>:11:                                     ; preds = %10, %2
  %12 = load i32, i32* @vrrp_child, align 4, !dbg !1766
  %13 = icmp sgt i32 %12, 0, !dbg !1768
  br i1 %13, label %14, label %18, !dbg !1769

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* @vrrp_child, align 4, !dbg !1770
  %16 = load i32, i32* %4, align 4, !dbg !1771
  %17 = call i32 @kill(i32 %15, i32 %16) #9, !dbg !1772
  br label %26, !dbg !1772

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %4, align 4, !dbg !1773
  %20 = icmp eq i32 %19, 1, !dbg !1775
  br i1 %20, label %21, label %25, !dbg !1776

; <label>:21:                                     ; preds = %18
  %22 = call zeroext i1 @running_vrrp(), !dbg !1777
  br i1 %22, label %23, label %25, !dbg !1779

; <label>:23:                                     ; preds = %21
  %24 = call i32 @start_vrrp_child(), !dbg !1780
  br label %25, !dbg !1780

; <label>:25:                                     ; preds = %23, %21, %18
  br label %26

; <label>:26:                                     ; preds = %25, %14
  %27 = load i32, i32* %4, align 4, !dbg !1781
  %28 = icmp eq i32 %27, 1, !dbg !1783
  br i1 %28, label %29, label %42, !dbg !1784

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* @checkers_child, align 4, !dbg !1785
  %31 = icmp sgt i32 %30, 0, !dbg !1788
  br i1 %31, label %32, label %36, !dbg !1789

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* @checkers_child, align 4, !dbg !1790
  %34 = load i32, i32* %4, align 4, !dbg !1791
  %35 = call i32 @kill(i32 %33, i32 %34) #9, !dbg !1792
  br label %41, !dbg !1792

; <label>:36:                                     ; preds = %29
  %37 = call zeroext i1 @running_checker(), !dbg !1793
  br i1 %37, label %38, label %40, !dbg !1795

; <label>:38:                                     ; preds = %36
  %39 = call i32 @start_check_child(), !dbg !1796
  br label %40, !dbg !1796

; <label>:40:                                     ; preds = %38, %36
  br label %41

; <label>:41:                                     ; preds = %40, %32
  br label %42, !dbg !1797

; <label>:42:                                     ; preds = %9, %41, %26
  ret void, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal void @sigend(i8*, i32) #0 !dbg !1799 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.signalfd_siginfo, align 8
  %14 = alloca %struct.__sigset_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1800, metadata !252), !dbg !1801
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1802, metadata !252), !dbg !1803
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1804, metadata !252), !dbg !1805
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1806, metadata !252), !dbg !1807
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1808, metadata !252), !dbg !1809
  store i32 0, i32* %7, align 4, !dbg !1809
  call void @llvm.dbg.declare(metadata %struct.timeval* %8, metadata !1810, metadata !252), !dbg !1811
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !1812, metadata !252), !dbg !1813
  call void @llvm.dbg.declare(metadata %struct.timeval* %10, metadata !1814, metadata !252), !dbg !1815
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !1816
  %18 = load i32, i32* @child_wait_time, align 4, !dbg !1817
  %19 = zext i32 %18 to i64, !dbg !1817
  store i64 %19, i64* %17, align 8, !dbg !1816
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1, !dbg !1816
  store i64 0, i64* %20, align 8, !dbg !1816
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1818, metadata !252), !dbg !1819
  %21 = call i32 @signal_rfd(), !dbg !1820
  store i32 %21, i32* %11, align 4, !dbg !1819
  call void @llvm.dbg.declare(metadata %struct.fd_set* %12, metadata !1821, metadata !252), !dbg !1829
  call void @llvm.dbg.declare(metadata %struct.signalfd_siginfo* %13, metadata !1830, metadata !252), !dbg !1860
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %14, metadata !1861, metadata !252), !dbg !1869
  %22 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1870
  %23 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %22), !dbg !1871
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0)), !dbg !1872
  %24 = call i32 @sigemptyset(%struct.__sigset_t* %14) #9, !dbg !1873
  %25 = call i32 @sigaddset(%struct.__sigset_t* %14, i32 17) #9, !dbg !1874
  %26 = load i32, i32* %11, align 4, !dbg !1875
  %27 = call i32 @signalfd(i32 %26, %struct.__sigset_t* %14, i32 0) #9, !dbg !1876
  br label %28, !dbg !1877, !llvm.loop !1878

; <label>:28:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1879, metadata !252), !dbg !1881
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1882, metadata !252), !dbg !1883
  %29 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0, !dbg !1884
  %30 = getelementptr inbounds [16 x i64], [16 x i64]* %29, i64 0, i64 0, !dbg !1886
  %31 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %30) #9, !dbg !1887, !srcloc !1888
  %32 = extractvalue { i64, i64* } %31, 0, !dbg !1887
  %33 = extractvalue { i64, i64* } %31, 1, !dbg !1887
  %34 = trunc i64 %32 to i32, !dbg !1887
  store i32 %34, i32* %15, align 4, !dbg !1887
  %35 = ptrtoint i64* %33 to i64, !dbg !1887
  %36 = trunc i64 %35 to i32, !dbg !1887
  store i32 %36, i32* %16, align 4, !dbg !1887
  br label %37, !dbg !1889

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* @vrrp_child, align 4, !dbg !1890
  %39 = icmp sgt i32 %38, 0, !dbg !1892
  br i1 %39, label %40, label %54, !dbg !1893

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* @vrrp_child, align 4, !dbg !1894
  %42 = call i32 @kill(i32 %41, i32 15) #9, !dbg !1897
  %43 = icmp ne i32 %42, 0, !dbg !1897
  br i1 %43, label %44, label %50, !dbg !1898

; <label>:44:                                     ; preds = %40
  %45 = call i32* @__errno_location() #1, !dbg !1899
  %46 = load i32, i32* %45, align 4, !dbg !1902
  %47 = icmp eq i32 %46, 3, !dbg !1903
  br i1 %47, label %48, label %49, !dbg !1904

; <label>:48:                                     ; preds = %44
  store i32 0, i32* @vrrp_child, align 4, !dbg !1905
  br label %49, !dbg !1906

; <label>:49:                                     ; preds = %48, %44
  br label %53, !dbg !1907

; <label>:50:                                     ; preds = %40
  %51 = load i32, i32* %7, align 4, !dbg !1908
  %52 = add nsw i32 %51, 1, !dbg !1908
  store i32 %52, i32* %7, align 4, !dbg !1908
  br label %53

; <label>:53:                                     ; preds = %50, %49
  br label %54, !dbg !1909

; <label>:54:                                     ; preds = %53, %37
  %55 = load i32, i32* @checkers_child, align 4, !dbg !1910
  %56 = icmp sgt i32 %55, 0, !dbg !1912
  br i1 %56, label %57, label %71, !dbg !1913

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* @checkers_child, align 4, !dbg !1914
  %59 = call i32 @kill(i32 %58, i32 15) #9, !dbg !1917
  %60 = icmp ne i32 %59, 0, !dbg !1917
  br i1 %60, label %61, label %67, !dbg !1918

; <label>:61:                                     ; preds = %57
  %62 = call i32* @__errno_location() #1, !dbg !1919
  %63 = load i32, i32* %62, align 4, !dbg !1922
  %64 = icmp eq i32 %63, 3, !dbg !1923
  br i1 %64, label %65, label %66, !dbg !1924

; <label>:65:                                     ; preds = %61
  store i32 0, i32* @checkers_child, align 4, !dbg !1925
  br label %66, !dbg !1926

; <label>:66:                                     ; preds = %65, %61
  br label %70, !dbg !1927

; <label>:67:                                     ; preds = %57
  %68 = load i32, i32* %7, align 4, !dbg !1928
  %69 = add nsw i32 %68, 1, !dbg !1928
  store i32 %69, i32* %7, align 4, !dbg !1928
  br label %70

; <label>:70:                                     ; preds = %67, %66
  br label %71, !dbg !1929

; <label>:71:                                     ; preds = %70, %54
  %72 = call i32 @gettimeofday(%struct.timeval* %8, %struct.timezone* null) #9, !dbg !1930
  br label %73, !dbg !1931

; <label>:73:                                     ; preds = %209, %118, %101, %71
  %74 = load i32, i32* %7, align 4, !dbg !1932
  %75 = icmp ne i32 %74, 0, !dbg !1934
  br i1 %75, label %76, label %210, !dbg !1934

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %11, align 4, !dbg !1935
  %78 = srem i32 %77, 64, !dbg !1937
  %79 = zext i32 %78 to i64, !dbg !1938
  %80 = shl i64 1, %79, !dbg !1938
  %81 = load i32, i32* %11, align 4, !dbg !1935
  %82 = sdiv i32 %81, 64, !dbg !1937
  %83 = sext i32 %82 to i64, !dbg !1939
  %84 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0, !dbg !1940
  %85 = getelementptr inbounds [16 x i64], [16 x i64]* %84, i64 0, i64 %83, !dbg !1939
  %86 = load i64, i64* %85, align 8, !dbg !1941
  %87 = or i64 %86, %80, !dbg !1941
  store i64 %87, i64* %85, align 8, !dbg !1941
  %88 = load i32, i32* %11, align 4, !dbg !1942
  %89 = add nsw i32 %88, 1, !dbg !1943
  %90 = call i32 @select(i32 %89, %struct.fd_set* %12, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %10), !dbg !1944
  store i32 %90, i32* %6, align 4, !dbg !1945
  %91 = load i32, i32* %6, align 4, !dbg !1946
  %92 = icmp eq i32 %91, 0, !dbg !1948
  br i1 %92, label %93, label %94, !dbg !1949

; <label>:93:                                     ; preds = %76
  br label %210, !dbg !1950

; <label>:94:                                     ; preds = %76
  %95 = load i32, i32* %6, align 4, !dbg !1951
  %96 = icmp eq i32 %95, -1, !dbg !1953
  br i1 %96, label %97, label %105, !dbg !1954

; <label>:97:                                     ; preds = %94
  %98 = call i32* @__errno_location() #1, !dbg !1955
  %99 = load i32, i32* %98, align 4, !dbg !1958
  %100 = icmp eq i32 %99, 4, !dbg !1959
  br i1 %100, label %101, label %102, !dbg !1960

; <label>:101:                                    ; preds = %97
  br label %73, !dbg !1961, !llvm.loop !1962

; <label>:102:                                    ; preds = %97
  %103 = call i32* @__errno_location() #1, !dbg !1963
  %104 = load i32, i32* %103, align 4, !dbg !1964
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.120, i32 0, i32 0), i32 %104), !dbg !1965
  br label %210, !dbg !1967

; <label>:105:                                    ; preds = %94
  %106 = load i32, i32* %11, align 4, !dbg !1968
  %107 = sdiv i32 %106, 64, !dbg !1970
  %108 = sext i32 %107 to i64, !dbg !1970
  %109 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0, !dbg !1971
  %110 = getelementptr inbounds [16 x i64], [16 x i64]* %109, i64 0, i64 %108, !dbg !1970
  %111 = load i64, i64* %110, align 8, !dbg !1970
  %112 = load i32, i32* %11, align 4, !dbg !1968
  %113 = srem i32 %112, 64, !dbg !1970
  %114 = zext i32 %113 to i64, !dbg !1972
  %115 = shl i64 1, %114, !dbg !1972
  %116 = and i64 %111, %115, !dbg !1973
  %117 = icmp ne i64 %116, 0, !dbg !1974
  br i1 %117, label %119, label %118, !dbg !1975

; <label>:118:                                    ; preds = %105
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.121, i32 0, i32 0)), !dbg !1976
  br label %73, !dbg !1978, !llvm.loop !1962

; <label>:119:                                    ; preds = %105
  %120 = load i32, i32* %11, align 4, !dbg !1979
  %121 = bitcast %struct.signalfd_siginfo* %13 to i8*, !dbg !1981
  %122 = call i64 @read(i32 %120, i8* %121, i64 128), !dbg !1982
  %123 = icmp ne i64 %122, 128, !dbg !1983
  br i1 %123, label %124, label %125, !dbg !1984

; <label>:124:                                    ; preds = %119
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.122, i32 0, i32 0)), !dbg !1985
  br label %210, !dbg !1987

; <label>:125:                                    ; preds = %119
  %126 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %13, i32 0, i32 2, !dbg !1988
  %127 = load i32, i32* %126, align 8, !dbg !1988
  %128 = icmp eq i32 %127, 1, !dbg !1989
  br i1 %128, label %129, label %133, !dbg !1990

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %13, i32 0, i32 10, !dbg !1991
  %131 = load i32, i32* %130, align 8, !dbg !1991
  %132 = shl i32 %131, 8, !dbg !1993
  br label %144, !dbg !1994

; <label>:133:                                    ; preds = %125
  %134 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %13, i32 0, i32 2, !dbg !1995
  %135 = load i32, i32* %134, align 8, !dbg !1995
  %136 = icmp eq i32 %135, 2, !dbg !1996
  br i1 %136, label %137, label %141, !dbg !1997

; <label>:137:                                    ; preds = %133
  %138 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %13, i32 0, i32 10, !dbg !1998
  %139 = load i32, i32* %138, align 8, !dbg !1998
  %140 = or i32 0, %139, !dbg !1999
  br label %142, !dbg !2000

; <label>:141:                                    ; preds = %133
  br label %142, !dbg !2001

; <label>:142:                                    ; preds = %141, %137
  %143 = phi i32 [ %140, %137 ], [ 128, %141 ], !dbg !2003
  br label %144, !dbg !2005

; <label>:144:                                    ; preds = %142, %129
  %145 = phi i32 [ %132, %129 ], [ %143, %142 ], !dbg !2006
  store i32 %145, i32* %5, align 4, !dbg !2007
  %146 = load i32, i32* @vrrp_child, align 4, !dbg !2008
  %147 = icmp sgt i32 %146, 0, !dbg !2010
  br i1 %147, label %148, label %159, !dbg !2011

; <label>:148:                                    ; preds = %144
  %149 = load i32, i32* @vrrp_child, align 4, !dbg !2012
  %150 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %13, i32 0, i32 3, !dbg !2014
  %151 = load i32, i32* %150, align 4, !dbg !2014
  %152 = icmp eq i32 %149, %151, !dbg !2015
  br i1 %152, label %153, label %159, !dbg !2016

; <label>:153:                                    ; preds = %148
  %154 = load i32, i32* %5, align 4, !dbg !2017
  %155 = load i32, i32* @vrrp_child, align 4, !dbg !2019
  %156 = call zeroext i1 @report_child_status(i32 %154, i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)), !dbg !2020
  store i32 0, i32* @vrrp_child, align 4, !dbg !2021
  %157 = load i32, i32* %7, align 4, !dbg !2022
  %158 = add nsw i32 %157, -1, !dbg !2022
  store i32 %158, i32* %7, align 4, !dbg !2022
  br label %159, !dbg !2023

; <label>:159:                                    ; preds = %153, %148, %144
  %160 = load i32, i32* @checkers_child, align 4, !dbg !2024
  %161 = icmp sgt i32 %160, 0, !dbg !2026
  br i1 %161, label %162, label %173, !dbg !2027

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* @checkers_child, align 4, !dbg !2028
  %164 = getelementptr inbounds %struct.signalfd_siginfo, %struct.signalfd_siginfo* %13, i32 0, i32 3, !dbg !2030
  %165 = load i32, i32* %164, align 4, !dbg !2030
  %166 = icmp eq i32 %163, %165, !dbg !2031
  br i1 %166, label %167, label %173, !dbg !2032

; <label>:167:                                    ; preds = %162
  %168 = load i32, i32* %5, align 4, !dbg !2033
  %169 = load i32, i32* @checkers_child, align 4, !dbg !2035
  %170 = call zeroext i1 @report_child_status(i32 %168, i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0)), !dbg !2036
  store i32 0, i32* @checkers_child, align 4, !dbg !2037
  %171 = load i32, i32* %7, align 4, !dbg !2038
  %172 = add nsw i32 %171, -1, !dbg !2038
  store i32 %172, i32* %7, align 4, !dbg !2038
  br label %173, !dbg !2039

; <label>:173:                                    ; preds = %167, %162, %159
  %174 = load i32, i32* %7, align 4, !dbg !2040
  %175 = icmp ne i32 %174, 0, !dbg !2040
  br i1 %175, label %176, label %209, !dbg !2042

; <label>:176:                                    ; preds = %173
  %177 = call i32 @gettimeofday(%struct.timeval* %9, %struct.timezone* null) #9, !dbg !2043
  %178 = load i32, i32* @child_wait_time, align 4, !dbg !2045
  %179 = zext i32 %178 to i64, !dbg !2045
  %180 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !2046
  %181 = load i64, i64* %180, align 8, !dbg !2046
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0, !dbg !2047
  %183 = load i64, i64* %182, align 8, !dbg !2047
  %184 = sub nsw i64 %181, %183, !dbg !2048
  %185 = sub nsw i64 %179, %184, !dbg !2049
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !2050
  store i64 %185, i64* %186, align 8, !dbg !2051
  %187 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1, !dbg !2052
  %188 = load i64, i64* %187, align 8, !dbg !2052
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1, !dbg !2053
  %190 = load i64, i64* %189, align 8, !dbg !2053
  %191 = sub nsw i64 %188, %190, !dbg !2054
  %192 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1, !dbg !2055
  store i64 %191, i64* %192, align 8, !dbg !2056
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1, !dbg !2057
  %194 = load i64, i64* %193, align 8, !dbg !2057
  %195 = icmp slt i64 %194, 0, !dbg !2059
  br i1 %195, label %196, label %203, !dbg !2060

; <label>:196:                                    ; preds = %176
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1, !dbg !2061
  %198 = load i64, i64* %197, align 8, !dbg !2063
  %199 = add nsw i64 %198, 1000000, !dbg !2063
  store i64 %199, i64* %197, align 8, !dbg !2063
  %200 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !2064
  %201 = load i64, i64* %200, align 8, !dbg !2065
  %202 = add nsw i64 %201, -1, !dbg !2065
  store i64 %202, i64* %200, align 8, !dbg !2065
  br label %203, !dbg !2066

; <label>:203:                                    ; preds = %196, %176
  %204 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !2067
  %205 = load i64, i64* %204, align 8, !dbg !2067
  %206 = icmp slt i64 %205, 0, !dbg !2069
  br i1 %206, label %207, label %208, !dbg !2070

; <label>:207:                                    ; preds = %203
  br label %210, !dbg !2071

; <label>:208:                                    ; preds = %203
  br label %209, !dbg !2072

; <label>:209:                                    ; preds = %208, %173
  br label %73, !dbg !2073, !llvm.loop !1962

; <label>:210:                                    ; preds = %207, %124, %102, %93, %73
  %211 = load i32, i32* @vrrp_child, align 4, !dbg !2075
  %212 = icmp ne i32 %211, 0, !dbg !2075
  br i1 %212, label %213, label %216, !dbg !2077

; <label>:213:                                    ; preds = %210
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.123, i32 0, i32 0)), !dbg !2078
  %214 = load i32, i32* @vrrp_child, align 4, !dbg !2080
  %215 = call i32 @kill(i32 %214, i32 9) #9, !dbg !2081
  br label %216, !dbg !2082

; <label>:216:                                    ; preds = %213, %210
  %217 = load i32, i32* @checkers_child, align 4, !dbg !2083
  %218 = icmp ne i32 %217, 0, !dbg !2083
  br i1 %218, label %219, label %222, !dbg !2085

; <label>:219:                                    ; preds = %216
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i32 0, i32 0)), !dbg !2086
  %220 = load i32, i32* @checkers_child, align 4, !dbg !2088
  %221 = call i32 @kill(i32 %220, i32 9) #9, !dbg !2089
  br label %222, !dbg !2090

; <label>:222:                                    ; preds = %219, %216
  ret void, !dbg !2091
}

declare void @signal_ignore(i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @reload_config() #0 !dbg !2092 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !2093, metadata !252), !dbg !2094
  store i8 0, i8* %1, align 1, !dbg !2094
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0)), !dbg !2095
  %2 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2096
  store %struct._data* %2, %struct._data** @old_global_data, align 8, !dbg !2097
  store %struct._data* null, %struct._data** @global_data, align 8, !dbg !2098
  %3 = call %struct._data* @alloc_global_data(), !dbg !2099
  store %struct._data* %3, %struct._data** @global_data, align 8, !dbg !2100
  call void @read_config_file(), !dbg !2101
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2102
  call void @init_global_data(%struct._data* %4), !dbg !2103
  %5 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2104
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 0, !dbg !2106
  %7 = load i8*, i8** %6, align 8, !dbg !2106
  %8 = icmp ne i8* %7, null, !dbg !2107
  %9 = xor i1 %8, true, !dbg !2107
  %10 = xor i1 %9, true, !dbg !2108
  %11 = zext i1 %10 to i32, !dbg !2108
  %12 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2109
  %13 = getelementptr inbounds %struct._data, %struct._data* %12, i32 0, i32 0, !dbg !2110
  %14 = load i8*, i8** %13, align 8, !dbg !2110
  %15 = icmp ne i8* %14, null, !dbg !2111
  %16 = xor i1 %15, true, !dbg !2111
  %17 = xor i1 %16, true, !dbg !2112
  %18 = zext i1 %17 to i32, !dbg !2112
  %19 = icmp ne i32 %11, %18, !dbg !2113
  br i1 %19, label %34, label %20, !dbg !2114

; <label>:20:                                     ; preds = %0
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2115
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 0, !dbg !2116
  %23 = load i8*, i8** %22, align 8, !dbg !2116
  %24 = icmp ne i8* %23, null, !dbg !2115
  br i1 %24, label %25, label %35, !dbg !2117

; <label>:25:                                     ; preds = %20
  %26 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2118
  %27 = getelementptr inbounds %struct._data, %struct._data* %26, i32 0, i32 0, !dbg !2120
  %28 = load i8*, i8** %27, align 8, !dbg !2120
  %29 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2121
  %30 = getelementptr inbounds %struct._data, %struct._data* %29, i32 0, i32 0, !dbg !2122
  %31 = load i8*, i8** %30, align 8, !dbg !2122
  %32 = call i32 @strcmp(i8* %28, i8* %31) #10, !dbg !2123
  %33 = icmp ne i32 %32, 0, !dbg !2123
  br i1 %33, label %34, label %35, !dbg !2124

; <label>:34:                                     ; preds = %25, %0
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0)), !dbg !2126
  store i8 1, i8* %1, align 1, !dbg !2128
  br label %35, !dbg !2129

; <label>:35:                                     ; preds = %34, %25, %20
  %36 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2130
  %37 = getelementptr inbounds %struct._data, %struct._data* %36, i32 0, i32 0, !dbg !2133
  %38 = load i8*, i8** %37, align 8, !dbg !2133
  %39 = icmp ne i8* %38, null, !dbg !2130
  br i1 %39, label %40, label %46, !dbg !2134

; <label>:40:                                     ; preds = %35
  %41 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2135
  %42 = getelementptr inbounds %struct._data, %struct._data* %41, i32 0, i32 0, !dbg !2138
  %43 = load i8*, i8** %42, align 8, !dbg !2138
  call void @free(i8* %43) #9, !dbg !2139
  %44 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2140
  %45 = getelementptr inbounds %struct._data, %struct._data* %44, i32 0, i32 0, !dbg !2141
  store i8* null, i8** %45, align 8, !dbg !2142
  br label %46, !dbg !2143

; <label>:46:                                     ; preds = %40, %35
  %47 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2144
  %48 = getelementptr inbounds %struct._data, %struct._data* %47, i32 0, i32 0, !dbg !2145
  %49 = load i8*, i8** %48, align 8, !dbg !2145
  %50 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2146
  %51 = getelementptr inbounds %struct._data, %struct._data* %50, i32 0, i32 0, !dbg !2147
  store i8* %49, i8** %51, align 8, !dbg !2148
  %52 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2149
  %53 = getelementptr inbounds %struct._data, %struct._data* %52, i32 0, i32 0, !dbg !2150
  store i8* null, i8** %53, align 8, !dbg !2151
  %54 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2152
  %55 = getelementptr inbounds %struct._data, %struct._data* %54, i32 0, i32 2, !dbg !2154
  %56 = load i8*, i8** %55, align 8, !dbg !2154
  %57 = icmp ne i8* %56, null, !dbg !2155
  %58 = xor i1 %57, true, !dbg !2155
  %59 = xor i1 %58, true, !dbg !2156
  %60 = zext i1 %59 to i32, !dbg !2156
  %61 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2157
  %62 = getelementptr inbounds %struct._data, %struct._data* %61, i32 0, i32 2, !dbg !2158
  %63 = load i8*, i8** %62, align 8, !dbg !2158
  %64 = icmp ne i8* %63, null, !dbg !2159
  %65 = xor i1 %64, true, !dbg !2159
  %66 = xor i1 %65, true, !dbg !2160
  %67 = zext i1 %66 to i32, !dbg !2160
  %68 = icmp ne i32 %60, %67, !dbg !2161
  br i1 %68, label %83, label %69, !dbg !2162

; <label>:69:                                     ; preds = %46
  %70 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2163
  %71 = getelementptr inbounds %struct._data, %struct._data* %70, i32 0, i32 2, !dbg !2164
  %72 = load i8*, i8** %71, align 8, !dbg !2164
  %73 = icmp ne i8* %72, null, !dbg !2163
  br i1 %73, label %74, label %84, !dbg !2165

; <label>:74:                                     ; preds = %69
  %75 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2166
  %76 = getelementptr inbounds %struct._data, %struct._data* %75, i32 0, i32 2, !dbg !2168
  %77 = load i8*, i8** %76, align 8, !dbg !2168
  %78 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2169
  %79 = getelementptr inbounds %struct._data, %struct._data* %78, i32 0, i32 2, !dbg !2170
  %80 = load i8*, i8** %79, align 8, !dbg !2170
  %81 = call i32 @strcmp(i8* %77, i8* %80) #10, !dbg !2171
  %82 = icmp ne i32 %81, 0, !dbg !2171
  br i1 %82, label %83, label %84, !dbg !2172

; <label>:83:                                     ; preds = %74, %46
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0)), !dbg !2173
  store i8 1, i8* %1, align 1, !dbg !2175
  br label %84, !dbg !2176

; <label>:84:                                     ; preds = %83, %74, %69
  %85 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2177
  %86 = getelementptr inbounds %struct._data, %struct._data* %85, i32 0, i32 2, !dbg !2180
  %87 = load i8*, i8** %86, align 8, !dbg !2180
  %88 = icmp ne i8* %87, null, !dbg !2177
  br i1 %88, label %89, label %95, !dbg !2181

; <label>:89:                                     ; preds = %84
  %90 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2182
  %91 = getelementptr inbounds %struct._data, %struct._data* %90, i32 0, i32 2, !dbg !2185
  %92 = load i8*, i8** %91, align 8, !dbg !2185
  call void @free(i8* %92) #9, !dbg !2186
  %93 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2187
  %94 = getelementptr inbounds %struct._data, %struct._data* %93, i32 0, i32 2, !dbg !2188
  store i8* null, i8** %94, align 8, !dbg !2189
  br label %95, !dbg !2190

; <label>:95:                                     ; preds = %89, %84
  %96 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2191
  %97 = getelementptr inbounds %struct._data, %struct._data* %96, i32 0, i32 2, !dbg !2192
  %98 = load i8*, i8** %97, align 8, !dbg !2192
  %99 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2193
  %100 = getelementptr inbounds %struct._data, %struct._data* %99, i32 0, i32 2, !dbg !2194
  store i8* %98, i8** %100, align 8, !dbg !2195
  %101 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2196
  %102 = getelementptr inbounds %struct._data, %struct._data* %101, i32 0, i32 2, !dbg !2197
  store i8* null, i8** %102, align 8, !dbg !2198
  %103 = load i8, i8* %1, align 1, !dbg !2199
  %104 = trunc i8 %103 to i1, !dbg !2199
  br i1 %104, label %105, label %108, !dbg !2201

; <label>:105:                                    ; preds = %95
  %106 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2202
  call void @free_global_data(%struct._data* %106), !dbg !2204
  %107 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2205
  store %struct._data* %107, %struct._data** @global_data, align 8, !dbg !2206
  br label %110, !dbg !2207

; <label>:108:                                    ; preds = %95
  %109 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !2208
  call void @free_global_data(%struct._data* %109), !dbg !2209
  br label %110

; <label>:110:                                    ; preds = %108, %105
  %111 = load i8, i8* %1, align 1, !dbg !2210
  %112 = trunc i8 %111 to i1, !dbg !2210
  %113 = xor i1 %112, true, !dbg !2211
  ret i1 %113, !dbg !2212
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

declare i32 @start_vrrp_child() #2

declare i32 @start_check_child() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @signal_rfd() #2

declare %struct._thread* @thread_add_terminate_event(%struct._thread_master*) #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #3

; Function Attrs: nounwind
declare i32 @signalfd(i32, %struct.__sigset_t*, i32) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i64 @read(i32, i8*, i64) #2

declare zeroext i1 @report_child_status(i32, i32, i8*) #2

declare i64 @write(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!244, !245}
!llvm.ident = !{!246}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !112, globals: !128)
!1 = !DIFile(filename: "[inter]keepalived--core--main.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3, !9, !15, !30, !45, !65, !87, !103}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "daemon_bits", file: !4, line: 33, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/main.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DAEMON_VRRP", value: 0)
!7 = !DIEnumerator(name: "DAEMON_CHECKERS", value: 1)
!8 = !DIEnumerator(name: "RUN_ALL_CHILDREN", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 152, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!13 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!14 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 46, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256)
!19 = !DIEnumerator(name: "_ISlower", value: 512)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!23 = !DIEnumerator(name: "_ISspace", value: 8192)
!24 = !DIEnumerator(name: "_ISprint", value: 16384)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768)
!26 = !DIEnumerator(name: "_ISblank", value: 1)
!27 = !DIEnumerator(name: "_IScntrl", value: 2)
!28 = !DIEnumerator(name: "_ISpunct", value: 4)
!29 = !DIEnumerator(name: "_ISalnum", value: 8)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !31, line: 53, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!33 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!34 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!35 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!36 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!37 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!38 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!39 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!40 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!41 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!42 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!43 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!44 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 41, size: 32, align: 32, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!47 = !DIEnumerator(name: "THREAD_READ", value: 0)
!48 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!49 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!50 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!51 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!52 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!53 = !DIEnumerator(name: "THREAD_READY", value: 6)
!54 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!55 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!56 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!57 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!58 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!59 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!60 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!61 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!62 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!63 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!64 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !66, line: 31, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!68 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!69 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!70 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!71 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!72 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!73 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!74 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!75 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!76 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!77 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!78 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!79 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!80 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!81 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!82 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!83 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!84 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!85 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!86 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 44, size: 32, align: 32, elements: !89)
!88 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!90 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!91 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!92 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!93 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!94 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!95 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!96 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!97 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!98 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!99 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!100 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!101 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!102 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 264, size: 32, align: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!105 = !{!106, !107, !108, !109, !110, !111}
!106 = !DIEnumerator(name: "CLD_EXITED", value: 1)
!107 = !DIEnumerator(name: "CLD_KILLED", value: 2)
!108 = !DIEnumerator(name: "CLD_DUMPED", value: 3)
!109 = !DIEnumerator(name: "CLD_TRAPPED", value: 4)
!110 = !DIEnumerator(name: "CLD_STOPPED", value: 5)
!111 = !DIEnumerator(name: "CLD_CONTINUED", value: 6)
!112 = !{!113, !114, !115, !116, !119, !121, !122, !125}
!113 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!114 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!115 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 216, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!118 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !120, line: 136, baseType: !118)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !123, line: 54, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!124 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !126, line: 98, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !120, line: 133, baseType: !114)
!128 = !{!129, !134, !136, !137, !138, !215, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !241, !242, !243}
!129 = distinct !DIGlobalVariable(name: "version_string", scope: !0, file: !130, line: 109, type: !131, isLocal: false, isDefinition: true, variable: i8** @version_string)
!130 = !DIFile(filename: "main.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!134 = distinct !DIGlobalVariable(name: "conf_file", scope: !0, file: !130, line: 110, type: !135, isLocal: false, isDefinition: true, variable: i8** @conf_file)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!136 = distinct !DIGlobalVariable(name: "log_facility", scope: !0, file: !130, line: 111, type: !114, isLocal: false, isDefinition: true, variable: i32* @log_facility)
!137 = distinct !DIGlobalVariable(name: "child_wait_time", scope: !0, file: !130, line: 147, type: !113, isLocal: false, isDefinition: true, variable: i32* @child_wait_time)
!138 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !139, line: 150, type: !140, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!139 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !141, line: 31, baseType: !142)
!141 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !141, line: 39, size: 320, align: 64, elements: !144)
!144 = !{!145, !152, !153, !154, !158}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !143, file: !141, line: 40, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !141, line: 33, size: 192, align: 64, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !141, line: 34, baseType: !146, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !141, line: 35, baseType: !146, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !141, line: 36, baseType: !121, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !143, file: !141, line: 41, baseType: !146, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !143, file: !141, line: 42, baseType: !113, size: 32, align: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !143, file: !141, line: 43, baseType: !155, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !121}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !143, file: !141, line: 44, baseType: !159, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !121}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !164, line: 48, baseType: !165)
!164 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !166, line: 241, size: 1728, align: 64, elements: !167)
!166 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !188, !189, !190, !191, !193, !194, !196, !200, !203, !205, !206, !207, !208, !209, !210, !211}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !165, file: !166, line: 242, baseType: !114, size: 32, align: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !165, file: !166, line: 247, baseType: !135, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !165, file: !166, line: 248, baseType: !135, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !165, file: !166, line: 249, baseType: !135, size: 64, align: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !165, file: !166, line: 250, baseType: !135, size: 64, align: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !165, file: !166, line: 251, baseType: !135, size: 64, align: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !165, file: !166, line: 252, baseType: !135, size: 64, align: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !165, file: !166, line: 253, baseType: !135, size: 64, align: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !165, file: !166, line: 254, baseType: !135, size: 64, align: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !165, file: !166, line: 256, baseType: !135, size: 64, align: 64, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !165, file: !166, line: 257, baseType: !135, size: 64, align: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !165, file: !166, line: 258, baseType: !135, size: 64, align: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !165, file: !166, line: 260, baseType: !181, size: 64, align: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !166, line: 156, size: 192, align: 64, elements: !183)
!183 = !{!184, !185, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !182, file: !166, line: 157, baseType: !181, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !182, file: !166, line: 158, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !182, file: !166, line: 162, baseType: !114, size: 32, align: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !165, file: !166, line: 262, baseType: !186, size: 64, align: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !165, file: !166, line: 264, baseType: !114, size: 32, align: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !165, file: !166, line: 268, baseType: !114, size: 32, align: 32, offset: 928)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !165, file: !166, line: 270, baseType: !192, size: 64, align: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !120, line: 131, baseType: !124)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !165, file: !166, line: 274, baseType: !115, size: 16, align: 16, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !165, file: !166, line: 275, baseType: !195, size: 8, align: 8, offset: 1040)
!195 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !165, file: !166, line: 276, baseType: !197, size: 8, align: 8, offset: 1048)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 8, align: 8, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 1)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !165, file: !166, line: 280, baseType: !201, size: 64, align: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !166, line: 150, baseType: null)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !165, file: !166, line: 289, baseType: !204, size: 64, align: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !120, line: 132, baseType: !124)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !165, file: !166, line: 297, baseType: !121, size: 64, align: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !165, file: !166, line: 298, baseType: !121, size: 64, align: 64, offset: 1280)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !165, file: !166, line: 299, baseType: !121, size: 64, align: 64, offset: 1344)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !165, file: !166, line: 300, baseType: !121, size: 64, align: 64, offset: 1408)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !165, file: !166, line: 302, baseType: !116, size: 64, align: 64, offset: 1472)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !165, file: !166, line: 303, baseType: !114, size: 32, align: 32, offset: 1536)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !165, file: !166, line: 305, baseType: !212, size: 160, align: 8, offset: 1568)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 160, align: 8, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 20)
!215 = distinct !DIGlobalVariable(name: "reload", scope: !0, file: !130, line: 112, type: !216, isLocal: false, isDefinition: true, variable: i8* @reload)
!216 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!217 = distinct !DIGlobalVariable(name: "main_pidfile", scope: !0, file: !130, line: 113, type: !135, isLocal: false, isDefinition: true, variable: i8** @main_pidfile)
!218 = distinct !DIGlobalVariable(name: "free_main_pidfile", scope: !0, file: !130, line: 114, type: !216, isLocal: true, isDefinition: true, variable: i8* @free_main_pidfile)
!219 = distinct !DIGlobalVariable(name: "checkers_child", scope: !0, file: !130, line: 116, type: !125, isLocal: false, isDefinition: true, variable: i32* @checkers_child)
!220 = distinct !DIGlobalVariable(name: "checkers_pidfile", scope: !0, file: !130, line: 117, type: !135, isLocal: false, isDefinition: true, variable: i8** @checkers_pidfile)
!221 = distinct !DIGlobalVariable(name: "free_checkers_pidfile", scope: !0, file: !130, line: 118, type: !216, isLocal: true, isDefinition: true, variable: i8* @free_checkers_pidfile)
!222 = distinct !DIGlobalVariable(name: "vrrp_child", scope: !0, file: !130, line: 121, type: !125, isLocal: false, isDefinition: true, variable: i32* @vrrp_child)
!223 = distinct !DIGlobalVariable(name: "vrrp_pidfile", scope: !0, file: !130, line: 122, type: !135, isLocal: false, isDefinition: true, variable: i8** @vrrp_pidfile)
!224 = distinct !DIGlobalVariable(name: "free_vrrp_pidfile", scope: !0, file: !130, line: 123, type: !216, isLocal: true, isDefinition: true, variable: i8* @free_vrrp_pidfile)
!225 = distinct !DIGlobalVariable(name: "daemon_mode", scope: !0, file: !130, line: 130, type: !118, isLocal: false, isDefinition: true, variable: i64* @daemon_mode)
!226 = distinct !DIGlobalVariable(name: "syslog_ident", scope: !0, file: !130, line: 135, type: !135, isLocal: true, isDefinition: true, variable: i8** @syslog_ident)
!227 = distinct !DIGlobalVariable(name: "use_pid_dir", scope: !0, file: !130, line: 136, type: !216, isLocal: false, isDefinition: true, variable: i8* @use_pid_dir)
!228 = distinct !DIGlobalVariable(name: "os_major", scope: !0, file: !130, line: 138, type: !113, isLocal: false, isDefinition: true, variable: i32* @os_major)
!229 = distinct !DIGlobalVariable(name: "os_minor", scope: !0, file: !130, line: 139, type: !113, isLocal: false, isDefinition: true, variable: i32* @os_minor)
!230 = distinct !DIGlobalVariable(name: "os_release", scope: !0, file: !130, line: 140, type: !113, isLocal: false, isDefinition: true, variable: i32* @os_release)
!231 = distinct !DIGlobalVariable(name: "hostname", scope: !0, file: !130, line: 141, type: !135, isLocal: false, isDefinition: true, variable: i8** @hostname)
!232 = distinct !DIGlobalVariable(name: "override_namespace", scope: !0, file: !130, line: 144, type: !135, isLocal: true, isDefinition: true, variable: i8** @override_namespace)
!233 = distinct !DIGlobalVariable(name: "orig_core_dump_pattern", scope: !0, file: !130, line: 162, type: !135, isLocal: true, isDefinition: true, variable: i8** @orig_core_dump_pattern)
!234 = distinct !DIGlobalVariable(name: "LOG_FACILITY", scope: !0, file: !130, line: 152, type: !235, isLocal: true, isDefinition: true, variable: [8 x %struct.anon.2]* @LOG_FACILITY)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, align: 32, elements: !239)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 150, size: 32, align: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "facility", scope: !236, file: !130, line: 151, baseType: !114, size: 32, align: 32)
!239 = !{!240}
!240 = !DISubrange(count: 8)
!241 = distinct !DIGlobalVariable(name: "set_core_dump_pattern", scope: !0, file: !130, line: 159, type: !216, isLocal: true, isDefinition: true, variable: i8* @set_core_dump_pattern)
!242 = distinct !DIGlobalVariable(name: "core_dump_pattern", scope: !0, file: !130, line: 161, type: !131, isLocal: true, isDefinition: true, variable: i8** @core_dump_pattern)
!243 = distinct !DIGlobalVariable(name: "create_core_dump", scope: !0, file: !130, line: 160, type: !216, isLocal: true, isDefinition: true, variable: i8* @create_core_dump)
!244 = !{i32 2, !"Dwarf Version", i32 4}
!245 = !{i32 2, !"Debug Info Version", i32 3}
!246 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!247 = distinct !DISubprogram(name: "free_parent_mallocs_startup", scope: !130, file: !130, line: 195, type: !248, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !216}
!250 = !{}
!251 = !DILocalVariable(name: "am_child", arg: 1, scope: !247, file: !130, line: 195, type: !216)
!252 = !DIExpression()
!253 = !DILocation(line: 195, column: 33, scope: !247)
!254 = !DILocation(line: 197, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !247, file: !130, line: 197, column: 6)
!256 = !DILocation(line: 197, column: 6, scope: !247)
!257 = !DILocation(line: 199, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !130, line: 197, column: 16)
!259 = !DILocation(line: 202, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !130, line: 202, column: 9)
!261 = distinct !DILexicalBlock(scope: !258, file: !130, line: 202, column: 3)
!262 = !DILocation(line: 202, column: 9, scope: !261)
!263 = !DILocation(line: 202, column: 31, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !130, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !260, file: !130, line: 202, column: 23)
!266 = !DILocation(line: 202, column: 26, scope: !264)
!267 = !DILocation(line: 202, column: 61, scope: !264)
!268 = !DILocation(line: 202, column: 4, scope: !264)
!269 = !DILocation(line: 206, column: 16, scope: !258)
!270 = !DILocation(line: 208, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !258, file: !130, line: 208, column: 7)
!272 = !DILocation(line: 208, column: 7, scope: !258)
!273 = !DILocation(line: 209, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !130, line: 209, column: 10)
!275 = distinct !DILexicalBlock(scope: !276, file: !130, line: 209, column: 4)
!276 = distinct !DILexicalBlock(scope: !271, file: !130, line: 208, column: 31)
!277 = !DILocation(line: 209, column: 10, scope: !275)
!278 = !DILocation(line: 209, column: 42, scope: !279)
!279 = !DILexicalBlockFile(scope: !280, file: !130, discriminator: 1)
!280 = distinct !DILexicalBlock(scope: !274, file: !130, line: 209, column: 34)
!281 = !DILocation(line: 209, column: 37, scope: !279)
!282 = !DILocation(line: 209, column: 92, scope: !279)
!283 = !DILocation(line: 209, column: 5, scope: !279)
!284 = !DILocation(line: 210, column: 27, scope: !276)
!285 = !DILocation(line: 211, column: 3, scope: !276)
!286 = !DILocation(line: 212, column: 2, scope: !258)
!287 = !DILocation(line: 214, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !247, file: !130, line: 214, column: 6)
!289 = !DILocation(line: 214, column: 6, scope: !247)
!290 = !DILocation(line: 215, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !130, line: 215, column: 9)
!292 = distinct !DILexicalBlock(scope: !293, file: !130, line: 215, column: 3)
!293 = distinct !DILexicalBlock(scope: !288, file: !130, line: 214, column: 25)
!294 = !DILocation(line: 215, column: 9, scope: !292)
!295 = !DILocation(line: 215, column: 31, scope: !296)
!296 = !DILexicalBlockFile(scope: !297, file: !130, discriminator: 1)
!297 = distinct !DILexicalBlock(scope: !291, file: !130, line: 215, column: 23)
!298 = !DILocation(line: 215, column: 26, scope: !296)
!299 = !DILocation(line: 215, column: 61, scope: !296)
!300 = !DILocation(line: 215, column: 4, scope: !296)
!301 = !DILocation(line: 216, column: 16, scope: !293)
!302 = !DILocation(line: 217, column: 21, scope: !293)
!303 = !DILocation(line: 218, column: 2, scope: !293)
!304 = !DILocation(line: 219, column: 1, scope: !247)
!305 = distinct !DISubprogram(name: "free_parent_mallocs_exit", scope: !130, file: !130, line: 222, type: !306, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!306 = !DISubroutineType(types: !307)
!307 = !{null}
!308 = !DILocation(line: 225, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !130, line: 225, column: 6)
!310 = !DILocation(line: 225, column: 6, scope: !305)
!311 = !DILocation(line: 226, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !130, line: 226, column: 9)
!313 = distinct !DILexicalBlock(scope: !309, file: !130, line: 226, column: 3)
!314 = !DILocation(line: 226, column: 9, scope: !313)
!315 = !DILocation(line: 226, column: 31, scope: !316)
!316 = !DILexicalBlockFile(scope: !317, file: !130, discriminator: 1)
!317 = distinct !DILexicalBlock(scope: !312, file: !130, line: 226, column: 23)
!318 = !DILocation(line: 226, column: 26, scope: !316)
!319 = !DILocation(line: 226, column: 61, scope: !316)
!320 = !DILocation(line: 226, column: 4, scope: !316)
!321 = !DILocation(line: 226, column: 6, scope: !322)
!322 = !DILexicalBlockFile(scope: !313, file: !130, discriminator: 2)
!323 = !DILocation(line: 229, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !305, file: !130, line: 229, column: 6)
!325 = !DILocation(line: 229, column: 6, scope: !305)
!326 = !DILocation(line: 230, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !130, line: 230, column: 9)
!328 = distinct !DILexicalBlock(scope: !324, file: !130, line: 230, column: 3)
!329 = !DILocation(line: 230, column: 9, scope: !328)
!330 = !DILocation(line: 230, column: 35, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !130, discriminator: 1)
!332 = distinct !DILexicalBlock(scope: !327, file: !130, line: 230, column: 27)
!333 = !DILocation(line: 230, column: 30, scope: !331)
!334 = !DILocation(line: 230, column: 73, scope: !331)
!335 = !DILocation(line: 230, column: 4, scope: !331)
!336 = !DILocation(line: 230, column: 6, scope: !337)
!337 = !DILexicalBlockFile(scope: !328, file: !130, discriminator: 2)
!338 = !DILocation(line: 237, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !130, line: 237, column: 8)
!340 = distinct !DILexicalBlock(scope: !305, file: !130, line: 237, column: 2)
!341 = !DILocation(line: 237, column: 8, scope: !340)
!342 = !DILocation(line: 237, column: 27, scope: !343)
!343 = !DILexicalBlockFile(scope: !344, file: !130, discriminator: 1)
!344 = distinct !DILexicalBlock(scope: !339, file: !130, line: 237, column: 19)
!345 = !DILocation(line: 237, column: 22, scope: !343)
!346 = !DILocation(line: 237, column: 51, scope: !343)
!347 = !DILocation(line: 237, column: 3, scope: !343)
!348 = !DILocation(line: 238, column: 1, scope: !305)
!349 = distinct !DISubprogram(name: "make_syslog_ident", scope: !130, file: !130, line: 241, type: !350, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!350 = !DISubroutineType(types: !351)
!351 = !{!135, !131}
!352 = !DILocalVariable(name: "name", arg: 1, scope: !349, file: !130, line: 241, type: !131)
!353 = !DILocation(line: 241, column: 31, scope: !349)
!354 = !DILocalVariable(name: "ident_len", scope: !349, file: !130, line: 243, type: !116)
!355 = !DILocation(line: 243, column: 9, scope: !349)
!356 = !DILocation(line: 243, column: 28, scope: !349)
!357 = !DILocation(line: 243, column: 21, scope: !349)
!358 = !DILocation(line: 243, column: 34, scope: !349)
!359 = !DILocalVariable(name: "ident", scope: !349, file: !130, line: 244, type: !135)
!360 = !DILocation(line: 244, column: 8, scope: !349)
!361 = !DILocation(line: 247, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !349, file: !130, line: 247, column: 6)
!363 = !DILocation(line: 247, column: 19, scope: !362)
!364 = !DILocation(line: 247, column: 6, scope: !349)
!365 = !DILocation(line: 248, column: 23, scope: !362)
!366 = !DILocation(line: 248, column: 36, scope: !362)
!367 = !DILocation(line: 248, column: 16, scope: !362)
!368 = !DILocation(line: 248, column: 55, scope: !362)
!369 = !DILocation(line: 248, column: 13, scope: !362)
!370 = !DILocation(line: 248, column: 3, scope: !362)
!371 = !DILocation(line: 250, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !349, file: !130, line: 250, column: 6)
!373 = !DILocation(line: 250, column: 19, scope: !372)
!374 = !DILocation(line: 250, column: 6, scope: !349)
!375 = !DILocation(line: 251, column: 23, scope: !372)
!376 = !DILocation(line: 251, column: 36, scope: !372)
!377 = !DILocation(line: 251, column: 16, scope: !372)
!378 = !DILocation(line: 251, column: 51, scope: !372)
!379 = !DILocation(line: 251, column: 13, scope: !372)
!380 = !DILocation(line: 251, column: 3, scope: !372)
!381 = !DILocation(line: 256, column: 18, scope: !349)
!382 = !DILocation(line: 256, column: 11, scope: !349)
!383 = !DILocation(line: 256, column: 8, scope: !349)
!384 = !DILocation(line: 261, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !349, file: !130, line: 261, column: 6)
!386 = !DILocation(line: 261, column: 6, scope: !349)
!387 = !DILocation(line: 262, column: 3, scope: !385)
!388 = !DILocation(line: 264, column: 9, scope: !349)
!389 = !DILocation(line: 264, column: 16, scope: !349)
!390 = !DILocation(line: 264, column: 2, scope: !349)
!391 = !DILocation(line: 266, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !349, file: !130, line: 266, column: 6)
!393 = !DILocation(line: 266, column: 19, scope: !392)
!394 = !DILocation(line: 266, column: 6, scope: !349)
!395 = !DILocation(line: 267, column: 10, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !130, line: 266, column: 38)
!397 = !DILocation(line: 267, column: 3, scope: !396)
!398 = !DILocation(line: 268, column: 11, scope: !396)
!399 = !DILocation(line: 268, column: 18, scope: !396)
!400 = !DILocation(line: 268, column: 31, scope: !396)
!401 = !DILocation(line: 268, column: 4, scope: !396)
!402 = !DILocation(line: 269, column: 3, scope: !396)
!403 = !DILocation(line: 271, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !349, file: !130, line: 271, column: 6)
!405 = !DILocation(line: 271, column: 19, scope: !404)
!406 = !DILocation(line: 271, column: 6, scope: !349)
!407 = !DILocation(line: 272, column: 10, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !130, line: 271, column: 34)
!409 = !DILocation(line: 272, column: 3, scope: !408)
!410 = !DILocation(line: 273, column: 10, scope: !408)
!411 = !DILocation(line: 273, column: 17, scope: !408)
!412 = !DILocation(line: 273, column: 30, scope: !408)
!413 = !DILocation(line: 273, column: 3, scope: !408)
!414 = !DILocation(line: 274, column: 2, scope: !408)
!415 = !DILocation(line: 276, column: 9, scope: !349)
!416 = !DILocation(line: 276, column: 2, scope: !349)
!417 = !DILocation(line: 277, column: 1, scope: !349)
!418 = distinct !DISubprogram(name: "running_vrrp", scope: !130, file: !130, line: 331, type: !419, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!419 = !DISubroutineType(types: !420)
!420 = !{!216}
!421 = !DILocation(line: 333, column: 10, scope: !418)
!422 = !DILocation(line: 333, column: 48, scope: !418)
!423 = !DILocation(line: 334, column: 7, scope: !418)
!424 = !DILocation(line: 334, column: 20, scope: !418)
!425 = !DILocation(line: 334, column: 37, scope: !418)
!426 = !DILocation(line: 335, column: 7, scope: !418)
!427 = !DILocation(line: 334, column: 37, scope: !428)
!428 = !DILexicalBlockFile(scope: !418, file: !130, discriminator: 1)
!429 = !DILocation(line: 333, column: 2, scope: !428)
!430 = distinct !DISubprogram(name: "__test_bit", scope: !31, file: !31, line: 47, type: !431, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!431 = !DISubroutineType(types: !432)
!432 = !{!216, !113, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!435 = !DILocalVariable(name: "idx", arg: 1, scope: !430, file: !31, line: 47, type: !113)
!436 = !DILocation(line: 47, column: 39, scope: !430)
!437 = !DILocalVariable(name: "bmap", arg: 2, scope: !430, file: !31, line: 47, type: !433)
!438 = !DILocation(line: 47, column: 65, scope: !430)
!439 = !DILocation(line: 49, column: 19, scope: !430)
!440 = !DILocation(line: 49, column: 18, scope: !430)
!441 = !DILocation(line: 49, column: 24, scope: !430)
!442 = !DILocation(line: 49, column: 12, scope: !430)
!443 = !DILocation(line: 49, column: 68, scope: !430)
!444 = !DILocation(line: 49, column: 67, scope: !430)
!445 = !DILocation(line: 49, column: 73, scope: !430)
!446 = !DILocation(line: 49, column: 63, scope: !430)
!447 = !DILocation(line: 49, column: 56, scope: !430)
!448 = !DILocation(line: 49, column: 10, scope: !430)
!449 = !DILocation(line: 49, column: 9, scope: !430)
!450 = !DILocation(line: 49, column: 2, scope: !430)
!451 = distinct !DISubprogram(name: "running_checker", scope: !130, file: !130, line: 341, type: !419, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!452 = !DILocation(line: 343, column: 10, scope: !451)
!453 = !DILocation(line: 343, column: 52, scope: !451)
!454 = !DILocation(line: 344, column: 7, scope: !451)
!455 = !DILocation(line: 344, column: 20, scope: !451)
!456 = !DILocation(line: 344, column: 40, scope: !451)
!457 = !DILocation(line: 345, column: 7, scope: !451)
!458 = !DILocation(line: 344, column: 40, scope: !459)
!459 = !DILexicalBlockFile(scope: !451, file: !130, discriminator: 1)
!460 = !DILocation(line: 343, column: 2, scope: !459)
!461 = distinct !DISubprogram(name: "stop_keepalived", scope: !130, file: !130, line: 405, type: !306, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!462 = !DILocation(line: 409, column: 24, scope: !461)
!463 = !DILocation(line: 409, column: 2, scope: !461)
!464 = !DILocation(line: 412, column: 6, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !130, line: 412, column: 6)
!466 = !DILocation(line: 412, column: 6, scope: !461)
!467 = !DILocation(line: 413, column: 14, scope: !465)
!468 = !DILocation(line: 413, column: 3, scope: !465)
!469 = !DILocation(line: 417, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !461, file: !130, line: 417, column: 6)
!471 = !DILocation(line: 417, column: 6, scope: !461)
!472 = !DILocation(line: 418, column: 14, scope: !470)
!473 = !DILocation(line: 418, column: 3, scope: !470)
!474 = !DILocation(line: 426, column: 13, scope: !461)
!475 = !DILocation(line: 426, column: 2, scope: !461)
!476 = !DILocation(line: 428, column: 1, scope: !461)
!477 = distinct !DISubprogram(name: "initialise_debug_options", scope: !130, file: !130, line: 895, type: !306, isLocal: false, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!478 = !DILocation(line: 940, column: 1, scope: !477)
!479 = distinct !DISubprogram(name: "keepalived_main", scope: !130, file: !130, line: 1558, type: !480, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!480 = !DISubroutineType(types: !481)
!481 = !{!114, !114, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!483 = !DILocalVariable(name: "argc", arg: 1, scope: !479, file: !130, line: 1558, type: !114)
!484 = !DILocation(line: 1558, column: 21, scope: !479)
!485 = !DILocalVariable(name: "argv", arg: 2, scope: !479, file: !130, line: 1558, type: !482)
!486 = !DILocation(line: 1558, column: 34, scope: !479)
!487 = !DILocalVariable(name: "report_stopped", scope: !479, file: !130, line: 1560, type: !216)
!488 = !DILocation(line: 1560, column: 6, scope: !479)
!489 = !DILocalVariable(name: "uname_buf", scope: !479, file: !130, line: 1561, type: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !491, line: 48, size: 3120, align: 8, elements: !492)
!491 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!492 = !{!493, !497, !498, !499, !500, !501}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !490, file: !491, line: 51, baseType: !494, size: 520, align: 8)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 520, align: 8, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 65)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !490, file: !491, line: 54, baseType: !494, size: 520, align: 8, offset: 520)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !490, file: !491, line: 57, baseType: !494, size: 520, align: 8, offset: 1040)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !490, file: !491, line: 59, baseType: !494, size: 520, align: 8, offset: 1560)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !490, file: !491, line: 62, baseType: !494, size: 520, align: 8, offset: 2080)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !490, file: !491, line: 67, baseType: !494, size: 520, align: 8, offset: 2600)
!502 = !DILocation(line: 1561, column: 17, scope: !479)
!503 = !DILocalVariable(name: "end", scope: !479, file: !130, line: 1562, type: !135)
!504 = !DILocation(line: 1562, column: 8, scope: !479)
!505 = !DILocation(line: 1566, column: 2, scope: !479)
!506 = !DILocation(line: 1569, column: 24, scope: !479)
!507 = !DILocation(line: 1569, column: 30, scope: !479)
!508 = !DILocation(line: 1569, column: 2, scope: !479)
!509 = !DILocation(line: 1572, column: 8, scope: !479)
!510 = !DILocation(line: 1576, column: 12, scope: !479)
!511 = !DILocation(line: 1580, column: 2, scope: !479)
!512 = !DILocation(line: 1584, column: 2, scope: !479)
!513 = !DILocation(line: 1589, column: 2, scope: !479)
!514 = !DILocation(line: 1592, column: 2, scope: !479)
!515 = !DILocation(line: 1599, column: 32, scope: !479)
!516 = !DILocation(line: 1599, column: 2, scope: !479)
!517 = !DILocation(line: 1606, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1606, column: 6)
!519 = !DILocation(line: 1606, column: 6, scope: !479)
!520 = !DILocation(line: 1607, column: 74, scope: !518)
!521 = !DILocation(line: 1607, column: 73, scope: !518)
!522 = !DILocation(line: 1607, column: 3, scope: !523)
!523 = !DILexicalBlockFile(scope: !518, file: !130, discriminator: 1)
!524 = !DILocation(line: 1607, column: 3, scope: !518)
!525 = !DILocation(line: 1609, column: 42, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !130, line: 1608, column: 7)
!527 = !DILocation(line: 1609, column: 32, scope: !526)
!528 = !DILocation(line: 1609, column: 24, scope: !526)
!529 = !DILocation(line: 1609, column: 14, scope: !526)
!530 = !DILocation(line: 1609, column: 12, scope: !526)
!531 = !DILocation(line: 1610, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !130, line: 1610, column: 7)
!533 = !DILocation(line: 1610, column: 7, scope: !532)
!534 = !DILocation(line: 1610, column: 12, scope: !532)
!535 = !DILocation(line: 1610, column: 7, scope: !526)
!536 = !DILocation(line: 1611, column: 13, scope: !532)
!537 = !DILocation(line: 1611, column: 4, scope: !532)
!538 = !DILocation(line: 1613, column: 33, scope: !539)
!539 = distinct !DILexicalBlock(scope: !532, file: !130, line: 1612, column: 8)
!540 = !DILocation(line: 1613, column: 37, scope: !539)
!541 = !DILocation(line: 1613, column: 25, scope: !539)
!542 = !DILocation(line: 1613, column: 15, scope: !539)
!543 = !DILocation(line: 1613, column: 13, scope: !539)
!544 = !DILocation(line: 1614, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !539, file: !130, line: 1614, column: 8)
!546 = !DILocation(line: 1614, column: 8, scope: !545)
!547 = !DILocation(line: 1614, column: 13, scope: !545)
!548 = !DILocation(line: 1614, column: 8, scope: !539)
!549 = !DILocation(line: 1615, column: 14, scope: !545)
!550 = !DILocation(line: 1615, column: 5, scope: !545)
!551 = !DILocation(line: 1617, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !130, line: 1617, column: 9)
!553 = distinct !DILexicalBlock(scope: !545, file: !130, line: 1616, column: 9)
!554 = !DILocation(line: 1617, column: 30, scope: !552)
!555 = !DILocation(line: 1617, column: 10, scope: !552)
!556 = !DILocation(line: 1617, column: 12, scope: !552)
!557 = !DILocation(line: 1617, column: 11, scope: !552)
!558 = !DILocation(line: 1617, column: 13, scope: !552)
!559 = !DILocation(line: 1617, column: 9, scope: !553)
!560 = !DILocation(line: 1618, column: 15, scope: !552)
!561 = !DILocation(line: 1618, column: 6, scope: !552)
!562 = !DILocation(line: 1620, column: 37, scope: !552)
!563 = !DILocation(line: 1620, column: 41, scope: !552)
!564 = !DILocation(line: 1620, column: 29, scope: !552)
!565 = !DILocation(line: 1620, column: 19, scope: !552)
!566 = !DILocation(line: 1620, column: 17, scope: !552)
!567 = !DILocation(line: 1623, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !526, file: !130, line: 1623, column: 7)
!569 = !DILocation(line: 1623, column: 7, scope: !526)
!570 = !DILocation(line: 1624, column: 72, scope: !568)
!571 = !DILocation(line: 1624, column: 62, scope: !568)
!572 = !DILocation(line: 1624, column: 4, scope: !568)
!573 = !DILocation(line: 1627, column: 8, scope: !574)
!574 = distinct !DILexicalBlock(scope: !526, file: !130, line: 1627, column: 7)
!575 = !DILocation(line: 1627, column: 7, scope: !526)
!576 = !DILocation(line: 1628, column: 30, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !130, line: 1627, column: 19)
!578 = !DILocation(line: 1628, column: 20, scope: !577)
!579 = !DILocation(line: 1628, column: 10, scope: !577)
!580 = !DILocation(line: 1628, column: 8, scope: !577)
!581 = !DILocation(line: 1629, column: 33, scope: !577)
!582 = !DILocation(line: 1629, column: 49, scope: !577)
!583 = !DILocation(line: 1629, column: 39, scope: !577)
!584 = !DILocation(line: 1629, column: 37, scope: !577)
!585 = !DILocation(line: 1629, column: 59, scope: !577)
!586 = !DILocation(line: 1629, column: 17, scope: !577)
!587 = !DILocation(line: 1629, column: 14, scope: !577)
!588 = !DILocation(line: 1630, column: 12, scope: !577)
!589 = !DILocation(line: 1630, column: 33, scope: !577)
!590 = !DILocation(line: 1630, column: 23, scope: !577)
!591 = !DILocation(line: 1630, column: 52, scope: !577)
!592 = !DILocation(line: 1630, column: 68, scope: !577)
!593 = !DILocation(line: 1630, column: 58, scope: !577)
!594 = !DILocation(line: 1630, column: 56, scope: !577)
!595 = !DILocation(line: 1630, column: 4, scope: !577)
!596 = !DILocation(line: 1631, column: 14, scope: !577)
!597 = !DILocation(line: 1631, column: 30, scope: !577)
!598 = !DILocation(line: 1631, column: 20, scope: !577)
!599 = !DILocation(line: 1631, column: 18, scope: !577)
!600 = !DILocation(line: 1631, column: 4, scope: !577)
!601 = !DILocation(line: 1631, column: 40, scope: !577)
!602 = !DILocation(line: 1632, column: 3, scope: !577)
!603 = !DILocation(line: 1639, column: 20, scope: !604)
!604 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1639, column: 6)
!605 = !DILocation(line: 1639, column: 26, scope: !604)
!606 = !DILocation(line: 1639, column: 6, scope: !604)
!607 = !DILocation(line: 1639, column: 6, scope: !479)
!608 = !DILocation(line: 1640, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !130, line: 1639, column: 33)
!610 = !DILocation(line: 1641, column: 8, scope: !611)
!611 = distinct !DILexicalBlock(scope: !609, file: !130, line: 1641, column: 7)
!612 = !DILocation(line: 1641, column: 7, scope: !609)
!613 = !DILocation(line: 1642, column: 37, scope: !611)
!614 = !DILocation(line: 1642, column: 36, scope: !611)
!615 = !DILocation(line: 1642, column: 33, scope: !611)
!616 = !DILocation(line: 1642, column: 92, scope: !611)
!617 = !DILocation(line: 1642, column: 4, scope: !618)
!618 = !DILexicalBlockFile(scope: !611, file: !130, discriminator: 1)
!619 = !DILocation(line: 1642, column: 4, scope: !611)
!620 = !DILocation(line: 1643, column: 2, scope: !609)
!621 = !DILocation(line: 1645, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1645, column: 6)
!623 = !DILocation(line: 1645, column: 6, scope: !479)
!624 = !DILocation(line: 1646, column: 3, scope: !622)
!625 = !DILocation(line: 1649, column: 53, scope: !479)
!626 = !DILocation(line: 1649, column: 2, scope: !479)
!627 = !DILocation(line: 1655, column: 2, scope: !479)
!628 = !DILocation(line: 1657, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1657, column: 6)
!630 = !DILocation(line: 1657, column: 6, scope: !479)
!631 = !DILocation(line: 1658, column: 6, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !130, line: 1658, column: 6)
!633 = distinct !DILexicalBlock(scope: !629, file: !130, line: 1657, column: 16)
!634 = !DILocation(line: 1658, column: 8, scope: !632)
!635 = !DILocation(line: 1658, column: 15, scope: !632)
!636 = !DILocation(line: 1658, column: 14, scope: !632)
!637 = !DILocation(line: 1658, column: 53, scope: !632)
!638 = !DILocation(line: 1658, column: 6, scope: !633)
!639 = !DILocation(line: 1664, column: 16, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !130, line: 1658, column: 75)
!641 = !DILocation(line: 1664, column: 6, scope: !640)
!642 = !DILocation(line: 1664, column: 35, scope: !640)
!643 = !DILocation(line: 1664, column: 25, scope: !640)
!644 = !DILocation(line: 1664, column: 54, scope: !640)
!645 = !DILocation(line: 1664, column: 44, scope: !640)
!646 = !DILocation(line: 1660, column: 4, scope: !640)
!647 = !DILocation(line: 1665, column: 3, scope: !640)
!648 = !DILocation(line: 1668, column: 16, scope: !649)
!649 = distinct !DILexicalBlock(scope: !632, file: !130, line: 1665, column: 10)
!650 = !DILocation(line: 1668, column: 6, scope: !649)
!651 = !DILocation(line: 1668, column: 35, scope: !649)
!652 = !DILocation(line: 1668, column: 25, scope: !649)
!653 = !DILocation(line: 1668, column: 54, scope: !649)
!654 = !DILocation(line: 1668, column: 44, scope: !649)
!655 = !DILocation(line: 1667, column: 4, scope: !649)
!656 = !DILocation(line: 1673, column: 2, scope: !633)
!657 = !DILocation(line: 1675, column: 2, scope: !479)
!658 = !DILocation(line: 1677, column: 2, scope: !479)
!659 = !DILocation(line: 1686, column: 23, scope: !660)
!660 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1686, column: 6)
!661 = !DILocation(line: 1686, column: 7, scope: !660)
!662 = !DILocation(line: 1686, column: 6, scope: !479)
!663 = !DILocation(line: 1687, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !130, line: 1687, column: 7)
!665 = distinct !DILexicalBlock(scope: !660, file: !130, line: 1686, column: 35)
!666 = !DILocation(line: 1687, column: 7, scope: !665)
!667 = !DILocation(line: 1688, column: 4, scope: !664)
!668 = !DILocation(line: 1690, column: 3, scope: !665)
!669 = !DILocation(line: 1693, column: 16, scope: !479)
!670 = !DILocation(line: 1693, column: 14, scope: !479)
!671 = !DILocation(line: 1695, column: 2, scope: !479)
!672 = !DILocation(line: 1697, column: 19, scope: !479)
!673 = !DILocation(line: 1697, column: 2, scope: !479)
!674 = !DILocation(line: 1700, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1700, column: 6)
!676 = !DILocation(line: 1700, column: 6, scope: !479)
!677 = !DILocation(line: 1701, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !130, line: 1701, column: 7)
!679 = distinct !DILexicalBlock(scope: !675, file: !130, line: 1700, column: 26)
!680 = !DILocation(line: 1701, column: 20, scope: !678)
!681 = !DILocation(line: 1701, column: 7, scope: !679)
!682 = !DILocation(line: 1702, column: 98, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !130, line: 1701, column: 39)
!684 = !DILocation(line: 1702, column: 111, scope: !683)
!685 = !DILocation(line: 1702, column: 130, scope: !683)
!686 = !DILocation(line: 1702, column: 4, scope: !683)
!687 = !DILocation(line: 1703, column: 10, scope: !683)
!688 = !DILocation(line: 1703, column: 23, scope: !683)
!689 = !DILocation(line: 1703, column: 5, scope: !683)
!690 = !DILocation(line: 1703, column: 44, scope: !683)
!691 = !DILocation(line: 1703, column: 57, scope: !683)
!692 = !DILocation(line: 1703, column: 76, scope: !683)
!693 = !DILocation(line: 1704, column: 3, scope: !683)
!694 = !DILocation(line: 1705, column: 36, scope: !679)
!695 = !DILocation(line: 1705, column: 3, scope: !679)
!696 = !DILocation(line: 1705, column: 16, scope: !679)
!697 = !DILocation(line: 1705, column: 34, scope: !679)
!698 = !DILocation(line: 1706, column: 22, scope: !679)
!699 = !DILocation(line: 1707, column: 2, scope: !679)
!700 = !DILocation(line: 1710, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1710, column: 6)
!702 = !DILocation(line: 1710, column: 43, scope: !701)
!703 = !DILocation(line: 1711, column: 7, scope: !701)
!704 = !DILocation(line: 1711, column: 20, scope: !701)
!705 = !DILocation(line: 1713, column: 7, scope: !701)
!706 = !DILocation(line: 1713, column: 10, scope: !707)
!707 = !DILexicalBlockFile(scope: !701, file: !130, discriminator: 1)
!708 = !DILocation(line: 1713, column: 23, scope: !707)
!709 = !DILocation(line: 1710, column: 6, scope: !710)
!710 = !DILexicalBlockFile(scope: !479, file: !130, discriminator: 1)
!711 = !DILocation(line: 1716, column: 23, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !130, line: 1716, column: 7)
!713 = distinct !DILexicalBlock(scope: !701, file: !130, line: 1715, column: 15)
!714 = !DILocation(line: 1716, column: 21, scope: !712)
!715 = !DILocation(line: 1716, column: 7, scope: !713)
!716 = !DILocation(line: 1717, column: 56, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !130, line: 1716, column: 57)
!718 = !DILocation(line: 1717, column: 4, scope: !717)
!719 = !DILocation(line: 1718, column: 4, scope: !717)
!720 = !DILocation(line: 1719, column: 12, scope: !717)
!721 = !DILocation(line: 1719, column: 37, scope: !717)
!722 = !DILocation(line: 1719, column: 36, scope: !717)
!723 = !DILocation(line: 1719, column: 33, scope: !717)
!724 = !DILocation(line: 1719, column: 91, scope: !717)
!725 = !DILocation(line: 1719, column: 4, scope: !726)
!726 = !DILexicalBlockFile(scope: !717, file: !130, discriminator: 1)
!727 = !DILocation(line: 1720, column: 3, scope: !717)
!728 = !DILocation(line: 1722, column: 4, scope: !712)
!729 = !DILocation(line: 1724, column: 15, scope: !713)
!730 = !DILocation(line: 1726, column: 17, scope: !713)
!731 = !DILocation(line: 1729, column: 5, scope: !713)
!732 = !DILocation(line: 1729, column: 18, scope: !713)
!733 = !DILocation(line: 1733, column: 5, scope: !713)
!734 = !DILocation(line: 1733, column: 18, scope: !713)
!735 = !DILocation(line: 1726, column: 3, scope: !713)
!736 = !DILocation(line: 1734, column: 2, scope: !713)
!737 = !DILocation(line: 1736, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1736, column: 6)
!739 = !DILocation(line: 1736, column: 6, scope: !479)
!740 = !DILocation(line: 1737, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !130, line: 1737, column: 7)
!742 = distinct !DILexicalBlock(scope: !738, file: !130, line: 1736, column: 44)
!743 = !DILocation(line: 1737, column: 7, scope: !742)
!744 = !DILocation(line: 1739, column: 4, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !130, line: 1737, column: 20)
!746 = !DILocation(line: 1740, column: 3, scope: !745)
!747 = !DILocation(line: 1741, column: 2, scope: !742)
!748 = !DILocation(line: 1744, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1744, column: 6)
!750 = !DILocation(line: 1744, column: 19, scope: !749)
!751 = !DILocation(line: 1744, column: 6, scope: !479)
!752 = !DILocation(line: 1745, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !130, line: 1745, column: 7)
!754 = distinct !DILexicalBlock(scope: !749, file: !130, line: 1744, column: 38)
!755 = !DILocation(line: 1745, column: 20, scope: !753)
!756 = !DILocation(line: 1745, column: 38, scope: !753)
!757 = !DILocation(line: 1745, column: 57, scope: !758)
!758 = !DILexicalBlockFile(scope: !753, file: !130, discriminator: 1)
!759 = !DILocation(line: 1745, column: 70, scope: !758)
!760 = !DILocation(line: 1745, column: 42, scope: !758)
!761 = !DILocation(line: 1745, column: 7, scope: !758)
!762 = !DILocation(line: 1746, column: 72, scope: !763)
!763 = distinct !DILexicalBlock(scope: !753, file: !130, line: 1745, column: 90)
!764 = !DILocation(line: 1746, column: 85, scope: !763)
!765 = !DILocation(line: 1746, column: 4, scope: !763)
!766 = !DILocation(line: 1747, column: 4, scope: !763)
!767 = !DILocation(line: 1749, column: 2, scope: !754)
!768 = !DILocation(line: 1752, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1752, column: 6)
!770 = !DILocation(line: 1752, column: 6, scope: !479)
!771 = !DILocation(line: 1753, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !130, line: 1753, column: 7)
!773 = distinct !DILexicalBlock(scope: !769, file: !130, line: 1752, column: 44)
!774 = !DILocation(line: 1753, column: 20, scope: !772)
!775 = !DILocation(line: 1753, column: 7, scope: !773)
!776 = !DILocation(line: 1754, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !130, line: 1754, column: 8)
!778 = distinct !DILexicalBlock(scope: !772, file: !130, line: 1753, column: 35)
!779 = !DILocation(line: 1754, column: 22, scope: !777)
!780 = !DILocation(line: 1754, column: 89, scope: !781)
!781 = !DILexicalBlockFile(scope: !777, file: !130, discriminator: 1)
!782 = !DILocation(line: 1754, column: 102, scope: !781)
!783 = !DILocation(line: 1754, column: 41, scope: !781)
!784 = !DILocation(line: 1754, column: 39, scope: !781)
!785 = !DILocation(line: 1754, column: 8, scope: !781)
!786 = !DILocation(line: 1755, column: 23, scope: !777)
!787 = !DILocation(line: 1755, column: 5, scope: !777)
!788 = !DILocation(line: 1757, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !778, file: !130, line: 1757, column: 8)
!790 = !DILocation(line: 1757, column: 26, scope: !789)
!791 = !DILocation(line: 1757, column: 95, scope: !792)
!792 = !DILexicalBlockFile(scope: !789, file: !130, discriminator: 1)
!793 = !DILocation(line: 1757, column: 108, scope: !792)
!794 = !DILocation(line: 1757, column: 49, scope: !792)
!795 = !DILocation(line: 1757, column: 47, scope: !792)
!796 = !DILocation(line: 1757, column: 8, scope: !792)
!797 = !DILocation(line: 1758, column: 27, scope: !789)
!798 = !DILocation(line: 1758, column: 5, scope: !789)
!799 = !DILocation(line: 1761, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !778, file: !130, line: 1761, column: 8)
!801 = !DILocation(line: 1761, column: 22, scope: !800)
!802 = !DILocation(line: 1761, column: 83, scope: !803)
!803 = !DILexicalBlockFile(scope: !800, file: !130, discriminator: 1)
!804 = !DILocation(line: 1761, column: 96, scope: !803)
!805 = !DILocation(line: 1761, column: 41, scope: !803)
!806 = !DILocation(line: 1761, column: 39, scope: !803)
!807 = !DILocation(line: 1761, column: 8, scope: !803)
!808 = !DILocation(line: 1762, column: 23, scope: !800)
!809 = !DILocation(line: 1762, column: 5, scope: !800)
!810 = !DILocation(line: 1768, column: 3, scope: !778)
!811 = !DILocation(line: 1770, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !773, file: !130, line: 1770, column: 7)
!813 = !DILocation(line: 1770, column: 7, scope: !773)
!814 = !DILocation(line: 1771, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !130, line: 1771, column: 8)
!816 = distinct !DILexicalBlock(scope: !812, file: !130, line: 1770, column: 20)
!817 = !DILocation(line: 1771, column: 8, scope: !816)
!818 = !DILocation(line: 1772, column: 18, scope: !815)
!819 = !DILocation(line: 1772, column: 5, scope: !815)
!820 = !DILocation(line: 1774, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !130, line: 1774, column: 8)
!822 = !DILocation(line: 1774, column: 8, scope: !816)
!823 = !DILocation(line: 1775, column: 22, scope: !821)
!824 = !DILocation(line: 1775, column: 5, scope: !821)
!825 = !DILocation(line: 1778, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !816, file: !130, line: 1778, column: 8)
!827 = !DILocation(line: 1778, column: 8, scope: !816)
!828 = !DILocation(line: 1779, column: 18, scope: !826)
!829 = !DILocation(line: 1779, column: 5, scope: !826)
!830 = !DILocation(line: 1785, column: 3, scope: !816)
!831 = !DILocation(line: 1788, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !130, line: 1788, column: 8)
!833 = distinct !DILexicalBlock(scope: !812, file: !130, line: 1787, column: 3)
!834 = !DILocation(line: 1788, column: 8, scope: !833)
!835 = !DILocation(line: 1789, column: 18, scope: !832)
!836 = !DILocation(line: 1789, column: 5, scope: !832)
!837 = !DILocation(line: 1791, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !130, line: 1791, column: 8)
!839 = !DILocation(line: 1791, column: 8, scope: !833)
!840 = !DILocation(line: 1792, column: 22, scope: !838)
!841 = !DILocation(line: 1792, column: 5, scope: !838)
!842 = !DILocation(line: 1795, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !130, line: 1795, column: 8)
!844 = !DILocation(line: 1795, column: 8, scope: !833)
!845 = !DILocation(line: 1796, column: 18, scope: !843)
!846 = !DILocation(line: 1796, column: 5, scope: !843)
!847 = !DILocation(line: 1805, column: 26, scope: !848)
!848 = distinct !DILexicalBlock(scope: !773, file: !130, line: 1805, column: 7)
!849 = !DILocation(line: 1805, column: 7, scope: !848)
!850 = !DILocation(line: 1805, column: 7, scope: !773)
!851 = !DILocation(line: 1806, column: 4, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !130, line: 1805, column: 40)
!853 = !DILocation(line: 1807, column: 19, scope: !852)
!854 = !DILocation(line: 1808, column: 4, scope: !852)
!855 = !DILocation(line: 1810, column: 2, scope: !773)
!856 = !DILocation(line: 1813, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1813, column: 6)
!858 = !DILocation(line: 1813, column: 41, scope: !857)
!859 = !DILocation(line: 1814, column: 6, scope: !857)
!860 = !DILocation(line: 1814, column: 33, scope: !857)
!861 = !DILocation(line: 1813, column: 6, scope: !710)
!862 = !DILocation(line: 1815, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !857, file: !130, line: 1814, column: 38)
!864 = !DILocation(line: 1816, column: 9, scope: !863)
!865 = !DILocation(line: 1816, column: 4, scope: !863)
!866 = !DILocation(line: 1816, column: 33, scope: !863)
!867 = !DILocation(line: 1817, column: 9, scope: !863)
!868 = !DILocation(line: 1817, column: 4, scope: !863)
!869 = !DILocation(line: 1817, column: 59, scope: !863)
!870 = !DILocation(line: 1818, column: 3, scope: !863)
!871 = !DILocation(line: 1819, column: 3, scope: !863)
!872 = !DILocation(line: 1823, column: 2, scope: !479)
!873 = !DILocation(line: 1829, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1829, column: 6)
!875 = !DILocation(line: 1829, column: 6, scope: !479)
!876 = !DILocation(line: 1830, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !130, line: 1829, column: 43)
!878 = !DILocation(line: 1832, column: 3, scope: !877)
!879 = !DILocation(line: 1833, column: 2, scope: !877)
!880 = !DILocation(line: 1836, column: 21, scope: !881)
!881 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1836, column: 6)
!882 = !DILocation(line: 1836, column: 35, scope: !881)
!883 = !DILocation(line: 1836, column: 7, scope: !884)
!884 = !DILexicalBlockFile(scope: !881, file: !130, discriminator: 1)
!885 = !DILocation(line: 1836, column: 7, scope: !881)
!886 = !DILocation(line: 1836, column: 6, scope: !479)
!887 = !DILocation(line: 1837, column: 3, scope: !881)
!888 = !DILocation(line: 1840, column: 11, scope: !479)
!889 = !DILocation(line: 1840, column: 9, scope: !479)
!890 = !DILocation(line: 1843, column: 2, scope: !479)
!891 = !DILocation(line: 1846, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1846, column: 6)
!893 = !DILocation(line: 1846, column: 6, scope: !479)
!894 = !DILocation(line: 1847, column: 3, scope: !892)
!895 = !DILocation(line: 1849, column: 2, scope: !479)
!896 = !DILocation(line: 1856, column: 26, scope: !479)
!897 = !DILocation(line: 1856, column: 2, scope: !479)
!898 = !DILocation(line: 1859, column: 2, scope: !479)
!899 = !DILocation(line: 1870, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1870, column: 6)
!901 = !DILocation(line: 1870, column: 6, scope: !479)
!902 = !DILocation(line: 1872, column: 53, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !130, line: 1870, column: 22)
!904 = !DILocation(line: 1872, column: 3, scope: !903)
!905 = !DILocation(line: 1876, column: 2, scope: !903)
!906 = !DILocation(line: 1879, column: 6, scope: !907)
!907 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1879, column: 6)
!908 = !DILocation(line: 1879, column: 18, scope: !907)
!909 = !DILocation(line: 1879, column: 21, scope: !910)
!910 = !DILexicalBlockFile(scope: !907, file: !130, discriminator: 1)
!911 = !DILocation(line: 1879, column: 34, scope: !910)
!912 = !DILocation(line: 1879, column: 6, scope: !910)
!913 = !DILocation(line: 1880, column: 3, scope: !907)
!914 = !DILocation(line: 1883, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1883, column: 6)
!916 = !DILocation(line: 1883, column: 6, scope: !479)
!917 = !DILocation(line: 1884, column: 3, scope: !915)
!918 = !DILocation(line: 1887, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1887, column: 6)
!920 = !DILocation(line: 1887, column: 6, scope: !479)
!921 = !DILocation(line: 1888, column: 28, scope: !919)
!922 = !DILocation(line: 1888, column: 3, scope: !919)
!923 = !DILocation(line: 1890, column: 2, scope: !479)
!924 = !DILocation(line: 1891, column: 2, scope: !479)
!925 = !DILocation(line: 1892, column: 19, scope: !479)
!926 = !DILocation(line: 1892, column: 2, scope: !479)
!927 = !DILocation(line: 1894, column: 2, scope: !479)
!928 = !DILocation(line: 1897, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !130, line: 1897, column: 8)
!930 = distinct !DILexicalBlock(scope: !479, file: !130, line: 1897, column: 2)
!931 = !DILocation(line: 1897, column: 8, scope: !930)
!932 = !DILocation(line: 1897, column: 30, scope: !933)
!933 = !DILexicalBlockFile(scope: !934, file: !130, discriminator: 1)
!934 = distinct !DILexicalBlock(scope: !929, file: !130, line: 1897, column: 22)
!935 = !DILocation(line: 1897, column: 25, scope: !933)
!936 = !DILocation(line: 1897, column: 60, scope: !933)
!937 = !DILocation(line: 1897, column: 3, scope: !933)
!938 = !DILocation(line: 1902, column: 2, scope: !479)
!939 = !DILocation(line: 1904, column: 2, scope: !479)
!940 = !DILocation(line: 1905, column: 1, scope: !479)
!941 = distinct !DISubprogram(name: "find_keepalived_child_name", scope: !130, file: !130, line: 360, type: !942, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!942 = !DISubroutineType(types: !943)
!943 = !{!131, !125}
!944 = !DILocalVariable(name: "pid", arg: 1, scope: !941, file: !130, line: 360, type: !125)
!945 = !DILocation(line: 360, column: 34, scope: !941)
!946 = !DILocation(line: 363, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !130, line: 363, column: 6)
!948 = !DILocation(line: 363, column: 13, scope: !947)
!949 = !DILocation(line: 363, column: 10, scope: !947)
!950 = !DILocation(line: 363, column: 6, scope: !941)
!951 = !DILocation(line: 364, column: 3, scope: !947)
!952 = !DILocation(line: 367, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !941, file: !130, line: 367, column: 6)
!954 = !DILocation(line: 367, column: 13, scope: !953)
!955 = !DILocation(line: 367, column: 10, scope: !953)
!956 = !DILocation(line: 367, column: 6, scope: !941)
!957 = !DILocation(line: 368, column: 3, scope: !953)
!958 = !DILocation(line: 375, column: 2, scope: !941)
!959 = !DILocation(line: 376, column: 1, scope: !941)
!960 = distinct !DISubprogram(name: "parent_child_remover", scope: !130, file: !130, line: 310, type: !961, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !963}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !10, line: 99, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !10, line: 78, size: 768, align: 64, elements: !966)
!966 = !{!967, !968, !970, !1023, !1028, !1029, !1039, !1049, !1051}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !965, file: !10, line: 79, baseType: !118, size: 64, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !965, file: !10, line: 80, baseType: !969, size: 32, align: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !10, line: 63, baseType: !45)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !965, file: !10, line: 81, baseType: !971, size: 64, align: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64, align: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !10, line: 112, size: 1280, align: 64, elements: !973)
!973 = !{!974, !986, !987, !988, !989, !997, !998, !999, !1000, !1001, !1004, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !972, file: !10, line: 113, baseType: !975, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !976, line: 109, baseType: !977)
!976 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !976, line: 106, size: 64, align: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !977, file: !976, line: 108, baseType: !980, size: 64, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64, align: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !976, line: 97, size: 192, align: 64, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !981, file: !976, line: 99, baseType: !118, size: 64, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !981, file: !976, line: 102, baseType: !980, size: 64, align: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !981, file: !976, line: 103, baseType: !980, size: 64, align: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !972, file: !10, line: 114, baseType: !975, size: 64, align: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !972, file: !10, line: 115, baseType: !975, size: 64, align: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !972, file: !10, line: 116, baseType: !975, size: 64, align: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !972, file: !10, line: 117, baseType: !990, size: 128, align: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !991, line: 62, baseType: !992)
!991 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !991, line: 60, size: 128, align: 64, elements: !993)
!993 = !{!994, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !991, line: 61, baseType: !995, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !992, file: !991, line: 61, baseType: !995, size: 64, align: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !972, file: !10, line: 121, baseType: !990, size: 128, align: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !972, file: !10, line: 122, baseType: !990, size: 128, align: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !972, file: !10, line: 124, baseType: !140, size: 64, align: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !972, file: !10, line: 127, baseType: !975, size: 64, align: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !972, file: !10, line: 128, baseType: !1002, size: 64, align: 64, offset: 768)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64, align: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !10, line: 128, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !972, file: !10, line: 129, baseType: !1005, size: 64, align: 64, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !10, line: 109, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !10, line: 102, size: 448, align: 64, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1007, file: !10, line: 103, baseType: !963, size: 64, align: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1007, file: !10, line: 104, baseType: !963, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !10, line: 105, baseType: !118, size: 64, align: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1007, file: !10, line: 106, baseType: !114, size: 32, align: 32, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1007, file: !10, line: 108, baseType: !1014, size: 192, align: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !976, line: 104, baseType: !981)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !972, file: !10, line: 130, baseType: !113, size: 32, align: 32, offset: 896)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !972, file: !10, line: 131, baseType: !113, size: 32, align: 32, offset: 928)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !972, file: !10, line: 132, baseType: !114, size: 32, align: 32, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !972, file: !10, line: 135, baseType: !114, size: 32, align: 32, offset: 992)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !972, file: !10, line: 136, baseType: !963, size: 64, align: 64, offset: 1024)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !972, file: !10, line: 146, baseType: !118, size: 64, align: 64, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !972, file: !10, line: 147, baseType: !118, size: 64, align: 64, offset: 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !972, file: !10, line: 148, baseType: !216, size: 8, align: 8, offset: 1216)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !965, file: !10, line: 82, baseType: !1024, size: 64, align: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64, align: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!114, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64, align: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !965, file: !10, line: 83, baseType: !121, size: 64, align: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !965, file: !10, line: 84, baseType: !1030, size: 128, align: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !1031, line: 31, baseType: !1032)
!1031 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1033, line: 30, size: 128, align: 64, elements: !1034)
!1033 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1034 = !{!1035, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1032, file: !1033, line: 32, baseType: !1036, size: 64, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !120, line: 139, baseType: !124)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1032, file: !1033, line: 33, baseType: !1038, size: 64, align: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !120, line: 141, baseType: !124)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !965, file: !10, line: 92, baseType: !1040, size: 64, align: 32, offset: 448)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !10, line: 85, size: 64, align: 32, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1040, file: !10, line: 86, baseType: !114, size: 32, align: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1040, file: !10, line: 87, baseType: !114, size: 32, align: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1040, file: !10, line: 91, baseType: !1045, size: 64, align: 32)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !10, line: 88, size: 64, align: 32, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1045, file: !10, line: 89, baseType: !125, size: 32, align: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1045, file: !10, line: 90, baseType: !114, size: 32, align: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !965, file: !10, line: 93, baseType: !1050, size: 64, align: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !10, line: 95, baseType: !1052, size: 192, align: 64, offset: 576)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !10, line: 95, size: 192, align: 64, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1052, file: !10, line: 96, baseType: !1014, size: 192, align: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1052, file: !10, line: 97, baseType: !990, size: 128, align: 64)
!1056 = !DILocalVariable(name: "thread", arg: 1, scope: !960, file: !130, line: 310, type: !963)
!1057 = !DILocation(line: 310, column: 32, scope: !960)
!1058 = !DILocation(line: 312, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !960, file: !130, line: 312, column: 13)
!1060 = !DILocation(line: 312, column: 23, scope: !1059)
!1061 = !DILocation(line: 312, column: 13, scope: !960)
!1062 = !DILocation(line: 314, column: 21, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !130, line: 314, column: 21)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !130, line: 312, column: 44)
!1065 = !DILocation(line: 314, column: 29, scope: !1063)
!1066 = !DILocation(line: 314, column: 31, scope: !1063)
!1067 = !DILocation(line: 314, column: 33, scope: !1063)
!1068 = !DILocation(line: 314, column: 40, scope: !1063)
!1069 = !DILocation(line: 314, column: 37, scope: !1063)
!1070 = !DILocation(line: 314, column: 21, scope: !1064)
!1071 = !DILocation(line: 315, column: 36, scope: !1063)
!1072 = !DILocation(line: 315, column: 25, scope: !1063)
!1073 = !DILocation(line: 318, column: 21, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1064, file: !130, line: 318, column: 21)
!1075 = !DILocation(line: 318, column: 29, scope: !1074)
!1076 = !DILocation(line: 318, column: 31, scope: !1074)
!1077 = !DILocation(line: 318, column: 33, scope: !1074)
!1078 = !DILocation(line: 318, column: 40, scope: !1074)
!1079 = !DILocation(line: 318, column: 37, scope: !1074)
!1080 = !DILocation(line: 318, column: 21, scope: !1064)
!1081 = !DILocation(line: 319, column: 40, scope: !1074)
!1082 = !DILocation(line: 319, column: 25, scope: !1074)
!1083 = !DILocation(line: 325, column: 2, scope: !1064)
!1084 = !DILocation(line: 326, column: 1, scope: !960)
!1085 = distinct !DISubprogram(name: "__set_bit", scope: !31, file: !31, line: 37, type: !1086, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !113, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!1089 = !DILocalVariable(name: "idx", arg: 1, scope: !1085, file: !31, line: 37, type: !113)
!1090 = !DILocation(line: 37, column: 39, scope: !1085)
!1091 = !DILocalVariable(name: "bmap", arg: 2, scope: !1085, file: !31, line: 37, type: !1088)
!1092 = !DILocation(line: 37, column: 59, scope: !1085)
!1093 = !DILocation(line: 39, column: 59, scope: !1085)
!1094 = !DILocation(line: 39, column: 58, scope: !1085)
!1095 = !DILocation(line: 39, column: 64, scope: !1085)
!1096 = !DILocation(line: 39, column: 54, scope: !1085)
!1097 = !DILocation(line: 39, column: 9, scope: !1085)
!1098 = !DILocation(line: 39, column: 8, scope: !1085)
!1099 = !DILocation(line: 39, column: 14, scope: !1085)
!1100 = !DILocation(line: 39, column: 2, scope: !1085)
!1101 = !DILocation(line: 39, column: 46, scope: !1085)
!1102 = !DILocation(line: 40, column: 1, scope: !1085)
!1103 = distinct !DISubprogram(name: "parse_cmdline", scope: !130, file: !130, line: 1183, type: !1104, isLocal: true, isDefinition: true, scopeLine: 1184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!216, !114, !482}
!1106 = !DILocalVariable(name: "argc", arg: 1, scope: !1103, file: !130, line: 1183, type: !114)
!1107 = !DILocation(line: 1183, column: 19, scope: !1103)
!1108 = !DILocalVariable(name: "argv", arg: 2, scope: !1103, file: !130, line: 1183, type: !482)
!1109 = !DILocation(line: 1183, column: 32, scope: !1103)
!1110 = !DILocalVariable(name: "c", scope: !1103, file: !130, line: 1185, type: !114)
!1111 = !DILocation(line: 1185, column: 6, scope: !1103)
!1112 = !DILocalVariable(name: "reopen_log", scope: !1103, file: !130, line: 1186, type: !216)
!1113 = !DILocation(line: 1186, column: 6, scope: !1103)
!1114 = !DILocalVariable(name: "signum", scope: !1103, file: !130, line: 1187, type: !114)
!1115 = !DILocation(line: 1187, column: 6, scope: !1103)
!1116 = !DILocalVariable(name: "uname_buf", scope: !1103, file: !130, line: 1188, type: !490)
!1117 = !DILocation(line: 1188, column: 17, scope: !1103)
!1118 = !DILocalVariable(name: "longindex", scope: !1103, file: !130, line: 1189, type: !114)
!1119 = !DILocation(line: 1189, column: 6, scope: !1103)
!1120 = !DILocalVariable(name: "curind", scope: !1103, file: !130, line: 1190, type: !114)
!1121 = !DILocation(line: 1190, column: 6, scope: !1103)
!1122 = !DILocalVariable(name: "bad_option", scope: !1103, file: !130, line: 1191, type: !216)
!1123 = !DILocation(line: 1191, column: 6, scope: !1103)
!1124 = !DILocalVariable(name: "facility", scope: !1103, file: !130, line: 1192, type: !113)
!1125 = !DILocation(line: 1192, column: 11, scope: !1103)
!1126 = !DILocalVariable(name: "long_options", scope: !1103, file: !130, line: 1194, type: !1127)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 7424, align: 64, elements: !1136)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !1129, line: 104, size: 256, align: 64, elements: !1130)
!1129 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1130 = !{!1131, !1132, !1133, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1128, file: !1129, line: 106, baseType: !131, size: 64, align: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !1128, file: !1129, line: 109, baseType: !114, size: 32, align: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1128, file: !1129, line: 110, baseType: !1134, size: 64, align: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1128, file: !1129, line: 111, baseType: !114, size: 32, align: 32, offset: 192)
!1136 = !{!1137}
!1137 = !DISubrange(count: 29)
!1138 = !DILocation(line: 1194, column: 16, scope: !1103)
!1139 = !DILocation(line: 1261, column: 11, scope: !1103)
!1140 = !DILocation(line: 1261, column: 9, scope: !1103)
!1141 = !DILocation(line: 1262, column: 2, scope: !1103)
!1142 = !DILocation(line: 1262, column: 19, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1103, file: !130, discriminator: 1)
!1144 = !DILocation(line: 1262, column: 42, scope: !1143)
!1145 = !DILocation(line: 1262, column: 48, scope: !1143)
!1146 = !DILocation(line: 1284, column: 7, scope: !1103)
!1147 = !DILocation(line: 1262, column: 30, scope: !1143)
!1148 = !DILocation(line: 1262, column: 28, scope: !1143)
!1149 = !DILocation(line: 1284, column: 34, scope: !1103)
!1150 = !DILocation(line: 1262, column: 2, scope: !1143)
!1151 = !DILocation(line: 1288, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !130, line: 1288, column: 7)
!1153 = distinct !DILexicalBlock(scope: !1103, file: !130, line: 1284, column: 41)
!1154 = !DILocation(line: 1288, column: 17, scope: !1152)
!1155 = !DILocation(line: 1288, column: 22, scope: !1152)
!1156 = !DILocation(line: 1288, column: 38, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1152, file: !130, discriminator: 1)
!1158 = !DILocation(line: 1288, column: 25, scope: !1157)
!1159 = !DILocation(line: 1288, column: 49, scope: !1157)
!1160 = !DILocation(line: 1288, column: 57, scope: !1157)
!1161 = !DILocation(line: 1288, column: 77, scope: !1157)
!1162 = !DILocation(line: 1288, column: 80, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1152, file: !130, discriminator: 2)
!1164 = !DILocation(line: 1288, column: 87, scope: !1163)
!1165 = !DILocation(line: 1288, column: 91, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1152, file: !130, discriminator: 3)
!1167 = !DILocation(line: 1288, column: 7, scope: !1166)
!1168 = !DILocation(line: 1289, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1152, file: !130, line: 1288, column: 102)
!1170 = !DILocation(line: 1290, column: 11, scope: !1169)
!1171 = !DILocation(line: 1291, column: 3, scope: !1169)
!1172 = !DILocation(line: 1293, column: 11, scope: !1153)
!1173 = !DILocation(line: 1293, column: 3, scope: !1153)
!1174 = !DILocation(line: 1295, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1153, file: !130, line: 1293, column: 14)
!1176 = !DILocation(line: 1295, column: 25, scope: !1175)
!1177 = !DILocation(line: 1295, column: 4, scope: !1175)
!1178 = !DILocation(line: 1297, column: 11, scope: !1175)
!1179 = !DILocation(line: 1297, column: 4, scope: !1175)
!1180 = !DILocation(line: 1299, column: 11, scope: !1175)
!1181 = !DILocation(line: 1299, column: 4, scope: !1175)
!1182 = !DILocation(line: 1300, column: 11, scope: !1175)
!1183 = !DILocation(line: 1300, column: 4, scope: !1175)
!1184 = !DILocation(line: 1304, column: 4, scope: !1175)
!1185 = !DILocation(line: 1305, column: 11, scope: !1175)
!1186 = !DILocation(line: 1305, column: 56, scope: !1175)
!1187 = !DILocation(line: 1305, column: 46, scope: !1175)
!1188 = !DILocation(line: 1305, column: 75, scope: !1175)
!1189 = !DILocation(line: 1305, column: 65, scope: !1175)
!1190 = !DILocation(line: 1305, column: 94, scope: !1175)
!1191 = !DILocation(line: 1305, column: 84, scope: !1175)
!1192 = !DILocation(line: 1305, column: 4, scope: !1175)
!1193 = !DILocation(line: 1306, column: 11, scope: !1175)
!1194 = !DILocation(line: 1306, column: 4, scope: !1175)
!1195 = !DILocation(line: 1307, column: 11, scope: !1175)
!1196 = !DILocation(line: 1307, column: 4, scope: !1175)
!1197 = !DILocation(line: 1308, column: 11, scope: !1175)
!1198 = !DILocation(line: 1308, column: 4, scope: !1175)
!1199 = !DILocation(line: 1309, column: 4, scope: !1175)
!1200 = !DILocation(line: 1312, column: 10, scope: !1175)
!1201 = !DILocation(line: 1312, column: 4, scope: !1175)
!1202 = !DILocation(line: 1313, column: 4, scope: !1175)
!1203 = !DILocation(line: 1316, column: 4, scope: !1175)
!1204 = !DILocation(line: 1317, column: 15, scope: !1175)
!1205 = !DILocation(line: 1318, column: 4, scope: !1175)
!1206 = !DILocation(line: 1320, column: 4, scope: !1175)
!1207 = !DILocation(line: 1321, column: 4, scope: !1175)
!1208 = !DILocation(line: 1323, column: 4, scope: !1175)
!1209 = !DILocation(line: 1324, column: 4, scope: !1175)
!1210 = !DILocation(line: 1327, column: 4, scope: !1175)
!1211 = !DILocation(line: 1328, column: 4, scope: !1175)
!1212 = !DILocation(line: 1332, column: 4, scope: !1175)
!1213 = !DILocation(line: 1333, column: 4, scope: !1175)
!1214 = !DILocation(line: 1336, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1336, column: 8)
!1216 = !DILocation(line: 1336, column: 8, scope: !1175)
!1217 = !DILocation(line: 1337, column: 5, scope: !1215)
!1218 = !DILocation(line: 1339, column: 5, scope: !1215)
!1219 = !DILocation(line: 1340, column: 4, scope: !1175)
!1220 = !DILocation(line: 1342, column: 4, scope: !1175)
!1221 = !DILocation(line: 1343, column: 4, scope: !1175)
!1222 = !DILocation(line: 1346, column: 4, scope: !1175)
!1223 = !DILocation(line: 1347, column: 4, scope: !1175)
!1224 = !DILocation(line: 1350, column: 23, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1350, column: 8)
!1226 = !DILocation(line: 1350, column: 9, scope: !1225)
!1227 = !DILocation(line: 1350, column: 8, scope: !1175)
!1228 = !DILocation(line: 1351, column: 12, scope: !1225)
!1229 = !DILocation(line: 1351, column: 51, scope: !1225)
!1230 = !DILocation(line: 1351, column: 5, scope: !1225)
!1231 = !DILocation(line: 1353, column: 33, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !130, line: 1352, column: 9)
!1233 = !DILocation(line: 1353, column: 20, scope: !1232)
!1234 = !DILocation(line: 1353, column: 43, scope: !1232)
!1235 = !DILocation(line: 1353, column: 18, scope: !1232)
!1236 = !DILocation(line: 1354, column: 16, scope: !1232)
!1237 = !DILocation(line: 1356, column: 4, scope: !1175)
!1238 = !DILocation(line: 1358, column: 8, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1358, column: 8)
!1240 = !DILocation(line: 1358, column: 15, scope: !1239)
!1241 = !DILocation(line: 1358, column: 18, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1239, file: !130, discriminator: 1)
!1243 = !DILocation(line: 1358, column: 8, scope: !1242)
!1244 = !DILocation(line: 1359, column: 21, scope: !1239)
!1245 = !DILocation(line: 1359, column: 19, scope: !1239)
!1246 = !DILocation(line: 1359, column: 5, scope: !1239)
!1247 = !DILocation(line: 1361, column: 19, scope: !1239)
!1248 = !DILocation(line: 1362, column: 18, scope: !1175)
!1249 = !DILocation(line: 1362, column: 4, scope: !1175)
!1250 = !DILocation(line: 1363, column: 4, scope: !1175)
!1251 = !DILocation(line: 1365, column: 4, scope: !1175)
!1252 = !DILocation(line: 1366, column: 15, scope: !1175)
!1253 = !DILocation(line: 1367, column: 4, scope: !1175)
!1254 = !DILocation(line: 1369, column: 4, scope: !1175)
!1255 = !DILocation(line: 1370, column: 4, scope: !1175)
!1256 = !DILocation(line: 1371, column: 4, scope: !1175)
!1257 = !DILocation(line: 1372, column: 4, scope: !1175)
!1258 = !DILocation(line: 1373, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1373, column: 8)
!1260 = !DILocation(line: 1373, column: 15, scope: !1259)
!1261 = !DILocation(line: 1373, column: 18, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1259, file: !130, discriminator: 1)
!1263 = !DILocation(line: 1373, column: 8, scope: !1262)
!1264 = !DILocalVariable(name: "fd", scope: !1265, file: !130, line: 1374, type: !114)
!1265 = distinct !DILexicalBlock(scope: !1259, file: !130, line: 1373, column: 29)
!1266 = !DILocation(line: 1374, column: 9, scope: !1265)
!1267 = !DILocation(line: 1374, column: 19, scope: !1265)
!1268 = !DILocation(line: 1374, column: 14, scope: !1265)
!1269 = !DILocation(line: 1375, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !130, line: 1375, column: 9)
!1271 = !DILocation(line: 1375, column: 12, scope: !1270)
!1272 = !DILocation(line: 1375, column: 9, scope: !1265)
!1273 = !DILocation(line: 1376, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !130, line: 1375, column: 19)
!1275 = !DILocation(line: 1376, column: 65, scope: !1274)
!1276 = !DILocation(line: 1376, column: 6, scope: !1274)
!1277 = !DILocation(line: 1377, column: 6, scope: !1274)
!1278 = !DILocation(line: 1379, column: 10, scope: !1265)
!1279 = !DILocation(line: 1379, column: 5, scope: !1265)
!1280 = !DILocation(line: 1380, column: 11, scope: !1265)
!1281 = !DILocation(line: 1380, column: 5, scope: !1265)
!1282 = !DILocation(line: 1381, column: 4, scope: !1265)
!1283 = !DILocation(line: 1382, column: 4, scope: !1175)
!1284 = !DILocation(line: 1384, column: 16, scope: !1175)
!1285 = !DILocation(line: 1384, column: 14, scope: !1175)
!1286 = !DILocation(line: 1385, column: 4, scope: !1175)
!1287 = !DILocation(line: 1387, column: 4, scope: !1175)
!1288 = !DILocation(line: 1388, column: 4, scope: !1175)
!1289 = !DILocation(line: 1391, column: 4, scope: !1175)
!1290 = !DILocation(line: 1392, column: 4, scope: !1175)
!1291 = !DILocation(line: 1394, column: 4, scope: !1175)
!1292 = !DILocation(line: 1395, column: 4, scope: !1175)
!1293 = !DILocation(line: 1403, column: 19, scope: !1175)
!1294 = !DILocation(line: 1403, column: 17, scope: !1175)
!1295 = !DILocation(line: 1404, column: 4, scope: !1175)
!1296 = !DILocation(line: 1407, column: 23, scope: !1175)
!1297 = !DILocation(line: 1407, column: 21, scope: !1175)
!1298 = !DILocation(line: 1408, column: 4, scope: !1175)
!1299 = !DILocation(line: 1410, column: 4, scope: !1175)
!1300 = !DILocation(line: 1411, column: 4, scope: !1175)
!1301 = !DILocation(line: 1415, column: 19, scope: !1175)
!1302 = !DILocation(line: 1415, column: 17, scope: !1175)
!1303 = !DILocation(line: 1416, column: 4, scope: !1175)
!1304 = !DILocation(line: 1432, column: 26, scope: !1175)
!1305 = !DILocation(line: 1433, column: 8, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1433, column: 8)
!1307 = !DILocation(line: 1433, column: 15, scope: !1306)
!1308 = !DILocation(line: 1433, column: 18, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1306, file: !130, discriminator: 1)
!1310 = !DILocation(line: 1433, column: 8, scope: !1309)
!1311 = !DILocation(line: 1434, column: 25, scope: !1306)
!1312 = !DILocation(line: 1434, column: 23, scope: !1306)
!1313 = !DILocation(line: 1434, column: 5, scope: !1306)
!1314 = !DILocation(line: 1433, column: 26, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1306, file: !130, discriminator: 2)
!1316 = !DILocation(line: 1437, column: 21, scope: !1175)
!1317 = !DILocation(line: 1438, column: 4, scope: !1175)
!1318 = !DILocation(line: 1446, column: 40, scope: !1175)
!1319 = !DILocation(line: 1446, column: 33, scope: !1175)
!1320 = !DILocation(line: 1446, column: 48, scope: !1175)
!1321 = !DILocation(line: 1446, column: 26, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1175, file: !130, discriminator: 1)
!1323 = !DILocation(line: 1446, column: 23, scope: !1175)
!1324 = !DILocation(line: 1447, column: 11, scope: !1175)
!1325 = !DILocation(line: 1447, column: 31, scope: !1175)
!1326 = !DILocation(line: 1447, column: 4, scope: !1175)
!1327 = !DILocation(line: 1448, column: 4, scope: !1175)
!1328 = !DILocation(line: 1451, column: 10, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !130, line: 1451, column: 10)
!1330 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1451, column: 4)
!1331 = !DILocation(line: 1451, column: 10, scope: !1330)
!1332 = !DILocation(line: 1451, column: 29, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !130, discriminator: 1)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !130, line: 1451, column: 21)
!1335 = !DILocation(line: 1451, column: 24, scope: !1333)
!1336 = !DILocation(line: 1451, column: 53, scope: !1333)
!1337 = !DILocation(line: 1451, column: 5, scope: !1333)
!1338 = !DILocation(line: 1452, column: 31, scope: !1175)
!1339 = !DILocation(line: 1452, column: 24, scope: !1175)
!1340 = !DILocation(line: 1452, column: 39, scope: !1175)
!1341 = !DILocation(line: 1452, column: 17, scope: !1322)
!1342 = !DILocation(line: 1452, column: 14, scope: !1175)
!1343 = !DILocation(line: 1453, column: 11, scope: !1175)
!1344 = !DILocation(line: 1453, column: 22, scope: !1175)
!1345 = !DILocation(line: 1453, column: 4, scope: !1175)
!1346 = !DILocation(line: 1454, column: 4, scope: !1175)
!1347 = !DILocation(line: 1456, column: 24, scope: !1175)
!1348 = !DILocation(line: 1456, column: 13, scope: !1175)
!1349 = !DILocation(line: 1456, column: 11, scope: !1175)
!1350 = !DILocation(line: 1457, column: 8, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1457, column: 8)
!1352 = !DILocation(line: 1457, column: 15, scope: !1351)
!1353 = !DILocation(line: 1457, column: 8, scope: !1175)
!1354 = !DILocation(line: 1458, column: 12, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !130, line: 1457, column: 22)
!1356 = !DILocation(line: 1458, column: 44, scope: !1355)
!1357 = !DILocation(line: 1458, column: 5, scope: !1355)
!1358 = !DILocation(line: 1459, column: 5, scope: !1355)
!1359 = !DILocation(line: 1462, column: 19, scope: !1175)
!1360 = !DILocation(line: 1462, column: 4, scope: !1175)
!1361 = !DILocation(line: 1463, column: 4, scope: !1175)
!1362 = !DILocation(line: 1466, column: 4, scope: !1175)
!1363 = !DILocation(line: 1468, column: 4, scope: !1175)
!1364 = !DILocation(line: 1471, column: 4, scope: !1175)
!1365 = !DILocation(line: 1476, column: 4, scope: !1175)
!1366 = !DILocation(line: 1500, column: 8, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1500, column: 8)
!1368 = !DILocation(line: 1500, column: 15, scope: !1367)
!1369 = !DILocation(line: 1500, column: 23, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1367, file: !130, discriminator: 1)
!1371 = !DILocation(line: 1500, column: 18, scope: !1370)
!1372 = !DILocation(line: 1500, column: 34, scope: !1370)
!1373 = !DILocation(line: 1500, column: 8, scope: !1370)
!1374 = !DILocation(line: 1501, column: 12, scope: !1367)
!1375 = !DILocation(line: 1501, column: 44, scope: !1367)
!1376 = !DILocation(line: 1501, column: 5, scope: !1367)
!1377 = !DILocation(line: 1503, column: 12, scope: !1367)
!1378 = !DILocation(line: 1503, column: 48, scope: !1367)
!1379 = !DILocation(line: 1503, column: 43, scope: !1367)
!1380 = !DILocation(line: 1503, column: 5, scope: !1367)
!1381 = !DILocation(line: 1504, column: 15, scope: !1175)
!1382 = !DILocation(line: 1505, column: 4, scope: !1175)
!1383 = !DILocation(line: 1507, column: 8, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1175, file: !130, line: 1507, column: 8)
!1385 = !DILocation(line: 1507, column: 15, scope: !1384)
!1386 = !DILocation(line: 1507, column: 23, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1384, file: !130, discriminator: 1)
!1388 = !DILocation(line: 1507, column: 18, scope: !1387)
!1389 = !DILocation(line: 1507, column: 34, scope: !1387)
!1390 = !DILocation(line: 1507, column: 8, scope: !1387)
!1391 = !DILocation(line: 1508, column: 12, scope: !1384)
!1392 = !DILocation(line: 1508, column: 58, scope: !1384)
!1393 = !DILocation(line: 1508, column: 5, scope: !1384)
!1394 = !DILocation(line: 1510, column: 12, scope: !1384)
!1395 = !DILocation(line: 1510, column: 72, scope: !1384)
!1396 = !DILocation(line: 1510, column: 59, scope: !1384)
!1397 = !DILocation(line: 1510, column: 83, scope: !1384)
!1398 = !DILocation(line: 1510, column: 5, scope: !1384)
!1399 = !DILocation(line: 1511, column: 15, scope: !1175)
!1400 = !DILocation(line: 1512, column: 4, scope: !1175)
!1401 = !DILocation(line: 1514, column: 4, scope: !1175)
!1402 = !DILocation(line: 1517, column: 12, scope: !1153)
!1403 = !DILocation(line: 1517, column: 10, scope: !1153)
!1404 = !DILocation(line: 1262, column: 2, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1103, file: !130, discriminator: 2)
!1406 = distinct !{!1406, !1141}
!1407 = !DILocation(line: 1520, column: 6, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1103, file: !130, line: 1520, column: 6)
!1409 = !DILocation(line: 1520, column: 15, scope: !1408)
!1410 = !DILocation(line: 1520, column: 13, scope: !1408)
!1411 = !DILocation(line: 1520, column: 6, scope: !1103)
!1412 = !DILocation(line: 1521, column: 3, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !130, line: 1520, column: 21)
!1414 = !DILocation(line: 1522, column: 3, scope: !1413)
!1415 = !DILocation(line: 1522, column: 10, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1413, file: !130, discriminator: 1)
!1417 = !DILocation(line: 1522, column: 19, scope: !1416)
!1418 = !DILocation(line: 1522, column: 17, scope: !1416)
!1419 = !DILocation(line: 1522, column: 3, scope: !1416)
!1420 = !DILocation(line: 1523, column: 29, scope: !1413)
!1421 = !DILocation(line: 1523, column: 18, scope: !1413)
!1422 = !DILocation(line: 1523, column: 4, scope: !1413)
!1423 = !DILocation(line: 1522, column: 3, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1413, file: !130, discriminator: 2)
!1425 = distinct !{!1425, !1414}
!1426 = !DILocation(line: 1524, column: 3, scope: !1413)
!1427 = !DILocation(line: 1525, column: 2, scope: !1413)
!1428 = !DILocation(line: 1527, column: 6, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1103, file: !130, line: 1527, column: 6)
!1430 = !DILocation(line: 1527, column: 6, scope: !1103)
!1431 = !DILocation(line: 1528, column: 3, scope: !1429)
!1432 = !DILocation(line: 1530, column: 9, scope: !1103)
!1433 = !DILocation(line: 1530, column: 2, scope: !1103)
!1434 = distinct !DISubprogram(name: "core_dump_init", scope: !130, file: !130, line: 870, type: !306, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1435 = !DILocalVariable(name: "orig_rlim", scope: !1434, file: !130, line: 872, type: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !66, line: 139, size: 128, align: 64, elements: !1437)
!1437 = !{!1438, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1436, file: !66, line: 142, baseType: !1439, size: 64, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !66, line: 131, baseType: !119)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1436, file: !66, line: 144, baseType: !1439, size: 64, align: 64, offset: 64)
!1441 = !DILocation(line: 872, column: 16, scope: !1434)
!1442 = !DILocalVariable(name: "rlim", scope: !1434, file: !130, line: 872, type: !1436)
!1443 = !DILocation(line: 872, column: 27, scope: !1434)
!1444 = !DILocation(line: 874, column: 6, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1434, file: !130, line: 874, column: 6)
!1446 = !DILocation(line: 874, column: 6, scope: !1434)
!1447 = !DILocation(line: 878, column: 28, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !130, line: 874, column: 29)
!1449 = !DILocation(line: 878, column: 3, scope: !1448)
!1450 = !DILocation(line: 879, column: 2, scope: !1448)
!1451 = !DILocation(line: 881, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1434, file: !130, line: 881, column: 6)
!1453 = !DILocation(line: 881, column: 6, scope: !1434)
!1454 = !DILocation(line: 882, column: 8, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !130, line: 881, column: 24)
!1456 = !DILocation(line: 882, column: 17, scope: !1455)
!1457 = !DILocation(line: 883, column: 8, scope: !1455)
!1458 = !DILocation(line: 883, column: 17, scope: !1455)
!1459 = !DILocation(line: 885, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !130, line: 885, column: 7)
!1461 = !DILocation(line: 885, column: 41, scope: !1460)
!1462 = !DILocation(line: 885, column: 7, scope: !1455)
!1463 = !DILocation(line: 886, column: 4, scope: !1460)
!1464 = !DILocation(line: 887, column: 12, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !130, line: 887, column: 12)
!1466 = !DILocation(line: 887, column: 41, scope: !1465)
!1467 = !DILocation(line: 887, column: 12, scope: !1460)
!1468 = !DILocation(line: 888, column: 4, scope: !1465)
!1469 = !DILocation(line: 890, column: 4, scope: !1465)
!1470 = !DILocation(line: 891, column: 2, scope: !1455)
!1471 = !DILocation(line: 892, column: 1, scope: !1434)
!1472 = distinct !DISubprogram(name: "config_test_exit", scope: !130, file: !130, line: 497, type: !306, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1473 = !DILocalVariable(name: "config_err", scope: !1472, file: !130, line: 499, type: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_err_t", file: !88, line: 64, baseType: !87)
!1475 = !DILocation(line: 499, column: 15, scope: !1472)
!1476 = !DILocation(line: 499, column: 28, scope: !1472)
!1477 = !DILocation(line: 501, column: 10, scope: !1472)
!1478 = !DILocation(line: 501, column: 2, scope: !1472)
!1479 = !DILocation(line: 503, column: 3, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1472, file: !130, line: 501, column: 22)
!1481 = !DILocation(line: 507, column: 3, scope: !1480)
!1482 = !DILocation(line: 509, column: 3, scope: !1480)
!1483 = !DILocation(line: 511, column: 3, scope: !1480)
!1484 = !DILocation(line: 513, column: 1, scope: !1472)
!1485 = distinct !DISubprogram(name: "read_config_file", scope: !130, file: !130, line: 398, type: !306, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1486 = !DILocation(line: 400, column: 12, scope: !1485)
!1487 = !DILocation(line: 400, column: 2, scope: !1485)
!1488 = !DILocation(line: 401, column: 1, scope: !1485)
!1489 = distinct !DISubprogram(name: "make_pidfile_name", scope: !130, file: !130, line: 280, type: !1490, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!135, !131, !131, !131}
!1492 = !DILocalVariable(name: "start", arg: 1, scope: !1489, file: !130, line: 280, type: !131)
!1493 = !DILocation(line: 280, column: 31, scope: !1489)
!1494 = !DILocalVariable(name: "instance", arg: 2, scope: !1489, file: !130, line: 280, type: !131)
!1495 = !DILocation(line: 280, column: 50, scope: !1489)
!1496 = !DILocalVariable(name: "extn", arg: 3, scope: !1489, file: !130, line: 280, type: !131)
!1497 = !DILocation(line: 280, column: 72, scope: !1489)
!1498 = !DILocalVariable(name: "len", scope: !1489, file: !130, line: 282, type: !116)
!1499 = !DILocation(line: 282, column: 9, scope: !1489)
!1500 = !DILocalVariable(name: "name", scope: !1489, file: !130, line: 283, type: !135)
!1501 = !DILocation(line: 283, column: 8, scope: !1489)
!1502 = !DILocation(line: 285, column: 15, scope: !1489)
!1503 = !DILocation(line: 285, column: 8, scope: !1489)
!1504 = !DILocation(line: 285, column: 22, scope: !1489)
!1505 = !DILocation(line: 285, column: 6, scope: !1489)
!1506 = !DILocation(line: 286, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1489, file: !130, line: 286, column: 6)
!1508 = !DILocation(line: 286, column: 6, scope: !1489)
!1509 = !DILocation(line: 287, column: 17, scope: !1507)
!1510 = !DILocation(line: 287, column: 10, scope: !1507)
!1511 = !DILocation(line: 287, column: 27, scope: !1507)
!1512 = !DILocation(line: 287, column: 7, scope: !1507)
!1513 = !DILocation(line: 287, column: 3, scope: !1507)
!1514 = !DILocation(line: 288, column: 6, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1489, file: !130, line: 288, column: 6)
!1516 = !DILocation(line: 288, column: 6, scope: !1489)
!1517 = !DILocation(line: 289, column: 17, scope: !1515)
!1518 = !DILocation(line: 289, column: 10, scope: !1515)
!1519 = !DILocation(line: 289, column: 7, scope: !1515)
!1520 = !DILocation(line: 289, column: 3, scope: !1515)
!1521 = !DILocation(line: 291, column: 17, scope: !1489)
!1522 = !DILocation(line: 291, column: 10, scope: !1489)
!1523 = !DILocation(line: 291, column: 7, scope: !1489)
!1524 = !DILocation(line: 292, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1489, file: !130, line: 292, column: 6)
!1526 = !DILocation(line: 292, column: 6, scope: !1489)
!1527 = !DILocation(line: 293, column: 62, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !130, line: 292, column: 13)
!1529 = !DILocation(line: 293, column: 3, scope: !1528)
!1530 = !DILocation(line: 294, column: 3, scope: !1528)
!1531 = !DILocation(line: 297, column: 9, scope: !1489)
!1532 = !DILocation(line: 297, column: 15, scope: !1489)
!1533 = !DILocation(line: 297, column: 2, scope: !1489)
!1534 = !DILocation(line: 298, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1489, file: !130, line: 298, column: 6)
!1536 = !DILocation(line: 298, column: 6, scope: !1489)
!1537 = !DILocation(line: 299, column: 10, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !130, line: 298, column: 16)
!1539 = !DILocation(line: 299, column: 3, scope: !1538)
!1540 = !DILocation(line: 300, column: 10, scope: !1538)
!1541 = !DILocation(line: 300, column: 16, scope: !1538)
!1542 = !DILocation(line: 300, column: 3, scope: !1538)
!1543 = !DILocation(line: 301, column: 2, scope: !1538)
!1544 = !DILocation(line: 302, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1489, file: !130, line: 302, column: 6)
!1546 = !DILocation(line: 302, column: 6, scope: !1489)
!1547 = !DILocation(line: 303, column: 10, scope: !1545)
!1548 = !DILocation(line: 303, column: 16, scope: !1545)
!1549 = !DILocation(line: 303, column: 3, scope: !1545)
!1550 = !DILocation(line: 305, column: 9, scope: !1489)
!1551 = !DILocation(line: 305, column: 2, scope: !1489)
!1552 = !DILocation(line: 306, column: 1, scope: !1489)
!1553 = distinct !DISubprogram(name: "validate_config", scope: !130, file: !130, line: 467, type: !306, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1554 = !DILocation(line: 470, column: 2, scope: !1553)
!1555 = !DILocation(line: 476, column: 12, scope: !1553)
!1556 = !DILocation(line: 478, column: 2, scope: !1553)
!1557 = !DILocation(line: 483, column: 12, scope: !1553)
!1558 = !DILocation(line: 485, column: 2, scope: !1553)
!1559 = !DILocation(line: 494, column: 1, scope: !1553)
!1560 = distinct !DISubprogram(name: "signal_init", scope: !130, file: !130, line: 809, type: !306, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1561 = !DILocation(line: 812, column: 2, scope: !1560)
!1562 = !DILocation(line: 813, column: 2, scope: !1560)
!1563 = !DILocation(line: 814, column: 2, scope: !1560)
!1564 = !DILocation(line: 818, column: 2, scope: !1560)
!1565 = !DILocation(line: 819, column: 2, scope: !1560)
!1566 = !DILocation(line: 821, column: 2, scope: !1560)
!1567 = !DILocation(line: 822, column: 1, scope: !1560)
!1568 = distinct !DISubprogram(name: "start_keepalived", scope: !130, file: !130, line: 432, type: !1569, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!114}
!1571 = !DILocalVariable(name: "have_child", scope: !1568, file: !130, line: 434, type: !216)
!1572 = !DILocation(line: 434, column: 6, scope: !1568)
!1573 = !DILocation(line: 443, column: 6, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !130, line: 443, column: 6)
!1575 = !DILocation(line: 443, column: 6, scope: !1568)
!1576 = !DILocation(line: 444, column: 3, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !130, line: 443, column: 25)
!1578 = !DILocation(line: 445, column: 14, scope: !1577)
!1579 = !DILocation(line: 446, column: 2, scope: !1577)
!1580 = !DILocation(line: 450, column: 6, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1568, file: !130, line: 450, column: 6)
!1582 = !DILocation(line: 450, column: 6, scope: !1568)
!1583 = !DILocation(line: 451, column: 3, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !130, line: 450, column: 22)
!1585 = !DILocation(line: 452, column: 14, scope: !1584)
!1586 = !DILocation(line: 453, column: 2, scope: !1584)
!1587 = !DILocation(line: 463, column: 9, scope: !1568)
!1588 = !DILocation(line: 463, column: 2, scope: !1568)
!1589 = distinct !DISubprogram(name: "update_core_dump_pattern", scope: !130, file: !130, line: 831, type: !1590, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !131}
!1592 = !DILocalVariable(name: "pattern_str", arg: 1, scope: !1589, file: !130, line: 831, type: !131)
!1593 = !DILocation(line: 831, column: 38, scope: !1589)
!1594 = !DILocalVariable(name: "fd", scope: !1589, file: !130, line: 833, type: !114)
!1595 = !DILocation(line: 833, column: 6, scope: !1589)
!1596 = !DILocalVariable(name: "initialising", scope: !1589, file: !130, line: 834, type: !216)
!1597 = !DILocation(line: 834, column: 6, scope: !1589)
!1598 = !DILocation(line: 834, column: 22, scope: !1589)
!1599 = !DILocation(line: 834, column: 45, scope: !1589)
!1600 = !DILocation(line: 842, column: 6, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1589, file: !130, line: 842, column: 6)
!1602 = !DILocation(line: 842, column: 6, scope: !1589)
!1603 = !DILocation(line: 843, column: 29, scope: !1601)
!1604 = !DILocation(line: 843, column: 26, scope: !1601)
!1605 = !DILocation(line: 843, column: 3, scope: !1601)
!1606 = !DILocation(line: 845, column: 7, scope: !1589)
!1607 = !DILocation(line: 845, column: 5, scope: !1589)
!1608 = !DILocation(line: 847, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1589, file: !130, line: 847, column: 6)
!1610 = !DILocation(line: 847, column: 9, scope: !1609)
!1611 = !DILocation(line: 847, column: 15, scope: !1609)
!1612 = !DILocation(line: 848, column: 8, scope: !1609)
!1613 = !DILocation(line: 848, column: 21, scope: !1609)
!1614 = !DILocation(line: 848, column: 29, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1609, file: !130, discriminator: 1)
!1616 = !DILocation(line: 848, column: 33, scope: !1615)
!1617 = !DILocation(line: 848, column: 24, scope: !1615)
!1618 = !DILocation(line: 848, column: 66, scope: !1615)
!1619 = !DILocation(line: 848, column: 73, scope: !1615)
!1620 = !DILocation(line: 849, column: 12, scope: !1609)
!1621 = !DILocation(line: 849, column: 16, scope: !1609)
!1622 = !DILocation(line: 849, column: 36, scope: !1609)
!1623 = !DILocation(line: 849, column: 29, scope: !1609)
!1624 = !DILocation(line: 849, column: 6, scope: !1615)
!1625 = !DILocation(line: 849, column: 50, scope: !1609)
!1626 = !DILocation(line: 847, column: 6, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1589, file: !130, discriminator: 1)
!1628 = !DILocation(line: 850, column: 3, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1609, file: !130, line: 849, column: 57)
!1630 = !DILocation(line: 852, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1629, file: !130, line: 852, column: 7)
!1632 = !DILocation(line: 852, column: 10, scope: !1631)
!1633 = !DILocation(line: 852, column: 7, scope: !1629)
!1634 = !DILocation(line: 853, column: 10, scope: !1631)
!1635 = !DILocation(line: 853, column: 4, scope: !1631)
!1636 = !DILocation(line: 855, column: 9, scope: !1629)
!1637 = !DILocation(line: 855, column: 4, scope: !1629)
!1638 = !DILocation(line: 855, column: 59, scope: !1629)
!1639 = !DILocation(line: 856, column: 26, scope: !1629)
!1640 = !DILocation(line: 858, column: 3, scope: !1629)
!1641 = !DILocation(line: 861, column: 8, scope: !1589)
!1642 = !DILocation(line: 861, column: 2, scope: !1589)
!1643 = !DILocation(line: 863, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1589, file: !130, line: 863, column: 6)
!1645 = !DILocation(line: 863, column: 6, scope: !1589)
!1646 = !DILocation(line: 864, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !130, line: 863, column: 21)
!1648 = !DILocation(line: 864, column: 4, scope: !1647)
!1649 = !DILocation(line: 864, column: 59, scope: !1647)
!1650 = !DILocation(line: 865, column: 26, scope: !1647)
!1651 = !DILocation(line: 866, column: 2, scope: !1647)
!1652 = !DILocation(line: 867, column: 1, scope: !1589)
!1653 = distinct !DISubprogram(name: "usage", scope: !130, file: !130, line: 1085, type: !1590, isLocal: true, isDefinition: true, scopeLine: 1086, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1654 = !DILocalVariable(name: "prog", arg: 1, scope: !1653, file: !130, line: 1085, type: !131)
!1655 = !DILocation(line: 1085, column: 19, scope: !1653)
!1656 = !DILocation(line: 1087, column: 9, scope: !1653)
!1657 = !DILocation(line: 1087, column: 44, scope: !1653)
!1658 = !DILocation(line: 1087, column: 2, scope: !1653)
!1659 = !DILocation(line: 1088, column: 9, scope: !1653)
!1660 = !DILocation(line: 1088, column: 2, scope: !1653)
!1661 = !DILocation(line: 1090, column: 9, scope: !1653)
!1662 = !DILocation(line: 1090, column: 2, scope: !1653)
!1663 = !DILocation(line: 1091, column: 9, scope: !1653)
!1664 = !DILocation(line: 1091, column: 2, scope: !1653)
!1665 = !DILocation(line: 1096, column: 9, scope: !1653)
!1666 = !DILocation(line: 1096, column: 2, scope: !1653)
!1667 = !DILocation(line: 1097, column: 9, scope: !1653)
!1668 = !DILocation(line: 1097, column: 2, scope: !1653)
!1669 = !DILocation(line: 1098, column: 9, scope: !1653)
!1670 = !DILocation(line: 1098, column: 2, scope: !1653)
!1671 = !DILocation(line: 1099, column: 9, scope: !1653)
!1672 = !DILocation(line: 1099, column: 2, scope: !1653)
!1673 = !DILocation(line: 1100, column: 9, scope: !1653)
!1674 = !DILocation(line: 1100, column: 2, scope: !1653)
!1675 = !DILocation(line: 1101, column: 9, scope: !1653)
!1676 = !DILocation(line: 1101, column: 2, scope: !1653)
!1677 = !DILocation(line: 1102, column: 9, scope: !1653)
!1678 = !DILocation(line: 1102, column: 2, scope: !1653)
!1679 = !DILocation(line: 1104, column: 9, scope: !1653)
!1680 = !DILocation(line: 1104, column: 2, scope: !1653)
!1681 = !DILocation(line: 1105, column: 9, scope: !1653)
!1682 = !DILocation(line: 1105, column: 2, scope: !1653)
!1683 = !DILocation(line: 1108, column: 9, scope: !1653)
!1684 = !DILocation(line: 1108, column: 2, scope: !1653)
!1685 = !DILocation(line: 1110, column: 9, scope: !1653)
!1686 = !DILocation(line: 1110, column: 2, scope: !1653)
!1687 = !DILocation(line: 1111, column: 9, scope: !1653)
!1688 = !DILocation(line: 1111, column: 2, scope: !1653)
!1689 = !DILocation(line: 1112, column: 9, scope: !1653)
!1690 = !DILocation(line: 1112, column: 2, scope: !1653)
!1691 = !DILocation(line: 1113, column: 9, scope: !1653)
!1692 = !DILocation(line: 1113, column: 2, scope: !1653)
!1693 = !DILocation(line: 1115, column: 9, scope: !1653)
!1694 = !DILocation(line: 1115, column: 2, scope: !1653)
!1695 = !DILocation(line: 1118, column: 9, scope: !1653)
!1696 = !DILocation(line: 1118, column: 2, scope: !1653)
!1697 = !DILocation(line: 1119, column: 9, scope: !1653)
!1698 = !DILocation(line: 1119, column: 2, scope: !1653)
!1699 = !DILocation(line: 1129, column: 9, scope: !1653)
!1700 = !DILocation(line: 1129, column: 2, scope: !1653)
!1701 = !DILocation(line: 1131, column: 9, scope: !1653)
!1702 = !DILocation(line: 1131, column: 2, scope: !1653)
!1703 = !DILocation(line: 1132, column: 9, scope: !1653)
!1704 = !DILocation(line: 1132, column: 2, scope: !1653)
!1705 = !DILocation(line: 1136, column: 9, scope: !1653)
!1706 = !DILocation(line: 1136, column: 2, scope: !1653)
!1707 = !DILocation(line: 1139, column: 9, scope: !1653)
!1708 = !DILocation(line: 1139, column: 2, scope: !1653)
!1709 = !DILocation(line: 1144, column: 9, scope: !1653)
!1710 = !DILocation(line: 1144, column: 2, scope: !1653)
!1711 = !DILocation(line: 1177, column: 9, scope: !1653)
!1712 = !DILocation(line: 1177, column: 2, scope: !1653)
!1713 = !DILocation(line: 1178, column: 9, scope: !1653)
!1714 = !DILocation(line: 1178, column: 2, scope: !1653)
!1715 = !DILocation(line: 1179, column: 1, scope: !1653)
!1716 = distinct !DISubprogram(name: "__clear_bit", scope: !31, file: !31, line: 42, type: !1086, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1717 = !DILocalVariable(name: "idx", arg: 1, scope: !1716, file: !31, line: 42, type: !113)
!1718 = !DILocation(line: 42, column: 41, scope: !1716)
!1719 = !DILocalVariable(name: "bmap", arg: 2, scope: !1716, file: !31, line: 42, type: !1088)
!1720 = !DILocation(line: 42, column: 61, scope: !1716)
!1721 = !DILocation(line: 44, column: 60, scope: !1716)
!1722 = !DILocation(line: 44, column: 59, scope: !1716)
!1723 = !DILocation(line: 44, column: 65, scope: !1716)
!1724 = !DILocation(line: 44, column: 55, scope: !1716)
!1725 = !DILocation(line: 44, column: 49, scope: !1716)
!1726 = !DILocation(line: 44, column: 9, scope: !1716)
!1727 = !DILocation(line: 44, column: 8, scope: !1716)
!1728 = !DILocation(line: 44, column: 14, scope: !1716)
!1729 = !DILocation(line: 44, column: 2, scope: !1716)
!1730 = !DILocation(line: 44, column: 46, scope: !1716)
!1731 = !DILocation(line: 45, column: 1, scope: !1716)
!1732 = distinct !DISubprogram(name: "global_init_keywords", scope: !130, file: !130, line: 379, type: !1733, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !1737, line: 34, baseType: !1738)
!1737 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !1737, line: 30, size: 128, align: 64, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1738, file: !1737, line: 31, baseType: !113, size: 32, align: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1738, file: !1737, line: 32, baseType: !113, size: 32, align: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1738, file: !1737, line: 33, baseType: !1743, size: 64, align: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!1744 = !DILocation(line: 382, column: 2, scope: !1732)
!1745 = !DILocation(line: 385, column: 2, scope: !1732)
!1746 = !DILocation(line: 388, column: 2, scope: !1732)
!1747 = !DILocation(line: 394, column: 9, scope: !1732)
!1748 = !DILocation(line: 394, column: 2, scope: !1732)
!1749 = distinct !DISubprogram(name: "propogate_signal", scope: !130, file: !130, line: 564, type: !1750, isLocal: true, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !121, !114}
!1752 = !DILocalVariable(name: "v", arg: 1, scope: !1749, file: !130, line: 564, type: !121)
!1753 = !DILocation(line: 564, column: 48, scope: !1749)
!1754 = !DILocalVariable(name: "sig", arg: 2, scope: !1749, file: !130, line: 564, type: !114)
!1755 = !DILocation(line: 564, column: 55, scope: !1749)
!1756 = !DILocation(line: 566, column: 6, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1749, file: !130, line: 566, column: 6)
!1758 = !DILocation(line: 566, column: 10, scope: !1757)
!1759 = !DILocation(line: 566, column: 6, scope: !1749)
!1760 = !DILocation(line: 567, column: 8, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !130, line: 567, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !130, line: 566, column: 20)
!1763 = !DILocation(line: 567, column: 7, scope: !1762)
!1764 = !DILocation(line: 568, column: 4, scope: !1761)
!1765 = !DILocation(line: 569, column: 2, scope: !1762)
!1766 = !DILocation(line: 573, column: 6, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1749, file: !130, line: 573, column: 6)
!1768 = !DILocation(line: 573, column: 17, scope: !1767)
!1769 = !DILocation(line: 573, column: 6, scope: !1749)
!1770 = !DILocation(line: 574, column: 8, scope: !1767)
!1771 = !DILocation(line: 574, column: 20, scope: !1767)
!1772 = !DILocation(line: 574, column: 3, scope: !1767)
!1773 = !DILocation(line: 575, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1767, file: !130, line: 575, column: 11)
!1775 = !DILocation(line: 575, column: 15, scope: !1774)
!1776 = !DILocation(line: 575, column: 24, scope: !1774)
!1777 = !DILocation(line: 575, column: 27, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1774, file: !130, discriminator: 1)
!1779 = !DILocation(line: 575, column: 11, scope: !1778)
!1780 = !DILocation(line: 576, column: 3, scope: !1774)
!1781 = !DILocation(line: 579, column: 6, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1749, file: !130, line: 579, column: 6)
!1783 = !DILocation(line: 579, column: 10, scope: !1782)
!1784 = !DILocation(line: 579, column: 6, scope: !1749)
!1785 = !DILocation(line: 580, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !130, line: 580, column: 7)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !130, line: 579, column: 20)
!1788 = !DILocation(line: 580, column: 22, scope: !1786)
!1789 = !DILocation(line: 580, column: 7, scope: !1787)
!1790 = !DILocation(line: 581, column: 9, scope: !1786)
!1791 = !DILocation(line: 581, column: 25, scope: !1786)
!1792 = !DILocation(line: 581, column: 4, scope: !1786)
!1793 = !DILocation(line: 582, column: 12, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1786, file: !130, line: 582, column: 12)
!1795 = !DILocation(line: 582, column: 12, scope: !1786)
!1796 = !DILocation(line: 583, column: 4, scope: !1794)
!1797 = !DILocation(line: 584, column: 2, scope: !1787)
!1798 = !DILocation(line: 594, column: 1, scope: !1749)
!1799 = distinct !DISubprogram(name: "sigend", scope: !130, file: !130, line: 598, type: !1750, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!1800 = !DILocalVariable(name: "v", arg: 1, scope: !1799, file: !130, line: 598, type: !121)
!1801 = !DILocation(line: 598, column: 38, scope: !1799)
!1802 = !DILocalVariable(name: "sig", arg: 2, scope: !1799, file: !130, line: 598, type: !114)
!1803 = !DILocation(line: 598, column: 69, scope: !1799)
!1804 = !DILocalVariable(name: "status", scope: !1799, file: !130, line: 600, type: !114)
!1805 = !DILocation(line: 600, column: 6, scope: !1799)
!1806 = !DILocalVariable(name: "ret", scope: !1799, file: !130, line: 601, type: !114)
!1807 = !DILocation(line: 601, column: 6, scope: !1799)
!1808 = !DILocalVariable(name: "wait_count", scope: !1799, file: !130, line: 602, type: !114)
!1809 = !DILocation(line: 602, column: 6, scope: !1799)
!1810 = !DILocalVariable(name: "start_time", scope: !1799, file: !130, line: 603, type: !1032)
!1811 = !DILocation(line: 603, column: 17, scope: !1799)
!1812 = !DILocalVariable(name: "now", scope: !1799, file: !130, line: 603, type: !1032)
!1813 = !DILocation(line: 603, column: 29, scope: !1799)
!1814 = !DILocalVariable(name: "timeout", scope: !1799, file: !130, line: 605, type: !1032)
!1815 = !DILocation(line: 605, column: 17, scope: !1799)
!1816 = !DILocation(line: 605, column: 27, scope: !1799)
!1817 = !DILocation(line: 606, column: 13, scope: !1799)
!1818 = !DILocalVariable(name: "signal_fd", scope: !1799, file: !130, line: 609, type: !114)
!1819 = !DILocation(line: 609, column: 6, scope: !1799)
!1820 = !DILocation(line: 609, column: 18, scope: !1799)
!1821 = !DILocalVariable(name: "read_set", scope: !1799, file: !130, line: 610, type: !1822)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !123, line: 75, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 64, size: 1024, align: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !1823, file: !123, line: 69, baseType: !1826, size: 1024, align: 64)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, align: 64, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 16)
!1829 = !DILocation(line: 610, column: 9, scope: !1799)
!1830 = !DILocalVariable(name: "siginfo", scope: !1799, file: !130, line: 611, type: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signalfd_siginfo", file: !1832, line: 28, size: 1024, align: 64, elements: !1833)
!1832 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/signalfd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1833 = !{!1834, !1837, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1851, !1852, !1853, !1854}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_signo", scope: !1831, file: !1832, line: 30, baseType: !1835, size: 32, align: 32)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1836, line: 51, baseType: !113)
!1836 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_errno", scope: !1831, file: !1832, line: 31, baseType: !1838, size: 32, align: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !126, line: 196, baseType: !114)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_code", scope: !1831, file: !1832, line: 32, baseType: !1838, size: 32, align: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_pid", scope: !1831, file: !1832, line: 33, baseType: !1835, size: 32, align: 32, offset: 96)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_uid", scope: !1831, file: !1832, line: 34, baseType: !1835, size: 32, align: 32, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_fd", scope: !1831, file: !1832, line: 35, baseType: !1838, size: 32, align: 32, offset: 160)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_tid", scope: !1831, file: !1832, line: 36, baseType: !1835, size: 32, align: 32, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_band", scope: !1831, file: !1832, line: 37, baseType: !1835, size: 32, align: 32, offset: 224)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_overrun", scope: !1831, file: !1832, line: 38, baseType: !1835, size: 32, align: 32, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_trapno", scope: !1831, file: !1832, line: 39, baseType: !1835, size: 32, align: 32, offset: 288)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_status", scope: !1831, file: !1832, line: 40, baseType: !1838, size: 32, align: 32, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_int", scope: !1831, file: !1832, line: 41, baseType: !1838, size: 32, align: 32, offset: 352)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_ptr", scope: !1831, file: !1832, line: 42, baseType: !1850, size: 64, align: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1836, line: 55, baseType: !118)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_utime", scope: !1831, file: !1832, line: 43, baseType: !1850, size: 64, align: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_stime", scope: !1831, file: !1832, line: 44, baseType: !1850, size: 64, align: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_addr", scope: !1831, file: !1832, line: 45, baseType: !1850, size: 64, align: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !1831, file: !1832, line: 46, baseType: !1855, size: 384, align: 8, offset: 640)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1856, size: 384, align: 8, elements: !1858)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1836, line: 48, baseType: !1857)
!1857 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!1858 = !{!1859}
!1859 = !DISubrange(count: 48)
!1860 = !DILocation(line: 611, column: 26, scope: !1799)
!1861 = !DILocalVariable(name: "sigmask", scope: !1799, file: !130, line: 612, type: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !123, line: 37, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1864, line: 30, baseType: !1865)
!1864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1864, line: 27, size: 1024, align: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1865, file: !1864, line: 29, baseType: !1868, size: 1024, align: 64)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, align: 64, elements: !1827)
!1869 = !DILocation(line: 612, column: 11, scope: !1799)
!1870 = !DILocation(line: 622, column: 29, scope: !1799)
!1871 = !DILocation(line: 622, column: 2, scope: !1799)
!1872 = !DILocation(line: 624, column: 2, scope: !1799)
!1873 = !DILocation(line: 628, column: 2, scope: !1799)
!1874 = !DILocation(line: 629, column: 2, scope: !1799)
!1875 = !DILocation(line: 630, column: 11, scope: !1799)
!1876 = !DILocation(line: 630, column: 2, scope: !1799)
!1877 = !DILocation(line: 631, column: 1, scope: !1799)
!1878 = distinct !{!1878, !1877}
!1879 = !DILocalVariable(name: "__d0", scope: !1880, file: !130, line: 631, type: !114)
!1880 = distinct !DILexicalBlock(scope: !1799, file: !130, line: 631, column: 4)
!1881 = !DILocation(line: 631, column: 10, scope: !1880)
!1882 = !DILocalVariable(name: "__d1", scope: !1880, file: !130, line: 631, type: !114)
!1883 = !DILocation(line: 631, column: 16, scope: !1880)
!1884 = !DILocation(line: 631, column: 4, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1880, file: !130, discriminator: 1)
!1886 = !DILocation(line: 631, column: 153, scope: !1885)
!1887 = !DILocation(line: 631, column: 22, scope: !1885)
!1888 = !{i32 579922}
!1889 = !DILocation(line: 631, column: 31, scope: !1885)
!1890 = !DILocation(line: 642, column: 6, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1799, file: !130, line: 642, column: 6)
!1892 = !DILocation(line: 642, column: 17, scope: !1891)
!1893 = !DILocation(line: 642, column: 6, scope: !1799)
!1894 = !DILocation(line: 643, column: 12, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !130, line: 643, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !130, line: 642, column: 22)
!1897 = !DILocation(line: 643, column: 7, scope: !1895)
!1898 = !DILocation(line: 643, column: 7, scope: !1896)
!1899 = !DILocation(line: 645, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !130, line: 645, column: 7)
!1901 = distinct !DILexicalBlock(scope: !1895, file: !130, line: 643, column: 33)
!1902 = !DILocation(line: 645, column: 8, scope: !1900)
!1903 = !DILocation(line: 645, column: 13, scope: !1900)
!1904 = !DILocation(line: 645, column: 7, scope: !1901)
!1905 = !DILocation(line: 646, column: 16, scope: !1900)
!1906 = !DILocation(line: 646, column: 5, scope: !1900)
!1907 = !DILocation(line: 647, column: 3, scope: !1901)
!1908 = !DILocation(line: 649, column: 14, scope: !1895)
!1909 = !DILocation(line: 650, column: 2, scope: !1896)
!1910 = !DILocation(line: 653, column: 6, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1799, file: !130, line: 653, column: 6)
!1912 = !DILocation(line: 653, column: 21, scope: !1911)
!1913 = !DILocation(line: 653, column: 6, scope: !1799)
!1914 = !DILocation(line: 654, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !130, line: 654, column: 7)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !130, line: 653, column: 26)
!1917 = !DILocation(line: 654, column: 7, scope: !1915)
!1918 = !DILocation(line: 654, column: 7, scope: !1916)
!1919 = !DILocation(line: 655, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !130, line: 655, column: 7)
!1921 = distinct !DILexicalBlock(scope: !1915, file: !130, line: 654, column: 37)
!1922 = !DILocation(line: 655, column: 8, scope: !1920)
!1923 = !DILocation(line: 655, column: 13, scope: !1920)
!1924 = !DILocation(line: 655, column: 7, scope: !1921)
!1925 = !DILocation(line: 656, column: 20, scope: !1920)
!1926 = !DILocation(line: 656, column: 5, scope: !1920)
!1927 = !DILocation(line: 657, column: 3, scope: !1921)
!1928 = !DILocation(line: 659, column: 14, scope: !1915)
!1929 = !DILocation(line: 660, column: 2, scope: !1916)
!1930 = !DILocation(line: 673, column: 2, scope: !1799)
!1931 = !DILocation(line: 674, column: 2, scope: !1799)
!1932 = !DILocation(line: 674, column: 9, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1799, file: !130, discriminator: 1)
!1934 = !DILocation(line: 674, column: 2, scope: !1933)
!1935 = !DILocation(line: 676, column: 2, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1799, file: !130, line: 674, column: 21)
!1937 = !DILocation(line: 676, column: 4, scope: !1936)
!1938 = !DILocation(line: 676, column: 60, scope: !1936)
!1939 = !DILocation(line: 676, column: 11, scope: !1936)
!1940 = !DILocation(line: 676, column: 5, scope: !1936)
!1941 = !DILocation(line: 676, column: 39, scope: !1936)
!1942 = !DILocation(line: 677, column: 16, scope: !1936)
!1943 = !DILocation(line: 677, column: 26, scope: !1936)
!1944 = !DILocation(line: 677, column: 9, scope: !1936)
!1945 = !DILocation(line: 677, column: 7, scope: !1936)
!1946 = !DILocation(line: 678, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 678, column: 7)
!1948 = !DILocation(line: 678, column: 11, scope: !1947)
!1949 = !DILocation(line: 678, column: 7, scope: !1936)
!1950 = !DILocation(line: 679, column: 4, scope: !1947)
!1951 = !DILocation(line: 680, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 680, column: 7)
!1953 = !DILocation(line: 680, column: 11, scope: !1952)
!1954 = !DILocation(line: 680, column: 7, scope: !1936)
!1955 = !DILocation(line: 681, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !130, line: 681, column: 7)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !130, line: 680, column: 18)
!1958 = !DILocation(line: 681, column: 8, scope: !1956)
!1959 = !DILocation(line: 681, column: 13, scope: !1956)
!1960 = !DILocation(line: 681, column: 7, scope: !1957)
!1961 = !DILocation(line: 682, column: 5, scope: !1956)
!1962 = distinct !{!1962, !1931}
!1963 = !DILocation(line: 684, column: 67, scope: !1957)
!1964 = !DILocation(line: 684, column: 66, scope: !1957)
!1965 = !DILocation(line: 684, column: 4, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1957, file: !130, discriminator: 1)
!1967 = !DILocation(line: 685, column: 4, scope: !1957)
!1968 = !DILocation(line: 688, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 688, column: 7)
!1970 = !DILocation(line: 688, column: 9, scope: !1969)
!1971 = !DILocation(line: 688, column: 10, scope: !1969)
!1972 = !DILocation(line: 688, column: 64, scope: !1969)
!1973 = !DILocation(line: 688, column: 44, scope: !1969)
!1974 = !DILocation(line: 688, column: 46, scope: !1969)
!1975 = !DILocation(line: 688, column: 7, scope: !1936)
!1976 = !DILocation(line: 689, column: 4, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1969, file: !130, line: 688, column: 39)
!1978 = !DILocation(line: 690, column: 4, scope: !1977)
!1979 = !DILocation(line: 693, column: 12, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 693, column: 7)
!1981 = !DILocation(line: 693, column: 23, scope: !1980)
!1982 = !DILocation(line: 693, column: 7, scope: !1980)
!1983 = !DILocation(line: 693, column: 50, scope: !1980)
!1984 = !DILocation(line: 693, column: 7, scope: !1936)
!1985 = !DILocation(line: 694, column: 4, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1980, file: !130, line: 693, column: 70)
!1987 = !DILocation(line: 695, column: 4, scope: !1986)
!1988 = !DILocation(line: 698, column: 20, scope: !1936)
!1989 = !DILocation(line: 698, column: 29, scope: !1936)
!1990 = !DILocation(line: 698, column: 12, scope: !1936)
!1991 = !DILocation(line: 698, column: 52, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1936, file: !130, discriminator: 1)
!1993 = !DILocation(line: 698, column: 46, scope: !1992)
!1994 = !DILocation(line: 698, column: 12, scope: !1992)
!1995 = !DILocation(line: 699, column: 13, scope: !1936)
!1996 = !DILocation(line: 699, column: 22, scope: !1936)
!1997 = !DILocation(line: 699, column: 5, scope: !1936)
!1998 = !DILocation(line: 699, column: 45, scope: !1992)
!1999 = !DILocation(line: 699, column: 44, scope: !1992)
!2000 = !DILocation(line: 699, column: 5, scope: !1992)
!2001 = !DILocation(line: 699, column: 5, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1936, file: !130, discriminator: 2)
!2003 = !DILocation(line: 699, column: 5, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1936, file: !130, discriminator: 3)
!2005 = !DILocation(line: 698, column: 12, scope: !2002)
!2006 = !DILocation(line: 698, column: 12, scope: !2004)
!2007 = !DILocation(line: 698, column: 10, scope: !2004)
!2008 = !DILocation(line: 703, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 703, column: 7)
!2010 = !DILocation(line: 703, column: 18, scope: !2009)
!2011 = !DILocation(line: 703, column: 22, scope: !2009)
!2012 = !DILocation(line: 703, column: 25, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2009, file: !130, discriminator: 1)
!2014 = !DILocation(line: 703, column: 54, scope: !2013)
!2015 = !DILocation(line: 703, column: 36, scope: !2013)
!2016 = !DILocation(line: 703, column: 7, scope: !2013)
!2017 = !DILocation(line: 704, column: 24, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2009, file: !130, line: 703, column: 63)
!2019 = !DILocation(line: 704, column: 32, scope: !2018)
!2020 = !DILocation(line: 704, column: 4, scope: !2018)
!2021 = !DILocation(line: 705, column: 15, scope: !2018)
!2022 = !DILocation(line: 706, column: 14, scope: !2018)
!2023 = !DILocation(line: 707, column: 3, scope: !2018)
!2024 = !DILocation(line: 711, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 711, column: 7)
!2026 = !DILocation(line: 711, column: 22, scope: !2025)
!2027 = !DILocation(line: 711, column: 26, scope: !2025)
!2028 = !DILocation(line: 711, column: 29, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2025, file: !130, discriminator: 1)
!2030 = !DILocation(line: 711, column: 62, scope: !2029)
!2031 = !DILocation(line: 711, column: 44, scope: !2029)
!2032 = !DILocation(line: 711, column: 7, scope: !2029)
!2033 = !DILocation(line: 712, column: 24, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !130, line: 711, column: 71)
!2035 = !DILocation(line: 712, column: 32, scope: !2034)
!2036 = !DILocation(line: 712, column: 4, scope: !2034)
!2037 = !DILocation(line: 713, column: 19, scope: !2034)
!2038 = !DILocation(line: 714, column: 14, scope: !2034)
!2039 = !DILocation(line: 715, column: 3, scope: !2034)
!2040 = !DILocation(line: 759, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1936, file: !130, line: 759, column: 7)
!2042 = !DILocation(line: 759, column: 7, scope: !1936)
!2043 = !DILocation(line: 760, column: 4, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !130, line: 759, column: 19)
!2045 = !DILocation(line: 761, column: 21, scope: !2044)
!2046 = !DILocation(line: 761, column: 44, scope: !2044)
!2047 = !DILocation(line: 761, column: 64, scope: !2044)
!2048 = !DILocation(line: 761, column: 51, scope: !2044)
!2049 = !DILocation(line: 761, column: 37, scope: !2044)
!2050 = !DILocation(line: 761, column: 12, scope: !2044)
!2051 = !DILocation(line: 761, column: 19, scope: !2044)
!2052 = !DILocation(line: 763, column: 34, scope: !2044)
!2053 = !DILocation(line: 763, column: 48, scope: !2044)
!2054 = !DILocation(line: 763, column: 42, scope: !2044)
!2055 = !DILocation(line: 763, column: 12, scope: !2044)
!2056 = !DILocation(line: 763, column: 20, scope: !2044)
!2057 = !DILocation(line: 764, column: 16, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2044, file: !130, line: 764, column: 8)
!2059 = !DILocation(line: 764, column: 24, scope: !2058)
!2060 = !DILocation(line: 764, column: 8, scope: !2044)
!2061 = !DILocation(line: 765, column: 13, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !130, line: 764, column: 29)
!2063 = !DILocation(line: 765, column: 21, scope: !2062)
!2064 = !DILocation(line: 766, column: 13, scope: !2062)
!2065 = !DILocation(line: 766, column: 19, scope: !2062)
!2066 = !DILocation(line: 767, column: 4, scope: !2062)
!2067 = !DILocation(line: 775, column: 16, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2044, file: !130, line: 775, column: 8)
!2069 = !DILocation(line: 775, column: 23, scope: !2068)
!2070 = !DILocation(line: 775, column: 8, scope: !2044)
!2071 = !DILocation(line: 776, column: 5, scope: !2068)
!2072 = !DILocation(line: 777, column: 3, scope: !2044)
!2073 = !DILocation(line: 674, column: 2, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !1799, file: !130, discriminator: 2)
!2075 = !DILocation(line: 782, column: 6, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1799, file: !130, line: 782, column: 6)
!2077 = !DILocation(line: 782, column: 6, scope: !1799)
!2078 = !DILocation(line: 783, column: 3, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !130, line: 782, column: 18)
!2080 = !DILocation(line: 784, column: 8, scope: !2079)
!2081 = !DILocation(line: 784, column: 3, scope: !2079)
!2082 = !DILocation(line: 785, column: 2, scope: !2079)
!2083 = !DILocation(line: 788, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1799, file: !130, line: 788, column: 6)
!2085 = !DILocation(line: 788, column: 6, scope: !1799)
!2086 = !DILocation(line: 789, column: 3, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !130, line: 788, column: 22)
!2088 = !DILocation(line: 790, column: 8, scope: !2087)
!2089 = !DILocation(line: 790, column: 3, scope: !2087)
!2090 = !DILocation(line: 791, column: 2, scope: !2087)
!2091 = !DILocation(line: 804, column: 1, scope: !1799)
!2092 = distinct !DISubprogram(name: "reload_config", scope: !130, file: !130, line: 516, type: !419, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!2093 = !DILocalVariable(name: "unsupported_change", scope: !2092, file: !130, line: 518, type: !216)
!2094 = !DILocation(line: 518, column: 6, scope: !2092)
!2095 = !DILocation(line: 520, column: 2, scope: !2092)
!2096 = !DILocation(line: 523, column: 20, scope: !2092)
!2097 = !DILocation(line: 523, column: 18, scope: !2092)
!2098 = !DILocation(line: 524, column: 14, scope: !2092)
!2099 = !DILocation(line: 525, column: 16, scope: !2092)
!2100 = !DILocation(line: 525, column: 14, scope: !2092)
!2101 = !DILocation(line: 527, column: 2, scope: !2092)
!2102 = !DILocation(line: 529, column: 19, scope: !2092)
!2103 = !DILocation(line: 529, column: 2, scope: !2092)
!2104 = !DILocation(line: 532, column: 8, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2092, file: !130, line: 532, column: 6)
!2106 = !DILocation(line: 532, column: 25, scope: !2105)
!2107 = !DILocation(line: 532, column: 7, scope: !2105)
!2108 = !DILocation(line: 532, column: 6, scope: !2105)
!2109 = !DILocation(line: 532, column: 48, scope: !2105)
!2110 = !DILocation(line: 532, column: 61, scope: !2105)
!2111 = !DILocation(line: 532, column: 47, scope: !2105)
!2112 = !DILocation(line: 532, column: 46, scope: !2105)
!2113 = !DILocation(line: 532, column: 43, scope: !2105)
!2114 = !DILocation(line: 532, column: 79, scope: !2105)
!2115 = !DILocation(line: 533, column: 7, scope: !2105)
!2116 = !DILocation(line: 533, column: 20, scope: !2105)
!2117 = !DILocation(line: 533, column: 38, scope: !2105)
!2118 = !DILocation(line: 533, column: 48, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2105, file: !130, discriminator: 1)
!2120 = !DILocation(line: 533, column: 65, scope: !2119)
!2121 = !DILocation(line: 533, column: 84, scope: !2119)
!2122 = !DILocation(line: 533, column: 97, scope: !2119)
!2123 = !DILocation(line: 533, column: 41, scope: !2119)
!2124 = !DILocation(line: 532, column: 6, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2092, file: !130, discriminator: 1)
!2126 = !DILocation(line: 534, column: 3, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2105, file: !130, line: 533, column: 118)
!2128 = !DILocation(line: 535, column: 22, scope: !2127)
!2129 = !DILocation(line: 536, column: 2, scope: !2127)
!2130 = !DILocation(line: 537, column: 8, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !130, line: 537, column: 8)
!2132 = distinct !DILexicalBlock(scope: !2092, file: !130, line: 537, column: 2)
!2133 = !DILocation(line: 537, column: 21, scope: !2131)
!2134 = !DILocation(line: 537, column: 8, scope: !2132)
!2135 = !DILocation(line: 537, column: 48, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !130, discriminator: 1)
!2137 = distinct !DILexicalBlock(scope: !2131, file: !130, line: 537, column: 40)
!2138 = !DILocation(line: 537, column: 61, scope: !2136)
!2139 = !DILocation(line: 537, column: 43, scope: !2136)
!2140 = !DILocation(line: 537, column: 82, scope: !2136)
!2141 = !DILocation(line: 537, column: 95, scope: !2136)
!2142 = !DILocation(line: 537, column: 114, scope: !2136)
!2143 = !DILocation(line: 537, column: 3, scope: !2136)
!2144 = !DILocation(line: 538, column: 35, scope: !2092)
!2145 = !DILocation(line: 538, column: 52, scope: !2092)
!2146 = !DILocation(line: 538, column: 2, scope: !2092)
!2147 = !DILocation(line: 538, column: 15, scope: !2092)
!2148 = !DILocation(line: 538, column: 33, scope: !2092)
!2149 = !DILocation(line: 539, column: 2, scope: !2092)
!2150 = !DILocation(line: 539, column: 19, scope: !2092)
!2151 = !DILocation(line: 539, column: 37, scope: !2092)
!2152 = !DILocation(line: 542, column: 8, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2092, file: !130, line: 542, column: 6)
!2154 = !DILocation(line: 542, column: 25, scope: !2153)
!2155 = !DILocation(line: 542, column: 7, scope: !2153)
!2156 = !DILocation(line: 542, column: 6, scope: !2153)
!2157 = !DILocation(line: 542, column: 44, scope: !2153)
!2158 = !DILocation(line: 542, column: 57, scope: !2153)
!2159 = !DILocation(line: 542, column: 43, scope: !2153)
!2160 = !DILocation(line: 542, column: 42, scope: !2153)
!2161 = !DILocation(line: 542, column: 39, scope: !2153)
!2162 = !DILocation(line: 542, column: 71, scope: !2153)
!2163 = !DILocation(line: 543, column: 7, scope: !2153)
!2164 = !DILocation(line: 543, column: 20, scope: !2153)
!2165 = !DILocation(line: 543, column: 34, scope: !2153)
!2166 = !DILocation(line: 543, column: 44, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2153, file: !130, discriminator: 1)
!2168 = !DILocation(line: 543, column: 61, scope: !2167)
!2169 = !DILocation(line: 543, column: 76, scope: !2167)
!2170 = !DILocation(line: 543, column: 89, scope: !2167)
!2171 = !DILocation(line: 543, column: 37, scope: !2167)
!2172 = !DILocation(line: 542, column: 6, scope: !2125)
!2173 = !DILocation(line: 544, column: 3, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2153, file: !130, line: 543, column: 106)
!2175 = !DILocation(line: 545, column: 22, scope: !2174)
!2176 = !DILocation(line: 546, column: 2, scope: !2174)
!2177 = !DILocation(line: 547, column: 8, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !130, line: 547, column: 8)
!2179 = distinct !DILexicalBlock(scope: !2092, file: !130, line: 547, column: 2)
!2180 = !DILocation(line: 547, column: 21, scope: !2178)
!2181 = !DILocation(line: 547, column: 8, scope: !2179)
!2182 = !DILocation(line: 547, column: 44, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !130, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !130, line: 547, column: 36)
!2185 = !DILocation(line: 547, column: 57, scope: !2183)
!2186 = !DILocation(line: 547, column: 39, scope: !2183)
!2187 = !DILocation(line: 547, column: 74, scope: !2183)
!2188 = !DILocation(line: 547, column: 87, scope: !2183)
!2189 = !DILocation(line: 547, column: 102, scope: !2183)
!2190 = !DILocation(line: 547, column: 3, scope: !2183)
!2191 = !DILocation(line: 548, column: 31, scope: !2092)
!2192 = !DILocation(line: 548, column: 48, scope: !2092)
!2193 = !DILocation(line: 548, column: 2, scope: !2092)
!2194 = !DILocation(line: 548, column: 15, scope: !2092)
!2195 = !DILocation(line: 548, column: 29, scope: !2092)
!2196 = !DILocation(line: 549, column: 2, scope: !2092)
!2197 = !DILocation(line: 549, column: 19, scope: !2092)
!2198 = !DILocation(line: 549, column: 33, scope: !2092)
!2199 = !DILocation(line: 551, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2092, file: !130, line: 551, column: 6)
!2201 = !DILocation(line: 551, column: 6, scope: !2092)
!2202 = !DILocation(line: 553, column: 21, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !130, line: 551, column: 26)
!2204 = !DILocation(line: 553, column: 3, scope: !2203)
!2205 = !DILocation(line: 554, column: 17, scope: !2203)
!2206 = !DILocation(line: 554, column: 15, scope: !2203)
!2207 = !DILocation(line: 555, column: 2, scope: !2203)
!2208 = !DILocation(line: 557, column: 21, scope: !2200)
!2209 = !DILocation(line: 557, column: 3, scope: !2200)
!2210 = !DILocation(line: 559, column: 10, scope: !2092)
!2211 = !DILocation(line: 559, column: 9, scope: !2092)
!2212 = !DILocation(line: 559, column: 2, scope: !2092)
