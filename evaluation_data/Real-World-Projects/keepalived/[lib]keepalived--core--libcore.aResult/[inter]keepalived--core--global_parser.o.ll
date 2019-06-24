; ModuleID = './[inter]keepalived--core--global_parser.o.i'
source_filename = "./[inter]keepalived--core--global_parser.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@.str = private unnamed_addr constant [21 x i8] c"linkbeat_use_polling\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"net_namespace\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"namespace_with_ipsets\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"use_pid_dir\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"child_wait_time\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"global_defs\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"router_id\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"notification_email_from\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"smtp_server\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"smtp_helo_name\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"smtp_connect_timeout\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"notification_email\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"smtp_alert\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"smtp_alert_vrrp\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"smtp_alert_checker\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"dynamic_interfaces\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"no_email_faults\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"default_interface\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"lvs_timeouts\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"lvs_flush\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"lvs_sync_daemon\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"vrrp_mcast_group4\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"vrrp_mcast_group6\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"vrrp_garp_master_delay\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"vrrp_garp_master_repeat\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"vrrp_garp_master_refresh\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"vrrp_garp_master_refresh_repeat\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"vrrp_garp_lower_prio_delay\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"vrrp_garp_lower_prio_repeat\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"vrrp_garp_interval\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"vrrp_gna_interval\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"vrrp_lower_prio_no_advert\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"vrrp_higher_prio_send_advert\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"vrrp_version\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"vrrp_iptables\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"vrrp_ipsets\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"vrrp_check_unicast_src\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"vrrp_skip_check_adv_addr\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"vrrp_strict\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"vrrp_priority\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"vrrp_no_swap\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"vrrp_rt_priority\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"vrrp_rlimit_rtime\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"notify_fifo\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"notify_fifo_script\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"vrrp_notify_fifo\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"vrrp_notify_fifo_script\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"lvs_notify_fifo\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"lvs_notify_fifo_script\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"checker_priority\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"checker_no_swap\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"checker_rt_priority\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"checker_rlimit_rtime\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"script_user\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"enable_script_security\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"vrrp_netlink_cmd_rcv_bufs\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"vrrp_netlink_cmd_rcv_bufs_force\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"vrrp_netlink_monitor_rcv_bufs\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"vrrp_netlink_monitor_rcv_bufs_force\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"lvs_netlink_cmd_rcv_bufs\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"lvs_netlink_cmd_rcv_bufs_force\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"lvs_netlink_monitor_rcv_bufs\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"lvs_netlink_monitor_rcv_bufs_force\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"rs_init_notifies\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"no_checker_emails\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"vrrp_rx_bufs_policy\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"vrrp_rx_bufs_multiplier\00", align 1
@garp_delay = common global %struct._list* null, align 8
@global_data = external global %struct._data*, align 8
@reload = external global i8, align 1
@use_pid_dir = external global i8, align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"Duplicate net_namespace definition %s - ignoring\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"Duplicate instance definition %s - ignoring\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Invalid child_wait_time %s\00", align 1
@child_wait_time = external global i32, align 4
@.str.71 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"-/\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"Invalid smtp server %s %s\00", align 1
@.str.74 = private unnamed_addr constant [56 x i8] c"smtp_connect_timeout '%s' must be in [0, %d] - ignoring\00", align 1
@.str.75 = private unnamed_addr constant [57 x i8] c"smtp_conect_timeout must be greater than 0, setting to 1\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"Warning - empty notification_email block\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"Invalid value '%s' for global smtp_alert specified\00", align 1
@.str.78 = private unnamed_addr constant [56 x i8] c"Invalid value '%s' for global smtp_alert_vrrp specified\00", align 1
@.str.79 = private unnamed_addr constant [59 x i8] c"Invalid value '%s' for global smtp_alert_checker specified\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"default_interface requires interface name\00", align 1
@prog_type = external global i32, align 4
@.str.81 = private unnamed_addr constant [45 x i8] c"WARNING - default interface %s doesn't exist\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"lvs_timeouts requires at least one option\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.84 = private unnamed_addr constant [50 x i8] c"No value specified for lvs_timeout tcp - ignoring\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"Invalid lvs_timeout tcp (%s) - ignoring\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"tcpfin\00", align 1
@.str.87 = private unnamed_addr constant [53 x i8] c"No value specified for lvs_timeout tcpfin - ignoring\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"Invalid lvs_timeout tcpfin (%s) - ignoring\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.90 = private unnamed_addr constant [50 x i8] c"No value specified for lvs_timeout udp - ignoring\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"Invalid lvs_timeout udp (%s) - ignoring\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"Unknown option %s specified for lvs_timeouts\00", align 1
@.str.93 = private unnamed_addr constant [63 x i8] c"lvs_sync_daemon has already been specified as %s %s - ignoring\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"lvs_sync_daemon requires interface, VRRP instance\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"lvs_sync_daemon interface name '%s' too long - ignoring\00", align 1
@.str.96 = private unnamed_addr constant [61 x i8] c"lvs_sync_daemon vrrp interface name '%s' too long - ignoring\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"Please use keyword \22id\22 before lvs_sync_daemon syncid value\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"Invalid syncid (%s) - defaulting to vrid\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.100 = private unnamed_addr constant [62 x i8] c"No value specified for lvs_sync_daemon id, defaulting to vrid\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"No value specified for lvs_sync_daemon maxlen - ignoring\00", align 1
@.str.103 = private unnamed_addr constant [47 x i8] c"Invalid lvs_sync_daemon maxlen (%s) - ignoring\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.105 = private unnamed_addr constant [55 x i8] c"No value specified for lvs_sync_daemon port - ignoring\00", align 1
@.str.106 = private unnamed_addr constant [45 x i8] c"Invalid lvs_sync_daemon port (%s) - ignoring\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.108 = private unnamed_addr constant [54 x i8] c"No value specified for lvs_sync_daemon ttl - ignoring\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"Invalid lvs_sync_daemon ttl (%s) - ignoring\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.111 = private unnamed_addr constant [56 x i8] c"No value specified for lvs_sync_daemon group - ignoring\00", align 1
@.str.112 = private unnamed_addr constant [46 x i8] c"Invalid lvs_sync_daemon group (%s) - ignoring\00", align 1
@.str.113 = private unnamed_addr constant [61 x i8] c"lvs_sync_daemon group address %s is not multicast - ignoring\00", align 1
@.str.114 = private unnamed_addr constant [48 x i8] c"Unknown option %s specified for lvs_sync_daemon\00", align 1
@.str.115 = private unnamed_addr constant [65 x i8] c"Configuration error: Cant parse vrrp_mcast_group4 [%s]. Skipping\00", align 1
@.str.116 = private unnamed_addr constant [65 x i8] c"Configuration error: Cant parse vrrp_mcast_group6 [%s]. Skipping\00", align 1
@.str.117 = private unnamed_addr constant [47 x i8] c"vrrp_garp_master_delay '%s' invalid - ignoring\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"vrrp_garp_master_repeat '%s' invalid - ignoring\00", align 1
@.str.119 = private unnamed_addr constant [61 x i8] c"vrrp_garp_master_repeat must be greater than 0, setting to 1\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"Invalid vrrp_garp_master_refresh '%s' - ignoring\00", align 1
@.str.121 = private unnamed_addr constant [56 x i8] c"vrrp_garp_master_refresh_repeat '%s' invalid - ignoring\00", align 1
@.str.122 = private unnamed_addr constant [69 x i8] c"vrrp_garp_master_refresh_repeat must be greater than 0, setting to 1\00", align 1
@.str.123 = private unnamed_addr constant [51 x i8] c"vrrp_garp_lower_prio_delay '%s' invalid - ignoring\00", align 1
@.str.124 = private unnamed_addr constant [41 x i8] c"Invalid vrrp_garp_lower_prio_repeat '%s'\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"vrrp_garp_interval '%s' is invalid\00", align 1
@.str.126 = private unnamed_addr constant [50 x i8] c"The vrrp_garp_interval is very large - %s seconds\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"vrrp_gna_interval '%s' is invalid\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"The vrrp_gna_interval is very large - %s seconds\00", align 1
@.str.129 = private unnamed_addr constant [54 x i8] c"Invalid value for vrrp_lower_prio_no_advert specified\00", align 1
@.str.130 = private unnamed_addr constant [57 x i8] c"Invalid value for vrrp_higher_prio_send_advert specified\00", align 1
@.str.131 = private unnamed_addr constant [42 x i8] c"VRRP Error: Version must be either 2 or 3\00", align 1
@.str.132 = private unnamed_addr constant [55 x i8] c"VRRP Error : iptables in chain name too long - ignored\00", align 1
@.str.133 = private unnamed_addr constant [56 x i8] c"VRRP Error : iptables out chain name too long - ignored\00", align 1
@.str.134 = private unnamed_addr constant [51 x i8] c"VRRP Error : ipset address name too long - ignored\00", align 1
@.str.135 = private unnamed_addr constant [56 x i8] c"VRRP Error : ipset IPv6 address name too long - ignored\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.137 = private unnamed_addr constant [62 x i8] c"VRRP Error : ipset IPv6 address_iface name too long - ignored\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"_if6\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"vrrp\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"No %s process priority specified\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"Invalid %s process priority specified\00", align 1
@.str.142 = private unnamed_addr constant [43 x i8] c"No %s process real-time priority specified\00", align 1
@.str.143 = private unnamed_addr constant [43 x i8] c"%s process real-time priority '%s' invalid\00", align 1
@.str.144 = private unnamed_addr constant [75 x i8] c"%s process real-time priority %d less than minimum %d - setting to minimum\00", align 1
@.str.145 = private unnamed_addr constant [78 x i8] c"%s process real-time priority %d greater than maximum %d - setting to maximum\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"Invalid %s real-time limit - %s\00", align 1
@.str.147 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.148 = private unnamed_addr constant [32 x i8] c"No %snotify_fifo name specified\00", align 1
@.str.149 = private unnamed_addr constant [46 x i8] c"%snotify_fifo already specified - ignoring %s\00", align 1
@.str.150 = private unnamed_addr constant [34 x i8] c"No %snotify_fifo_script specified\00", align 1
@.str.151 = private unnamed_addr constant [53 x i8] c"%snotify_fifo_script already specified - ignoring %s\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"vrrp_\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"lvs_\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"checker\00", align 1
@.str.155 = private unnamed_addr constant [29 x i8] c"No script username specified\00", align 1
@.str.156 = private unnamed_addr constant [36 x i8] c"Error setting global script uid/gid\00", align 1
@script_security = external global i8, align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"vrrp_netlink_cmd\00", align 1
@.str.158 = private unnamed_addr constant [25 x i8] c"%s_rcv_bufs size missing\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"%s_rcv_bufs size (%s) invalid\00", align 1
@.str.160 = private unnamed_addr constant [72 x i8] c"Invalid value '%s' for global vrrp_netlink_cmd_rcv_bufs_force specified\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"vrrp_netlink_monitor\00", align 1
@.str.162 = private unnamed_addr constant [76 x i8] c"Invalid value '%s' for global vrrp_netlink_monitor_rcv_bufs_force specified\00", align 1
@.str.163 = private unnamed_addr constant [16 x i8] c"lvs_netlink_cmd\00", align 1
@.str.164 = private unnamed_addr constant [71 x i8] c"Invalid value '%s' for global lvs_netlink_cmd_rcv_bufs_force specified\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"lvs_netlink_monitor\00", align 1
@.str.166 = private unnamed_addr constant [75 x i8] c"Invalid value '%s' for global lvs_netlink_monitor_rcv_bufs_force specified\00", align 1
@.str.167 = private unnamed_addr constant [57 x i8] c"Invalid value '%s' for global rs_init_notifies specified\00", align 1
@.str.168 = private unnamed_addr constant [58 x i8] c"Invalid value '%s' for global no_checker_emails specified\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"vrrp_rx_bufs_policy missing\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"MTU\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"ADVERT\00", align 1
@.str.172 = private unnamed_addr constant [31 x i8] c"Invalid vrrp_rx_bufs_policy %s\00", align 1
@.str.173 = private unnamed_addr constant [64 x i8] c"Cannot set vrrp_rx_bufs_policy size and policy, ignoring policy\00", align 1
@.str.174 = private unnamed_addr constant [68 x i8] c"Cannot set both vrrp_rx_bufs_policy MTU and ADVERT, ignoring ADVERT\00", align 1
@.str.175 = private unnamed_addr constant [32 x i8] c"Invalid vrrp_rx_bufs_multiplier\00", align 1
@.str.176 = private unnamed_addr constant [35 x i8] c"Invalid vrrp_rx_bufs_multiplier %s\00", align 1

; Function Attrs: nounwind uwtable
define void @init_global_keywords(i1 zeroext) #0 !dbg !199 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !205, metadata !206), !dbg !207
  %4 = load i8, i8* %2, align 1, !dbg !208
  %5 = trunc i8 %4 to i1, !dbg !208
  call void @install_keyword_root(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), void (%struct._vector*)* @use_polling_handler, i1 zeroext %5), !dbg !209
  %6 = load i8, i8* %2, align 1, !dbg !210
  %7 = trunc i8 %6 to i1, !dbg !210
  call void @install_keyword_root(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void (%struct._vector*)* @net_namespace_handler, i1 zeroext %7), !dbg !211
  %8 = load i8, i8* %2, align 1, !dbg !212
  %9 = trunc i8 %8 to i1, !dbg !212
  call void @install_keyword_root(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), void (%struct._vector*)* @namespace_ipsets_handler, i1 zeroext %9), !dbg !213
  %10 = load i8, i8* %2, align 1, !dbg !214
  %11 = trunc i8 %10 to i1, !dbg !214
  call void @install_keyword_root(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), void (%struct._vector*)* @use_pid_dir_handler, i1 zeroext %11), !dbg !215
  %12 = load i8, i8* %2, align 1, !dbg !216
  %13 = trunc i8 %12 to i1, !dbg !216
  call void @install_keyword_root(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void (%struct._vector*)* @instance_handler, i1 zeroext %13), !dbg !217
  %14 = load i8, i8* %2, align 1, !dbg !218
  %15 = trunc i8 %14 to i1, !dbg !218
  call void @install_keyword_root(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void (%struct._vector*)* @child_wait_handler, i1 zeroext %15), !dbg !219
  %16 = load i8, i8* %2, align 1, !dbg !220
  %17 = trunc i8 %16 to i1, !dbg !220
  call void @install_keyword_root(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (%struct._vector*)* null, i1 zeroext %17), !dbg !221
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (%struct._vector*)* @routerid_handler), !dbg !222
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), void (%struct._vector*)* @emailfrom_handler), !dbg !223
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), void (%struct._vector*)* @smtpserver_handler), !dbg !224
  call void @install_keyword(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), void (%struct._vector*)* @smtphelo_handler), !dbg !225
  call void @install_keyword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), void (%struct._vector*)* @smtpto_handler), !dbg !226
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void (%struct._vector*)* @email_handler), !dbg !227
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), void (%struct._vector*)* @smtp_alert_handler), !dbg !228
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), void (%struct._vector*)* @smtp_alert_vrrp_handler), !dbg !229
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), void (%struct._vector*)* @smtp_alert_checker_handler), !dbg !230
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), void (%struct._vector*)* @dynamic_interfaces_handler), !dbg !231
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), void (%struct._vector*)* @no_email_faults_handler), !dbg !232
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), void (%struct._vector*)* @default_interface_handler), !dbg !233
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void (%struct._vector*)* @lvs_timeouts), !dbg !234
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (%struct._vector*)* @lvs_flush_handler), !dbg !235
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), void (%struct._vector*)* @lvs_syncd_handler), !dbg !236
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void (%struct._vector*)* @vrrp_mcast_group4_handler), !dbg !237
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), void (%struct._vector*)* @vrrp_mcast_group6_handler), !dbg !238
  call void @install_keyword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_delay_handler), !dbg !239
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_rep_handler), !dbg !240
  call void @install_keyword(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_refresh_handler), !dbg !241
  call void @install_keyword(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_refresh_rep_handler), !dbg !242
  call void @install_keyword(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_lower_prio_delay_handler), !dbg !243
  call void @install_keyword(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_lower_prio_rep_handler), !dbg !244
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), void (%struct._vector*)* @vrrp_garp_interval_handler), !dbg !245
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), void (%struct._vector*)* @vrrp_gna_interval_handler), !dbg !246
  call void @install_keyword(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), void (%struct._vector*)* @vrrp_lower_prio_no_advert_handler), !dbg !247
  call void @install_keyword(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), void (%struct._vector*)* @vrrp_higher_prio_send_advert_handler), !dbg !248
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), void (%struct._vector*)* @vrrp_version_handler), !dbg !249
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void (%struct._vector*)* @vrrp_iptables_handler), !dbg !250
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), void (%struct._vector*)* @vrrp_ipsets_handler), !dbg !251
  call void @install_keyword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), void (%struct._vector*)* @vrrp_check_unicast_src_handler), !dbg !252
  call void @install_keyword(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), void (%struct._vector*)* @vrrp_check_adv_addr_handler), !dbg !253
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), void (%struct._vector*)* @vrrp_strict_handler), !dbg !254
  call void @install_keyword(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void (%struct._vector*)* @vrrp_prio_handler), !dbg !255
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), void (%struct._vector*)* @vrrp_no_swap_handler), !dbg !256
  call void @install_keyword(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), void (%struct._vector*)* @vrrp_rt_priority_handler), !dbg !257
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), void (%struct._vector*)* @vrrp_rt_rlimit_handler), !dbg !258
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), void (%struct._vector*)* @global_notify_fifo), !dbg !259
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), void (%struct._vector*)* @global_notify_fifo_script), !dbg !260
  call void @install_keyword(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_fifo), !dbg !261
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0), void (%struct._vector*)* @vrrp_notify_fifo_script), !dbg !262
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), void (%struct._vector*)* @lvs_notify_fifo), !dbg !263
  call void @install_keyword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), void (%struct._vector*)* @lvs_notify_fifo_script), !dbg !264
  call void @install_keyword(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), void (%struct._vector*)* @checker_prio_handler), !dbg !265
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), void (%struct._vector*)* @checker_no_swap_handler), !dbg !266
  call void @install_keyword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), void (%struct._vector*)* @checker_rt_priority_handler), !dbg !267
  call void @install_keyword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), void (%struct._vector*)* @checker_rt_rlimit_handler), !dbg !268
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), void (%struct._vector*)* @script_user_handler), !dbg !269
  call void @install_keyword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0), void (%struct._vector*)* @script_security_handler), !dbg !270
  call void @install_keyword(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0), void (%struct._vector*)* @vrrp_netlink_cmd_rcv_bufs_handler), !dbg !271
  call void @install_keyword(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), void (%struct._vector*)* @vrrp_netlink_cmd_rcv_bufs_force_handler), !dbg !272
  call void @install_keyword(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), void (%struct._vector*)* @vrrp_netlink_monitor_rcv_bufs_handler), !dbg !273
  call void @install_keyword(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0), void (%struct._vector*)* @vrrp_netlink_monitor_rcv_bufs_force_handler), !dbg !274
  call void @install_keyword(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), void (%struct._vector*)* @lvs_netlink_cmd_rcv_bufs_handler), !dbg !275
  call void @install_keyword(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0), void (%struct._vector*)* @lvs_netlink_cmd_rcv_bufs_force_handler), !dbg !276
  call void @install_keyword(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i32 0, i32 0), void (%struct._vector*)* @lvs_netlink_monitor_rcv_bufs_handler), !dbg !277
  call void @install_keyword(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i32 0, i32 0), void (%struct._vector*)* @lvs_netlink_monitor_rcv_bufs_force_handler), !dbg !278
  call void @install_keyword(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), void (%struct._vector*)* @rs_init_notifies_handler), !dbg !279
  call void @install_keyword(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), void (%struct._vector*)* @no_checker_emails_handler), !dbg !280
  call void @install_keyword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), void (%struct._vector*)* @vrrp_rx_bufs_policy_handler), !dbg !281
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), void (%struct._vector*)* @vrrp_rx_bufs_multiplier_handler), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @install_keyword_root(i8*, void (%struct._vector*)*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @use_polling_handler(%struct._vector*) #0 !dbg !284 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !296, metadata !206), !dbg !297
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !298
  %4 = icmp ne %struct._vector* %3, null, !dbg !298
  br i1 %4, label %6, label %5, !dbg !300

; <label>:5:                                      ; preds = %1
  br label %9, !dbg !301

; <label>:6:                                      ; preds = %1
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !302
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 3, !dbg !303
  store i8 1, i8* %8, align 8, !dbg !304
  br label %9, !dbg !305

; <label>:9:                                      ; preds = %6, %5
  ret void, !dbg !306
}

; Function Attrs: nounwind uwtable
define internal void @net_namespace_handler(%struct._vector*) #0 !dbg !308 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !309, metadata !206), !dbg !310
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !311
  %4 = icmp ne %struct._vector* %3, null, !dbg !311
  br i1 %4, label %6, label %5, !dbg !313

; <label>:5:                                      ; preds = %1
  br label %23, !dbg !314

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* @reload, align 1, !dbg !315
  %8 = trunc i8 %7 to i1, !dbg !315
  br i1 %8, label %23, label %9, !dbg !317

; <label>:9:                                      ; preds = %6
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !318
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 0, !dbg !321
  %12 = load i8*, i8** %11, align 8, !dbg !321
  %13 = icmp ne i8* %12, null, !dbg !318
  br i1 %13, label %19, label %14, !dbg !322

; <label>:14:                                     ; preds = %9
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !323
  %16 = call i8* @set_value(%struct._vector* %15), !dbg !325
  %17 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !326
  %18 = getelementptr inbounds %struct._data, %struct._data* %17, i32 0, i32 0, !dbg !327
  store i8* %16, i8** %18, align 8, !dbg !328
  store i8 1, i8* @use_pid_dir, align 1, !dbg !329
  br label %22, !dbg !330

; <label>:19:                                     ; preds = %9
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !331
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !332
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.68, i32 0, i32 0), i8* %21), !dbg !333
  br label %22

; <label>:22:                                     ; preds = %19, %14
  br label %23, !dbg !335

; <label>:23:                                     ; preds = %5, %22, %6
  ret void, !dbg !336
}

; Function Attrs: nounwind uwtable
define internal void @namespace_ipsets_handler(%struct._vector*) #0 !dbg !337 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !338, metadata !206), !dbg !339
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !340
  %4 = icmp ne %struct._vector* %3, null, !dbg !340
  br i1 %4, label %6, label %5, !dbg !342

; <label>:5:                                      ; preds = %1
  br label %9, !dbg !343

; <label>:6:                                      ; preds = %1
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !344
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 1, !dbg !345
  store i8 1, i8* %8, align 8, !dbg !346
  br label %9, !dbg !347

; <label>:9:                                      ; preds = %6, %5
  ret void, !dbg !348
}

; Function Attrs: nounwind uwtable
define internal void @use_pid_dir_handler(%struct._vector*) #0 !dbg !350 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !351, metadata !206), !dbg !352
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !353
  %4 = icmp ne %struct._vector* %3, null, !dbg !353
  br i1 %4, label %6, label %5, !dbg !355

; <label>:5:                                      ; preds = %1
  br label %7, !dbg !356

; <label>:6:                                      ; preds = %1
  store i8 1, i8* @use_pid_dir, align 1, !dbg !357
  br label %7, !dbg !358

; <label>:7:                                      ; preds = %6, %5
  ret void, !dbg !359
}

; Function Attrs: nounwind uwtable
define internal void @instance_handler(%struct._vector*) #0 !dbg !361 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !362, metadata !206), !dbg !363
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !364
  %4 = icmp ne %struct._vector* %3, null, !dbg !364
  br i1 %4, label %6, label %5, !dbg !366

; <label>:5:                                      ; preds = %1
  br label %23, !dbg !367

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* @reload, align 1, !dbg !368
  %8 = trunc i8 %7 to i1, !dbg !368
  br i1 %8, label %23, label %9, !dbg !370

; <label>:9:                                      ; preds = %6
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !371
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 2, !dbg !374
  %12 = load i8*, i8** %11, align 8, !dbg !374
  %13 = icmp ne i8* %12, null, !dbg !371
  br i1 %13, label %19, label %14, !dbg !375

; <label>:14:                                     ; preds = %9
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !376
  %16 = call i8* @set_value(%struct._vector* %15), !dbg !378
  %17 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !379
  %18 = getelementptr inbounds %struct._data, %struct._data* %17, i32 0, i32 2, !dbg !380
  store i8* %16, i8** %18, align 8, !dbg !381
  store i8 1, i8* @use_pid_dir, align 1, !dbg !382
  br label %22, !dbg !383

; <label>:19:                                     ; preds = %9
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !384
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !385
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0), i8* %21), !dbg !386
  br label %22

; <label>:22:                                     ; preds = %19, %14
  br label %23, !dbg !388

; <label>:23:                                     ; preds = %5, %22, %6
  ret void, !dbg !389
}

; Function Attrs: nounwind uwtable
define internal void @child_wait_handler(%struct._vector*) #0 !dbg !390 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !391, metadata !206), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %3, metadata !393, metadata !206), !dbg !394
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !395
  %5 = icmp ne %struct._vector* %4, null, !dbg !395
  br i1 %5, label %7, label %6, !dbg !397

; <label>:6:                                      ; preds = %1
  br label %15, !dbg !398

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !399
  %9 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %8, i64 1, i32* %3, i32 0, i32 -1, i1 zeroext false), !dbg !401
  br i1 %9, label %13, label %10, !dbg !402

; <label>:10:                                     ; preds = %7
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !403
  %12 = call i8* @strvec_slot(%struct._vector* %11, i64 1), !dbg !405
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i32 0, i32 0), i8* %12), !dbg !406
  br label %15, !dbg !408

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4, !dbg !409
  store i32 %14, i32* @child_wait_time, align 4, !dbg !410
  br label %15, !dbg !411

; <label>:15:                                     ; preds = %13, %10, %6
  ret void, !dbg !412
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #2

; Function Attrs: nounwind uwtable
define internal void @routerid_handler(%struct._vector*) #0 !dbg !414 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !415, metadata !206), !dbg !416
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !417
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 4, !dbg !420
  %5 = load i8*, i8** %4, align 8, !dbg !420
  %6 = icmp ne i8* %5, null, !dbg !417
  br i1 %6, label %7, label %13, !dbg !421

; <label>:7:                                      ; preds = %1
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !422
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 4, !dbg !425
  %10 = load i8*, i8** %9, align 8, !dbg !425
  call void @free(i8* %10) #6, !dbg !426
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !427
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 4, !dbg !428
  store i8* null, i8** %12, align 8, !dbg !429
  br label %13, !dbg !430

; <label>:13:                                     ; preds = %7, %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !431
  %15 = call i8* @set_value(%struct._vector* %14), !dbg !432
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !433
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 4, !dbg !434
  store i8* %15, i8** %17, align 8, !dbg !435
  ret void, !dbg !436
}

; Function Attrs: nounwind uwtable
define internal void @emailfrom_handler(%struct._vector*) #0 !dbg !437 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !438, metadata !206), !dbg !439
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !440
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 5, !dbg !443
  %5 = load i8*, i8** %4, align 8, !dbg !443
  %6 = icmp ne i8* %5, null, !dbg !440
  br i1 %6, label %7, label %13, !dbg !444

; <label>:7:                                      ; preds = %1
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !445
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 5, !dbg !448
  %10 = load i8*, i8** %9, align 8, !dbg !448
  call void @free(i8* %10) #6, !dbg !449
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !450
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 5, !dbg !451
  store i8* null, i8** %12, align 8, !dbg !452
  br label %13, !dbg !453

; <label>:13:                                     ; preds = %7, %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !454
  %15 = call i8* @set_value(%struct._vector* %14), !dbg !455
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !456
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 5, !dbg !457
  store i8* %15, i8** %17, align 8, !dbg !458
  ret void, !dbg !459
}

; Function Attrs: nounwind uwtable
define internal void @smtpserver_handler(%struct._vector*) #0 !dbg !460 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !461, metadata !206), !dbg !462
  call void @llvm.dbg.declare(metadata i32* %3, metadata !463, metadata !206), !dbg !464
  store i32 -1, i32* %3, align 4, !dbg !464
  call void @llvm.dbg.declare(metadata i8** %4, metadata !465, metadata !206), !dbg !466
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i8** %4, align 8, !dbg !466
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !467
  %6 = getelementptr inbounds %struct._vector, %struct._vector* %5, i32 0, i32 1, !dbg !469
  %7 = load i32, i32* %6, align 4, !dbg !469
  %8 = icmp uge i32 %7, 3, !dbg !470
  br i1 %8, label %9, label %12, !dbg !471

; <label>:9:                                      ; preds = %1
  %10 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !472
  %11 = call i8* @strvec_slot(%struct._vector* %10, i64 2), !dbg !473
  store i8* %11, i8** %4, align 8, !dbg !474
  br label %12, !dbg !475

; <label>:12:                                     ; preds = %9, %1
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !476
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !478
  %15 = call i8* @strpbrk(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)) #7, !dbg !479
  %16 = icmp ne i8* %15, null, !dbg !481
  br i1 %16, label %24, label %17, !dbg !482

; <label>:17:                                     ; preds = %12
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !483
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !484
  %20 = load i8*, i8** %4, align 8, !dbg !485
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !486
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 6, !dbg !487
  %23 = call i32 @inet_stosockaddr(i8* %19, i8* %20, %struct.sockaddr_storage* %22), !dbg !488
  store i32 %23, i32* %3, align 4, !dbg !489
  br label %24, !dbg !490

; <label>:24:                                     ; preds = %17, %12
  %25 = load i32, i32* %3, align 4, !dbg !491
  %26 = icmp slt i32 %25, 0, !dbg !493
  br i1 %26, label %27, label %34, !dbg !494

; <label>:27:                                     ; preds = %24
  %28 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !495
  %29 = call i8* @strvec_slot(%struct._vector* %28, i64 1), !dbg !496
  %30 = load i8*, i8** %4, align 8, !dbg !497
  %31 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !498
  %32 = getelementptr inbounds %struct._data, %struct._data* %31, i32 0, i32 6, !dbg !499
  %33 = call i32 @domain_stosockaddr(i8* %29, i8* %30, %struct.sockaddr_storage* %32), !dbg !500
  br label %34, !dbg !502

; <label>:34:                                     ; preds = %27, %24
  %35 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !503
  %36 = getelementptr inbounds %struct._data, %struct._data* %35, i32 0, i32 6, !dbg !505
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %36, i32 0, i32 0, !dbg !506
  %38 = load i16, i16* %37, align 8, !dbg !506
  %39 = zext i16 %38 to i32, !dbg !503
  %40 = icmp eq i32 %39, 0, !dbg !507
  br i1 %40, label %41, label %45, !dbg !508

; <label>:41:                                     ; preds = %34
  %42 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !509
  %43 = call i8* @strvec_slot(%struct._vector* %42, i64 1), !dbg !510
  %44 = load i8*, i8** %4, align 8, !dbg !511
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0), i8* %43, i8* %44), !dbg !512
  br label %45, !dbg !514

; <label>:45:                                     ; preds = %41, %34
  ret void, !dbg !515
}

; Function Attrs: nounwind uwtable
define internal void @smtphelo_handler(%struct._vector*) #0 !dbg !516 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !517, metadata !206), !dbg !518
  call void @llvm.dbg.declare(metadata i8** %3, metadata !519, metadata !206), !dbg !520
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !521
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !523
  %6 = load i32, i32* %5, align 4, !dbg !523
  %7 = icmp ult i32 %6, 2, !dbg !524
  br i1 %7, label %8, label %9, !dbg !525

; <label>:8:                                      ; preds = %1
  br label %26, !dbg !526

; <label>:9:                                      ; preds = %1
  %10 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !527
  %11 = call i8* @strvec_slot(%struct._vector* %10, i64 1), !dbg !528
  %12 = call i64 @strlen(i8* %11) #7, !dbg !529
  %13 = add i64 %12, 1, !dbg !531
  %14 = call i8* @zalloc(i64 %13), !dbg !532
  store i8* %14, i8** %3, align 8, !dbg !534
  %15 = load i8*, i8** %3, align 8, !dbg !535
  %16 = icmp ne i8* %15, null, !dbg !535
  br i1 %16, label %18, label %17, !dbg !537

; <label>:17:                                     ; preds = %9
  br label %26, !dbg !538

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** %3, align 8, !dbg !539
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !540
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !541
  %22 = call i8* @strcpy(i8* %19, i8* %21) #6, !dbg !542
  %23 = load i8*, i8** %3, align 8, !dbg !543
  %24 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !544
  %25 = getelementptr inbounds %struct._data, %struct._data* %24, i32 0, i32 7, !dbg !545
  store i8* %23, i8** %25, align 8, !dbg !546
  br label %26, !dbg !547

; <label>:26:                                     ; preds = %18, %17, %8
  ret void, !dbg !548
}

; Function Attrs: nounwind uwtable
define internal void @smtpto_handler(%struct._vector*) #0 !dbg !549 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !550, metadata !206), !dbg !551
  call void @llvm.dbg.declare(metadata i32* %3, metadata !552, metadata !206), !dbg !553
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !554
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 4294, i1 zeroext true), !dbg !556
  br i1 %5, label %9, label %6, !dbg !557

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !558
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !560
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0), i8* %8, i32 4294), !dbg !561
  br label %19, !dbg !563

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !564
  %11 = icmp eq i32 %10, 0, !dbg !566
  br i1 %11, label %12, label %13, !dbg !567

; <label>:12:                                     ; preds = %9
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.75, i32 0, i32 0)), !dbg !568
  store i32 1, i32* %3, align 4, !dbg !570
  br label %13, !dbg !571

; <label>:13:                                     ; preds = %12, %9
  %14 = load i32, i32* %3, align 4, !dbg !572
  %15 = mul i32 %14, 1000000, !dbg !573
  %16 = zext i32 %15 to i64, !dbg !572
  %17 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !574
  %18 = getelementptr inbounds %struct._data, %struct._data* %17, i32 0, i32 8, !dbg !575
  store i64 %16, i64* %18, align 8, !dbg !576
  br label %19, !dbg !577

; <label>:19:                                     ; preds = %13, %6
  ret void, !dbg !578
}

; Function Attrs: nounwind uwtable
define internal void @email_handler(%struct._vector*) #0 !dbg !580 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !581, metadata !206), !dbg !582
  call void @llvm.dbg.declare(metadata %struct._vector** %3, metadata !583, metadata !206), !dbg !584
  %6 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !585
  %7 = call %struct._vector* @read_value_block(%struct._vector* %6), !dbg !586
  store %struct._vector* %7, %struct._vector** %3, align 8, !dbg !584
  call void @llvm.dbg.declare(metadata i32* %4, metadata !587, metadata !206), !dbg !588
  call void @llvm.dbg.declare(metadata i8** %5, metadata !589, metadata !206), !dbg !590
  %8 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !591
  %9 = icmp ne %struct._vector* %8, null, !dbg !591
  br i1 %9, label %11, label %10, !dbg !593

; <label>:10:                                     ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.76, i32 0, i32 0)), !dbg !594
  br label %32, !dbg !596

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %4, align 4, !dbg !597
  br label %12, !dbg !599

; <label>:12:                                     ; preds = %27, %11
  %13 = load i32, i32* %4, align 4, !dbg !600
  %14 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !603
  %15 = getelementptr inbounds %struct._vector, %struct._vector* %14, i32 0, i32 1, !dbg !604
  %16 = load i32, i32* %15, align 4, !dbg !604
  %17 = icmp ult i32 %13, %16, !dbg !605
  br i1 %17, label %18, label %30, !dbg !606

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %4, align 4, !dbg !607
  %20 = zext i32 %19 to i64, !dbg !609
  %21 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !610
  %22 = getelementptr inbounds %struct._vector, %struct._vector* %21, i32 0, i32 2, !dbg !611
  %23 = load i8**, i8*** %22, align 8, !dbg !611
  %24 = getelementptr inbounds i8*, i8** %23, i64 %20, !dbg !609
  %25 = load i8*, i8** %24, align 8, !dbg !609
  store i8* %25, i8** %5, align 8, !dbg !612
  %26 = load i8*, i8** %5, align 8, !dbg !613
  call void @alloc_email(i8* %26), !dbg !614
  br label %27, !dbg !615

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %4, align 4, !dbg !616
  %29 = add i32 %28, 1, !dbg !616
  store i32 %29, i32* %4, align 4, !dbg !616
  br label %12, !dbg !618, !llvm.loop !619

; <label>:30:                                     ; preds = %12
  %31 = load %struct._vector*, %struct._vector** %3, align 8, !dbg !621
  call void @free_strvec(%struct._vector* %31), !dbg !622
  br label %32, !dbg !623

; <label>:32:                                     ; preds = %30, %10
  ret void, !dbg !624
}

; Function Attrs: nounwind uwtable
define internal void @smtp_alert_handler(%struct._vector*) #0 !dbg !626 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !627, metadata !206), !dbg !628
  call void @llvm.dbg.declare(metadata i32* %3, metadata !629, metadata !206), !dbg !630
  store i32 1, i32* %3, align 4, !dbg !630
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !631
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !633
  %6 = load i32, i32* %5, align 4, !dbg !633
  %7 = icmp uge i32 %6, 2, !dbg !634
  br i1 %7, label %8, label %18, !dbg !635

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !636
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !638
  %11 = call i32 @check_true_false(i8* %10), !dbg !639
  store i32 %11, i32* %3, align 4, !dbg !641
  %12 = load i32, i32* %3, align 4, !dbg !642
  %13 = icmp slt i32 %12, 0, !dbg !644
  br i1 %13, label %14, label %17, !dbg !645

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !646
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !648
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.77, i32 0, i32 0), i8* %16), !dbg !649
  br label %22, !dbg !651

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !652

; <label>:18:                                     ; preds = %17, %1
  %19 = load i32, i32* %3, align 4, !dbg !653
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !654
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 10, !dbg !655
  store i32 %19, i32* %21, align 8, !dbg !656
  br label %22, !dbg !657

; <label>:22:                                     ; preds = %18, %14
  ret void, !dbg !658
}

; Function Attrs: nounwind uwtable
define internal void @smtp_alert_vrrp_handler(%struct._vector*) #0 !dbg !660 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !661, metadata !206), !dbg !662
  call void @llvm.dbg.declare(metadata i32* %3, metadata !663, metadata !206), !dbg !664
  store i32 1, i32* %3, align 4, !dbg !664
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !665
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !667
  %6 = load i32, i32* %5, align 4, !dbg !667
  %7 = icmp uge i32 %6, 2, !dbg !668
  br i1 %7, label %8, label %18, !dbg !669

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !670
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !672
  %11 = call i32 @check_true_false(i8* %10), !dbg !673
  store i32 %11, i32* %3, align 4, !dbg !675
  %12 = load i32, i32* %3, align 4, !dbg !676
  %13 = icmp slt i32 %12, 0, !dbg !678
  br i1 %13, label %14, label %17, !dbg !679

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !680
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !682
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.78, i32 0, i32 0), i8* %16), !dbg !683
  br label %22, !dbg !685

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !686

; <label>:18:                                     ; preds = %17, %1
  %19 = load i32, i32* %3, align 4, !dbg !687
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !688
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 13, !dbg !689
  store i32 %19, i32* %21, align 8, !dbg !690
  br label %22, !dbg !691

; <label>:22:                                     ; preds = %18, %14
  ret void, !dbg !692
}

; Function Attrs: nounwind uwtable
define internal void @smtp_alert_checker_handler(%struct._vector*) #0 !dbg !694 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !695, metadata !206), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %3, metadata !697, metadata !206), !dbg !698
  store i32 1, i32* %3, align 4, !dbg !698
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !699
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !701
  %6 = load i32, i32* %5, align 4, !dbg !701
  %7 = icmp uge i32 %6, 2, !dbg !702
  br i1 %7, label %8, label %18, !dbg !703

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !704
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !706
  %11 = call i32 @check_true_false(i8* %10), !dbg !707
  store i32 %11, i32* %3, align 4, !dbg !709
  %12 = load i32, i32* %3, align 4, !dbg !710
  %13 = icmp slt i32 %12, 0, !dbg !712
  br i1 %13, label %14, label %17, !dbg !713

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !714
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !716
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.79, i32 0, i32 0), i8* %16), !dbg !717
  br label %22, !dbg !719

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !720

; <label>:18:                                     ; preds = %17, %1
  %19 = load i32, i32* %3, align 4, !dbg !721
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !722
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 19, !dbg !723
  store i32 %19, i32* %21, align 4, !dbg !724
  br label %22, !dbg !725

; <label>:22:                                     ; preds = %18, %14
  ret void, !dbg !726
}

; Function Attrs: nounwind uwtable
define internal void @dynamic_interfaces_handler(%struct._vector*) #0 !dbg !728 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !729, metadata !206), !dbg !730
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !731
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 11, !dbg !732
  store i8 1, i8* %4, align 4, !dbg !733
  ret void, !dbg !734
}

; Function Attrs: nounwind uwtable
define internal void @no_email_faults_handler(%struct._vector*) #0 !dbg !735 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !736, metadata !206), !dbg !737
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !738
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 12, !dbg !739
  store i8 1, i8* %4, align 1, !dbg !740
  ret void, !dbg !741
}

; Function Attrs: nounwind uwtable
define internal void @default_interface_handler(%struct._vector*) #0 !dbg !742 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !743, metadata !206), !dbg !744
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !745
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 1, !dbg !747
  %5 = load i32, i32* %4, align 4, !dbg !747
  %6 = icmp ult i32 %5, 2, !dbg !748
  br i1 %6, label %7, label %8, !dbg !749

; <label>:7:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.80, i32 0, i32 0)), !dbg !750
  br label %42, !dbg !752

; <label>:8:                                      ; preds = %1
  %9 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !753
  %10 = getelementptr inbounds %struct._data, %struct._data* %9, i32 0, i32 14, !dbg !756
  %11 = load i8*, i8** %10, align 8, !dbg !756
  %12 = icmp ne i8* %11, null, !dbg !753
  br i1 %12, label %13, label %19, !dbg !757

; <label>:13:                                     ; preds = %8
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !758
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 14, !dbg !761
  %16 = load i8*, i8** %15, align 8, !dbg !761
  call void @free(i8* %16) #6, !dbg !762
  %17 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !763
  %18 = getelementptr inbounds %struct._data, %struct._data* %17, i32 0, i32 14, !dbg !764
  store i8* null, i8** %18, align 8, !dbg !765
  br label %19, !dbg !766

; <label>:19:                                     ; preds = %13, %8
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !767
  %21 = call i8* @set_value(%struct._vector* %20), !dbg !768
  %22 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !769
  %23 = getelementptr inbounds %struct._data, %struct._data* %22, i32 0, i32 14, !dbg !770
  store i8* %21, i8** %23, align 8, !dbg !771
  %24 = load i32, i32* @prog_type, align 4, !dbg !772
  %25 = icmp eq i32 %24, 1, !dbg !774
  br i1 %25, label %26, label %42, !dbg !775

; <label>:26:                                     ; preds = %19
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !776
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 14, !dbg !778
  %29 = load i8*, i8** %28, align 8, !dbg !778
  %30 = call %struct._interface* @if_get_by_ifname(i8* %29, i32 1), !dbg !779
  %31 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !780
  %32 = getelementptr inbounds %struct._data, %struct._data* %31, i32 0, i32 15, !dbg !781
  store %struct._interface* %30, %struct._interface** %32, align 8, !dbg !782
  %33 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !783
  %34 = getelementptr inbounds %struct._data, %struct._data* %33, i32 0, i32 15, !dbg !785
  %35 = load %struct._interface*, %struct._interface** %34, align 8, !dbg !785
  %36 = icmp ne %struct._interface* %35, null, !dbg !783
  br i1 %36, label %41, label %37, !dbg !786

; <label>:37:                                     ; preds = %26
  %38 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !787
  %39 = getelementptr inbounds %struct._data, %struct._data* %38, i32 0, i32 14, !dbg !788
  %40 = load i8*, i8** %39, align 8, !dbg !788
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.81, i32 0, i32 0), i8* %40), !dbg !789
  br label %41, !dbg !789

; <label>:41:                                     ; preds = %37, %26
  br label %42, !dbg !790

; <label>:42:                                     ; preds = %7, %41, %19
  ret void, !dbg !791
}

; Function Attrs: nounwind uwtable
define internal void @lvs_timeouts(%struct._vector*) #0 !dbg !792 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !793, metadata !206), !dbg !794
  call void @llvm.dbg.declare(metadata i32* %3, metadata !795, metadata !206), !dbg !796
  call void @llvm.dbg.declare(metadata i64* %4, metadata !797, metadata !206), !dbg !798
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !799
  %6 = getelementptr inbounds %struct._vector, %struct._vector* %5, i32 0, i32 1, !dbg !801
  %7 = load i32, i32* %6, align 4, !dbg !801
  %8 = icmp ult i32 %7, 3, !dbg !802
  br i1 %8, label %9, label %10, !dbg !803

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i32 0, i32 0)), !dbg !804
  br label %121, !dbg !806

; <label>:10:                                     ; preds = %1
  store i64 1, i64* %4, align 8, !dbg !807
  br label %11, !dbg !809

; <label>:11:                                     ; preds = %118, %10
  %12 = load i64, i64* %4, align 8, !dbg !810
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !813
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !814
  %15 = load i32, i32* %14, align 4, !dbg !814
  %16 = zext i32 %15 to i64, !dbg !815
  %17 = icmp ult i64 %12, %16, !dbg !816
  br i1 %17, label %18, label %121, !dbg !817

; <label>:18:                                     ; preds = %11
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !818
  %20 = load i64, i64* %4, align 8, !dbg !821
  %21 = call i8* @strvec_slot(%struct._vector* %19, i64 %20), !dbg !822
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #7, !dbg !823
  %23 = icmp ne i32 %22, 0, !dbg !825
  br i1 %23, label %50, label %24, !dbg !826

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %4, align 8, !dbg !827
  %26 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !830
  %27 = getelementptr inbounds %struct._vector, %struct._vector* %26, i32 0, i32 1, !dbg !831
  %28 = load i32, i32* %27, align 4, !dbg !831
  %29 = sub i32 %28, 1, !dbg !832
  %30 = zext i32 %29 to i64, !dbg !833
  %31 = icmp eq i64 %25, %30, !dbg !834
  br i1 %31, label %32, label %33, !dbg !835

; <label>:32:                                     ; preds = %24
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.84, i32 0, i32 0)), !dbg !836
  br label %118, !dbg !838

; <label>:33:                                     ; preds = %24
  %34 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !839
  %35 = load i64, i64* %4, align 8, !dbg !841
  %36 = add i64 %35, 1, !dbg !842
  %37 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %34, i64 %36, i32* %3, i32 0, i32 2678400, i1 zeroext false), !dbg !843
  br i1 %37, label %43, label %38, !dbg !844

; <label>:38:                                     ; preds = %33
  %39 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !845
  %40 = load i64, i64* %4, align 8, !dbg !846
  %41 = add i64 %40, 1, !dbg !847
  %42 = call i8* @strvec_slot(%struct._vector* %39, i64 %41), !dbg !848
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0), i8* %42), !dbg !849
  br label %47, !dbg !851

; <label>:43:                                     ; preds = %33
  %44 = load i32, i32* %3, align 4, !dbg !852
  %45 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !853
  %46 = getelementptr inbounds %struct._data, %struct._data* %45, i32 0, i32 16, !dbg !854
  store i32 %44, i32* %46, align 8, !dbg !855
  br label %47

; <label>:47:                                     ; preds = %43, %38
  %48 = load i64, i64* %4, align 8, !dbg !856
  %49 = add i64 %48, 1, !dbg !856
  store i64 %49, i64* %4, align 8, !dbg !856
  br label %118, !dbg !857

; <label>:50:                                     ; preds = %18
  %51 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !858
  %52 = load i64, i64* %4, align 8, !dbg !860
  %53 = call i8* @strvec_slot(%struct._vector* %51, i64 %52), !dbg !861
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0)) #7, !dbg !862
  %55 = icmp ne i32 %54, 0, !dbg !864
  br i1 %55, label %82, label %56, !dbg !865

; <label>:56:                                     ; preds = %50
  %57 = load i64, i64* %4, align 8, !dbg !866
  %58 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !869
  %59 = getelementptr inbounds %struct._vector, %struct._vector* %58, i32 0, i32 1, !dbg !870
  %60 = load i32, i32* %59, align 4, !dbg !870
  %61 = sub i32 %60, 1, !dbg !871
  %62 = zext i32 %61 to i64, !dbg !872
  %63 = icmp eq i64 %57, %62, !dbg !873
  br i1 %63, label %64, label %65, !dbg !874

; <label>:64:                                     ; preds = %56
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.87, i32 0, i32 0)), !dbg !875
  br label %118, !dbg !877

; <label>:65:                                     ; preds = %56
  %66 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !878
  %67 = load i64, i64* %4, align 8, !dbg !880
  %68 = add i64 %67, 1, !dbg !881
  %69 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %66, i64 %68, i32* %3, i32 0, i32 2678400, i1 zeroext false), !dbg !882
  br i1 %69, label %75, label %70, !dbg !883

; <label>:70:                                     ; preds = %65
  %71 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !884
  %72 = load i64, i64* %4, align 8, !dbg !885
  %73 = add i64 %72, 1, !dbg !886
  %74 = call i8* @strvec_slot(%struct._vector* %71, i64 %73), !dbg !887
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i32 0, i32 0), i8* %74), !dbg !888
  br label %79, !dbg !890

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %3, align 4, !dbg !891
  %77 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !892
  %78 = getelementptr inbounds %struct._data, %struct._data* %77, i32 0, i32 17, !dbg !893
  store i32 %76, i32* %78, align 4, !dbg !894
  br label %79

; <label>:79:                                     ; preds = %75, %70
  %80 = load i64, i64* %4, align 8, !dbg !895
  %81 = add i64 %80, 1, !dbg !895
  store i64 %81, i64* %4, align 8, !dbg !895
  br label %118, !dbg !896

; <label>:82:                                     ; preds = %50
  %83 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !897
  %84 = load i64, i64* %4, align 8, !dbg !899
  %85 = call i8* @strvec_slot(%struct._vector* %83, i64 %84), !dbg !900
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0)) #7, !dbg !901
  %87 = icmp ne i32 %86, 0, !dbg !903
  br i1 %87, label %114, label %88, !dbg !904

; <label>:88:                                     ; preds = %82
  %89 = load i64, i64* %4, align 8, !dbg !905
  %90 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !908
  %91 = getelementptr inbounds %struct._vector, %struct._vector* %90, i32 0, i32 1, !dbg !909
  %92 = load i32, i32* %91, align 4, !dbg !909
  %93 = sub i32 %92, 1, !dbg !910
  %94 = zext i32 %93 to i64, !dbg !911
  %95 = icmp eq i64 %89, %94, !dbg !912
  br i1 %95, label %96, label %97, !dbg !913

; <label>:96:                                     ; preds = %88
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.90, i32 0, i32 0)), !dbg !914
  br label %118, !dbg !916

; <label>:97:                                     ; preds = %88
  %98 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !917
  %99 = load i64, i64* %4, align 8, !dbg !919
  %100 = add i64 %99, 1, !dbg !920
  %101 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %98, i64 %100, i32* %3, i32 0, i32 2678400, i1 zeroext false), !dbg !921
  br i1 %101, label %107, label %102, !dbg !922

; <label>:102:                                    ; preds = %97
  %103 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !923
  %104 = load i64, i64* %4, align 8, !dbg !924
  %105 = add i64 %104, 1, !dbg !925
  %106 = call i8* @strvec_slot(%struct._vector* %103, i64 %105), !dbg !926
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), i8* %106), !dbg !927
  br label %111, !dbg !929

; <label>:107:                                    ; preds = %97
  %108 = load i32, i32* %3, align 4, !dbg !930
  %109 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !931
  %110 = getelementptr inbounds %struct._data, %struct._data* %109, i32 0, i32 18, !dbg !932
  store i32 %108, i32* %110, align 8, !dbg !933
  br label %111

; <label>:111:                                    ; preds = %107, %102
  %112 = load i64, i64* %4, align 8, !dbg !934
  %113 = add i64 %112, 1, !dbg !934
  store i64 %113, i64* %4, align 8, !dbg !934
  br label %118, !dbg !935

; <label>:114:                                    ; preds = %82
  %115 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !936
  %116 = load i64, i64* %4, align 8, !dbg !937
  %117 = call i8* @strvec_slot(%struct._vector* %115, i64 %116), !dbg !938
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0), i8* %117), !dbg !939
  br label %118, !dbg !941

; <label>:118:                                    ; preds = %114, %111, %96, %79, %64, %47, %32
  %119 = load i64, i64* %4, align 8, !dbg !942
  %120 = add i64 %119, 1, !dbg !942
  store i64 %120, i64* %4, align 8, !dbg !942
  br label %11, !dbg !944, !llvm.loop !945

; <label>:121:                                    ; preds = %9, %11
  ret void, !dbg !947
}

; Function Attrs: nounwind uwtable
define internal void @lvs_flush_handler(%struct._vector*) #0 !dbg !948 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !949, metadata !206), !dbg !950
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !951
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 21, !dbg !952
  store i8 1, i8* %4, align 8, !dbg !953
  ret void, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal void @lvs_syncd_handler(%struct._vector*) #0 !dbg !955 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !956, metadata !206), !dbg !957
  call void @llvm.dbg.declare(metadata i32* %3, metadata !958, metadata !206), !dbg !959
  call void @llvm.dbg.declare(metadata i64* %4, metadata !960, metadata !206), !dbg !961
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !962
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 20, !dbg !964
  %7 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %6, i32 0, i32 0, !dbg !965
  %8 = load i8*, i8** %7, align 8, !dbg !965
  %9 = icmp ne i8* %8, null, !dbg !962
  br i1 %9, label %10, label %19, !dbg !966

; <label>:10:                                     ; preds = %1
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !967
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 20, !dbg !969
  %13 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %12, i32 0, i32 0, !dbg !970
  %14 = load i8*, i8** %13, align 8, !dbg !970
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !971
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 20, !dbg !972
  %17 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %16, i32 0, i32 7, !dbg !973
  %18 = load i8*, i8** %17, align 8, !dbg !973
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.93, i32 0, i32 0), i8* %14, i8* %18), !dbg !974
  br label %330, !dbg !975

; <label>:19:                                     ; preds = %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !976
  %21 = getelementptr inbounds %struct._vector, %struct._vector* %20, i32 0, i32 1, !dbg !978
  %22 = load i32, i32* %21, align 4, !dbg !978
  %23 = icmp ult i32 %22, 3, !dbg !979
  br i1 %23, label %24, label %25, !dbg !980

; <label>:24:                                     ; preds = %19
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.94, i32 0, i32 0)), !dbg !981
  br label %330, !dbg !983

; <label>:25:                                     ; preds = %19
  %26 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !984
  %27 = call i8* @strvec_slot(%struct._vector* %26, i64 1), !dbg !986
  %28 = call i64 @strlen(i8* %27) #7, !dbg !987
  %29 = icmp uge i64 %28, 16, !dbg !989
  br i1 %29, label %30, label %33, !dbg !990

; <label>:30:                                     ; preds = %25
  %31 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !991
  %32 = call i8* @strvec_slot(%struct._vector* %31, i64 1), !dbg !993
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i32 0, i32 0), i8* %32), !dbg !994
  br label %330, !dbg !996

; <label>:33:                                     ; preds = %25
  %34 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !997
  %35 = call i8* @strvec_slot(%struct._vector* %34, i64 2), !dbg !999
  %36 = call i64 @strlen(i8* %35) #7, !dbg !1000
  %37 = icmp uge i64 %36, 16, !dbg !1002
  br i1 %37, label %38, label %41, !dbg !1003

; <label>:38:                                     ; preds = %33
  %39 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1004
  %40 = call i8* @strvec_slot(%struct._vector* %39, i64 2), !dbg !1006
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.96, i32 0, i32 0), i8* %40), !dbg !1007
  br label %330, !dbg !1009

; <label>:41:                                     ; preds = %33
  %42 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1010
  %43 = call i8* @set_value(%struct._vector* %42), !dbg !1011
  %44 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1012
  %45 = getelementptr inbounds %struct._data, %struct._data* %44, i32 0, i32 20, !dbg !1013
  %46 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %45, i32 0, i32 0, !dbg !1014
  store i8* %43, i8** %46, align 8, !dbg !1015
  %47 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1016
  %48 = call i8* @strvec_slot(%struct._vector* %47, i64 2), !dbg !1017
  %49 = call i64 @strlen(i8* %48) #7, !dbg !1018
  %50 = add i64 %49, 1, !dbg !1020
  %51 = call i8* @zalloc(i64 %50), !dbg !1021
  %52 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1023
  %53 = getelementptr inbounds %struct._data, %struct._data* %52, i32 0, i32 20, !dbg !1024
  %54 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %53, i32 0, i32 7, !dbg !1025
  store i8* %51, i8** %54, align 8, !dbg !1026
  %55 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1027
  %56 = getelementptr inbounds %struct._data, %struct._data* %55, i32 0, i32 20, !dbg !1029
  %57 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %56, i32 0, i32 7, !dbg !1030
  %58 = load i8*, i8** %57, align 8, !dbg !1030
  %59 = icmp ne i8* %58, null, !dbg !1027
  br i1 %59, label %61, label %60, !dbg !1031

; <label>:60:                                     ; preds = %41
  br label %330, !dbg !1032

; <label>:61:                                     ; preds = %41
  %62 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1033
  %63 = getelementptr inbounds %struct._data, %struct._data* %62, i32 0, i32 20, !dbg !1034
  %64 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %63, i32 0, i32 7, !dbg !1035
  %65 = load i8*, i8** %64, align 8, !dbg !1035
  %66 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1036
  %67 = call i8* @strvec_slot(%struct._vector* %66, i64 2), !dbg !1037
  %68 = call i8* @strcpy(i8* %65, i8* %67) #6, !dbg !1038
  %69 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1039
  %70 = getelementptr inbounds %struct._vector, %struct._vector* %69, i32 0, i32 1, !dbg !1041
  %71 = load i32, i32* %70, align 4, !dbg !1041
  %72 = icmp uge i32 %71, 4, !dbg !1042
  br i1 %72, label %73, label %99, !dbg !1043

; <label>:73:                                     ; preds = %61
  %74 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1044
  %75 = call i8* @strvec_slot(%struct._vector* %74, i64 3), !dbg !1046
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !1047
  %77 = load i8, i8* %76, align 1, !dbg !1047
  %78 = sext i8 %77 to i32, !dbg !1048
  %79 = sext i32 %78 to i64, !dbg !1049
  %80 = call i16** @__ctype_b_loc() #1, !dbg !1050
  %81 = load i16*, i16** %80, align 8, !dbg !1052
  %82 = getelementptr inbounds i16, i16* %81, i64 %79, !dbg !1049
  %83 = load i16, i16* %82, align 2, !dbg !1049
  %84 = zext i16 %83 to i32, !dbg !1049
  %85 = and i32 %84, 2048, !dbg !1053
  %86 = icmp ne i32 %85, 0, !dbg !1053
  br i1 %86, label %87, label %99, !dbg !1054

; <label>:87:                                     ; preds = %73
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.97, i32 0, i32 0)), !dbg !1055
  %88 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1057
  %89 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %88, i64 3, i32* %3, i32 0, i32 255, i1 zeroext false), !dbg !1059
  br i1 %89, label %93, label %90, !dbg !1060

; <label>:90:                                     ; preds = %87
  %91 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1061
  %92 = call i8* @strvec_slot(%struct._vector* %91, i64 3), !dbg !1062
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.98, i32 0, i32 0), i8* %92), !dbg !1063
  br label %98, !dbg !1065

; <label>:93:                                     ; preds = %87
  %94 = load i32, i32* %3, align 4, !dbg !1066
  %95 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1067
  %96 = getelementptr inbounds %struct._data, %struct._data* %95, i32 0, i32 20, !dbg !1068
  %97 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %96, i32 0, i32 2, !dbg !1069
  store i32 %94, i32* %97, align 8, !dbg !1070
  br label %98

; <label>:98:                                     ; preds = %93, %90
  store i64 4, i64* %4, align 8, !dbg !1071
  br label %100, !dbg !1072

; <label>:99:                                     ; preds = %73, %61
  store i64 3, i64* %4, align 8, !dbg !1073
  br label %100

; <label>:100:                                    ; preds = %99, %98
  br label %101, !dbg !1074

; <label>:101:                                    ; preds = %327, %100
  %102 = load i64, i64* %4, align 8, !dbg !1075
  %103 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1079
  %104 = getelementptr inbounds %struct._vector, %struct._vector* %103, i32 0, i32 1, !dbg !1080
  %105 = load i32, i32* %104, align 4, !dbg !1080
  %106 = zext i32 %105 to i64, !dbg !1081
  %107 = icmp ult i64 %102, %106, !dbg !1082
  br i1 %107, label %108, label %330, !dbg !1083

; <label>:108:                                    ; preds = %101
  %109 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1084
  %110 = load i64, i64* %4, align 8, !dbg !1087
  %111 = call i8* @strvec_slot(%struct._vector* %109, i64 %110), !dbg !1088
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0)) #7, !dbg !1089
  %113 = icmp ne i32 %112, 0, !dbg !1091
  br i1 %113, label %141, label %114, !dbg !1092

; <label>:114:                                    ; preds = %108
  %115 = load i64, i64* %4, align 8, !dbg !1093
  %116 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1096
  %117 = getelementptr inbounds %struct._vector, %struct._vector* %116, i32 0, i32 1, !dbg !1097
  %118 = load i32, i32* %117, align 4, !dbg !1097
  %119 = sub i32 %118, 1, !dbg !1098
  %120 = zext i32 %119 to i64, !dbg !1099
  %121 = icmp eq i64 %115, %120, !dbg !1100
  br i1 %121, label %122, label %123, !dbg !1101

; <label>:122:                                    ; preds = %114
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.100, i32 0, i32 0)), !dbg !1102
  br label %327, !dbg !1104

; <label>:123:                                    ; preds = %114
  %124 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1105
  %125 = load i64, i64* %4, align 8, !dbg !1107
  %126 = add i64 %125, 1, !dbg !1108
  %127 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %124, i64 %126, i32* %3, i32 0, i32 255, i1 zeroext false), !dbg !1109
  br i1 %127, label %133, label %128, !dbg !1110

; <label>:128:                                    ; preds = %123
  %129 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1111
  %130 = load i64, i64* %4, align 8, !dbg !1112
  %131 = add i64 %130, 1, !dbg !1113
  %132 = call i8* @strvec_slot(%struct._vector* %129, i64 %131), !dbg !1114
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.98, i32 0, i32 0), i8* %132), !dbg !1115
  br label %138, !dbg !1117

; <label>:133:                                    ; preds = %123
  %134 = load i32, i32* %3, align 4, !dbg !1118
  %135 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1119
  %136 = getelementptr inbounds %struct._data, %struct._data* %135, i32 0, i32 20, !dbg !1120
  %137 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %136, i32 0, i32 2, !dbg !1121
  store i32 %134, i32* %137, align 8, !dbg !1122
  br label %138

; <label>:138:                                    ; preds = %133, %128
  %139 = load i64, i64* %4, align 8, !dbg !1123
  %140 = add i64 %139, 1, !dbg !1123
  store i64 %140, i64* %4, align 8, !dbg !1123
  br label %327, !dbg !1124

; <label>:141:                                    ; preds = %108
  %142 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1125
  %143 = load i64, i64* %4, align 8, !dbg !1127
  %144 = call i8* @strvec_slot(%struct._vector* %142, i64 %143), !dbg !1128
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0)) #7, !dbg !1129
  %146 = icmp ne i32 %145, 0, !dbg !1131
  br i1 %146, label %175, label %147, !dbg !1132

; <label>:147:                                    ; preds = %141
  %148 = load i64, i64* %4, align 8, !dbg !1133
  %149 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1136
  %150 = getelementptr inbounds %struct._vector, %struct._vector* %149, i32 0, i32 1, !dbg !1137
  %151 = load i32, i32* %150, align 4, !dbg !1137
  %152 = sub i32 %151, 1, !dbg !1138
  %153 = zext i32 %152 to i64, !dbg !1139
  %154 = icmp eq i64 %148, %153, !dbg !1140
  br i1 %154, label %155, label %156, !dbg !1141

; <label>:155:                                    ; preds = %147
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.102, i32 0, i32 0)), !dbg !1142
  br label %327, !dbg !1144

; <label>:156:                                    ; preds = %147
  %157 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1145
  %158 = load i64, i64* %4, align 8, !dbg !1147
  %159 = add i64 %158, 1, !dbg !1148
  %160 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %157, i64 %159, i32* %3, i32 0, i32 65507, i1 zeroext false), !dbg !1149
  br i1 %160, label %166, label %161, !dbg !1150

; <label>:161:                                    ; preds = %156
  %162 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1151
  %163 = load i64, i64* %4, align 8, !dbg !1152
  %164 = add i64 %163, 1, !dbg !1153
  %165 = call i8* @strvec_slot(%struct._vector* %162, i64 %164), !dbg !1154
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.103, i32 0, i32 0), i8* %165), !dbg !1155
  br label %172, !dbg !1157

; <label>:166:                                    ; preds = %156
  %167 = load i32, i32* %3, align 4, !dbg !1158
  %168 = trunc i32 %167 to i16, !dbg !1159
  %169 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1160
  %170 = getelementptr inbounds %struct._data, %struct._data* %169, i32 0, i32 20, !dbg !1161
  %171 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %170, i32 0, i32 3, !dbg !1162
  store i16 %168, i16* %171, align 4, !dbg !1163
  br label %172

; <label>:172:                                    ; preds = %166, %161
  %173 = load i64, i64* %4, align 8, !dbg !1164
  %174 = add i64 %173, 1, !dbg !1164
  store i64 %174, i64* %4, align 8, !dbg !1164
  br label %327, !dbg !1165

; <label>:175:                                    ; preds = %141
  %176 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1166
  %177 = load i64, i64* %4, align 8, !dbg !1168
  %178 = call i8* @strvec_slot(%struct._vector* %176, i64 %177), !dbg !1169
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0)) #7, !dbg !1170
  %180 = icmp ne i32 %179, 0, !dbg !1172
  br i1 %180, label %209, label %181, !dbg !1173

; <label>:181:                                    ; preds = %175
  %182 = load i64, i64* %4, align 8, !dbg !1174
  %183 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1177
  %184 = getelementptr inbounds %struct._vector, %struct._vector* %183, i32 0, i32 1, !dbg !1178
  %185 = load i32, i32* %184, align 4, !dbg !1178
  %186 = sub i32 %185, 1, !dbg !1179
  %187 = zext i32 %186 to i64, !dbg !1180
  %188 = icmp eq i64 %182, %187, !dbg !1181
  br i1 %188, label %189, label %190, !dbg !1182

; <label>:189:                                    ; preds = %181
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.105, i32 0, i32 0)), !dbg !1183
  br label %327, !dbg !1185

; <label>:190:                                    ; preds = %181
  %191 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1186
  %192 = load i64, i64* %4, align 8, !dbg !1188
  %193 = add i64 %192, 1, !dbg !1189
  %194 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %191, i64 %193, i32* %3, i32 0, i32 65535, i1 zeroext false), !dbg !1190
  br i1 %194, label %200, label %195, !dbg !1191

; <label>:195:                                    ; preds = %190
  %196 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1192
  %197 = load i64, i64* %4, align 8, !dbg !1193
  %198 = add i64 %197, 1, !dbg !1194
  %199 = call i8* @strvec_slot(%struct._vector* %196, i64 %198), !dbg !1195
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.106, i32 0, i32 0), i8* %199), !dbg !1196
  br label %206, !dbg !1198

; <label>:200:                                    ; preds = %190
  %201 = load i32, i32* %3, align 4, !dbg !1199
  %202 = trunc i32 %201 to i16, !dbg !1200
  %203 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1201
  %204 = getelementptr inbounds %struct._data, %struct._data* %203, i32 0, i32 20, !dbg !1202
  %205 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %204, i32 0, i32 5, !dbg !1203
  store i16 %202, i16* %205, align 8, !dbg !1204
  br label %206

; <label>:206:                                    ; preds = %200, %195
  %207 = load i64, i64* %4, align 8, !dbg !1205
  %208 = add i64 %207, 1, !dbg !1205
  store i64 %208, i64* %4, align 8, !dbg !1205
  br label %327, !dbg !1206

; <label>:209:                                    ; preds = %175
  %210 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1207
  %211 = load i64, i64* %4, align 8, !dbg !1209
  %212 = call i8* @strvec_slot(%struct._vector* %210, i64 %211), !dbg !1210
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #7, !dbg !1211
  %214 = icmp ne i32 %213, 0, !dbg !1213
  br i1 %214, label %243, label %215, !dbg !1214

; <label>:215:                                    ; preds = %209
  %216 = load i64, i64* %4, align 8, !dbg !1215
  %217 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1218
  %218 = getelementptr inbounds %struct._vector, %struct._vector* %217, i32 0, i32 1, !dbg !1219
  %219 = load i32, i32* %218, align 4, !dbg !1219
  %220 = sub i32 %219, 1, !dbg !1220
  %221 = zext i32 %220 to i64, !dbg !1221
  %222 = icmp eq i64 %216, %221, !dbg !1222
  br i1 %222, label %223, label %224, !dbg !1223

; <label>:223:                                    ; preds = %215
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.108, i32 0, i32 0)), !dbg !1224
  br label %327, !dbg !1226

; <label>:224:                                    ; preds = %215
  %225 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1227
  %226 = load i64, i64* %4, align 8, !dbg !1229
  %227 = add i64 %226, 1, !dbg !1230
  %228 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %225, i64 %227, i32* %3, i32 0, i32 255, i1 zeroext false), !dbg !1231
  br i1 %228, label %234, label %229, !dbg !1232

; <label>:229:                                    ; preds = %224
  %230 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1233
  %231 = load i64, i64* %4, align 8, !dbg !1234
  %232 = add i64 %231, 1, !dbg !1235
  %233 = call i8* @strvec_slot(%struct._vector* %230, i64 %232), !dbg !1236
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.109, i32 0, i32 0), i8* %233), !dbg !1237
  br label %240, !dbg !1239

; <label>:234:                                    ; preds = %224
  %235 = load i32, i32* %3, align 4, !dbg !1240
  %236 = trunc i32 %235 to i8, !dbg !1241
  %237 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1242
  %238 = getelementptr inbounds %struct._data, %struct._data* %237, i32 0, i32 20, !dbg !1243
  %239 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %238, i32 0, i32 6, !dbg !1244
  store i8 %236, i8* %239, align 2, !dbg !1245
  br label %240

; <label>:240:                                    ; preds = %234, %229
  %241 = load i64, i64* %4, align 8, !dbg !1246
  %242 = add i64 %241, 1, !dbg !1246
  store i64 %242, i64* %4, align 8, !dbg !1246
  br label %327, !dbg !1247

; <label>:243:                                    ; preds = %209
  %244 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1248
  %245 = load i64, i64* %4, align 8, !dbg !1250
  %246 = call i8* @strvec_slot(%struct._vector* %244, i64 %245), !dbg !1251
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0)) #7, !dbg !1252
  %248 = icmp ne i32 %247, 0, !dbg !1254
  br i1 %248, label %323, label %249, !dbg !1255

; <label>:249:                                    ; preds = %243
  %250 = load i64, i64* %4, align 8, !dbg !1256
  %251 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1259
  %252 = getelementptr inbounds %struct._vector, %struct._vector* %251, i32 0, i32 1, !dbg !1260
  %253 = load i32, i32* %252, align 4, !dbg !1260
  %254 = sub i32 %253, 1, !dbg !1261
  %255 = zext i32 %254 to i64, !dbg !1262
  %256 = icmp eq i64 %250, %255, !dbg !1263
  br i1 %256, label %257, label %258, !dbg !1264

; <label>:257:                                    ; preds = %249
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.111, i32 0, i32 0)), !dbg !1265
  br label %327, !dbg !1267

; <label>:258:                                    ; preds = %249
  %259 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1268
  %260 = load i64, i64* %4, align 8, !dbg !1270
  %261 = add i64 %260, 1, !dbg !1271
  %262 = call i8* @strvec_slot(%struct._vector* %259, i64 %261), !dbg !1272
  %263 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1273
  %264 = getelementptr inbounds %struct._data, %struct._data* %263, i32 0, i32 20, !dbg !1274
  %265 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %264, i32 0, i32 4, !dbg !1275
  %266 = call i32 @inet_stosockaddr(i8* %262, i8* null, %struct.sockaddr_storage* %265), !dbg !1276
  %267 = icmp slt i32 %266, 0, !dbg !1278
  br i1 %267, label %268, label %273, !dbg !1279

; <label>:268:                                    ; preds = %258
  %269 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1280
  %270 = load i64, i64* %4, align 8, !dbg !1281
  %271 = add i64 %270, 1, !dbg !1282
  %272 = call i8* @strvec_slot(%struct._vector* %269, i64 %271), !dbg !1283
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.112, i32 0, i32 0), i8* %272), !dbg !1284
  br label %273, !dbg !1285

; <label>:273:                                    ; preds = %268, %258
  %274 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1286
  %275 = getelementptr inbounds %struct._data, %struct._data* %274, i32 0, i32 20, !dbg !1288
  %276 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %275, i32 0, i32 4, !dbg !1289
  %277 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %276, i32 0, i32 0, !dbg !1290
  %278 = load i16, i16* %277, align 8, !dbg !1290
  %279 = zext i16 %278 to i32, !dbg !1286
  %280 = icmp eq i32 %279, 2, !dbg !1291
  br i1 %280, label %281, label %292, !dbg !1292

; <label>:281:                                    ; preds = %273
  %282 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1293
  %283 = getelementptr inbounds %struct._data, %struct._data* %282, i32 0, i32 20, !dbg !1295
  %284 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %283, i32 0, i32 4, !dbg !1296
  %285 = bitcast %struct.sockaddr_storage* %284 to %struct.sockaddr_in*, !dbg !1297
  %286 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %285, i32 0, i32 2, !dbg !1297
  %287 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %286, i32 0, i32 0, !dbg !1298
  %288 = load i32, i32* %287, align 4, !dbg !1298
  %289 = call i32 @htonl(i32 %288) #1, !dbg !1299
  %290 = and i32 %289, -268435456, !dbg !1300
  %291 = icmp eq i32 %290, -536870912, !dbg !1301
  br i1 %291, label %292, label %311, !dbg !1302

; <label>:292:                                    ; preds = %281, %273
  %293 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1303
  %294 = getelementptr inbounds %struct._data, %struct._data* %293, i32 0, i32 20, !dbg !1304
  %295 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %294, i32 0, i32 4, !dbg !1305
  %296 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %295, i32 0, i32 0, !dbg !1306
  %297 = load i16, i16* %296, align 8, !dbg !1306
  %298 = zext i16 %297 to i32, !dbg !1303
  %299 = icmp eq i32 %298, 10, !dbg !1307
  br i1 %299, label %300, label %320, !dbg !1308

; <label>:300:                                    ; preds = %292
  %301 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1309
  %302 = getelementptr inbounds %struct._data, %struct._data* %301, i32 0, i32 20, !dbg !1310
  %303 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %302, i32 0, i32 4, !dbg !1311
  %304 = bitcast %struct.sockaddr_storage* %303 to %struct.sockaddr_in6*, !dbg !1312
  %305 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %304, i32 0, i32 3, !dbg !1312
  %306 = bitcast %struct.in6_addr* %305 to i8*, !dbg !1313
  %307 = getelementptr inbounds i8, i8* %306, i64 0, !dbg !1313
  %308 = load i8, i8* %307, align 8, !dbg !1313
  %309 = zext i8 %308 to i32, !dbg !1313
  %310 = icmp eq i32 %309, 255, !dbg !1314
  br i1 %310, label %320, label %311, !dbg !1315

; <label>:311:                                    ; preds = %300, %281
  %312 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1317
  %313 = load i64, i64* %4, align 8, !dbg !1319
  %314 = add i64 %313, 1, !dbg !1320
  %315 = call i8* @strvec_slot(%struct._vector* %312, i64 %314), !dbg !1321
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.113, i32 0, i32 0), i8* %315), !dbg !1322
  %316 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1324
  %317 = getelementptr inbounds %struct._data, %struct._data* %316, i32 0, i32 20, !dbg !1325
  %318 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %317, i32 0, i32 4, !dbg !1326
  %319 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %318, i32 0, i32 0, !dbg !1327
  store i16 0, i16* %319, align 8, !dbg !1328
  br label %320, !dbg !1329

; <label>:320:                                    ; preds = %311, %300, %292
  %321 = load i64, i64* %4, align 8, !dbg !1330
  %322 = add i64 %321, 1, !dbg !1330
  store i64 %322, i64* %4, align 8, !dbg !1330
  br label %327, !dbg !1331

; <label>:323:                                    ; preds = %243
  %324 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1332
  %325 = load i64, i64* %4, align 8, !dbg !1333
  %326 = call i8* @strvec_slot(%struct._vector* %324, i64 %325), !dbg !1334
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.114, i32 0, i32 0), i8* %326), !dbg !1335
  br label %327, !dbg !1337

; <label>:327:                                    ; preds = %323, %320, %257, %240, %223, %206, %189, %172, %155, %138, %122
  %328 = load i64, i64* %4, align 8, !dbg !1338
  %329 = add i64 %328, 1, !dbg !1338
  store i64 %329, i64* %4, align 8, !dbg !1338
  br label %101, !dbg !1340, !llvm.loop !1341

; <label>:330:                                    ; preds = %10, %24, %30, %38, %60, %101
  ret void, !dbg !1342
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_mcast_group4_handler(%struct._vector*) #0 !dbg !1343 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1344, metadata !206), !dbg !1345
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %3, metadata !1346, metadata !206), !dbg !1347
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1348
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 22, !dbg !1349
  store %struct.sockaddr_in* %6, %struct.sockaddr_in** %3, align 8, !dbg !1347
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1350, metadata !206), !dbg !1351
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1352
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1353
  %9 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8, !dbg !1354
  %10 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr_storage*, !dbg !1355
  %11 = call i32 @inet_stosockaddr(i8* %8, i8* null, %struct.sockaddr_storage* %10), !dbg !1356
  store i32 %11, i32* %4, align 4, !dbg !1358
  %12 = load i32, i32* %4, align 4, !dbg !1359
  %13 = icmp slt i32 %12, 0, !dbg !1361
  br i1 %13, label %14, label %17, !dbg !1362

; <label>:14:                                     ; preds = %1
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1363
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !1365
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.115, i32 0, i32 0), i8* %16), !dbg !1366
  br label %17, !dbg !1367

; <label>:17:                                     ; preds = %14, %1
  ret void, !dbg !1368
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_mcast_group6_handler(%struct._vector*) #0 !dbg !1369 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct.sockaddr_in6*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1370, metadata !206), !dbg !1371
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %3, metadata !1372, metadata !206), !dbg !1373
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1374
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 23, !dbg !1375
  store %struct.sockaddr_in6* %6, %struct.sockaddr_in6** %3, align 8, !dbg !1373
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1376, metadata !206), !dbg !1377
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1378
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1379
  %9 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8, !dbg !1380
  %10 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr_storage*, !dbg !1381
  %11 = call i32 @inet_stosockaddr(i8* %8, i8* null, %struct.sockaddr_storage* %10), !dbg !1382
  store i32 %11, i32* %4, align 4, !dbg !1384
  %12 = load i32, i32* %4, align 4, !dbg !1385
  %13 = icmp slt i32 %12, 0, !dbg !1387
  br i1 %13, label %14, label %17, !dbg !1388

; <label>:14:                                     ; preds = %1
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1389
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !1391
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.116, i32 0, i32 0), i8* %16), !dbg !1392
  br label %17, !dbg !1393

; <label>:17:                                     ; preds = %14, %1
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_delay_handler(%struct._vector*) #0 !dbg !1395 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1396, metadata !206), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1398, metadata !206), !dbg !1399
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1400
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 4294, i1 zeroext true), !dbg !1402
  br i1 %5, label %9, label %6, !dbg !1403

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1404
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1406
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.117, i32 0, i32 0), i8* %8), !dbg !1407
  br label %14, !dbg !1409

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1410
  %11 = mul i32 %10, 1000000, !dbg !1411
  %12 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1412
  %13 = getelementptr inbounds %struct._data, %struct._data* %12, i32 0, i32 24, !dbg !1413
  store i32 %11, i32* %13, align 8, !dbg !1414
  br label %14, !dbg !1415

; <label>:14:                                     ; preds = %9, %6
  ret void, !dbg !1416
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_rep_handler(%struct._vector*) #0 !dbg !1418 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1419, metadata !206), !dbg !1420
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1421, metadata !206), !dbg !1422
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1423
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 -1, i1 zeroext true), !dbg !1425
  br i1 %5, label %9, label %6, !dbg !1426

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1427
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1429
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i32 0, i32 0), i8* %8), !dbg !1430
  br label %17, !dbg !1432

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1433
  %11 = icmp eq i32 %10, 0, !dbg !1435
  br i1 %11, label %12, label %13, !dbg !1436

; <label>:12:                                     ; preds = %9
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.119, i32 0, i32 0)), !dbg !1437
  store i32 1, i32* %3, align 4, !dbg !1439
  br label %13, !dbg !1440

; <label>:13:                                     ; preds = %12, %9
  %14 = load i32, i32* %3, align 4, !dbg !1441
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1442
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 26, !dbg !1443
  store i32 %14, i32* %16, align 8, !dbg !1444
  br label %17, !dbg !1445

; <label>:17:                                     ; preds = %13, %6
  ret void, !dbg !1446
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_refresh_handler(%struct._vector*) #0 !dbg !1448 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1449, metadata !206), !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1451, metadata !206), !dbg !1452
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1453
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 -1, i1 zeroext true), !dbg !1455
  br i1 %5, label %12, label %6, !dbg !1456

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1457
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1459
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.120, i32 0, i32 0), i8* %8), !dbg !1460
  %9 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1462
  %10 = getelementptr inbounds %struct._data, %struct._data* %9, i32 0, i32 25, !dbg !1463
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !1464
  store i64 0, i64* %11, align 8, !dbg !1465
  br label %18, !dbg !1466

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %3, align 4, !dbg !1467
  %14 = zext i32 %13 to i64, !dbg !1467
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1468
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 25, !dbg !1469
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0, !dbg !1470
  store i64 %14, i64* %17, align 8, !dbg !1471
  br label %18

; <label>:18:                                     ; preds = %12, %6
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1472
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 25, !dbg !1473
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1, !dbg !1474
  store i64 0, i64* %21, align 8, !dbg !1475
  ret void, !dbg !1476
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_refresh_rep_handler(%struct._vector*) #0 !dbg !1477 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1478, metadata !206), !dbg !1479
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1480, metadata !206), !dbg !1481
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1482
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 -1, i1 zeroext true), !dbg !1484
  br i1 %5, label %9, label %6, !dbg !1485

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1486
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1488
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.121, i32 0, i32 0), i8* %8), !dbg !1489
  br label %17, !dbg !1491

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1492
  %11 = icmp eq i32 %10, 0, !dbg !1494
  br i1 %11, label %12, label %13, !dbg !1495

; <label>:12:                                     ; preds = %9
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.122, i32 0, i32 0)), !dbg !1496
  store i32 1, i32* %3, align 4, !dbg !1498
  br label %13, !dbg !1499

; <label>:13:                                     ; preds = %12, %9
  %14 = load i32, i32* %3, align 4, !dbg !1500
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1501
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 27, !dbg !1502
  store i32 %14, i32* %16, align 4, !dbg !1503
  br label %17, !dbg !1504

; <label>:17:                                     ; preds = %13, %6
  ret void, !dbg !1505
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_lower_prio_delay_handler(%struct._vector*) #0 !dbg !1507 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1508, metadata !206), !dbg !1509
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1510, metadata !206), !dbg !1511
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1512
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 4294, i1 zeroext true), !dbg !1514
  br i1 %5, label %9, label %6, !dbg !1515

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1516
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1518
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.123, i32 0, i32 0), i8* %8), !dbg !1519
  br label %14, !dbg !1521

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1522
  %11 = mul i32 %10, 1000000, !dbg !1523
  %12 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1524
  %13 = getelementptr inbounds %struct._data, %struct._data* %12, i32 0, i32 28, !dbg !1525
  store i32 %11, i32* %13, align 8, !dbg !1526
  br label %14, !dbg !1527

; <label>:14:                                     ; preds = %9, %6
  ret void, !dbg !1528
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_lower_prio_rep_handler(%struct._vector*) #0 !dbg !1530 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1531, metadata !206), !dbg !1532
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1533, metadata !206), !dbg !1534
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1535
  %5 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %4, i64 1, i32* %3, i32 0, i32 2147483647, i1 zeroext true), !dbg !1537
  br i1 %5, label %9, label %6, !dbg !1538

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1539
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1541
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.124, i32 0, i32 0), i8* %8), !dbg !1542
  br label %13, !dbg !1544

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1545
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1546
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 29, !dbg !1547
  store i32 %10, i32* %12, align 4, !dbg !1548
  br label %13, !dbg !1549

; <label>:13:                                     ; preds = %9, %6
  ret void, !dbg !1550
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_garp_interval_handler(%struct._vector*) #0 !dbg !1552 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca double, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1553, metadata !206), !dbg !1554
  call void @llvm.dbg.declare(metadata double* %3, metadata !1555, metadata !206), !dbg !1557
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1558
  %5 = call zeroext i1 @read_double_strvec(%struct._vector* %4, i64 1, double* %3, double 1.000000e-06, double 4.294000e+03, i1 zeroext true), !dbg !1560
  br i1 %5, label %9, label %6, !dbg !1561

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1562
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1563
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i32 0, i32 0), i8* %8), !dbg !1564
  br label %15, !dbg !1566

; <label>:9:                                      ; preds = %1
  %10 = load double, double* %3, align 8, !dbg !1567
  %11 = fmul double %10, 1.000000e+06, !dbg !1568
  %12 = fptoui double %11 to i32, !dbg !1569
  %13 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1570
  %14 = getelementptr inbounds %struct._data, %struct._data* %13, i32 0, i32 30, !dbg !1571
  store i32 %12, i32* %14, align 8, !dbg !1572
  br label %15

; <label>:15:                                     ; preds = %9, %6
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1573
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 30, !dbg !1575
  %18 = load i32, i32* %17, align 8, !dbg !1575
  %19 = icmp uge i32 %18, 1000000, !dbg !1576
  br i1 %19, label %20, label %23, !dbg !1577

; <label>:20:                                     ; preds = %15
  %21 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1578
  %22 = call i8* @strvec_slot(%struct._vector* %21, i64 1), !dbg !1579
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.126, i32 0, i32 0), i8* %22), !dbg !1580
  br label %23, !dbg !1582

; <label>:23:                                     ; preds = %20, %15
  ret void, !dbg !1583
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_gna_interval_handler(%struct._vector*) #0 !dbg !1584 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca double, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1585, metadata !206), !dbg !1586
  call void @llvm.dbg.declare(metadata double* %3, metadata !1587, metadata !206), !dbg !1588
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1589
  %5 = call zeroext i1 @read_double_strvec(%struct._vector* %4, i64 1, double* %3, double 1.000000e-06, double 4.294000e+03, i1 zeroext true), !dbg !1591
  br i1 %5, label %9, label %6, !dbg !1592

; <label>:6:                                      ; preds = %1
  %7 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1593
  %8 = call i8* @strvec_slot(%struct._vector* %7, i64 1), !dbg !1594
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.127, i32 0, i32 0), i8* %8), !dbg !1595
  br label %15, !dbg !1597

; <label>:9:                                      ; preds = %1
  %10 = load double, double* %3, align 8, !dbg !1598
  %11 = fmul double %10, 1.000000e+06, !dbg !1599
  %12 = fptoui double %11 to i32, !dbg !1600
  %13 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1601
  %14 = getelementptr inbounds %struct._data, %struct._data* %13, i32 0, i32 31, !dbg !1602
  store i32 %12, i32* %14, align 4, !dbg !1603
  br label %15

; <label>:15:                                     ; preds = %9, %6
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1604
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 31, !dbg !1606
  %18 = load i32, i32* %17, align 4, !dbg !1606
  %19 = icmp uge i32 %18, 1000000, !dbg !1607
  br i1 %19, label %20, label %23, !dbg !1608

; <label>:20:                                     ; preds = %15
  %21 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1609
  %22 = call i8* @strvec_slot(%struct._vector* %21, i64 1), !dbg !1610
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.128, i32 0, i32 0), i8* %22), !dbg !1611
  br label %23, !dbg !1613

; <label>:23:                                     ; preds = %20, %15
  ret void, !dbg !1614
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_lower_prio_no_advert_handler(%struct._vector*) #0 !dbg !1615 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1616, metadata !206), !dbg !1617
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1618, metadata !206), !dbg !1619
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1620
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !1622
  %6 = load i32, i32* %5, align 4, !dbg !1622
  %7 = icmp uge i32 %6, 2, !dbg !1623
  br i1 %7, label %8, label %22, !dbg !1624

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1625
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !1627
  %11 = call i32 @check_true_false(i8* %10), !dbg !1628
  store i32 %11, i32* %3, align 4, !dbg !1630
  %12 = load i32, i32* %3, align 4, !dbg !1631
  %13 = icmp slt i32 %12, 0, !dbg !1633
  br i1 %13, label %14, label %15, !dbg !1634

; <label>:14:                                     ; preds = %8
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.129, i32 0, i32 0)), !dbg !1635
  br label %21, !dbg !1635

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %3, align 4, !dbg !1636
  %17 = icmp ne i32 %16, 0, !dbg !1636
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1637
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 32, !dbg !1638
  %20 = zext i1 %17 to i8, !dbg !1639
  store i8 %20, i8* %19, align 8, !dbg !1639
  br label %21

; <label>:21:                                     ; preds = %15, %14
  br label %25, !dbg !1640

; <label>:22:                                     ; preds = %1
  %23 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1641
  %24 = getelementptr inbounds %struct._data, %struct._data* %23, i32 0, i32 32, !dbg !1642
  store i8 1, i8* %24, align 8, !dbg !1643
  br label %25

; <label>:25:                                     ; preds = %22, %21
  ret void, !dbg !1644
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_higher_prio_send_advert_handler(%struct._vector*) #0 !dbg !1645 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1646, metadata !206), !dbg !1647
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1648, metadata !206), !dbg !1649
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1650
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !1652
  %6 = load i32, i32* %5, align 4, !dbg !1652
  %7 = icmp uge i32 %6, 2, !dbg !1653
  br i1 %7, label %8, label %22, !dbg !1654

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1655
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !1657
  %11 = call i32 @check_true_false(i8* %10), !dbg !1658
  store i32 %11, i32* %3, align 4, !dbg !1660
  %12 = load i32, i32* %3, align 4, !dbg !1661
  %13 = icmp slt i32 %12, 0, !dbg !1663
  br i1 %13, label %14, label %15, !dbg !1664

; <label>:14:                                     ; preds = %8
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.130, i32 0, i32 0)), !dbg !1665
  br label %21, !dbg !1665

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %3, align 4, !dbg !1666
  %17 = icmp ne i32 %16, 0, !dbg !1666
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1667
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 33, !dbg !1668
  %20 = zext i1 %17 to i8, !dbg !1669
  store i8 %20, i8* %19, align 1, !dbg !1669
  br label %21

; <label>:21:                                     ; preds = %15, %14
  br label %25, !dbg !1670

; <label>:22:                                     ; preds = %1
  %23 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1671
  %24 = getelementptr inbounds %struct._data, %struct._data* %23, i32 0, i32 33, !dbg !1672
  store i8 1, i8* %24, align 1, !dbg !1673
  br label %25

; <label>:25:                                     ; preds = %22, %21
  ret void, !dbg !1674
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_version_handler(%struct._vector*) #0 !dbg !1675 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1676, metadata !206), !dbg !1677
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1678, metadata !206), !dbg !1679
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1680
  %5 = call zeroext i1 @read_int_strvec(%struct._vector* %4, i64 1, i32* %3, i32 2, i32 3, i1 zeroext true), !dbg !1682
  br i1 %5, label %7, label %6, !dbg !1683

; <label>:6:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.131, i32 0, i32 0)), !dbg !1684
  br label %11, !dbg !1686

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !1687
  %9 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1688
  %10 = getelementptr inbounds %struct._data, %struct._data* %9, i32 0, i32 34, !dbg !1689
  store i32 %8, i32* %10, align 4, !dbg !1690
  br label %11, !dbg !1691

; <label>:11:                                     ; preds = %7, %6
  ret void, !dbg !1692
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_iptables_handler(%struct._vector*) #0 !dbg !1694 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1695, metadata !206), !dbg !1696
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1697
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 35, !dbg !1698
  %5 = getelementptr inbounds [29 x i8], [29 x i8]* %4, i64 0, i64 0, !dbg !1697
  store i8 0, i8* %5, align 8, !dbg !1699
  %6 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1700
  %7 = getelementptr inbounds %struct._data, %struct._data* %6, i32 0, i32 36, !dbg !1701
  %8 = getelementptr inbounds [29 x i8], [29 x i8]* %7, i64 0, i64 0, !dbg !1700
  store i8 0, i8* %8, align 1, !dbg !1702
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1703
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 1, !dbg !1705
  %11 = load i32, i32* %10, align 4, !dbg !1705
  %12 = icmp uge i32 %11, 2, !dbg !1706
  br i1 %12, label %13, label %26, !dbg !1707

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1708
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !1711
  %16 = call i64 @strlen(i8* %15) #7, !dbg !1712
  %17 = icmp uge i64 %16, 28, !dbg !1714
  br i1 %17, label %18, label %19, !dbg !1715

; <label>:18:                                     ; preds = %13
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.132, i32 0, i32 0)), !dbg !1716
  br label %44, !dbg !1718

; <label>:19:                                     ; preds = %13
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1719
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 35, !dbg !1720
  %22 = getelementptr inbounds [29 x i8], [29 x i8]* %21, i32 0, i32 0, !dbg !1719
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1721
  %24 = call i8* @strvec_slot(%struct._vector* %23, i64 1), !dbg !1722
  %25 = call i8* @strcpy(i8* %22, i8* %24) #6, !dbg !1723
  br label %26, !dbg !1725

; <label>:26:                                     ; preds = %19, %1
  %27 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1726
  %28 = getelementptr inbounds %struct._vector, %struct._vector* %27, i32 0, i32 1, !dbg !1728
  %29 = load i32, i32* %28, align 4, !dbg !1728
  %30 = icmp uge i32 %29, 3, !dbg !1729
  br i1 %30, label %31, label %44, !dbg !1730

; <label>:31:                                     ; preds = %26
  %32 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1731
  %33 = call i8* @strvec_slot(%struct._vector* %32, i64 2), !dbg !1734
  %34 = call i64 @strlen(i8* %33) #7, !dbg !1735
  %35 = icmp uge i64 %34, 28, !dbg !1737
  br i1 %35, label %36, label %37, !dbg !1738

; <label>:36:                                     ; preds = %31
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.133, i32 0, i32 0)), !dbg !1739
  br label %44, !dbg !1741

; <label>:37:                                     ; preds = %31
  %38 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1742
  %39 = getelementptr inbounds %struct._data, %struct._data* %38, i32 0, i32 36, !dbg !1743
  %40 = getelementptr inbounds [29 x i8], [29 x i8]* %39, i32 0, i32 0, !dbg !1742
  %41 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1744
  %42 = call i8* @strvec_slot(%struct._vector* %41, i64 2), !dbg !1745
  %43 = call i8* @strcpy(i8* %40, i8* %42) #6, !dbg !1746
  br label %44, !dbg !1748

; <label>:44:                                     ; preds = %18, %36, %37, %26
  ret void, !dbg !1749
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_ipsets_handler(%struct._vector*) #0 !dbg !1750 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1751, metadata !206), !dbg !1752
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1753, metadata !206), !dbg !1754
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1755
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !1757
  %6 = load i32, i32* %5, align 4, !dbg !1757
  %7 = icmp uge i32 %6, 2, !dbg !1758
  br i1 %7, label %8, label %21, !dbg !1759

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1760
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !1763
  %11 = call i64 @strlen(i8* %10) #7, !dbg !1764
  %12 = icmp uge i64 %11, 31, !dbg !1766
  br i1 %12, label %13, label %14, !dbg !1767

; <label>:13:                                     ; preds = %8
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.134, i32 0, i32 0)), !dbg !1768
  br label %109, !dbg !1770

; <label>:14:                                     ; preds = %8
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1771
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 38, !dbg !1772
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0, !dbg !1771
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1773
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !1774
  %20 = call i8* @strcpy(i8* %17, i8* %19) #6, !dbg !1775
  br label %24, !dbg !1777

; <label>:21:                                     ; preds = %1
  %22 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1778
  %23 = getelementptr inbounds %struct._data, %struct._data* %22, i32 0, i32 37, !dbg !1780
  store i8 0, i8* %23, align 2, !dbg !1781
  br label %109, !dbg !1782

; <label>:24:                                     ; preds = %14
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1783
  %26 = getelementptr inbounds %struct._vector, %struct._vector* %25, i32 0, i32 1, !dbg !1785
  %27 = load i32, i32* %26, align 4, !dbg !1785
  %28 = icmp uge i32 %27, 3, !dbg !1786
  br i1 %28, label %29, label %42, !dbg !1787

; <label>:29:                                     ; preds = %24
  %30 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1788
  %31 = call i8* @strvec_slot(%struct._vector* %30, i64 2), !dbg !1791
  %32 = call i64 @strlen(i8* %31) #7, !dbg !1792
  %33 = icmp uge i64 %32, 31, !dbg !1794
  br i1 %33, label %34, label %35, !dbg !1795

; <label>:34:                                     ; preds = %29
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.135, i32 0, i32 0)), !dbg !1796
  br label %109, !dbg !1798

; <label>:35:                                     ; preds = %29
  %36 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1799
  %37 = getelementptr inbounds %struct._data, %struct._data* %36, i32 0, i32 39, !dbg !1800
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %37, i32 0, i32 0, !dbg !1799
  %39 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1801
  %40 = call i8* @strvec_slot(%struct._vector* %39, i64 2), !dbg !1802
  %41 = call i8* @strcpy(i8* %38, i8* %40) #6, !dbg !1803
  br label %57, !dbg !1805

; <label>:42:                                     ; preds = %24
  %43 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1806
  %44 = getelementptr inbounds %struct._data, %struct._data* %43, i32 0, i32 39, !dbg !1808
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %44, i32 0, i32 0, !dbg !1806
  %46 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1809
  %47 = getelementptr inbounds %struct._data, %struct._data* %46, i32 0, i32 38, !dbg !1810
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %47, i32 0, i32 0, !dbg !1809
  %49 = call i8* @strcpy(i8* %45, i8* %48) #6, !dbg !1811
  %50 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1812
  %51 = getelementptr inbounds %struct._data, %struct._data* %50, i32 0, i32 39, !dbg !1813
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %51, i64 0, i64 30, !dbg !1812
  store i8 0, i8* %52, align 1, !dbg !1814
  %53 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1815
  %54 = getelementptr inbounds %struct._data, %struct._data* %53, i32 0, i32 39, !dbg !1816
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %54, i32 0, i32 0, !dbg !1815
  %56 = call i8* @strcat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0)) #6, !dbg !1817
  br label %57

; <label>:57:                                     ; preds = %42, %35
  %58 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1818
  %59 = getelementptr inbounds %struct._vector, %struct._vector* %58, i32 0, i32 1, !dbg !1820
  %60 = load i32, i32* %59, align 4, !dbg !1820
  %61 = icmp uge i32 %60, 4, !dbg !1821
  br i1 %61, label %62, label %75, !dbg !1822

; <label>:62:                                     ; preds = %57
  %63 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1823
  %64 = call i8* @strvec_slot(%struct._vector* %63, i64 3), !dbg !1826
  %65 = call i64 @strlen(i8* %64) #7, !dbg !1827
  %66 = icmp uge i64 %65, 31, !dbg !1829
  br i1 %66, label %67, label %68, !dbg !1830

; <label>:67:                                     ; preds = %62
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.137, i32 0, i32 0)), !dbg !1831
  br label %109, !dbg !1833

; <label>:68:                                     ; preds = %62
  %69 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1834
  %70 = getelementptr inbounds %struct._data, %struct._data* %69, i32 0, i32 40, !dbg !1835
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %70, i32 0, i32 0, !dbg !1834
  %72 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1836
  %73 = call i8* @strvec_slot(%struct._vector* %72, i64 3), !dbg !1837
  %74 = call i8* @strcpy(i8* %71, i8* %73) #6, !dbg !1838
  br label %109, !dbg !1840

; <label>:75:                                     ; preds = %57
  %76 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1841
  %77 = getelementptr inbounds %struct._data, %struct._data* %76, i32 0, i32 40, !dbg !1843
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %77, i32 0, i32 0, !dbg !1841
  %79 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1844
  %80 = getelementptr inbounds %struct._data, %struct._data* %79, i32 0, i32 39, !dbg !1845
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %80, i32 0, i32 0, !dbg !1844
  %82 = call i8* @strcpy(i8* %78, i8* %81) #6, !dbg !1846
  %83 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1847
  %84 = getelementptr inbounds %struct._data, %struct._data* %83, i32 0, i32 40, !dbg !1848
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %84, i32 0, i32 0, !dbg !1847
  %86 = call i64 @strlen(i8* %85) #7, !dbg !1849
  store i64 %86, i64* %3, align 8, !dbg !1850
  %87 = load i64, i64* %3, align 8, !dbg !1851
  %88 = sub i64 %87, 1, !dbg !1853
  %89 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1854
  %90 = getelementptr inbounds %struct._data, %struct._data* %89, i32 0, i32 40, !dbg !1855
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %90, i64 0, i64 %88, !dbg !1854
  %92 = load i8, i8* %91, align 1, !dbg !1854
  %93 = sext i8 %92 to i32, !dbg !1854
  %94 = icmp eq i32 %93, 54, !dbg !1856
  br i1 %94, label %95, label %101, !dbg !1857

; <label>:95:                                     ; preds = %75
  %96 = load i64, i64* %3, align 8, !dbg !1858
  %97 = add i64 %96, -1, !dbg !1858
  store i64 %97, i64* %3, align 8, !dbg !1858
  %98 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1859
  %99 = getelementptr inbounds %struct._data, %struct._data* %98, i32 0, i32 40, !dbg !1860
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %99, i64 0, i64 %97, !dbg !1859
  store i8 0, i8* %100, align 1, !dbg !1861
  br label %101, !dbg !1859

; <label>:101:                                    ; preds = %95, %75
  %102 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1862
  %103 = getelementptr inbounds %struct._data, %struct._data* %102, i32 0, i32 40, !dbg !1863
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %103, i64 0, i64 27, !dbg !1862
  store i8 0, i8* %104, align 1, !dbg !1864
  %105 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1865
  %106 = getelementptr inbounds %struct._data, %struct._data* %105, i32 0, i32 40, !dbg !1866
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %106, i32 0, i32 0, !dbg !1865
  %108 = call i8* @strcat(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0)) #6, !dbg !1867
  br label %109

; <label>:109:                                    ; preds = %13, %21, %34, %67, %101, %68
  ret void, !dbg !1868
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_check_unicast_src_handler(%struct._vector*) #0 !dbg !1869 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1870, metadata !206), !dbg !1871
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1872
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 41, !dbg !1873
  store i8 1, i8* %4, align 1, !dbg !1874
  ret void, !dbg !1875
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_check_adv_addr_handler(%struct._vector*) #0 !dbg !1876 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1877, metadata !206), !dbg !1878
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1879
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 42, !dbg !1880
  store i8 1, i8* %4, align 4, !dbg !1881
  ret void, !dbg !1882
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_strict_handler(%struct._vector*) #0 !dbg !1883 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1884, metadata !206), !dbg !1885
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1886
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 43, !dbg !1887
  store i8 1, i8* %4, align 1, !dbg !1888
  ret void, !dbg !1889
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_prio_handler(%struct._vector*) #0 !dbg !1890 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1891, metadata !206), !dbg !1892
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1893
  %4 = call signext i8 @get_priority(%struct._vector* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)), !dbg !1894
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1895
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 45, !dbg !1896
  store i8 %4, i8* %6, align 1, !dbg !1897
  ret void, !dbg !1898
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_no_swap_handler(%struct._vector*) #0 !dbg !1899 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1900, metadata !206), !dbg !1901
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1902
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 46, !dbg !1903
  store i8 1, i8* %4, align 8, !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_rt_priority_handler(%struct._vector*) #0 !dbg !1906 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1907, metadata !206), !dbg !1908
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1909, metadata !206), !dbg !1910
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1911
  %5 = call i32 @get_realtime_priority(%struct._vector* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)), !dbg !1912
  store i32 %5, i32* %3, align 4, !dbg !1910
  %6 = load i32, i32* %3, align 4, !dbg !1913
  %7 = icmp sge i32 %6, 0, !dbg !1915
  br i1 %7, label %8, label %12, !dbg !1916

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !1917
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1918
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 47, !dbg !1919
  store i32 %9, i32* %11, align 4, !dbg !1920
  br label %12, !dbg !1918

; <label>:12:                                     ; preds = %8, %1
  ret void, !dbg !1921
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_rt_rlimit_handler(%struct._vector*) #0 !dbg !1922 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1923, metadata !206), !dbg !1924
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1925
  %4 = call i64 @get_rt_rlimit(%struct._vector* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)), !dbg !1926
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1927
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 48, !dbg !1928
  store i64 %4, i64* %6, align 8, !dbg !1929
  ret void, !dbg !1930
}

; Function Attrs: nounwind uwtable
define internal void @global_notify_fifo(%struct._vector*) #0 !dbg !1931 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1932, metadata !206), !dbg !1933
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1934
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1935
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 54, !dbg !1936
  call void @notify_fifo(%struct._vector* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.147, i32 0, i32 0), %struct._notify_fifo* %5), !dbg !1937
  ret void, !dbg !1938
}

; Function Attrs: nounwind uwtable
define internal void @global_notify_fifo_script(%struct._vector*) #0 !dbg !1939 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1940, metadata !206), !dbg !1941
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1942
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1943
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 54, !dbg !1944
  call void @notify_fifo_script(%struct._vector* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.147, i32 0, i32 0), %struct._notify_fifo* %5), !dbg !1945
  ret void, !dbg !1946
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_fifo(%struct._vector*) #0 !dbg !1947 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1948, metadata !206), !dbg !1949
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1950
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1951
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 55, !dbg !1952
  call void @notify_fifo(%struct._vector* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), %struct._notify_fifo* %5), !dbg !1953
  ret void, !dbg !1954
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_notify_fifo_script(%struct._vector*) #0 !dbg !1955 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1956, metadata !206), !dbg !1957
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1958
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1959
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 55, !dbg !1960
  call void @notify_fifo_script(%struct._vector* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), %struct._notify_fifo* %5), !dbg !1961
  ret void, !dbg !1962
}

; Function Attrs: nounwind uwtable
define internal void @lvs_notify_fifo(%struct._vector*) #0 !dbg !1963 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1964, metadata !206), !dbg !1965
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1966
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1967
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 56, !dbg !1968
  call void @notify_fifo(%struct._vector* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), %struct._notify_fifo* %5), !dbg !1969
  ret void, !dbg !1970
}

; Function Attrs: nounwind uwtable
define internal void @lvs_notify_fifo_script(%struct._vector*) #0 !dbg !1971 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1972, metadata !206), !dbg !1973
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1974
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1975
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 56, !dbg !1976
  call void @notify_fifo_script(%struct._vector* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), %struct._notify_fifo* %5), !dbg !1977
  ret void, !dbg !1978
}

; Function Attrs: nounwind uwtable
define internal void @checker_prio_handler(%struct._vector*) #0 !dbg !1979 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1980, metadata !206), !dbg !1981
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1982
  %4 = call signext i8 @get_priority(%struct._vector* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0)), !dbg !1983
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1984
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 50, !dbg !1985
  store i8 %4, i8* %6, align 1, !dbg !1986
  ret void, !dbg !1987
}

; Function Attrs: nounwind uwtable
define internal void @checker_no_swap_handler(%struct._vector*) #0 !dbg !1988 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1989, metadata !206), !dbg !1990
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1991
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 51, !dbg !1992
  store i8 1, i8* %4, align 2, !dbg !1993
  ret void, !dbg !1994
}

; Function Attrs: nounwind uwtable
define internal void @checker_rt_priority_handler(%struct._vector*) #0 !dbg !1995 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1996, metadata !206), !dbg !1997
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1998, metadata !206), !dbg !1999
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2000
  %5 = call i32 @get_realtime_priority(%struct._vector* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0)), !dbg !2001
  store i32 %5, i32* %3, align 4, !dbg !1999
  %6 = load i32, i32* %3, align 4, !dbg !2002
  %7 = icmp sge i32 %6, 0, !dbg !2004
  br i1 %7, label %8, label %12, !dbg !2005

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !2006
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2007
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 52, !dbg !2008
  store i32 %9, i32* %11, align 4, !dbg !2009
  br label %12, !dbg !2007

; <label>:12:                                     ; preds = %8, %1
  ret void, !dbg !2010
}

; Function Attrs: nounwind uwtable
define internal void @checker_rt_rlimit_handler(%struct._vector*) #0 !dbg !2011 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2012, metadata !206), !dbg !2013
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2014
  %4 = call i64 @get_rt_rlimit(%struct._vector* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0)), !dbg !2015
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2016
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 53, !dbg !2017
  store i64 %4, i64* %6, align 8, !dbg !2018
  ret void, !dbg !2019
}

; Function Attrs: nounwind uwtable
define internal void @script_user_handler(%struct._vector*) #0 !dbg !2020 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2021, metadata !206), !dbg !2022
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2023
  %4 = getelementptr inbounds %struct._vector, %struct._vector* %3, i32 0, i32 1, !dbg !2025
  %5 = load i32, i32* %4, align 4, !dbg !2025
  %6 = icmp ult i32 %5, 2, !dbg !2026
  br i1 %6, label %7, label %8, !dbg !2027

; <label>:7:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.155, i32 0, i32 0)), !dbg !2028
  br label %23, !dbg !2030

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2031
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !2033
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2034
  %12 = getelementptr inbounds %struct._vector, %struct._vector* %11, i32 0, i32 1, !dbg !2035
  %13 = load i32, i32* %12, align 4, !dbg !2035
  %14 = icmp ugt i32 %13, 2, !dbg !2036
  br i1 %14, label %15, label %18, !dbg !2037

; <label>:15:                                     ; preds = %8
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2038
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 2), !dbg !2040
  br label %19, !dbg !2041

; <label>:18:                                     ; preds = %8
  br label %19, !dbg !2042

; <label>:19:                                     ; preds = %18, %15
  %20 = phi i8* [ %17, %15 ], [ null, %18 ], !dbg !2044
  %21 = call zeroext i1 @set_default_script_user(i8* %10, i8* %20), !dbg !2046
  br i1 %21, label %22, label %23, !dbg !2046

; <label>:22:                                     ; preds = %19
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.156, i32 0, i32 0)), !dbg !2047
  br label %23, !dbg !2047

; <label>:23:                                     ; preds = %7, %22, %19
  ret void, !dbg !2048
}

; Function Attrs: nounwind uwtable
define internal void @script_security_handler(%struct._vector*) #0 !dbg !2049 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2050, metadata !206), !dbg !2051
  store i8 1, i8* @script_security, align 1, !dbg !2052
  ret void, !dbg !2053
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_netlink_cmd_rcv_bufs_handler(%struct._vector*) #0 !dbg !2054 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2055, metadata !206), !dbg !2056
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2057, metadata !206), !dbg !2058
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2059
  %5 = icmp ne %struct._vector* %4, null, !dbg !2059
  br i1 %5, label %7, label %6, !dbg !2061

; <label>:6:                                      ; preds = %1
  br label %16, !dbg !2062

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2063
  %9 = call i32 @get_netlink_rcv_bufs_size(%struct._vector* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.157, i32 0, i32 0)), !dbg !2064
  store i32 %9, i32* %3, align 4, !dbg !2065
  %10 = load i32, i32* %3, align 4, !dbg !2066
  %11 = icmp ne i32 %10, 0, !dbg !2066
  br i1 %11, label %12, label %16, !dbg !2068

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !dbg !2069
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2070
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 57, !dbg !2071
  store i32 %13, i32* %15, align 8, !dbg !2072
  br label %16, !dbg !2070

; <label>:16:                                     ; preds = %6, %12, %7
  ret void, !dbg !2073
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_netlink_cmd_rcv_bufs_force_handler(%struct._vector*) #0 !dbg !2074 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2075, metadata !206), !dbg !2076
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2077, metadata !206), !dbg !2078
  store i32 1, i32* %3, align 4, !dbg !2078
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2079
  %5 = icmp ne %struct._vector* %4, null, !dbg !2079
  br i1 %5, label %7, label %6, !dbg !2081

; <label>:6:                                      ; preds = %1
  br label %28, !dbg !2082

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2083
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 1, !dbg !2085
  %10 = load i32, i32* %9, align 4, !dbg !2085
  %11 = icmp uge i32 %10, 2, !dbg !2086
  br i1 %11, label %12, label %22, !dbg !2087

; <label>:12:                                     ; preds = %7
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2088
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !2090
  %15 = call i32 @check_true_false(i8* %14), !dbg !2091
  store i32 %15, i32* %3, align 4, !dbg !2093
  %16 = load i32, i32* %3, align 4, !dbg !2094
  %17 = icmp slt i32 %16, 0, !dbg !2096
  br i1 %17, label %18, label %21, !dbg !2097

; <label>:18:                                     ; preds = %12
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2098
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2100
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.160, i32 0, i32 0), i8* %20), !dbg !2101
  br label %28, !dbg !2103

; <label>:21:                                     ; preds = %12
  br label %22, !dbg !2104

; <label>:22:                                     ; preds = %21, %7
  %23 = load i32, i32* %3, align 4, !dbg !2105
  %24 = icmp ne i32 %23, 0, !dbg !2105
  %25 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2106
  %26 = getelementptr inbounds %struct._data, %struct._data* %25, i32 0, i32 58, !dbg !2107
  %27 = zext i1 %24 to i8, !dbg !2108
  store i8 %27, i8* %26, align 4, !dbg !2108
  br label %28, !dbg !2109

; <label>:28:                                     ; preds = %22, %18, %6
  ret void, !dbg !2110
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_netlink_monitor_rcv_bufs_handler(%struct._vector*) #0 !dbg !2112 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2113, metadata !206), !dbg !2114
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2115, metadata !206), !dbg !2116
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2117
  %5 = icmp ne %struct._vector* %4, null, !dbg !2117
  br i1 %5, label %7, label %6, !dbg !2119

; <label>:6:                                      ; preds = %1
  br label %16, !dbg !2120

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2121
  %9 = call i32 @get_netlink_rcv_bufs_size(%struct._vector* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.161, i32 0, i32 0)), !dbg !2122
  store i32 %9, i32* %3, align 4, !dbg !2123
  %10 = load i32, i32* %3, align 4, !dbg !2124
  %11 = icmp ne i32 %10, 0, !dbg !2124
  br i1 %11, label %12, label %16, !dbg !2126

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !dbg !2127
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2128
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 59, !dbg !2129
  store i32 %13, i32* %15, align 8, !dbg !2130
  br label %16, !dbg !2128

; <label>:16:                                     ; preds = %6, %12, %7
  ret void, !dbg !2131
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_netlink_monitor_rcv_bufs_force_handler(%struct._vector*) #0 !dbg !2132 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2133, metadata !206), !dbg !2134
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2135, metadata !206), !dbg !2136
  store i32 1, i32* %3, align 4, !dbg !2136
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2137
  %5 = icmp ne %struct._vector* %4, null, !dbg !2137
  br i1 %5, label %7, label %6, !dbg !2139

; <label>:6:                                      ; preds = %1
  br label %28, !dbg !2140

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2141
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 1, !dbg !2143
  %10 = load i32, i32* %9, align 4, !dbg !2143
  %11 = icmp uge i32 %10, 2, !dbg !2144
  br i1 %11, label %12, label %22, !dbg !2145

; <label>:12:                                     ; preds = %7
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2146
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !2148
  %15 = call i32 @check_true_false(i8* %14), !dbg !2149
  store i32 %15, i32* %3, align 4, !dbg !2151
  %16 = load i32, i32* %3, align 4, !dbg !2152
  %17 = icmp slt i32 %16, 0, !dbg !2154
  br i1 %17, label %18, label %21, !dbg !2155

; <label>:18:                                     ; preds = %12
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2156
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2158
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.162, i32 0, i32 0), i8* %20), !dbg !2159
  br label %28, !dbg !2161

; <label>:21:                                     ; preds = %12
  br label %22, !dbg !2162

; <label>:22:                                     ; preds = %21, %7
  %23 = load i32, i32* %3, align 4, !dbg !2163
  %24 = icmp ne i32 %23, 0, !dbg !2163
  %25 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2164
  %26 = getelementptr inbounds %struct._data, %struct._data* %25, i32 0, i32 60, !dbg !2165
  %27 = zext i1 %24 to i8, !dbg !2166
  store i8 %27, i8* %26, align 4, !dbg !2166
  br label %28, !dbg !2167

; <label>:28:                                     ; preds = %22, %18, %6
  ret void, !dbg !2168
}

; Function Attrs: nounwind uwtable
define internal void @lvs_netlink_cmd_rcv_bufs_handler(%struct._vector*) #0 !dbg !2170 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2171, metadata !206), !dbg !2172
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2173, metadata !206), !dbg !2174
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2175
  %5 = icmp ne %struct._vector* %4, null, !dbg !2175
  br i1 %5, label %7, label %6, !dbg !2177

; <label>:6:                                      ; preds = %1
  br label %16, !dbg !2178

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2179
  %9 = call i32 @get_netlink_rcv_bufs_size(%struct._vector* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.163, i32 0, i32 0)), !dbg !2180
  store i32 %9, i32* %3, align 4, !dbg !2181
  %10 = load i32, i32* %3, align 4, !dbg !2182
  %11 = icmp ne i32 %10, 0, !dbg !2182
  br i1 %11, label %12, label %16, !dbg !2184

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !dbg !2185
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2186
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 61, !dbg !2187
  store i32 %13, i32* %15, align 8, !dbg !2188
  br label %16, !dbg !2186

; <label>:16:                                     ; preds = %6, %12, %7
  ret void, !dbg !2189
}

; Function Attrs: nounwind uwtable
define internal void @lvs_netlink_cmd_rcv_bufs_force_handler(%struct._vector*) #0 !dbg !2190 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2191, metadata !206), !dbg !2192
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2193, metadata !206), !dbg !2194
  store i32 1, i32* %3, align 4, !dbg !2194
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2195
  %5 = icmp ne %struct._vector* %4, null, !dbg !2195
  br i1 %5, label %7, label %6, !dbg !2197

; <label>:6:                                      ; preds = %1
  br label %28, !dbg !2198

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2199
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 1, !dbg !2201
  %10 = load i32, i32* %9, align 4, !dbg !2201
  %11 = icmp uge i32 %10, 2, !dbg !2202
  br i1 %11, label %12, label %22, !dbg !2203

; <label>:12:                                     ; preds = %7
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2204
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !2206
  %15 = call i32 @check_true_false(i8* %14), !dbg !2207
  store i32 %15, i32* %3, align 4, !dbg !2209
  %16 = load i32, i32* %3, align 4, !dbg !2210
  %17 = icmp slt i32 %16, 0, !dbg !2212
  br i1 %17, label %18, label %21, !dbg !2213

; <label>:18:                                     ; preds = %12
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2214
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2216
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.164, i32 0, i32 0), i8* %20), !dbg !2217
  br label %28, !dbg !2219

; <label>:21:                                     ; preds = %12
  br label %22, !dbg !2220

; <label>:22:                                     ; preds = %21, %7
  %23 = load i32, i32* %3, align 4, !dbg !2221
  %24 = icmp ne i32 %23, 0, !dbg !2221
  %25 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2222
  %26 = getelementptr inbounds %struct._data, %struct._data* %25, i32 0, i32 62, !dbg !2223
  %27 = zext i1 %24 to i8, !dbg !2224
  store i8 %27, i8* %26, align 4, !dbg !2224
  br label %28, !dbg !2225

; <label>:28:                                     ; preds = %22, %18, %6
  ret void, !dbg !2226
}

; Function Attrs: nounwind uwtable
define internal void @lvs_netlink_monitor_rcv_bufs_handler(%struct._vector*) #0 !dbg !2228 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2229, metadata !206), !dbg !2230
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2231, metadata !206), !dbg !2232
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2233
  %5 = icmp ne %struct._vector* %4, null, !dbg !2233
  br i1 %5, label %7, label %6, !dbg !2235

; <label>:6:                                      ; preds = %1
  br label %16, !dbg !2236

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2237
  %9 = call i32 @get_netlink_rcv_bufs_size(%struct._vector* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.165, i32 0, i32 0)), !dbg !2238
  store i32 %9, i32* %3, align 4, !dbg !2239
  %10 = load i32, i32* %3, align 4, !dbg !2240
  %11 = icmp ne i32 %10, 0, !dbg !2240
  br i1 %11, label %12, label %16, !dbg !2242

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !dbg !2243
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2244
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 63, !dbg !2245
  store i32 %13, i32* %15, align 8, !dbg !2246
  br label %16, !dbg !2244

; <label>:16:                                     ; preds = %6, %12, %7
  ret void, !dbg !2247
}

; Function Attrs: nounwind uwtable
define internal void @lvs_netlink_monitor_rcv_bufs_force_handler(%struct._vector*) #0 !dbg !2248 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2249, metadata !206), !dbg !2250
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2251, metadata !206), !dbg !2252
  store i32 1, i32* %3, align 4, !dbg !2252
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2253
  %5 = icmp ne %struct._vector* %4, null, !dbg !2253
  br i1 %5, label %7, label %6, !dbg !2255

; <label>:6:                                      ; preds = %1
  br label %28, !dbg !2256

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2257
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 1, !dbg !2259
  %10 = load i32, i32* %9, align 4, !dbg !2259
  %11 = icmp uge i32 %10, 2, !dbg !2260
  br i1 %11, label %12, label %22, !dbg !2261

; <label>:12:                                     ; preds = %7
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2262
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !2264
  %15 = call i32 @check_true_false(i8* %14), !dbg !2265
  store i32 %15, i32* %3, align 4, !dbg !2267
  %16 = load i32, i32* %3, align 4, !dbg !2268
  %17 = icmp slt i32 %16, 0, !dbg !2270
  br i1 %17, label %18, label %21, !dbg !2271

; <label>:18:                                     ; preds = %12
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2272
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !2274
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.166, i32 0, i32 0), i8* %20), !dbg !2275
  br label %28, !dbg !2277

; <label>:21:                                     ; preds = %12
  br label %22, !dbg !2278

; <label>:22:                                     ; preds = %21, %7
  %23 = load i32, i32* %3, align 4, !dbg !2279
  %24 = icmp ne i32 %23, 0, !dbg !2279
  %25 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2280
  %26 = getelementptr inbounds %struct._data, %struct._data* %25, i32 0, i32 64, !dbg !2281
  %27 = zext i1 %24 to i8, !dbg !2282
  store i8 %27, i8* %26, align 4, !dbg !2282
  br label %28, !dbg !2283

; <label>:28:                                     ; preds = %22, %18, %6
  ret void, !dbg !2284
}

; Function Attrs: nounwind uwtable
define internal void @rs_init_notifies_handler(%struct._vector*) #0 !dbg !2286 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2287, metadata !206), !dbg !2288
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2289, metadata !206), !dbg !2290
  store i32 1, i32* %3, align 4, !dbg !2290
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2291
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !2293
  %6 = load i32, i32* %5, align 4, !dbg !2293
  %7 = icmp uge i32 %6, 2, !dbg !2294
  br i1 %7, label %8, label %18, !dbg !2295

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2296
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !2298
  %11 = call i32 @check_true_false(i8* %10), !dbg !2299
  store i32 %11, i32* %3, align 4, !dbg !2301
  %12 = load i32, i32* %3, align 4, !dbg !2302
  %13 = icmp slt i32 %12, 0, !dbg !2304
  br i1 %13, label %14, label %17, !dbg !2305

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2306
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !2308
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.167, i32 0, i32 0), i8* %16), !dbg !2309
  br label %24, !dbg !2311

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !2312

; <label>:18:                                     ; preds = %17, %1
  %19 = load i32, i32* %3, align 4, !dbg !2313
  %20 = icmp ne i32 %19, 0, !dbg !2313
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2314
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 65, !dbg !2315
  %23 = zext i1 %20 to i8, !dbg !2316
  store i8 %23, i8* %22, align 1, !dbg !2316
  br label %24, !dbg !2317

; <label>:24:                                     ; preds = %18, %14
  ret void, !dbg !2318
}

; Function Attrs: nounwind uwtable
define internal void @no_checker_emails_handler(%struct._vector*) #0 !dbg !2320 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2321, metadata !206), !dbg !2322
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2323, metadata !206), !dbg !2324
  store i32 1, i32* %3, align 4, !dbg !2324
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2325
  %5 = getelementptr inbounds %struct._vector, %struct._vector* %4, i32 0, i32 1, !dbg !2327
  %6 = load i32, i32* %5, align 4, !dbg !2327
  %7 = icmp uge i32 %6, 2, !dbg !2328
  br i1 %7, label %8, label %18, !dbg !2329

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2330
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !2332
  %11 = call i32 @check_true_false(i8* %10), !dbg !2333
  store i32 %11, i32* %3, align 4, !dbg !2335
  %12 = load i32, i32* %3, align 4, !dbg !2336
  %13 = icmp slt i32 %12, 0, !dbg !2338
  br i1 %13, label %14, label %17, !dbg !2339

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2340
  %16 = call i8* @strvec_slot(%struct._vector* %15, i64 1), !dbg !2342
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.168, i32 0, i32 0), i8* %16), !dbg !2343
  br label %24, !dbg !2345

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !2346

; <label>:18:                                     ; preds = %17, %1
  %19 = load i32, i32* %3, align 4, !dbg !2347
  %20 = icmp ne i32 %19, 0, !dbg !2347
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2348
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 66, !dbg !2349
  %23 = zext i1 %20 to i8, !dbg !2350
  store i8 %23, i8* %22, align 2, !dbg !2350
  br label %24, !dbg !2351

; <label>:24:                                     ; preds = %18, %14
  ret void, !dbg !2352
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_rx_bufs_policy_handler(%struct._vector*) #0 !dbg !2354 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2355, metadata !206), !dbg !2356
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2357, metadata !206), !dbg !2358
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2359, metadata !206), !dbg !2360
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2361
  %6 = icmp ne %struct._vector* %5, null, !dbg !2361
  br i1 %6, label %8, label %7, !dbg !2363

; <label>:7:                                      ; preds = %1
  br label %103, !dbg !2364

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2365
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 1, !dbg !2367
  %11 = load i32, i32* %10, align 4, !dbg !2367
  %12 = icmp ult i32 %11, 2, !dbg !2368
  br i1 %12, label %13, label %14, !dbg !2369

; <label>:13:                                     ; preds = %8
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.169, i32 0, i32 0)), !dbg !2370
  br label %103, !dbg !2372

; <label>:14:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !2373
  br label %15, !dbg !2375

; <label>:15:                                     ; preds = %65, %14
  %16 = load i32, i32* %4, align 4, !dbg !2376
  %17 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2379
  %18 = getelementptr inbounds %struct._vector, %struct._vector* %17, i32 0, i32 1, !dbg !2380
  %19 = load i32, i32* %18, align 4, !dbg !2380
  %20 = icmp ult i32 %16, %19, !dbg !2381
  br i1 %20, label %21, label %68, !dbg !2382

; <label>:21:                                     ; preds = %15
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2383
  %23 = load i32, i32* %4, align 4, !dbg !2386
  %24 = zext i32 %23 to i64, !dbg !2386
  %25 = call i8* @strvec_slot(%struct._vector* %22, i64 %24), !dbg !2387
  %26 = call i32 @strcasecmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0)) #7, !dbg !2388
  %27 = icmp ne i32 %26, 0, !dbg !2390
  br i1 %27, label %33, label %28, !dbg !2391

; <label>:28:                                     ; preds = %21
  %29 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2392
  %30 = getelementptr inbounds %struct._data, %struct._data* %29, i32 0, i32 67, !dbg !2393
  %31 = load i32, i32* %30, align 8, !dbg !2394
  %32 = or i32 %31, 1, !dbg !2394
  store i32 %32, i32* %30, align 8, !dbg !2394
  br label %64, !dbg !2392

; <label>:33:                                     ; preds = %21
  %34 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2395
  %35 = load i32, i32* %4, align 4, !dbg !2397
  %36 = zext i32 %35 to i64, !dbg !2397
  %37 = call i8* @strvec_slot(%struct._vector* %34, i64 %36), !dbg !2398
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.171, i32 0, i32 0)) #7, !dbg !2399
  %39 = icmp ne i32 %38, 0, !dbg !2401
  br i1 %39, label %45, label %40, !dbg !2402

; <label>:40:                                     ; preds = %33
  %41 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2403
  %42 = getelementptr inbounds %struct._data, %struct._data* %41, i32 0, i32 67, !dbg !2404
  %43 = load i32, i32* %42, align 8, !dbg !2405
  %44 = or i32 %43, 2, !dbg !2405
  store i32 %44, i32* %42, align 8, !dbg !2405
  br label %63, !dbg !2403

; <label>:45:                                     ; preds = %33
  %46 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2406
  %47 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %46, i64 1, i32* %3, i32 0, i32 -1, i1 zeroext false), !dbg !2409
  br i1 %47, label %53, label %48, !dbg !2410

; <label>:48:                                     ; preds = %45
  %49 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2411
  %50 = load i32, i32* %4, align 4, !dbg !2412
  %51 = zext i32 %50 to i64, !dbg !2412
  %52 = call i8* @strvec_slot(%struct._vector* %49, i64 %51), !dbg !2413
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.172, i32 0, i32 0), i8* %52), !dbg !2414
  br label %62, !dbg !2416

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %3, align 4, !dbg !2417
  %55 = zext i32 %54 to i64, !dbg !2417
  %56 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2419
  %57 = getelementptr inbounds %struct._data, %struct._data* %56, i32 0, i32 68, !dbg !2420
  store i64 %55, i64* %57, align 8, !dbg !2421
  %58 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2422
  %59 = getelementptr inbounds %struct._data, %struct._data* %58, i32 0, i32 67, !dbg !2423
  %60 = load i32, i32* %59, align 8, !dbg !2424
  %61 = or i32 %60, 4, !dbg !2424
  store i32 %61, i32* %59, align 8, !dbg !2424
  br label %62

; <label>:62:                                     ; preds = %53, %48
  br label %63

; <label>:63:                                     ; preds = %62, %40
  br label %64

; <label>:64:                                     ; preds = %63, %28
  br label %65, !dbg !2425

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %4, align 4, !dbg !2426
  %67 = add i32 %66, 1, !dbg !2426
  store i32 %67, i32* %4, align 4, !dbg !2426
  br label %15, !dbg !2428, !llvm.loop !2429

; <label>:68:                                     ; preds = %15
  %69 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2431
  %70 = getelementptr inbounds %struct._data, %struct._data* %69, i32 0, i32 67, !dbg !2433
  %71 = load i32, i32* %70, align 8, !dbg !2433
  %72 = and i32 %71, 4, !dbg !2434
  %73 = icmp ne i32 %72, 0, !dbg !2434
  br i1 %73, label %74, label %85, !dbg !2435

; <label>:74:                                     ; preds = %68
  %75 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2436
  %76 = getelementptr inbounds %struct._data, %struct._data* %75, i32 0, i32 67, !dbg !2437
  %77 = load i32, i32* %76, align 8, !dbg !2437
  %78 = and i32 %77, 3, !dbg !2438
  %79 = icmp ne i32 %78, 0, !dbg !2438
  br i1 %79, label %80, label %85, !dbg !2439

; <label>:80:                                     ; preds = %74
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.173, i32 0, i32 0)), !dbg !2441
  %81 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2443
  %82 = getelementptr inbounds %struct._data, %struct._data* %81, i32 0, i32 67, !dbg !2444
  %83 = load i32, i32* %82, align 8, !dbg !2445
  %84 = and i32 %83, -4, !dbg !2445
  store i32 %84, i32* %82, align 8, !dbg !2445
  br label %103, !dbg !2446

; <label>:85:                                     ; preds = %74, %68
  %86 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2447
  %87 = getelementptr inbounds %struct._data, %struct._data* %86, i32 0, i32 67, !dbg !2449
  %88 = load i32, i32* %87, align 8, !dbg !2449
  %89 = and i32 %88, 1, !dbg !2450
  %90 = icmp ne i32 %89, 0, !dbg !2450
  br i1 %90, label %91, label %102, !dbg !2451

; <label>:91:                                     ; preds = %85
  %92 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2452
  %93 = getelementptr inbounds %struct._data, %struct._data* %92, i32 0, i32 67, !dbg !2453
  %94 = load i32, i32* %93, align 8, !dbg !2453
  %95 = and i32 %94, 2, !dbg !2454
  %96 = icmp ne i32 %95, 0, !dbg !2454
  br i1 %96, label %97, label %102, !dbg !2455

; <label>:97:                                     ; preds = %91
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.174, i32 0, i32 0)), !dbg !2457
  %98 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2459
  %99 = getelementptr inbounds %struct._data, %struct._data* %98, i32 0, i32 67, !dbg !2460
  %100 = load i32, i32* %99, align 8, !dbg !2461
  %101 = and i32 %100, -3, !dbg !2461
  store i32 %101, i32* %99, align 8, !dbg !2461
  br label %102, !dbg !2462

; <label>:102:                                    ; preds = %97, %91, %85
  br label %103

; <label>:103:                                    ; preds = %7, %13, %102, %80
  ret void, !dbg !2463
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_rx_bufs_multiplier_handler(%struct._vector*) #0 !dbg !2464 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2465, metadata !206), !dbg !2466
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2467, metadata !206), !dbg !2468
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2469
  %5 = icmp ne %struct._vector* %4, null, !dbg !2469
  br i1 %5, label %7, label %6, !dbg !2471

; <label>:6:                                      ; preds = %1
  br label %23, !dbg !2472

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2473
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 1, !dbg !2475
  %10 = load i32, i32* %9, align 4, !dbg !2475
  %11 = icmp ne i32 %10, 2, !dbg !2476
  br i1 %11, label %12, label %13, !dbg !2477

; <label>:12:                                     ; preds = %7
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.175, i32 0, i32 0)), !dbg !2478
  br label %23, !dbg !2480

; <label>:13:                                     ; preds = %7
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2481
  %15 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %14, i64 1, i32* %3, i32 1, i32 -1, i1 zeroext false), !dbg !2483
  br i1 %15, label %19, label %16, !dbg !2484

; <label>:16:                                     ; preds = %13
  %17 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2485
  %18 = call i8* @strvec_slot(%struct._vector* %17, i64 1), !dbg !2486
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.176, i32 0, i32 0), i8* %18), !dbg !2487
  br label %23, !dbg !2489

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !2490
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2491
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 69, !dbg !2492
  store i32 %20, i32* %22, align 8, !dbg !2493
  br label %23

; <label>:23:                                     ; preds = %6, %12, %19, %16
  ret void, !dbg !2494
}

declare i8* @set_value(%struct._vector*) #2

declare void @report_config_error(i32, i8*, ...) #2

declare i8* @strvec_slot(%struct._vector*, i64) #2

declare zeroext i1 @read_unsigned_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #4

declare i32 @inet_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #2

declare i32 @domain_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #2

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare %struct._vector* @read_value_block(%struct._vector*) #2

declare void @alloc_email(i8*) #2

declare void @free_strvec(%struct._vector*) #2

declare i32 @check_true_false(i8*) #2

declare %struct._interface* @if_get_by_ifname(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

declare zeroext i1 @read_double_strvec(%struct._vector*, i64, double*, double, double, i1 zeroext) #2

declare void @log_message(i32, i8*, ...) #2

declare zeroext i1 @read_int_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @get_priority(%struct._vector*, i8*) #0 !dbg !2495 {
  %3 = alloca i8, align 1
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2500, metadata !206), !dbg !2501
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2502, metadata !206), !dbg !2503
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2504, metadata !206), !dbg !2505
  %7 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2506
  %8 = getelementptr inbounds %struct._vector, %struct._vector* %7, i32 0, i32 1, !dbg !2508
  %9 = load i32, i32* %8, align 4, !dbg !2508
  %10 = icmp ult i32 %9, 2, !dbg !2509
  br i1 %10, label %11, label %13, !dbg !2510

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !2511
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.140, i32 0, i32 0), i8* %12), !dbg !2513
  store i8 0, i8* %3, align 1, !dbg !2514
  br label %21, !dbg !2514

; <label>:13:                                     ; preds = %2
  %14 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2515
  %15 = call zeroext i1 @read_int_strvec(%struct._vector* %14, i64 1, i32* %6, i32 -20, i32 19, i1 zeroext true), !dbg !2517
  br i1 %15, label %18, label %16, !dbg !2518

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %5, align 8, !dbg !2519
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.141, i32 0, i32 0), i8* %17), !dbg !2521
  store i8 0, i8* %3, align 1, !dbg !2522
  br label %21, !dbg !2522

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %6, align 4, !dbg !2523
  %20 = trunc i32 %19 to i8, !dbg !2524
  store i8 %20, i8* %3, align 1, !dbg !2525
  br label %21, !dbg !2525

; <label>:21:                                     ; preds = %18, %16, %11
  %22 = load i8, i8* %3, align 1, !dbg !2526
  ret i8 %22, !dbg !2526
}

; Function Attrs: nounwind uwtable
define internal i32 @get_realtime_priority(%struct._vector*, i8*) #0 !dbg !2527 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2530, metadata !206), !dbg !2531
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2532, metadata !206), !dbg !2533
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2534, metadata !206), !dbg !2535
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2536, metadata !206), !dbg !2537
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2538, metadata !206), !dbg !2539
  %9 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2540
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 1, !dbg !2542
  %11 = load i32, i32* %10, align 4, !dbg !2542
  %12 = icmp ult i32 %11, 2, !dbg !2543
  br i1 %12, label %13, label %15, !dbg !2544

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !2545
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.142, i32 0, i32 0), i8* %14), !dbg !2547
  store i32 -1, i32* %3, align 4, !dbg !2548
  br label %45, !dbg !2548

; <label>:15:                                     ; preds = %2
  %16 = call i32 @sched_get_priority_min(i32 2) #6, !dbg !2549
  store i32 %16, i32* %6, align 4, !dbg !2550
  %17 = call i32 @sched_get_priority_max(i32 2) #6, !dbg !2551
  store i32 %17, i32* %7, align 4, !dbg !2552
  %18 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2553
  %19 = call zeroext i1 @read_int_strvec(%struct._vector* %18, i64 1, i32* %8, i32 -2147483648, i32 2147483647, i1 zeroext true), !dbg !2555
  br i1 %19, label %24, label %20, !dbg !2556

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %5, align 8, !dbg !2557
  %22 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2559
  %23 = call i8* @strvec_slot(%struct._vector* %22, i64 1), !dbg !2560
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.143, i32 0, i32 0), i8* %21, i8* %23), !dbg !2561
  store i32 -1, i32* %3, align 4, !dbg !2563
  br label %45, !dbg !2563

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %8, align 4, !dbg !2564
  %26 = load i32, i32* %6, align 4, !dbg !2566
  %27 = icmp slt i32 %25, %26, !dbg !2567
  br i1 %27, label %28, label %33, !dbg !2568

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %5, align 8, !dbg !2569
  %30 = load i32, i32* %8, align 4, !dbg !2571
  %31 = load i32, i32* %6, align 4, !dbg !2572
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.144, i32 0, i32 0), i8* %29, i32 %30, i32 %31), !dbg !2573
  %32 = load i32, i32* %6, align 4, !dbg !2574
  store i32 %32, i32* %8, align 4, !dbg !2575
  br label %43, !dbg !2576

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %8, align 4, !dbg !2577
  %35 = load i32, i32* %7, align 4, !dbg !2579
  %36 = icmp sgt i32 %34, %35, !dbg !2580
  br i1 %36, label %37, label %42, !dbg !2581

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %5, align 8, !dbg !2582
  %39 = load i32, i32* %8, align 4, !dbg !2584
  %40 = load i32, i32* %7, align 4, !dbg !2585
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.145, i32 0, i32 0), i8* %38, i32 %39, i32 %40), !dbg !2586
  %41 = load i32, i32* %7, align 4, !dbg !2587
  store i32 %41, i32* %8, align 4, !dbg !2588
  br label %42, !dbg !2589

; <label>:42:                                     ; preds = %37, %33
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %8, align 4, !dbg !2590
  store i32 %44, i32* %3, align 4, !dbg !2591
  br label %45, !dbg !2591

; <label>:45:                                     ; preds = %43, %20, %13
  %46 = load i32, i32* %3, align 4, !dbg !2592
  ret i32 %46, !dbg !2592
}

; Function Attrs: nounwind
declare i32 @sched_get_priority_min(i32) #3

; Function Attrs: nounwind
declare i32 @sched_get_priority_max(i32) #3

; Function Attrs: nounwind uwtable
define internal i64 @get_rt_rlimit(%struct._vector*, i8*) #0 !dbg !2593 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2599, metadata !206), !dbg !2600
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2601, metadata !206), !dbg !2602
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2603, metadata !206), !dbg !2604
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2605, metadata !206), !dbg !2606
  %8 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2607
  %9 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %8, i64 1, i32* %6, i32 1, i32 -1, i1 zeroext true), !dbg !2609
  br i1 %9, label %14, label %10, !dbg !2610

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !2611
  %12 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2613
  %13 = call i8* @strvec_slot(%struct._vector* %12, i64 1), !dbg !2614
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i32 0, i32 0), i8* %11, i8* %13), !dbg !2615
  store i64 0, i64* %3, align 8, !dbg !2617
  br label %18, !dbg !2617

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %6, align 4, !dbg !2618
  %16 = zext i32 %15 to i64, !dbg !2618
  store i64 %16, i64* %7, align 8, !dbg !2619
  %17 = load i64, i64* %7, align 8, !dbg !2620
  store i64 %17, i64* %3, align 8, !dbg !2621
  br label %18, !dbg !2621

; <label>:18:                                     ; preds = %14, %10
  %19 = load i64, i64* %3, align 8, !dbg !2622
  ret i64 %19, !dbg !2622
}

; Function Attrs: nounwind uwtable
define internal void @notify_fifo(%struct._vector*, i8*, %struct._notify_fifo*) #0 !dbg !2623 {
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._notify_fifo*, align 8
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2649, metadata !206), !dbg !2650
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2651, metadata !206), !dbg !2652
  store %struct._notify_fifo* %2, %struct._notify_fifo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %6, metadata !2653, metadata !206), !dbg !2654
  %7 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2655
  %8 = getelementptr inbounds %struct._vector, %struct._vector* %7, i32 0, i32 1, !dbg !2657
  %9 = load i32, i32* %8, align 4, !dbg !2657
  %10 = icmp ult i32 %9, 2, !dbg !2658
  br i1 %10, label %11, label %13, !dbg !2659

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !2660
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.148, i32 0, i32 0), i8* %12), !dbg !2662
  br label %36, !dbg !2663

; <label>:13:                                     ; preds = %3
  %14 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !2664
  %15 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %14, i32 0, i32 0, !dbg !2666
  %16 = load i8*, i8** %15, align 8, !dbg !2666
  %17 = icmp ne i8* %16, null, !dbg !2664
  br i1 %17, label %18, label %22, !dbg !2667

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %5, align 8, !dbg !2668
  %20 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2670
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !2671
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.149, i32 0, i32 0), i8* %19, i8* %21), !dbg !2672
  br label %36, !dbg !2674

; <label>:22:                                     ; preds = %13
  %23 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2675
  %24 = call i8* @strvec_slot(%struct._vector* %23, i64 1), !dbg !2676
  %25 = call i64 @strlen(i8* %24) #7, !dbg !2677
  %26 = add i64 %25, 1, !dbg !2679
  %27 = call i8* @zalloc(i64 %26), !dbg !2680
  %28 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !2682
  %29 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %28, i32 0, i32 0, !dbg !2683
  store i8* %27, i8** %29, align 8, !dbg !2684
  %30 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !2685
  %31 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %30, i32 0, i32 0, !dbg !2686
  %32 = load i8*, i8** %31, align 8, !dbg !2686
  %33 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2687
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 1), !dbg !2688
  %35 = call i8* @strcpy(i8* %32, i8* %34) #6, !dbg !2689
  br label %36, !dbg !2690

; <label>:36:                                     ; preds = %22, %18, %11
  ret void, !dbg !2691
}

; Function Attrs: nounwind uwtable
define internal void @notify_fifo_script(%struct._vector*, i8*, %struct._notify_fifo*) #0 !dbg !2692 {
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._notify_fifo*, align 8
  %7 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2693, metadata !206), !dbg !2694
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2695, metadata !206), !dbg !2696
  store %struct._notify_fifo* %2, %struct._notify_fifo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %6, metadata !2697, metadata !206), !dbg !2698
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2699, metadata !206), !dbg !2700
  %8 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2701
  %9 = getelementptr inbounds %struct._vector, %struct._vector* %8, i32 0, i32 1, !dbg !2703
  %10 = load i32, i32* %9, align 4, !dbg !2703
  %11 = icmp ult i32 %10, 2, !dbg !2704
  br i1 %11, label %12, label %14, !dbg !2705

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !2706
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.150, i32 0, i32 0), i8* %13), !dbg !2708
  br label %39, !dbg !2709

; <label>:14:                                     ; preds = %3
  %15 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !2710
  %16 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %15, i32 0, i32 3, !dbg !2712
  %17 = load %struct._notify_script*, %struct._notify_script** %16, align 8, !dbg !2712
  %18 = icmp ne %struct._notify_script* %17, null, !dbg !2710
  br i1 %18, label %19, label %23, !dbg !2713

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %5, align 8, !dbg !2714
  %21 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2716
  %22 = call i8* @strvec_slot(%struct._vector* %21, i64 1), !dbg !2717
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.151, i32 0, i32 0), i8* %20, i8* %22), !dbg !2718
  br label %39, !dbg !2720

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %5, align 8, !dbg !2721
  %25 = call i64 @strlen(i8* %24) #7, !dbg !2722
  %26 = add i64 %25, 11, !dbg !2723
  %27 = add i64 %26, 1, !dbg !2724
  %28 = call i8* @zalloc(i64 %27), !dbg !2725
  store i8* %28, i8** %7, align 8, !dbg !2727
  %29 = load i8*, i8** %7, align 8, !dbg !2728
  %30 = load i8*, i8** %5, align 8, !dbg !2729
  %31 = call i8* @strcpy(i8* %29, i8* %30) #6, !dbg !2730
  %32 = load i8*, i8** %7, align 8, !dbg !2731
  %33 = call i8* @strcat(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0)) #6, !dbg !2732
  %34 = load i8*, i8** %7, align 8, !dbg !2733
  %35 = call %struct._notify_script* @notify_script_init(i32 1, i8* %34), !dbg !2734
  %36 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !2735
  %37 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %36, i32 0, i32 3, !dbg !2736
  store %struct._notify_script* %35, %struct._notify_script** %37, align 8, !dbg !2737
  %38 = load i8*, i8** %7, align 8, !dbg !2738
  call void @free(i8* %38) #6, !dbg !2739
  store i8* null, i8** %7, align 8, !dbg !2740
  br label %39, !dbg !2741

; <label>:39:                                     ; preds = %23, %19, %12
  ret void, !dbg !2742
}

declare %struct._notify_script* @notify_script_init(i32, i8*) #2

declare zeroext i1 @set_default_script_user(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_netlink_rcv_bufs_size(%struct._vector*, i8*) #0 !dbg !2743 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2746, metadata !206), !dbg !2747
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2748, metadata !206), !dbg !2749
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2750, metadata !206), !dbg !2751
  %7 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2752
  %8 = icmp ne %struct._vector* %7, null, !dbg !2752
  br i1 %8, label %10, label %9, !dbg !2754

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2755
  br label %26, !dbg !2755

; <label>:10:                                     ; preds = %2
  %11 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2756
  %12 = getelementptr inbounds %struct._vector, %struct._vector* %11, i32 0, i32 1, !dbg !2758
  %13 = load i32, i32* %12, align 4, !dbg !2758
  %14 = icmp ult i32 %13, 2, !dbg !2759
  br i1 %14, label %15, label %17, !dbg !2760

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %5, align 8, !dbg !2761
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.158, i32 0, i32 0), i8* %16), !dbg !2763
  store i32 0, i32* %3, align 4, !dbg !2764
  br label %26, !dbg !2764

; <label>:17:                                     ; preds = %10
  %18 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2765
  %19 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %18, i64 1, i32* %6, i32 0, i32 -1, i1 zeroext false), !dbg !2767
  br i1 %19, label %24, label %20, !dbg !2768

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %5, align 8, !dbg !2769
  %22 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2771
  %23 = call i8* @strvec_slot(%struct._vector* %22, i64 1), !dbg !2772
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.159, i32 0, i32 0), i8* %21, i8* %23), !dbg !2773
  store i32 0, i32* %3, align 4, !dbg !2775
  br label %26, !dbg !2775

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %6, align 4, !dbg !2776
  store i32 %25, i32* %3, align 4, !dbg !2777
  br label %26, !dbg !2777

; <label>:26:                                     ; preds = %24, %20, %15, %9
  %27 = load i32, i32* %3, align 4, !dbg !2778
  ret i32 %27, !dbg !2778
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!196, !197}
!llvm.ident = !{!198}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, globals: !116)
!1 = !DIFile(filename: "[inter]keepalived--core--global_parser.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3, !19, !25, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 152, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!23 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!24 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !26, line: 142, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!29 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!30 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!31 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 46, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !DIEnumerator(name: "_ISupper", value: 256)
!36 = !DIEnumerator(name: "_ISlower", value: 512)
!37 = !DIEnumerator(name: "_ISalpha", value: 1024)
!38 = !DIEnumerator(name: "_ISdigit", value: 2048)
!39 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!40 = !DIEnumerator(name: "_ISspace", value: 8192)
!41 = !DIEnumerator(name: "_ISprint", value: 16384)
!42 = !DIEnumerator(name: "_ISgraph", value: 32768)
!43 = !DIEnumerator(name: "_ISblank", value: 1)
!44 = !DIEnumerator(name: "_IScntrl", value: 2)
!45 = !DIEnumerator(name: "_ISpunct", value: 4)
!46 = !DIEnumerator(name: "_ISalnum", value: 8)
!47 = !{!48, !50, !51, !52, !54, !56, !60, !76, !78, !101, !59, !112, !115}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !53, line: 49, baseType: !51)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !53, line: 48, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !57, line: 30, baseType: !58)
!57 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 51, baseType: !59)
!59 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !57, line: 239, size: 128, align: 32, elements: !62)
!62 = !{!63, !66, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !61, file: !57, line: 241, baseType: !64, size: 16, align: 16)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !65, line: 28, baseType: !51)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !61, file: !57, line: 242, baseType: !67, size: 16, align: 16, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !57, line: 119, baseType: !52)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !61, file: !57, line: 243, baseType: !69, size: 32, align: 32, offset: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !57, line: 31, size: 32, align: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !69, file: !57, line: 33, baseType: !56, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !61, file: !57, line: 246, baseType: !73, size: 64, align: 8, offset: 64)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 8)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !57, line: 254, size: 224, align: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !100}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !79, file: !57, line: 256, baseType: !64, size: 16, align: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !79, file: !57, line: 257, baseType: !67, size: 16, align: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !79, file: !57, line: 258, baseType: !58, size: 32, align: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !79, file: !57, line: 259, baseType: !85, size: 128, align: 32, offset: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !57, line: 211, size: 128, align: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !85, file: !57, line: 220, baseType: !88, size: 128, align: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !57, line: 213, size: 128, align: 32, elements: !89)
!89 = !{!90, !94, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !88, file: !57, line: 215, baseType: !91, size: 128, align: 8)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, align: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !88, file: !57, line: 217, baseType: !95, size: 128, align: 16)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 16, elements: !74)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !88, file: !57, line: 218, baseType: !97, size: 128, align: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, align: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !79, file: !57, line: 260, baseType: !58, size: 32, align: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !103, line: 166, size: 1024, align: 64, elements: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!104 = !{!105, !106, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !102, file: !103, line: 168, baseType: !64, size: 16, align: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !102, file: !103, line: 169, baseType: !107, size: 944, align: 8, offset: 16)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 944, align: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 118)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !102, file: !103, line: 170, baseType: !111, size: 64, align: 64, offset: 960)
!111 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !113, line: 194, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!114 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!116 = !{!117}
!117 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !26, line: 150, type: !118, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !119, line: 31, baseType: !120)
!119 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !119, line: 39, size: 320, align: 64, elements: !122)
!122 = !{!123, !130, !131, !132, !136}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !121, file: !119, line: 40, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !119, line: 33, size: 192, align: 64, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !119, line: 34, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !119, line: 35, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !119, line: 36, baseType: !115, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !121, file: !119, line: 41, baseType: !124, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !121, file: !119, line: 42, baseType: !59, size: 32, align: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !121, file: !119, line: 43, baseType: !133, size: 64, align: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !115}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !121, file: !119, line: 44, baseType: !137, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140, !115}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !142, line: 48, baseType: !143)
!142 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !144, line: 241, size: 1728, align: 64, elements: !145)
!144 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !166, !167, !168, !169, !173, !174, !175, !179, !182, !184, !185, !186, !187, !188, !191, !192}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !143, file: !144, line: 242, baseType: !50, size: 32, align: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !143, file: !144, line: 247, baseType: !48, size: 64, align: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !143, file: !144, line: 248, baseType: !48, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !143, file: !144, line: 249, baseType: !48, size: 64, align: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !143, file: !144, line: 250, baseType: !48, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !143, file: !144, line: 251, baseType: !48, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !143, file: !144, line: 252, baseType: !48, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !143, file: !144, line: 253, baseType: !48, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !143, file: !144, line: 254, baseType: !48, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !143, file: !144, line: 256, baseType: !48, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !143, file: !144, line: 257, baseType: !48, size: 64, align: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !143, file: !144, line: 258, baseType: !48, size: 64, align: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !143, file: !144, line: 260, baseType: !159, size: 64, align: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !144, line: 156, size: 192, align: 64, elements: !161)
!161 = !{!162, !163, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !160, file: !144, line: 157, baseType: !159, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !160, file: !144, line: 158, baseType: !164, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !160, file: !144, line: 162, baseType: !50, size: 32, align: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !143, file: !144, line: 262, baseType: !164, size: 64, align: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !143, file: !144, line: 264, baseType: !50, size: 32, align: 32, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !143, file: !144, line: 268, baseType: !50, size: 32, align: 32, offset: 928)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !143, file: !144, line: 270, baseType: !170, size: 64, align: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !171, line: 131, baseType: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!172 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !143, file: !144, line: 274, baseType: !51, size: 16, align: 16, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !143, file: !144, line: 275, baseType: !114, size: 8, align: 8, offset: 1040)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !143, file: !144, line: 276, baseType: !176, size: 8, align: 8, offset: 1048)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 1)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !143, file: !144, line: 280, baseType: !180, size: 64, align: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !144, line: 150, baseType: null)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !143, file: !144, line: 289, baseType: !183, size: 64, align: 64, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !171, line: 132, baseType: !172)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !143, file: !144, line: 297, baseType: !115, size: 64, align: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !143, file: !144, line: 298, baseType: !115, size: 64, align: 64, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !143, file: !144, line: 299, baseType: !115, size: 64, align: 64, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !143, file: !144, line: 300, baseType: !115, size: 64, align: 64, offset: 1408)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !143, file: !144, line: 302, baseType: !189, size: 64, align: 64, offset: 1472)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 216, baseType: !111)
!190 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !143, file: !144, line: 303, baseType: !50, size: 32, align: 32, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !143, file: !144, line: 305, baseType: !193, size: 160, align: 8, offset: 1568)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 20)
!196 = !{i32 2, !"Dwarf Version", i32 4}
!197 = !{i32 2, !"Debug Info Version", i32 3}
!198 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!199 = distinct !DISubprogram(name: "init_global_keywords", scope: !200, file: !200, line: 1334, type: !201, isLocal: false, isDefinition: true, scopeLine: 1335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!200 = !DIFile(filename: "global_parser.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203}
!203 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!204 = !{}
!205 = !DILocalVariable(name: "global_active", arg: 1, scope: !199, file: !200, line: 1334, type: !203)
!206 = !DIExpression()
!207 = !DILocation(line: 1334, column: 26, scope: !199)
!208 = !DILocation(line: 1337, column: 68, scope: !199)
!209 = !DILocation(line: 1337, column: 2, scope: !199)
!210 = !DILocation(line: 1339, column: 64, scope: !199)
!211 = !DILocation(line: 1339, column: 2, scope: !199)
!212 = !DILocation(line: 1340, column: 75, scope: !199)
!213 = !DILocation(line: 1340, column: 2, scope: !199)
!214 = !DILocation(line: 1342, column: 60, scope: !199)
!215 = !DILocation(line: 1342, column: 2, scope: !199)
!216 = !DILocation(line: 1343, column: 54, scope: !199)
!217 = !DILocation(line: 1343, column: 2, scope: !199)
!218 = !DILocation(line: 1344, column: 63, scope: !199)
!219 = !DILocation(line: 1344, column: 2, scope: !199)
!220 = !DILocation(line: 1345, column: 43, scope: !199)
!221 = !DILocation(line: 1345, column: 2, scope: !199)
!222 = !DILocation(line: 1346, column: 2, scope: !199)
!223 = !DILocation(line: 1347, column: 2, scope: !199)
!224 = !DILocation(line: 1348, column: 2, scope: !199)
!225 = !DILocation(line: 1349, column: 2, scope: !199)
!226 = !DILocation(line: 1350, column: 2, scope: !199)
!227 = !DILocation(line: 1351, column: 2, scope: !199)
!228 = !DILocation(line: 1352, column: 2, scope: !199)
!229 = !DILocation(line: 1354, column: 2, scope: !199)
!230 = !DILocation(line: 1357, column: 2, scope: !199)
!231 = !DILocation(line: 1360, column: 2, scope: !199)
!232 = !DILocation(line: 1361, column: 2, scope: !199)
!233 = !DILocation(line: 1362, column: 2, scope: !199)
!234 = !DILocation(line: 1365, column: 2, scope: !199)
!235 = !DILocation(line: 1366, column: 2, scope: !199)
!236 = !DILocation(line: 1368, column: 2, scope: !199)
!237 = !DILocation(line: 1372, column: 2, scope: !199)
!238 = !DILocation(line: 1373, column: 2, scope: !199)
!239 = !DILocation(line: 1374, column: 2, scope: !199)
!240 = !DILocation(line: 1375, column: 2, scope: !199)
!241 = !DILocation(line: 1376, column: 2, scope: !199)
!242 = !DILocation(line: 1377, column: 2, scope: !199)
!243 = !DILocation(line: 1378, column: 2, scope: !199)
!244 = !DILocation(line: 1379, column: 2, scope: !199)
!245 = !DILocation(line: 1380, column: 2, scope: !199)
!246 = !DILocation(line: 1381, column: 2, scope: !199)
!247 = !DILocation(line: 1382, column: 2, scope: !199)
!248 = !DILocation(line: 1383, column: 2, scope: !199)
!249 = !DILocation(line: 1384, column: 2, scope: !199)
!250 = !DILocation(line: 1385, column: 2, scope: !199)
!251 = !DILocation(line: 1387, column: 2, scope: !199)
!252 = !DILocation(line: 1389, column: 2, scope: !199)
!253 = !DILocation(line: 1390, column: 2, scope: !199)
!254 = !DILocation(line: 1391, column: 2, scope: !199)
!255 = !DILocation(line: 1392, column: 2, scope: !199)
!256 = !DILocation(line: 1393, column: 2, scope: !199)
!257 = !DILocation(line: 1395, column: 2, scope: !199)
!258 = !DILocation(line: 1397, column: 2, scope: !199)
!259 = !DILocation(line: 1401, column: 2, scope: !199)
!260 = !DILocation(line: 1402, column: 2, scope: !199)
!261 = !DILocation(line: 1404, column: 2, scope: !199)
!262 = !DILocation(line: 1405, column: 2, scope: !199)
!263 = !DILocation(line: 1408, column: 2, scope: !199)
!264 = !DILocation(line: 1409, column: 2, scope: !199)
!265 = !DILocation(line: 1410, column: 2, scope: !199)
!266 = !DILocation(line: 1411, column: 2, scope: !199)
!267 = !DILocation(line: 1413, column: 2, scope: !199)
!268 = !DILocation(line: 1415, column: 2, scope: !199)
!269 = !DILocation(line: 1453, column: 2, scope: !199)
!270 = !DILocation(line: 1454, column: 2, scope: !199)
!271 = !DILocation(line: 1456, column: 2, scope: !199)
!272 = !DILocation(line: 1457, column: 2, scope: !199)
!273 = !DILocation(line: 1458, column: 2, scope: !199)
!274 = !DILocation(line: 1459, column: 2, scope: !199)
!275 = !DILocation(line: 1462, column: 2, scope: !199)
!276 = !DILocation(line: 1463, column: 2, scope: !199)
!277 = !DILocation(line: 1464, column: 2, scope: !199)
!278 = !DILocation(line: 1465, column: 2, scope: !199)
!279 = !DILocation(line: 1468, column: 2, scope: !199)
!280 = !DILocation(line: 1469, column: 2, scope: !199)
!281 = !DILocation(line: 1472, column: 2, scope: !199)
!282 = !DILocation(line: 1473, column: 2, scope: !199)
!283 = !DILocation(line: 1475, column: 1, scope: !199)
!284 = distinct !DISubprogram(name: "use_polling_handler", scope: !200, file: !200, line: 60, type: !285, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !289, line: 34, baseType: !290)
!289 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !289, line: 30, size: 128, align: 64, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !290, file: !289, line: 31, baseType: !59, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !290, file: !289, line: 32, baseType: !59, size: 32, align: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !290, file: !289, line: 33, baseType: !295, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!296 = !DILocalVariable(name: "strvec", arg: 1, scope: !284, file: !200, line: 60, type: !287)
!297 = !DILocation(line: 60, column: 31, scope: !284)
!298 = !DILocation(line: 62, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !284, file: !200, line: 62, column: 6)
!300 = !DILocation(line: 62, column: 6, scope: !284)
!301 = !DILocation(line: 63, column: 3, scope: !299)
!302 = !DILocation(line: 65, column: 2, scope: !284)
!303 = !DILocation(line: 65, column: 15, scope: !284)
!304 = !DILocation(line: 65, column: 36, scope: !284)
!305 = !DILocation(line: 66, column: 1, scope: !284)
!306 = !DILocation(line: 66, column: 1, scope: !307)
!307 = !DILexicalBlockFile(scope: !284, file: !200, discriminator: 1)
!308 = distinct !DISubprogram(name: "net_namespace_handler", scope: !200, file: !200, line: 979, type: !285, isLocal: true, isDefinition: true, scopeLine: 980, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!309 = !DILocalVariable(name: "strvec", arg: 1, scope: !308, file: !200, line: 979, type: !287)
!310 = !DILocation(line: 979, column: 33, scope: !308)
!311 = !DILocation(line: 981, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !200, line: 981, column: 6)
!313 = !DILocation(line: 981, column: 6, scope: !308)
!314 = !DILocation(line: 982, column: 3, scope: !312)
!315 = !DILocation(line: 986, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !200, line: 986, column: 6)
!317 = !DILocation(line: 986, column: 6, scope: !308)
!318 = !DILocation(line: 987, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !200, line: 987, column: 7)
!320 = distinct !DILexicalBlock(scope: !316, file: !200, line: 986, column: 15)
!321 = !DILocation(line: 987, column: 21, scope: !319)
!322 = !DILocation(line: 987, column: 7, scope: !320)
!323 = !DILocation(line: 988, column: 47, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !200, line: 987, column: 40)
!325 = !DILocation(line: 988, column: 37, scope: !324)
!326 = !DILocation(line: 988, column: 4, scope: !324)
!327 = !DILocation(line: 988, column: 17, scope: !324)
!328 = !DILocation(line: 988, column: 35, scope: !324)
!329 = !DILocation(line: 989, column: 16, scope: !324)
!330 = !DILocation(line: 990, column: 3, scope: !324)
!331 = !DILocation(line: 992, column: 118, scope: !319)
!332 = !DILocation(line: 992, column: 106, scope: !319)
!333 = !DILocation(line: 992, column: 4, scope: !334)
!334 = !DILexicalBlockFile(scope: !319, file: !200, discriminator: 1)
!335 = !DILocation(line: 993, column: 2, scope: !320)
!336 = !DILocation(line: 994, column: 1, scope: !308)
!337 = distinct !DISubprogram(name: "namespace_ipsets_handler", scope: !200, file: !200, line: 997, type: !285, isLocal: true, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!338 = !DILocalVariable(name: "strvec", arg: 1, scope: !337, file: !200, line: 997, type: !287)
!339 = !DILocation(line: 997, column: 36, scope: !337)
!340 = !DILocation(line: 999, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !200, line: 999, column: 6)
!342 = !DILocation(line: 999, column: 6, scope: !337)
!343 = !DILocation(line: 1000, column: 3, scope: !341)
!344 = !DILocation(line: 1002, column: 2, scope: !337)
!345 = !DILocation(line: 1002, column: 15, scope: !337)
!346 = !DILocation(line: 1002, column: 37, scope: !337)
!347 = !DILocation(line: 1003, column: 1, scope: !337)
!348 = !DILocation(line: 1003, column: 1, scope: !349)
!349 = !DILexicalBlockFile(scope: !337, file: !200, discriminator: 1)
!350 = distinct !DISubprogram(name: "use_pid_dir_handler", scope: !200, file: !200, line: 1038, type: !285, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!351 = !DILocalVariable(name: "strvec", arg: 1, scope: !350, file: !200, line: 1038, type: !287)
!352 = !DILocation(line: 1038, column: 31, scope: !350)
!353 = !DILocation(line: 1040, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !200, line: 1040, column: 6)
!355 = !DILocation(line: 1040, column: 6, scope: !350)
!356 = !DILocation(line: 1041, column: 3, scope: !354)
!357 = !DILocation(line: 1043, column: 14, scope: !350)
!358 = !DILocation(line: 1044, column: 1, scope: !350)
!359 = !DILocation(line: 1044, column: 1, scope: !360)
!360 = !DILexicalBlockFile(scope: !350, file: !200, discriminator: 1)
!361 = distinct !DISubprogram(name: "instance_handler", scope: !200, file: !200, line: 1022, type: !285, isLocal: true, isDefinition: true, scopeLine: 1023, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!362 = !DILocalVariable(name: "strvec", arg: 1, scope: !361, file: !200, line: 1022, type: !287)
!363 = !DILocation(line: 1022, column: 28, scope: !361)
!364 = !DILocation(line: 1024, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !200, line: 1024, column: 6)
!366 = !DILocation(line: 1024, column: 6, scope: !361)
!367 = !DILocation(line: 1025, column: 3, scope: !365)
!368 = !DILocation(line: 1027, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !200, line: 1027, column: 6)
!370 = !DILocation(line: 1027, column: 6, scope: !361)
!371 = !DILocation(line: 1028, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !200, line: 1028, column: 7)
!373 = distinct !DILexicalBlock(scope: !369, file: !200, line: 1027, column: 15)
!374 = !DILocation(line: 1028, column: 21, scope: !372)
!375 = !DILocation(line: 1028, column: 7, scope: !373)
!376 = !DILocation(line: 1029, column: 43, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !200, line: 1028, column: 36)
!378 = !DILocation(line: 1029, column: 33, scope: !377)
!379 = !DILocation(line: 1029, column: 4, scope: !377)
!380 = !DILocation(line: 1029, column: 17, scope: !377)
!381 = !DILocation(line: 1029, column: 31, scope: !377)
!382 = !DILocation(line: 1030, column: 16, scope: !377)
!383 = !DILocation(line: 1031, column: 3, scope: !377)
!384 = !DILocation(line: 1033, column: 113, scope: !372)
!385 = !DILocation(line: 1033, column: 101, scope: !372)
!386 = !DILocation(line: 1033, column: 4, scope: !387)
!387 = !DILexicalBlockFile(scope: !372, file: !200, discriminator: 1)
!388 = !DILocation(line: 1034, column: 2, scope: !373)
!389 = !DILocation(line: 1035, column: 1, scope: !361)
!390 = distinct !DISubprogram(name: "child_wait_handler", scope: !200, file: !200, line: 1065, type: !285, isLocal: true, isDefinition: true, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!391 = !DILocalVariable(name: "strvec", arg: 1, scope: !390, file: !200, line: 1065, type: !287)
!392 = !DILocation(line: 1065, column: 30, scope: !390)
!393 = !DILocalVariable(name: "secs", scope: !390, file: !200, line: 1067, type: !59)
!394 = !DILocation(line: 1067, column: 11, scope: !390)
!395 = !DILocation(line: 1069, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !390, file: !200, line: 1069, column: 6)
!397 = !DILocation(line: 1069, column: 6, scope: !390)
!398 = !DILocation(line: 1070, column: 3, scope: !396)
!399 = !DILocation(line: 1072, column: 28, scope: !400)
!400 = distinct !DILexicalBlock(scope: !390, file: !200, line: 1072, column: 6)
!401 = !DILocation(line: 1072, column: 7, scope: !400)
!402 = !DILocation(line: 1072, column: 6, scope: !390)
!403 = !DILocation(line: 1073, column: 95, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !200, line: 1072, column: 66)
!405 = !DILocation(line: 1073, column: 83, scope: !404)
!406 = !DILocation(line: 1073, column: 3, scope: !407)
!407 = !DILexicalBlockFile(scope: !404, file: !200, discriminator: 1)
!408 = !DILocation(line: 1074, column: 3, scope: !404)
!409 = !DILocation(line: 1077, column: 20, scope: !390)
!410 = !DILocation(line: 1077, column: 18, scope: !390)
!411 = !DILocation(line: 1078, column: 1, scope: !390)
!412 = !DILocation(line: 1078, column: 1, scope: !413)
!413 = !DILexicalBlockFile(scope: !390, file: !200, discriminator: 1)
!414 = distinct !DISubprogram(name: "routerid_handler", scope: !200, file: !200, line: 68, type: !285, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!415 = !DILocalVariable(name: "strvec", arg: 1, scope: !414, file: !200, line: 68, type: !287)
!416 = !DILocation(line: 68, column: 28, scope: !414)
!417 = !DILocation(line: 70, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !200, line: 70, column: 8)
!419 = distinct !DILexicalBlock(scope: !414, file: !200, line: 70, column: 2)
!420 = !DILocation(line: 70, column: 21, scope: !418)
!421 = !DILocation(line: 70, column: 8, scope: !419)
!422 = !DILocation(line: 70, column: 40, scope: !423)
!423 = !DILexicalBlockFile(scope: !424, file: !200, discriminator: 1)
!424 = distinct !DILexicalBlock(scope: !418, file: !200, line: 70, column: 32)
!425 = !DILocation(line: 70, column: 53, scope: !423)
!426 = !DILocation(line: 70, column: 35, scope: !423)
!427 = !DILocation(line: 70, column: 66, scope: !423)
!428 = !DILocation(line: 70, column: 79, scope: !423)
!429 = !DILocation(line: 70, column: 90, scope: !423)
!430 = !DILocation(line: 70, column: 3, scope: !423)
!431 = !DILocation(line: 71, column: 37, scope: !414)
!432 = !DILocation(line: 71, column: 27, scope: !414)
!433 = !DILocation(line: 71, column: 2, scope: !414)
!434 = !DILocation(line: 71, column: 15, scope: !414)
!435 = !DILocation(line: 71, column: 25, scope: !414)
!436 = !DILocation(line: 72, column: 1, scope: !414)
!437 = distinct !DISubprogram(name: "emailfrom_handler", scope: !200, file: !200, line: 74, type: !285, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!438 = !DILocalVariable(name: "strvec", arg: 1, scope: !437, file: !200, line: 74, type: !287)
!439 = !DILocation(line: 74, column: 29, scope: !437)
!440 = !DILocation(line: 76, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !200, line: 76, column: 8)
!442 = distinct !DILexicalBlock(scope: !437, file: !200, line: 76, column: 2)
!443 = !DILocation(line: 76, column: 21, scope: !441)
!444 = !DILocation(line: 76, column: 8, scope: !442)
!445 = !DILocation(line: 76, column: 41, scope: !446)
!446 = !DILexicalBlockFile(scope: !447, file: !200, discriminator: 1)
!447 = distinct !DILexicalBlock(scope: !441, file: !200, line: 76, column: 33)
!448 = !DILocation(line: 76, column: 54, scope: !446)
!449 = !DILocation(line: 76, column: 36, scope: !446)
!450 = !DILocation(line: 76, column: 68, scope: !446)
!451 = !DILocation(line: 76, column: 81, scope: !446)
!452 = !DILocation(line: 76, column: 93, scope: !446)
!453 = !DILocation(line: 76, column: 3, scope: !446)
!454 = !DILocation(line: 77, column: 38, scope: !437)
!455 = !DILocation(line: 77, column: 28, scope: !437)
!456 = !DILocation(line: 77, column: 2, scope: !437)
!457 = !DILocation(line: 77, column: 15, scope: !437)
!458 = !DILocation(line: 77, column: 26, scope: !437)
!459 = !DILocation(line: 78, column: 1, scope: !437)
!460 = distinct !DISubprogram(name: "smtpserver_handler", scope: !200, file: !200, line: 111, type: !285, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!461 = !DILocalVariable(name: "strvec", arg: 1, scope: !460, file: !200, line: 111, type: !287)
!462 = !DILocation(line: 111, column: 30, scope: !460)
!463 = !DILocalVariable(name: "ret", scope: !460, file: !200, line: 113, type: !50)
!464 = !DILocation(line: 113, column: 6, scope: !460)
!465 = !DILocalVariable(name: "port_str", scope: !460, file: !200, line: 114, type: !48)
!466 = !DILocation(line: 114, column: 8, scope: !460)
!467 = !DILocation(line: 117, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !460, file: !200, line: 117, column: 6)
!469 = !DILocation(line: 117, column: 17, scope: !468)
!470 = !DILocation(line: 117, column: 28, scope: !468)
!471 = !DILocation(line: 117, column: 6, scope: !460)
!472 = !DILocation(line: 118, column: 26, scope: !468)
!473 = !DILocation(line: 118, column: 14, scope: !468)
!474 = !DILocation(line: 118, column: 12, scope: !468)
!475 = !DILocation(line: 118, column: 3, scope: !468)
!476 = !DILocation(line: 121, column: 27, scope: !477)
!477 = distinct !DILexicalBlock(scope: !460, file: !200, line: 121, column: 6)
!478 = !DILocation(line: 121, column: 15, scope: !477)
!479 = !DILocation(line: 121, column: 7, scope: !480)
!480 = !DILexicalBlockFile(scope: !477, file: !200, discriminator: 1)
!481 = !DILocation(line: 121, column: 7, scope: !477)
!482 = !DILocation(line: 121, column: 6, scope: !460)
!483 = !DILocation(line: 122, column: 38, scope: !477)
!484 = !DILocation(line: 122, column: 26, scope: !477)
!485 = !DILocation(line: 122, column: 50, scope: !477)
!486 = !DILocation(line: 122, column: 61, scope: !477)
!487 = !DILocation(line: 122, column: 74, scope: !477)
!488 = !DILocation(line: 122, column: 9, scope: !480)
!489 = !DILocation(line: 122, column: 7, scope: !477)
!490 = !DILocation(line: 122, column: 3, scope: !477)
!491 = !DILocation(line: 124, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !460, file: !200, line: 124, column: 6)
!493 = !DILocation(line: 124, column: 10, scope: !492)
!494 = !DILocation(line: 124, column: 6, scope: !460)
!495 = !DILocation(line: 125, column: 34, scope: !492)
!496 = !DILocation(line: 125, column: 22, scope: !492)
!497 = !DILocation(line: 125, column: 46, scope: !492)
!498 = !DILocation(line: 125, column: 57, scope: !492)
!499 = !DILocation(line: 125, column: 70, scope: !492)
!500 = !DILocation(line: 125, column: 3, scope: !501)
!501 = !DILexicalBlockFile(scope: !492, file: !200, discriminator: 1)
!502 = !DILocation(line: 125, column: 3, scope: !492)
!503 = !DILocation(line: 127, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !460, file: !200, line: 127, column: 6)
!505 = !DILocation(line: 127, column: 19, scope: !504)
!506 = !DILocation(line: 127, column: 31, scope: !504)
!507 = !DILocation(line: 127, column: 41, scope: !504)
!508 = !DILocation(line: 127, column: 6, scope: !460)
!509 = !DILocation(line: 128, column: 94, scope: !504)
!510 = !DILocation(line: 128, column: 82, scope: !504)
!511 = !DILocation(line: 128, column: 106, scope: !504)
!512 = !DILocation(line: 128, column: 3, scope: !513)
!513 = !DILexicalBlockFile(scope: !504, file: !200, discriminator: 1)
!514 = !DILocation(line: 128, column: 3, scope: !504)
!515 = !DILocation(line: 129, column: 1, scope: !460)
!516 = distinct !DISubprogram(name: "smtphelo_handler", scope: !200, file: !200, line: 131, type: !285, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!517 = !DILocalVariable(name: "strvec", arg: 1, scope: !516, file: !200, line: 131, type: !287)
!518 = !DILocation(line: 131, column: 28, scope: !516)
!519 = !DILocalVariable(name: "helo_name", scope: !516, file: !200, line: 133, type: !48)
!520 = !DILocation(line: 133, column: 8, scope: !516)
!521 = !DILocation(line: 135, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !200, line: 135, column: 6)
!523 = !DILocation(line: 135, column: 17, scope: !522)
!524 = !DILocation(line: 135, column: 28, scope: !522)
!525 = !DILocation(line: 135, column: 6, scope: !516)
!526 = !DILocation(line: 136, column: 3, scope: !522)
!527 = !DILocation(line: 138, column: 41, scope: !516)
!528 = !DILocation(line: 138, column: 29, scope: !516)
!529 = !DILocation(line: 138, column: 22, scope: !530)
!530 = !DILexicalBlockFile(scope: !516, file: !200, discriminator: 1)
!531 = !DILocation(line: 138, column: 53, scope: !516)
!532 = !DILocation(line: 138, column: 15, scope: !533)
!533 = !DILexicalBlockFile(scope: !516, file: !200, discriminator: 2)
!534 = !DILocation(line: 138, column: 12, scope: !516)
!535 = !DILocation(line: 139, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !516, file: !200, line: 139, column: 6)
!537 = !DILocation(line: 139, column: 6, scope: !516)
!538 = !DILocation(line: 140, column: 3, scope: !536)
!539 = !DILocation(line: 142, column: 9, scope: !516)
!540 = !DILocation(line: 142, column: 32, scope: !516)
!541 = !DILocation(line: 142, column: 20, scope: !516)
!542 = !DILocation(line: 142, column: 2, scope: !530)
!543 = !DILocation(line: 143, column: 32, scope: !516)
!544 = !DILocation(line: 143, column: 2, scope: !516)
!545 = !DILocation(line: 143, column: 15, scope: !516)
!546 = !DILocation(line: 143, column: 30, scope: !516)
!547 = !DILocation(line: 144, column: 1, scope: !516)
!548 = !DILocation(line: 144, column: 1, scope: !530)
!549 = distinct !DISubprogram(name: "smtpto_handler", scope: !200, file: !200, line: 80, type: !285, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!550 = !DILocalVariable(name: "strvec", arg: 1, scope: !549, file: !200, line: 80, type: !287)
!551 = !DILocation(line: 80, column: 26, scope: !549)
!552 = !DILocalVariable(name: "timeout", scope: !549, file: !200, line: 82, type: !59)
!553 = !DILocation(line: 82, column: 11, scope: !549)
!554 = !DILocation(line: 86, column: 28, scope: !555)
!555 = distinct !DILexicalBlock(scope: !549, file: !200, line: 86, column: 6)
!556 = !DILocation(line: 86, column: 7, scope: !555)
!557 = !DILocation(line: 86, column: 6, scope: !549)
!558 = !DILocation(line: 87, column: 124, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !200, line: 86, column: 79)
!560 = !DILocation(line: 87, column: 112, scope: !559)
!561 = !DILocation(line: 87, column: 3, scope: !562)
!562 = !DILexicalBlockFile(scope: !559, file: !200, discriminator: 1)
!563 = !DILocation(line: 88, column: 3, scope: !559)
!564 = !DILocation(line: 91, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !549, file: !200, line: 91, column: 6)
!566 = !DILocation(line: 91, column: 14, scope: !565)
!567 = !DILocation(line: 91, column: 6, scope: !549)
!568 = !DILocation(line: 92, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !200, line: 91, column: 20)
!570 = !DILocation(line: 93, column: 11, scope: !569)
!571 = !DILocation(line: 94, column: 2, scope: !569)
!572 = !DILocation(line: 96, column: 36, scope: !549)
!573 = !DILocation(line: 96, column: 44, scope: !549)
!574 = !DILocation(line: 96, column: 2, scope: !549)
!575 = !DILocation(line: 96, column: 15, scope: !549)
!576 = !DILocation(line: 96, column: 34, scope: !549)
!577 = !DILocation(line: 97, column: 1, scope: !549)
!578 = !DILocation(line: 97, column: 1, scope: !579)
!579 = !DILexicalBlockFile(scope: !549, file: !200, discriminator: 1)
!580 = distinct !DISubprogram(name: "email_handler", scope: !200, file: !200, line: 146, type: !285, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!581 = !DILocalVariable(name: "strvec", arg: 1, scope: !580, file: !200, line: 146, type: !287)
!582 = !DILocation(line: 146, column: 25, scope: !580)
!583 = !DILocalVariable(name: "email_vec", scope: !580, file: !200, line: 148, type: !287)
!584 = !DILocation(line: 148, column: 12, scope: !580)
!585 = !DILocation(line: 148, column: 41, scope: !580)
!586 = !DILocation(line: 148, column: 24, scope: !580)
!587 = !DILocalVariable(name: "i", scope: !580, file: !200, line: 149, type: !59)
!588 = !DILocation(line: 149, column: 15, scope: !580)
!589 = !DILocalVariable(name: "str", scope: !580, file: !200, line: 150, type: !48)
!590 = !DILocation(line: 150, column: 8, scope: !580)
!591 = !DILocation(line: 152, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !580, file: !200, line: 152, column: 6)
!593 = !DILocation(line: 152, column: 6, scope: !580)
!594 = !DILocation(line: 153, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !200, line: 152, column: 18)
!596 = !DILocation(line: 154, column: 3, scope: !595)
!597 = !DILocation(line: 157, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !580, file: !200, line: 157, column: 2)
!599 = !DILocation(line: 157, column: 7, scope: !598)
!600 = !DILocation(line: 157, column: 14, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !200, discriminator: 1)
!602 = distinct !DILexicalBlock(scope: !598, file: !200, line: 157, column: 2)
!603 = !DILocation(line: 157, column: 20, scope: !601)
!604 = !DILocation(line: 157, column: 32, scope: !601)
!605 = !DILocation(line: 157, column: 16, scope: !601)
!606 = !DILocation(line: 157, column: 2, scope: !601)
!607 = !DILocation(line: 158, column: 29, scope: !608)
!608 = distinct !DILexicalBlock(scope: !602, file: !200, line: 157, column: 49)
!609 = !DILocation(line: 158, column: 10, scope: !608)
!610 = !DILocation(line: 158, column: 11, scope: !608)
!611 = !DILocation(line: 158, column: 23, scope: !608)
!612 = !DILocation(line: 158, column: 7, scope: !608)
!613 = !DILocation(line: 159, column: 15, scope: !608)
!614 = !DILocation(line: 159, column: 3, scope: !608)
!615 = !DILocation(line: 160, column: 2, scope: !608)
!616 = !DILocation(line: 157, column: 45, scope: !617)
!617 = !DILexicalBlockFile(scope: !602, file: !200, discriminator: 2)
!618 = !DILocation(line: 157, column: 2, scope: !617)
!619 = distinct !{!619, !620}
!620 = !DILocation(line: 157, column: 2, scope: !580)
!621 = !DILocation(line: 162, column: 14, scope: !580)
!622 = !DILocation(line: 162, column: 2, scope: !580)
!623 = !DILocation(line: 163, column: 1, scope: !580)
!624 = !DILocation(line: 163, column: 1, scope: !625)
!625 = !DILexicalBlockFile(scope: !580, file: !200, discriminator: 1)
!626 = distinct !DISubprogram(name: "smtp_alert_handler", scope: !200, file: !200, line: 165, type: !285, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!627 = !DILocalVariable(name: "strvec", arg: 1, scope: !626, file: !200, line: 165, type: !287)
!628 = !DILocation(line: 165, column: 30, scope: !626)
!629 = !DILocalVariable(name: "res", scope: !626, file: !200, line: 167, type: !50)
!630 = !DILocation(line: 167, column: 6, scope: !626)
!631 = !DILocation(line: 169, column: 8, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !200, line: 169, column: 6)
!633 = !DILocation(line: 169, column: 17, scope: !632)
!634 = !DILocation(line: 169, column: 28, scope: !632)
!635 = !DILocation(line: 169, column: 6, scope: !626)
!636 = !DILocation(line: 170, column: 38, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !200, line: 169, column: 34)
!638 = !DILocation(line: 170, column: 26, scope: !637)
!639 = !DILocation(line: 170, column: 9, scope: !640)
!640 = !DILexicalBlockFile(scope: !637, file: !200, discriminator: 1)
!641 = !DILocation(line: 170, column: 7, scope: !637)
!642 = !DILocation(line: 171, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !637, file: !200, line: 171, column: 7)
!644 = !DILocation(line: 171, column: 11, scope: !643)
!645 = !DILocation(line: 171, column: 7, scope: !637)
!646 = !DILocation(line: 172, column: 120, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !200, line: 171, column: 16)
!648 = !DILocation(line: 172, column: 108, scope: !647)
!649 = !DILocation(line: 172, column: 4, scope: !650)
!650 = !DILexicalBlockFile(scope: !647, file: !200, discriminator: 1)
!651 = !DILocation(line: 173, column: 4, scope: !647)
!652 = !DILocation(line: 175, column: 2, scope: !637)
!653 = !DILocation(line: 177, column: 28, scope: !626)
!654 = !DILocation(line: 177, column: 2, scope: !626)
!655 = !DILocation(line: 177, column: 15, scope: !626)
!656 = !DILocation(line: 177, column: 26, scope: !626)
!657 = !DILocation(line: 178, column: 1, scope: !626)
!658 = !DILocation(line: 178, column: 1, scope: !659)
!659 = !DILexicalBlockFile(scope: !626, file: !200, discriminator: 1)
!660 = distinct !DISubprogram(name: "smtp_alert_vrrp_handler", scope: !200, file: !200, line: 181, type: !285, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!661 = !DILocalVariable(name: "strvec", arg: 1, scope: !660, file: !200, line: 181, type: !287)
!662 = !DILocation(line: 181, column: 35, scope: !660)
!663 = !DILocalVariable(name: "res", scope: !660, file: !200, line: 183, type: !50)
!664 = !DILocation(line: 183, column: 6, scope: !660)
!665 = !DILocation(line: 185, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !200, line: 185, column: 6)
!667 = !DILocation(line: 185, column: 17, scope: !666)
!668 = !DILocation(line: 185, column: 28, scope: !666)
!669 = !DILocation(line: 185, column: 6, scope: !660)
!670 = !DILocation(line: 186, column: 38, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !200, line: 185, column: 34)
!672 = !DILocation(line: 186, column: 26, scope: !671)
!673 = !DILocation(line: 186, column: 9, scope: !674)
!674 = !DILexicalBlockFile(scope: !671, file: !200, discriminator: 1)
!675 = !DILocation(line: 186, column: 7, scope: !671)
!676 = !DILocation(line: 187, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !671, file: !200, line: 187, column: 7)
!678 = !DILocation(line: 187, column: 11, scope: !677)
!679 = !DILocation(line: 187, column: 7, scope: !671)
!680 = !DILocation(line: 188, column: 125, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !200, line: 187, column: 16)
!682 = !DILocation(line: 188, column: 113, scope: !681)
!683 = !DILocation(line: 188, column: 4, scope: !684)
!684 = !DILexicalBlockFile(scope: !681, file: !200, discriminator: 1)
!685 = !DILocation(line: 189, column: 4, scope: !681)
!686 = !DILocation(line: 191, column: 2, scope: !671)
!687 = !DILocation(line: 193, column: 33, scope: !660)
!688 = !DILocation(line: 193, column: 2, scope: !660)
!689 = !DILocation(line: 193, column: 15, scope: !660)
!690 = !DILocation(line: 193, column: 31, scope: !660)
!691 = !DILocation(line: 194, column: 1, scope: !660)
!692 = !DILocation(line: 194, column: 1, scope: !693)
!693 = !DILexicalBlockFile(scope: !660, file: !200, discriminator: 1)
!694 = distinct !DISubprogram(name: "smtp_alert_checker_handler", scope: !200, file: !200, line: 198, type: !285, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!695 = !DILocalVariable(name: "strvec", arg: 1, scope: !694, file: !200, line: 198, type: !287)
!696 = !DILocation(line: 198, column: 38, scope: !694)
!697 = !DILocalVariable(name: "res", scope: !694, file: !200, line: 200, type: !50)
!698 = !DILocation(line: 200, column: 6, scope: !694)
!699 = !DILocation(line: 202, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !694, file: !200, line: 202, column: 6)
!701 = !DILocation(line: 202, column: 17, scope: !700)
!702 = !DILocation(line: 202, column: 28, scope: !700)
!703 = !DILocation(line: 202, column: 6, scope: !694)
!704 = !DILocation(line: 203, column: 38, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !200, line: 202, column: 34)
!706 = !DILocation(line: 203, column: 26, scope: !705)
!707 = !DILocation(line: 203, column: 9, scope: !708)
!708 = !DILexicalBlockFile(scope: !705, file: !200, discriminator: 1)
!709 = !DILocation(line: 203, column: 7, scope: !705)
!710 = !DILocation(line: 204, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !705, file: !200, line: 204, column: 7)
!712 = !DILocation(line: 204, column: 11, scope: !711)
!713 = !DILocation(line: 204, column: 7, scope: !705)
!714 = !DILocation(line: 205, column: 128, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !200, line: 204, column: 16)
!716 = !DILocation(line: 205, column: 116, scope: !715)
!717 = !DILocation(line: 205, column: 4, scope: !718)
!718 = !DILexicalBlockFile(scope: !715, file: !200, discriminator: 1)
!719 = !DILocation(line: 206, column: 4, scope: !715)
!720 = !DILocation(line: 208, column: 2, scope: !705)
!721 = !DILocation(line: 210, column: 36, scope: !694)
!722 = !DILocation(line: 210, column: 2, scope: !694)
!723 = !DILocation(line: 210, column: 15, scope: !694)
!724 = !DILocation(line: 210, column: 34, scope: !694)
!725 = !DILocation(line: 211, column: 1, scope: !694)
!726 = !DILocation(line: 211, column: 1, scope: !727)
!727 = !DILexicalBlockFile(scope: !694, file: !200, discriminator: 1)
!728 = distinct !DISubprogram(name: "dynamic_interfaces_handler", scope: !200, file: !200, line: 100, type: !285, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!729 = !DILocalVariable(name: "strvec", arg: 1, scope: !728, file: !200, line: 100, type: !287)
!730 = !DILocation(line: 100, column: 61, scope: !728)
!731 = !DILocation(line: 102, column: 2, scope: !728)
!732 = !DILocation(line: 102, column: 15, scope: !728)
!733 = !DILocation(line: 102, column: 34, scope: !728)
!734 = !DILocation(line: 103, column: 1, scope: !728)
!735 = distinct !DISubprogram(name: "no_email_faults_handler", scope: !200, file: !200, line: 105, type: !285, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!736 = !DILocalVariable(name: "strvec", arg: 1, scope: !735, file: !200, line: 105, type: !287)
!737 = !DILocation(line: 105, column: 58, scope: !735)
!738 = !DILocation(line: 107, column: 2, scope: !735)
!739 = !DILocation(line: 107, column: 15, scope: !735)
!740 = !DILocation(line: 107, column: 31, scope: !735)
!741 = !DILocation(line: 108, column: 1, scope: !735)
!742 = distinct !DISubprogram(name: "default_interface_handler", scope: !200, file: !200, line: 215, type: !285, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!743 = !DILocalVariable(name: "strvec", arg: 1, scope: !742, file: !200, line: 215, type: !287)
!744 = !DILocation(line: 215, column: 37, scope: !742)
!745 = !DILocation(line: 217, column: 8, scope: !746)
!746 = distinct !DILexicalBlock(scope: !742, file: !200, line: 217, column: 6)
!747 = !DILocation(line: 217, column: 17, scope: !746)
!748 = !DILocation(line: 217, column: 28, scope: !746)
!749 = !DILocation(line: 217, column: 6, scope: !742)
!750 = !DILocation(line: 218, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !200, line: 217, column: 33)
!752 = !DILocation(line: 219, column: 3, scope: !751)
!753 = !DILocation(line: 221, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !200, line: 221, column: 8)
!755 = distinct !DILexicalBlock(scope: !742, file: !200, line: 221, column: 2)
!756 = !DILocation(line: 221, column: 21, scope: !754)
!757 = !DILocation(line: 221, column: 8, scope: !755)
!758 = !DILocation(line: 221, column: 45, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !200, discriminator: 1)
!760 = distinct !DILexicalBlock(scope: !754, file: !200, line: 221, column: 37)
!761 = !DILocation(line: 221, column: 58, scope: !759)
!762 = !DILocation(line: 221, column: 40, scope: !759)
!763 = !DILocation(line: 221, column: 76, scope: !759)
!764 = !DILocation(line: 221, column: 89, scope: !759)
!765 = !DILocation(line: 221, column: 105, scope: !759)
!766 = !DILocation(line: 221, column: 3, scope: !759)
!767 = !DILocation(line: 222, column: 42, scope: !742)
!768 = !DILocation(line: 222, column: 32, scope: !742)
!769 = !DILocation(line: 222, column: 2, scope: !742)
!770 = !DILocation(line: 222, column: 15, scope: !742)
!771 = !DILocation(line: 222, column: 30, scope: !742)
!772 = !DILocation(line: 226, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !742, file: !200, line: 226, column: 6)
!774 = !DILocation(line: 226, column: 16, scope: !773)
!775 = !DILocation(line: 226, column: 6, scope: !742)
!776 = !DILocation(line: 229, column: 47, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !200, line: 228, column: 2)
!778 = !DILocation(line: 229, column: 60, scope: !777)
!779 = !DILocation(line: 229, column: 30, scope: !777)
!780 = !DILocation(line: 229, column: 3, scope: !777)
!781 = !DILocation(line: 229, column: 16, scope: !777)
!782 = !DILocation(line: 229, column: 28, scope: !777)
!783 = !DILocation(line: 230, column: 8, scope: !784)
!784 = distinct !DILexicalBlock(scope: !777, file: !200, line: 230, column: 7)
!785 = !DILocation(line: 230, column: 21, scope: !784)
!786 = !DILocation(line: 230, column: 7, scope: !777)
!787 = !DILocation(line: 231, column: 94, scope: !784)
!788 = !DILocation(line: 231, column: 107, scope: !784)
!789 = !DILocation(line: 231, column: 4, scope: !784)
!790 = !DILocation(line: 232, column: 2, scope: !777)
!791 = !DILocation(line: 233, column: 1, scope: !742)
!792 = distinct !DISubprogram(name: "lvs_timeouts", scope: !200, file: !200, line: 237, type: !285, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!793 = !DILocalVariable(name: "strvec", arg: 1, scope: !792, file: !200, line: 237, type: !287)
!794 = !DILocation(line: 237, column: 24, scope: !792)
!795 = !DILocalVariable(name: "val", scope: !792, file: !200, line: 239, type: !59)
!796 = !DILocation(line: 239, column: 11, scope: !792)
!797 = !DILocalVariable(name: "i", scope: !792, file: !200, line: 240, type: !189)
!798 = !DILocation(line: 240, column: 9, scope: !792)
!799 = !DILocation(line: 242, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !200, line: 242, column: 6)
!801 = !DILocation(line: 242, column: 17, scope: !800)
!802 = !DILocation(line: 242, column: 28, scope: !800)
!803 = !DILocation(line: 242, column: 6, scope: !792)
!804 = !DILocation(line: 243, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !200, line: 242, column: 33)
!806 = !DILocation(line: 244, column: 3, scope: !805)
!807 = !DILocation(line: 247, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !792, file: !200, line: 247, column: 2)
!809 = !DILocation(line: 247, column: 7, scope: !808)
!810 = !DILocation(line: 247, column: 14, scope: !811)
!811 = !DILexicalBlockFile(scope: !812, file: !200, discriminator: 1)
!812 = distinct !DILexicalBlock(scope: !808, file: !200, line: 247, column: 2)
!813 = !DILocation(line: 247, column: 20, scope: !811)
!814 = !DILocation(line: 247, column: 29, scope: !811)
!815 = !DILocation(line: 247, column: 18, scope: !811)
!816 = !DILocation(line: 247, column: 16, scope: !811)
!817 = !DILocation(line: 247, column: 2, scope: !811)
!818 = !DILocation(line: 248, column: 27, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !200, line: 248, column: 7)
!820 = distinct !DILexicalBlock(scope: !812, file: !200, line: 247, column: 46)
!821 = !DILocation(line: 248, column: 35, scope: !819)
!822 = !DILocation(line: 248, column: 15, scope: !819)
!823 = !DILocation(line: 248, column: 8, scope: !824)
!824 = !DILexicalBlockFile(scope: !819, file: !200, discriminator: 1)
!825 = !DILocation(line: 248, column: 8, scope: !819)
!826 = !DILocation(line: 248, column: 7, scope: !820)
!827 = !DILocation(line: 249, column: 8, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !200, line: 249, column: 8)
!829 = distinct !DILexicalBlock(scope: !819, file: !200, line: 248, column: 47)
!830 = !DILocation(line: 249, column: 15, scope: !828)
!831 = !DILocation(line: 249, column: 24, scope: !828)
!832 = !DILocation(line: 249, column: 35, scope: !828)
!833 = !DILocation(line: 249, column: 13, scope: !828)
!834 = !DILocation(line: 249, column: 10, scope: !828)
!835 = !DILocation(line: 249, column: 8, scope: !829)
!836 = !DILocation(line: 250, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !828, file: !200, line: 249, column: 40)
!838 = !DILocation(line: 251, column: 5, scope: !837)
!839 = !DILocation(line: 253, column: 30, scope: !840)
!840 = distinct !DILexicalBlock(scope: !829, file: !200, line: 253, column: 8)
!841 = !DILocation(line: 253, column: 38, scope: !840)
!842 = !DILocation(line: 253, column: 40, scope: !840)
!843 = !DILocation(line: 253, column: 9, scope: !840)
!844 = !DILocation(line: 253, column: 8, scope: !829)
!845 = !DILocation(line: 254, column: 110, scope: !840)
!846 = !DILocation(line: 254, column: 117, scope: !840)
!847 = !DILocation(line: 254, column: 118, scope: !840)
!848 = !DILocation(line: 254, column: 98, scope: !840)
!849 = !DILocation(line: 254, column: 5, scope: !850)
!850 = !DILexicalBlockFile(scope: !840, file: !200, discriminator: 1)
!851 = !DILocation(line: 254, column: 5, scope: !840)
!852 = !DILocation(line: 256, column: 36, scope: !840)
!853 = !DILocation(line: 256, column: 5, scope: !840)
!854 = !DILocation(line: 256, column: 18, scope: !840)
!855 = !DILocation(line: 256, column: 34, scope: !840)
!856 = !DILocation(line: 257, column: 5, scope: !829)
!857 = !DILocation(line: 258, column: 4, scope: !829)
!858 = !DILocation(line: 260, column: 27, scope: !859)
!859 = distinct !DILexicalBlock(scope: !820, file: !200, line: 260, column: 7)
!860 = !DILocation(line: 260, column: 35, scope: !859)
!861 = !DILocation(line: 260, column: 15, scope: !859)
!862 = !DILocation(line: 260, column: 8, scope: !863)
!863 = !DILexicalBlockFile(scope: !859, file: !200, discriminator: 1)
!864 = !DILocation(line: 260, column: 8, scope: !859)
!865 = !DILocation(line: 260, column: 7, scope: !820)
!866 = !DILocation(line: 261, column: 8, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !200, line: 261, column: 8)
!868 = distinct !DILexicalBlock(scope: !859, file: !200, line: 260, column: 50)
!869 = !DILocation(line: 261, column: 15, scope: !867)
!870 = !DILocation(line: 261, column: 24, scope: !867)
!871 = !DILocation(line: 261, column: 35, scope: !867)
!872 = !DILocation(line: 261, column: 13, scope: !867)
!873 = !DILocation(line: 261, column: 10, scope: !867)
!874 = !DILocation(line: 261, column: 8, scope: !868)
!875 = !DILocation(line: 262, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !867, file: !200, line: 261, column: 40)
!877 = !DILocation(line: 263, column: 5, scope: !876)
!878 = !DILocation(line: 265, column: 30, scope: !879)
!879 = distinct !DILexicalBlock(scope: !868, file: !200, line: 265, column: 8)
!880 = !DILocation(line: 265, column: 38, scope: !879)
!881 = !DILocation(line: 265, column: 40, scope: !879)
!882 = !DILocation(line: 265, column: 9, scope: !879)
!883 = !DILocation(line: 265, column: 8, scope: !868)
!884 = !DILocation(line: 266, column: 113, scope: !879)
!885 = !DILocation(line: 266, column: 120, scope: !879)
!886 = !DILocation(line: 266, column: 121, scope: !879)
!887 = !DILocation(line: 266, column: 101, scope: !879)
!888 = !DILocation(line: 266, column: 5, scope: !889)
!889 = !DILexicalBlockFile(scope: !879, file: !200, discriminator: 1)
!890 = !DILocation(line: 266, column: 5, scope: !879)
!891 = !DILocation(line: 268, column: 39, scope: !879)
!892 = !DILocation(line: 268, column: 5, scope: !879)
!893 = !DILocation(line: 268, column: 18, scope: !879)
!894 = !DILocation(line: 268, column: 37, scope: !879)
!895 = !DILocation(line: 269, column: 5, scope: !868)
!896 = !DILocation(line: 270, column: 4, scope: !868)
!897 = !DILocation(line: 272, column: 27, scope: !898)
!898 = distinct !DILexicalBlock(scope: !820, file: !200, line: 272, column: 7)
!899 = !DILocation(line: 272, column: 35, scope: !898)
!900 = !DILocation(line: 272, column: 15, scope: !898)
!901 = !DILocation(line: 272, column: 8, scope: !902)
!902 = !DILexicalBlockFile(scope: !898, file: !200, discriminator: 1)
!903 = !DILocation(line: 272, column: 8, scope: !898)
!904 = !DILocation(line: 272, column: 7, scope: !820)
!905 = !DILocation(line: 273, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !200, line: 273, column: 8)
!907 = distinct !DILexicalBlock(scope: !898, file: !200, line: 272, column: 47)
!908 = !DILocation(line: 273, column: 15, scope: !906)
!909 = !DILocation(line: 273, column: 24, scope: !906)
!910 = !DILocation(line: 273, column: 35, scope: !906)
!911 = !DILocation(line: 273, column: 13, scope: !906)
!912 = !DILocation(line: 273, column: 10, scope: !906)
!913 = !DILocation(line: 273, column: 8, scope: !907)
!914 = !DILocation(line: 274, column: 5, scope: !915)
!915 = distinct !DILexicalBlock(scope: !906, file: !200, line: 273, column: 40)
!916 = !DILocation(line: 275, column: 5, scope: !915)
!917 = !DILocation(line: 277, column: 30, scope: !918)
!918 = distinct !DILexicalBlock(scope: !907, file: !200, line: 277, column: 8)
!919 = !DILocation(line: 277, column: 38, scope: !918)
!920 = !DILocation(line: 277, column: 40, scope: !918)
!921 = !DILocation(line: 277, column: 9, scope: !918)
!922 = !DILocation(line: 277, column: 8, scope: !907)
!923 = !DILocation(line: 278, column: 110, scope: !918)
!924 = !DILocation(line: 278, column: 117, scope: !918)
!925 = !DILocation(line: 278, column: 118, scope: !918)
!926 = !DILocation(line: 278, column: 98, scope: !918)
!927 = !DILocation(line: 278, column: 5, scope: !928)
!928 = !DILexicalBlockFile(scope: !918, file: !200, discriminator: 1)
!929 = !DILocation(line: 278, column: 5, scope: !918)
!930 = !DILocation(line: 280, column: 36, scope: !918)
!931 = !DILocation(line: 280, column: 5, scope: !918)
!932 = !DILocation(line: 280, column: 18, scope: !918)
!933 = !DILocation(line: 280, column: 34, scope: !918)
!934 = !DILocation(line: 281, column: 5, scope: !907)
!935 = !DILocation(line: 282, column: 4, scope: !907)
!936 = !DILocation(line: 284, column: 113, scope: !820)
!937 = !DILocation(line: 284, column: 120, scope: !820)
!938 = !DILocation(line: 284, column: 101, scope: !820)
!939 = !DILocation(line: 284, column: 3, scope: !940)
!940 = !DILexicalBlockFile(scope: !820, file: !200, discriminator: 1)
!941 = !DILocation(line: 285, column: 2, scope: !820)
!942 = !DILocation(line: 247, column: 42, scope: !943)
!943 = !DILexicalBlockFile(scope: !812, file: !200, discriminator: 2)
!944 = !DILocation(line: 247, column: 2, scope: !943)
!945 = distinct !{!945, !946}
!946 = !DILocation(line: 247, column: 2, scope: !792)
!947 = !DILocation(line: 286, column: 1, scope: !792)
!948 = distinct !DISubprogram(name: "lvs_flush_handler", scope: !200, file: !200, line: 407, type: !285, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!949 = !DILocalVariable(name: "strvec", arg: 1, scope: !948, file: !200, line: 407, type: !287)
!950 = !DILocation(line: 407, column: 53, scope: !948)
!951 = !DILocation(line: 409, column: 2, scope: !948)
!952 = !DILocation(line: 409, column: 15, scope: !948)
!953 = !DILocation(line: 409, column: 25, scope: !948)
!954 = !DILocation(line: 410, column: 1, scope: !948)
!955 = distinct !DISubprogram(name: "lvs_syncd_handler", scope: !200, file: !200, line: 289, type: !285, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!956 = !DILocalVariable(name: "strvec", arg: 1, scope: !955, file: !200, line: 289, type: !287)
!957 = !DILocation(line: 289, column: 29, scope: !955)
!958 = !DILocalVariable(name: "val", scope: !955, file: !200, line: 291, type: !59)
!959 = !DILocation(line: 291, column: 11, scope: !955)
!960 = !DILocalVariable(name: "i", scope: !955, file: !200, line: 292, type: !189)
!961 = !DILocation(line: 292, column: 9, scope: !955)
!962 = !DILocation(line: 294, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !955, file: !200, line: 294, column: 6)
!964 = !DILocation(line: 294, column: 19, scope: !963)
!965 = !DILocation(line: 294, column: 29, scope: !963)
!966 = !DILocation(line: 294, column: 6, scope: !955)
!967 = !DILocation(line: 295, column: 111, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !200, line: 294, column: 37)
!969 = !DILocation(line: 295, column: 124, scope: !968)
!970 = !DILocation(line: 295, column: 134, scope: !968)
!971 = !DILocation(line: 295, column: 142, scope: !968)
!972 = !DILocation(line: 295, column: 155, scope: !968)
!973 = !DILocation(line: 295, column: 165, scope: !968)
!974 = !DILocation(line: 295, column: 3, scope: !968)
!975 = !DILocation(line: 296, column: 3, scope: !968)
!976 = !DILocation(line: 299, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !955, file: !200, line: 299, column: 6)
!978 = !DILocation(line: 299, column: 17, scope: !977)
!979 = !DILocation(line: 299, column: 28, scope: !977)
!980 = !DILocation(line: 299, column: 6, scope: !955)
!981 = !DILocation(line: 300, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !200, line: 299, column: 33)
!983 = !DILocation(line: 301, column: 3, scope: !982)
!984 = !DILocation(line: 304, column: 25, scope: !985)
!985 = distinct !DILexicalBlock(scope: !955, file: !200, line: 304, column: 6)
!986 = !DILocation(line: 304, column: 13, scope: !985)
!987 = !DILocation(line: 304, column: 6, scope: !988)
!988 = !DILexicalBlockFile(scope: !985, file: !200, discriminator: 1)
!989 = !DILocation(line: 304, column: 37, scope: !985)
!990 = !DILocation(line: 304, column: 6, scope: !955)
!991 = !DILocation(line: 305, column: 124, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !200, line: 304, column: 60)
!993 = !DILocation(line: 305, column: 112, scope: !992)
!994 = !DILocation(line: 305, column: 3, scope: !995)
!995 = !DILexicalBlockFile(scope: !992, file: !200, discriminator: 1)
!996 = !DILocation(line: 306, column: 3, scope: !992)
!997 = !DILocation(line: 309, column: 25, scope: !998)
!998 = distinct !DILexicalBlock(scope: !955, file: !200, line: 309, column: 6)
!999 = !DILocation(line: 309, column: 13, scope: !998)
!1000 = !DILocation(line: 309, column: 6, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !998, file: !200, discriminator: 1)
!1002 = !DILocation(line: 309, column: 37, scope: !998)
!1003 = !DILocation(line: 309, column: 6, scope: !955)
!1004 = !DILocation(line: 310, column: 129, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !998, file: !200, line: 309, column: 60)
!1006 = !DILocation(line: 310, column: 117, scope: !1005)
!1007 = !DILocation(line: 310, column: 3, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1005, file: !200, discriminator: 1)
!1009 = !DILocation(line: 311, column: 3, scope: !1005)
!1010 = !DILocation(line: 314, column: 44, scope: !955)
!1011 = !DILocation(line: 314, column: 34, scope: !955)
!1012 = !DILocation(line: 314, column: 2, scope: !955)
!1013 = !DILocation(line: 314, column: 15, scope: !955)
!1014 = !DILocation(line: 314, column: 25, scope: !955)
!1015 = !DILocation(line: 314, column: 32, scope: !955)
!1016 = !DILocation(line: 316, column: 64, scope: !955)
!1017 = !DILocation(line: 316, column: 52, scope: !955)
!1018 = !DILocation(line: 316, column: 45, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !955, file: !200, discriminator: 1)
!1020 = !DILocation(line: 316, column: 76, scope: !955)
!1021 = !DILocation(line: 316, column: 38, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !955, file: !200, discriminator: 2)
!1023 = !DILocation(line: 316, column: 2, scope: !955)
!1024 = !DILocation(line: 316, column: 15, scope: !955)
!1025 = !DILocation(line: 316, column: 25, scope: !955)
!1026 = !DILocation(line: 316, column: 35, scope: !955)
!1027 = !DILocation(line: 317, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !955, file: !200, line: 317, column: 6)
!1029 = !DILocation(line: 317, column: 20, scope: !1028)
!1030 = !DILocation(line: 317, column: 30, scope: !1028)
!1031 = !DILocation(line: 317, column: 6, scope: !955)
!1032 = !DILocation(line: 318, column: 3, scope: !1028)
!1033 = !DILocation(line: 319, column: 9, scope: !955)
!1034 = !DILocation(line: 319, column: 22, scope: !955)
!1035 = !DILocation(line: 319, column: 32, scope: !955)
!1036 = !DILocation(line: 319, column: 55, scope: !955)
!1037 = !DILocation(line: 319, column: 43, scope: !955)
!1038 = !DILocation(line: 319, column: 2, scope: !1019)
!1039 = !DILocation(line: 322, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !955, file: !200, line: 322, column: 6)
!1041 = !DILocation(line: 322, column: 17, scope: !1040)
!1042 = !DILocation(line: 322, column: 28, scope: !1040)
!1043 = !DILocation(line: 322, column: 33, scope: !1040)
!1044 = !DILocation(line: 322, column: 53, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1040, file: !200, discriminator: 1)
!1046 = !DILocation(line: 322, column: 41, scope: !1045)
!1047 = !DILocation(line: 322, column: 33, scope: !1045)
!1048 = !DILocation(line: 322, column: 54, scope: !1045)
!1049 = !DILocation(line: 322, column: 34, scope: !1045)
!1050 = !DILocation(line: 322, column: 36, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1045, file: !200, discriminator: 2)
!1052 = !DILocation(line: 322, column: 35, scope: !1045)
!1053 = !DILocation(line: 322, column: 37, scope: !1045)
!1054 = !DILocation(line: 322, column: 6, scope: !1045)
!1055 = !DILocation(line: 323, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1040, file: !200, line: 322, column: 71)
!1057 = !DILocation(line: 324, column: 29, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !200, line: 324, column: 7)
!1059 = !DILocation(line: 324, column: 8, scope: !1058)
!1060 = !DILocation(line: 324, column: 7, scope: !1056)
!1061 = !DILocation(line: 325, column: 110, scope: !1058)
!1062 = !DILocation(line: 325, column: 98, scope: !1058)
!1063 = !DILocation(line: 325, column: 4, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1058, file: !200, discriminator: 1)
!1065 = !DILocation(line: 325, column: 4, scope: !1058)
!1066 = !DILocation(line: 327, column: 36, scope: !1058)
!1067 = !DILocation(line: 327, column: 4, scope: !1058)
!1068 = !DILocation(line: 327, column: 17, scope: !1058)
!1069 = !DILocation(line: 327, column: 27, scope: !1058)
!1070 = !DILocation(line: 327, column: 34, scope: !1058)
!1071 = !DILocation(line: 328, column: 5, scope: !1056)
!1072 = !DILocation(line: 329, column: 2, scope: !1056)
!1073 = !DILocation(line: 331, column: 5, scope: !1040)
!1074 = !DILocation(line: 333, column: 2, scope: !955)
!1075 = !DILocation(line: 333, column: 10, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !200, discriminator: 1)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !200, line: 333, column: 2)
!1078 = distinct !DILexicalBlock(scope: !955, file: !200, line: 333, column: 2)
!1079 = !DILocation(line: 333, column: 16, scope: !1076)
!1080 = !DILocation(line: 333, column: 25, scope: !1076)
!1081 = !DILocation(line: 333, column: 14, scope: !1076)
!1082 = !DILocation(line: 333, column: 12, scope: !1076)
!1083 = !DILocation(line: 333, column: 2, scope: !1076)
!1084 = !DILocation(line: 334, column: 27, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !200, line: 334, column: 7)
!1086 = distinct !DILexicalBlock(scope: !1077, file: !200, line: 333, column: 42)
!1087 = !DILocation(line: 334, column: 35, scope: !1085)
!1088 = !DILocation(line: 334, column: 15, scope: !1085)
!1089 = !DILocation(line: 334, column: 8, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1085, file: !200, discriminator: 1)
!1091 = !DILocation(line: 334, column: 8, scope: !1085)
!1092 = !DILocation(line: 334, column: 7, scope: !1086)
!1093 = !DILocation(line: 335, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !200, line: 335, column: 8)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !200, line: 334, column: 46)
!1096 = !DILocation(line: 335, column: 15, scope: !1094)
!1097 = !DILocation(line: 335, column: 24, scope: !1094)
!1098 = !DILocation(line: 335, column: 35, scope: !1094)
!1099 = !DILocation(line: 335, column: 13, scope: !1094)
!1100 = !DILocation(line: 335, column: 10, scope: !1094)
!1101 = !DILocation(line: 335, column: 8, scope: !1095)
!1102 = !DILocation(line: 336, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !200, line: 335, column: 40)
!1104 = !DILocation(line: 337, column: 5, scope: !1103)
!1105 = !DILocation(line: 339, column: 30, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1095, file: !200, line: 339, column: 8)
!1107 = !DILocation(line: 339, column: 38, scope: !1106)
!1108 = !DILocation(line: 339, column: 40, scope: !1106)
!1109 = !DILocation(line: 339, column: 9, scope: !1106)
!1110 = !DILocation(line: 339, column: 8, scope: !1095)
!1111 = !DILocation(line: 340, column: 111, scope: !1106)
!1112 = !DILocation(line: 340, column: 118, scope: !1106)
!1113 = !DILocation(line: 340, column: 119, scope: !1106)
!1114 = !DILocation(line: 340, column: 99, scope: !1106)
!1115 = !DILocation(line: 340, column: 5, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1106, file: !200, discriminator: 1)
!1117 = !DILocation(line: 340, column: 5, scope: !1106)
!1118 = !DILocation(line: 342, column: 37, scope: !1106)
!1119 = !DILocation(line: 342, column: 5, scope: !1106)
!1120 = !DILocation(line: 342, column: 18, scope: !1106)
!1121 = !DILocation(line: 342, column: 28, scope: !1106)
!1122 = !DILocation(line: 342, column: 35, scope: !1106)
!1123 = !DILocation(line: 343, column: 5, scope: !1095)
!1124 = !DILocation(line: 344, column: 4, scope: !1095)
!1125 = !DILocation(line: 347, column: 27, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1086, file: !200, line: 347, column: 7)
!1127 = !DILocation(line: 347, column: 35, scope: !1126)
!1128 = !DILocation(line: 347, column: 15, scope: !1126)
!1129 = !DILocation(line: 347, column: 8, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1126, file: !200, discriminator: 1)
!1131 = !DILocation(line: 347, column: 8, scope: !1126)
!1132 = !DILocation(line: 347, column: 7, scope: !1086)
!1133 = !DILocation(line: 348, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !200, line: 348, column: 8)
!1135 = distinct !DILexicalBlock(scope: !1126, file: !200, line: 347, column: 50)
!1136 = !DILocation(line: 348, column: 15, scope: !1134)
!1137 = !DILocation(line: 348, column: 24, scope: !1134)
!1138 = !DILocation(line: 348, column: 35, scope: !1134)
!1139 = !DILocation(line: 348, column: 13, scope: !1134)
!1140 = !DILocation(line: 348, column: 10, scope: !1134)
!1141 = !DILocation(line: 348, column: 8, scope: !1135)
!1142 = !DILocation(line: 349, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1134, file: !200, line: 348, column: 40)
!1144 = !DILocation(line: 350, column: 5, scope: !1143)
!1145 = !DILocation(line: 352, column: 30, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1135, file: !200, line: 352, column: 8)
!1147 = !DILocation(line: 352, column: 38, scope: !1146)
!1148 = !DILocation(line: 352, column: 40, scope: !1146)
!1149 = !DILocation(line: 352, column: 9, scope: !1146)
!1150 = !DILocation(line: 352, column: 8, scope: !1135)
!1151 = !DILocation(line: 353, column: 117, scope: !1146)
!1152 = !DILocation(line: 353, column: 124, scope: !1146)
!1153 = !DILocation(line: 353, column: 125, scope: !1146)
!1154 = !DILocation(line: 353, column: 105, scope: !1146)
!1155 = !DILocation(line: 353, column: 5, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1146, file: !200, discriminator: 1)
!1157 = !DILocation(line: 353, column: 5, scope: !1146)
!1158 = !DILocation(line: 355, column: 52, scope: !1146)
!1159 = !DILocation(line: 355, column: 42, scope: !1146)
!1160 = !DILocation(line: 355, column: 5, scope: !1146)
!1161 = !DILocation(line: 355, column: 18, scope: !1146)
!1162 = !DILocation(line: 355, column: 28, scope: !1146)
!1163 = !DILocation(line: 355, column: 40, scope: !1146)
!1164 = !DILocation(line: 356, column: 5, scope: !1135)
!1165 = !DILocation(line: 357, column: 4, scope: !1135)
!1166 = !DILocation(line: 359, column: 27, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1086, file: !200, line: 359, column: 7)
!1168 = !DILocation(line: 359, column: 35, scope: !1167)
!1169 = !DILocation(line: 359, column: 15, scope: !1167)
!1170 = !DILocation(line: 359, column: 8, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1167, file: !200, discriminator: 1)
!1172 = !DILocation(line: 359, column: 8, scope: !1167)
!1173 = !DILocation(line: 359, column: 7, scope: !1086)
!1174 = !DILocation(line: 360, column: 8, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !200, line: 360, column: 8)
!1176 = distinct !DILexicalBlock(scope: !1167, file: !200, line: 359, column: 48)
!1177 = !DILocation(line: 360, column: 15, scope: !1175)
!1178 = !DILocation(line: 360, column: 24, scope: !1175)
!1179 = !DILocation(line: 360, column: 35, scope: !1175)
!1180 = !DILocation(line: 360, column: 13, scope: !1175)
!1181 = !DILocation(line: 360, column: 10, scope: !1175)
!1182 = !DILocation(line: 360, column: 8, scope: !1176)
!1183 = !DILocation(line: 361, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1175, file: !200, line: 360, column: 40)
!1185 = !DILocation(line: 362, column: 5, scope: !1184)
!1186 = !DILocation(line: 364, column: 30, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1176, file: !200, line: 364, column: 8)
!1188 = !DILocation(line: 364, column: 38, scope: !1187)
!1189 = !DILocation(line: 364, column: 40, scope: !1187)
!1190 = !DILocation(line: 364, column: 9, scope: !1187)
!1191 = !DILocation(line: 364, column: 8, scope: !1176)
!1192 = !DILocation(line: 365, column: 115, scope: !1187)
!1193 = !DILocation(line: 365, column: 122, scope: !1187)
!1194 = !DILocation(line: 365, column: 123, scope: !1187)
!1195 = !DILocation(line: 365, column: 103, scope: !1187)
!1196 = !DILocation(line: 365, column: 5, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1187, file: !200, discriminator: 1)
!1198 = !DILocation(line: 365, column: 5, scope: !1187)
!1199 = !DILocation(line: 367, column: 51, scope: !1187)
!1200 = !DILocation(line: 367, column: 41, scope: !1187)
!1201 = !DILocation(line: 367, column: 5, scope: !1187)
!1202 = !DILocation(line: 367, column: 18, scope: !1187)
!1203 = !DILocation(line: 367, column: 28, scope: !1187)
!1204 = !DILocation(line: 367, column: 39, scope: !1187)
!1205 = !DILocation(line: 368, column: 5, scope: !1176)
!1206 = !DILocation(line: 369, column: 4, scope: !1176)
!1207 = !DILocation(line: 371, column: 27, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1086, file: !200, line: 371, column: 7)
!1209 = !DILocation(line: 371, column: 35, scope: !1208)
!1210 = !DILocation(line: 371, column: 15, scope: !1208)
!1211 = !DILocation(line: 371, column: 8, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1208, file: !200, discriminator: 1)
!1213 = !DILocation(line: 371, column: 8, scope: !1208)
!1214 = !DILocation(line: 371, column: 7, scope: !1086)
!1215 = !DILocation(line: 372, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !200, line: 372, column: 8)
!1217 = distinct !DILexicalBlock(scope: !1208, file: !200, line: 371, column: 47)
!1218 = !DILocation(line: 372, column: 15, scope: !1216)
!1219 = !DILocation(line: 372, column: 24, scope: !1216)
!1220 = !DILocation(line: 372, column: 35, scope: !1216)
!1221 = !DILocation(line: 372, column: 13, scope: !1216)
!1222 = !DILocation(line: 372, column: 10, scope: !1216)
!1223 = !DILocation(line: 372, column: 8, scope: !1217)
!1224 = !DILocation(line: 373, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !200, line: 372, column: 40)
!1226 = !DILocation(line: 374, column: 5, scope: !1225)
!1227 = !DILocation(line: 376, column: 30, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1217, file: !200, line: 376, column: 8)
!1229 = !DILocation(line: 376, column: 38, scope: !1228)
!1230 = !DILocation(line: 376, column: 40, scope: !1228)
!1231 = !DILocation(line: 376, column: 9, scope: !1228)
!1232 = !DILocation(line: 376, column: 8, scope: !1217)
!1233 = !DILocation(line: 377, column: 114, scope: !1228)
!1234 = !DILocation(line: 377, column: 121, scope: !1228)
!1235 = !DILocation(line: 377, column: 122, scope: !1228)
!1236 = !DILocation(line: 377, column: 102, scope: !1228)
!1237 = !DILocation(line: 377, column: 5, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1228, file: !200, discriminator: 1)
!1239 = !DILocation(line: 377, column: 5, scope: !1228)
!1240 = !DILocation(line: 379, column: 49, scope: !1228)
!1241 = !DILocation(line: 379, column: 40, scope: !1228)
!1242 = !DILocation(line: 379, column: 5, scope: !1228)
!1243 = !DILocation(line: 379, column: 18, scope: !1228)
!1244 = !DILocation(line: 379, column: 28, scope: !1228)
!1245 = !DILocation(line: 379, column: 38, scope: !1228)
!1246 = !DILocation(line: 380, column: 5, scope: !1217)
!1247 = !DILocation(line: 381, column: 4, scope: !1217)
!1248 = !DILocation(line: 383, column: 27, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1086, file: !200, line: 383, column: 7)
!1250 = !DILocation(line: 383, column: 35, scope: !1249)
!1251 = !DILocation(line: 383, column: 15, scope: !1249)
!1252 = !DILocation(line: 383, column: 8, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1249, file: !200, discriminator: 1)
!1254 = !DILocation(line: 383, column: 8, scope: !1249)
!1255 = !DILocation(line: 383, column: 7, scope: !1086)
!1256 = !DILocation(line: 384, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !200, line: 384, column: 8)
!1258 = distinct !DILexicalBlock(scope: !1249, file: !200, line: 383, column: 49)
!1259 = !DILocation(line: 384, column: 15, scope: !1257)
!1260 = !DILocation(line: 384, column: 24, scope: !1257)
!1261 = !DILocation(line: 384, column: 35, scope: !1257)
!1262 = !DILocation(line: 384, column: 13, scope: !1257)
!1263 = !DILocation(line: 384, column: 10, scope: !1257)
!1264 = !DILocation(line: 384, column: 8, scope: !1258)
!1265 = !DILocation(line: 385, column: 5, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1257, file: !200, line: 384, column: 40)
!1267 = !DILocation(line: 386, column: 5, scope: !1266)
!1268 = !DILocation(line: 389, column: 37, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1258, file: !200, line: 389, column: 8)
!1270 = !DILocation(line: 389, column: 45, scope: !1269)
!1271 = !DILocation(line: 389, column: 46, scope: !1269)
!1272 = !DILocation(line: 389, column: 25, scope: !1269)
!1273 = !DILocation(line: 389, column: 57, scope: !1269)
!1274 = !DILocation(line: 389, column: 70, scope: !1269)
!1275 = !DILocation(line: 389, column: 80, scope: !1269)
!1276 = !DILocation(line: 389, column: 8, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1269, file: !200, discriminator: 1)
!1278 = !DILocation(line: 389, column: 93, scope: !1269)
!1279 = !DILocation(line: 389, column: 8, scope: !1258)
!1280 = !DILocation(line: 390, column: 116, scope: !1269)
!1281 = !DILocation(line: 390, column: 123, scope: !1269)
!1282 = !DILocation(line: 390, column: 124, scope: !1269)
!1283 = !DILocation(line: 390, column: 104, scope: !1269)
!1284 = !DILocation(line: 390, column: 5, scope: !1277)
!1285 = !DILocation(line: 390, column: 5, scope: !1269)
!1286 = !DILocation(line: 392, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1258, file: !200, line: 392, column: 8)
!1288 = !DILocation(line: 392, column: 22, scope: !1287)
!1289 = !DILocation(line: 392, column: 32, scope: !1287)
!1290 = !DILocation(line: 392, column: 44, scope: !1287)
!1291 = !DILocation(line: 392, column: 54, scope: !1287)
!1292 = !DILocation(line: 392, column: 65, scope: !1287)
!1293 = !DILocation(line: 392, column: 99, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1287, file: !200, discriminator: 1)
!1295 = !DILocation(line: 392, column: 112, scope: !1294)
!1296 = !DILocation(line: 392, column: 122, scope: !1294)
!1297 = !DILocation(line: 392, column: 136, scope: !1294)
!1298 = !DILocation(line: 392, column: 145, scope: !1294)
!1299 = !DILocation(line: 392, column: 69, scope: !1294)
!1300 = !DILocation(line: 392, column: 72, scope: !1294)
!1301 = !DILocation(line: 392, column: 86, scope: !1294)
!1302 = !DILocation(line: 392, column: 168, scope: !1294)
!1303 = !DILocation(line: 393, column: 9, scope: !1287)
!1304 = !DILocation(line: 393, column: 22, scope: !1287)
!1305 = !DILocation(line: 393, column: 32, scope: !1287)
!1306 = !DILocation(line: 393, column: 44, scope: !1287)
!1307 = !DILocation(line: 393, column: 54, scope: !1287)
!1308 = !DILocation(line: 393, column: 65, scope: !1287)
!1309 = !DILocation(line: 393, column: 95, scope: !1294)
!1310 = !DILocation(line: 393, column: 108, scope: !1294)
!1311 = !DILocation(line: 393, column: 118, scope: !1294)
!1312 = !DILocation(line: 393, column: 132, scope: !1294)
!1313 = !DILocation(line: 393, column: 70, scope: !1294)
!1314 = !DILocation(line: 393, column: 75, scope: !1294)
!1315 = !DILocation(line: 392, column: 8, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1258, file: !200, discriminator: 2)
!1317 = !DILocation(line: 394, column: 131, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1287, file: !200, line: 393, column: 167)
!1319 = !DILocation(line: 394, column: 138, scope: !1318)
!1320 = !DILocation(line: 394, column: 139, scope: !1318)
!1321 = !DILocation(line: 394, column: 119, scope: !1318)
!1322 = !DILocation(line: 394, column: 5, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1318, file: !200, discriminator: 1)
!1324 = !DILocation(line: 395, column: 5, scope: !1318)
!1325 = !DILocation(line: 395, column: 18, scope: !1318)
!1326 = !DILocation(line: 395, column: 28, scope: !1318)
!1327 = !DILocation(line: 395, column: 40, scope: !1318)
!1328 = !DILocation(line: 395, column: 50, scope: !1318)
!1329 = !DILocation(line: 396, column: 4, scope: !1318)
!1330 = !DILocation(line: 398, column: 5, scope: !1258)
!1331 = !DILocation(line: 399, column: 4, scope: !1258)
!1332 = !DILocation(line: 402, column: 116, scope: !1086)
!1333 = !DILocation(line: 402, column: 123, scope: !1086)
!1334 = !DILocation(line: 402, column: 104, scope: !1086)
!1335 = !DILocation(line: 402, column: 3, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1086, file: !200, discriminator: 1)
!1337 = !DILocation(line: 403, column: 2, scope: !1086)
!1338 = !DILocation(line: 333, column: 38, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1077, file: !200, discriminator: 2)
!1340 = !DILocation(line: 333, column: 2, scope: !1339)
!1341 = distinct !{!1341, !1074}
!1342 = !DILocation(line: 404, column: 1, scope: !955)
!1343 = distinct !DISubprogram(name: "vrrp_mcast_group4_handler", scope: !200, file: !200, line: 481, type: !285, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1344 = !DILocalVariable(name: "strvec", arg: 1, scope: !1343, file: !200, line: 481, type: !287)
!1345 = !DILocation(line: 481, column: 37, scope: !1343)
!1346 = !DILocalVariable(name: "mcast", scope: !1343, file: !200, line: 483, type: !60)
!1347 = !DILocation(line: 483, column: 22, scope: !1343)
!1348 = !DILocation(line: 483, column: 31, scope: !1343)
!1349 = !DILocation(line: 483, column: 44, scope: !1343)
!1350 = !DILocalVariable(name: "ret", scope: !1343, file: !200, line: 484, type: !50)
!1351 = !DILocation(line: 484, column: 6, scope: !1343)
!1352 = !DILocation(line: 486, column: 37, scope: !1343)
!1353 = !DILocation(line: 486, column: 25, scope: !1343)
!1354 = !DILocation(line: 486, column: 79, scope: !1343)
!1355 = !DILocation(line: 486, column: 52, scope: !1343)
!1356 = !DILocation(line: 486, column: 8, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1343, file: !200, discriminator: 1)
!1358 = !DILocation(line: 486, column: 6, scope: !1343)
!1359 = !DILocation(line: 487, column: 6, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1343, file: !200, line: 487, column: 6)
!1361 = !DILocation(line: 487, column: 10, scope: !1360)
!1362 = !DILocation(line: 487, column: 6, scope: !1343)
!1363 = !DILocation(line: 489, column: 30, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !200, line: 487, column: 15)
!1365 = !DILocation(line: 489, column: 18, scope: !1364)
!1366 = !DILocation(line: 488, column: 3, scope: !1364)
!1367 = !DILocation(line: 490, column: 2, scope: !1364)
!1368 = !DILocation(line: 491, column: 1, scope: !1343)
!1369 = distinct !DISubprogram(name: "vrrp_mcast_group6_handler", scope: !200, file: !200, line: 493, type: !285, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1370 = !DILocalVariable(name: "strvec", arg: 1, scope: !1369, file: !200, line: 493, type: !287)
!1371 = !DILocation(line: 493, column: 37, scope: !1369)
!1372 = !DILocalVariable(name: "mcast", scope: !1369, file: !200, line: 495, type: !78)
!1373 = !DILocation(line: 495, column: 23, scope: !1369)
!1374 = !DILocation(line: 495, column: 32, scope: !1369)
!1375 = !DILocation(line: 495, column: 45, scope: !1369)
!1376 = !DILocalVariable(name: "ret", scope: !1369, file: !200, line: 496, type: !50)
!1377 = !DILocation(line: 496, column: 6, scope: !1369)
!1378 = !DILocation(line: 498, column: 37, scope: !1369)
!1379 = !DILocation(line: 498, column: 25, scope: !1369)
!1380 = !DILocation(line: 498, column: 79, scope: !1369)
!1381 = !DILocation(line: 498, column: 52, scope: !1369)
!1382 = !DILocation(line: 498, column: 8, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1369, file: !200, discriminator: 1)
!1384 = !DILocation(line: 498, column: 6, scope: !1369)
!1385 = !DILocation(line: 499, column: 6, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1369, file: !200, line: 499, column: 6)
!1387 = !DILocation(line: 499, column: 10, scope: !1386)
!1388 = !DILocation(line: 499, column: 6, scope: !1369)
!1389 = !DILocation(line: 501, column: 30, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !200, line: 499, column: 15)
!1391 = !DILocation(line: 501, column: 18, scope: !1390)
!1392 = !DILocation(line: 500, column: 3, scope: !1390)
!1393 = !DILocation(line: 502, column: 2, scope: !1390)
!1394 = !DILocation(line: 503, column: 1, scope: !1369)
!1395 = distinct !DISubprogram(name: "vrrp_garp_delay_handler", scope: !200, file: !200, line: 505, type: !285, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1396 = !DILocalVariable(name: "strvec", arg: 1, scope: !1395, file: !200, line: 505, type: !287)
!1397 = !DILocation(line: 505, column: 35, scope: !1395)
!1398 = !DILocalVariable(name: "timeout", scope: !1395, file: !200, line: 507, type: !59)
!1399 = !DILocation(line: 507, column: 11, scope: !1395)
!1400 = !DILocation(line: 509, column: 35, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !200, line: 509, column: 13)
!1402 = !DILocation(line: 509, column: 14, scope: !1401)
!1403 = !DILocation(line: 509, column: 13, scope: !1395)
!1404 = !DILocation(line: 510, column: 115, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !200, line: 509, column: 86)
!1406 = !DILocation(line: 510, column: 103, scope: !1405)
!1407 = !DILocation(line: 510, column: 3, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1405, file: !200, discriminator: 1)
!1409 = !DILocation(line: 511, column: 17, scope: !1405)
!1410 = !DILocation(line: 514, column: 33, scope: !1395)
!1411 = !DILocation(line: 514, column: 41, scope: !1395)
!1412 = !DILocation(line: 514, column: 2, scope: !1395)
!1413 = !DILocation(line: 514, column: 15, scope: !1395)
!1414 = !DILocation(line: 514, column: 31, scope: !1395)
!1415 = !DILocation(line: 515, column: 1, scope: !1395)
!1416 = !DILocation(line: 515, column: 1, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1395, file: !200, discriminator: 1)
!1418 = distinct !DISubprogram(name: "vrrp_garp_rep_handler", scope: !200, file: !200, line: 517, type: !285, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1419 = !DILocalVariable(name: "strvec", arg: 1, scope: !1418, file: !200, line: 517, type: !287)
!1420 = !DILocation(line: 517, column: 33, scope: !1418)
!1421 = !DILocalVariable(name: "repeats", scope: !1418, file: !200, line: 519, type: !59)
!1422 = !DILocation(line: 519, column: 11, scope: !1418)
!1423 = !DILocation(line: 523, column: 28, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !200, line: 523, column: 6)
!1425 = !DILocation(line: 523, column: 7, scope: !1424)
!1426 = !DILocation(line: 523, column: 6, scope: !1418)
!1427 = !DILocation(line: 524, column: 116, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !200, line: 523, column: 68)
!1429 = !DILocation(line: 524, column: 104, scope: !1428)
!1430 = !DILocation(line: 524, column: 3, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1428, file: !200, discriminator: 1)
!1432 = !DILocation(line: 525, column: 3, scope: !1428)
!1433 = !DILocation(line: 528, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1418, file: !200, line: 528, column: 6)
!1435 = !DILocation(line: 528, column: 14, scope: !1434)
!1436 = !DILocation(line: 528, column: 6, scope: !1418)
!1437 = !DILocation(line: 529, column: 3, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !200, line: 528, column: 20)
!1439 = !DILocation(line: 530, column: 11, scope: !1438)
!1440 = !DILocation(line: 531, column: 2, scope: !1438)
!1441 = !DILocation(line: 533, column: 31, scope: !1418)
!1442 = !DILocation(line: 533, column: 2, scope: !1418)
!1443 = !DILocation(line: 533, column: 15, scope: !1418)
!1444 = !DILocation(line: 533, column: 29, scope: !1418)
!1445 = !DILocation(line: 535, column: 1, scope: !1418)
!1446 = !DILocation(line: 535, column: 1, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1418, file: !200, discriminator: 1)
!1448 = distinct !DISubprogram(name: "vrrp_garp_refresh_handler", scope: !200, file: !200, line: 537, type: !285, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1449 = !DILocalVariable(name: "strvec", arg: 1, scope: !1448, file: !200, line: 537, type: !287)
!1450 = !DILocation(line: 537, column: 37, scope: !1448)
!1451 = !DILocalVariable(name: "refresh", scope: !1448, file: !200, line: 539, type: !59)
!1452 = !DILocation(line: 539, column: 18, scope: !1448)
!1453 = !DILocation(line: 541, column: 35, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !200, line: 541, column: 13)
!1455 = !DILocation(line: 541, column: 14, scope: !1454)
!1456 = !DILocation(line: 541, column: 13, scope: !1448)
!1457 = !DILocation(line: 542, column: 131, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !200, line: 541, column: 75)
!1459 = !DILocation(line: 542, column: 119, scope: !1458)
!1460 = !DILocation(line: 542, column: 17, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1458, file: !200, discriminator: 1)
!1462 = !DILocation(line: 543, column: 17, scope: !1458)
!1463 = !DILocation(line: 543, column: 30, scope: !1458)
!1464 = !DILocation(line: 543, column: 48, scope: !1458)
!1465 = !DILocation(line: 543, column: 55, scope: !1458)
!1466 = !DILocation(line: 544, column: 9, scope: !1458)
!1467 = !DILocation(line: 546, column: 43, scope: !1454)
!1468 = !DILocation(line: 546, column: 3, scope: !1454)
!1469 = !DILocation(line: 546, column: 16, scope: !1454)
!1470 = !DILocation(line: 546, column: 34, scope: !1454)
!1471 = !DILocation(line: 546, column: 41, scope: !1454)
!1472 = !DILocation(line: 548, column: 9, scope: !1448)
!1473 = !DILocation(line: 548, column: 22, scope: !1448)
!1474 = !DILocation(line: 548, column: 40, scope: !1448)
!1475 = !DILocation(line: 548, column: 48, scope: !1448)
!1476 = !DILocation(line: 549, column: 1, scope: !1448)
!1477 = distinct !DISubprogram(name: "vrrp_garp_refresh_rep_handler", scope: !200, file: !200, line: 551, type: !285, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1478 = !DILocalVariable(name: "strvec", arg: 1, scope: !1477, file: !200, line: 551, type: !287)
!1479 = !DILocation(line: 551, column: 41, scope: !1477)
!1480 = !DILocalVariable(name: "repeats", scope: !1477, file: !200, line: 553, type: !59)
!1481 = !DILocation(line: 553, column: 18, scope: !1477)
!1482 = !DILocation(line: 557, column: 35, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !200, line: 557, column: 13)
!1484 = !DILocation(line: 557, column: 14, scope: !1483)
!1485 = !DILocation(line: 557, column: 13, scope: !1477)
!1486 = !DILocation(line: 558, column: 138, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !200, line: 557, column: 75)
!1488 = !DILocation(line: 558, column: 126, scope: !1487)
!1489 = !DILocation(line: 558, column: 17, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1487, file: !200, discriminator: 1)
!1491 = !DILocation(line: 559, column: 17, scope: !1487)
!1492 = !DILocation(line: 562, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1477, file: !200, line: 562, column: 13)
!1494 = !DILocation(line: 562, column: 21, scope: !1493)
!1495 = !DILocation(line: 562, column: 13, scope: !1477)
!1496 = !DILocation(line: 563, column: 17, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !200, line: 562, column: 27)
!1498 = !DILocation(line: 564, column: 25, scope: !1497)
!1499 = !DILocation(line: 565, column: 9, scope: !1497)
!1500 = !DILocation(line: 567, column: 39, scope: !1477)
!1501 = !DILocation(line: 567, column: 2, scope: !1477)
!1502 = !DILocation(line: 567, column: 15, scope: !1477)
!1503 = !DILocation(line: 567, column: 37, scope: !1477)
!1504 = !DILocation(line: 569, column: 1, scope: !1477)
!1505 = !DILocation(line: 569, column: 1, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1477, file: !200, discriminator: 1)
!1507 = distinct !DISubprogram(name: "vrrp_garp_lower_prio_delay_handler", scope: !200, file: !200, line: 571, type: !285, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1508 = !DILocalVariable(name: "strvec", arg: 1, scope: !1507, file: !200, line: 571, type: !287)
!1509 = !DILocation(line: 571, column: 46, scope: !1507)
!1510 = !DILocalVariable(name: "delay", scope: !1507, file: !200, line: 573, type: !59)
!1511 = !DILocation(line: 573, column: 18, scope: !1507)
!1512 = !DILocation(line: 575, column: 35, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !200, line: 575, column: 13)
!1514 = !DILocation(line: 575, column: 14, scope: !1513)
!1515 = !DILocation(line: 575, column: 13, scope: !1507)
!1516 = !DILocation(line: 576, column: 133, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !200, line: 575, column: 84)
!1518 = !DILocation(line: 576, column: 121, scope: !1517)
!1519 = !DILocation(line: 576, column: 17, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1517, file: !200, discriminator: 1)
!1521 = !DILocation(line: 577, column: 17, scope: !1517)
!1522 = !DILocation(line: 580, column: 44, scope: !1507)
!1523 = !DILocation(line: 580, column: 50, scope: !1507)
!1524 = !DILocation(line: 580, column: 2, scope: !1507)
!1525 = !DILocation(line: 580, column: 15, scope: !1507)
!1526 = !DILocation(line: 580, column: 42, scope: !1507)
!1527 = !DILocation(line: 581, column: 1, scope: !1507)
!1528 = !DILocation(line: 581, column: 1, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1507, file: !200, discriminator: 1)
!1530 = distinct !DISubprogram(name: "vrrp_garp_lower_prio_rep_handler", scope: !200, file: !200, line: 583, type: !285, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1531 = !DILocalVariable(name: "strvec", arg: 1, scope: !1530, file: !200, line: 583, type: !287)
!1532 = !DILocation(line: 583, column: 44, scope: !1530)
!1533 = !DILocalVariable(name: "garp_lower_prio_rep", scope: !1530, file: !200, line: 585, type: !59)
!1534 = !DILocation(line: 585, column: 11, scope: !1530)
!1535 = !DILocation(line: 587, column: 35, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1530, file: !200, line: 587, column: 13)
!1537 = !DILocation(line: 587, column: 14, scope: !1536)
!1538 = !DILocation(line: 587, column: 13, scope: !1530)
!1539 = !DILocation(line: 588, column: 123, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !200, line: 587, column: 86)
!1541 = !DILocation(line: 588, column: 111, scope: !1540)
!1542 = !DILocation(line: 588, column: 17, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1540, file: !200, discriminator: 1)
!1544 = !DILocation(line: 589, column: 17, scope: !1540)
!1545 = !DILocation(line: 592, column: 42, scope: !1530)
!1546 = !DILocation(line: 592, column: 2, scope: !1530)
!1547 = !DILocation(line: 592, column: 15, scope: !1530)
!1548 = !DILocation(line: 592, column: 40, scope: !1530)
!1549 = !DILocation(line: 593, column: 1, scope: !1530)
!1550 = !DILocation(line: 593, column: 1, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1530, file: !200, discriminator: 1)
!1552 = distinct !DISubprogram(name: "vrrp_garp_interval_handler", scope: !200, file: !200, line: 595, type: !285, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1553 = !DILocalVariable(name: "strvec", arg: 1, scope: !1552, file: !200, line: 595, type: !287)
!1554 = !DILocation(line: 595, column: 38, scope: !1552)
!1555 = !DILocalVariable(name: "interval", scope: !1552, file: !200, line: 597, type: !1556)
!1556 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!1557 = !DILocation(line: 597, column: 9, scope: !1552)
!1558 = !DILocation(line: 599, column: 26, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !200, line: 599, column: 6)
!1560 = !DILocation(line: 599, column: 7, scope: !1559)
!1561 = !DILocation(line: 599, column: 6, scope: !1552)
!1562 = !DILocation(line: 600, column: 103, scope: !1559)
!1563 = !DILocation(line: 600, column: 91, scope: !1559)
!1564 = !DILocation(line: 600, column: 3, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1559, file: !200, discriminator: 1)
!1566 = !DILocation(line: 600, column: 3, scope: !1559)
!1567 = !DILocation(line: 602, column: 48, scope: !1559)
!1568 = !DILocation(line: 602, column: 57, scope: !1559)
!1569 = !DILocation(line: 602, column: 37, scope: !1559)
!1570 = !DILocation(line: 602, column: 3, scope: !1559)
!1571 = !DILocation(line: 602, column: 16, scope: !1559)
!1572 = !DILocation(line: 602, column: 35, scope: !1559)
!1573 = !DILocation(line: 604, column: 6, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1552, file: !200, line: 604, column: 6)
!1575 = !DILocation(line: 604, column: 19, scope: !1574)
!1576 = !DILocation(line: 604, column: 38, scope: !1574)
!1577 = !DILocation(line: 604, column: 6, scope: !1552)
!1578 = !DILocation(line: 605, column: 97, scope: !1574)
!1579 = !DILocation(line: 605, column: 85, scope: !1574)
!1580 = !DILocation(line: 605, column: 3, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1574, file: !200, discriminator: 1)
!1582 = !DILocation(line: 605, column: 3, scope: !1574)
!1583 = !DILocation(line: 606, column: 1, scope: !1552)
!1584 = distinct !DISubprogram(name: "vrrp_gna_interval_handler", scope: !200, file: !200, line: 608, type: !285, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1585 = !DILocalVariable(name: "strvec", arg: 1, scope: !1584, file: !200, line: 608, type: !287)
!1586 = !DILocation(line: 608, column: 37, scope: !1584)
!1587 = !DILocalVariable(name: "interval", scope: !1584, file: !200, line: 610, type: !1556)
!1588 = !DILocation(line: 610, column: 9, scope: !1584)
!1589 = !DILocation(line: 612, column: 26, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1584, file: !200, line: 612, column: 6)
!1591 = !DILocation(line: 612, column: 7, scope: !1590)
!1592 = !DILocation(line: 612, column: 6, scope: !1584)
!1593 = !DILocation(line: 613, column: 102, scope: !1590)
!1594 = !DILocation(line: 613, column: 90, scope: !1590)
!1595 = !DILocation(line: 613, column: 3, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1590, file: !200, discriminator: 1)
!1597 = !DILocation(line: 613, column: 3, scope: !1590)
!1598 = !DILocation(line: 615, column: 47, scope: !1590)
!1599 = !DILocation(line: 615, column: 56, scope: !1590)
!1600 = !DILocation(line: 615, column: 36, scope: !1590)
!1601 = !DILocation(line: 615, column: 3, scope: !1590)
!1602 = !DILocation(line: 615, column: 16, scope: !1590)
!1603 = !DILocation(line: 615, column: 34, scope: !1590)
!1604 = !DILocation(line: 617, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1584, file: !200, line: 617, column: 6)
!1606 = !DILocation(line: 617, column: 19, scope: !1605)
!1607 = !DILocation(line: 617, column: 37, scope: !1605)
!1608 = !DILocation(line: 617, column: 6, scope: !1584)
!1609 = !DILocation(line: 618, column: 96, scope: !1605)
!1610 = !DILocation(line: 618, column: 84, scope: !1605)
!1611 = !DILocation(line: 618, column: 3, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1605, file: !200, discriminator: 1)
!1613 = !DILocation(line: 618, column: 3, scope: !1605)
!1614 = !DILocation(line: 619, column: 1, scope: !1584)
!1615 = distinct !DISubprogram(name: "vrrp_lower_prio_no_advert_handler", scope: !200, file: !200, line: 621, type: !285, isLocal: true, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1616 = !DILocalVariable(name: "strvec", arg: 1, scope: !1615, file: !200, line: 621, type: !287)
!1617 = !DILocation(line: 621, column: 45, scope: !1615)
!1618 = !DILocalVariable(name: "res", scope: !1615, file: !200, line: 623, type: !50)
!1619 = !DILocation(line: 623, column: 6, scope: !1615)
!1620 = !DILocation(line: 625, column: 8, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1615, file: !200, line: 625, column: 6)
!1622 = !DILocation(line: 625, column: 17, scope: !1621)
!1623 = !DILocation(line: 625, column: 28, scope: !1621)
!1624 = !DILocation(line: 625, column: 6, scope: !1615)
!1625 = !DILocation(line: 626, column: 38, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1621, file: !200, line: 625, column: 34)
!1627 = !DILocation(line: 626, column: 26, scope: !1626)
!1628 = !DILocation(line: 626, column: 9, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1626, file: !200, discriminator: 1)
!1630 = !DILocation(line: 626, column: 7, scope: !1626)
!1631 = !DILocation(line: 627, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1626, file: !200, line: 627, column: 7)
!1633 = !DILocation(line: 627, column: 11, scope: !1632)
!1634 = !DILocation(line: 627, column: 7, scope: !1626)
!1635 = !DILocation(line: 628, column: 4, scope: !1632)
!1636 = !DILocation(line: 630, column: 45, scope: !1632)
!1637 = !DILocation(line: 630, column: 4, scope: !1632)
!1638 = !DILocation(line: 630, column: 17, scope: !1632)
!1639 = !DILocation(line: 630, column: 43, scope: !1632)
!1640 = !DILocation(line: 631, column: 2, scope: !1626)
!1641 = !DILocation(line: 633, column: 3, scope: !1621)
!1642 = !DILocation(line: 633, column: 16, scope: !1621)
!1643 = !DILocation(line: 633, column: 42, scope: !1621)
!1644 = !DILocation(line: 634, column: 1, scope: !1615)
!1645 = distinct !DISubprogram(name: "vrrp_higher_prio_send_advert_handler", scope: !200, file: !200, line: 636, type: !285, isLocal: true, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1646 = !DILocalVariable(name: "strvec", arg: 1, scope: !1645, file: !200, line: 636, type: !287)
!1647 = !DILocation(line: 636, column: 48, scope: !1645)
!1648 = !DILocalVariable(name: "res", scope: !1645, file: !200, line: 638, type: !50)
!1649 = !DILocation(line: 638, column: 6, scope: !1645)
!1650 = !DILocation(line: 640, column: 8, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !200, line: 640, column: 6)
!1652 = !DILocation(line: 640, column: 17, scope: !1651)
!1653 = !DILocation(line: 640, column: 28, scope: !1651)
!1654 = !DILocation(line: 640, column: 6, scope: !1645)
!1655 = !DILocation(line: 641, column: 38, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !200, line: 640, column: 34)
!1657 = !DILocation(line: 641, column: 26, scope: !1656)
!1658 = !DILocation(line: 641, column: 9, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1656, file: !200, discriminator: 1)
!1660 = !DILocation(line: 641, column: 7, scope: !1656)
!1661 = !DILocation(line: 642, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !200, line: 642, column: 7)
!1663 = !DILocation(line: 642, column: 11, scope: !1662)
!1664 = !DILocation(line: 642, column: 7, scope: !1656)
!1665 = !DILocation(line: 643, column: 4, scope: !1662)
!1666 = !DILocation(line: 645, column: 48, scope: !1662)
!1667 = !DILocation(line: 645, column: 4, scope: !1662)
!1668 = !DILocation(line: 645, column: 17, scope: !1662)
!1669 = !DILocation(line: 645, column: 46, scope: !1662)
!1670 = !DILocation(line: 646, column: 2, scope: !1656)
!1671 = !DILocation(line: 648, column: 3, scope: !1651)
!1672 = !DILocation(line: 648, column: 16, scope: !1651)
!1673 = !DILocation(line: 648, column: 45, scope: !1651)
!1674 = !DILocation(line: 649, column: 1, scope: !1645)
!1675 = distinct !DISubprogram(name: "vrrp_version_handler", scope: !200, file: !200, line: 720, type: !285, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1676 = !DILocalVariable(name: "strvec", arg: 1, scope: !1675, file: !200, line: 720, type: !287)
!1677 = !DILocation(line: 720, column: 32, scope: !1675)
!1678 = !DILocalVariable(name: "version", scope: !1675, file: !200, line: 722, type: !50)
!1679 = !DILocation(line: 722, column: 6, scope: !1675)
!1680 = !DILocation(line: 724, column: 23, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1675, file: !200, line: 724, column: 6)
!1682 = !DILocation(line: 724, column: 7, scope: !1681)
!1683 = !DILocation(line: 724, column: 6, scope: !1675)
!1684 = !DILocation(line: 725, column: 3, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !200, line: 724, column: 56)
!1686 = !DILocation(line: 726, column: 3, scope: !1685)
!1687 = !DILocation(line: 729, column: 30, scope: !1675)
!1688 = !DILocation(line: 729, column: 2, scope: !1675)
!1689 = !DILocation(line: 729, column: 15, scope: !1675)
!1690 = !DILocation(line: 729, column: 28, scope: !1675)
!1691 = !DILocation(line: 730, column: 1, scope: !1675)
!1692 = !DILocation(line: 730, column: 1, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1675, file: !200, discriminator: 1)
!1694 = distinct !DISubprogram(name: "vrrp_iptables_handler", scope: !200, file: !200, line: 651, type: !285, isLocal: true, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1695 = !DILocalVariable(name: "strvec", arg: 1, scope: !1694, file: !200, line: 651, type: !287)
!1696 = !DILocation(line: 651, column: 33, scope: !1694)
!1697 = !DILocation(line: 653, column: 2, scope: !1694)
!1698 = !DILocation(line: 653, column: 15, scope: !1694)
!1699 = !DILocation(line: 653, column: 40, scope: !1694)
!1700 = !DILocation(line: 654, column: 2, scope: !1694)
!1701 = !DILocation(line: 654, column: 15, scope: !1694)
!1702 = !DILocation(line: 654, column: 41, scope: !1694)
!1703 = !DILocation(line: 655, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1694, file: !200, line: 655, column: 6)
!1705 = !DILocation(line: 655, column: 17, scope: !1704)
!1706 = !DILocation(line: 655, column: 28, scope: !1704)
!1707 = !DILocation(line: 655, column: 6, scope: !1694)
!1708 = !DILocation(line: 656, column: 26, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !200, line: 656, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !200, line: 655, column: 34)
!1711 = !DILocation(line: 656, column: 14, scope: !1709)
!1712 = !DILocation(line: 656, column: 7, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1709, file: !200, discriminator: 1)
!1714 = !DILocation(line: 656, column: 37, scope: !1709)
!1715 = !DILocation(line: 656, column: 7, scope: !1710)
!1716 = !DILocation(line: 657, column: 4, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !200, line: 656, column: 86)
!1718 = !DILocation(line: 658, column: 4, scope: !1717)
!1719 = !DILocation(line: 660, column: 10, scope: !1710)
!1720 = !DILocation(line: 660, column: 23, scope: !1710)
!1721 = !DILocation(line: 660, column: 58, scope: !1710)
!1722 = !DILocation(line: 660, column: 46, scope: !1710)
!1723 = !DILocation(line: 660, column: 3, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1710, file: !200, discriminator: 1)
!1725 = !DILocation(line: 661, column: 2, scope: !1710)
!1726 = !DILocation(line: 662, column: 8, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1694, file: !200, line: 662, column: 6)
!1728 = !DILocation(line: 662, column: 17, scope: !1727)
!1729 = !DILocation(line: 662, column: 28, scope: !1727)
!1730 = !DILocation(line: 662, column: 6, scope: !1694)
!1731 = !DILocation(line: 663, column: 26, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !200, line: 663, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1727, file: !200, line: 662, column: 34)
!1734 = !DILocation(line: 663, column: 14, scope: !1732)
!1735 = !DILocation(line: 663, column: 7, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1732, file: !200, discriminator: 1)
!1737 = !DILocation(line: 663, column: 37, scope: !1732)
!1738 = !DILocation(line: 663, column: 7, scope: !1733)
!1739 = !DILocation(line: 664, column: 4, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !200, line: 663, column: 87)
!1741 = !DILocation(line: 665, column: 4, scope: !1740)
!1742 = !DILocation(line: 667, column: 10, scope: !1733)
!1743 = !DILocation(line: 667, column: 23, scope: !1733)
!1744 = !DILocation(line: 667, column: 59, scope: !1733)
!1745 = !DILocation(line: 667, column: 47, scope: !1733)
!1746 = !DILocation(line: 667, column: 3, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1733, file: !200, discriminator: 1)
!1748 = !DILocation(line: 668, column: 2, scope: !1733)
!1749 = !DILocation(line: 669, column: 1, scope: !1694)
!1750 = distinct !DISubprogram(name: "vrrp_ipsets_handler", scope: !200, file: !200, line: 672, type: !285, isLocal: true, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1751 = !DILocalVariable(name: "strvec", arg: 1, scope: !1750, file: !200, line: 672, type: !287)
!1752 = !DILocation(line: 672, column: 31, scope: !1750)
!1753 = !DILocalVariable(name: "len", scope: !1750, file: !200, line: 674, type: !189)
!1754 = !DILocation(line: 674, column: 9, scope: !1750)
!1755 = !DILocation(line: 676, column: 8, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1750, file: !200, line: 676, column: 6)
!1757 = !DILocation(line: 676, column: 17, scope: !1756)
!1758 = !DILocation(line: 676, column: 28, scope: !1756)
!1759 = !DILocation(line: 676, column: 6, scope: !1750)
!1760 = !DILocation(line: 677, column: 26, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !200, line: 677, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !200, line: 676, column: 34)
!1763 = !DILocation(line: 677, column: 14, scope: !1761)
!1764 = !DILocation(line: 677, column: 7, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1761, file: !200, discriminator: 1)
!1766 = !DILocation(line: 677, column: 37, scope: !1761)
!1767 = !DILocation(line: 677, column: 7, scope: !1762)
!1768 = !DILocation(line: 678, column: 4, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1761, file: !200, line: 677, column: 83)
!1770 = !DILocation(line: 679, column: 4, scope: !1769)
!1771 = !DILocation(line: 681, column: 10, scope: !1762)
!1772 = !DILocation(line: 681, column: 23, scope: !1762)
!1773 = !DILocation(line: 681, column: 55, scope: !1762)
!1774 = !DILocation(line: 681, column: 43, scope: !1762)
!1775 = !DILocation(line: 681, column: 3, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1762, file: !200, discriminator: 1)
!1777 = !DILocation(line: 682, column: 2, scope: !1762)
!1778 = !DILocation(line: 684, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1756, file: !200, line: 683, column: 7)
!1780 = !DILocation(line: 684, column: 16, scope: !1779)
!1781 = !DILocation(line: 684, column: 29, scope: !1779)
!1782 = !DILocation(line: 685, column: 3, scope: !1779)
!1783 = !DILocation(line: 688, column: 8, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1750, file: !200, line: 688, column: 6)
!1785 = !DILocation(line: 688, column: 17, scope: !1784)
!1786 = !DILocation(line: 688, column: 28, scope: !1784)
!1787 = !DILocation(line: 688, column: 6, scope: !1750)
!1788 = !DILocation(line: 689, column: 26, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !200, line: 689, column: 7)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !200, line: 688, column: 34)
!1791 = !DILocation(line: 689, column: 14, scope: !1789)
!1792 = !DILocation(line: 689, column: 7, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1789, file: !200, discriminator: 1)
!1794 = !DILocation(line: 689, column: 37, scope: !1789)
!1795 = !DILocation(line: 689, column: 7, scope: !1790)
!1796 = !DILocation(line: 690, column: 4, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !200, line: 689, column: 84)
!1798 = !DILocation(line: 691, column: 4, scope: !1797)
!1799 = !DILocation(line: 693, column: 10, scope: !1790)
!1800 = !DILocation(line: 693, column: 23, scope: !1790)
!1801 = !DILocation(line: 693, column: 56, scope: !1790)
!1802 = !DILocation(line: 693, column: 44, scope: !1790)
!1803 = !DILocation(line: 693, column: 3, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1790, file: !200, discriminator: 1)
!1805 = !DILocation(line: 694, column: 2, scope: !1790)
!1806 = !DILocation(line: 697, column: 10, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1784, file: !200, line: 695, column: 7)
!1808 = !DILocation(line: 697, column: 23, scope: !1807)
!1809 = !DILocation(line: 697, column: 44, scope: !1807)
!1810 = !DILocation(line: 697, column: 57, scope: !1807)
!1811 = !DILocation(line: 697, column: 3, scope: !1807)
!1812 = !DILocation(line: 698, column: 3, scope: !1807)
!1813 = !DILocation(line: 698, column: 16, scope: !1807)
!1814 = !DILocation(line: 698, column: 82, scope: !1807)
!1815 = !DILocation(line: 699, column: 10, scope: !1807)
!1816 = !DILocation(line: 699, column: 23, scope: !1807)
!1817 = !DILocation(line: 699, column: 3, scope: !1807)
!1818 = !DILocation(line: 701, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1750, file: !200, line: 701, column: 6)
!1820 = !DILocation(line: 701, column: 17, scope: !1819)
!1821 = !DILocation(line: 701, column: 28, scope: !1819)
!1822 = !DILocation(line: 701, column: 6, scope: !1750)
!1823 = !DILocation(line: 702, column: 26, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !200, line: 702, column: 7)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !200, line: 701, column: 34)
!1826 = !DILocation(line: 702, column: 14, scope: !1824)
!1827 = !DILocation(line: 702, column: 7, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1824, file: !200, discriminator: 1)
!1829 = !DILocation(line: 702, column: 37, scope: !1824)
!1830 = !DILocation(line: 702, column: 7, scope: !1825)
!1831 = !DILocation(line: 703, column: 4, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1824, file: !200, line: 702, column: 90)
!1833 = !DILocation(line: 704, column: 4, scope: !1832)
!1834 = !DILocation(line: 706, column: 10, scope: !1825)
!1835 = !DILocation(line: 706, column: 23, scope: !1825)
!1836 = !DILocation(line: 706, column: 62, scope: !1825)
!1837 = !DILocation(line: 706, column: 50, scope: !1825)
!1838 = !DILocation(line: 706, column: 3, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1825, file: !200, discriminator: 1)
!1840 = !DILocation(line: 707, column: 2, scope: !1825)
!1841 = !DILocation(line: 710, column: 10, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1819, file: !200, line: 708, column: 7)
!1843 = !DILocation(line: 710, column: 23, scope: !1842)
!1844 = !DILocation(line: 710, column: 50, scope: !1842)
!1845 = !DILocation(line: 710, column: 63, scope: !1842)
!1846 = !DILocation(line: 710, column: 3, scope: !1842)
!1847 = !DILocation(line: 711, column: 16, scope: !1842)
!1848 = !DILocation(line: 711, column: 29, scope: !1842)
!1849 = !DILocation(line: 711, column: 9, scope: !1842)
!1850 = !DILocation(line: 711, column: 7, scope: !1842)
!1851 = !DILocation(line: 712, column: 46, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1842, file: !200, line: 712, column: 7)
!1853 = !DILocation(line: 712, column: 49, scope: !1852)
!1854 = !DILocation(line: 712, column: 7, scope: !1852)
!1855 = !DILocation(line: 712, column: 20, scope: !1852)
!1856 = !DILocation(line: 712, column: 53, scope: !1852)
!1857 = !DILocation(line: 712, column: 7, scope: !1842)
!1858 = !DILocation(line: 713, column: 43, scope: !1852)
!1859 = !DILocation(line: 713, column: 4, scope: !1852)
!1860 = !DILocation(line: 713, column: 17, scope: !1852)
!1861 = !DILocation(line: 713, column: 50, scope: !1852)
!1862 = !DILocation(line: 714, column: 3, scope: !1842)
!1863 = !DILocation(line: 714, column: 16, scope: !1842)
!1864 = !DILocation(line: 714, column: 94, scope: !1842)
!1865 = !DILocation(line: 715, column: 10, scope: !1842)
!1866 = !DILocation(line: 715, column: 23, scope: !1842)
!1867 = !DILocation(line: 715, column: 3, scope: !1842)
!1868 = !DILocation(line: 717, column: 1, scope: !1750)
!1869 = distinct !DISubprogram(name: "vrrp_check_unicast_src_handler", scope: !200, file: !200, line: 732, type: !285, isLocal: true, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1870 = !DILocalVariable(name: "strvec", arg: 1, scope: !1869, file: !200, line: 732, type: !287)
!1871 = !DILocation(line: 732, column: 66, scope: !1869)
!1872 = !DILocation(line: 734, column: 2, scope: !1869)
!1873 = !DILocation(line: 734, column: 15, scope: !1869)
!1874 = !DILocation(line: 734, column: 38, scope: !1869)
!1875 = !DILocation(line: 735, column: 1, scope: !1869)
!1876 = distinct !DISubprogram(name: "vrrp_check_adv_addr_handler", scope: !200, file: !200, line: 737, type: !285, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1877 = !DILocalVariable(name: "strvec", arg: 1, scope: !1876, file: !200, line: 737, type: !287)
!1878 = !DILocation(line: 737, column: 63, scope: !1876)
!1879 = !DILocation(line: 739, column: 2, scope: !1876)
!1880 = !DILocation(line: 739, column: 15, scope: !1876)
!1881 = !DILocation(line: 739, column: 40, scope: !1876)
!1882 = !DILocation(line: 740, column: 1, scope: !1876)
!1883 = distinct !DISubprogram(name: "vrrp_strict_handler", scope: !200, file: !200, line: 742, type: !285, isLocal: true, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1884 = !DILocalVariable(name: "strvec", arg: 1, scope: !1883, file: !200, line: 742, type: !287)
!1885 = !DILocation(line: 742, column: 55, scope: !1883)
!1886 = !DILocation(line: 744, column: 2, scope: !1883)
!1887 = !DILocation(line: 744, column: 15, scope: !1883)
!1888 = !DILocation(line: 744, column: 27, scope: !1883)
!1889 = !DILocation(line: 745, column: 1, scope: !1883)
!1890 = distinct !DISubprogram(name: "vrrp_prio_handler", scope: !200, file: !200, line: 747, type: !285, isLocal: true, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1891 = !DILocalVariable(name: "strvec", arg: 1, scope: !1890, file: !200, line: 747, type: !287)
!1892 = !DILocation(line: 747, column: 29, scope: !1890)
!1893 = !DILocation(line: 749, column: 52, scope: !1890)
!1894 = !DILocation(line: 749, column: 39, scope: !1890)
!1895 = !DILocation(line: 749, column: 2, scope: !1890)
!1896 = !DILocation(line: 749, column: 15, scope: !1890)
!1897 = !DILocation(line: 749, column: 37, scope: !1890)
!1898 = !DILocation(line: 750, column: 1, scope: !1890)
!1899 = distinct !DISubprogram(name: "vrrp_no_swap_handler", scope: !200, file: !200, line: 752, type: !285, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1900 = !DILocalVariable(name: "strvec", arg: 1, scope: !1899, file: !200, line: 752, type: !287)
!1901 = !DILocation(line: 752, column: 56, scope: !1899)
!1902 = !DILocation(line: 754, column: 2, scope: !1899)
!1903 = !DILocation(line: 754, column: 15, scope: !1899)
!1904 = !DILocation(line: 754, column: 28, scope: !1899)
!1905 = !DILocation(line: 755, column: 1, scope: !1899)
!1906 = distinct !DISubprogram(name: "vrrp_rt_priority_handler", scope: !200, file: !200, line: 758, type: !285, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1907 = !DILocalVariable(name: "strvec", arg: 1, scope: !1906, file: !200, line: 758, type: !287)
!1908 = !DILocation(line: 758, column: 36, scope: !1906)
!1909 = !DILocalVariable(name: "priority", scope: !1906, file: !200, line: 760, type: !50)
!1910 = !DILocation(line: 760, column: 6, scope: !1906)
!1911 = !DILocation(line: 760, column: 39, scope: !1906)
!1912 = !DILocation(line: 760, column: 17, scope: !1906)
!1913 = !DILocation(line: 762, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1906, file: !200, line: 762, column: 6)
!1915 = !DILocation(line: 762, column: 15, scope: !1914)
!1916 = !DILocation(line: 762, column: 6, scope: !1906)
!1917 = !DILocation(line: 763, column: 41, scope: !1914)
!1918 = !DILocation(line: 763, column: 3, scope: !1914)
!1919 = !DILocation(line: 763, column: 16, scope: !1914)
!1920 = !DILocation(line: 763, column: 39, scope: !1914)
!1921 = !DILocation(line: 764, column: 1, scope: !1906)
!1922 = distinct !DISubprogram(name: "vrrp_rt_rlimit_handler", scope: !200, file: !200, line: 767, type: !285, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1923 = !DILocalVariable(name: "strvec", arg: 1, scope: !1922, file: !200, line: 767, type: !287)
!1924 = !DILocation(line: 767, column: 34, scope: !1922)
!1925 = !DILocation(line: 769, column: 46, scope: !1922)
!1926 = !DILocation(line: 769, column: 32, scope: !1922)
!1927 = !DILocation(line: 769, column: 2, scope: !1922)
!1928 = !DILocation(line: 769, column: 15, scope: !1922)
!1929 = !DILocation(line: 769, column: 30, scope: !1922)
!1930 = !DILocation(line: 770, column: 1, scope: !1922)
!1931 = distinct !DISubprogram(name: "global_notify_fifo", scope: !200, file: !200, line: 813, type: !285, isLocal: true, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1932 = !DILocalVariable(name: "strvec", arg: 1, scope: !1931, file: !200, line: 813, type: !287)
!1933 = !DILocation(line: 813, column: 30, scope: !1931)
!1934 = !DILocation(line: 815, column: 14, scope: !1931)
!1935 = !DILocation(line: 815, column: 27, scope: !1931)
!1936 = !DILocation(line: 815, column: 40, scope: !1931)
!1937 = !DILocation(line: 815, column: 2, scope: !1931)
!1938 = !DILocation(line: 816, column: 1, scope: !1931)
!1939 = distinct !DISubprogram(name: "global_notify_fifo_script", scope: !200, file: !200, line: 818, type: !285, isLocal: true, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1940 = !DILocalVariable(name: "strvec", arg: 1, scope: !1939, file: !200, line: 818, type: !287)
!1941 = !DILocation(line: 818, column: 37, scope: !1939)
!1942 = !DILocation(line: 820, column: 21, scope: !1939)
!1943 = !DILocation(line: 820, column: 34, scope: !1939)
!1944 = !DILocation(line: 820, column: 47, scope: !1939)
!1945 = !DILocation(line: 820, column: 2, scope: !1939)
!1946 = !DILocation(line: 821, column: 1, scope: !1939)
!1947 = distinct !DISubprogram(name: "vrrp_notify_fifo", scope: !200, file: !200, line: 824, type: !285, isLocal: true, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1948 = !DILocalVariable(name: "strvec", arg: 1, scope: !1947, file: !200, line: 824, type: !287)
!1949 = !DILocation(line: 824, column: 28, scope: !1947)
!1950 = !DILocation(line: 826, column: 14, scope: !1947)
!1951 = !DILocation(line: 826, column: 32, scope: !1947)
!1952 = !DILocation(line: 826, column: 45, scope: !1947)
!1953 = !DILocation(line: 826, column: 2, scope: !1947)
!1954 = !DILocation(line: 827, column: 1, scope: !1947)
!1955 = distinct !DISubprogram(name: "vrrp_notify_fifo_script", scope: !200, file: !200, line: 829, type: !285, isLocal: true, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1956 = !DILocalVariable(name: "strvec", arg: 1, scope: !1955, file: !200, line: 829, type: !287)
!1957 = !DILocation(line: 829, column: 35, scope: !1955)
!1958 = !DILocation(line: 831, column: 21, scope: !1955)
!1959 = !DILocation(line: 831, column: 39, scope: !1955)
!1960 = !DILocation(line: 831, column: 52, scope: !1955)
!1961 = !DILocation(line: 831, column: 2, scope: !1955)
!1962 = !DILocation(line: 832, column: 1, scope: !1955)
!1963 = distinct !DISubprogram(name: "lvs_notify_fifo", scope: !200, file: !200, line: 836, type: !285, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1964 = !DILocalVariable(name: "strvec", arg: 1, scope: !1963, file: !200, line: 836, type: !287)
!1965 = !DILocation(line: 836, column: 27, scope: !1963)
!1966 = !DILocation(line: 838, column: 14, scope: !1963)
!1967 = !DILocation(line: 838, column: 31, scope: !1963)
!1968 = !DILocation(line: 838, column: 44, scope: !1963)
!1969 = !DILocation(line: 838, column: 2, scope: !1963)
!1970 = !DILocation(line: 839, column: 1, scope: !1963)
!1971 = distinct !DISubprogram(name: "lvs_notify_fifo_script", scope: !200, file: !200, line: 841, type: !285, isLocal: true, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1972 = !DILocalVariable(name: "strvec", arg: 1, scope: !1971, file: !200, line: 841, type: !287)
!1973 = !DILocation(line: 841, column: 34, scope: !1971)
!1974 = !DILocation(line: 843, column: 21, scope: !1971)
!1975 = !DILocation(line: 843, column: 38, scope: !1971)
!1976 = !DILocation(line: 843, column: 51, scope: !1971)
!1977 = !DILocation(line: 843, column: 2, scope: !1971)
!1978 = !DILocation(line: 844, column: 1, scope: !1971)
!1979 = distinct !DISubprogram(name: "checker_prio_handler", scope: !200, file: !200, line: 848, type: !285, isLocal: true, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1980 = !DILocalVariable(name: "strvec", arg: 1, scope: !1979, file: !200, line: 848, type: !287)
!1981 = !DILocation(line: 848, column: 32, scope: !1979)
!1982 = !DILocation(line: 850, column: 55, scope: !1979)
!1983 = !DILocation(line: 850, column: 42, scope: !1979)
!1984 = !DILocation(line: 850, column: 2, scope: !1979)
!1985 = !DILocation(line: 850, column: 15, scope: !1979)
!1986 = !DILocation(line: 850, column: 40, scope: !1979)
!1987 = !DILocation(line: 851, column: 1, scope: !1979)
!1988 = distinct !DISubprogram(name: "checker_no_swap_handler", scope: !200, file: !200, line: 853, type: !285, isLocal: true, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1989 = !DILocalVariable(name: "strvec", arg: 1, scope: !1988, file: !200, line: 853, type: !287)
!1990 = !DILocation(line: 853, column: 59, scope: !1988)
!1991 = !DILocation(line: 855, column: 2, scope: !1988)
!1992 = !DILocation(line: 855, column: 15, scope: !1988)
!1993 = !DILocation(line: 855, column: 31, scope: !1988)
!1994 = !DILocation(line: 856, column: 1, scope: !1988)
!1995 = distinct !DISubprogram(name: "checker_rt_priority_handler", scope: !200, file: !200, line: 859, type: !285, isLocal: true, isDefinition: true, scopeLine: 860, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!1996 = !DILocalVariable(name: "strvec", arg: 1, scope: !1995, file: !200, line: 859, type: !287)
!1997 = !DILocation(line: 859, column: 39, scope: !1995)
!1998 = !DILocalVariable(name: "priority", scope: !1995, file: !200, line: 861, type: !50)
!1999 = !DILocation(line: 861, column: 6, scope: !1995)
!2000 = !DILocation(line: 861, column: 39, scope: !1995)
!2001 = !DILocation(line: 861, column: 17, scope: !1995)
!2002 = !DILocation(line: 863, column: 6, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1995, file: !200, line: 863, column: 6)
!2004 = !DILocation(line: 863, column: 15, scope: !2003)
!2005 = !DILocation(line: 863, column: 6, scope: !1995)
!2006 = !DILocation(line: 864, column: 44, scope: !2003)
!2007 = !DILocation(line: 864, column: 3, scope: !2003)
!2008 = !DILocation(line: 864, column: 16, scope: !2003)
!2009 = !DILocation(line: 864, column: 42, scope: !2003)
!2010 = !DILocation(line: 865, column: 1, scope: !1995)
!2011 = distinct !DISubprogram(name: "checker_rt_rlimit_handler", scope: !200, file: !200, line: 868, type: !285, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2012 = !DILocalVariable(name: "strvec", arg: 1, scope: !2011, file: !200, line: 868, type: !287)
!2013 = !DILocation(line: 868, column: 37, scope: !2011)
!2014 = !DILocation(line: 870, column: 49, scope: !2011)
!2015 = !DILocation(line: 870, column: 35, scope: !2011)
!2016 = !DILocation(line: 870, column: 2, scope: !2011)
!2017 = !DILocation(line: 870, column: 15, scope: !2011)
!2018 = !DILocation(line: 870, column: 33, scope: !2011)
!2019 = !DILocation(line: 871, column: 1, scope: !2011)
!2020 = distinct !DISubprogram(name: "script_user_handler", scope: !200, file: !200, line: 1047, type: !285, isLocal: true, isDefinition: true, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2021 = !DILocalVariable(name: "strvec", arg: 1, scope: !2020, file: !200, line: 1047, type: !287)
!2022 = !DILocation(line: 1047, column: 31, scope: !2020)
!2023 = !DILocation(line: 1049, column: 8, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !200, line: 1049, column: 6)
!2025 = !DILocation(line: 1049, column: 17, scope: !2024)
!2026 = !DILocation(line: 1049, column: 28, scope: !2024)
!2027 = !DILocation(line: 1049, column: 6, scope: !2020)
!2028 = !DILocation(line: 1050, column: 3, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !200, line: 1049, column: 33)
!2030 = !DILocation(line: 1051, column: 3, scope: !2029)
!2031 = !DILocation(line: 1054, column: 42, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2020, file: !200, line: 1054, column: 6)
!2033 = !DILocation(line: 1054, column: 30, scope: !2032)
!2034 = !DILocation(line: 1054, column: 56, scope: !2032)
!2035 = !DILocation(line: 1054, column: 65, scope: !2032)
!2036 = !DILocation(line: 1054, column: 76, scope: !2032)
!2037 = !DILocation(line: 1054, column: 54, scope: !2032)
!2038 = !DILocation(line: 1054, column: 94, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2032, file: !200, discriminator: 1)
!2040 = !DILocation(line: 1054, column: 82, scope: !2039)
!2041 = !DILocation(line: 1054, column: 54, scope: !2039)
!2042 = !DILocation(line: 1054, column: 54, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2032, file: !200, discriminator: 2)
!2044 = !DILocation(line: 1054, column: 54, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2032, file: !200, discriminator: 3)
!2046 = !DILocation(line: 1054, column: 6, scope: !2045)
!2047 = !DILocation(line: 1055, column: 3, scope: !2032)
!2048 = !DILocation(line: 1056, column: 1, scope: !2020)
!2049 = distinct !DISubprogram(name: "script_security_handler", scope: !200, file: !200, line: 1059, type: !285, isLocal: true, isDefinition: true, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2050 = !DILocalVariable(name: "strvec", arg: 1, scope: !2049, file: !200, line: 1059, type: !287)
!2051 = !DILocation(line: 1059, column: 59, scope: !2049)
!2052 = !DILocation(line: 1061, column: 18, scope: !2049)
!2053 = !DILocation(line: 1062, column: 1, scope: !2049)
!2054 = distinct !DISubprogram(name: "vrrp_netlink_cmd_rcv_bufs_handler", scope: !200, file: !200, line: 1200, type: !285, isLocal: true, isDefinition: true, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2055 = !DILocalVariable(name: "strvec", arg: 1, scope: !2054, file: !200, line: 1200, type: !287)
!2056 = !DILocation(line: 1200, column: 45, scope: !2054)
!2057 = !DILocalVariable(name: "val", scope: !2054, file: !200, line: 1202, type: !59)
!2058 = !DILocation(line: 1202, column: 11, scope: !2054)
!2059 = !DILocation(line: 1204, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2054, file: !200, line: 1204, column: 6)
!2061 = !DILocation(line: 1204, column: 6, scope: !2054)
!2062 = !DILocation(line: 1205, column: 3, scope: !2060)
!2063 = !DILocation(line: 1207, column: 34, scope: !2054)
!2064 = !DILocation(line: 1207, column: 8, scope: !2054)
!2065 = !DILocation(line: 1207, column: 6, scope: !2054)
!2066 = !DILocation(line: 1209, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2054, file: !200, line: 1209, column: 6)
!2068 = !DILocation(line: 1209, column: 6, scope: !2054)
!2069 = !DILocation(line: 1210, column: 44, scope: !2067)
!2070 = !DILocation(line: 1210, column: 3, scope: !2067)
!2071 = !DILocation(line: 1210, column: 16, scope: !2067)
!2072 = !DILocation(line: 1210, column: 42, scope: !2067)
!2073 = !DILocation(line: 1211, column: 1, scope: !2054)
!2074 = distinct !DISubprogram(name: "vrrp_netlink_cmd_rcv_bufs_force_handler", scope: !200, file: !200, line: 1214, type: !285, isLocal: true, isDefinition: true, scopeLine: 1215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2075 = !DILocalVariable(name: "strvec", arg: 1, scope: !2074, file: !200, line: 1214, type: !287)
!2076 = !DILocation(line: 1214, column: 51, scope: !2074)
!2077 = !DILocalVariable(name: "res", scope: !2074, file: !200, line: 1216, type: !50)
!2078 = !DILocation(line: 1216, column: 6, scope: !2074)
!2079 = !DILocation(line: 1218, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !200, line: 1218, column: 6)
!2081 = !DILocation(line: 1218, column: 6, scope: !2074)
!2082 = !DILocation(line: 1219, column: 3, scope: !2080)
!2083 = !DILocation(line: 1221, column: 8, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2074, file: !200, line: 1221, column: 6)
!2085 = !DILocation(line: 1221, column: 17, scope: !2084)
!2086 = !DILocation(line: 1221, column: 28, scope: !2084)
!2087 = !DILocation(line: 1221, column: 6, scope: !2074)
!2088 = !DILocation(line: 1222, column: 38, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2084, file: !200, line: 1221, column: 34)
!2090 = !DILocation(line: 1222, column: 26, scope: !2089)
!2091 = !DILocation(line: 1222, column: 9, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2089, file: !200, discriminator: 1)
!2093 = !DILocation(line: 1222, column: 7, scope: !2089)
!2094 = !DILocation(line: 1223, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2089, file: !200, line: 1223, column: 7)
!2096 = !DILocation(line: 1223, column: 11, scope: !2095)
!2097 = !DILocation(line: 1223, column: 7, scope: !2089)
!2098 = !DILocation(line: 1224, column: 141, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !200, line: 1223, column: 16)
!2100 = !DILocation(line: 1224, column: 129, scope: !2099)
!2101 = !DILocation(line: 1224, column: 4, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2099, file: !200, discriminator: 1)
!2103 = !DILocation(line: 1225, column: 4, scope: !2099)
!2104 = !DILocation(line: 1227, column: 2, scope: !2089)
!2105 = !DILocation(line: 1229, column: 49, scope: !2074)
!2106 = !DILocation(line: 1229, column: 2, scope: !2074)
!2107 = !DILocation(line: 1229, column: 15, scope: !2074)
!2108 = !DILocation(line: 1229, column: 47, scope: !2074)
!2109 = !DILocation(line: 1230, column: 1, scope: !2074)
!2110 = !DILocation(line: 1230, column: 1, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2074, file: !200, discriminator: 1)
!2112 = distinct !DISubprogram(name: "vrrp_netlink_monitor_rcv_bufs_handler", scope: !200, file: !200, line: 1167, type: !285, isLocal: true, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2113 = !DILocalVariable(name: "strvec", arg: 1, scope: !2112, file: !200, line: 1167, type: !287)
!2114 = !DILocation(line: 1167, column: 49, scope: !2112)
!2115 = !DILocalVariable(name: "val", scope: !2112, file: !200, line: 1169, type: !59)
!2116 = !DILocation(line: 1169, column: 11, scope: !2112)
!2117 = !DILocation(line: 1171, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2112, file: !200, line: 1171, column: 6)
!2119 = !DILocation(line: 1171, column: 6, scope: !2112)
!2120 = !DILocation(line: 1172, column: 3, scope: !2118)
!2121 = !DILocation(line: 1174, column: 34, scope: !2112)
!2122 = !DILocation(line: 1174, column: 8, scope: !2112)
!2123 = !DILocation(line: 1174, column: 6, scope: !2112)
!2124 = !DILocation(line: 1176, column: 6, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2112, file: !200, line: 1176, column: 6)
!2126 = !DILocation(line: 1176, column: 6, scope: !2112)
!2127 = !DILocation(line: 1177, column: 48, scope: !2125)
!2128 = !DILocation(line: 1177, column: 3, scope: !2125)
!2129 = !DILocation(line: 1177, column: 16, scope: !2125)
!2130 = !DILocation(line: 1177, column: 46, scope: !2125)
!2131 = !DILocation(line: 1178, column: 1, scope: !2112)
!2132 = distinct !DISubprogram(name: "vrrp_netlink_monitor_rcv_bufs_force_handler", scope: !200, file: !200, line: 1181, type: !285, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2133 = !DILocalVariable(name: "strvec", arg: 1, scope: !2132, file: !200, line: 1181, type: !287)
!2134 = !DILocation(line: 1181, column: 55, scope: !2132)
!2135 = !DILocalVariable(name: "res", scope: !2132, file: !200, line: 1183, type: !50)
!2136 = !DILocation(line: 1183, column: 6, scope: !2132)
!2137 = !DILocation(line: 1185, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !200, line: 1185, column: 6)
!2139 = !DILocation(line: 1185, column: 6, scope: !2132)
!2140 = !DILocation(line: 1186, column: 3, scope: !2138)
!2141 = !DILocation(line: 1188, column: 8, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2132, file: !200, line: 1188, column: 6)
!2143 = !DILocation(line: 1188, column: 17, scope: !2142)
!2144 = !DILocation(line: 1188, column: 28, scope: !2142)
!2145 = !DILocation(line: 1188, column: 6, scope: !2132)
!2146 = !DILocation(line: 1189, column: 38, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !200, line: 1188, column: 34)
!2148 = !DILocation(line: 1189, column: 26, scope: !2147)
!2149 = !DILocation(line: 1189, column: 9, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2147, file: !200, discriminator: 1)
!2151 = !DILocation(line: 1189, column: 7, scope: !2147)
!2152 = !DILocation(line: 1190, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2147, file: !200, line: 1190, column: 7)
!2154 = !DILocation(line: 1190, column: 11, scope: !2153)
!2155 = !DILocation(line: 1190, column: 7, scope: !2147)
!2156 = !DILocation(line: 1191, column: 145, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !200, line: 1190, column: 16)
!2158 = !DILocation(line: 1191, column: 133, scope: !2157)
!2159 = !DILocation(line: 1191, column: 4, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2157, file: !200, discriminator: 1)
!2161 = !DILocation(line: 1192, column: 4, scope: !2157)
!2162 = !DILocation(line: 1194, column: 2, scope: !2147)
!2163 = !DILocation(line: 1196, column: 53, scope: !2132)
!2164 = !DILocation(line: 1196, column: 2, scope: !2132)
!2165 = !DILocation(line: 1196, column: 15, scope: !2132)
!2166 = !DILocation(line: 1196, column: 51, scope: !2132)
!2167 = !DILocation(line: 1197, column: 1, scope: !2132)
!2168 = !DILocation(line: 1197, column: 1, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2132, file: !200, discriminator: 1)
!2170 = distinct !DISubprogram(name: "lvs_netlink_cmd_rcv_bufs_handler", scope: !200, file: !200, line: 1268, type: !285, isLocal: true, isDefinition: true, scopeLine: 1269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2171 = !DILocalVariable(name: "strvec", arg: 1, scope: !2170, file: !200, line: 1268, type: !287)
!2172 = !DILocation(line: 1268, column: 44, scope: !2170)
!2173 = !DILocalVariable(name: "val", scope: !2170, file: !200, line: 1270, type: !59)
!2174 = !DILocation(line: 1270, column: 11, scope: !2170)
!2175 = !DILocation(line: 1272, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2170, file: !200, line: 1272, column: 6)
!2177 = !DILocation(line: 1272, column: 6, scope: !2170)
!2178 = !DILocation(line: 1273, column: 3, scope: !2176)
!2179 = !DILocation(line: 1275, column: 34, scope: !2170)
!2180 = !DILocation(line: 1275, column: 8, scope: !2170)
!2181 = !DILocation(line: 1275, column: 6, scope: !2170)
!2182 = !DILocation(line: 1277, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2170, file: !200, line: 1277, column: 6)
!2184 = !DILocation(line: 1277, column: 6, scope: !2170)
!2185 = !DILocation(line: 1278, column: 43, scope: !2183)
!2186 = !DILocation(line: 1278, column: 3, scope: !2183)
!2187 = !DILocation(line: 1278, column: 16, scope: !2183)
!2188 = !DILocation(line: 1278, column: 41, scope: !2183)
!2189 = !DILocation(line: 1279, column: 1, scope: !2170)
!2190 = distinct !DISubprogram(name: "lvs_netlink_cmd_rcv_bufs_force_handler", scope: !200, file: !200, line: 1282, type: !285, isLocal: true, isDefinition: true, scopeLine: 1283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2191 = !DILocalVariable(name: "strvec", arg: 1, scope: !2190, file: !200, line: 1282, type: !287)
!2192 = !DILocation(line: 1282, column: 50, scope: !2190)
!2193 = !DILocalVariable(name: "res", scope: !2190, file: !200, line: 1284, type: !50)
!2194 = !DILocation(line: 1284, column: 6, scope: !2190)
!2195 = !DILocation(line: 1286, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !200, line: 1286, column: 6)
!2197 = !DILocation(line: 1286, column: 6, scope: !2190)
!2198 = !DILocation(line: 1287, column: 3, scope: !2196)
!2199 = !DILocation(line: 1289, column: 8, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2190, file: !200, line: 1289, column: 6)
!2201 = !DILocation(line: 1289, column: 17, scope: !2200)
!2202 = !DILocation(line: 1289, column: 28, scope: !2200)
!2203 = !DILocation(line: 1289, column: 6, scope: !2190)
!2204 = !DILocation(line: 1290, column: 38, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !200, line: 1289, column: 34)
!2206 = !DILocation(line: 1290, column: 26, scope: !2205)
!2207 = !DILocation(line: 1290, column: 9, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2205, file: !200, discriminator: 1)
!2209 = !DILocation(line: 1290, column: 7, scope: !2205)
!2210 = !DILocation(line: 1291, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2205, file: !200, line: 1291, column: 7)
!2212 = !DILocation(line: 1291, column: 11, scope: !2211)
!2213 = !DILocation(line: 1291, column: 7, scope: !2205)
!2214 = !DILocation(line: 1292, column: 140, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !200, line: 1291, column: 16)
!2216 = !DILocation(line: 1292, column: 128, scope: !2215)
!2217 = !DILocation(line: 1292, column: 4, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2215, file: !200, discriminator: 1)
!2219 = !DILocation(line: 1293, column: 4, scope: !2215)
!2220 = !DILocation(line: 1295, column: 2, scope: !2205)
!2221 = !DILocation(line: 1297, column: 48, scope: !2190)
!2222 = !DILocation(line: 1297, column: 2, scope: !2190)
!2223 = !DILocation(line: 1297, column: 15, scope: !2190)
!2224 = !DILocation(line: 1297, column: 46, scope: !2190)
!2225 = !DILocation(line: 1298, column: 1, scope: !2190)
!2226 = !DILocation(line: 1298, column: 1, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2190, file: !200, discriminator: 1)
!2228 = distinct !DISubprogram(name: "lvs_netlink_monitor_rcv_bufs_handler", scope: !200, file: !200, line: 1235, type: !285, isLocal: true, isDefinition: true, scopeLine: 1236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2229 = !DILocalVariable(name: "strvec", arg: 1, scope: !2228, file: !200, line: 1235, type: !287)
!2230 = !DILocation(line: 1235, column: 48, scope: !2228)
!2231 = !DILocalVariable(name: "val", scope: !2228, file: !200, line: 1237, type: !59)
!2232 = !DILocation(line: 1237, column: 11, scope: !2228)
!2233 = !DILocation(line: 1239, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !200, line: 1239, column: 6)
!2235 = !DILocation(line: 1239, column: 6, scope: !2228)
!2236 = !DILocation(line: 1240, column: 3, scope: !2234)
!2237 = !DILocation(line: 1242, column: 34, scope: !2228)
!2238 = !DILocation(line: 1242, column: 8, scope: !2228)
!2239 = !DILocation(line: 1242, column: 6, scope: !2228)
!2240 = !DILocation(line: 1244, column: 6, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2228, file: !200, line: 1244, column: 6)
!2242 = !DILocation(line: 1244, column: 6, scope: !2228)
!2243 = !DILocation(line: 1245, column: 47, scope: !2241)
!2244 = !DILocation(line: 1245, column: 3, scope: !2241)
!2245 = !DILocation(line: 1245, column: 16, scope: !2241)
!2246 = !DILocation(line: 1245, column: 45, scope: !2241)
!2247 = !DILocation(line: 1246, column: 1, scope: !2228)
!2248 = distinct !DISubprogram(name: "lvs_netlink_monitor_rcv_bufs_force_handler", scope: !200, file: !200, line: 1249, type: !285, isLocal: true, isDefinition: true, scopeLine: 1250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2249 = !DILocalVariable(name: "strvec", arg: 1, scope: !2248, file: !200, line: 1249, type: !287)
!2250 = !DILocation(line: 1249, column: 54, scope: !2248)
!2251 = !DILocalVariable(name: "res", scope: !2248, file: !200, line: 1251, type: !50)
!2252 = !DILocation(line: 1251, column: 6, scope: !2248)
!2253 = !DILocation(line: 1253, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2248, file: !200, line: 1253, column: 6)
!2255 = !DILocation(line: 1253, column: 6, scope: !2248)
!2256 = !DILocation(line: 1254, column: 3, scope: !2254)
!2257 = !DILocation(line: 1256, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2248, file: !200, line: 1256, column: 6)
!2259 = !DILocation(line: 1256, column: 17, scope: !2258)
!2260 = !DILocation(line: 1256, column: 28, scope: !2258)
!2261 = !DILocation(line: 1256, column: 6, scope: !2248)
!2262 = !DILocation(line: 1257, column: 38, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !200, line: 1256, column: 34)
!2264 = !DILocation(line: 1257, column: 26, scope: !2263)
!2265 = !DILocation(line: 1257, column: 9, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2263, file: !200, discriminator: 1)
!2267 = !DILocation(line: 1257, column: 7, scope: !2263)
!2268 = !DILocation(line: 1258, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2263, file: !200, line: 1258, column: 7)
!2270 = !DILocation(line: 1258, column: 11, scope: !2269)
!2271 = !DILocation(line: 1258, column: 7, scope: !2263)
!2272 = !DILocation(line: 1259, column: 144, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !200, line: 1258, column: 16)
!2274 = !DILocation(line: 1259, column: 132, scope: !2273)
!2275 = !DILocation(line: 1259, column: 4, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2273, file: !200, discriminator: 1)
!2277 = !DILocation(line: 1260, column: 4, scope: !2273)
!2278 = !DILocation(line: 1262, column: 2, scope: !2263)
!2279 = !DILocation(line: 1264, column: 52, scope: !2248)
!2280 = !DILocation(line: 1264, column: 2, scope: !2248)
!2281 = !DILocation(line: 1264, column: 15, scope: !2248)
!2282 = !DILocation(line: 1264, column: 50, scope: !2248)
!2283 = !DILocation(line: 1265, column: 1, scope: !2248)
!2284 = !DILocation(line: 1265, column: 1, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2248, file: !200, discriminator: 1)
!2286 = distinct !DISubprogram(name: "rs_init_notifies_handler", scope: !200, file: !200, line: 1301, type: !285, isLocal: true, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2287 = !DILocalVariable(name: "strvec", arg: 1, scope: !2286, file: !200, line: 1301, type: !287)
!2288 = !DILocation(line: 1301, column: 36, scope: !2286)
!2289 = !DILocalVariable(name: "res", scope: !2286, file: !200, line: 1303, type: !50)
!2290 = !DILocation(line: 1303, column: 6, scope: !2286)
!2291 = !DILocation(line: 1305, column: 8, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !200, line: 1305, column: 6)
!2293 = !DILocation(line: 1305, column: 17, scope: !2292)
!2294 = !DILocation(line: 1305, column: 28, scope: !2292)
!2295 = !DILocation(line: 1305, column: 6, scope: !2286)
!2296 = !DILocation(line: 1306, column: 38, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !200, line: 1305, column: 34)
!2298 = !DILocation(line: 1306, column: 26, scope: !2297)
!2299 = !DILocation(line: 1306, column: 9, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2297, file: !200, discriminator: 1)
!2301 = !DILocation(line: 1306, column: 7, scope: !2297)
!2302 = !DILocation(line: 1307, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2297, file: !200, line: 1307, column: 7)
!2304 = !DILocation(line: 1307, column: 11, scope: !2303)
!2305 = !DILocation(line: 1307, column: 7, scope: !2297)
!2306 = !DILocation(line: 1308, column: 126, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !200, line: 1307, column: 16)
!2308 = !DILocation(line: 1308, column: 114, scope: !2307)
!2309 = !DILocation(line: 1308, column: 4, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2307, file: !200, discriminator: 1)
!2311 = !DILocation(line: 1309, column: 4, scope: !2307)
!2312 = !DILocation(line: 1311, column: 2, scope: !2297)
!2313 = !DILocation(line: 1313, column: 34, scope: !2286)
!2314 = !DILocation(line: 1313, column: 2, scope: !2286)
!2315 = !DILocation(line: 1313, column: 15, scope: !2286)
!2316 = !DILocation(line: 1313, column: 32, scope: !2286)
!2317 = !DILocation(line: 1314, column: 1, scope: !2286)
!2318 = !DILocation(line: 1314, column: 1, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2286, file: !200, discriminator: 1)
!2320 = distinct !DISubprogram(name: "no_checker_emails_handler", scope: !200, file: !200, line: 1317, type: !285, isLocal: true, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2321 = !DILocalVariable(name: "strvec", arg: 1, scope: !2320, file: !200, line: 1317, type: !287)
!2322 = !DILocation(line: 1317, column: 37, scope: !2320)
!2323 = !DILocalVariable(name: "res", scope: !2320, file: !200, line: 1319, type: !50)
!2324 = !DILocation(line: 1319, column: 6, scope: !2320)
!2325 = !DILocation(line: 1321, column: 8, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2320, file: !200, line: 1321, column: 6)
!2327 = !DILocation(line: 1321, column: 17, scope: !2326)
!2328 = !DILocation(line: 1321, column: 28, scope: !2326)
!2329 = !DILocation(line: 1321, column: 6, scope: !2320)
!2330 = !DILocation(line: 1322, column: 38, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !200, line: 1321, column: 34)
!2332 = !DILocation(line: 1322, column: 26, scope: !2331)
!2333 = !DILocation(line: 1322, column: 9, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2331, file: !200, discriminator: 1)
!2335 = !DILocation(line: 1322, column: 7, scope: !2331)
!2336 = !DILocation(line: 1323, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2331, file: !200, line: 1323, column: 7)
!2338 = !DILocation(line: 1323, column: 11, scope: !2337)
!2339 = !DILocation(line: 1323, column: 7, scope: !2331)
!2340 = !DILocation(line: 1324, column: 127, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !200, line: 1323, column: 16)
!2342 = !DILocation(line: 1324, column: 115, scope: !2341)
!2343 = !DILocation(line: 1324, column: 4, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2341, file: !200, discriminator: 1)
!2345 = !DILocation(line: 1325, column: 4, scope: !2341)
!2346 = !DILocation(line: 1327, column: 2, scope: !2331)
!2347 = !DILocation(line: 1329, column: 35, scope: !2320)
!2348 = !DILocation(line: 1329, column: 2, scope: !2320)
!2349 = !DILocation(line: 1329, column: 15, scope: !2320)
!2350 = !DILocation(line: 1329, column: 33, scope: !2320)
!2351 = !DILocation(line: 1330, column: 1, scope: !2320)
!2352 = !DILocation(line: 1330, column: 1, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2320, file: !200, discriminator: 1)
!2354 = distinct !DISubprogram(name: "vrrp_rx_bufs_policy_handler", scope: !200, file: !200, line: 1082, type: !285, isLocal: true, isDefinition: true, scopeLine: 1083, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2355 = !DILocalVariable(name: "strvec", arg: 1, scope: !2354, file: !200, line: 1082, type: !287)
!2356 = !DILocation(line: 1082, column: 39, scope: !2354)
!2357 = !DILocalVariable(name: "rx_buf_size", scope: !2354, file: !200, line: 1084, type: !59)
!2358 = !DILocation(line: 1084, column: 11, scope: !2354)
!2359 = !DILocalVariable(name: "i", scope: !2354, file: !200, line: 1085, type: !59)
!2360 = !DILocation(line: 1085, column: 11, scope: !2354)
!2361 = !DILocation(line: 1087, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2354, file: !200, line: 1087, column: 6)
!2363 = !DILocation(line: 1087, column: 6, scope: !2354)
!2364 = !DILocation(line: 1088, column: 3, scope: !2362)
!2365 = !DILocation(line: 1090, column: 8, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2354, file: !200, line: 1090, column: 6)
!2367 = !DILocation(line: 1090, column: 17, scope: !2366)
!2368 = !DILocation(line: 1090, column: 28, scope: !2366)
!2369 = !DILocation(line: 1090, column: 6, scope: !2354)
!2370 = !DILocation(line: 1091, column: 3, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2366, file: !200, line: 1090, column: 33)
!2372 = !DILocation(line: 1092, column: 3, scope: !2371)
!2373 = !DILocation(line: 1095, column: 9, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2354, file: !200, line: 1095, column: 2)
!2375 = !DILocation(line: 1095, column: 7, scope: !2374)
!2376 = !DILocation(line: 1095, column: 14, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !200, discriminator: 1)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !200, line: 1095, column: 2)
!2379 = !DILocation(line: 1095, column: 20, scope: !2377)
!2380 = !DILocation(line: 1095, column: 29, scope: !2377)
!2381 = !DILocation(line: 1095, column: 16, scope: !2377)
!2382 = !DILocation(line: 1095, column: 2, scope: !2377)
!2383 = !DILocation(line: 1096, column: 31, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !200, line: 1096, column: 7)
!2385 = distinct !DILexicalBlock(scope: !2378, file: !200, line: 1095, column: 46)
!2386 = !DILocation(line: 1096, column: 39, scope: !2384)
!2387 = !DILocation(line: 1096, column: 19, scope: !2384)
!2388 = !DILocation(line: 1096, column: 8, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2384, file: !200, discriminator: 1)
!2390 = !DILocation(line: 1096, column: 8, scope: !2384)
!2391 = !DILocation(line: 1096, column: 7, scope: !2385)
!2392 = !DILocation(line: 1097, column: 4, scope: !2384)
!2393 = !DILocation(line: 1097, column: 17, scope: !2384)
!2394 = !DILocation(line: 1097, column: 37, scope: !2384)
!2395 = !DILocation(line: 1098, column: 36, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2384, file: !200, line: 1098, column: 12)
!2397 = !DILocation(line: 1098, column: 44, scope: !2396)
!2398 = !DILocation(line: 1098, column: 24, scope: !2396)
!2399 = !DILocation(line: 1098, column: 13, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2396, file: !200, discriminator: 1)
!2401 = !DILocation(line: 1098, column: 13, scope: !2396)
!2402 = !DILocation(line: 1098, column: 12, scope: !2384)
!2403 = !DILocation(line: 1099, column: 4, scope: !2396)
!2404 = !DILocation(line: 1099, column: 17, scope: !2396)
!2405 = !DILocation(line: 1099, column: 37, scope: !2396)
!2406 = !DILocation(line: 1101, column: 30, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !200, line: 1101, column: 8)
!2408 = distinct !DILexicalBlock(scope: !2396, file: !200, line: 1100, column: 8)
!2409 = !DILocation(line: 1101, column: 9, scope: !2407)
!2410 = !DILocation(line: 1101, column: 8, scope: !2408)
!2411 = !DILocation(line: 1102, column: 101, scope: !2407)
!2412 = !DILocation(line: 1102, column: 108, scope: !2407)
!2413 = !DILocation(line: 1102, column: 89, scope: !2407)
!2414 = !DILocation(line: 1102, column: 5, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2407, file: !200, discriminator: 1)
!2416 = !DILocation(line: 1102, column: 5, scope: !2407)
!2417 = !DILocation(line: 1104, column: 38, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2407, file: !200, line: 1103, column: 9)
!2419 = !DILocation(line: 1104, column: 5, scope: !2418)
!2420 = !DILocation(line: 1104, column: 18, scope: !2418)
!2421 = !DILocation(line: 1104, column: 36, scope: !2418)
!2422 = !DILocation(line: 1105, column: 5, scope: !2418)
!2423 = !DILocation(line: 1105, column: 18, scope: !2418)
!2424 = !DILocation(line: 1105, column: 38, scope: !2418)
!2425 = !DILocation(line: 1108, column: 2, scope: !2385)
!2426 = !DILocation(line: 1095, column: 42, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2378, file: !200, discriminator: 2)
!2428 = !DILocation(line: 1095, column: 2, scope: !2427)
!2429 = distinct !{!2429, !2430}
!2430 = !DILocation(line: 1095, column: 2, scope: !2354)
!2431 = !DILocation(line: 1110, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2354, file: !200, line: 1110, column: 6)
!2433 = !DILocation(line: 1110, column: 20, scope: !2432)
!2434 = !DILocation(line: 1110, column: 40, scope: !2432)
!2435 = !DILocation(line: 1110, column: 48, scope: !2432)
!2436 = !DILocation(line: 1111, column: 7, scope: !2432)
!2437 = !DILocation(line: 1111, column: 20, scope: !2432)
!2438 = !DILocation(line: 1111, column: 40, scope: !2432)
!2439 = !DILocation(line: 1110, column: 6, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2354, file: !200, discriminator: 1)
!2441 = !DILocation(line: 1112, column: 3, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2432, file: !200, line: 1111, column: 58)
!2443 = !DILocation(line: 1113, column: 3, scope: !2442)
!2444 = !DILocation(line: 1113, column: 16, scope: !2442)
!2445 = !DILocation(line: 1113, column: 36, scope: !2442)
!2446 = !DILocation(line: 1114, column: 2, scope: !2442)
!2447 = !DILocation(line: 1115, column: 12, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2432, file: !200, line: 1115, column: 11)
!2449 = !DILocation(line: 1115, column: 25, scope: !2448)
!2450 = !DILocation(line: 1115, column: 45, scope: !2448)
!2451 = !DILocation(line: 1115, column: 53, scope: !2448)
!2452 = !DILocation(line: 1116, column: 5, scope: !2448)
!2453 = !DILocation(line: 1116, column: 18, scope: !2448)
!2454 = !DILocation(line: 1116, column: 38, scope: !2448)
!2455 = !DILocation(line: 1115, column: 11, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2432, file: !200, discriminator: 1)
!2457 = !DILocation(line: 1117, column: 3, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !200, line: 1116, column: 47)
!2459 = !DILocation(line: 1118, column: 3, scope: !2458)
!2460 = !DILocation(line: 1118, column: 16, scope: !2458)
!2461 = !DILocation(line: 1118, column: 36, scope: !2458)
!2462 = !DILocation(line: 1119, column: 2, scope: !2458)
!2463 = !DILocation(line: 1120, column: 1, scope: !2354)
!2464 = distinct !DISubprogram(name: "vrrp_rx_bufs_multiplier_handler", scope: !200, file: !200, line: 1123, type: !285, isLocal: true, isDefinition: true, scopeLine: 1124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2465 = !DILocalVariable(name: "strvec", arg: 1, scope: !2464, file: !200, line: 1123, type: !287)
!2466 = !DILocation(line: 1123, column: 43, scope: !2464)
!2467 = !DILocalVariable(name: "rx_buf_mult", scope: !2464, file: !200, line: 1125, type: !59)
!2468 = !DILocation(line: 1125, column: 11, scope: !2464)
!2469 = !DILocation(line: 1127, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !200, line: 1127, column: 6)
!2471 = !DILocation(line: 1127, column: 6, scope: !2464)
!2472 = !DILocation(line: 1128, column: 3, scope: !2470)
!2473 = !DILocation(line: 1130, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2464, file: !200, line: 1130, column: 6)
!2475 = !DILocation(line: 1130, column: 17, scope: !2474)
!2476 = !DILocation(line: 1130, column: 28, scope: !2474)
!2477 = !DILocation(line: 1130, column: 6, scope: !2464)
!2478 = !DILocation(line: 1131, column: 3, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2474, file: !200, line: 1130, column: 34)
!2480 = !DILocation(line: 1132, column: 3, scope: !2479)
!2481 = !DILocation(line: 1135, column: 28, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2464, file: !200, line: 1135, column: 6)
!2483 = !DILocation(line: 1135, column: 7, scope: !2482)
!2484 = !DILocation(line: 1135, column: 6, scope: !2464)
!2485 = !DILocation(line: 1136, column: 103, scope: !2482)
!2486 = !DILocation(line: 1136, column: 91, scope: !2482)
!2487 = !DILocation(line: 1136, column: 3, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2482, file: !200, discriminator: 1)
!2489 = !DILocation(line: 1136, column: 3, scope: !2482)
!2490 = !DILocation(line: 1138, column: 41, scope: !2482)
!2491 = !DILocation(line: 1138, column: 3, scope: !2482)
!2492 = !DILocation(line: 1138, column: 16, scope: !2482)
!2493 = !DILocation(line: 1138, column: 39, scope: !2482)
!2494 = !DILocation(line: 1139, column: 1, scope: !2464)
!2495 = distinct !DISubprogram(name: "get_priority", scope: !200, file: !200, line: 462, type: !2496, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!112, !287, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64, align: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!2500 = !DILocalVariable(name: "strvec", arg: 1, scope: !2495, file: !200, line: 462, type: !287)
!2501 = !DILocation(line: 462, column: 24, scope: !2495)
!2502 = !DILocalVariable(name: "process", arg: 2, scope: !2495, file: !200, line: 462, type: !2498)
!2503 = !DILocation(line: 462, column: 44, scope: !2495)
!2504 = !DILocalVariable(name: "priority", scope: !2495, file: !200, line: 464, type: !50)
!2505 = !DILocation(line: 464, column: 6, scope: !2495)
!2506 = !DILocation(line: 466, column: 8, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2495, file: !200, line: 466, column: 6)
!2508 = !DILocation(line: 466, column: 17, scope: !2507)
!2509 = !DILocation(line: 466, column: 28, scope: !2507)
!2510 = !DILocation(line: 466, column: 6, scope: !2495)
!2511 = !DILocation(line: 467, column: 81, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !200, line: 466, column: 33)
!2513 = !DILocation(line: 467, column: 3, scope: !2512)
!2514 = !DILocation(line: 468, column: 3, scope: !2512)
!2515 = !DILocation(line: 471, column: 23, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2495, file: !200, line: 471, column: 6)
!2517 = !DILocation(line: 471, column: 7, scope: !2516)
!2518 = !DILocation(line: 471, column: 6, scope: !2495)
!2519 = !DILocation(line: 472, column: 86, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !200, line: 471, column: 60)
!2521 = !DILocation(line: 472, column: 3, scope: !2520)
!2522 = !DILocation(line: 473, column: 3, scope: !2520)
!2523 = !DILocation(line: 476, column: 17, scope: !2495)
!2524 = !DILocation(line: 476, column: 9, scope: !2495)
!2525 = !DILocation(line: 476, column: 2, scope: !2495)
!2526 = !DILocation(line: 477, column: 1, scope: !2495)
!2527 = distinct !DISubprogram(name: "get_realtime_priority", scope: !200, file: !200, line: 414, type: !2528, isLocal: true, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!50, !287, !2498}
!2530 = !DILocalVariable(name: "strvec", arg: 1, scope: !2527, file: !200, line: 414, type: !287)
!2531 = !DILocation(line: 414, column: 33, scope: !2527)
!2532 = !DILocalVariable(name: "process", arg: 2, scope: !2527, file: !200, line: 414, type: !2498)
!2533 = !DILocation(line: 414, column: 53, scope: !2527)
!2534 = !DILocalVariable(name: "min_priority", scope: !2527, file: !200, line: 416, type: !50)
!2535 = !DILocation(line: 416, column: 6, scope: !2527)
!2536 = !DILocalVariable(name: "max_priority", scope: !2527, file: !200, line: 417, type: !50)
!2537 = !DILocation(line: 417, column: 6, scope: !2527)
!2538 = !DILocalVariable(name: "priority", scope: !2527, file: !200, line: 418, type: !50)
!2539 = !DILocation(line: 418, column: 6, scope: !2527)
!2540 = !DILocation(line: 420, column: 8, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2527, file: !200, line: 420, column: 6)
!2542 = !DILocation(line: 420, column: 17, scope: !2541)
!2543 = !DILocation(line: 420, column: 28, scope: !2541)
!2544 = !DILocation(line: 420, column: 6, scope: !2527)
!2545 = !DILocation(line: 421, column: 91, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !200, line: 420, column: 33)
!2547 = !DILocation(line: 421, column: 3, scope: !2546)
!2548 = !DILocation(line: 422, column: 3, scope: !2546)
!2549 = !DILocation(line: 425, column: 17, scope: !2527)
!2550 = !DILocation(line: 425, column: 15, scope: !2527)
!2551 = !DILocation(line: 426, column: 17, scope: !2527)
!2552 = !DILocation(line: 426, column: 15, scope: !2527)
!2553 = !DILocation(line: 428, column: 23, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2527, file: !200, line: 428, column: 6)
!2555 = !DILocation(line: 428, column: 7, scope: !2554)
!2556 = !DILocation(line: 428, column: 6, scope: !2527)
!2557 = !DILocation(line: 429, column: 91, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !200, line: 428, column: 69)
!2559 = !DILocation(line: 429, column: 120, scope: !2558)
!2560 = !DILocation(line: 429, column: 108, scope: !2558)
!2561 = !DILocation(line: 429, column: 3, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2558, file: !200, discriminator: 1)
!2563 = !DILocation(line: 430, column: 3, scope: !2558)
!2564 = !DILocation(line: 433, column: 6, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2527, file: !200, line: 433, column: 6)
!2566 = !DILocation(line: 433, column: 17, scope: !2565)
!2567 = !DILocation(line: 433, column: 15, scope: !2565)
!2568 = !DILocation(line: 433, column: 6, scope: !2527)
!2569 = !DILocation(line: 434, column: 123, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2565, file: !200, line: 433, column: 31)
!2571 = !DILocation(line: 434, column: 132, scope: !2570)
!2572 = !DILocation(line: 434, column: 142, scope: !2570)
!2573 = !DILocation(line: 434, column: 3, scope: !2570)
!2574 = !DILocation(line: 435, column: 14, scope: !2570)
!2575 = !DILocation(line: 435, column: 12, scope: !2570)
!2576 = !DILocation(line: 436, column: 2, scope: !2570)
!2577 = !DILocation(line: 437, column: 11, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2565, file: !200, line: 437, column: 11)
!2579 = !DILocation(line: 437, column: 22, scope: !2578)
!2580 = !DILocation(line: 437, column: 20, scope: !2578)
!2581 = !DILocation(line: 437, column: 11, scope: !2565)
!2582 = !DILocation(line: 438, column: 126, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !200, line: 437, column: 36)
!2584 = !DILocation(line: 438, column: 135, scope: !2583)
!2585 = !DILocation(line: 438, column: 145, scope: !2583)
!2586 = !DILocation(line: 438, column: 3, scope: !2583)
!2587 = !DILocation(line: 439, column: 14, scope: !2583)
!2588 = !DILocation(line: 439, column: 12, scope: !2583)
!2589 = !DILocation(line: 440, column: 2, scope: !2583)
!2590 = !DILocation(line: 442, column: 9, scope: !2527)
!2591 = !DILocation(line: 442, column: 2, scope: !2527)
!2592 = !DILocation(line: 443, column: 1, scope: !2527)
!2593 = distinct !DISubprogram(name: "get_rt_rlimit", scope: !200, file: !200, line: 446, type: !2594, isLocal: true, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2596, !287, !2498}
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !2597, line: 131, baseType: !2598)
!2597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !171, line: 136, baseType: !111)
!2599 = !DILocalVariable(name: "strvec", arg: 1, scope: !2593, file: !200, line: 446, type: !287)
!2600 = !DILocation(line: 446, column: 25, scope: !2593)
!2601 = !DILocalVariable(name: "process", arg: 2, scope: !2593, file: !200, line: 446, type: !2498)
!2602 = !DILocation(line: 446, column: 45, scope: !2593)
!2603 = !DILocalVariable(name: "limit", scope: !2593, file: !200, line: 448, type: !59)
!2604 = !DILocation(line: 448, column: 11, scope: !2593)
!2605 = !DILocalVariable(name: "rlim", scope: !2593, file: !200, line: 449, type: !2596)
!2606 = !DILocation(line: 449, column: 9, scope: !2593)
!2607 = !DILocation(line: 451, column: 28, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2593, file: !200, line: 451, column: 6)
!2609 = !DILocation(line: 451, column: 7, scope: !2608)
!2610 = !DILocation(line: 451, column: 6, scope: !2593)
!2611 = !DILocation(line: 452, column: 80, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !200, line: 451, column: 68)
!2613 = !DILocation(line: 452, column: 109, scope: !2612)
!2614 = !DILocation(line: 452, column: 97, scope: !2612)
!2615 = !DILocation(line: 452, column: 3, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2612, file: !200, discriminator: 1)
!2617 = !DILocation(line: 453, column: 3, scope: !2612)
!2618 = !DILocation(line: 456, column: 9, scope: !2593)
!2619 = !DILocation(line: 456, column: 7, scope: !2593)
!2620 = !DILocation(line: 457, column: 9, scope: !2593)
!2621 = !DILocation(line: 457, column: 2, scope: !2593)
!2622 = !DILocation(line: 458, column: 1, scope: !2593)
!2623 = distinct !DISubprogram(name: "notify_fifo", scope: !200, file: !200, line: 775, type: !2624, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !287, !2498, !2626}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64, align: 64)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_fifo_t", file: !2628, line: 73, baseType: !2629)
!2628 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_fifo", file: !2628, line: 68, size: 192, align: 64, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2629, file: !2628, line: 69, baseType: !48, size: 64, align: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2629, file: !2628, line: 70, baseType: !50, size: 32, align: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "created_fifo", scope: !2629, file: !2628, line: 71, baseType: !203, size: 8, align: 8, offset: 96)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !2629, file: !2628, line: 72, baseType: !2635, size: 64, align: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64, align: 64)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !2628, line: 65, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !2628, line: 59, size: 192, align: 64, elements: !2638)
!2638 = !{!2639, !2641, !2642, !2643, !2646}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2637, file: !2628, line: 60, baseType: !2640, size: 64, align: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !2637, file: !2628, line: 61, baseType: !50, size: 32, align: 32, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !2628, line: 62, baseType: !50, size: 32, align: 32, offset: 96)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2637, file: !2628, line: 63, baseType: !2644, size: 32, align: 32, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 80, baseType: !2645)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !171, line: 125, baseType: !59)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2637, file: !2628, line: 64, baseType: !2647, size: 32, align: 32, offset: 160)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 65, baseType: !2648)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !171, line: 126, baseType: !59)
!2649 = !DILocalVariable(name: "strvec", arg: 1, scope: !2623, file: !200, line: 775, type: !287)
!2650 = !DILocation(line: 775, column: 23, scope: !2623)
!2651 = !DILocalVariable(name: "type", arg: 2, scope: !2623, file: !200, line: 775, type: !2498)
!2652 = !DILocation(line: 775, column: 43, scope: !2623)
!2653 = !DILocalVariable(name: "fifo", arg: 3, scope: !2623, file: !200, line: 775, type: !2626)
!2654 = !DILocation(line: 775, column: 64, scope: !2623)
!2655 = !DILocation(line: 777, column: 8, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2623, file: !200, line: 777, column: 6)
!2657 = !DILocation(line: 777, column: 17, scope: !2656)
!2658 = !DILocation(line: 777, column: 28, scope: !2656)
!2659 = !DILocation(line: 777, column: 6, scope: !2623)
!2660 = !DILocation(line: 778, column: 80, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2656, file: !200, line: 777, column: 33)
!2662 = !DILocation(line: 778, column: 3, scope: !2661)
!2663 = !DILocation(line: 779, column: 3, scope: !2661)
!2664 = !DILocation(line: 782, column: 6, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2623, file: !200, line: 782, column: 6)
!2666 = !DILocation(line: 782, column: 12, scope: !2665)
!2667 = !DILocation(line: 782, column: 6, scope: !2623)
!2668 = !DILocation(line: 783, column: 94, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !200, line: 782, column: 18)
!2670 = !DILocation(line: 783, column: 120, scope: !2669)
!2671 = !DILocation(line: 783, column: 108, scope: !2669)
!2672 = !DILocation(line: 783, column: 3, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2669, file: !200, discriminator: 1)
!2674 = !DILocation(line: 784, column: 3, scope: !2669)
!2675 = !DILocation(line: 787, column: 42, scope: !2623)
!2676 = !DILocation(line: 787, column: 30, scope: !2623)
!2677 = !DILocation(line: 787, column: 23, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2623, file: !200, discriminator: 1)
!2679 = !DILocation(line: 787, column: 54, scope: !2623)
!2680 = !DILocation(line: 787, column: 16, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2623, file: !200, discriminator: 2)
!2682 = !DILocation(line: 787, column: 2, scope: !2623)
!2683 = !DILocation(line: 787, column: 8, scope: !2623)
!2684 = !DILocation(line: 787, column: 13, scope: !2623)
!2685 = !DILocation(line: 788, column: 9, scope: !2623)
!2686 = !DILocation(line: 788, column: 15, scope: !2623)
!2687 = !DILocation(line: 788, column: 33, scope: !2623)
!2688 = !DILocation(line: 788, column: 21, scope: !2623)
!2689 = !DILocation(line: 788, column: 2, scope: !2678)
!2690 = !DILocation(line: 789, column: 1, scope: !2623)
!2691 = !DILocation(line: 789, column: 1, scope: !2678)
!2692 = distinct !DISubprogram(name: "notify_fifo_script", scope: !200, file: !200, line: 791, type: !2624, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2693 = !DILocalVariable(name: "strvec", arg: 1, scope: !2692, file: !200, line: 791, type: !287)
!2694 = !DILocation(line: 791, column: 30, scope: !2692)
!2695 = !DILocalVariable(name: "type", arg: 2, scope: !2692, file: !200, line: 791, type: !2498)
!2696 = !DILocation(line: 791, column: 50, scope: !2692)
!2697 = !DILocalVariable(name: "fifo", arg: 3, scope: !2692, file: !200, line: 791, type: !2626)
!2698 = !DILocation(line: 791, column: 71, scope: !2692)
!2699 = !DILocalVariable(name: "id_str", scope: !2692, file: !200, line: 793, type: !48)
!2700 = !DILocation(line: 793, column: 8, scope: !2692)
!2701 = !DILocation(line: 795, column: 8, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2692, file: !200, line: 795, column: 6)
!2703 = !DILocation(line: 795, column: 17, scope: !2702)
!2704 = !DILocation(line: 795, column: 28, scope: !2702)
!2705 = !DILocation(line: 795, column: 6, scope: !2692)
!2706 = !DILocation(line: 796, column: 82, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !200, line: 795, column: 33)
!2708 = !DILocation(line: 796, column: 3, scope: !2707)
!2709 = !DILocation(line: 797, column: 3, scope: !2707)
!2710 = !DILocation(line: 800, column: 6, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2692, file: !200, line: 800, column: 6)
!2712 = !DILocation(line: 800, column: 12, scope: !2711)
!2713 = !DILocation(line: 800, column: 6, scope: !2692)
!2714 = !DILocation(line: 801, column: 101, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !200, line: 800, column: 20)
!2716 = !DILocation(line: 801, column: 127, scope: !2715)
!2717 = !DILocation(line: 801, column: 115, scope: !2715)
!2718 = !DILocation(line: 801, column: 3, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2715, file: !200, discriminator: 1)
!2720 = !DILocation(line: 802, column: 3, scope: !2715)
!2721 = !DILocation(line: 805, column: 26, scope: !2692)
!2722 = !DILocation(line: 805, column: 19, scope: !2692)
!2723 = !DILocation(line: 805, column: 32, scope: !2692)
!2724 = !DILocation(line: 805, column: 56, scope: !2692)
!2725 = !DILocation(line: 805, column: 12, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2692, file: !200, discriminator: 1)
!2727 = !DILocation(line: 805, column: 9, scope: !2692)
!2728 = !DILocation(line: 806, column: 9, scope: !2692)
!2729 = !DILocation(line: 806, column: 17, scope: !2692)
!2730 = !DILocation(line: 806, column: 2, scope: !2692)
!2731 = !DILocation(line: 807, column: 9, scope: !2692)
!2732 = !DILocation(line: 807, column: 2, scope: !2692)
!2733 = !DILocation(line: 808, column: 39, scope: !2692)
!2734 = !DILocation(line: 808, column: 17, scope: !2692)
!2735 = !DILocation(line: 808, column: 2, scope: !2692)
!2736 = !DILocation(line: 808, column: 8, scope: !2692)
!2737 = !DILocation(line: 808, column: 15, scope: !2692)
!2738 = !DILocation(line: 810, column: 8, scope: !2692)
!2739 = !DILocation(line: 810, column: 3, scope: !2692)
!2740 = !DILocation(line: 810, column: 26, scope: !2692)
!2741 = !DILocation(line: 811, column: 1, scope: !2692)
!2742 = !DILocation(line: 811, column: 1, scope: !2726)
!2743 = distinct !DISubprogram(name: "get_netlink_rcv_bufs_size", scope: !200, file: !200, line: 1144, type: !2744, isLocal: true, isDefinition: true, scopeLine: 1145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !204)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!59, !287, !2498}
!2746 = !DILocalVariable(name: "strvec", arg: 1, scope: !2743, file: !200, line: 1144, type: !287)
!2747 = !DILocation(line: 1144, column: 37, scope: !2743)
!2748 = !DILocalVariable(name: "type", arg: 2, scope: !2743, file: !200, line: 1144, type: !2498)
!2749 = !DILocation(line: 1144, column: 57, scope: !2743)
!2750 = !DILocalVariable(name: "val", scope: !2743, file: !200, line: 1146, type: !59)
!2751 = !DILocation(line: 1146, column: 11, scope: !2743)
!2752 = !DILocation(line: 1148, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2743, file: !200, line: 1148, column: 6)
!2754 = !DILocation(line: 1148, column: 6, scope: !2743)
!2755 = !DILocation(line: 1149, column: 3, scope: !2753)
!2756 = !DILocation(line: 1151, column: 8, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2743, file: !200, line: 1151, column: 6)
!2758 = !DILocation(line: 1151, column: 17, scope: !2757)
!2759 = !DILocation(line: 1151, column: 28, scope: !2757)
!2760 = !DILocation(line: 1151, column: 6, scope: !2743)
!2761 = !DILocation(line: 1152, column: 73, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !200, line: 1151, column: 33)
!2763 = !DILocation(line: 1152, column: 3, scope: !2762)
!2764 = !DILocation(line: 1153, column: 3, scope: !2762)
!2765 = !DILocation(line: 1156, column: 28, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2743, file: !200, line: 1156, column: 6)
!2767 = !DILocation(line: 1156, column: 7, scope: !2766)
!2768 = !DILocation(line: 1156, column: 6, scope: !2743)
!2769 = !DILocation(line: 1157, column: 78, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !200, line: 1156, column: 65)
!2771 = !DILocation(line: 1157, column: 104, scope: !2770)
!2772 = !DILocation(line: 1157, column: 92, scope: !2770)
!2773 = !DILocation(line: 1157, column: 3, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2770, file: !200, discriminator: 1)
!2775 = !DILocation(line: 1158, column: 3, scope: !2770)
!2776 = !DILocation(line: 1161, column: 9, scope: !2743)
!2777 = !DILocation(line: 1161, column: 2, scope: !2743)
!2778 = !DILocation(line: 1162, column: 1, scope: !2743)
