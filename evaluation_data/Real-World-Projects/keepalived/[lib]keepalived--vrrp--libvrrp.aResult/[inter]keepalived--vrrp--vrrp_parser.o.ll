; ModuleID = './[inter]keepalived--vrrp--vrrp_parser.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_parser.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vector = type { i32, i32, i8** }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
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
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._vrrp_script = type { i8*, %struct._notify_script, i64, i64, i32, i32, i32, i32, %struct._list*, i32, i32, i32, i8 }
%struct._vrrp_file = type { i8*, i8*, i8*, i32, i32, %struct._list*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"track_group\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"static_ipaddress\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"static_routes\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"static_rules\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"vrrp_sync_group\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"track_interface\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"track_script\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"track_file\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"notify_backup\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"notify_master\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"notify_fault\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"notify_stop\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"smtp_alert\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"global_tracking\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"sync_group_tracking_weight\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"garp_group\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"garp_interval\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"gna_interval\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"interfaces\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"vrrp_instance\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"use_vmac\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"vmac_xmit_base\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"unicast_peer\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"old_unicast_checksum\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"native_ipv6\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"dont_track_primary\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"mcast_src_ip\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"unicast_src_ip\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"track_src_ip\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"virtual_router_id\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"advert_int\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"virtual_ipaddress\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"virtual_ipaddress_excluded\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"promote_secondaries\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"linkbeat_use_polling\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"virtual_routes\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"virtual_rules\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"no_accept\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"skip_check_adv_addr\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"strict_mode\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"preempt\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"nopreempt\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"preempt_delay\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"notify_master_rx_lower_pri\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"lvs_sync_daemon_interface\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"garp_master_delay\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"garp_master_refresh\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"garp_master_repeat\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"garp_master_refresh_repeat\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"garp_lower_prio_delay\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"garp_lower_prio_repeat\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"lower_prio_no_advert\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"higher_prio_send_advert\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"kernel_rx_buf_size\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"authentication\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"auth_type\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"auth_pass\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"vrrp_script\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"rise\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"fall\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"init_fail\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"vrrp_track_file\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"init_file\00", align 1
@reload = external global i8, align 1
@keywords = external global %struct._vector*, align 8
@garp_delay = common global %struct._list* null, align 8
@.str.77 = private unnamed_addr constant [40 x i8] c"track_group must have a name - skipping\00", align 1
@vrrp_data = external global %struct._vrrp_data*, align 8
@.str.78 = private unnamed_addr constant [31 x i8] c"track_group %s already defined\00", align 1
@.str.79 = private unnamed_addr constant [47 x i8] c"Group list already specified for sync group %s\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"Warning - track group %s has empty group block\00", align 1
@global_data = external global %struct._data*, align 8
@.str.81 = private unnamed_addr constant [44 x i8] c"vrrp_sync_group must have a name - skipping\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"vrrp sync group %s already defined\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"Warning - sync group %s has empty group block\00", align 1
@.str.84 = private unnamed_addr constant [68 x i8] c"vrrp group %s: notify_backup script already specified - ignoring %s\00", align 1
@.str.85 = private unnamed_addr constant [68 x i8] c"vrrp group %s: notify_master script already specified - ignoring %s\00", align 1
@.str.86 = private unnamed_addr constant [67 x i8] c"vrrp group %s: notify_fault script already specified - ignoring %s\00", align 1
@.str.87 = private unnamed_addr constant [66 x i8] c"vrrp group %s: notify_stop script already specified - ignoring %s\00", align 1
@.str.88 = private unnamed_addr constant [61 x i8] c"vrrp group %s: notify script already specified - ignoring %s\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"Invalid vrrp_group smtp_alert parameter %s\00", align 1
@.str.90 = private unnamed_addr constant [86 x i8] c"(%s) global_tracking is deprecated. Use track_interface/script/file on the sync group\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"garp_group garp_interval '%s' invalid\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"The garp_interval is very large - %s seconds\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"garp_group gna_interval '%s' invalid\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"The gna_interval is very large - %s seconds\00", align 1
@.str.95 = private unnamed_addr constant [62 x i8] c"WARNING - interface %s specified for garp_group doesn't exist\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"garp_group already specified for %s - ignoring\00", align 1
@.str.97 = private unnamed_addr constant [52 x i8] c"Cannot specify garp_delay on a vmac (%s) - ignoring\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"Warning - empty garp_group interfaces block\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"garp group %d does not have any delay set - removing\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"vrrp_instance must have a name\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"vrrp instance %s already defined\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"VMAC interface name '%s' too long - ignoring\00", align 1
@.str.103 = private unnamed_addr constant [85 x i8] c"(%s) interface %s already exists and is not a private macvlan; ignoring vmac if_name\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.105 = private unnamed_addr constant [51 x i8] c"(%s) Unknown old_unicast_chksum mode %s - ignoring\00", align 1
@.str.106 = private unnamed_addr constant [52 x i8] c"(%s) Cannot specify native_ipv6 with IPv4 addresses\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"MASTER\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"BACKUP\00", align 1
@.str.109 = private unnamed_addr constant [54 x i8] c"(%s) state previously set as MASTER - ignoring BACKUP\00", align 1
@.str.110 = private unnamed_addr constant [46 x i8] c"(%s) unknown state '%s', defaulting to BACKUP\00", align 1
@.str.111 = private unnamed_addr constant [40 x i8] c"Interface name '%s' too long - ignoring\00", align 1
@.str.112 = private unnamed_addr constant [58 x i8] c"WARNING - interface %s for vrrp_instance %s doesn't exist\00", align 1
@.str.113 = private unnamed_addr constant [62 x i8] c"(%s) cannot use a loopback interface (%s) for vrrp - ignoring\00", align 1
@.str.114 = private unnamed_addr constant [78 x i8] c"Configuration error: VRRP instance[%s] malformed src address[%s]. Skipping...\00", align 1
@.str.115 = private unnamed_addr constant [102 x i8] c"Configuration error: VRRP instance[%s] and src address[%s] MUST be of the same family !!! Skipping...\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"(%s): VRID '%s' not valid - must be between 1 & 255\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c"(%s): Version must be either 2 or 3\00", align 1
@.str.118 = private unnamed_addr constant [80 x i8] c"(%s) vrrp_version %d conflicts with configured or deduced version %d; ignoring.\00", align 1
@.str.119 = private unnamed_addr constant [66 x i8] c"(%s) Priority not valid! must be between 1 & %d. Using default %d\00", align 1
@.str.120 = private unnamed_addr constant [60 x i8] c"(%s) Advert interval (%s) not valid! Must be > 0 - ignoring\00", align 1
@.str.121 = private unnamed_addr constant [46 x i8] c"(%s) invalid skip_check_adv_addr %s specified\00", align 1
@.str.122 = private unnamed_addr constant [38 x i8] c"(%s) invalid strict_mode %s specified\00", align 1
@.str.123 = private unnamed_addr constant [51 x i8] c"(%s) Preempt_delay not valid! must be between 0-%d\00", align 1
@.str.124 = private unnamed_addr constant [53 x i8] c"(%s) Debug value '%s' not valid; must be between 0-4\00", align 1
@.str.125 = private unnamed_addr constant [58 x i8] c"(%s) notify_backup script already specified - ignoring %s\00", align 1
@.str.126 = private unnamed_addr constant [58 x i8] c"(%s) notify_master script already specified - ignoring %s\00", align 1
@.str.127 = private unnamed_addr constant [57 x i8] c"(%s) notify_fault script already specified - ignoring %s\00", align 1
@.str.128 = private unnamed_addr constant [56 x i8] c"(%s) notify_stop script already specified - ignoring %s\00", align 1
@.str.129 = private unnamed_addr constant [51 x i8] c"(%s) notify script already specified - ignoring %s\00", align 1
@.str.130 = private unnamed_addr constant [71 x i8] c"(%s) notify_master_rx_lower_pri script already specified - ignoring %s\00", align 1
@.str.131 = private unnamed_addr constant [46 x i8] c"Invalid vrrp_instance smtp_alert parameter %s\00", align 1
@.str.132 = private unnamed_addr constant [72 x i8] c"(%s) Specifying lvs_sync_daemon_interface against a vrrp is deprecated.\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"      %*sPlease use global lvs_sync_daemon\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.135 = private unnamed_addr constant [75 x i8] c"(%s) lvs_sync_daemon_interface has already been specified as %s - ignoring\00", align 1
@.str.136 = private unnamed_addr constant [48 x i8] c"(%s): garp_master_delay '%s' invalid - ignoring\00", align 1
@.str.137 = private unnamed_addr constant [50 x i8] c"(%s): Invalid garp_master_refresh '%s' - ignoring\00", align 1
@.str.138 = private unnamed_addr constant [49 x i8] c"(%s): garp_master_repeat '%s' invalid - ignoring\00", align 1
@.str.139 = private unnamed_addr constant [62 x i8] c"(%s): garp_master_repeat must be greater than 0, setting to 1\00", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c"(%s): garp_master_refresh_repeat '%s' invalid - ignoring\00", align 1
@.str.141 = private unnamed_addr constant [70 x i8] c"(%s): garp_master_refresh_repeat must be greater than 0, setting to 1\00", align 1
@.str.142 = private unnamed_addr constant [52 x i8] c"(%s): garp_lower_prio_delay '%s' invalid - ignoring\00", align 1
@.str.143 = private unnamed_addr constant [42 x i8] c"(%s): Invalid garp_lower_prio_repeat '%s'\00", align 1
@.str.144 = private unnamed_addr constant [47 x i8] c"(%s) invalid lower_prio_no_advert %s specified\00", align 1
@.str.145 = private unnamed_addr constant [50 x i8] c"(%s) invalid higher_prio_send_advert %s specified\00", align 1
@.str.146 = private unnamed_addr constant [42 x i8] c"(%s) invalid kernel_rx_buf_size specified\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.149 = private unnamed_addr constant [38 x i8] c"(%s) unknown authentication type '%s'\00", align 1
@.str.150 = private unnamed_addr constant [39 x i8] c"Truncating auth_pass to %zu characters\00", align 1
@script_user_set = internal global i8 0, align 1
@remove_script = internal global i8 0, align 1
@.str.151 = private unnamed_addr constant [68 x i8] c"(%s): vrrp script interval '%s' must be between 1 and %u - ignoring\00", align 1
@.str.152 = private unnamed_addr constant [64 x i8] c"(%s): vrrp script interval must be greater than 0, setting to 1\00", align 1
@.str.153 = private unnamed_addr constant [50 x i8] c"(%s): vrrp script timeout '%s' invalid - ignoring\00", align 1
@.str.154 = private unnamed_addr constant [63 x i8] c"(%s): vrrp script timeout must be greater than 0, setting to 1\00", align 1
@.str.155 = private unnamed_addr constant [48 x i8] c"vrrp_script %s weight %s must be in [-253, 253]\00", align 1
@.str.156 = private unnamed_addr constant [59 x i8] c"(%s): vrrp script rise value '%s' invalid, defaulting to 1\00", align 1
@.str.157 = private unnamed_addr constant [59 x i8] c"(%s): vrrp script fall value '%s' invalid, defaulting to 1\00", align 1
@.str.158 = private unnamed_addr constant [36 x i8] c"Unable to set uid/gid for script %s\00", align 1
@.str.159 = private unnamed_addr constant [44 x i8] c"No script set for vrrp_script %s - removing\00", align 1
@.str.160 = private unnamed_addr constant [57 x i8] c"Unable to set default user for vrrp script %s - removing\00", align 1
@default_script_uid = external global i32, align 4
@default_script_gid = external global i32, align 4
@track_file_init = internal global i32 0, align 4
@.str.161 = private unnamed_addr constant [49 x i8] c"File already set for track file %s - ignoring %s\00", align 1
@.str.162 = private unnamed_addr constant [49 x i8] c"No weight specified for track file %s - ignoring\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"Weight already set for track file %s - ignoring %s\00", align 1
@.str.164 = private unnamed_addr constant [86 x i8] c"Weight (%s) for vrrp_track_file %s must be between [-254..254] inclusive. Ignoring...\00", align 1
@track_file_init_value = internal global i32 0, align 4
@WHITE_SPACE = external global i8*, align 8
@.str.165 = private unnamed_addr constant [39 x i8] c"Track file %s init value %s is invalid\00", align 1
@.str.166 = private unnamed_addr constant [63 x i8] c"Track file %s init value %d is outside sensible range [%d, %d]\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"Unknown track file init option %s\00", align 1
@.str.169 = private unnamed_addr constant [41 x i8] c"No file set for track_file %s - removing\00", align 1
@.str.170 = private unnamed_addr constant [59 x i8] c"Cannot initialise track file %s - it is not a regular file\00", align 1
@debug = external global i64, align 8
@.str.171 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.173 = private unnamed_addr constant [35 x i8] c"Unable to initialise track file %s\00", align 1

; Function Attrs: nounwind uwtable
define void @init_vrrp_keywords(i1 zeroext) #0 !dbg !215 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !219, metadata !220), !dbg !221
  %4 = load i8, i8* %2, align 1, !dbg !222
  %5 = trunc i8 %4 to i1, !dbg !222
  call void @install_keyword_root(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), void (%struct._vector*)* @static_track_group_handler, i1 zeroext %5), !dbg !223
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), void (%struct._vector*)* @static_track_group_group_handler), !dbg !224
  %6 = load i8, i8* %2, align 1, !dbg !225
  %7 = trunc i8 %6 to i1, !dbg !225
  call void @install_keyword_root(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), void (%struct._vector*)* @static_addresses_handler, i1 zeroext %7), !dbg !226
  %8 = load i8, i8* %2, align 1, !dbg !227
  %9 = trunc i8 %8 to i1, !dbg !227
  call void @install_keyword_root(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void (%struct._vector*)* @static_routes_handler, i1 zeroext %9), !dbg !228
  %10 = load i8, i8* %2, align 1, !dbg !229
  %11 = trunc i8 %10 to i1, !dbg !229
  call void @install_keyword_root(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (%struct._vector*)* @static_rules_handler, i1 zeroext %11), !dbg !230
  %12 = load i8, i8* %2, align 1, !dbg !231
  %13 = trunc i8 %12 to i1, !dbg !231
  call void @install_keyword_root(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void (%struct._vector*)* @vrrp_sync_group_handler, i1 zeroext %13), !dbg !232
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), void (%struct._vector*)* @vrrp_group_handler), !dbg !233
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (%struct._vector*)* @vrrp_group_track_if_handler), !dbg !234
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (%struct._vector*)* @vrrp_group_track_scr_handler), !dbg !235
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (%struct._vector*)* @vrrp_group_track_file_handler), !dbg !236
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void (%struct._vector*)* @vrrp_gnotify_backup_handler), !dbg !237
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (%struct._vector*)* @vrrp_gnotify_master_handler), !dbg !238
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), void (%struct._vector*)* @vrrp_gnotify_fault_handler), !dbg !239
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), void (%struct._vector*)* @vrrp_gnotify_stop_handler), !dbg !240
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void (%struct._vector*)* @vrrp_gnotify_handler), !dbg !241
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (%struct._vector*)* @vrrp_gsmtp_handler), !dbg !242
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void (%struct._vector*)* @vrrp_gglobal_tracking_handler), !dbg !243
  call void @install_keyword(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), void (%struct._vector*)* @vrrp_sg_tracking_weight_handler), !dbg !244
  %14 = load i8, i8* %2, align 1, !dbg !245
  %15 = trunc i8 %14 to i1, !dbg !245
  call void @install_keyword_root(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), void (%struct._vector*)* @garp_group_handler, i1 zeroext %15), !dbg !246
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void (%struct._vector*)* @garp_group_garp_interval_handler), !dbg !247
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void (%struct._vector*)* @garp_group_gna_interval_handler), !dbg !248
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (%struct._vector*)* @garp_group_interface_handler), !dbg !249
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), void (%struct._vector*)* @garp_group_interfaces_handler), !dbg !250
  call void @install_sublevel_end_handler(void ()* @garp_group_end_handler), !dbg !251
  %16 = load i8, i8* %2, align 1, !dbg !252
  %17 = trunc i8 %16 to i1, !dbg !252
  call void @install_keyword_root(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void (%struct._vector*)* @vrrp_handler, i1 zeroext %17), !dbg !253
  call void @install_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), void (%struct._vector*)* @vrrp_vmac_handler), !dbg !254
  call void @install_keyword(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), void (%struct._vector*)* @vrrp_vmac_xmit_base_handler), !dbg !255
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (%struct._vector*)* @vrrp_unicast_peer_handler), !dbg !256
  call void @install_keyword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), void (%struct._vector*)* @vrrp_unicast_chksum_handler), !dbg !257
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), void (%struct._vector*)* @vrrp_native_ipv6_handler), !dbg !258
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), void (%struct._vector*)* @vrrp_state_handler), !dbg !259
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (%struct._vector*)* @vrrp_int_handler), !dbg !260
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), void (%struct._vector*)* @vrrp_dont_track_handler), !dbg !261
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (%struct._vector*)* @vrrp_track_if_handler), !dbg !262
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (%struct._vector*)* @vrrp_track_scr_handler), !dbg !263
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (%struct._vector*)* @vrrp_track_file_handler), !dbg !264
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void (%struct._vector*)* @vrrp_srcip_handler), !dbg !265
  call void @install_keyword(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), void (%struct._vector*)* @vrrp_srcip_handler), !dbg !266
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), void (%struct._vector*)* @vrrp_track_srcip_handler), !dbg !267
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), void (%struct._vector*)* @vrrp_vrid_handler), !dbg !268
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void (%struct._vector*)* @vrrp_version_handler), !dbg !269
  call void @install_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), void (%struct._vector*)* @vrrp_prio_handler), !dbg !270
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), void (%struct._vector*)* @vrrp_adv_handler), !dbg !271
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), void (%struct._vector*)* @vrrp_vip_handler), !dbg !272
  call void @install_keyword(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), void (%struct._vector*)* @vrrp_evip_handler), !dbg !273
  call void @install_keyword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), void (%struct._vector*)* @vrrp_promote_secondaries_handler), !dbg !274
  call void @install_keyword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), void (%struct._vector*)* @vrrp_linkbeat_handler), !dbg !275
  call void @install_keyword(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), void (%struct._vector*)* @vrrp_vroutes_handler), !dbg !276
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void (%struct._vector*)* @vrrp_vrules_handler), !dbg !277
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void (%struct._vector*)* @vrrp_accept_handler), !dbg !278
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), void (%struct._vector*)* @vrrp_no_accept_handler), !dbg !279
  call void @install_keyword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), void (%struct._vector*)* @vrrp_skip_check_adv_addr_handler), !dbg !280
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), void (%struct._vector*)* @vrrp_strict_mode_handler), !dbg !281
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void (%struct._vector*)* @vrrp_preempt_handler), !dbg !282
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), void (%struct._vector*)* @vrrp_nopreempt_handler), !dbg !283
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void (%struct._vector*)* @vrrp_preempt_delay_handler), !dbg !284
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), void (%struct._vector*)* @vrrp_debug_handler), !dbg !285
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_backup_handler), !dbg !286
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_master_handler), !dbg !287
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_fault_handler), !dbg !288
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_stop_handler), !dbg !289
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_handler), !dbg !290
  call void @install_keyword(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_master_rx_lower_pri), !dbg !291
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (%struct._vector*)* @vrrp_smtp_handler), !dbg !292
  call void @install_keyword(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), void (%struct._vector*)* @vrrp_lvs_syncd_handler), !dbg !293
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_delay_handler), !dbg !294
  call void @install_keyword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_refresh_handler), !dbg !295
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_rep_handler), !dbg !296
  call void @install_keyword(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_refresh_rep_handler), !dbg !297
  call void @install_keyword(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_lower_prio_delay_handler), !dbg !298
  call void @install_keyword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_lower_prio_rep_handler), !dbg !299
  call void @install_keyword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), void (%struct._vector*)* @vrrp_lower_prio_no_advert_handler), !dbg !300
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0), void (%struct._vector*)* @vrrp_higher_prio_send_advert_handler), !dbg !301
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), void (%struct._vector*)* @kernel_rx_buf_size_handler), !dbg !302
  call void @install_keyword(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), void (%struct._vector*)* null), !dbg !303
  call void @install_sublevel(), !dbg !304
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), void (%struct._vector*)* @vrrp_auth_type_handler), !dbg !305
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), void (%struct._vector*)* @vrrp_auth_pass_handler), !dbg !306
  call void @install_sublevel_end(), !dbg !307
  %18 = load i8, i8* %2, align 1, !dbg !308
  %19 = trunc i8 %18 to i1, !dbg !308
  call void @install_keyword_root(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), void (%struct._vector*)* @vrrp_script_handler, i1 zeroext %19), !dbg !309
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_script_handler), !dbg !310
  call void @install_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_interval_handler), !dbg !311
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_timeout_handler), !dbg !312
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_weight_handler), !dbg !313
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_rise_handler), !dbg !314
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_fall_handler), !dbg !315
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_user_handler), !dbg !316
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), void (%struct._vector*)* @vrrp_vscript_init_fail_handler), !dbg !317
  call void @install_sublevel_end_handler(void ()* @vrrp_vscript_end_handler), !dbg !318
  %20 = load i8, i8* %2, align 1, !dbg !319
  %21 = trunc i8 %20 to i1, !dbg !319
  call void @install_keyword_root(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), void (%struct._vector*)* @vrrp_tfile_handler, i1 zeroext %21), !dbg !320
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), void (%struct._vector*)* @vrrp_tfile_file_handler), !dbg !321
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), void (%struct._vector*)* @vrrp_tfile_weight_handler), !dbg !322
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), void (%struct._vector*)* @vrrp_tfile_init_handler), !dbg !323
  call void @install_sublevel_end_handler(void ()* @vrrp_tfile_end_handler), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @install_keyword_root(i8*, void (%struct._vector*)*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @static_track_group_handler(%struct._vector*) #0 !dbg !326 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._static_track_group*, align 8
  %5 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !338, metadata !220), !dbg !339
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !340, metadata !220), !dbg !342
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %4, metadata !343, metadata !220), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %5, metadata !353, metadata !220), !dbg !354
  %6 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !355
  %7 = icmp ne %struct._vector* %6, null, !dbg !355
  br i1 %7, label %9, label %8, !dbg !357

; <label>:8:                                      ; preds = %1
  br label %64, !dbg !358

; <label>:9:                                      ; preds = %1
  %10 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !359
  %11 = call i32 @vector_count(%struct._vector* %10), !dbg !361
  %12 = icmp ne i32 %11, 2, !dbg !362
  br i1 %12, label %13, label %14, !dbg !363

; <label>:13:                                     ; preds = %9
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.77, i32 0, i32 0)), !dbg !364
  call void @skip_block(i1 zeroext true), !dbg !366
  br label %64, !dbg !367

; <label>:14:                                     ; preds = %9
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !368
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !369
  store i8* %16, i8** %5, align 8, !dbg !370
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !371
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 0, !dbg !373
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !373
  %20 = icmp ne %struct._list* %19, null, !dbg !374
  br i1 %20, label %21, label %35, !dbg !374

; <label>:21:                                     ; preds = %14
  %22 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !375
  %23 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %22, i32 0, i32 0, !dbg !377
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !377
  %25 = icmp ne %struct._list* %24, null, !dbg !378
  br i1 %25, label %27, label %26, !dbg !379

; <label>:26:                                     ; preds = %21
  br label %33, !dbg !380

; <label>:27:                                     ; preds = %21
  %28 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !382
  %29 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %28, i32 0, i32 0, !dbg !384
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !384
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !385
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !385
  br label %33, !dbg !386

; <label>:33:                                     ; preds = %27, %26
  %34 = phi %struct._element* [ null, %26 ], [ %32, %27 ], !dbg !387
  br label %36, !dbg !389

; <label>:35:                                     ; preds = %14
  br label %36, !dbg !390

; <label>:36:                                     ; preds = %35, %33
  %37 = phi %struct._element* [ %34, %33 ], [ null, %35 ], !dbg !392
  store %struct._element* %37, %struct._element** %3, align 8, !dbg !394
  br label %38, !dbg !395

; <label>:38:                                     ; preds = %58, %36
  %39 = load %struct._element*, %struct._element** %3, align 8, !dbg !396
  %40 = icmp ne %struct._element* %39, null, !dbg !399
  br i1 %40, label %41, label %46, !dbg !400

; <label>:41:                                     ; preds = %38
  %42 = load %struct._element*, %struct._element** %3, align 8, !dbg !401
  %43 = getelementptr inbounds %struct._element, %struct._element* %42, i32 0, i32 2, !dbg !403
  %44 = load i8*, i8** %43, align 8, !dbg !403
  %45 = bitcast i8* %44 to %struct._static_track_group*, !dbg !404
  store %struct._static_track_group* %45, %struct._static_track_group** %4, align 8, !dbg !405
  br label %46

; <label>:46:                                     ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ true, %41 ]
  br i1 %47, label %48, label %62, !dbg !406

; <label>:48:                                     ; preds = %46
  %49 = load i8*, i8** %5, align 8, !dbg !408
  %50 = load %struct._static_track_group*, %struct._static_track_group** %4, align 8, !dbg !411
  %51 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %50, i32 0, i32 0, !dbg !412
  %52 = load i8*, i8** %51, align 8, !dbg !412
  %53 = call i32 @strcmp(i8* %49, i8* %52) #8, !dbg !413
  %54 = icmp ne i32 %53, 0, !dbg !413
  br i1 %54, label %57, label %55, !dbg !414

; <label>:55:                                     ; preds = %48
  %56 = load i8*, i8** %5, align 8, !dbg !415
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i32 0, i32 0), i8* %56), !dbg !417
  call void @skip_block(i1 zeroext true), !dbg !418
  br label %64, !dbg !419

; <label>:57:                                     ; preds = %48
  br label %58, !dbg !420

; <label>:58:                                     ; preds = %57
  %59 = load %struct._element*, %struct._element** %3, align 8, !dbg !421
  %60 = getelementptr inbounds %struct._element, %struct._element* %59, i32 0, i32 0, !dbg !423
  %61 = load %struct._element*, %struct._element** %60, align 8, !dbg !423
  store %struct._element* %61, %struct._element** %3, align 8, !dbg !424
  br label %38, !dbg !425, !llvm.loop !426

; <label>:62:                                     ; preds = %46
  %63 = load i8*, i8** %5, align 8, !dbg !428
  call void @alloc_static_track_group(i8* %63), !dbg !429
  br label %64, !dbg !430

; <label>:64:                                     ; preds = %62, %55, %13, %8
  ret void, !dbg !431
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #2

; Function Attrs: nounwind uwtable
define internal void @static_track_group_group_handler(%struct._vector*) #0 !dbg !433 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._static_track_group*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !434, metadata !220), !dbg !435
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %3, metadata !436, metadata !220), !dbg !437
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !438
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 0, !dbg !439
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !439
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !440
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !440
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !441
  %10 = load i8*, i8** %9, align 8, !dbg !441
  %11 = bitcast i8* %10 to %struct._static_track_group*, !dbg !442
  store %struct._static_track_group* %11, %struct._static_track_group** %3, align 8, !dbg !437
  %12 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !443
  %13 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %12, i32 0, i32 1, !dbg !445
  %14 = load %struct._vector*, %struct._vector** %13, align 8, !dbg !445
  %15 = icmp ne %struct._vector* %14, null, !dbg !443
  br i1 %15, label %16, label %20, !dbg !446

; <label>:16:                                     ; preds = %1
  %17 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !447
  %18 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %17, i32 0, i32 0, !dbg !449
  %19 = load i8*, i8** %18, align 8, !dbg !449
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.79, i32 0, i32 0), i8* %19), !dbg !450
  call void @skip_block(i1 zeroext true), !dbg !451
  br label %33, !dbg !452

; <label>:20:                                     ; preds = %1
  %21 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !453
  %22 = call %struct._vector* @read_value_block(%struct._vector* %21), !dbg !454
  %23 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !455
  %24 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %23, i32 0, i32 1, !dbg !456
  store %struct._vector* %22, %struct._vector** %24, align 8, !dbg !457
  %25 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !458
  %26 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %25, i32 0, i32 1, !dbg !460
  %27 = load %struct._vector*, %struct._vector** %26, align 8, !dbg !460
  %28 = icmp ne %struct._vector* %27, null, !dbg !458
  br i1 %28, label %33, label %29, !dbg !461

; <label>:29:                                     ; preds = %20
  %30 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !462
  %31 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %30, i32 0, i32 0, !dbg !463
  %32 = load i8*, i8** %31, align 8, !dbg !463
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.80, i32 0, i32 0), i8* %32), !dbg !464
  br label %33, !dbg !464

; <label>:33:                                     ; preds = %16, %29, %20
  ret void, !dbg !465
}

; Function Attrs: nounwind uwtable
define internal void @static_addresses_handler(%struct._vector*) #0 !dbg !466 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !467, metadata !220), !dbg !468
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !469
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 44, !dbg !470
  store i8 1, i8* %4, align 2, !dbg !471
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !472
  %6 = icmp ne %struct._vector* %5, null, !dbg !472
  br i1 %6, label %8, label %7, !dbg !474

; <label>:7:                                      ; preds = %1
  br label %14, !dbg !475

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !476
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 2, !dbg !477
  %11 = load i8**, i8*** %10, align 8, !dbg !477
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !478
  %13 = load i8*, i8** %12, align 8, !dbg !478
  call void @alloc_value_block(void (%struct._vector*)* @alloc_saddress, i8* %13), !dbg !479
  br label %14, !dbg !480

; <label>:14:                                     ; preds = %8, %7
  ret void, !dbg !481
}

; Function Attrs: nounwind uwtable
define internal void @static_routes_handler(%struct._vector*) #0 !dbg !483 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !484, metadata !220), !dbg !485
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !486
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 44, !dbg !487
  store i8 1, i8* %4, align 2, !dbg !488
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !489
  %6 = icmp ne %struct._vector* %5, null, !dbg !489
  br i1 %6, label %8, label %7, !dbg !491

; <label>:7:                                      ; preds = %1
  br label %14, !dbg !492

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !493
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 2, !dbg !494
  %11 = load i8**, i8*** %10, align 8, !dbg !494
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !495
  %13 = load i8*, i8** %12, align 8, !dbg !495
  call void @alloc_value_block(void (%struct._vector*)* @alloc_sroute, i8* %13), !dbg !496
  br label %14, !dbg !497

; <label>:14:                                     ; preds = %8, %7
  ret void, !dbg !498
}

; Function Attrs: nounwind uwtable
define internal void @static_rules_handler(%struct._vector*) #0 !dbg !500 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !501, metadata !220), !dbg !502
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !503
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 44, !dbg !504
  store i8 1, i8* %4, align 2, !dbg !505
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !506
  %6 = icmp ne %struct._vector* %5, null, !dbg !506
  br i1 %6, label %8, label %7, !dbg !508

; <label>:7:                                      ; preds = %1
  br label %14, !dbg !509

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !510
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 2, !dbg !511
  %11 = load i8**, i8*** %10, align 8, !dbg !511
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !512
  %13 = load i8*, i8** %12, align 8, !dbg !512
  call void @alloc_value_block(void (%struct._vector*)* @alloc_srule, i8* %13), !dbg !513
  br label %14, !dbg !514

; <label>:14:                                     ; preds = %8, %7
  ret void, !dbg !515
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_sync_group_handler(%struct._vector*) #0 !dbg !517 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._list*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._vrrp_sgroup*, align 8
  %6 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !518, metadata !220), !dbg !519
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !520, metadata !220), !dbg !521
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !522, metadata !220), !dbg !523
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %5, metadata !524, metadata !220), !dbg !563
  call void @llvm.dbg.declare(metadata i8** %6, metadata !564, metadata !220), !dbg !565
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !566
  %8 = icmp ne %struct._vector* %7, null, !dbg !566
  br i1 %8, label %10, label %9, !dbg !568

; <label>:9:                                      ; preds = %1
  br label %73, !dbg !569

; <label>:10:                                     ; preds = %1
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !570
  %12 = call i32 @vector_count(%struct._vector* %11), !dbg !572
  %13 = icmp ne i32 %12, 2, !dbg !573
  br i1 %13, label %14, label %15, !dbg !574

; <label>:14:                                     ; preds = %10
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0)), !dbg !575
  call void @skip_block(i1 zeroext true), !dbg !577
  br label %73, !dbg !578

; <label>:15:                                     ; preds = %10
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !579
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !580
  store i8* %17, i8** %6, align 8, !dbg !581
  %18 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !582
  %19 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %18, i32 0, i32 4, !dbg !584
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !584
  %21 = icmp eq %struct._list* %20, null, !dbg !585
  br i1 %21, label %71, label %22, !dbg !586

; <label>:22:                                     ; preds = %15
  %23 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !587
  %24 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %23, i32 0, i32 4, !dbg !589
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !589
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 0, !dbg !590
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !590
  %28 = icmp eq %struct._element* %27, null, !dbg !591
  br i1 %28, label %29, label %36, !dbg !592

; <label>:29:                                     ; preds = %22
  %30 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !593
  %31 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %30, i32 0, i32 4, !dbg !595
  %32 = load %struct._list*, %struct._list** %31, align 8, !dbg !595
  %33 = getelementptr inbounds %struct._list, %struct._list* %32, i32 0, i32 1, !dbg !596
  %34 = load %struct._element*, %struct._element** %33, align 8, !dbg !596
  %35 = icmp eq %struct._element* %34, null, !dbg !597
  br i1 %35, label %71, label %36, !dbg !598

; <label>:36:                                     ; preds = %29, %22
  %37 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !599
  %38 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %37, i32 0, i32 4, !dbg !601
  %39 = load %struct._list*, %struct._list** %38, align 8, !dbg !601
  store %struct._list* %39, %struct._list** %3, align 8, !dbg !602
  %40 = load %struct._list*, %struct._list** %3, align 8, !dbg !603
  %41 = icmp ne %struct._list* %40, null, !dbg !605
  br i1 %41, label %43, label %42, !dbg !606

; <label>:42:                                     ; preds = %36
  br label %47, !dbg !607

; <label>:43:                                     ; preds = %36
  %44 = load %struct._list*, %struct._list** %3, align 8, !dbg !609
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 0, !dbg !611
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !611
  br label %47, !dbg !612

; <label>:47:                                     ; preds = %43, %42
  %48 = phi %struct._element* [ null, %42 ], [ %46, %43 ], !dbg !613
  store %struct._element* %48, %struct._element** %4, align 8, !dbg !615
  br label %49, !dbg !616

; <label>:49:                                     ; preds = %66, %47
  %50 = load %struct._element*, %struct._element** %4, align 8, !dbg !617
  %51 = icmp ne %struct._element* %50, null, !dbg !620
  br i1 %51, label %52, label %70, !dbg !620

; <label>:52:                                     ; preds = %49
  %53 = load %struct._element*, %struct._element** %4, align 8, !dbg !621
  %54 = getelementptr inbounds %struct._element, %struct._element* %53, i32 0, i32 2, !dbg !623
  %55 = load i8*, i8** %54, align 8, !dbg !623
  %56 = bitcast i8* %55 to %struct._vrrp_sgroup*, !dbg !624
  store %struct._vrrp_sgroup* %56, %struct._vrrp_sgroup** %5, align 8, !dbg !625
  %57 = load i8*, i8** %6, align 8, !dbg !626
  %58 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %5, align 8, !dbg !628
  %59 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %58, i32 0, i32 0, !dbg !629
  %60 = load i8*, i8** %59, align 8, !dbg !629
  %61 = call i32 @strcmp(i8* %57, i8* %60) #8, !dbg !630
  %62 = icmp ne i32 %61, 0, !dbg !630
  br i1 %62, label %65, label %63, !dbg !631

; <label>:63:                                     ; preds = %52
  %64 = load i8*, i8** %6, align 8, !dbg !632
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0), i8* %64), !dbg !634
  call void @skip_block(i1 zeroext true), !dbg !635
  br label %73, !dbg !636

; <label>:65:                                     ; preds = %52
  br label %66, !dbg !637

; <label>:66:                                     ; preds = %65
  %67 = load %struct._element*, %struct._element** %4, align 8, !dbg !638
  %68 = getelementptr inbounds %struct._element, %struct._element* %67, i32 0, i32 0, !dbg !640
  %69 = load %struct._element*, %struct._element** %68, align 8, !dbg !640
  store %struct._element* %69, %struct._element** %4, align 8, !dbg !641
  br label %49, !dbg !642, !llvm.loop !643

; <label>:70:                                     ; preds = %49
  br label %71, !dbg !645

; <label>:71:                                     ; preds = %70, %29, %15
  %72 = load i8*, i8** %6, align 8, !dbg !646
  call void @alloc_vrrp_sync_group(i8* %72), !dbg !647
  br label %73, !dbg !648

; <label>:73:                                     ; preds = %71, %63, %14, %9
  ret void, !dbg !649
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_group_handler(%struct._vector*) #0 !dbg !651 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !652, metadata !220), !dbg !653
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !654, metadata !220), !dbg !655
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !656
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !657
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !657
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !658
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !658
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !659
  %10 = load i8*, i8** %9, align 8, !dbg !659
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !660
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !655
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !661
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 1, !dbg !663
  %14 = load %struct._vector*, %struct._vector** %13, align 8, !dbg !663
  %15 = icmp ne %struct._vector* %14, null, !dbg !661
  br i1 %15, label %16, label %20, !dbg !664

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !665
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !667
  %19 = load i8*, i8** %18, align 8, !dbg !667
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.79, i32 0, i32 0), i8* %19), !dbg !668
  call void @skip_block(i1 zeroext true), !dbg !669
  br label %33, !dbg !670

; <label>:20:                                     ; preds = %1
  %21 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !671
  %22 = call %struct._vector* @read_value_block(%struct._vector* %21), !dbg !672
  %23 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !673
  %24 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %23, i32 0, i32 1, !dbg !674
  store %struct._vector* %22, %struct._vector** %24, align 8, !dbg !675
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !676
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 1, !dbg !678
  %27 = load %struct._vector*, %struct._vector** %26, align 8, !dbg !678
  %28 = icmp ne %struct._vector* %27, null, !dbg !676
  br i1 %28, label %33, label %29, !dbg !679

; <label>:29:                                     ; preds = %20
  %30 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !680
  %31 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %30, i32 0, i32 0, !dbg !681
  %32 = load i8*, i8** %31, align 8, !dbg !681
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.83, i32 0, i32 0), i8* %32), !dbg !682
  br label %33, !dbg !682

; <label>:33:                                     ; preds = %16, %29, %20
  ret void, !dbg !683
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_group_track_if_handler(%struct._vector*) #0 !dbg !684 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !685, metadata !220), !dbg !686
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !687
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !688
  %5 = load i8**, i8*** %4, align 8, !dbg !688
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !689
  %7 = load i8*, i8** %6, align 8, !dbg !689
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_group_track_if, i8* %7), !dbg !690
  ret void, !dbg !691
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_group_track_scr_handler(%struct._vector*) #0 !dbg !692 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !693, metadata !220), !dbg !694
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !695
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !696
  %5 = load i8**, i8*** %4, align 8, !dbg !696
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !697
  %7 = load i8*, i8** %6, align 8, !dbg !697
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_group_track_script, i8* %7), !dbg !698
  ret void, !dbg !699
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_group_track_file_handler(%struct._vector*) #0 !dbg !700 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !701, metadata !220), !dbg !702
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !703
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !704
  %5 = load i8**, i8*** %4, align 8, !dbg !704
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !705
  %7 = load i8*, i8** %6, align 8, !dbg !705
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_group_track_file, i8* %7), !dbg !706
  ret void, !dbg !707
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gnotify_backup_handler(%struct._vector*) #0 !dbg !708 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !709, metadata !220), !dbg !710
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !711, metadata !220), !dbg !712
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !713
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !714
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !714
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !715
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !715
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !716
  %10 = load i8*, i8** %9, align 8, !dbg !716
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !717
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !712
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !718
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 12, !dbg !720
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !720
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !718
  br i1 %15, label %16, label %22, !dbg !721

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !722
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !724
  %19 = load i8*, i8** %18, align 8, !dbg !724
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !725
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !726
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.84, i32 0, i32 0), i8* %19, i8* %21), !dbg !727
  br label %29, !dbg !729

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !730
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !731
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !732
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 12, !dbg !733
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !734
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !735
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 11, !dbg !736
  store i8 1, i8* %28, align 8, !dbg !737
  br label %29, !dbg !738

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !739
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gnotify_master_handler(%struct._vector*) #0 !dbg !741 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !742, metadata !220), !dbg !743
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !744, metadata !220), !dbg !745
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !746
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !747
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !747
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !748
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !748
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !749
  %10 = load i8*, i8** %9, align 8, !dbg !749
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !750
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !745
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !751
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 13, !dbg !753
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !753
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !751
  br i1 %15, label %16, label %22, !dbg !754

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !755
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !757
  %19 = load i8*, i8** %18, align 8, !dbg !757
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !758
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !759
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.85, i32 0, i32 0), i8* %19, i8* %21), !dbg !760
  br label %29, !dbg !762

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !763
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !764
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !765
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 13, !dbg !766
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !767
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !768
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 11, !dbg !769
  store i8 1, i8* %28, align 8, !dbg !770
  br label %29, !dbg !771

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !772
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gnotify_fault_handler(%struct._vector*) #0 !dbg !774 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !775, metadata !220), !dbg !776
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !777, metadata !220), !dbg !778
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !779
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !780
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !780
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !781
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !781
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !782
  %10 = load i8*, i8** %9, align 8, !dbg !782
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !783
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !778
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !784
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 14, !dbg !786
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !786
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !784
  br i1 %15, label %16, label %22, !dbg !787

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !788
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !790
  %19 = load i8*, i8** %18, align 8, !dbg !790
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !791
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !792
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.86, i32 0, i32 0), i8* %19, i8* %21), !dbg !793
  br label %29, !dbg !795

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !796
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !797
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !798
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 14, !dbg !799
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !800
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !801
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 11, !dbg !802
  store i8 1, i8* %28, align 8, !dbg !803
  br label %29, !dbg !804

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !805
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gnotify_stop_handler(%struct._vector*) #0 !dbg !807 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !808, metadata !220), !dbg !809
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !810, metadata !220), !dbg !811
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !812
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !813
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !813
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !814
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !814
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !815
  %10 = load i8*, i8** %9, align 8, !dbg !815
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !816
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !811
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !817
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 15, !dbg !819
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !819
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !817
  br i1 %15, label %16, label %22, !dbg !820

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !821
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !823
  %19 = load i8*, i8** %18, align 8, !dbg !823
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !824
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !825
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.87, i32 0, i32 0), i8* %19, i8* %21), !dbg !826
  br label %29, !dbg !828

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !829
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !830
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !831
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 15, !dbg !832
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !833
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !834
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 11, !dbg !835
  store i8 1, i8* %28, align 8, !dbg !836
  br label %29, !dbg !837

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !838
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gnotify_handler(%struct._vector*) #0 !dbg !840 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !841, metadata !220), !dbg !842
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !843, metadata !220), !dbg !844
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !845
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !846
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !846
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !847
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !847
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !848
  %10 = load i8*, i8** %9, align 8, !dbg !848
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !849
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !844
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !850
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 16, !dbg !852
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !852
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !850
  br i1 %15, label %16, label %22, !dbg !853

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !854
  %18 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %17, i32 0, i32 0, !dbg !856
  %19 = load i8*, i8** %18, align 8, !dbg !856
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !857
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !858
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.88, i32 0, i32 0), i8* %19, i8* %21), !dbg !859
  br label %29, !dbg !861

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !862
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 4), !dbg !863
  %25 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !864
  %26 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %25, i32 0, i32 16, !dbg !865
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !866
  %27 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !867
  %28 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %27, i32 0, i32 11, !dbg !868
  store i8 1, i8* %28, align 8, !dbg !869
  br label %29, !dbg !870

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !871
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gsmtp_handler(%struct._vector*) #0 !dbg !873 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !874, metadata !220), !dbg !875
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !876, metadata !220), !dbg !877
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !878
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 4, !dbg !879
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !879
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !880
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !880
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !881
  %11 = load i8*, i8** %10, align 8, !dbg !881
  %12 = bitcast i8* %11 to %struct._vrrp_sgroup*, !dbg !882
  store %struct._vrrp_sgroup* %12, %struct._vrrp_sgroup** %3, align 8, !dbg !877
  call void @llvm.dbg.declare(metadata i32* %4, metadata !883, metadata !220), !dbg !884
  store i32 1, i32* %4, align 4, !dbg !884
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !885
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !887
  %15 = load i32, i32* %14, align 4, !dbg !887
  %16 = icmp uge i32 %15, 2, !dbg !888
  br i1 %16, label %17, label %27, !dbg !889

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !890
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !892
  %20 = call i32 @check_true_false(i8* %19), !dbg !893
  store i32 %20, i32* %4, align 4, !dbg !895
  %21 = load i32, i32* %4, align 4, !dbg !896
  %22 = icmp eq i32 %21, -1, !dbg !898
  br i1 %22, label %23, label %26, !dbg !899

; <label>:23:                                     ; preds = %17
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !900
  %25 = call i8* @strvec_slot(%struct._vector* %24, i64 1), !dbg !902
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* %25), !dbg !903
  br label %31, !dbg !905

; <label>:26:                                     ; preds = %17
  br label %27, !dbg !906

; <label>:27:                                     ; preds = %26, %1
  %28 = load i32, i32* %4, align 4, !dbg !907
  %29 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !908
  %30 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %29, i32 0, i32 17, !dbg !909
  store i32 %28, i32* %30, align 8, !dbg !910
  br label %31, !dbg !911

; <label>:31:                                     ; preds = %27, %23
  ret void, !dbg !912
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gglobal_tracking_handler(%struct._vector*) #0 !dbg !914 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !915, metadata !220), !dbg !916
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !917, metadata !220), !dbg !918
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !919
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !920
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !920
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !921
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !921
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !922
  %10 = load i8*, i8** %9, align 8, !dbg !922
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !923
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !918
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !924
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 0, !dbg !925
  %14 = load i8*, i8** %13, align 8, !dbg !925
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.90, i32 0, i32 0), i8* %14), !dbg !926
  %15 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !927
  %16 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %15, i32 0, i32 6, !dbg !928
  store i8 1, i8* %16, align 4, !dbg !929
  ret void, !dbg !930
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_sg_tracking_weight_handler(%struct._vector*) #0 !dbg !931 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_sgroup*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !932, metadata !220), !dbg !933
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %3, metadata !934, metadata !220), !dbg !935
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !936
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 4, !dbg !937
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !937
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !938
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !938
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !939
  %10 = load i8*, i8** %9, align 8, !dbg !939
  %11 = bitcast i8* %10 to %struct._vrrp_sgroup*, !dbg !940
  store %struct._vrrp_sgroup* %11, %struct._vrrp_sgroup** %3, align 8, !dbg !935
  %12 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %3, align 8, !dbg !941
  %13 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %12, i32 0, i32 6, !dbg !942
  store i8 1, i8* %13, align 4, !dbg !943
  ret void, !dbg !944
}

; Function Attrs: nounwind uwtable
define internal void @garp_group_handler(%struct._vector*) #0 !dbg !945 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !946, metadata !220), !dbg !947
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !948
  %4 = icmp ne %struct._vector* %3, null, !dbg !948
  br i1 %4, label %6, label %5, !dbg !950

; <label>:5:                                      ; preds = %1
  br label %7, !dbg !951

; <label>:6:                                      ; preds = %1
  call void @alloc_garp_delay(), !dbg !952
  br label %7, !dbg !953

; <label>:7:                                      ; preds = %6, %5
  ret void, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal void @garp_group_garp_interval_handler(%struct._vector*) #0 !dbg !956 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._garp_delay*, align 8
  %4 = alloca double, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !957, metadata !220), !dbg !958
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %3, metadata !959, metadata !220), !dbg !978
  %5 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !979
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !980
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !980
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !981
  %9 = load i8*, i8** %8, align 8, !dbg !981
  %10 = bitcast i8* %9 to %struct._garp_delay*, !dbg !982
  store %struct._garp_delay* %10, %struct._garp_delay** %3, align 8, !dbg !978
  call void @llvm.dbg.declare(metadata double* %4, metadata !983, metadata !220), !dbg !985
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !986
  %12 = call zeroext i1 @read_double_strvec(%struct._vector* %11, i64 1, double* %4, double 0.000000e+00, double 2.147000e+03, i1 zeroext true), !dbg !988
  br i1 %12, label %16, label %13, !dbg !989

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !990
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !992
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i32 0, i32 0), i8* %15), !dbg !993
  br label %44, !dbg !995

; <label>:16:                                     ; preds = %1
  %17 = load double, double* %4, align 8, !dbg !996
  %18 = fptosi double %17 to i64, !dbg !997
  %19 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !998
  %20 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %19, i32 0, i32 0, !dbg !999
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0, !dbg !1000
  store i64 %18, i64* %21, align 8, !dbg !1001
  %22 = load double, double* %4, align 8, !dbg !1002
  %23 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1003
  %24 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %23, i32 0, i32 0, !dbg !1004
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0, !dbg !1005
  %26 = load i64, i64* %25, align 8, !dbg !1005
  %27 = sitofp i64 %26 to double, !dbg !1003
  %28 = fsub double %22, %27, !dbg !1006
  %29 = fmul double %28, 1.000000e+06, !dbg !1007
  %30 = fptosi double %29 to i64, !dbg !1008
  %31 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1009
  %32 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %31, i32 0, i32 0, !dbg !1010
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1, !dbg !1011
  store i64 %30, i64* %33, align 8, !dbg !1012
  %34 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1013
  %35 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %34, i32 0, i32 1, !dbg !1014
  store i8 1, i8* %35, align 8, !dbg !1015
  %36 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1016
  %37 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %36, i32 0, i32 0, !dbg !1018
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 0, !dbg !1019
  %39 = load i64, i64* %38, align 8, !dbg !1019
  %40 = icmp sge i64 %39, 1, !dbg !1020
  br i1 %40, label %41, label %44, !dbg !1021

; <label>:41:                                     ; preds = %16
  %42 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1022
  %43 = call i8* @strvec_slot(%struct._vector* %42, i64 1), !dbg !1023
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0), i8* %43), !dbg !1024
  br label %44, !dbg !1026

; <label>:44:                                     ; preds = %13, %41, %16
  ret void, !dbg !1027
}

; Function Attrs: nounwind uwtable
define internal void @garp_group_gna_interval_handler(%struct._vector*) #0 !dbg !1028 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._garp_delay*, align 8
  %4 = alloca double, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1029, metadata !220), !dbg !1030
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %3, metadata !1031, metadata !220), !dbg !1032
  %5 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1033
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1034
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1034
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1035
  %9 = load i8*, i8** %8, align 8, !dbg !1035
  %10 = bitcast i8* %9 to %struct._garp_delay*, !dbg !1036
  store %struct._garp_delay* %10, %struct._garp_delay** %3, align 8, !dbg !1032
  call void @llvm.dbg.declare(metadata double* %4, metadata !1037, metadata !220), !dbg !1038
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1039
  %12 = call zeroext i1 @read_double_strvec(%struct._vector* %11, i64 1, double* %4, double 0.000000e+00, double 2.147000e+03, i1 zeroext true), !dbg !1041
  br i1 %12, label %16, label %13, !dbg !1042

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1043
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !1045
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.93, i32 0, i32 0), i8* %15), !dbg !1046
  br label %44, !dbg !1048

; <label>:16:                                     ; preds = %1
  %17 = load double, double* %4, align 8, !dbg !1049
  %18 = fptosi double %17 to i64, !dbg !1050
  %19 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1051
  %20 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %19, i32 0, i32 2, !dbg !1052
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0, !dbg !1053
  store i64 %18, i64* %21, align 8, !dbg !1054
  %22 = load double, double* %4, align 8, !dbg !1055
  %23 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1056
  %24 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %23, i32 0, i32 2, !dbg !1057
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0, !dbg !1058
  %26 = load i64, i64* %25, align 8, !dbg !1058
  %27 = sitofp i64 %26 to double, !dbg !1056
  %28 = fsub double %22, %27, !dbg !1059
  %29 = fmul double %28, 1.000000e+06, !dbg !1060
  %30 = fptosi double %29 to i64, !dbg !1061
  %31 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1062
  %32 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %31, i32 0, i32 2, !dbg !1063
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1, !dbg !1064
  store i64 %30, i64* %33, align 8, !dbg !1065
  %34 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1066
  %35 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %34, i32 0, i32 3, !dbg !1067
  store i8 1, i8* %35, align 8, !dbg !1068
  %36 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1069
  %37 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %36, i32 0, i32 2, !dbg !1071
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 0, !dbg !1072
  %39 = load i64, i64* %38, align 8, !dbg !1072
  %40 = icmp sge i64 %39, 1, !dbg !1073
  br i1 %40, label %41, label %44, !dbg !1074

; <label>:41:                                     ; preds = %16
  %42 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1075
  %43 = call i8* @strvec_slot(%struct._vector* %42, i64 1), !dbg !1076
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i32 0, i32 0), i8* %43), !dbg !1077
  br label %44, !dbg !1079

; <label>:44:                                     ; preds = %13, %41, %16
  ret void, !dbg !1080
}

; Function Attrs: nounwind uwtable
define internal void @garp_group_interface_handler(%struct._vector*) #0 !dbg !1081 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._interface*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1082, metadata !220), !dbg !1083
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !1084, metadata !220), !dbg !1148
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1149
  %5 = call i8* @strvec_slot(%struct._vector* %4, i64 1), !dbg !1150
  %6 = call %struct._interface* @if_get_by_ifname(i8* %5, i32 1), !dbg !1151
  store %struct._interface* %6, %struct._interface** %3, align 8, !dbg !1148
  %7 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1153
  %8 = icmp ne %struct._interface* %7, null, !dbg !1153
  br i1 %8, label %12, label %9, !dbg !1155

; <label>:9:                                      ; preds = %1
  %10 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1156
  %11 = call i8* @strvec_slot(%struct._vector* %10, i64 1), !dbg !1158
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.95, i32 0, i32 0), i8* %11), !dbg !1159
  br label %38, !dbg !1161

; <label>:12:                                     ; preds = %1
  %13 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1162
  %14 = getelementptr inbounds %struct._interface, %struct._interface* %13, i32 0, i32 18, !dbg !1164
  %15 = load %struct._garp_delay*, %struct._garp_delay** %14, align 8, !dbg !1164
  %16 = icmp ne %struct._garp_delay* %15, null, !dbg !1162
  br i1 %16, label %17, label %20, !dbg !1165

; <label>:17:                                     ; preds = %12
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1166
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !1168
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i32 0, i32 0), i8* %19), !dbg !1169
  br label %38, !dbg !1171

; <label>:20:                                     ; preds = %12
  %21 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1172
  %22 = getelementptr inbounds %struct._interface, %struct._interface* %21, i32 0, i32 12, !dbg !1174
  %23 = load i8, i8* %22, align 4, !dbg !1174
  %24 = trunc i8 %23 to i1, !dbg !1174
  br i1 %24, label %25, label %29, !dbg !1175

; <label>:25:                                     ; preds = %20
  %26 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1176
  %27 = getelementptr inbounds %struct._interface, %struct._interface* %26, i32 0, i32 0, !dbg !1178
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i32 0, i32 0, !dbg !1176
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.97, i32 0, i32 0), i8* %28), !dbg !1179
  br label %38, !dbg !1180

; <label>:29:                                     ; preds = %20
  %30 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1181
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 1, !dbg !1182
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !1182
  %33 = getelementptr inbounds %struct._element, %struct._element* %32, i32 0, i32 2, !dbg !1183
  %34 = load i8*, i8** %33, align 8, !dbg !1183
  %35 = bitcast i8* %34 to %struct._garp_delay*, !dbg !1184
  %36 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1185
  %37 = getelementptr inbounds %struct._interface, %struct._interface* %36, i32 0, i32 18, !dbg !1186
  store %struct._garp_delay* %35, %struct._garp_delay** %37, align 8, !dbg !1187
  br label %38, !dbg !1188

; <label>:38:                                     ; preds = %29, %25, %17, %9
  ret void, !dbg !1189
}

; Function Attrs: nounwind uwtable
define internal void @garp_group_interfaces_handler(%struct._vector*) #0 !dbg !1190 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._garp_delay*, align 8
  %4 = alloca %struct._interface*, align 8
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._garp_delay*, align 8
  %8 = alloca %struct._element*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1191, metadata !220), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %3, metadata !1193, metadata !220), !dbg !1194
  %9 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1195
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 1, !dbg !1196
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !1196
  %12 = getelementptr inbounds %struct._element, %struct._element* %11, i32 0, i32 2, !dbg !1197
  %13 = load i8*, i8** %12, align 8, !dbg !1197
  %14 = bitcast i8* %13 to %struct._garp_delay*, !dbg !1198
  store %struct._garp_delay* %14, %struct._garp_delay** %3, align 8, !dbg !1194
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !1199, metadata !220), !dbg !1200
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !1201, metadata !220), !dbg !1202
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1203
  %16 = call %struct._vector* @read_value_block(%struct._vector* %15), !dbg !1204
  store %struct._vector* %16, %struct._vector** %5, align 8, !dbg !1202
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1205, metadata !220), !dbg !1206
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %7, metadata !1207, metadata !220), !dbg !1208
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !1209, metadata !220), !dbg !1210
  %17 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !1211
  %18 = icmp ne %struct._vector* %17, null, !dbg !1211
  br i1 %18, label %20, label %19, !dbg !1213

; <label>:19:                                     ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.98, i32 0, i32 0)), !dbg !1214
  br label %116, !dbg !1216

; <label>:20:                                     ; preds = %1
  %21 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1217
  %22 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %21, i32 0, i32 6, !dbg !1218
  store i32 1, i32* %22, align 8, !dbg !1219
  %23 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1220
  %24 = icmp ne %struct._list* %23, null, !dbg !1222
  br i1 %24, label %26, label %25, !dbg !1223

; <label>:25:                                     ; preds = %20
  br label %30, !dbg !1224

; <label>:26:                                     ; preds = %20
  %27 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1226
  %28 = getelementptr inbounds %struct._list, %struct._list* %27, i32 0, i32 0, !dbg !1228
  %29 = load %struct._element*, %struct._element** %28, align 8, !dbg !1228
  br label %30, !dbg !1229

; <label>:30:                                     ; preds = %26, %25
  %31 = phi %struct._element* [ null, %25 ], [ %29, %26 ], !dbg !1230
  store %struct._element* %31, %struct._element** %8, align 8, !dbg !1232
  br label %32, !dbg !1233

; <label>:32:                                     ; preds = %54, %30
  %33 = load %struct._element*, %struct._element** %8, align 8, !dbg !1234
  %34 = icmp ne %struct._element* %33, null, !dbg !1237
  br i1 %34, label %35, label %58, !dbg !1237

; <label>:35:                                     ; preds = %32
  %36 = load %struct._element*, %struct._element** %8, align 8, !dbg !1238
  %37 = getelementptr inbounds %struct._element, %struct._element* %36, i32 0, i32 2, !dbg !1240
  %38 = load i8*, i8** %37, align 8, !dbg !1240
  %39 = bitcast i8* %38 to %struct._garp_delay*, !dbg !1241
  store %struct._garp_delay* %39, %struct._garp_delay** %7, align 8, !dbg !1242
  %40 = load %struct._garp_delay*, %struct._garp_delay** %7, align 8, !dbg !1243
  %41 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %40, i32 0, i32 6, !dbg !1245
  %42 = load i32, i32* %41, align 8, !dbg !1245
  %43 = icmp ne i32 %42, 0, !dbg !1243
  br i1 %43, label %44, label %53, !dbg !1246

; <label>:44:                                     ; preds = %35
  %45 = load %struct._garp_delay*, %struct._garp_delay** %7, align 8, !dbg !1247
  %46 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1249
  %47 = icmp ne %struct._garp_delay* %45, %46, !dbg !1250
  br i1 %47, label %48, label %53, !dbg !1251

; <label>:48:                                     ; preds = %44
  %49 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1252
  %50 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %49, i32 0, i32 6, !dbg !1253
  %51 = load i32, i32* %50, align 8, !dbg !1254
  %52 = add nsw i32 %51, 1, !dbg !1254
  store i32 %52, i32* %50, align 8, !dbg !1254
  br label %53, !dbg !1252

; <label>:53:                                     ; preds = %48, %44, %35
  br label %54, !dbg !1255

; <label>:54:                                     ; preds = %53
  %55 = load %struct._element*, %struct._element** %8, align 8, !dbg !1256
  %56 = getelementptr inbounds %struct._element, %struct._element* %55, i32 0, i32 0, !dbg !1258
  %57 = load %struct._element*, %struct._element** %56, align 8, !dbg !1258
  store %struct._element* %57, %struct._element** %8, align 8, !dbg !1259
  br label %32, !dbg !1260, !llvm.loop !1261

; <label>:58:                                     ; preds = %32
  store i64 0, i64* %6, align 8, !dbg !1263
  br label %59, !dbg !1265

; <label>:59:                                     ; preds = %111, %58
  %60 = load i64, i64* %6, align 8, !dbg !1266
  %61 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !1269
  %62 = getelementptr inbounds %struct._vector, %struct._vector* %61, i32 0, i32 1, !dbg !1270
  %63 = load i32, i32* %62, align 4, !dbg !1270
  %64 = zext i32 %63 to i64, !dbg !1271
  %65 = icmp ult i64 %60, %64, !dbg !1272
  br i1 %65, label %66, label %114, !dbg !1273

; <label>:66:                                     ; preds = %59
  %67 = load i64, i64* %6, align 8, !dbg !1274
  %68 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !1276
  %69 = getelementptr inbounds %struct._vector, %struct._vector* %68, i32 0, i32 2, !dbg !1277
  %70 = load i8**, i8*** %69, align 8, !dbg !1277
  %71 = getelementptr inbounds i8*, i8** %70, i64 %67, !dbg !1278
  %72 = load i8*, i8** %71, align 8, !dbg !1278
  %73 = call %struct._interface* @if_get_by_ifname(i8* %72, i32 1), !dbg !1279
  store %struct._interface* %73, %struct._interface** %4, align 8, !dbg !1280
  %74 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1281
  %75 = icmp ne %struct._interface* %74, null, !dbg !1281
  br i1 %75, label %90, label %76, !dbg !1283

; <label>:76:                                     ; preds = %66
  %77 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1284
  %78 = getelementptr inbounds %struct._data, %struct._data* %77, i32 0, i32 11, !dbg !1287
  %79 = load i8, i8* %78, align 4, !dbg !1287
  %80 = trunc i8 %79 to i1, !dbg !1287
  br i1 %80, label %81, label %85, !dbg !1288

; <label>:81:                                     ; preds = %76
  %82 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1289
  %83 = load i64, i64* %6, align 8, !dbg !1290
  %84 = call i8* @strvec_slot(%struct._vector* %82, i64 %83), !dbg !1291
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.95, i32 0, i32 0), i8* %84), !dbg !1292
  br label %89, !dbg !1294

; <label>:85:                                     ; preds = %76
  %86 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1295
  %87 = load i64, i64* %6, align 8, !dbg !1296
  %88 = call i8* @strvec_slot(%struct._vector* %86, i64 %87), !dbg !1297
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.95, i32 0, i32 0), i8* %88), !dbg !1298
  br label %89

; <label>:89:                                     ; preds = %85, %81
  br label %111, !dbg !1299

; <label>:90:                                     ; preds = %66
  %91 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1300
  %92 = getelementptr inbounds %struct._interface, %struct._interface* %91, i32 0, i32 18, !dbg !1302
  %93 = load %struct._garp_delay*, %struct._garp_delay** %92, align 8, !dbg !1302
  %94 = icmp ne %struct._garp_delay* %93, null, !dbg !1300
  br i1 %94, label %95, label %98, !dbg !1303

; <label>:95:                                     ; preds = %90
  %96 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1304
  %97 = call i8* @strvec_slot(%struct._vector* %96, i64 1), !dbg !1306
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i32 0, i32 0), i8* %97), !dbg !1307
  br label %111, !dbg !1309

; <label>:98:                                     ; preds = %90
  %99 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1310
  %100 = getelementptr inbounds %struct._interface, %struct._interface* %99, i32 0, i32 12, !dbg !1312
  %101 = load i8, i8* %100, align 4, !dbg !1312
  %102 = trunc i8 %101 to i1, !dbg !1312
  br i1 %102, label %103, label %107, !dbg !1313

; <label>:103:                                    ; preds = %98
  %104 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1314
  %105 = getelementptr inbounds %struct._interface, %struct._interface* %104, i32 0, i32 0, !dbg !1316
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %105, i32 0, i32 0, !dbg !1314
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.97, i32 0, i32 0), i8* %106), !dbg !1317
  br label %111, !dbg !1318

; <label>:107:                                    ; preds = %98
  %108 = load %struct._garp_delay*, %struct._garp_delay** %3, align 8, !dbg !1319
  %109 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1320
  %110 = getelementptr inbounds %struct._interface, %struct._interface* %109, i32 0, i32 18, !dbg !1321
  store %struct._garp_delay* %108, %struct._garp_delay** %110, align 8, !dbg !1322
  br label %111, !dbg !1323

; <label>:111:                                    ; preds = %107, %103, %95, %89
  %112 = load i64, i64* %6, align 8, !dbg !1324
  %113 = add i64 %112, 1, !dbg !1324
  store i64 %113, i64* %6, align 8, !dbg !1324
  br label %59, !dbg !1326, !llvm.loop !1327

; <label>:114:                                    ; preds = %59
  %115 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !1329
  call void @free_strvec(%struct._vector* %115), !dbg !1330
  br label %116, !dbg !1331

; <label>:116:                                    ; preds = %114, %19
  ret void, !dbg !1332
}

declare void @install_sublevel_end_handler(void ()*) #2

; Function Attrs: nounwind uwtable
define internal void @garp_group_end_handler() #0 !dbg !1334 {
  %1 = alloca %struct._garp_delay*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._interface*, align 8
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %1, metadata !1337, metadata !220), !dbg !1338
  %5 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1339
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1340
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1340
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1341
  %9 = load i8*, i8** %8, align 8, !dbg !1341
  %10 = bitcast i8* %9 to %struct._garp_delay*, !dbg !1342
  store %struct._garp_delay* %10, %struct._garp_delay** %1, align 8, !dbg !1338
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !1343, metadata !220), !dbg !1344
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !1345, metadata !220), !dbg !1346
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !1347, metadata !220), !dbg !1348
  %11 = load %struct._garp_delay*, %struct._garp_delay** %1, align 8, !dbg !1349
  %12 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %11, i32 0, i32 1, !dbg !1351
  %13 = load i8, i8* %12, align 8, !dbg !1351
  %14 = trunc i8 %13 to i1, !dbg !1351
  br i1 %14, label %69, label %15, !dbg !1352

; <label>:15:                                     ; preds = %0
  %16 = load %struct._garp_delay*, %struct._garp_delay** %1, align 8, !dbg !1353
  %17 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %16, i32 0, i32 3, !dbg !1355
  %18 = load i8, i8* %17, align 8, !dbg !1355
  %19 = trunc i8 %18 to i1, !dbg !1355
  br i1 %19, label %69, label %20, !dbg !1356

; <label>:20:                                     ; preds = %15
  %21 = load %struct._garp_delay*, %struct._garp_delay** %1, align 8, !dbg !1357
  %22 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %21, i32 0, i32 6, !dbg !1359
  %23 = load i32, i32* %22, align 8, !dbg !1359
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i32 0, i32 0), i32 %23), !dbg !1360
  %24 = call %struct._list* @get_if_list(), !dbg !1361
  %25 = icmp ne %struct._list* %24, null, !dbg !1361
  br i1 %25, label %26, label %36, !dbg !1363

; <label>:26:                                     ; preds = %20
  %27 = call %struct._list* @get_if_list(), !dbg !1364
  %28 = icmp ne %struct._list* %27, null, !dbg !1364
  br i1 %28, label %30, label %29, !dbg !1366

; <label>:29:                                     ; preds = %26
  br label %34, !dbg !1367

; <label>:30:                                     ; preds = %26
  %31 = call %struct._list* @get_if_list(), !dbg !1369
  %32 = getelementptr inbounds %struct._list, %struct._list* %31, i32 0, i32 0, !dbg !1371
  %33 = load %struct._element*, %struct._element** %32, align 8, !dbg !1371
  br label %34, !dbg !1372

; <label>:34:                                     ; preds = %30, %29
  %35 = phi %struct._element* [ null, %29 ], [ %33, %30 ], !dbg !1373
  br label %37, !dbg !1375

; <label>:36:                                     ; preds = %20
  br label %37, !dbg !1376

; <label>:37:                                     ; preds = %36, %34
  %38 = phi %struct._element* [ %35, %34 ], [ null, %36 ], !dbg !1378
  store %struct._element* %38, %struct._element** %2, align 8, !dbg !1380
  br label %39, !dbg !1381

; <label>:39:                                     ; preds = %62, %37
  %40 = load %struct._element*, %struct._element** %2, align 8, !dbg !1382
  %41 = icmp ne %struct._element* %40, null, !dbg !1385
  br i1 %41, label %42, label %50, !dbg !1386

; <label>:42:                                     ; preds = %39
  %43 = load %struct._element*, %struct._element** %2, align 8, !dbg !1387
  %44 = getelementptr inbounds %struct._element, %struct._element* %43, i32 0, i32 0, !dbg !1389
  %45 = load %struct._element*, %struct._element** %44, align 8, !dbg !1389
  store %struct._element* %45, %struct._element** %3, align 8, !dbg !1390
  %46 = load %struct._element*, %struct._element** %2, align 8, !dbg !1391
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 2, !dbg !1392
  %48 = load i8*, i8** %47, align 8, !dbg !1392
  %49 = bitcast i8* %48 to %struct._interface*, !dbg !1393
  store %struct._interface* %49, %struct._interface** %4, align 8, !dbg !1394
  br label %50

; <label>:50:                                     ; preds = %42, %39
  %51 = phi i1 [ false, %39 ], [ true, %42 ]
  br i1 %51, label %52, label %64, !dbg !1395

; <label>:52:                                     ; preds = %50
  %53 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1397
  %54 = getelementptr inbounds %struct._interface, %struct._interface* %53, i32 0, i32 18, !dbg !1400
  %55 = load %struct._garp_delay*, %struct._garp_delay** %54, align 8, !dbg !1400
  %56 = load %struct._garp_delay*, %struct._garp_delay** %1, align 8, !dbg !1401
  %57 = icmp eq %struct._garp_delay* %55, %56, !dbg !1402
  br i1 %57, label %58, label %61, !dbg !1403

; <label>:58:                                     ; preds = %52
  %59 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1404
  %60 = getelementptr inbounds %struct._interface, %struct._interface* %59, i32 0, i32 18, !dbg !1405
  store %struct._garp_delay* null, %struct._garp_delay** %60, align 8, !dbg !1406
  br label %61, !dbg !1404

; <label>:61:                                     ; preds = %58, %52
  br label %62, !dbg !1407

; <label>:62:                                     ; preds = %61
  %63 = load %struct._element*, %struct._element** %3, align 8, !dbg !1408
  store %struct._element* %63, %struct._element** %2, align 8, !dbg !1410
  br label %39, !dbg !1411, !llvm.loop !1412

; <label>:64:                                     ; preds = %50
  %65 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1414
  %66 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1415
  %67 = getelementptr inbounds %struct._list, %struct._list* %66, i32 0, i32 1, !dbg !1416
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !1416
  call void @free_list_element(%struct._list* %65, %struct._element* %68), !dbg !1417
  br label %69, !dbg !1418

; <label>:69:                                     ; preds = %64, %15, %0
  ret void, !dbg !1419
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_handler(%struct._vector*) #0 !dbg !1420 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._list*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._vrrp_t*, align 8
  %6 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1421, metadata !220), !dbg !1422
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !1423, metadata !220), !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !1425, metadata !220), !dbg !1426
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %5, metadata !1427, metadata !220), !dbg !1649
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1650, metadata !220), !dbg !1651
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1652
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 44, !dbg !1653
  store i8 1, i8* %8, align 2, !dbg !1654
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1655
  %10 = icmp ne %struct._vector* %9, null, !dbg !1655
  br i1 %10, label %12, label %11, !dbg !1657

; <label>:11:                                     ; preds = %1
  br label %75, !dbg !1658

; <label>:12:                                     ; preds = %1
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1659
  %14 = call i32 @vector_count(%struct._vector* %13), !dbg !1661
  %15 = icmp ne i32 %14, 2, !dbg !1662
  br i1 %15, label %16, label %17, !dbg !1663

; <label>:16:                                     ; preds = %12
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i32 0, i32 0)), !dbg !1664
  call void @skip_block(i1 zeroext true), !dbg !1666
  br label %75, !dbg !1667

; <label>:17:                                     ; preds = %12
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1668
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !1669
  store i8* %19, i8** %6, align 8, !dbg !1670
  %20 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1671
  %21 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %20, i32 0, i32 5, !dbg !1673
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !1673
  %23 = icmp eq %struct._list* %22, null, !dbg !1674
  br i1 %23, label %73, label %24, !dbg !1675

; <label>:24:                                     ; preds = %17
  %25 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1676
  %26 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %25, i32 0, i32 5, !dbg !1678
  %27 = load %struct._list*, %struct._list** %26, align 8, !dbg !1678
  %28 = getelementptr inbounds %struct._list, %struct._list* %27, i32 0, i32 0, !dbg !1679
  %29 = load %struct._element*, %struct._element** %28, align 8, !dbg !1679
  %30 = icmp eq %struct._element* %29, null, !dbg !1680
  br i1 %30, label %31, label %38, !dbg !1681

; <label>:31:                                     ; preds = %24
  %32 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1682
  %33 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %32, i32 0, i32 5, !dbg !1684
  %34 = load %struct._list*, %struct._list** %33, align 8, !dbg !1684
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 1, !dbg !1685
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !1685
  %37 = icmp eq %struct._element* %36, null, !dbg !1686
  br i1 %37, label %73, label %38, !dbg !1687

; <label>:38:                                     ; preds = %31, %24
  %39 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1688
  %40 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %39, i32 0, i32 5, !dbg !1690
  %41 = load %struct._list*, %struct._list** %40, align 8, !dbg !1690
  store %struct._list* %41, %struct._list** %3, align 8, !dbg !1691
  %42 = load %struct._list*, %struct._list** %3, align 8, !dbg !1692
  %43 = icmp ne %struct._list* %42, null, !dbg !1694
  br i1 %43, label %45, label %44, !dbg !1695

; <label>:44:                                     ; preds = %38
  br label %49, !dbg !1696

; <label>:45:                                     ; preds = %38
  %46 = load %struct._list*, %struct._list** %3, align 8, !dbg !1698
  %47 = getelementptr inbounds %struct._list, %struct._list* %46, i32 0, i32 0, !dbg !1700
  %48 = load %struct._element*, %struct._element** %47, align 8, !dbg !1700
  br label %49, !dbg !1701

; <label>:49:                                     ; preds = %45, %44
  %50 = phi %struct._element* [ null, %44 ], [ %48, %45 ], !dbg !1702
  store %struct._element* %50, %struct._element** %4, align 8, !dbg !1704
  br label %51, !dbg !1705

; <label>:51:                                     ; preds = %68, %49
  %52 = load %struct._element*, %struct._element** %4, align 8, !dbg !1706
  %53 = icmp ne %struct._element* %52, null, !dbg !1709
  br i1 %53, label %54, label %72, !dbg !1709

; <label>:54:                                     ; preds = %51
  %55 = load %struct._element*, %struct._element** %4, align 8, !dbg !1710
  %56 = getelementptr inbounds %struct._element, %struct._element* %55, i32 0, i32 2, !dbg !1712
  %57 = load i8*, i8** %56, align 8, !dbg !1712
  %58 = bitcast i8* %57 to %struct._vrrp_t*, !dbg !1713
  store %struct._vrrp_t* %58, %struct._vrrp_t** %5, align 8, !dbg !1714
  %59 = load i8*, i8** %6, align 8, !dbg !1715
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1717
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 1, !dbg !1718
  %62 = load i8*, i8** %61, align 8, !dbg !1718
  %63 = call i32 @strcmp(i8* %59, i8* %62) #8, !dbg !1719
  %64 = icmp ne i32 %63, 0, !dbg !1719
  br i1 %64, label %67, label %65, !dbg !1720

; <label>:65:                                     ; preds = %54
  %66 = load i8*, i8** %6, align 8, !dbg !1721
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.101, i32 0, i32 0), i8* %66), !dbg !1723
  call void @skip_block(i1 zeroext true), !dbg !1724
  br label %75, !dbg !1725

; <label>:67:                                     ; preds = %54
  br label %68, !dbg !1726

; <label>:68:                                     ; preds = %67
  %69 = load %struct._element*, %struct._element** %4, align 8, !dbg !1727
  %70 = getelementptr inbounds %struct._element, %struct._element* %69, i32 0, i32 0, !dbg !1729
  %71 = load %struct._element*, %struct._element** %70, align 8, !dbg !1729
  store %struct._element* %71, %struct._element** %4, align 8, !dbg !1730
  br label %51, !dbg !1731, !llvm.loop !1732

; <label>:72:                                     ; preds = %51
  br label %73, !dbg !1734

; <label>:73:                                     ; preds = %72, %31, %17
  %74 = load i8*, i8** %6, align 8, !dbg !1735
  call void @alloc_vrrp(i8* %74), !dbg !1736
  br label %75, !dbg !1737

; <label>:75:                                     ; preds = %73, %65, %16, %11
  ret void, !dbg !1738
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vmac_handler(%struct._vector*) #0 !dbg !1740 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._interface*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1741, metadata !220), !dbg !1742
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1743, metadata !220), !dbg !1744
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1745
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !1746
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1746
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1747
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1747
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1748
  %11 = load i8*, i8** %10, align 8, !dbg !1748
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !1749
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !1744
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !1750, metadata !220), !dbg !1751
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1752
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 9, !dbg !1753
  call void @__set_bit(i32 0, i64* %14), !dbg !1754
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1755
  %16 = getelementptr inbounds %struct._vector, %struct._vector* %15, i32 0, i32 1, !dbg !1757
  %17 = load i32, i32* %16, align 4, !dbg !1757
  %18 = icmp uge i32 %17, 2, !dbg !1758
  br i1 %18, label %19, label %55, !dbg !1759

; <label>:19:                                     ; preds = %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1760
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !1763
  %22 = call i64 @strlen(i8* %21) #8, !dbg !1764
  %23 = icmp uge i64 %22, 16, !dbg !1766
  br i1 %23, label %24, label %27, !dbg !1767

; <label>:24:                                     ; preds = %19
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1768
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !1770
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.102, i32 0, i32 0), i8* %26), !dbg !1771
  br label %55, !dbg !1773

; <label>:27:                                     ; preds = %19
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1774
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 10, !dbg !1775
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 0, !dbg !1774
  %31 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1776
  %32 = call i8* @strvec_slot(%struct._vector* %31, i64 1), !dbg !1777
  %33 = call i8* @strcpy(i8* %30, i8* %32) #9, !dbg !1778
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1780
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 10, !dbg !1782
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %35, i32 0, i32 0, !dbg !1780
  %37 = call %struct._interface* @if_get_by_ifname(i8* %36, i32 0), !dbg !1783
  store %struct._interface* %37, %struct._interface** %4, align 8, !dbg !1784
  %38 = icmp ne %struct._interface* %37, null, !dbg !1784
  br i1 %38, label %39, label %54, !dbg !1785

; <label>:39:                                     ; preds = %27
  %40 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !1786
  %41 = getelementptr inbounds %struct._interface, %struct._interface* %40, i32 0, i32 12, !dbg !1787
  %42 = load i8, i8* %41, align 4, !dbg !1787
  %43 = trunc i8 %42 to i1, !dbg !1787
  br i1 %43, label %54, label %44, !dbg !1788

; <label>:44:                                     ; preds = %39
  %45 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1789
  %46 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %45, i32 0, i32 1, !dbg !1791
  %47 = load i8*, i8** %46, align 8, !dbg !1791
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1792
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 10, !dbg !1793
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %49, i32 0, i32 0, !dbg !1792
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.103, i32 0, i32 0), i8* %47, i8* %50), !dbg !1794
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1795
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 10, !dbg !1796
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %52, i64 0, i64 0, !dbg !1795
  store i8 0, i8* %53, align 8, !dbg !1797
  br label %54, !dbg !1798

; <label>:54:                                     ; preds = %44, %39, %27
  br label %55, !dbg !1799

; <label>:55:                                     ; preds = %24, %54, %1
  ret void, !dbg !1800
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vmac_xmit_base_handler(%struct._vector*) #0 !dbg !1801 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1802, metadata !220), !dbg !1803
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1804, metadata !220), !dbg !1805
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1806
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1807
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1807
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1808
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1808
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1809
  %10 = load i8*, i8** %9, align 8, !dbg !1809
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1810
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1805
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1811
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 9, !dbg !1812
  call void @__set_bit(i32 2, i64* %13), !dbg !1813
  ret void, !dbg !1814
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_unicast_peer_handler(%struct._vector*) #0 !dbg !1815 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1816, metadata !220), !dbg !1817
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1818
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !1819
  %5 = load i8**, i8*** %4, align 8, !dbg !1819
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !1820
  %7 = load i8*, i8** %6, align 8, !dbg !1820
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_unicast_peer, i8* %7), !dbg !1821
  ret void, !dbg !1822
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_unicast_chksum_handler(%struct._vector*) #0 !dbg !1823 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1824, metadata !220), !dbg !1825
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1826, metadata !220), !dbg !1827
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1828
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1829
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1829
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1830
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1830
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1831
  %10 = load i8*, i8** %9, align 8, !dbg !1831
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1832
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1827
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1833
  %13 = getelementptr inbounds %struct._vector, %struct._vector* %12, i32 0, i32 1, !dbg !1835
  %14 = load i32, i32* %13, align 4, !dbg !1835
  %15 = icmp uge i32 %14, 2, !dbg !1836
  br i1 %15, label %16, label %31, !dbg !1837

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1838
  %18 = call i8* @strvec_slot(%struct._vector* %17, i64 1), !dbg !1841
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0)) #8, !dbg !1842
  %20 = icmp ne i32 %19, 0, !dbg !1844
  br i1 %20, label %24, label %21, !dbg !1845

; <label>:21:                                     ; preds = %16
  %22 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1846
  %23 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %22, i32 0, i32 21, !dbg !1847
  store i32 1, i32* %23, align 8, !dbg !1848
  br label %30, !dbg !1846

; <label>:24:                                     ; preds = %16
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1849
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 1, !dbg !1850
  %27 = load i8*, i8** %26, align 8, !dbg !1850
  %28 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1851
  %29 = call i8* @strvec_slot(%struct._vector* %28, i64 1), !dbg !1852
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.105, i32 0, i32 0), i8* %27, i8* %29), !dbg !1853
  br label %30

; <label>:30:                                     ; preds = %24, %21
  br label %34, !dbg !1854

; <label>:31:                                     ; preds = %1
  %32 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1855
  %33 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %32, i32 0, i32 21, !dbg !1856
  store i32 3, i32* %33, align 8, !dbg !1857
  br label %34

; <label>:34:                                     ; preds = %31, %30
  ret void, !dbg !1858
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_native_ipv6_handler(%struct._vector*) #0 !dbg !1859 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1860, metadata !220), !dbg !1861
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1862, metadata !220), !dbg !1863
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1864
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1865
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1865
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1866
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1866
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1867
  %10 = load i8*, i8** %9, align 8, !dbg !1867
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1868
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1863
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1869
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 0, !dbg !1871
  %14 = load i16, i16* %13, align 8, !dbg !1871
  %15 = zext i16 %14 to i32, !dbg !1869
  %16 = icmp eq i32 %15, 2, !dbg !1872
  br i1 %16, label %17, label %21, !dbg !1873

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1874
  %19 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %18, i32 0, i32 1, !dbg !1876
  %20 = load i8*, i8** %19, align 8, !dbg !1876
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.106, i32 0, i32 0), i8* %20), !dbg !1877
  br label %26, !dbg !1878

; <label>:21:                                     ; preds = %1
  %22 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1879
  %23 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %22, i32 0, i32 0, !dbg !1880
  store i16 10, i16* %23, align 8, !dbg !1881
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1882
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 60, !dbg !1883
  store i32 3, i32* %25, align 4, !dbg !1884
  br label %26, !dbg !1885

; <label>:26:                                     ; preds = %21, %17
  ret void, !dbg !1886
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_state_handler(%struct._vector*) #0 !dbg !1888 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1889, metadata !220), !dbg !1890
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1891, metadata !220), !dbg !1892
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1893
  %6 = call i8* @strvec_slot(%struct._vector* %5, i64 1), !dbg !1894
  store i8* %6, i8** %3, align 8, !dbg !1892
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !1895, metadata !220), !dbg !1896
  %7 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1897
  %8 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %7, i32 0, i32 5, !dbg !1898
  %9 = load %struct._list*, %struct._list** %8, align 8, !dbg !1898
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 1, !dbg !1899
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !1899
  %12 = getelementptr inbounds %struct._element, %struct._element* %11, i32 0, i32 2, !dbg !1900
  %13 = load i8*, i8** %12, align 8, !dbg !1900
  %14 = bitcast i8* %13 to %struct._vrrp_t*, !dbg !1901
  store %struct._vrrp_t* %14, %struct._vrrp_t** %4, align 8, !dbg !1896
  %15 = load i8*, i8** %3, align 8, !dbg !1902
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0)) #8, !dbg !1904
  %17 = icmp ne i32 %16, 0, !dbg !1904
  br i1 %17, label %21, label %18, !dbg !1905

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1906
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 56, !dbg !1907
  store i32 2, i32* %20, align 4, !dbg !1908
  br label %46, !dbg !1906

; <label>:21:                                     ; preds = %1
  %22 = load i8*, i8** %3, align 8, !dbg !1909
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0)) #8, !dbg !1911
  %24 = icmp ne i32 %23, 0, !dbg !1911
  br i1 %24, label %38, label %25, !dbg !1912

; <label>:25:                                     ; preds = %21
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1913
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 56, !dbg !1916
  %28 = load i32, i32* %27, align 4, !dbg !1916
  %29 = icmp eq i32 %28, 2, !dbg !1917
  br i1 %29, label %30, label %34, !dbg !1918

; <label>:30:                                     ; preds = %25
  %31 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1919
  %32 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %31, i32 0, i32 1, !dbg !1920
  %33 = load i8*, i8** %32, align 8, !dbg !1920
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.109, i32 0, i32 0), i8* %33), !dbg !1921
  br label %37, !dbg !1921

; <label>:34:                                     ; preds = %25
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1922
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 56, !dbg !1923
  store i32 1, i32* %36, align 4, !dbg !1924
  br label %37

; <label>:37:                                     ; preds = %34, %30
  br label %45, !dbg !1925

; <label>:38:                                     ; preds = %21
  %39 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1926
  %40 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %39, i32 0, i32 1, !dbg !1928
  %41 = load i8*, i8** %40, align 8, !dbg !1928
  %42 = load i8*, i8** %3, align 8, !dbg !1929
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.110, i32 0, i32 0), i8* %41, i8* %42), !dbg !1930
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1931
  %44 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %43, i32 0, i32 56, !dbg !1932
  store i32 1, i32* %44, align 4, !dbg !1933
  br label %45

; <label>:45:                                     ; preds = %38, %37
  br label %46

; <label>:46:                                     ; preds = %45, %18
  ret void, !dbg !1934
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_int_handler(%struct._vector*) #0 !dbg !1935 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1936, metadata !220), !dbg !1937
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1938, metadata !220), !dbg !1939
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1940
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !1941
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1941
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1942
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1942
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1943
  %11 = load i8*, i8** %10, align 8, !dbg !1943
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !1944
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !1939
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1945, metadata !220), !dbg !1946
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1947
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !1948
  store i8* %14, i8** %4, align 8, !dbg !1946
  %15 = load i8*, i8** %4, align 8, !dbg !1949
  %16 = call i64 @strlen(i8* %15) #8, !dbg !1951
  %17 = icmp uge i64 %16, 16, !dbg !1952
  br i1 %17, label %18, label %20, !dbg !1953

; <label>:18:                                     ; preds = %1
  %19 = load i8*, i8** %4, align 8, !dbg !1954
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.111, i32 0, i32 0), i8* %19), !dbg !1956
  br label %54, !dbg !1957

; <label>:20:                                     ; preds = %1
  %21 = load i8*, i8** %4, align 8, !dbg !1958
  %22 = call %struct._interface* @if_get_by_ifname(i8* %21, i32 1), !dbg !1959
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1960
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 4, !dbg !1961
  store %struct._interface* %22, %struct._interface** %24, align 8, !dbg !1962
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1963
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 4, !dbg !1965
  %27 = load %struct._interface*, %struct._interface** %26, align 8, !dbg !1965
  %28 = icmp ne %struct._interface* %27, null, !dbg !1963
  br i1 %28, label %34, label %29, !dbg !1966

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %4, align 8, !dbg !1967
  %31 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1968
  %32 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %31, i32 0, i32 1, !dbg !1969
  %33 = load i8*, i8** %32, align 8, !dbg !1969
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.112, i32 0, i32 0), i8* %30, i8* %33), !dbg !1970
  br label %54, !dbg !1970

; <label>:34:                                     ; preds = %20
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1971
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 4, !dbg !1973
  %37 = load %struct._interface*, %struct._interface** %36, align 8, !dbg !1973
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 7, !dbg !1974
  %39 = load i16, i16* %38, align 4, !dbg !1974
  %40 = zext i16 %39 to i32, !dbg !1971
  %41 = icmp eq i32 %40, 772, !dbg !1975
  br i1 %41, label %42, label %53, !dbg !1976

; <label>:42:                                     ; preds = %34
  %43 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1977
  %44 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %43, i32 0, i32 1, !dbg !1979
  %45 = load i8*, i8** %44, align 8, !dbg !1979
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1980
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 4, !dbg !1981
  %48 = load %struct._interface*, %struct._interface** %47, align 8, !dbg !1981
  %49 = getelementptr inbounds %struct._interface, %struct._interface* %48, i32 0, i32 0, !dbg !1982
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %49, i32 0, i32 0, !dbg !1980
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.113, i32 0, i32 0), i8* %45, i8* %50), !dbg !1983
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1984
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 4, !dbg !1985
  store %struct._interface* null, %struct._interface** %52, align 8, !dbg !1986
  br label %53, !dbg !1987

; <label>:53:                                     ; preds = %42, %34
  br label %54

; <label>:54:                                     ; preds = %18, %53, %29
  ret void, !dbg !1988
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_dont_track_handler(%struct._vector*) #0 !dbg !1989 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1990, metadata !220), !dbg !1991
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1992, metadata !220), !dbg !1993
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1994
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !1995
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1995
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1996
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1996
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1997
  %10 = load i8*, i8** %9, align 8, !dbg !1997
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !1998
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !1993
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1999
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 5, !dbg !2000
  store i8 1, i8* %13, align 8, !dbg !2001
  ret void, !dbg !2002
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_track_if_handler(%struct._vector*) #0 !dbg !2003 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2004, metadata !220), !dbg !2005
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2006
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2007
  %5 = load i8**, i8*** %4, align 8, !dbg !2007
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2008
  %7 = load i8*, i8** %6, align 8, !dbg !2008
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_track_if, i8* %7), !dbg !2009
  ret void, !dbg !2010
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_track_scr_handler(%struct._vector*) #0 !dbg !2011 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2012, metadata !220), !dbg !2013
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2014
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2015
  %5 = load i8**, i8*** %4, align 8, !dbg !2015
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2016
  %7 = load i8*, i8** %6, align 8, !dbg !2016
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_track_script, i8* %7), !dbg !2017
  ret void, !dbg !2018
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_track_file_handler(%struct._vector*) #0 !dbg !2019 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2020, metadata !220), !dbg !2021
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2022
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2023
  %5 = load i8**, i8*** %4, align 8, !dbg !2023
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2024
  %7 = load i8*, i8** %6, align 8, !dbg !2024
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_track_file, i8* %7), !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_srcip_handler(%struct._vector*) #0 !dbg !2027 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2028, metadata !220), !dbg !2029
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2030, metadata !220), !dbg !2031
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2032
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2033
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2033
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2034
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2034
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2035
  %11 = load i8*, i8** %10, align 8, !dbg !2035
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2036
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2031
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !2037, metadata !220), !dbg !2039
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2040
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 16, !dbg !2041
  store %struct.sockaddr_storage* %14, %struct.sockaddr_storage** %4, align 8, !dbg !2039
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2042
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !2044
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !2045
  %18 = call i32 @inet_stosockaddr(i8* %16, i8* null, %struct.sockaddr_storage* %17), !dbg !2046
  %19 = icmp ne i32 %18, 0, !dbg !2048
  br i1 %19, label %20, label %26, !dbg !2049

; <label>:20:                                     ; preds = %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2050
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 1, !dbg !2052
  %23 = load i8*, i8** %22, align 8, !dbg !2052
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2053
  %25 = call i8* @strvec_slot(%struct._vector* %24, i64 1), !dbg !2054
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.114, i32 0, i32 0), i8* %23, i8* %25), !dbg !2055
  br label %61, !dbg !2056

; <label>:26:                                     ; preds = %1
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2057
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 17, !dbg !2058
  store i8 1, i8* %28, align 8, !dbg !2059
  %29 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2060
  %30 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %29, i32 0, i32 0, !dbg !2062
  %31 = load i16, i16* %30, align 8, !dbg !2062
  %32 = zext i16 %31 to i32, !dbg !2060
  %33 = icmp eq i32 %32, 0, !dbg !2063
  br i1 %33, label %34, label %40, !dbg !2064

; <label>:34:                                     ; preds = %26
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !2065
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %35, i32 0, i32 0, !dbg !2066
  %37 = load i16, i16* %36, align 8, !dbg !2066
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2067
  %39 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %38, i32 0, i32 0, !dbg !2068
  store i16 %37, i16* %39, align 8, !dbg !2069
  br label %61, !dbg !2067

; <label>:40:                                     ; preds = %26
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !2070
  %42 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %41, i32 0, i32 0, !dbg !2072
  %43 = load i16, i16* %42, align 8, !dbg !2072
  %44 = zext i16 %43 to i32, !dbg !2070
  %45 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2073
  %46 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %45, i32 0, i32 0, !dbg !2074
  %47 = load i16, i16* %46, align 8, !dbg !2074
  %48 = zext i16 %47 to i32, !dbg !2073
  %49 = icmp ne i32 %44, %48, !dbg !2075
  br i1 %49, label %50, label %60, !dbg !2076

; <label>:50:                                     ; preds = %40
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2077
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 1, !dbg !2079
  %53 = load i8*, i8** %52, align 8, !dbg !2079
  %54 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2080
  %55 = call i8* @strvec_slot(%struct._vector* %54, i64 1), !dbg !2081
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.115, i32 0, i32 0), i8* %53, i8* %55), !dbg !2082
  %56 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !2083
  %57 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %56, i32 0, i32 0, !dbg !2084
  store i16 0, i16* %57, align 8, !dbg !2085
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2086
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 17, !dbg !2087
  store i8 0, i8* %59, align 8, !dbg !2088
  br label %60, !dbg !2089

; <label>:60:                                     ; preds = %50, %40
  br label %61

; <label>:61:                                     ; preds = %20, %60, %34
  ret void, !dbg !2090
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_track_srcip_handler(%struct._vector*) #0 !dbg !2091 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2092, metadata !220), !dbg !2093
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2094, metadata !220), !dbg !2095
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2096
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2097
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2097
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2098
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2098
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2099
  %10 = load i8*, i8** %9, align 8, !dbg !2099
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2100
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2095
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2101
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 18, !dbg !2102
  store i8 1, i8* %13, align 1, !dbg !2103
  ret void, !dbg !2104
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vrid_handler(%struct._vector*) #0 !dbg !2105 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2106, metadata !220), !dbg !2107
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2108, metadata !220), !dbg !2109
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2110
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2111
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2111
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2112
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2112
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2113
  %11 = load i8*, i8** %10, align 8, !dbg !2113
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2114
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2109
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2115, metadata !220), !dbg !2116
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2117
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 255, i1 zeroext false), !dbg !2119
  br i1 %14, label %21, label %15, !dbg !2120

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2121
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2123
  %18 = load i8*, i8** %17, align 8, !dbg !2123
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2124
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2125
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.116, i32 0, i32 0), i8* %18, i8* %20), !dbg !2126
  br label %26, !dbg !2128

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2129
  %23 = trunc i32 %22 to i8, !dbg !2130
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2131
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 36, !dbg !2132
  store i8 %23, i8* %25, align 4, !dbg !2133
  br label %26, !dbg !2134

; <label>:26:                                     ; preds = %21, %15
  ret void, !dbg !2135
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_version_handler(%struct._vector*) #0 !dbg !2137 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2138, metadata !220), !dbg !2139
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2140, metadata !220), !dbg !2141
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2142
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2143
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2143
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2144
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2144
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2145
  %11 = load i8*, i8** %10, align 8, !dbg !2145
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2146
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2141
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2147, metadata !220), !dbg !2148
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2149
  %14 = call zeroext i1 @read_int_strvec(%struct._vector* %13, i64 1, i32* %4, i32 2, i32 3, i1 zeroext true), !dbg !2151
  br i1 %14, label %19, label %15, !dbg !2152

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2153
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2155
  %18 = load i8*, i8** %17, align 8, !dbg !2155
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.117, i32 0, i32 0), i8* %18), !dbg !2156
  br label %51, !dbg !2157

; <label>:19:                                     ; preds = %1
  %20 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2158
  %21 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %20, i32 0, i32 60, !dbg !2160
  %22 = load i32, i32* %21, align 4, !dbg !2160
  %23 = icmp ne i32 %22, 0, !dbg !2158
  br i1 %23, label %24, label %30, !dbg !2161

; <label>:24:                                     ; preds = %19
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2162
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 60, !dbg !2164
  %27 = load i32, i32* %26, align 4, !dbg !2164
  %28 = load i32, i32* %4, align 4, !dbg !2165
  %29 = icmp ne i32 %27, %28, !dbg !2166
  br i1 %29, label %39, label %30, !dbg !2167

; <label>:30:                                     ; preds = %24, %19
  %31 = load i32, i32* %4, align 4, !dbg !2168
  %32 = icmp eq i32 %31, 2, !dbg !2169
  br i1 %32, label %33, label %47, !dbg !2170

; <label>:33:                                     ; preds = %30
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2171
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 0, !dbg !2172
  %36 = load i16, i16* %35, align 8, !dbg !2172
  %37 = zext i16 %36 to i32, !dbg !2171
  %38 = icmp eq i32 %37, 10, !dbg !2173
  br i1 %38, label %39, label %47, !dbg !2174

; <label>:39:                                     ; preds = %33, %24
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2176
  %41 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %40, i32 0, i32 1, !dbg !2178
  %42 = load i8*, i8** %41, align 8, !dbg !2178
  %43 = load i32, i32* %4, align 4, !dbg !2179
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2180
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 60, !dbg !2181
  %46 = load i32, i32* %45, align 4, !dbg !2181
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.118, i32 0, i32 0), i8* %42, i32 %43, i32 %46), !dbg !2182
  br label %51, !dbg !2183

; <label>:47:                                     ; preds = %33, %30
  %48 = load i32, i32* %4, align 4, !dbg !2184
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2185
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 60, !dbg !2186
  store i32 %48, i32* %50, align 4, !dbg !2187
  br label %51, !dbg !2188

; <label>:51:                                     ; preds = %47, %39, %15
  ret void, !dbg !2189
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_prio_handler(%struct._vector*) #0 !dbg !2191 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2192, metadata !220), !dbg !2193
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2194, metadata !220), !dbg !2195
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2196
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2197
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2197
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2198
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2198
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2199
  %11 = load i8*, i8** %10, align 8, !dbg !2199
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2200
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2195
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2201, metadata !220), !dbg !2202
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2203
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 255, i1 zeroext false), !dbg !2205
  br i1 %14, label %21, label %15, !dbg !2206

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2207
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2209
  %18 = load i8*, i8** %17, align 8, !dbg !2209
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.119, i32 0, i32 0), i8* %18, i32 255, i32 100), !dbg !2210
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2211
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 37, !dbg !2212
  store i8 100, i8* %20, align 1, !dbg !2213
  br label %26, !dbg !2214

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2215
  %23 = trunc i32 %22 to i8, !dbg !2216
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2217
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 37, !dbg !2218
  store i8 %23, i8* %25, align 1, !dbg !2219
  br label %26

; <label>:26:                                     ; preds = %21, %15
  ret void, !dbg !2220
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_adv_handler(%struct._vector*) #0 !dbg !2221 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8, align 1
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2222, metadata !220), !dbg !2223
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2224, metadata !220), !dbg !2225
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2226
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 5, !dbg !2227
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !2227
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !2228
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !2228
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !2229
  %12 = load i8*, i8** %11, align 8, !dbg !2229
  %13 = bitcast i8* %12 to %struct._vrrp_t*, !dbg !2230
  store %struct._vrrp_t* %13, %struct._vrrp_t** %3, align 8, !dbg !2225
  call void @llvm.dbg.declare(metadata double* %4, metadata !2231, metadata !220), !dbg !2232
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2233, metadata !220), !dbg !2234
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2235
  %15 = call zeroext i1 @read_double_strvec(%struct._vector* %14, i64 1, double* %4, double 1.000000e-02, double 2.550000e+02, i1 zeroext true), !dbg !2236
  %16 = zext i1 %15 to i8, !dbg !2237
  store i8 %16, i8* %5, align 1, !dbg !2237
  %17 = load i8, i8* %5, align 1, !dbg !2238
  %18 = trunc i8 %17 to i1, !dbg !2238
  br i1 %18, label %19, label %22, !dbg !2240

; <label>:19:                                     ; preds = %1
  %20 = load double, double* %4, align 8, !dbg !2241
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !2243
  br i1 %21, label %22, label %28, !dbg !2244

; <label>:22:                                     ; preds = %19, %1
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2245
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 1, !dbg !2246
  %25 = load i8*, i8** %24, align 8, !dbg !2246
  %26 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2247
  %27 = call i8* @strvec_slot(%struct._vector* %26, i64 1), !dbg !2248
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.120, i32 0, i32 0), i8* %25, i8* %27), !dbg !2249
  br label %34, !dbg !2250

; <label>:28:                                     ; preds = %19
  %29 = load double, double* %4, align 8, !dbg !2251
  %30 = fmul double %29, 1.000000e+06, !dbg !2252
  %31 = fptoui double %30 to i32, !dbg !2253
  %32 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2254
  %33 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %32, i32 0, i32 47, !dbg !2255
  store i32 %31, i32* %33, align 8, !dbg !2256
  br label %34

; <label>:34:                                     ; preds = %28, %22
  ret void, !dbg !2257
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vip_handler(%struct._vector*) #0 !dbg !2258 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2259, metadata !220), !dbg !2260
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2261
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2262
  %5 = load i8**, i8*** %4, align 8, !dbg !2262
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2263
  %7 = load i8*, i8** %6, align 8, !dbg !2263
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_vip, i8* %7), !dbg !2264
  ret void, !dbg !2265
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_evip_handler(%struct._vector*) #0 !dbg !2266 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2267, metadata !220), !dbg !2268
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2269
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2270
  %5 = load i8**, i8*** %4, align 8, !dbg !2270
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2271
  %7 = load i8*, i8** %6, align 8, !dbg !2271
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_evip, i8* %7), !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_promote_secondaries_handler(%struct._vector*) #0 !dbg !2274 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2275, metadata !220), !dbg !2276
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2277, metadata !220), !dbg !2278
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2279
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2280
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2280
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2281
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2281
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2282
  %10 = load i8*, i8** %9, align 8, !dbg !2282
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2283
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2278
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2284
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 43, !dbg !2285
  store i8 1, i8* %13, align 8, !dbg !2286
  ret void, !dbg !2287
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_linkbeat_handler(%struct._vector*) #0 !dbg !2288 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2289, metadata !220), !dbg !2290
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2291, metadata !220), !dbg !2292
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2293
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2294
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2294
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2295
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2295
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2296
  %10 = load i8*, i8** %9, align 8, !dbg !2296
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2297
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2292
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2298
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 6, !dbg !2299
  store i8 1, i8* %13, align 1, !dbg !2300
  ret void, !dbg !2301
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vroutes_handler(%struct._vector*) #0 !dbg !2302 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2303, metadata !220), !dbg !2304
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2305
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2306
  %5 = load i8**, i8*** %4, align 8, !dbg !2306
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2307
  %7 = load i8*, i8** %6, align 8, !dbg !2307
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_vroute, i8* %7), !dbg !2308
  ret void, !dbg !2309
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vrules_handler(%struct._vector*) #0 !dbg !2310 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2311, metadata !220), !dbg !2312
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2313
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 2, !dbg !2314
  %5 = load i8**, i8*** %4, align 8, !dbg !2314
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !2315
  %7 = load i8*, i8** %6, align 8, !dbg !2315
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vrrp_vrule, i8* %7), !dbg !2316
  ret void, !dbg !2317
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_accept_handler(%struct._vector*) #0 !dbg !2318 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2319, metadata !220), !dbg !2320
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2321, metadata !220), !dbg !2322
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2323
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2324
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2324
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2325
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2325
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2326
  %10 = load i8*, i8** %9, align 8, !dbg !2326
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2327
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2322
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2328
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 49, !dbg !2329
  store i32 1, i32* %13, align 8, !dbg !2330
  ret void, !dbg !2331
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_no_accept_handler(%struct._vector*) #0 !dbg !2332 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2333, metadata !220), !dbg !2334
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2335, metadata !220), !dbg !2336
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2337
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2338
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2338
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2339
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2339
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2340
  %10 = load i8*, i8** %9, align 8, !dbg !2340
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2341
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2336
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2342
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 49, !dbg !2343
  store i32 0, i32* %13, align 8, !dbg !2344
  ret void, !dbg !2345
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_skip_check_adv_addr_handler(%struct._vector*) #0 !dbg !2346 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2347, metadata !220), !dbg !2348
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2349, metadata !220), !dbg !2350
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2351
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2352
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2352
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2353
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2353
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2354
  %11 = load i8*, i8** %10, align 8, !dbg !2354
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2355
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2350
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2356, metadata !220), !dbg !2357
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2358
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !2360
  %15 = load i32, i32* %14, align 4, !dbg !2360
  %16 = icmp uge i32 %15, 2, !dbg !2361
  br i1 %16, label %17, label %36, !dbg !2362

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2363
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !2365
  %20 = call i32 @check_true_false(i8* %19), !dbg !2366
  store i32 %20, i32* %4, align 4, !dbg !2368
  %21 = load i32, i32* %4, align 4, !dbg !2369
  %22 = icmp sge i32 %21, 0, !dbg !2371
  br i1 %22, label %23, label %29, !dbg !2372

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %4, align 4, !dbg !2373
  %25 = icmp ne i32 %24, 0, !dbg !2374
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2375
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 7, !dbg !2376
  %28 = zext i1 %25 to i8, !dbg !2377
  store i8 %28, i8* %27, align 2, !dbg !2377
  br label %35, !dbg !2375

; <label>:29:                                     ; preds = %17
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2378
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 1, !dbg !2379
  %32 = load i8*, i8** %31, align 8, !dbg !2379
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2380
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 1), !dbg !2381
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.121, i32 0, i32 0), i8* %32, i8* %34), !dbg !2382
  br label %35

; <label>:35:                                     ; preds = %29, %23
  br label %39, !dbg !2384

; <label>:36:                                     ; preds = %1
  %37 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2385
  %38 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %37, i32 0, i32 7, !dbg !2387
  store i8 1, i8* %38, align 2, !dbg !2388
  br label %39

; <label>:39:                                     ; preds = %36, %35
  ret void, !dbg !2389
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_strict_mode_handler(%struct._vector*) #0 !dbg !2390 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2391, metadata !220), !dbg !2392
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2393, metadata !220), !dbg !2394
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !2395, metadata !220), !dbg !2396
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2397
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2398
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2398
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2399
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2399
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2400
  %11 = load i8*, i8** %10, align 8, !dbg !2400
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2401
  store %struct._vrrp_t* %12, %struct._vrrp_t** %4, align 8, !dbg !2396
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2402
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !2404
  %15 = load i32, i32* %14, align 4, !dbg !2404
  %16 = icmp uge i32 %15, 2, !dbg !2405
  br i1 %16, label %17, label %36, !dbg !2406

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2407
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !2409
  %20 = call i32 @check_true_false(i8* %19), !dbg !2410
  store i32 %20, i32* %3, align 4, !dbg !2412
  %21 = load i32, i32* %3, align 4, !dbg !2413
  %22 = icmp sge i32 %21, 0, !dbg !2415
  br i1 %22, label %23, label %29, !dbg !2416

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %3, align 4, !dbg !2417
  %25 = icmp ne i32 %24, 0, !dbg !2418
  %26 = zext i1 %25 to i32, !dbg !2418
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2419
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 8, !dbg !2420
  store i32 %26, i32* %28, align 4, !dbg !2421
  br label %35, !dbg !2419

; <label>:29:                                     ; preds = %17
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2422
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 1, !dbg !2423
  %32 = load i8*, i8** %31, align 8, !dbg !2423
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2424
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 1), !dbg !2425
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.122, i32 0, i32 0), i8* %32, i8* %34), !dbg !2426
  br label %35

; <label>:35:                                     ; preds = %29, %23
  br label %39, !dbg !2428

; <label>:36:                                     ; preds = %1
  %37 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2429
  %38 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %37, i32 0, i32 8, !dbg !2431
  store i32 1, i32* %38, align 4, !dbg !2432
  br label %39

; <label>:39:                                     ; preds = %36, %35
  ret void, !dbg !2433
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_preempt_handler(%struct._vector*) #0 !dbg !2434 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2435, metadata !220), !dbg !2436
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2437, metadata !220), !dbg !2438
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2439
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2440
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2440
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2441
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2441
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2442
  %10 = load i8*, i8** %9, align 8, !dbg !2442
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2443
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2438
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2444
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 52, !dbg !2445
  store i8 0, i8* %13, align 1, !dbg !2446
  ret void, !dbg !2447
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_nopreempt_handler(%struct._vector*) #0 !dbg !2448 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2449, metadata !220), !dbg !2450
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2451, metadata !220), !dbg !2452
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2453
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2454
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2454
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2455
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2455
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2456
  %10 = load i8*, i8** %9, align 8, !dbg !2456
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2457
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2452
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2458
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 52, !dbg !2459
  store i8 1, i8* %13, align 1, !dbg !2460
  ret void, !dbg !2461
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_preempt_delay_handler(%struct._vector*) #0 !dbg !2462 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca double, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2463, metadata !220), !dbg !2464
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2465, metadata !220), !dbg !2466
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2467
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2468
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2468
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2469
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2469
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2470
  %11 = load i8*, i8** %10, align 8, !dbg !2470
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2471
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2466
  call void @llvm.dbg.declare(metadata double* %4, metadata !2472, metadata !220), !dbg !2473
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2474
  %14 = call zeroext i1 @read_double_strvec(%struct._vector* %13, i64 1, double* %4, double 0.000000e+00, double 1.000000e+03, i1 zeroext true), !dbg !2476
  br i1 %14, label %21, label %15, !dbg !2477

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2478
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2480
  %18 = load i8*, i8** %17, align 8, !dbg !2480
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.123, i32 0, i32 0), i8* %18, i32 1000), !dbg !2481
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2482
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 53, !dbg !2483
  store i64 0, i64* %20, align 8, !dbg !2484
  br label %27, !dbg !2485

; <label>:21:                                     ; preds = %1
  %22 = load double, double* %4, align 8, !dbg !2486
  %23 = fmul double %22, 1.000000e+06, !dbg !2487
  %24 = fptoui double %23 to i64, !dbg !2488
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2489
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 53, !dbg !2490
  store i64 %24, i64* %26, align 8, !dbg !2491
  br label %27

; <label>:27:                                     ; preds = %21, %15
  ret void, !dbg !2492
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_debug_handler(%struct._vector*) #0 !dbg !2493 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2494, metadata !220), !dbg !2495
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2496, metadata !220), !dbg !2497
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2498
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2499
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2499
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2500
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2500
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2501
  %11 = load i8*, i8** %10, align 8, !dbg !2501
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2502
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2497
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2503, metadata !220), !dbg !2504
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2505
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 4, i1 zeroext true), !dbg !2507
  br i1 %14, label %21, label %15, !dbg !2508

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2509
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2510
  %18 = load i8*, i8** %17, align 8, !dbg !2510
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2511
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2512
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.124, i32 0, i32 0), i8* %18, i8* %20), !dbg !2513
  br label %25, !dbg !2515

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2516
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2517
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 59, !dbg !2518
  store i32 %22, i32* %24, align 8, !dbg !2519
  br label %25

; <label>:25:                                     ; preds = %21, %15
  ret void, !dbg !2520
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_backup_handler(%struct._vector*) #0 !dbg !2521 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2522, metadata !220), !dbg !2523
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2524, metadata !220), !dbg !2525
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2526
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2527
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2527
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2528
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2528
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2529
  %10 = load i8*, i8** %9, align 8, !dbg !2529
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2530
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2525
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2531
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 64, !dbg !2533
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !2533
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !2531
  br i1 %15, label %16, label %22, !dbg !2534

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2535
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !2537
  %19 = load i8*, i8** %18, align 8, !dbg !2537
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2538
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2539
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.125, i32 0, i32 0), i8* %19, i8* %21), !dbg !2540
  br label %29, !dbg !2542

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2543
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !2544
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2545
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 64, !dbg !2546
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !2547
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2548
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 63, !dbg !2549
  store i8 1, i8* %28, align 8, !dbg !2550
  br label %29, !dbg !2551

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !2552
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_master_handler(%struct._vector*) #0 !dbg !2554 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2555, metadata !220), !dbg !2556
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2557, metadata !220), !dbg !2558
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2559
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2560
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2560
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2561
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2561
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2562
  %10 = load i8*, i8** %9, align 8, !dbg !2562
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2563
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2558
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2564
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 65, !dbg !2566
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !2566
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !2564
  br i1 %15, label %16, label %22, !dbg !2567

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2568
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !2570
  %19 = load i8*, i8** %18, align 8, !dbg !2570
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2571
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2572
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.126, i32 0, i32 0), i8* %19, i8* %21), !dbg !2573
  br label %29, !dbg !2575

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2576
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !2577
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2578
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 65, !dbg !2579
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !2580
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2581
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 63, !dbg !2582
  store i8 1, i8* %28, align 8, !dbg !2583
  br label %29, !dbg !2584

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !2585
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_fault_handler(%struct._vector*) #0 !dbg !2587 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2588, metadata !220), !dbg !2589
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2590, metadata !220), !dbg !2591
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2592
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2593
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2593
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2594
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2594
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2595
  %10 = load i8*, i8** %9, align 8, !dbg !2595
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2596
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2591
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2597
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 66, !dbg !2599
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !2599
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !2597
  br i1 %15, label %16, label %22, !dbg !2600

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2601
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !2603
  %19 = load i8*, i8** %18, align 8, !dbg !2603
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2604
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2605
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.127, i32 0, i32 0), i8* %19, i8* %21), !dbg !2606
  br label %29, !dbg !2608

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2609
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !2610
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2611
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 66, !dbg !2612
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !2613
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2614
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 63, !dbg !2615
  store i8 1, i8* %28, align 8, !dbg !2616
  br label %29, !dbg !2617

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !2618
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_stop_handler(%struct._vector*) #0 !dbg !2620 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2621, metadata !220), !dbg !2622
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2623, metadata !220), !dbg !2624
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2625
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2626
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2626
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2627
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2627
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2628
  %10 = load i8*, i8** %9, align 8, !dbg !2628
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2629
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2624
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2630
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 67, !dbg !2632
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !2632
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !2630
  br i1 %15, label %16, label %22, !dbg !2633

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2634
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !2636
  %19 = load i8*, i8** %18, align 8, !dbg !2636
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2637
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2638
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.128, i32 0, i32 0), i8* %19, i8* %21), !dbg !2639
  br label %29, !dbg !2641

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2642
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !2643
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2644
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 67, !dbg !2645
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !2646
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2647
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 63, !dbg !2648
  store i8 1, i8* %28, align 8, !dbg !2649
  br label %29, !dbg !2650

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !2651
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_handler(%struct._vector*) #0 !dbg !2653 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2654, metadata !220), !dbg !2655
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2656, metadata !220), !dbg !2657
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2658
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2659
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2659
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2660
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2660
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2661
  %10 = load i8*, i8** %9, align 8, !dbg !2661
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2662
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2657
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2663
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 69, !dbg !2665
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !2665
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !2663
  br i1 %15, label %16, label %22, !dbg !2666

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2667
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !2669
  %19 = load i8*, i8** %18, align 8, !dbg !2669
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2670
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2671
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.129, i32 0, i32 0), i8* %19, i8* %21), !dbg !2672
  br label %29, !dbg !2674

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2675
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 4), !dbg !2676
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2677
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 69, !dbg !2678
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !2679
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2680
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 63, !dbg !2681
  store i8 1, i8* %28, align 8, !dbg !2682
  br label %29, !dbg !2683

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_master_rx_lower_pri(%struct._vector*) #0 !dbg !2686 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2687, metadata !220), !dbg !2688
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2689, metadata !220), !dbg !2690
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2691
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2692
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2692
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2693
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2693
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2694
  %10 = load i8*, i8** %9, align 8, !dbg !2694
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2695
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2690
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2696
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 68, !dbg !2698
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !2698
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !2696
  br i1 %15, label %16, label %22, !dbg !2699

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2700
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 1, !dbg !2702
  %19 = load i8*, i8** %18, align 8, !dbg !2702
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2703
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2704
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.130, i32 0, i32 0), i8* %19, i8* %21), !dbg !2705
  br label %29, !dbg !2707

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2708
  %24 = call %struct._notify_script* @set_vrrp_notify_script(%struct._vector* %23, i32 0), !dbg !2709
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2710
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 68, !dbg !2711
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !2712
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2713
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 63, !dbg !2714
  store i8 1, i8* %28, align 8, !dbg !2715
  br label %29, !dbg !2716

; <label>:29:                                     ; preds = %22, %16
  ret void, !dbg !2717
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_smtp_handler(%struct._vector*) #0 !dbg !2719 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2720, metadata !220), !dbg !2721
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2722, metadata !220), !dbg !2723
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2724
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2725
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2725
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2726
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2726
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2727
  %11 = load i8*, i8** %10, align 8, !dbg !2727
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2728
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2723
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2729, metadata !220), !dbg !2730
  store i32 1, i32* %4, align 4, !dbg !2730
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2731
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !2733
  %15 = load i32, i32* %14, align 4, !dbg !2733
  %16 = icmp uge i32 %15, 2, !dbg !2734
  br i1 %16, label %17, label %27, !dbg !2735

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2736
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !2738
  %20 = call i32 @check_true_false(i8* %19), !dbg !2739
  store i32 %20, i32* %4, align 4, !dbg !2741
  %21 = load i32, i32* %4, align 4, !dbg !2742
  %22 = icmp eq i32 %21, -1, !dbg !2744
  br i1 %22, label %23, label %26, !dbg !2745

; <label>:23:                                     ; preds = %17
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2746
  %25 = call i8* @strvec_slot(%struct._vector* %24, i64 1), !dbg !2748
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.131, i32 0, i32 0), i8* %25), !dbg !2749
  br label %31, !dbg !2751

; <label>:26:                                     ; preds = %17
  br label %27, !dbg !2752

; <label>:27:                                     ; preds = %26, %1
  %28 = load i32, i32* %4, align 4, !dbg !2753
  %29 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2754
  %30 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %29, i32 0, i32 61, !dbg !2755
  store i32 %28, i32* %30, align 8, !dbg !2756
  br label %31, !dbg !2757

; <label>:31:                                     ; preds = %27, %23
  ret void, !dbg !2758
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_lvs_syncd_handler(%struct._vector*) #0 !dbg !2760 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2761, metadata !220), !dbg !2762
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2763, metadata !220), !dbg !2764
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2765
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 5, !dbg !2766
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2766
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !2767
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !2767
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !2768
  %10 = load i8*, i8** %9, align 8, !dbg !2768
  %11 = bitcast i8* %10 to %struct._vrrp_t*, !dbg !2769
  store %struct._vrrp_t* %11, %struct._vrrp_t** %3, align 8, !dbg !2764
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2770
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 1, !dbg !2771
  %14 = load i8*, i8** %13, align 8, !dbg !2771
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.132, i32 0, i32 0), i8* %14), !dbg !2772
  %15 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2773
  %16 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %15, i32 0, i32 1, !dbg !2774
  %17 = load i8*, i8** %16, align 8, !dbg !2774
  %18 = call i64 @strlen(i8* %17) #8, !dbg !2775
  %19 = trunc i64 %18 to i32, !dbg !2776
  %20 = sub nsw i32 %19, 2, !dbg !2777
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.133, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i32 0, i32 0)), !dbg !2778
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2780
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 20, !dbg !2782
  %23 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %22, i32 0, i32 0, !dbg !2783
  %24 = load i8*, i8** %23, align 8, !dbg !2783
  %25 = icmp ne i8* %24, null, !dbg !2780
  br i1 %25, label %26, label %34, !dbg !2784

; <label>:26:                                     ; preds = %1
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2785
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 1, !dbg !2787
  %29 = load i8*, i8** %28, align 8, !dbg !2787
  %30 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2788
  %31 = getelementptr inbounds %struct._data, %struct._data* %30, i32 0, i32 20, !dbg !2789
  %32 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %31, i32 0, i32 0, !dbg !2790
  %33 = load i8*, i8** %32, align 8, !dbg !2790
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.135, i32 0, i32 0), i8* %29, i8* %33), !dbg !2791
  br label %44, !dbg !2792

; <label>:34:                                     ; preds = %1
  %35 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2793
  %36 = call i8* @set_value(%struct._vector* %35), !dbg !2794
  %37 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2795
  %38 = getelementptr inbounds %struct._data, %struct._data* %37, i32 0, i32 20, !dbg !2796
  %39 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %38, i32 0, i32 0, !dbg !2797
  store i8* %36, i8** %39, align 8, !dbg !2798
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2799
  %41 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2800
  %42 = getelementptr inbounds %struct._data, %struct._data* %41, i32 0, i32 20, !dbg !2801
  %43 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %42, i32 0, i32 1, !dbg !2802
  store %struct._vrrp_t* %40, %struct._vrrp_t** %43, align 8, !dbg !2803
  br label %44, !dbg !2804

; <label>:44:                                     ; preds = %34, %26
  ret void, !dbg !2805
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_delay_handler(%struct._vector*) #0 !dbg !2806 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2807, metadata !220), !dbg !2808
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2809, metadata !220), !dbg !2810
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2811
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2812
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2812
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2813
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2813
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2814
  %11 = load i8*, i8** %10, align 8, !dbg !2814
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2815
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2810
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2816, metadata !220), !dbg !2817
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2818
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 4294, i1 zeroext true), !dbg !2820
  br i1 %14, label %21, label %15, !dbg !2821

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2822
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2824
  %18 = load i8*, i8** %17, align 8, !dbg !2824
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2825
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2826
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.136, i32 0, i32 0), i8* %18, i8* %20), !dbg !2827
  br label %26, !dbg !2829

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2830
  %23 = mul i32 %22, 1000000, !dbg !2831
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2832
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 25, !dbg !2833
  store i32 %23, i32* %25, align 8, !dbg !2834
  br label %26, !dbg !2835

; <label>:26:                                     ; preds = %21, %15
  ret void, !dbg !2836
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_refresh_handler(%struct._vector*) #0 !dbg !2838 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2839, metadata !220), !dbg !2840
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2841, metadata !220), !dbg !2842
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2843
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2844
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2844
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2845
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2845
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2846
  %11 = load i8*, i8** %10, align 8, !dbg !2846
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2847
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2842
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2848, metadata !220), !dbg !2849
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2850
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext true), !dbg !2852
  br i1 %14, label %24, label %15, !dbg !2853

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2854
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2856
  %18 = load i8*, i8** %17, align 8, !dbg !2856
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2857
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2858
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.137, i32 0, i32 0), i8* %18, i8* %20), !dbg !2859
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2861
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 26, !dbg !2862
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0, !dbg !2863
  store i64 0, i64* %23, align 8, !dbg !2864
  br label %30, !dbg !2865

; <label>:24:                                     ; preds = %1
  %25 = load i32, i32* %4, align 4, !dbg !2866
  %26 = zext i32 %25 to i64, !dbg !2866
  %27 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2867
  %28 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %27, i32 0, i32 26, !dbg !2868
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0, !dbg !2869
  store i64 %26, i64* %29, align 8, !dbg !2870
  br label %30

; <label>:30:                                     ; preds = %24, %15
  %31 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2871
  %32 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %31, i32 0, i32 26, !dbg !2872
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1, !dbg !2873
  store i64 0, i64* %33, align 8, !dbg !2874
  ret void, !dbg !2875
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_rep_handler(%struct._vector*) #0 !dbg !2876 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2877, metadata !220), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2879, metadata !220), !dbg !2880
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2881
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2882
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2882
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2883
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2883
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2884
  %11 = load i8*, i8** %10, align 8, !dbg !2884
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2885
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2880
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2886, metadata !220), !dbg !2887
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2888
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext true), !dbg !2890
  br i1 %14, label %21, label %15, !dbg !2891

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2892
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2894
  %18 = load i8*, i8** %17, align 8, !dbg !2894
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2895
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2896
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.138, i32 0, i32 0), i8* %18, i8* %20), !dbg !2897
  br label %32, !dbg !2899

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2900
  %23 = icmp eq i32 %22, 0, !dbg !2902
  br i1 %23, label %24, label %28, !dbg !2903

; <label>:24:                                     ; preds = %21
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2904
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 1, !dbg !2906
  %27 = load i8*, i8** %26, align 8, !dbg !2906
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.139, i32 0, i32 0), i8* %27), !dbg !2907
  store i32 1, i32* %4, align 4, !dbg !2908
  br label %28, !dbg !2909

; <label>:28:                                     ; preds = %24, %21
  %29 = load i32, i32* %4, align 4, !dbg !2910
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2911
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 28, !dbg !2912
  store i32 %29, i32* %31, align 8, !dbg !2913
  br label %32, !dbg !2914

; <label>:32:                                     ; preds = %28, %15
  ret void, !dbg !2915
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_refresh_rep_handler(%struct._vector*) #0 !dbg !2917 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2918, metadata !220), !dbg !2919
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2920, metadata !220), !dbg !2921
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2922
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2923
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2923
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2924
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2924
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2925
  %11 = load i8*, i8** %10, align 8, !dbg !2925
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2926
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2921
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2927, metadata !220), !dbg !2928
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2929
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext true), !dbg !2931
  br i1 %14, label %21, label %15, !dbg !2932

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2933
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2935
  %18 = load i8*, i8** %17, align 8, !dbg !2935
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2936
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2937
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.140, i32 0, i32 0), i8* %18, i8* %20), !dbg !2938
  br label %32, !dbg !2940

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2941
  %23 = icmp eq i32 %22, 0, !dbg !2943
  br i1 %23, label %24, label %28, !dbg !2944

; <label>:24:                                     ; preds = %21
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2945
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 1, !dbg !2947
  %27 = load i8*, i8** %26, align 8, !dbg !2947
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.141, i32 0, i32 0), i8* %27), !dbg !2948
  store i32 1, i32* %4, align 4, !dbg !2949
  br label %28, !dbg !2950

; <label>:28:                                     ; preds = %24, %21
  %29 = load i32, i32* %4, align 4, !dbg !2951
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2952
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 29, !dbg !2953
  store i32 %29, i32* %31, align 4, !dbg !2954
  br label %32, !dbg !2955

; <label>:32:                                     ; preds = %28, %15
  ret void, !dbg !2956
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_lower_prio_delay_handler(%struct._vector*) #0 !dbg !2958 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2959, metadata !220), !dbg !2960
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2961, metadata !220), !dbg !2962
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2963
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2964
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2964
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2965
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2965
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2966
  %11 = load i8*, i8** %10, align 8, !dbg !2966
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2967
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2962
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2968, metadata !220), !dbg !2969
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2970
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 4294, i1 zeroext true), !dbg !2972
  br i1 %14, label %21, label %15, !dbg !2973

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2974
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !2976
  %18 = load i8*, i8** %17, align 8, !dbg !2976
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2977
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2978
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.142, i32 0, i32 0), i8* %18, i8* %20), !dbg !2979
  br label %26, !dbg !2981

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !2982
  %23 = mul i32 %22, 1000000, !dbg !2983
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2984
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 30, !dbg !2985
  store i32 %23, i32* %25, align 8, !dbg !2986
  br label %26, !dbg !2987

; <label>:26:                                     ; preds = %21, %15
  ret void, !dbg !2988
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_lower_prio_rep_handler(%struct._vector*) #0 !dbg !2990 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2991, metadata !220), !dbg !2992
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2993, metadata !220), !dbg !2994
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2995
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !2996
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2996
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2997
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2997
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2998
  %11 = load i8*, i8** %10, align 8, !dbg !2998
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !2999
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !2994
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3000, metadata !220), !dbg !3001
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3002
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 2147483647, i1 zeroext true), !dbg !3004
  br i1 %14, label %21, label %15, !dbg !3005

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3006
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 1, !dbg !3008
  %18 = load i8*, i8** %17, align 8, !dbg !3008
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3009
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !3010
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.143, i32 0, i32 0), i8* %18, i8* %20), !dbg !3011
  br label %25, !dbg !3013

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !3014
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3015
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 33, !dbg !3016
  store i32 %22, i32* %24, align 8, !dbg !3017
  br label %25, !dbg !3018

; <label>:25:                                     ; preds = %21, %15
  ret void, !dbg !3019
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_lower_prio_no_advert_handler(%struct._vector*) #0 !dbg !3021 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3022, metadata !220), !dbg !3023
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !3024, metadata !220), !dbg !3025
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3026
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !3027
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3027
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3028
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3028
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3029
  %11 = load i8*, i8** %10, align 8, !dbg !3029
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !3030
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3031, metadata !220), !dbg !3032
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3033
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !3035
  %15 = load i32, i32* %14, align 4, !dbg !3035
  %16 = icmp uge i32 %15, 2, !dbg !3036
  br i1 %16, label %17, label %34, !dbg !3037

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3038
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !3040
  %20 = call i32 @check_true_false(i8* %19), !dbg !3041
  store i32 %20, i32* %4, align 4, !dbg !3043
  %21 = load i32, i32* %4, align 4, !dbg !3044
  %22 = icmp sge i32 %21, 0, !dbg !3046
  br i1 %22, label %23, label %27, !dbg !3047

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %4, align 4, !dbg !3048
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3049
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 34, !dbg !3050
  store i32 %24, i32* %26, align 4, !dbg !3051
  br label %33, !dbg !3049

; <label>:27:                                     ; preds = %17
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3052
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 1, !dbg !3053
  %30 = load i8*, i8** %29, align 8, !dbg !3053
  %31 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3054
  %32 = call i8* @strvec_slot(%struct._vector* %31, i64 1), !dbg !3055
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.144, i32 0, i32 0), i8* %30, i8* %32), !dbg !3056
  br label %33

; <label>:33:                                     ; preds = %27, %23
  br label %37, !dbg !3058

; <label>:34:                                     ; preds = %1
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3059
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 34, !dbg !3061
  store i32 1, i32* %36, align 4, !dbg !3062
  br label %37

; <label>:37:                                     ; preds = %34, %33
  ret void, !dbg !3063
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_higher_prio_send_advert_handler(%struct._vector*) #0 !dbg !3064 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._vrrp_t*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3065, metadata !220), !dbg !3066
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3067, metadata !220), !dbg !3068
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !3069, metadata !220), !dbg !3070
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3071
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !3072
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3072
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3073
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3073
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3074
  %11 = load i8*, i8** %10, align 8, !dbg !3074
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !3075
  store %struct._vrrp_t* %12, %struct._vrrp_t** %4, align 8, !dbg !3070
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3076
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !3078
  %15 = load i32, i32* %14, align 4, !dbg !3078
  %16 = icmp uge i32 %15, 2, !dbg !3079
  br i1 %16, label %17, label %34, !dbg !3080

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3081
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !3083
  %20 = call i32 @check_true_false(i8* %19), !dbg !3084
  store i32 %20, i32* %3, align 4, !dbg !3086
  %21 = load i32, i32* %3, align 4, !dbg !3087
  %22 = icmp sge i32 %21, 0, !dbg !3089
  br i1 %22, label %23, label %27, !dbg !3090

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %3, align 4, !dbg !3091
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3092
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 35, !dbg !3093
  store i32 %24, i32* %26, align 8, !dbg !3094
  br label %33, !dbg !3092

; <label>:27:                                     ; preds = %17
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3095
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 1, !dbg !3096
  %30 = load i8*, i8** %29, align 8, !dbg !3096
  %31 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3097
  %32 = call i8* @strvec_slot(%struct._vector* %31, i64 1), !dbg !3098
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.145, i32 0, i32 0), i8* %30, i8* %32), !dbg !3099
  br label %33

; <label>:33:                                     ; preds = %27, %23
  br label %37, !dbg !3101

; <label>:34:                                     ; preds = %1
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3102
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 35, !dbg !3104
  store i32 1, i32* %36, align 8, !dbg !3105
  br label %37

; <label>:37:                                     ; preds = %34, %33
  ret void, !dbg !3106
}

; Function Attrs: nounwind uwtable
define internal void @kernel_rx_buf_size_handler(%struct._vector*) #0 !dbg !3107 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3108, metadata !220), !dbg !3109
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !3110, metadata !220), !dbg !3111
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3112
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !3113
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3113
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3114
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3114
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3115
  %11 = load i8*, i8** %10, align 8, !dbg !3115
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !3116
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !3111
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3117, metadata !220), !dbg !3118
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3119
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !3121
  %15 = load i32, i32* %14, align 4, !dbg !3121
  %16 = icmp eq i32 %15, 2, !dbg !3122
  br i1 %16, label %17, label %25, !dbg !3123

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3124
  %19 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %18, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext false), !dbg !3125
  br i1 %19, label %20, label %25, !dbg !3126

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4, !dbg !3128
  %22 = zext i32 %21 to i64, !dbg !3128
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3130
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 50, !dbg !3131
  store i64 %22, i64* %24, align 8, !dbg !3132
  br label %29, !dbg !3133

; <label>:25:                                     ; preds = %17, %1
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3134
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 1, !dbg !3135
  %28 = load i8*, i8** %27, align 8, !dbg !3135
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.146, i32 0, i32 0), i8* %28), !dbg !3136
  br label %29, !dbg !3137

; <label>:29:                                     ; preds = %25, %20
  ret void, !dbg !3138
}

declare void @install_sublevel() #2

; Function Attrs: nounwind uwtable
define internal void @vrrp_auth_type_handler(%struct._vector*) #0 !dbg !3139 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3140, metadata !220), !dbg !3141
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !3142, metadata !220), !dbg !3143
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3144
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 5, !dbg !3145
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3145
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3146
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3146
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3147
  %11 = load i8*, i8** %10, align 8, !dbg !3147
  %12 = bitcast i8* %11 to %struct._vrrp_t*, !dbg !3148
  store %struct._vrrp_t* %12, %struct._vrrp_t** %3, align 8, !dbg !3143
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3149, metadata !220), !dbg !3150
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3151
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !3152
  store i8* %14, i8** %4, align 8, !dbg !3150
  %15 = load i8*, i8** %4, align 8, !dbg !3153
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0)) #8, !dbg !3155
  %17 = icmp ne i32 %16, 0, !dbg !3155
  br i1 %17, label %21, label %18, !dbg !3156

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3157
  %20 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %19, i32 0, i32 75, !dbg !3158
  store i8 2, i8* %20, align 4, !dbg !3159
  br label %34, !dbg !3157

; <label>:21:                                     ; preds = %1
  %22 = load i8*, i8** %4, align 8, !dbg !3160
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0)) #8, !dbg !3162
  %24 = icmp ne i32 %23, 0, !dbg !3162
  br i1 %24, label %28, label %25, !dbg !3163

; <label>:25:                                     ; preds = %21
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3164
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 75, !dbg !3165
  store i8 1, i8* %27, align 4, !dbg !3166
  br label %33, !dbg !3164

; <label>:28:                                     ; preds = %21
  %29 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3167
  %30 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %29, i32 0, i32 1, !dbg !3168
  %31 = load i8*, i8** %30, align 8, !dbg !3168
  %32 = load i8*, i8** %4, align 8, !dbg !3169
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.149, i32 0, i32 0), i8* %31, i8* %32), !dbg !3170
  br label %33

; <label>:33:                                     ; preds = %28, %25
  br label %34

; <label>:34:                                     ; preds = %33, %18
  ret void, !dbg !3171
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_auth_pass_handler(%struct._vector*) #0 !dbg !3172 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3173, metadata !220), !dbg !3174
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !3175, metadata !220), !dbg !3176
  %7 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3177
  %8 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %7, i32 0, i32 5, !dbg !3178
  %9 = load %struct._list*, %struct._list** %8, align 8, !dbg !3178
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 1, !dbg !3179
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !3179
  %12 = getelementptr inbounds %struct._element, %struct._element* %11, i32 0, i32 2, !dbg !3180
  %13 = load i8*, i8** %12, align 8, !dbg !3180
  %14 = bitcast i8* %13 to %struct._vrrp_t*, !dbg !3181
  store %struct._vrrp_t* %14, %struct._vrrp_t** %3, align 8, !dbg !3176
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3182, metadata !220), !dbg !3183
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3184
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !3185
  store i8* %16, i8** %4, align 8, !dbg !3183
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3186, metadata !220), !dbg !3187
  store i64 8, i64* %5, align 8, !dbg !3187
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3188, metadata !220), !dbg !3189
  %17 = load i8*, i8** %4, align 8, !dbg !3190
  %18 = call i64 @strlen(i8* %17) #8, !dbg !3191
  store i64 %18, i64* %6, align 8, !dbg !3189
  %19 = load i64, i64* %6, align 8, !dbg !3192
  %20 = load i64, i64* %5, align 8, !dbg !3194
  %21 = icmp ugt i64 %19, %20, !dbg !3195
  br i1 %21, label %22, label %25, !dbg !3196

; <label>:22:                                     ; preds = %1
  %23 = load i64, i64* %5, align 8, !dbg !3197
  store i64 %23, i64* %6, align 8, !dbg !3199
  %24 = load i64, i64* %5, align 8, !dbg !3200
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.150, i32 0, i32 0), i64 %24), !dbg !3201
  br label %25, !dbg !3202

; <label>:25:                                     ; preds = %22, %1
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3203
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 76, !dbg !3204
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i32 0, i32 0, !dbg !3205
  %29 = load i64, i64* %5, align 8, !dbg !3206
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %29, i32 1, i1 false), !dbg !3205
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3207
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 76, !dbg !3208
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i32 0, i32 0, !dbg !3209
  %33 = load i8*, i8** %4, align 8, !dbg !3210
  %34 = load i64, i64* %6, align 8, !dbg !3211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %34, i32 1, i1 false), !dbg !3209
  ret void, !dbg !3212
}

declare void @install_sublevel_end() #2

; Function Attrs: nounwind uwtable
define internal void @vrrp_script_handler(%struct._vector*) #0 !dbg !3213 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3214, metadata !220), !dbg !3215
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3216
  %4 = icmp ne %struct._vector* %3, null, !dbg !3216
  br i1 %4, label %6, label %5, !dbg !3218

; <label>:5:                                      ; preds = %1
  br label %9, !dbg !3219

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3220
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !3221
  call void @alloc_vrrp_script(i8* %8), !dbg !3222
  store i8 0, i8* @script_user_set, align 1, !dbg !3224
  store i8 0, i8* @remove_script, align 1, !dbg !3225
  br label %9, !dbg !3226

; <label>:9:                                      ; preds = %6, %5
  ret void, !dbg !3227
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_script_handler(%struct._vector*) #0 !dbg !3228 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3229, metadata !220), !dbg !3230
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3231, metadata !220), !dbg !3252
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3253
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 9, !dbg !3254
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3254
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3255
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3255
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3256
  %11 = load i8*, i8** %10, align 8, !dbg !3256
  %12 = bitcast i8* %11 to %struct._vrrp_script*, !dbg !3257
  store %struct._vrrp_script* %12, %struct._vrrp_script** %3, align 8, !dbg !3252
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !3258, metadata !220), !dbg !3259
  %13 = call %struct._vector* @alloc_strvec_quoted_escaped(i8* null), !dbg !3260
  store %struct._vector* %13, %struct._vector** %4, align 8, !dbg !3261
  %14 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !3262
  %15 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3263
  %16 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %15, i32 0, i32 1, !dbg !3264
  call void @set_script_params_array(%struct._vector* %14, %struct._notify_script* %16, i32 0), !dbg !3265
  %17 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !3266
  call void @free_strvec(%struct._vector* %17), !dbg !3267
  ret void, !dbg !3268
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_interval_handler(%struct._vector*) #0 !dbg !3269 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3270, metadata !220), !dbg !3271
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3272, metadata !220), !dbg !3273
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3274
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 9, !dbg !3275
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3275
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3276
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3276
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3277
  %11 = load i8*, i8** %10, align 8, !dbg !3277
  %12 = bitcast i8* %11 to %struct._vrrp_script*, !dbg !3278
  store %struct._vrrp_script* %12, %struct._vrrp_script** %3, align 8, !dbg !3273
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3279, metadata !220), !dbg !3280
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3281
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 4294, i1 zeroext true), !dbg !3283
  br i1 %14, label %21, label %15, !dbg !3284

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3285
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 0, !dbg !3287
  %18 = load i8*, i8** %17, align 8, !dbg !3287
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3288
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !3289
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.151, i32 0, i32 0), i8* %18, i8* %20, i32 4294), !dbg !3290
  br label %34, !dbg !3292

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !3293
  %23 = icmp eq i32 %22, 0, !dbg !3295
  br i1 %23, label %24, label %28, !dbg !3296

; <label>:24:                                     ; preds = %21
  %25 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3297
  %26 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %25, i32 0, i32 0, !dbg !3299
  %27 = load i8*, i8** %26, align 8, !dbg !3299
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.152, i32 0, i32 0), i8* %27), !dbg !3300
  store i32 1, i32* %4, align 4, !dbg !3301
  br label %28, !dbg !3302

; <label>:28:                                     ; preds = %24, %21
  %29 = load i32, i32* %4, align 4, !dbg !3303
  %30 = mul i32 %29, 1000000, !dbg !3304
  %31 = zext i32 %30 to i64, !dbg !3303
  %32 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3305
  %33 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %32, i32 0, i32 2, !dbg !3306
  store i64 %31, i64* %33, align 8, !dbg !3307
  br label %34, !dbg !3308

; <label>:34:                                     ; preds = %28, %15
  ret void, !dbg !3309
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_timeout_handler(%struct._vector*) #0 !dbg !3311 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3312, metadata !220), !dbg !3313
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3314, metadata !220), !dbg !3315
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3316
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 9, !dbg !3317
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3317
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3318
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3318
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3319
  %11 = load i8*, i8** %10, align 8, !dbg !3319
  %12 = bitcast i8* %11 to %struct._vrrp_script*, !dbg !3320
  store %struct._vrrp_script* %12, %struct._vrrp_script** %3, align 8, !dbg !3315
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3321, metadata !220), !dbg !3322
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3323
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 4294, i1 zeroext true), !dbg !3325
  br i1 %14, label %21, label %15, !dbg !3326

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3327
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 0, !dbg !3329
  %18 = load i8*, i8** %17, align 8, !dbg !3329
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3330
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !3331
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.153, i32 0, i32 0), i8* %18, i8* %20), !dbg !3332
  br label %34, !dbg !3334

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4, !dbg !3335
  %23 = icmp eq i32 %22, 0, !dbg !3337
  br i1 %23, label %24, label %28, !dbg !3338

; <label>:24:                                     ; preds = %21
  %25 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3339
  %26 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %25, i32 0, i32 0, !dbg !3341
  %27 = load i8*, i8** %26, align 8, !dbg !3341
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.154, i32 0, i32 0), i8* %27), !dbg !3342
  store i32 1, i32* %4, align 4, !dbg !3343
  br label %28, !dbg !3344

; <label>:28:                                     ; preds = %24, %21
  %29 = load i32, i32* %4, align 4, !dbg !3345
  %30 = mul i32 %29, 1000000, !dbg !3346
  %31 = zext i32 %30 to i64, !dbg !3345
  %32 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3347
  %33 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %32, i32 0, i32 3, !dbg !3348
  store i64 %31, i64* %33, align 8, !dbg !3349
  br label %34, !dbg !3350

; <label>:34:                                     ; preds = %28, %15
  ret void, !dbg !3351
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_weight_handler(%struct._vector*) #0 !dbg !3353 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3354, metadata !220), !dbg !3355
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3356, metadata !220), !dbg !3357
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3358
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 9, !dbg !3359
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3359
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3360
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3360
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3361
  %11 = load i8*, i8** %10, align 8, !dbg !3361
  %12 = bitcast i8* %11 to %struct._vrrp_script*, !dbg !3362
  store %struct._vrrp_script* %12, %struct._vrrp_script** %3, align 8, !dbg !3357
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3363, metadata !220), !dbg !3364
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3365
  %14 = call zeroext i1 @read_int_strvec(%struct._vector* %13, i64 1, i32* %4, i32 -253, i32 253, i1 zeroext true), !dbg !3367
  br i1 %14, label %21, label %15, !dbg !3368

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3369
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 0, !dbg !3370
  %18 = load i8*, i8** %17, align 8, !dbg !3370
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3371
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !3372
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.155, i32 0, i32 0), i8* %18, i8* %20), !dbg !3373
  br label %21, !dbg !3375

; <label>:21:                                     ; preds = %15, %1
  %22 = load i32, i32* %4, align 4, !dbg !3376
  %23 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3377
  %24 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %23, i32 0, i32 4, !dbg !3378
  store i32 %22, i32* %24, align 8, !dbg !3379
  ret void, !dbg !3380
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_rise_handler(%struct._vector*) #0 !dbg !3381 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3382, metadata !220), !dbg !3383
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3384, metadata !220), !dbg !3385
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3386
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 9, !dbg !3387
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3387
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3388
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3388
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3389
  %11 = load i8*, i8** %10, align 8, !dbg !3389
  %12 = bitcast i8* %11 to %struct._vrrp_script*, !dbg !3390
  store %struct._vrrp_script* %12, %struct._vrrp_script** %3, align 8, !dbg !3385
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3391, metadata !220), !dbg !3392
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3393
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 2147483647, i1 zeroext true), !dbg !3395
  br i1 %14, label %23, label %15, !dbg !3396

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3397
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 0, !dbg !3399
  %18 = load i8*, i8** %17, align 8, !dbg !3399
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3400
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !3401
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.156, i32 0, i32 0), i8* %18, i8* %20), !dbg !3402
  %21 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3404
  %22 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %21, i32 0, i32 6, !dbg !3405
  store i32 1, i32* %22, align 8, !dbg !3406
  br label %27, !dbg !3407

; <label>:23:                                     ; preds = %1
  %24 = load i32, i32* %4, align 4, !dbg !3408
  %25 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3409
  %26 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %25, i32 0, i32 6, !dbg !3410
  store i32 %24, i32* %26, align 8, !dbg !3411
  br label %27

; <label>:27:                                     ; preds = %23, %15
  ret void, !dbg !3412
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_fall_handler(%struct._vector*) #0 !dbg !3413 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3414, metadata !220), !dbg !3415
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3416, metadata !220), !dbg !3417
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3418
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 9, !dbg !3419
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3419
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3420
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3420
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3421
  %11 = load i8*, i8** %10, align 8, !dbg !3421
  %12 = bitcast i8* %11 to %struct._vrrp_script*, !dbg !3422
  store %struct._vrrp_script* %12, %struct._vrrp_script** %3, align 8, !dbg !3417
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3423, metadata !220), !dbg !3424
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3425
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 2147483647, i1 zeroext true), !dbg !3427
  br i1 %14, label %23, label %15, !dbg !3428

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3429
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 0, !dbg !3431
  %18 = load i8*, i8** %17, align 8, !dbg !3431
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3432
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !3433
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.157, i32 0, i32 0), i8* %18, i8* %20), !dbg !3434
  %21 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3436
  %22 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %21, i32 0, i32 7, !dbg !3437
  store i32 1, i32* %22, align 4, !dbg !3438
  br label %27, !dbg !3439

; <label>:23:                                     ; preds = %1
  %24 = load i32, i32* %4, align 4, !dbg !3440
  %25 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3441
  %26 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %25, i32 0, i32 7, !dbg !3442
  store i32 %24, i32* %26, align 4, !dbg !3443
  br label %27

; <label>:27:                                     ; preds = %23, %15
  ret void, !dbg !3444
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_user_handler(%struct._vector*) #0 !dbg !3445 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3446, metadata !220), !dbg !3447
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3448, metadata !220), !dbg !3449
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3450
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 9, !dbg !3451
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !3451
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !3452
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !3452
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !3453
  %10 = load i8*, i8** %9, align 8, !dbg !3453
  %11 = bitcast i8* %10 to %struct._vrrp_script*, !dbg !3454
  store %struct._vrrp_script* %11, %struct._vrrp_script** %3, align 8, !dbg !3449
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3455
  %13 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3457
  %14 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %13, i32 0, i32 1, !dbg !3458
  %15 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %14, i32 0, i32 3, !dbg !3459
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3460
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 1, !dbg !3461
  %18 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %17, i32 0, i32 4, !dbg !3462
  %19 = call zeroext i1 @set_script_uid_gid(%struct._vector* %12, i32 1, i32* %15, i32* %18), !dbg !3463
  br i1 %19, label %20, label %24, !dbg !3464

; <label>:20:                                     ; preds = %1
  %21 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3465
  %22 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %21, i32 0, i32 1, !dbg !3467
  %23 = call i8* @cmd_str(%struct._notify_script* %22), !dbg !3468
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.158, i32 0, i32 0), i8* %23), !dbg !3469
  store i8 1, i8* @remove_script, align 1, !dbg !3471
  br label %25, !dbg !3472

; <label>:24:                                     ; preds = %1
  store i8 0, i8* @remove_script, align 1, !dbg !3473
  store i8 1, i8* @script_user_set, align 1, !dbg !3475
  br label %25

; <label>:25:                                     ; preds = %24, %20
  ret void, !dbg !3476
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_init_fail_handler(%struct._vector*) #0 !dbg !3477 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3478, metadata !220), !dbg !3479
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !3480, metadata !220), !dbg !3481
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3482
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 9, !dbg !3483
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !3483
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !3484
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !3484
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !3485
  %10 = load i8*, i8** %9, align 8, !dbg !3485
  %11 = bitcast i8* %10 to %struct._vrrp_script*, !dbg !3486
  store %struct._vrrp_script* %11, %struct._vrrp_script** %3, align 8, !dbg !3481
  %12 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !3487
  %13 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %12, i32 0, i32 11, !dbg !3488
  store i32 2, i32* %13, align 8, !dbg !3489
  ret void, !dbg !3490
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_vscript_end_handler() #0 !dbg !3491 {
  %1 = alloca %struct._vrrp_script*, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %1, metadata !3492, metadata !220), !dbg !3493
  %2 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3494
  %3 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %2, i32 0, i32 9, !dbg !3495
  %4 = load %struct._list*, %struct._list** %3, align 8, !dbg !3495
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !3496
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !3496
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !3497
  %8 = load i8*, i8** %7, align 8, !dbg !3497
  %9 = bitcast i8* %8 to %struct._vrrp_script*, !dbg !3498
  store %struct._vrrp_script* %9, %struct._vrrp_script** %1, align 8, !dbg !3493
  %10 = load %struct._vrrp_script*, %struct._vrrp_script** %1, align 8, !dbg !3499
  %11 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %10, i32 0, i32 1, !dbg !3501
  %12 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %11, i32 0, i32 0, !dbg !3502
  %13 = load i8**, i8*** %12, align 8, !dbg !3502
  %14 = icmp ne i8** %13, null, !dbg !3499
  br i1 %14, label %15, label %23, !dbg !3503

; <label>:15:                                     ; preds = %0
  %16 = load %struct._vrrp_script*, %struct._vrrp_script** %1, align 8, !dbg !3504
  %17 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %16, i32 0, i32 1, !dbg !3506
  %18 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %17, i32 0, i32 0, !dbg !3507
  %19 = load i8**, i8*** %18, align 8, !dbg !3507
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !3504
  %21 = load i8*, i8** %20, align 8, !dbg !3504
  %22 = icmp ne i8* %21, null, !dbg !3504
  br i1 %22, label %27, label %23, !dbg !3508

; <label>:23:                                     ; preds = %15, %0
  %24 = load %struct._vrrp_script*, %struct._vrrp_script** %1, align 8, !dbg !3509
  %25 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %24, i32 0, i32 0, !dbg !3511
  %26 = load i8*, i8** %25, align 8, !dbg !3511
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.159, i32 0, i32 0), i8* %26), !dbg !3512
  store i8 1, i8* @remove_script, align 1, !dbg !3513
  br label %42, !dbg !3514

; <label>:27:                                     ; preds = %15
  %28 = load i8, i8* @remove_script, align 1, !dbg !3515
  %29 = trunc i8 %28 to i1, !dbg !3515
  br i1 %29, label %41, label %30, !dbg !3517

; <label>:30:                                     ; preds = %27
  %31 = load i8, i8* @script_user_set, align 1, !dbg !3518
  %32 = trunc i8 %31 to i1, !dbg !3518
  br i1 %32, label %33, label %34, !dbg !3521

; <label>:33:                                     ; preds = %30
  br label %63, !dbg !3522

; <label>:34:                                     ; preds = %30
  %35 = call zeroext i1 @set_default_script_user(i8* null, i8* null), !dbg !3523
  br i1 %35, label %36, label %40, !dbg !3525

; <label>:36:                                     ; preds = %34
  %37 = load %struct._vrrp_script*, %struct._vrrp_script** %1, align 8, !dbg !3526
  %38 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %37, i32 0, i32 0, !dbg !3528
  %39 = load i8*, i8** %38, align 8, !dbg !3528
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.160, i32 0, i32 0), i8* %39), !dbg !3529
  store i8 1, i8* @remove_script, align 1, !dbg !3530
  br label %40, !dbg !3531

; <label>:40:                                     ; preds = %36, %34
  br label %41, !dbg !3532

; <label>:41:                                     ; preds = %40, %27
  br label %42

; <label>:42:                                     ; preds = %41, %23
  %43 = load i8, i8* @remove_script, align 1, !dbg !3533
  %44 = trunc i8 %43 to i1, !dbg !3533
  br i1 %44, label %45, label %54, !dbg !3535

; <label>:45:                                     ; preds = %42
  %46 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3536
  %47 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %46, i32 0, i32 9, !dbg !3538
  %48 = load %struct._list*, %struct._list** %47, align 8, !dbg !3538
  %49 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3539
  %50 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %49, i32 0, i32 9, !dbg !3540
  %51 = load %struct._list*, %struct._list** %50, align 8, !dbg !3540
  %52 = getelementptr inbounds %struct._list, %struct._list* %51, i32 0, i32 1, !dbg !3541
  %53 = load %struct._element*, %struct._element** %52, align 8, !dbg !3541
  call void @free_list_element(%struct._list* %48, %struct._element* %53), !dbg !3542
  br label %63, !dbg !3543

; <label>:54:                                     ; preds = %42
  %55 = load i32, i32* @default_script_uid, align 4, !dbg !3544
  %56 = load %struct._vrrp_script*, %struct._vrrp_script** %1, align 8, !dbg !3545
  %57 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %56, i32 0, i32 1, !dbg !3546
  %58 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %57, i32 0, i32 3, !dbg !3547
  store i32 %55, i32* %58, align 8, !dbg !3548
  %59 = load i32, i32* @default_script_gid, align 4, !dbg !3549
  %60 = load %struct._vrrp_script*, %struct._vrrp_script** %1, align 8, !dbg !3550
  %61 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %60, i32 0, i32 1, !dbg !3551
  %62 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %61, i32 0, i32 4, !dbg !3552
  store i32 %59, i32* %62, align 4, !dbg !3553
  br label %63, !dbg !3554

; <label>:63:                                     ; preds = %54, %45, %33
  ret void, !dbg !3555
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_tfile_handler(%struct._vector*) #0 !dbg !3557 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3558, metadata !220), !dbg !3559
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3560
  %4 = icmp ne %struct._vector* %3, null, !dbg !3560
  br i1 %4, label %6, label %5, !dbg !3562

; <label>:5:                                      ; preds = %1
  br label %9, !dbg !3563

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3564
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !3565
  call void @alloc_vrrp_file(i8* %8), !dbg !3566
  store i32 0, i32* @track_file_init, align 4, !dbg !3568
  br label %9, !dbg !3569

; <label>:9:                                      ; preds = %6, %5
  ret void, !dbg !3570
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_tfile_file_handler(%struct._vector*) #0 !dbg !3571 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vrrp_file*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3572, metadata !220), !dbg !3573
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %3, metadata !3574, metadata !220), !dbg !3586
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3587
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 10, !dbg !3588
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !3588
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !3589
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !3589
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !3590
  %10 = load i8*, i8** %9, align 8, !dbg !3590
  %11 = bitcast i8* %10 to %struct._vrrp_file*, !dbg !3591
  store %struct._vrrp_file* %11, %struct._vrrp_file** %3, align 8, !dbg !3586
  %12 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3592
  %13 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %12, i32 0, i32 1, !dbg !3594
  %14 = load i8*, i8** %13, align 8, !dbg !3594
  %15 = icmp ne i8* %14, null, !dbg !3592
  br i1 %15, label %16, label %22, !dbg !3595

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3596
  %18 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %17, i32 0, i32 0, !dbg !3598
  %19 = load i8*, i8** %18, align 8, !dbg !3598
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3599
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !3600
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.161, i32 0, i32 0), i8* %19, i8* %21), !dbg !3601
  br label %27, !dbg !3603

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3604
  %24 = call i8* @set_value(%struct._vector* %23), !dbg !3605
  %25 = load %struct._vrrp_file*, %struct._vrrp_file** %3, align 8, !dbg !3606
  %26 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %25, i32 0, i32 1, !dbg !3607
  store i8* %24, i8** %26, align 8, !dbg !3608
  br label %27, !dbg !3609

; <label>:27:                                     ; preds = %22, %16
  ret void, !dbg !3610
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_tfile_weight_handler(%struct._vector*) #0 !dbg !3612 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._vrrp_file*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3613, metadata !220), !dbg !3614
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3615, metadata !220), !dbg !3616
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %4, metadata !3617, metadata !220), !dbg !3618
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3619
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 10, !dbg !3620
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3620
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3621
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3621
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3622
  %11 = load i8*, i8** %10, align 8, !dbg !3622
  %12 = bitcast i8* %11 to %struct._vrrp_file*, !dbg !3623
  store %struct._vrrp_file* %12, %struct._vrrp_file** %4, align 8, !dbg !3618
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3624
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !3626
  %15 = load i32, i32* %14, align 4, !dbg !3626
  %16 = icmp ult i32 %15, 2, !dbg !3627
  br i1 %16, label %17, label %21, !dbg !3628

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3629
  %19 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %18, i32 0, i32 0, !dbg !3631
  %20 = load i8*, i8** %19, align 8, !dbg !3631
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.162, i32 0, i32 0), i8* %20), !dbg !3632
  br label %45, !dbg !3633

; <label>:21:                                     ; preds = %1
  %22 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3634
  %23 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %22, i32 0, i32 3, !dbg !3636
  %24 = load i32, i32* %23, align 8, !dbg !3636
  %25 = icmp ne i32 %24, 1, !dbg !3637
  br i1 %25, label %26, label %32, !dbg !3638

; <label>:26:                                     ; preds = %21
  %27 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3639
  %28 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %27, i32 0, i32 0, !dbg !3641
  %29 = load i8*, i8** %28, align 8, !dbg !3641
  %30 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3642
  %31 = call i8* @strvec_slot(%struct._vector* %30, i64 1), !dbg !3643
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.163, i32 0, i32 0), i8* %29, i8* %31), !dbg !3644
  br label %45, !dbg !3646

; <label>:32:                                     ; preds = %21
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3647
  %34 = call zeroext i1 @read_int_strvec(%struct._vector* %33, i64 1, i32* %3, i32 -254, i32 254, i1 zeroext true), !dbg !3649
  br i1 %34, label %41, label %35, !dbg !3650

; <label>:35:                                     ; preds = %32
  %36 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3651
  %37 = call i8* @strvec_slot(%struct._vector* %36, i64 1), !dbg !3653
  %38 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3654
  %39 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %38, i32 0, i32 0, !dbg !3655
  %40 = load i8*, i8** %39, align 8, !dbg !3655
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.164, i32 0, i32 0), i8* %37, i8* %40), !dbg !3656
  store i32 1, i32* %3, align 4, !dbg !3657
  br label %41, !dbg !3658

; <label>:41:                                     ; preds = %35, %32
  %42 = load i32, i32* %3, align 4, !dbg !3659
  %43 = load %struct._vrrp_file*, %struct._vrrp_file** %4, align 8, !dbg !3660
  %44 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %43, i32 0, i32 3, !dbg !3661
  store i32 %42, i32* %44, align 8, !dbg !3662
  br label %45, !dbg !3663

; <label>:45:                                     ; preds = %41, %26, %17
  ret void, !dbg !3664
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_tfile_init_handler(%struct._vector*) #0 !dbg !3666 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._vrrp_file*, align 8
  %6 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !3667, metadata !220), !dbg !3668
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3669, metadata !220), !dbg !3670
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3671, metadata !220), !dbg !3672
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %5, metadata !3673, metadata !220), !dbg !3674
  %7 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3675
  %8 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %7, i32 0, i32 10, !dbg !3676
  %9 = load %struct._list*, %struct._list** %8, align 8, !dbg !3676
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 1, !dbg !3677
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !3677
  %12 = getelementptr inbounds %struct._element, %struct._element* %11, i32 0, i32 2, !dbg !3678
  %13 = load i8*, i8** %12, align 8, !dbg !3678
  %14 = bitcast i8* %13 to %struct._vrrp_file*, !dbg !3679
  store %struct._vrrp_file* %14, %struct._vrrp_file** %5, align 8, !dbg !3674
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3680, metadata !220), !dbg !3681
  store i32 1, i32* @track_file_init, align 4, !dbg !3682
  store i32 0, i32* @track_file_init_value, align 4, !dbg !3683
  store i32 1, i32* %3, align 4, !dbg !3684
  br label %15, !dbg !3686

; <label>:15:                                     ; preds = %82, %1
  %16 = load i32, i32* %3, align 4, !dbg !3687
  %17 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3690
  %18 = getelementptr inbounds %struct._vector, %struct._vector* %17, i32 0, i32 1, !dbg !3691
  %19 = load i32, i32* %18, align 4, !dbg !3691
  %20 = icmp ult i32 %16, %19, !dbg !3692
  br i1 %20, label %21, label %85, !dbg !3693

; <label>:21:                                     ; preds = %15
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3694
  %23 = load i32, i32* %3, align 4, !dbg !3696
  %24 = zext i32 %23 to i64, !dbg !3696
  %25 = call i8* @strvec_slot(%struct._vector* %22, i64 %24), !dbg !3697
  store i8* %25, i8** %4, align 8, !dbg !3698
  %26 = load i8*, i8** %4, align 8, !dbg !3699
  %27 = load i8*, i8** @WHITE_SPACE, align 8, !dbg !3700
  %28 = call i64 @strspn(i8* %26, i8* %27) #8, !dbg !3701
  %29 = load i8*, i8** %4, align 8, !dbg !3702
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !3702
  store i8* %30, i8** %4, align 8, !dbg !3702
  %31 = load i8*, i8** %4, align 8, !dbg !3703
  %32 = getelementptr inbounds i8, i8* %31, i64 0, !dbg !3703
  %33 = load i8, i8* %32, align 1, !dbg !3703
  %34 = sext i8 %33 to i32, !dbg !3705
  %35 = sext i32 %34 to i64, !dbg !3706
  %36 = call i16** @__ctype_b_loc() #1, !dbg !3707
  %37 = load i16*, i16** %36, align 8, !dbg !3708
  %38 = getelementptr inbounds i16, i16* %37, i64 %35, !dbg !3706
  %39 = load i16, i16* %38, align 2, !dbg !3706
  %40 = zext i16 %39 to i32, !dbg !3706
  %41 = and i32 %40, 2048, !dbg !3709
  %42 = icmp ne i32 %41, 0, !dbg !3709
  br i1 %42, label %49, label %43, !dbg !3710

; <label>:43:                                     ; preds = %21
  %44 = load i8*, i8** %4, align 8, !dbg !3711
  %45 = getelementptr inbounds i8, i8* %44, i64 0, !dbg !3711
  %46 = load i8, i8* %45, align 1, !dbg !3711
  %47 = sext i8 %46 to i32, !dbg !3711
  %48 = icmp eq i32 %47, 45, !dbg !3713
  br i1 %48, label %49, label %73, !dbg !3714

; <label>:49:                                     ; preds = %43, %21
  %50 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !3715
  %51 = load i32, i32* %3, align 4, !dbg !3718
  %52 = zext i32 %51 to i64, !dbg !3718
  %53 = call zeroext i1 @read_int_strvec(%struct._vector* %50, i64 %52, i32* %6, i32 -2147483648, i32 2147483647, i1 zeroext false), !dbg !3719
  br i1 %53, label %59, label %54, !dbg !3720

; <label>:54:                                     ; preds = %49
  %55 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !3721
  %56 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %55, i32 0, i32 0, !dbg !3723
  %57 = load i8*, i8** %56, align 8, !dbg !3723
  %58 = load i8*, i8** %4, align 8, !dbg !3724
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.165, i32 0, i32 0), i8* %57, i8* %58), !dbg !3725
  store i32 0, i32* %6, align 4, !dbg !3726
  br label %71, !dbg !3727

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %6, align 4, !dbg !3728
  %61 = icmp slt i32 %60, -254, !dbg !3730
  br i1 %61, label %65, label %62, !dbg !3731

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %6, align 4, !dbg !3732
  %64 = icmp sgt i32 %63, 254, !dbg !3734
  br i1 %64, label %65, label %70, !dbg !3735

; <label>:65:                                     ; preds = %62, %59
  %66 = load %struct._vrrp_file*, %struct._vrrp_file** %5, align 8, !dbg !3736
  %67 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %66, i32 0, i32 0, !dbg !3737
  %68 = load i8*, i8** %67, align 8, !dbg !3737
  %69 = load i32, i32* %6, align 4, !dbg !3738
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.166, i32 0, i32 0), i8* %68, i32 %69, i32 -254, i32 254), !dbg !3739
  br label %70, !dbg !3739

; <label>:70:                                     ; preds = %65, %62
  br label %71

; <label>:71:                                     ; preds = %70, %54
  %72 = load i32, i32* %6, align 4, !dbg !3740
  store i32 %72, i32* @track_file_init_value, align 4, !dbg !3741
  br label %81, !dbg !3742

; <label>:73:                                     ; preds = %43
  %74 = load i8*, i8** %4, align 8, !dbg !3743
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0)) #8, !dbg !3745
  %76 = icmp ne i32 %75, 0, !dbg !3745
  br i1 %76, label %78, label %77, !dbg !3746

; <label>:77:                                     ; preds = %73
  store i32 2, i32* @track_file_init, align 4, !dbg !3747
  br label %80, !dbg !3748

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %4, align 8, !dbg !3749
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.168, i32 0, i32 0), i8* %79), !dbg !3750
  br label %80

; <label>:80:                                     ; preds = %78, %77
  br label %81

; <label>:81:                                     ; preds = %80, %71
  br label %82, !dbg !3751

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %3, align 4, !dbg !3752
  %84 = add i32 %83, 1, !dbg !3752
  store i32 %84, i32* %3, align 4, !dbg !3752
  br label %15, !dbg !3754, !llvm.loop !3755

; <label>:85:                                     ; preds = %15
  ret void, !dbg !3757
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_tfile_end_handler() #0 !dbg !3758 {
  %1 = alloca %struct._vrrp_file*, align 8
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._vrrp_file** %1, metadata !3759, metadata !220), !dbg !3760
  %5 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3761
  %6 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %5, i32 0, i32 10, !dbg !3762
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !3762
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !3763
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !3763
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !3764
  %11 = load i8*, i8** %10, align 8, !dbg !3764
  %12 = bitcast i8* %11 to %struct._vrrp_file*, !dbg !3765
  store %struct._vrrp_file* %12, %struct._vrrp_file** %1, align 8, !dbg !3760
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !3766, metadata !220), !dbg !3799
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3800, metadata !220), !dbg !3801
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3802, metadata !220), !dbg !3803
  %13 = load %struct._vrrp_file*, %struct._vrrp_file** %1, align 8, !dbg !3804
  %14 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %13, i32 0, i32 1, !dbg !3806
  %15 = load i8*, i8** %14, align 8, !dbg !3806
  %16 = icmp ne i8* %15, null, !dbg !3804
  br i1 %16, label %29, label %17, !dbg !3807

; <label>:17:                                     ; preds = %0
  %18 = load %struct._vrrp_file*, %struct._vrrp_file** %1, align 8, !dbg !3808
  %19 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %18, i32 0, i32 0, !dbg !3810
  %20 = load i8*, i8** %19, align 8, !dbg !3810
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.169, i32 0, i32 0), i8* %20), !dbg !3811
  %21 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3812
  %22 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %21, i32 0, i32 10, !dbg !3813
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !3813
  %24 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3814
  %25 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %24, i32 0, i32 10, !dbg !3815
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !3815
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 1, !dbg !3816
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !3816
  call void @free_list_element(%struct._list* %23, %struct._element* %28), !dbg !3817
  br label %29, !dbg !3818

; <label>:29:                                     ; preds = %17, %0
  %30 = load i32, i32* @track_file_init, align 4, !dbg !3819
  %31 = icmp eq i32 %30, 0, !dbg !3821
  br i1 %31, label %32, label %33, !dbg !3822

; <label>:32:                                     ; preds = %29
  br label %73, !dbg !3823

; <label>:33:                                     ; preds = %29
  %34 = load %struct._vrrp_file*, %struct._vrrp_file** %1, align 8, !dbg !3824
  %35 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %34, i32 0, i32 1, !dbg !3825
  %36 = load i8*, i8** %35, align 8, !dbg !3825
  %37 = call i32 @stat(i8* %36, %struct.stat* %2) #9, !dbg !3826
  store i32 %37, i32* %4, align 4, !dbg !3827
  %38 = load i32, i32* %4, align 4, !dbg !3828
  %39 = icmp ne i32 %38, 0, !dbg !3828
  br i1 %39, label %54, label %40, !dbg !3830

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* @track_file_init, align 4, !dbg !3831
  %42 = icmp eq i32 %41, 1, !dbg !3834
  br i1 %42, label %43, label %44, !dbg !3835

; <label>:43:                                     ; preds = %40
  br label %73, !dbg !3836

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 3, !dbg !3838
  %46 = load i32, i32* %45, align 8, !dbg !3838
  %47 = and i32 %46, 61440, !dbg !3840
  %48 = icmp ne i32 %47, 32768, !dbg !3841
  br i1 %48, label %49, label %53, !dbg !3842

; <label>:49:                                     ; preds = %44
  %50 = load %struct._vrrp_file*, %struct._vrrp_file** %1, align 8, !dbg !3843
  %51 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %50, i32 0, i32 0, !dbg !3845
  %52 = load i8*, i8** %51, align 8, !dbg !3845
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.170, i32 0, i32 0), i8* %52), !dbg !3846
  br label %73, !dbg !3847

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !3848

; <label>:54:                                     ; preds = %53, %33
  %55 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !3849
  br i1 %55, label %73, label %56, !dbg !3851

; <label>:56:                                     ; preds = %54
  %57 = load %struct._vrrp_file*, %struct._vrrp_file** %1, align 8, !dbg !3852
  %58 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %57, i32 0, i32 1, !dbg !3855
  %59 = load i8*, i8** %58, align 8, !dbg !3855
  %60 = call %struct._IO_FILE* @fopen(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0)), !dbg !3856
  store %struct._IO_FILE* %60, %struct._IO_FILE** %3, align 8, !dbg !3857
  %61 = icmp ne %struct._IO_FILE* %60, null, !dbg !3857
  br i1 %61, label %62, label %68, !dbg !3858

; <label>:62:                                     ; preds = %56
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3859
  %64 = load i32, i32* @track_file_init_value, align 4, !dbg !3861
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0), i32 %64), !dbg !3862
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3863
  %67 = call i32 @fclose(%struct._IO_FILE* %66), !dbg !3864
  br label %72, !dbg !3865

; <label>:68:                                     ; preds = %56
  %69 = load %struct._vrrp_file*, %struct._vrrp_file** %1, align 8, !dbg !3866
  %70 = getelementptr inbounds %struct._vrrp_file, %struct._vrrp_file* %69, i32 0, i32 0, !dbg !3867
  %71 = load i8*, i8** %70, align 8, !dbg !3867
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.173, i32 0, i32 0), i8* %71), !dbg !3868
  br label %72

; <label>:72:                                     ; preds = %68, %62
  br label %73, !dbg !3869

; <label>:73:                                     ; preds = %32, %43, %49, %72, %54
  ret void, !dbg !3870
}

; Function Attrs: nounwind uwtable
define %struct._vector* @vrrp_init_keywords() #0 !dbg !3871 {
  %1 = load i8, i8* @reload, align 1, !dbg !3874
  %2 = trunc i8 %1 to i1, !dbg !3874
  call void @init_global_keywords(i1 zeroext %2), !dbg !3875
  call void @init_vrrp_keywords(i1 zeroext true), !dbg !3876
  call void @init_check_keywords(i1 zeroext false), !dbg !3877
  %3 = load %struct._vector*, %struct._vector** @keywords, align 8, !dbg !3878
  ret %struct._vector* %3, !dbg !3879
}

declare void @init_global_keywords(i1 zeroext) #2

declare void @init_check_keywords(i1 zeroext) #2

declare i32 @vector_count(%struct._vector*) #2

declare void @report_config_error(i32, i8*, ...) #2

declare void @skip_block(i1 zeroext) #2

declare i8* @strvec_slot(%struct._vector*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @alloc_static_track_group(i8*) #2

declare %struct._vector* @read_value_block(%struct._vector*) #2

declare void @alloc_value_block(void (%struct._vector*)*, i8*) #2

declare void @alloc_saddress(%struct._vector*) #2

declare void @alloc_sroute(%struct._vector*) #2

declare void @alloc_srule(%struct._vector*) #2

declare void @alloc_vrrp_sync_group(i8*) #2

declare void @alloc_vrrp_group_track_if(%struct._vector*) #2

declare void @alloc_vrrp_group_track_script(%struct._vector*) #2

declare void @alloc_vrrp_group_track_file(%struct._vector*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._notify_script* @set_vrrp_notify_script(%struct._vector*, i32) #4 !dbg !3880 {
  %3 = alloca %struct._vector*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %3, metadata !3883, metadata !220), !dbg !3884
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3885, metadata !220), !dbg !3886
  %5 = load i32, i32* %4, align 4, !dbg !3887
  %6 = call %struct._notify_script* @notify_script_init(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !3888
  ret %struct._notify_script* %6, !dbg !3889
}

declare %struct._notify_script* @notify_script_init(i32, i8*) #2

declare i32 @check_true_false(i8*) #2

declare void @alloc_garp_delay() #2

declare zeroext i1 @read_double_strvec(%struct._vector*, i64, double*, double, double, i1 zeroext) #2

declare void @log_message(i32, i8*, ...) #2

declare %struct._interface* @if_get_by_ifname(i8*, i32) #2

declare void @free_strvec(%struct._vector*) #2

declare %struct._list* @get_if_list() #2

declare void @free_list_element(%struct._list*, %struct._element*) #2

declare void @alloc_vrrp(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @__set_bit(i32, i64*) #4 !dbg !3890 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3894, metadata !220), !dbg !3895
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3896, metadata !220), !dbg !3897
  %5 = load i32, i32* %3, align 4, !dbg !3898
  %6 = zext i32 %5 to i64, !dbg !3899
  %7 = urem i64 %6, 64, !dbg !3900
  %8 = shl i64 1, %7, !dbg !3901
  %9 = load i32, i32* %3, align 4, !dbg !3902
  %10 = zext i32 %9 to i64, !dbg !3903
  %11 = udiv i64 %10, 64, !dbg !3904
  %12 = load i64*, i64** %4, align 8, !dbg !3905
  %13 = getelementptr inbounds i64, i64* %12, i64 %11, !dbg !3905
  %14 = load i64, i64* %13, align 8, !dbg !3906
  %15 = or i64 %14, %8, !dbg !3906
  store i64 %15, i64* %13, align 8, !dbg !3906
  ret void, !dbg !3907
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare void @alloc_vrrp_unicast_peer(%struct._vector*) #2

declare void @alloc_vrrp_track_if(%struct._vector*) #2

declare void @alloc_vrrp_track_script(%struct._vector*) #2

declare void @alloc_vrrp_track_file(%struct._vector*) #2

declare i32 @inet_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #2

declare zeroext i1 @read_unsigned_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

declare zeroext i1 @read_int_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

declare void @alloc_vrrp_vip(%struct._vector*) #2

declare void @alloc_vrrp_evip(%struct._vector*) #2

declare void @alloc_vrrp_vroute(%struct._vector*) #2

declare void @alloc_vrrp_vrule(%struct._vector*) #2

declare i8* @set_value(%struct._vector*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare void @alloc_vrrp_script(i8*) #2

declare %struct._vector* @alloc_strvec_quoted_escaped(i8*) #2

declare void @set_script_params_array(%struct._vector*, %struct._notify_script*, i32) #2

declare zeroext i1 @set_script_uid_gid(%struct._vector*, i32, i32*, i32*) #2

declare i8* @cmd_str(%struct._notify_script*) #2

declare zeroext i1 @set_default_script_user(i8*, i8*) #2

declare void @alloc_vrrp_file(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !3908 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3913, metadata !220), !dbg !3914
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3915, metadata !220), !dbg !3916
  %5 = load i32, i32* %3, align 4, !dbg !3917
  %6 = zext i32 %5 to i64, !dbg !3918
  %7 = udiv i64 %6, 64, !dbg !3919
  %8 = load i64*, i64** %4, align 8, !dbg !3920
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !3920
  %10 = load i64, i64* %9, align 8, !dbg !3920
  %11 = load i32, i32* %3, align 4, !dbg !3921
  %12 = zext i32 %11 to i64, !dbg !3922
  %13 = urem i64 %12, 64, !dbg !3923
  %14 = shl i64 1, %13, !dbg !3924
  %15 = and i64 %10, %14, !dbg !3925
  %16 = icmp ne i64 %15, 0, !dbg !3926
  %17 = xor i1 %16, true, !dbg !3926
  %18 = xor i1 %17, true, !dbg !3927
  ret i1 %18, !dbg !3928
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!212, !213}
!llvm.ident = !{!214}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !109, globals: !129)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_parser.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !19, !26, !34, !55, !61, !68, !73, !79, !94}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!7 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!8 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!9 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!10 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!11 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!12 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!13 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!14 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!15 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!16 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!17 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!18 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !20, line: 142, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!23 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!24 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!25 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !27, line: 173, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!30 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!31 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!32 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!33 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 41, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!37 = !DIEnumerator(name: "THREAD_READ", value: 0)
!38 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!39 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!40 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!41 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!42 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!43 = !DIEnumerator(name: "THREAD_READY", value: 6)
!44 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!45 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!46 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!47 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!48 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!49 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!50 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!51 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!52 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!53 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!54 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vrrp_vmac_bits", file: !56, line: 40, size: 32, align: 32, elements: !57)
!56 = !DIFile(filename: "./../include/vrrp_vmac.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "VRRP_VMAC_BIT", value: 0)
!59 = !DIEnumerator(name: "VRRP_VMAC_UP_BIT", value: 1)
!60 = !DIEnumerator(name: "VRRP_VMAC_XMITBASE_BIT", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 45, size: 32, align: 32, elements: !63)
!62 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "SCRIPT_STATE_IDLE", value: 0)
!65 = !DIEnumerator(name: "SCRIPT_STATE_RUNNING", value: 1)
!66 = !DIEnumerator(name: "SCRIPT_STATE_REQUESTING_TERMINATION", value: 2)
!67 = !DIEnumerator(name: "SCRIPT_STATE_FORCING_TERMINATION", value: 3)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 52, size: 32, align: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "SCRIPT_INIT_STATE_DONE", value: 0)
!71 = !DIEnumerator(name: "SCRIPT_INIT_STATE_INIT", value: 1)
!72 = !DIEnumerator(name: "SCRIPT_INIT_STATE_FAILED", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 66, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "vrrp_parser.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "TRACK_FILE_NO_INIT", value: 0)
!77 = !DIEnumerator(name: "TRACK_FILE_CREATE", value: 1)
!78 = !DIEnumerator(name: "TRACK_FILE_INIT", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, size: 32, align: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256)
!83 = !DIEnumerator(name: "_ISlower", value: 512)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!87 = !DIEnumerator(name: "_ISspace", value: 8192)
!88 = !DIEnumerator(name: "_ISprint", value: 16384)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768)
!90 = !DIEnumerator(name: "_ISblank", value: 1)
!91 = !DIEnumerator(name: "_IScntrl", value: 2)
!92 = !DIEnumerator(name: "_ISpunct", value: 4)
!93 = !DIEnumerator(name: "_ISalnum", value: 8)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !95, line: 53, size: 32, align: 32, elements: !96)
!95 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!98 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!99 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!100 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!101 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!102 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!103 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!104 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!105 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!106 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!107 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!108 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!109 = !{!110, !111, !113, !118, !121, !124, !125, !126, !127, !128}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !114, line: 75, baseType: !115)
!114 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !116, line: 139, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!117 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !119, line: 140, baseType: !120)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !116, line: 141, baseType: !117)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !122, line: 48, baseType: !123)
!122 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!123 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!125 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!128 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!129 = !{!130, !208, !209, !210, !211}
!130 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !20, line: 150, type: !131, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !132, line: 31, baseType: !133)
!132 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !132, line: 39, size: 320, align: 64, elements: !135)
!135 = !{!136, !143, !144, !145, !149}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !134, file: !132, line: 40, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !132, line: 33, size: 192, align: 64, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !132, line: 34, baseType: !137, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !138, file: !132, line: 35, baseType: !137, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !138, file: !132, line: 36, baseType: !110, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !134, file: !132, line: 41, baseType: !137, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !134, file: !132, line: 42, baseType: !124, size: 32, align: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !134, file: !132, line: 43, baseType: !146, size: 64, align: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !110}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !134, file: !132, line: 44, baseType: !150, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !110}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !155, line: 48, baseType: !156)
!155 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !157, line: 241, size: 1728, align: 64, elements: !158)
!157 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !179, !180, !181, !182, !184, !185, !187, !191, !194, !196, !197, !198, !199, !200, !203, !204}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !156, file: !157, line: 242, baseType: !127, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !156, file: !157, line: 247, baseType: !111, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !156, file: !157, line: 248, baseType: !111, size: 64, align: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !156, file: !157, line: 249, baseType: !111, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !156, file: !157, line: 250, baseType: !111, size: 64, align: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !156, file: !157, line: 251, baseType: !111, size: 64, align: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !156, file: !157, line: 252, baseType: !111, size: 64, align: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !156, file: !157, line: 253, baseType: !111, size: 64, align: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !156, file: !157, line: 254, baseType: !111, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !156, file: !157, line: 256, baseType: !111, size: 64, align: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !156, file: !157, line: 257, baseType: !111, size: 64, align: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !156, file: !157, line: 258, baseType: !111, size: 64, align: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !156, file: !157, line: 260, baseType: !172, size: 64, align: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !157, line: 156, size: 192, align: 64, elements: !174)
!174 = !{!175, !176, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !173, file: !157, line: 157, baseType: !172, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !173, file: !157, line: 158, baseType: !177, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !173, file: !157, line: 162, baseType: !127, size: 32, align: 32, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !156, file: !157, line: 262, baseType: !177, size: 64, align: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !156, file: !157, line: 264, baseType: !127, size: 32, align: 32, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !156, file: !157, line: 268, baseType: !127, size: 32, align: 32, offset: 928)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !156, file: !157, line: 270, baseType: !183, size: 64, align: 64, offset: 960)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 131, baseType: !117)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !156, file: !157, line: 274, baseType: !128, size: 16, align: 16, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !156, file: !157, line: 275, baseType: !186, size: 8, align: 8, offset: 1040)
!186 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !156, file: !157, line: 276, baseType: !188, size: 8, align: 8, offset: 1048)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 8, align: 8, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 1)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !156, file: !157, line: 280, baseType: !192, size: 64, align: 64, offset: 1088)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !157, line: 150, baseType: null)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !156, file: !157, line: 289, baseType: !195, size: 64, align: 64, offset: 1152)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 132, baseType: !117)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !156, file: !157, line: 297, baseType: !110, size: 64, align: 64, offset: 1216)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !156, file: !157, line: 298, baseType: !110, size: 64, align: 64, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !156, file: !157, line: 299, baseType: !110, size: 64, align: 64, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !156, file: !157, line: 300, baseType: !110, size: 64, align: 64, offset: 1408)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !156, file: !157, line: 302, baseType: !201, size: 64, align: 64, offset: 1472)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 216, baseType: !126)
!202 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !156, file: !157, line: 303, baseType: !127, size: 32, align: 32, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !156, file: !157, line: 305, baseType: !205, size: 160, align: 8, offset: 1568)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 160, align: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 20)
!208 = distinct !DIGlobalVariable(name: "script_user_set", scope: !0, file: !74, line: 73, type: !125, isLocal: true, isDefinition: true, variable: i8* @script_user_set)
!209 = distinct !DIGlobalVariable(name: "remove_script", scope: !0, file: !74, line: 74, type: !125, isLocal: true, isDefinition: true, variable: i8* @remove_script)
!210 = distinct !DIGlobalVariable(name: "track_file_init", scope: !0, file: !74, line: 70, type: !73, isLocal: true, isDefinition: true, variable: i32* @track_file_init)
!211 = distinct !DIGlobalVariable(name: "track_file_init_value", scope: !0, file: !74, line: 71, type: !127, isLocal: true, isDefinition: true, variable: i32* @track_file_init_value)
!212 = !{i32 2, !"Dwarf Version", i32 4}
!213 = !{i32 2, !"Debug Info Version", i32 3}
!214 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!215 = distinct !DISubprogram(name: "init_vrrp_keywords", scope: !74, file: !74, line: 1388, type: !216, isLocal: false, isDefinition: true, scopeLine: 1389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !125}
!218 = !{}
!219 = !DILocalVariable(name: "active", arg: 1, scope: !215, file: !74, line: 1388, type: !125)
!220 = !DIExpression()
!221 = !DILocation(line: 1388, column: 24, scope: !215)
!222 = !DILocation(line: 1391, column: 67, scope: !215)
!223 = !DILocation(line: 1391, column: 2, scope: !215)
!224 = !DILocation(line: 1392, column: 2, scope: !215)
!225 = !DILocation(line: 1393, column: 70, scope: !215)
!226 = !DILocation(line: 1393, column: 2, scope: !215)
!227 = !DILocation(line: 1395, column: 64, scope: !215)
!228 = !DILocation(line: 1395, column: 2, scope: !215)
!229 = !DILocation(line: 1396, column: 62, scope: !215)
!230 = !DILocation(line: 1396, column: 2, scope: !215)
!231 = !DILocation(line: 1400, column: 68, scope: !215)
!232 = !DILocation(line: 1400, column: 2, scope: !215)
!233 = !DILocation(line: 1401, column: 2, scope: !215)
!234 = !DILocation(line: 1402, column: 2, scope: !215)
!235 = !DILocation(line: 1403, column: 2, scope: !215)
!236 = !DILocation(line: 1404, column: 2, scope: !215)
!237 = !DILocation(line: 1408, column: 2, scope: !215)
!238 = !DILocation(line: 1409, column: 2, scope: !215)
!239 = !DILocation(line: 1410, column: 2, scope: !215)
!240 = !DILocation(line: 1411, column: 2, scope: !215)
!241 = !DILocation(line: 1412, column: 2, scope: !215)
!242 = !DILocation(line: 1413, column: 2, scope: !215)
!243 = !DILocation(line: 1414, column: 2, scope: !215)
!244 = !DILocation(line: 1415, column: 2, scope: !215)
!245 = !DILocation(line: 1417, column: 58, scope: !215)
!246 = !DILocation(line: 1417, column: 2, scope: !215)
!247 = !DILocation(line: 1418, column: 2, scope: !215)
!248 = !DILocation(line: 1419, column: 2, scope: !215)
!249 = !DILocation(line: 1420, column: 2, scope: !215)
!250 = !DILocation(line: 1421, column: 2, scope: !215)
!251 = !DILocation(line: 1422, column: 2, scope: !215)
!252 = !DILocation(line: 1425, column: 55, scope: !215)
!253 = !DILocation(line: 1425, column: 2, scope: !215)
!254 = !DILocation(line: 1427, column: 2, scope: !215)
!255 = !DILocation(line: 1428, column: 2, scope: !215)
!256 = !DILocation(line: 1430, column: 2, scope: !215)
!257 = !DILocation(line: 1432, column: 2, scope: !215)
!258 = !DILocation(line: 1434, column: 2, scope: !215)
!259 = !DILocation(line: 1435, column: 2, scope: !215)
!260 = !DILocation(line: 1436, column: 2, scope: !215)
!261 = !DILocation(line: 1437, column: 2, scope: !215)
!262 = !DILocation(line: 1438, column: 2, scope: !215)
!263 = !DILocation(line: 1439, column: 2, scope: !215)
!264 = !DILocation(line: 1440, column: 2, scope: !215)
!265 = !DILocation(line: 1444, column: 2, scope: !215)
!266 = !DILocation(line: 1445, column: 2, scope: !215)
!267 = !DILocation(line: 1446, column: 2, scope: !215)
!268 = !DILocation(line: 1447, column: 2, scope: !215)
!269 = !DILocation(line: 1448, column: 2, scope: !215)
!270 = !DILocation(line: 1449, column: 2, scope: !215)
!271 = !DILocation(line: 1450, column: 2, scope: !215)
!272 = !DILocation(line: 1451, column: 2, scope: !215)
!273 = !DILocation(line: 1452, column: 2, scope: !215)
!274 = !DILocation(line: 1453, column: 2, scope: !215)
!275 = !DILocation(line: 1454, column: 2, scope: !215)
!276 = !DILocation(line: 1456, column: 2, scope: !215)
!277 = !DILocation(line: 1457, column: 2, scope: !215)
!278 = !DILocation(line: 1459, column: 2, scope: !215)
!279 = !DILocation(line: 1460, column: 2, scope: !215)
!280 = !DILocation(line: 1461, column: 2, scope: !215)
!281 = !DILocation(line: 1462, column: 2, scope: !215)
!282 = !DILocation(line: 1463, column: 2, scope: !215)
!283 = !DILocation(line: 1464, column: 2, scope: !215)
!284 = !DILocation(line: 1465, column: 2, scope: !215)
!285 = !DILocation(line: 1466, column: 2, scope: !215)
!286 = !DILocation(line: 1467, column: 2, scope: !215)
!287 = !DILocation(line: 1468, column: 2, scope: !215)
!288 = !DILocation(line: 1469, column: 2, scope: !215)
!289 = !DILocation(line: 1470, column: 2, scope: !215)
!290 = !DILocation(line: 1471, column: 2, scope: !215)
!291 = !DILocation(line: 1472, column: 2, scope: !215)
!292 = !DILocation(line: 1473, column: 2, scope: !215)
!293 = !DILocation(line: 1475, column: 2, scope: !215)
!294 = !DILocation(line: 1477, column: 2, scope: !215)
!295 = !DILocation(line: 1478, column: 2, scope: !215)
!296 = !DILocation(line: 1479, column: 2, scope: !215)
!297 = !DILocation(line: 1480, column: 2, scope: !215)
!298 = !DILocation(line: 1481, column: 2, scope: !215)
!299 = !DILocation(line: 1482, column: 2, scope: !215)
!300 = !DILocation(line: 1483, column: 2, scope: !215)
!301 = !DILocation(line: 1484, column: 2, scope: !215)
!302 = !DILocation(line: 1485, column: 2, scope: !215)
!303 = !DILocation(line: 1487, column: 2, scope: !215)
!304 = !DILocation(line: 1488, column: 2, scope: !215)
!305 = !DILocation(line: 1489, column: 2, scope: !215)
!306 = !DILocation(line: 1490, column: 2, scope: !215)
!307 = !DILocation(line: 1491, column: 2, scope: !215)
!308 = !DILocation(line: 1493, column: 60, scope: !215)
!309 = !DILocation(line: 1493, column: 2, scope: !215)
!310 = !DILocation(line: 1494, column: 2, scope: !215)
!311 = !DILocation(line: 1495, column: 2, scope: !215)
!312 = !DILocation(line: 1496, column: 2, scope: !215)
!313 = !DILocation(line: 1497, column: 2, scope: !215)
!314 = !DILocation(line: 1498, column: 2, scope: !215)
!315 = !DILocation(line: 1499, column: 2, scope: !215)
!316 = !DILocation(line: 1500, column: 2, scope: !215)
!317 = !DILocation(line: 1501, column: 2, scope: !215)
!318 = !DILocation(line: 1502, column: 2, scope: !215)
!319 = !DILocation(line: 1505, column: 63, scope: !215)
!320 = !DILocation(line: 1505, column: 2, scope: !215)
!321 = !DILocation(line: 1506, column: 2, scope: !215)
!322 = !DILocation(line: 1507, column: 2, scope: !215)
!323 = !DILocation(line: 1508, column: 2, scope: !215)
!324 = !DILocation(line: 1509, column: 2, scope: !215)
!325 = !DILocation(line: 1510, column: 1, scope: !215)
!326 = distinct !DISubprogram(name: "static_track_group_handler", scope: !74, file: !74, line: 78, type: !327, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !331, line: 34, baseType: !332)
!331 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !331, line: 30, size: 128, align: 64, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !332, file: !331, line: 31, baseType: !124, size: 32, align: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !332, file: !331, line: 32, baseType: !124, size: 32, align: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !332, file: !331, line: 33, baseType: !337, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!338 = !DILocalVariable(name: "strvec", arg: 1, scope: !326, file: !74, line: 78, type: !329)
!339 = !DILocation(line: 78, column: 38, scope: !326)
!340 = !DILocalVariable(name: "e", scope: !326, file: !74, line: 80, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !132, line: 30, baseType: !137)
!342 = !DILocation(line: 80, column: 10, scope: !326)
!343 = !DILocalVariable(name: "tg", scope: !326, file: !74, line: 81, type: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !346, line: 39, baseType: !347)
!346 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !346, line: 35, size: 192, align: 64, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !347, file: !346, line: 36, baseType: !111, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !347, file: !346, line: 37, baseType: !329, size: 64, align: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !347, file: !346, line: 38, baseType: !131, size: 64, align: 64, offset: 128)
!352 = !DILocation(line: 81, column: 24, scope: !326)
!353 = !DILocalVariable(name: "gname", scope: !326, file: !74, line: 82, type: !111)
!354 = !DILocation(line: 82, column: 8, scope: !326)
!355 = !DILocation(line: 84, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !326, file: !74, line: 84, column: 6)
!357 = !DILocation(line: 84, column: 6, scope: !326)
!358 = !DILocation(line: 85, column: 3, scope: !356)
!359 = !DILocation(line: 87, column: 19, scope: !360)
!360 = distinct !DILexicalBlock(scope: !326, file: !74, line: 87, column: 6)
!361 = !DILocation(line: 87, column: 6, scope: !360)
!362 = !DILocation(line: 87, column: 27, scope: !360)
!363 = !DILocation(line: 87, column: 6, scope: !326)
!364 = !DILocation(line: 88, column: 3, scope: !365)
!365 = distinct !DILexicalBlock(scope: !360, file: !74, line: 87, column: 33)
!366 = !DILocation(line: 89, column: 3, scope: !365)
!367 = !DILocation(line: 90, column: 3, scope: !365)
!368 = !DILocation(line: 93, column: 22, scope: !326)
!369 = !DILocation(line: 93, column: 10, scope: !326)
!370 = !DILocation(line: 93, column: 8, scope: !326)
!371 = !DILocation(line: 96, column: 15, scope: !372)
!372 = distinct !DILexicalBlock(scope: !326, file: !74, line: 96, column: 2)
!373 = !DILocation(line: 96, column: 26, scope: !372)
!374 = !DILocation(line: 96, column: 14, scope: !372)
!375 = !DILocation(line: 96, column: 52, scope: !376)
!376 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 1)
!377 = !DILocation(line: 96, column: 63, scope: !376)
!378 = !DILocation(line: 96, column: 51, scope: !376)
!379 = !DILocation(line: 96, column: 50, scope: !376)
!380 = !DILocation(line: 96, column: 50, scope: !381)
!381 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 2)
!382 = !DILocation(line: 96, column: 4, scope: !383)
!383 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 3)
!384 = !DILocation(line: 96, column: 15, scope: !383)
!385 = !DILocation(line: 96, column: 37, scope: !383)
!386 = !DILocation(line: 96, column: 50, scope: !383)
!387 = !DILocation(line: 96, column: 50, scope: !388)
!388 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 4)
!389 = !DILocation(line: 96, column: 14, scope: !388)
!390 = !DILocation(line: 96, column: 14, scope: !391)
!391 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 5)
!392 = !DILocation(line: 96, column: 14, scope: !393)
!393 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 6)
!394 = !DILocation(line: 96, column: 11, scope: !393)
!395 = !DILocation(line: 96, column: 7, scope: !393)
!396 = !DILocation(line: 96, column: 5, scope: !397)
!397 = !DILexicalBlockFile(scope: !398, file: !74, discriminator: 7)
!398 = distinct !DILexicalBlock(scope: !372, file: !74, line: 96, column: 2)
!399 = !DILocation(line: 96, column: 4, scope: !397)
!400 = !DILocation(line: 96, column: 8, scope: !397)
!401 = !DILocation(line: 96, column: 21, scope: !402)
!402 = !DILexicalBlockFile(scope: !398, file: !74, discriminator: 8)
!403 = !DILocation(line: 96, column: 25, scope: !402)
!404 = !DILocation(line: 96, column: 19, scope: !402)
!405 = !DILocation(line: 96, column: 17, scope: !402)
!406 = !DILocation(line: 96, column: 2, scope: !407)
!407 = !DILexicalBlockFile(scope: !372, file: !74, discriminator: 9)
!408 = !DILocation(line: 97, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !74, line: 97, column: 7)
!410 = distinct !DILexicalBlock(scope: !398, file: !74, line: 96, column: 55)
!411 = !DILocation(line: 97, column: 21, scope: !409)
!412 = !DILocation(line: 97, column: 25, scope: !409)
!413 = !DILocation(line: 97, column: 8, scope: !409)
!414 = !DILocation(line: 97, column: 7, scope: !410)
!415 = !DILocation(line: 98, column: 80, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !74, line: 97, column: 33)
!417 = !DILocation(line: 98, column: 4, scope: !416)
!418 = !DILocation(line: 99, column: 4, scope: !416)
!419 = !DILocation(line: 100, column: 4, scope: !416)
!420 = !DILocation(line: 102, column: 2, scope: !410)
!421 = !DILocation(line: 96, column: 44, scope: !422)
!422 = !DILexicalBlockFile(scope: !398, file: !74, discriminator: 10)
!423 = !DILocation(line: 96, column: 48, scope: !422)
!424 = !DILocation(line: 96, column: 41, scope: !422)
!425 = !DILocation(line: 96, column: 2, scope: !422)
!426 = distinct !{!426, !427}
!427 = !DILocation(line: 96, column: 2, scope: !326)
!428 = !DILocation(line: 104, column: 27, scope: !326)
!429 = !DILocation(line: 104, column: 2, scope: !326)
!430 = !DILocation(line: 105, column: 1, scope: !326)
!431 = !DILocation(line: 105, column: 1, scope: !432)
!432 = !DILexicalBlockFile(scope: !326, file: !74, discriminator: 1)
!433 = distinct !DISubprogram(name: "static_track_group_group_handler", scope: !74, file: !74, line: 108, type: !327, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!434 = !DILocalVariable(name: "strvec", arg: 1, scope: !433, file: !74, line: 108, type: !329)
!435 = !DILocation(line: 108, column: 44, scope: !433)
!436 = !DILocalVariable(name: "tgroup", scope: !433, file: !74, line: 110, type: !344)
!437 = !DILocation(line: 110, column: 24, scope: !433)
!438 = !DILocation(line: 110, column: 35, scope: !433)
!439 = !DILocation(line: 110, column: 46, scope: !433)
!440 = !DILocation(line: 110, column: 68, scope: !433)
!441 = !DILocation(line: 110, column: 74, scope: !433)
!442 = !DILocation(line: 110, column: 33, scope: !433)
!443 = !DILocation(line: 112, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !74, line: 112, column: 6)
!445 = !DILocation(line: 112, column: 14, scope: !444)
!446 = !DILocation(line: 112, column: 6, scope: !433)
!447 = !DILocation(line: 113, column: 95, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !74, line: 112, column: 21)
!449 = !DILocation(line: 113, column: 103, scope: !448)
!450 = !DILocation(line: 113, column: 3, scope: !448)
!451 = !DILocation(line: 114, column: 3, scope: !448)
!452 = !DILocation(line: 115, column: 3, scope: !448)
!453 = !DILocation(line: 118, column: 35, scope: !433)
!454 = !DILocation(line: 118, column: 18, scope: !433)
!455 = !DILocation(line: 118, column: 2, scope: !433)
!456 = !DILocation(line: 118, column: 10, scope: !433)
!457 = !DILocation(line: 118, column: 16, scope: !433)
!458 = !DILocation(line: 120, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !433, file: !74, line: 120, column: 6)
!460 = !DILocation(line: 120, column: 15, scope: !459)
!461 = !DILocation(line: 120, column: 6, scope: !433)
!462 = !DILocation(line: 121, column: 95, scope: !459)
!463 = !DILocation(line: 121, column: 103, scope: !459)
!464 = !DILocation(line: 121, column: 3, scope: !459)
!465 = !DILocation(line: 122, column: 1, scope: !433)
!466 = distinct !DISubprogram(name: "static_addresses_handler", scope: !74, file: !74, line: 126, type: !327, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!467 = !DILocalVariable(name: "strvec", arg: 1, scope: !466, file: !74, line: 126, type: !329)
!468 = !DILocation(line: 126, column: 36, scope: !466)
!469 = !DILocation(line: 128, column: 2, scope: !466)
!470 = !DILocation(line: 128, column: 15, scope: !466)
!471 = !DILocation(line: 128, column: 32, scope: !466)
!472 = !DILocation(line: 130, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !466, file: !74, line: 130, column: 6)
!474 = !DILocation(line: 130, column: 6, scope: !466)
!475 = !DILocation(line: 131, column: 3, scope: !473)
!476 = !DILocation(line: 133, column: 38, scope: !466)
!477 = !DILocation(line: 133, column: 47, scope: !466)
!478 = !DILocation(line: 133, column: 37, scope: !466)
!479 = !DILocation(line: 133, column: 2, scope: !466)
!480 = !DILocation(line: 134, column: 1, scope: !466)
!481 = !DILocation(line: 134, column: 1, scope: !482)
!482 = !DILexicalBlockFile(scope: !466, file: !74, discriminator: 1)
!483 = distinct !DISubprogram(name: "static_routes_handler", scope: !74, file: !74, line: 139, type: !327, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!484 = !DILocalVariable(name: "strvec", arg: 1, scope: !483, file: !74, line: 139, type: !329)
!485 = !DILocation(line: 139, column: 33, scope: !483)
!486 = !DILocation(line: 141, column: 2, scope: !483)
!487 = !DILocation(line: 141, column: 15, scope: !483)
!488 = !DILocation(line: 141, column: 32, scope: !483)
!489 = !DILocation(line: 143, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !483, file: !74, line: 143, column: 6)
!491 = !DILocation(line: 143, column: 6, scope: !483)
!492 = !DILocation(line: 144, column: 3, scope: !490)
!493 = !DILocation(line: 146, column: 36, scope: !483)
!494 = !DILocation(line: 146, column: 45, scope: !483)
!495 = !DILocation(line: 146, column: 35, scope: !483)
!496 = !DILocation(line: 146, column: 2, scope: !483)
!497 = !DILocation(line: 147, column: 1, scope: !483)
!498 = !DILocation(line: 147, column: 1, scope: !499)
!499 = !DILexicalBlockFile(scope: !483, file: !74, discriminator: 1)
!500 = distinct !DISubprogram(name: "static_rules_handler", scope: !74, file: !74, line: 151, type: !327, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!501 = !DILocalVariable(name: "strvec", arg: 1, scope: !500, file: !74, line: 151, type: !329)
!502 = !DILocation(line: 151, column: 32, scope: !500)
!503 = !DILocation(line: 153, column: 2, scope: !500)
!504 = !DILocation(line: 153, column: 15, scope: !500)
!505 = !DILocation(line: 153, column: 32, scope: !500)
!506 = !DILocation(line: 155, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !500, file: !74, line: 155, column: 6)
!508 = !DILocation(line: 155, column: 6, scope: !500)
!509 = !DILocation(line: 156, column: 3, scope: !507)
!510 = !DILocation(line: 158, column: 35, scope: !500)
!511 = !DILocation(line: 158, column: 44, scope: !500)
!512 = !DILocation(line: 158, column: 34, scope: !500)
!513 = !DILocation(line: 158, column: 2, scope: !500)
!514 = !DILocation(line: 159, column: 1, scope: !500)
!515 = !DILocation(line: 159, column: 1, scope: !516)
!516 = !DILexicalBlockFile(scope: !500, file: !74, discriminator: 1)
!517 = distinct !DISubprogram(name: "vrrp_sync_group_handler", scope: !74, file: !74, line: 164, type: !327, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!518 = !DILocalVariable(name: "strvec", arg: 1, scope: !517, file: !74, line: 164, type: !329)
!519 = !DILocation(line: 164, column: 35, scope: !517)
!520 = !DILocalVariable(name: "l", scope: !517, file: !74, line: 166, type: !131)
!521 = !DILocation(line: 166, column: 7, scope: !517)
!522 = !DILocalVariable(name: "e", scope: !517, file: !74, line: 167, type: !341)
!523 = !DILocation(line: 167, column: 10, scope: !517)
!524 = !DILocalVariable(name: "sg", scope: !517, file: !74, line: 168, type: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !27, line: 133, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !27, line: 109, size: 1024, align: 64, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !557, !558, !559, !560, !561, !562}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !527, file: !27, line: 110, baseType: !111, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !527, file: !27, line: 111, baseType: !329, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !527, file: !27, line: 112, baseType: !131, size: 64, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !527, file: !27, line: 113, baseType: !124, size: 32, align: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !527, file: !27, line: 114, baseType: !124, size: 32, align: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !527, file: !27, line: 115, baseType: !127, size: 32, align: 32, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !527, file: !27, line: 116, baseType: !125, size: 8, align: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !527, file: !27, line: 119, baseType: !131, size: 64, align: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !527, file: !27, line: 120, baseType: !131, size: 64, align: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !527, file: !27, line: 121, baseType: !131, size: 64, align: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !527, file: !27, line: 122, baseType: !131, size: 64, align: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !527, file: !27, line: 125, baseType: !125, size: 8, align: 8, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !527, file: !27, line: 126, baseType: !542, size: 64, align: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !62, line: 65, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !62, line: 59, size: 192, align: 64, elements: !545)
!545 = !{!546, !548, !549, !550, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !544, file: !62, line: 60, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !544, file: !62, line: 61, baseType: !127, size: 32, align: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !62, line: 62, baseType: !127, size: 32, align: 32, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !544, file: !62, line: 63, baseType: !551, size: 32, align: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !552, line: 240, baseType: !553)
!552 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !116, line: 125, baseType: !124)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !544, file: !62, line: 64, baseType: !555, size: 32, align: 32, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !552, line: 235, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !116, line: 126, baseType: !124)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !527, file: !27, line: 127, baseType: !542, size: 64, align: 64, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !527, file: !27, line: 128, baseType: !542, size: 64, align: 64, offset: 768)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !527, file: !27, line: 129, baseType: !542, size: 64, align: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !527, file: !27, line: 130, baseType: !542, size: 64, align: 64, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !527, file: !27, line: 131, baseType: !127, size: 32, align: 32, offset: 960)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !527, file: !27, line: 132, baseType: !127, size: 32, align: 32, offset: 992)
!563 = !DILocation(line: 168, column: 17, scope: !517)
!564 = !DILocalVariable(name: "gname", scope: !517, file: !74, line: 169, type: !111)
!565 = !DILocation(line: 169, column: 8, scope: !517)
!566 = !DILocation(line: 171, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !517, file: !74, line: 171, column: 6)
!568 = !DILocation(line: 171, column: 6, scope: !517)
!569 = !DILocation(line: 172, column: 3, scope: !567)
!570 = !DILocation(line: 174, column: 19, scope: !571)
!571 = distinct !DILexicalBlock(scope: !517, file: !74, line: 174, column: 6)
!572 = !DILocation(line: 174, column: 6, scope: !571)
!573 = !DILocation(line: 174, column: 27, scope: !571)
!574 = !DILocation(line: 174, column: 6, scope: !517)
!575 = !DILocation(line: 175, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !74, line: 174, column: 33)
!577 = !DILocation(line: 176, column: 3, scope: !576)
!578 = !DILocation(line: 177, column: 3, scope: !576)
!579 = !DILocation(line: 180, column: 22, scope: !517)
!580 = !DILocation(line: 180, column: 10, scope: !517)
!581 = !DILocation(line: 180, column: 8, scope: !517)
!582 = !DILocation(line: 183, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !517, file: !74, line: 183, column: 6)
!584 = !DILocation(line: 183, column: 20, scope: !583)
!585 = !DILocation(line: 183, column: 37, scope: !583)
!586 = !DILocation(line: 183, column: 6, scope: !583)
!587 = !DILocation(line: 183, column: 11, scope: !588)
!588 = !DILexicalBlockFile(scope: !583, file: !74, discriminator: 1)
!589 = !DILocation(line: 183, column: 22, scope: !588)
!590 = !DILocation(line: 183, column: 40, scope: !588)
!591 = !DILocation(line: 183, column: 45, scope: !588)
!592 = !DILocation(line: 183, column: 6, scope: !588)
!593 = !DILocation(line: 183, column: 10, scope: !594)
!594 = !DILexicalBlockFile(scope: !583, file: !74, discriminator: 2)
!595 = !DILocation(line: 183, column: 21, scope: !594)
!596 = !DILocation(line: 183, column: 39, scope: !594)
!597 = !DILocation(line: 183, column: 44, scope: !594)
!598 = !DILocation(line: 183, column: 6, scope: !594)
!599 = !DILocation(line: 184, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !583, file: !74, line: 183, column: 10)
!601 = !DILocation(line: 184, column: 18, scope: !600)
!602 = !DILocation(line: 184, column: 5, scope: !600)
!603 = !DILocation(line: 185, column: 15, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !74, line: 185, column: 3)
!605 = !DILocation(line: 185, column: 14, scope: !604)
!606 = !DILocation(line: 185, column: 13, scope: !604)
!607 = !DILocation(line: 185, column: 13, scope: !608)
!608 = !DILexicalBlockFile(scope: !604, file: !74, discriminator: 1)
!609 = !DILocation(line: 185, column: 14, scope: !610)
!610 = !DILexicalBlockFile(scope: !604, file: !74, discriminator: 2)
!611 = !DILocation(line: 185, column: 18, scope: !610)
!612 = !DILocation(line: 185, column: 13, scope: !610)
!613 = !DILocation(line: 185, column: 13, scope: !614)
!614 = !DILexicalBlockFile(scope: !604, file: !74, discriminator: 3)
!615 = !DILocation(line: 185, column: 10, scope: !614)
!616 = !DILocation(line: 185, column: 8, scope: !614)
!617 = !DILocation(line: 185, column: 25, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !74, discriminator: 4)
!619 = distinct !DILexicalBlock(scope: !604, file: !74, line: 185, column: 3)
!620 = !DILocation(line: 185, column: 3, scope: !618)
!621 = !DILocation(line: 186, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !74, line: 185, column: 47)
!623 = !DILocation(line: 186, column: 15, scope: !622)
!624 = !DILocation(line: 186, column: 9, scope: !622)
!625 = !DILocation(line: 186, column: 7, scope: !622)
!626 = !DILocation(line: 187, column: 16, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !74, line: 187, column: 8)
!628 = !DILocation(line: 187, column: 22, scope: !627)
!629 = !DILocation(line: 187, column: 26, scope: !627)
!630 = !DILocation(line: 187, column: 9, scope: !627)
!631 = !DILocation(line: 187, column: 8, scope: !622)
!632 = !DILocation(line: 188, column: 85, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !74, line: 187, column: 34)
!634 = !DILocation(line: 188, column: 5, scope: !633)
!635 = !DILocation(line: 189, column: 5, scope: !633)
!636 = !DILocation(line: 190, column: 5, scope: !633)
!637 = !DILocation(line: 192, column: 3, scope: !622)
!638 = !DILocation(line: 185, column: 36, scope: !639)
!639 = !DILexicalBlockFile(scope: !619, file: !74, discriminator: 5)
!640 = !DILocation(line: 185, column: 40, scope: !639)
!641 = !DILocation(line: 185, column: 33, scope: !639)
!642 = !DILocation(line: 185, column: 3, scope: !639)
!643 = distinct !{!643, !644}
!644 = !DILocation(line: 185, column: 3, scope: !600)
!645 = !DILocation(line: 193, column: 2, scope: !600)
!646 = !DILocation(line: 195, column: 24, scope: !517)
!647 = !DILocation(line: 195, column: 2, scope: !517)
!648 = !DILocation(line: 196, column: 1, scope: !517)
!649 = !DILocation(line: 196, column: 1, scope: !650)
!650 = !DILexicalBlockFile(scope: !517, file: !74, discriminator: 1)
!651 = distinct !DISubprogram(name: "vrrp_group_handler", scope: !74, file: !74, line: 199, type: !327, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!652 = !DILocalVariable(name: "strvec", arg: 1, scope: !651, file: !74, line: 199, type: !329)
!653 = !DILocation(line: 199, column: 30, scope: !651)
!654 = !DILocalVariable(name: "vgroup", scope: !651, file: !74, line: 201, type: !525)
!655 = !DILocation(line: 201, column: 17, scope: !651)
!656 = !DILocation(line: 201, column: 28, scope: !651)
!657 = !DILocation(line: 201, column: 39, scope: !651)
!658 = !DILocation(line: 201, column: 57, scope: !651)
!659 = !DILocation(line: 201, column: 63, scope: !651)
!660 = !DILocation(line: 201, column: 26, scope: !651)
!661 = !DILocation(line: 203, column: 6, scope: !662)
!662 = distinct !DILexicalBlock(scope: !651, file: !74, line: 203, column: 6)
!663 = !DILocation(line: 203, column: 14, scope: !662)
!664 = !DILocation(line: 203, column: 6, scope: !651)
!665 = !DILocation(line: 204, column: 95, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !74, line: 203, column: 21)
!667 = !DILocation(line: 204, column: 103, scope: !666)
!668 = !DILocation(line: 204, column: 3, scope: !666)
!669 = !DILocation(line: 205, column: 3, scope: !666)
!670 = !DILocation(line: 206, column: 3, scope: !666)
!671 = !DILocation(line: 209, column: 35, scope: !651)
!672 = !DILocation(line: 209, column: 18, scope: !651)
!673 = !DILocation(line: 209, column: 2, scope: !651)
!674 = !DILocation(line: 209, column: 10, scope: !651)
!675 = !DILocation(line: 209, column: 16, scope: !651)
!676 = !DILocation(line: 211, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !651, file: !74, line: 211, column: 6)
!678 = !DILocation(line: 211, column: 15, scope: !677)
!679 = !DILocation(line: 211, column: 6, scope: !651)
!680 = !DILocation(line: 212, column: 94, scope: !677)
!681 = !DILocation(line: 212, column: 102, scope: !677)
!682 = !DILocation(line: 212, column: 3, scope: !677)
!683 = !DILocation(line: 213, column: 1, scope: !651)
!684 = distinct !DISubprogram(name: "vrrp_group_track_if_handler", scope: !74, file: !74, line: 216, type: !327, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!685 = !DILocalVariable(name: "strvec", arg: 1, scope: !684, file: !74, line: 216, type: !329)
!686 = !DILocation(line: 216, column: 39, scope: !684)
!687 = !DILocation(line: 218, column: 49, scope: !684)
!688 = !DILocation(line: 218, column: 58, scope: !684)
!689 = !DILocation(line: 218, column: 48, scope: !684)
!690 = !DILocation(line: 218, column: 2, scope: !684)
!691 = !DILocation(line: 219, column: 1, scope: !684)
!692 = distinct !DISubprogram(name: "vrrp_group_track_scr_handler", scope: !74, file: !74, line: 222, type: !327, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!693 = !DILocalVariable(name: "strvec", arg: 1, scope: !692, file: !74, line: 222, type: !329)
!694 = !DILocation(line: 222, column: 40, scope: !692)
!695 = !DILocation(line: 224, column: 53, scope: !692)
!696 = !DILocation(line: 224, column: 62, scope: !692)
!697 = !DILocation(line: 224, column: 52, scope: !692)
!698 = !DILocation(line: 224, column: 2, scope: !692)
!699 = !DILocation(line: 225, column: 1, scope: !692)
!700 = distinct !DISubprogram(name: "vrrp_group_track_file_handler", scope: !74, file: !74, line: 228, type: !327, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!701 = !DILocalVariable(name: "strvec", arg: 1, scope: !700, file: !74, line: 228, type: !329)
!702 = !DILocation(line: 228, column: 41, scope: !700)
!703 = !DILocation(line: 230, column: 51, scope: !700)
!704 = !DILocation(line: 230, column: 60, scope: !700)
!705 = !DILocation(line: 230, column: 50, scope: !700)
!706 = !DILocation(line: 230, column: 2, scope: !700)
!707 = !DILocation(line: 231, column: 1, scope: !700)
!708 = distinct !DISubprogram(name: "vrrp_gnotify_backup_handler", scope: !74, file: !74, line: 248, type: !327, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!709 = !DILocalVariable(name: "strvec", arg: 1, scope: !708, file: !74, line: 248, type: !329)
!710 = !DILocation(line: 248, column: 39, scope: !708)
!711 = !DILocalVariable(name: "vgroup", scope: !708, file: !74, line: 250, type: !525)
!712 = !DILocation(line: 250, column: 17, scope: !708)
!713 = !DILocation(line: 250, column: 28, scope: !708)
!714 = !DILocation(line: 250, column: 39, scope: !708)
!715 = !DILocation(line: 250, column: 57, scope: !708)
!716 = !DILocation(line: 250, column: 63, scope: !708)
!717 = !DILocation(line: 250, column: 26, scope: !708)
!718 = !DILocation(line: 251, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !708, file: !74, line: 251, column: 6)
!720 = !DILocation(line: 251, column: 14, scope: !719)
!721 = !DILocation(line: 251, column: 6, scope: !708)
!722 = !DILocation(line: 252, column: 116, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !74, line: 251, column: 29)
!724 = !DILocation(line: 252, column: 124, scope: !723)
!725 = !DILocation(line: 252, column: 151, scope: !723)
!726 = !DILocation(line: 252, column: 139, scope: !723)
!727 = !DILocation(line: 252, column: 3, scope: !728)
!728 = !DILexicalBlockFile(scope: !723, file: !74, discriminator: 1)
!729 = !DILocation(line: 253, column: 3, scope: !723)
!730 = !DILocation(line: 255, column: 49, scope: !708)
!731 = !DILocation(line: 255, column: 26, scope: !708)
!732 = !DILocation(line: 255, column: 2, scope: !708)
!733 = !DILocation(line: 255, column: 10, scope: !708)
!734 = !DILocation(line: 255, column: 24, scope: !708)
!735 = !DILocation(line: 256, column: 2, scope: !708)
!736 = !DILocation(line: 256, column: 10, scope: !708)
!737 = !DILocation(line: 256, column: 22, scope: !708)
!738 = !DILocation(line: 257, column: 1, scope: !708)
!739 = !DILocation(line: 257, column: 1, scope: !740)
!740 = !DILexicalBlockFile(scope: !708, file: !74, discriminator: 1)
!741 = distinct !DISubprogram(name: "vrrp_gnotify_master_handler", scope: !74, file: !74, line: 259, type: !327, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!742 = !DILocalVariable(name: "strvec", arg: 1, scope: !741, file: !74, line: 259, type: !329)
!743 = !DILocation(line: 259, column: 39, scope: !741)
!744 = !DILocalVariable(name: "vgroup", scope: !741, file: !74, line: 261, type: !525)
!745 = !DILocation(line: 261, column: 17, scope: !741)
!746 = !DILocation(line: 261, column: 28, scope: !741)
!747 = !DILocation(line: 261, column: 39, scope: !741)
!748 = !DILocation(line: 261, column: 57, scope: !741)
!749 = !DILocation(line: 261, column: 63, scope: !741)
!750 = !DILocation(line: 261, column: 26, scope: !741)
!751 = !DILocation(line: 262, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !741, file: !74, line: 262, column: 6)
!753 = !DILocation(line: 262, column: 14, scope: !752)
!754 = !DILocation(line: 262, column: 6, scope: !741)
!755 = !DILocation(line: 263, column: 116, scope: !756)
!756 = distinct !DILexicalBlock(scope: !752, file: !74, line: 262, column: 29)
!757 = !DILocation(line: 263, column: 124, scope: !756)
!758 = !DILocation(line: 263, column: 151, scope: !756)
!759 = !DILocation(line: 263, column: 139, scope: !756)
!760 = !DILocation(line: 263, column: 3, scope: !761)
!761 = !DILexicalBlockFile(scope: !756, file: !74, discriminator: 1)
!762 = !DILocation(line: 264, column: 3, scope: !756)
!763 = !DILocation(line: 266, column: 49, scope: !741)
!764 = !DILocation(line: 266, column: 26, scope: !741)
!765 = !DILocation(line: 266, column: 2, scope: !741)
!766 = !DILocation(line: 266, column: 10, scope: !741)
!767 = !DILocation(line: 266, column: 24, scope: !741)
!768 = !DILocation(line: 267, column: 2, scope: !741)
!769 = !DILocation(line: 267, column: 10, scope: !741)
!770 = !DILocation(line: 267, column: 22, scope: !741)
!771 = !DILocation(line: 268, column: 1, scope: !741)
!772 = !DILocation(line: 268, column: 1, scope: !773)
!773 = !DILexicalBlockFile(scope: !741, file: !74, discriminator: 1)
!774 = distinct !DISubprogram(name: "vrrp_gnotify_fault_handler", scope: !74, file: !74, line: 270, type: !327, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!775 = !DILocalVariable(name: "strvec", arg: 1, scope: !774, file: !74, line: 270, type: !329)
!776 = !DILocation(line: 270, column: 38, scope: !774)
!777 = !DILocalVariable(name: "vgroup", scope: !774, file: !74, line: 272, type: !525)
!778 = !DILocation(line: 272, column: 17, scope: !774)
!779 = !DILocation(line: 272, column: 28, scope: !774)
!780 = !DILocation(line: 272, column: 39, scope: !774)
!781 = !DILocation(line: 272, column: 57, scope: !774)
!782 = !DILocation(line: 272, column: 63, scope: !774)
!783 = !DILocation(line: 272, column: 26, scope: !774)
!784 = !DILocation(line: 273, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !774, file: !74, line: 273, column: 6)
!786 = !DILocation(line: 273, column: 14, scope: !785)
!787 = !DILocation(line: 273, column: 6, scope: !774)
!788 = !DILocation(line: 274, column: 115, scope: !789)
!789 = distinct !DILexicalBlock(scope: !785, file: !74, line: 273, column: 28)
!790 = !DILocation(line: 274, column: 123, scope: !789)
!791 = !DILocation(line: 274, column: 150, scope: !789)
!792 = !DILocation(line: 274, column: 138, scope: !789)
!793 = !DILocation(line: 274, column: 3, scope: !794)
!794 = !DILexicalBlockFile(scope: !789, file: !74, discriminator: 1)
!795 = !DILocation(line: 275, column: 3, scope: !789)
!796 = !DILocation(line: 277, column: 48, scope: !774)
!797 = !DILocation(line: 277, column: 25, scope: !774)
!798 = !DILocation(line: 277, column: 2, scope: !774)
!799 = !DILocation(line: 277, column: 10, scope: !774)
!800 = !DILocation(line: 277, column: 23, scope: !774)
!801 = !DILocation(line: 278, column: 2, scope: !774)
!802 = !DILocation(line: 278, column: 10, scope: !774)
!803 = !DILocation(line: 278, column: 22, scope: !774)
!804 = !DILocation(line: 279, column: 1, scope: !774)
!805 = !DILocation(line: 279, column: 1, scope: !806)
!806 = !DILexicalBlockFile(scope: !774, file: !74, discriminator: 1)
!807 = distinct !DISubprogram(name: "vrrp_gnotify_stop_handler", scope: !74, file: !74, line: 281, type: !327, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!808 = !DILocalVariable(name: "strvec", arg: 1, scope: !807, file: !74, line: 281, type: !329)
!809 = !DILocation(line: 281, column: 37, scope: !807)
!810 = !DILocalVariable(name: "vgroup", scope: !807, file: !74, line: 283, type: !525)
!811 = !DILocation(line: 283, column: 17, scope: !807)
!812 = !DILocation(line: 283, column: 28, scope: !807)
!813 = !DILocation(line: 283, column: 39, scope: !807)
!814 = !DILocation(line: 283, column: 57, scope: !807)
!815 = !DILocation(line: 283, column: 63, scope: !807)
!816 = !DILocation(line: 283, column: 26, scope: !807)
!817 = !DILocation(line: 284, column: 6, scope: !818)
!818 = distinct !DILexicalBlock(scope: !807, file: !74, line: 284, column: 6)
!819 = !DILocation(line: 284, column: 14, scope: !818)
!820 = !DILocation(line: 284, column: 6, scope: !807)
!821 = !DILocation(line: 285, column: 114, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !74, line: 284, column: 27)
!823 = !DILocation(line: 285, column: 122, scope: !822)
!824 = !DILocation(line: 285, column: 149, scope: !822)
!825 = !DILocation(line: 285, column: 137, scope: !822)
!826 = !DILocation(line: 285, column: 3, scope: !827)
!827 = !DILexicalBlockFile(scope: !822, file: !74, discriminator: 1)
!828 = !DILocation(line: 286, column: 3, scope: !822)
!829 = !DILocation(line: 288, column: 47, scope: !807)
!830 = !DILocation(line: 288, column: 24, scope: !807)
!831 = !DILocation(line: 288, column: 2, scope: !807)
!832 = !DILocation(line: 288, column: 10, scope: !807)
!833 = !DILocation(line: 288, column: 22, scope: !807)
!834 = !DILocation(line: 289, column: 2, scope: !807)
!835 = !DILocation(line: 289, column: 10, scope: !807)
!836 = !DILocation(line: 289, column: 22, scope: !807)
!837 = !DILocation(line: 290, column: 1, scope: !807)
!838 = !DILocation(line: 290, column: 1, scope: !839)
!839 = !DILexicalBlockFile(scope: !807, file: !74, discriminator: 1)
!840 = distinct !DISubprogram(name: "vrrp_gnotify_handler", scope: !74, file: !74, line: 292, type: !327, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!841 = !DILocalVariable(name: "strvec", arg: 1, scope: !840, file: !74, line: 292, type: !329)
!842 = !DILocation(line: 292, column: 32, scope: !840)
!843 = !DILocalVariable(name: "vgroup", scope: !840, file: !74, line: 294, type: !525)
!844 = !DILocation(line: 294, column: 17, scope: !840)
!845 = !DILocation(line: 294, column: 28, scope: !840)
!846 = !DILocation(line: 294, column: 39, scope: !840)
!847 = !DILocation(line: 294, column: 57, scope: !840)
!848 = !DILocation(line: 294, column: 63, scope: !840)
!849 = !DILocation(line: 294, column: 26, scope: !840)
!850 = !DILocation(line: 295, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !840, file: !74, line: 295, column: 6)
!852 = !DILocation(line: 295, column: 14, scope: !851)
!853 = !DILocation(line: 295, column: 6, scope: !840)
!854 = !DILocation(line: 296, column: 109, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !74, line: 295, column: 22)
!856 = !DILocation(line: 296, column: 117, scope: !855)
!857 = !DILocation(line: 296, column: 144, scope: !855)
!858 = !DILocation(line: 296, column: 132, scope: !855)
!859 = !DILocation(line: 296, column: 3, scope: !860)
!860 = !DILexicalBlockFile(scope: !855, file: !74, discriminator: 1)
!861 = !DILocation(line: 297, column: 3, scope: !855)
!862 = !DILocation(line: 299, column: 42, scope: !840)
!863 = !DILocation(line: 299, column: 19, scope: !840)
!864 = !DILocation(line: 299, column: 2, scope: !840)
!865 = !DILocation(line: 299, column: 10, scope: !840)
!866 = !DILocation(line: 299, column: 17, scope: !840)
!867 = !DILocation(line: 300, column: 2, scope: !840)
!868 = !DILocation(line: 300, column: 10, scope: !840)
!869 = !DILocation(line: 300, column: 22, scope: !840)
!870 = !DILocation(line: 301, column: 1, scope: !840)
!871 = !DILocation(line: 301, column: 1, scope: !872)
!872 = !DILexicalBlockFile(scope: !840, file: !74, discriminator: 1)
!873 = distinct !DISubprogram(name: "vrrp_gsmtp_handler", scope: !74, file: !74, line: 303, type: !327, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!874 = !DILocalVariable(name: "strvec", arg: 1, scope: !873, file: !74, line: 303, type: !329)
!875 = !DILocation(line: 303, column: 54, scope: !873)
!876 = !DILocalVariable(name: "vgroup", scope: !873, file: !74, line: 305, type: !525)
!877 = !DILocation(line: 305, column: 17, scope: !873)
!878 = !DILocation(line: 305, column: 28, scope: !873)
!879 = !DILocation(line: 305, column: 39, scope: !873)
!880 = !DILocation(line: 305, column: 57, scope: !873)
!881 = !DILocation(line: 305, column: 63, scope: !873)
!882 = !DILocation(line: 305, column: 26, scope: !873)
!883 = !DILocalVariable(name: "res", scope: !873, file: !74, line: 306, type: !127)
!884 = !DILocation(line: 306, column: 6, scope: !873)
!885 = !DILocation(line: 308, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !873, file: !74, line: 308, column: 6)
!887 = !DILocation(line: 308, column: 17, scope: !886)
!888 = !DILocation(line: 308, column: 28, scope: !886)
!889 = !DILocation(line: 308, column: 6, scope: !873)
!890 = !DILocation(line: 309, column: 38, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !74, line: 308, column: 34)
!892 = !DILocation(line: 309, column: 26, scope: !891)
!893 = !DILocation(line: 309, column: 9, scope: !894)
!894 = !DILexicalBlockFile(scope: !891, file: !74, discriminator: 1)
!895 = !DILocation(line: 309, column: 7, scope: !891)
!896 = !DILocation(line: 310, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !74, line: 310, column: 7)
!898 = !DILocation(line: 310, column: 11, scope: !897)
!899 = !DILocation(line: 310, column: 7, scope: !891)
!900 = !DILocation(line: 311, column: 112, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !74, line: 310, column: 18)
!902 = !DILocation(line: 311, column: 100, scope: !901)
!903 = !DILocation(line: 311, column: 4, scope: !904)
!904 = !DILexicalBlockFile(scope: !901, file: !74, discriminator: 1)
!905 = !DILocation(line: 312, column: 4, scope: !901)
!906 = !DILocation(line: 314, column: 2, scope: !891)
!907 = !DILocation(line: 315, column: 23, scope: !873)
!908 = !DILocation(line: 315, column: 2, scope: !873)
!909 = !DILocation(line: 315, column: 10, scope: !873)
!910 = !DILocation(line: 315, column: 21, scope: !873)
!911 = !DILocation(line: 316, column: 1, scope: !873)
!912 = !DILocation(line: 316, column: 1, scope: !913)
!913 = !DILexicalBlockFile(scope: !873, file: !74, discriminator: 1)
!914 = distinct !DISubprogram(name: "vrrp_gglobal_tracking_handler", scope: !74, file: !74, line: 318, type: !327, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!915 = !DILocalVariable(name: "strvec", arg: 1, scope: !914, file: !74, line: 318, type: !329)
!916 = !DILocation(line: 318, column: 65, scope: !914)
!917 = !DILocalVariable(name: "vgroup", scope: !914, file: !74, line: 320, type: !525)
!918 = !DILocation(line: 320, column: 17, scope: !914)
!919 = !DILocation(line: 320, column: 28, scope: !914)
!920 = !DILocation(line: 320, column: 39, scope: !914)
!921 = !DILocation(line: 320, column: 57, scope: !914)
!922 = !DILocation(line: 320, column: 63, scope: !914)
!923 = !DILocation(line: 320, column: 26, scope: !914)
!924 = !DILocation(line: 322, column: 133, scope: !914)
!925 = !DILocation(line: 322, column: 141, scope: !914)
!926 = !DILocation(line: 322, column: 2, scope: !914)
!927 = !DILocation(line: 323, column: 2, scope: !914)
!928 = !DILocation(line: 323, column: 10, scope: !914)
!929 = !DILocation(line: 323, column: 33, scope: !914)
!930 = !DILocation(line: 324, column: 1, scope: !914)
!931 = distinct !DISubprogram(name: "vrrp_sg_tracking_weight_handler", scope: !74, file: !74, line: 326, type: !327, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!932 = !DILocalVariable(name: "strvec", arg: 1, scope: !931, file: !74, line: 326, type: !329)
!933 = !DILocation(line: 326, column: 67, scope: !931)
!934 = !DILocalVariable(name: "vgroup", scope: !931, file: !74, line: 328, type: !525)
!935 = !DILocation(line: 328, column: 17, scope: !931)
!936 = !DILocation(line: 328, column: 28, scope: !931)
!937 = !DILocation(line: 328, column: 39, scope: !931)
!938 = !DILocation(line: 328, column: 57, scope: !931)
!939 = !DILocation(line: 328, column: 63, scope: !931)
!940 = !DILocation(line: 328, column: 26, scope: !931)
!941 = !DILocation(line: 329, column: 2, scope: !931)
!942 = !DILocation(line: 329, column: 10, scope: !931)
!943 = !DILocation(line: 329, column: 33, scope: !931)
!944 = !DILocation(line: 330, column: 1, scope: !931)
!945 = distinct !DISubprogram(name: "garp_group_handler", scope: !74, file: !74, line: 1251, type: !327, isLocal: true, isDefinition: true, scopeLine: 1252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!946 = !DILocalVariable(name: "strvec", arg: 1, scope: !945, file: !74, line: 1251, type: !329)
!947 = !DILocation(line: 1251, column: 30, scope: !945)
!948 = !DILocation(line: 1253, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !74, line: 1253, column: 6)
!950 = !DILocation(line: 1253, column: 6, scope: !945)
!951 = !DILocation(line: 1254, column: 3, scope: !949)
!952 = !DILocation(line: 1256, column: 2, scope: !945)
!953 = !DILocation(line: 1257, column: 1, scope: !945)
!954 = !DILocation(line: 1257, column: 1, scope: !955)
!955 = !DILexicalBlockFile(scope: !945, file: !74, discriminator: 1)
!956 = distinct !DISubprogram(name: "garp_group_garp_interval_handler", scope: !74, file: !74, line: 1259, type: !327, isLocal: true, isDefinition: true, scopeLine: 1260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!957 = !DILocalVariable(name: "strvec", arg: 1, scope: !956, file: !74, line: 1259, type: !329)
!958 = !DILocation(line: 1259, column: 44, scope: !956)
!959 = !DILocalVariable(name: "delay", scope: !956, file: !74, line: 1261, type: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !20, line: 73, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !20, line: 65, size: 704, align: 64, elements: !963)
!963 = !{!964, !972, !973, !974, !975, !976, !977}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !962, file: !20, line: 66, baseType: !965, size: 128, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !966, line: 31, baseType: !967)
!966 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !968, line: 30, size: 128, align: 64, elements: !969)
!968 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !967, file: !968, line: 32, baseType: !115, size: 64, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !967, file: !968, line: 33, baseType: !120, size: 64, align: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !962, file: !20, line: 67, baseType: !125, size: 8, align: 8, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !962, file: !20, line: 68, baseType: !965, size: 128, align: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !962, file: !20, line: 69, baseType: !125, size: 8, align: 8, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !962, file: !20, line: 70, baseType: !965, size: 128, align: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !962, file: !20, line: 71, baseType: !965, size: 128, align: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !962, file: !20, line: 72, baseType: !127, size: 32, align: 32, offset: 640)
!978 = !DILocation(line: 1261, column: 16, scope: !956)
!979 = !DILocation(line: 1261, column: 26, scope: !956)
!980 = !DILocation(line: 1261, column: 39, scope: !956)
!981 = !DILocation(line: 1261, column: 45, scope: !956)
!982 = !DILocation(line: 1261, column: 24, scope: !956)
!983 = !DILocalVariable(name: "val", scope: !956, file: !74, line: 1262, type: !984)
!984 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!985 = !DILocation(line: 1262, column: 9, scope: !956)
!986 = !DILocation(line: 1264, column: 26, scope: !987)
!987 = distinct !DILexicalBlock(scope: !956, file: !74, line: 1264, column: 6)
!988 = !DILocation(line: 1264, column: 7, scope: !987)
!989 = !DILocation(line: 1264, column: 6, scope: !956)
!990 = !DILocation(line: 1265, column: 106, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !74, line: 1264, column: 71)
!992 = !DILocation(line: 1265, column: 94, scope: !991)
!993 = !DILocation(line: 1265, column: 3, scope: !994)
!994 = !DILexicalBlockFile(scope: !991, file: !74, discriminator: 1)
!995 = !DILocation(line: 1266, column: 3, scope: !991)
!996 = !DILocation(line: 1269, column: 40, scope: !956)
!997 = !DILocation(line: 1269, column: 32, scope: !956)
!998 = !DILocation(line: 1269, column: 2, scope: !956)
!999 = !DILocation(line: 1269, column: 9, scope: !956)
!1000 = !DILocation(line: 1269, column: 23, scope: !956)
!1001 = !DILocation(line: 1269, column: 30, scope: !956)
!1002 = !DILocation(line: 1270, column: 48, scope: !956)
!1003 = !DILocation(line: 1270, column: 54, scope: !956)
!1004 = !DILocation(line: 1270, column: 61, scope: !956)
!1005 = !DILocation(line: 1270, column: 75, scope: !956)
!1006 = !DILocation(line: 1270, column: 52, scope: !956)
!1007 = !DILocation(line: 1270, column: 83, scope: !956)
!1008 = !DILocation(line: 1270, column: 33, scope: !956)
!1009 = !DILocation(line: 1270, column: 2, scope: !956)
!1010 = !DILocation(line: 1270, column: 9, scope: !956)
!1011 = !DILocation(line: 1270, column: 23, scope: !956)
!1012 = !DILocation(line: 1270, column: 31, scope: !956)
!1013 = !DILocation(line: 1271, column: 2, scope: !956)
!1014 = !DILocation(line: 1271, column: 9, scope: !956)
!1015 = !DILocation(line: 1271, column: 28, scope: !956)
!1016 = !DILocation(line: 1273, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !956, file: !74, line: 1273, column: 6)
!1018 = !DILocation(line: 1273, column: 13, scope: !1017)
!1019 = !DILocation(line: 1273, column: 27, scope: !1017)
!1020 = !DILocation(line: 1273, column: 34, scope: !1017)
!1021 = !DILocation(line: 1273, column: 6, scope: !956)
!1022 = !DILocation(line: 1274, column: 92, scope: !1017)
!1023 = !DILocation(line: 1274, column: 80, scope: !1017)
!1024 = !DILocation(line: 1274, column: 3, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1017, file: !74, discriminator: 1)
!1026 = !DILocation(line: 1274, column: 3, scope: !1017)
!1027 = !DILocation(line: 1275, column: 1, scope: !956)
!1028 = distinct !DISubprogram(name: "garp_group_gna_interval_handler", scope: !74, file: !74, line: 1277, type: !327, isLocal: true, isDefinition: true, scopeLine: 1278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1029 = !DILocalVariable(name: "strvec", arg: 1, scope: !1028, file: !74, line: 1277, type: !329)
!1030 = !DILocation(line: 1277, column: 43, scope: !1028)
!1031 = !DILocalVariable(name: "delay", scope: !1028, file: !74, line: 1279, type: !960)
!1032 = !DILocation(line: 1279, column: 16, scope: !1028)
!1033 = !DILocation(line: 1279, column: 26, scope: !1028)
!1034 = !DILocation(line: 1279, column: 39, scope: !1028)
!1035 = !DILocation(line: 1279, column: 45, scope: !1028)
!1036 = !DILocation(line: 1279, column: 24, scope: !1028)
!1037 = !DILocalVariable(name: "val", scope: !1028, file: !74, line: 1280, type: !984)
!1038 = !DILocation(line: 1280, column: 9, scope: !1028)
!1039 = !DILocation(line: 1282, column: 26, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1028, file: !74, line: 1282, column: 6)
!1041 = !DILocation(line: 1282, column: 7, scope: !1040)
!1042 = !DILocation(line: 1282, column: 6, scope: !1028)
!1043 = !DILocation(line: 1283, column: 105, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !74, line: 1282, column: 71)
!1045 = !DILocation(line: 1283, column: 93, scope: !1044)
!1046 = !DILocation(line: 1283, column: 3, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1044, file: !74, discriminator: 1)
!1048 = !DILocation(line: 1284, column: 3, scope: !1044)
!1049 = !DILocation(line: 1287, column: 39, scope: !1028)
!1050 = !DILocation(line: 1287, column: 31, scope: !1028)
!1051 = !DILocation(line: 1287, column: 2, scope: !1028)
!1052 = !DILocation(line: 1287, column: 9, scope: !1028)
!1053 = !DILocation(line: 1287, column: 22, scope: !1028)
!1054 = !DILocation(line: 1287, column: 29, scope: !1028)
!1055 = !DILocation(line: 1288, column: 47, scope: !1028)
!1056 = !DILocation(line: 1288, column: 53, scope: !1028)
!1057 = !DILocation(line: 1288, column: 60, scope: !1028)
!1058 = !DILocation(line: 1288, column: 73, scope: !1028)
!1059 = !DILocation(line: 1288, column: 51, scope: !1028)
!1060 = !DILocation(line: 1288, column: 81, scope: !1028)
!1061 = !DILocation(line: 1288, column: 32, scope: !1028)
!1062 = !DILocation(line: 1288, column: 2, scope: !1028)
!1063 = !DILocation(line: 1288, column: 9, scope: !1028)
!1064 = !DILocation(line: 1288, column: 22, scope: !1028)
!1065 = !DILocation(line: 1288, column: 30, scope: !1028)
!1066 = !DILocation(line: 1289, column: 2, scope: !1028)
!1067 = !DILocation(line: 1289, column: 9, scope: !1028)
!1068 = !DILocation(line: 1289, column: 27, scope: !1028)
!1069 = !DILocation(line: 1291, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1028, file: !74, line: 1291, column: 6)
!1071 = !DILocation(line: 1291, column: 13, scope: !1070)
!1072 = !DILocation(line: 1291, column: 26, scope: !1070)
!1073 = !DILocation(line: 1291, column: 33, scope: !1070)
!1074 = !DILocation(line: 1291, column: 6, scope: !1028)
!1075 = !DILocation(line: 1292, column: 91, scope: !1070)
!1076 = !DILocation(line: 1292, column: 79, scope: !1070)
!1077 = !DILocation(line: 1292, column: 3, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1070, file: !74, discriminator: 1)
!1079 = !DILocation(line: 1292, column: 3, scope: !1070)
!1080 = !DILocation(line: 1293, column: 1, scope: !1028)
!1081 = distinct !DISubprogram(name: "garp_group_interface_handler", scope: !74, file: !74, line: 1295, type: !327, isLocal: true, isDefinition: true, scopeLine: 1296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1082 = !DILocalVariable(name: "strvec", arg: 1, scope: !1081, file: !74, line: 1295, type: !329)
!1083 = !DILocation(line: 1295, column: 40, scope: !1081)
!1084 = !DILocalVariable(name: "ifp", scope: !1081, file: !74, line: 1297, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !20, line: 111, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !20, line: 76, size: 1792, align: 64, elements: !1088)
!1088 = !{!1089, !1093, !1096, !1102, !1119, !1120, !1121, !1122, !1123, !1129, !1130, !1131, !1132, !1133, !1134, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !1087, file: !20, line: 77, baseType: !1090, size: 128, align: 8)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, align: 8, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1087, file: !20, line: 78, baseType: !1094, size: 32, align: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !20, line: 62, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 51, baseType: !124)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1087, file: !20, line: 79, baseType: !1097, size: 32, align: 32, offset: 160)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !1098, line: 31, size: 32, align: 32, elements: !1099)
!1098 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1097, file: !1098, line: 33, baseType: !1101, size: 32, align: 32)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !1098, line: 30, baseType: !1095)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1087, file: !20, line: 80, baseType: !1103, size: 128, align: 32, offset: 192)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !1098, line: 211, size: 128, align: 32, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1103, file: !1098, line: 220, baseType: !1106, size: 128, align: 32)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !1098, line: 213, size: 128, align: 32, elements: !1107)
!1107 = !{!1108, !1110, !1115}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1106, file: !1098, line: 215, baseType: !1109, size: 128, align: 8)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, align: 8, elements: !1091)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1106, file: !1098, line: 217, baseType: !1111, size: 128, align: 16)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 128, align: 16, elements: !1113)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !122, line: 49, baseType: !128)
!1113 = !{!1114}
!1114 = !DISubrange(count: 8)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1106, file: !1098, line: 218, baseType: !1116, size: 128, align: 32)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 128, align: 32, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 4)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !1087, file: !20, line: 81, baseType: !124, size: 32, align: 32, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !1087, file: !20, line: 82, baseType: !125, size: 8, align: 8, offset: 352)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1087, file: !20, line: 83, baseType: !1095, size: 32, align: 32, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !1087, file: !20, line: 84, baseType: !128, size: 16, align: 16, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !1087, file: !20, line: 85, baseType: !1124, size: 256, align: 8, offset: 432)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 256, align: 8, elements: !1127)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !119, line: 33, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !116, line: 30, baseType: !123)
!1127 = !{!1128}
!1128 = !DISubrange(count: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !1087, file: !20, line: 86, baseType: !1124, size: 256, align: 8, offset: 688)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !1087, file: !20, line: 87, baseType: !201, size: 64, align: 64, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !1087, file: !20, line: 88, baseType: !127, size: 32, align: 32, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !1087, file: !20, line: 90, baseType: !125, size: 8, align: 8, offset: 1056)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !1087, file: !20, line: 91, baseType: !1094, size: 32, align: 32, offset: 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !1087, file: !20, line: 92, baseType: !1135, size: 64, align: 64, offset: 1152)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !1087, file: !20, line: 94, baseType: !1094, size: 32, align: 32, offset: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !1087, file: !20, line: 96, baseType: !1135, size: 64, align: 64, offset: 1280)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !1087, file: !20, line: 97, baseType: !125, size: 8, align: 8, offset: 1344)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !1087, file: !20, line: 100, baseType: !960, size: 64, align: 64, offset: 1408)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !1087, file: !20, line: 101, baseType: !125, size: 8, align: 8, offset: 1472)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !1087, file: !20, line: 102, baseType: !127, size: 32, align: 32, offset: 1504)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !1087, file: !20, line: 103, baseType: !1095, size: 32, align: 32, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !1087, file: !20, line: 104, baseType: !1095, size: 32, align: 32, offset: 1568)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !1087, file: !20, line: 105, baseType: !1095, size: 32, align: 32, offset: 1600)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !1087, file: !20, line: 107, baseType: !124, size: 32, align: 32, offset: 1632)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !1087, file: !20, line: 109, baseType: !125, size: 8, align: 8, offset: 1664)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !1087, file: !20, line: 110, baseType: !131, size: 64, align: 64, offset: 1728)
!1148 = !DILocation(line: 1297, column: 15, scope: !1081)
!1149 = !DILocation(line: 1297, column: 50, scope: !1081)
!1150 = !DILocation(line: 1297, column: 38, scope: !1081)
!1151 = !DILocation(line: 1297, column: 21, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1081, file: !74, discriminator: 1)
!1153 = !DILocation(line: 1298, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1081, file: !74, line: 1298, column: 6)
!1155 = !DILocation(line: 1298, column: 6, scope: !1081)
!1156 = !DILocation(line: 1299, column: 130, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !74, line: 1298, column: 12)
!1158 = !DILocation(line: 1299, column: 118, scope: !1157)
!1159 = !DILocation(line: 1299, column: 3, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !74, discriminator: 1)
!1161 = !DILocation(line: 1300, column: 3, scope: !1157)
!1162 = !DILocation(line: 1303, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1081, file: !74, line: 1303, column: 6)
!1164 = !DILocation(line: 1303, column: 11, scope: !1163)
!1165 = !DILocation(line: 1303, column: 6, scope: !1081)
!1166 = !DILocation(line: 1304, column: 115, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !74, line: 1303, column: 23)
!1168 = !DILocation(line: 1304, column: 103, scope: !1167)
!1169 = !DILocation(line: 1304, column: 3, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1167, file: !74, discriminator: 1)
!1171 = !DILocation(line: 1305, column: 3, scope: !1167)
!1172 = !DILocation(line: 1310, column: 6, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1081, file: !74, line: 1310, column: 6)
!1174 = !DILocation(line: 1310, column: 11, scope: !1173)
!1175 = !DILocation(line: 1310, column: 6, scope: !1081)
!1176 = !DILocation(line: 1311, column: 100, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !74, line: 1310, column: 17)
!1178 = !DILocation(line: 1311, column: 105, scope: !1177)
!1179 = !DILocation(line: 1311, column: 3, scope: !1177)
!1180 = !DILocation(line: 1312, column: 3, scope: !1177)
!1181 = !DILocation(line: 1315, column: 22, scope: !1081)
!1182 = !DILocation(line: 1315, column: 35, scope: !1081)
!1183 = !DILocation(line: 1315, column: 41, scope: !1081)
!1184 = !DILocation(line: 1315, column: 20, scope: !1081)
!1185 = !DILocation(line: 1315, column: 2, scope: !1081)
!1186 = !DILocation(line: 1315, column: 7, scope: !1081)
!1187 = !DILocation(line: 1315, column: 18, scope: !1081)
!1188 = !DILocation(line: 1316, column: 1, scope: !1081)
!1189 = !DILocation(line: 1316, column: 1, scope: !1152)
!1190 = distinct !DISubprogram(name: "garp_group_interfaces_handler", scope: !74, file: !74, line: 1318, type: !327, isLocal: true, isDefinition: true, scopeLine: 1319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1191 = !DILocalVariable(name: "strvec", arg: 1, scope: !1190, file: !74, line: 1318, type: !329)
!1192 = !DILocation(line: 1318, column: 41, scope: !1190)
!1193 = !DILocalVariable(name: "delay", scope: !1190, file: !74, line: 1320, type: !960)
!1194 = !DILocation(line: 1320, column: 16, scope: !1190)
!1195 = !DILocation(line: 1320, column: 26, scope: !1190)
!1196 = !DILocation(line: 1320, column: 39, scope: !1190)
!1197 = !DILocation(line: 1320, column: 45, scope: !1190)
!1198 = !DILocation(line: 1320, column: 24, scope: !1190)
!1199 = !DILocalVariable(name: "ifp", scope: !1190, file: !74, line: 1321, type: !1085)
!1200 = !DILocation(line: 1321, column: 15, scope: !1190)
!1201 = !DILocalVariable(name: "interface_vec", scope: !1190, file: !74, line: 1322, type: !329)
!1202 = !DILocation(line: 1322, column: 12, scope: !1190)
!1203 = !DILocation(line: 1322, column: 45, scope: !1190)
!1204 = !DILocation(line: 1322, column: 28, scope: !1190)
!1205 = !DILocalVariable(name: "i", scope: !1190, file: !74, line: 1323, type: !201)
!1206 = !DILocation(line: 1323, column: 9, scope: !1190)
!1207 = !DILocalVariable(name: "gd", scope: !1190, file: !74, line: 1324, type: !960)
!1208 = !DILocation(line: 1324, column: 16, scope: !1190)
!1209 = !DILocalVariable(name: "e", scope: !1190, file: !74, line: 1325, type: !341)
!1210 = !DILocation(line: 1325, column: 10, scope: !1190)
!1211 = !DILocation(line: 1328, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1190, file: !74, line: 1328, column: 6)
!1213 = !DILocation(line: 1328, column: 6, scope: !1190)
!1214 = !DILocation(line: 1329, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !74, line: 1328, column: 22)
!1216 = !DILocation(line: 1330, column: 3, scope: !1215)
!1217 = !DILocation(line: 1334, column: 2, scope: !1190)
!1218 = !DILocation(line: 1334, column: 9, scope: !1190)
!1219 = !DILocation(line: 1334, column: 27, scope: !1190)
!1220 = !DILocation(line: 1335, column: 14, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1190, file: !74, line: 1335, column: 2)
!1222 = !DILocation(line: 1335, column: 13, scope: !1221)
!1223 = !DILocation(line: 1335, column: 12, scope: !1221)
!1224 = !DILocation(line: 1335, column: 12, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1221, file: !74, discriminator: 1)
!1226 = !DILocation(line: 1335, column: 13, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1221, file: !74, discriminator: 2)
!1228 = !DILocation(line: 1335, column: 26, scope: !1227)
!1229 = !DILocation(line: 1335, column: 12, scope: !1227)
!1230 = !DILocation(line: 1335, column: 12, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1221, file: !74, discriminator: 3)
!1232 = !DILocation(line: 1335, column: 9, scope: !1231)
!1233 = !DILocation(line: 1335, column: 7, scope: !1231)
!1234 = !DILocation(line: 1335, column: 33, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1236, file: !74, discriminator: 4)
!1236 = distinct !DILexicalBlock(scope: !1221, file: !74, line: 1335, column: 2)
!1237 = !DILocation(line: 1335, column: 2, scope: !1235)
!1238 = !DILocation(line: 1336, column: 10, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !74, line: 1335, column: 55)
!1240 = !DILocation(line: 1336, column: 14, scope: !1239)
!1241 = !DILocation(line: 1336, column: 8, scope: !1239)
!1242 = !DILocation(line: 1336, column: 6, scope: !1239)
!1243 = !DILocation(line: 1337, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !74, line: 1337, column: 7)
!1245 = !DILocation(line: 1337, column: 11, scope: !1244)
!1246 = !DILocation(line: 1337, column: 29, scope: !1244)
!1247 = !DILocation(line: 1337, column: 32, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1244, file: !74, discriminator: 1)
!1249 = !DILocation(line: 1337, column: 38, scope: !1248)
!1250 = !DILocation(line: 1337, column: 35, scope: !1248)
!1251 = !DILocation(line: 1337, column: 7, scope: !1248)
!1252 = !DILocation(line: 1338, column: 4, scope: !1244)
!1253 = !DILocation(line: 1338, column: 11, scope: !1244)
!1254 = !DILocation(line: 1338, column: 28, scope: !1244)
!1255 = !DILocation(line: 1339, column: 2, scope: !1239)
!1256 = !DILocation(line: 1335, column: 44, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1236, file: !74, discriminator: 5)
!1258 = !DILocation(line: 1335, column: 48, scope: !1257)
!1259 = !DILocation(line: 1335, column: 41, scope: !1257)
!1260 = !DILocation(line: 1335, column: 2, scope: !1257)
!1261 = distinct !{!1261, !1262}
!1262 = !DILocation(line: 1335, column: 2, scope: !1190)
!1263 = !DILocation(line: 1341, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1190, file: !74, line: 1341, column: 2)
!1265 = !DILocation(line: 1341, column: 7, scope: !1264)
!1266 = !DILocation(line: 1341, column: 14, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1268, file: !74, discriminator: 1)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !74, line: 1341, column: 2)
!1269 = !DILocation(line: 1341, column: 20, scope: !1267)
!1270 = !DILocation(line: 1341, column: 36, scope: !1267)
!1271 = !DILocation(line: 1341, column: 18, scope: !1267)
!1272 = !DILocation(line: 1341, column: 16, scope: !1267)
!1273 = !DILocation(line: 1341, column: 2, scope: !1267)
!1274 = !DILocation(line: 1342, column: 50, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1268, file: !74, line: 1341, column: 53)
!1276 = !DILocation(line: 1342, column: 28, scope: !1275)
!1277 = !DILocation(line: 1342, column: 44, scope: !1275)
!1278 = !DILocation(line: 1342, column: 27, scope: !1275)
!1279 = !DILocation(line: 1342, column: 9, scope: !1275)
!1280 = !DILocation(line: 1342, column: 7, scope: !1275)
!1281 = !DILocation(line: 1343, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 1343, column: 7)
!1283 = !DILocation(line: 1343, column: 7, scope: !1275)
!1284 = !DILocation(line: 1344, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !74, line: 1344, column: 8)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !74, line: 1343, column: 13)
!1287 = !DILocation(line: 1344, column: 21, scope: !1285)
!1288 = !DILocation(line: 1344, column: 8, scope: !1286)
!1289 = !DILocation(line: 1345, column: 111, scope: !1285)
!1290 = !DILocation(line: 1345, column: 118, scope: !1285)
!1291 = !DILocation(line: 1345, column: 99, scope: !1285)
!1292 = !DILocation(line: 1345, column: 5, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1285, file: !74, discriminator: 1)
!1294 = !DILocation(line: 1345, column: 5, scope: !1285)
!1295 = !DILocation(line: 1347, column: 132, scope: !1285)
!1296 = !DILocation(line: 1347, column: 139, scope: !1285)
!1297 = !DILocation(line: 1347, column: 120, scope: !1285)
!1298 = !DILocation(line: 1347, column: 5, scope: !1293)
!1299 = !DILocation(line: 1348, column: 4, scope: !1286)
!1300 = !DILocation(line: 1351, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 1351, column: 7)
!1302 = !DILocation(line: 1351, column: 12, scope: !1301)
!1303 = !DILocation(line: 1351, column: 7, scope: !1275)
!1304 = !DILocation(line: 1352, column: 116, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !74, line: 1351, column: 24)
!1306 = !DILocation(line: 1352, column: 104, scope: !1305)
!1307 = !DILocation(line: 1352, column: 4, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1305, file: !74, discriminator: 1)
!1309 = !DILocation(line: 1353, column: 4, scope: !1305)
!1310 = !DILocation(line: 1357, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 1357, column: 7)
!1312 = !DILocation(line: 1357, column: 12, scope: !1311)
!1313 = !DILocation(line: 1357, column: 7, scope: !1275)
!1314 = !DILocation(line: 1358, column: 101, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !74, line: 1357, column: 18)
!1316 = !DILocation(line: 1358, column: 106, scope: !1315)
!1317 = !DILocation(line: 1358, column: 4, scope: !1315)
!1318 = !DILocation(line: 1359, column: 4, scope: !1315)
!1319 = !DILocation(line: 1362, column: 21, scope: !1275)
!1320 = !DILocation(line: 1362, column: 3, scope: !1275)
!1321 = !DILocation(line: 1362, column: 8, scope: !1275)
!1322 = !DILocation(line: 1362, column: 19, scope: !1275)
!1323 = !DILocation(line: 1363, column: 2, scope: !1275)
!1324 = !DILocation(line: 1341, column: 49, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1268, file: !74, discriminator: 2)
!1326 = !DILocation(line: 1341, column: 2, scope: !1325)
!1327 = distinct !{!1327, !1328}
!1328 = !DILocation(line: 1341, column: 2, scope: !1190)
!1329 = !DILocation(line: 1365, column: 14, scope: !1190)
!1330 = !DILocation(line: 1365, column: 2, scope: !1190)
!1331 = !DILocation(line: 1366, column: 1, scope: !1190)
!1332 = !DILocation(line: 1366, column: 1, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1190, file: !74, discriminator: 1)
!1334 = distinct !DISubprogram(name: "garp_group_end_handler", scope: !74, file: !74, line: 1368, type: !1335, isLocal: true, isDefinition: true, scopeLine: 1369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null}
!1337 = !DILocalVariable(name: "delay", scope: !1334, file: !74, line: 1370, type: !960)
!1338 = !DILocation(line: 1370, column: 16, scope: !1334)
!1339 = !DILocation(line: 1370, column: 26, scope: !1334)
!1340 = !DILocation(line: 1370, column: 39, scope: !1334)
!1341 = !DILocation(line: 1370, column: 45, scope: !1334)
!1342 = !DILocation(line: 1370, column: 24, scope: !1334)
!1343 = !DILocalVariable(name: "e", scope: !1334, file: !74, line: 1371, type: !341)
!1344 = !DILocation(line: 1371, column: 10, scope: !1334)
!1345 = !DILocalVariable(name: "next", scope: !1334, file: !74, line: 1371, type: !341)
!1346 = !DILocation(line: 1371, column: 13, scope: !1334)
!1347 = !DILocalVariable(name: "ifp", scope: !1334, file: !74, line: 1372, type: !1085)
!1348 = !DILocation(line: 1372, column: 15, scope: !1334)
!1349 = !DILocation(line: 1374, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1334, file: !74, line: 1374, column: 6)
!1351 = !DILocation(line: 1374, column: 14, scope: !1350)
!1352 = !DILocation(line: 1374, column: 33, scope: !1350)
!1353 = !DILocation(line: 1374, column: 37, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1350, file: !74, discriminator: 1)
!1355 = !DILocation(line: 1374, column: 44, scope: !1354)
!1356 = !DILocation(line: 1374, column: 6, scope: !1354)
!1357 = !DILocation(line: 1375, column: 101, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1350, file: !74, line: 1374, column: 63)
!1359 = !DILocation(line: 1375, column: 108, scope: !1358)
!1360 = !DILocation(line: 1375, column: 3, scope: !1358)
!1361 = !DILocation(line: 1378, column: 16, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !74, line: 1378, column: 3)
!1363 = !DILocation(line: 1378, column: 15, scope: !1362)
!1364 = !DILocation(line: 1378, column: 36, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 1)
!1366 = !DILocation(line: 1378, column: 34, scope: !1365)
!1367 = !DILocation(line: 1378, column: 34, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 2)
!1369 = !DILocation(line: 1378, column: 5, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 3)
!1371 = !DILocation(line: 1378, column: 21, scope: !1370)
!1372 = !DILocation(line: 1378, column: 34, scope: !1370)
!1373 = !DILocation(line: 1378, column: 34, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 4)
!1375 = !DILocation(line: 1378, column: 15, scope: !1374)
!1376 = !DILocation(line: 1378, column: 15, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 5)
!1378 = !DILocation(line: 1378, column: 15, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 6)
!1380 = !DILocation(line: 1378, column: 12, scope: !1379)
!1381 = !DILocation(line: 1378, column: 8, scope: !1379)
!1382 = !DILocation(line: 1378, column: 6, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !74, discriminator: 7)
!1384 = distinct !DILexicalBlock(scope: !1362, file: !74, line: 1378, column: 3)
!1385 = !DILocation(line: 1378, column: 5, scope: !1383)
!1386 = !DILocation(line: 1378, column: 9, scope: !1383)
!1387 = !DILocation(line: 1378, column: 23, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1384, file: !74, discriminator: 8)
!1389 = !DILocation(line: 1378, column: 27, scope: !1388)
!1390 = !DILocation(line: 1378, column: 20, scope: !1388)
!1391 = !DILocation(line: 1378, column: 43, scope: !1388)
!1392 = !DILocation(line: 1378, column: 47, scope: !1388)
!1393 = !DILocation(line: 1378, column: 41, scope: !1388)
!1394 = !DILocation(line: 1378, column: 39, scope: !1388)
!1395 = !DILocation(line: 1378, column: 3, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1362, file: !74, discriminator: 9)
!1397 = !DILocation(line: 1379, column: 8, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !74, line: 1379, column: 8)
!1399 = distinct !DILexicalBlock(scope: !1384, file: !74, line: 1378, column: 72)
!1400 = !DILocation(line: 1379, column: 13, scope: !1398)
!1401 = !DILocation(line: 1379, column: 27, scope: !1398)
!1402 = !DILocation(line: 1379, column: 24, scope: !1398)
!1403 = !DILocation(line: 1379, column: 8, scope: !1399)
!1404 = !DILocation(line: 1380, column: 5, scope: !1398)
!1405 = !DILocation(line: 1380, column: 10, scope: !1398)
!1406 = !DILocation(line: 1380, column: 21, scope: !1398)
!1407 = !DILocation(line: 1381, column: 3, scope: !1399)
!1408 = !DILocation(line: 1378, column: 65, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1384, file: !74, discriminator: 10)
!1410 = !DILocation(line: 1378, column: 62, scope: !1409)
!1411 = !DILocation(line: 1378, column: 3, scope: !1409)
!1412 = distinct !{!1412, !1413}
!1413 = !DILocation(line: 1378, column: 3, scope: !1358)
!1414 = !DILocation(line: 1383, column: 21, scope: !1358)
!1415 = !DILocation(line: 1383, column: 33, scope: !1358)
!1416 = !DILocation(line: 1383, column: 45, scope: !1358)
!1417 = !DILocation(line: 1383, column: 3, scope: !1358)
!1418 = !DILocation(line: 1384, column: 2, scope: !1358)
!1419 = !DILocation(line: 1385, column: 1, scope: !1334)
!1420 = distinct !DISubprogram(name: "vrrp_handler", scope: !74, file: !74, line: 332, type: !327, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1421 = !DILocalVariable(name: "strvec", arg: 1, scope: !1420, file: !74, line: 332, type: !329)
!1422 = !DILocation(line: 332, column: 24, scope: !1420)
!1423 = !DILocalVariable(name: "l", scope: !1420, file: !74, line: 334, type: !131)
!1424 = !DILocation(line: 334, column: 7, scope: !1420)
!1425 = !DILocalVariable(name: "e", scope: !1420, file: !74, line: 335, type: !341)
!1426 = !DILocation(line: 335, column: 10, scope: !1420)
!1427 = !DILocalVariable(name: "vrrp", scope: !1420, file: !74, line: 336, type: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !27, line: 310, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !27, line: 183, size: 7040, align: 64, elements: !1431)
!1431 = !{!1432, !1435, !1436, !1437, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1479, !1480, !1481, !1482, !1483, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1641, !1648}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1430, file: !27, line: 184, baseType: !1433, size: 16, align: 16)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !1434, line: 28, baseType: !128)
!1434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1430, file: !27, line: 185, baseType: !111, size: 64, align: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1430, file: !27, line: 186, baseType: !525, size: 64, align: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1430, file: !27, line: 187, baseType: !1438, size: 64, align: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !27, line: 169, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !27, line: 136, size: 768, align: 64, elements: !1441)
!1441 = !{!1442, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !1440, file: !27, line: 137, baseType: !1443, size: 64, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !122, line: 55, baseType: !126)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !1440, file: !27, line: 138, baseType: !1095, size: 32, align: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !1440, file: !27, line: 140, baseType: !1095, size: 32, align: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !1440, file: !27, line: 141, baseType: !1095, size: 32, align: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !1440, file: !27, line: 143, baseType: !1443, size: 64, align: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !1440, file: !27, line: 144, baseType: !1443, size: 64, align: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !1440, file: !27, line: 145, baseType: !1443, size: 64, align: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !1440, file: !27, line: 146, baseType: !1443, size: 64, align: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !1440, file: !27, line: 147, baseType: !1443, size: 64, align: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !1440, file: !27, line: 149, baseType: !1095, size: 32, align: 32, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !1440, file: !27, line: 151, baseType: !1095, size: 32, align: 32, offset: 544)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !1440, file: !27, line: 152, baseType: !1095, size: 32, align: 32, offset: 576)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !1440, file: !27, line: 155, baseType: !1443, size: 64, align: 64, offset: 640)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !1440, file: !27, line: 156, baseType: !1443, size: 64, align: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !1430, file: !27, line: 188, baseType: !1085, size: 64, align: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !1430, file: !27, line: 189, baseType: !125, size: 8, align: 8, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !1430, file: !27, line: 190, baseType: !125, size: 8, align: 8, offset: 328)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !1430, file: !27, line: 191, baseType: !125, size: 8, align: 8, offset: 336)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !1430, file: !27, line: 193, baseType: !124, size: 32, align: 32, offset: 352)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !1430, file: !27, line: 195, baseType: !126, size: 64, align: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !1430, file: !27, line: 196, baseType: !1090, size: 128, align: 8, offset: 448)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !1430, file: !27, line: 198, baseType: !131, size: 64, align: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !1430, file: !27, line: 199, baseType: !131, size: 64, align: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !1430, file: !27, line: 200, baseType: !131, size: 64, align: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !1430, file: !27, line: 204, baseType: !124, size: 32, align: 32, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !1430, file: !27, line: 205, baseType: !124, size: 32, align: 32, offset: 800)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1430, file: !27, line: 206, baseType: !1470, size: 1024, align: 64, offset: 832)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !1471, line: 166, size: 1024, align: 64, elements: !1472)
!1471 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1472 = !{!1473, !1474, !1478}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1470, file: !1471, line: 168, baseType: !1433, size: 16, align: 16)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1470, file: !1471, line: 169, baseType: !1475, size: 944, align: 8, offset: 16)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 944, align: 8, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 118)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1470, file: !1471, line: 170, baseType: !126, size: 64, align: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !1430, file: !27, line: 207, baseType: !125, size: 8, align: 8, offset: 1856)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !1430, file: !27, line: 208, baseType: !125, size: 8, align: 8, offset: 1864)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !1430, file: !27, line: 209, baseType: !1470, size: 1024, align: 64, offset: 1920)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !1430, file: !27, line: 210, baseType: !131, size: 64, align: 64, offset: 2944)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !1430, file: !27, line: 212, baseType: !1484, size: 32, align: 32, offset: 3008)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !27, line: 179, baseType: !26)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !1430, file: !27, line: 214, baseType: !1470, size: 1024, align: 64, offset: 3072)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !1430, file: !27, line: 215, baseType: !121, size: 8, align: 8, offset: 4096)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !1430, file: !27, line: 216, baseType: !965, size: 128, align: 64, offset: 4160)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !1430, file: !27, line: 217, baseType: !124, size: 32, align: 32, offset: 4288)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !1430, file: !27, line: 218, baseType: !965, size: 128, align: 64, offset: 4352)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !1430, file: !27, line: 219, baseType: !965, size: 128, align: 64, offset: 4480)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !1430, file: !27, line: 220, baseType: !124, size: 32, align: 32, offset: 4608)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !1430, file: !27, line: 221, baseType: !124, size: 32, align: 32, offset: 4640)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !1430, file: !27, line: 222, baseType: !124, size: 32, align: 32, offset: 4672)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !1430, file: !27, line: 223, baseType: !125, size: 8, align: 8, offset: 4704)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !1430, file: !27, line: 224, baseType: !125, size: 8, align: 8, offset: 4712)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !1430, file: !27, line: 225, baseType: !124, size: 32, align: 32, offset: 4736)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !1430, file: !27, line: 226, baseType: !124, size: 32, align: 32, offset: 4768)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !1430, file: !27, line: 227, baseType: !124, size: 32, align: 32, offset: 4800)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !1430, file: !27, line: 228, baseType: !121, size: 8, align: 8, offset: 4832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !1430, file: !27, line: 229, baseType: !121, size: 8, align: 8, offset: 4840)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !1430, file: !27, line: 230, baseType: !121, size: 8, align: 8, offset: 4848)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !1430, file: !27, line: 231, baseType: !127, size: 32, align: 32, offset: 4864)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !1430, file: !27, line: 233, baseType: !125, size: 8, align: 8, offset: 4896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1430, file: !27, line: 234, baseType: !131, size: 64, align: 64, offset: 4928)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !1430, file: !27, line: 235, baseType: !131, size: 64, align: 64, offset: 4992)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !1430, file: !27, line: 239, baseType: !125, size: 8, align: 8, offset: 5056)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !1430, file: !27, line: 240, baseType: !125, size: 8, align: 8, offset: 5064)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !1430, file: !27, line: 241, baseType: !131, size: 64, align: 64, offset: 5120)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !1430, file: !27, line: 242, baseType: !131, size: 64, align: 64, offset: 5184)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !1430, file: !27, line: 243, baseType: !124, size: 32, align: 32, offset: 5248)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !1430, file: !27, line: 244, baseType: !124, size: 32, align: 32, offset: 5280)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !1430, file: !27, line: 249, baseType: !124, size: 32, align: 32, offset: 5312)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !1430, file: !27, line: 252, baseType: !201, size: 64, align: 64, offset: 5376)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !1430, file: !27, line: 254, baseType: !125, size: 8, align: 8, offset: 5440)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !1430, file: !27, line: 255, baseType: !125, size: 8, align: 8, offset: 5448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !1430, file: !27, line: 256, baseType: !126, size: 64, align: 64, offset: 5504)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !1430, file: !27, line: 260, baseType: !965, size: 128, align: 64, offset: 5568)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1430, file: !27, line: 261, baseType: !127, size: 32, align: 32, offset: 5696)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !1430, file: !27, line: 265, baseType: !127, size: 32, align: 32, offset: 5728)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !1430, file: !27, line: 266, baseType: !125, size: 8, align: 8, offset: 5760)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !1430, file: !27, line: 267, baseType: !1522, size: 64, align: 64, offset: 5824)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !1524, line: 50, baseType: !1525)
!1524 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !1524, line: 40, size: 1344, align: 64, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1525, file: !1524, line: 41, baseType: !1433, size: 16, align: 16)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1525, file: !1524, line: 42, baseType: !1470, size: 1024, align: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !1525, file: !1524, line: 43, baseType: !127, size: 32, align: 32, offset: 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1525, file: !1524, line: 44, baseType: !1094, size: 32, align: 32, offset: 1120)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !1525, file: !1524, line: 45, baseType: !125, size: 8, align: 8, offset: 1152)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !1525, file: !1524, line: 46, baseType: !127, size: 32, align: 32, offset: 1184)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !1525, file: !1524, line: 47, baseType: !127, size: 32, align: 32, offset: 1216)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !1525, file: !1524, line: 48, baseType: !127, size: 32, align: 32, offset: 1248)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1525, file: !1524, line: 49, baseType: !1536, size: 64, align: 64, offset: 1280)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64, align: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !35, line: 99, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !35, line: 78, size: 768, align: 64, elements: !1539)
!1539 = !{!1540, !1541, !1543, !1596, !1601, !1602, !1603, !1615, !1617}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1538, file: !35, line: 79, baseType: !126, size: 64, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1538, file: !35, line: 80, baseType: !1542, size: 32, align: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !35, line: 63, baseType: !34)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !1538, file: !35, line: 81, baseType: !1544, size: 64, align: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64, align: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !35, line: 112, size: 1280, align: 64, elements: !1546)
!1546 = !{!1547, !1559, !1560, !1561, !1562, !1570, !1571, !1572, !1573, !1574, !1577, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1545, file: !35, line: 113, baseType: !1548, size: 64, align: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !1549, line: 109, baseType: !1550)
!1549 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1549, line: 106, size: 64, align: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1550, file: !1549, line: 108, baseType: !1553, size: 64, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64, align: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1549, line: 97, size: 192, align: 64, elements: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !1554, file: !1549, line: 99, baseType: !126, size: 64, align: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1554, file: !1549, line: 102, baseType: !1553, size: 64, align: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1554, file: !1549, line: 103, baseType: !1553, size: 64, align: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1545, file: !35, line: 114, baseType: !1548, size: 64, align: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1545, file: !35, line: 115, baseType: !1548, size: 64, align: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1545, file: !35, line: 116, baseType: !1548, size: 64, align: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1545, file: !35, line: 117, baseType: !1563, size: 128, align: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !1564, line: 62, baseType: !1565)
!1564 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !1564, line: 60, size: 128, align: 64, elements: !1566)
!1566 = !{!1567, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1565, file: !1564, line: 61, baseType: !1568, size: 64, align: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64, align: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1565, file: !1564, line: 61, baseType: !1568, size: 64, align: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !1545, file: !35, line: 121, baseType: !1563, size: 128, align: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !1545, file: !35, line: 122, baseType: !1563, size: 128, align: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !1545, file: !35, line: 124, baseType: !131, size: 64, align: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !1545, file: !35, line: 127, baseType: !1548, size: 64, align: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !1545, file: !35, line: 128, baseType: !1575, size: 64, align: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64, align: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !35, line: 128, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !1545, file: !35, line: 129, baseType: !1578, size: 64, align: 64, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !35, line: 109, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !35, line: 102, size: 448, align: 64, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1580, file: !35, line: 103, baseType: !1536, size: 64, align: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1580, file: !35, line: 104, baseType: !1536, size: 64, align: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1580, file: !35, line: 105, baseType: !126, size: 64, align: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1580, file: !35, line: 106, baseType: !127, size: 32, align: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1580, file: !35, line: 108, baseType: !1587, size: 192, align: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !1549, line: 104, baseType: !1554)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !1545, file: !35, line: 130, baseType: !124, size: 32, align: 32, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !1545, file: !35, line: 131, baseType: !124, size: 32, align: 32, offset: 928)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !1545, file: !35, line: 132, baseType: !127, size: 32, align: 32, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !1545, file: !35, line: 135, baseType: !127, size: 32, align: 32, offset: 992)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !1545, file: !35, line: 136, baseType: !1536, size: 64, align: 64, offset: 1024)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1545, file: !35, line: 146, baseType: !126, size: 64, align: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1545, file: !35, line: 147, baseType: !126, size: 64, align: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !1545, file: !35, line: 148, baseType: !125, size: 8, align: 8, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1538, file: !35, line: 82, baseType: !1597, size: 64, align: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64, align: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!127, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64, align: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1538, file: !35, line: 83, baseType: !110, size: 64, align: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !1538, file: !35, line: 84, baseType: !965, size: 128, align: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1538, file: !35, line: 92, baseType: !1604, size: 64, align: 32, offset: 448)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !35, line: 85, size: 64, align: 32, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1604, file: !35, line: 86, baseType: !127, size: 32, align: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1604, file: !35, line: 87, baseType: !127, size: 32, align: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1604, file: !35, line: 91, baseType: !1609, size: 64, align: 32)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !35, line: 88, size: 64, align: 32, elements: !1610)
!1610 = !{!1611, !1614}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1609, file: !35, line: 89, baseType: !1612, size: 32, align: 32)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !552, line: 263, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !116, line: 133, baseType: !127)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1609, file: !35, line: 90, baseType: !127, size: 32, align: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1538, file: !35, line: 93, baseType: !1616, size: 64, align: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !35, line: 95, baseType: !1618, size: 192, align: 64, offset: 576)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !35, line: 95, size: 192, align: 64, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1618, file: !35, line: 96, baseType: !1587, size: 192, align: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1618, file: !35, line: 97, baseType: !1563, size: 128, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !1430, file: !27, line: 269, baseType: !127, size: 32, align: 32, offset: 5888)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1430, file: !27, line: 271, baseType: !127, size: 32, align: 32, offset: 5920)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !1430, file: !27, line: 274, baseType: !127, size: 32, align: 32, offset: 5952)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !1430, file: !27, line: 275, baseType: !127, size: 32, align: 32, offset: 5984)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !1430, file: !27, line: 276, baseType: !125, size: 8, align: 8, offset: 6016)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !1430, file: !27, line: 277, baseType: !542, size: 64, align: 64, offset: 6080)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !1430, file: !27, line: 278, baseType: !542, size: 64, align: 64, offset: 6144)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !1430, file: !27, line: 279, baseType: !542, size: 64, align: 64, offset: 6208)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !1430, file: !27, line: 280, baseType: !542, size: 64, align: 64, offset: 6272)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !1430, file: !27, line: 281, baseType: !542, size: 64, align: 64, offset: 6336)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !1430, file: !27, line: 282, baseType: !542, size: 64, align: 64, offset: 6400)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !1430, file: !27, line: 285, baseType: !1095, size: 32, align: 32, offset: 6464)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !1430, file: !27, line: 286, baseType: !965, size: 128, align: 64, offset: 6528)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !1430, file: !27, line: 289, baseType: !111, size: 64, align: 64, offset: 6656)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !1430, file: !27, line: 290, baseType: !201, size: 64, align: 64, offset: 6720)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !1430, file: !27, line: 291, baseType: !1095, size: 32, align: 32, offset: 6784)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !1430, file: !27, line: 295, baseType: !121, size: 8, align: 8, offset: 6816)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !1430, file: !27, line: 296, baseType: !1640, size: 64, align: 8, offset: 6824)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, align: 8, elements: !1113)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !1430, file: !27, line: 299, baseType: !1642, size: 64, align: 32, offset: 6912)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !1643, line: 58, baseType: !1644)
!1643 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !1643, line: 55, size: 64, align: 32, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !1644, file: !1643, line: 56, baseType: !125, size: 8, align: 8)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !1644, file: !1643, line: 57, baseType: !1095, size: 32, align: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !1430, file: !27, line: 309, baseType: !127, size: 32, align: 32, offset: 6976)
!1649 = !DILocation(line: 336, column: 10, scope: !1420)
!1650 = !DILocalVariable(name: "iname", scope: !1420, file: !74, line: 337, type: !111)
!1651 = !DILocation(line: 337, column: 8, scope: !1420)
!1652 = !DILocation(line: 339, column: 2, scope: !1420)
!1653 = !DILocation(line: 339, column: 15, scope: !1420)
!1654 = !DILocation(line: 339, column: 32, scope: !1420)
!1655 = !DILocation(line: 341, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1420, file: !74, line: 341, column: 6)
!1657 = !DILocation(line: 341, column: 6, scope: !1420)
!1658 = !DILocation(line: 342, column: 3, scope: !1656)
!1659 = !DILocation(line: 344, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1420, file: !74, line: 344, column: 6)
!1661 = !DILocation(line: 344, column: 6, scope: !1660)
!1662 = !DILocation(line: 344, column: 27, scope: !1660)
!1663 = !DILocation(line: 344, column: 6, scope: !1420)
!1664 = !DILocation(line: 345, column: 3, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !74, line: 344, column: 33)
!1666 = !DILocation(line: 346, column: 3, scope: !1665)
!1667 = !DILocation(line: 347, column: 3, scope: !1665)
!1668 = !DILocation(line: 350, column: 22, scope: !1420)
!1669 = !DILocation(line: 350, column: 10, scope: !1420)
!1670 = !DILocation(line: 350, column: 8, scope: !1420)
!1671 = !DILocation(line: 353, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1420, file: !74, line: 353, column: 6)
!1673 = !DILocation(line: 353, column: 20, scope: !1672)
!1674 = !DILocation(line: 353, column: 26, scope: !1672)
!1675 = !DILocation(line: 353, column: 6, scope: !1672)
!1676 = !DILocation(line: 353, column: 11, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !74, discriminator: 1)
!1678 = !DILocation(line: 353, column: 22, scope: !1677)
!1679 = !DILocation(line: 353, column: 29, scope: !1677)
!1680 = !DILocation(line: 353, column: 34, scope: !1677)
!1681 = !DILocation(line: 353, column: 6, scope: !1677)
!1682 = !DILocation(line: 353, column: 10, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1672, file: !74, discriminator: 2)
!1684 = !DILocation(line: 353, column: 21, scope: !1683)
!1685 = !DILocation(line: 353, column: 28, scope: !1683)
!1686 = !DILocation(line: 353, column: 33, scope: !1683)
!1687 = !DILocation(line: 353, column: 6, scope: !1683)
!1688 = !DILocation(line: 354, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1672, file: !74, line: 353, column: 10)
!1690 = !DILocation(line: 354, column: 18, scope: !1689)
!1691 = !DILocation(line: 354, column: 5, scope: !1689)
!1692 = !DILocation(line: 355, column: 15, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !74, line: 355, column: 3)
!1694 = !DILocation(line: 355, column: 14, scope: !1693)
!1695 = !DILocation(line: 355, column: 13, scope: !1693)
!1696 = !DILocation(line: 355, column: 13, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1693, file: !74, discriminator: 1)
!1698 = !DILocation(line: 355, column: 14, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1693, file: !74, discriminator: 2)
!1700 = !DILocation(line: 355, column: 18, scope: !1699)
!1701 = !DILocation(line: 355, column: 13, scope: !1699)
!1702 = !DILocation(line: 355, column: 13, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1693, file: !74, discriminator: 3)
!1704 = !DILocation(line: 355, column: 10, scope: !1703)
!1705 = !DILocation(line: 355, column: 8, scope: !1703)
!1706 = !DILocation(line: 355, column: 25, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1708, file: !74, discriminator: 4)
!1708 = distinct !DILexicalBlock(scope: !1693, file: !74, line: 355, column: 3)
!1709 = !DILocation(line: 355, column: 3, scope: !1707)
!1710 = !DILocation(line: 356, column: 13, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !74, line: 355, column: 47)
!1712 = !DILocation(line: 356, column: 17, scope: !1711)
!1713 = !DILocation(line: 356, column: 11, scope: !1711)
!1714 = !DILocation(line: 356, column: 9, scope: !1711)
!1715 = !DILocation(line: 357, column: 16, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !74, line: 357, column: 8)
!1717 = !DILocation(line: 357, column: 22, scope: !1716)
!1718 = !DILocation(line: 357, column: 28, scope: !1716)
!1719 = !DILocation(line: 357, column: 9, scope: !1716)
!1720 = !DILocation(line: 357, column: 8, scope: !1711)
!1721 = !DILocation(line: 358, column: 83, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1716, file: !74, line: 357, column: 36)
!1723 = !DILocation(line: 358, column: 5, scope: !1722)
!1724 = !DILocation(line: 359, column: 5, scope: !1722)
!1725 = !DILocation(line: 360, column: 5, scope: !1722)
!1726 = !DILocation(line: 362, column: 3, scope: !1711)
!1727 = !DILocation(line: 355, column: 36, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1708, file: !74, discriminator: 5)
!1729 = !DILocation(line: 355, column: 40, scope: !1728)
!1730 = !DILocation(line: 355, column: 33, scope: !1728)
!1731 = !DILocation(line: 355, column: 3, scope: !1728)
!1732 = distinct !{!1732, !1733}
!1733 = !DILocation(line: 355, column: 3, scope: !1689)
!1734 = !DILocation(line: 363, column: 2, scope: !1689)
!1735 = !DILocation(line: 365, column: 13, scope: !1420)
!1736 = !DILocation(line: 365, column: 2, scope: !1420)
!1737 = !DILocation(line: 366, column: 1, scope: !1420)
!1738 = !DILocation(line: 366, column: 1, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1420, file: !74, discriminator: 1)
!1740 = distinct !DISubprogram(name: "vrrp_vmac_handler", scope: !74, file: !74, line: 369, type: !327, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1741 = !DILocalVariable(name: "strvec", arg: 1, scope: !1740, file: !74, line: 369, type: !329)
!1742 = !DILocation(line: 369, column: 29, scope: !1740)
!1743 = !DILocalVariable(name: "vrrp", scope: !1740, file: !74, line: 371, type: !1428)
!1744 = !DILocation(line: 371, column: 10, scope: !1740)
!1745 = !DILocation(line: 371, column: 19, scope: !1740)
!1746 = !DILocation(line: 371, column: 30, scope: !1740)
!1747 = !DILocation(line: 371, column: 37, scope: !1740)
!1748 = !DILocation(line: 371, column: 43, scope: !1740)
!1749 = !DILocation(line: 371, column: 17, scope: !1740)
!1750 = !DILocalVariable(name: "ifp", scope: !1740, file: !74, line: 372, type: !1085)
!1751 = !DILocation(line: 372, column: 15, scope: !1740)
!1752 = !DILocation(line: 374, column: 28, scope: !1740)
!1753 = !DILocation(line: 374, column: 34, scope: !1740)
!1754 = !DILocation(line: 374, column: 2, scope: !1740)
!1755 = !DILocation(line: 376, column: 8, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1740, file: !74, line: 376, column: 6)
!1757 = !DILocation(line: 376, column: 17, scope: !1756)
!1758 = !DILocation(line: 376, column: 28, scope: !1756)
!1759 = !DILocation(line: 376, column: 6, scope: !1740)
!1760 = !DILocation(line: 377, column: 26, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !74, line: 377, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !74, line: 376, column: 34)
!1763 = !DILocation(line: 377, column: 14, scope: !1761)
!1764 = !DILocation(line: 377, column: 7, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1761, file: !74, discriminator: 1)
!1766 = !DILocation(line: 377, column: 38, scope: !1761)
!1767 = !DILocation(line: 377, column: 7, scope: !1762)
!1768 = !DILocation(line: 378, column: 114, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1761, file: !74, line: 377, column: 50)
!1770 = !DILocation(line: 378, column: 102, scope: !1769)
!1771 = !DILocation(line: 378, column: 4, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1769, file: !74, discriminator: 1)
!1773 = !DILocation(line: 379, column: 4, scope: !1769)
!1774 = !DILocation(line: 382, column: 10, scope: !1762)
!1775 = !DILocation(line: 382, column: 16, scope: !1762)
!1776 = !DILocation(line: 382, column: 41, scope: !1762)
!1777 = !DILocation(line: 382, column: 29, scope: !1762)
!1778 = !DILocation(line: 382, column: 3, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1762, file: !74, discriminator: 1)
!1780 = !DILocation(line: 385, column: 31, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1762, file: !74, line: 385, column: 7)
!1782 = !DILocation(line: 385, column: 37, scope: !1781)
!1783 = !DILocation(line: 385, column: 14, scope: !1781)
!1784 = !DILocation(line: 385, column: 12, scope: !1781)
!1785 = !DILocation(line: 385, column: 65, scope: !1781)
!1786 = !DILocation(line: 386, column: 8, scope: !1781)
!1787 = !DILocation(line: 386, column: 13, scope: !1781)
!1788 = !DILocation(line: 385, column: 7, scope: !1779)
!1789 = !DILocation(line: 387, column: 134, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !74, line: 386, column: 19)
!1791 = !DILocation(line: 387, column: 140, scope: !1790)
!1792 = !DILocation(line: 387, column: 147, scope: !1790)
!1793 = !DILocation(line: 387, column: 153, scope: !1790)
!1794 = !DILocation(line: 387, column: 4, scope: !1790)
!1795 = !DILocation(line: 388, column: 4, scope: !1790)
!1796 = !DILocation(line: 388, column: 10, scope: !1790)
!1797 = !DILocation(line: 388, column: 25, scope: !1790)
!1798 = !DILocation(line: 389, column: 3, scope: !1790)
!1799 = !DILocation(line: 390, column: 2, scope: !1762)
!1800 = !DILocation(line: 391, column: 1, scope: !1740)
!1801 = distinct !DISubprogram(name: "vrrp_vmac_xmit_base_handler", scope: !74, file: !74, line: 393, type: !327, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1802 = !DILocalVariable(name: "strvec", arg: 1, scope: !1801, file: !74, line: 393, type: !329)
!1803 = !DILocation(line: 393, column: 63, scope: !1801)
!1804 = !DILocalVariable(name: "vrrp", scope: !1801, file: !74, line: 395, type: !1428)
!1805 = !DILocation(line: 395, column: 10, scope: !1801)
!1806 = !DILocation(line: 395, column: 19, scope: !1801)
!1807 = !DILocation(line: 395, column: 30, scope: !1801)
!1808 = !DILocation(line: 395, column: 37, scope: !1801)
!1809 = !DILocation(line: 395, column: 43, scope: !1801)
!1810 = !DILocation(line: 395, column: 17, scope: !1801)
!1811 = !DILocation(line: 397, column: 37, scope: !1801)
!1812 = !DILocation(line: 397, column: 43, scope: !1801)
!1813 = !DILocation(line: 397, column: 2, scope: !1801)
!1814 = !DILocation(line: 398, column: 1, scope: !1801)
!1815 = distinct !DISubprogram(name: "vrrp_unicast_peer_handler", scope: !74, file: !74, line: 401, type: !327, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1816 = !DILocalVariable(name: "strvec", arg: 1, scope: !1815, file: !74, line: 401, type: !329)
!1817 = !DILocation(line: 401, column: 37, scope: !1815)
!1818 = !DILocation(line: 403, column: 47, scope: !1815)
!1819 = !DILocation(line: 403, column: 56, scope: !1815)
!1820 = !DILocation(line: 403, column: 46, scope: !1815)
!1821 = !DILocation(line: 403, column: 2, scope: !1815)
!1822 = !DILocation(line: 404, column: 1, scope: !1815)
!1823 = distinct !DISubprogram(name: "vrrp_unicast_chksum_handler", scope: !74, file: !74, line: 407, type: !327, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1824 = !DILocalVariable(name: "strvec", arg: 1, scope: !1823, file: !74, line: 407, type: !329)
!1825 = !DILocation(line: 407, column: 39, scope: !1823)
!1826 = !DILocalVariable(name: "vrrp", scope: !1823, file: !74, line: 409, type: !1428)
!1827 = !DILocation(line: 409, column: 10, scope: !1823)
!1828 = !DILocation(line: 409, column: 19, scope: !1823)
!1829 = !DILocation(line: 409, column: 30, scope: !1823)
!1830 = !DILocation(line: 409, column: 37, scope: !1823)
!1831 = !DILocation(line: 409, column: 43, scope: !1823)
!1832 = !DILocation(line: 409, column: 17, scope: !1823)
!1833 = !DILocation(line: 411, column: 8, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !74, line: 411, column: 6)
!1835 = !DILocation(line: 411, column: 17, scope: !1834)
!1836 = !DILocation(line: 411, column: 28, scope: !1834)
!1837 = !DILocation(line: 411, column: 6, scope: !1823)
!1838 = !DILocation(line: 412, column: 27, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !74, line: 412, column: 7)
!1840 = distinct !DILexicalBlock(scope: !1834, file: !74, line: 411, column: 34)
!1841 = !DILocation(line: 412, column: 15, scope: !1839)
!1842 = !DILocation(line: 412, column: 8, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1839, file: !74, discriminator: 1)
!1844 = !DILocation(line: 412, column: 8, scope: !1839)
!1845 = !DILocation(line: 412, column: 7, scope: !1840)
!1846 = !DILocation(line: 413, column: 4, scope: !1839)
!1847 = !DILocation(line: 413, column: 10, scope: !1839)
!1848 = !DILocation(line: 413, column: 32, scope: !1839)
!1849 = !DILocation(line: 415, column: 100, scope: !1839)
!1850 = !DILocation(line: 415, column: 106, scope: !1839)
!1851 = !DILocation(line: 415, column: 133, scope: !1839)
!1852 = !DILocation(line: 415, column: 121, scope: !1839)
!1853 = !DILocation(line: 415, column: 4, scope: !1843)
!1854 = !DILocation(line: 416, column: 2, scope: !1840)
!1855 = !DILocation(line: 418, column: 3, scope: !1834)
!1856 = !DILocation(line: 418, column: 9, scope: !1834)
!1857 = !DILocation(line: 418, column: 31, scope: !1834)
!1858 = !DILocation(line: 419, column: 1, scope: !1823)
!1859 = distinct !DISubprogram(name: "vrrp_native_ipv6_handler", scope: !74, file: !74, line: 422, type: !327, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1860 = !DILocalVariable(name: "strvec", arg: 1, scope: !1859, file: !74, line: 422, type: !329)
!1861 = !DILocation(line: 422, column: 60, scope: !1859)
!1862 = !DILocalVariable(name: "vrrp", scope: !1859, file: !74, line: 424, type: !1428)
!1863 = !DILocation(line: 424, column: 10, scope: !1859)
!1864 = !DILocation(line: 424, column: 19, scope: !1859)
!1865 = !DILocation(line: 424, column: 30, scope: !1859)
!1866 = !DILocation(line: 424, column: 37, scope: !1859)
!1867 = !DILocation(line: 424, column: 43, scope: !1859)
!1868 = !DILocation(line: 424, column: 17, scope: !1859)
!1869 = !DILocation(line: 426, column: 6, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1859, file: !74, line: 426, column: 6)
!1871 = !DILocation(line: 426, column: 12, scope: !1870)
!1872 = !DILocation(line: 426, column: 19, scope: !1870)
!1873 = !DILocation(line: 426, column: 6, scope: !1859)
!1874 = !DILocation(line: 427, column: 99, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !74, line: 426, column: 30)
!1876 = !DILocation(line: 427, column: 105, scope: !1875)
!1877 = !DILocation(line: 427, column: 3, scope: !1875)
!1878 = !DILocation(line: 428, column: 3, scope: !1875)
!1879 = !DILocation(line: 431, column: 2, scope: !1859)
!1880 = !DILocation(line: 431, column: 8, scope: !1859)
!1881 = !DILocation(line: 431, column: 15, scope: !1859)
!1882 = !DILocation(line: 432, column: 2, scope: !1859)
!1883 = !DILocation(line: 432, column: 8, scope: !1859)
!1884 = !DILocation(line: 432, column: 16, scope: !1859)
!1885 = !DILocation(line: 433, column: 1, scope: !1859)
!1886 = !DILocation(line: 433, column: 1, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1859, file: !74, discriminator: 1)
!1888 = distinct !DISubprogram(name: "vrrp_state_handler", scope: !74, file: !74, line: 435, type: !327, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1889 = !DILocalVariable(name: "strvec", arg: 1, scope: !1888, file: !74, line: 435, type: !329)
!1890 = !DILocation(line: 435, column: 30, scope: !1888)
!1891 = !DILocalVariable(name: "str", scope: !1888, file: !74, line: 437, type: !111)
!1892 = !DILocation(line: 437, column: 8, scope: !1888)
!1893 = !DILocation(line: 437, column: 26, scope: !1888)
!1894 = !DILocation(line: 437, column: 14, scope: !1888)
!1895 = !DILocalVariable(name: "vrrp", scope: !1888, file: !74, line: 438, type: !1428)
!1896 = !DILocation(line: 438, column: 10, scope: !1888)
!1897 = !DILocation(line: 438, column: 19, scope: !1888)
!1898 = !DILocation(line: 438, column: 30, scope: !1888)
!1899 = !DILocation(line: 438, column: 37, scope: !1888)
!1900 = !DILocation(line: 438, column: 43, scope: !1888)
!1901 = !DILocation(line: 438, column: 17, scope: !1888)
!1902 = !DILocation(line: 440, column: 14, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1888, file: !74, line: 440, column: 6)
!1904 = !DILocation(line: 440, column: 7, scope: !1903)
!1905 = !DILocation(line: 440, column: 6, scope: !1888)
!1906 = !DILocation(line: 441, column: 3, scope: !1903)
!1907 = !DILocation(line: 441, column: 9, scope: !1903)
!1908 = !DILocation(line: 441, column: 19, scope: !1903)
!1909 = !DILocation(line: 442, column: 19, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !74, line: 442, column: 11)
!1911 = !DILocation(line: 442, column: 12, scope: !1910)
!1912 = !DILocation(line: 442, column: 11, scope: !1903)
!1913 = !DILocation(line: 444, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !74, line: 444, column: 7)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !74, line: 443, column: 2)
!1916 = !DILocation(line: 444, column: 13, scope: !1914)
!1917 = !DILocation(line: 444, column: 23, scope: !1914)
!1918 = !DILocation(line: 444, column: 7, scope: !1915)
!1919 = !DILocation(line: 445, column: 103, scope: !1914)
!1920 = !DILocation(line: 445, column: 109, scope: !1914)
!1921 = !DILocation(line: 445, column: 4, scope: !1914)
!1922 = !DILocation(line: 447, column: 4, scope: !1914)
!1923 = !DILocation(line: 447, column: 10, scope: !1914)
!1924 = !DILocation(line: 447, column: 20, scope: !1914)
!1925 = !DILocation(line: 448, column: 2, scope: !1915)
!1926 = !DILocation(line: 450, column: 93, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1910, file: !74, line: 449, column: 7)
!1928 = !DILocation(line: 450, column: 99, scope: !1927)
!1929 = !DILocation(line: 450, column: 106, scope: !1927)
!1930 = !DILocation(line: 450, column: 3, scope: !1927)
!1931 = !DILocation(line: 451, column: 3, scope: !1927)
!1932 = !DILocation(line: 451, column: 9, scope: !1927)
!1933 = !DILocation(line: 451, column: 19, scope: !1927)
!1934 = !DILocation(line: 453, column: 1, scope: !1888)
!1935 = distinct !DISubprogram(name: "vrrp_int_handler", scope: !74, file: !74, line: 455, type: !327, isLocal: true, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1936 = !DILocalVariable(name: "strvec", arg: 1, scope: !1935, file: !74, line: 455, type: !329)
!1937 = !DILocation(line: 455, column: 28, scope: !1935)
!1938 = !DILocalVariable(name: "vrrp", scope: !1935, file: !74, line: 457, type: !1428)
!1939 = !DILocation(line: 457, column: 10, scope: !1935)
!1940 = !DILocation(line: 457, column: 19, scope: !1935)
!1941 = !DILocation(line: 457, column: 30, scope: !1935)
!1942 = !DILocation(line: 457, column: 37, scope: !1935)
!1943 = !DILocation(line: 457, column: 43, scope: !1935)
!1944 = !DILocation(line: 457, column: 17, scope: !1935)
!1945 = !DILocalVariable(name: "name", scope: !1935, file: !74, line: 458, type: !111)
!1946 = !DILocation(line: 458, column: 8, scope: !1935)
!1947 = !DILocation(line: 458, column: 27, scope: !1935)
!1948 = !DILocation(line: 458, column: 15, scope: !1935)
!1949 = !DILocation(line: 460, column: 13, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1935, file: !74, line: 460, column: 6)
!1951 = !DILocation(line: 460, column: 6, scope: !1950)
!1952 = !DILocation(line: 460, column: 19, scope: !1950)
!1953 = !DILocation(line: 460, column: 6, scope: !1935)
!1954 = !DILocation(line: 461, column: 88, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !74, line: 460, column: 31)
!1956 = !DILocation(line: 461, column: 3, scope: !1955)
!1957 = !DILocation(line: 462, column: 3, scope: !1955)
!1958 = !DILocation(line: 465, column: 31, scope: !1935)
!1959 = !DILocation(line: 465, column: 14, scope: !1935)
!1960 = !DILocation(line: 465, column: 2, scope: !1935)
!1961 = !DILocation(line: 465, column: 8, scope: !1935)
!1962 = !DILocation(line: 465, column: 12, scope: !1935)
!1963 = !DILocation(line: 466, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1935, file: !74, line: 466, column: 6)
!1965 = !DILocation(line: 466, column: 13, scope: !1964)
!1966 = !DILocation(line: 466, column: 6, scope: !1935)
!1967 = !DILocation(line: 467, column: 106, scope: !1964)
!1968 = !DILocation(line: 467, column: 112, scope: !1964)
!1969 = !DILocation(line: 467, column: 118, scope: !1964)
!1970 = !DILocation(line: 467, column: 3, scope: !1964)
!1971 = !DILocation(line: 468, column: 11, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1964, file: !74, line: 468, column: 11)
!1973 = !DILocation(line: 468, column: 17, scope: !1972)
!1974 = !DILocation(line: 468, column: 22, scope: !1972)
!1975 = !DILocation(line: 468, column: 30, scope: !1972)
!1976 = !DILocation(line: 468, column: 11, scope: !1964)
!1977 = !DILocation(line: 469, column: 110, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !74, line: 468, column: 49)
!1979 = !DILocation(line: 469, column: 116, scope: !1978)
!1980 = !DILocation(line: 469, column: 123, scope: !1978)
!1981 = !DILocation(line: 469, column: 129, scope: !1978)
!1982 = !DILocation(line: 469, column: 134, scope: !1978)
!1983 = !DILocation(line: 469, column: 3, scope: !1978)
!1984 = !DILocation(line: 470, column: 3, scope: !1978)
!1985 = !DILocation(line: 470, column: 9, scope: !1978)
!1986 = !DILocation(line: 470, column: 13, scope: !1978)
!1987 = !DILocation(line: 471, column: 2, scope: !1978)
!1988 = !DILocation(line: 472, column: 1, scope: !1935)
!1989 = distinct !DISubprogram(name: "vrrp_dont_track_handler", scope: !74, file: !74, line: 496, type: !327, isLocal: true, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!1990 = !DILocalVariable(name: "strvec", arg: 1, scope: !1989, file: !74, line: 496, type: !329)
!1991 = !DILocation(line: 496, column: 59, scope: !1989)
!1992 = !DILocalVariable(name: "vrrp", scope: !1989, file: !74, line: 498, type: !1428)
!1993 = !DILocation(line: 498, column: 10, scope: !1989)
!1994 = !DILocation(line: 498, column: 19, scope: !1989)
!1995 = !DILocation(line: 498, column: 30, scope: !1989)
!1996 = !DILocation(line: 498, column: 37, scope: !1989)
!1997 = !DILocation(line: 498, column: 43, scope: !1989)
!1998 = !DILocation(line: 498, column: 17, scope: !1989)
!1999 = !DILocation(line: 499, column: 2, scope: !1989)
!2000 = !DILocation(line: 499, column: 8, scope: !1989)
!2001 = !DILocation(line: 499, column: 27, scope: !1989)
!2002 = !DILocation(line: 500, column: 1, scope: !1989)
!2003 = distinct !DISubprogram(name: "vrrp_track_if_handler", scope: !74, file: !74, line: 481, type: !327, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2004 = !DILocalVariable(name: "strvec", arg: 1, scope: !2003, file: !74, line: 481, type: !329)
!2005 = !DILocation(line: 481, column: 33, scope: !2003)
!2006 = !DILocation(line: 483, column: 43, scope: !2003)
!2007 = !DILocation(line: 483, column: 52, scope: !2003)
!2008 = !DILocation(line: 483, column: 42, scope: !2003)
!2009 = !DILocation(line: 483, column: 2, scope: !2003)
!2010 = !DILocation(line: 484, column: 1, scope: !2003)
!2011 = distinct !DISubprogram(name: "vrrp_track_scr_handler", scope: !74, file: !74, line: 486, type: !327, isLocal: true, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2012 = !DILocalVariable(name: "strvec", arg: 1, scope: !2011, file: !74, line: 486, type: !329)
!2013 = !DILocation(line: 486, column: 34, scope: !2011)
!2014 = !DILocation(line: 488, column: 47, scope: !2011)
!2015 = !DILocation(line: 488, column: 56, scope: !2011)
!2016 = !DILocation(line: 488, column: 46, scope: !2011)
!2017 = !DILocation(line: 488, column: 2, scope: !2011)
!2018 = !DILocation(line: 489, column: 1, scope: !2011)
!2019 = distinct !DISubprogram(name: "vrrp_track_file_handler", scope: !74, file: !74, line: 491, type: !327, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2020 = !DILocalVariable(name: "strvec", arg: 1, scope: !2019, file: !74, line: 491, type: !329)
!2021 = !DILocation(line: 491, column: 35, scope: !2019)
!2022 = !DILocation(line: 493, column: 45, scope: !2019)
!2023 = !DILocation(line: 493, column: 54, scope: !2019)
!2024 = !DILocation(line: 493, column: 44, scope: !2019)
!2025 = !DILocation(line: 493, column: 2, scope: !2019)
!2026 = !DILocation(line: 494, column: 1, scope: !2019)
!2027 = distinct !DISubprogram(name: "vrrp_srcip_handler", scope: !74, file: !74, line: 509, type: !327, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2028 = !DILocalVariable(name: "strvec", arg: 1, scope: !2027, file: !74, line: 509, type: !329)
!2029 = !DILocation(line: 509, column: 30, scope: !2027)
!2030 = !DILocalVariable(name: "vrrp", scope: !2027, file: !74, line: 511, type: !1428)
!2031 = !DILocation(line: 511, column: 10, scope: !2027)
!2032 = !DILocation(line: 511, column: 19, scope: !2027)
!2033 = !DILocation(line: 511, column: 30, scope: !2027)
!2034 = !DILocation(line: 511, column: 37, scope: !2027)
!2035 = !DILocation(line: 511, column: 43, scope: !2027)
!2036 = !DILocation(line: 511, column: 17, scope: !2027)
!2037 = !DILocalVariable(name: "saddr", scope: !2027, file: !74, line: 512, type: !2038)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64, align: 64)
!2039 = !DILocation(line: 512, column: 27, scope: !2027)
!2040 = !DILocation(line: 512, column: 36, scope: !2027)
!2041 = !DILocation(line: 512, column: 42, scope: !2027)
!2042 = !DILocation(line: 514, column: 35, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2027, file: !74, line: 514, column: 6)
!2044 = !DILocation(line: 514, column: 23, scope: !2043)
!2045 = !DILocation(line: 514, column: 52, scope: !2043)
!2046 = !DILocation(line: 514, column: 6, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2043, file: !74, discriminator: 1)
!2048 = !DILocation(line: 514, column: 6, scope: !2043)
!2049 = !DILocation(line: 514, column: 6, scope: !2027)
!2050 = !DILocation(line: 517, column: 10, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2043, file: !74, line: 514, column: 60)
!2052 = !DILocation(line: 517, column: 16, scope: !2051)
!2053 = !DILocation(line: 517, column: 43, scope: !2051)
!2054 = !DILocation(line: 517, column: 31, scope: !2051)
!2055 = !DILocation(line: 515, column: 3, scope: !2051)
!2056 = !DILocation(line: 518, column: 3, scope: !2051)
!2057 = !DILocation(line: 521, column: 2, scope: !2027)
!2058 = !DILocation(line: 521, column: 8, scope: !2027)
!2059 = !DILocation(line: 521, column: 26, scope: !2027)
!2060 = !DILocation(line: 523, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2027, file: !74, line: 523, column: 6)
!2062 = !DILocation(line: 523, column: 12, scope: !2061)
!2063 = !DILocation(line: 523, column: 19, scope: !2061)
!2064 = !DILocation(line: 523, column: 6, scope: !2027)
!2065 = !DILocation(line: 524, column: 18, scope: !2061)
!2066 = !DILocation(line: 524, column: 25, scope: !2061)
!2067 = !DILocation(line: 524, column: 3, scope: !2061)
!2068 = !DILocation(line: 524, column: 9, scope: !2061)
!2069 = !DILocation(line: 524, column: 16, scope: !2061)
!2070 = !DILocation(line: 525, column: 11, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2061, file: !74, line: 525, column: 11)
!2072 = !DILocation(line: 525, column: 18, scope: !2071)
!2073 = !DILocation(line: 525, column: 31, scope: !2071)
!2074 = !DILocation(line: 525, column: 37, scope: !2071)
!2075 = !DILocation(line: 525, column: 28, scope: !2071)
!2076 = !DILocation(line: 525, column: 11, scope: !2061)
!2077 = !DILocation(line: 528, column: 10, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2071, file: !74, line: 525, column: 45)
!2079 = !DILocation(line: 528, column: 16, scope: !2078)
!2080 = !DILocation(line: 528, column: 43, scope: !2078)
!2081 = !DILocation(line: 528, column: 31, scope: !2078)
!2082 = !DILocation(line: 526, column: 3, scope: !2078)
!2083 = !DILocation(line: 529, column: 3, scope: !2078)
!2084 = !DILocation(line: 529, column: 10, scope: !2078)
!2085 = !DILocation(line: 529, column: 20, scope: !2078)
!2086 = !DILocation(line: 530, column: 3, scope: !2078)
!2087 = !DILocation(line: 530, column: 9, scope: !2078)
!2088 = !DILocation(line: 530, column: 27, scope: !2078)
!2089 = !DILocation(line: 531, column: 2, scope: !2078)
!2090 = !DILocation(line: 532, column: 1, scope: !2027)
!2091 = distinct !DISubprogram(name: "vrrp_track_srcip_handler", scope: !74, file: !74, line: 534, type: !327, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2092 = !DILocalVariable(name: "strvec", arg: 1, scope: !2091, file: !74, line: 534, type: !329)
!2093 = !DILocation(line: 534, column: 60, scope: !2091)
!2094 = !DILocalVariable(name: "vrrp", scope: !2091, file: !74, line: 536, type: !1428)
!2095 = !DILocation(line: 536, column: 10, scope: !2091)
!2096 = !DILocation(line: 536, column: 19, scope: !2091)
!2097 = !DILocation(line: 536, column: 30, scope: !2091)
!2098 = !DILocation(line: 536, column: 37, scope: !2091)
!2099 = !DILocation(line: 536, column: 43, scope: !2091)
!2100 = !DILocation(line: 536, column: 17, scope: !2091)
!2101 = !DILocation(line: 538, column: 2, scope: !2091)
!2102 = !DILocation(line: 538, column: 8, scope: !2091)
!2103 = !DILocation(line: 538, column: 20, scope: !2091)
!2104 = !DILocation(line: 539, column: 1, scope: !2091)
!2105 = distinct !DISubprogram(name: "vrrp_vrid_handler", scope: !74, file: !74, line: 541, type: !327, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2106 = !DILocalVariable(name: "strvec", arg: 1, scope: !2105, file: !74, line: 541, type: !329)
!2107 = !DILocation(line: 541, column: 29, scope: !2105)
!2108 = !DILocalVariable(name: "vrrp", scope: !2105, file: !74, line: 543, type: !1428)
!2109 = !DILocation(line: 543, column: 10, scope: !2105)
!2110 = !DILocation(line: 543, column: 19, scope: !2105)
!2111 = !DILocation(line: 543, column: 30, scope: !2105)
!2112 = !DILocation(line: 543, column: 37, scope: !2105)
!2113 = !DILocation(line: 543, column: 43, scope: !2105)
!2114 = !DILocation(line: 543, column: 17, scope: !2105)
!2115 = !DILocalVariable(name: "vrid", scope: !2105, file: !74, line: 544, type: !124)
!2116 = !DILocation(line: 544, column: 11, scope: !2105)
!2117 = !DILocation(line: 546, column: 28, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2105, file: !74, line: 546, column: 6)
!2119 = !DILocation(line: 546, column: 7, scope: !2118)
!2120 = !DILocation(line: 546, column: 6, scope: !2105)
!2121 = !DILocation(line: 547, column: 100, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !74, line: 546, column: 61)
!2123 = !DILocation(line: 547, column: 106, scope: !2122)
!2124 = !DILocation(line: 547, column: 133, scope: !2122)
!2125 = !DILocation(line: 547, column: 121, scope: !2122)
!2126 = !DILocation(line: 547, column: 3, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2122, file: !74, discriminator: 1)
!2128 = !DILocation(line: 548, column: 3, scope: !2122)
!2129 = !DILocation(line: 551, column: 24, scope: !2105)
!2130 = !DILocation(line: 551, column: 15, scope: !2105)
!2131 = !DILocation(line: 551, column: 2, scope: !2105)
!2132 = !DILocation(line: 551, column: 8, scope: !2105)
!2133 = !DILocation(line: 551, column: 13, scope: !2105)
!2134 = !DILocation(line: 552, column: 1, scope: !2105)
!2135 = !DILocation(line: 552, column: 1, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2105, file: !74, discriminator: 1)
!2137 = distinct !DISubprogram(name: "vrrp_version_handler", scope: !74, file: !74, line: 1215, type: !327, isLocal: true, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2138 = !DILocalVariable(name: "strvec", arg: 1, scope: !2137, file: !74, line: 1215, type: !329)
!2139 = !DILocation(line: 1215, column: 32, scope: !2137)
!2140 = !DILocalVariable(name: "vrrp", scope: !2137, file: !74, line: 1217, type: !1428)
!2141 = !DILocation(line: 1217, column: 10, scope: !2137)
!2142 = !DILocation(line: 1217, column: 19, scope: !2137)
!2143 = !DILocation(line: 1217, column: 30, scope: !2137)
!2144 = !DILocation(line: 1217, column: 37, scope: !2137)
!2145 = !DILocation(line: 1217, column: 43, scope: !2137)
!2146 = !DILocation(line: 1217, column: 17, scope: !2137)
!2147 = !DILocalVariable(name: "version", scope: !2137, file: !74, line: 1218, type: !127)
!2148 = !DILocation(line: 1218, column: 6, scope: !2137)
!2149 = !DILocation(line: 1220, column: 23, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2137, file: !74, line: 1220, column: 6)
!2151 = !DILocation(line: 1220, column: 7, scope: !2150)
!2152 = !DILocation(line: 1220, column: 6, scope: !2137)
!2153 = !DILocation(line: 1221, column: 84, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !74, line: 1220, column: 56)
!2155 = !DILocation(line: 1221, column: 90, scope: !2154)
!2156 = !DILocation(line: 1221, column: 3, scope: !2154)
!2157 = !DILocation(line: 1222, column: 3, scope: !2154)
!2158 = !DILocation(line: 1225, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2137, file: !74, line: 1225, column: 6)
!2160 = !DILocation(line: 1225, column: 13, scope: !2159)
!2161 = !DILocation(line: 1225, column: 21, scope: !2159)
!2162 = !DILocation(line: 1225, column: 24, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2159, file: !74, discriminator: 1)
!2164 = !DILocation(line: 1225, column: 30, scope: !2163)
!2165 = !DILocation(line: 1225, column: 41, scope: !2163)
!2166 = !DILocation(line: 1225, column: 38, scope: !2163)
!2167 = !DILocation(line: 1225, column: 50, scope: !2163)
!2168 = !DILocation(line: 1226, column: 7, scope: !2159)
!2169 = !DILocation(line: 1226, column: 15, scope: !2159)
!2170 = !DILocation(line: 1226, column: 20, scope: !2159)
!2171 = !DILocation(line: 1226, column: 23, scope: !2163)
!2172 = !DILocation(line: 1226, column: 29, scope: !2163)
!2173 = !DILocation(line: 1226, column: 36, scope: !2163)
!2174 = !DILocation(line: 1225, column: 6, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2137, file: !74, discriminator: 2)
!2176 = !DILocation(line: 1227, column: 128, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2159, file: !74, line: 1226, column: 62)
!2178 = !DILocation(line: 1227, column: 134, scope: !2177)
!2179 = !DILocation(line: 1227, column: 141, scope: !2177)
!2180 = !DILocation(line: 1227, column: 150, scope: !2177)
!2181 = !DILocation(line: 1227, column: 156, scope: !2177)
!2182 = !DILocation(line: 1227, column: 3, scope: !2177)
!2183 = !DILocation(line: 1228, column: 3, scope: !2177)
!2184 = !DILocation(line: 1231, column: 18, scope: !2137)
!2185 = !DILocation(line: 1231, column: 2, scope: !2137)
!2186 = !DILocation(line: 1231, column: 8, scope: !2137)
!2187 = !DILocation(line: 1231, column: 16, scope: !2137)
!2188 = !DILocation(line: 1232, column: 1, scope: !2137)
!2189 = !DILocation(line: 1232, column: 1, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2137, file: !74, discriminator: 1)
!2191 = distinct !DISubprogram(name: "vrrp_prio_handler", scope: !74, file: !74, line: 554, type: !327, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2192 = !DILocalVariable(name: "strvec", arg: 1, scope: !2191, file: !74, line: 554, type: !329)
!2193 = !DILocation(line: 554, column: 29, scope: !2191)
!2194 = !DILocalVariable(name: "vrrp", scope: !2191, file: !74, line: 556, type: !1428)
!2195 = !DILocation(line: 556, column: 10, scope: !2191)
!2196 = !DILocation(line: 556, column: 19, scope: !2191)
!2197 = !DILocation(line: 556, column: 30, scope: !2191)
!2198 = !DILocation(line: 556, column: 37, scope: !2191)
!2199 = !DILocation(line: 556, column: 43, scope: !2191)
!2200 = !DILocation(line: 556, column: 17, scope: !2191)
!2201 = !DILocalVariable(name: "base_priority", scope: !2191, file: !74, line: 557, type: !124)
!2202 = !DILocation(line: 557, column: 11, scope: !2191)
!2203 = !DILocation(line: 559, column: 28, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2191, file: !74, line: 559, column: 6)
!2205 = !DILocation(line: 559, column: 7, scope: !2204)
!2206 = !DILocation(line: 559, column: 6, scope: !2191)
!2207 = !DILocation(line: 560, column: 114, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 559, column: 82)
!2209 = !DILocation(line: 560, column: 120, scope: !2208)
!2210 = !DILocation(line: 560, column: 3, scope: !2208)
!2211 = !DILocation(line: 561, column: 3, scope: !2208)
!2212 = !DILocation(line: 561, column: 9, scope: !2208)
!2213 = !DILocation(line: 561, column: 23, scope: !2208)
!2214 = !DILocation(line: 562, column: 2, scope: !2208)
!2215 = !DILocation(line: 564, column: 34, scope: !2204)
!2216 = !DILocation(line: 564, column: 25, scope: !2204)
!2217 = !DILocation(line: 564, column: 3, scope: !2204)
!2218 = !DILocation(line: 564, column: 9, scope: !2204)
!2219 = !DILocation(line: 564, column: 23, scope: !2204)
!2220 = !DILocation(line: 565, column: 1, scope: !2191)
!2221 = distinct !DISubprogram(name: "vrrp_adv_handler", scope: !74, file: !74, line: 567, type: !327, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2222 = !DILocalVariable(name: "strvec", arg: 1, scope: !2221, file: !74, line: 567, type: !329)
!2223 = !DILocation(line: 567, column: 28, scope: !2221)
!2224 = !DILocalVariable(name: "vrrp", scope: !2221, file: !74, line: 569, type: !1428)
!2225 = !DILocation(line: 569, column: 10, scope: !2221)
!2226 = !DILocation(line: 569, column: 19, scope: !2221)
!2227 = !DILocation(line: 569, column: 30, scope: !2221)
!2228 = !DILocation(line: 569, column: 37, scope: !2221)
!2229 = !DILocation(line: 569, column: 43, scope: !2221)
!2230 = !DILocation(line: 569, column: 17, scope: !2221)
!2231 = !DILocalVariable(name: "adver_int", scope: !2221, file: !74, line: 570, type: !984)
!2232 = !DILocation(line: 570, column: 9, scope: !2221)
!2233 = !DILocalVariable(name: "res", scope: !2221, file: !74, line: 571, type: !125)
!2234 = !DILocation(line: 571, column: 6, scope: !2221)
!2235 = !DILocation(line: 573, column: 27, scope: !2221)
!2236 = !DILocation(line: 573, column: 8, scope: !2221)
!2237 = !DILocation(line: 573, column: 6, scope: !2221)
!2238 = !DILocation(line: 576, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2221, file: !74, line: 576, column: 6)
!2240 = !DILocation(line: 576, column: 11, scope: !2239)
!2241 = !DILocation(line: 576, column: 14, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2239, file: !74, discriminator: 1)
!2243 = !DILocation(line: 576, column: 24, scope: !2242)
!2244 = !DILocation(line: 576, column: 6, scope: !2242)
!2245 = !DILocation(line: 577, column: 108, scope: !2239)
!2246 = !DILocation(line: 577, column: 114, scope: !2239)
!2247 = !DILocation(line: 577, column: 141, scope: !2239)
!2248 = !DILocation(line: 577, column: 129, scope: !2239)
!2249 = !DILocation(line: 577, column: 3, scope: !2242)
!2250 = !DILocation(line: 577, column: 3, scope: !2239)
!2251 = !DILocation(line: 579, column: 32, scope: !2239)
!2252 = !DILocation(line: 579, column: 42, scope: !2239)
!2253 = !DILocation(line: 579, column: 21, scope: !2239)
!2254 = !DILocation(line: 579, column: 3, scope: !2239)
!2255 = !DILocation(line: 579, column: 9, scope: !2239)
!2256 = !DILocation(line: 579, column: 19, scope: !2239)
!2257 = !DILocation(line: 580, column: 1, scope: !2221)
!2258 = distinct !DISubprogram(name: "vrrp_vip_handler", scope: !74, file: !74, line: 929, type: !327, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2259 = !DILocalVariable(name: "strvec", arg: 1, scope: !2258, file: !74, line: 929, type: !329)
!2260 = !DILocation(line: 929, column: 28, scope: !2258)
!2261 = !DILocation(line: 931, column: 38, scope: !2258)
!2262 = !DILocation(line: 931, column: 47, scope: !2258)
!2263 = !DILocation(line: 931, column: 37, scope: !2258)
!2264 = !DILocation(line: 931, column: 2, scope: !2258)
!2265 = !DILocation(line: 932, column: 1, scope: !2258)
!2266 = distinct !DISubprogram(name: "vrrp_evip_handler", scope: !74, file: !74, line: 934, type: !327, isLocal: true, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2267 = !DILocalVariable(name: "strvec", arg: 1, scope: !2266, file: !74, line: 934, type: !329)
!2268 = !DILocation(line: 934, column: 29, scope: !2266)
!2269 = !DILocation(line: 936, column: 39, scope: !2266)
!2270 = !DILocation(line: 936, column: 48, scope: !2266)
!2271 = !DILocation(line: 936, column: 38, scope: !2266)
!2272 = !DILocation(line: 936, column: 2, scope: !2266)
!2273 = !DILocation(line: 937, column: 1, scope: !2266)
!2274 = distinct !DISubprogram(name: "vrrp_promote_secondaries_handler", scope: !74, file: !74, line: 939, type: !327, isLocal: true, isDefinition: true, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2275 = !DILocalVariable(name: "strvec", arg: 1, scope: !2274, file: !74, line: 939, type: !329)
!2276 = !DILocation(line: 939, column: 68, scope: !2274)
!2277 = !DILocalVariable(name: "vrrp", scope: !2274, file: !74, line: 941, type: !1428)
!2278 = !DILocation(line: 941, column: 10, scope: !2274)
!2279 = !DILocation(line: 941, column: 19, scope: !2274)
!2280 = !DILocation(line: 941, column: 30, scope: !2274)
!2281 = !DILocation(line: 941, column: 37, scope: !2274)
!2282 = !DILocation(line: 941, column: 43, scope: !2274)
!2283 = !DILocation(line: 941, column: 17, scope: !2274)
!2284 = !DILocation(line: 943, column: 2, scope: !2274)
!2285 = !DILocation(line: 943, column: 8, scope: !2274)
!2286 = !DILocation(line: 943, column: 28, scope: !2274)
!2287 = !DILocation(line: 944, column: 1, scope: !2274)
!2288 = distinct !DISubprogram(name: "vrrp_linkbeat_handler", scope: !74, file: !74, line: 474, type: !327, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2289 = !DILocalVariable(name: "strvec", arg: 1, scope: !2288, file: !74, line: 474, type: !329)
!2290 = !DILocation(line: 474, column: 57, scope: !2288)
!2291 = !DILocalVariable(name: "vrrp", scope: !2288, file: !74, line: 476, type: !1428)
!2292 = !DILocation(line: 476, column: 10, scope: !2288)
!2293 = !DILocation(line: 476, column: 19, scope: !2288)
!2294 = !DILocation(line: 476, column: 30, scope: !2288)
!2295 = !DILocation(line: 476, column: 37, scope: !2288)
!2296 = !DILocation(line: 476, column: 43, scope: !2288)
!2297 = !DILocation(line: 476, column: 17, scope: !2288)
!2298 = !DILocation(line: 478, column: 2, scope: !2288)
!2299 = !DILocation(line: 478, column: 8, scope: !2288)
!2300 = !DILocation(line: 478, column: 29, scope: !2288)
!2301 = !DILocation(line: 479, column: 1, scope: !2288)
!2302 = distinct !DISubprogram(name: "vrrp_vroutes_handler", scope: !74, file: !74, line: 947, type: !327, isLocal: true, isDefinition: true, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2303 = !DILocalVariable(name: "strvec", arg: 1, scope: !2302, file: !74, line: 947, type: !329)
!2304 = !DILocation(line: 947, column: 32, scope: !2302)
!2305 = !DILocation(line: 949, column: 41, scope: !2302)
!2306 = !DILocation(line: 949, column: 50, scope: !2302)
!2307 = !DILocation(line: 949, column: 40, scope: !2302)
!2308 = !DILocation(line: 949, column: 2, scope: !2302)
!2309 = !DILocation(line: 950, column: 1, scope: !2302)
!2310 = distinct !DISubprogram(name: "vrrp_vrules_handler", scope: !74, file: !74, line: 952, type: !327, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2311 = !DILocalVariable(name: "strvec", arg: 1, scope: !2310, file: !74, line: 952, type: !329)
!2312 = !DILocation(line: 952, column: 31, scope: !2310)
!2313 = !DILocation(line: 954, column: 40, scope: !2310)
!2314 = !DILocation(line: 954, column: 49, scope: !2310)
!2315 = !DILocation(line: 954, column: 39, scope: !2310)
!2316 = !DILocation(line: 954, column: 2, scope: !2310)
!2317 = !DILocation(line: 955, column: 1, scope: !2310)
!2318 = distinct !DISubprogram(name: "vrrp_accept_handler", scope: !74, file: !74, line: 1235, type: !327, isLocal: true, isDefinition: true, scopeLine: 1236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2319 = !DILocalVariable(name: "strvec", arg: 1, scope: !2318, file: !74, line: 1235, type: !329)
!2320 = !DILocation(line: 1235, column: 55, scope: !2318)
!2321 = !DILocalVariable(name: "vrrp", scope: !2318, file: !74, line: 1237, type: !1428)
!2322 = !DILocation(line: 1237, column: 10, scope: !2318)
!2323 = !DILocation(line: 1237, column: 19, scope: !2318)
!2324 = !DILocation(line: 1237, column: 30, scope: !2318)
!2325 = !DILocation(line: 1237, column: 37, scope: !2318)
!2326 = !DILocation(line: 1237, column: 43, scope: !2318)
!2327 = !DILocation(line: 1237, column: 17, scope: !2318)
!2328 = !DILocation(line: 1239, column: 2, scope: !2318)
!2329 = !DILocation(line: 1239, column: 8, scope: !2318)
!2330 = !DILocation(line: 1239, column: 15, scope: !2318)
!2331 = !DILocation(line: 1240, column: 1, scope: !2318)
!2332 = distinct !DISubprogram(name: "vrrp_no_accept_handler", scope: !74, file: !74, line: 1243, type: !327, isLocal: true, isDefinition: true, scopeLine: 1244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2333 = !DILocalVariable(name: "strvec", arg: 1, scope: !2332, file: !74, line: 1243, type: !329)
!2334 = !DILocation(line: 1243, column: 58, scope: !2332)
!2335 = !DILocalVariable(name: "vrrp", scope: !2332, file: !74, line: 1245, type: !1428)
!2336 = !DILocation(line: 1245, column: 10, scope: !2332)
!2337 = !DILocation(line: 1245, column: 19, scope: !2332)
!2338 = !DILocation(line: 1245, column: 30, scope: !2332)
!2339 = !DILocation(line: 1245, column: 37, scope: !2332)
!2340 = !DILocation(line: 1245, column: 43, scope: !2332)
!2341 = !DILocation(line: 1245, column: 17, scope: !2332)
!2342 = !DILocation(line: 1247, column: 2, scope: !2332)
!2343 = !DILocation(line: 1247, column: 8, scope: !2332)
!2344 = !DILocation(line: 1247, column: 15, scope: !2332)
!2345 = !DILocation(line: 1248, column: 1, scope: !2332)
!2346 = distinct !DISubprogram(name: "vrrp_skip_check_adv_addr_handler", scope: !74, file: !74, line: 593, type: !327, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2347 = !DILocalVariable(name: "strvec", arg: 1, scope: !2346, file: !74, line: 593, type: !329)
!2348 = !DILocation(line: 593, column: 44, scope: !2346)
!2349 = !DILocalVariable(name: "vrrp", scope: !2346, file: !74, line: 595, type: !1428)
!2350 = !DILocation(line: 595, column: 10, scope: !2346)
!2351 = !DILocation(line: 595, column: 19, scope: !2346)
!2352 = !DILocation(line: 595, column: 30, scope: !2346)
!2353 = !DILocation(line: 595, column: 37, scope: !2346)
!2354 = !DILocation(line: 595, column: 43, scope: !2346)
!2355 = !DILocation(line: 595, column: 17, scope: !2346)
!2356 = !DILocalVariable(name: "res", scope: !2346, file: !74, line: 596, type: !127)
!2357 = !DILocation(line: 596, column: 6, scope: !2346)
!2358 = !DILocation(line: 598, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2346, file: !74, line: 598, column: 6)
!2360 = !DILocation(line: 598, column: 17, scope: !2359)
!2361 = !DILocation(line: 598, column: 28, scope: !2359)
!2362 = !DILocation(line: 598, column: 6, scope: !2346)
!2363 = !DILocation(line: 599, column: 38, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !74, line: 598, column: 34)
!2365 = !DILocation(line: 599, column: 26, scope: !2364)
!2366 = !DILocation(line: 599, column: 9, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2364, file: !74, discriminator: 1)
!2368 = !DILocation(line: 599, column: 7, scope: !2364)
!2369 = !DILocation(line: 600, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2364, file: !74, line: 600, column: 7)
!2371 = !DILocation(line: 600, column: 11, scope: !2370)
!2372 = !DILocation(line: 600, column: 7, scope: !2364)
!2373 = !DILocation(line: 601, column: 37, scope: !2370)
!2374 = !DILocation(line: 601, column: 32, scope: !2370)
!2375 = !DILocation(line: 601, column: 4, scope: !2370)
!2376 = !DILocation(line: 601, column: 10, scope: !2370)
!2377 = !DILocation(line: 601, column: 30, scope: !2370)
!2378 = !DILocation(line: 603, column: 95, scope: !2370)
!2379 = !DILocation(line: 603, column: 101, scope: !2370)
!2380 = !DILocation(line: 603, column: 128, scope: !2370)
!2381 = !DILocation(line: 603, column: 116, scope: !2370)
!2382 = !DILocation(line: 603, column: 4, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2370, file: !74, discriminator: 1)
!2384 = !DILocation(line: 604, column: 2, scope: !2364)
!2385 = !DILocation(line: 606, column: 3, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2359, file: !74, line: 604, column: 9)
!2387 = !DILocation(line: 606, column: 9, scope: !2386)
!2388 = !DILocation(line: 606, column: 29, scope: !2386)
!2389 = !DILocation(line: 608, column: 1, scope: !2346)
!2390 = distinct !DISubprogram(name: "vrrp_strict_mode_handler", scope: !74, file: !74, line: 610, type: !327, isLocal: true, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2391 = !DILocalVariable(name: "strvec", arg: 1, scope: !2390, file: !74, line: 610, type: !329)
!2392 = !DILocation(line: 610, column: 36, scope: !2390)
!2393 = !DILocalVariable(name: "res", scope: !2390, file: !74, line: 612, type: !127)
!2394 = !DILocation(line: 612, column: 6, scope: !2390)
!2395 = !DILocalVariable(name: "vrrp", scope: !2390, file: !74, line: 614, type: !1428)
!2396 = !DILocation(line: 614, column: 10, scope: !2390)
!2397 = !DILocation(line: 614, column: 19, scope: !2390)
!2398 = !DILocation(line: 614, column: 30, scope: !2390)
!2399 = !DILocation(line: 614, column: 37, scope: !2390)
!2400 = !DILocation(line: 614, column: 43, scope: !2390)
!2401 = !DILocation(line: 614, column: 17, scope: !2390)
!2402 = !DILocation(line: 615, column: 8, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2390, file: !74, line: 615, column: 6)
!2404 = !DILocation(line: 615, column: 17, scope: !2403)
!2405 = !DILocation(line: 615, column: 28, scope: !2403)
!2406 = !DILocation(line: 615, column: 6, scope: !2390)
!2407 = !DILocation(line: 616, column: 38, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !74, line: 615, column: 34)
!2409 = !DILocation(line: 616, column: 26, scope: !2408)
!2410 = !DILocation(line: 616, column: 9, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2408, file: !74, discriminator: 1)
!2412 = !DILocation(line: 616, column: 7, scope: !2408)
!2413 = !DILocation(line: 617, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2408, file: !74, line: 617, column: 7)
!2415 = !DILocation(line: 617, column: 11, scope: !2414)
!2416 = !DILocation(line: 617, column: 7, scope: !2408)
!2417 = !DILocation(line: 618, column: 29, scope: !2414)
!2418 = !DILocation(line: 618, column: 24, scope: !2414)
!2419 = !DILocation(line: 618, column: 4, scope: !2414)
!2420 = !DILocation(line: 618, column: 10, scope: !2414)
!2421 = !DILocation(line: 618, column: 22, scope: !2414)
!2422 = !DILocation(line: 620, column: 87, scope: !2414)
!2423 = !DILocation(line: 620, column: 93, scope: !2414)
!2424 = !DILocation(line: 620, column: 120, scope: !2414)
!2425 = !DILocation(line: 620, column: 108, scope: !2414)
!2426 = !DILocation(line: 620, column: 4, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2414, file: !74, discriminator: 1)
!2428 = !DILocation(line: 621, column: 2, scope: !2408)
!2429 = !DILocation(line: 623, column: 3, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2403, file: !74, line: 621, column: 9)
!2431 = !DILocation(line: 623, column: 9, scope: !2430)
!2432 = !DILocation(line: 623, column: 21, scope: !2430)
!2433 = !DILocation(line: 625, column: 1, scope: !2390)
!2434 = distinct !DISubprogram(name: "vrrp_preempt_handler", scope: !74, file: !74, line: 633, type: !327, isLocal: true, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2435 = !DILocalVariable(name: "strvec", arg: 1, scope: !2434, file: !74, line: 633, type: !329)
!2436 = !DILocation(line: 633, column: 56, scope: !2434)
!2437 = !DILocalVariable(name: "vrrp", scope: !2434, file: !74, line: 635, type: !1428)
!2438 = !DILocation(line: 635, column: 10, scope: !2434)
!2439 = !DILocation(line: 635, column: 19, scope: !2434)
!2440 = !DILocation(line: 635, column: 30, scope: !2434)
!2441 = !DILocation(line: 635, column: 37, scope: !2434)
!2442 = !DILocation(line: 635, column: 43, scope: !2434)
!2443 = !DILocation(line: 635, column: 17, scope: !2434)
!2444 = !DILocation(line: 636, column: 2, scope: !2434)
!2445 = !DILocation(line: 636, column: 8, scope: !2434)
!2446 = !DILocation(line: 636, column: 18, scope: !2434)
!2447 = !DILocation(line: 637, column: 1, scope: !2434)
!2448 = distinct !DISubprogram(name: "vrrp_nopreempt_handler", scope: !74, file: !74, line: 627, type: !327, isLocal: true, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2449 = !DILocalVariable(name: "strvec", arg: 1, scope: !2448, file: !74, line: 627, type: !329)
!2450 = !DILocation(line: 627, column: 58, scope: !2448)
!2451 = !DILocalVariable(name: "vrrp", scope: !2448, file: !74, line: 629, type: !1428)
!2452 = !DILocation(line: 629, column: 10, scope: !2448)
!2453 = !DILocation(line: 629, column: 19, scope: !2448)
!2454 = !DILocation(line: 629, column: 30, scope: !2448)
!2455 = !DILocation(line: 629, column: 37, scope: !2448)
!2456 = !DILocation(line: 629, column: 43, scope: !2448)
!2457 = !DILocation(line: 629, column: 17, scope: !2448)
!2458 = !DILocation(line: 630, column: 2, scope: !2448)
!2459 = !DILocation(line: 630, column: 8, scope: !2448)
!2460 = !DILocation(line: 630, column: 18, scope: !2448)
!2461 = !DILocation(line: 631, column: 1, scope: !2448)
!2462 = distinct !DISubprogram(name: "vrrp_preempt_delay_handler", scope: !74, file: !74, line: 639, type: !327, isLocal: true, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2463 = !DILocalVariable(name: "strvec", arg: 1, scope: !2462, file: !74, line: 639, type: !329)
!2464 = !DILocation(line: 639, column: 38, scope: !2462)
!2465 = !DILocalVariable(name: "vrrp", scope: !2462, file: !74, line: 641, type: !1428)
!2466 = !DILocation(line: 641, column: 10, scope: !2462)
!2467 = !DILocation(line: 641, column: 19, scope: !2462)
!2468 = !DILocation(line: 641, column: 30, scope: !2462)
!2469 = !DILocation(line: 641, column: 37, scope: !2462)
!2470 = !DILocation(line: 641, column: 43, scope: !2462)
!2471 = !DILocation(line: 641, column: 17, scope: !2462)
!2472 = !DILocalVariable(name: "preempt_delay", scope: !2462, file: !74, line: 642, type: !984)
!2473 = !DILocation(line: 642, column: 9, scope: !2462)
!2474 = !DILocation(line: 644, column: 26, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2462, file: !74, line: 644, column: 6)
!2476 = !DILocation(line: 644, column: 7, scope: !2475)
!2477 = !DILocation(line: 644, column: 6, scope: !2462)
!2478 = !DILocation(line: 645, column: 99, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !74, line: 644, column: 68)
!2480 = !DILocation(line: 645, column: 105, scope: !2479)
!2481 = !DILocation(line: 645, column: 3, scope: !2479)
!2482 = !DILocation(line: 646, column: 3, scope: !2479)
!2483 = !DILocation(line: 646, column: 9, scope: !2479)
!2484 = !DILocation(line: 646, column: 23, scope: !2479)
!2485 = !DILocation(line: 647, column: 2, scope: !2479)
!2486 = !DILocation(line: 649, column: 41, scope: !2475)
!2487 = !DILocation(line: 649, column: 55, scope: !2475)
!2488 = !DILocation(line: 649, column: 25, scope: !2475)
!2489 = !DILocation(line: 649, column: 3, scope: !2475)
!2490 = !DILocation(line: 649, column: 9, scope: !2475)
!2491 = !DILocation(line: 649, column: 23, scope: !2475)
!2492 = !DILocation(line: 650, column: 1, scope: !2462)
!2493 = distinct !DISubprogram(name: "vrrp_debug_handler", scope: !74, file: !74, line: 582, type: !327, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2494 = !DILocalVariable(name: "strvec", arg: 1, scope: !2493, file: !74, line: 582, type: !329)
!2495 = !DILocation(line: 582, column: 30, scope: !2493)
!2496 = !DILocalVariable(name: "vrrp", scope: !2493, file: !74, line: 584, type: !1428)
!2497 = !DILocation(line: 584, column: 10, scope: !2493)
!2498 = !DILocation(line: 584, column: 19, scope: !2493)
!2499 = !DILocation(line: 584, column: 30, scope: !2493)
!2500 = !DILocation(line: 584, column: 37, scope: !2493)
!2501 = !DILocation(line: 584, column: 43, scope: !2493)
!2502 = !DILocation(line: 584, column: 17, scope: !2493)
!2503 = !DILocalVariable(name: "debug", scope: !2493, file: !74, line: 585, type: !124)
!2504 = !DILocation(line: 585, column: 11, scope: !2493)
!2505 = !DILocation(line: 587, column: 28, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2493, file: !74, line: 587, column: 6)
!2507 = !DILocation(line: 587, column: 7, scope: !2506)
!2508 = !DILocation(line: 587, column: 6, scope: !2493)
!2509 = !DILocation(line: 588, column: 101, scope: !2506)
!2510 = !DILocation(line: 588, column: 107, scope: !2506)
!2511 = !DILocation(line: 588, column: 134, scope: !2506)
!2512 = !DILocation(line: 588, column: 122, scope: !2506)
!2513 = !DILocation(line: 588, column: 3, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2506, file: !74, discriminator: 1)
!2515 = !DILocation(line: 588, column: 3, scope: !2506)
!2516 = !DILocation(line: 590, column: 17, scope: !2506)
!2517 = !DILocation(line: 590, column: 3, scope: !2506)
!2518 = !DILocation(line: 590, column: 9, scope: !2506)
!2519 = !DILocation(line: 590, column: 15, scope: !2506)
!2520 = !DILocation(line: 591, column: 1, scope: !2493)
!2521 = distinct !DISubprogram(name: "vrrp_notify_backup_handler", scope: !74, file: !74, line: 652, type: !327, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2522 = !DILocalVariable(name: "strvec", arg: 1, scope: !2521, file: !74, line: 652, type: !329)
!2523 = !DILocation(line: 652, column: 38, scope: !2521)
!2524 = !DILocalVariable(name: "vrrp", scope: !2521, file: !74, line: 654, type: !1428)
!2525 = !DILocation(line: 654, column: 10, scope: !2521)
!2526 = !DILocation(line: 654, column: 19, scope: !2521)
!2527 = !DILocation(line: 654, column: 30, scope: !2521)
!2528 = !DILocation(line: 654, column: 37, scope: !2521)
!2529 = !DILocation(line: 654, column: 43, scope: !2521)
!2530 = !DILocation(line: 654, column: 17, scope: !2521)
!2531 = !DILocation(line: 655, column: 6, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2521, file: !74, line: 655, column: 6)
!2533 = !DILocation(line: 655, column: 12, scope: !2532)
!2534 = !DILocation(line: 655, column: 6, scope: !2521)
!2535 = !DILocation(line: 656, column: 106, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !74, line: 655, column: 27)
!2537 = !DILocation(line: 656, column: 112, scope: !2536)
!2538 = !DILocation(line: 656, column: 139, scope: !2536)
!2539 = !DILocation(line: 656, column: 127, scope: !2536)
!2540 = !DILocation(line: 656, column: 3, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2536, file: !74, discriminator: 1)
!2542 = !DILocation(line: 657, column: 3, scope: !2536)
!2543 = !DILocation(line: 659, column: 47, scope: !2521)
!2544 = !DILocation(line: 659, column: 24, scope: !2521)
!2545 = !DILocation(line: 659, column: 2, scope: !2521)
!2546 = !DILocation(line: 659, column: 8, scope: !2521)
!2547 = !DILocation(line: 659, column: 22, scope: !2521)
!2548 = !DILocation(line: 660, column: 2, scope: !2521)
!2549 = !DILocation(line: 660, column: 8, scope: !2521)
!2550 = !DILocation(line: 660, column: 20, scope: !2521)
!2551 = !DILocation(line: 661, column: 1, scope: !2521)
!2552 = !DILocation(line: 661, column: 1, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2521, file: !74, discriminator: 1)
!2554 = distinct !DISubprogram(name: "vrrp_notify_master_handler", scope: !74, file: !74, line: 663, type: !327, isLocal: true, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2555 = !DILocalVariable(name: "strvec", arg: 1, scope: !2554, file: !74, line: 663, type: !329)
!2556 = !DILocation(line: 663, column: 38, scope: !2554)
!2557 = !DILocalVariable(name: "vrrp", scope: !2554, file: !74, line: 665, type: !1428)
!2558 = !DILocation(line: 665, column: 10, scope: !2554)
!2559 = !DILocation(line: 665, column: 19, scope: !2554)
!2560 = !DILocation(line: 665, column: 30, scope: !2554)
!2561 = !DILocation(line: 665, column: 37, scope: !2554)
!2562 = !DILocation(line: 665, column: 43, scope: !2554)
!2563 = !DILocation(line: 665, column: 17, scope: !2554)
!2564 = !DILocation(line: 666, column: 6, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2554, file: !74, line: 666, column: 6)
!2566 = !DILocation(line: 666, column: 12, scope: !2565)
!2567 = !DILocation(line: 666, column: 6, scope: !2554)
!2568 = !DILocation(line: 667, column: 106, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !74, line: 666, column: 27)
!2570 = !DILocation(line: 667, column: 112, scope: !2569)
!2571 = !DILocation(line: 667, column: 139, scope: !2569)
!2572 = !DILocation(line: 667, column: 127, scope: !2569)
!2573 = !DILocation(line: 667, column: 3, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2569, file: !74, discriminator: 1)
!2575 = !DILocation(line: 668, column: 3, scope: !2569)
!2576 = !DILocation(line: 670, column: 47, scope: !2554)
!2577 = !DILocation(line: 670, column: 24, scope: !2554)
!2578 = !DILocation(line: 670, column: 2, scope: !2554)
!2579 = !DILocation(line: 670, column: 8, scope: !2554)
!2580 = !DILocation(line: 670, column: 22, scope: !2554)
!2581 = !DILocation(line: 671, column: 2, scope: !2554)
!2582 = !DILocation(line: 671, column: 8, scope: !2554)
!2583 = !DILocation(line: 671, column: 20, scope: !2554)
!2584 = !DILocation(line: 672, column: 1, scope: !2554)
!2585 = !DILocation(line: 672, column: 1, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2554, file: !74, discriminator: 1)
!2587 = distinct !DISubprogram(name: "vrrp_notify_fault_handler", scope: !74, file: !74, line: 674, type: !327, isLocal: true, isDefinition: true, scopeLine: 675, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2588 = !DILocalVariable(name: "strvec", arg: 1, scope: !2587, file: !74, line: 674, type: !329)
!2589 = !DILocation(line: 674, column: 37, scope: !2587)
!2590 = !DILocalVariable(name: "vrrp", scope: !2587, file: !74, line: 676, type: !1428)
!2591 = !DILocation(line: 676, column: 10, scope: !2587)
!2592 = !DILocation(line: 676, column: 19, scope: !2587)
!2593 = !DILocation(line: 676, column: 30, scope: !2587)
!2594 = !DILocation(line: 676, column: 37, scope: !2587)
!2595 = !DILocation(line: 676, column: 43, scope: !2587)
!2596 = !DILocation(line: 676, column: 17, scope: !2587)
!2597 = !DILocation(line: 677, column: 6, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2587, file: !74, line: 677, column: 6)
!2599 = !DILocation(line: 677, column: 12, scope: !2598)
!2600 = !DILocation(line: 677, column: 6, scope: !2587)
!2601 = !DILocation(line: 678, column: 105, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !74, line: 677, column: 26)
!2603 = !DILocation(line: 678, column: 111, scope: !2602)
!2604 = !DILocation(line: 678, column: 138, scope: !2602)
!2605 = !DILocation(line: 678, column: 126, scope: !2602)
!2606 = !DILocation(line: 678, column: 3, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2602, file: !74, discriminator: 1)
!2608 = !DILocation(line: 679, column: 3, scope: !2602)
!2609 = !DILocation(line: 681, column: 46, scope: !2587)
!2610 = !DILocation(line: 681, column: 23, scope: !2587)
!2611 = !DILocation(line: 681, column: 2, scope: !2587)
!2612 = !DILocation(line: 681, column: 8, scope: !2587)
!2613 = !DILocation(line: 681, column: 21, scope: !2587)
!2614 = !DILocation(line: 682, column: 2, scope: !2587)
!2615 = !DILocation(line: 682, column: 8, scope: !2587)
!2616 = !DILocation(line: 682, column: 20, scope: !2587)
!2617 = !DILocation(line: 683, column: 1, scope: !2587)
!2618 = !DILocation(line: 683, column: 1, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2587, file: !74, discriminator: 1)
!2620 = distinct !DISubprogram(name: "vrrp_notify_stop_handler", scope: !74, file: !74, line: 685, type: !327, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2621 = !DILocalVariable(name: "strvec", arg: 1, scope: !2620, file: !74, line: 685, type: !329)
!2622 = !DILocation(line: 685, column: 36, scope: !2620)
!2623 = !DILocalVariable(name: "vrrp", scope: !2620, file: !74, line: 687, type: !1428)
!2624 = !DILocation(line: 687, column: 10, scope: !2620)
!2625 = !DILocation(line: 687, column: 19, scope: !2620)
!2626 = !DILocation(line: 687, column: 30, scope: !2620)
!2627 = !DILocation(line: 687, column: 37, scope: !2620)
!2628 = !DILocation(line: 687, column: 43, scope: !2620)
!2629 = !DILocation(line: 687, column: 17, scope: !2620)
!2630 = !DILocation(line: 688, column: 6, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2620, file: !74, line: 688, column: 6)
!2632 = !DILocation(line: 688, column: 12, scope: !2631)
!2633 = !DILocation(line: 688, column: 6, scope: !2620)
!2634 = !DILocation(line: 689, column: 104, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !74, line: 688, column: 25)
!2636 = !DILocation(line: 689, column: 110, scope: !2635)
!2637 = !DILocation(line: 689, column: 137, scope: !2635)
!2638 = !DILocation(line: 689, column: 125, scope: !2635)
!2639 = !DILocation(line: 689, column: 3, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2635, file: !74, discriminator: 1)
!2641 = !DILocation(line: 690, column: 3, scope: !2635)
!2642 = !DILocation(line: 692, column: 45, scope: !2620)
!2643 = !DILocation(line: 692, column: 22, scope: !2620)
!2644 = !DILocation(line: 692, column: 2, scope: !2620)
!2645 = !DILocation(line: 692, column: 8, scope: !2620)
!2646 = !DILocation(line: 692, column: 20, scope: !2620)
!2647 = !DILocation(line: 693, column: 2, scope: !2620)
!2648 = !DILocation(line: 693, column: 8, scope: !2620)
!2649 = !DILocation(line: 693, column: 20, scope: !2620)
!2650 = !DILocation(line: 694, column: 1, scope: !2620)
!2651 = !DILocation(line: 694, column: 1, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2620, file: !74, discriminator: 1)
!2653 = distinct !DISubprogram(name: "vrrp_notify_handler", scope: !74, file: !74, line: 696, type: !327, isLocal: true, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2654 = !DILocalVariable(name: "strvec", arg: 1, scope: !2653, file: !74, line: 696, type: !329)
!2655 = !DILocation(line: 696, column: 31, scope: !2653)
!2656 = !DILocalVariable(name: "vrrp", scope: !2653, file: !74, line: 698, type: !1428)
!2657 = !DILocation(line: 698, column: 10, scope: !2653)
!2658 = !DILocation(line: 698, column: 19, scope: !2653)
!2659 = !DILocation(line: 698, column: 30, scope: !2653)
!2660 = !DILocation(line: 698, column: 37, scope: !2653)
!2661 = !DILocation(line: 698, column: 43, scope: !2653)
!2662 = !DILocation(line: 698, column: 17, scope: !2653)
!2663 = !DILocation(line: 699, column: 6, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2653, file: !74, line: 699, column: 6)
!2665 = !DILocation(line: 699, column: 12, scope: !2664)
!2666 = !DILocation(line: 699, column: 6, scope: !2653)
!2667 = !DILocation(line: 700, column: 99, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !74, line: 699, column: 20)
!2669 = !DILocation(line: 700, column: 105, scope: !2668)
!2670 = !DILocation(line: 700, column: 132, scope: !2668)
!2671 = !DILocation(line: 700, column: 120, scope: !2668)
!2672 = !DILocation(line: 700, column: 3, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2668, file: !74, discriminator: 1)
!2674 = !DILocation(line: 701, column: 3, scope: !2668)
!2675 = !DILocation(line: 703, column: 40, scope: !2653)
!2676 = !DILocation(line: 703, column: 17, scope: !2653)
!2677 = !DILocation(line: 703, column: 2, scope: !2653)
!2678 = !DILocation(line: 703, column: 8, scope: !2653)
!2679 = !DILocation(line: 703, column: 15, scope: !2653)
!2680 = !DILocation(line: 704, column: 2, scope: !2653)
!2681 = !DILocation(line: 704, column: 8, scope: !2653)
!2682 = !DILocation(line: 704, column: 20, scope: !2653)
!2683 = !DILocation(line: 705, column: 1, scope: !2653)
!2684 = !DILocation(line: 705, column: 1, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2653, file: !74, discriminator: 1)
!2686 = distinct !DISubprogram(name: "vrrp_notify_master_rx_lower_pri", scope: !74, file: !74, line: 707, type: !327, isLocal: true, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2687 = !DILocalVariable(name: "strvec", arg: 1, scope: !2686, file: !74, line: 707, type: !329)
!2688 = !DILocation(line: 707, column: 43, scope: !2686)
!2689 = !DILocalVariable(name: "vrrp", scope: !2686, file: !74, line: 709, type: !1428)
!2690 = !DILocation(line: 709, column: 10, scope: !2686)
!2691 = !DILocation(line: 709, column: 19, scope: !2686)
!2692 = !DILocation(line: 709, column: 30, scope: !2686)
!2693 = !DILocation(line: 709, column: 37, scope: !2686)
!2694 = !DILocation(line: 709, column: 43, scope: !2686)
!2695 = !DILocation(line: 709, column: 17, scope: !2686)
!2696 = !DILocation(line: 710, column: 6, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2686, file: !74, line: 710, column: 6)
!2698 = !DILocation(line: 710, column: 12, scope: !2697)
!2699 = !DILocation(line: 710, column: 6, scope: !2686)
!2700 = !DILocation(line: 711, column: 119, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !74, line: 710, column: 40)
!2702 = !DILocation(line: 711, column: 125, scope: !2701)
!2703 = !DILocation(line: 711, column: 152, scope: !2701)
!2704 = !DILocation(line: 711, column: 140, scope: !2701)
!2705 = !DILocation(line: 711, column: 3, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !2701, file: !74, discriminator: 1)
!2707 = !DILocation(line: 712, column: 3, scope: !2701)
!2708 = !DILocation(line: 714, column: 60, scope: !2686)
!2709 = !DILocation(line: 714, column: 37, scope: !2686)
!2710 = !DILocation(line: 714, column: 2, scope: !2686)
!2711 = !DILocation(line: 714, column: 8, scope: !2686)
!2712 = !DILocation(line: 714, column: 35, scope: !2686)
!2713 = !DILocation(line: 715, column: 2, scope: !2686)
!2714 = !DILocation(line: 715, column: 8, scope: !2686)
!2715 = !DILocation(line: 715, column: 20, scope: !2686)
!2716 = !DILocation(line: 716, column: 1, scope: !2686)
!2717 = !DILocation(line: 716, column: 1, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2686, file: !74, discriminator: 1)
!2719 = distinct !DISubprogram(name: "vrrp_smtp_handler", scope: !74, file: !74, line: 718, type: !327, isLocal: true, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2720 = !DILocalVariable(name: "strvec", arg: 1, scope: !2719, file: !74, line: 718, type: !329)
!2721 = !DILocation(line: 718, column: 53, scope: !2719)
!2722 = !DILocalVariable(name: "vrrp", scope: !2719, file: !74, line: 720, type: !1428)
!2723 = !DILocation(line: 720, column: 10, scope: !2719)
!2724 = !DILocation(line: 720, column: 19, scope: !2719)
!2725 = !DILocation(line: 720, column: 30, scope: !2719)
!2726 = !DILocation(line: 720, column: 37, scope: !2719)
!2727 = !DILocation(line: 720, column: 43, scope: !2719)
!2728 = !DILocation(line: 720, column: 17, scope: !2719)
!2729 = !DILocalVariable(name: "res", scope: !2719, file: !74, line: 721, type: !127)
!2730 = !DILocation(line: 721, column: 6, scope: !2719)
!2731 = !DILocation(line: 723, column: 8, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2719, file: !74, line: 723, column: 6)
!2733 = !DILocation(line: 723, column: 17, scope: !2732)
!2734 = !DILocation(line: 723, column: 28, scope: !2732)
!2735 = !DILocation(line: 723, column: 6, scope: !2719)
!2736 = !DILocation(line: 724, column: 38, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !74, line: 723, column: 34)
!2738 = !DILocation(line: 724, column: 26, scope: !2737)
!2739 = !DILocation(line: 724, column: 9, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2737, file: !74, discriminator: 1)
!2741 = !DILocation(line: 724, column: 7, scope: !2737)
!2742 = !DILocation(line: 725, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2737, file: !74, line: 725, column: 7)
!2744 = !DILocation(line: 725, column: 11, scope: !2743)
!2745 = !DILocation(line: 725, column: 7, scope: !2737)
!2746 = !DILocation(line: 726, column: 115, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !74, line: 725, column: 18)
!2748 = !DILocation(line: 726, column: 103, scope: !2747)
!2749 = !DILocation(line: 726, column: 4, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2747, file: !74, discriminator: 1)
!2751 = !DILocation(line: 727, column: 4, scope: !2747)
!2752 = !DILocation(line: 729, column: 2, scope: !2737)
!2753 = !DILocation(line: 730, column: 21, scope: !2719)
!2754 = !DILocation(line: 730, column: 2, scope: !2719)
!2755 = !DILocation(line: 730, column: 8, scope: !2719)
!2756 = !DILocation(line: 730, column: 19, scope: !2719)
!2757 = !DILocation(line: 731, column: 1, scope: !2719)
!2758 = !DILocation(line: 731, column: 1, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2719, file: !74, discriminator: 1)
!2760 = distinct !DISubprogram(name: "vrrp_lvs_syncd_handler", scope: !74, file: !74, line: 734, type: !327, isLocal: true, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2761 = !DILocalVariable(name: "strvec", arg: 1, scope: !2760, file: !74, line: 734, type: !329)
!2762 = !DILocation(line: 734, column: 34, scope: !2760)
!2763 = !DILocalVariable(name: "vrrp", scope: !2760, file: !74, line: 736, type: !1428)
!2764 = !DILocation(line: 736, column: 10, scope: !2760)
!2765 = !DILocation(line: 736, column: 19, scope: !2760)
!2766 = !DILocation(line: 736, column: 30, scope: !2760)
!2767 = !DILocation(line: 736, column: 37, scope: !2760)
!2768 = !DILocation(line: 736, column: 43, scope: !2760)
!2769 = !DILocation(line: 736, column: 17, scope: !2760)
!2770 = !DILocation(line: 738, column: 119, scope: !2760)
!2771 = !DILocation(line: 738, column: 125, scope: !2760)
!2772 = !DILocation(line: 738, column: 2, scope: !2760)
!2773 = !DILocation(line: 739, column: 102, scope: !2760)
!2774 = !DILocation(line: 739, column: 108, scope: !2760)
!2775 = !DILocation(line: 739, column: 95, scope: !2760)
!2776 = !DILocation(line: 739, column: 90, scope: !2760)
!2777 = !DILocation(line: 739, column: 115, scope: !2760)
!2778 = !DILocation(line: 739, column: 2, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2760, file: !74, discriminator: 1)
!2780 = !DILocation(line: 741, column: 6, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2760, file: !74, line: 741, column: 6)
!2782 = !DILocation(line: 741, column: 19, scope: !2781)
!2783 = !DILocation(line: 741, column: 29, scope: !2781)
!2784 = !DILocation(line: 741, column: 6, scope: !2760)
!2785 = !DILocation(line: 742, column: 123, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !74, line: 741, column: 37)
!2787 = !DILocation(line: 742, column: 129, scope: !2786)
!2788 = !DILocation(line: 742, column: 136, scope: !2786)
!2789 = !DILocation(line: 742, column: 149, scope: !2786)
!2790 = !DILocation(line: 742, column: 159, scope: !2786)
!2791 = !DILocation(line: 742, column: 3, scope: !2786)
!2792 = !DILocation(line: 743, column: 3, scope: !2786)
!2793 = !DILocation(line: 746, column: 44, scope: !2760)
!2794 = !DILocation(line: 746, column: 34, scope: !2760)
!2795 = !DILocation(line: 746, column: 2, scope: !2760)
!2796 = !DILocation(line: 746, column: 15, scope: !2760)
!2797 = !DILocation(line: 746, column: 25, scope: !2760)
!2798 = !DILocation(line: 746, column: 32, scope: !2760)
!2799 = !DILocation(line: 747, column: 32, scope: !2760)
!2800 = !DILocation(line: 747, column: 2, scope: !2760)
!2801 = !DILocation(line: 747, column: 15, scope: !2760)
!2802 = !DILocation(line: 747, column: 25, scope: !2760)
!2803 = !DILocation(line: 747, column: 30, scope: !2760)
!2804 = !DILocation(line: 748, column: 1, scope: !2760)
!2805 = !DILocation(line: 748, column: 1, scope: !2779)
!2806 = distinct !DISubprogram(name: "vrrp_garp_delay_handler", scope: !74, file: !74, line: 751, type: !327, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2807 = !DILocalVariable(name: "strvec", arg: 1, scope: !2806, file: !74, line: 751, type: !329)
!2808 = !DILocation(line: 751, column: 35, scope: !2806)
!2809 = !DILocalVariable(name: "vrrp", scope: !2806, file: !74, line: 753, type: !1428)
!2810 = !DILocation(line: 753, column: 10, scope: !2806)
!2811 = !DILocation(line: 753, column: 19, scope: !2806)
!2812 = !DILocation(line: 753, column: 30, scope: !2806)
!2813 = !DILocation(line: 753, column: 37, scope: !2806)
!2814 = !DILocation(line: 753, column: 43, scope: !2806)
!2815 = !DILocation(line: 753, column: 17, scope: !2806)
!2816 = !DILocalVariable(name: "delay", scope: !2806, file: !74, line: 754, type: !124)
!2817 = !DILocation(line: 754, column: 11, scope: !2806)
!2818 = !DILocation(line: 756, column: 28, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2806, file: !74, line: 756, column: 6)
!2820 = !DILocation(line: 756, column: 7, scope: !2819)
!2821 = !DILocation(line: 756, column: 6, scope: !2806)
!2822 = !DILocation(line: 757, column: 96, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !74, line: 756, column: 77)
!2824 = !DILocation(line: 757, column: 102, scope: !2823)
!2825 = !DILocation(line: 757, column: 129, scope: !2823)
!2826 = !DILocation(line: 757, column: 117, scope: !2823)
!2827 = !DILocation(line: 757, column: 3, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !2823, file: !74, discriminator: 1)
!2829 = !DILocation(line: 758, column: 3, scope: !2823)
!2830 = !DILocation(line: 761, column: 21, scope: !2806)
!2831 = !DILocation(line: 761, column: 27, scope: !2806)
!2832 = !DILocation(line: 761, column: 2, scope: !2806)
!2833 = !DILocation(line: 761, column: 8, scope: !2806)
!2834 = !DILocation(line: 761, column: 19, scope: !2806)
!2835 = !DILocation(line: 762, column: 1, scope: !2806)
!2836 = !DILocation(line: 762, column: 1, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2806, file: !74, discriminator: 1)
!2838 = distinct !DISubprogram(name: "vrrp_garp_refresh_handler", scope: !74, file: !74, line: 764, type: !327, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2839 = !DILocalVariable(name: "strvec", arg: 1, scope: !2838, file: !74, line: 764, type: !329)
!2840 = !DILocation(line: 764, column: 37, scope: !2838)
!2841 = !DILocalVariable(name: "vrrp", scope: !2838, file: !74, line: 766, type: !1428)
!2842 = !DILocation(line: 766, column: 10, scope: !2838)
!2843 = !DILocation(line: 766, column: 19, scope: !2838)
!2844 = !DILocation(line: 766, column: 30, scope: !2838)
!2845 = !DILocation(line: 766, column: 37, scope: !2838)
!2846 = !DILocation(line: 766, column: 43, scope: !2838)
!2847 = !DILocation(line: 766, column: 17, scope: !2838)
!2848 = !DILocalVariable(name: "refresh", scope: !2838, file: !74, line: 767, type: !124)
!2849 = !DILocation(line: 767, column: 11, scope: !2838)
!2850 = !DILocation(line: 769, column: 28, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2838, file: !74, line: 769, column: 6)
!2852 = !DILocation(line: 769, column: 7, scope: !2851)
!2853 = !DILocation(line: 769, column: 6, scope: !2838)
!2854 = !DILocation(line: 770, column: 98, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !74, line: 769, column: 68)
!2856 = !DILocation(line: 770, column: 104, scope: !2855)
!2857 = !DILocation(line: 770, column: 131, scope: !2855)
!2858 = !DILocation(line: 770, column: 119, scope: !2855)
!2859 = !DILocation(line: 770, column: 3, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2855, file: !74, discriminator: 1)
!2861 = !DILocation(line: 771, column: 3, scope: !2855)
!2862 = !DILocation(line: 771, column: 9, scope: !2855)
!2863 = !DILocation(line: 771, column: 22, scope: !2855)
!2864 = !DILocation(line: 771, column: 29, scope: !2855)
!2865 = !DILocation(line: 772, column: 2, scope: !2855)
!2866 = !DILocation(line: 774, column: 31, scope: !2851)
!2867 = !DILocation(line: 774, column: 3, scope: !2851)
!2868 = !DILocation(line: 774, column: 9, scope: !2851)
!2869 = !DILocation(line: 774, column: 22, scope: !2851)
!2870 = !DILocation(line: 774, column: 29, scope: !2851)
!2871 = !DILocation(line: 775, column: 2, scope: !2838)
!2872 = !DILocation(line: 775, column: 8, scope: !2838)
!2873 = !DILocation(line: 775, column: 21, scope: !2838)
!2874 = !DILocation(line: 775, column: 29, scope: !2838)
!2875 = !DILocation(line: 776, column: 1, scope: !2838)
!2876 = distinct !DISubprogram(name: "vrrp_garp_rep_handler", scope: !74, file: !74, line: 778, type: !327, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2877 = !DILocalVariable(name: "strvec", arg: 1, scope: !2876, file: !74, line: 778, type: !329)
!2878 = !DILocation(line: 778, column: 33, scope: !2876)
!2879 = !DILocalVariable(name: "vrrp", scope: !2876, file: !74, line: 780, type: !1428)
!2880 = !DILocation(line: 780, column: 10, scope: !2876)
!2881 = !DILocation(line: 780, column: 19, scope: !2876)
!2882 = !DILocation(line: 780, column: 30, scope: !2876)
!2883 = !DILocation(line: 780, column: 37, scope: !2876)
!2884 = !DILocation(line: 780, column: 43, scope: !2876)
!2885 = !DILocation(line: 780, column: 17, scope: !2876)
!2886 = !DILocalVariable(name: "repeats", scope: !2876, file: !74, line: 781, type: !124)
!2887 = !DILocation(line: 781, column: 11, scope: !2876)
!2888 = !DILocation(line: 785, column: 28, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2876, file: !74, line: 785, column: 6)
!2890 = !DILocation(line: 785, column: 7, scope: !2889)
!2891 = !DILocation(line: 785, column: 6, scope: !2876)
!2892 = !DILocation(line: 786, column: 97, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2889, file: !74, line: 785, column: 68)
!2894 = !DILocation(line: 786, column: 103, scope: !2893)
!2895 = !DILocation(line: 786, column: 130, scope: !2893)
!2896 = !DILocation(line: 786, column: 118, scope: !2893)
!2897 = !DILocation(line: 786, column: 3, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2893, file: !74, discriminator: 1)
!2899 = !DILocation(line: 787, column: 3, scope: !2893)
!2900 = !DILocation(line: 790, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2876, file: !74, line: 790, column: 6)
!2902 = !DILocation(line: 790, column: 14, scope: !2901)
!2903 = !DILocation(line: 790, column: 6, scope: !2876)
!2904 = !DILocation(line: 791, column: 110, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !74, line: 790, column: 20)
!2906 = !DILocation(line: 791, column: 116, scope: !2905)
!2907 = !DILocation(line: 791, column: 3, scope: !2905)
!2908 = !DILocation(line: 792, column: 11, scope: !2905)
!2909 = !DILocation(line: 793, column: 2, scope: !2905)
!2910 = !DILocation(line: 795, column: 19, scope: !2876)
!2911 = !DILocation(line: 795, column: 2, scope: !2876)
!2912 = !DILocation(line: 795, column: 8, scope: !2876)
!2913 = !DILocation(line: 795, column: 17, scope: !2876)
!2914 = !DILocation(line: 796, column: 1, scope: !2876)
!2915 = !DILocation(line: 796, column: 1, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2876, file: !74, discriminator: 1)
!2917 = distinct !DISubprogram(name: "vrrp_garp_refresh_rep_handler", scope: !74, file: !74, line: 798, type: !327, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2918 = !DILocalVariable(name: "strvec", arg: 1, scope: !2917, file: !74, line: 798, type: !329)
!2919 = !DILocation(line: 798, column: 41, scope: !2917)
!2920 = !DILocalVariable(name: "vrrp", scope: !2917, file: !74, line: 800, type: !1428)
!2921 = !DILocation(line: 800, column: 10, scope: !2917)
!2922 = !DILocation(line: 800, column: 19, scope: !2917)
!2923 = !DILocation(line: 800, column: 30, scope: !2917)
!2924 = !DILocation(line: 800, column: 37, scope: !2917)
!2925 = !DILocation(line: 800, column: 43, scope: !2917)
!2926 = !DILocation(line: 800, column: 17, scope: !2917)
!2927 = !DILocalVariable(name: "repeats", scope: !2917, file: !74, line: 801, type: !124)
!2928 = !DILocation(line: 801, column: 11, scope: !2917)
!2929 = !DILocation(line: 805, column: 28, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2917, file: !74, line: 805, column: 6)
!2931 = !DILocation(line: 805, column: 7, scope: !2930)
!2932 = !DILocation(line: 805, column: 6, scope: !2917)
!2933 = !DILocation(line: 806, column: 105, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !74, line: 805, column: 68)
!2935 = !DILocation(line: 806, column: 111, scope: !2934)
!2936 = !DILocation(line: 806, column: 138, scope: !2934)
!2937 = !DILocation(line: 806, column: 126, scope: !2934)
!2938 = !DILocation(line: 806, column: 3, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2934, file: !74, discriminator: 1)
!2940 = !DILocation(line: 807, column: 3, scope: !2934)
!2941 = !DILocation(line: 810, column: 6, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2917, file: !74, line: 810, column: 6)
!2943 = !DILocation(line: 810, column: 14, scope: !2942)
!2944 = !DILocation(line: 810, column: 6, scope: !2917)
!2945 = !DILocation(line: 811, column: 118, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !74, line: 810, column: 20)
!2947 = !DILocation(line: 811, column: 124, scope: !2946)
!2948 = !DILocation(line: 811, column: 3, scope: !2946)
!2949 = !DILocation(line: 812, column: 11, scope: !2946)
!2950 = !DILocation(line: 813, column: 2, scope: !2946)
!2951 = !DILocation(line: 815, column: 27, scope: !2917)
!2952 = !DILocation(line: 815, column: 2, scope: !2917)
!2953 = !DILocation(line: 815, column: 8, scope: !2917)
!2954 = !DILocation(line: 815, column: 25, scope: !2917)
!2955 = !DILocation(line: 816, column: 1, scope: !2917)
!2956 = !DILocation(line: 816, column: 1, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2917, file: !74, discriminator: 1)
!2958 = distinct !DISubprogram(name: "vrrp_garp_lower_prio_delay_handler", scope: !74, file: !74, line: 819, type: !327, isLocal: true, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2959 = !DILocalVariable(name: "strvec", arg: 1, scope: !2958, file: !74, line: 819, type: !329)
!2960 = !DILocation(line: 819, column: 46, scope: !2958)
!2961 = !DILocalVariable(name: "vrrp", scope: !2958, file: !74, line: 821, type: !1428)
!2962 = !DILocation(line: 821, column: 10, scope: !2958)
!2963 = !DILocation(line: 821, column: 19, scope: !2958)
!2964 = !DILocation(line: 821, column: 30, scope: !2958)
!2965 = !DILocation(line: 821, column: 37, scope: !2958)
!2966 = !DILocation(line: 821, column: 43, scope: !2958)
!2967 = !DILocation(line: 821, column: 17, scope: !2958)
!2968 = !DILocalVariable(name: "delay", scope: !2958, file: !74, line: 822, type: !124)
!2969 = !DILocation(line: 822, column: 11, scope: !2958)
!2970 = !DILocation(line: 824, column: 28, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2958, file: !74, line: 824, column: 6)
!2972 = !DILocation(line: 824, column: 7, scope: !2971)
!2973 = !DILocation(line: 824, column: 6, scope: !2958)
!2974 = !DILocation(line: 825, column: 100, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !74, line: 824, column: 77)
!2976 = !DILocation(line: 825, column: 106, scope: !2975)
!2977 = !DILocation(line: 825, column: 133, scope: !2975)
!2978 = !DILocation(line: 825, column: 121, scope: !2975)
!2979 = !DILocation(line: 825, column: 3, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2975, file: !74, discriminator: 1)
!2981 = !DILocation(line: 826, column: 3, scope: !2975)
!2982 = !DILocation(line: 829, column: 32, scope: !2958)
!2983 = !DILocation(line: 829, column: 38, scope: !2958)
!2984 = !DILocation(line: 829, column: 2, scope: !2958)
!2985 = !DILocation(line: 829, column: 8, scope: !2958)
!2986 = !DILocation(line: 829, column: 30, scope: !2958)
!2987 = !DILocation(line: 830, column: 1, scope: !2958)
!2988 = !DILocation(line: 830, column: 1, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2958, file: !74, discriminator: 1)
!2990 = distinct !DISubprogram(name: "vrrp_garp_lower_prio_rep_handler", scope: !74, file: !74, line: 832, type: !327, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!2991 = !DILocalVariable(name: "strvec", arg: 1, scope: !2990, file: !74, line: 832, type: !329)
!2992 = !DILocation(line: 832, column: 44, scope: !2990)
!2993 = !DILocalVariable(name: "vrrp", scope: !2990, file: !74, line: 834, type: !1428)
!2994 = !DILocation(line: 834, column: 10, scope: !2990)
!2995 = !DILocation(line: 834, column: 19, scope: !2990)
!2996 = !DILocation(line: 834, column: 30, scope: !2990)
!2997 = !DILocation(line: 834, column: 37, scope: !2990)
!2998 = !DILocation(line: 834, column: 43, scope: !2990)
!2999 = !DILocation(line: 834, column: 17, scope: !2990)
!3000 = !DILocalVariable(name: "garp_lower_prio_rep", scope: !2990, file: !74, line: 835, type: !124)
!3001 = !DILocation(line: 835, column: 11, scope: !2990)
!3002 = !DILocation(line: 837, column: 28, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2990, file: !74, line: 837, column: 6)
!3004 = !DILocation(line: 837, column: 7, scope: !3003)
!3005 = !DILocation(line: 837, column: 6, scope: !2990)
!3006 = !DILocation(line: 838, column: 90, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !74, line: 837, column: 79)
!3008 = !DILocation(line: 838, column: 96, scope: !3007)
!3009 = !DILocation(line: 838, column: 123, scope: !3007)
!3010 = !DILocation(line: 838, column: 111, scope: !3007)
!3011 = !DILocation(line: 838, column: 3, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3007, file: !74, discriminator: 1)
!3013 = !DILocation(line: 839, column: 3, scope: !3007)
!3014 = !DILocation(line: 842, column: 30, scope: !2990)
!3015 = !DILocation(line: 842, column: 2, scope: !2990)
!3016 = !DILocation(line: 842, column: 8, scope: !2990)
!3017 = !DILocation(line: 842, column: 28, scope: !2990)
!3018 = !DILocation(line: 843, column: 1, scope: !2990)
!3019 = !DILocation(line: 843, column: 1, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !2990, file: !74, discriminator: 1)
!3021 = distinct !DISubprogram(name: "vrrp_lower_prio_no_advert_handler", scope: !74, file: !74, line: 845, type: !327, isLocal: true, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3022 = !DILocalVariable(name: "strvec", arg: 1, scope: !3021, file: !74, line: 845, type: !329)
!3023 = !DILocation(line: 845, column: 45, scope: !3021)
!3024 = !DILocalVariable(name: "vrrp", scope: !3021, file: !74, line: 847, type: !1428)
!3025 = !DILocation(line: 847, column: 10, scope: !3021)
!3026 = !DILocation(line: 847, column: 19, scope: !3021)
!3027 = !DILocation(line: 847, column: 30, scope: !3021)
!3028 = !DILocation(line: 847, column: 37, scope: !3021)
!3029 = !DILocation(line: 847, column: 43, scope: !3021)
!3030 = !DILocation(line: 847, column: 17, scope: !3021)
!3031 = !DILocalVariable(name: "res", scope: !3021, file: !74, line: 848, type: !127)
!3032 = !DILocation(line: 848, column: 6, scope: !3021)
!3033 = !DILocation(line: 850, column: 8, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3021, file: !74, line: 850, column: 6)
!3035 = !DILocation(line: 850, column: 17, scope: !3034)
!3036 = !DILocation(line: 850, column: 28, scope: !3034)
!3037 = !DILocation(line: 850, column: 6, scope: !3021)
!3038 = !DILocation(line: 851, column: 38, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !74, line: 850, column: 34)
!3040 = !DILocation(line: 851, column: 26, scope: !3039)
!3041 = !DILocation(line: 851, column: 9, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !3039, file: !74, discriminator: 1)
!3043 = !DILocation(line: 851, column: 7, scope: !3039)
!3044 = !DILocation(line: 852, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3039, file: !74, line: 852, column: 7)
!3046 = !DILocation(line: 852, column: 11, scope: !3045)
!3047 = !DILocation(line: 852, column: 7, scope: !3039)
!3048 = !DILocation(line: 853, column: 43, scope: !3045)
!3049 = !DILocation(line: 853, column: 4, scope: !3045)
!3050 = !DILocation(line: 853, column: 10, scope: !3045)
!3051 = !DILocation(line: 853, column: 31, scope: !3045)
!3052 = !DILocation(line: 855, column: 96, scope: !3045)
!3053 = !DILocation(line: 855, column: 102, scope: !3045)
!3054 = !DILocation(line: 855, column: 129, scope: !3045)
!3055 = !DILocation(line: 855, column: 117, scope: !3045)
!3056 = !DILocation(line: 855, column: 4, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3045, file: !74, discriminator: 1)
!3058 = !DILocation(line: 856, column: 2, scope: !3039)
!3059 = !DILocation(line: 858, column: 3, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3034, file: !74, line: 856, column: 9)
!3061 = !DILocation(line: 858, column: 9, scope: !3060)
!3062 = !DILocation(line: 858, column: 30, scope: !3060)
!3063 = !DILocation(line: 860, column: 1, scope: !3021)
!3064 = distinct !DISubprogram(name: "vrrp_higher_prio_send_advert_handler", scope: !74, file: !74, line: 863, type: !327, isLocal: true, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3065 = !DILocalVariable(name: "strvec", arg: 1, scope: !3064, file: !74, line: 863, type: !329)
!3066 = !DILocation(line: 863, column: 48, scope: !3064)
!3067 = !DILocalVariable(name: "res", scope: !3064, file: !74, line: 865, type: !127)
!3068 = !DILocation(line: 865, column: 6, scope: !3064)
!3069 = !DILocalVariable(name: "vrrp", scope: !3064, file: !74, line: 866, type: !1428)
!3070 = !DILocation(line: 866, column: 10, scope: !3064)
!3071 = !DILocation(line: 866, column: 19, scope: !3064)
!3072 = !DILocation(line: 866, column: 30, scope: !3064)
!3073 = !DILocation(line: 866, column: 37, scope: !3064)
!3074 = !DILocation(line: 866, column: 43, scope: !3064)
!3075 = !DILocation(line: 866, column: 17, scope: !3064)
!3076 = !DILocation(line: 868, column: 8, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3064, file: !74, line: 868, column: 6)
!3078 = !DILocation(line: 868, column: 17, scope: !3077)
!3079 = !DILocation(line: 868, column: 28, scope: !3077)
!3080 = !DILocation(line: 868, column: 6, scope: !3064)
!3081 = !DILocation(line: 869, column: 38, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3077, file: !74, line: 868, column: 34)
!3083 = !DILocation(line: 869, column: 26, scope: !3082)
!3084 = !DILocation(line: 869, column: 9, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !3082, file: !74, discriminator: 1)
!3086 = !DILocation(line: 869, column: 7, scope: !3082)
!3087 = !DILocation(line: 870, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !74, line: 870, column: 7)
!3089 = !DILocation(line: 870, column: 11, scope: !3088)
!3090 = !DILocation(line: 870, column: 7, scope: !3082)
!3091 = !DILocation(line: 871, column: 46, scope: !3088)
!3092 = !DILocation(line: 871, column: 4, scope: !3088)
!3093 = !DILocation(line: 871, column: 10, scope: !3088)
!3094 = !DILocation(line: 871, column: 34, scope: !3088)
!3095 = !DILocation(line: 873, column: 99, scope: !3088)
!3096 = !DILocation(line: 873, column: 105, scope: !3088)
!3097 = !DILocation(line: 873, column: 132, scope: !3088)
!3098 = !DILocation(line: 873, column: 120, scope: !3088)
!3099 = !DILocation(line: 873, column: 4, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3088, file: !74, discriminator: 1)
!3101 = !DILocation(line: 874, column: 2, scope: !3082)
!3102 = !DILocation(line: 876, column: 3, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3077, file: !74, line: 874, column: 9)
!3104 = !DILocation(line: 876, column: 9, scope: !3103)
!3105 = !DILocation(line: 876, column: 33, scope: !3103)
!3106 = !DILocation(line: 878, column: 1, scope: !3064)
!3107 = distinct !DISubprogram(name: "kernel_rx_buf_size_handler", scope: !74, file: !74, line: 882, type: !327, isLocal: true, isDefinition: true, scopeLine: 883, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3108 = !DILocalVariable(name: "strvec", arg: 1, scope: !3107, file: !74, line: 882, type: !329)
!3109 = !DILocation(line: 882, column: 38, scope: !3107)
!3110 = !DILocalVariable(name: "vrrp", scope: !3107, file: !74, line: 884, type: !1428)
!3111 = !DILocation(line: 884, column: 10, scope: !3107)
!3112 = !DILocation(line: 884, column: 19, scope: !3107)
!3113 = !DILocation(line: 884, column: 30, scope: !3107)
!3114 = !DILocation(line: 884, column: 37, scope: !3107)
!3115 = !DILocation(line: 884, column: 43, scope: !3107)
!3116 = !DILocation(line: 884, column: 17, scope: !3107)
!3117 = !DILocalVariable(name: "rx_buf_size", scope: !3107, file: !74, line: 885, type: !124)
!3118 = !DILocation(line: 885, column: 11, scope: !3107)
!3119 = !DILocation(line: 887, column: 8, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3107, file: !74, line: 887, column: 6)
!3121 = !DILocation(line: 887, column: 17, scope: !3120)
!3122 = !DILocation(line: 887, column: 28, scope: !3120)
!3123 = !DILocation(line: 887, column: 33, scope: !3120)
!3124 = !DILocation(line: 888, column: 27, scope: !3120)
!3125 = !DILocation(line: 888, column: 6, scope: !3120)
!3126 = !DILocation(line: 887, column: 6, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3107, file: !74, discriminator: 1)
!3128 = !DILocation(line: 889, column: 30, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3120, file: !74, line: 888, column: 72)
!3130 = !DILocation(line: 889, column: 3, scope: !3129)
!3131 = !DILocation(line: 889, column: 9, scope: !3129)
!3132 = !DILocation(line: 889, column: 28, scope: !3129)
!3133 = !DILocation(line: 890, column: 3, scope: !3129)
!3134 = !DILocation(line: 893, column: 89, scope: !3107)
!3135 = !DILocation(line: 893, column: 95, scope: !3107)
!3136 = !DILocation(line: 893, column: 2, scope: !3107)
!3137 = !DILocation(line: 894, column: 1, scope: !3107)
!3138 = !DILocation(line: 894, column: 1, scope: !3127)
!3139 = distinct !DISubprogram(name: "vrrp_auth_type_handler", scope: !74, file: !74, line: 898, type: !327, isLocal: true, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3140 = !DILocalVariable(name: "strvec", arg: 1, scope: !3139, file: !74, line: 898, type: !329)
!3141 = !DILocation(line: 898, column: 34, scope: !3139)
!3142 = !DILocalVariable(name: "vrrp", scope: !3139, file: !74, line: 900, type: !1428)
!3143 = !DILocation(line: 900, column: 10, scope: !3139)
!3144 = !DILocation(line: 900, column: 19, scope: !3139)
!3145 = !DILocation(line: 900, column: 30, scope: !3139)
!3146 = !DILocation(line: 900, column: 37, scope: !3139)
!3147 = !DILocation(line: 900, column: 43, scope: !3139)
!3148 = !DILocation(line: 900, column: 17, scope: !3139)
!3149 = !DILocalVariable(name: "str", scope: !3139, file: !74, line: 901, type: !111)
!3150 = !DILocation(line: 901, column: 8, scope: !3139)
!3151 = !DILocation(line: 901, column: 26, scope: !3139)
!3152 = !DILocation(line: 901, column: 14, scope: !3139)
!3153 = !DILocation(line: 903, column: 14, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3139, file: !74, line: 903, column: 6)
!3155 = !DILocation(line: 903, column: 7, scope: !3154)
!3156 = !DILocation(line: 903, column: 6, scope: !3139)
!3157 = !DILocation(line: 904, column: 3, scope: !3154)
!3158 = !DILocation(line: 904, column: 9, scope: !3154)
!3159 = !DILocation(line: 904, column: 19, scope: !3154)
!3160 = !DILocation(line: 905, column: 19, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3154, file: !74, line: 905, column: 11)
!3162 = !DILocation(line: 905, column: 12, scope: !3161)
!3163 = !DILocation(line: 905, column: 11, scope: !3154)
!3164 = !DILocation(line: 906, column: 3, scope: !3161)
!3165 = !DILocation(line: 906, column: 9, scope: !3161)
!3166 = !DILocation(line: 906, column: 19, scope: !3161)
!3167 = !DILocation(line: 908, column: 86, scope: !3161)
!3168 = !DILocation(line: 908, column: 92, scope: !3161)
!3169 = !DILocation(line: 908, column: 99, scope: !3161)
!3170 = !DILocation(line: 908, column: 3, scope: !3161)
!3171 = !DILocation(line: 909, column: 1, scope: !3139)
!3172 = distinct !DISubprogram(name: "vrrp_auth_pass_handler", scope: !74, file: !74, line: 911, type: !327, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3173 = !DILocalVariable(name: "strvec", arg: 1, scope: !3172, file: !74, line: 911, type: !329)
!3174 = !DILocation(line: 911, column: 34, scope: !3172)
!3175 = !DILocalVariable(name: "vrrp", scope: !3172, file: !74, line: 913, type: !1428)
!3176 = !DILocation(line: 913, column: 10, scope: !3172)
!3177 = !DILocation(line: 913, column: 19, scope: !3172)
!3178 = !DILocation(line: 913, column: 30, scope: !3172)
!3179 = !DILocation(line: 913, column: 37, scope: !3172)
!3180 = !DILocation(line: 913, column: 43, scope: !3172)
!3181 = !DILocation(line: 913, column: 17, scope: !3172)
!3182 = !DILocalVariable(name: "str", scope: !3172, file: !74, line: 914, type: !111)
!3183 = !DILocation(line: 914, column: 8, scope: !3172)
!3184 = !DILocation(line: 914, column: 26, scope: !3172)
!3185 = !DILocation(line: 914, column: 14, scope: !3172)
!3186 = !DILocalVariable(name: "max_size", scope: !3172, file: !74, line: 915, type: !201)
!3187 = !DILocation(line: 915, column: 9, scope: !3172)
!3188 = !DILocalVariable(name: "str_len", scope: !3172, file: !74, line: 916, type: !201)
!3189 = !DILocation(line: 916, column: 9, scope: !3172)
!3190 = !DILocation(line: 916, column: 26, scope: !3172)
!3191 = !DILocation(line: 916, column: 19, scope: !3172)
!3192 = !DILocation(line: 918, column: 6, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3172, file: !74, line: 918, column: 6)
!3194 = !DILocation(line: 918, column: 16, scope: !3193)
!3195 = !DILocation(line: 918, column: 14, scope: !3193)
!3196 = !DILocation(line: 918, column: 6, scope: !3172)
!3197 = !DILocation(line: 919, column: 13, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !74, line: 918, column: 26)
!3199 = !DILocation(line: 919, column: 11, scope: !3198)
!3200 = !DILocation(line: 921, column: 50, scope: !3198)
!3201 = !DILocation(line: 920, column: 3, scope: !3198)
!3202 = !DILocation(line: 922, column: 2, scope: !3198)
!3203 = !DILocation(line: 924, column: 9, scope: !3172)
!3204 = !DILocation(line: 924, column: 15, scope: !3172)
!3205 = !DILocation(line: 924, column: 2, scope: !3172)
!3206 = !DILocation(line: 924, column: 29, scope: !3172)
!3207 = !DILocation(line: 925, column: 9, scope: !3172)
!3208 = !DILocation(line: 925, column: 15, scope: !3172)
!3209 = !DILocation(line: 925, column: 2, scope: !3172)
!3210 = !DILocation(line: 925, column: 26, scope: !3172)
!3211 = !DILocation(line: 925, column: 31, scope: !3172)
!3212 = !DILocation(line: 926, column: 1, scope: !3172)
!3213 = distinct !DISubprogram(name: "vrrp_script_handler", scope: !74, file: !74, line: 958, type: !327, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3214 = !DILocalVariable(name: "strvec", arg: 1, scope: !3213, file: !74, line: 958, type: !329)
!3215 = !DILocation(line: 958, column: 31, scope: !3213)
!3216 = !DILocation(line: 960, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !74, line: 960, column: 6)
!3218 = !DILocation(line: 960, column: 6, scope: !3213)
!3219 = !DILocation(line: 961, column: 3, scope: !3217)
!3220 = !DILocation(line: 963, column: 32, scope: !3213)
!3221 = !DILocation(line: 963, column: 20, scope: !3213)
!3222 = !DILocation(line: 963, column: 2, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3213, file: !74, discriminator: 1)
!3224 = !DILocation(line: 964, column: 18, scope: !3213)
!3225 = !DILocation(line: 965, column: 16, scope: !3213)
!3226 = !DILocation(line: 966, column: 1, scope: !3213)
!3227 = !DILocation(line: 966, column: 1, scope: !3223)
!3228 = distinct !DISubprogram(name: "vrrp_vscript_script_handler", scope: !74, file: !74, line: 968, type: !327, isLocal: true, isDefinition: true, scopeLine: 969, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3229 = !DILocalVariable(name: "strvec", arg: 1, scope: !3228, file: !74, line: 968, type: !329)
!3230 = !DILocation(line: 968, column: 63, scope: !3228)
!3231 = !DILocalVariable(name: "vscript", scope: !3228, file: !74, line: 970, type: !3232)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64, align: 64)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_script_t", file: !3234, line: 74, baseType: !3235)
!3234 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_script", file: !3234, line: 60, size: 704, align: 64, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3249, !3251}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sname", scope: !3235, file: !3234, line: 61, baseType: !111, size: 64, align: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !3235, file: !3234, line: 62, baseType: !543, size: 192, align: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3235, file: !3234, line: 63, baseType: !126, size: 64, align: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3235, file: !3234, line: 64, baseType: !126, size: 64, align: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3235, file: !3234, line: 65, baseType: !127, size: 32, align: 32, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3235, file: !3234, line: 66, baseType: !127, size: 32, align: 32, offset: 416)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rise", scope: !3235, file: !3234, line: 67, baseType: !127, size: 32, align: 32, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fall", scope: !3235, file: !3234, line: 68, baseType: !127, size: 32, align: 32, offset: 480)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !3235, file: !3234, line: 69, baseType: !131, size: 64, align: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3235, file: !3234, line: 70, baseType: !127, size: 32, align: 32, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3235, file: !3234, line: 71, baseType: !3248, size: 32, align: 32, offset: 608)
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_state_t", file: !62, line: 50, baseType: !61)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "init_state", scope: !3235, file: !3234, line: 72, baseType: !3250, size: 32, align: 32, offset: 640)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_init_state_t", file: !62, line: 56, baseType: !68)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "insecure", scope: !3235, file: !3234, line: 73, baseType: !125, size: 8, align: 8, offset: 672)
!3252 = !DILocation(line: 970, column: 17, scope: !3228)
!3253 = !DILocation(line: 970, column: 29, scope: !3228)
!3254 = !DILocation(line: 970, column: 40, scope: !3228)
!3255 = !DILocation(line: 970, column: 54, scope: !3228)
!3256 = !DILocation(line: 970, column: 60, scope: !3228)
!3257 = !DILocation(line: 970, column: 27, scope: !3228)
!3258 = !DILocalVariable(name: "strvec_qe", scope: !3228, file: !74, line: 971, type: !329)
!3259 = !DILocation(line: 971, column: 12, scope: !3228)
!3260 = !DILocation(line: 974, column: 14, scope: !3228)
!3261 = !DILocation(line: 974, column: 12, scope: !3228)
!3262 = !DILocation(line: 976, column: 26, scope: !3228)
!3263 = !DILocation(line: 976, column: 38, scope: !3228)
!3264 = !DILocation(line: 976, column: 47, scope: !3228)
!3265 = !DILocation(line: 976, column: 2, scope: !3228)
!3266 = !DILocation(line: 977, column: 14, scope: !3228)
!3267 = !DILocation(line: 977, column: 2, scope: !3228)
!3268 = !DILocation(line: 978, column: 1, scope: !3228)
!3269 = distinct !DISubprogram(name: "vrrp_vscript_interval_handler", scope: !74, file: !74, line: 980, type: !327, isLocal: true, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3270 = !DILocalVariable(name: "strvec", arg: 1, scope: !3269, file: !74, line: 980, type: !329)
!3271 = !DILocation(line: 980, column: 41, scope: !3269)
!3272 = !DILocalVariable(name: "vscript", scope: !3269, file: !74, line: 982, type: !3232)
!3273 = !DILocation(line: 982, column: 17, scope: !3269)
!3274 = !DILocation(line: 982, column: 29, scope: !3269)
!3275 = !DILocation(line: 982, column: 40, scope: !3269)
!3276 = !DILocation(line: 982, column: 54, scope: !3269)
!3277 = !DILocation(line: 982, column: 60, scope: !3269)
!3278 = !DILocation(line: 982, column: 27, scope: !3269)
!3279 = !DILocalVariable(name: "interval", scope: !3269, file: !74, line: 983, type: !124)
!3280 = !DILocation(line: 983, column: 11, scope: !3269)
!3281 = !DILocation(line: 987, column: 28, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3269, file: !74, line: 987, column: 6)
!3283 = !DILocation(line: 987, column: 7, scope: !3282)
!3284 = !DILocation(line: 987, column: 6, scope: !3269)
!3285 = !DILocation(line: 988, column: 116, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3282, file: !74, line: 987, column: 80)
!3287 = !DILocation(line: 988, column: 125, scope: !3286)
!3288 = !DILocation(line: 988, column: 152, scope: !3286)
!3289 = !DILocation(line: 988, column: 140, scope: !3286)
!3290 = !DILocation(line: 988, column: 3, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3286, file: !74, discriminator: 1)
!3292 = !DILocation(line: 989, column: 3, scope: !3286)
!3293 = !DILocation(line: 992, column: 6, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3269, file: !74, line: 992, column: 6)
!3295 = !DILocation(line: 992, column: 15, scope: !3294)
!3296 = !DILocation(line: 992, column: 6, scope: !3269)
!3297 = !DILocation(line: 993, column: 112, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !74, line: 992, column: 21)
!3299 = !DILocation(line: 993, column: 121, scope: !3298)
!3300 = !DILocation(line: 993, column: 3, scope: !3298)
!3301 = !DILocation(line: 994, column: 12, scope: !3298)
!3302 = !DILocation(line: 995, column: 2, scope: !3298)
!3303 = !DILocation(line: 997, column: 22, scope: !3269)
!3304 = !DILocation(line: 997, column: 31, scope: !3269)
!3305 = !DILocation(line: 997, column: 2, scope: !3269)
!3306 = !DILocation(line: 997, column: 11, scope: !3269)
!3307 = !DILocation(line: 997, column: 20, scope: !3269)
!3308 = !DILocation(line: 998, column: 1, scope: !3269)
!3309 = !DILocation(line: 998, column: 1, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3269, file: !74, discriminator: 1)
!3311 = distinct !DISubprogram(name: "vrrp_vscript_timeout_handler", scope: !74, file: !74, line: 1000, type: !327, isLocal: true, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3312 = !DILocalVariable(name: "strvec", arg: 1, scope: !3311, file: !74, line: 1000, type: !329)
!3313 = !DILocation(line: 1000, column: 40, scope: !3311)
!3314 = !DILocalVariable(name: "vscript", scope: !3311, file: !74, line: 1002, type: !3232)
!3315 = !DILocation(line: 1002, column: 17, scope: !3311)
!3316 = !DILocation(line: 1002, column: 29, scope: !3311)
!3317 = !DILocation(line: 1002, column: 40, scope: !3311)
!3318 = !DILocation(line: 1002, column: 54, scope: !3311)
!3319 = !DILocation(line: 1002, column: 60, scope: !3311)
!3320 = !DILocation(line: 1002, column: 27, scope: !3311)
!3321 = !DILocalVariable(name: "timeout", scope: !3311, file: !74, line: 1003, type: !124)
!3322 = !DILocation(line: 1003, column: 11, scope: !3311)
!3323 = !DILocation(line: 1007, column: 28, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3311, file: !74, line: 1007, column: 6)
!3325 = !DILocation(line: 1007, column: 7, scope: !3324)
!3326 = !DILocation(line: 1007, column: 6, scope: !3311)
!3327 = !DILocation(line: 1008, column: 98, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !74, line: 1007, column: 79)
!3329 = !DILocation(line: 1008, column: 107, scope: !3328)
!3330 = !DILocation(line: 1008, column: 134, scope: !3328)
!3331 = !DILocation(line: 1008, column: 122, scope: !3328)
!3332 = !DILocation(line: 1008, column: 3, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3328, file: !74, discriminator: 1)
!3334 = !DILocation(line: 1009, column: 3, scope: !3328)
!3335 = !DILocation(line: 1012, column: 6, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3311, file: !74, line: 1012, column: 6)
!3337 = !DILocation(line: 1012, column: 14, scope: !3336)
!3338 = !DILocation(line: 1012, column: 6, scope: !3311)
!3339 = !DILocation(line: 1013, column: 111, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !74, line: 1012, column: 20)
!3341 = !DILocation(line: 1013, column: 120, scope: !3340)
!3342 = !DILocation(line: 1013, column: 3, scope: !3340)
!3343 = !DILocation(line: 1014, column: 11, scope: !3340)
!3344 = !DILocation(line: 1015, column: 2, scope: !3340)
!3345 = !DILocation(line: 1017, column: 21, scope: !3311)
!3346 = !DILocation(line: 1017, column: 29, scope: !3311)
!3347 = !DILocation(line: 1017, column: 2, scope: !3311)
!3348 = !DILocation(line: 1017, column: 11, scope: !3311)
!3349 = !DILocation(line: 1017, column: 19, scope: !3311)
!3350 = !DILocation(line: 1018, column: 1, scope: !3311)
!3351 = !DILocation(line: 1018, column: 1, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3311, file: !74, discriminator: 1)
!3353 = distinct !DISubprogram(name: "vrrp_vscript_weight_handler", scope: !74, file: !74, line: 1020, type: !327, isLocal: true, isDefinition: true, scopeLine: 1021, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3354 = !DILocalVariable(name: "strvec", arg: 1, scope: !3353, file: !74, line: 1020, type: !329)
!3355 = !DILocation(line: 1020, column: 39, scope: !3353)
!3356 = !DILocalVariable(name: "vscript", scope: !3353, file: !74, line: 1022, type: !3232)
!3357 = !DILocation(line: 1022, column: 17, scope: !3353)
!3358 = !DILocation(line: 1022, column: 29, scope: !3353)
!3359 = !DILocation(line: 1022, column: 40, scope: !3353)
!3360 = !DILocation(line: 1022, column: 54, scope: !3353)
!3361 = !DILocation(line: 1022, column: 60, scope: !3353)
!3362 = !DILocation(line: 1022, column: 27, scope: !3353)
!3363 = !DILocalVariable(name: "weight", scope: !3353, file: !74, line: 1023, type: !127)
!3364 = !DILocation(line: 1023, column: 6, scope: !3353)
!3365 = !DILocation(line: 1025, column: 23, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !74, line: 1025, column: 6)
!3367 = !DILocation(line: 1025, column: 7, scope: !3366)
!3368 = !DILocation(line: 1025, column: 6, scope: !3353)
!3369 = !DILocation(line: 1026, column: 96, scope: !3366)
!3370 = !DILocation(line: 1026, column: 105, scope: !3366)
!3371 = !DILocation(line: 1026, column: 132, scope: !3366)
!3372 = !DILocation(line: 1026, column: 120, scope: !3366)
!3373 = !DILocation(line: 1026, column: 3, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3366, file: !74, discriminator: 1)
!3375 = !DILocation(line: 1026, column: 3, scope: !3366)
!3376 = !DILocation(line: 1027, column: 20, scope: !3353)
!3377 = !DILocation(line: 1027, column: 2, scope: !3353)
!3378 = !DILocation(line: 1027, column: 11, scope: !3353)
!3379 = !DILocation(line: 1027, column: 18, scope: !3353)
!3380 = !DILocation(line: 1028, column: 1, scope: !3353)
!3381 = distinct !DISubprogram(name: "vrrp_vscript_rise_handler", scope: !74, file: !74, line: 1030, type: !327, isLocal: true, isDefinition: true, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3382 = !DILocalVariable(name: "strvec", arg: 1, scope: !3381, file: !74, line: 1030, type: !329)
!3383 = !DILocation(line: 1030, column: 37, scope: !3381)
!3384 = !DILocalVariable(name: "vscript", scope: !3381, file: !74, line: 1032, type: !3232)
!3385 = !DILocation(line: 1032, column: 17, scope: !3381)
!3386 = !DILocation(line: 1032, column: 29, scope: !3381)
!3387 = !DILocation(line: 1032, column: 40, scope: !3381)
!3388 = !DILocation(line: 1032, column: 54, scope: !3381)
!3389 = !DILocation(line: 1032, column: 60, scope: !3381)
!3390 = !DILocation(line: 1032, column: 27, scope: !3381)
!3391 = !DILocalVariable(name: "rise", scope: !3381, file: !74, line: 1033, type: !124)
!3392 = !DILocation(line: 1033, column: 11, scope: !3381)
!3393 = !DILocation(line: 1035, column: 28, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3381, file: !74, line: 1035, column: 6)
!3395 = !DILocation(line: 1035, column: 7, scope: !3394)
!3396 = !DILocation(line: 1035, column: 6, scope: !3381)
!3397 = !DILocation(line: 1036, column: 107, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !74, line: 1035, column: 64)
!3399 = !DILocation(line: 1036, column: 116, scope: !3398)
!3400 = !DILocation(line: 1036, column: 143, scope: !3398)
!3401 = !DILocation(line: 1036, column: 131, scope: !3398)
!3402 = !DILocation(line: 1036, column: 3, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3398, file: !74, discriminator: 1)
!3404 = !DILocation(line: 1037, column: 3, scope: !3398)
!3405 = !DILocation(line: 1037, column: 12, scope: !3398)
!3406 = !DILocation(line: 1037, column: 17, scope: !3398)
!3407 = !DILocation(line: 1038, column: 2, scope: !3398)
!3408 = !DILocation(line: 1040, column: 19, scope: !3394)
!3409 = !DILocation(line: 1040, column: 3, scope: !3394)
!3410 = !DILocation(line: 1040, column: 12, scope: !3394)
!3411 = !DILocation(line: 1040, column: 17, scope: !3394)
!3412 = !DILocation(line: 1041, column: 1, scope: !3381)
!3413 = distinct !DISubprogram(name: "vrrp_vscript_fall_handler", scope: !74, file: !74, line: 1043, type: !327, isLocal: true, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3414 = !DILocalVariable(name: "strvec", arg: 1, scope: !3413, file: !74, line: 1043, type: !329)
!3415 = !DILocation(line: 1043, column: 37, scope: !3413)
!3416 = !DILocalVariable(name: "vscript", scope: !3413, file: !74, line: 1045, type: !3232)
!3417 = !DILocation(line: 1045, column: 17, scope: !3413)
!3418 = !DILocation(line: 1045, column: 29, scope: !3413)
!3419 = !DILocation(line: 1045, column: 40, scope: !3413)
!3420 = !DILocation(line: 1045, column: 54, scope: !3413)
!3421 = !DILocation(line: 1045, column: 60, scope: !3413)
!3422 = !DILocation(line: 1045, column: 27, scope: !3413)
!3423 = !DILocalVariable(name: "fall", scope: !3413, file: !74, line: 1046, type: !124)
!3424 = !DILocation(line: 1046, column: 11, scope: !3413)
!3425 = !DILocation(line: 1048, column: 28, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3413, file: !74, line: 1048, column: 6)
!3427 = !DILocation(line: 1048, column: 7, scope: !3426)
!3428 = !DILocation(line: 1048, column: 6, scope: !3413)
!3429 = !DILocation(line: 1049, column: 107, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !74, line: 1048, column: 64)
!3431 = !DILocation(line: 1049, column: 116, scope: !3430)
!3432 = !DILocation(line: 1049, column: 143, scope: !3430)
!3433 = !DILocation(line: 1049, column: 131, scope: !3430)
!3434 = !DILocation(line: 1049, column: 3, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3430, file: !74, discriminator: 1)
!3436 = !DILocation(line: 1050, column: 3, scope: !3430)
!3437 = !DILocation(line: 1050, column: 12, scope: !3430)
!3438 = !DILocation(line: 1050, column: 17, scope: !3430)
!3439 = !DILocation(line: 1051, column: 2, scope: !3430)
!3440 = !DILocation(line: 1053, column: 19, scope: !3426)
!3441 = !DILocation(line: 1053, column: 3, scope: !3426)
!3442 = !DILocation(line: 1053, column: 12, scope: !3426)
!3443 = !DILocation(line: 1053, column: 17, scope: !3426)
!3444 = !DILocation(line: 1054, column: 1, scope: !3413)
!3445 = distinct !DISubprogram(name: "vrrp_vscript_user_handler", scope: !74, file: !74, line: 1056, type: !327, isLocal: true, isDefinition: true, scopeLine: 1057, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3446 = !DILocalVariable(name: "strvec", arg: 1, scope: !3445, file: !74, line: 1056, type: !329)
!3447 = !DILocation(line: 1056, column: 37, scope: !3445)
!3448 = !DILocalVariable(name: "vscript", scope: !3445, file: !74, line: 1058, type: !3232)
!3449 = !DILocation(line: 1058, column: 17, scope: !3445)
!3450 = !DILocation(line: 1058, column: 29, scope: !3445)
!3451 = !DILocation(line: 1058, column: 40, scope: !3445)
!3452 = !DILocation(line: 1058, column: 54, scope: !3445)
!3453 = !DILocation(line: 1058, column: 60, scope: !3445)
!3454 = !DILocation(line: 1058, column: 27, scope: !3445)
!3455 = !DILocation(line: 1060, column: 25, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3445, file: !74, line: 1060, column: 6)
!3457 = !DILocation(line: 1060, column: 37, scope: !3456)
!3458 = !DILocation(line: 1060, column: 46, scope: !3456)
!3459 = !DILocation(line: 1060, column: 53, scope: !3456)
!3460 = !DILocation(line: 1060, column: 59, scope: !3456)
!3461 = !DILocation(line: 1060, column: 68, scope: !3456)
!3462 = !DILocation(line: 1060, column: 75, scope: !3456)
!3463 = !DILocation(line: 1060, column: 6, scope: !3456)
!3464 = !DILocation(line: 1060, column: 6, scope: !3445)
!3465 = !DILocation(line: 1061, column: 93, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3456, file: !74, line: 1060, column: 81)
!3467 = !DILocation(line: 1061, column: 102, scope: !3466)
!3468 = !DILocation(line: 1061, column: 84, scope: !3466)
!3469 = !DILocation(line: 1061, column: 3, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3466, file: !74, discriminator: 1)
!3471 = !DILocation(line: 1062, column: 17, scope: !3466)
!3472 = !DILocation(line: 1063, column: 2, scope: !3466)
!3473 = !DILocation(line: 1065, column: 17, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3456, file: !74, line: 1064, column: 7)
!3475 = !DILocation(line: 1066, column: 19, scope: !3474)
!3476 = !DILocation(line: 1068, column: 1, scope: !3445)
!3477 = distinct !DISubprogram(name: "vrrp_vscript_init_fail_handler", scope: !74, file: !74, line: 1209, type: !327, isLocal: true, isDefinition: true, scopeLine: 1210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3478 = !DILocalVariable(name: "strvec", arg: 1, scope: !3477, file: !74, line: 1209, type: !329)
!3479 = !DILocation(line: 1209, column: 66, scope: !3477)
!3480 = !DILocalVariable(name: "vscript", scope: !3477, file: !74, line: 1211, type: !3232)
!3481 = !DILocation(line: 1211, column: 17, scope: !3477)
!3482 = !DILocation(line: 1211, column: 29, scope: !3477)
!3483 = !DILocation(line: 1211, column: 40, scope: !3477)
!3484 = !DILocation(line: 1211, column: 54, scope: !3477)
!3485 = !DILocation(line: 1211, column: 60, scope: !3477)
!3486 = !DILocation(line: 1211, column: 27, scope: !3477)
!3487 = !DILocation(line: 1212, column: 2, scope: !3477)
!3488 = !DILocation(line: 1212, column: 11, scope: !3477)
!3489 = !DILocation(line: 1212, column: 22, scope: !3477)
!3490 = !DILocation(line: 1213, column: 1, scope: !3477)
!3491 = distinct !DISubprogram(name: "vrrp_vscript_end_handler", scope: !74, file: !74, line: 1070, type: !1335, isLocal: true, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3492 = !DILocalVariable(name: "vscript", scope: !3491, file: !74, line: 1072, type: !3232)
!3493 = !DILocation(line: 1072, column: 17, scope: !3491)
!3494 = !DILocation(line: 1072, column: 29, scope: !3491)
!3495 = !DILocation(line: 1072, column: 40, scope: !3491)
!3496 = !DILocation(line: 1072, column: 54, scope: !3491)
!3497 = !DILocation(line: 1072, column: 60, scope: !3491)
!3498 = !DILocation(line: 1072, column: 27, scope: !3491)
!3499 = !DILocation(line: 1074, column: 7, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3491, file: !74, line: 1074, column: 6)
!3501 = !DILocation(line: 1074, column: 16, scope: !3500)
!3502 = !DILocation(line: 1074, column: 23, scope: !3500)
!3503 = !DILocation(line: 1074, column: 28, scope: !3500)
!3504 = !DILocation(line: 1074, column: 32, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3500, file: !74, discriminator: 1)
!3506 = !DILocation(line: 1074, column: 41, scope: !3505)
!3507 = !DILocation(line: 1074, column: 48, scope: !3505)
!3508 = !DILocation(line: 1074, column: 6, scope: !3505)
!3509 = !DILocation(line: 1075, column: 92, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3500, file: !74, line: 1074, column: 57)
!3511 = !DILocation(line: 1075, column: 101, scope: !3510)
!3512 = !DILocation(line: 1075, column: 3, scope: !3510)
!3513 = !DILocation(line: 1076, column: 17, scope: !3510)
!3514 = !DILocation(line: 1077, column: 2, scope: !3510)
!3515 = !DILocation(line: 1078, column: 12, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3500, file: !74, line: 1078, column: 11)
!3517 = !DILocation(line: 1078, column: 11, scope: !3500)
!3518 = !DILocation(line: 1079, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !74, line: 1079, column: 7)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !74, line: 1078, column: 27)
!3521 = !DILocation(line: 1079, column: 7, scope: !3520)
!3522 = !DILocation(line: 1080, column: 4, scope: !3519)
!3523 = !DILocation(line: 1082, column: 7, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !74, line: 1082, column: 7)
!3525 = !DILocation(line: 1082, column: 7, scope: !3520)
!3526 = !DILocation(line: 1083, column: 106, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3524, file: !74, line: 1082, column: 43)
!3528 = !DILocation(line: 1083, column: 115, scope: !3527)
!3529 = !DILocation(line: 1083, column: 4, scope: !3527)
!3530 = !DILocation(line: 1084, column: 18, scope: !3527)
!3531 = !DILocation(line: 1085, column: 3, scope: !3527)
!3532 = !DILocation(line: 1086, column: 2, scope: !3520)
!3533 = !DILocation(line: 1088, column: 6, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3491, file: !74, line: 1088, column: 6)
!3535 = !DILocation(line: 1088, column: 6, scope: !3491)
!3536 = !DILocation(line: 1089, column: 21, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !74, line: 1088, column: 21)
!3538 = !DILocation(line: 1089, column: 32, scope: !3537)
!3539 = !DILocation(line: 1089, column: 45, scope: !3537)
!3540 = !DILocation(line: 1089, column: 56, scope: !3537)
!3541 = !DILocation(line: 1089, column: 69, scope: !3537)
!3542 = !DILocation(line: 1089, column: 3, scope: !3537)
!3543 = !DILocation(line: 1090, column: 3, scope: !3537)
!3544 = !DILocation(line: 1093, column: 24, scope: !3491)
!3545 = !DILocation(line: 1093, column: 2, scope: !3491)
!3546 = !DILocation(line: 1093, column: 11, scope: !3491)
!3547 = !DILocation(line: 1093, column: 18, scope: !3491)
!3548 = !DILocation(line: 1093, column: 22, scope: !3491)
!3549 = !DILocation(line: 1094, column: 24, scope: !3491)
!3550 = !DILocation(line: 1094, column: 2, scope: !3491)
!3551 = !DILocation(line: 1094, column: 11, scope: !3491)
!3552 = !DILocation(line: 1094, column: 18, scope: !3491)
!3553 = !DILocation(line: 1094, column: 22, scope: !3491)
!3554 = !DILocation(line: 1095, column: 1, scope: !3491)
!3555 = !DILocation(line: 1095, column: 1, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3491, file: !74, discriminator: 1)
!3557 = distinct !DISubprogram(name: "vrrp_tfile_handler", scope: !74, file: !74, line: 1097, type: !327, isLocal: true, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3558 = !DILocalVariable(name: "strvec", arg: 1, scope: !3557, file: !74, line: 1097, type: !329)
!3559 = !DILocation(line: 1097, column: 30, scope: !3557)
!3560 = !DILocation(line: 1099, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !74, line: 1099, column: 6)
!3562 = !DILocation(line: 1099, column: 6, scope: !3557)
!3563 = !DILocation(line: 1100, column: 3, scope: !3561)
!3564 = !DILocation(line: 1102, column: 30, scope: !3557)
!3565 = !DILocation(line: 1102, column: 18, scope: !3557)
!3566 = !DILocation(line: 1102, column: 2, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3557, file: !74, discriminator: 1)
!3568 = !DILocation(line: 1104, column: 18, scope: !3557)
!3569 = !DILocation(line: 1105, column: 1, scope: !3557)
!3570 = !DILocation(line: 1105, column: 1, scope: !3567)
!3571 = distinct !DISubprogram(name: "vrrp_tfile_file_handler", scope: !74, file: !74, line: 1107, type: !327, isLocal: true, isDefinition: true, scopeLine: 1108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3572 = !DILocalVariable(name: "strvec", arg: 1, scope: !3571, file: !74, line: 1107, type: !329)
!3573 = !DILocation(line: 1107, column: 35, scope: !3571)
!3574 = !DILocalVariable(name: "tfile", scope: !3571, file: !74, line: 1109, type: !3575)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64, align: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_tracked_file_t", file: !3234, line: 91, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_file", file: !3234, line: 83, size: 384, align: 64, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !3577, file: !3234, line: 84, baseType: !111, size: 64, align: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !3577, file: !3234, line: 85, baseType: !111, size: 64, align: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "file_part", scope: !3577, file: !3234, line: 86, baseType: !111, size: 64, align: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3577, file: !3234, line: 87, baseType: !127, size: 32, align: 32, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !3577, file: !3234, line: 88, baseType: !127, size: 32, align: 32, offset: 224)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !3577, file: !3234, line: 89, baseType: !131, size: 64, align: 64, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3577, file: !3234, line: 90, baseType: !127, size: 32, align: 32, offset: 320)
!3586 = !DILocation(line: 1109, column: 23, scope: !3571)
!3587 = !DILocation(line: 1109, column: 33, scope: !3571)
!3588 = !DILocation(line: 1109, column: 44, scope: !3571)
!3589 = !DILocation(line: 1109, column: 63, scope: !3571)
!3590 = !DILocation(line: 1109, column: 69, scope: !3571)
!3591 = !DILocation(line: 1109, column: 31, scope: !3571)
!3592 = !DILocation(line: 1110, column: 6, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3571, file: !74, line: 1110, column: 6)
!3594 = !DILocation(line: 1110, column: 13, scope: !3593)
!3595 = !DILocation(line: 1110, column: 6, scope: !3571)
!3596 = !DILocation(line: 1111, column: 97, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3593, file: !74, line: 1110, column: 24)
!3598 = !DILocation(line: 1111, column: 104, scope: !3597)
!3599 = !DILocation(line: 1111, column: 131, scope: !3597)
!3600 = !DILocation(line: 1111, column: 119, scope: !3597)
!3601 = !DILocation(line: 1111, column: 3, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !3597, file: !74, discriminator: 1)
!3603 = !DILocation(line: 1112, column: 3, scope: !3597)
!3604 = !DILocation(line: 1114, column: 31, scope: !3571)
!3605 = !DILocation(line: 1114, column: 21, scope: !3571)
!3606 = !DILocation(line: 1114, column: 2, scope: !3571)
!3607 = !DILocation(line: 1114, column: 9, scope: !3571)
!3608 = !DILocation(line: 1114, column: 19, scope: !3571)
!3609 = !DILocation(line: 1115, column: 1, scope: !3571)
!3610 = !DILocation(line: 1115, column: 1, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3571, file: !74, discriminator: 1)
!3612 = distinct !DISubprogram(name: "vrrp_tfile_weight_handler", scope: !74, file: !74, line: 1117, type: !327, isLocal: true, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3613 = !DILocalVariable(name: "strvec", arg: 1, scope: !3612, file: !74, line: 1117, type: !329)
!3614 = !DILocation(line: 1117, column: 37, scope: !3612)
!3615 = !DILocalVariable(name: "weight", scope: !3612, file: !74, line: 1119, type: !127)
!3616 = !DILocation(line: 1119, column: 6, scope: !3612)
!3617 = !DILocalVariable(name: "tfile", scope: !3612, file: !74, line: 1120, type: !3575)
!3618 = !DILocation(line: 1120, column: 23, scope: !3612)
!3619 = !DILocation(line: 1120, column: 33, scope: !3612)
!3620 = !DILocation(line: 1120, column: 44, scope: !3612)
!3621 = !DILocation(line: 1120, column: 63, scope: !3612)
!3622 = !DILocation(line: 1120, column: 69, scope: !3612)
!3623 = !DILocation(line: 1120, column: 31, scope: !3612)
!3624 = !DILocation(line: 1122, column: 8, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3612, file: !74, line: 1122, column: 6)
!3626 = !DILocation(line: 1122, column: 17, scope: !3625)
!3627 = !DILocation(line: 1122, column: 28, scope: !3625)
!3628 = !DILocation(line: 1122, column: 6, scope: !3612)
!3629 = !DILocation(line: 1123, column: 97, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3625, file: !74, line: 1122, column: 33)
!3631 = !DILocation(line: 1123, column: 104, scope: !3630)
!3632 = !DILocation(line: 1123, column: 3, scope: !3630)
!3633 = !DILocation(line: 1124, column: 3, scope: !3630)
!3634 = !DILocation(line: 1126, column: 6, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3612, file: !74, line: 1126, column: 6)
!3636 = !DILocation(line: 1126, column: 13, scope: !3635)
!3637 = !DILocation(line: 1126, column: 20, scope: !3635)
!3638 = !DILocation(line: 1126, column: 6, scope: !3612)
!3639 = !DILocation(line: 1127, column: 99, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3635, file: !74, line: 1126, column: 26)
!3641 = !DILocation(line: 1127, column: 106, scope: !3640)
!3642 = !DILocation(line: 1127, column: 133, scope: !3640)
!3643 = !DILocation(line: 1127, column: 121, scope: !3640)
!3644 = !DILocation(line: 1127, column: 3, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !3640, file: !74, discriminator: 1)
!3646 = !DILocation(line: 1128, column: 3, scope: !3640)
!3647 = !DILocation(line: 1131, column: 23, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3612, file: !74, line: 1131, column: 6)
!3649 = !DILocation(line: 1131, column: 7, scope: !3648)
!3650 = !DILocation(line: 1131, column: 6, scope: !3612)
!3651 = !DILocation(line: 1133, column: 64, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3648, file: !74, line: 1131, column: 60)
!3653 = !DILocation(line: 1133, column: 52, scope: !3652)
!3654 = !DILocation(line: 1133, column: 76, scope: !3652)
!3655 = !DILocation(line: 1133, column: 83, scope: !3652)
!3656 = !DILocation(line: 1132, column: 3, scope: !3652)
!3657 = !DILocation(line: 1134, column: 10, scope: !3652)
!3658 = !DILocation(line: 1135, column: 2, scope: !3652)
!3659 = !DILocation(line: 1137, column: 18, scope: !3612)
!3660 = !DILocation(line: 1137, column: 2, scope: !3612)
!3661 = !DILocation(line: 1137, column: 9, scope: !3612)
!3662 = !DILocation(line: 1137, column: 16, scope: !3612)
!3663 = !DILocation(line: 1138, column: 1, scope: !3612)
!3664 = !DILocation(line: 1138, column: 1, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3612, file: !74, discriminator: 1)
!3666 = distinct !DISubprogram(name: "vrrp_tfile_init_handler", scope: !74, file: !74, line: 1140, type: !327, isLocal: true, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3667 = !DILocalVariable(name: "strvec", arg: 1, scope: !3666, file: !74, line: 1140, type: !329)
!3668 = !DILocation(line: 1140, column: 35, scope: !3666)
!3669 = !DILocalVariable(name: "i", scope: !3666, file: !74, line: 1142, type: !124)
!3670 = !DILocation(line: 1142, column: 11, scope: !3666)
!3671 = !DILocalVariable(name: "word", scope: !3666, file: !74, line: 1143, type: !111)
!3672 = !DILocation(line: 1143, column: 8, scope: !3666)
!3673 = !DILocalVariable(name: "tfile", scope: !3666, file: !74, line: 1144, type: !3575)
!3674 = !DILocation(line: 1144, column: 23, scope: !3666)
!3675 = !DILocation(line: 1144, column: 33, scope: !3666)
!3676 = !DILocation(line: 1144, column: 44, scope: !3666)
!3677 = !DILocation(line: 1144, column: 63, scope: !3666)
!3678 = !DILocation(line: 1144, column: 69, scope: !3666)
!3679 = !DILocation(line: 1144, column: 31, scope: !3666)
!3680 = !DILocalVariable(name: "value", scope: !3666, file: !74, line: 1145, type: !127)
!3681 = !DILocation(line: 1145, column: 6, scope: !3666)
!3682 = !DILocation(line: 1147, column: 18, scope: !3666)
!3683 = !DILocation(line: 1148, column: 24, scope: !3666)
!3684 = !DILocation(line: 1150, column: 9, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3666, file: !74, line: 1150, column: 2)
!3686 = !DILocation(line: 1150, column: 7, scope: !3685)
!3687 = !DILocation(line: 1150, column: 14, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3689, file: !74, discriminator: 1)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !74, line: 1150, column: 2)
!3690 = !DILocation(line: 1150, column: 20, scope: !3688)
!3691 = !DILocation(line: 1150, column: 29, scope: !3688)
!3692 = !DILocation(line: 1150, column: 16, scope: !3688)
!3693 = !DILocation(line: 1150, column: 2, scope: !3688)
!3694 = !DILocation(line: 1151, column: 22, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3689, file: !74, line: 1150, column: 46)
!3696 = !DILocation(line: 1151, column: 30, scope: !3695)
!3697 = !DILocation(line: 1151, column: 10, scope: !3695)
!3698 = !DILocation(line: 1151, column: 8, scope: !3695)
!3699 = !DILocation(line: 1152, column: 18, scope: !3695)
!3700 = !DILocation(line: 1152, column: 24, scope: !3695)
!3701 = !DILocation(line: 1152, column: 11, scope: !3695)
!3702 = !DILocation(line: 1152, column: 8, scope: !3695)
!3703 = !DILocation(line: 1153, column: 6, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3695, file: !74, line: 1153, column: 6)
!3705 = !DILocation(line: 1153, column: 27, scope: !3704)
!3706 = !DILocation(line: 1153, column: 7, scope: !3704)
!3707 = !DILocation(line: 1153, column: 9, scope: !3704)
!3708 = !DILocation(line: 1153, column: 8, scope: !3704)
!3709 = !DILocation(line: 1153, column: 10, scope: !3704)
!3710 = !DILocation(line: 1153, column: 23, scope: !3704)
!3711 = !DILocation(line: 1153, column: 26, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !3704, file: !74, discriminator: 1)
!3713 = !DILocation(line: 1153, column: 34, scope: !3712)
!3714 = !DILocation(line: 1153, column: 6, scope: !3712)
!3715 = !DILocation(line: 1154, column: 25, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !74, line: 1154, column: 8)
!3717 = distinct !DILexicalBlock(scope: !3704, file: !74, line: 1153, column: 42)
!3718 = !DILocation(line: 1154, column: 33, scope: !3716)
!3719 = !DILocation(line: 1154, column: 9, scope: !3716)
!3720 = !DILocation(line: 1154, column: 8, scope: !3717)
!3721 = !DILocation(line: 1156, column: 89, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3716, file: !74, line: 1154, column: 69)
!3723 = !DILocation(line: 1156, column: 96, scope: !3722)
!3724 = !DILocation(line: 1156, column: 103, scope: !3722)
!3725 = !DILocation(line: 1156, column: 5, scope: !3722)
!3726 = !DILocation(line: 1157, column: 11, scope: !3722)
!3727 = !DILocation(line: 1158, column: 4, scope: !3722)
!3728 = !DILocation(line: 1159, column: 13, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3716, file: !74, line: 1159, column: 13)
!3730 = !DILocation(line: 1159, column: 19, scope: !3729)
!3731 = !DILocation(line: 1159, column: 26, scope: !3729)
!3732 = !DILocation(line: 1159, column: 29, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !3729, file: !74, discriminator: 1)
!3734 = !DILocation(line: 1159, column: 35, scope: !3733)
!3735 = !DILocation(line: 1159, column: 13, scope: !3733)
!3736 = !DILocation(line: 1160, column: 113, scope: !3729)
!3737 = !DILocation(line: 1160, column: 120, scope: !3729)
!3738 = !DILocation(line: 1160, column: 127, scope: !3729)
!3739 = !DILocation(line: 1160, column: 5, scope: !3729)
!3740 = !DILocation(line: 1161, column: 28, scope: !3717)
!3741 = !DILocation(line: 1161, column: 26, scope: !3717)
!3742 = !DILocation(line: 1162, column: 3, scope: !3717)
!3743 = !DILocation(line: 1163, column: 20, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3704, file: !74, line: 1163, column: 12)
!3745 = !DILocation(line: 1163, column: 13, scope: !3744)
!3746 = !DILocation(line: 1163, column: 12, scope: !3704)
!3747 = !DILocation(line: 1164, column: 20, scope: !3744)
!3748 = !DILocation(line: 1164, column: 4, scope: !3744)
!3749 = !DILocation(line: 1166, column: 83, scope: !3744)
!3750 = !DILocation(line: 1166, column: 4, scope: !3744)
!3751 = !DILocation(line: 1167, column: 2, scope: !3695)
!3752 = !DILocation(line: 1150, column: 42, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3689, file: !74, discriminator: 2)
!3754 = !DILocation(line: 1150, column: 2, scope: !3753)
!3755 = distinct !{!3755, !3756}
!3756 = !DILocation(line: 1150, column: 2, scope: !3666)
!3757 = !DILocation(line: 1168, column: 1, scope: !3666)
!3758 = distinct !DISubprogram(name: "vrrp_tfile_end_handler", scope: !74, file: !74, line: 1170, type: !1335, isLocal: true, isDefinition: true, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3759 = !DILocalVariable(name: "tfile", scope: !3758, file: !74, line: 1172, type: !3575)
!3760 = !DILocation(line: 1172, column: 23, scope: !3758)
!3761 = !DILocation(line: 1172, column: 33, scope: !3758)
!3762 = !DILocation(line: 1172, column: 44, scope: !3758)
!3763 = !DILocation(line: 1172, column: 63, scope: !3758)
!3764 = !DILocation(line: 1172, column: 69, scope: !3758)
!3765 = !DILocation(line: 1172, column: 31, scope: !3758)
!3766 = !DILocalVariable(name: "statb", scope: !3758, file: !74, line: 1173, type: !3767)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3768, line: 46, size: 1152, align: 64, elements: !3769)
!3768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!3769 = !{!3770, !3772, !3774, !3776, !3778, !3779, !3780, !3781, !3782, !3783, !3785, !3787, !3793, !3794, !3795}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3767, file: !3768, line: 48, baseType: !3771, size: 64, align: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !116, line: 124, baseType: !126)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3767, file: !3768, line: 53, baseType: !3773, size: 64, align: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !116, line: 127, baseType: !126)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3767, file: !3768, line: 61, baseType: !3775, size: 64, align: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !116, line: 130, baseType: !126)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3767, file: !3768, line: 62, baseType: !3777, size: 32, align: 32, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !116, line: 129, baseType: !124)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3767, file: !3768, line: 64, baseType: !553, size: 32, align: 32, offset: 224)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3767, file: !3768, line: 65, baseType: !556, size: 32, align: 32, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3767, file: !3768, line: 67, baseType: !127, size: 32, align: 32, offset: 288)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3767, file: !3768, line: 69, baseType: !3771, size: 64, align: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3767, file: !3768, line: 74, baseType: !183, size: 64, align: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3767, file: !3768, line: 78, baseType: !3784, size: 64, align: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !116, line: 153, baseType: !117)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3767, file: !3768, line: 80, baseType: !3786, size: 64, align: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !116, line: 158, baseType: !117)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3767, file: !3768, line: 91, baseType: !3788, size: 128, align: 64, offset: 576)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !114, line: 120, size: 128, align: 64, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3788, file: !114, line: 122, baseType: !115, size: 64, align: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3788, file: !114, line: 123, baseType: !3792, size: 64, align: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !116, line: 175, baseType: !117)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3767, file: !3768, line: 92, baseType: !3788, size: 128, align: 64, offset: 704)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3767, file: !3768, line: 93, baseType: !3788, size: 128, align: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3767, file: !3768, line: 106, baseType: !3796, size: 192, align: 64, offset: 960)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3792, size: 192, align: 64, elements: !3797)
!3797 = !{!3798}
!3798 = !DISubrange(count: 3)
!3799 = !DILocation(line: 1173, column: 14, scope: !3758)
!3800 = !DILocalVariable(name: "tf", scope: !3758, file: !74, line: 1174, type: !153)
!3801 = !DILocation(line: 1174, column: 8, scope: !3758)
!3802 = !DILocalVariable(name: "ret", scope: !3758, file: !74, line: 1175, type: !127)
!3803 = !DILocation(line: 1175, column: 6, scope: !3758)
!3804 = !DILocation(line: 1177, column: 7, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3758, file: !74, line: 1177, column: 6)
!3806 = !DILocation(line: 1177, column: 14, scope: !3805)
!3807 = !DILocation(line: 1177, column: 6, scope: !3758)
!3808 = !DILocation(line: 1178, column: 89, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3805, file: !74, line: 1177, column: 25)
!3810 = !DILocation(line: 1178, column: 96, scope: !3809)
!3811 = !DILocation(line: 1178, column: 3, scope: !3809)
!3812 = !DILocation(line: 1179, column: 21, scope: !3809)
!3813 = !DILocation(line: 1179, column: 32, scope: !3809)
!3814 = !DILocation(line: 1179, column: 50, scope: !3809)
!3815 = !DILocation(line: 1179, column: 61, scope: !3809)
!3816 = !DILocation(line: 1179, column: 79, scope: !3809)
!3817 = !DILocation(line: 1179, column: 3, scope: !3809)
!3818 = !DILocation(line: 1180, column: 2, scope: !3809)
!3819 = !DILocation(line: 1182, column: 6, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3758, file: !74, line: 1182, column: 6)
!3821 = !DILocation(line: 1182, column: 22, scope: !3820)
!3822 = !DILocation(line: 1182, column: 6, scope: !3758)
!3823 = !DILocation(line: 1183, column: 3, scope: !3820)
!3824 = !DILocation(line: 1185, column: 13, scope: !3758)
!3825 = !DILocation(line: 1185, column: 20, scope: !3758)
!3826 = !DILocation(line: 1185, column: 8, scope: !3758)
!3827 = !DILocation(line: 1185, column: 6, scope: !3758)
!3828 = !DILocation(line: 1186, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3758, file: !74, line: 1186, column: 6)
!3830 = !DILocation(line: 1186, column: 6, scope: !3758)
!3831 = !DILocation(line: 1187, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !74, line: 1187, column: 7)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !74, line: 1186, column: 12)
!3834 = !DILocation(line: 1187, column: 23, scope: !3832)
!3835 = !DILocation(line: 1187, column: 7, scope: !3833)
!3836 = !DILocation(line: 1189, column: 4, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3832, file: !74, line: 1187, column: 45)
!3838 = !DILocation(line: 1191, column: 14, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3833, file: !74, line: 1191, column: 7)
!3840 = !DILocation(line: 1191, column: 22, scope: !3839)
!3841 = !DILocation(line: 1191, column: 31, scope: !3839)
!3842 = !DILocation(line: 1191, column: 7, scope: !3833)
!3843 = !DILocation(line: 1193, column: 108, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3839, file: !74, line: 1191, column: 43)
!3845 = !DILocation(line: 1193, column: 115, scope: !3844)
!3846 = !DILocation(line: 1193, column: 4, scope: !3844)
!3847 = !DILocation(line: 1194, column: 4, scope: !3844)
!3848 = !DILocation(line: 1196, column: 2, scope: !3833)
!3849 = !DILocation(line: 1198, column: 7, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3758, file: !74, line: 1198, column: 6)
!3851 = !DILocation(line: 1198, column: 6, scope: !3758)
!3852 = !DILocation(line: 1200, column: 19, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !74, line: 1200, column: 7)
!3854 = distinct !DILexicalBlock(scope: !3850, file: !74, line: 1198, column: 44)
!3855 = !DILocation(line: 1200, column: 26, scope: !3853)
!3856 = !DILocation(line: 1200, column: 13, scope: !3853)
!3857 = !DILocation(line: 1200, column: 11, scope: !3853)
!3858 = !DILocation(line: 1200, column: 7, scope: !3854)
!3859 = !DILocation(line: 1201, column: 12, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3853, file: !74, line: 1200, column: 44)
!3861 = !DILocation(line: 1201, column: 24, scope: !3860)
!3862 = !DILocation(line: 1201, column: 4, scope: !3860)
!3863 = !DILocation(line: 1202, column: 11, scope: !3860)
!3864 = !DILocation(line: 1202, column: 4, scope: !3860)
!3865 = !DILocation(line: 1203, column: 3, scope: !3860)
!3866 = !DILocation(line: 1205, column: 84, scope: !3853)
!3867 = !DILocation(line: 1205, column: 91, scope: !3853)
!3868 = !DILocation(line: 1205, column: 4, scope: !3853)
!3869 = !DILocation(line: 1206, column: 2, scope: !3854)
!3870 = !DILocation(line: 1207, column: 1, scope: !3758)
!3871 = distinct !DISubprogram(name: "vrrp_init_keywords", scope: !74, file: !74, line: 1513, type: !3872, isLocal: false, isDefinition: true, scopeLine: 1514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!329}
!3874 = !DILocation(line: 1516, column: 23, scope: !3871)
!3875 = !DILocation(line: 1516, column: 2, scope: !3871)
!3876 = !DILocation(line: 1518, column: 2, scope: !3871)
!3877 = !DILocation(line: 1520, column: 2, scope: !3871)
!3878 = !DILocation(line: 1526, column: 9, scope: !3871)
!3879 = !DILocation(line: 1526, column: 2, scope: !3871)
!3880 = distinct !DISubprogram(name: "set_vrrp_notify_script", scope: !74, file: !74, line: 242, type: !3881, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!542, !329, !127}
!3883 = !DILocalVariable(name: "strvec", arg: 1, scope: !3880, file: !74, line: 242, type: !329)
!3884 = !DILocation(line: 242, column: 58, scope: !3880)
!3885 = !DILocalVariable(name: "extra_params", arg: 2, scope: !3880, file: !74, line: 242, type: !127)
!3886 = !DILocation(line: 242, column: 70, scope: !3880)
!3887 = !DILocation(line: 244, column: 28, scope: !3880)
!3888 = !DILocation(line: 244, column: 9, scope: !3880)
!3889 = !DILocation(line: 244, column: 2, scope: !3880)
!3890 = distinct !DISubprogram(name: "__set_bit", scope: !95, file: !95, line: 37, type: !3891, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !124, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!3894 = !DILocalVariable(name: "idx", arg: 1, scope: !3890, file: !95, line: 37, type: !124)
!3895 = !DILocation(line: 37, column: 39, scope: !3890)
!3896 = !DILocalVariable(name: "bmap", arg: 2, scope: !3890, file: !95, line: 37, type: !3893)
!3897 = !DILocation(line: 37, column: 59, scope: !3890)
!3898 = !DILocation(line: 39, column: 59, scope: !3890)
!3899 = !DILocation(line: 39, column: 58, scope: !3890)
!3900 = !DILocation(line: 39, column: 64, scope: !3890)
!3901 = !DILocation(line: 39, column: 54, scope: !3890)
!3902 = !DILocation(line: 39, column: 9, scope: !3890)
!3903 = !DILocation(line: 39, column: 8, scope: !3890)
!3904 = !DILocation(line: 39, column: 14, scope: !3890)
!3905 = !DILocation(line: 39, column: 2, scope: !3890)
!3906 = !DILocation(line: 39, column: 46, scope: !3890)
!3907 = !DILocation(line: 40, column: 1, scope: !3890)
!3908 = distinct !DISubprogram(name: "__test_bit", scope: !95, file: !95, line: 47, type: !3909, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !218)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!125, !124, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64, align: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3913 = !DILocalVariable(name: "idx", arg: 1, scope: !3908, file: !95, line: 47, type: !124)
!3914 = !DILocation(line: 47, column: 39, scope: !3908)
!3915 = !DILocalVariable(name: "bmap", arg: 2, scope: !3908, file: !95, line: 47, type: !3911)
!3916 = !DILocation(line: 47, column: 65, scope: !3908)
!3917 = !DILocation(line: 49, column: 19, scope: !3908)
!3918 = !DILocation(line: 49, column: 18, scope: !3908)
!3919 = !DILocation(line: 49, column: 24, scope: !3908)
!3920 = !DILocation(line: 49, column: 12, scope: !3908)
!3921 = !DILocation(line: 49, column: 68, scope: !3908)
!3922 = !DILocation(line: 49, column: 67, scope: !3908)
!3923 = !DILocation(line: 49, column: 73, scope: !3908)
!3924 = !DILocation(line: 49, column: 63, scope: !3908)
!3925 = !DILocation(line: 49, column: 56, scope: !3908)
!3926 = !DILocation(line: 49, column: 10, scope: !3908)
!3927 = !DILocation(line: 49, column: 9, scope: !3908)
!3928 = !DILocation(line: 49, column: 2, scope: !3908)
