; ModuleID = './[inter]keepalived--vrrp--vrrp_iproute.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_iproute.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._nl_handle = type { %struct.nl_sock*, i32, i32, i32, %struct._thread* }
%struct.nl_sock = type opaque
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.4, %struct._thread_event*, %union.anon.6 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct.timeval = type { i64, i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.6 = type { %struct.rb_node }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon, %struct._interface*, i8*, i32, i32, i8, %union.anon.1, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%union.anon.1 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._vector = type { i32, i32, i8** }
%struct.anon = type { %struct.in_addr, %struct.in_addr }
%struct._ip_route = type { %struct._ip_address*, %struct._ip_address*, %struct._ip_address*, i8, i8, i32, i8, i8, i32, %struct._ip_address*, %struct._interface*, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8, i8, i32, %struct._encap, %struct._list*, i32, i8, %struct._static_track_group*, i8, i32 }
%struct._encap = type { i16, i32, %union.anon.2 }
%union.anon.2 = type { %struct._encap_ip }
%struct._encap_ip = type { i64, %struct._ip_address*, %struct._ip_address*, i8, i16, i8 }
%struct.anon.3 = type { %struct.nlmsghdr, %struct.rtmsg, [1024 x i8] }
%struct.rtmsg = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.rtattr = type { i16, i16 }
%struct._encap_ip6 = type { i64, %struct._ip_address*, %struct._ip_address*, i8, i16, i8 }
%struct._nexthop = type { i32, %struct._ip_address*, %struct._interface*, i8, i8, i32, %struct._encap }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct._encap_mpls = type { [2 x %struct.mpls_label], i64 }
%struct.mpls_label = type { i32 }
%struct._encap_ila = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" from %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" src %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" tos %u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" via %s %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" dev %s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" table %u\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" proto %u\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" scope %u\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" metric %u\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"onlink\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c" realms %d/\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" realm \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c" congctl %s%s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [7 x i8] c" %s%s \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rtt\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" lock\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%gs\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%ums\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"rttvar\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"rto_min\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"features ecn\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c" mtu %s%u\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c" window %u\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c" ssthresh %s%u\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c" cwnd %s%u\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c" advmss %s%u\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c" reordering %s%u\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" hoplimit %u\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c" initcwnd %u\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" initrwnd %u\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c" quickack %u\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c" %s %s\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"pref\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c" nexthop\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c" via inet%s %s\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c" weight %d\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c" onlink\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c" no_track\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c" track_group %s\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" [dev %s]\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c" [installed ifindex %d]\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%*s%s\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"invalid route src address %s\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"Cannot mix IPv4 and IPv6 addresses for route\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"\22as to\22 for MPLS only - ignoring\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"via\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"gw\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"\22gw\22 for routes is deprecated. Please use \22via\22\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"invalid route via address %s\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"invalid route from address %s\00", align 1
@.str.69 = private unnamed_addr constant [49 x i8] c"route from address only supported with IPv6 (%s)\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"tos\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"dsfield\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"TOS value %s is invalid\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"Routing table %s not found for route\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"Protocol %s not found or invalid for route\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"Scope %s not found or invalid for route\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"metric\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"preference\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"Invalid MTU %s specified for route\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"oif\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"WARNING - interface %s for VROUTE nexthop doesn't exist\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"encap\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"%s not supported by kernel\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"hoplimit\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"Invalid hoplimit %s specified for route\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"advmss\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"Invalid advmss %s specified for route\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"Invalid rtt %s for route\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Invalid rttvar %s for route\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"reordering\00", align 1
@.str.98 = private unnamed_addr constant [48 x i8] c"Invalid reordering value %s specified for route\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Invalid window value %s specified for route\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"cwnd\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"Invalid cwnd value %s specified for route\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"ssthresh\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"Invalid ssthresh value %s specified for route\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"realms\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"Invalid realms %s for route\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"realms are only valid for IPv4\00", align 1
@.str.108 = private unnamed_addr constant [45 x i8] c"Invalid rto_min value %s specified for route\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"initcwnd\00", align 1
@.str.110 = private unnamed_addr constant [46 x i8] c"Invalid initcwnd value %s specified for route\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"initrwnd\00", align 1
@.str.112 = private unnamed_addr constant [46 x i8] c"Invalid initrwnd value %s specified for route\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"ecn\00", align 1
@.str.115 = private unnamed_addr constant [25 x i8] c"feature %s not supported\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"quickack\00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"Invalid quickack value %s specified for route\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"congctl\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"pref is only valid for IPv6\00", align 1
@.str.120 = private unnamed_addr constant [42 x i8] c"Invalid pref value %s specified for route\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"fastopen_no_cookie\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.123 = private unnamed_addr constant [52 x i8] c"\22or\22 for routes is deprecated. Please use \22nexthop\22\00", align 1
@.str.124 = private unnamed_addr constant [51 x i8] c"\22or\22 route already specified - ignoring subsequent\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"Invalid \22or\22 address %s\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"nexthop\00", align 1
@.str.127 = private unnamed_addr constant [40 x i8] c"Cannot specify nexthops with \22or\22 route\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"no_track\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"track_group\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"track_group %s is a duplicate\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"track_group %s not found\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"unknown route keyword %s\00", align 1
@.str.133 = private unnamed_addr constant [50 x i8] c"Cannot mix IPv4 and IPv6 addresses for route (%s)\00", align 1
@.str.134 = private unnamed_addr constant [33 x i8] c"Route has trailing nonsense - %s\00", align 1
@.str.135 = private unnamed_addr constant [30 x i8] c"Route must have a destination\00", align 1
@.str.136 = private unnamed_addr constant [85 x i8] c"Route cannot be tracked if protocol is not RTPROT_KEEPALIVED(%d), resetting protocol\00", align 1
@.str.137 = private unnamed_addr constant [74 x i8] c"Warning - cannot track route %s with no interface specified, not tracking\00", align 1
@.str.138 = private unnamed_addr constant [57 x i8] c"Static route cannot have track group if no oif specified\00", align 1
@.str.139 = private unnamed_addr constant [30 x i8] c"Removing a VirtualRoute block\00", align 1
@.str.140 = private unnamed_addr constant [37 x i8] c"ip route %s/%d ... , no longer exist\00", align 1
@old_vrrp_data = external global %struct._vrrp_data*, align 8
@vrrp_data = external global %struct._vrrp_data*, align 8
@.str.141 = private unnamed_addr constant [34 x i8] c"Restoring deleted static route %s\00", align 1
@garp_delay = common global %struct._list* null, align 8
@nl_cmd = external global %struct._nl_handle, align 8
@.str.142 = private unnamed_addr constant [22 x i8] c"unknown encap type %d\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c" encap mpls\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"%s%x\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c" encap ip\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c" id %lu\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c" dst %s\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c" tos %d\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c" ttl %d\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c" flags 0x%x\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c" encap ila %lu\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c" encap ip6\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c" tc %d\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c" hoplimit %d\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"Missing encap type\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"ip6\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"mpls\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"ila\00", align 1
@.str.162 = private unnamed_addr constant [24 x i8] c"Unknown encap type - %s\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.164 = private unnamed_addr constant [29 x i8] c"encap id %s value is invalid\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"Invalid encap ip dst %s\00", align 1
@.str.167 = private unnamed_addr constant [47 x i8] c"IPv6 address %s not valid for ip encapsulation\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c"Invalid encap ip src %s\00", align 1
@.str.169 = private unnamed_addr constant [42 x i8] c"dsfield %s not valid for ip encapsulation\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.171 = private unnamed_addr constant [41 x i8] c"ttl %s is not valid for ip encapsulation\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.173 = private unnamed_addr constant [43 x i8] c"flags %s is not valid for ip encapsulation\00", align 1
@.str.174 = private unnamed_addr constant [43 x i8] c"address or id missing for ip encapsulation\00", align 1
@.str.175 = private unnamed_addr constant [43 x i8] c"id %s value invalid for IPv6 encapsulation\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"Invalid encap ip6 dst %s\00", align 1
@.str.177 = private unnamed_addr constant [48 x i8] c"IPv4 address %s not valid for ip6 encapsulation\00", align 1
@.str.178 = private unnamed_addr constant [25 x i8] c"Invalid encap ip6 src %s\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.180 = private unnamed_addr constant [45 x i8] c"tc value %s is invalid for ip6 encapsulation\00", align 1
@.str.181 = private unnamed_addr constant [52 x i8] c"Invalid hoplimit %s specified for ip6 encapsulation\00", align 1
@.str.182 = private unnamed_addr constant [44 x i8] c"flags %s is not valid for ip6 encapsulation\00", align 1
@.str.183 = private unnamed_addr constant [44 x i8] c"address or id missing for ip6 encapsulation\00", align 1
@.str.184 = private unnamed_addr constant [39 x i8] c"missing address for MPLS encapsulation\00", align 1
@.str.185 = private unnamed_addr constant [42 x i8] c"invalid mpls address %s for encapsulation\00", align 1
@.str.186 = private unnamed_addr constant [38 x i8] c"missing locator for ILA encapsulation\00", align 1
@.str.187 = private unnamed_addr constant [41 x i8] c"invalid locator %s for ila encapsulation\00", align 1
@.str.188 = private unnamed_addr constant [28 x i8] c"IPv4/6 mismatch for nexthop\00", align 1
@.str.189 = private unnamed_addr constant [27 x i8] c"invalid nexthop address %s\00", align 1
@.str.190 = private unnamed_addr constant [37 x i8] c"Address family mismatch for next hop\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.192 = private unnamed_addr constant [38 x i8] c"Invalid weight %s specified for route\00", align 1
@.str.193 = private unnamed_addr constant [37 x i8] c"Invalid weight 0 specified for route\00", align 1
@.str.194 = private unnamed_addr constant [35 x i8] c"realms are only supported for IPv4\00", align 1
@.str.195 = private unnamed_addr constant [30 x i8] c"'as [to]' (nat) not supported\00", align 1
@.str.196 = private unnamed_addr constant [48 x i8] c"Route has trailing nonsense after nexthops - %s\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i16 @add_addr2req(%struct.nlmsghdr*, i64, i16 zeroext, %struct._ip_address*) #0 !dbg !565 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %6, metadata !580, metadata !581), !dbg !582
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !583, metadata !581), !dbg !584
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !585, metadata !581), !dbg !586
  store %struct._ip_address* %3, %struct._ip_address** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !587, metadata !581), !dbg !588
  call void @llvm.dbg.declare(metadata i8** %10, metadata !589, metadata !581), !dbg !590
  call void @llvm.dbg.declare(metadata i64* %11, metadata !591, metadata !581), !dbg !592
  %12 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !593
  %13 = icmp ne %struct._ip_address* %12, null, !dbg !593
  br i1 %13, label %15, label %14, !dbg !595

; <label>:14:                                     ; preds = %4
  store i16 0, i16* %5, align 2, !dbg !596
  br label %41, !dbg !596

; <label>:15:                                     ; preds = %4
  %16 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !597
  %17 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %16, i32 0, i32 0, !dbg !599
  %18 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %17, i32 0, i32 0, !dbg !600
  %19 = load i8, i8* %18, align 8, !dbg !600
  %20 = zext i8 %19 to i32, !dbg !601
  %21 = icmp eq i32 %20, 10, !dbg !602
  br i1 %21, label %22, label %27, !dbg !603

; <label>:22:                                     ; preds = %15
  %23 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !604
  %24 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %23, i32 0, i32 1, !dbg !606
  %25 = bitcast %union.anon* %24 to %struct.in6_addr*, !dbg !607
  %26 = bitcast %struct.in6_addr* %25 to i8*, !dbg !608
  store i8* %26, i8** %10, align 8, !dbg !609
  store i64 16, i64* %11, align 8, !dbg !610
  br label %33, !dbg !611

; <label>:27:                                     ; preds = %15
  %28 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !612
  %29 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %28, i32 0, i32 1, !dbg !614
  %30 = bitcast %union.anon* %29 to %struct.anon*, !dbg !615
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0, !dbg !616
  %32 = bitcast %struct.in_addr* %31 to i8*, !dbg !617
  store i8* %32, i8** %10, align 8, !dbg !618
  store i64 4, i64* %11, align 8, !dbg !619
  br label %33

; <label>:33:                                     ; preds = %27, %22
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !620
  %35 = load i64, i64* %7, align 8, !dbg !621
  %36 = load i16, i16* %8, align 2, !dbg !622
  %37 = load i8*, i8** %10, align 8, !dbg !623
  %38 = load i64, i64* %11, align 8, !dbg !624
  %39 = call i32 @addattr_l(%struct.nlmsghdr* %34, i64 %35, i16 zeroext %36, i8* %37, i64 %38), !dbg !625
  %40 = trunc i32 %39 to i16, !dbg !626
  store i16 %40, i16* %5, align 2, !dbg !627
  br label %41, !dbg !627

; <label>:41:                                     ; preds = %33, %14
  %42 = load i16, i16* %5, align 2, !dbg !628
  ret i16 %42, !dbg !628
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @addattr_l(%struct.nlmsghdr*, i64, i16 zeroext, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @netlink_rtlist(%struct._list*, i32) #0 !dbg !629 {
  %3 = alloca %struct._list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._ip_route*, align 8
  %6 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !632, metadata !581), !dbg !633
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !634, metadata !581), !dbg !635
  call void @llvm.dbg.declare(metadata %struct._ip_route** %5, metadata !636, metadata !581), !dbg !637
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !638, metadata !581), !dbg !640
  %7 = load %struct._list*, %struct._list** %3, align 8, !dbg !641
  %8 = icmp eq %struct._list* %7, null, !dbg !643
  br i1 %8, label %19, label %9, !dbg !644

; <label>:9:                                      ; preds = %2
  %10 = load %struct._list*, %struct._list** %3, align 8, !dbg !645
  %11 = getelementptr inbounds %struct._list, %struct._list* %10, i32 0, i32 0, !dbg !647
  %12 = load %struct._element*, %struct._element** %11, align 8, !dbg !647
  %13 = icmp eq %struct._element* %12, null, !dbg !648
  br i1 %13, label %14, label %20, !dbg !649

; <label>:14:                                     ; preds = %9
  %15 = load %struct._list*, %struct._list** %3, align 8, !dbg !650
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1, !dbg !652
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !652
  %18 = icmp eq %struct._element* %17, null, !dbg !653
  br i1 %18, label %19, label %20, !dbg !654

; <label>:19:                                     ; preds = %14, %2
  br label %67, !dbg !655

; <label>:20:                                     ; preds = %14, %9
  %21 = load %struct._list*, %struct._list** %3, align 8, !dbg !656
  %22 = icmp ne %struct._list* %21, null, !dbg !658
  br i1 %22, label %24, label %23, !dbg !659

; <label>:23:                                     ; preds = %20
  br label %28, !dbg !660

; <label>:24:                                     ; preds = %20
  %25 = load %struct._list*, %struct._list** %3, align 8, !dbg !662
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 0, !dbg !664
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !664
  br label %28, !dbg !665

; <label>:28:                                     ; preds = %24, %23
  %29 = phi %struct._element* [ null, %23 ], [ %27, %24 ], !dbg !666
  store %struct._element* %29, %struct._element** %6, align 8, !dbg !668
  br label %30, !dbg !669

; <label>:30:                                     ; preds = %63, %28
  %31 = load %struct._element*, %struct._element** %6, align 8, !dbg !670
  %32 = icmp ne %struct._element* %31, null, !dbg !673
  br i1 %32, label %33, label %67, !dbg !673

; <label>:33:                                     ; preds = %30
  %34 = load %struct._element*, %struct._element** %6, align 8, !dbg !674
  %35 = getelementptr inbounds %struct._element, %struct._element* %34, i32 0, i32 2, !dbg !676
  %36 = load i8*, i8** %35, align 8, !dbg !676
  %37 = bitcast i8* %36 to %struct._ip_route*, !dbg !677
  store %struct._ip_route* %37, %struct._ip_route** %5, align 8, !dbg !678
  %38 = load i32, i32* %4, align 4, !dbg !679
  %39 = icmp eq i32 %38, 0, !dbg !681
  %40 = zext i1 %39 to i32, !dbg !681
  %41 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !682
  %42 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %41, i32 0, i32 36, !dbg !683
  %43 = load i8, i8* %42, align 8, !dbg !683
  %44 = trunc i8 %43 to i1, !dbg !683
  %45 = zext i1 %44 to i32, !dbg !682
  %46 = icmp eq i32 %40, %45, !dbg !684
  br i1 %46, label %47, label %62, !dbg !685

; <label>:47:                                     ; preds = %33
  %48 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !686
  %49 = load i32, i32* %4, align 4, !dbg !689
  %50 = call i32 @netlink_route(%struct._ip_route* %48, i32 %49), !dbg !690
  %51 = icmp sgt i32 %50, 0, !dbg !691
  br i1 %51, label %52, label %58, !dbg !692

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %4, align 4, !dbg !693
  %54 = icmp eq i32 %53, 1, !dbg !694
  %55 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !695
  %56 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %55, i32 0, i32 36, !dbg !696
  %57 = zext i1 %54 to i8, !dbg !697
  store i8 %57, i8* %56, align 8, !dbg !697
  br label %61, !dbg !695

; <label>:58:                                     ; preds = %47
  %59 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !698
  %60 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %59, i32 0, i32 36, !dbg !699
  store i8 0, i8* %60, align 8, !dbg !700
  br label %61

; <label>:61:                                     ; preds = %58, %52
  br label %62, !dbg !701

; <label>:62:                                     ; preds = %61, %33
  br label %63, !dbg !702

; <label>:63:                                     ; preds = %62
  %64 = load %struct._element*, %struct._element** %6, align 8, !dbg !703
  %65 = getelementptr inbounds %struct._element, %struct._element* %64, i32 0, i32 0, !dbg !705
  %66 = load %struct._element*, %struct._element** %65, align 8, !dbg !705
  store %struct._element* %66, %struct._element** %6, align 8, !dbg !706
  br label %30, !dbg !707, !llvm.loop !708

; <label>:67:                                     ; preds = %19, %30
  ret void, !dbg !710
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_route(%struct._ip_route*, i32) #0 !dbg !711 {
  %3 = alloca %struct._ip_route*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.anon.3, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca %struct.rtattr*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.rtattr*, align 8
  store %struct._ip_route* %0, %struct._ip_route** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_route** %3, metadata !714, metadata !581), !dbg !715
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !716, metadata !581), !dbg !717
  call void @llvm.dbg.declare(metadata i32* %5, metadata !718, metadata !581), !dbg !719
  store i32 1, i32* %5, align 4, !dbg !719
  call void @llvm.dbg.declare(metadata %struct.anon.3* %6, metadata !720, metadata !581), !dbg !740
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !741, metadata !581), !dbg !742
  call void @llvm.dbg.declare(metadata %struct.rtattr** %8, metadata !743, metadata !581), !dbg !749
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !750
  %12 = bitcast i8* %11 to %struct.rtattr*, !dbg !751
  store %struct.rtattr* %12, %struct.rtattr** %8, align 8, !dbg !749
  %13 = bitcast %struct.anon.3* %6 to i8*, !dbg !752
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 1052, i32 4, i1 false), !dbg !752
  %14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !753
  %15 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %14, i32 0, i32 0, !dbg !754
  store i32 28, i32* %15, align 4, !dbg !755
  %16 = load i32, i32* %4, align 4, !dbg !756
  %17 = icmp eq i32 %16, 0, !dbg !758
  br i1 %17, label %18, label %23, !dbg !759

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !760
  %20 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %19, i32 0, i32 2, !dbg !762
  store i16 1, i16* %20, align 2, !dbg !763
  %21 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !764
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 1, !dbg !765
  store i16 25, i16* %22, align 4, !dbg !766
  br label %38, !dbg !767

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !768
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 2, !dbg !770
  store i16 1025, i16* %25, align 2, !dbg !771
  %26 = load i32, i32* %4, align 4, !dbg !772
  %27 = icmp eq i32 %26, 2, !dbg !774
  br i1 %27, label %28, label %35, !dbg !775

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !776
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 2, !dbg !777
  %31 = load i16, i16* %30, align 2, !dbg !778
  %32 = zext i16 %31 to i32, !dbg !778
  %33 = or i32 %32, 256, !dbg !778
  %34 = trunc i32 %33 to i16, !dbg !778
  store i16 %34, i16* %30, align 2, !dbg !778
  br label %35, !dbg !779

; <label>:35:                                     ; preds = %28, %23
  %36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !780
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 1, !dbg !781
  store i16 24, i16* %37, align 4, !dbg !782
  br label %38

; <label>:38:                                     ; preds = %35, %18
  %39 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !783
  %40 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %39, i32 0, i32 1, !dbg !784
  store i16 8, i16* %40, align 2, !dbg !785
  %41 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !786
  %42 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %41, i32 0, i32 0, !dbg !787
  store i16 4, i16* %42, align 2, !dbg !788
  %43 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !789
  %44 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %43, i32 0, i32 3, !dbg !790
  %45 = load i8, i8* %44, align 8, !dbg !790
  %46 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !791
  %47 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %46, i32 0, i32 0, !dbg !792
  store i8 %45, i8* %47, align 4, !dbg !793
  %48 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !794
  %49 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %48, i32 0, i32 5, !dbg !796
  %50 = load i32, i32* %49, align 4, !dbg !796
  %51 = icmp ult i32 %50, 256, !dbg !797
  br i1 %51, label %52, label %59, !dbg !798

; <label>:52:                                     ; preds = %38
  %53 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !799
  %54 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %53, i32 0, i32 5, !dbg !800
  %55 = load i32, i32* %54, align 4, !dbg !800
  %56 = trunc i32 %55 to i8, !dbg !801
  %57 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !802
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 4, !dbg !803
  store i8 %56, i8* %58, align 4, !dbg !804
  br label %67, !dbg !805

; <label>:59:                                     ; preds = %38
  %60 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !806
  %61 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %60, i32 0, i32 4, !dbg !808
  store i8 0, i8* %61, align 4, !dbg !809
  %62 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !810
  %63 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !811
  %64 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %63, i32 0, i32 5, !dbg !812
  %65 = load i32, i32* %64, align 4, !dbg !812
  %66 = call i32 @addattr32(%struct.nlmsghdr* %62, i64 1052, i16 zeroext 15, i32 %65), !dbg !813
  br label %67

; <label>:67:                                     ; preds = %59, %52
  %68 = load i32, i32* %4, align 4, !dbg !814
  %69 = icmp eq i32 %68, 0, !dbg !816
  br i1 %69, label %70, label %85, !dbg !817

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !818
  %72 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %71, i32 0, i32 6, !dbg !820
  store i8 -1, i8* %72, align 2, !dbg !821
  %73 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !822
  %74 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %73, i32 0, i32 33, !dbg !824
  %75 = load i32, i32* %74, align 8, !dbg !824
  %76 = and i32 %75, 2, !dbg !825
  %77 = icmp ne i32 %76, 0, !dbg !825
  br i1 %77, label %78, label %84, !dbg !826

; <label>:78:                                     ; preds = %70
  %79 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !827
  %80 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %79, i32 0, i32 29, !dbg !828
  %81 = load i8, i8* %80, align 1, !dbg !828
  %82 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !829
  %83 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %82, i32 0, i32 7, !dbg !830
  store i8 %81, i8* %83, align 1, !dbg !831
  br label %84, !dbg !832

; <label>:84:                                     ; preds = %78, %70
  br label %93, !dbg !833

; <label>:85:                                     ; preds = %67
  %86 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !834
  %87 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %86, i32 0, i32 6, !dbg !836
  store i8 0, i8* %87, align 2, !dbg !837
  %88 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !838
  %89 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %88, i32 0, i32 29, !dbg !839
  %90 = load i8, i8* %89, align 1, !dbg !839
  %91 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !840
  %92 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %91, i32 0, i32 7, !dbg !841
  store i8 %90, i8* %92, align 1, !dbg !842
  br label %93

; <label>:93:                                     ; preds = %85, %84
  %94 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !843
  %95 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %94, i32 0, i32 33, !dbg !845
  %96 = load i32, i32* %95, align 8, !dbg !845
  %97 = and i32 %96, 4, !dbg !846
  %98 = icmp ne i32 %97, 0, !dbg !846
  br i1 %98, label %99, label %105, !dbg !847

; <label>:99:                                     ; preds = %93
  %100 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !848
  %101 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %100, i32 0, i32 6, !dbg !849
  %102 = load i8, i8* %101, align 8, !dbg !849
  %103 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !850
  %104 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %103, i32 0, i32 5, !dbg !851
  store i8 %102, i8* %104, align 1, !dbg !852
  br label %108, !dbg !853

; <label>:105:                                    ; preds = %93
  %106 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !854
  %107 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %106, i32 0, i32 5, !dbg !855
  store i8 112, i8* %107, align 1, !dbg !856
  br label %108

; <label>:108:                                    ; preds = %105, %99
  %109 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !857
  %110 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %109, i32 0, i32 33, !dbg !859
  %111 = load i32, i32* %110, align 8, !dbg !859
  %112 = and i32 %111, 8, !dbg !860
  %113 = icmp ne i32 %112, 0, !dbg !860
  br i1 %113, label %114, label %120, !dbg !861

; <label>:114:                                    ; preds = %108
  %115 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !862
  %116 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %115, i32 0, i32 7, !dbg !863
  %117 = load i8, i8* %116, align 1, !dbg !863
  %118 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !864
  %119 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %118, i32 0, i32 6, !dbg !865
  store i8 %117, i8* %119, align 2, !dbg !866
  br label %120, !dbg !867

; <label>:120:                                    ; preds = %114, %108
  %121 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !868
  %122 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %121, i32 0, i32 0, !dbg !870
  %123 = load %struct._ip_address*, %struct._ip_address** %122, align 8, !dbg !870
  %124 = icmp ne %struct._ip_address* %123, null, !dbg !868
  br i1 %124, label %125, label %139, !dbg !871

; <label>:125:                                    ; preds = %120
  %126 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !872
  %127 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %126, i32 0, i32 0, !dbg !874
  %128 = load %struct._ip_address*, %struct._ip_address** %127, align 8, !dbg !874
  %129 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %128, i32 0, i32 0, !dbg !875
  %130 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %129, i32 0, i32 1, !dbg !876
  %131 = load i8, i8* %130, align 1, !dbg !876
  %132 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !877
  %133 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %132, i32 0, i32 1, !dbg !878
  store i8 %131, i8* %133, align 1, !dbg !879
  %134 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !880
  %135 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !881
  %136 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %135, i32 0, i32 0, !dbg !882
  %137 = load %struct._ip_address*, %struct._ip_address** %136, align 8, !dbg !882
  %138 = call zeroext i16 @add_addr2req(%struct.nlmsghdr* %134, i64 1052, i16 zeroext 1, %struct._ip_address* %137), !dbg !883
  br label %139, !dbg !884

; <label>:139:                                    ; preds = %125, %120
  %140 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !885
  %141 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %140, i32 0, i32 1, !dbg !887
  %142 = load %struct._ip_address*, %struct._ip_address** %141, align 8, !dbg !887
  %143 = icmp ne %struct._ip_address* %142, null, !dbg !885
  br i1 %143, label %144, label %158, !dbg !888

; <label>:144:                                    ; preds = %139
  %145 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !889
  %146 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %145, i32 0, i32 1, !dbg !891
  %147 = load %struct._ip_address*, %struct._ip_address** %146, align 8, !dbg !891
  %148 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %147, i32 0, i32 0, !dbg !892
  %149 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %148, i32 0, i32 1, !dbg !893
  %150 = load i8, i8* %149, align 1, !dbg !893
  %151 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !894
  %152 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %151, i32 0, i32 2, !dbg !895
  store i8 %150, i8* %152, align 2, !dbg !896
  %153 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !897
  %154 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !898
  %155 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %154, i32 0, i32 1, !dbg !899
  %156 = load %struct._ip_address*, %struct._ip_address** %155, align 8, !dbg !899
  %157 = call zeroext i16 @add_addr2req(%struct.nlmsghdr* %153, i64 1052, i16 zeroext 2, %struct._ip_address* %156), !dbg !900
  br label %158, !dbg !901

; <label>:158:                                    ; preds = %144, %139
  %159 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !902
  %160 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %159, i32 0, i32 2, !dbg !904
  %161 = load %struct._ip_address*, %struct._ip_address** %160, align 8, !dbg !904
  %162 = icmp ne %struct._ip_address* %161, null, !dbg !902
  br i1 %162, label %163, label %169, !dbg !905

; <label>:163:                                    ; preds = %158
  %164 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !906
  %165 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !907
  %166 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %165, i32 0, i32 2, !dbg !908
  %167 = load %struct._ip_address*, %struct._ip_address** %166, align 8, !dbg !908
  %168 = call zeroext i16 @add_addr2req(%struct.nlmsghdr* %164, i64 1052, i16 zeroext 7, %struct._ip_address* %167), !dbg !909
  br label %169, !dbg !909

; <label>:169:                                    ; preds = %163, %158
  %170 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !910
  %171 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %170, i32 0, i32 9, !dbg !912
  %172 = load %struct._ip_address*, %struct._ip_address** %171, align 8, !dbg !912
  %173 = icmp ne %struct._ip_address* %172, null, !dbg !910
  br i1 %173, label %174, label %200, !dbg !913

; <label>:174:                                    ; preds = %169
  %175 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !914
  %176 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %175, i32 0, i32 9, !dbg !917
  %177 = load %struct._ip_address*, %struct._ip_address** %176, align 8, !dbg !917
  %178 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %177, i32 0, i32 0, !dbg !918
  %179 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %178, i32 0, i32 0, !dbg !919
  %180 = load i8, i8* %179, align 8, !dbg !919
  %181 = zext i8 %180 to i32, !dbg !914
  %182 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !920
  %183 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %182, i32 0, i32 3, !dbg !921
  %184 = load i8, i8* %183, align 8, !dbg !921
  %185 = zext i8 %184 to i32, !dbg !920
  %186 = icmp eq i32 %181, %185, !dbg !922
  br i1 %186, label %187, label %193, !dbg !923

; <label>:187:                                    ; preds = %174
  %188 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !924
  %189 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !925
  %190 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %189, i32 0, i32 9, !dbg !926
  %191 = load %struct._ip_address*, %struct._ip_address** %190, align 8, !dbg !926
  %192 = call zeroext i16 @add_addr2req(%struct.nlmsghdr* %188, i64 1052, i16 zeroext 5, %struct._ip_address* %191), !dbg !927
  br label %199, !dbg !927

; <label>:193:                                    ; preds = %174
  %194 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !928
  %195 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !929
  %196 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %195, i32 0, i32 9, !dbg !930
  %197 = load %struct._ip_address*, %struct._ip_address** %196, align 8, !dbg !930
  %198 = call zeroext i16 @add_addr_fam2req(%struct.nlmsghdr* %194, i64 1052, i16 zeroext 18, %struct._ip_address* %197), !dbg !931
  br label %199

; <label>:199:                                    ; preds = %193, %187
  br label %200, !dbg !932

; <label>:200:                                    ; preds = %199, %169
  %201 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !933
  %202 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %201, i32 0, i32 31, !dbg !935
  %203 = getelementptr inbounds %struct._encap, %struct._encap* %202, i32 0, i32 0, !dbg !936
  %204 = load i16, i16* %203, align 8, !dbg !936
  %205 = zext i16 %204 to i32, !dbg !933
  %206 = icmp ne i32 %205, 0, !dbg !937
  br i1 %206, label %207, label %236, !dbg !938

; <label>:207:                                    ; preds = %200
  call void @llvm.dbg.declare(metadata [128 x i8]* %9, metadata !939, metadata !581), !dbg !944
  call void @llvm.dbg.declare(metadata %struct.rtattr** %10, metadata !945, metadata !581), !dbg !946
  %208 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !947
  %209 = bitcast i8* %208 to %struct.rtattr*, !dbg !948
  store %struct.rtattr* %209, %struct.rtattr** %10, align 8, !dbg !946
  %210 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !949
  %211 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %210, i32 0, i32 1, !dbg !950
  store i16 22, i16* %211, align 2, !dbg !951
  %212 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !952
  %213 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %212, i32 0, i32 0, !dbg !953
  store i16 4, i16* %213, align 2, !dbg !954
  %214 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !955
  %215 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !956
  %216 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %215, i32 0, i32 31, !dbg !957
  %217 = call zeroext i1 @add_encap(%struct.rtattr* %214, i64 128, %struct._encap* %216), !dbg !958
  %218 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !959
  %219 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %218, i32 0, i32 0, !dbg !961
  %220 = load i16, i16* %219, align 2, !dbg !961
  %221 = zext i16 %220 to i64, !dbg !959
  %222 = icmp ugt i64 %221, 4, !dbg !962
  br i1 %222, label %223, label %235, !dbg !963

; <label>:223:                                    ; preds = %207
  %224 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !964
  %225 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !965
  %226 = bitcast %struct.rtattr* %225 to i8*, !dbg !966
  %227 = getelementptr inbounds i8, i8* %226, i64 4, !dbg !967
  %228 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !968
  %229 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %228, i32 0, i32 0, !dbg !969
  %230 = load i16, i16* %229, align 2, !dbg !969
  %231 = zext i16 %230 to i32, !dbg !970
  %232 = sext i32 %231 to i64, !dbg !970
  %233 = sub i64 %232, 4, !dbg !971
  %234 = call i32 @addraw_l(%struct.nlmsghdr* %224, i64 128, i8* %227, i64 %233), !dbg !972
  br label %235, !dbg !972

; <label>:235:                                    ; preds = %223, %207
  br label %236, !dbg !973

; <label>:236:                                    ; preds = %235, %200
  %237 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !974
  %238 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %237, i32 0, i32 33, !dbg !976
  %239 = load i32, i32* %238, align 8, !dbg !976
  %240 = and i32 %239, 1, !dbg !977
  %241 = icmp ne i32 %240, 0, !dbg !977
  br i1 %241, label %242, label %248, !dbg !978

; <label>:242:                                    ; preds = %236
  %243 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !979
  %244 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %243, i32 0, i32 4, !dbg !980
  %245 = load i8, i8* %244, align 1, !dbg !980
  %246 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !981
  %247 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %246, i32 0, i32 3, !dbg !982
  store i8 %245, i8* %247, align 1, !dbg !983
  br label %248, !dbg !984

; <label>:248:                                    ; preds = %242, %236
  %249 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !985
  %250 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %249, i32 0, i32 10, !dbg !987
  %251 = load %struct._interface*, %struct._interface** %250, align 8, !dbg !987
  %252 = icmp ne %struct._interface* %251, null, !dbg !985
  br i1 %252, label %253, label %261, !dbg !988

; <label>:253:                                    ; preds = %248
  %254 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !989
  %255 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !990
  %256 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %255, i32 0, i32 10, !dbg !991
  %257 = load %struct._interface*, %struct._interface** %256, align 8, !dbg !991
  %258 = getelementptr inbounds %struct._interface, %struct._interface* %257, i32 0, i32 1, !dbg !992
  %259 = load i32, i32* %258, align 8, !dbg !992
  %260 = call i32 @addattr32(%struct.nlmsghdr* %254, i64 1052, i16 zeroext 4, i32 %259), !dbg !993
  br label %261, !dbg !993

; <label>:261:                                    ; preds = %253, %248
  %262 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !994
  %263 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %262, i32 0, i32 33, !dbg !996
  %264 = load i32, i32* %263, align 8, !dbg !996
  %265 = and i32 %264, 16, !dbg !997
  %266 = icmp ne i32 %265, 0, !dbg !997
  br i1 %266, label %267, label %273, !dbg !998

; <label>:267:                                    ; preds = %261
  %268 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !999
  %269 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1000
  %270 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %269, i32 0, i32 8, !dbg !1001
  %271 = load i32, i32* %270, align 4, !dbg !1001
  %272 = call i32 @addattr32(%struct.nlmsghdr* %268, i64 1052, i16 zeroext 6, i32 %271), !dbg !1002
  br label %273, !dbg !1002

; <label>:273:                                    ; preds = %267, %261
  %274 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1003
  %275 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %274, i32 0, i32 11, !dbg !1004
  %276 = load i32, i32* %275, align 8, !dbg !1004
  %277 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !1005
  %278 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %277, i32 0, i32 8, !dbg !1006
  store i32 %276, i32* %278, align 4, !dbg !1007
  %279 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1008
  %280 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %279, i32 0, i32 30, !dbg !1010
  %281 = load i32, i32* %280, align 4, !dbg !1010
  %282 = icmp ne i32 %281, 0, !dbg !1008
  br i1 %282, label %283, label %289, !dbg !1011

; <label>:283:                                    ; preds = %273
  %284 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !1012
  %285 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1013
  %286 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %285, i32 0, i32 30, !dbg !1014
  %287 = load i32, i32* %286, align 4, !dbg !1014
  %288 = call i32 @addattr32(%struct.nlmsghdr* %284, i64 1052, i16 zeroext 11, i32 %287), !dbg !1015
  br label %289, !dbg !1015

; <label>:289:                                    ; preds = %283, %273
  %290 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1016
  %291 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %290, i32 0, i32 27, !dbg !1018
  %292 = load i8*, i8** %291, align 8, !dbg !1018
  %293 = icmp ne i8* %292, null, !dbg !1016
  br i1 %293, label %294, label %304, !dbg !1019

; <label>:294:                                    ; preds = %289
  %295 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1020
  %296 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1021
  %297 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %296, i32 0, i32 27, !dbg !1022
  %298 = load i8*, i8** %297, align 8, !dbg !1022
  %299 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1023
  %300 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %299, i32 0, i32 27, !dbg !1024
  %301 = load i8*, i8** %300, align 8, !dbg !1024
  %302 = call i64 @strlen(i8* %301) #8, !dbg !1025
  %303 = call i64 @rta_addattr_l(%struct.rtattr* %295, i64 1024, i16 zeroext 16, i8* %298, i64 %302), !dbg !1026
  br label %304, !dbg !1028

; <label>:304:                                    ; preds = %294, %289
  %305 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1029
  %306 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %305, i32 0, i32 33, !dbg !1031
  %307 = load i32, i32* %306, align 8, !dbg !1031
  %308 = and i32 %307, 1024, !dbg !1032
  %309 = icmp ne i32 %308, 0, !dbg !1032
  br i1 %309, label %310, label %316, !dbg !1033

; <label>:310:                                    ; preds = %304
  %311 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1034
  %312 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1035
  %313 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %312, i32 0, i32 18, !dbg !1036
  %314 = load i32, i32* %313, align 4, !dbg !1036
  %315 = call i64 @rta_addattr32(%struct.rtattr* %311, i64 1024, i16 zeroext 4, i32 %314), !dbg !1037
  br label %316, !dbg !1037

; <label>:316:                                    ; preds = %310, %304
  %317 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1038
  %318 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %317, i32 0, i32 33, !dbg !1040
  %319 = load i32, i32* %318, align 8, !dbg !1040
  %320 = and i32 %319, 2048, !dbg !1041
  %321 = icmp ne i32 %320, 0, !dbg !1041
  br i1 %321, label %322, label %328, !dbg !1042

; <label>:322:                                    ; preds = %316
  %323 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1043
  %324 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1044
  %325 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %324, i32 0, i32 19, !dbg !1045
  %326 = load i32, i32* %325, align 8, !dbg !1045
  %327 = call i64 @rta_addattr32(%struct.rtattr* %323, i64 1024, i16 zeroext 5, i32 %326), !dbg !1046
  br label %328, !dbg !1046

; <label>:328:                                    ; preds = %322, %316
  %329 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1047
  %330 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %329, i32 0, i32 33, !dbg !1049
  %331 = load i32, i32* %330, align 8, !dbg !1049
  %332 = and i32 %331, 65536, !dbg !1050
  %333 = icmp ne i32 %332, 0, !dbg !1050
  br i1 %333, label %334, label %340, !dbg !1051

; <label>:334:                                    ; preds = %328
  %335 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1052
  %336 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1053
  %337 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %336, i32 0, i32 24, !dbg !1054
  %338 = load i32, i32* %337, align 4, !dbg !1054
  %339 = call i64 @rta_addattr32(%struct.rtattr* %335, i64 1024, i16 zeroext 13, i32 %338), !dbg !1055
  br label %340, !dbg !1055

; <label>:340:                                    ; preds = %334, %328
  %341 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1056
  %342 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %341, i32 0, i32 12, !dbg !1058
  %343 = load i32, i32* %342, align 4, !dbg !1058
  %344 = icmp ne i32 %343, 0, !dbg !1056
  br i1 %344, label %345, label %351, !dbg !1059

; <label>:345:                                    ; preds = %340
  %346 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1060
  %347 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1061
  %348 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %347, i32 0, i32 12, !dbg !1062
  %349 = load i32, i32* %348, align 4, !dbg !1062
  %350 = call i64 @rta_addattr32(%struct.rtattr* %346, i64 1024, i16 zeroext 12, i32 %349), !dbg !1063
  br label %351, !dbg !1063

; <label>:351:                                    ; preds = %345, %340
  %352 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1064
  %353 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %352, i32 0, i32 33, !dbg !1066
  %354 = load i32, i32* %353, align 8, !dbg !1066
  %355 = and i32 %354, 128, !dbg !1067
  %356 = icmp ne i32 %355, 0, !dbg !1067
  br i1 %356, label %357, label %363, !dbg !1068

; <label>:357:                                    ; preds = %351
  %358 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1069
  %359 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1070
  %360 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %359, i32 0, i32 15, !dbg !1071
  %361 = load i32, i32* %360, align 8, !dbg !1071
  %362 = call i64 @rta_addattr32(%struct.rtattr* %358, i64 1024, i16 zeroext 2, i32 %361), !dbg !1072
  br label %363, !dbg !1072

; <label>:363:                                    ; preds = %357, %351
  %364 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1073
  %365 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %364, i32 0, i32 33, !dbg !1075
  %366 = load i32, i32* %365, align 8, !dbg !1075
  %367 = and i32 %366, 8192, !dbg !1076
  %368 = icmp ne i32 %367, 0, !dbg !1076
  br i1 %368, label %369, label %375, !dbg !1077

; <label>:369:                                    ; preds = %363
  %370 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1078
  %371 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1079
  %372 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %371, i32 0, i32 21, !dbg !1080
  %373 = load i32, i32* %372, align 8, !dbg !1080
  %374 = call i64 @rta_addattr32(%struct.rtattr* %370, i64 1024, i16 zeroext 3, i32 %373), !dbg !1081
  br label %375, !dbg !1081

; <label>:375:                                    ; preds = %369, %363
  %376 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1082
  %377 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %376, i32 0, i32 33, !dbg !1084
  %378 = load i32, i32* %377, align 8, !dbg !1084
  %379 = and i32 %378, 32768, !dbg !1085
  %380 = icmp ne i32 %379, 0, !dbg !1085
  br i1 %380, label %381, label %387, !dbg !1086

; <label>:381:                                    ; preds = %375
  %382 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1087
  %383 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1088
  %384 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %383, i32 0, i32 23, !dbg !1089
  %385 = load i32, i32* %384, align 8, !dbg !1089
  %386 = call i64 @rta_addattr32(%struct.rtattr* %382, i64 1024, i16 zeroext 6, i32 %385), !dbg !1090
  br label %387, !dbg !1090

; <label>:387:                                    ; preds = %381, %375
  %388 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1091
  %389 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %388, i32 0, i32 33, !dbg !1093
  %390 = load i32, i32* %389, align 8, !dbg !1093
  %391 = and i32 %390, 16384, !dbg !1094
  %392 = icmp ne i32 %391, 0, !dbg !1094
  br i1 %392, label %393, label %399, !dbg !1095

; <label>:393:                                    ; preds = %387
  %394 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1096
  %395 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1097
  %396 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %395, i32 0, i32 22, !dbg !1098
  %397 = load i32, i32* %396, align 4, !dbg !1098
  %398 = call i64 @rta_addattr32(%struct.rtattr* %394, i64 1024, i16 zeroext 7, i32 %397), !dbg !1099
  br label %399, !dbg !1099

; <label>:399:                                    ; preds = %393, %387
  %400 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1100
  %401 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %400, i32 0, i32 33, !dbg !1102
  %402 = load i32, i32* %401, align 8, !dbg !1102
  %403 = and i32 %402, 512, !dbg !1103
  %404 = icmp ne i32 %403, 0, !dbg !1103
  br i1 %404, label %405, label %411, !dbg !1104

; <label>:405:                                    ; preds = %399
  %406 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1105
  %407 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1106
  %408 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %407, i32 0, i32 17, !dbg !1107
  %409 = load i32, i32* %408, align 8, !dbg !1107
  %410 = call i64 @rta_addattr32(%struct.rtattr* %406, i64 1024, i16 zeroext 8, i32 %409), !dbg !1108
  br label %411, !dbg !1108

; <label>:411:                                    ; preds = %405, %399
  %412 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1109
  %413 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %412, i32 0, i32 33, !dbg !1111
  %414 = load i32, i32* %413, align 8, !dbg !1111
  %415 = and i32 %414, 4096, !dbg !1112
  %416 = icmp ne i32 %415, 0, !dbg !1112
  br i1 %416, label %417, label %423, !dbg !1113

; <label>:417:                                    ; preds = %411
  %418 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1114
  %419 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1115
  %420 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %419, i32 0, i32 20, !dbg !1116
  %421 = load i32, i32* %420, align 4, !dbg !1116
  %422 = call i64 @rta_addattr32(%struct.rtattr* %418, i64 1024, i16 zeroext 9, i32 %421), !dbg !1117
  br label %423, !dbg !1117

; <label>:423:                                    ; preds = %417, %411
  %424 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1118
  %425 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %424, i32 0, i32 33, !dbg !1120
  %426 = load i32, i32* %425, align 8, !dbg !1120
  %427 = and i32 %426, 256, !dbg !1121
  %428 = icmp ne i32 %427, 0, !dbg !1121
  br i1 %428, label %429, label %436, !dbg !1122

; <label>:429:                                    ; preds = %423
  %430 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1123
  %431 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1124
  %432 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %431, i32 0, i32 16, !dbg !1125
  %433 = load i8, i8* %432, align 4, !dbg !1125
  %434 = zext i8 %433 to i32, !dbg !1124
  %435 = call i64 @rta_addattr32(%struct.rtattr* %430, i64 1024, i16 zeroext 10, i32 %434), !dbg !1126
  br label %436, !dbg !1126

; <label>:436:                                    ; preds = %429, %423
  %437 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1127
  %438 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %437, i32 0, i32 33, !dbg !1129
  %439 = load i32, i32* %438, align 8, !dbg !1129
  %440 = and i32 %439, 131072, !dbg !1130
  %441 = icmp ne i32 %440, 0, !dbg !1130
  br i1 %441, label %442, label %448, !dbg !1131

; <label>:442:                                    ; preds = %436
  %443 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1132
  %444 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1133
  %445 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %444, i32 0, i32 25, !dbg !1134
  %446 = load i32, i32* %445, align 8, !dbg !1134
  %447 = call i64 @rta_addattr32(%struct.rtattr* %443, i64 1024, i16 zeroext 11, i32 %446), !dbg !1135
  br label %448, !dbg !1135

; <label>:448:                                    ; preds = %442, %436
  %449 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1136
  %450 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %449, i32 0, i32 33, !dbg !1138
  %451 = load i32, i32* %450, align 8, !dbg !1138
  %452 = and i32 %451, 262144, !dbg !1139
  %453 = icmp ne i32 %452, 0, !dbg !1139
  br i1 %453, label %454, label %460, !dbg !1140

; <label>:454:                                    ; preds = %448
  %455 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1141
  %456 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1142
  %457 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %456, i32 0, i32 26, !dbg !1143
  %458 = load i32, i32* %457, align 4, !dbg !1143
  %459 = call i64 @rta_addattr32(%struct.rtattr* %455, i64 1024, i16 zeroext 14, i32 %458), !dbg !1144
  br label %460, !dbg !1144

; <label>:460:                                    ; preds = %454, %448
  %461 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1145
  %462 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %461, i32 0, i32 33, !dbg !1147
  %463 = load i32, i32* %462, align 8, !dbg !1147
  %464 = and i32 %463, 524288, !dbg !1148
  %465 = icmp ne i32 %464, 0, !dbg !1148
  br i1 %465, label %466, label %474, !dbg !1149

; <label>:466:                                    ; preds = %460
  %467 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1150
  %468 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1151
  %469 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %468, i32 0, i32 13, !dbg !1152
  %470 = load i8, i8* %469, align 8, !dbg !1152
  %471 = trunc i8 %470 to i1, !dbg !1152
  %472 = zext i1 %471 to i32, !dbg !1151
  %473 = call i64 @rta_addattr32(%struct.rtattr* %467, i64 1024, i16 zeroext 15, i32 %472), !dbg !1153
  br label %474, !dbg !1153

; <label>:474:                                    ; preds = %466, %460
  %475 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1154
  %476 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %475, i32 0, i32 33, !dbg !1156
  %477 = load i32, i32* %476, align 8, !dbg !1156
  %478 = and i32 %477, 1048576, !dbg !1157
  %479 = icmp ne i32 %478, 0, !dbg !1157
  br i1 %479, label %480, label %486, !dbg !1158

; <label>:480:                                    ; preds = %474
  %481 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !1159
  %482 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1160
  %483 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %482, i32 0, i32 28, !dbg !1161
  %484 = load i8, i8* %483, align 8, !dbg !1161
  %485 = call i32 @addattr8(%struct.nlmsghdr* %481, i64 1052, i16 zeroext 20, i8 zeroext %484), !dbg !1162
  br label %486, !dbg !1162

; <label>:486:                                    ; preds = %480, %474
  %487 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1163
  %488 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %487, i32 0, i32 0, !dbg !1165
  %489 = load i16, i16* %488, align 2, !dbg !1165
  %490 = zext i16 %489 to i64, !dbg !1163
  %491 = icmp ugt i64 %490, 4, !dbg !1166
  br i1 %491, label %492, label %515, !dbg !1167

; <label>:492:                                    ; preds = %486
  %493 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1168
  %494 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %493, i32 0, i32 14, !dbg !1171
  %495 = load i32, i32* %494, align 4, !dbg !1171
  %496 = icmp ne i32 %495, 0, !dbg !1168
  br i1 %496, label %497, label %503, !dbg !1172

; <label>:497:                                    ; preds = %492
  %498 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1173
  %499 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1174
  %500 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %499, i32 0, i32 14, !dbg !1175
  %501 = load i32, i32* %500, align 4, !dbg !1175
  %502 = call i64 @rta_addattr32(%struct.rtattr* %498, i64 1024, i16 zeroext 1, i32 %501), !dbg !1176
  br label %503, !dbg !1176

; <label>:503:                                    ; preds = %497, %492
  %504 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !1177
  %505 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1178
  %506 = bitcast %struct.rtattr* %505 to i8*, !dbg !1179
  %507 = getelementptr inbounds i8, i8* %506, i64 4, !dbg !1180
  %508 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !1181
  %509 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %508, i32 0, i32 0, !dbg !1182
  %510 = load i16, i16* %509, align 2, !dbg !1182
  %511 = zext i16 %510 to i32, !dbg !1183
  %512 = sext i32 %511 to i64, !dbg !1183
  %513 = sub i64 %512, 4, !dbg !1184
  %514 = call i32 @addattr_l(%struct.nlmsghdr* %504, i64 1052, i16 zeroext 8, i8* %507, i64 %513), !dbg !1185
  br label %515, !dbg !1186

; <label>:515:                                    ; preds = %503, %486
  %516 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1187
  %517 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %516, i32 0, i32 32, !dbg !1189
  %518 = load %struct._list*, %struct._list** %517, align 8, !dbg !1189
  %519 = icmp eq %struct._list* %518, null, !dbg !1190
  br i1 %519, label %538, label %520, !dbg !1191

; <label>:520:                                    ; preds = %515
  %521 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1192
  %522 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %521, i32 0, i32 32, !dbg !1194
  %523 = load %struct._list*, %struct._list** %522, align 8, !dbg !1194
  %524 = getelementptr inbounds %struct._list, %struct._list* %523, i32 0, i32 0, !dbg !1195
  %525 = load %struct._element*, %struct._element** %524, align 8, !dbg !1195
  %526 = icmp eq %struct._element* %525, null, !dbg !1196
  br i1 %526, label %527, label %534, !dbg !1197

; <label>:527:                                    ; preds = %520
  %528 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1198
  %529 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %528, i32 0, i32 32, !dbg !1200
  %530 = load %struct._list*, %struct._list** %529, align 8, !dbg !1200
  %531 = getelementptr inbounds %struct._list, %struct._list* %530, i32 0, i32 1, !dbg !1201
  %532 = load %struct._element*, %struct._element** %531, align 8, !dbg !1201
  %533 = icmp eq %struct._element* %532, null, !dbg !1202
  br i1 %533, label %538, label %534, !dbg !1203

; <label>:534:                                    ; preds = %527, %520
  %535 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1204
  %536 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !1205
  %537 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1, !dbg !1206
  call void @add_nexthops(%struct._ip_route* %535, %struct.nlmsghdr* %536, %struct.rtmsg* %537), !dbg !1207
  br label %538, !dbg !1207

; <label>:538:                                    ; preds = %534, %527, %515
  %539 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !1208
  %540 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %539), !dbg !1210
  %541 = icmp slt i64 %540, 0, !dbg !1211
  br i1 %541, label %542, label %543, !dbg !1212

; <label>:542:                                    ; preds = %538
  store i32 -1, i32* %5, align 4, !dbg !1213
  br label %543, !dbg !1215

; <label>:543:                                    ; preds = %542, %538
  %544 = load i32, i32* %5, align 4, !dbg !1216
  ret i32 %544, !dbg !1217
}

; Function Attrs: nounwind uwtable
define void @free_encap(i8*) #0 !dbg !1218 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._encap*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1219, metadata !581), !dbg !1220
  call void @llvm.dbg.declare(metadata %struct._encap** %3, metadata !1221, metadata !581), !dbg !1223
  %4 = load i8*, i8** %2, align 8, !dbg !1224
  %5 = bitcast i8* %4 to %struct._encap*, !dbg !1224
  store %struct._encap* %5, %struct._encap** %3, align 8, !dbg !1223
  %6 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1225
  %7 = getelementptr inbounds %struct._encap, %struct._encap* %6, i32 0, i32 0, !dbg !1227
  %8 = load i16, i16* %7, align 8, !dbg !1227
  %9 = zext i16 %8 to i32, !dbg !1225
  %10 = icmp eq i32 %9, 2, !dbg !1228
  br i1 %10, label %11, label %48, !dbg !1229

; <label>:11:                                     ; preds = %1
  %12 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1230
  %13 = getelementptr inbounds %struct._encap, %struct._encap* %12, i32 0, i32 2, !dbg !1234
  %14 = bitcast %union.anon.2* %13 to %struct._encap_ip*, !dbg !1234
  %15 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %14, i32 0, i32 1, !dbg !1235
  %16 = load %struct._ip_address*, %struct._ip_address** %15, align 8, !dbg !1235
  %17 = icmp ne %struct._ip_address* %16, null, !dbg !1230
  br i1 %17, label %18, label %29, !dbg !1236

; <label>:18:                                     ; preds = %11
  %19 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1237
  %20 = getelementptr inbounds %struct._encap, %struct._encap* %19, i32 0, i32 2, !dbg !1240
  %21 = bitcast %union.anon.2* %20 to %struct._encap_ip*, !dbg !1240
  %22 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %21, i32 0, i32 1, !dbg !1241
  %23 = load %struct._ip_address*, %struct._ip_address** %22, align 8, !dbg !1241
  %24 = bitcast %struct._ip_address* %23 to i8*, !dbg !1237
  call void @free(i8* %24) #9, !dbg !1242
  %25 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1243
  %26 = getelementptr inbounds %struct._encap, %struct._encap* %25, i32 0, i32 2, !dbg !1244
  %27 = bitcast %union.anon.2* %26 to %struct._encap_ip*, !dbg !1244
  %28 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %27, i32 0, i32 1, !dbg !1245
  store %struct._ip_address* null, %struct._ip_address** %28, align 8, !dbg !1246
  br label %29, !dbg !1247

; <label>:29:                                     ; preds = %18, %11
  %30 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1248
  %31 = getelementptr inbounds %struct._encap, %struct._encap* %30, i32 0, i32 2, !dbg !1251
  %32 = bitcast %union.anon.2* %31 to %struct._encap_ip*, !dbg !1251
  %33 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %32, i32 0, i32 2, !dbg !1252
  %34 = load %struct._ip_address*, %struct._ip_address** %33, align 8, !dbg !1252
  %35 = icmp ne %struct._ip_address* %34, null, !dbg !1248
  br i1 %35, label %36, label %47, !dbg !1253

; <label>:36:                                     ; preds = %29
  %37 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1254
  %38 = getelementptr inbounds %struct._encap, %struct._encap* %37, i32 0, i32 2, !dbg !1257
  %39 = bitcast %union.anon.2* %38 to %struct._encap_ip*, !dbg !1257
  %40 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %39, i32 0, i32 2, !dbg !1258
  %41 = load %struct._ip_address*, %struct._ip_address** %40, align 8, !dbg !1258
  %42 = bitcast %struct._ip_address* %41 to i8*, !dbg !1254
  call void @free(i8* %42) #9, !dbg !1259
  %43 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1260
  %44 = getelementptr inbounds %struct._encap, %struct._encap* %43, i32 0, i32 2, !dbg !1261
  %45 = bitcast %union.anon.2* %44 to %struct._encap_ip*, !dbg !1261
  %46 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %45, i32 0, i32 2, !dbg !1262
  store %struct._ip_address* null, %struct._ip_address** %46, align 8, !dbg !1263
  br label %47, !dbg !1264

; <label>:47:                                     ; preds = %36, %29
  br label %92, !dbg !1265

; <label>:48:                                     ; preds = %1
  %49 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1266
  %50 = getelementptr inbounds %struct._encap, %struct._encap* %49, i32 0, i32 0, !dbg !1268
  %51 = load i16, i16* %50, align 8, !dbg !1268
  %52 = zext i16 %51 to i32, !dbg !1266
  %53 = icmp eq i32 %52, 4, !dbg !1269
  br i1 %53, label %54, label %91, !dbg !1270

; <label>:54:                                     ; preds = %48
  %55 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1271
  %56 = getelementptr inbounds %struct._encap, %struct._encap* %55, i32 0, i32 2, !dbg !1275
  %57 = bitcast %union.anon.2* %56 to %struct._encap_ip6*, !dbg !1275
  %58 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %57, i32 0, i32 1, !dbg !1276
  %59 = load %struct._ip_address*, %struct._ip_address** %58, align 8, !dbg !1276
  %60 = icmp ne %struct._ip_address* %59, null, !dbg !1271
  br i1 %60, label %61, label %72, !dbg !1277

; <label>:61:                                     ; preds = %54
  %62 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1278
  %63 = getelementptr inbounds %struct._encap, %struct._encap* %62, i32 0, i32 2, !dbg !1281
  %64 = bitcast %union.anon.2* %63 to %struct._encap_ip6*, !dbg !1281
  %65 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %64, i32 0, i32 1, !dbg !1282
  %66 = load %struct._ip_address*, %struct._ip_address** %65, align 8, !dbg !1282
  %67 = bitcast %struct._ip_address* %66 to i8*, !dbg !1278
  call void @free(i8* %67) #9, !dbg !1283
  %68 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1284
  %69 = getelementptr inbounds %struct._encap, %struct._encap* %68, i32 0, i32 2, !dbg !1285
  %70 = bitcast %union.anon.2* %69 to %struct._encap_ip6*, !dbg !1285
  %71 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %70, i32 0, i32 1, !dbg !1286
  store %struct._ip_address* null, %struct._ip_address** %71, align 8, !dbg !1287
  br label %72, !dbg !1288

; <label>:72:                                     ; preds = %61, %54
  %73 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1289
  %74 = getelementptr inbounds %struct._encap, %struct._encap* %73, i32 0, i32 2, !dbg !1292
  %75 = bitcast %union.anon.2* %74 to %struct._encap_ip6*, !dbg !1292
  %76 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %75, i32 0, i32 2, !dbg !1293
  %77 = load %struct._ip_address*, %struct._ip_address** %76, align 8, !dbg !1293
  %78 = icmp ne %struct._ip_address* %77, null, !dbg !1289
  br i1 %78, label %79, label %90, !dbg !1294

; <label>:79:                                     ; preds = %72
  %80 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1295
  %81 = getelementptr inbounds %struct._encap, %struct._encap* %80, i32 0, i32 2, !dbg !1298
  %82 = bitcast %union.anon.2* %81 to %struct._encap_ip6*, !dbg !1298
  %83 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %82, i32 0, i32 2, !dbg !1299
  %84 = load %struct._ip_address*, %struct._ip_address** %83, align 8, !dbg !1299
  %85 = bitcast %struct._ip_address* %84 to i8*, !dbg !1295
  call void @free(i8* %85) #9, !dbg !1300
  %86 = load %struct._encap*, %struct._encap** %3, align 8, !dbg !1301
  %87 = getelementptr inbounds %struct._encap, %struct._encap* %86, i32 0, i32 2, !dbg !1302
  %88 = bitcast %union.anon.2* %87 to %struct._encap_ip6*, !dbg !1302
  %89 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %88, i32 0, i32 2, !dbg !1303
  store %struct._ip_address* null, %struct._ip_address** %89, align 8, !dbg !1304
  br label %90, !dbg !1305

; <label>:90:                                     ; preds = %79, %72
  br label %91, !dbg !1306

; <label>:91:                                     ; preds = %90, %48
  br label %92

; <label>:92:                                     ; preds = %91, %47
  %93 = load i8*, i8** %2, align 8, !dbg !1307
  call void @free(i8* %93) #9, !dbg !1308
  store i8* null, i8** %2, align 8, !dbg !1309
  ret void, !dbg !1310
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @free_nh(i8*) #0 !dbg !1311 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._nexthop*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1312, metadata !581), !dbg !1313
  call void @llvm.dbg.declare(metadata %struct._nexthop** %3, metadata !1314, metadata !581), !dbg !1326
  %4 = load i8*, i8** %2, align 8, !dbg !1327
  %5 = bitcast i8* %4 to %struct._nexthop*, !dbg !1327
  store %struct._nexthop* %5, %struct._nexthop** %3, align 8, !dbg !1326
  %6 = load %struct._nexthop*, %struct._nexthop** %3, align 8, !dbg !1328
  %7 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %6, i32 0, i32 1, !dbg !1331
  %8 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !1331
  %9 = icmp ne %struct._ip_address* %8, null, !dbg !1328
  br i1 %9, label %10, label %17, !dbg !1332

; <label>:10:                                     ; preds = %1
  %11 = load %struct._nexthop*, %struct._nexthop** %3, align 8, !dbg !1333
  %12 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %11, i32 0, i32 1, !dbg !1336
  %13 = load %struct._ip_address*, %struct._ip_address** %12, align 8, !dbg !1336
  %14 = bitcast %struct._ip_address* %13 to i8*, !dbg !1333
  call void @free(i8* %14) #9, !dbg !1337
  %15 = load %struct._nexthop*, %struct._nexthop** %3, align 8, !dbg !1338
  %16 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %15, i32 0, i32 1, !dbg !1339
  store %struct._ip_address* null, %struct._ip_address** %16, align 8, !dbg !1340
  br label %17, !dbg !1341

; <label>:17:                                     ; preds = %10, %1
  %18 = load i8*, i8** %2, align 8, !dbg !1342
  call void @free(i8* %18) #9, !dbg !1343
  store i8* null, i8** %2, align 8, !dbg !1344
  ret void, !dbg !1345
}

; Function Attrs: nounwind uwtable
define void @free_iproute(i8*) #0 !dbg !1346 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._ip_route*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1347, metadata !581), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct._ip_route** %3, metadata !1349, metadata !581), !dbg !1350
  %4 = load i8*, i8** %2, align 8, !dbg !1351
  %5 = bitcast i8* %4 to %struct._ip_route*, !dbg !1351
  store %struct._ip_route* %5, %struct._ip_route** %3, align 8, !dbg !1350
  %6 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1352
  %7 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %6, i32 0, i32 0, !dbg !1355
  %8 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !1355
  %9 = icmp ne %struct._ip_address* %8, null, !dbg !1352
  br i1 %9, label %10, label %17, !dbg !1356

; <label>:10:                                     ; preds = %1
  %11 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1357
  %12 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %11, i32 0, i32 0, !dbg !1360
  %13 = load %struct._ip_address*, %struct._ip_address** %12, align 8, !dbg !1360
  %14 = bitcast %struct._ip_address* %13 to i8*, !dbg !1357
  call void @free(i8* %14) #9, !dbg !1361
  %15 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1362
  %16 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %15, i32 0, i32 0, !dbg !1363
  store %struct._ip_address* null, %struct._ip_address** %16, align 8, !dbg !1364
  br label %17, !dbg !1365

; <label>:17:                                     ; preds = %10, %1
  %18 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1366
  %19 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %18, i32 0, i32 1, !dbg !1369
  %20 = load %struct._ip_address*, %struct._ip_address** %19, align 8, !dbg !1369
  %21 = icmp ne %struct._ip_address* %20, null, !dbg !1366
  br i1 %21, label %22, label %29, !dbg !1370

; <label>:22:                                     ; preds = %17
  %23 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1371
  %24 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %23, i32 0, i32 1, !dbg !1374
  %25 = load %struct._ip_address*, %struct._ip_address** %24, align 8, !dbg !1374
  %26 = bitcast %struct._ip_address* %25 to i8*, !dbg !1371
  call void @free(i8* %26) #9, !dbg !1375
  %27 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1376
  %28 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %27, i32 0, i32 1, !dbg !1377
  store %struct._ip_address* null, %struct._ip_address** %28, align 8, !dbg !1378
  br label %29, !dbg !1379

; <label>:29:                                     ; preds = %22, %17
  %30 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1380
  %31 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %30, i32 0, i32 2, !dbg !1383
  %32 = load %struct._ip_address*, %struct._ip_address** %31, align 8, !dbg !1383
  %33 = icmp ne %struct._ip_address* %32, null, !dbg !1380
  br i1 %33, label %34, label %41, !dbg !1384

; <label>:34:                                     ; preds = %29
  %35 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1385
  %36 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %35, i32 0, i32 2, !dbg !1388
  %37 = load %struct._ip_address*, %struct._ip_address** %36, align 8, !dbg !1388
  %38 = bitcast %struct._ip_address* %37 to i8*, !dbg !1385
  call void @free(i8* %38) #9, !dbg !1389
  %39 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1390
  %40 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %39, i32 0, i32 2, !dbg !1391
  store %struct._ip_address* null, %struct._ip_address** %40, align 8, !dbg !1392
  br label %41, !dbg !1393

; <label>:41:                                     ; preds = %34, %29
  %42 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1394
  %43 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %42, i32 0, i32 9, !dbg !1397
  %44 = load %struct._ip_address*, %struct._ip_address** %43, align 8, !dbg !1397
  %45 = icmp ne %struct._ip_address* %44, null, !dbg !1394
  br i1 %45, label %46, label %53, !dbg !1398

; <label>:46:                                     ; preds = %41
  %47 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1399
  %48 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %47, i32 0, i32 9, !dbg !1402
  %49 = load %struct._ip_address*, %struct._ip_address** %48, align 8, !dbg !1402
  %50 = bitcast %struct._ip_address* %49 to i8*, !dbg !1399
  call void @free(i8* %50) #9, !dbg !1403
  %51 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1404
  %52 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %51, i32 0, i32 9, !dbg !1405
  store %struct._ip_address* null, %struct._ip_address** %52, align 8, !dbg !1406
  br label %53, !dbg !1407

; <label>:53:                                     ; preds = %46, %41
  %54 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1408
  %55 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %54, i32 0, i32 32, !dbg !1409
  call void @free_list(%struct._list** %55), !dbg !1410
  %56 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1411
  %57 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %56, i32 0, i32 27, !dbg !1414
  %58 = load i8*, i8** %57, align 8, !dbg !1414
  %59 = icmp ne i8* %58, null, !dbg !1411
  br i1 %59, label %60, label %66, !dbg !1415

; <label>:60:                                     ; preds = %53
  %61 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1416
  %62 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %61, i32 0, i32 27, !dbg !1419
  %63 = load i8*, i8** %62, align 8, !dbg !1419
  call void @free(i8* %63) #9, !dbg !1420
  %64 = load %struct._ip_route*, %struct._ip_route** %3, align 8, !dbg !1421
  %65 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %64, i32 0, i32 27, !dbg !1422
  store i8* null, i8** %65, align 8, !dbg !1423
  br label %66, !dbg !1424

; <label>:66:                                     ; preds = %60, %53
  %67 = load i8*, i8** %2, align 8, !dbg !1425
  call void @free(i8* %67) #9, !dbg !1426
  store i8* null, i8** %2, align 8, !dbg !1427
  ret void, !dbg !1428
}

declare void @free_list(%struct._list**) #2

; Function Attrs: nounwind uwtable
define void @format_iproute(%struct._ip_route*, i8*, i64) #0 !dbg !1429 {
  %4 = alloca %struct._ip_route*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._nexthop*, align 8
  %10 = alloca %struct._interface*, align 8
  %11 = alloca %struct._element*, align 8
  store %struct._ip_route* %0, %struct._ip_route** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_route** %4, metadata !1432, metadata !581), !dbg !1433
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1434, metadata !581), !dbg !1435
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1436, metadata !581), !dbg !1437
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1438, metadata !581), !dbg !1439
  %12 = load i8*, i8** %5, align 8, !dbg !1440
  store i8* %12, i8** %7, align 8, !dbg !1439
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1441, metadata !581), !dbg !1444
  %13 = load i8*, i8** %5, align 8, !dbg !1445
  %14 = load i64, i64* %6, align 8, !dbg !1446
  %15 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !1447
  store i8* %15, i8** %8, align 8, !dbg !1444
  call void @llvm.dbg.declare(metadata %struct._nexthop** %9, metadata !1448, metadata !581), !dbg !1449
  call void @llvm.dbg.declare(metadata %struct._interface** %10, metadata !1450, metadata !581), !dbg !1451
  call void @llvm.dbg.declare(metadata %struct._element** %11, metadata !1452, metadata !581), !dbg !1453
  %16 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1454
  %17 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %16, i32 0, i32 29, !dbg !1456
  %18 = load i8, i8* %17, align 1, !dbg !1456
  %19 = zext i8 %18 to i32, !dbg !1454
  %20 = icmp ne i32 %19, 1, !dbg !1457
  br i1 %20, label %21, label %36, !dbg !1458

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %7, align 8, !dbg !1459
  %23 = load i8*, i8** %8, align 8, !dbg !1460
  %24 = load i8*, i8** %7, align 8, !dbg !1461
  %25 = ptrtoint i8* %23 to i64, !dbg !1462
  %26 = ptrtoint i8* %24 to i64, !dbg !1462
  %27 = sub i64 %25, %26, !dbg !1462
  %28 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1463
  %29 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %28, i32 0, i32 29, !dbg !1464
  %30 = load i8, i8* %29, align 1, !dbg !1464
  %31 = call i8* @get_rttables_rtntype(i8 zeroext %30), !dbg !1465
  %32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %22, i64 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %31) #9, !dbg !1466
  %33 = sext i32 %32 to i64, !dbg !1468
  %34 = load i8*, i8** %7, align 8, !dbg !1469
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !1469
  store i8* %35, i8** %7, align 8, !dbg !1469
  br label %36, !dbg !1470

; <label>:36:                                     ; preds = %21, %3
  %37 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1471
  %38 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %37, i32 0, i32 0, !dbg !1473
  %39 = load %struct._ip_address*, %struct._ip_address** %38, align 8, !dbg !1473
  %40 = icmp ne %struct._ip_address* %39, null, !dbg !1471
  br i1 %40, label %41, label %110, !dbg !1474

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %7, align 8, !dbg !1475
  %43 = load i8*, i8** %8, align 8, !dbg !1477
  %44 = load i8*, i8** %7, align 8, !dbg !1478
  %45 = ptrtoint i8* %43 to i64, !dbg !1479
  %46 = ptrtoint i8* %44 to i64, !dbg !1479
  %47 = sub i64 %45, %46, !dbg !1479
  %48 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1480
  %49 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %48, i32 0, i32 0, !dbg !1481
  %50 = load %struct._ip_address*, %struct._ip_address** %49, align 8, !dbg !1481
  %51 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %50), !dbg !1482
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %42, i64 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %51) #9, !dbg !1483
  %53 = sext i32 %52 to i64, !dbg !1485
  %54 = load i8*, i8** %7, align 8, !dbg !1486
  %55 = getelementptr inbounds i8, i8* %54, i64 %53, !dbg !1486
  store i8* %55, i8** %7, align 8, !dbg !1486
  %56 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1487
  %57 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %56, i32 0, i32 0, !dbg !1489
  %58 = load %struct._ip_address*, %struct._ip_address** %57, align 8, !dbg !1489
  %59 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %58, i32 0, i32 0, !dbg !1490
  %60 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %59, i32 0, i32 0, !dbg !1491
  %61 = load i8, i8* %60, align 8, !dbg !1491
  %62 = zext i8 %61 to i32, !dbg !1487
  %63 = icmp eq i32 %62, 2, !dbg !1492
  br i1 %63, label %64, label %73, !dbg !1493

; <label>:64:                                     ; preds = %41
  %65 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1494
  %66 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %65, i32 0, i32 0, !dbg !1496
  %67 = load %struct._ip_address*, %struct._ip_address** %66, align 8, !dbg !1496
  %68 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %67, i32 0, i32 0, !dbg !1497
  %69 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %68, i32 0, i32 1, !dbg !1498
  %70 = load i8, i8* %69, align 1, !dbg !1498
  %71 = zext i8 %70 to i32, !dbg !1494
  %72 = icmp ne i32 %71, 32, !dbg !1499
  br i1 %72, label %91, label %73, !dbg !1500

; <label>:73:                                     ; preds = %64, %41
  %74 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1501
  %75 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %74, i32 0, i32 0, !dbg !1502
  %76 = load %struct._ip_address*, %struct._ip_address** %75, align 8, !dbg !1502
  %77 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %76, i32 0, i32 0, !dbg !1503
  %78 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %77, i32 0, i32 0, !dbg !1504
  %79 = load i8, i8* %78, align 8, !dbg !1504
  %80 = zext i8 %79 to i32, !dbg !1501
  %81 = icmp eq i32 %80, 10, !dbg !1505
  br i1 %81, label %82, label %109, !dbg !1506

; <label>:82:                                     ; preds = %73
  %83 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1507
  %84 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %83, i32 0, i32 0, !dbg !1508
  %85 = load %struct._ip_address*, %struct._ip_address** %84, align 8, !dbg !1508
  %86 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %85, i32 0, i32 0, !dbg !1509
  %87 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %86, i32 0, i32 1, !dbg !1510
  %88 = load i8, i8* %87, align 1, !dbg !1510
  %89 = zext i8 %88 to i32, !dbg !1507
  %90 = icmp ne i32 %89, 128, !dbg !1511
  br i1 %90, label %91, label %109, !dbg !1512

; <label>:91:                                     ; preds = %82, %64
  %92 = load i8*, i8** %7, align 8, !dbg !1514
  %93 = load i8*, i8** %8, align 8, !dbg !1515
  %94 = load i8*, i8** %7, align 8, !dbg !1516
  %95 = ptrtoint i8* %93 to i64, !dbg !1517
  %96 = ptrtoint i8* %94 to i64, !dbg !1517
  %97 = sub i64 %95, %96, !dbg !1517
  %98 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1518
  %99 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %98, i32 0, i32 0, !dbg !1519
  %100 = load %struct._ip_address*, %struct._ip_address** %99, align 8, !dbg !1519
  %101 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %100, i32 0, i32 0, !dbg !1520
  %102 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %101, i32 0, i32 1, !dbg !1521
  %103 = load i8, i8* %102, align 1, !dbg !1521
  %104 = zext i8 %103 to i32, !dbg !1518
  %105 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %92, i64 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %104) #9, !dbg !1522
  %106 = sext i32 %105 to i64, !dbg !1523
  %107 = load i8*, i8** %7, align 8, !dbg !1524
  %108 = getelementptr inbounds i8, i8* %107, i64 %106, !dbg !1524
  store i8* %108, i8** %7, align 8, !dbg !1524
  br label %109, !dbg !1525

; <label>:109:                                    ; preds = %91, %82, %73
  br label %121, !dbg !1526

; <label>:110:                                    ; preds = %36
  %111 = load i8*, i8** %7, align 8, !dbg !1527
  %112 = load i8*, i8** %8, align 8, !dbg !1528
  %113 = load i8*, i8** %7, align 8, !dbg !1529
  %114 = ptrtoint i8* %112 to i64, !dbg !1530
  %115 = ptrtoint i8* %113 to i64, !dbg !1530
  %116 = sub i64 %114, %115, !dbg !1530
  %117 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %111, i64 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1531
  %118 = sext i32 %117 to i64, !dbg !1532
  %119 = load i8*, i8** %7, align 8, !dbg !1533
  %120 = getelementptr inbounds i8, i8* %119, i64 %118, !dbg !1533
  store i8* %120, i8** %7, align 8, !dbg !1533
  br label %121

; <label>:121:                                    ; preds = %110, %109
  %122 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1534
  %123 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %122, i32 0, i32 1, !dbg !1536
  %124 = load %struct._ip_address*, %struct._ip_address** %123, align 8, !dbg !1536
  %125 = icmp ne %struct._ip_address* %124, null, !dbg !1534
  br i1 %125, label %126, label %195, !dbg !1537

; <label>:126:                                    ; preds = %121
  %127 = load i8*, i8** %7, align 8, !dbg !1538
  %128 = load i8*, i8** %8, align 8, !dbg !1540
  %129 = load i8*, i8** %7, align 8, !dbg !1541
  %130 = ptrtoint i8* %128 to i64, !dbg !1542
  %131 = ptrtoint i8* %129 to i64, !dbg !1542
  %132 = sub i64 %130, %131, !dbg !1542
  %133 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1543
  %134 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %133, i32 0, i32 1, !dbg !1544
  %135 = load %struct._ip_address*, %struct._ip_address** %134, align 8, !dbg !1544
  %136 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %135), !dbg !1545
  %137 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %127, i64 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %136) #9, !dbg !1546
  %138 = sext i32 %137 to i64, !dbg !1548
  %139 = load i8*, i8** %7, align 8, !dbg !1549
  %140 = getelementptr inbounds i8, i8* %139, i64 %138, !dbg !1549
  store i8* %140, i8** %7, align 8, !dbg !1549
  %141 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1550
  %142 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %141, i32 0, i32 1, !dbg !1552
  %143 = load %struct._ip_address*, %struct._ip_address** %142, align 8, !dbg !1552
  %144 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %143, i32 0, i32 0, !dbg !1553
  %145 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %144, i32 0, i32 0, !dbg !1554
  %146 = load i8, i8* %145, align 8, !dbg !1554
  %147 = zext i8 %146 to i32, !dbg !1550
  %148 = icmp eq i32 %147, 2, !dbg !1555
  br i1 %148, label %149, label %158, !dbg !1556

; <label>:149:                                    ; preds = %126
  %150 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1557
  %151 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %150, i32 0, i32 1, !dbg !1559
  %152 = load %struct._ip_address*, %struct._ip_address** %151, align 8, !dbg !1559
  %153 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %152, i32 0, i32 0, !dbg !1560
  %154 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %153, i32 0, i32 1, !dbg !1561
  %155 = load i8, i8* %154, align 1, !dbg !1561
  %156 = zext i8 %155 to i32, !dbg !1557
  %157 = icmp ne i32 %156, 32, !dbg !1562
  br i1 %157, label %176, label %158, !dbg !1563

; <label>:158:                                    ; preds = %149, %126
  %159 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1564
  %160 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %159, i32 0, i32 1, !dbg !1565
  %161 = load %struct._ip_address*, %struct._ip_address** %160, align 8, !dbg !1565
  %162 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %161, i32 0, i32 0, !dbg !1566
  %163 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %162, i32 0, i32 0, !dbg !1567
  %164 = load i8, i8* %163, align 8, !dbg !1567
  %165 = zext i8 %164 to i32, !dbg !1564
  %166 = icmp eq i32 %165, 10, !dbg !1568
  br i1 %166, label %167, label %194, !dbg !1569

; <label>:167:                                    ; preds = %158
  %168 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1570
  %169 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %168, i32 0, i32 1, !dbg !1571
  %170 = load %struct._ip_address*, %struct._ip_address** %169, align 8, !dbg !1571
  %171 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %170, i32 0, i32 0, !dbg !1572
  %172 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %171, i32 0, i32 1, !dbg !1573
  %173 = load i8, i8* %172, align 1, !dbg !1573
  %174 = zext i8 %173 to i32, !dbg !1570
  %175 = icmp ne i32 %174, 128, !dbg !1574
  br i1 %175, label %176, label %194, !dbg !1575

; <label>:176:                                    ; preds = %167, %149
  %177 = load i8*, i8** %7, align 8, !dbg !1577
  %178 = load i8*, i8** %8, align 8, !dbg !1578
  %179 = load i8*, i8** %7, align 8, !dbg !1579
  %180 = ptrtoint i8* %178 to i64, !dbg !1580
  %181 = ptrtoint i8* %179 to i64, !dbg !1580
  %182 = sub i64 %180, %181, !dbg !1580
  %183 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1581
  %184 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %183, i32 0, i32 1, !dbg !1582
  %185 = load %struct._ip_address*, %struct._ip_address** %184, align 8, !dbg !1582
  %186 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %185, i32 0, i32 0, !dbg !1583
  %187 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %186, i32 0, i32 1, !dbg !1584
  %188 = load i8, i8* %187, align 1, !dbg !1584
  %189 = zext i8 %188 to i32, !dbg !1581
  %190 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %177, i64 %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %189) #9, !dbg !1585
  %191 = sext i32 %190 to i64, !dbg !1586
  %192 = load i8*, i8** %7, align 8, !dbg !1587
  %193 = getelementptr inbounds i8, i8* %192, i64 %191, !dbg !1587
  store i8* %193, i8** %7, align 8, !dbg !1587
  br label %194, !dbg !1588

; <label>:194:                                    ; preds = %176, %167, %158
  br label %195, !dbg !1589

; <label>:195:                                    ; preds = %194, %121
  %196 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1590
  %197 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %196, i32 0, i32 2, !dbg !1592
  %198 = load %struct._ip_address*, %struct._ip_address** %197, align 8, !dbg !1592
  %199 = icmp ne %struct._ip_address* %198, null, !dbg !1590
  br i1 %199, label %200, label %215, !dbg !1593

; <label>:200:                                    ; preds = %195
  %201 = load i8*, i8** %7, align 8, !dbg !1594
  %202 = load i8*, i8** %8, align 8, !dbg !1595
  %203 = load i8*, i8** %7, align 8, !dbg !1596
  %204 = ptrtoint i8* %202 to i64, !dbg !1597
  %205 = ptrtoint i8* %203 to i64, !dbg !1597
  %206 = sub i64 %204, %205, !dbg !1597
  %207 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1598
  %208 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %207, i32 0, i32 2, !dbg !1599
  %209 = load %struct._ip_address*, %struct._ip_address** %208, align 8, !dbg !1599
  %210 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %209), !dbg !1600
  %211 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %201, i64 %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %210) #9, !dbg !1601
  %212 = sext i32 %211 to i64, !dbg !1603
  %213 = load i8*, i8** %7, align 8, !dbg !1604
  %214 = getelementptr inbounds i8, i8* %213, i64 %212, !dbg !1604
  store i8* %214, i8** %7, align 8, !dbg !1604
  br label %215, !dbg !1605

; <label>:215:                                    ; preds = %200, %195
  %216 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1606
  %217 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %216, i32 0, i32 33, !dbg !1608
  %218 = load i32, i32* %217, align 8, !dbg !1608
  %219 = and i32 %218, 1, !dbg !1609
  %220 = icmp ne i32 %219, 0, !dbg !1609
  br i1 %220, label %221, label %236, !dbg !1610

; <label>:221:                                    ; preds = %215
  %222 = load i8*, i8** %7, align 8, !dbg !1611
  %223 = load i8*, i8** %8, align 8, !dbg !1612
  %224 = load i8*, i8** %7, align 8, !dbg !1613
  %225 = ptrtoint i8* %223 to i64, !dbg !1614
  %226 = ptrtoint i8* %224 to i64, !dbg !1614
  %227 = sub i64 %225, %226, !dbg !1614
  %228 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1615
  %229 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %228, i32 0, i32 4, !dbg !1616
  %230 = load i8, i8* %229, align 1, !dbg !1616
  %231 = zext i8 %230 to i32, !dbg !1615
  %232 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %222, i64 %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %231) #9, !dbg !1617
  %233 = sext i32 %232 to i64, !dbg !1618
  %234 = load i8*, i8** %7, align 8, !dbg !1619
  %235 = getelementptr inbounds i8, i8* %234, i64 %233, !dbg !1619
  store i8* %235, i8** %7, align 8, !dbg !1619
  br label %236, !dbg !1620

; <label>:236:                                    ; preds = %221, %215
  %237 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1621
  %238 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %237, i32 0, i32 31, !dbg !1623
  %239 = getelementptr inbounds %struct._encap, %struct._encap* %238, i32 0, i32 0, !dbg !1624
  %240 = load i16, i16* %239, align 8, !dbg !1624
  %241 = zext i16 %240 to i32, !dbg !1621
  %242 = icmp ne i32 %241, 0, !dbg !1625
  br i1 %242, label %243, label %255, !dbg !1626

; <label>:243:                                    ; preds = %236
  %244 = load i8*, i8** %7, align 8, !dbg !1627
  %245 = load i8*, i8** %8, align 8, !dbg !1628
  %246 = load i8*, i8** %7, align 8, !dbg !1629
  %247 = ptrtoint i8* %245 to i64, !dbg !1630
  %248 = ptrtoint i8* %246 to i64, !dbg !1630
  %249 = sub i64 %247, %248, !dbg !1630
  %250 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1631
  %251 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %250, i32 0, i32 31, !dbg !1632
  %252 = call i64 @print_encap(i8* %244, i64 %249, %struct._encap* %251), !dbg !1633
  %253 = load i8*, i8** %7, align 8, !dbg !1634
  %254 = getelementptr inbounds i8, i8* %253, i64 %252, !dbg !1634
  store i8* %254, i8** %7, align 8, !dbg !1634
  br label %255, !dbg !1635

; <label>:255:                                    ; preds = %243, %236
  %256 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1636
  %257 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %256, i32 0, i32 9, !dbg !1638
  %258 = load %struct._ip_address*, %struct._ip_address** %257, align 8, !dbg !1638
  %259 = icmp ne %struct._ip_address* %258, null, !dbg !1636
  br i1 %259, label %260, label %284, !dbg !1639

; <label>:260:                                    ; preds = %255
  %261 = load i8*, i8** %7, align 8, !dbg !1640
  %262 = load i8*, i8** %8, align 8, !dbg !1641
  %263 = load i8*, i8** %7, align 8, !dbg !1642
  %264 = ptrtoint i8* %262 to i64, !dbg !1643
  %265 = ptrtoint i8* %263 to i64, !dbg !1643
  %266 = sub i64 %264, %265, !dbg !1643
  %267 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1644
  %268 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %267, i32 0, i32 9, !dbg !1645
  %269 = load %struct._ip_address*, %struct._ip_address** %268, align 8, !dbg !1645
  %270 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %269, i32 0, i32 0, !dbg !1646
  %271 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %270, i32 0, i32 0, !dbg !1647
  %272 = load i8, i8* %271, align 8, !dbg !1647
  %273 = zext i8 %272 to i32, !dbg !1644
  %274 = icmp eq i32 %273, 10, !dbg !1648
  %275 = select i1 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), !dbg !1644
  %276 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1649
  %277 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %276, i32 0, i32 9, !dbg !1650
  %278 = load %struct._ip_address*, %struct._ip_address** %277, align 8, !dbg !1650
  %279 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %278), !dbg !1651
  %280 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %261, i64 %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %275, i8* %279) #9, !dbg !1652
  %281 = sext i32 %280 to i64, !dbg !1654
  %282 = load i8*, i8** %7, align 8, !dbg !1655
  %283 = getelementptr inbounds i8, i8* %282, i64 %281, !dbg !1655
  store i8* %283, i8** %7, align 8, !dbg !1655
  br label %284, !dbg !1656

; <label>:284:                                    ; preds = %260, %255
  %285 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1657
  %286 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %285, i32 0, i32 10, !dbg !1659
  %287 = load %struct._interface*, %struct._interface** %286, align 8, !dbg !1659
  %288 = icmp ne %struct._interface* %287, null, !dbg !1657
  br i1 %288, label %289, label %305, !dbg !1660

; <label>:289:                                    ; preds = %284
  %290 = load i8*, i8** %7, align 8, !dbg !1661
  %291 = load i8*, i8** %8, align 8, !dbg !1662
  %292 = load i8*, i8** %7, align 8, !dbg !1663
  %293 = ptrtoint i8* %291 to i64, !dbg !1664
  %294 = ptrtoint i8* %292 to i64, !dbg !1664
  %295 = sub i64 %293, %294, !dbg !1664
  %296 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1665
  %297 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %296, i32 0, i32 10, !dbg !1666
  %298 = load %struct._interface*, %struct._interface** %297, align 8, !dbg !1666
  %299 = getelementptr inbounds %struct._interface, %struct._interface* %298, i32 0, i32 0, !dbg !1667
  %300 = getelementptr inbounds [16 x i8], [16 x i8]* %299, i32 0, i32 0, !dbg !1665
  %301 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %290, i64 %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %300) #9, !dbg !1668
  %302 = sext i32 %301 to i64, !dbg !1669
  %303 = load i8*, i8** %7, align 8, !dbg !1670
  %304 = getelementptr inbounds i8, i8* %303, i64 %302, !dbg !1670
  store i8* %304, i8** %7, align 8, !dbg !1670
  br label %305, !dbg !1671

; <label>:305:                                    ; preds = %289, %284
  %306 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1672
  %307 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %306, i32 0, i32 5, !dbg !1674
  %308 = load i32, i32* %307, align 4, !dbg !1674
  %309 = icmp ne i32 %308, 254, !dbg !1675
  br i1 %309, label %310, label %324, !dbg !1676

; <label>:310:                                    ; preds = %305
  %311 = load i8*, i8** %7, align 8, !dbg !1677
  %312 = load i8*, i8** %8, align 8, !dbg !1678
  %313 = load i8*, i8** %7, align 8, !dbg !1679
  %314 = ptrtoint i8* %312 to i64, !dbg !1680
  %315 = ptrtoint i8* %313 to i64, !dbg !1680
  %316 = sub i64 %314, %315, !dbg !1680
  %317 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1681
  %318 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %317, i32 0, i32 5, !dbg !1682
  %319 = load i32, i32* %318, align 4, !dbg !1682
  %320 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %311, i64 %316, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %319) #9, !dbg !1683
  %321 = sext i32 %320 to i64, !dbg !1684
  %322 = load i8*, i8** %7, align 8, !dbg !1685
  %323 = getelementptr inbounds i8, i8* %322, i64 %321, !dbg !1685
  store i8* %323, i8** %7, align 8, !dbg !1685
  br label %324, !dbg !1686

; <label>:324:                                    ; preds = %310, %305
  %325 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1687
  %326 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %325, i32 0, i32 33, !dbg !1689
  %327 = load i32, i32* %326, align 8, !dbg !1689
  %328 = and i32 %327, 4, !dbg !1690
  %329 = icmp ne i32 %328, 0, !dbg !1690
  br i1 %329, label %330, label %345, !dbg !1691

; <label>:330:                                    ; preds = %324
  %331 = load i8*, i8** %7, align 8, !dbg !1692
  %332 = load i8*, i8** %8, align 8, !dbg !1693
  %333 = load i8*, i8** %7, align 8, !dbg !1694
  %334 = ptrtoint i8* %332 to i64, !dbg !1695
  %335 = ptrtoint i8* %333 to i64, !dbg !1695
  %336 = sub i64 %334, %335, !dbg !1695
  %337 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1696
  %338 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %337, i32 0, i32 6, !dbg !1697
  %339 = load i8, i8* %338, align 8, !dbg !1697
  %340 = zext i8 %339 to i32, !dbg !1696
  %341 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %331, i64 %336, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 %340) #9, !dbg !1698
  %342 = sext i32 %341 to i64, !dbg !1699
  %343 = load i8*, i8** %7, align 8, !dbg !1700
  %344 = getelementptr inbounds i8, i8* %343, i64 %342, !dbg !1700
  store i8* %344, i8** %7, align 8, !dbg !1700
  br label %345, !dbg !1701

; <label>:345:                                    ; preds = %330, %324
  %346 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1702
  %347 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %346, i32 0, i32 33, !dbg !1704
  %348 = load i32, i32* %347, align 8, !dbg !1704
  %349 = and i32 %348, 8, !dbg !1705
  %350 = icmp ne i32 %349, 0, !dbg !1705
  br i1 %350, label %351, label %366, !dbg !1706

; <label>:351:                                    ; preds = %345
  %352 = load i8*, i8** %7, align 8, !dbg !1707
  %353 = load i8*, i8** %8, align 8, !dbg !1708
  %354 = load i8*, i8** %7, align 8, !dbg !1709
  %355 = ptrtoint i8* %353 to i64, !dbg !1710
  %356 = ptrtoint i8* %354 to i64, !dbg !1710
  %357 = sub i64 %355, %356, !dbg !1710
  %358 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1711
  %359 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %358, i32 0, i32 7, !dbg !1712
  %360 = load i8, i8* %359, align 1, !dbg !1712
  %361 = zext i8 %360 to i32, !dbg !1711
  %362 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %352, i64 %357, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 %361) #9, !dbg !1713
  %363 = sext i32 %362 to i64, !dbg !1714
  %364 = load i8*, i8** %7, align 8, !dbg !1715
  %365 = getelementptr inbounds i8, i8* %364, i64 %363, !dbg !1715
  store i8* %365, i8** %7, align 8, !dbg !1715
  br label %366, !dbg !1716

; <label>:366:                                    ; preds = %351, %345
  %367 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1717
  %368 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %367, i32 0, i32 33, !dbg !1719
  %369 = load i32, i32* %368, align 8, !dbg !1719
  %370 = and i32 %369, 16, !dbg !1720
  %371 = icmp ne i32 %370, 0, !dbg !1720
  br i1 %371, label %372, label %386, !dbg !1721

; <label>:372:                                    ; preds = %366
  %373 = load i8*, i8** %7, align 8, !dbg !1722
  %374 = load i8*, i8** %8, align 8, !dbg !1723
  %375 = load i8*, i8** %7, align 8, !dbg !1724
  %376 = ptrtoint i8* %374 to i64, !dbg !1725
  %377 = ptrtoint i8* %375 to i64, !dbg !1725
  %378 = sub i64 %376, %377, !dbg !1725
  %379 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1726
  %380 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %379, i32 0, i32 8, !dbg !1727
  %381 = load i32, i32* %380, align 4, !dbg !1727
  %382 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %373, i64 %378, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 %381) #9, !dbg !1728
  %383 = sext i32 %382 to i64, !dbg !1729
  %384 = load i8*, i8** %7, align 8, !dbg !1730
  %385 = getelementptr inbounds i8, i8* %384, i64 %383, !dbg !1730
  store i8* %385, i8** %7, align 8, !dbg !1730
  br label %386, !dbg !1731

; <label>:386:                                    ; preds = %372, %366
  %387 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1732
  %388 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %387, i32 0, i32 3, !dbg !1734
  %389 = load i8, i8* %388, align 8, !dbg !1734
  %390 = zext i8 %389 to i32, !dbg !1732
  %391 = icmp eq i32 %390, 2, !dbg !1735
  br i1 %391, label %392, label %409, !dbg !1736

; <label>:392:                                    ; preds = %386
  %393 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1737
  %394 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %393, i32 0, i32 11, !dbg !1739
  %395 = load i32, i32* %394, align 8, !dbg !1739
  %396 = and i32 %395, 4, !dbg !1740
  %397 = icmp ne i32 %396, 0, !dbg !1740
  br i1 %397, label %398, label %409, !dbg !1741

; <label>:398:                                    ; preds = %392
  %399 = load i8*, i8** %7, align 8, !dbg !1742
  %400 = load i8*, i8** %8, align 8, !dbg !1743
  %401 = load i8*, i8** %7, align 8, !dbg !1744
  %402 = ptrtoint i8* %400 to i64, !dbg !1745
  %403 = ptrtoint i8* %401 to i64, !dbg !1745
  %404 = sub i64 %402, %403, !dbg !1745
  %405 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %399, i64 %404, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !1746
  %406 = sext i32 %405 to i64, !dbg !1747
  %407 = load i8*, i8** %7, align 8, !dbg !1748
  %408 = getelementptr inbounds i8, i8* %407, i64 %406, !dbg !1748
  store i8* %408, i8** %7, align 8, !dbg !1748
  br label %409, !dbg !1749

; <label>:409:                                    ; preds = %398, %392, %386
  %410 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1750
  %411 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %410, i32 0, i32 30, !dbg !1752
  %412 = load i32, i32* %411, align 4, !dbg !1752
  %413 = icmp ne i32 %412, 0, !dbg !1750
  br i1 %413, label %414, label %461, !dbg !1753

; <label>:414:                                    ; preds = %409
  %415 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1754
  %416 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %415, i32 0, i32 30, !dbg !1757
  %417 = load i32, i32* %416, align 4, !dbg !1757
  %418 = and i32 %417, -65536, !dbg !1758
  %419 = icmp ne i32 %418, 0, !dbg !1758
  br i1 %419, label %420, label %435, !dbg !1759

; <label>:420:                                    ; preds = %414
  %421 = load i8*, i8** %7, align 8, !dbg !1760
  %422 = load i8*, i8** %8, align 8, !dbg !1761
  %423 = load i8*, i8** %7, align 8, !dbg !1762
  %424 = ptrtoint i8* %422 to i64, !dbg !1763
  %425 = ptrtoint i8* %423 to i64, !dbg !1763
  %426 = sub i64 %424, %425, !dbg !1763
  %427 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1764
  %428 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %427, i32 0, i32 30, !dbg !1765
  %429 = load i32, i32* %428, align 4, !dbg !1765
  %430 = lshr i32 %429, 16, !dbg !1766
  %431 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %421, i64 %426, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %430) #9, !dbg !1767
  %432 = sext i32 %431 to i64, !dbg !1768
  %433 = load i8*, i8** %7, align 8, !dbg !1769
  %434 = getelementptr inbounds i8, i8* %433, i64 %432, !dbg !1769
  store i8* %434, i8** %7, align 8, !dbg !1769
  br label %446, !dbg !1770

; <label>:435:                                    ; preds = %414
  %436 = load i8*, i8** %7, align 8, !dbg !1771
  %437 = load i8*, i8** %8, align 8, !dbg !1772
  %438 = load i8*, i8** %7, align 8, !dbg !1773
  %439 = ptrtoint i8* %437 to i64, !dbg !1774
  %440 = ptrtoint i8* %438 to i64, !dbg !1774
  %441 = sub i64 %439, %440, !dbg !1774
  %442 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %436, i64 %441, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !1775
  %443 = sext i32 %442 to i64, !dbg !1776
  %444 = load i8*, i8** %7, align 8, !dbg !1777
  %445 = getelementptr inbounds i8, i8* %444, i64 %443, !dbg !1777
  store i8* %445, i8** %7, align 8, !dbg !1777
  br label %446

; <label>:446:                                    ; preds = %435, %420
  %447 = load i8*, i8** %7, align 8, !dbg !1778
  %448 = load i8*, i8** %8, align 8, !dbg !1779
  %449 = load i8*, i8** %7, align 8, !dbg !1780
  %450 = ptrtoint i8* %448 to i64, !dbg !1781
  %451 = ptrtoint i8* %449 to i64, !dbg !1781
  %452 = sub i64 %450, %451, !dbg !1781
  %453 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1782
  %454 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %453, i32 0, i32 30, !dbg !1783
  %455 = load i32, i32* %454, align 4, !dbg !1783
  %456 = and i32 %455, 65535, !dbg !1784
  %457 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %447, i64 %452, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %456) #9, !dbg !1785
  %458 = sext i32 %457 to i64, !dbg !1786
  %459 = load i8*, i8** %7, align 8, !dbg !1787
  %460 = getelementptr inbounds i8, i8* %459, i64 %458, !dbg !1787
  store i8* %460, i8** %7, align 8, !dbg !1787
  br label %461, !dbg !1788

; <label>:461:                                    ; preds = %446, %409
  %462 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1789
  %463 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %462, i32 0, i32 27, !dbg !1791
  %464 = load i8*, i8** %463, align 8, !dbg !1791
  %465 = icmp ne i8* %464, null, !dbg !1789
  br i1 %465, label %466, label %486, !dbg !1792

; <label>:466:                                    ; preds = %461
  %467 = load i8*, i8** %7, align 8, !dbg !1793
  %468 = load i8*, i8** %8, align 8, !dbg !1794
  %469 = load i8*, i8** %7, align 8, !dbg !1795
  %470 = ptrtoint i8* %468 to i64, !dbg !1796
  %471 = ptrtoint i8* %469 to i64, !dbg !1796
  %472 = sub i64 %470, %471, !dbg !1796
  %473 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1797
  %474 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %473, i32 0, i32 27, !dbg !1798
  %475 = load i8*, i8** %474, align 8, !dbg !1798
  %476 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1799
  %477 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %476, i32 0, i32 14, !dbg !1800
  %478 = load i32, i32* %477, align 4, !dbg !1800
  %479 = and i32 %478, 65536, !dbg !1801
  %480 = icmp ne i32 %479, 0, !dbg !1799
  %481 = select i1 %480, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !1799
  %482 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %467, i64 %472, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* %475, i8* %481) #9, !dbg !1802
  %483 = sext i32 %482 to i64, !dbg !1803
  %484 = load i8*, i8** %7, align 8, !dbg !1804
  %485 = getelementptr inbounds i8, i8* %484, i64 %483, !dbg !1804
  store i8* %485, i8** %7, align 8, !dbg !1804
  br label %486, !dbg !1805

; <label>:486:                                    ; preds = %466, %461
  %487 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1806
  %488 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %487, i32 0, i32 33, !dbg !1808
  %489 = load i32, i32* %488, align 8, !dbg !1808
  %490 = and i32 %489, 1024, !dbg !1809
  %491 = icmp ne i32 %490, 0, !dbg !1809
  br i1 %491, label %492, label %545, !dbg !1810

; <label>:492:                                    ; preds = %486
  %493 = load i8*, i8** %7, align 8, !dbg !1811
  %494 = load i8*, i8** %8, align 8, !dbg !1813
  %495 = load i8*, i8** %7, align 8, !dbg !1814
  %496 = ptrtoint i8* %494 to i64, !dbg !1815
  %497 = ptrtoint i8* %495 to i64, !dbg !1815
  %498 = sub i64 %496, %497, !dbg !1815
  %499 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1816
  %500 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %499, i32 0, i32 14, !dbg !1817
  %501 = load i32, i32* %500, align 4, !dbg !1817
  %502 = and i32 %501, 16, !dbg !1818
  %503 = icmp ne i32 %502, 0, !dbg !1816
  %504 = select i1 %503, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !1816
  %505 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %493, i64 %498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %504) #9, !dbg !1819
  %506 = sext i32 %505 to i64, !dbg !1820
  %507 = load i8*, i8** %7, align 8, !dbg !1821
  %508 = getelementptr inbounds i8, i8* %507, i64 %506, !dbg !1821
  store i8* %508, i8** %7, align 8, !dbg !1821
  %509 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1822
  %510 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %509, i32 0, i32 18, !dbg !1824
  %511 = load i32, i32* %510, align 4, !dbg !1824
  %512 = icmp uge i32 %511, 8000, !dbg !1825
  br i1 %512, label %513, label %529, !dbg !1826

; <label>:513:                                    ; preds = %492
  %514 = load i8*, i8** %7, align 8, !dbg !1827
  %515 = load i8*, i8** %8, align 8, !dbg !1828
  %516 = load i8*, i8** %7, align 8, !dbg !1829
  %517 = ptrtoint i8* %515 to i64, !dbg !1830
  %518 = ptrtoint i8* %516 to i64, !dbg !1830
  %519 = sub i64 %517, %518, !dbg !1830
  %520 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1831
  %521 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %520, i32 0, i32 18, !dbg !1832
  %522 = load i32, i32* %521, align 4, !dbg !1832
  %523 = uitofp i32 %522 to double, !dbg !1831
  %524 = fdiv double %523, 8.000000e+03, !dbg !1833
  %525 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %514, i64 %519, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), double %524) #9, !dbg !1834
  %526 = sext i32 %525 to i64, !dbg !1835
  %527 = load i8*, i8** %7, align 8, !dbg !1836
  %528 = getelementptr inbounds i8, i8* %527, i64 %526, !dbg !1836
  store i8* %528, i8** %7, align 8, !dbg !1836
  br label %544, !dbg !1837

; <label>:529:                                    ; preds = %492
  %530 = load i8*, i8** %7, align 8, !dbg !1838
  %531 = load i8*, i8** %8, align 8, !dbg !1839
  %532 = load i8*, i8** %7, align 8, !dbg !1840
  %533 = ptrtoint i8* %531 to i64, !dbg !1841
  %534 = ptrtoint i8* %532 to i64, !dbg !1841
  %535 = sub i64 %533, %534, !dbg !1841
  %536 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1842
  %537 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %536, i32 0, i32 18, !dbg !1843
  %538 = load i32, i32* %537, align 4, !dbg !1843
  %539 = udiv i32 %538, 8, !dbg !1844
  %540 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %530, i64 %535, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %539) #9, !dbg !1845
  %541 = sext i32 %540 to i64, !dbg !1846
  %542 = load i8*, i8** %7, align 8, !dbg !1847
  %543 = getelementptr inbounds i8, i8* %542, i64 %541, !dbg !1847
  store i8* %543, i8** %7, align 8, !dbg !1847
  br label %544

; <label>:544:                                    ; preds = %529, %513
  br label %545, !dbg !1848

; <label>:545:                                    ; preds = %544, %486
  %546 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1849
  %547 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %546, i32 0, i32 33, !dbg !1851
  %548 = load i32, i32* %547, align 8, !dbg !1851
  %549 = and i32 %548, 2048, !dbg !1852
  %550 = icmp ne i32 %549, 0, !dbg !1852
  br i1 %550, label %551, label %604, !dbg !1853

; <label>:551:                                    ; preds = %545
  %552 = load i8*, i8** %7, align 8, !dbg !1854
  %553 = load i8*, i8** %8, align 8, !dbg !1856
  %554 = load i8*, i8** %7, align 8, !dbg !1857
  %555 = ptrtoint i8* %553 to i64, !dbg !1858
  %556 = ptrtoint i8* %554 to i64, !dbg !1858
  %557 = sub i64 %555, %556, !dbg !1858
  %558 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1859
  %559 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %558, i32 0, i32 14, !dbg !1860
  %560 = load i32, i32* %559, align 4, !dbg !1860
  %561 = and i32 %560, 32, !dbg !1861
  %562 = icmp ne i32 %561, 0, !dbg !1859
  %563 = select i1 %562, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !1859
  %564 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %552, i64 %557, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %563) #9, !dbg !1862
  %565 = sext i32 %564 to i64, !dbg !1863
  %566 = load i8*, i8** %7, align 8, !dbg !1864
  %567 = getelementptr inbounds i8, i8* %566, i64 %565, !dbg !1864
  store i8* %567, i8** %7, align 8, !dbg !1864
  %568 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1865
  %569 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %568, i32 0, i32 19, !dbg !1867
  %570 = load i32, i32* %569, align 8, !dbg !1867
  %571 = icmp uge i32 %570, 4000, !dbg !1868
  br i1 %571, label %572, label %588, !dbg !1869

; <label>:572:                                    ; preds = %551
  %573 = load i8*, i8** %7, align 8, !dbg !1870
  %574 = load i8*, i8** %8, align 8, !dbg !1871
  %575 = load i8*, i8** %7, align 8, !dbg !1872
  %576 = ptrtoint i8* %574 to i64, !dbg !1873
  %577 = ptrtoint i8* %575 to i64, !dbg !1873
  %578 = sub i64 %576, %577, !dbg !1873
  %579 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1874
  %580 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %579, i32 0, i32 19, !dbg !1875
  %581 = load i32, i32* %580, align 8, !dbg !1875
  %582 = uitofp i32 %581 to double, !dbg !1874
  %583 = fdiv double %582, 4.000000e+03, !dbg !1876
  %584 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %573, i64 %578, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), double %583) #9, !dbg !1877
  %585 = sext i32 %584 to i64, !dbg !1878
  %586 = load i8*, i8** %7, align 8, !dbg !1879
  %587 = getelementptr inbounds i8, i8* %586, i64 %585, !dbg !1879
  store i8* %587, i8** %7, align 8, !dbg !1879
  br label %603, !dbg !1880

; <label>:588:                                    ; preds = %551
  %589 = load i8*, i8** %7, align 8, !dbg !1881
  %590 = load i8*, i8** %8, align 8, !dbg !1882
  %591 = load i8*, i8** %7, align 8, !dbg !1883
  %592 = ptrtoint i8* %590 to i64, !dbg !1884
  %593 = ptrtoint i8* %591 to i64, !dbg !1884
  %594 = sub i64 %592, %593, !dbg !1884
  %595 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1885
  %596 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %595, i32 0, i32 19, !dbg !1886
  %597 = load i32, i32* %596, align 8, !dbg !1886
  %598 = udiv i32 %597, 4, !dbg !1887
  %599 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %589, i64 %594, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %598) #9, !dbg !1888
  %600 = sext i32 %599 to i64, !dbg !1889
  %601 = load i8*, i8** %7, align 8, !dbg !1890
  %602 = getelementptr inbounds i8, i8* %601, i64 %600, !dbg !1890
  store i8* %602, i8** %7, align 8, !dbg !1890
  br label %603

; <label>:603:                                    ; preds = %588, %572
  br label %604, !dbg !1891

; <label>:604:                                    ; preds = %603, %545
  %605 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1892
  %606 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %605, i32 0, i32 33, !dbg !1894
  %607 = load i32, i32* %606, align 8, !dbg !1894
  %608 = and i32 %607, 65536, !dbg !1895
  %609 = icmp ne i32 %608, 0, !dbg !1895
  br i1 %609, label %610, label %662, !dbg !1896

; <label>:610:                                    ; preds = %604
  %611 = load i8*, i8** %7, align 8, !dbg !1897
  %612 = load i8*, i8** %8, align 8, !dbg !1899
  %613 = load i8*, i8** %7, align 8, !dbg !1900
  %614 = ptrtoint i8* %612 to i64, !dbg !1901
  %615 = ptrtoint i8* %613 to i64, !dbg !1901
  %616 = sub i64 %614, %615, !dbg !1901
  %617 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1902
  %618 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %617, i32 0, i32 14, !dbg !1903
  %619 = load i32, i32* %618, align 4, !dbg !1903
  %620 = and i32 %619, 8192, !dbg !1904
  %621 = icmp ne i32 %620, 0, !dbg !1902
  %622 = select i1 %621, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !1902
  %623 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %611, i64 %616, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %622) #9, !dbg !1905
  %624 = sext i32 %623 to i64, !dbg !1906
  %625 = load i8*, i8** %7, align 8, !dbg !1907
  %626 = getelementptr inbounds i8, i8* %625, i64 %624, !dbg !1907
  store i8* %626, i8** %7, align 8, !dbg !1907
  %627 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1908
  %628 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %627, i32 0, i32 24, !dbg !1910
  %629 = load i32, i32* %628, align 4, !dbg !1910
  %630 = icmp uge i32 %629, 1000, !dbg !1911
  br i1 %630, label %631, label %647, !dbg !1912

; <label>:631:                                    ; preds = %610
  %632 = load i8*, i8** %7, align 8, !dbg !1913
  %633 = load i8*, i8** %8, align 8, !dbg !1914
  %634 = load i8*, i8** %7, align 8, !dbg !1915
  %635 = ptrtoint i8* %633 to i64, !dbg !1916
  %636 = ptrtoint i8* %634 to i64, !dbg !1916
  %637 = sub i64 %635, %636, !dbg !1916
  %638 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1917
  %639 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %638, i32 0, i32 24, !dbg !1918
  %640 = load i32, i32* %639, align 4, !dbg !1918
  %641 = uitofp i32 %640 to double, !dbg !1917
  %642 = fdiv double %641, 1.000000e+03, !dbg !1919
  %643 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %632, i64 %637, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), double %642) #9, !dbg !1920
  %644 = sext i32 %643 to i64, !dbg !1921
  %645 = load i8*, i8** %7, align 8, !dbg !1922
  %646 = getelementptr inbounds i8, i8* %645, i64 %644, !dbg !1922
  store i8* %646, i8** %7, align 8, !dbg !1922
  br label %661, !dbg !1923

; <label>:647:                                    ; preds = %610
  %648 = load i8*, i8** %7, align 8, !dbg !1924
  %649 = load i8*, i8** %8, align 8, !dbg !1925
  %650 = load i8*, i8** %7, align 8, !dbg !1926
  %651 = ptrtoint i8* %649 to i64, !dbg !1927
  %652 = ptrtoint i8* %650 to i64, !dbg !1927
  %653 = sub i64 %651, %652, !dbg !1927
  %654 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1928
  %655 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %654, i32 0, i32 24, !dbg !1929
  %656 = load i32, i32* %655, align 4, !dbg !1929
  %657 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %648, i64 %653, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %656) #9, !dbg !1930
  %658 = sext i32 %657 to i64, !dbg !1931
  %659 = load i8*, i8** %7, align 8, !dbg !1932
  %660 = getelementptr inbounds i8, i8* %659, i64 %658, !dbg !1932
  store i8* %660, i8** %7, align 8, !dbg !1932
  br label %661

; <label>:661:                                    ; preds = %647, %631
  br label %662, !dbg !1933

; <label>:662:                                    ; preds = %661, %604
  %663 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1934
  %664 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %663, i32 0, i32 12, !dbg !1936
  %665 = load i32, i32* %664, align 4, !dbg !1936
  %666 = icmp ne i32 %665, 0, !dbg !1934
  br i1 %666, label %667, label %685, !dbg !1937

; <label>:667:                                    ; preds = %662
  %668 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1938
  %669 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %668, i32 0, i32 12, !dbg !1941
  %670 = load i32, i32* %669, align 4, !dbg !1941
  %671 = and i32 %670, 1, !dbg !1942
  %672 = icmp ne i32 %671, 0, !dbg !1942
  br i1 %672, label %673, label %684, !dbg !1943

; <label>:673:                                    ; preds = %667
  %674 = load i8*, i8** %7, align 8, !dbg !1944
  %675 = load i8*, i8** %8, align 8, !dbg !1945
  %676 = load i8*, i8** %7, align 8, !dbg !1946
  %677 = ptrtoint i8* %675 to i64, !dbg !1947
  %678 = ptrtoint i8* %676 to i64, !dbg !1947
  %679 = sub i64 %677, %678, !dbg !1947
  %680 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %674, i64 %679, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !1948
  %681 = sext i32 %680 to i64, !dbg !1949
  %682 = load i8*, i8** %7, align 8, !dbg !1950
  %683 = getelementptr inbounds i8, i8* %682, i64 %681, !dbg !1950
  store i8* %683, i8** %7, align 8, !dbg !1950
  br label %684, !dbg !1951

; <label>:684:                                    ; preds = %673, %667
  br label %685, !dbg !1952

; <label>:685:                                    ; preds = %684, %662
  %686 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1953
  %687 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %686, i32 0, i32 33, !dbg !1955
  %688 = load i32, i32* %687, align 8, !dbg !1955
  %689 = and i32 %688, 128, !dbg !1956
  %690 = icmp ne i32 %689, 0, !dbg !1956
  br i1 %690, label %691, label %711, !dbg !1957

; <label>:691:                                    ; preds = %685
  %692 = load i8*, i8** %7, align 8, !dbg !1958
  %693 = load i8*, i8** %8, align 8, !dbg !1960
  %694 = load i8*, i8** %7, align 8, !dbg !1961
  %695 = ptrtoint i8* %693 to i64, !dbg !1962
  %696 = ptrtoint i8* %694 to i64, !dbg !1962
  %697 = sub i64 %695, %696, !dbg !1962
  %698 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1963
  %699 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %698, i32 0, i32 14, !dbg !1964
  %700 = load i32, i32* %699, align 4, !dbg !1964
  %701 = and i32 %700, 4, !dbg !1965
  %702 = icmp ne i32 %701, 0, !dbg !1963
  %703 = select i1 %702, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !1963
  %704 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1966
  %705 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %704, i32 0, i32 15, !dbg !1967
  %706 = load i32, i32* %705, align 8, !dbg !1967
  %707 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %692, i64 %697, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %703, i32 %706) #9, !dbg !1968
  %708 = sext i32 %707 to i64, !dbg !1969
  %709 = load i8*, i8** %7, align 8, !dbg !1970
  %710 = getelementptr inbounds i8, i8* %709, i64 %708, !dbg !1970
  store i8* %710, i8** %7, align 8, !dbg !1970
  br label %711, !dbg !1971

; <label>:711:                                    ; preds = %691, %685
  %712 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1972
  %713 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %712, i32 0, i32 33, !dbg !1974
  %714 = load i32, i32* %713, align 8, !dbg !1974
  %715 = and i32 %714, 8192, !dbg !1975
  %716 = icmp ne i32 %715, 0, !dbg !1975
  br i1 %716, label %717, label %731, !dbg !1976

; <label>:717:                                    ; preds = %711
  %718 = load i8*, i8** %7, align 8, !dbg !1977
  %719 = load i8*, i8** %8, align 8, !dbg !1978
  %720 = load i8*, i8** %7, align 8, !dbg !1979
  %721 = ptrtoint i8* %719 to i64, !dbg !1980
  %722 = ptrtoint i8* %720 to i64, !dbg !1980
  %723 = sub i64 %721, %722, !dbg !1980
  %724 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1981
  %725 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %724, i32 0, i32 21, !dbg !1982
  %726 = load i32, i32* %725, align 8, !dbg !1982
  %727 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %718, i64 %723, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 %726) #9, !dbg !1983
  %728 = sext i32 %727 to i64, !dbg !1984
  %729 = load i8*, i8** %7, align 8, !dbg !1985
  %730 = getelementptr inbounds i8, i8* %729, i64 %728, !dbg !1985
  store i8* %730, i8** %7, align 8, !dbg !1985
  br label %731, !dbg !1986

; <label>:731:                                    ; preds = %717, %711
  %732 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1987
  %733 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %732, i32 0, i32 33, !dbg !1989
  %734 = load i32, i32* %733, align 8, !dbg !1989
  %735 = and i32 %734, 32768, !dbg !1990
  %736 = icmp ne i32 %735, 0, !dbg !1990
  br i1 %736, label %737, label %757, !dbg !1991

; <label>:737:                                    ; preds = %731
  %738 = load i8*, i8** %7, align 8, !dbg !1992
  %739 = load i8*, i8** %8, align 8, !dbg !1994
  %740 = load i8*, i8** %7, align 8, !dbg !1995
  %741 = ptrtoint i8* %739 to i64, !dbg !1996
  %742 = ptrtoint i8* %740 to i64, !dbg !1996
  %743 = sub i64 %741, %742, !dbg !1996
  %744 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1997
  %745 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %744, i32 0, i32 14, !dbg !1998
  %746 = load i32, i32* %745, align 4, !dbg !1998
  %747 = and i32 %746, 64, !dbg !1999
  %748 = icmp ne i32 %747, 0, !dbg !1997
  %749 = select i1 %748, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !1997
  %750 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2000
  %751 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %750, i32 0, i32 23, !dbg !2001
  %752 = load i32, i32* %751, align 8, !dbg !2001
  %753 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %738, i64 %743, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* %749, i32 %752) #9, !dbg !2002
  %754 = sext i32 %753 to i64, !dbg !2003
  %755 = load i8*, i8** %7, align 8, !dbg !2004
  %756 = getelementptr inbounds i8, i8* %755, i64 %754, !dbg !2004
  store i8* %756, i8** %7, align 8, !dbg !2004
  br label %757, !dbg !2005

; <label>:757:                                    ; preds = %737, %731
  %758 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2006
  %759 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %758, i32 0, i32 33, !dbg !2008
  %760 = load i32, i32* %759, align 8, !dbg !2008
  %761 = and i32 %760, 16384, !dbg !2009
  %762 = icmp ne i32 %761, 0, !dbg !2009
  br i1 %762, label %763, label %783, !dbg !2010

; <label>:763:                                    ; preds = %757
  %764 = load i8*, i8** %7, align 8, !dbg !2011
  %765 = load i8*, i8** %8, align 8, !dbg !2013
  %766 = load i8*, i8** %7, align 8, !dbg !2014
  %767 = ptrtoint i8* %765 to i64, !dbg !2015
  %768 = ptrtoint i8* %766 to i64, !dbg !2015
  %769 = sub i64 %767, %768, !dbg !2015
  %770 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2016
  %771 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %770, i32 0, i32 14, !dbg !2017
  %772 = load i32, i32* %771, align 4, !dbg !2017
  %773 = and i32 %772, 128, !dbg !2018
  %774 = icmp ne i32 %773, 0, !dbg !2016
  %775 = select i1 %774, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !2016
  %776 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2019
  %777 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %776, i32 0, i32 22, !dbg !2020
  %778 = load i32, i32* %777, align 4, !dbg !2020
  %779 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %764, i64 %769, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* %775, i32 %778) #9, !dbg !2021
  %780 = sext i32 %779 to i64, !dbg !2022
  %781 = load i8*, i8** %7, align 8, !dbg !2023
  %782 = getelementptr inbounds i8, i8* %781, i64 %780, !dbg !2023
  store i8* %782, i8** %7, align 8, !dbg !2023
  br label %783, !dbg !2024

; <label>:783:                                    ; preds = %763, %757
  %784 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2025
  %785 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %784, i32 0, i32 33, !dbg !2027
  %786 = load i32, i32* %785, align 8, !dbg !2027
  %787 = and i32 %786, 512, !dbg !2028
  %788 = icmp ne i32 %787, 0, !dbg !2028
  br i1 %788, label %789, label %809, !dbg !2029

; <label>:789:                                    ; preds = %783
  %790 = load i8*, i8** %7, align 8, !dbg !2030
  %791 = load i8*, i8** %8, align 8, !dbg !2032
  %792 = load i8*, i8** %7, align 8, !dbg !2033
  %793 = ptrtoint i8* %791 to i64, !dbg !2034
  %794 = ptrtoint i8* %792 to i64, !dbg !2034
  %795 = sub i64 %793, %794, !dbg !2034
  %796 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2035
  %797 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %796, i32 0, i32 14, !dbg !2036
  %798 = load i32, i32* %797, align 4, !dbg !2036
  %799 = and i32 %798, 256, !dbg !2037
  %800 = icmp ne i32 %799, 0, !dbg !2035
  %801 = select i1 %800, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !2035
  %802 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2038
  %803 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %802, i32 0, i32 17, !dbg !2039
  %804 = load i32, i32* %803, align 8, !dbg !2039
  %805 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %790, i64 %795, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* %801, i32 %804) #9, !dbg !2040
  %806 = sext i32 %805 to i64, !dbg !2041
  %807 = load i8*, i8** %7, align 8, !dbg !2042
  %808 = getelementptr inbounds i8, i8* %807, i64 %806, !dbg !2042
  store i8* %808, i8** %7, align 8, !dbg !2042
  br label %809, !dbg !2043

; <label>:809:                                    ; preds = %789, %783
  %810 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2044
  %811 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %810, i32 0, i32 33, !dbg !2046
  %812 = load i32, i32* %811, align 8, !dbg !2046
  %813 = and i32 %812, 4096, !dbg !2047
  %814 = icmp ne i32 %813, 0, !dbg !2047
  br i1 %814, label %815, label %835, !dbg !2048

; <label>:815:                                    ; preds = %809
  %816 = load i8*, i8** %7, align 8, !dbg !2049
  %817 = load i8*, i8** %8, align 8, !dbg !2051
  %818 = load i8*, i8** %7, align 8, !dbg !2052
  %819 = ptrtoint i8* %817 to i64, !dbg !2053
  %820 = ptrtoint i8* %818 to i64, !dbg !2053
  %821 = sub i64 %819, %820, !dbg !2053
  %822 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2054
  %823 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %822, i32 0, i32 14, !dbg !2055
  %824 = load i32, i32* %823, align 4, !dbg !2055
  %825 = and i32 %824, 512, !dbg !2056
  %826 = icmp ne i32 %825, 0, !dbg !2054
  %827 = select i1 %826, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), !dbg !2054
  %828 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2057
  %829 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %828, i32 0, i32 20, !dbg !2058
  %830 = load i32, i32* %829, align 4, !dbg !2058
  %831 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %816, i64 %821, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* %827, i32 %830) #9, !dbg !2059
  %832 = sext i32 %831 to i64, !dbg !2060
  %833 = load i8*, i8** %7, align 8, !dbg !2061
  %834 = getelementptr inbounds i8, i8* %833, i64 %832, !dbg !2061
  store i8* %834, i8** %7, align 8, !dbg !2061
  br label %835, !dbg !2062

; <label>:835:                                    ; preds = %815, %809
  %836 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2063
  %837 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %836, i32 0, i32 33, !dbg !2065
  %838 = load i32, i32* %837, align 8, !dbg !2065
  %839 = and i32 %838, 256, !dbg !2066
  %840 = icmp ne i32 %839, 0, !dbg !2066
  br i1 %840, label %841, label %856, !dbg !2067

; <label>:841:                                    ; preds = %835
  %842 = load i8*, i8** %7, align 8, !dbg !2068
  %843 = load i8*, i8** %8, align 8, !dbg !2069
  %844 = load i8*, i8** %7, align 8, !dbg !2070
  %845 = ptrtoint i8* %843 to i64, !dbg !2071
  %846 = ptrtoint i8* %844 to i64, !dbg !2071
  %847 = sub i64 %845, %846, !dbg !2071
  %848 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2072
  %849 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %848, i32 0, i32 16, !dbg !2073
  %850 = load i8, i8* %849, align 4, !dbg !2073
  %851 = zext i8 %850 to i32, !dbg !2072
  %852 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %842, i64 %847, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 %851) #9, !dbg !2074
  %853 = sext i32 %852 to i64, !dbg !2075
  %854 = load i8*, i8** %7, align 8, !dbg !2076
  %855 = getelementptr inbounds i8, i8* %854, i64 %853, !dbg !2076
  store i8* %855, i8** %7, align 8, !dbg !2076
  br label %856, !dbg !2077

; <label>:856:                                    ; preds = %841, %835
  %857 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2078
  %858 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %857, i32 0, i32 33, !dbg !2080
  %859 = load i32, i32* %858, align 8, !dbg !2080
  %860 = and i32 %859, 131072, !dbg !2081
  %861 = icmp ne i32 %860, 0, !dbg !2081
  br i1 %861, label %862, label %876, !dbg !2082

; <label>:862:                                    ; preds = %856
  %863 = load i8*, i8** %7, align 8, !dbg !2083
  %864 = load i8*, i8** %8, align 8, !dbg !2084
  %865 = load i8*, i8** %7, align 8, !dbg !2085
  %866 = ptrtoint i8* %864 to i64, !dbg !2086
  %867 = ptrtoint i8* %865 to i64, !dbg !2086
  %868 = sub i64 %866, %867, !dbg !2086
  %869 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2087
  %870 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %869, i32 0, i32 25, !dbg !2088
  %871 = load i32, i32* %870, align 8, !dbg !2088
  %872 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %863, i64 %868, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 %871) #9, !dbg !2089
  %873 = sext i32 %872 to i64, !dbg !2090
  %874 = load i8*, i8** %7, align 8, !dbg !2091
  %875 = getelementptr inbounds i8, i8* %874, i64 %873, !dbg !2091
  store i8* %875, i8** %7, align 8, !dbg !2091
  br label %876, !dbg !2092

; <label>:876:                                    ; preds = %862, %856
  %877 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2093
  %878 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %877, i32 0, i32 33, !dbg !2095
  %879 = load i32, i32* %878, align 8, !dbg !2095
  %880 = and i32 %879, 262144, !dbg !2096
  %881 = icmp ne i32 %880, 0, !dbg !2096
  br i1 %881, label %882, label %896, !dbg !2097

; <label>:882:                                    ; preds = %876
  %883 = load i8*, i8** %7, align 8, !dbg !2098
  %884 = load i8*, i8** %8, align 8, !dbg !2099
  %885 = load i8*, i8** %7, align 8, !dbg !2100
  %886 = ptrtoint i8* %884 to i64, !dbg !2101
  %887 = ptrtoint i8* %885 to i64, !dbg !2101
  %888 = sub i64 %886, %887, !dbg !2101
  %889 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2102
  %890 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %889, i32 0, i32 26, !dbg !2103
  %891 = load i32, i32* %890, align 4, !dbg !2103
  %892 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %883, i64 %888, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 %891) #9, !dbg !2104
  %893 = sext i32 %892 to i64, !dbg !2105
  %894 = load i8*, i8** %7, align 8, !dbg !2106
  %895 = getelementptr inbounds i8, i8* %894, i64 %893, !dbg !2106
  store i8* %895, i8** %7, align 8, !dbg !2106
  br label %896, !dbg !2107

; <label>:896:                                    ; preds = %882, %876
  %897 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2108
  %898 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %897, i32 0, i32 33, !dbg !2110
  %899 = load i32, i32* %898, align 8, !dbg !2110
  %900 = and i32 %899, 524288, !dbg !2111
  %901 = icmp ne i32 %900, 0, !dbg !2111
  br i1 %901, label %902, label %918, !dbg !2112

; <label>:902:                                    ; preds = %896
  %903 = load i8*, i8** %7, align 8, !dbg !2113
  %904 = load i8*, i8** %8, align 8, !dbg !2114
  %905 = load i8*, i8** %7, align 8, !dbg !2115
  %906 = ptrtoint i8* %904 to i64, !dbg !2116
  %907 = ptrtoint i8* %905 to i64, !dbg !2116
  %908 = sub i64 %906, %907, !dbg !2116
  %909 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2117
  %910 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %909, i32 0, i32 13, !dbg !2118
  %911 = load i8, i8* %910, align 8, !dbg !2118
  %912 = trunc i8 %911 to i1, !dbg !2118
  %913 = zext i1 %912 to i32, !dbg !2117
  %914 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %903, i64 %908, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i32 %913) #9, !dbg !2119
  %915 = sext i32 %914 to i64, !dbg !2120
  %916 = load i8*, i8** %7, align 8, !dbg !2121
  %917 = getelementptr inbounds i8, i8* %916, i64 %915, !dbg !2121
  store i8* %917, i8** %7, align 8, !dbg !2121
  br label %918, !dbg !2122

; <label>:918:                                    ; preds = %902, %896
  %919 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2123
  %920 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %919, i32 0, i32 33, !dbg !2125
  %921 = load i32, i32* %920, align 8, !dbg !2125
  %922 = and i32 %921, 1048576, !dbg !2126
  %923 = icmp ne i32 %922, 0, !dbg !2126
  br i1 %923, label %924, label %959, !dbg !2127

; <label>:924:                                    ; preds = %918
  %925 = load i8*, i8** %7, align 8, !dbg !2128
  %926 = load i8*, i8** %8, align 8, !dbg !2129
  %927 = load i8*, i8** %7, align 8, !dbg !2130
  %928 = ptrtoint i8* %926 to i64, !dbg !2131
  %929 = ptrtoint i8* %927 to i64, !dbg !2131
  %930 = sub i64 %928, %929, !dbg !2131
  %931 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2132
  %932 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %931, i32 0, i32 28, !dbg !2133
  %933 = load i8, i8* %932, align 8, !dbg !2133
  %934 = zext i8 %933 to i32, !dbg !2132
  %935 = icmp eq i32 %934, 3, !dbg !2134
  br i1 %935, label %936, label %937, !dbg !2132

; <label>:936:                                    ; preds = %924
  br label %953, !dbg !2135

; <label>:937:                                    ; preds = %924
  %938 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2137
  %939 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %938, i32 0, i32 28, !dbg !2138
  %940 = load i8, i8* %939, align 8, !dbg !2138
  %941 = zext i8 %940 to i32, !dbg !2137
  %942 = icmp eq i32 %941, 0, !dbg !2139
  br i1 %942, label %943, label %944, !dbg !2137

; <label>:943:                                    ; preds = %937
  br label %951, !dbg !2140

; <label>:944:                                    ; preds = %937
  %945 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2141
  %946 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %945, i32 0, i32 28, !dbg !2142
  %947 = load i8, i8* %946, align 8, !dbg !2142
  %948 = zext i8 %947 to i32, !dbg !2141
  %949 = icmp eq i32 %948, 1, !dbg !2143
  %950 = select i1 %949, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), !dbg !2141
  br label %951, !dbg !2144

; <label>:951:                                    ; preds = %944, %943
  %952 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), %943 ], [ %950, %944 ], !dbg !2146
  br label %953, !dbg !2148

; <label>:953:                                    ; preds = %951, %936
  %954 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), %936 ], [ %952, %951 ], !dbg !2149
  %955 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %925, i64 %930, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* %954) #9, !dbg !2150
  %956 = sext i32 %955 to i64, !dbg !2151
  %957 = load i8*, i8** %7, align 8, !dbg !2152
  %958 = getelementptr inbounds i8, i8* %957, i64 %956, !dbg !2152
  store i8* %958, i8** %7, align 8, !dbg !2152
  br label %959, !dbg !2153

; <label>:959:                                    ; preds = %953, %918
  %960 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2154
  %961 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %960, i32 0, i32 32, !dbg !2156
  %962 = load %struct._list*, %struct._list** %961, align 8, !dbg !2156
  %963 = icmp eq %struct._list* %962, null, !dbg !2157
  br i1 %963, label %1176, label %964, !dbg !2158

; <label>:964:                                    ; preds = %959
  %965 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2159
  %966 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %965, i32 0, i32 32, !dbg !2161
  %967 = load %struct._list*, %struct._list** %966, align 8, !dbg !2161
  %968 = getelementptr inbounds %struct._list, %struct._list* %967, i32 0, i32 0, !dbg !2162
  %969 = load %struct._element*, %struct._element** %968, align 8, !dbg !2162
  %970 = icmp eq %struct._element* %969, null, !dbg !2163
  br i1 %970, label %971, label %978, !dbg !2164

; <label>:971:                                    ; preds = %964
  %972 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2165
  %973 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %972, i32 0, i32 32, !dbg !2167
  %974 = load %struct._list*, %struct._list** %973, align 8, !dbg !2167
  %975 = getelementptr inbounds %struct._list, %struct._list* %974, i32 0, i32 1, !dbg !2168
  %976 = load %struct._element*, %struct._element** %975, align 8, !dbg !2168
  %977 = icmp eq %struct._element* %976, null, !dbg !2169
  br i1 %977, label %1176, label %978, !dbg !2170

; <label>:978:                                    ; preds = %971, %964
  %979 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2171
  %980 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %979, i32 0, i32 32, !dbg !2174
  %981 = load %struct._list*, %struct._list** %980, align 8, !dbg !2174
  %982 = icmp ne %struct._list* %981, null, !dbg !2175
  br i1 %982, label %984, label %983, !dbg !2176

; <label>:983:                                    ; preds = %978
  br label %990, !dbg !2177

; <label>:984:                                    ; preds = %978
  %985 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2179
  %986 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %985, i32 0, i32 32, !dbg !2181
  %987 = load %struct._list*, %struct._list** %986, align 8, !dbg !2181
  %988 = getelementptr inbounds %struct._list, %struct._list* %987, i32 0, i32 0, !dbg !2182
  %989 = load %struct._element*, %struct._element** %988, align 8, !dbg !2182
  br label %990, !dbg !2183

; <label>:990:                                    ; preds = %984, %983
  %991 = phi %struct._element* [ null, %983 ], [ %989, %984 ], !dbg !2184
  store %struct._element* %991, %struct._element** %11, align 8, !dbg !2186
  br label %992, !dbg !2187

; <label>:992:                                    ; preds = %1171, %990
  %993 = load %struct._element*, %struct._element** %11, align 8, !dbg !2188
  %994 = icmp ne %struct._element* %993, null, !dbg !2191
  br i1 %994, label %995, label %1175, !dbg !2191

; <label>:995:                                    ; preds = %992
  %996 = load %struct._element*, %struct._element** %11, align 8, !dbg !2192
  %997 = getelementptr inbounds %struct._element, %struct._element* %996, i32 0, i32 2, !dbg !2194
  %998 = load i8*, i8** %997, align 8, !dbg !2194
  %999 = bitcast i8* %998 to %struct._nexthop*, !dbg !2195
  store %struct._nexthop* %999, %struct._nexthop** %9, align 8, !dbg !2196
  %1000 = load i8*, i8** %7, align 8, !dbg !2197
  %1001 = load i8*, i8** %8, align 8, !dbg !2198
  %1002 = load i8*, i8** %7, align 8, !dbg !2199
  %1003 = ptrtoint i8* %1001 to i64, !dbg !2200
  %1004 = ptrtoint i8* %1002 to i64, !dbg !2200
  %1005 = sub i64 %1003, %1004, !dbg !2200
  %1006 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1000, i64 %1005, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0)) #9, !dbg !2201
  %1007 = sext i32 %1006 to i64, !dbg !2202
  %1008 = load i8*, i8** %7, align 8, !dbg !2203
  %1009 = getelementptr inbounds i8, i8* %1008, i64 %1007, !dbg !2203
  store i8* %1009, i8** %7, align 8, !dbg !2203
  %1010 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2204
  %1011 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1010, i32 0, i32 1, !dbg !2206
  %1012 = load %struct._ip_address*, %struct._ip_address** %1011, align 8, !dbg !2206
  %1013 = icmp ne %struct._ip_address* %1012, null, !dbg !2204
  br i1 %1013, label %1014, label %1038, !dbg !2207

; <label>:1014:                                   ; preds = %995
  %1015 = load i8*, i8** %7, align 8, !dbg !2208
  %1016 = load i8*, i8** %8, align 8, !dbg !2209
  %1017 = load i8*, i8** %7, align 8, !dbg !2210
  %1018 = ptrtoint i8* %1016 to i64, !dbg !2211
  %1019 = ptrtoint i8* %1017 to i64, !dbg !2211
  %1020 = sub i64 %1018, %1019, !dbg !2211
  %1021 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2212
  %1022 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1021, i32 0, i32 1, !dbg !2213
  %1023 = load %struct._ip_address*, %struct._ip_address** %1022, align 8, !dbg !2213
  %1024 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %1023, i32 0, i32 0, !dbg !2214
  %1025 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %1024, i32 0, i32 0, !dbg !2215
  %1026 = load i8, i8* %1025, align 8, !dbg !2215
  %1027 = zext i8 %1026 to i32, !dbg !2212
  %1028 = icmp eq i32 %1027, 2, !dbg !2216
  %1029 = select i1 %1028, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), !dbg !2212
  %1030 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2217
  %1031 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1030, i32 0, i32 1, !dbg !2218
  %1032 = load %struct._ip_address*, %struct._ip_address** %1031, align 8, !dbg !2218
  %1033 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %1032), !dbg !2219
  %1034 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1015, i64 %1020, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* %1029, i8* %1033) #9, !dbg !2220
  %1035 = sext i32 %1034 to i64, !dbg !2221
  %1036 = load i8*, i8** %7, align 8, !dbg !2222
  %1037 = getelementptr inbounds i8, i8* %1036, i64 %1035, !dbg !2222
  store i8* %1037, i8** %7, align 8, !dbg !2222
  br label %1038, !dbg !2223

; <label>:1038:                                   ; preds = %1014, %995
  %1039 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2224
  %1040 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1039, i32 0, i32 2, !dbg !2226
  %1041 = load %struct._interface*, %struct._interface** %1040, align 8, !dbg !2226
  %1042 = icmp ne %struct._interface* %1041, null, !dbg !2224
  br i1 %1042, label %1043, label %1059, !dbg !2227

; <label>:1043:                                   ; preds = %1038
  %1044 = load i8*, i8** %7, align 8, !dbg !2228
  %1045 = load i8*, i8** %8, align 8, !dbg !2229
  %1046 = load i8*, i8** %7, align 8, !dbg !2230
  %1047 = ptrtoint i8* %1045 to i64, !dbg !2231
  %1048 = ptrtoint i8* %1046 to i64, !dbg !2231
  %1049 = sub i64 %1047, %1048, !dbg !2231
  %1050 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2232
  %1051 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1050, i32 0, i32 2, !dbg !2233
  %1052 = load %struct._interface*, %struct._interface** %1051, align 8, !dbg !2233
  %1053 = getelementptr inbounds %struct._interface, %struct._interface* %1052, i32 0, i32 0, !dbg !2234
  %1054 = getelementptr inbounds [16 x i8], [16 x i8]* %1053, i32 0, i32 0, !dbg !2232
  %1055 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1044, i64 %1049, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %1054) #9, !dbg !2235
  %1056 = sext i32 %1055 to i64, !dbg !2236
  %1057 = load i8*, i8** %7, align 8, !dbg !2237
  %1058 = getelementptr inbounds i8, i8* %1057, i64 %1056, !dbg !2237
  store i8* %1058, i8** %7, align 8, !dbg !2237
  br label %1059, !dbg !2238

; <label>:1059:                                   ; preds = %1043, %1038
  %1060 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2239
  %1061 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1060, i32 0, i32 0, !dbg !2241
  %1062 = load i32, i32* %1061, align 8, !dbg !2241
  %1063 = and i32 %1062, 32, !dbg !2242
  %1064 = icmp ne i32 %1063, 0, !dbg !2242
  br i1 %1064, label %1065, label %1081, !dbg !2243

; <label>:1065:                                   ; preds = %1059
  %1066 = load i8*, i8** %7, align 8, !dbg !2244
  %1067 = load i8*, i8** %8, align 8, !dbg !2245
  %1068 = load i8*, i8** %7, align 8, !dbg !2246
  %1069 = ptrtoint i8* %1067 to i64, !dbg !2247
  %1070 = ptrtoint i8* %1068 to i64, !dbg !2247
  %1071 = sub i64 %1069, %1070, !dbg !2247
  %1072 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2248
  %1073 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1072, i32 0, i32 3, !dbg !2249
  %1074 = load i8, i8* %1073, align 8, !dbg !2249
  %1075 = zext i8 %1074 to i32, !dbg !2248
  %1076 = add nsw i32 %1075, 1, !dbg !2250
  %1077 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1066, i64 %1071, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 %1076) #9, !dbg !2251
  %1078 = sext i32 %1077 to i64, !dbg !2252
  %1079 = load i8*, i8** %7, align 8, !dbg !2253
  %1080 = getelementptr inbounds i8, i8* %1079, i64 %1078, !dbg !2253
  store i8* %1080, i8** %7, align 8, !dbg !2253
  br label %1081, !dbg !2254

; <label>:1081:                                   ; preds = %1065, %1059
  %1082 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2255
  %1083 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1082, i32 0, i32 4, !dbg !2257
  %1084 = load i8, i8* %1083, align 1, !dbg !2257
  %1085 = zext i8 %1084 to i32, !dbg !2255
  %1086 = and i32 %1085, 4, !dbg !2258
  %1087 = icmp ne i32 %1086, 0, !dbg !2258
  br i1 %1087, label %1088, label %1099, !dbg !2259

; <label>:1088:                                   ; preds = %1081
  %1089 = load i8*, i8** %7, align 8, !dbg !2260
  %1090 = load i8*, i8** %8, align 8, !dbg !2261
  %1091 = load i8*, i8** %7, align 8, !dbg !2262
  %1092 = ptrtoint i8* %1090 to i64, !dbg !2263
  %1093 = ptrtoint i8* %1091 to i64, !dbg !2263
  %1094 = sub i64 %1092, %1093, !dbg !2263
  %1095 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1089, i64 %1094, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !2264
  %1096 = sext i32 %1095 to i64, !dbg !2265
  %1097 = load i8*, i8** %7, align 8, !dbg !2266
  %1098 = getelementptr inbounds i8, i8* %1097, i64 %1096, !dbg !2266
  store i8* %1098, i8** %7, align 8, !dbg !2266
  br label %1099, !dbg !2267

; <label>:1099:                                   ; preds = %1088, %1081
  %1100 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2268
  %1101 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1100, i32 0, i32 5, !dbg !2270
  %1102 = load i32, i32* %1101, align 4, !dbg !2270
  %1103 = icmp ne i32 %1102, 0, !dbg !2268
  br i1 %1103, label %1104, label %1151, !dbg !2271

; <label>:1104:                                   ; preds = %1099
  %1105 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2272
  %1106 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1105, i32 0, i32 30, !dbg !2275
  %1107 = load i32, i32* %1106, align 4, !dbg !2275
  %1108 = and i32 %1107, -65536, !dbg !2276
  %1109 = icmp ne i32 %1108, 0, !dbg !2276
  br i1 %1109, label %1110, label %1125, !dbg !2277

; <label>:1110:                                   ; preds = %1104
  %1111 = load i8*, i8** %7, align 8, !dbg !2278
  %1112 = load i8*, i8** %8, align 8, !dbg !2279
  %1113 = load i8*, i8** %7, align 8, !dbg !2280
  %1114 = ptrtoint i8* %1112 to i64, !dbg !2281
  %1115 = ptrtoint i8* %1113 to i64, !dbg !2281
  %1116 = sub i64 %1114, %1115, !dbg !2281
  %1117 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2282
  %1118 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1117, i32 0, i32 5, !dbg !2283
  %1119 = load i32, i32* %1118, align 4, !dbg !2283
  %1120 = lshr i32 %1119, 16, !dbg !2284
  %1121 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1111, i64 %1116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %1120) #9, !dbg !2285
  %1122 = sext i32 %1121 to i64, !dbg !2286
  %1123 = load i8*, i8** %7, align 8, !dbg !2287
  %1124 = getelementptr inbounds i8, i8* %1123, i64 %1122, !dbg !2287
  store i8* %1124, i8** %7, align 8, !dbg !2287
  br label %1136, !dbg !2288

; <label>:1125:                                   ; preds = %1104
  %1126 = load i8*, i8** %7, align 8, !dbg !2289
  %1127 = load i8*, i8** %8, align 8, !dbg !2290
  %1128 = load i8*, i8** %7, align 8, !dbg !2291
  %1129 = ptrtoint i8* %1127 to i64, !dbg !2292
  %1130 = ptrtoint i8* %1128 to i64, !dbg !2292
  %1131 = sub i64 %1129, %1130, !dbg !2292
  %1132 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1126, i64 %1131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !2293
  %1133 = sext i32 %1132 to i64, !dbg !2294
  %1134 = load i8*, i8** %7, align 8, !dbg !2295
  %1135 = getelementptr inbounds i8, i8* %1134, i64 %1133, !dbg !2295
  store i8* %1135, i8** %7, align 8, !dbg !2295
  br label %1136

; <label>:1136:                                   ; preds = %1125, %1110
  %1137 = load i8*, i8** %7, align 8, !dbg !2296
  %1138 = load i8*, i8** %8, align 8, !dbg !2297
  %1139 = load i8*, i8** %7, align 8, !dbg !2298
  %1140 = ptrtoint i8* %1138 to i64, !dbg !2299
  %1141 = ptrtoint i8* %1139 to i64, !dbg !2299
  %1142 = sub i64 %1140, %1141, !dbg !2299
  %1143 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2300
  %1144 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1143, i32 0, i32 5, !dbg !2301
  %1145 = load i32, i32* %1144, align 4, !dbg !2301
  %1146 = and i32 %1145, 65535, !dbg !2302
  %1147 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1137, i64 %1142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %1146) #9, !dbg !2303
  %1148 = sext i32 %1147 to i64, !dbg !2304
  %1149 = load i8*, i8** %7, align 8, !dbg !2305
  %1150 = getelementptr inbounds i8, i8* %1149, i64 %1148, !dbg !2305
  store i8* %1150, i8** %7, align 8, !dbg !2305
  br label %1151, !dbg !2306

; <label>:1151:                                   ; preds = %1136, %1099
  %1152 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2307
  %1153 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1152, i32 0, i32 6, !dbg !2309
  %1154 = getelementptr inbounds %struct._encap, %struct._encap* %1153, i32 0, i32 0, !dbg !2310
  %1155 = load i16, i16* %1154, align 8, !dbg !2310
  %1156 = zext i16 %1155 to i32, !dbg !2307
  %1157 = icmp ne i32 %1156, 0, !dbg !2311
  br i1 %1157, label %1158, label %1170, !dbg !2312

; <label>:1158:                                   ; preds = %1151
  %1159 = load i8*, i8** %7, align 8, !dbg !2313
  %1160 = load i8*, i8** %8, align 8, !dbg !2314
  %1161 = load i8*, i8** %7, align 8, !dbg !2315
  %1162 = ptrtoint i8* %1160 to i64, !dbg !2316
  %1163 = ptrtoint i8* %1161 to i64, !dbg !2316
  %1164 = sub i64 %1162, %1163, !dbg !2316
  %1165 = load %struct._nexthop*, %struct._nexthop** %9, align 8, !dbg !2317
  %1166 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1165, i32 0, i32 6, !dbg !2318
  %1167 = call i64 @print_encap(i8* %1159, i64 %1164, %struct._encap* %1166), !dbg !2319
  %1168 = load i8*, i8** %7, align 8, !dbg !2320
  %1169 = getelementptr inbounds i8, i8* %1168, i64 %1167, !dbg !2320
  store i8* %1169, i8** %7, align 8, !dbg !2320
  br label %1170, !dbg !2321

; <label>:1170:                                   ; preds = %1158, %1151
  br label %1171, !dbg !2322

; <label>:1171:                                   ; preds = %1170
  %1172 = load %struct._element*, %struct._element** %11, align 8, !dbg !2323
  %1173 = getelementptr inbounds %struct._element, %struct._element* %1172, i32 0, i32 0, !dbg !2325
  %1174 = load %struct._element*, %struct._element** %1173, align 8, !dbg !2325
  store %struct._element* %1174, %struct._element** %11, align 8, !dbg !2326
  br label %992, !dbg !2327, !llvm.loop !2328

; <label>:1175:                                   ; preds = %992
  br label %1176, !dbg !2330

; <label>:1176:                                   ; preds = %1175, %971, %959
  %1177 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2331
  %1178 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1177, i32 0, i32 34, !dbg !2333
  %1179 = load i8, i8* %1178, align 4, !dbg !2333
  %1180 = trunc i8 %1179 to i1, !dbg !2333
  br i1 %1180, label %1181, label %1192, !dbg !2334

; <label>:1181:                                   ; preds = %1176
  %1182 = load i8*, i8** %7, align 8, !dbg !2335
  %1183 = load i8*, i8** %8, align 8, !dbg !2336
  %1184 = load i8*, i8** %7, align 8, !dbg !2337
  %1185 = ptrtoint i8* %1183 to i64, !dbg !2338
  %1186 = ptrtoint i8* %1184 to i64, !dbg !2338
  %1187 = sub i64 %1185, %1186, !dbg !2338
  %1188 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1182, i64 %1187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0)) #9, !dbg !2339
  %1189 = sext i32 %1188 to i64, !dbg !2340
  %1190 = load i8*, i8** %7, align 8, !dbg !2341
  %1191 = getelementptr inbounds i8, i8* %1190, i64 %1189, !dbg !2341
  store i8* %1191, i8** %7, align 8, !dbg !2341
  br label %1192, !dbg !2342

; <label>:1192:                                   ; preds = %1181, %1176
  %1193 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2343
  %1194 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1193, i32 0, i32 35, !dbg !2345
  %1195 = load %struct._static_track_group*, %struct._static_track_group** %1194, align 8, !dbg !2345
  %1196 = icmp ne %struct._static_track_group* %1195, null, !dbg !2343
  br i1 %1196, label %1197, label %1213, !dbg !2346

; <label>:1197:                                   ; preds = %1192
  %1198 = load i8*, i8** %7, align 8, !dbg !2347
  %1199 = load i8*, i8** %8, align 8, !dbg !2348
  %1200 = load i8*, i8** %7, align 8, !dbg !2349
  %1201 = ptrtoint i8* %1199 to i64, !dbg !2350
  %1202 = ptrtoint i8* %1200 to i64, !dbg !2350
  %1203 = sub i64 %1201, %1202, !dbg !2350
  %1204 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2351
  %1205 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1204, i32 0, i32 35, !dbg !2352
  %1206 = load %struct._static_track_group*, %struct._static_track_group** %1205, align 8, !dbg !2352
  %1207 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %1206, i32 0, i32 0, !dbg !2353
  %1208 = load i8*, i8** %1207, align 8, !dbg !2353
  %1209 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1198, i64 %1203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* %1208) #9, !dbg !2354
  %1210 = sext i32 %1209 to i64, !dbg !2355
  %1211 = load i8*, i8** %7, align 8, !dbg !2356
  %1212 = getelementptr inbounds i8, i8* %1211, i64 %1210, !dbg !2356
  store i8* %1212, i8** %7, align 8, !dbg !2356
  br label %1213, !dbg !2357

; <label>:1213:                                   ; preds = %1197, %1192
  %1214 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2358
  %1215 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1214, i32 0, i32 36, !dbg !2360
  %1216 = load i8, i8* %1215, align 8, !dbg !2360
  %1217 = trunc i8 %1216 to i1, !dbg !2360
  br i1 %1217, label %1218, label %1273, !dbg !2361

; <label>:1218:                                   ; preds = %1213
  %1219 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2362
  %1220 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1219, i32 0, i32 34, !dbg !2363
  %1221 = load i8, i8* %1220, align 4, !dbg !2363
  %1222 = trunc i8 %1221 to i1, !dbg !2363
  br i1 %1222, label %1273, label %1223, !dbg !2364

; <label>:1223:                                   ; preds = %1218
  %1224 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2365
  %1225 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1224, i32 0, i32 10, !dbg !2366
  %1226 = load %struct._interface*, %struct._interface** %1225, align 8, !dbg !2366
  %1227 = icmp ne %struct._interface* %1226, null, !dbg !2365
  br i1 %1227, label %1228, label %1238, !dbg !2367

; <label>:1228:                                   ; preds = %1223
  %1229 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2368
  %1230 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1229, i32 0, i32 10, !dbg !2370
  %1231 = load %struct._interface*, %struct._interface** %1230, align 8, !dbg !2370
  %1232 = getelementptr inbounds %struct._interface, %struct._interface* %1231, i32 0, i32 1, !dbg !2371
  %1233 = load i32, i32* %1232, align 8, !dbg !2371
  %1234 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2372
  %1235 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1234, i32 0, i32 37, !dbg !2373
  %1236 = load i32, i32* %1235, align 4, !dbg !2373
  %1237 = icmp ne i32 %1233, %1236, !dbg !2374
  br i1 %1237, label %1238, label %1273, !dbg !2375

; <label>:1238:                                   ; preds = %1228, %1223
  %1239 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2377
  %1240 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1239, i32 0, i32 37, !dbg !2380
  %1241 = load i32, i32* %1240, align 4, !dbg !2380
  %1242 = call %struct._interface* @if_get_by_ifindex(i32 %1241), !dbg !2381
  store %struct._interface* %1242, %struct._interface** %10, align 8, !dbg !2382
  %1243 = icmp ne %struct._interface* %1242, null, !dbg !2382
  br i1 %1243, label %1244, label %1258, !dbg !2383

; <label>:1244:                                   ; preds = %1238
  %1245 = load i8*, i8** %7, align 8, !dbg !2384
  %1246 = load i8*, i8** %8, align 8, !dbg !2385
  %1247 = load i8*, i8** %7, align 8, !dbg !2386
  %1248 = ptrtoint i8* %1246 to i64, !dbg !2387
  %1249 = ptrtoint i8* %1247 to i64, !dbg !2387
  %1250 = sub i64 %1248, %1249, !dbg !2387
  %1251 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !2388
  %1252 = getelementptr inbounds %struct._interface, %struct._interface* %1251, i32 0, i32 0, !dbg !2389
  %1253 = getelementptr inbounds [16 x i8], [16 x i8]* %1252, i32 0, i32 0, !dbg !2388
  %1254 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1245, i64 %1250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* %1253) #9, !dbg !2390
  %1255 = sext i32 %1254 to i64, !dbg !2391
  %1256 = load i8*, i8** %7, align 8, !dbg !2392
  %1257 = getelementptr inbounds i8, i8* %1256, i64 %1255, !dbg !2392
  store i8* %1257, i8** %7, align 8, !dbg !2392
  br label %1272, !dbg !2393

; <label>:1258:                                   ; preds = %1238
  %1259 = load i8*, i8** %7, align 8, !dbg !2394
  %1260 = load i8*, i8** %8, align 8, !dbg !2395
  %1261 = load i8*, i8** %7, align 8, !dbg !2396
  %1262 = ptrtoint i8* %1260 to i64, !dbg !2397
  %1263 = ptrtoint i8* %1261 to i64, !dbg !2397
  %1264 = sub i64 %1262, %1263, !dbg !2397
  %1265 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !2398
  %1266 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1265, i32 0, i32 37, !dbg !2399
  %1267 = load i32, i32* %1266, align 4, !dbg !2399
  %1268 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1259, i64 %1264, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i32 %1267) #9, !dbg !2400
  %1269 = sext i32 %1268 to i64, !dbg !2401
  %1270 = load i8*, i8** %7, align 8, !dbg !2402
  %1271 = getelementptr inbounds i8, i8* %1270, i64 %1269, !dbg !2402
  store i8* %1271, i8** %7, align 8, !dbg !2402
  br label %1272

; <label>:1272:                                   ; preds = %1258, %1244
  br label %1273, !dbg !2403

; <label>:1273:                                   ; preds = %1272, %1228, %1218, %1213
  ret void, !dbg !2404
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i8* @get_rttables_rtntype(i8 zeroext) #2

declare i8* @ipaddresstos(i8*, %struct._ip_address*) #2

; Function Attrs: nounwind uwtable
define internal i64 @print_encap(i8*, i64, %struct._encap*) #0 !dbg !2405 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._encap*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2410, metadata !581), !dbg !2411
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2412, metadata !581), !dbg !2413
  store %struct._encap* %2, %struct._encap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %7, metadata !2414, metadata !581), !dbg !2415
  %8 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !2416
  %9 = getelementptr inbounds %struct._encap, %struct._encap* %8, i32 0, i32 0, !dbg !2417
  %10 = load i16, i16* %9, align 8, !dbg !2417
  %11 = zext i16 %10 to i32, !dbg !2416
  switch i32 %11, label %32 [
    i32 1, label %12
    i32 2, label %17
    i32 3, label %22
    i32 4, label %27
  ], !dbg !2418

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !2419
  %14 = load i64, i64* %6, align 8, !dbg !2421
  %15 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !2422
  %16 = call i64 @print_encap_mpls(i8* %13, i64 %14, %struct._encap* %15), !dbg !2423
  store i64 %16, i64* %4, align 8, !dbg !2424
  br label %41, !dbg !2424

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %5, align 8, !dbg !2425
  %19 = load i64, i64* %6, align 8, !dbg !2426
  %20 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !2427
  %21 = call i64 @print_encap_ip(i8* %18, i64 %19, %struct._encap* %20), !dbg !2428
  store i64 %21, i64* %4, align 8, !dbg !2429
  br label %41, !dbg !2429

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %5, align 8, !dbg !2430
  %24 = load i64, i64* %6, align 8, !dbg !2431
  %25 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !2432
  %26 = call i64 @print_encap_ila(i8* %23, i64 %24, %struct._encap* %25), !dbg !2433
  store i64 %26, i64* %4, align 8, !dbg !2434
  br label %41, !dbg !2434

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** %5, align 8, !dbg !2435
  %29 = load i64, i64* %6, align 8, !dbg !2436
  %30 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !2437
  %31 = call i64 @print_encap_ip6(i8* %28, i64 %29, %struct._encap* %30), !dbg !2438
  store i64 %31, i64* %4, align 8, !dbg !2439
  br label %41, !dbg !2439

; <label>:32:                                     ; preds = %3
  %33 = load i8*, i8** %5, align 8, !dbg !2440
  %34 = load i64, i64* %6, align 8, !dbg !2441
  %35 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !2442
  %36 = getelementptr inbounds %struct._encap, %struct._encap* %35, i32 0, i32 0, !dbg !2443
  %37 = load i16, i16* %36, align 8, !dbg !2443
  %38 = zext i16 %37 to i32, !dbg !2442
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.142, i32 0, i32 0), i32 %38) #9, !dbg !2444
  %40 = sext i32 %39 to i64, !dbg !2445
  store i64 %40, i64* %4, align 8, !dbg !2446
  br label %41, !dbg !2446

; <label>:41:                                     ; preds = %32, %27, %22, %17, %12
  %42 = load i64, i64* %4, align 8, !dbg !2447
  ret i64 %42, !dbg !2447
}

declare %struct._interface* @if_get_by_ifindex(i32) #2

; Function Attrs: nounwind uwtable
define void @dump_iproute(%struct._IO_FILE*, i8*) #0 !dbg !2448 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._ip_route*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2449, metadata !581), !dbg !2450
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2451, metadata !581), !dbg !2452
  call void @llvm.dbg.declare(metadata %struct._ip_route** %5, metadata !2453, metadata !581), !dbg !2454
  %9 = load i8*, i8** %4, align 8, !dbg !2455
  %10 = bitcast i8* %9 to %struct._ip_route*, !dbg !2455
  store %struct._ip_route* %10, %struct._ip_route** %5, align 8, !dbg !2454
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2456, metadata !581), !dbg !2457
  %11 = call i8* @zalloc(i64 1024), !dbg !2458
  store i8* %11, i8** %6, align 8, !dbg !2457
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2459, metadata !581), !dbg !2460
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2461, metadata !581), !dbg !2462
  %12 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !2463
  %13 = load i8*, i8** %6, align 8, !dbg !2464
  call void @format_iproute(%struct._ip_route* %12, i8* %13, i64 1024), !dbg !2465
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2466
  %15 = icmp ne %struct._IO_FILE* %14, null, !dbg !2466
  br i1 %15, label %16, label %19, !dbg !2468

; <label>:16:                                     ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2469
  %18 = load i8*, i8** %6, align 8, !dbg !2470
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* %18), !dbg !2471
  br label %42, !dbg !2471

; <label>:19:                                     ; preds = %2
  store i64 0, i64* %8, align 8, !dbg !2472
  %20 = load i8*, i8** %6, align 8, !dbg !2475
  %21 = call i64 @strlen(i8* %20) #8, !dbg !2476
  store i64 %21, i64* %7, align 8, !dbg !2477
  br label %22, !dbg !2478

; <label>:22:                                     ; preds = %34, %19
  %23 = load i64, i64* %8, align 8, !dbg !2479
  %24 = load i64, i64* %7, align 8, !dbg !2482
  %25 = icmp ult i64 %23, %24, !dbg !2483
  br i1 %25, label %26, label %41, !dbg !2484

; <label>:26:                                     ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2485
  %28 = load i64, i64* %8, align 8, !dbg !2486
  %29 = icmp ne i64 %28, 0, !dbg !2486
  %30 = select i1 %29, i32 6, i32 5, !dbg !2486
  %31 = load i8*, i8** %6, align 8, !dbg !2487
  %32 = load i64, i64* %8, align 8, !dbg !2488
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !2489
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* %33), !dbg !2490
  br label %34, !dbg !2490

; <label>:34:                                     ; preds = %26
  %35 = load i64, i64* %8, align 8, !dbg !2491
  %36 = icmp ne i64 %35, 0, !dbg !2491
  %37 = select i1 %36, i32 248, i32 250, !dbg !2491
  %38 = sext i32 %37 to i64, !dbg !2491
  %39 = load i64, i64* %8, align 8, !dbg !2493
  %40 = add i64 %39, %38, !dbg !2493
  store i64 %40, i64* %8, align 8, !dbg !2493
  br label %22, !dbg !2494, !llvm.loop !2495

; <label>:41:                                     ; preds = %22
  br label %42

; <label>:42:                                     ; preds = %41, %16
  %43 = load i8*, i8** %6, align 8, !dbg !2497
  call void @free(i8* %43) #9, !dbg !2498
  store i8* null, i8** %6, align 8, !dbg !2499
  ret void, !dbg !2500
}

declare i8* @zalloc(i64) #2

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @alloc_route(%struct._list*, %struct._vector*, i1 zeroext) #0 !dbg !2501 {
  %4 = alloca %struct._list*, align 8
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct._ip_route*, align 8
  %8 = alloca %struct._interface*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct._ip_address*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca %struct._nexthop*, align 8
  store %struct._list* %0, %struct._list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %4, metadata !2504, metadata !581), !dbg !2505
  store %struct._vector* %1, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !2506, metadata !581), !dbg !2507
  %19 = zext i1 %2 to i8
  store i8 %19, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2508, metadata !581), !dbg !2509
  call void @llvm.dbg.declare(metadata %struct._ip_route** %7, metadata !2510, metadata !581), !dbg !2511
  call void @llvm.dbg.declare(metadata %struct._interface** %8, metadata !2512, metadata !581), !dbg !2513
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2514, metadata !581), !dbg !2515
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2516, metadata !581), !dbg !2517
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2518, metadata !581), !dbg !2519
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2520, metadata !581), !dbg !2521
  store i32 0, i32* %12, align 4, !dbg !2521
  call void @llvm.dbg.declare(metadata i8* %13, metadata !2522, metadata !581), !dbg !2523
  store i8 0, i8* %13, align 1, !dbg !2523
  call void @llvm.dbg.declare(metadata i8* %14, metadata !2524, metadata !581), !dbg !2525
  call void @llvm.dbg.declare(metadata %struct._ip_address** %15, metadata !2526, metadata !581), !dbg !2527
  call void @llvm.dbg.declare(metadata i8* %16, metadata !2528, metadata !581), !dbg !2529
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2530, metadata !581), !dbg !2531
  store i8* null, i8** %17, align 8, !dbg !2531
  %20 = call i8* @zalloc(i64 208), !dbg !2532
  %21 = bitcast i8* %20 to %struct._ip_route*, !dbg !2533
  store %struct._ip_route* %21, %struct._ip_route** %7, align 8, !dbg !2534
  %22 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2535
  %23 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %22, i32 0, i32 5, !dbg !2536
  store i32 254, i32* %23, align 4, !dbg !2537
  %24 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2538
  %25 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %24, i32 0, i32 7, !dbg !2539
  store i8 0, i8* %25, align 1, !dbg !2540
  %26 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2541
  %27 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %26, i32 0, i32 29, !dbg !2542
  store i8 1, i8* %27, align 1, !dbg !2543
  %28 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2544
  %29 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %28, i32 0, i32 3, !dbg !2545
  store i8 0, i8* %29, align 8, !dbg !2546
  br label %30, !dbg !2547

; <label>:30:                                     ; preds = %1292, %1080, %3
  %31 = load i32, i32* %12, align 4, !dbg !2548
  %32 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2550
  %33 = getelementptr inbounds %struct._vector, %struct._vector* %32, i32 0, i32 1, !dbg !2551
  %34 = load i32, i32* %33, align 4, !dbg !2551
  %35 = icmp ult i32 %31, %34, !dbg !2552
  br i1 %35, label %36, label %1295, !dbg !2553

; <label>:36:                                     ; preds = %30
  %37 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2554
  %38 = load i32, i32* %12, align 4, !dbg !2556
  %39 = zext i32 %38 to i64, !dbg !2556
  %40 = call i8* @strvec_slot(%struct._vector* %37, i64 %39), !dbg !2557
  store i8* %40, i8** %9, align 8, !dbg !2558
  %41 = load i8*, i8** %9, align 8, !dbg !2559
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !2561
  %43 = icmp ne i32 %42, 0, !dbg !2561
  br i1 %43, label %107, label %44, !dbg !2562

; <label>:44:                                     ; preds = %36
  %45 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2563
  %46 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %45, i32 0, i32 2, !dbg !2566
  %47 = load %struct._ip_address*, %struct._ip_address** %46, align 8, !dbg !2566
  %48 = icmp ne %struct._ip_address* %47, null, !dbg !2563
  br i1 %48, label %49, label %56, !dbg !2567

; <label>:49:                                     ; preds = %44
  %50 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2568
  %51 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %50, i32 0, i32 2, !dbg !2569
  %52 = load %struct._ip_address*, %struct._ip_address** %51, align 8, !dbg !2569
  %53 = bitcast %struct._ip_address* %52 to i8*, !dbg !2568
  call void @free(i8* %53) #9, !dbg !2570
  %54 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2571
  %55 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %54, i32 0, i32 2, !dbg !2572
  store %struct._ip_address* null, %struct._ip_address** %55, align 8, !dbg !2573
  br label %56, !dbg !2574

; <label>:56:                                     ; preds = %49, %44
  %57 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2575
  %58 = load i32, i32* %12, align 4, !dbg !2576
  %59 = add i32 %58, 1, !dbg !2576
  store i32 %59, i32* %12, align 4, !dbg !2576
  %60 = zext i32 %59 to i64, !dbg !2576
  %61 = call i8* @strvec_slot(%struct._vector* %57, i64 %60), !dbg !2577
  %62 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %61, i32 0), !dbg !2578
  %63 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2580
  %64 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %63, i32 0, i32 2, !dbg !2581
  store %struct._ip_address* %62, %struct._ip_address** %64, align 8, !dbg !2582
  %65 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2583
  %66 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %65, i32 0, i32 2, !dbg !2585
  %67 = load %struct._ip_address*, %struct._ip_address** %66, align 8, !dbg !2585
  %68 = icmp ne %struct._ip_address* %67, null, !dbg !2583
  br i1 %68, label %75, label %69, !dbg !2586

; <label>:69:                                     ; preds = %56
  %70 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2587
  %71 = load i32, i32* %12, align 4, !dbg !2589
  %72 = zext i32 %71 to i64, !dbg !2589
  %73 = call i8* @strvec_slot(%struct._vector* %70, i64 %72), !dbg !2590
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0), i8* %73), !dbg !2591
  %74 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2593
  br label %1373, !dbg !2594

; <label>:75:                                     ; preds = %56
  %76 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2595
  %77 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %76, i32 0, i32 3, !dbg !2597
  %78 = load i8, i8* %77, align 8, !dbg !2597
  %79 = zext i8 %78 to i32, !dbg !2595
  %80 = icmp eq i32 %79, 0, !dbg !2598
  br i1 %80, label %81, label %90, !dbg !2599

; <label>:81:                                     ; preds = %75
  %82 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2600
  %83 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %82, i32 0, i32 2, !dbg !2602
  %84 = load %struct._ip_address*, %struct._ip_address** %83, align 8, !dbg !2602
  %85 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %84, i32 0, i32 0, !dbg !2603
  %86 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %85, i32 0, i32 0, !dbg !2604
  %87 = load i8, i8* %86, align 8, !dbg !2604
  %88 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2605
  %89 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %88, i32 0, i32 3, !dbg !2606
  store i8 %87, i8* %89, align 8, !dbg !2607
  br label %106, !dbg !2605

; <label>:90:                                     ; preds = %75
  %91 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2608
  %92 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %91, i32 0, i32 3, !dbg !2610
  %93 = load i8, i8* %92, align 8, !dbg !2610
  %94 = zext i8 %93 to i32, !dbg !2608
  %95 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2611
  %96 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %95, i32 0, i32 2, !dbg !2612
  %97 = load %struct._ip_address*, %struct._ip_address** %96, align 8, !dbg !2612
  %98 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %97, i32 0, i32 0, !dbg !2613
  %99 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %98, i32 0, i32 0, !dbg !2614
  %100 = load i8, i8* %99, align 8, !dbg !2614
  %101 = zext i8 %100 to i32, !dbg !2611
  %102 = icmp ne i32 %94, %101, !dbg !2615
  br i1 %102, label %103, label %105, !dbg !2616

; <label>:103:                                    ; preds = %90
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0)), !dbg !2617
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2619
  br label %1373, !dbg !2620

; <label>:105:                                    ; preds = %90
  br label %106

; <label>:106:                                    ; preds = %105, %81
  br label %1292, !dbg !2621

; <label>:107:                                    ; preds = %36
  %108 = load i8*, i8** %9, align 8, !dbg !2622
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !2624
  %110 = icmp ne i32 %109, 0, !dbg !2624
  br i1 %110, label %123, label %111, !dbg !2625

; <label>:111:                                    ; preds = %107
  %112 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2626
  %113 = load i32, i32* %12, align 4, !dbg !2629
  %114 = add i32 %113, 1, !dbg !2629
  store i32 %114, i32* %12, align 4, !dbg !2629
  %115 = zext i32 %114 to i64, !dbg !2629
  %116 = call i8* @strvec_slot(%struct._vector* %112, i64 %115), !dbg !2630
  %117 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* %116) #8, !dbg !2631
  %118 = icmp ne i32 %117, 0, !dbg !2633
  br i1 %118, label %122, label %119, !dbg !2634

; <label>:119:                                    ; preds = %111
  %120 = load i32, i32* %12, align 4, !dbg !2635
  %121 = add i32 %120, 1, !dbg !2635
  store i32 %121, i32* %12, align 4, !dbg !2635
  br label %122, !dbg !2636

; <label>:122:                                    ; preds = %119, %111
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0)), !dbg !2637
  br label %1291, !dbg !2638

; <label>:123:                                    ; preds = %107
  %124 = load i8*, i8** %9, align 8, !dbg !2639
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !2641
  %126 = icmp ne i32 %125, 0, !dbg !2641
  br i1 %126, label %127, label %131, !dbg !2642

; <label>:127:                                    ; preds = %123
  %128 = load i8*, i8** %9, align 8, !dbg !2643
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0)) #8, !dbg !2645
  %130 = icmp ne i32 %129, 0, !dbg !2645
  br i1 %130, label %247, label %131, !dbg !2646

; <label>:131:                                    ; preds = %127, %123
  %132 = load i8*, i8** %9, align 8, !dbg !2647
  %133 = getelementptr inbounds i8, i8* %132, i64 0, !dbg !2647
  %134 = load i8, i8* %133, align 1, !dbg !2647
  %135 = sext i8 %134 to i32, !dbg !2647
  %136 = icmp eq i32 %135, 103, !dbg !2650
  br i1 %136, label %137, label %138, !dbg !2651

; <label>:137:                                    ; preds = %131
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.65, i32 0, i32 0)), !dbg !2652
  br label %138, !dbg !2652

; <label>:138:                                    ; preds = %137, %131
  %139 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2653
  %140 = load i32, i32* %12, align 4, !dbg !2654
  %141 = add i32 %140, 1, !dbg !2654
  store i32 %141, i32* %12, align 4, !dbg !2654
  %142 = zext i32 %141 to i64, !dbg !2654
  %143 = call i8* @strvec_slot(%struct._vector* %139, i64 %142), !dbg !2655
  store i8* %143, i8** %9, align 8, !dbg !2656
  %144 = load i8*, i8** %9, align 8, !dbg !2657
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !2659
  %146 = icmp ne i32 %145, 0, !dbg !2659
  br i1 %146, label %153, label %147, !dbg !2660

; <label>:147:                                    ; preds = %138
  store i8 2, i8* %16, align 1, !dbg !2661
  %148 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2663
  %149 = load i32, i32* %12, align 4, !dbg !2664
  %150 = add i32 %149, 1, !dbg !2664
  store i32 %150, i32* %12, align 4, !dbg !2664
  %151 = zext i32 %150 to i64, !dbg !2664
  %152 = call i8* @strvec_slot(%struct._vector* %148, i64 %151), !dbg !2665
  store i8* %152, i8** %9, align 8, !dbg !2666
  br label %153, !dbg !2667

; <label>:153:                                    ; preds = %147, %138
  %154 = load i8*, i8** %9, align 8, !dbg !2668
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !2670
  %156 = icmp ne i32 %155, 0, !dbg !2670
  br i1 %156, label %163, label %157, !dbg !2671

; <label>:157:                                    ; preds = %153
  store i8 10, i8* %16, align 1, !dbg !2672
  %158 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2674
  %159 = load i32, i32* %12, align 4, !dbg !2675
  %160 = add i32 %159, 1, !dbg !2675
  store i32 %160, i32* %12, align 4, !dbg !2675
  %161 = zext i32 %160 to i64, !dbg !2675
  %162 = call i8* @strvec_slot(%struct._vector* %158, i64 %161), !dbg !2676
  store i8* %162, i8** %9, align 8, !dbg !2677
  br label %167, !dbg !2678

; <label>:163:                                    ; preds = %153
  %164 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2679
  %165 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %164, i32 0, i32 3, !dbg !2680
  %166 = load i8, i8* %165, align 8, !dbg !2680
  store i8 %166, i8* %16, align 1, !dbg !2681
  br label %167

; <label>:167:                                    ; preds = %163, %157
  %168 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2682
  %169 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %168, i32 0, i32 3, !dbg !2684
  %170 = load i8, i8* %169, align 8, !dbg !2684
  %171 = zext i8 %170 to i32, !dbg !2682
  %172 = icmp eq i32 %171, 0, !dbg !2685
  br i1 %172, label %173, label %177, !dbg !2686

; <label>:173:                                    ; preds = %167
  %174 = load i8, i8* %16, align 1, !dbg !2687
  %175 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2688
  %176 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %175, i32 0, i32 3, !dbg !2689
  store i8 %174, i8* %176, align 8, !dbg !2690
  br label %188, !dbg !2688

; <label>:177:                                    ; preds = %167
  %178 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2691
  %179 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %178, i32 0, i32 3, !dbg !2693
  %180 = load i8, i8* %179, align 8, !dbg !2693
  %181 = zext i8 %180 to i32, !dbg !2691
  %182 = load i8, i8* %16, align 1, !dbg !2694
  %183 = zext i8 %182 to i32, !dbg !2694
  %184 = icmp ne i32 %181, %183, !dbg !2695
  br i1 %184, label %185, label %187, !dbg !2696

; <label>:185:                                    ; preds = %177
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0)), !dbg !2697
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2699
  br label %1373, !dbg !2700

; <label>:187:                                    ; preds = %177
  br label %188

; <label>:188:                                    ; preds = %187, %173
  %189 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2701
  %190 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %189, i32 0, i32 9, !dbg !2703
  %191 = load %struct._ip_address*, %struct._ip_address** %190, align 8, !dbg !2703
  %192 = icmp ne %struct._ip_address* %191, null, !dbg !2701
  br i1 %192, label %193, label %200, !dbg !2704

; <label>:193:                                    ; preds = %188
  %194 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2705
  %195 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %194, i32 0, i32 9, !dbg !2706
  %196 = load %struct._ip_address*, %struct._ip_address** %195, align 8, !dbg !2706
  %197 = bitcast %struct._ip_address* %196 to i8*, !dbg !2705
  call void @free(i8* %197) #9, !dbg !2707
  %198 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2708
  %199 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %198, i32 0, i32 9, !dbg !2709
  store %struct._ip_address* null, %struct._ip_address** %199, align 8, !dbg !2710
  br label %200, !dbg !2711

; <label>:200:                                    ; preds = %193, %188
  %201 = load i8*, i8** %9, align 8, !dbg !2712
  %202 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %201, i32 0), !dbg !2714
  %203 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2715
  %204 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %203, i32 0, i32 9, !dbg !2716
  store %struct._ip_address* %202, %struct._ip_address** %204, align 8, !dbg !2717
  %205 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2718
  %206 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %205, i32 0, i32 9, !dbg !2720
  %207 = load %struct._ip_address*, %struct._ip_address** %206, align 8, !dbg !2720
  %208 = icmp ne %struct._ip_address* %207, null, !dbg !2718
  br i1 %208, label %215, label %209, !dbg !2721

; <label>:209:                                    ; preds = %200
  %210 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2722
  %211 = load i32, i32* %12, align 4, !dbg !2724
  %212 = zext i32 %211 to i64, !dbg !2724
  %213 = call i8* @strvec_slot(%struct._vector* %210, i64 %212), !dbg !2725
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i8* %213), !dbg !2726
  %214 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2728
  br label %1373, !dbg !2729

; <label>:215:                                    ; preds = %200
  %216 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2730
  %217 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %216, i32 0, i32 3, !dbg !2732
  %218 = load i8, i8* %217, align 8, !dbg !2732
  %219 = zext i8 %218 to i32, !dbg !2730
  %220 = icmp eq i32 %219, 0, !dbg !2733
  br i1 %220, label %221, label %230, !dbg !2734

; <label>:221:                                    ; preds = %215
  %222 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2735
  %223 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %222, i32 0, i32 9, !dbg !2737
  %224 = load %struct._ip_address*, %struct._ip_address** %223, align 8, !dbg !2737
  %225 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %224, i32 0, i32 0, !dbg !2738
  %226 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %225, i32 0, i32 0, !dbg !2739
  %227 = load i8, i8* %226, align 8, !dbg !2739
  %228 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2740
  %229 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %228, i32 0, i32 3, !dbg !2741
  store i8 %227, i8* %229, align 8, !dbg !2742
  br label %246, !dbg !2740

; <label>:230:                                    ; preds = %215
  %231 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2743
  %232 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %231, i32 0, i32 3, !dbg !2745
  %233 = load i8, i8* %232, align 8, !dbg !2745
  %234 = zext i8 %233 to i32, !dbg !2743
  %235 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2746
  %236 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %235, i32 0, i32 9, !dbg !2747
  %237 = load %struct._ip_address*, %struct._ip_address** %236, align 8, !dbg !2747
  %238 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %237, i32 0, i32 0, !dbg !2748
  %239 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %238, i32 0, i32 0, !dbg !2749
  %240 = load i8, i8* %239, align 8, !dbg !2749
  %241 = zext i8 %240 to i32, !dbg !2746
  %242 = icmp ne i32 %234, %241, !dbg !2750
  br i1 %242, label %243, label %245, !dbg !2751

; <label>:243:                                    ; preds = %230
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0)), !dbg !2752
  %244 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2754
  br label %1373, !dbg !2755

; <label>:245:                                    ; preds = %230
  br label %246

; <label>:246:                                    ; preds = %245, %221
  br label %1290, !dbg !2756

; <label>:247:                                    ; preds = %127
  %248 = load i8*, i8** %9, align 8, !dbg !2757
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !2759
  %250 = icmp ne i32 %249, 0, !dbg !2759
  br i1 %250, label %329, label %251, !dbg !2760

; <label>:251:                                    ; preds = %247
  %252 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2761
  %253 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %252, i32 0, i32 1, !dbg !2764
  %254 = load %struct._ip_address*, %struct._ip_address** %253, align 8, !dbg !2764
  %255 = icmp ne %struct._ip_address* %254, null, !dbg !2761
  br i1 %255, label %256, label %263, !dbg !2765

; <label>:256:                                    ; preds = %251
  %257 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2766
  %258 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %257, i32 0, i32 1, !dbg !2767
  %259 = load %struct._ip_address*, %struct._ip_address** %258, align 8, !dbg !2767
  %260 = bitcast %struct._ip_address* %259 to i8*, !dbg !2766
  call void @free(i8* %260) #9, !dbg !2768
  %261 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2769
  %262 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %261, i32 0, i32 1, !dbg !2770
  store %struct._ip_address* null, %struct._ip_address** %262, align 8, !dbg !2771
  br label %263, !dbg !2772

; <label>:263:                                    ; preds = %256, %251
  %264 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2773
  %265 = load i32, i32* %12, align 4, !dbg !2775
  %266 = add i32 %265, 1, !dbg !2775
  store i32 %266, i32* %12, align 4, !dbg !2775
  %267 = zext i32 %266 to i64, !dbg !2775
  %268 = call i8* @strvec_slot(%struct._vector* %264, i64 %267), !dbg !2776
  %269 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %268, i32 0), !dbg !2777
  %270 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2779
  %271 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %270, i32 0, i32 1, !dbg !2780
  store %struct._ip_address* %269, %struct._ip_address** %271, align 8, !dbg !2781
  %272 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2782
  %273 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %272, i32 0, i32 1, !dbg !2784
  %274 = load %struct._ip_address*, %struct._ip_address** %273, align 8, !dbg !2784
  %275 = icmp ne %struct._ip_address* %274, null, !dbg !2782
  br i1 %275, label %282, label %276, !dbg !2785

; <label>:276:                                    ; preds = %263
  %277 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2786
  %278 = load i32, i32* %12, align 4, !dbg !2788
  %279 = zext i32 %278 to i64, !dbg !2788
  %280 = call i8* @strvec_slot(%struct._vector* %277, i64 %279), !dbg !2789
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.68, i32 0, i32 0), i8* %280), !dbg !2790
  %281 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2792
  br label %1373, !dbg !2793

; <label>:282:                                    ; preds = %263
  %283 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2794
  %284 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %283, i32 0, i32 1, !dbg !2796
  %285 = load %struct._ip_address*, %struct._ip_address** %284, align 8, !dbg !2796
  %286 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %285, i32 0, i32 0, !dbg !2797
  %287 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %286, i32 0, i32 0, !dbg !2798
  %288 = load i8, i8* %287, align 8, !dbg !2798
  %289 = zext i8 %288 to i32, !dbg !2794
  %290 = icmp ne i32 %289, 10, !dbg !2799
  br i1 %290, label %291, label %297, !dbg !2800

; <label>:291:                                    ; preds = %282
  %292 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2801
  %293 = load i32, i32* %12, align 4, !dbg !2804
  %294 = zext i32 %293 to i64, !dbg !2804
  %295 = call i8* @strvec_slot(%struct._vector* %292, i64 %294), !dbg !2805
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.69, i32 0, i32 0), i8* %295), !dbg !2806
  %296 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2808
  br label %1373, !dbg !2809

; <label>:297:                                    ; preds = %282
  %298 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2810
  %299 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %298, i32 0, i32 3, !dbg !2812
  %300 = load i8, i8* %299, align 8, !dbg !2812
  %301 = zext i8 %300 to i32, !dbg !2810
  %302 = icmp eq i32 %301, 0, !dbg !2813
  br i1 %302, label %303, label %312, !dbg !2814

; <label>:303:                                    ; preds = %297
  %304 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2815
  %305 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %304, i32 0, i32 1, !dbg !2817
  %306 = load %struct._ip_address*, %struct._ip_address** %305, align 8, !dbg !2817
  %307 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %306, i32 0, i32 0, !dbg !2818
  %308 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %307, i32 0, i32 0, !dbg !2819
  %309 = load i8, i8* %308, align 8, !dbg !2819
  %310 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2820
  %311 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %310, i32 0, i32 3, !dbg !2821
  store i8 %309, i8* %311, align 8, !dbg !2822
  br label %328, !dbg !2820

; <label>:312:                                    ; preds = %297
  %313 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2823
  %314 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %313, i32 0, i32 3, !dbg !2825
  %315 = load i8, i8* %314, align 8, !dbg !2825
  %316 = zext i8 %315 to i32, !dbg !2823
  %317 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2826
  %318 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %317, i32 0, i32 1, !dbg !2827
  %319 = load %struct._ip_address*, %struct._ip_address** %318, align 8, !dbg !2827
  %320 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %319, i32 0, i32 0, !dbg !2828
  %321 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %320, i32 0, i32 0, !dbg !2829
  %322 = load i8, i8* %321, align 8, !dbg !2829
  %323 = zext i8 %322 to i32, !dbg !2826
  %324 = icmp ne i32 %316, %323, !dbg !2830
  br i1 %324, label %325, label %327, !dbg !2831

; <label>:325:                                    ; preds = %312
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i32 0, i32 0)), !dbg !2832
  %326 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2834
  br label %1373, !dbg !2835

; <label>:327:                                    ; preds = %312
  br label %328

; <label>:328:                                    ; preds = %327, %303
  br label %1289, !dbg !2836

; <label>:329:                                    ; preds = %247
  %330 = load i8*, i8** %9, align 8, !dbg !2837
  %331 = call i32 @strcmp(i8* %330, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0)) #8, !dbg !2839
  %332 = icmp ne i32 %331, 0, !dbg !2839
  br i1 %332, label %333, label %337, !dbg !2840

; <label>:333:                                    ; preds = %329
  %334 = load i8*, i8** %9, align 8, !dbg !2841
  %335 = call i32 @strcmp(i8* %334, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !2843
  %336 = icmp ne i32 %335, 0, !dbg !2843
  br i1 %336, label %358, label %337, !dbg !2844

; <label>:337:                                    ; preds = %333, %329
  %338 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2845
  %339 = load i32, i32* %12, align 4, !dbg !2848
  %340 = add i32 %339, 1, !dbg !2848
  store i32 %340, i32* %12, align 4, !dbg !2848
  %341 = zext i32 %340 to i64, !dbg !2848
  %342 = call i8* @strvec_slot(%struct._vector* %338, i64 %341), !dbg !2849
  %343 = call zeroext i1 @find_rttables_dsfield(i8* %342, i8* %11), !dbg !2850
  br i1 %343, label %350, label %344, !dbg !2852

; <label>:344:                                    ; preds = %337
  %345 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2853
  %346 = load i32, i32* %12, align 4, !dbg !2855
  %347 = zext i32 %346 to i64, !dbg !2855
  %348 = call i8* @strvec_slot(%struct._vector* %345, i64 %347), !dbg !2856
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i32 0, i32 0), i8* %348), !dbg !2857
  %349 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2859
  br label %1373, !dbg !2860

; <label>:350:                                    ; preds = %337
  %351 = load i8, i8* %11, align 1, !dbg !2861
  %352 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2862
  %353 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %352, i32 0, i32 4, !dbg !2863
  store i8 %351, i8* %353, align 1, !dbg !2864
  %354 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2865
  %355 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %354, i32 0, i32 33, !dbg !2866
  %356 = load i32, i32* %355, align 8, !dbg !2867
  %357 = or i32 %356, 1, !dbg !2867
  store i32 %357, i32* %355, align 8, !dbg !2867
  br label %1288, !dbg !2868

; <label>:358:                                    ; preds = %333
  %359 = load i8*, i8** %9, align 8, !dbg !2869
  %360 = call i32 @strcmp(i8* %359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !2871
  %361 = icmp ne i32 %360, 0, !dbg !2871
  br i1 %361, label %379, label %362, !dbg !2872

; <label>:362:                                    ; preds = %358
  %363 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2873
  %364 = load i32, i32* %12, align 4, !dbg !2876
  %365 = add i32 %364, 1, !dbg !2876
  store i32 %365, i32* %12, align 4, !dbg !2876
  %366 = zext i32 %365 to i64, !dbg !2876
  %367 = call i8* @strvec_slot(%struct._vector* %363, i64 %366), !dbg !2877
  %368 = call zeroext i1 @find_rttables_table(i8* %367, i32* %10), !dbg !2878
  br i1 %368, label %375, label %369, !dbg !2880

; <label>:369:                                    ; preds = %362
  %370 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2881
  %371 = load i32, i32* %12, align 4, !dbg !2883
  %372 = zext i32 %371 to i64, !dbg !2883
  %373 = call i8* @strvec_slot(%struct._vector* %370, i64 %372), !dbg !2884
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), i8* %373), !dbg !2885
  %374 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2887
  br label %1373, !dbg !2888

; <label>:375:                                    ; preds = %362
  %376 = load i32, i32* %10, align 4, !dbg !2889
  %377 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2890
  %378 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %377, i32 0, i32 5, !dbg !2891
  store i32 %376, i32* %378, align 4, !dbg !2892
  br label %1287, !dbg !2893

; <label>:379:                                    ; preds = %358
  %380 = load i8*, i8** %9, align 8, !dbg !2894
  %381 = call i32 @strcmp(i8* %380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0)) #8, !dbg !2896
  %382 = icmp ne i32 %381, 0, !dbg !2896
  br i1 %382, label %404, label %383, !dbg !2897

; <label>:383:                                    ; preds = %379
  %384 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2898
  %385 = load i32, i32* %12, align 4, !dbg !2901
  %386 = add i32 %385, 1, !dbg !2901
  store i32 %386, i32* %12, align 4, !dbg !2901
  %387 = zext i32 %386 to i64, !dbg !2901
  %388 = call i8* @strvec_slot(%struct._vector* %384, i64 %387), !dbg !2902
  %389 = call zeroext i1 @find_rttables_proto(i8* %388, i8* %11), !dbg !2903
  br i1 %389, label %396, label %390, !dbg !2905

; <label>:390:                                    ; preds = %383
  %391 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2906
  %392 = load i32, i32* %12, align 4, !dbg !2908
  %393 = zext i32 %392 to i64, !dbg !2908
  %394 = call i8* @strvec_slot(%struct._vector* %391, i64 %393), !dbg !2909
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i32 0, i32 0), i8* %394), !dbg !2910
  %395 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2912
  br label %1373, !dbg !2913

; <label>:396:                                    ; preds = %383
  %397 = load i8, i8* %11, align 1, !dbg !2914
  %398 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2915
  %399 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %398, i32 0, i32 6, !dbg !2916
  store i8 %397, i8* %399, align 8, !dbg !2917
  %400 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2918
  %401 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %400, i32 0, i32 33, !dbg !2919
  %402 = load i32, i32* %401, align 8, !dbg !2920
  %403 = or i32 %402, 4, !dbg !2920
  store i32 %403, i32* %401, align 8, !dbg !2920
  br label %1286, !dbg !2921

; <label>:404:                                    ; preds = %379
  %405 = load i8*, i8** %9, align 8, !dbg !2922
  %406 = call i32 @strcmp(i8* %405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0)) #8, !dbg !2924
  %407 = icmp ne i32 %406, 0, !dbg !2924
  br i1 %407, label %429, label %408, !dbg !2925

; <label>:408:                                    ; preds = %404
  %409 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2926
  %410 = load i32, i32* %12, align 4, !dbg !2929
  %411 = add i32 %410, 1, !dbg !2929
  store i32 %411, i32* %12, align 4, !dbg !2929
  %412 = zext i32 %411 to i64, !dbg !2929
  %413 = call i8* @strvec_slot(%struct._vector* %409, i64 %412), !dbg !2930
  %414 = call zeroext i1 @find_rttables_scope(i8* %413, i8* %11), !dbg !2931
  br i1 %414, label %421, label %415, !dbg !2933

; <label>:415:                                    ; preds = %408
  %416 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2934
  %417 = load i32, i32* %12, align 4, !dbg !2936
  %418 = zext i32 %417 to i64, !dbg !2936
  %419 = call i8* @strvec_slot(%struct._vector* %416, i64 %418), !dbg !2937
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.78, i32 0, i32 0), i8* %419), !dbg !2938
  %420 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2940
  br label %1373, !dbg !2941

; <label>:421:                                    ; preds = %408
  %422 = load i8, i8* %11, align 1, !dbg !2942
  %423 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2943
  %424 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %423, i32 0, i32 7, !dbg !2944
  store i8 %422, i8* %424, align 1, !dbg !2945
  %425 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2946
  %426 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %425, i32 0, i32 33, !dbg !2947
  %427 = load i32, i32* %426, align 8, !dbg !2948
  %428 = or i32 %427, 8, !dbg !2948
  store i32 %428, i32* %426, align 8, !dbg !2948
  br label %1285, !dbg !2949

; <label>:429:                                    ; preds = %404
  %430 = load i8*, i8** %9, align 8, !dbg !2950
  %431 = call i32 @strcmp(i8* %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !2952
  %432 = icmp ne i32 %431, 0, !dbg !2952
  br i1 %432, label %433, label %441, !dbg !2953

; <label>:433:                                    ; preds = %429
  %434 = load i8*, i8** %9, align 8, !dbg !2954
  %435 = call i32 @strcmp(i8* %434, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !2955
  %436 = icmp ne i32 %435, 0, !dbg !2955
  br i1 %436, label %437, label %441, !dbg !2956

; <label>:437:                                    ; preds = %433
  %438 = load i8*, i8** %9, align 8, !dbg !2957
  %439 = call i32 @strcmp(i8* %438, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0)) #8, !dbg !2958
  %440 = icmp ne i32 %439, 0, !dbg !2958
  br i1 %440, label %456, label %441, !dbg !2959

; <label>:441:                                    ; preds = %437, %433, %429
  %442 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2961
  %443 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %442, i32 0, i32 8, !dbg !2964
  %444 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2965
  %445 = load i32, i32* %12, align 4, !dbg !2966
  %446 = add i32 %445, 1, !dbg !2966
  store i32 %446, i32* %12, align 4, !dbg !2966
  %447 = zext i32 %446 to i64, !dbg !2966
  %448 = call i8* @strvec_slot(%struct._vector* %444, i64 %447), !dbg !2967
  %449 = call zeroext i1 @get_u32(i32* %443, i8* %448, i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0)), !dbg !2968
  br i1 %449, label %450, label %451, !dbg !2970

; <label>:450:                                    ; preds = %441
  br label %1373, !dbg !2971

; <label>:451:                                    ; preds = %441
  %452 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !2973
  %453 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %452, i32 0, i32 33, !dbg !2975
  %454 = load i32, i32* %453, align 8, !dbg !2976
  %455 = or i32 %454, 16, !dbg !2976
  store i32 %455, i32* %453, align 8, !dbg !2976
  br label %1284, !dbg !2977

; <label>:456:                                    ; preds = %437
  %457 = load i8*, i8** %9, align 8, !dbg !2979
  %458 = call i32 @strcmp(i8* %457, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #8, !dbg !2982
  %459 = icmp ne i32 %458, 0, !dbg !2982
  br i1 %459, label %460, label %464, !dbg !2983

; <label>:460:                                    ; preds = %456
  %461 = load i8*, i8** %9, align 8, !dbg !2984
  %462 = call i32 @strcmp(i8* %461, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !2986
  %463 = icmp ne i32 %462, 0, !dbg !2986
  br i1 %463, label %481, label %464, !dbg !2987

; <label>:464:                                    ; preds = %460, %456
  %465 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2988
  %466 = load i32, i32* %12, align 4, !dbg !2991
  %467 = add i32 %466, 1, !dbg !2991
  store i32 %467, i32* %12, align 4, !dbg !2991
  %468 = zext i32 %467 to i64, !dbg !2991
  %469 = call i8* @strvec_slot(%struct._vector* %465, i64 %468), !dbg !2992
  store i8* %469, i8** %9, align 8, !dbg !2993
  %470 = load i8*, i8** %9, align 8, !dbg !2994
  %471 = call %struct._interface* @if_get_by_ifname(i8* %470, i32 1), !dbg !2995
  store %struct._interface* %471, %struct._interface** %8, align 8, !dbg !2996
  %472 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !2997
  %473 = icmp ne %struct._interface* %472, null, !dbg !2997
  br i1 %473, label %477, label %474, !dbg !2999

; <label>:474:                                    ; preds = %464
  %475 = load i8*, i8** %9, align 8, !dbg !3000
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.85, i32 0, i32 0), i8* %475), !dbg !3002
  %476 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3003
  br label %1373, !dbg !3004

; <label>:477:                                    ; preds = %464
  %478 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3005
  %479 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3006
  %480 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %479, i32 0, i32 10, !dbg !3007
  store %struct._interface* %478, %struct._interface** %480, align 8, !dbg !3008
  br label %1283, !dbg !3009

; <label>:481:                                    ; preds = %460
  %482 = load i8*, i8** %9, align 8, !dbg !3010
  %483 = call i32 @strcmp(i8* %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !3012
  %484 = icmp ne i32 %483, 0, !dbg !3012
  br i1 %484, label %490, label %485, !dbg !3013

; <label>:485:                                    ; preds = %481
  %486 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3014
  %487 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %486, i32 0, i32 11, !dbg !3016
  %488 = load i32, i32* %487, align 8, !dbg !3017
  %489 = or i32 %488, 4, !dbg !3017
  store i32 %489, i32* %487, align 8, !dbg !3017
  br label %1282, !dbg !3018

; <label>:490:                                    ; preds = %481
  %491 = load i8*, i8** %9, align 8, !dbg !3019
  %492 = call i32 @strcmp(i8* %491, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !3021
  %493 = icmp ne i32 %492, 0, !dbg !3021
  br i1 %493, label %499, label %494, !dbg !3022

; <label>:494:                                    ; preds = %490
  %495 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3023
  %496 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3025
  %497 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %496, i32 0, i32 31, !dbg !3026
  %498 = call zeroext i1 @parse_encap(%struct._vector* %495, i32* %12, %struct._encap* %497), !dbg !3027
  br label %1281, !dbg !3028

; <label>:499:                                    ; preds = %490
  %500 = load i8*, i8** %9, align 8, !dbg !3029
  %501 = call i32 @strcmp(i8* %500, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !3031
  %502 = icmp ne i32 %501, 0, !dbg !3031
  br i1 %502, label %506, label %503, !dbg !3032

; <label>:503:                                    ; preds = %499
  %504 = load i32, i32* %12, align 4, !dbg !3033
  %505 = add i32 %504, 1, !dbg !3033
  store i32 %505, i32* %12, align 4, !dbg !3033
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0)), !dbg !3035
  br label %1280, !dbg !3036

; <label>:506:                                    ; preds = %499
  %507 = load i8*, i8** %9, align 8, !dbg !3037
  %508 = call i32 @strcmp(i8* %507, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0)) #8, !dbg !3039
  %509 = icmp ne i32 %508, 0, !dbg !3039
  br i1 %509, label %539, label %510, !dbg !3040

; <label>:510:                                    ; preds = %506
  %511 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3041
  %512 = load i32, i32* %12, align 4, !dbg !3044
  %513 = add i32 %512, 1, !dbg !3044
  store i32 %513, i32* %12, align 4, !dbg !3044
  %514 = zext i32 %513 to i64, !dbg !3044
  %515 = call i8* @strvec_slot(%struct._vector* %511, i64 %514), !dbg !3045
  %516 = call i32 @strcmp(i8* %515, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3046
  %517 = icmp ne i32 %516, 0, !dbg !3048
  br i1 %517, label %525, label %518, !dbg !3049

; <label>:518:                                    ; preds = %510
  %519 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3050
  %520 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %519, i32 0, i32 14, !dbg !3052
  %521 = load i32, i32* %520, align 4, !dbg !3053
  %522 = or i32 %521, 4, !dbg !3053
  store i32 %522, i32* %520, align 4, !dbg !3053
  %523 = load i32, i32* %12, align 4, !dbg !3054
  %524 = add i32 %523, 1, !dbg !3054
  store i32 %524, i32* %12, align 4, !dbg !3054
  br label %525, !dbg !3055

; <label>:525:                                    ; preds = %518, %510
  %526 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3056
  %527 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %526, i32 0, i32 15, !dbg !3058
  %528 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3059
  %529 = load i32, i32* %12, align 4, !dbg !3060
  %530 = zext i32 %529 to i64, !dbg !3060
  %531 = call i8* @strvec_slot(%struct._vector* %528, i64 %530), !dbg !3061
  %532 = call zeroext i1 @get_u32(i32* %527, i8* %531, i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0)), !dbg !3062
  br i1 %532, label %533, label %534, !dbg !3064

; <label>:533:                                    ; preds = %525
  br label %1373, !dbg !3065

; <label>:534:                                    ; preds = %525
  %535 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3066
  %536 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %535, i32 0, i32 33, !dbg !3067
  %537 = load i32, i32* %536, align 8, !dbg !3068
  %538 = or i32 %537, 128, !dbg !3068
  store i32 %538, i32* %536, align 8, !dbg !3068
  br label %1279, !dbg !3069

; <label>:539:                                    ; preds = %506
  %540 = load i8*, i8** %9, align 8, !dbg !3070
  %541 = call i32 @strcmp(i8* %540, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0)) #8, !dbg !3072
  %542 = icmp ne i32 %541, 0, !dbg !3072
  br i1 %542, label %559, label %543, !dbg !3073

; <label>:543:                                    ; preds = %539
  %544 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3074
  %545 = load i32, i32* %12, align 4, !dbg !3077
  %546 = add i32 %545, 1, !dbg !3077
  store i32 %546, i32* %12, align 4, !dbg !3077
  %547 = zext i32 %546 to i64, !dbg !3077
  %548 = call i8* @strvec_slot(%struct._vector* %544, i64 %547), !dbg !3078
  %549 = call zeroext i1 @get_u8(i8* %11, i8* %548, i8 zeroext -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i32 0, i32 0)), !dbg !3079
  br i1 %549, label %550, label %551, !dbg !3081

; <label>:550:                                    ; preds = %543
  br label %1373, !dbg !3082

; <label>:551:                                    ; preds = %543
  %552 = load i8, i8* %11, align 1, !dbg !3083
  %553 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3084
  %554 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %553, i32 0, i32 16, !dbg !3085
  store i8 %552, i8* %554, align 4, !dbg !3086
  %555 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3087
  %556 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %555, i32 0, i32 33, !dbg !3088
  %557 = load i32, i32* %556, align 8, !dbg !3089
  %558 = or i32 %557, 256, !dbg !3089
  store i32 %558, i32* %556, align 8, !dbg !3089
  br label %1278, !dbg !3090

; <label>:559:                                    ; preds = %539
  %560 = load i8*, i8** %9, align 8, !dbg !3091
  %561 = call i32 @strcmp(i8* %560, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !3093
  %562 = icmp ne i32 %561, 0, !dbg !3093
  br i1 %562, label %592, label %563, !dbg !3094

; <label>:563:                                    ; preds = %559
  %564 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3095
  %565 = load i32, i32* %12, align 4, !dbg !3098
  %566 = add i32 %565, 1, !dbg !3098
  store i32 %566, i32* %12, align 4, !dbg !3098
  %567 = zext i32 %566 to i64, !dbg !3098
  %568 = call i8* @strvec_slot(%struct._vector* %564, i64 %567), !dbg !3099
  %569 = call i32 @strcmp(i8* %568, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3100
  %570 = icmp ne i32 %569, 0, !dbg !3102
  br i1 %570, label %578, label %571, !dbg !3103

; <label>:571:                                    ; preds = %563
  %572 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3104
  %573 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %572, i32 0, i32 14, !dbg !3106
  %574 = load i32, i32* %573, align 4, !dbg !3107
  %575 = or i32 %574, 256, !dbg !3107
  store i32 %575, i32* %573, align 4, !dbg !3107
  %576 = load i32, i32* %12, align 4, !dbg !3108
  %577 = add i32 %576, 1, !dbg !3108
  store i32 %577, i32* %12, align 4, !dbg !3108
  br label %578, !dbg !3109

; <label>:578:                                    ; preds = %571, %563
  %579 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3110
  %580 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %579, i32 0, i32 17, !dbg !3112
  %581 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3113
  %582 = load i32, i32* %12, align 4, !dbg !3114
  %583 = zext i32 %582 to i64, !dbg !3114
  %584 = call i8* @strvec_slot(%struct._vector* %581, i64 %583), !dbg !3115
  %585 = call zeroext i1 @get_u32(i32* %580, i8* %584, i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0)), !dbg !3116
  br i1 %585, label %586, label %587, !dbg !3118

; <label>:586:                                    ; preds = %578
  br label %1373, !dbg !3119

; <label>:587:                                    ; preds = %578
  %588 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3120
  %589 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %588, i32 0, i32 33, !dbg !3121
  %590 = load i32, i32* %589, align 8, !dbg !3122
  %591 = or i32 %590, 512, !dbg !3122
  store i32 %591, i32* %589, align 8, !dbg !3122
  br label %1277, !dbg !3123

; <label>:592:                                    ; preds = %559
  %593 = load i8*, i8** %9, align 8, !dbg !3124
  %594 = call i32 @strcmp(i8* %593, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !3126
  %595 = icmp ne i32 %594, 0, !dbg !3126
  br i1 %595, label %646, label %596, !dbg !3127

; <label>:596:                                    ; preds = %592
  %597 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3128
  %598 = load i32, i32* %12, align 4, !dbg !3131
  %599 = add i32 %598, 1, !dbg !3131
  store i32 %599, i32* %12, align 4, !dbg !3131
  %600 = zext i32 %599 to i64, !dbg !3131
  %601 = call i8* @strvec_slot(%struct._vector* %597, i64 %600), !dbg !3132
  %602 = call i32 @strcmp(i8* %601, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3133
  %603 = icmp ne i32 %602, 0, !dbg !3135
  br i1 %603, label %611, label %604, !dbg !3136

; <label>:604:                                    ; preds = %596
  %605 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3137
  %606 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %605, i32 0, i32 14, !dbg !3139
  %607 = load i32, i32* %606, align 4, !dbg !3140
  %608 = or i32 %607, 16, !dbg !3140
  store i32 %608, i32* %606, align 4, !dbg !3140
  %609 = load i32, i32* %12, align 4, !dbg !3141
  %610 = add i32 %609, 1, !dbg !3141
  store i32 %610, i32* %12, align 4, !dbg !3141
  br label %611, !dbg !3142

; <label>:611:                                    ; preds = %604, %596
  %612 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3143
  %613 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %612, i32 0, i32 18, !dbg !3145
  %614 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3146
  %615 = load i32, i32* %12, align 4, !dbg !3147
  %616 = zext i32 %615 to i64, !dbg !3147
  %617 = call i8* @strvec_slot(%struct._vector* %614, i64 %616), !dbg !3148
  %618 = call zeroext i1 @get_time_rtt(i32* %613, i8* %617, i8* %14), !dbg !3149
  br i1 %618, label %627, label %619, !dbg !3151

; <label>:619:                                    ; preds = %611
  %620 = load i8, i8* %14, align 1, !dbg !3152
  %621 = trunc i8 %620 to i1, !dbg !3152
  br i1 %621, label %633, label %622, !dbg !3153

; <label>:622:                                    ; preds = %619
  %623 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3154
  %624 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %623, i32 0, i32 18, !dbg !3156
  %625 = load i32, i32* %624, align 4, !dbg !3156
  %626 = icmp uge i32 %625, 536870911, !dbg !3157
  br i1 %626, label %627, label %633, !dbg !3158

; <label>:627:                                    ; preds = %622, %611
  %628 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3160
  %629 = load i32, i32* %12, align 4, !dbg !3162
  %630 = zext i32 %629 to i64, !dbg !3162
  %631 = call i8* @strvec_slot(%struct._vector* %628, i64 %630), !dbg !3163
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i32 0, i32 0), i8* %631), !dbg !3164
  %632 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3166
  br label %1373, !dbg !3167

; <label>:633:                                    ; preds = %622, %619
  %634 = load i8, i8* %14, align 1, !dbg !3168
  %635 = trunc i8 %634 to i1, !dbg !3168
  br i1 %635, label %636, label %641, !dbg !3170

; <label>:636:                                    ; preds = %633
  %637 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3171
  %638 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %637, i32 0, i32 18, !dbg !3172
  %639 = load i32, i32* %638, align 4, !dbg !3173
  %640 = mul i32 %639, 8, !dbg !3173
  store i32 %640, i32* %638, align 4, !dbg !3173
  br label %641, !dbg !3171

; <label>:641:                                    ; preds = %636, %633
  %642 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3174
  %643 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %642, i32 0, i32 33, !dbg !3175
  %644 = load i32, i32* %643, align 8, !dbg !3176
  %645 = or i32 %644, 1024, !dbg !3176
  store i32 %645, i32* %643, align 8, !dbg !3176
  br label %1276, !dbg !3177

; <label>:646:                                    ; preds = %592
  %647 = load i8*, i8** %9, align 8, !dbg !3178
  %648 = call i32 @strcmp(i8* %647, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !3180
  %649 = icmp ne i32 %648, 0, !dbg !3180
  br i1 %649, label %700, label %650, !dbg !3181

; <label>:650:                                    ; preds = %646
  %651 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3182
  %652 = load i32, i32* %12, align 4, !dbg !3185
  %653 = add i32 %652, 1, !dbg !3185
  store i32 %653, i32* %12, align 4, !dbg !3185
  %654 = zext i32 %653 to i64, !dbg !3185
  %655 = call i8* @strvec_slot(%struct._vector* %651, i64 %654), !dbg !3186
  %656 = call i32 @strcmp(i8* %655, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3187
  %657 = icmp ne i32 %656, 0, !dbg !3189
  br i1 %657, label %665, label %658, !dbg !3190

; <label>:658:                                    ; preds = %650
  %659 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3191
  %660 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %659, i32 0, i32 14, !dbg !3193
  %661 = load i32, i32* %660, align 4, !dbg !3194
  %662 = or i32 %661, 32, !dbg !3194
  store i32 %662, i32* %660, align 4, !dbg !3194
  %663 = load i32, i32* %12, align 4, !dbg !3195
  %664 = add i32 %663, 1, !dbg !3195
  store i32 %664, i32* %12, align 4, !dbg !3195
  br label %665, !dbg !3196

; <label>:665:                                    ; preds = %658, %650
  %666 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3197
  %667 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %666, i32 0, i32 19, !dbg !3199
  %668 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3200
  %669 = load i32, i32* %12, align 4, !dbg !3201
  %670 = zext i32 %669 to i64, !dbg !3201
  %671 = call i8* @strvec_slot(%struct._vector* %668, i64 %670), !dbg !3202
  %672 = call zeroext i1 @get_time_rtt(i32* %667, i8* %671, i8* %14), !dbg !3203
  br i1 %672, label %681, label %673, !dbg !3205

; <label>:673:                                    ; preds = %665
  %674 = load i8, i8* %14, align 1, !dbg !3206
  %675 = trunc i8 %674 to i1, !dbg !3206
  br i1 %675, label %687, label %676, !dbg !3207

; <label>:676:                                    ; preds = %673
  %677 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3208
  %678 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %677, i32 0, i32 18, !dbg !3210
  %679 = load i32, i32* %678, align 4, !dbg !3210
  %680 = icmp uge i32 %679, 1073741823, !dbg !3211
  br i1 %680, label %681, label %687, !dbg !3212

; <label>:681:                                    ; preds = %676, %665
  %682 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3214
  %683 = load i32, i32* %12, align 4, !dbg !3216
  %684 = zext i32 %683 to i64, !dbg !3216
  %685 = call i8* @strvec_slot(%struct._vector* %682, i64 %684), !dbg !3217
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i32 0, i32 0), i8* %685), !dbg !3218
  %686 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3220
  br label %1373, !dbg !3221

; <label>:687:                                    ; preds = %676, %673
  %688 = load i8, i8* %14, align 1, !dbg !3222
  %689 = trunc i8 %688 to i1, !dbg !3222
  br i1 %689, label %690, label %695, !dbg !3224

; <label>:690:                                    ; preds = %687
  %691 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3225
  %692 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %691, i32 0, i32 19, !dbg !3226
  %693 = load i32, i32* %692, align 8, !dbg !3227
  %694 = mul i32 %693, 4, !dbg !3227
  store i32 %694, i32* %692, align 8, !dbg !3227
  br label %695, !dbg !3225

; <label>:695:                                    ; preds = %690, %687
  %696 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3228
  %697 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %696, i32 0, i32 33, !dbg !3229
  %698 = load i32, i32* %697, align 8, !dbg !3230
  %699 = or i32 %698, 2048, !dbg !3230
  store i32 %699, i32* %697, align 8, !dbg !3230
  br label %1275, !dbg !3231

; <label>:700:                                    ; preds = %646
  %701 = load i8*, i8** %9, align 8, !dbg !3232
  %702 = call i32 @strcmp(i8* %701, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0)) #8, !dbg !3234
  %703 = icmp ne i32 %702, 0, !dbg !3234
  br i1 %703, label %733, label %704, !dbg !3235

; <label>:704:                                    ; preds = %700
  %705 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3236
  %706 = load i32, i32* %12, align 4, !dbg !3239
  %707 = add i32 %706, 1, !dbg !3239
  store i32 %707, i32* %12, align 4, !dbg !3239
  %708 = zext i32 %707 to i64, !dbg !3239
  %709 = call i8* @strvec_slot(%struct._vector* %705, i64 %708), !dbg !3240
  %710 = call i32 @strcmp(i8* %709, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3241
  %711 = icmp ne i32 %710, 0, !dbg !3243
  br i1 %711, label %719, label %712, !dbg !3244

; <label>:712:                                    ; preds = %704
  %713 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3245
  %714 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %713, i32 0, i32 14, !dbg !3247
  %715 = load i32, i32* %714, align 4, !dbg !3248
  %716 = or i32 %715, 512, !dbg !3248
  store i32 %716, i32* %714, align 4, !dbg !3248
  %717 = load i32, i32* %12, align 4, !dbg !3249
  %718 = add i32 %717, 1, !dbg !3249
  store i32 %718, i32* %12, align 4, !dbg !3249
  br label %719, !dbg !3250

; <label>:719:                                    ; preds = %712, %704
  %720 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3251
  %721 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %720, i32 0, i32 20, !dbg !3253
  %722 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3254
  %723 = load i32, i32* %12, align 4, !dbg !3255
  %724 = zext i32 %723 to i64, !dbg !3255
  %725 = call i8* @strvec_slot(%struct._vector* %722, i64 %724), !dbg !3256
  %726 = call zeroext i1 @get_u32(i32* %721, i8* %725, i32 -1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.98, i32 0, i32 0)), !dbg !3257
  br i1 %726, label %727, label %728, !dbg !3259

; <label>:727:                                    ; preds = %719
  br label %1373, !dbg !3260

; <label>:728:                                    ; preds = %719
  %729 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3261
  %730 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %729, i32 0, i32 33, !dbg !3262
  %731 = load i32, i32* %730, align 8, !dbg !3263
  %732 = or i32 %731, 4096, !dbg !3263
  store i32 %732, i32* %730, align 8, !dbg !3263
  br label %1274, !dbg !3264

; <label>:733:                                    ; preds = %700
  %734 = load i8*, i8** %9, align 8, !dbg !3265
  %735 = call i32 @strcmp(i8* %734, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0)) #8, !dbg !3267
  %736 = icmp ne i32 %735, 0, !dbg !3267
  br i1 %736, label %752, label %737, !dbg !3268

; <label>:737:                                    ; preds = %733
  %738 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3269
  %739 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %738, i32 0, i32 21, !dbg !3272
  %740 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3273
  %741 = load i32, i32* %12, align 4, !dbg !3274
  %742 = add i32 %741, 1, !dbg !3274
  store i32 %742, i32* %12, align 4, !dbg !3274
  %743 = zext i32 %742 to i64, !dbg !3274
  %744 = call i8* @strvec_slot(%struct._vector* %740, i64 %743), !dbg !3275
  %745 = call zeroext i1 @get_u32(i32* %739, i8* %744, i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i32 0, i32 0)), !dbg !3276
  br i1 %745, label %746, label %747, !dbg !3278

; <label>:746:                                    ; preds = %737
  br label %1373, !dbg !3279

; <label>:747:                                    ; preds = %737
  %748 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3280
  %749 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %748, i32 0, i32 33, !dbg !3281
  %750 = load i32, i32* %749, align 8, !dbg !3282
  %751 = or i32 %750, 8192, !dbg !3282
  store i32 %751, i32* %749, align 8, !dbg !3282
  br label %1273, !dbg !3283

; <label>:752:                                    ; preds = %733
  %753 = load i8*, i8** %9, align 8, !dbg !3284
  %754 = call i32 @strcmp(i8* %753, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !3286
  %755 = icmp ne i32 %754, 0, !dbg !3286
  br i1 %755, label %785, label %756, !dbg !3287

; <label>:756:                                    ; preds = %752
  %757 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3288
  %758 = load i32, i32* %12, align 4, !dbg !3291
  %759 = add i32 %758, 1, !dbg !3291
  store i32 %759, i32* %12, align 4, !dbg !3291
  %760 = zext i32 %759 to i64, !dbg !3291
  %761 = call i8* @strvec_slot(%struct._vector* %757, i64 %760), !dbg !3292
  %762 = call i32 @strcmp(i8* %761, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3293
  %763 = icmp ne i32 %762, 0, !dbg !3295
  br i1 %763, label %771, label %764, !dbg !3296

; <label>:764:                                    ; preds = %756
  %765 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3297
  %766 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %765, i32 0, i32 14, !dbg !3299
  %767 = load i32, i32* %766, align 4, !dbg !3300
  %768 = or i32 %767, 128, !dbg !3300
  store i32 %768, i32* %766, align 4, !dbg !3300
  %769 = load i32, i32* %12, align 4, !dbg !3301
  %770 = add i32 %769, 1, !dbg !3301
  store i32 %770, i32* %12, align 4, !dbg !3301
  br label %771, !dbg !3302

; <label>:771:                                    ; preds = %764, %756
  %772 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3303
  %773 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %772, i32 0, i32 22, !dbg !3305
  %774 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3306
  %775 = load i32, i32* %12, align 4, !dbg !3307
  %776 = zext i32 %775 to i64, !dbg !3307
  %777 = call i8* @strvec_slot(%struct._vector* %774, i64 %776), !dbg !3308
  %778 = call zeroext i1 @get_u32(i32* %773, i8* %777, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.102, i32 0, i32 0)), !dbg !3309
  br i1 %778, label %779, label %780, !dbg !3311

; <label>:779:                                    ; preds = %771
  br label %1373, !dbg !3312

; <label>:780:                                    ; preds = %771
  %781 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3313
  %782 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %781, i32 0, i32 33, !dbg !3314
  %783 = load i32, i32* %782, align 8, !dbg !3315
  %784 = or i32 %783, 16384, !dbg !3315
  store i32 %784, i32* %782, align 8, !dbg !3315
  br label %1272, !dbg !3316

; <label>:785:                                    ; preds = %752
  %786 = load i8*, i8** %9, align 8, !dbg !3317
  %787 = call i32 @strcmp(i8* %786, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0)) #8, !dbg !3319
  %788 = icmp ne i32 %787, 0, !dbg !3319
  br i1 %788, label %818, label %789, !dbg !3320

; <label>:789:                                    ; preds = %785
  %790 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3321
  %791 = load i32, i32* %12, align 4, !dbg !3324
  %792 = add i32 %791, 1, !dbg !3324
  store i32 %792, i32* %12, align 4, !dbg !3324
  %793 = zext i32 %792 to i64, !dbg !3324
  %794 = call i8* @strvec_slot(%struct._vector* %790, i64 %793), !dbg !3325
  %795 = call i32 @strcmp(i8* %794, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3326
  %796 = icmp ne i32 %795, 0, !dbg !3328
  br i1 %796, label %804, label %797, !dbg !3329

; <label>:797:                                    ; preds = %789
  %798 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3330
  %799 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %798, i32 0, i32 14, !dbg !3332
  %800 = load i32, i32* %799, align 4, !dbg !3333
  %801 = or i32 %800, 64, !dbg !3333
  store i32 %801, i32* %799, align 4, !dbg !3333
  %802 = load i32, i32* %12, align 4, !dbg !3334
  %803 = add i32 %802, 1, !dbg !3334
  store i32 %803, i32* %12, align 4, !dbg !3334
  br label %804, !dbg !3335

; <label>:804:                                    ; preds = %797, %789
  %805 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3336
  %806 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %805, i32 0, i32 23, !dbg !3338
  %807 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3339
  %808 = load i32, i32* %12, align 4, !dbg !3340
  %809 = zext i32 %808 to i64, !dbg !3340
  %810 = call i8* @strvec_slot(%struct._vector* %807, i64 %809), !dbg !3341
  %811 = call zeroext i1 @get_u32(i32* %806, i8* %810, i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.104, i32 0, i32 0)), !dbg !3342
  br i1 %811, label %812, label %813, !dbg !3344

; <label>:812:                                    ; preds = %804
  br label %1373, !dbg !3345

; <label>:813:                                    ; preds = %804
  %814 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3346
  %815 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %814, i32 0, i32 33, !dbg !3347
  %816 = load i32, i32* %815, align 8, !dbg !3348
  %817 = or i32 %816, 32768, !dbg !3348
  store i32 %817, i32* %815, align 8, !dbg !3348
  br label %1271, !dbg !3349

; <label>:818:                                    ; preds = %785
  %819 = load i8*, i8** %9, align 8, !dbg !3350
  %820 = call i32 @strcmp(i8* %819, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3352
  %821 = icmp ne i32 %820, 0, !dbg !3352
  br i1 %821, label %848, label %822, !dbg !3353

; <label>:822:                                    ; preds = %818
  %823 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3354
  %824 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %823, i32 0, i32 30, !dbg !3357
  %825 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3358
  %826 = load i32, i32* %12, align 4, !dbg !3359
  %827 = add i32 %826, 1, !dbg !3359
  store i32 %827, i32* %12, align 4, !dbg !3359
  %828 = zext i32 %827 to i64, !dbg !3359
  %829 = call i8* @strvec_slot(%struct._vector* %825, i64 %828), !dbg !3360
  %830 = call zeroext i1 @get_realms(i32* %824, i8* %829), !dbg !3361
  br i1 %830, label %831, label %837, !dbg !3363

; <label>:831:                                    ; preds = %822
  %832 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3364
  %833 = load i32, i32* %12, align 4, !dbg !3366
  %834 = zext i32 %833 to i64, !dbg !3366
  %835 = call i8* @strvec_slot(%struct._vector* %832, i64 %834), !dbg !3367
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i8* %835), !dbg !3368
  %836 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3370
  br label %1373, !dbg !3371

; <label>:837:                                    ; preds = %822
  %838 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3372
  %839 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %838, i32 0, i32 3, !dbg !3374
  %840 = load i8, i8* %839, align 8, !dbg !3374
  %841 = zext i8 %840 to i32, !dbg !3372
  %842 = icmp eq i32 %841, 10, !dbg !3375
  br i1 %842, label %843, label %845, !dbg !3376

; <label>:843:                                    ; preds = %837
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.107, i32 0, i32 0)), !dbg !3377
  %844 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3380
  br label %1373, !dbg !3381

; <label>:845:                                    ; preds = %837
  %846 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3382
  %847 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %846, i32 0, i32 3, !dbg !3383
  store i8 2, i8* %847, align 8, !dbg !3384
  br label %1270, !dbg !3385

; <label>:848:                                    ; preds = %818
  %849 = load i8*, i8** %9, align 8, !dbg !3386
  %850 = call i32 @strcmp(i8* %849, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !3388
  %851 = icmp ne i32 %850, 0, !dbg !3388
  br i1 %851, label %885, label %852, !dbg !3389

; <label>:852:                                    ; preds = %848
  %853 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3390
  %854 = load i32, i32* %12, align 4, !dbg !3393
  %855 = add i32 %854, 1, !dbg !3393
  store i32 %855, i32* %12, align 4, !dbg !3393
  %856 = zext i32 %855 to i64, !dbg !3393
  %857 = call i8* @strvec_slot(%struct._vector* %853, i64 %856), !dbg !3394
  %858 = call i32 @strcmp(i8* %857, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3395
  %859 = icmp ne i32 %858, 0, !dbg !3397
  br i1 %859, label %867, label %860, !dbg !3398

; <label>:860:                                    ; preds = %852
  %861 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3399
  %862 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %861, i32 0, i32 14, !dbg !3401
  %863 = load i32, i32* %862, align 4, !dbg !3402
  %864 = or i32 %863, 8192, !dbg !3402
  store i32 %864, i32* %862, align 4, !dbg !3402
  %865 = load i32, i32* %12, align 4, !dbg !3403
  %866 = add i32 %865, 1, !dbg !3403
  store i32 %866, i32* %12, align 4, !dbg !3403
  br label %867, !dbg !3404

; <label>:867:                                    ; preds = %860, %852
  %868 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3405
  %869 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %868, i32 0, i32 24, !dbg !3407
  %870 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3408
  %871 = load i32, i32* %12, align 4, !dbg !3409
  %872 = zext i32 %871 to i64, !dbg !3409
  %873 = call i8* @strvec_slot(%struct._vector* %870, i64 %872), !dbg !3410
  %874 = call zeroext i1 @get_time_rtt(i32* %869, i8* %873, i8* %14), !dbg !3411
  br i1 %874, label %875, label %880, !dbg !3413

; <label>:875:                                    ; preds = %867
  %876 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3414
  %877 = load i32, i32* %12, align 4, !dbg !3416
  %878 = zext i32 %877 to i64, !dbg !3416
  %879 = call i8* @strvec_slot(%struct._vector* %876, i64 %878), !dbg !3417
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.108, i32 0, i32 0), i8* %879), !dbg !3418
  br label %1373, !dbg !3420

; <label>:880:                                    ; preds = %867
  %881 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3421
  %882 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %881, i32 0, i32 33, !dbg !3422
  %883 = load i32, i32* %882, align 8, !dbg !3423
  %884 = or i32 %883, 65536, !dbg !3423
  store i32 %884, i32* %882, align 8, !dbg !3423
  br label %1269, !dbg !3424

; <label>:885:                                    ; preds = %848
  %886 = load i8*, i8** %9, align 8, !dbg !3425
  %887 = call i32 @strcmp(i8* %886, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0)) #8, !dbg !3427
  %888 = icmp ne i32 %887, 0, !dbg !3427
  br i1 %888, label %904, label %889, !dbg !3428

; <label>:889:                                    ; preds = %885
  %890 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3429
  %891 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %890, i32 0, i32 25, !dbg !3432
  %892 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3433
  %893 = load i32, i32* %12, align 4, !dbg !3434
  %894 = add i32 %893, 1, !dbg !3434
  store i32 %894, i32* %12, align 4, !dbg !3434
  %895 = zext i32 %894 to i64, !dbg !3434
  %896 = call i8* @strvec_slot(%struct._vector* %892, i64 %895), !dbg !3435
  %897 = call zeroext i1 @get_u32(i32* %891, i8* %896, i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.110, i32 0, i32 0)), !dbg !3436
  br i1 %897, label %898, label %899, !dbg !3438

; <label>:898:                                    ; preds = %889
  br label %1373, !dbg !3439

; <label>:899:                                    ; preds = %889
  %900 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3440
  %901 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %900, i32 0, i32 33, !dbg !3441
  %902 = load i32, i32* %901, align 8, !dbg !3442
  %903 = or i32 %902, 131072, !dbg !3442
  store i32 %903, i32* %901, align 8, !dbg !3442
  br label %1268, !dbg !3443

; <label>:904:                                    ; preds = %885
  %905 = load i8*, i8** %9, align 8, !dbg !3444
  %906 = call i32 @strcmp(i8* %905, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0)) #8, !dbg !3446
  %907 = icmp ne i32 %906, 0, !dbg !3446
  br i1 %907, label %924, label %908, !dbg !3447

; <label>:908:                                    ; preds = %904
  %909 = load i32, i32* %12, align 4, !dbg !3448
  %910 = add i32 %909, 1, !dbg !3448
  store i32 %910, i32* %12, align 4, !dbg !3448
  %911 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3450
  %912 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %911, i32 0, i32 26, !dbg !3452
  %913 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3453
  %914 = load i32, i32* %12, align 4, !dbg !3454
  %915 = zext i32 %914 to i64, !dbg !3454
  %916 = call i8* @strvec_slot(%struct._vector* %913, i64 %915), !dbg !3455
  %917 = call zeroext i1 @get_u32(i32* %912, i8* %916, i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.112, i32 0, i32 0)), !dbg !3456
  br i1 %917, label %918, label %919, !dbg !3458

; <label>:918:                                    ; preds = %908
  br label %1373, !dbg !3459

; <label>:919:                                    ; preds = %908
  %920 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3460
  %921 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %920, i32 0, i32 33, !dbg !3461
  %922 = load i32, i32* %921, align 8, !dbg !3462
  %923 = or i32 %922, 262144, !dbg !3462
  store i32 %923, i32* %921, align 8, !dbg !3462
  br label %1267, !dbg !3463

; <label>:924:                                    ; preds = %904
  %925 = load i8*, i8** %9, align 8, !dbg !3464
  %926 = call i32 @strcmp(i8* %925, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0)) #8, !dbg !3466
  %927 = icmp ne i32 %926, 0, !dbg !3466
  br i1 %927, label %948, label %928, !dbg !3467

; <label>:928:                                    ; preds = %924
  %929 = load i32, i32* %12, align 4, !dbg !3468
  %930 = add i32 %929, 1, !dbg !3468
  store i32 %930, i32* %12, align 4, !dbg !3468
  %931 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3470
  %932 = load i32, i32* %12, align 4, !dbg !3472
  %933 = zext i32 %932 to i64, !dbg !3472
  %934 = call i8* @strvec_slot(%struct._vector* %931, i64 %933), !dbg !3473
  %935 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* %934) #8, !dbg !3474
  %936 = icmp ne i32 %935, 0, !dbg !3476
  br i1 %936, label %942, label %937, !dbg !3477

; <label>:937:                                    ; preds = %928
  %938 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3478
  %939 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %938, i32 0, i32 12, !dbg !3479
  %940 = load i32, i32* %939, align 4, !dbg !3480
  %941 = or i32 %940, 1, !dbg !3480
  store i32 %941, i32* %939, align 4, !dbg !3480
  br label %947, !dbg !3478

; <label>:942:                                    ; preds = %928
  %943 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3481
  %944 = load i32, i32* %12, align 4, !dbg !3482
  %945 = zext i32 %944 to i64, !dbg !3482
  %946 = call i8* @strvec_slot(%struct._vector* %943, i64 %945), !dbg !3483
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.115, i32 0, i32 0), i8* %946), !dbg !3484
  br label %947

; <label>:947:                                    ; preds = %942, %937
  br label %1266, !dbg !3485

; <label>:948:                                    ; preds = %924
  %949 = load i8*, i8** %9, align 8, !dbg !3486
  %950 = call i32 @strcmp(i8* %949, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0)) #8, !dbg !3488
  %951 = icmp ne i32 %950, 0, !dbg !3488
  br i1 %951, label %971, label %952, !dbg !3489

; <label>:952:                                    ; preds = %948
  %953 = load i32, i32* %12, align 4, !dbg !3490
  %954 = add i32 %953, 1, !dbg !3490
  store i32 %954, i32* %12, align 4, !dbg !3490
  %955 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3492
  %956 = load i32, i32* %12, align 4, !dbg !3494
  %957 = zext i32 %956 to i64, !dbg !3494
  %958 = call i8* @strvec_slot(%struct._vector* %955, i64 %957), !dbg !3495
  %959 = call zeroext i1 @get_u32(i32* %10, i8* %958, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.117, i32 0, i32 0)), !dbg !3496
  br i1 %959, label %960, label %961, !dbg !3498

; <label>:960:                                    ; preds = %952
  br label %1373, !dbg !3499

; <label>:961:                                    ; preds = %952
  %962 = load i32, i32* %10, align 4, !dbg !3500
  %963 = icmp ne i32 %962, 0, !dbg !3500
  %964 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3501
  %965 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %964, i32 0, i32 13, !dbg !3502
  %966 = zext i1 %963 to i8, !dbg !3503
  store i8 %966, i8* %965, align 8, !dbg !3503
  %967 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3504
  %968 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %967, i32 0, i32 33, !dbg !3505
  %969 = load i32, i32* %968, align 8, !dbg !3506
  %970 = or i32 %969, 524288, !dbg !3506
  store i32 %970, i32* %968, align 8, !dbg !3506
  br label %1265, !dbg !3507

; <label>:971:                                    ; preds = %948
  %972 = load i8*, i8** %9, align 8, !dbg !3508
  %973 = call i32 @strcmp(i8* %972, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0)) #8, !dbg !3510
  %974 = icmp ne i32 %973, 0, !dbg !3510
  br i1 %974, label %1007, label %975, !dbg !3511

; <label>:975:                                    ; preds = %971
  %976 = load i32, i32* %12, align 4, !dbg !3512
  %977 = add i32 %976, 1, !dbg !3512
  store i32 %977, i32* %12, align 4, !dbg !3512
  %978 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3514
  %979 = load i32, i32* %12, align 4, !dbg !3516
  %980 = zext i32 %979 to i64, !dbg !3516
  %981 = call i8* @strvec_slot(%struct._vector* %978, i64 %980), !dbg !3517
  %982 = call i32 @strcmp(i8* %981, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3518
  %983 = icmp ne i32 %982, 0, !dbg !3520
  br i1 %983, label %991, label %984, !dbg !3521

; <label>:984:                                    ; preds = %975
  %985 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3522
  %986 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %985, i32 0, i32 14, !dbg !3524
  %987 = load i32, i32* %986, align 4, !dbg !3525
  %988 = or i32 %987, 65536, !dbg !3525
  store i32 %988, i32* %986, align 4, !dbg !3525
  %989 = load i32, i32* %12, align 4, !dbg !3526
  %990 = add i32 %989, 1, !dbg !3526
  store i32 %990, i32* %12, align 4, !dbg !3526
  br label %991, !dbg !3527

; <label>:991:                                    ; preds = %984, %975
  %992 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3528
  %993 = load i32, i32* %12, align 4, !dbg !3529
  %994 = zext i32 %993 to i64, !dbg !3529
  %995 = call i8* @strvec_slot(%struct._vector* %992, i64 %994), !dbg !3530
  store i8* %995, i8** %9, align 8, !dbg !3531
  %996 = load i8*, i8** %9, align 8, !dbg !3532
  %997 = call i64 @strlen(i8* %996) #8, !dbg !3533
  %998 = add i64 %997, 1, !dbg !3534
  %999 = call noalias i8* @malloc(i64 %998) #9, !dbg !3535
  %1000 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3537
  %1001 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1000, i32 0, i32 27, !dbg !3538
  store i8* %999, i8** %1001, align 8, !dbg !3539
  %1002 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3540
  %1003 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1002, i32 0, i32 27, !dbg !3541
  %1004 = load i8*, i8** %1003, align 8, !dbg !3541
  %1005 = load i8*, i8** %9, align 8, !dbg !3542
  %1006 = call i8* @strcpy(i8* %1004, i8* %1005) #9, !dbg !3543
  br label %1264, !dbg !3544

; <label>:1007:                                   ; preds = %971
  %1008 = load i8*, i8** %9, align 8, !dbg !3545
  %1009 = call i32 @strcmp(i8* %1008, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !3547
  %1010 = icmp ne i32 %1009, 0, !dbg !3547
  br i1 %1010, label %1064, label %1011, !dbg !3548

; <label>:1011:                                   ; preds = %1007
  %1012 = load i32, i32* %12, align 4, !dbg !3549
  %1013 = add i32 %1012, 1, !dbg !3549
  store i32 %1013, i32* %12, align 4, !dbg !3549
  %1014 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3551
  %1015 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1014, i32 0, i32 3, !dbg !3553
  %1016 = load i8, i8* %1015, align 8, !dbg !3553
  %1017 = zext i8 %1016 to i32, !dbg !3551
  %1018 = icmp eq i32 %1017, 2, !dbg !3554
  br i1 %1018, label %1019, label %1021, !dbg !3555

; <label>:1019:                                   ; preds = %1011
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.119, i32 0, i32 0)), !dbg !3556
  %1020 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3558
  br label %1373, !dbg !3559

; <label>:1021:                                   ; preds = %1011
  %1022 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3560
  %1023 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1022, i32 0, i32 3, !dbg !3561
  store i8 10, i8* %1023, align 8, !dbg !3562
  %1024 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3563
  %1025 = load i32, i32* %12, align 4, !dbg !3564
  %1026 = zext i32 %1025 to i64, !dbg !3564
  %1027 = call i8* @strvec_slot(%struct._vector* %1024, i64 %1026), !dbg !3565
  store i8* %1027, i8** %9, align 8, !dbg !3566
  %1028 = load i8*, i8** %9, align 8, !dbg !3567
  %1029 = call i32 @strcmp(i8* %1028, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !3569
  %1030 = icmp ne i32 %1029, 0, !dbg !3569
  br i1 %1030, label %1034, label %1031, !dbg !3570

; <label>:1031:                                   ; preds = %1021
  %1032 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3571
  %1033 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1032, i32 0, i32 28, !dbg !3572
  store i8 3, i8* %1033, align 8, !dbg !3573
  br label %1059, !dbg !3571

; <label>:1034:                                   ; preds = %1021
  %1035 = load i8*, i8** %9, align 8, !dbg !3574
  %1036 = call i32 @strcmp(i8* %1035, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !3576
  %1037 = icmp ne i32 %1036, 0, !dbg !3576
  br i1 %1037, label %1041, label %1038, !dbg !3577

; <label>:1038:                                   ; preds = %1034
  %1039 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3578
  %1040 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1039, i32 0, i32 28, !dbg !3579
  store i8 0, i8* %1040, align 8, !dbg !3580
  br label %1058, !dbg !3578

; <label>:1041:                                   ; preds = %1034
  %1042 = load i8*, i8** %9, align 8, !dbg !3581
  %1043 = call i32 @strcmp(i8* %1042, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !3583
  %1044 = icmp ne i32 %1043, 0, !dbg !3583
  br i1 %1044, label %1048, label %1045, !dbg !3584

; <label>:1045:                                   ; preds = %1041
  %1046 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3585
  %1047 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1046, i32 0, i32 28, !dbg !3586
  store i8 1, i8* %1047, align 8, !dbg !3587
  br label %1057, !dbg !3585

; <label>:1048:                                   ; preds = %1041
  %1049 = load i8*, i8** %9, align 8, !dbg !3588
  %1050 = call zeroext i1 @get_u8(i8* %11, i8* %1049, i8 zeroext -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.120, i32 0, i32 0)), !dbg !3590
  br i1 %1050, label %1055, label %1051, !dbg !3591

; <label>:1051:                                   ; preds = %1048
  %1052 = load i8, i8* %11, align 1, !dbg !3592
  %1053 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3593
  %1054 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1053, i32 0, i32 28, !dbg !3594
  store i8 %1052, i8* %1054, align 8, !dbg !3595
  br label %1056, !dbg !3593

; <label>:1055:                                   ; preds = %1048
  br label %1373, !dbg !3596

; <label>:1056:                                   ; preds = %1051
  br label %1057

; <label>:1057:                                   ; preds = %1056, %1045
  br label %1058

; <label>:1058:                                   ; preds = %1057, %1038
  br label %1059

; <label>:1059:                                   ; preds = %1058, %1031
  %1060 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3597
  %1061 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1060, i32 0, i32 33, !dbg !3598
  %1062 = load i32, i32* %1061, align 8, !dbg !3599
  %1063 = or i32 %1062, 1048576, !dbg !3599
  store i32 %1063, i32* %1061, align 8, !dbg !3599
  br label %1263, !dbg !3600

; <label>:1064:                                   ; preds = %1007
  %1065 = load i8*, i8** %9, align 8, !dbg !3601
  %1066 = call i32 @strcmp(i8* %1065, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !3603
  %1067 = icmp ne i32 %1066, 0, !dbg !3603
  br i1 %1067, label %1071, label %1068, !dbg !3604

; <label>:1068:                                   ; preds = %1064
  %1069 = load i32, i32* %12, align 4, !dbg !3605
  %1070 = add i32 %1069, 1, !dbg !3605
  store i32 %1070, i32* %12, align 4, !dbg !3605
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i32 0, i32 0)), !dbg !3607
  br label %1262, !dbg !3608

; <label>:1071:                                   ; preds = %1064
  %1072 = load i8*, i8** %9, align 8, !dbg !3609
  %1073 = call i32 @strcmp(i8* %1072, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !3611
  %1074 = icmp ne i32 %1073, 0, !dbg !3611
  br i1 %1074, label %1129, label %1075, !dbg !3612

; <label>:1075:                                   ; preds = %1071
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.123, i32 0, i32 0)), !dbg !3613
  %1076 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3615
  %1077 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1076, i32 0, i32 32, !dbg !3617
  %1078 = load %struct._list*, %struct._list** %1077, align 8, !dbg !3617
  %1079 = icmp ne %struct._list* %1078, null, !dbg !3615
  br i1 %1079, label %1080, label %1083, !dbg !3618

; <label>:1080:                                   ; preds = %1075
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.124, i32 0, i32 0)), !dbg !3619
  %1081 = load i32, i32* %12, align 4, !dbg !3621
  %1082 = add i32 %1081, 2, !dbg !3621
  store i32 %1082, i32* %12, align 4, !dbg !3621
  br label %30, !dbg !3622, !llvm.loop !3623

; <label>:1083:                                   ; preds = %1075
  %1084 = call %struct._list* @alloc_list(void (i8*)* @free_nh, void (%struct._IO_FILE*, i8*)* null), !dbg !3624
  %1085 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3625
  %1086 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1085, i32 0, i32 32, !dbg !3626
  store %struct._list* %1084, %struct._list** %1086, align 8, !dbg !3627
  call void @llvm.dbg.declare(metadata %struct._nexthop** %18, metadata !3628, metadata !581), !dbg !3629
  %1087 = call i8* @zalloc(i64 72), !dbg !3630
  %1088 = bitcast i8* %1087 to %struct._nexthop*, !dbg !3631
  store %struct._nexthop* %1088, %struct._nexthop** %18, align 8, !dbg !3629
  %1089 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3632
  %1090 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1089, i32 0, i32 9, !dbg !3633
  %1091 = load %struct._ip_address*, %struct._ip_address** %1090, align 8, !dbg !3633
  %1092 = load %struct._nexthop*, %struct._nexthop** %18, align 8, !dbg !3634
  %1093 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1092, i32 0, i32 1, !dbg !3635
  store %struct._ip_address* %1091, %struct._ip_address** %1093, align 8, !dbg !3636
  %1094 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3637
  %1095 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1094, i32 0, i32 9, !dbg !3638
  store %struct._ip_address* null, %struct._ip_address** %1095, align 8, !dbg !3639
  %1096 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3640
  %1097 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1096, i32 0, i32 32, !dbg !3641
  %1098 = load %struct._list*, %struct._list** %1097, align 8, !dbg !3641
  %1099 = load %struct._nexthop*, %struct._nexthop** %18, align 8, !dbg !3642
  %1100 = bitcast %struct._nexthop* %1099 to i8*, !dbg !3642
  call void @list_add(%struct._list* %1098, i8* %1100), !dbg !3643
  %1101 = call i8* @zalloc(i64 72), !dbg !3644
  %1102 = bitcast i8* %1101 to %struct._nexthop*, !dbg !3645
  store %struct._nexthop* %1102, %struct._nexthop** %18, align 8, !dbg !3646
  %1103 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3647
  %1104 = load i32, i32* %12, align 4, !dbg !3648
  %1105 = add i32 %1104, 1, !dbg !3648
  store i32 %1105, i32* %12, align 4, !dbg !3648
  %1106 = zext i32 %1105 to i64, !dbg !3648
  %1107 = call i8* @strvec_slot(%struct._vector* %1103, i64 %1106), !dbg !3649
  %1108 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %1107, i32 0), !dbg !3650
  %1109 = load %struct._nexthop*, %struct._nexthop** %18, align 8, !dbg !3652
  %1110 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1109, i32 0, i32 1, !dbg !3653
  store %struct._ip_address* %1108, %struct._ip_address** %1110, align 8, !dbg !3654
  %1111 = load %struct._nexthop*, %struct._nexthop** %18, align 8, !dbg !3655
  %1112 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %1111, i32 0, i32 1, !dbg !3657
  %1113 = load %struct._ip_address*, %struct._ip_address** %1112, align 8, !dbg !3657
  %1114 = icmp ne %struct._ip_address* %1113, null, !dbg !3655
  br i1 %1114, label %1123, label %1115, !dbg !3658

; <label>:1115:                                   ; preds = %1083
  %1116 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3659
  %1117 = load i32, i32* %12, align 4, !dbg !3661
  %1118 = zext i32 %1117 to i64, !dbg !3661
  %1119 = call i8* @strvec_slot(%struct._vector* %1116, i64 %1118), !dbg !3662
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.125, i32 0, i32 0), i8* %1119), !dbg !3663
  %1120 = load %struct._nexthop*, %struct._nexthop** %18, align 8, !dbg !3665
  %1121 = bitcast %struct._nexthop* %1120 to i8*, !dbg !3665
  call void @free(i8* %1121) #9, !dbg !3666
  store %struct._nexthop* null, %struct._nexthop** %18, align 8, !dbg !3667
  %1122 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3668
  br label %1373, !dbg !3669

; <label>:1123:                                   ; preds = %1083
  %1124 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3670
  %1125 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1124, i32 0, i32 32, !dbg !3671
  %1126 = load %struct._list*, %struct._list** %1125, align 8, !dbg !3671
  %1127 = load %struct._nexthop*, %struct._nexthop** %18, align 8, !dbg !3672
  %1128 = bitcast %struct._nexthop* %1127 to i8*, !dbg !3672
  call void @list_add(%struct._list* %1126, i8* %1128), !dbg !3673
  br label %1261, !dbg !3674

; <label>:1129:                                   ; preds = %1071
  %1130 = load i8*, i8** %9, align 8, !dbg !3675
  %1131 = call i32 @strcmp(i8* %1130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0)) #8, !dbg !3677
  %1132 = icmp ne i32 %1131, 0, !dbg !3677
  br i1 %1132, label %1141, label %1133, !dbg !3678

; <label>:1133:                                   ; preds = %1129
  %1134 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3679
  %1135 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1134, i32 0, i32 32, !dbg !3682
  %1136 = load %struct._list*, %struct._list** %1135, align 8, !dbg !3682
  %1137 = icmp ne %struct._list* %1136, null, !dbg !3679
  br i1 %1137, label %1138, label %1139, !dbg !3683

; <label>:1138:                                   ; preds = %1133
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.127, i32 0, i32 0)), !dbg !3684
  br label %1140, !dbg !3684

; <label>:1139:                                   ; preds = %1133
  store i8 1, i8* %13, align 1, !dbg !3685
  br label %1140

; <label>:1140:                                   ; preds = %1139, %1138
  br label %1295, !dbg !3686

; <label>:1141:                                   ; preds = %1129
  %1142 = load i8*, i8** %9, align 8, !dbg !3688
  %1143 = call i32 @strcmp(i8* %1142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0)) #8, !dbg !3690
  %1144 = icmp ne i32 %1143, 0, !dbg !3690
  br i1 %1144, label %1148, label %1145, !dbg !3691

; <label>:1145:                                   ; preds = %1141
  %1146 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3692
  %1147 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1146, i32 0, i32 34, !dbg !3693
  store i8 1, i8* %1147, align 4, !dbg !3694
  br label %1259, !dbg !3692

; <label>:1148:                                   ; preds = %1141
  %1149 = load i8, i8* %6, align 1, !dbg !3695
  %1150 = trunc i8 %1149 to i1, !dbg !3695
  br i1 %1150, label %1151, label %1182, !dbg !3697

; <label>:1151:                                   ; preds = %1148
  %1152 = load i8*, i8** %9, align 8, !dbg !3698
  %1153 = call i32 @strcmp(i8* %1152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0)) #8, !dbg !3700
  %1154 = icmp ne i32 %1153, 0, !dbg !3700
  br i1 %1154, label %1182, label %1155, !dbg !3701

; <label>:1155:                                   ; preds = %1151
  %1156 = load i32, i32* %12, align 4, !dbg !3702
  %1157 = add i32 %1156, 1, !dbg !3702
  store i32 %1157, i32* %12, align 4, !dbg !3702
  %1158 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3704
  %1159 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1158, i32 0, i32 35, !dbg !3706
  %1160 = load %struct._static_track_group*, %struct._static_track_group** %1159, align 8, !dbg !3706
  %1161 = icmp ne %struct._static_track_group* %1160, null, !dbg !3704
  br i1 %1161, label %1162, label %1167, !dbg !3707

; <label>:1162:                                   ; preds = %1155
  %1163 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3708
  %1164 = load i32, i32* %12, align 4, !dbg !3710
  %1165 = zext i32 %1164 to i64, !dbg !3710
  %1166 = call i8* @strvec_slot(%struct._vector* %1163, i64 %1165), !dbg !3711
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i32 0, i32 0), i8* %1166), !dbg !3712
  br label %1295, !dbg !3714

; <label>:1167:                                   ; preds = %1155
  %1168 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3715
  %1169 = load i32, i32* %12, align 4, !dbg !3717
  %1170 = zext i32 %1169 to i64, !dbg !3717
  %1171 = call i8* @strvec_slot(%struct._vector* %1168, i64 %1170), !dbg !3718
  %1172 = call %struct._static_track_group* @find_track_group(i8* %1171), !dbg !3719
  %1173 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3721
  %1174 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1173, i32 0, i32 35, !dbg !3722
  store %struct._static_track_group* %1172, %struct._static_track_group** %1174, align 8, !dbg !3723
  %1175 = icmp ne %struct._static_track_group* %1172, null, !dbg !3723
  br i1 %1175, label %1181, label %1176, !dbg !3724

; <label>:1176:                                   ; preds = %1167
  %1177 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3725
  %1178 = load i32, i32* %12, align 4, !dbg !3726
  %1179 = zext i32 %1178 to i64, !dbg !3726
  %1180 = call i8* @strvec_slot(%struct._vector* %1177, i64 %1179), !dbg !3727
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.131, i32 0, i32 0), i8* %1180), !dbg !3728
  br label %1181, !dbg !3729

; <label>:1181:                                   ; preds = %1176, %1167
  br label %1258, !dbg !3730

; <label>:1182:                                   ; preds = %1151, %1148
  %1183 = load i8*, i8** %9, align 8, !dbg !3731
  %1184 = call i32 @strcmp(i8* %1183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !3734
  %1185 = icmp ne i32 %1184, 0, !dbg !3734
  br i1 %1185, label %1189, label %1186, !dbg !3735

; <label>:1186:                                   ; preds = %1182
  %1187 = load i32, i32* %12, align 4, !dbg !3736
  %1188 = add i32 %1187, 1, !dbg !3736
  store i32 %1188, i32* %12, align 4, !dbg !3736
  br label %1189, !dbg !3737

; <label>:1189:                                   ; preds = %1186, %1182
  %1190 = load i8*, i8** %9, align 8, !dbg !3738
  %1191 = call zeroext i1 @find_rttables_rtntype(i8* %1190, i8* %11), !dbg !3740
  br i1 %1191, label %1192, label %1202, !dbg !3741

; <label>:1192:                                   ; preds = %1189
  %1193 = load i8, i8* %11, align 1, !dbg !3742
  %1194 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3744
  %1195 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1194, i32 0, i32 29, !dbg !3745
  store i8 %1193, i8* %1195, align 1, !dbg !3746
  %1196 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3747
  %1197 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1196, i32 0, i32 33, !dbg !3748
  %1198 = load i32, i32* %1197, align 8, !dbg !3749
  %1199 = or i32 %1198, 2, !dbg !3749
  store i32 %1199, i32* %1197, align 8, !dbg !3749
  %1200 = load i32, i32* %12, align 4, !dbg !3750
  %1201 = add i32 %1200, 1, !dbg !3750
  store i32 %1201, i32* %12, align 4, !dbg !3750
  br label %1202, !dbg !3751

; <label>:1202:                                   ; preds = %1192, %1189
  %1203 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3752
  %1204 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1203, i32 0, i32 0, !dbg !3754
  %1205 = load %struct._ip_address*, %struct._ip_address** %1204, align 8, !dbg !3754
  %1206 = icmp ne %struct._ip_address* %1205, null, !dbg !3752
  br i1 %1206, label %1207, label %1214, !dbg !3755

; <label>:1207:                                   ; preds = %1202
  %1208 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3756
  %1209 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1208, i32 0, i32 0, !dbg !3757
  %1210 = load %struct._ip_address*, %struct._ip_address** %1209, align 8, !dbg !3757
  %1211 = bitcast %struct._ip_address* %1210 to i8*, !dbg !3756
  call void @free(i8* %1211) #9, !dbg !3758
  %1212 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3759
  %1213 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1212, i32 0, i32 0, !dbg !3760
  store %struct._ip_address* null, %struct._ip_address** %1213, align 8, !dbg !3761
  br label %1214, !dbg !3762

; <label>:1214:                                   ; preds = %1207, %1202
  %1215 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3763
  %1216 = load i32, i32* %12, align 4, !dbg !3764
  %1217 = zext i32 %1216 to i64, !dbg !3764
  %1218 = call i8* @strvec_slot(%struct._vector* %1215, i64 %1217), !dbg !3765
  store i8* %1218, i8** %17, align 8, !dbg !3766
  %1219 = load i8*, i8** %17, align 8, !dbg !3767
  %1220 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %1219, i32 1), !dbg !3768
  store %struct._ip_address* %1220, %struct._ip_address** %15, align 8, !dbg !3769
  %1221 = load %struct._ip_address*, %struct._ip_address** %15, align 8, !dbg !3770
  %1222 = icmp ne %struct._ip_address* %1221, null, !dbg !3770
  br i1 %1222, label %1226, label %1223, !dbg !3772

; <label>:1223:                                   ; preds = %1214
  %1224 = load i8*, i8** %17, align 8, !dbg !3773
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.132, i32 0, i32 0), i8* %1224), !dbg !3775
  %1225 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3776
  br label %1373, !dbg !3777

; <label>:1226:                                   ; preds = %1214
  %1227 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3778
  %1228 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1227, i32 0, i32 3, !dbg !3780
  %1229 = load i8, i8* %1228, align 8, !dbg !3780
  %1230 = zext i8 %1229 to i32, !dbg !3778
  %1231 = icmp eq i32 %1230, 0, !dbg !3781
  br i1 %1231, label %1232, label %1239, !dbg !3782

; <label>:1232:                                   ; preds = %1226
  %1233 = load %struct._ip_address*, %struct._ip_address** %15, align 8, !dbg !3783
  %1234 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %1233, i32 0, i32 0, !dbg !3785
  %1235 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %1234, i32 0, i32 0, !dbg !3786
  %1236 = load i8, i8* %1235, align 8, !dbg !3786
  %1237 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3787
  %1238 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1237, i32 0, i32 3, !dbg !3788
  store i8 %1236, i8* %1238, align 8, !dbg !3789
  br label %1254, !dbg !3787

; <label>:1239:                                   ; preds = %1226
  %1240 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3790
  %1241 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1240, i32 0, i32 3, !dbg !3792
  %1242 = load i8, i8* %1241, align 8, !dbg !3792
  %1243 = zext i8 %1242 to i32, !dbg !3790
  %1244 = load %struct._ip_address*, %struct._ip_address** %15, align 8, !dbg !3793
  %1245 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %1244, i32 0, i32 0, !dbg !3794
  %1246 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %1245, i32 0, i32 0, !dbg !3795
  %1247 = load i8, i8* %1246, align 8, !dbg !3795
  %1248 = zext i8 %1247 to i32, !dbg !3793
  %1249 = icmp ne i32 %1243, %1248, !dbg !3796
  br i1 %1249, label %1250, label %1253, !dbg !3797

; <label>:1250:                                   ; preds = %1239
  %1251 = load i8*, i8** %17, align 8, !dbg !3798
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.133, i32 0, i32 0), i8* %1251), !dbg !3800
  %1252 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3801
  br label %1373, !dbg !3802

; <label>:1253:                                   ; preds = %1239
  br label %1254

; <label>:1254:                                   ; preds = %1253, %1232
  %1255 = load %struct._ip_address*, %struct._ip_address** %15, align 8, !dbg !3803
  %1256 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3804
  %1257 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1256, i32 0, i32 0, !dbg !3805
  store %struct._ip_address* %1255, %struct._ip_address** %1257, align 8, !dbg !3806
  br label %1258

; <label>:1258:                                   ; preds = %1254, %1181
  br label %1259

; <label>:1259:                                   ; preds = %1258, %1145
  br label %1260

; <label>:1260:                                   ; preds = %1259
  br label %1261

; <label>:1261:                                   ; preds = %1260, %1123
  br label %1262

; <label>:1262:                                   ; preds = %1261, %1068
  br label %1263

; <label>:1263:                                   ; preds = %1262, %1059
  br label %1264

; <label>:1264:                                   ; preds = %1263, %991
  br label %1265

; <label>:1265:                                   ; preds = %1264, %961
  br label %1266

; <label>:1266:                                   ; preds = %1265, %947
  br label %1267

; <label>:1267:                                   ; preds = %1266, %919
  br label %1268

; <label>:1268:                                   ; preds = %1267, %899
  br label %1269

; <label>:1269:                                   ; preds = %1268, %880
  br label %1270

; <label>:1270:                                   ; preds = %1269, %845
  br label %1271

; <label>:1271:                                   ; preds = %1270, %813
  br label %1272

; <label>:1272:                                   ; preds = %1271, %780
  br label %1273

; <label>:1273:                                   ; preds = %1272, %747
  br label %1274

; <label>:1274:                                   ; preds = %1273, %728
  br label %1275

; <label>:1275:                                   ; preds = %1274, %695
  br label %1276

; <label>:1276:                                   ; preds = %1275, %641
  br label %1277

; <label>:1277:                                   ; preds = %1276, %587
  br label %1278

; <label>:1278:                                   ; preds = %1277, %551
  br label %1279

; <label>:1279:                                   ; preds = %1278, %534
  br label %1280

; <label>:1280:                                   ; preds = %1279, %503
  br label %1281

; <label>:1281:                                   ; preds = %1280, %494
  br label %1282

; <label>:1282:                                   ; preds = %1281, %485
  br label %1283

; <label>:1283:                                   ; preds = %1282, %477
  br label %1284

; <label>:1284:                                   ; preds = %1283, %451
  br label %1285

; <label>:1285:                                   ; preds = %1284, %421
  br label %1286

; <label>:1286:                                   ; preds = %1285, %396
  br label %1287

; <label>:1287:                                   ; preds = %1286, %375
  br label %1288

; <label>:1288:                                   ; preds = %1287, %350
  br label %1289

; <label>:1289:                                   ; preds = %1288, %328
  br label %1290

; <label>:1290:                                   ; preds = %1289, %246
  br label %1291

; <label>:1291:                                   ; preds = %1290, %122
  br label %1292

; <label>:1292:                                   ; preds = %1291, %106
  %1293 = load i32, i32* %12, align 4, !dbg !3807
  %1294 = add i32 %1293, 1, !dbg !3807
  store i32 %1294, i32* %12, align 4, !dbg !3807
  br label %30, !dbg !3808, !llvm.loop !3623

; <label>:1295:                                   ; preds = %1162, %1140, %30
  %1296 = load i8, i8* %13, align 1, !dbg !3810
  %1297 = trunc i8 %1296 to i1, !dbg !3810
  br i1 %1297, label %1298, label %1302, !dbg !3812

; <label>:1298:                                   ; preds = %1295
  %1299 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3813
  %1300 = load i32, i32* %12, align 4, !dbg !3814
  %1301 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3815
  call void @parse_nexthops(%struct._vector* %1299, i32 %1300, %struct._ip_route* %1301), !dbg !3816
  br label %1315, !dbg !3816

; <label>:1302:                                   ; preds = %1295
  %1303 = load i32, i32* %12, align 4, !dbg !3817
  %1304 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3819
  %1305 = getelementptr inbounds %struct._vector, %struct._vector* %1304, i32 0, i32 1, !dbg !3820
  %1306 = load i32, i32* %1305, align 4, !dbg !3820
  %1307 = icmp ult i32 %1303, %1306, !dbg !3821
  br i1 %1307, label %1308, label %1314, !dbg !3822

; <label>:1308:                                   ; preds = %1302
  %1309 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3823
  %1310 = load i32, i32* %12, align 4, !dbg !3825
  %1311 = zext i32 %1310 to i64, !dbg !3825
  %1312 = call i8* @strvec_slot(%struct._vector* %1309, i64 %1311), !dbg !3826
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.134, i32 0, i32 0), i8* %1312), !dbg !3827
  %1313 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3829
  br label %1373, !dbg !3830

; <label>:1314:                                   ; preds = %1302
  br label %1315

; <label>:1315:                                   ; preds = %1314, %1298
  %1316 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3831
  %1317 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1316, i32 0, i32 0, !dbg !3833
  %1318 = load %struct._ip_address*, %struct._ip_address** %1317, align 8, !dbg !3833
  %1319 = icmp ne %struct._ip_address* %1318, null, !dbg !3831
  br i1 %1319, label %1322, label %1320, !dbg !3834

; <label>:1320:                                   ; preds = %1315
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.135, i32 0, i32 0)), !dbg !3835
  %1321 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3837
  br label %1373, !dbg !3838

; <label>:1322:                                   ; preds = %1315
  %1323 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3839
  %1324 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1323, i32 0, i32 34, !dbg !3841
  %1325 = load i8, i8* %1324, align 4, !dbg !3841
  %1326 = trunc i8 %1325 to i1, !dbg !3841
  br i1 %1326, label %1356, label %1327, !dbg !3842

; <label>:1327:                                   ; preds = %1322
  %1328 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3843
  %1329 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1328, i32 0, i32 33, !dbg !3846
  %1330 = load i32, i32* %1329, align 8, !dbg !3846
  %1331 = and i32 %1330, 4, !dbg !3847
  %1332 = icmp ne i32 %1331, 0, !dbg !3847
  br i1 %1332, label %1333, label %1340, !dbg !3848

; <label>:1333:                                   ; preds = %1327
  %1334 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3849
  %1335 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1334, i32 0, i32 6, !dbg !3851
  %1336 = load i8, i8* %1335, align 8, !dbg !3851
  %1337 = zext i8 %1336 to i32, !dbg !3849
  %1338 = icmp ne i32 %1337, 112, !dbg !3852
  br i1 %1338, label %1339, label %1340, !dbg !3853

; <label>:1339:                                   ; preds = %1333
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.136, i32 0, i32 0), i32 112), !dbg !3854
  br label %1340, !dbg !3854

; <label>:1340:                                   ; preds = %1339, %1333, %1327
  %1341 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3855
  %1342 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1341, i32 0, i32 6, !dbg !3856
  store i8 112, i8* %1342, align 8, !dbg !3857
  %1343 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3858
  %1344 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1343, i32 0, i32 33, !dbg !3859
  %1345 = load i32, i32* %1344, align 8, !dbg !3860
  %1346 = or i32 %1345, 4, !dbg !3860
  store i32 %1346, i32* %1344, align 8, !dbg !3860
  %1347 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3861
  %1348 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1347, i32 0, i32 10, !dbg !3863
  %1349 = load %struct._interface*, %struct._interface** %1348, align 8, !dbg !3863
  %1350 = icmp ne %struct._interface* %1349, null, !dbg !3861
  br i1 %1350, label %1355, label %1351, !dbg !3864

; <label>:1351:                                   ; preds = %1340
  %1352 = load i8*, i8** %17, align 8, !dbg !3865
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.137, i32 0, i32 0), i8* %1352), !dbg !3867
  %1353 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3868
  %1354 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1353, i32 0, i32 34, !dbg !3869
  store i8 1, i8* %1354, align 4, !dbg !3870
  br label %1355, !dbg !3871

; <label>:1355:                                   ; preds = %1351, %1340
  br label %1356, !dbg !3872

; <label>:1356:                                   ; preds = %1355, %1322
  %1357 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3873
  %1358 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1357, i32 0, i32 35, !dbg !3875
  %1359 = load %struct._static_track_group*, %struct._static_track_group** %1358, align 8, !dbg !3875
  %1360 = icmp ne %struct._static_track_group* %1359, null, !dbg !3873
  br i1 %1360, label %1361, label %1369, !dbg !3876

; <label>:1361:                                   ; preds = %1356
  %1362 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3877
  %1363 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1362, i32 0, i32 10, !dbg !3879
  %1364 = load %struct._interface*, %struct._interface** %1363, align 8, !dbg !3879
  %1365 = icmp ne %struct._interface* %1364, null, !dbg !3877
  br i1 %1365, label %1369, label %1366, !dbg !3880

; <label>:1366:                                   ; preds = %1361
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.138, i32 0, i32 0)), !dbg !3881
  %1367 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3883
  %1368 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %1367, i32 0, i32 35, !dbg !3884
  store %struct._static_track_group* null, %struct._static_track_group** %1368, align 8, !dbg !3885
  br label %1369, !dbg !3886

; <label>:1369:                                   ; preds = %1366, %1361, %1356
  %1370 = load %struct._list*, %struct._list** %4, align 8, !dbg !3887
  %1371 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3888
  %1372 = bitcast %struct._ip_route* %1371 to i8*, !dbg !3888
  call void @list_add(%struct._list* %1370, i8* %1372), !dbg !3889
  br label %1376, !dbg !3890

; <label>:1373:                                   ; preds = %1320, %1308, %1250, %1223, %1115, %1055, %1019, %960, %918, %898, %875, %843, %831, %812, %779, %746, %727, %681, %627, %586, %550, %533, %474, %450, %415, %390, %369, %344, %325, %291, %276, %243, %209, %185, %103, %69
  %1374 = load %struct._ip_route*, %struct._ip_route** %7, align 8, !dbg !3891
  %1375 = bitcast %struct._ip_route* %1374 to i8*, !dbg !3891
  call void @free_iproute(i8* %1375), !dbg !3892
  br label %1376, !dbg !3893

; <label>:1376:                                   ; preds = %1373, %1369
  ret void, !dbg !3894
}

declare i8* @strvec_slot(%struct._vector*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._ip_address* @parse_ipaddress(%struct._ip_address*, i8*, i32) #2

declare void @report_config_error(i32, i8*, ...) #2

declare i32 @assert(...) #2

declare zeroext i1 @find_rttables_dsfield(i8*, i8*) #2

declare zeroext i1 @find_rttables_table(i8*, i32*) #2

declare zeroext i1 @find_rttables_proto(i8*, i8*) #2

declare zeroext i1 @find_rttables_scope(i8*, i8*) #2

declare zeroext i1 @get_u32(i32*, i8*, i32, i8*) #2

declare %struct._interface* @if_get_by_ifname(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @parse_encap(%struct._vector*, i32*, %struct._encap*) #0 !dbg !3895 {
  %4 = alloca i1, align 1
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._encap*, align 8
  %8 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !3899, metadata !581), !dbg !3900
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3901, metadata !581), !dbg !3902
  store %struct._encap* %2, %struct._encap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %7, metadata !3903, metadata !581), !dbg !3904
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3905, metadata !581), !dbg !3906
  %9 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3907
  %10 = getelementptr inbounds %struct._vector, %struct._vector* %9, i32 0, i32 1, !dbg !3909
  %11 = load i32, i32* %10, align 4, !dbg !3909
  %12 = load i32*, i32** %6, align 8, !dbg !3910
  %13 = load i32, i32* %12, align 4, !dbg !3911
  %14 = add i32 %13, 1, !dbg !3911
  store i32 %14, i32* %12, align 4, !dbg !3911
  %15 = icmp ule i32 %11, %14, !dbg !3912
  br i1 %15, label %16, label %17, !dbg !3913

; <label>:16:                                     ; preds = %3
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i32 0, i32 0)), !dbg !3914
  store i1 false, i1* %4, align 1, !dbg !3916
  br label %68, !dbg !3916

; <label>:17:                                     ; preds = %3
  %18 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3917
  %19 = load i32*, i32** %6, align 8, !dbg !3918
  %20 = load i32, i32* %19, align 4, !dbg !3919
  %21 = add i32 %20, 1, !dbg !3919
  store i32 %21, i32* %19, align 4, !dbg !3919
  %22 = zext i32 %20 to i64, !dbg !3920
  %23 = call i8* @strvec_slot(%struct._vector* %18, i64 %22), !dbg !3921
  store i8* %23, i8** %8, align 8, !dbg !3922
  %24 = load i8*, i8** %8, align 8, !dbg !3923
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0)) #8, !dbg !3925
  %26 = icmp ne i32 %25, 0, !dbg !3925
  br i1 %26, label %32, label %27, !dbg !3926

; <label>:27:                                     ; preds = %17
  %28 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3927
  %29 = load i32*, i32** %6, align 8, !dbg !3928
  %30 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !3929
  %31 = call i32 @parse_encap_ip(%struct._vector* %28, i32* %29, %struct._encap* %30), !dbg !3930
  br label %64, !dbg !3930

; <label>:32:                                     ; preds = %17
  %33 = load i8*, i8** %8, align 8, !dbg !3931
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0)) #8, !dbg !3933
  %35 = icmp ne i32 %34, 0, !dbg !3933
  br i1 %35, label %41, label %36, !dbg !3934

; <label>:36:                                     ; preds = %32
  %37 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3935
  %38 = load i32*, i32** %6, align 8, !dbg !3936
  %39 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !3937
  %40 = call i32 @parse_encap_ip6(%struct._vector* %37, i32* %38, %struct._encap* %39), !dbg !3938
  br label %63, !dbg !3938

; <label>:41:                                     ; preds = %32
  %42 = load i8*, i8** %8, align 8, !dbg !3939
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0)) #8, !dbg !3941
  %44 = icmp ne i32 %43, 0, !dbg !3941
  br i1 %44, label %50, label %45, !dbg !3942

; <label>:45:                                     ; preds = %41
  %46 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3943
  %47 = load i32*, i32** %6, align 8, !dbg !3944
  %48 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !3945
  %49 = call i32 @parse_encap_mpls(%struct._vector* %46, i32* %47, %struct._encap* %48), !dbg !3946
  br label %62, !dbg !3946

; <label>:50:                                     ; preds = %41
  %51 = load i8*, i8** %8, align 8, !dbg !3947
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0)) #8, !dbg !3949
  %53 = icmp ne i32 %52, 0, !dbg !3949
  br i1 %53, label %59, label %54, !dbg !3950

; <label>:54:                                     ; preds = %50
  %55 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !3951
  %56 = load i32*, i32** %6, align 8, !dbg !3952
  %57 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !3953
  %58 = call i32 @parse_encap_ila(%struct._vector* %55, i32* %56, %struct._encap* %57), !dbg !3954
  br label %61, !dbg !3954

; <label>:59:                                     ; preds = %50
  %60 = load i8*, i8** %8, align 8, !dbg !3955
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.162, i32 0, i32 0), i8* %60), !dbg !3957
  store i1 false, i1* %4, align 1, !dbg !3958
  br label %68, !dbg !3958

; <label>:61:                                     ; preds = %54
  br label %62

; <label>:62:                                     ; preds = %61, %45
  br label %63

; <label>:63:                                     ; preds = %62, %36
  br label %64

; <label>:64:                                     ; preds = %63, %27
  %65 = load i32*, i32** %6, align 8, !dbg !3959
  %66 = load i32, i32* %65, align 4, !dbg !3960
  %67 = add i32 %66, -1, !dbg !3960
  store i32 %67, i32* %65, align 4, !dbg !3960
  store i1 true, i1* %4, align 1, !dbg !3961
  br label %68, !dbg !3961

; <label>:68:                                     ; preds = %64, %59, %16
  %69 = load i1, i1* %4, align 1, !dbg !3962
  ret i1 %69, !dbg !3962
}

declare zeroext i1 @get_u8(i8*, i8*, i8 zeroext, i8*) #2

declare zeroext i1 @get_time_rtt(i32*, i8*, i8*) #2

declare zeroext i1 @get_realms(i32*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #2

declare void @list_add(%struct._list*, i8*) #2

declare %struct._static_track_group* @find_track_group(i8*) #2

declare zeroext i1 @find_rttables_rtntype(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @parse_nexthops(%struct._vector*, i32, %struct._ip_route*) #0 !dbg !3963 {
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._ip_route*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct._nexthop*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !3966, metadata !581), !dbg !3967
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3968, metadata !581), !dbg !3969
  store %struct._ip_route* %2, %struct._ip_route** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_route** %6, metadata !3970, metadata !581), !dbg !3971
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3972, metadata !581), !dbg !3973
  store i8 0, i8* %7, align 1, !dbg !3973
  call void @llvm.dbg.declare(metadata %struct._nexthop** %8, metadata !3974, metadata !581), !dbg !3975
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3976, metadata !581), !dbg !3977
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3978, metadata !581), !dbg !3979
  %11 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !3980
  %12 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %11, i32 0, i32 32, !dbg !3982
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !3982
  %14 = icmp ne %struct._list* %13, null, !dbg !3983
  br i1 %14, label %19, label %15, !dbg !3984

; <label>:15:                                     ; preds = %3
  %16 = call %struct._list* @alloc_list(void (i8*)* @free_nh, void (%struct._IO_FILE*, i8*)* null), !dbg !3985
  %17 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !3986
  %18 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %17, i32 0, i32 32, !dbg !3987
  store %struct._list* %16, %struct._list** %18, align 8, !dbg !3988
  br label %19, !dbg !3986

; <label>:19:                                     ; preds = %15, %3
  br label %20, !dbg !3989

; <label>:20:                                     ; preds = %289, %19
  %21 = load i32, i32* %5, align 4, !dbg !3990
  %22 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !3992
  %23 = getelementptr inbounds %struct._vector, %struct._vector* %22, i32 0, i32 1, !dbg !3993
  %24 = load i32, i32* %23, align 4, !dbg !3993
  %25 = icmp ult i32 %21, %24, !dbg !3994
  br i1 %25, label %26, label %34, !dbg !3995

; <label>:26:                                     ; preds = %20
  %27 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !3996
  %28 = load i32, i32* %5, align 4, !dbg !3998
  %29 = zext i32 %28 to i64, !dbg !3998
  %30 = call i8* @strvec_slot(%struct._vector* %27, i64 %29), !dbg !3999
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i8* %30) #8, !dbg !4000
  %32 = icmp ne i32 %31, 0, !dbg !4002
  %33 = xor i1 %32, true, !dbg !4002
  br label %34

; <label>:34:                                     ; preds = %26, %20
  %35 = phi i1 [ false, %20 ], [ %33, %26 ]
  br i1 %35, label %36, label %295, !dbg !4003

; <label>:36:                                     ; preds = %34
  %37 = load i32, i32* %5, align 4, !dbg !4005
  %38 = add i32 %37, 1, !dbg !4005
  store i32 %38, i32* %5, align 4, !dbg !4005
  %39 = call i8* @zalloc(i64 72), !dbg !4007
  %40 = bitcast i8* %39 to %struct._nexthop*, !dbg !4008
  store %struct._nexthop* %40, %struct._nexthop** %8, align 8, !dbg !4009
  br label %41, !dbg !4010

; <label>:41:                                     ; preds = %286, %36
  %42 = load i32, i32* %5, align 4, !dbg !4011
  %43 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4013
  %44 = getelementptr inbounds %struct._vector, %struct._vector* %43, i32 0, i32 1, !dbg !4014
  %45 = load i32, i32* %44, align 4, !dbg !4014
  %46 = icmp ult i32 %42, %45, !dbg !4015
  br i1 %46, label %47, label %289, !dbg !4016

; <label>:47:                                     ; preds = %41
  %48 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4017
  %49 = load i32, i32* %5, align 4, !dbg !4019
  %50 = zext i32 %49 to i64, !dbg !4019
  %51 = call i8* @strvec_slot(%struct._vector* %48, i64 %50), !dbg !4020
  store i8* %51, i8** %9, align 8, !dbg !4021
  %52 = load i8*, i8** %9, align 8, !dbg !4022
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !4024
  %54 = icmp ne i32 %53, 0, !dbg !4024
  br i1 %54, label %156, label %55, !dbg !4025

; <label>:55:                                     ; preds = %47
  %56 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4026
  %57 = load i32, i32* %5, align 4, !dbg !4028
  %58 = add i32 %57, 1, !dbg !4028
  store i32 %58, i32* %5, align 4, !dbg !4028
  %59 = zext i32 %58 to i64, !dbg !4028
  %60 = call i8* @strvec_slot(%struct._vector* %56, i64 %59), !dbg !4029
  store i8* %60, i8** %9, align 8, !dbg !4030
  %61 = load i8*, i8** %9, align 8, !dbg !4031
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !4033
  %63 = icmp ne i32 %62, 0, !dbg !4033
  br i1 %63, label %70, label %64, !dbg !4034

; <label>:64:                                     ; preds = %55
  store i8 2, i8* %7, align 1, !dbg !4035
  %65 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4037
  %66 = load i32, i32* %5, align 4, !dbg !4038
  %67 = add i32 %66, 1, !dbg !4038
  store i32 %67, i32* %5, align 4, !dbg !4038
  %68 = zext i32 %67 to i64, !dbg !4038
  %69 = call i8* @strvec_slot(%struct._vector* %65, i64 %68), !dbg !4039
  store i8* %69, i8** %9, align 8, !dbg !4040
  br label %81, !dbg !4041

; <label>:70:                                     ; preds = %55
  %71 = load i8*, i8** %9, align 8, !dbg !4042
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !4044
  %73 = icmp ne i32 %72, 0, !dbg !4044
  br i1 %73, label %80, label %74, !dbg !4045

; <label>:74:                                     ; preds = %70
  store i8 10, i8* %7, align 1, !dbg !4046
  %75 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4048
  %76 = load i32, i32* %5, align 4, !dbg !4049
  %77 = add i32 %76, 1, !dbg !4049
  store i32 %77, i32* %5, align 4, !dbg !4049
  %78 = zext i32 %77 to i64, !dbg !4049
  %79 = call i8* @strvec_slot(%struct._vector* %75, i64 %78), !dbg !4050
  store i8* %79, i8** %9, align 8, !dbg !4051
  br label %80, !dbg !4052

; <label>:80:                                     ; preds = %74, %70
  br label %81

; <label>:81:                                     ; preds = %80, %64
  %82 = load i8, i8* %7, align 1, !dbg !4053
  %83 = zext i8 %82 to i32, !dbg !4053
  %84 = icmp ne i32 %83, 0, !dbg !4055
  br i1 %84, label %85, label %107, !dbg !4056

; <label>:85:                                     ; preds = %81
  %86 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4057
  %87 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %86, i32 0, i32 3, !dbg !4060
  %88 = load i8, i8* %87, align 8, !dbg !4060
  %89 = zext i8 %88 to i32, !dbg !4057
  %90 = icmp eq i32 %89, 0, !dbg !4061
  br i1 %90, label %91, label %95, !dbg !4062

; <label>:91:                                     ; preds = %85
  %92 = load i8, i8* %7, align 1, !dbg !4063
  %93 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4064
  %94 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %93, i32 0, i32 3, !dbg !4065
  store i8 %92, i8* %94, align 8, !dbg !4066
  br label %106, !dbg !4064

; <label>:95:                                     ; preds = %85
  %96 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4067
  %97 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %96, i32 0, i32 3, !dbg !4069
  %98 = load i8, i8* %97, align 8, !dbg !4069
  %99 = zext i8 %98 to i32, !dbg !4067
  %100 = load i8, i8* %7, align 1, !dbg !4070
  %101 = zext i8 %100 to i32, !dbg !4070
  %102 = icmp ne i32 %99, %101, !dbg !4071
  br i1 %102, label %103, label %105, !dbg !4072

; <label>:103:                                    ; preds = %95
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.188, i32 0, i32 0)), !dbg !4073
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4075
  br label %308, !dbg !4076

; <label>:105:                                    ; preds = %95
  br label %106

; <label>:106:                                    ; preds = %105, %91
  br label %107, !dbg !4077

; <label>:107:                                    ; preds = %106, %81
  %108 = load i8*, i8** %9, align 8, !dbg !4078
  %109 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %108, i32 0), !dbg !4079
  %110 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4080
  %111 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %110, i32 0, i32 1, !dbg !4081
  store %struct._ip_address* %109, %struct._ip_address** %111, align 8, !dbg !4082
  %112 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4083
  %113 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %112, i32 0, i32 1, !dbg !4085
  %114 = load %struct._ip_address*, %struct._ip_address** %113, align 8, !dbg !4085
  %115 = icmp ne %struct._ip_address* %114, null, !dbg !4083
  br i1 %115, label %119, label %116, !dbg !4086

; <label>:116:                                    ; preds = %107
  %117 = load i8*, i8** %9, align 8, !dbg !4087
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.189, i32 0, i32 0), i8* %117), !dbg !4089
  %118 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4090
  br label %308, !dbg !4091

; <label>:119:                                    ; preds = %107
  %120 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4092
  %121 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %120, i32 0, i32 3, !dbg !4094
  %122 = load i8, i8* %121, align 8, !dbg !4094
  %123 = zext i8 %122 to i32, !dbg !4092
  %124 = icmp ne i32 %123, 0, !dbg !4095
  br i1 %124, label %125, label %140, !dbg !4096

; <label>:125:                                    ; preds = %119
  %126 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4097
  %127 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %126, i32 0, i32 1, !dbg !4099
  %128 = load %struct._ip_address*, %struct._ip_address** %127, align 8, !dbg !4099
  %129 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %128, i32 0, i32 0, !dbg !4100
  %130 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %129, i32 0, i32 0, !dbg !4101
  %131 = load i8, i8* %130, align 8, !dbg !4101
  %132 = zext i8 %131 to i32, !dbg !4097
  %133 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4102
  %134 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %133, i32 0, i32 3, !dbg !4103
  %135 = load i8, i8* %134, align 8, !dbg !4103
  %136 = zext i8 %135 to i32, !dbg !4102
  %137 = icmp ne i32 %132, %136, !dbg !4104
  br i1 %137, label %138, label %140, !dbg !4105

; <label>:138:                                    ; preds = %125
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.190, i32 0, i32 0)), !dbg !4107
  %139 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4110
  br label %308, !dbg !4111

; <label>:140:                                    ; preds = %125, %119
  %141 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4112
  %142 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %141, i32 0, i32 3, !dbg !4114
  %143 = load i8, i8* %142, align 8, !dbg !4114
  %144 = zext i8 %143 to i32, !dbg !4112
  %145 = icmp eq i32 %144, 0, !dbg !4115
  br i1 %145, label %146, label %155, !dbg !4116

; <label>:146:                                    ; preds = %140
  %147 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4117
  %148 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %147, i32 0, i32 1, !dbg !4119
  %149 = load %struct._ip_address*, %struct._ip_address** %148, align 8, !dbg !4119
  %150 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %149, i32 0, i32 0, !dbg !4120
  %151 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %150, i32 0, i32 0, !dbg !4121
  %152 = load i8, i8* %151, align 8, !dbg !4121
  %153 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4122
  %154 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %153, i32 0, i32 3, !dbg !4123
  store i8 %152, i8* %154, align 8, !dbg !4124
  br label %155, !dbg !4122

; <label>:155:                                    ; preds = %146, %140
  br label %286, !dbg !4125

; <label>:156:                                    ; preds = %47
  %157 = load i8*, i8** %9, align 8, !dbg !4126
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #8, !dbg !4128
  %159 = icmp ne i32 %158, 0, !dbg !4128
  br i1 %159, label %178, label %160, !dbg !4129

; <label>:160:                                    ; preds = %156
  %161 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4130
  %162 = load i32, i32* %5, align 4, !dbg !4132
  %163 = add i32 %162, 1, !dbg !4132
  store i32 %163, i32* %5, align 4, !dbg !4132
  %164 = zext i32 %163 to i64, !dbg !4132
  %165 = call i8* @strvec_slot(%struct._vector* %161, i64 %164), !dbg !4133
  store i8* %165, i8** %9, align 8, !dbg !4134
  %166 = load i8*, i8** %9, align 8, !dbg !4135
  %167 = call %struct._interface* @if_get_by_ifname(i8* %166, i32 1), !dbg !4136
  %168 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4137
  %169 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %168, i32 0, i32 2, !dbg !4138
  store %struct._interface* %167, %struct._interface** %169, align 8, !dbg !4139
  %170 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4140
  %171 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %170, i32 0, i32 2, !dbg !4142
  %172 = load %struct._interface*, %struct._interface** %171, align 8, !dbg !4142
  %173 = icmp ne %struct._interface* %172, null, !dbg !4140
  br i1 %173, label %177, label %174, !dbg !4143

; <label>:174:                                    ; preds = %160
  %175 = load i8*, i8** %9, align 8, !dbg !4144
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.85, i32 0, i32 0), i8* %175), !dbg !4146
  %176 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4147
  br label %308, !dbg !4148

; <label>:177:                                    ; preds = %160
  br label %285, !dbg !4149

; <label>:178:                                    ; preds = %156
  %179 = load i8*, i8** %9, align 8, !dbg !4150
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0)) #8, !dbg !4152
  %181 = icmp ne i32 %180, 0, !dbg !4152
  br i1 %181, label %205, label %182, !dbg !4153

; <label>:182:                                    ; preds = %178
  %183 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4154
  %184 = load i32, i32* %5, align 4, !dbg !4157
  %185 = add i32 %184, 1, !dbg !4157
  store i32 %185, i32* %5, align 4, !dbg !4157
  %186 = zext i32 %185 to i64, !dbg !4157
  %187 = call i8* @strvec_slot(%struct._vector* %183, i64 %186), !dbg !4158
  %188 = call zeroext i1 @get_u32(i32* %10, i8* %187, i32 256, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.192, i32 0, i32 0)), !dbg !4159
  br i1 %188, label %189, label %190, !dbg !4161

; <label>:189:                                    ; preds = %182
  br label %308, !dbg !4162

; <label>:190:                                    ; preds = %182
  %191 = load i32, i32* %10, align 4, !dbg !4163
  %192 = icmp ne i32 %191, 0, !dbg !4163
  br i1 %192, label %194, label %193, !dbg !4165

; <label>:193:                                    ; preds = %190
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.193, i32 0, i32 0)), !dbg !4166
  br label %308, !dbg !4168

; <label>:194:                                    ; preds = %190
  %195 = load i32, i32* %10, align 4, !dbg !4169
  %196 = add i32 %195, -1, !dbg !4169
  store i32 %196, i32* %10, align 4, !dbg !4169
  %197 = and i32 %196, 255, !dbg !4170
  %198 = trunc i32 %197 to i8, !dbg !4171
  %199 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4172
  %200 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %199, i32 0, i32 3, !dbg !4173
  store i8 %198, i8* %200, align 8, !dbg !4174
  %201 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4175
  %202 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %201, i32 0, i32 0, !dbg !4176
  %203 = load i32, i32* %202, align 8, !dbg !4177
  %204 = or i32 %203, 32, !dbg !4177
  store i32 %204, i32* %202, align 8, !dbg !4177
  br label %284, !dbg !4178

; <label>:205:                                    ; preds = %178
  %206 = load i8*, i8** %9, align 8, !dbg !4179
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !4181
  %208 = icmp ne i32 %207, 0, !dbg !4181
  br i1 %208, label %216, label %209, !dbg !4182

; <label>:209:                                    ; preds = %205
  %210 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4183
  %211 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %210, i32 0, i32 4, !dbg !4185
  %212 = load i8, i8* %211, align 1, !dbg !4186
  %213 = zext i8 %212 to i32, !dbg !4186
  %214 = or i32 %213, 4, !dbg !4186
  %215 = trunc i32 %214 to i8, !dbg !4186
  store i8 %215, i8* %211, align 1, !dbg !4186
  br label %283, !dbg !4187

; <label>:216:                                    ; preds = %205
  %217 = load i8*, i8** %9, align 8, !dbg !4188
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !4190
  %219 = icmp ne i32 %218, 0, !dbg !4190
  br i1 %219, label %225, label %220, !dbg !4191

; <label>:220:                                    ; preds = %216
  %221 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4192
  %222 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4194
  %223 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %222, i32 0, i32 6, !dbg !4195
  %224 = call zeroext i1 @parse_encap(%struct._vector* %221, i32* %5, %struct._encap* %223), !dbg !4196
  br label %282, !dbg !4197

; <label>:225:                                    ; preds = %216
  %226 = load i8*, i8** %9, align 8, !dbg !4198
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !4200
  %228 = icmp ne i32 %227, 0, !dbg !4200
  br i1 %228, label %263, label %229, !dbg !4201

; <label>:229:                                    ; preds = %225
  %230 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4202
  %231 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %230, i32 0, i32 5, !dbg !4205
  %232 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4206
  %233 = load i32, i32* %5, align 4, !dbg !4207
  %234 = add i32 %233, 1, !dbg !4207
  store i32 %234, i32* %5, align 4, !dbg !4207
  %235 = zext i32 %234 to i64, !dbg !4207
  %236 = call i8* @strvec_slot(%struct._vector* %232, i64 %235), !dbg !4208
  %237 = call zeroext i1 @get_realms(i32* %231, i8* %236), !dbg !4209
  br i1 %237, label %238, label %244, !dbg !4211

; <label>:238:                                    ; preds = %229
  %239 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4212
  %240 = load i32, i32* %5, align 4, !dbg !4214
  %241 = zext i32 %240 to i64, !dbg !4214
  %242 = call i8* @strvec_slot(%struct._vector* %239, i64 %241), !dbg !4215
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i8* %242), !dbg !4216
  %243 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4218
  br label %308, !dbg !4219

; <label>:244:                                    ; preds = %229
  %245 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4220
  %246 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %245, i32 0, i32 3, !dbg !4222
  %247 = load i8, i8* %246, align 8, !dbg !4222
  %248 = zext i8 %247 to i32, !dbg !4220
  %249 = icmp eq i32 %248, 0, !dbg !4223
  br i1 %249, label %250, label %253, !dbg !4224

; <label>:250:                                    ; preds = %244
  %251 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4225
  %252 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %251, i32 0, i32 3, !dbg !4227
  store i8 2, i8* %252, align 8, !dbg !4228
  br label %262, !dbg !4225

; <label>:253:                                    ; preds = %244
  %254 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4229
  %255 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %254, i32 0, i32 3, !dbg !4231
  %256 = load i8, i8* %255, align 8, !dbg !4231
  %257 = zext i8 %256 to i32, !dbg !4229
  %258 = icmp ne i32 %257, 2, !dbg !4232
  br i1 %258, label %259, label %261, !dbg !4233

; <label>:259:                                    ; preds = %253
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.194, i32 0, i32 0)), !dbg !4234
  %260 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4236
  br label %308, !dbg !4237

; <label>:261:                                    ; preds = %253
  br label %262

; <label>:262:                                    ; preds = %261, %250
  br label %281, !dbg !4238

; <label>:263:                                    ; preds = %225
  %264 = load i8*, i8** %9, align 8, !dbg !4239
  %265 = call i32 @strcmp(i8* %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !4241
  %266 = icmp ne i32 %265, 0, !dbg !4241
  br i1 %266, label %280, label %267, !dbg !4242

; <label>:267:                                    ; preds = %263
  %268 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4243
  %269 = load i32, i32* %5, align 4, !dbg !4246
  %270 = add i32 %269, 1, !dbg !4246
  store i32 %270, i32* %5, align 4, !dbg !4246
  %271 = zext i32 %270 to i64, !dbg !4246
  %272 = call i8* @strvec_slot(%struct._vector* %268, i64 %271), !dbg !4247
  %273 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* %272) #8, !dbg !4248
  %274 = icmp ne i32 %273, 0, !dbg !4250
  br i1 %274, label %278, label %275, !dbg !4251

; <label>:275:                                    ; preds = %267
  %276 = load i32, i32* %5, align 4, !dbg !4252
  %277 = add i32 %276, 1, !dbg !4252
  store i32 %277, i32* %5, align 4, !dbg !4252
  br label %278, !dbg !4253

; <label>:278:                                    ; preds = %275, %267
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.195, i32 0, i32 0)), !dbg !4254
  %279 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4255
  br label %308, !dbg !4256

; <label>:280:                                    ; preds = %263
  br label %289, !dbg !4257

; <label>:281:                                    ; preds = %262
  br label %282

; <label>:282:                                    ; preds = %281, %220
  br label %283

; <label>:283:                                    ; preds = %282, %209
  br label %284

; <label>:284:                                    ; preds = %283, %194
  br label %285

; <label>:285:                                    ; preds = %284, %177
  br label %286

; <label>:286:                                    ; preds = %285, %155
  %287 = load i32, i32* %5, align 4, !dbg !4258
  %288 = add i32 %287, 1, !dbg !4258
  store i32 %288, i32* %5, align 4, !dbg !4258
  br label %41, !dbg !4259, !llvm.loop !4261

; <label>:289:                                    ; preds = %280, %41
  %290 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4262
  %291 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %290, i32 0, i32 32, !dbg !4263
  %292 = load %struct._list*, %struct._list** %291, align 8, !dbg !4263
  %293 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4264
  %294 = bitcast %struct._nexthop* %293 to i8*, !dbg !4264
  call void @list_add(%struct._list* %292, i8* %294), !dbg !4265
  store %struct._nexthop* null, %struct._nexthop** %8, align 8, !dbg !4266
  br label %20, !dbg !4267, !llvm.loop !4269

; <label>:295:                                    ; preds = %34
  %296 = load i32, i32* %5, align 4, !dbg !4270
  %297 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4272
  %298 = getelementptr inbounds %struct._vector, %struct._vector* %297, i32 0, i32 1, !dbg !4273
  %299 = load i32, i32* %298, align 4, !dbg !4273
  %300 = icmp ult i32 %296, %299, !dbg !4274
  br i1 %300, label %301, label %307, !dbg !4275

; <label>:301:                                    ; preds = %295
  %302 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !4276
  %303 = load i32, i32* %5, align 4, !dbg !4278
  %304 = zext i32 %303 to i64, !dbg !4278
  %305 = call i8* @strvec_slot(%struct._vector* %302, i64 %304), !dbg !4279
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.196, i32 0, i32 0), i8* %305), !dbg !4280
  %306 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !4282
  br label %308, !dbg !4283

; <label>:307:                                    ; preds = %295
  br label %314, !dbg !4284

; <label>:308:                                    ; preds = %301, %278, %259, %238, %193, %189, %174, %138, %116, %103
  %309 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4285
  %310 = icmp ne %struct._nexthop* %309, null, !dbg !4285
  br i1 %310, label %311, label %314, !dbg !4288

; <label>:311:                                    ; preds = %308
  %312 = load %struct._nexthop*, %struct._nexthop** %8, align 8, !dbg !4289
  %313 = bitcast %struct._nexthop* %312 to i8*, !dbg !4289
  call void @free(i8* %313) #9, !dbg !4292
  store %struct._nexthop* null, %struct._nexthop** %8, align 8, !dbg !4293
  br label %314, !dbg !4294

; <label>:314:                                    ; preds = %307, %311, %308
  ret void, !dbg !4295
}

; Function Attrs: nounwind uwtable
define void @clear_diff_routes(%struct._list*, %struct._list*) #0 !dbg !4296 {
  %3 = alloca %struct._list*, align 8
  %4 = alloca %struct._list*, align 8
  %5 = alloca %struct._ip_route*, align 8
  %6 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !4299, metadata !581), !dbg !4300
  store %struct._list* %1, %struct._list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %4, metadata !4301, metadata !581), !dbg !4302
  call void @llvm.dbg.declare(metadata %struct._ip_route** %5, metadata !4303, metadata !581), !dbg !4304
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !4305, metadata !581), !dbg !4306
  %7 = load %struct._list*, %struct._list** %3, align 8, !dbg !4307
  %8 = icmp eq %struct._list* %7, null, !dbg !4309
  br i1 %8, label %19, label %9, !dbg !4310

; <label>:9:                                      ; preds = %2
  %10 = load %struct._list*, %struct._list** %3, align 8, !dbg !4311
  %11 = getelementptr inbounds %struct._list, %struct._list* %10, i32 0, i32 0, !dbg !4313
  %12 = load %struct._element*, %struct._element** %11, align 8, !dbg !4313
  %13 = icmp eq %struct._element* %12, null, !dbg !4314
  br i1 %13, label %14, label %20, !dbg !4315

; <label>:14:                                     ; preds = %9
  %15 = load %struct._list*, %struct._list** %3, align 8, !dbg !4316
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1, !dbg !4318
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !4318
  %18 = icmp eq %struct._element* %17, null, !dbg !4319
  br i1 %18, label %19, label %20, !dbg !4320

; <label>:19:                                     ; preds = %14, %2
  br label %84, !dbg !4321

; <label>:20:                                     ; preds = %14, %9
  %21 = load %struct._list*, %struct._list** %4, align 8, !dbg !4322
  %22 = icmp eq %struct._list* %21, null, !dbg !4324
  br i1 %22, label %33, label %23, !dbg !4325

; <label>:23:                                     ; preds = %20
  %24 = load %struct._list*, %struct._list** %4, align 8, !dbg !4326
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i32 0, i32 0, !dbg !4328
  %26 = load %struct._element*, %struct._element** %25, align 8, !dbg !4328
  %27 = icmp eq %struct._element* %26, null, !dbg !4329
  br i1 %27, label %28, label %35, !dbg !4330

; <label>:28:                                     ; preds = %23
  %29 = load %struct._list*, %struct._list** %4, align 8, !dbg !4331
  %30 = getelementptr inbounds %struct._list, %struct._list* %29, i32 0, i32 1, !dbg !4333
  %31 = load %struct._element*, %struct._element** %30, align 8, !dbg !4333
  %32 = icmp eq %struct._element* %31, null, !dbg !4334
  br i1 %32, label %33, label %35, !dbg !4335

; <label>:33:                                     ; preds = %28, %20
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.139, i32 0, i32 0)), !dbg !4336
  %34 = load %struct._list*, %struct._list** %3, align 8, !dbg !4338
  call void @netlink_rtlist(%struct._list* %34, i32 0), !dbg !4339
  br label %84, !dbg !4340

; <label>:35:                                     ; preds = %28, %23
  %36 = load %struct._list*, %struct._list** %3, align 8, !dbg !4341
  %37 = icmp ne %struct._list* %36, null, !dbg !4343
  br i1 %37, label %39, label %38, !dbg !4344

; <label>:38:                                     ; preds = %35
  br label %43, !dbg !4345

; <label>:39:                                     ; preds = %35
  %40 = load %struct._list*, %struct._list** %3, align 8, !dbg !4347
  %41 = getelementptr inbounds %struct._list, %struct._list* %40, i32 0, i32 0, !dbg !4349
  %42 = load %struct._element*, %struct._element** %41, align 8, !dbg !4349
  br label %43, !dbg !4350

; <label>:43:                                     ; preds = %39, %38
  %44 = phi %struct._element* [ null, %38 ], [ %42, %39 ], !dbg !4351
  store %struct._element* %44, %struct._element** %6, align 8, !dbg !4353
  br label %45, !dbg !4354

; <label>:45:                                     ; preds = %80, %43
  %46 = load %struct._element*, %struct._element** %6, align 8, !dbg !4355
  %47 = icmp ne %struct._element* %46, null, !dbg !4358
  br i1 %47, label %48, label %84, !dbg !4358

; <label>:48:                                     ; preds = %45
  %49 = load %struct._element*, %struct._element** %6, align 8, !dbg !4359
  %50 = getelementptr inbounds %struct._element, %struct._element* %49, i32 0, i32 2, !dbg !4361
  %51 = load i8*, i8** %50, align 8, !dbg !4361
  %52 = bitcast i8* %51 to %struct._ip_route*, !dbg !4362
  store %struct._ip_route* %52, %struct._ip_route** %5, align 8, !dbg !4363
  %53 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4364
  %54 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %53, i32 0, i32 36, !dbg !4366
  %55 = load i8, i8* %54, align 8, !dbg !4366
  %56 = trunc i8 %55 to i1, !dbg !4366
  br i1 %56, label %57, label %79, !dbg !4367

; <label>:57:                                     ; preds = %48
  %58 = load %struct._list*, %struct._list** %4, align 8, !dbg !4368
  %59 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4371
  %60 = call zeroext i1 @route_exist(%struct._list* %58, %struct._ip_route* %59), !dbg !4372
  br i1 %60, label %75, label %61, !dbg !4373

; <label>:61:                                     ; preds = %57
  %62 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4374
  %63 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %62, i32 0, i32 0, !dbg !4376
  %64 = load %struct._ip_address*, %struct._ip_address** %63, align 8, !dbg !4376
  %65 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %64), !dbg !4377
  %66 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4378
  %67 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %66, i32 0, i32 0, !dbg !4379
  %68 = load %struct._ip_address*, %struct._ip_address** %67, align 8, !dbg !4379
  %69 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %68, i32 0, i32 0, !dbg !4380
  %70 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %69, i32 0, i32 1, !dbg !4381
  %71 = load i8, i8* %70, align 1, !dbg !4381
  %72 = zext i8 %71 to i32, !dbg !4378
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.140, i32 0, i32 0), i8* %65, i32 %72), !dbg !4382
  %73 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4383
  %74 = call i32 @netlink_route(%struct._ip_route* %73, i32 0), !dbg !4384
  br label %78, !dbg !4385

; <label>:75:                                     ; preds = %57
  %76 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4386
  %77 = call i32 @netlink_route(%struct._ip_route* %76, i32 2), !dbg !4388
  br label %78

; <label>:78:                                     ; preds = %75, %61
  br label %79, !dbg !4389

; <label>:79:                                     ; preds = %78, %48
  br label %80, !dbg !4390

; <label>:80:                                     ; preds = %79
  %81 = load %struct._element*, %struct._element** %6, align 8, !dbg !4391
  %82 = getelementptr inbounds %struct._element, %struct._element* %81, i32 0, i32 0, !dbg !4393
  %83 = load %struct._element*, %struct._element** %82, align 8, !dbg !4393
  store %struct._element* %83, %struct._element** %6, align 8, !dbg !4394
  br label %45, !dbg !4395, !llvm.loop !4396

; <label>:84:                                     ; preds = %19, %33, %45
  ret void, !dbg !4398
}

declare void @log_message(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @route_exist(%struct._list*, %struct._ip_route*) #0 !dbg !4399 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._list*, align 8
  %5 = alloca %struct._ip_route*, align 8
  %6 = alloca %struct._ip_route*, align 8
  %7 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %4, metadata !4402, metadata !581), !dbg !4403
  store %struct._ip_route* %1, %struct._ip_route** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_route** %5, metadata !4404, metadata !581), !dbg !4405
  call void @llvm.dbg.declare(metadata %struct._ip_route** %6, metadata !4406, metadata !581), !dbg !4407
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !4408, metadata !581), !dbg !4409
  %8 = load %struct._list*, %struct._list** %4, align 8, !dbg !4410
  %9 = icmp ne %struct._list* %8, null, !dbg !4412
  br i1 %9, label %11, label %10, !dbg !4413

; <label>:10:                                     ; preds = %2
  br label %15, !dbg !4414

; <label>:11:                                     ; preds = %2
  %12 = load %struct._list*, %struct._list** %4, align 8, !dbg !4416
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i32 0, i32 0, !dbg !4418
  %14 = load %struct._element*, %struct._element** %13, align 8, !dbg !4418
  br label %15, !dbg !4419

; <label>:15:                                     ; preds = %11, %10
  %16 = phi %struct._element* [ null, %10 ], [ %14, %11 ], !dbg !4420
  store %struct._element* %16, %struct._element** %7, align 8, !dbg !4422
  br label %17, !dbg !4423

; <label>:17:                                     ; preds = %401, %15
  %18 = load %struct._element*, %struct._element** %7, align 8, !dbg !4424
  %19 = icmp ne %struct._element* %18, null, !dbg !4427
  br i1 %19, label %20, label %405, !dbg !4427

; <label>:20:                                     ; preds = %17
  %21 = load %struct._element*, %struct._element** %7, align 8, !dbg !4428
  %22 = getelementptr inbounds %struct._element, %struct._element* %21, i32 0, i32 2, !dbg !4430
  %23 = load i8*, i8** %22, align 8, !dbg !4430
  %24 = bitcast i8* %23 to %struct._ip_route*, !dbg !4431
  store %struct._ip_route* %24, %struct._ip_route** %6, align 8, !dbg !4432
  %25 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4433
  %26 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %25, i32 0, i32 0, !dbg !4435
  %27 = load %struct._ip_address*, %struct._ip_address** %26, align 8, !dbg !4435
  %28 = icmp ne %struct._ip_address* %27, null, !dbg !4436
  br i1 %28, label %35, label %29, !dbg !4437

; <label>:29:                                     ; preds = %20
  %30 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4438
  %31 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %30, i32 0, i32 0, !dbg !4440
  %32 = load %struct._ip_address*, %struct._ip_address** %31, align 8, !dbg !4440
  %33 = icmp ne %struct._ip_address* %32, null, !dbg !4441
  br i1 %33, label %35, label %34, !dbg !4442

; <label>:34:                                     ; preds = %29
  br i1 true, label %344, label %400, !dbg !4443

; <label>:35:                                     ; preds = %29, %20
  %36 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4445
  %37 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %36, i32 0, i32 0, !dbg !4447
  %38 = load %struct._ip_address*, %struct._ip_address** %37, align 8, !dbg !4447
  %39 = icmp ne %struct._ip_address* %38, null, !dbg !4448
  %40 = xor i1 %39, true, !dbg !4448
  %41 = zext i1 %40 to i32, !dbg !4448
  %42 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4449
  %43 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %42, i32 0, i32 0, !dbg !4450
  %44 = load %struct._ip_address*, %struct._ip_address** %43, align 8, !dbg !4450
  %45 = icmp ne %struct._ip_address* %44, null, !dbg !4451
  %46 = xor i1 %45, true, !dbg !4451
  %47 = zext i1 %46 to i32, !dbg !4451
  %48 = icmp ne i32 %41, %47, !dbg !4452
  br i1 %48, label %49, label %50, !dbg !4453

; <label>:49:                                     ; preds = %35
  br i1 false, label %344, label %400, !dbg !4454

; <label>:50:                                     ; preds = %35
  %51 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4456
  %52 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %51, i32 0, i32 0, !dbg !4458
  %53 = load %struct._ip_address*, %struct._ip_address** %52, align 8, !dbg !4458
  %54 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %53, i32 0, i32 0, !dbg !4459
  %55 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %54, i32 0, i32 0, !dbg !4460
  %56 = load i8, i8* %55, align 8, !dbg !4460
  %57 = zext i8 %56 to i32, !dbg !4461
  %58 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4462
  %59 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %58, i32 0, i32 0, !dbg !4463
  %60 = load %struct._ip_address*, %struct._ip_address** %59, align 8, !dbg !4463
  %61 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %60, i32 0, i32 0, !dbg !4464
  %62 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %61, i32 0, i32 0, !dbg !4465
  %63 = load i8, i8* %62, align 8, !dbg !4465
  %64 = zext i8 %63 to i32, !dbg !4466
  %65 = icmp ne i32 %57, %64, !dbg !4467
  br i1 %65, label %66, label %67, !dbg !4468

; <label>:66:                                     ; preds = %50
  br i1 false, label %344, label %400, !dbg !4469

; <label>:67:                                     ; preds = %50
  %68 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4471
  %69 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %68, i32 0, i32 0, !dbg !4473
  %70 = load %struct._ip_address*, %struct._ip_address** %69, align 8, !dbg !4473
  %71 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %70, i32 0, i32 0, !dbg !4474
  %72 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %71, i32 0, i32 0, !dbg !4475
  %73 = load i8, i8* %72, align 8, !dbg !4475
  %74 = zext i8 %73 to i32, !dbg !4476
  %75 = icmp eq i32 %74, 10, !dbg !4477
  br i1 %75, label %76, label %241, !dbg !4478

; <label>:76:                                     ; preds = %67
  %77 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4479
  %78 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %77, i32 0, i32 0, !dbg !4481
  %79 = load %struct._ip_address*, %struct._ip_address** %78, align 8, !dbg !4481
  %80 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %79, i32 0, i32 1, !dbg !4482
  %81 = bitcast %union.anon* %80 to %struct.in6_addr*, !dbg !4483
  %82 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %81, i32 0, i32 0, !dbg !4484
  %83 = bitcast %union.anon.0* %82 to [4 x i32]*, !dbg !4485
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %83, i64 0, i64 0, !dbg !4486
  %85 = load i32, i32* %84, align 8, !dbg !4486
  %86 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4485
  %87 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %86, i32 0, i32 0, !dbg !4482
  %88 = load %struct._ip_address*, %struct._ip_address** %87, align 8, !dbg !4482
  %89 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %88, i32 0, i32 1, !dbg !4487
  %90 = bitcast %union.anon* %89 to %struct.in6_addr*, !dbg !4488
  %91 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %90, i32 0, i32 0, !dbg !4484
  %92 = bitcast %union.anon.0* %91 to [4 x i32]*, !dbg !4485
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 0, !dbg !4489
  %94 = load i32, i32* %93, align 8, !dbg !4489
  %95 = icmp eq i32 %85, %94, !dbg !4490
  br i1 %95, label %96, label %400, !dbg !4490

; <label>:96:                                     ; preds = %76
  %97 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4491
  %98 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %97, i32 0, i32 0, !dbg !4493
  %99 = load %struct._ip_address*, %struct._ip_address** %98, align 8, !dbg !4493
  %100 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %99, i32 0, i32 1, !dbg !4494
  %101 = bitcast %union.anon* %100 to %struct.in6_addr*, !dbg !4495
  %102 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %101, i32 0, i32 0, !dbg !4496
  %103 = bitcast %union.anon.0* %102 to [4 x i32]*, !dbg !4491
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 0, i64 1, !dbg !4497
  %105 = load i32, i32* %104, align 4, !dbg !4497
  %106 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4491
  %107 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %106, i32 0, i32 0, !dbg !4498
  %108 = load %struct._ip_address*, %struct._ip_address** %107, align 8, !dbg !4498
  %109 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %108, i32 0, i32 1, !dbg !4499
  %110 = bitcast %union.anon* %109 to %struct.in6_addr*, !dbg !4500
  %111 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %110, i32 0, i32 0, !dbg !4496
  %112 = bitcast %union.anon.0* %111 to [4 x i32]*, !dbg !4491
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %112, i64 0, i64 1, !dbg !4497
  %114 = load i32, i32* %113, align 4, !dbg !4497
  %115 = icmp eq i32 %105, %114, !dbg !4501
  br i1 %115, label %116, label %400, !dbg !4501

; <label>:116:                                    ; preds = %96
  %117 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4502
  %118 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %117, i32 0, i32 0, !dbg !4504
  %119 = load %struct._ip_address*, %struct._ip_address** %118, align 8, !dbg !4504
  %120 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %119, i32 0, i32 1, !dbg !4505
  %121 = bitcast %union.anon* %120 to %struct.in6_addr*, !dbg !4506
  %122 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %121, i32 0, i32 0, !dbg !4507
  %123 = bitcast %union.anon.0* %122 to [4 x i32]*, !dbg !4502
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %123, i64 0, i64 2, !dbg !4508
  %125 = load i32, i32* %124, align 8, !dbg !4508
  %126 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4502
  %127 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %126, i32 0, i32 0, !dbg !4509
  %128 = load %struct._ip_address*, %struct._ip_address** %127, align 8, !dbg !4509
  %129 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %128, i32 0, i32 1, !dbg !4510
  %130 = bitcast %union.anon* %129 to %struct.in6_addr*, !dbg !4511
  %131 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %130, i32 0, i32 0, !dbg !4507
  %132 = bitcast %union.anon.0* %131 to [4 x i32]*, !dbg !4502
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %132, i64 0, i64 2, !dbg !4508
  %134 = load i32, i32* %133, align 8, !dbg !4508
  %135 = icmp eq i32 %125, %134, !dbg !4512
  br i1 %135, label %136, label %400, !dbg !4512

; <label>:136:                                    ; preds = %116
  %137 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4513
  %138 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %137, i32 0, i32 0, !dbg !4515
  %139 = load %struct._ip_address*, %struct._ip_address** %138, align 8, !dbg !4515
  %140 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %139, i32 0, i32 1, !dbg !4516
  %141 = bitcast %union.anon* %140 to %struct.in6_addr*, !dbg !4517
  %142 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %141, i32 0, i32 0, !dbg !4518
  %143 = bitcast %union.anon.0* %142 to [4 x i32]*, !dbg !4513
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %143, i64 0, i64 3, !dbg !4519
  %145 = load i32, i32* %144, align 4, !dbg !4519
  %146 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4513
  %147 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %146, i32 0, i32 0, !dbg !4520
  %148 = load %struct._ip_address*, %struct._ip_address** %147, align 8, !dbg !4520
  %149 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %148, i32 0, i32 1, !dbg !4521
  %150 = bitcast %union.anon* %149 to %struct.in6_addr*, !dbg !4522
  %151 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %150, i32 0, i32 0, !dbg !4518
  %152 = bitcast %union.anon.0* %151 to [4 x i32]*, !dbg !4513
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %152, i64 0, i64 3, !dbg !4519
  %154 = load i32, i32* %153, align 4, !dbg !4519
  %155 = icmp eq i32 %145, %154, !dbg !4523
  br i1 %155, label %156, label %400, !dbg !4523

; <label>:156:                                    ; preds = %136
  %157 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4524
  %158 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %157, i32 0, i32 0, !dbg !4526
  %159 = load %struct._ip_address*, %struct._ip_address** %158, align 8, !dbg !4526
  %160 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %159, i32 0, i32 0, !dbg !4527
  %161 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %160, i32 0, i32 1, !dbg !4528
  %162 = load i8, i8* %161, align 1, !dbg !4528
  %163 = zext i8 %162 to i32, !dbg !4529
  %164 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4530
  %165 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %164, i32 0, i32 0, !dbg !4531
  %166 = load %struct._ip_address*, %struct._ip_address** %165, align 8, !dbg !4531
  %167 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %166, i32 0, i32 0, !dbg !4532
  %168 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %167, i32 0, i32 1, !dbg !4533
  %169 = load i8, i8* %168, align 1, !dbg !4533
  %170 = zext i8 %169 to i32, !dbg !4534
  %171 = icmp eq i32 %163, %170, !dbg !4535
  br i1 %171, label %172, label %400, !dbg !4536

; <label>:172:                                    ; preds = %156
  %173 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4537
  %174 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %173, i32 0, i32 0, !dbg !4539
  %175 = load %struct._ip_address*, %struct._ip_address** %174, align 8, !dbg !4539
  %176 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %175, i32 0, i32 2, !dbg !4540
  %177 = load %struct._interface*, %struct._interface** %176, align 8, !dbg !4540
  %178 = icmp ne %struct._interface* %177, null, !dbg !4541
  %179 = xor i1 %178, true, !dbg !4541
  %180 = zext i1 %179 to i32, !dbg !4541
  %181 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4542
  %182 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %181, i32 0, i32 0, !dbg !4543
  %183 = load %struct._ip_address*, %struct._ip_address** %182, align 8, !dbg !4543
  %184 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %183, i32 0, i32 2, !dbg !4544
  %185 = load %struct._interface*, %struct._interface** %184, align 8, !dbg !4544
  %186 = icmp ne %struct._interface* %185, null, !dbg !4545
  %187 = xor i1 %186, true, !dbg !4545
  %188 = zext i1 %187 to i32, !dbg !4545
  %189 = icmp eq i32 %180, %188, !dbg !4546
  br i1 %189, label %190, label %400, !dbg !4547

; <label>:190:                                    ; preds = %172
  %191 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4548
  %192 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %191, i32 0, i32 0, !dbg !4550
  %193 = load %struct._ip_address*, %struct._ip_address** %192, align 8, !dbg !4550
  %194 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %193, i32 0, i32 2, !dbg !4551
  %195 = load %struct._interface*, %struct._interface** %194, align 8, !dbg !4551
  %196 = icmp ne %struct._interface* %195, null, !dbg !4552
  br i1 %196, label %197, label %213, !dbg !4553

; <label>:197:                                    ; preds = %190
  %198 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4554
  %199 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %198, i32 0, i32 0, !dbg !4556
  %200 = load %struct._ip_address*, %struct._ip_address** %199, align 8, !dbg !4556
  %201 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %200, i32 0, i32 2, !dbg !4557
  %202 = load %struct._interface*, %struct._interface** %201, align 8, !dbg !4557
  %203 = getelementptr inbounds %struct._interface, %struct._interface* %202, i32 0, i32 1, !dbg !4558
  %204 = load i32, i32* %203, align 8, !dbg !4558
  %205 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4559
  %206 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %205, i32 0, i32 0, !dbg !4560
  %207 = load %struct._ip_address*, %struct._ip_address** %206, align 8, !dbg !4560
  %208 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %207, i32 0, i32 2, !dbg !4561
  %209 = load %struct._interface*, %struct._interface** %208, align 8, !dbg !4561
  %210 = getelementptr inbounds %struct._interface, %struct._interface* %209, i32 0, i32 1, !dbg !4562
  %211 = load i32, i32* %210, align 8, !dbg !4562
  %212 = icmp eq i32 %204, %211, !dbg !4563
  br i1 %212, label %213, label %400, !dbg !4564

; <label>:213:                                    ; preds = %197, %190
  %214 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4565
  %215 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %214, i32 0, i32 0, !dbg !4567
  %216 = load %struct._ip_address*, %struct._ip_address** %215, align 8, !dbg !4567
  %217 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %216, i32 0, i32 0, !dbg !4568
  %218 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %217, i32 0, i32 3, !dbg !4569
  %219 = load i8, i8* %218, align 1, !dbg !4569
  %220 = zext i8 %219 to i32, !dbg !4570
  %221 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4571
  %222 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %221, i32 0, i32 0, !dbg !4572
  %223 = load %struct._ip_address*, %struct._ip_address** %222, align 8, !dbg !4572
  %224 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %223, i32 0, i32 0, !dbg !4573
  %225 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %224, i32 0, i32 3, !dbg !4574
  %226 = load i8, i8* %225, align 1, !dbg !4574
  %227 = zext i8 %226 to i32, !dbg !4575
  %228 = icmp eq i32 %220, %227, !dbg !4576
  br i1 %228, label %229, label %400, !dbg !4577

; <label>:229:                                    ; preds = %213
  %230 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4578
  %231 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %230, i32 0, i32 0, !dbg !4580
  %232 = load %struct._ip_address*, %struct._ip_address** %231, align 8, !dbg !4580
  %233 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %232, i32 0, i32 3, !dbg !4581
  %234 = load i8*, i8** %233, align 8, !dbg !4581
  %235 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4582
  %236 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %235, i32 0, i32 0, !dbg !4583
  %237 = load %struct._ip_address*, %struct._ip_address** %236, align 8, !dbg !4583
  %238 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %237, i32 0, i32 3, !dbg !4584
  %239 = load i8*, i8** %238, align 8, !dbg !4584
  %240 = call zeroext i1 @string_equal(i8* %234, i8* %239), !dbg !4585
  br i1 %240, label %344, label %400, !dbg !4586

; <label>:241:                                    ; preds = %67
  %242 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4587
  %243 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %242, i32 0, i32 0, !dbg !4589
  %244 = load %struct._ip_address*, %struct._ip_address** %243, align 8, !dbg !4589
  %245 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %244, i32 0, i32 1, !dbg !4590
  %246 = bitcast %union.anon* %245 to %struct.anon*, !dbg !4591
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %246, i32 0, i32 0, !dbg !4592
  %248 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %247, i32 0, i32 0, !dbg !4593
  %249 = load i32, i32* %248, align 8, !dbg !4593
  %250 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4594
  %251 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %250, i32 0, i32 0, !dbg !4595
  %252 = load %struct._ip_address*, %struct._ip_address** %251, align 8, !dbg !4595
  %253 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %252, i32 0, i32 1, !dbg !4596
  %254 = bitcast %union.anon* %253 to %struct.anon*, !dbg !4597
  %255 = getelementptr inbounds %struct.anon, %struct.anon* %254, i32 0, i32 0, !dbg !4598
  %256 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %255, i32 0, i32 0, !dbg !4599
  %257 = load i32, i32* %256, align 8, !dbg !4599
  %258 = icmp eq i32 %249, %257, !dbg !4600
  br i1 %258, label %259, label %400, !dbg !4601

; <label>:259:                                    ; preds = %241
  %260 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4602
  %261 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %260, i32 0, i32 0, !dbg !4604
  %262 = load %struct._ip_address*, %struct._ip_address** %261, align 8, !dbg !4604
  %263 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %262, i32 0, i32 0, !dbg !4605
  %264 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %263, i32 0, i32 1, !dbg !4606
  %265 = load i8, i8* %264, align 1, !dbg !4606
  %266 = zext i8 %265 to i32, !dbg !4607
  %267 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4608
  %268 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %267, i32 0, i32 0, !dbg !4609
  %269 = load %struct._ip_address*, %struct._ip_address** %268, align 8, !dbg !4609
  %270 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %269, i32 0, i32 0, !dbg !4610
  %271 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %270, i32 0, i32 1, !dbg !4611
  %272 = load i8, i8* %271, align 1, !dbg !4611
  %273 = zext i8 %272 to i32, !dbg !4612
  %274 = icmp eq i32 %266, %273, !dbg !4613
  br i1 %274, label %275, label %400, !dbg !4614

; <label>:275:                                    ; preds = %259
  %276 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4615
  %277 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %276, i32 0, i32 0, !dbg !4617
  %278 = load %struct._ip_address*, %struct._ip_address** %277, align 8, !dbg !4617
  %279 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %278, i32 0, i32 2, !dbg !4618
  %280 = load %struct._interface*, %struct._interface** %279, align 8, !dbg !4618
  %281 = icmp ne %struct._interface* %280, null, !dbg !4619
  %282 = xor i1 %281, true, !dbg !4619
  %283 = zext i1 %282 to i32, !dbg !4619
  %284 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4620
  %285 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %284, i32 0, i32 0, !dbg !4621
  %286 = load %struct._ip_address*, %struct._ip_address** %285, align 8, !dbg !4621
  %287 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %286, i32 0, i32 2, !dbg !4622
  %288 = load %struct._interface*, %struct._interface** %287, align 8, !dbg !4622
  %289 = icmp ne %struct._interface* %288, null, !dbg !4623
  %290 = xor i1 %289, true, !dbg !4623
  %291 = zext i1 %290 to i32, !dbg !4623
  %292 = icmp eq i32 %283, %291, !dbg !4624
  br i1 %292, label %293, label %400, !dbg !4625

; <label>:293:                                    ; preds = %275
  %294 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4626
  %295 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %294, i32 0, i32 0, !dbg !4628
  %296 = load %struct._ip_address*, %struct._ip_address** %295, align 8, !dbg !4628
  %297 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %296, i32 0, i32 2, !dbg !4629
  %298 = load %struct._interface*, %struct._interface** %297, align 8, !dbg !4629
  %299 = icmp ne %struct._interface* %298, null, !dbg !4630
  br i1 %299, label %300, label %316, !dbg !4631

; <label>:300:                                    ; preds = %293
  %301 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4632
  %302 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %301, i32 0, i32 0, !dbg !4634
  %303 = load %struct._ip_address*, %struct._ip_address** %302, align 8, !dbg !4634
  %304 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %303, i32 0, i32 2, !dbg !4635
  %305 = load %struct._interface*, %struct._interface** %304, align 8, !dbg !4635
  %306 = getelementptr inbounds %struct._interface, %struct._interface* %305, i32 0, i32 1, !dbg !4636
  %307 = load i32, i32* %306, align 8, !dbg !4636
  %308 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4637
  %309 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %308, i32 0, i32 0, !dbg !4638
  %310 = load %struct._ip_address*, %struct._ip_address** %309, align 8, !dbg !4638
  %311 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %310, i32 0, i32 2, !dbg !4639
  %312 = load %struct._interface*, %struct._interface** %311, align 8, !dbg !4639
  %313 = getelementptr inbounds %struct._interface, %struct._interface* %312, i32 0, i32 1, !dbg !4640
  %314 = load i32, i32* %313, align 8, !dbg !4640
  %315 = icmp eq i32 %307, %314, !dbg !4641
  br i1 %315, label %316, label %400, !dbg !4642

; <label>:316:                                    ; preds = %300, %293
  %317 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4643
  %318 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %317, i32 0, i32 0, !dbg !4645
  %319 = load %struct._ip_address*, %struct._ip_address** %318, align 8, !dbg !4645
  %320 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %319, i32 0, i32 0, !dbg !4646
  %321 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %320, i32 0, i32 3, !dbg !4647
  %322 = load i8, i8* %321, align 1, !dbg !4647
  %323 = zext i8 %322 to i32, !dbg !4648
  %324 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4649
  %325 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %324, i32 0, i32 0, !dbg !4650
  %326 = load %struct._ip_address*, %struct._ip_address** %325, align 8, !dbg !4650
  %327 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %326, i32 0, i32 0, !dbg !4651
  %328 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %327, i32 0, i32 3, !dbg !4652
  %329 = load i8, i8* %328, align 1, !dbg !4652
  %330 = zext i8 %329 to i32, !dbg !4653
  %331 = icmp eq i32 %323, %330, !dbg !4654
  br i1 %331, label %332, label %400, !dbg !4655

; <label>:332:                                    ; preds = %316
  %333 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4656
  %334 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %333, i32 0, i32 0, !dbg !4658
  %335 = load %struct._ip_address*, %struct._ip_address** %334, align 8, !dbg !4658
  %336 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %335, i32 0, i32 3, !dbg !4659
  %337 = load i8*, i8** %336, align 8, !dbg !4659
  %338 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4660
  %339 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %338, i32 0, i32 0, !dbg !4661
  %340 = load %struct._ip_address*, %struct._ip_address** %339, align 8, !dbg !4661
  %341 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %340, i32 0, i32 3, !dbg !4662
  %342 = load i8*, i8** %341, align 8, !dbg !4662
  %343 = call zeroext i1 @string_equal(i8* %337, i8* %342), !dbg !4663
  br i1 %343, label %344, label %400, !dbg !4664

; <label>:344:                                    ; preds = %332, %229, %66, %49, %34
  %345 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4665
  %346 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %345, i32 0, i32 0, !dbg !4666
  %347 = load %struct._ip_address*, %struct._ip_address** %346, align 8, !dbg !4666
  %348 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %347, i32 0, i32 0, !dbg !4667
  %349 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %348, i32 0, i32 1, !dbg !4668
  %350 = load i8, i8* %349, align 1, !dbg !4668
  %351 = zext i8 %350 to i32, !dbg !4665
  %352 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4669
  %353 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %352, i32 0, i32 0, !dbg !4670
  %354 = load %struct._ip_address*, %struct._ip_address** %353, align 8, !dbg !4670
  %355 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %354, i32 0, i32 0, !dbg !4671
  %356 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %355, i32 0, i32 1, !dbg !4672
  %357 = load i8, i8* %356, align 1, !dbg !4672
  %358 = zext i8 %357 to i32, !dbg !4669
  %359 = icmp eq i32 %351, %358, !dbg !4673
  br i1 %359, label %360, label %400, !dbg !4674

; <label>:360:                                    ; preds = %344
  %361 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4675
  %362 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %361, i32 0, i32 33, !dbg !4676
  %363 = load i32, i32* %362, align 8, !dbg !4676
  %364 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4677
  %365 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %364, i32 0, i32 33, !dbg !4678
  %366 = load i32, i32* %365, align 8, !dbg !4678
  %367 = xor i32 %363, %366, !dbg !4679
  %368 = and i32 %367, 16, !dbg !4680
  %369 = icmp ne i32 %368, 0, !dbg !4680
  br i1 %369, label %400, label %370, !dbg !4681

; <label>:370:                                    ; preds = %360
  %371 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4682
  %372 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %371, i32 0, i32 33, !dbg !4683
  %373 = load i32, i32* %372, align 8, !dbg !4683
  %374 = and i32 %373, 16, !dbg !4684
  %375 = icmp ne i32 %374, 0, !dbg !4684
  br i1 %375, label %376, label %384, !dbg !4685

; <label>:376:                                    ; preds = %370
  %377 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4686
  %378 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %377, i32 0, i32 8, !dbg !4687
  %379 = load i32, i32* %378, align 4, !dbg !4687
  %380 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4688
  %381 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %380, i32 0, i32 8, !dbg !4689
  %382 = load i32, i32* %381, align 4, !dbg !4689
  %383 = icmp eq i32 %379, %382, !dbg !4690
  br i1 %383, label %384, label %400, !dbg !4691

; <label>:384:                                    ; preds = %376, %370
  %385 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4692
  %386 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %385, i32 0, i32 5, !dbg !4693
  %387 = load i32, i32* %386, align 4, !dbg !4693
  %388 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4694
  %389 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %388, i32 0, i32 5, !dbg !4695
  %390 = load i32, i32* %389, align 4, !dbg !4695
  %391 = icmp eq i32 %387, %390, !dbg !4696
  br i1 %391, label %392, label %400, !dbg !4697

; <label>:392:                                    ; preds = %384
  %393 = load %struct._ip_route*, %struct._ip_route** %5, align 8, !dbg !4699
  %394 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %393, i32 0, i32 36, !dbg !4701
  %395 = load i8, i8* %394, align 8, !dbg !4701
  %396 = trunc i8 %395 to i1, !dbg !4701
  %397 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !4702
  %398 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %397, i32 0, i32 36, !dbg !4703
  %399 = zext i1 %396 to i8, !dbg !4704
  store i8 %399, i8* %398, align 8, !dbg !4704
  store i1 true, i1* %3, align 1, !dbg !4705
  br label %406, !dbg !4705

; <label>:400:                                    ; preds = %384, %376, %360, %344, %332, %316, %300, %275, %259, %241, %229, %213, %197, %172, %156, %136, %116, %96, %76, %66, %49, %34
  br label %401, !dbg !4706

; <label>:401:                                    ; preds = %400
  %402 = load %struct._element*, %struct._element** %7, align 8, !dbg !4707
  %403 = getelementptr inbounds %struct._element, %struct._element* %402, i32 0, i32 0, !dbg !4709
  %404 = load %struct._element*, %struct._element** %403, align 8, !dbg !4709
  store %struct._element* %404, %struct._element** %7, align 8, !dbg !4710
  br label %17, !dbg !4711, !llvm.loop !4712

; <label>:405:                                    ; preds = %17
  store i1 false, i1* %3, align 1, !dbg !4714
  br label %406, !dbg !4714

; <label>:406:                                    ; preds = %405, %392
  %407 = load i1, i1* %3, align 1, !dbg !4715
  ret i1 %407, !dbg !4715
}

; Function Attrs: nounwind uwtable
define void @clear_diff_sroutes() #0 !dbg !4716 {
  %1 = load %struct._vrrp_data*, %struct._vrrp_data** @old_vrrp_data, align 8, !dbg !4719
  %2 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %1, i32 0, i32 2, !dbg !4720
  %3 = load %struct._list*, %struct._list** %2, align 8, !dbg !4720
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !4721
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 2, !dbg !4722
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !4722
  call void @clear_diff_routes(%struct._list* %3, %struct._list* %6), !dbg !4723
  ret void, !dbg !4724
}

; Function Attrs: nounwind uwtable
define void @reinstate_static_route(%struct._ip_route*) #0 !dbg !4725 {
  %2 = alloca %struct._ip_route*, align 8
  %3 = alloca [256 x i8], align 16
  store %struct._ip_route* %0, %struct._ip_route** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_route** %2, metadata !4728, metadata !581), !dbg !4729
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !4730, metadata !581), !dbg !4734
  %4 = load %struct._ip_route*, %struct._ip_route** %2, align 8, !dbg !4735
  %5 = call i32 @netlink_route(%struct._ip_route* %4, i32 1), !dbg !4736
  %6 = icmp sgt i32 %5, 0, !dbg !4737
  %7 = load %struct._ip_route*, %struct._ip_route** %2, align 8, !dbg !4738
  %8 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %7, i32 0, i32 36, !dbg !4739
  %9 = zext i1 %6 to i8, !dbg !4740
  store i8 %9, i8* %8, align 8, !dbg !4740
  %10 = load %struct._ip_route*, %struct._ip_route** %2, align 8, !dbg !4741
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !4742
  call void @format_iproute(%struct._ip_route* %10, i8* %11, i64 256), !dbg !4743
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !4744
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.141, i32 0, i32 0), i8* %12), !dbg !4745
  ret void, !dbg !4746
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i32 @addattr32(%struct.nlmsghdr*, i64, i16 zeroext, i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i16 @add_addr_fam2req(%struct.nlmsghdr*, i64, i16 zeroext, %struct._ip_address*) #0 !dbg !4747 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %6, metadata !4748, metadata !581), !dbg !4749
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4750, metadata !581), !dbg !4751
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !4752, metadata !581), !dbg !4753
  store %struct._ip_address* %3, %struct._ip_address** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !4754, metadata !581), !dbg !4755
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4756, metadata !581), !dbg !4757
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4758, metadata !581), !dbg !4759
  call void @llvm.dbg.declare(metadata i16* %12, metadata !4760, metadata !581), !dbg !4761
  %13 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4762
  %14 = icmp ne %struct._ip_address* %13, null, !dbg !4762
  br i1 %14, label %16, label %15, !dbg !4764

; <label>:15:                                     ; preds = %4
  store i16 0, i16* %5, align 2, !dbg !4765
  br label %48, !dbg !4765

; <label>:16:                                     ; preds = %4
  %17 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4766
  %18 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %17, i32 0, i32 0, !dbg !4768
  %19 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %18, i32 0, i32 0, !dbg !4769
  %20 = load i8, i8* %19, align 8, !dbg !4769
  %21 = zext i8 %20 to i32, !dbg !4770
  %22 = icmp eq i32 %21, 10, !dbg !4771
  br i1 %22, label %23, label %28, !dbg !4772

; <label>:23:                                     ; preds = %16
  %24 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4773
  %25 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %24, i32 0, i32 1, !dbg !4775
  %26 = bitcast %union.anon* %25 to %struct.in6_addr*, !dbg !4776
  %27 = bitcast %struct.in6_addr* %26 to i8*, !dbg !4777
  store i8* %27, i8** %10, align 8, !dbg !4778
  store i64 16, i64* %11, align 8, !dbg !4779
  br label %34, !dbg !4780

; <label>:28:                                     ; preds = %16
  %29 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4781
  %30 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %29, i32 0, i32 1, !dbg !4783
  %31 = bitcast %union.anon* %30 to %struct.anon*, !dbg !4784
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0, !dbg !4785
  %33 = bitcast %struct.in_addr* %32 to i8*, !dbg !4786
  store i8* %33, i8** %10, align 8, !dbg !4787
  store i64 4, i64* %11, align 8, !dbg !4788
  br label %34

; <label>:34:                                     ; preds = %28, %23
  %35 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4789
  %36 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %35, i32 0, i32 0, !dbg !4790
  %37 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %36, i32 0, i32 0, !dbg !4791
  %38 = load i8, i8* %37, align 8, !dbg !4791
  %39 = zext i8 %38 to i16, !dbg !4789
  store i16 %39, i16* %12, align 2, !dbg !4792
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !4793
  %41 = load i64, i64* %7, align 8, !dbg !4794
  %42 = load i16, i16* %8, align 2, !dbg !4795
  %43 = bitcast i16* %12 to i8*, !dbg !4796
  %44 = load i8*, i8** %10, align 8, !dbg !4797
  %45 = load i64, i64* %11, align 8, !dbg !4798
  %46 = call i32 @addattr_l2(%struct.nlmsghdr* %40, i64 %41, i16 zeroext %42, i8* %43, i64 2, i8* %44, i64 %45), !dbg !4799
  %47 = trunc i32 %46 to i16, !dbg !4800
  store i16 %47, i16* %5, align 2, !dbg !4801
  br label %48, !dbg !4801

; <label>:48:                                     ; preds = %34, %15
  %49 = load i16, i16* %5, align 2, !dbg !4802
  ret i16 %49, !dbg !4802
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @add_encap(%struct.rtattr*, i64, %struct._encap*) #0 !dbg !4803 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  %7 = alloca %struct.rtattr*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !4806, metadata !581), !dbg !4807
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4808, metadata !581), !dbg !4809
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !4810, metadata !581), !dbg !4811
  call void @llvm.dbg.declare(metadata %struct.rtattr** %7, metadata !4812, metadata !581), !dbg !4813
  %8 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4814
  %9 = load i64, i64* %5, align 8, !dbg !4815
  %10 = call %struct.rtattr* @rta_nest(%struct.rtattr* %8, i64 %9, i16 zeroext 22), !dbg !4816
  store %struct.rtattr* %10, %struct.rtattr** %7, align 8, !dbg !4817
  %11 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4818
  %12 = getelementptr inbounds %struct._encap, %struct._encap* %11, i32 0, i32 0, !dbg !4819
  %13 = load i16, i16* %12, align 8, !dbg !4819
  %14 = zext i16 %13 to i32, !dbg !4818
  switch i32 %14, label %31 [
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
    i32 4, label %27
  ], !dbg !4820

; <label>:15:                                     ; preds = %3
  %16 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4821
  %17 = load i64, i64* %5, align 8, !dbg !4823
  %18 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4824
  call void @add_encap_mpls(%struct.rtattr* %16, i64 %17, %struct._encap* %18), !dbg !4825
  br label %36, !dbg !4826

; <label>:19:                                     ; preds = %3
  %20 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4827
  %21 = load i64, i64* %5, align 8, !dbg !4828
  %22 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4829
  call void @add_encap_ip(%struct.rtattr* %20, i64 %21, %struct._encap* %22), !dbg !4830
  br label %36, !dbg !4831

; <label>:23:                                     ; preds = %3
  %24 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4832
  %25 = load i64, i64* %5, align 8, !dbg !4833
  %26 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4834
  call void @add_encap_ila(%struct.rtattr* %24, i64 %25, %struct._encap* %26), !dbg !4835
  br label %36, !dbg !4836

; <label>:27:                                     ; preds = %3
  %28 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4837
  %29 = load i64, i64* %5, align 8, !dbg !4838
  %30 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4839
  call void @add_encap_ip6(%struct.rtattr* %28, i64 %29, %struct._encap* %30), !dbg !4840
  br label %36, !dbg !4841

; <label>:31:                                     ; preds = %3
  %32 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4842
  %33 = getelementptr inbounds %struct._encap, %struct._encap* %32, i32 0, i32 0, !dbg !4843
  %34 = load i16, i16* %33, align 8, !dbg !4843
  %35 = zext i16 %34 to i32, !dbg !4842
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.142, i32 0, i32 0), i32 %35), !dbg !4844
  br label %36, !dbg !4845

; <label>:36:                                     ; preds = %31, %27, %23, %19, %15
  %37 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4846
  %38 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !4847
  %39 = call i64 @rta_nest_end(%struct.rtattr* %37, %struct.rtattr* %38), !dbg !4848
  %40 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4849
  %41 = load i64, i64* %5, align 8, !dbg !4850
  %42 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4851
  %43 = getelementptr inbounds %struct._encap, %struct._encap* %42, i32 0, i32 0, !dbg !4852
  %44 = load i16, i16* %43, align 8, !dbg !4852
  %45 = call i64 @rta_addattr16(%struct.rtattr* %40, i64 %41, i16 zeroext 21, i16 zeroext %44), !dbg !4853
  ret i1 true, !dbg !4854
}

declare i32 @addraw_l(%struct.nlmsghdr*, i64, i8*, i64) #2

declare i64 @rta_addattr_l(%struct.rtattr*, i64, i16 zeroext, i8*, i64) #2

declare i64 @rta_addattr32(%struct.rtattr*, i64, i16 zeroext, i32) #2

declare i32 @addattr8(%struct.nlmsghdr*, i64, i16 zeroext, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @add_nexthops(%struct._ip_route*, %struct.nlmsghdr*, %struct.rtmsg*) #0 !dbg !4855 {
  %4 = alloca %struct._ip_route*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.rtmsg*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.rtattr*, align 8
  %9 = alloca %struct.rtnexthop*, align 8
  %10 = alloca %struct._nexthop*, align 8
  %11 = alloca %struct._element*, align 8
  store %struct._ip_route* %0, %struct._ip_route** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_route** %4, metadata !4859, metadata !581), !dbg !4860
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !4861, metadata !581), !dbg !4862
  store %struct.rtmsg* %2, %struct.rtmsg** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtmsg** %6, metadata !4863, metadata !581), !dbg !4864
  call void @llvm.dbg.declare(metadata [128 x i8]* %7, metadata !4865, metadata !581), !dbg !4866
  call void @llvm.dbg.declare(metadata %struct.rtattr** %8, metadata !4867, metadata !581), !dbg !4868
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i32 0, i32 0, !dbg !4869
  %13 = bitcast i8* %12 to %struct.rtattr*, !dbg !4870
  store %struct.rtattr* %13, %struct.rtattr** %8, align 8, !dbg !4868
  call void @llvm.dbg.declare(metadata %struct.rtnexthop** %9, metadata !4871, metadata !581), !dbg !4872
  call void @llvm.dbg.declare(metadata %struct._nexthop** %10, metadata !4873, metadata !581), !dbg !4874
  call void @llvm.dbg.declare(metadata %struct._element** %11, metadata !4875, metadata !581), !dbg !4876
  %14 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4877
  %15 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %14, i32 0, i32 1, !dbg !4878
  store i16 9, i16* %15, align 2, !dbg !4879
  %16 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4880
  %17 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %16, i32 0, i32 0, !dbg !4881
  store i16 4, i16* %17, align 2, !dbg !4882
  %18 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4883
  %19 = bitcast %struct.rtattr* %18 to i8*, !dbg !4884
  %20 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !4885
  %21 = bitcast i8* %20 to %struct.rtnexthop*, !dbg !4883
  store %struct.rtnexthop* %21, %struct.rtnexthop** %9, align 8, !dbg !4886
  %22 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !4887
  %23 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %22, i32 0, i32 32, !dbg !4889
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !4889
  %25 = icmp ne %struct._list* %24, null, !dbg !4890
  br i1 %25, label %27, label %26, !dbg !4891

; <label>:26:                                     ; preds = %3
  br label %33, !dbg !4892

; <label>:27:                                     ; preds = %3
  %28 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !4894
  %29 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %28, i32 0, i32 32, !dbg !4896
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !4896
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !4897
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !4897
  br label %33, !dbg !4898

; <label>:33:                                     ; preds = %27, %26
  %34 = phi %struct._element* [ null, %26 ], [ %32, %27 ], !dbg !4899
  store %struct._element* %34, %struct._element** %11, align 8, !dbg !4901
  br label %35, !dbg !4902

; <label>:35:                                     ; preds = %75, %33
  %36 = load %struct._element*, %struct._element** %11, align 8, !dbg !4903
  %37 = icmp ne %struct._element* %36, null, !dbg !4906
  br i1 %37, label %38, label %79, !dbg !4906

; <label>:38:                                     ; preds = %35
  %39 = load %struct._element*, %struct._element** %11, align 8, !dbg !4907
  %40 = getelementptr inbounds %struct._element, %struct._element* %39, i32 0, i32 2, !dbg !4909
  %41 = load i8*, i8** %40, align 8, !dbg !4909
  %42 = bitcast i8* %41 to %struct._nexthop*, !dbg !4910
  store %struct._nexthop* %42, %struct._nexthop** %10, align 8, !dbg !4911
  %43 = load %struct.rtnexthop*, %struct.rtnexthop** %9, align 8, !dbg !4912
  %44 = bitcast %struct.rtnexthop* %43 to i8*, !dbg !4913
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 8, i32 4, i1 false), !dbg !4913
  %45 = load %struct.rtnexthop*, %struct.rtnexthop** %9, align 8, !dbg !4914
  %46 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %45, i32 0, i32 0, !dbg !4915
  store i16 8, i16* %46, align 4, !dbg !4916
  %47 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4917
  %48 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %47, i32 0, i32 0, !dbg !4918
  %49 = load i16, i16* %48, align 2, !dbg !4918
  %50 = zext i16 %49 to i32, !dbg !4917
  %51 = load %struct.rtnexthop*, %struct.rtnexthop** %9, align 8, !dbg !4919
  %52 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %51, i32 0, i32 0, !dbg !4920
  %53 = load i16, i16* %52, align 4, !dbg !4920
  %54 = zext i16 %53 to i32, !dbg !4919
  %55 = add nsw i32 %50, %54, !dbg !4921
  %56 = trunc i32 %55 to i16, !dbg !4922
  %57 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4923
  %58 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %57, i32 0, i32 0, !dbg !4924
  store i16 %56, i16* %58, align 2, !dbg !4925
  %59 = load %struct._nexthop*, %struct._nexthop** %10, align 8, !dbg !4926
  %60 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8, !dbg !4927
  %61 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4928
  %62 = load %struct.rtnexthop*, %struct.rtnexthop** %9, align 8, !dbg !4929
  call void @add_nexthop(%struct._nexthop* %59, %struct.rtmsg* %60, %struct.rtattr* %61, i64 128, %struct.rtnexthop* %62), !dbg !4930
  %63 = load %struct.rtnexthop*, %struct.rtnexthop** %9, align 8, !dbg !4931
  %64 = bitcast %struct.rtnexthop* %63 to i8*, !dbg !4932
  %65 = load %struct.rtnexthop*, %struct.rtnexthop** %9, align 8, !dbg !4931
  %66 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %65, i32 0, i32 0, !dbg !4933
  %67 = load i16, i16* %66, align 4, !dbg !4933
  %68 = zext i16 %67 to i32, !dbg !4934
  %69 = add nsw i32 %68, 4, !dbg !4935
  %70 = sub nsw i32 %69, 1, !dbg !4936
  %71 = and i32 %70, -4, !dbg !4937
  %72 = sext i32 %71 to i64, !dbg !4933
  %73 = getelementptr inbounds i8, i8* %64, i64 %72, !dbg !4933
  %74 = bitcast i8* %73 to %struct.rtnexthop*, !dbg !4938
  store %struct.rtnexthop* %74, %struct.rtnexthop** %9, align 8, !dbg !4939
  br label %75, !dbg !4940

; <label>:75:                                     ; preds = %38
  %76 = load %struct._element*, %struct._element** %11, align 8, !dbg !4941
  %77 = getelementptr inbounds %struct._element, %struct._element* %76, i32 0, i32 0, !dbg !4943
  %78 = load %struct._element*, %struct._element** %77, align 8, !dbg !4943
  store %struct._element* %78, %struct._element** %11, align 8, !dbg !4944
  br label %35, !dbg !4945, !llvm.loop !4946

; <label>:79:                                     ; preds = %35
  %80 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4948
  %81 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %80, i32 0, i32 0, !dbg !4950
  %82 = load i16, i16* %81, align 2, !dbg !4950
  %83 = zext i16 %82 to i64, !dbg !4948
  %84 = icmp ugt i64 %83, 4, !dbg !4951
  br i1 %84, label %85, label %97, !dbg !4952

; <label>:85:                                     ; preds = %79
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4953
  %87 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4954
  %88 = bitcast %struct.rtattr* %87 to i8*, !dbg !4955
  %89 = getelementptr inbounds i8, i8* %88, i64 4, !dbg !4956
  %90 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !4957
  %91 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %90, i32 0, i32 0, !dbg !4958
  %92 = load i16, i16* %91, align 2, !dbg !4958
  %93 = zext i16 %92 to i32, !dbg !4959
  %94 = sext i32 %93 to i64, !dbg !4959
  %95 = sub i64 %94, 4, !dbg !4960
  %96 = call i32 @addattr_l(%struct.nlmsghdr* %86, i64 128, i16 zeroext 9, i8* %89, i64 %95), !dbg !4961
  br label %97, !dbg !4961

; <label>:97:                                     ; preds = %85, %79
  ret void, !dbg !4962
}

declare i64 @netlink_talk(%struct._nl_handle*, %struct.nlmsghdr*) #2

declare i32 @addattr_l2(%struct.nlmsghdr*, i64, i16 zeroext, i8*, i64, i8*, i64) #2

declare %struct.rtattr* @rta_nest(%struct.rtattr*, i64, i16 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @add_encap_mpls(%struct.rtattr*, i64, %struct._encap*) #0 !dbg !4963 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !4966, metadata !581), !dbg !4967
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4968, metadata !581), !dbg !4969
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !4970, metadata !581), !dbg !4971
  %7 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4972
  %8 = load i64, i64* %5, align 8, !dbg !4973
  %9 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4974
  %10 = getelementptr inbounds %struct._encap, %struct._encap* %9, i32 0, i32 2, !dbg !4975
  %11 = bitcast %union.anon.2* %10 to %struct._encap_mpls*, !dbg !4975
  %12 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %11, i32 0, i32 0, !dbg !4976
  %13 = bitcast [2 x %struct.mpls_label]* %12 to i8*, !dbg !4977
  %14 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4978
  %15 = getelementptr inbounds %struct._encap, %struct._encap* %14, i32 0, i32 2, !dbg !4979
  %16 = bitcast %union.anon.2* %15 to %struct._encap_mpls*, !dbg !4979
  %17 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %16, i32 0, i32 1, !dbg !4980
  %18 = load i64, i64* %17, align 8, !dbg !4980
  %19 = mul i64 %18, 4, !dbg !4981
  %20 = call i64 @rta_addattr_l(%struct.rtattr* %7, i64 %8, i16 zeroext 1, i8* %13, i64 %19), !dbg !4982
  ret void, !dbg !4983
}

; Function Attrs: nounwind uwtable
define internal void @add_encap_ip(%struct.rtattr*, i64, %struct._encap*) #0 !dbg !4984 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !4985, metadata !581), !dbg !4986
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4987, metadata !581), !dbg !4988
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !4989, metadata !581), !dbg !4990
  %7 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4991
  %8 = getelementptr inbounds %struct._encap, %struct._encap* %7, i32 0, i32 1, !dbg !4993
  %9 = load i32, i32* %8, align 4, !dbg !4993
  %10 = and i32 %9, 1, !dbg !4994
  %11 = icmp ne i32 %10, 0, !dbg !4994
  br i1 %11, label %12, label %22, !dbg !4995

; <label>:12:                                     ; preds = %3
  %13 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !4996
  %14 = load i64, i64* %5, align 8, !dbg !4997
  %15 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !4998
  %16 = getelementptr inbounds %struct._encap, %struct._encap* %15, i32 0, i32 2, !dbg !4999
  %17 = bitcast %union.anon.2* %16 to %struct._encap_ip*, !dbg !4999
  %18 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %17, i32 0, i32 0, !dbg !5000
  %19 = load i64, i64* %18, align 8, !dbg !5000
  %20 = call i64 @__bswap_64(i64 %19), !dbg !4998
  %21 = call i64 @rta_addattr64(%struct.rtattr* %13, i64 %14, i16 zeroext 1, i64 %20), !dbg !5001
  br label %22, !dbg !5003

; <label>:22:                                     ; preds = %12, %3
  %23 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5004
  %24 = getelementptr inbounds %struct._encap, %struct._encap* %23, i32 0, i32 2, !dbg !5006
  %25 = bitcast %union.anon.2* %24 to %struct._encap_ip*, !dbg !5006
  %26 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %25, i32 0, i32 1, !dbg !5007
  %27 = load %struct._ip_address*, %struct._ip_address** %26, align 8, !dbg !5007
  %28 = icmp ne %struct._ip_address* %27, null, !dbg !5004
  br i1 %28, label %29, label %43, !dbg !5008

; <label>:29:                                     ; preds = %22
  %30 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5009
  %31 = load i64, i64* %5, align 8, !dbg !5010
  %32 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5011
  %33 = getelementptr inbounds %struct._encap, %struct._encap* %32, i32 0, i32 2, !dbg !5012
  %34 = bitcast %union.anon.2* %33 to %struct._encap_ip*, !dbg !5012
  %35 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %34, i32 0, i32 1, !dbg !5013
  %36 = load %struct._ip_address*, %struct._ip_address** %35, align 8, !dbg !5013
  %37 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %36, i32 0, i32 1, !dbg !5014
  %38 = bitcast %union.anon* %37 to %struct.anon*, !dbg !5015
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0, !dbg !5016
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0, !dbg !5017
  %41 = bitcast i32* %40 to i8*, !dbg !5018
  %42 = call i64 @rta_addattr_l(%struct.rtattr* %30, i64 %31, i16 zeroext 2, i8* %41, i64 4), !dbg !5019
  br label %43, !dbg !5019

; <label>:43:                                     ; preds = %29, %22
  %44 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5020
  %45 = getelementptr inbounds %struct._encap, %struct._encap* %44, i32 0, i32 2, !dbg !5022
  %46 = bitcast %union.anon.2* %45 to %struct._encap_ip*, !dbg !5022
  %47 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %46, i32 0, i32 2, !dbg !5023
  %48 = load %struct._ip_address*, %struct._ip_address** %47, align 8, !dbg !5023
  %49 = icmp ne %struct._ip_address* %48, null, !dbg !5020
  br i1 %49, label %50, label %64, !dbg !5024

; <label>:50:                                     ; preds = %43
  %51 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5025
  %52 = load i64, i64* %5, align 8, !dbg !5026
  %53 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5027
  %54 = getelementptr inbounds %struct._encap, %struct._encap* %53, i32 0, i32 2, !dbg !5028
  %55 = bitcast %union.anon.2* %54 to %struct._encap_ip*, !dbg !5028
  %56 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %55, i32 0, i32 2, !dbg !5029
  %57 = load %struct._ip_address*, %struct._ip_address** %56, align 8, !dbg !5029
  %58 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %57, i32 0, i32 1, !dbg !5030
  %59 = bitcast %union.anon* %58 to %struct.anon*, !dbg !5031
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0, !dbg !5032
  %61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %60, i32 0, i32 0, !dbg !5033
  %62 = bitcast i32* %61 to i8*, !dbg !5034
  %63 = call i64 @rta_addattr_l(%struct.rtattr* %51, i64 %52, i16 zeroext 3, i8* %62, i64 4), !dbg !5035
  br label %64, !dbg !5035

; <label>:64:                                     ; preds = %50, %43
  %65 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5036
  %66 = getelementptr inbounds %struct._encap, %struct._encap* %65, i32 0, i32 1, !dbg !5038
  %67 = load i32, i32* %66, align 4, !dbg !5038
  %68 = and i32 %67, 2, !dbg !5039
  %69 = icmp ne i32 %68, 0, !dbg !5039
  br i1 %69, label %70, label %79, !dbg !5040

; <label>:70:                                     ; preds = %64
  %71 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5041
  %72 = load i64, i64* %5, align 8, !dbg !5042
  %73 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5043
  %74 = getelementptr inbounds %struct._encap, %struct._encap* %73, i32 0, i32 2, !dbg !5044
  %75 = bitcast %union.anon.2* %74 to %struct._encap_ip*, !dbg !5044
  %76 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %75, i32 0, i32 3, !dbg !5045
  %77 = load i8, i8* %76, align 8, !dbg !5045
  %78 = call i64 @rta_addattr8(%struct.rtattr* %71, i64 %72, i16 zeroext 5, i8 zeroext %77), !dbg !5046
  br label %79, !dbg !5046

; <label>:79:                                     ; preds = %70, %64
  %80 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5047
  %81 = getelementptr inbounds %struct._encap, %struct._encap* %80, i32 0, i32 1, !dbg !5049
  %82 = load i32, i32* %81, align 4, !dbg !5049
  %83 = and i32 %82, 4, !dbg !5050
  %84 = icmp ne i32 %83, 0, !dbg !5050
  br i1 %84, label %85, label %94, !dbg !5051

; <label>:85:                                     ; preds = %79
  %86 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5052
  %87 = load i64, i64* %5, align 8, !dbg !5053
  %88 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5054
  %89 = getelementptr inbounds %struct._encap, %struct._encap* %88, i32 0, i32 2, !dbg !5055
  %90 = bitcast %union.anon.2* %89 to %struct._encap_ip*, !dbg !5055
  %91 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %90, i32 0, i32 5, !dbg !5056
  %92 = load i8, i8* %91, align 4, !dbg !5056
  %93 = call i64 @rta_addattr8(%struct.rtattr* %86, i64 %87, i16 zeroext 4, i8 zeroext %92), !dbg !5057
  br label %94, !dbg !5057

; <label>:94:                                     ; preds = %85, %79
  %95 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5058
  %96 = getelementptr inbounds %struct._encap, %struct._encap* %95, i32 0, i32 1, !dbg !5060
  %97 = load i32, i32* %96, align 4, !dbg !5060
  %98 = and i32 %97, 8, !dbg !5061
  %99 = icmp ne i32 %98, 0, !dbg !5061
  br i1 %99, label %100, label %109, !dbg !5062

; <label>:100:                                    ; preds = %94
  %101 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5063
  %102 = load i64, i64* %5, align 8, !dbg !5064
  %103 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5065
  %104 = getelementptr inbounds %struct._encap, %struct._encap* %103, i32 0, i32 2, !dbg !5066
  %105 = bitcast %union.anon.2* %104 to %struct._encap_ip*, !dbg !5066
  %106 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %105, i32 0, i32 4, !dbg !5067
  %107 = load i16, i16* %106, align 2, !dbg !5067
  %108 = call i64 @rta_addattr16(%struct.rtattr* %101, i64 %102, i16 zeroext 6, i16 zeroext %107), !dbg !5068
  br label %109, !dbg !5068

; <label>:109:                                    ; preds = %100, %94
  ret void, !dbg !5069
}

; Function Attrs: nounwind uwtable
define internal void @add_encap_ila(%struct.rtattr*, i64, %struct._encap*) #0 !dbg !5070 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !5071, metadata !581), !dbg !5072
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5073, metadata !581), !dbg !5074
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !5075, metadata !581), !dbg !5076
  %7 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5077
  %8 = load i64, i64* %5, align 8, !dbg !5078
  %9 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5079
  %10 = getelementptr inbounds %struct._encap, %struct._encap* %9, i32 0, i32 2, !dbg !5080
  %11 = bitcast %union.anon.2* %10 to %struct._encap_ila*, !dbg !5080
  %12 = getelementptr inbounds %struct._encap_ila, %struct._encap_ila* %11, i32 0, i32 0, !dbg !5081
  %13 = load i64, i64* %12, align 8, !dbg !5081
  %14 = call i64 @rta_addattr64(%struct.rtattr* %7, i64 %8, i16 zeroext 1, i64 %13), !dbg !5082
  ret void, !dbg !5083
}

; Function Attrs: nounwind uwtable
define internal void @add_encap_ip6(%struct.rtattr*, i64, %struct._encap*) #0 !dbg !5084 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !5085, metadata !581), !dbg !5086
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5087, metadata !581), !dbg !5088
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !5089, metadata !581), !dbg !5090
  %7 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5091
  %8 = getelementptr inbounds %struct._encap, %struct._encap* %7, i32 0, i32 1, !dbg !5093
  %9 = load i32, i32* %8, align 4, !dbg !5093
  %10 = and i32 %9, 1, !dbg !5094
  %11 = icmp ne i32 %10, 0, !dbg !5094
  br i1 %11, label %12, label %22, !dbg !5095

; <label>:12:                                     ; preds = %3
  %13 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5096
  %14 = load i64, i64* %5, align 8, !dbg !5097
  %15 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5098
  %16 = getelementptr inbounds %struct._encap, %struct._encap* %15, i32 0, i32 2, !dbg !5099
  %17 = bitcast %union.anon.2* %16 to %struct._encap_ip6*, !dbg !5099
  %18 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %17, i32 0, i32 0, !dbg !5100
  %19 = load i64, i64* %18, align 8, !dbg !5100
  %20 = call i64 @__bswap_64(i64 %19), !dbg !5098
  %21 = call i64 @rta_addattr64(%struct.rtattr* %13, i64 %14, i16 zeroext 1, i64 %20), !dbg !5101
  br label %22, !dbg !5103

; <label>:22:                                     ; preds = %12, %3
  %23 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5104
  %24 = getelementptr inbounds %struct._encap, %struct._encap* %23, i32 0, i32 2, !dbg !5106
  %25 = bitcast %union.anon.2* %24 to %struct._encap_ip6*, !dbg !5106
  %26 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %25, i32 0, i32 1, !dbg !5107
  %27 = load %struct._ip_address*, %struct._ip_address** %26, align 8, !dbg !5107
  %28 = icmp ne %struct._ip_address* %27, null, !dbg !5104
  br i1 %28, label %29, label %41, !dbg !5108

; <label>:29:                                     ; preds = %22
  %30 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5109
  %31 = load i64, i64* %5, align 8, !dbg !5110
  %32 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5111
  %33 = getelementptr inbounds %struct._encap, %struct._encap* %32, i32 0, i32 2, !dbg !5112
  %34 = bitcast %union.anon.2* %33 to %struct._encap_ip6*, !dbg !5112
  %35 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %34, i32 0, i32 1, !dbg !5113
  %36 = load %struct._ip_address*, %struct._ip_address** %35, align 8, !dbg !5113
  %37 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %36, i32 0, i32 1, !dbg !5114
  %38 = bitcast %union.anon* %37 to %struct.in6_addr*, !dbg !5115
  %39 = bitcast %struct.in6_addr* %38 to i8*, !dbg !5116
  %40 = call i64 @rta_addattr_l(%struct.rtattr* %30, i64 %31, i16 zeroext 2, i8* %39, i64 16), !dbg !5117
  br label %41, !dbg !5117

; <label>:41:                                     ; preds = %29, %22
  %42 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5118
  %43 = getelementptr inbounds %struct._encap, %struct._encap* %42, i32 0, i32 2, !dbg !5120
  %44 = bitcast %union.anon.2* %43 to %struct._encap_ip6*, !dbg !5120
  %45 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %44, i32 0, i32 2, !dbg !5121
  %46 = load %struct._ip_address*, %struct._ip_address** %45, align 8, !dbg !5121
  %47 = icmp ne %struct._ip_address* %46, null, !dbg !5118
  br i1 %47, label %48, label %60, !dbg !5122

; <label>:48:                                     ; preds = %41
  %49 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5123
  %50 = load i64, i64* %5, align 8, !dbg !5124
  %51 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5125
  %52 = getelementptr inbounds %struct._encap, %struct._encap* %51, i32 0, i32 2, !dbg !5126
  %53 = bitcast %union.anon.2* %52 to %struct._encap_ip6*, !dbg !5126
  %54 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %53, i32 0, i32 2, !dbg !5127
  %55 = load %struct._ip_address*, %struct._ip_address** %54, align 8, !dbg !5127
  %56 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %55, i32 0, i32 1, !dbg !5128
  %57 = bitcast %union.anon* %56 to %struct.in6_addr*, !dbg !5129
  %58 = bitcast %struct.in6_addr* %57 to i8*, !dbg !5130
  %59 = call i64 @rta_addattr_l(%struct.rtattr* %49, i64 %50, i16 zeroext 3, i8* %58, i64 16), !dbg !5131
  br label %60, !dbg !5131

; <label>:60:                                     ; preds = %48, %41
  %61 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5132
  %62 = getelementptr inbounds %struct._encap, %struct._encap* %61, i32 0, i32 1, !dbg !5134
  %63 = load i32, i32* %62, align 4, !dbg !5134
  %64 = and i32 %63, 2, !dbg !5135
  %65 = icmp ne i32 %64, 0, !dbg !5135
  br i1 %65, label %66, label %75, !dbg !5136

; <label>:66:                                     ; preds = %60
  %67 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5137
  %68 = load i64, i64* %5, align 8, !dbg !5138
  %69 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5139
  %70 = getelementptr inbounds %struct._encap, %struct._encap* %69, i32 0, i32 2, !dbg !5140
  %71 = bitcast %union.anon.2* %70 to %struct._encap_ip6*, !dbg !5140
  %72 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %71, i32 0, i32 3, !dbg !5141
  %73 = load i8, i8* %72, align 8, !dbg !5141
  %74 = call i64 @rta_addattr8(%struct.rtattr* %67, i64 %68, i16 zeroext 5, i8 zeroext %73), !dbg !5142
  br label %75, !dbg !5142

; <label>:75:                                     ; preds = %66, %60
  %76 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5143
  %77 = getelementptr inbounds %struct._encap, %struct._encap* %76, i32 0, i32 1, !dbg !5145
  %78 = load i32, i32* %77, align 4, !dbg !5145
  %79 = and i32 %78, 4, !dbg !5146
  %80 = icmp ne i32 %79, 0, !dbg !5146
  br i1 %80, label %81, label %90, !dbg !5147

; <label>:81:                                     ; preds = %75
  %82 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5148
  %83 = load i64, i64* %5, align 8, !dbg !5149
  %84 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5150
  %85 = getelementptr inbounds %struct._encap, %struct._encap* %84, i32 0, i32 2, !dbg !5151
  %86 = bitcast %union.anon.2* %85 to %struct._encap_ip6*, !dbg !5151
  %87 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %86, i32 0, i32 5, !dbg !5152
  %88 = load i8, i8* %87, align 4, !dbg !5152
  %89 = call i64 @rta_addattr8(%struct.rtattr* %82, i64 %83, i16 zeroext 4, i8 zeroext %88), !dbg !5153
  br label %90, !dbg !5153

; <label>:90:                                     ; preds = %81, %75
  %91 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5154
  %92 = getelementptr inbounds %struct._encap, %struct._encap* %91, i32 0, i32 1, !dbg !5156
  %93 = load i32, i32* %92, align 4, !dbg !5156
  %94 = and i32 %93, 8, !dbg !5157
  %95 = icmp ne i32 %94, 0, !dbg !5157
  br i1 %95, label %96, label %105, !dbg !5158

; <label>:96:                                     ; preds = %90
  %97 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !5159
  %98 = load i64, i64* %5, align 8, !dbg !5160
  %99 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5161
  %100 = getelementptr inbounds %struct._encap, %struct._encap* %99, i32 0, i32 2, !dbg !5162
  %101 = bitcast %union.anon.2* %100 to %struct._encap_ip6*, !dbg !5162
  %102 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %101, i32 0, i32 4, !dbg !5163
  %103 = load i16, i16* %102, align 2, !dbg !5163
  %104 = call i64 @rta_addattr16(%struct.rtattr* %97, i64 %98, i16 zeroext 6, i16 zeroext %103), !dbg !5164
  br label %105, !dbg !5164

; <label>:105:                                    ; preds = %96, %90
  ret void, !dbg !5165
}

declare i64 @rta_nest_end(%struct.rtattr*, %struct.rtattr*) #2

declare i64 @rta_addattr16(%struct.rtattr*, i64, i16 zeroext, i16 zeroext) #2

declare i64 @rta_addattr64(%struct.rtattr*, i64, i16 zeroext, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__bswap_64(i64) #6 !dbg !5166 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5171, metadata !581), !dbg !5172
  %3 = load i64, i64* %2, align 8, !dbg !5173
  %4 = call i64 @llvm.bswap.i64(i64 %3), !dbg !5174
  ret i64 %4, !dbg !5175
}

declare i64 @rta_addattr8(%struct.rtattr*, i64, i16 zeroext, i8 zeroext) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind uwtable
define internal void @add_nexthop(%struct._nexthop*, %struct.rtmsg*, %struct.rtattr*, i64, %struct.rtnexthop*) #0 !dbg !5176 {
  %6 = alloca %struct._nexthop*, align 8
  %7 = alloca %struct.rtmsg*, align 8
  %8 = alloca %struct.rtattr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtnexthop*, align 8
  %11 = alloca i16, align 2
  store %struct._nexthop* %0, %struct._nexthop** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._nexthop** %6, metadata !5179, metadata !581), !dbg !5180
  store %struct.rtmsg* %1, %struct.rtmsg** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.rtmsg** %7, metadata !5181, metadata !581), !dbg !5182
  store %struct.rtattr* %2, %struct.rtattr** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %8, metadata !5183, metadata !581), !dbg !5184
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5185, metadata !581), !dbg !5186
  store %struct.rtnexthop* %4, %struct.rtnexthop** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.rtnexthop** %10, metadata !5187, metadata !581), !dbg !5188
  %12 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5189
  %13 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %12, i32 0, i32 1, !dbg !5191
  %14 = load %struct._ip_address*, %struct._ip_address** %13, align 8, !dbg !5191
  %15 = icmp ne %struct._ip_address* %14, null, !dbg !5189
  br i1 %15, label %16, label %62, !dbg !5192

; <label>:16:                                     ; preds = %5
  %17 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8, !dbg !5193
  %18 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %17, i32 0, i32 0, !dbg !5196
  %19 = load i8, i8* %18, align 4, !dbg !5196
  %20 = zext i8 %19 to i32, !dbg !5193
  %21 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5197
  %22 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %21, i32 0, i32 1, !dbg !5198
  %23 = load %struct._ip_address*, %struct._ip_address** %22, align 8, !dbg !5198
  %24 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %23, i32 0, i32 0, !dbg !5199
  %25 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %24, i32 0, i32 0, !dbg !5200
  %26 = load i8, i8* %25, align 8, !dbg !5200
  %27 = zext i8 %26 to i32, !dbg !5197
  %28 = icmp eq i32 %20, %27, !dbg !5201
  br i1 %28, label %29, label %45, !dbg !5202

; <label>:29:                                     ; preds = %16
  %30 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5203
  %31 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %30, i32 0, i32 0, !dbg !5204
  %32 = load i16, i16* %31, align 4, !dbg !5204
  %33 = zext i16 %32 to i32, !dbg !5203
  %34 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !5205
  %35 = load i64, i64* %9, align 8, !dbg !5206
  %36 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5207
  %37 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %36, i32 0, i32 1, !dbg !5208
  %38 = load %struct._ip_address*, %struct._ip_address** %37, align 8, !dbg !5208
  %39 = call zeroext i16 @add_addr2rta(%struct.rtattr* %34, i64 %35, i16 zeroext 5, %struct._ip_address* %38), !dbg !5209
  %40 = zext i16 %39 to i32, !dbg !5209
  %41 = add nsw i32 %33, %40, !dbg !5210
  %42 = trunc i32 %41 to i16, !dbg !5211
  %43 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5212
  %44 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %43, i32 0, i32 0, !dbg !5213
  store i16 %42, i16* %44, align 4, !dbg !5214
  br label %61, !dbg !5212

; <label>:45:                                     ; preds = %16
  %46 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5215
  %47 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %46, i32 0, i32 0, !dbg !5216
  %48 = load i16, i16* %47, align 4, !dbg !5216
  %49 = zext i16 %48 to i32, !dbg !5215
  %50 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !5217
  %51 = load i64, i64* %9, align 8, !dbg !5218
  %52 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5219
  %53 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %52, i32 0, i32 1, !dbg !5220
  %54 = load %struct._ip_address*, %struct._ip_address** %53, align 8, !dbg !5220
  %55 = call zeroext i16 @add_addrfam2rta(%struct.rtattr* %50, i64 %51, i16 zeroext 18, %struct._ip_address* %54), !dbg !5221
  %56 = zext i16 %55 to i32, !dbg !5221
  %57 = add nsw i32 %49, %56, !dbg !5222
  %58 = trunc i32 %57 to i16, !dbg !5223
  %59 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5224
  %60 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %59, i32 0, i32 0, !dbg !5225
  store i16 %58, i16* %60, align 4, !dbg !5226
  br label %61

; <label>:61:                                     ; preds = %45, %29
  br label %62, !dbg !5227

; <label>:62:                                     ; preds = %61, %5
  %63 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5228
  %64 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %63, i32 0, i32 2, !dbg !5230
  %65 = load %struct._interface*, %struct._interface** %64, align 8, !dbg !5230
  %66 = icmp ne %struct._interface* %65, null, !dbg !5228
  br i1 %66, label %67, label %75, !dbg !5231

; <label>:67:                                     ; preds = %62
  %68 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5232
  %69 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %68, i32 0, i32 2, !dbg !5233
  %70 = load %struct._interface*, %struct._interface** %69, align 8, !dbg !5233
  %71 = getelementptr inbounds %struct._interface, %struct._interface* %70, i32 0, i32 1, !dbg !5234
  %72 = load i32, i32* %71, align 8, !dbg !5234
  %73 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5235
  %74 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %73, i32 0, i32 3, !dbg !5236
  store i32 %72, i32* %74, align 4, !dbg !5237
  br label %75, !dbg !5235

; <label>:75:                                     ; preds = %67, %62
  %76 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5238
  %77 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %76, i32 0, i32 0, !dbg !5240
  %78 = load i32, i32* %77, align 8, !dbg !5241
  %79 = or i32 %78, 32, !dbg !5241
  store i32 %79, i32* %77, align 8, !dbg !5241
  %80 = icmp ne i32 %79, 0, !dbg !5241
  br i1 %80, label %81, label %87, !dbg !5242

; <label>:81:                                     ; preds = %75
  %82 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5243
  %83 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %82, i32 0, i32 3, !dbg !5244
  %84 = load i8, i8* %83, align 8, !dbg !5244
  %85 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5245
  %86 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %85, i32 0, i32 2, !dbg !5246
  store i8 %84, i8* %86, align 1, !dbg !5247
  br label %87, !dbg !5245

; <label>:87:                                     ; preds = %81, %75
  %88 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5248
  %89 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %88, i32 0, i32 4, !dbg !5249
  %90 = load i8, i8* %89, align 1, !dbg !5249
  %91 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5250
  %92 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %91, i32 0, i32 1, !dbg !5251
  store i8 %90, i8* %92, align 2, !dbg !5252
  %93 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5253
  %94 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %93, i32 0, i32 5, !dbg !5255
  %95 = load i32, i32* %94, align 4, !dbg !5255
  %96 = icmp ne i32 %95, 0, !dbg !5253
  br i1 %96, label %97, label %112, !dbg !5256

; <label>:97:                                     ; preds = %87
  %98 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5257
  %99 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %98, i32 0, i32 0, !dbg !5258
  %100 = load i16, i16* %99, align 4, !dbg !5258
  %101 = zext i16 %100 to i64, !dbg !5257
  %102 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !5259
  %103 = load i64, i64* %9, align 8, !dbg !5260
  %104 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5261
  %105 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %104, i32 0, i32 5, !dbg !5262
  %106 = load i32, i32* %105, align 4, !dbg !5262
  %107 = call i64 @rta_addattr32(%struct.rtattr* %102, i64 %103, i16 zeroext 11, i32 %106), !dbg !5263
  %108 = add i64 %101, %107, !dbg !5264
  %109 = trunc i64 %108 to i16, !dbg !5265
  %110 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5266
  %111 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %110, i32 0, i32 0, !dbg !5267
  store i16 %109, i16* %111, align 4, !dbg !5268
  br label %112, !dbg !5266

; <label>:112:                                    ; preds = %97, %87
  %113 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5269
  %114 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %113, i32 0, i32 6, !dbg !5271
  %115 = getelementptr inbounds %struct._encap, %struct._encap* %114, i32 0, i32 0, !dbg !5272
  %116 = load i16, i16* %115, align 8, !dbg !5272
  %117 = zext i16 %116 to i32, !dbg !5269
  %118 = icmp ne i32 %117, 0, !dbg !5273
  br i1 %118, label %119, label %144, !dbg !5274

; <label>:119:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata i16* %11, metadata !5275, metadata !581), !dbg !5277
  %120 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !5278
  %121 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %120, i32 0, i32 0, !dbg !5279
  %122 = load i16, i16* %121, align 2, !dbg !5279
  store i16 %122, i16* %11, align 2, !dbg !5277
  %123 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !5280
  %124 = load i16, i16* %11, align 2, !dbg !5281
  %125 = zext i16 %124 to i64, !dbg !5281
  %126 = load %struct._nexthop*, %struct._nexthop** %6, align 8, !dbg !5282
  %127 = getelementptr inbounds %struct._nexthop, %struct._nexthop* %126, i32 0, i32 6, !dbg !5283
  %128 = call zeroext i1 @add_encap(%struct.rtattr* %123, i64 %125, %struct._encap* %127), !dbg !5284
  %129 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5285
  %130 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %129, i32 0, i32 0, !dbg !5286
  %131 = load i16, i16* %130, align 4, !dbg !5286
  %132 = zext i16 %131 to i32, !dbg !5285
  %133 = load %struct.rtattr*, %struct.rtattr** %8, align 8, !dbg !5287
  %134 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %133, i32 0, i32 0, !dbg !5288
  %135 = load i16, i16* %134, align 2, !dbg !5288
  %136 = zext i16 %135 to i32, !dbg !5287
  %137 = add nsw i32 %132, %136, !dbg !5289
  %138 = load i16, i16* %11, align 2, !dbg !5290
  %139 = zext i16 %138 to i32, !dbg !5290
  %140 = sub nsw i32 %137, %139, !dbg !5291
  %141 = trunc i32 %140 to i16, !dbg !5292
  %142 = load %struct.rtnexthop*, %struct.rtnexthop** %10, align 8, !dbg !5293
  %143 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %142, i32 0, i32 0, !dbg !5294
  store i16 %141, i16* %143, align 4, !dbg !5295
  br label %144, !dbg !5296

; <label>:144:                                    ; preds = %119, %112
  ret void, !dbg !5297
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @add_addr2rta(%struct.rtattr*, i64, i16 zeroext, %struct._ip_address*) #0 !dbg !5298 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.rtattr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.rtattr* %0, %struct.rtattr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %6, metadata !5301, metadata !581), !dbg !5302
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5303, metadata !581), !dbg !5304
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !5305, metadata !581), !dbg !5306
  store %struct._ip_address* %3, %struct._ip_address** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !5307, metadata !581), !dbg !5308
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5309, metadata !581), !dbg !5310
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5311, metadata !581), !dbg !5312
  %12 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5313
  %13 = icmp ne %struct._ip_address* %12, null, !dbg !5313
  br i1 %13, label %15, label %14, !dbg !5315

; <label>:14:                                     ; preds = %4
  store i16 0, i16* %5, align 2, !dbg !5316
  br label %41, !dbg !5316

; <label>:15:                                     ; preds = %4
  %16 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5317
  %17 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %16, i32 0, i32 0, !dbg !5319
  %18 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %17, i32 0, i32 0, !dbg !5320
  %19 = load i8, i8* %18, align 8, !dbg !5320
  %20 = zext i8 %19 to i32, !dbg !5321
  %21 = icmp eq i32 %20, 10, !dbg !5322
  br i1 %21, label %22, label %27, !dbg !5323

; <label>:22:                                     ; preds = %15
  %23 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5324
  %24 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %23, i32 0, i32 1, !dbg !5326
  %25 = bitcast %union.anon* %24 to %struct.in6_addr*, !dbg !5327
  %26 = bitcast %struct.in6_addr* %25 to i8*, !dbg !5328
  store i8* %26, i8** %10, align 8, !dbg !5329
  store i64 16, i64* %11, align 8, !dbg !5330
  br label %33, !dbg !5331

; <label>:27:                                     ; preds = %15
  %28 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5332
  %29 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %28, i32 0, i32 1, !dbg !5334
  %30 = bitcast %union.anon* %29 to %struct.anon*, !dbg !5335
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0, !dbg !5336
  %32 = bitcast %struct.in_addr* %31 to i8*, !dbg !5337
  store i8* %32, i8** %10, align 8, !dbg !5338
  store i64 4, i64* %11, align 8, !dbg !5339
  br label %33

; <label>:33:                                     ; preds = %27, %22
  %34 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !5340
  %35 = load i64, i64* %7, align 8, !dbg !5341
  %36 = load i16, i16* %8, align 2, !dbg !5342
  %37 = load i8*, i8** %10, align 8, !dbg !5343
  %38 = load i64, i64* %11, align 8, !dbg !5344
  %39 = call i64 @rta_addattr_l(%struct.rtattr* %34, i64 %35, i16 zeroext %36, i8* %37, i64 %38), !dbg !5345
  %40 = trunc i64 %39 to i16, !dbg !5346
  store i16 %40, i16* %5, align 2, !dbg !5347
  br label %41, !dbg !5347

; <label>:41:                                     ; preds = %33, %14
  %42 = load i16, i16* %5, align 2, !dbg !5348
  ret i16 %42, !dbg !5348
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @add_addrfam2rta(%struct.rtattr*, i64, i16 zeroext, %struct._ip_address*) #0 !dbg !5349 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.rtattr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  store %struct.rtattr* %0, %struct.rtattr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %6, metadata !5350, metadata !581), !dbg !5351
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5352, metadata !581), !dbg !5353
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !5354, metadata !581), !dbg !5355
  store %struct._ip_address* %3, %struct._ip_address** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !5356, metadata !581), !dbg !5357
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5358, metadata !581), !dbg !5359
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5360, metadata !581), !dbg !5361
  call void @llvm.dbg.declare(metadata i16* %12, metadata !5362, metadata !581), !dbg !5363
  %13 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5364
  %14 = icmp ne %struct._ip_address* %13, null, !dbg !5364
  br i1 %14, label %16, label %15, !dbg !5366

; <label>:15:                                     ; preds = %4
  store i16 0, i16* %5, align 2, !dbg !5367
  br label %48, !dbg !5367

; <label>:16:                                     ; preds = %4
  %17 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5368
  %18 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %17, i32 0, i32 0, !dbg !5370
  %19 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %18, i32 0, i32 0, !dbg !5371
  %20 = load i8, i8* %19, align 8, !dbg !5371
  %21 = zext i8 %20 to i32, !dbg !5372
  %22 = icmp eq i32 %21, 10, !dbg !5373
  br i1 %22, label %23, label %28, !dbg !5374

; <label>:23:                                     ; preds = %16
  %24 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5375
  %25 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %24, i32 0, i32 1, !dbg !5377
  %26 = bitcast %union.anon* %25 to %struct.in6_addr*, !dbg !5378
  %27 = bitcast %struct.in6_addr* %26 to i8*, !dbg !5379
  store i8* %27, i8** %10, align 8, !dbg !5380
  store i64 16, i64* %11, align 8, !dbg !5381
  br label %34, !dbg !5382

; <label>:28:                                     ; preds = %16
  %29 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5383
  %30 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %29, i32 0, i32 1, !dbg !5385
  %31 = bitcast %union.anon* %30 to %struct.anon*, !dbg !5386
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0, !dbg !5387
  %33 = bitcast %struct.in_addr* %32 to i8*, !dbg !5388
  store i8* %33, i8** %10, align 8, !dbg !5389
  store i64 4, i64* %11, align 8, !dbg !5390
  br label %34

; <label>:34:                                     ; preds = %28, %23
  %35 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !5391
  %36 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %35, i32 0, i32 0, !dbg !5392
  %37 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %36, i32 0, i32 0, !dbg !5393
  %38 = load i8, i8* %37, align 8, !dbg !5393
  %39 = zext i8 %38 to i16, !dbg !5391
  store i16 %39, i16* %12, align 2, !dbg !5394
  %40 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !5395
  %41 = load i64, i64* %7, align 8, !dbg !5396
  %42 = load i16, i16* %8, align 2, !dbg !5397
  %43 = bitcast i16* %12 to i8*, !dbg !5398
  %44 = load i8*, i8** %10, align 8, !dbg !5399
  %45 = load i64, i64* %11, align 8, !dbg !5400
  %46 = call i64 @rta_addattr_l2(%struct.rtattr* %40, i64 %41, i16 zeroext %42, i8* %43, i64 2, i8* %44, i64 %45), !dbg !5401
  %47 = trunc i64 %46 to i16, !dbg !5402
  store i16 %47, i16* %5, align 2, !dbg !5403
  br label %48, !dbg !5403

; <label>:48:                                     ; preds = %34, %15
  %49 = load i16, i16* %5, align 2, !dbg !5404
  ret i16 %49, !dbg !5404
}

declare i64 @rta_addattr_l2(%struct.rtattr*, i64, i16 zeroext, i8*, i64, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @print_encap_mpls(i8*, i64, %struct._encap*) #0 !dbg !5405 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5406, metadata !581), !dbg !5407
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5408, metadata !581), !dbg !5409
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !5410, metadata !581), !dbg !5411
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5412, metadata !581), !dbg !5413
  %10 = load i8*, i8** %4, align 8, !dbg !5414
  store i8* %10, i8** %7, align 8, !dbg !5413
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5415, metadata !581), !dbg !5416
  %11 = load i8*, i8** %4, align 8, !dbg !5417
  %12 = load i64, i64* %5, align 8, !dbg !5418
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !5419
  store i8* %13, i8** %8, align 8, !dbg !5416
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5420, metadata !581), !dbg !5421
  %14 = load i8*, i8** %4, align 8, !dbg !5422
  %15 = load i8*, i8** %8, align 8, !dbg !5423
  %16 = load i8*, i8** %4, align 8, !dbg !5424
  %17 = ptrtoint i8* %15 to i64, !dbg !5425
  %18 = ptrtoint i8* %16 to i64, !dbg !5425
  %19 = sub i64 %17, %18, !dbg !5425
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %14, i64 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0)) #9, !dbg !5426
  %21 = load i8*, i8** %4, align 8, !dbg !5427
  %22 = sext i32 %20 to i64, !dbg !5427
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !5427
  store i8* %23, i8** %4, align 8, !dbg !5427
  store i32 0, i32* %9, align 4, !dbg !5428
  br label %24, !dbg !5430

; <label>:24:                                     ; preds = %57, %3
  %25 = load i32, i32* %9, align 4, !dbg !5431
  %26 = zext i32 %25 to i64, !dbg !5431
  %27 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5434
  %28 = getelementptr inbounds %struct._encap, %struct._encap* %27, i32 0, i32 2, !dbg !5435
  %29 = bitcast %union.anon.2* %28 to %struct._encap_mpls*, !dbg !5435
  %30 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %29, i32 0, i32 1, !dbg !5436
  %31 = load i64, i64* %30, align 8, !dbg !5436
  %32 = icmp ult i64 %26, %31, !dbg !5437
  br i1 %32, label %33, label %60, !dbg !5438

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %4, align 8, !dbg !5439
  %35 = load i8*, i8** %8, align 8, !dbg !5440
  %36 = load i8*, i8** %4, align 8, !dbg !5441
  %37 = ptrtoint i8* %35 to i64, !dbg !5442
  %38 = ptrtoint i8* %36 to i64, !dbg !5442
  %39 = sub i64 %37, %38, !dbg !5442
  %40 = load i32, i32* %9, align 4, !dbg !5443
  %41 = icmp ne i32 %40, 0, !dbg !5443
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0), !dbg !5443
  %43 = load i32, i32* %9, align 4, !dbg !5444
  %44 = zext i32 %43 to i64, !dbg !5445
  %45 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5445
  %46 = getelementptr inbounds %struct._encap, %struct._encap* %45, i32 0, i32 2, !dbg !5446
  %47 = bitcast %union.anon.2* %46 to %struct._encap_mpls*, !dbg !5446
  %48 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %47, i32 0, i32 0, !dbg !5447
  %49 = getelementptr inbounds [2 x %struct.mpls_label], [2 x %struct.mpls_label]* %48, i64 0, i64 %44, !dbg !5445
  %50 = getelementptr inbounds %struct.mpls_label, %struct.mpls_label* %49, i32 0, i32 0, !dbg !5448
  %51 = load i32, i32* %50, align 4, !dbg !5448
  %52 = call i32 @ntohl(i32 %51) #1, !dbg !5449
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %34, i64 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i8* %42, i32 %52) #9, !dbg !5450
  %54 = load i8*, i8** %4, align 8, !dbg !5451
  %55 = sext i32 %53 to i64, !dbg !5451
  %56 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !5451
  store i8* %56, i8** %4, align 8, !dbg !5451
  br label %57, !dbg !5452

; <label>:57:                                     ; preds = %33
  %58 = load i32, i32* %9, align 4, !dbg !5453
  %59 = add i32 %58, 1, !dbg !5453
  store i32 %59, i32* %9, align 4, !dbg !5453
  br label %24, !dbg !5455, !llvm.loop !5456

; <label>:60:                                     ; preds = %24
  %61 = load i8*, i8** %4, align 8, !dbg !5458
  %62 = load i8*, i8** %7, align 8, !dbg !5459
  %63 = ptrtoint i8* %61 to i64, !dbg !5460
  %64 = ptrtoint i8* %62 to i64, !dbg !5460
  %65 = sub i64 %63, %64, !dbg !5460
  ret i64 %65, !dbg !5461
}

; Function Attrs: nounwind uwtable
define internal i64 @print_encap_ip(i8*, i64, %struct._encap*) #0 !dbg !5462 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5463, metadata !581), !dbg !5464
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5465, metadata !581), !dbg !5466
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !5467, metadata !581), !dbg !5468
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5469, metadata !581), !dbg !5470
  %9 = load i8*, i8** %4, align 8, !dbg !5471
  store i8* %9, i8** %7, align 8, !dbg !5470
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5472, metadata !581), !dbg !5473
  %10 = load i8*, i8** %4, align 8, !dbg !5474
  %11 = load i64, i64* %5, align 8, !dbg !5475
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !5476
  store i8* %12, i8** %8, align 8, !dbg !5473
  %13 = load i8*, i8** %4, align 8, !dbg !5477
  %14 = load i8*, i8** %8, align 8, !dbg !5478
  %15 = load i8*, i8** %4, align 8, !dbg !5479
  %16 = ptrtoint i8* %14 to i64, !dbg !5480
  %17 = ptrtoint i8* %15 to i64, !dbg !5480
  %18 = sub i64 %16, %17, !dbg !5480
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %13, i64 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0)) #9, !dbg !5481
  %20 = load i8*, i8** %4, align 8, !dbg !5482
  %21 = sext i32 %19 to i64, !dbg !5482
  %22 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !5482
  store i8* %22, i8** %4, align 8, !dbg !5482
  %23 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5483
  %24 = getelementptr inbounds %struct._encap, %struct._encap* %23, i32 0, i32 1, !dbg !5485
  %25 = load i32, i32* %24, align 4, !dbg !5485
  %26 = and i32 %25, 1, !dbg !5486
  %27 = icmp ne i32 %26, 0, !dbg !5486
  br i1 %27, label %28, label %44, !dbg !5487

; <label>:28:                                     ; preds = %3
  %29 = load i8*, i8** %4, align 8, !dbg !5488
  %30 = load i8*, i8** %8, align 8, !dbg !5489
  %31 = load i8*, i8** %4, align 8, !dbg !5490
  %32 = ptrtoint i8* %30 to i64, !dbg !5491
  %33 = ptrtoint i8* %31 to i64, !dbg !5491
  %34 = sub i64 %32, %33, !dbg !5491
  %35 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5492
  %36 = getelementptr inbounds %struct._encap, %struct._encap* %35, i32 0, i32 2, !dbg !5493
  %37 = bitcast %union.anon.2* %36 to %struct._encap_ip*, !dbg !5493
  %38 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %37, i32 0, i32 0, !dbg !5494
  %39 = load i64, i64* %38, align 8, !dbg !5494
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i64 %39) #9, !dbg !5495
  %41 = load i8*, i8** %4, align 8, !dbg !5496
  %42 = sext i32 %40 to i64, !dbg !5496
  %43 = getelementptr inbounds i8, i8* %41, i64 %42, !dbg !5496
  store i8* %43, i8** %4, align 8, !dbg !5496
  br label %44, !dbg !5497

; <label>:44:                                     ; preds = %28, %3
  %45 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5498
  %46 = getelementptr inbounds %struct._encap, %struct._encap* %45, i32 0, i32 2, !dbg !5500
  %47 = bitcast %union.anon.2* %46 to %struct._encap_ip*, !dbg !5500
  %48 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %47, i32 0, i32 1, !dbg !5501
  %49 = load %struct._ip_address*, %struct._ip_address** %48, align 8, !dbg !5501
  %50 = icmp ne %struct._ip_address* %49, null, !dbg !5498
  br i1 %50, label %51, label %68, !dbg !5502

; <label>:51:                                     ; preds = %44
  %52 = load i8*, i8** %4, align 8, !dbg !5503
  %53 = load i8*, i8** %8, align 8, !dbg !5504
  %54 = load i8*, i8** %4, align 8, !dbg !5505
  %55 = ptrtoint i8* %53 to i64, !dbg !5506
  %56 = ptrtoint i8* %54 to i64, !dbg !5506
  %57 = sub i64 %55, %56, !dbg !5506
  %58 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5507
  %59 = getelementptr inbounds %struct._encap, %struct._encap* %58, i32 0, i32 2, !dbg !5508
  %60 = bitcast %union.anon.2* %59 to %struct._encap_ip*, !dbg !5508
  %61 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %60, i32 0, i32 1, !dbg !5509
  %62 = load %struct._ip_address*, %struct._ip_address** %61, align 8, !dbg !5509
  %63 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %62), !dbg !5510
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %52, i64 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.149, i32 0, i32 0), i8* %63) #9, !dbg !5511
  %65 = load i8*, i8** %4, align 8, !dbg !5513
  %66 = sext i32 %64 to i64, !dbg !5513
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !5513
  store i8* %67, i8** %4, align 8, !dbg !5513
  br label %68, !dbg !5514

; <label>:68:                                     ; preds = %51, %44
  %69 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5515
  %70 = getelementptr inbounds %struct._encap, %struct._encap* %69, i32 0, i32 2, !dbg !5517
  %71 = bitcast %union.anon.2* %70 to %struct._encap_ip*, !dbg !5517
  %72 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %71, i32 0, i32 2, !dbg !5518
  %73 = load %struct._ip_address*, %struct._ip_address** %72, align 8, !dbg !5518
  %74 = icmp ne %struct._ip_address* %73, null, !dbg !5515
  br i1 %74, label %75, label %92, !dbg !5519

; <label>:75:                                     ; preds = %68
  %76 = load i8*, i8** %4, align 8, !dbg !5520
  %77 = load i8*, i8** %8, align 8, !dbg !5521
  %78 = load i8*, i8** %4, align 8, !dbg !5522
  %79 = ptrtoint i8* %77 to i64, !dbg !5523
  %80 = ptrtoint i8* %78 to i64, !dbg !5523
  %81 = sub i64 %79, %80, !dbg !5523
  %82 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5524
  %83 = getelementptr inbounds %struct._encap, %struct._encap* %82, i32 0, i32 2, !dbg !5525
  %84 = bitcast %union.anon.2* %83 to %struct._encap_ip*, !dbg !5525
  %85 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %84, i32 0, i32 2, !dbg !5526
  %86 = load %struct._ip_address*, %struct._ip_address** %85, align 8, !dbg !5526
  %87 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %86), !dbg !5527
  %88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %76, i64 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %87) #9, !dbg !5528
  %89 = load i8*, i8** %4, align 8, !dbg !5530
  %90 = sext i32 %88 to i64, !dbg !5530
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !5530
  store i8* %91, i8** %4, align 8, !dbg !5530
  br label %92, !dbg !5531

; <label>:92:                                     ; preds = %75, %68
  %93 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5532
  %94 = getelementptr inbounds %struct._encap, %struct._encap* %93, i32 0, i32 1, !dbg !5534
  %95 = load i32, i32* %94, align 4, !dbg !5534
  %96 = and i32 %95, 2, !dbg !5535
  %97 = icmp ne i32 %96, 0, !dbg !5535
  br i1 %97, label %98, label %115, !dbg !5536

; <label>:98:                                     ; preds = %92
  %99 = load i8*, i8** %4, align 8, !dbg !5537
  %100 = load i8*, i8** %8, align 8, !dbg !5538
  %101 = load i8*, i8** %4, align 8, !dbg !5539
  %102 = ptrtoint i8* %100 to i64, !dbg !5540
  %103 = ptrtoint i8* %101 to i64, !dbg !5540
  %104 = sub i64 %102, %103, !dbg !5540
  %105 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5541
  %106 = getelementptr inbounds %struct._encap, %struct._encap* %105, i32 0, i32 2, !dbg !5542
  %107 = bitcast %union.anon.2* %106 to %struct._encap_ip*, !dbg !5542
  %108 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %107, i32 0, i32 3, !dbg !5543
  %109 = load i8, i8* %108, align 8, !dbg !5543
  %110 = zext i8 %109 to i32, !dbg !5541
  %111 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %99, i64 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i32 0, i32 0), i32 %110) #9, !dbg !5544
  %112 = load i8*, i8** %4, align 8, !dbg !5545
  %113 = sext i32 %111 to i64, !dbg !5545
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !5545
  store i8* %114, i8** %4, align 8, !dbg !5545
  br label %115, !dbg !5546

; <label>:115:                                    ; preds = %98, %92
  %116 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5547
  %117 = getelementptr inbounds %struct._encap, %struct._encap* %116, i32 0, i32 1, !dbg !5549
  %118 = load i32, i32* %117, align 4, !dbg !5549
  %119 = and i32 %118, 4, !dbg !5550
  %120 = icmp ne i32 %119, 0, !dbg !5550
  br i1 %120, label %121, label %138, !dbg !5551

; <label>:121:                                    ; preds = %115
  %122 = load i8*, i8** %4, align 8, !dbg !5552
  %123 = load i8*, i8** %8, align 8, !dbg !5553
  %124 = load i8*, i8** %4, align 8, !dbg !5554
  %125 = ptrtoint i8* %123 to i64, !dbg !5555
  %126 = ptrtoint i8* %124 to i64, !dbg !5555
  %127 = sub i64 %125, %126, !dbg !5555
  %128 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5556
  %129 = getelementptr inbounds %struct._encap, %struct._encap* %128, i32 0, i32 2, !dbg !5557
  %130 = bitcast %union.anon.2* %129 to %struct._encap_ip*, !dbg !5557
  %131 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %130, i32 0, i32 5, !dbg !5558
  %132 = load i8, i8* %131, align 4, !dbg !5558
  %133 = zext i8 %132 to i32, !dbg !5556
  %134 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %122, i64 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i32 %133) #9, !dbg !5559
  %135 = load i8*, i8** %4, align 8, !dbg !5560
  %136 = sext i32 %134 to i64, !dbg !5560
  %137 = getelementptr inbounds i8, i8* %135, i64 %136, !dbg !5560
  store i8* %137, i8** %4, align 8, !dbg !5560
  br label %138, !dbg !5561

; <label>:138:                                    ; preds = %121, %115
  %139 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5562
  %140 = getelementptr inbounds %struct._encap, %struct._encap* %139, i32 0, i32 1, !dbg !5564
  %141 = load i32, i32* %140, align 4, !dbg !5564
  %142 = and i32 %141, 8, !dbg !5565
  %143 = icmp ne i32 %142, 0, !dbg !5565
  br i1 %143, label %144, label %161, !dbg !5566

; <label>:144:                                    ; preds = %138
  %145 = load i8*, i8** %4, align 8, !dbg !5567
  %146 = load i8*, i8** %8, align 8, !dbg !5568
  %147 = load i8*, i8** %4, align 8, !dbg !5569
  %148 = ptrtoint i8* %146 to i64, !dbg !5570
  %149 = ptrtoint i8* %147 to i64, !dbg !5570
  %150 = sub i64 %148, %149, !dbg !5570
  %151 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5571
  %152 = getelementptr inbounds %struct._encap, %struct._encap* %151, i32 0, i32 2, !dbg !5572
  %153 = bitcast %union.anon.2* %152 to %struct._encap_ip*, !dbg !5572
  %154 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %153, i32 0, i32 4, !dbg !5573
  %155 = load i16, i16* %154, align 2, !dbg !5573
  %156 = zext i16 %155 to i32, !dbg !5571
  %157 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %145, i64 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i32 %156) #9, !dbg !5574
  %158 = load i8*, i8** %4, align 8, !dbg !5575
  %159 = sext i32 %157 to i64, !dbg !5575
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !5575
  store i8* %160, i8** %4, align 8, !dbg !5575
  br label %161, !dbg !5576

; <label>:161:                                    ; preds = %144, %138
  %162 = load i8*, i8** %4, align 8, !dbg !5577
  %163 = load i8*, i8** %7, align 8, !dbg !5578
  %164 = ptrtoint i8* %162 to i64, !dbg !5579
  %165 = ptrtoint i8* %163 to i64, !dbg !5579
  %166 = sub i64 %164, %165, !dbg !5579
  ret i64 %166, !dbg !5580
}

; Function Attrs: nounwind uwtable
define internal i64 @print_encap_ila(i8*, i64, %struct._encap*) #0 !dbg !5581 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5582, metadata !581), !dbg !5583
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5584, metadata !581), !dbg !5585
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !5586, metadata !581), !dbg !5587
  %7 = load i8*, i8** %4, align 8, !dbg !5588
  %8 = load i64, i64* %5, align 8, !dbg !5589
  %9 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5590
  %10 = getelementptr inbounds %struct._encap, %struct._encap* %9, i32 0, i32 2, !dbg !5591
  %11 = bitcast %union.anon.2* %10 to %struct._encap_ila*, !dbg !5591
  %12 = getelementptr inbounds %struct._encap_ila, %struct._encap_ila* %11, i32 0, i32 0, !dbg !5592
  %13 = load i64, i64* %12, align 8, !dbg !5592
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i64 %13) #9, !dbg !5593
  %15 = sext i32 %14 to i64, !dbg !5594
  ret i64 %15, !dbg !5595
}

; Function Attrs: nounwind uwtable
define internal i64 @print_encap_ip6(i8*, i64, %struct._encap*) #0 !dbg !5596 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._encap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5597, metadata !581), !dbg !5598
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5599, metadata !581), !dbg !5600
  store %struct._encap* %2, %struct._encap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %6, metadata !5601, metadata !581), !dbg !5602
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5603, metadata !581), !dbg !5604
  %9 = load i8*, i8** %4, align 8, !dbg !5605
  store i8* %9, i8** %7, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5606, metadata !581), !dbg !5607
  %10 = load i8*, i8** %4, align 8, !dbg !5608
  %11 = load i64, i64* %5, align 8, !dbg !5609
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !5610
  store i8* %12, i8** %8, align 8, !dbg !5607
  %13 = load i8*, i8** %4, align 8, !dbg !5611
  %14 = load i8*, i8** %8, align 8, !dbg !5612
  %15 = load i8*, i8** %4, align 8, !dbg !5613
  %16 = ptrtoint i8* %14 to i64, !dbg !5614
  %17 = ptrtoint i8* %15 to i64, !dbg !5614
  %18 = sub i64 %16, %17, !dbg !5614
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %13, i64 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i32 0, i32 0)) #9, !dbg !5615
  %20 = load i8*, i8** %4, align 8, !dbg !5616
  %21 = sext i32 %19 to i64, !dbg !5616
  %22 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !5616
  store i8* %22, i8** %4, align 8, !dbg !5616
  %23 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5617
  %24 = getelementptr inbounds %struct._encap, %struct._encap* %23, i32 0, i32 1, !dbg !5619
  %25 = load i32, i32* %24, align 4, !dbg !5619
  %26 = and i32 %25, 1, !dbg !5620
  %27 = icmp ne i32 %26, 0, !dbg !5620
  br i1 %27, label %28, label %44, !dbg !5621

; <label>:28:                                     ; preds = %3
  %29 = load i8*, i8** %4, align 8, !dbg !5622
  %30 = load i8*, i8** %8, align 8, !dbg !5623
  %31 = load i8*, i8** %4, align 8, !dbg !5624
  %32 = ptrtoint i8* %30 to i64, !dbg !5625
  %33 = ptrtoint i8* %31 to i64, !dbg !5625
  %34 = sub i64 %32, %33, !dbg !5625
  %35 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5626
  %36 = getelementptr inbounds %struct._encap, %struct._encap* %35, i32 0, i32 2, !dbg !5627
  %37 = bitcast %union.anon.2* %36 to %struct._encap_ip6*, !dbg !5627
  %38 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %37, i32 0, i32 0, !dbg !5628
  %39 = load i64, i64* %38, align 8, !dbg !5628
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i64 %39) #9, !dbg !5629
  %41 = load i8*, i8** %4, align 8, !dbg !5630
  %42 = sext i32 %40 to i64, !dbg !5630
  %43 = getelementptr inbounds i8, i8* %41, i64 %42, !dbg !5630
  store i8* %43, i8** %4, align 8, !dbg !5630
  br label %44, !dbg !5631

; <label>:44:                                     ; preds = %28, %3
  %45 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5632
  %46 = getelementptr inbounds %struct._encap, %struct._encap* %45, i32 0, i32 2, !dbg !5634
  %47 = bitcast %union.anon.2* %46 to %struct._encap_ip*, !dbg !5634
  %48 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %47, i32 0, i32 1, !dbg !5635
  %49 = load %struct._ip_address*, %struct._ip_address** %48, align 8, !dbg !5635
  %50 = icmp ne %struct._ip_address* %49, null, !dbg !5632
  br i1 %50, label %51, label %68, !dbg !5636

; <label>:51:                                     ; preds = %44
  %52 = load i8*, i8** %4, align 8, !dbg !5637
  %53 = load i8*, i8** %8, align 8, !dbg !5638
  %54 = load i8*, i8** %4, align 8, !dbg !5639
  %55 = ptrtoint i8* %53 to i64, !dbg !5640
  %56 = ptrtoint i8* %54 to i64, !dbg !5640
  %57 = sub i64 %55, %56, !dbg !5640
  %58 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5641
  %59 = getelementptr inbounds %struct._encap, %struct._encap* %58, i32 0, i32 2, !dbg !5642
  %60 = bitcast %union.anon.2* %59 to %struct._encap_ip6*, !dbg !5642
  %61 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %60, i32 0, i32 1, !dbg !5643
  %62 = load %struct._ip_address*, %struct._ip_address** %61, align 8, !dbg !5643
  %63 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %62), !dbg !5644
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %52, i64 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.149, i32 0, i32 0), i8* %63) #9, !dbg !5645
  %65 = load i8*, i8** %4, align 8, !dbg !5647
  %66 = sext i32 %64 to i64, !dbg !5647
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !5647
  store i8* %67, i8** %4, align 8, !dbg !5647
  br label %68, !dbg !5648

; <label>:68:                                     ; preds = %51, %44
  %69 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5649
  %70 = getelementptr inbounds %struct._encap, %struct._encap* %69, i32 0, i32 2, !dbg !5651
  %71 = bitcast %union.anon.2* %70 to %struct._encap_ip*, !dbg !5651
  %72 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %71, i32 0, i32 2, !dbg !5652
  %73 = load %struct._ip_address*, %struct._ip_address** %72, align 8, !dbg !5652
  %74 = icmp ne %struct._ip_address* %73, null, !dbg !5649
  br i1 %74, label %75, label %92, !dbg !5653

; <label>:75:                                     ; preds = %68
  %76 = load i8*, i8** %4, align 8, !dbg !5654
  %77 = load i8*, i8** %8, align 8, !dbg !5655
  %78 = load i8*, i8** %4, align 8, !dbg !5656
  %79 = ptrtoint i8* %77 to i64, !dbg !5657
  %80 = ptrtoint i8* %78 to i64, !dbg !5657
  %81 = sub i64 %79, %80, !dbg !5657
  %82 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5658
  %83 = getelementptr inbounds %struct._encap, %struct._encap* %82, i32 0, i32 2, !dbg !5659
  %84 = bitcast %union.anon.2* %83 to %struct._encap_ip6*, !dbg !5659
  %85 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %84, i32 0, i32 2, !dbg !5660
  %86 = load %struct._ip_address*, %struct._ip_address** %85, align 8, !dbg !5660
  %87 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %86), !dbg !5661
  %88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %76, i64 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %87) #9, !dbg !5662
  %89 = load i8*, i8** %4, align 8, !dbg !5664
  %90 = sext i32 %88 to i64, !dbg !5664
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !5664
  store i8* %91, i8** %4, align 8, !dbg !5664
  br label %92, !dbg !5665

; <label>:92:                                     ; preds = %75, %68
  %93 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5666
  %94 = getelementptr inbounds %struct._encap, %struct._encap* %93, i32 0, i32 1, !dbg !5668
  %95 = load i32, i32* %94, align 4, !dbg !5668
  %96 = and i32 %95, 2, !dbg !5669
  %97 = icmp ne i32 %96, 0, !dbg !5669
  br i1 %97, label %98, label %115, !dbg !5670

; <label>:98:                                     ; preds = %92
  %99 = load i8*, i8** %4, align 8, !dbg !5671
  %100 = load i8*, i8** %8, align 8, !dbg !5672
  %101 = load i8*, i8** %4, align 8, !dbg !5673
  %102 = ptrtoint i8* %100 to i64, !dbg !5674
  %103 = ptrtoint i8* %101 to i64, !dbg !5674
  %104 = sub i64 %102, %103, !dbg !5674
  %105 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5675
  %106 = getelementptr inbounds %struct._encap, %struct._encap* %105, i32 0, i32 2, !dbg !5676
  %107 = bitcast %union.anon.2* %106 to %struct._encap_ip6*, !dbg !5676
  %108 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %107, i32 0, i32 3, !dbg !5677
  %109 = load i8, i8* %108, align 8, !dbg !5677
  %110 = zext i8 %109 to i32, !dbg !5675
  %111 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %99, i64 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i32 %110) #9, !dbg !5678
  %112 = load i8*, i8** %4, align 8, !dbg !5679
  %113 = sext i32 %111 to i64, !dbg !5679
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !5679
  store i8* %114, i8** %4, align 8, !dbg !5679
  br label %115, !dbg !5680

; <label>:115:                                    ; preds = %98, %92
  %116 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5681
  %117 = getelementptr inbounds %struct._encap, %struct._encap* %116, i32 0, i32 1, !dbg !5683
  %118 = load i32, i32* %117, align 4, !dbg !5683
  %119 = and i32 %118, 4, !dbg !5684
  %120 = icmp ne i32 %119, 0, !dbg !5684
  br i1 %120, label %121, label %138, !dbg !5685

; <label>:121:                                    ; preds = %115
  %122 = load i8*, i8** %4, align 8, !dbg !5686
  %123 = load i8*, i8** %8, align 8, !dbg !5687
  %124 = load i8*, i8** %4, align 8, !dbg !5688
  %125 = ptrtoint i8* %123 to i64, !dbg !5689
  %126 = ptrtoint i8* %124 to i64, !dbg !5689
  %127 = sub i64 %125, %126, !dbg !5689
  %128 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5690
  %129 = getelementptr inbounds %struct._encap, %struct._encap* %128, i32 0, i32 2, !dbg !5691
  %130 = bitcast %union.anon.2* %129 to %struct._encap_ip6*, !dbg !5691
  %131 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %130, i32 0, i32 5, !dbg !5692
  %132 = load i8, i8* %131, align 4, !dbg !5692
  %133 = zext i8 %132 to i32, !dbg !5690
  %134 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %122, i64 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i32 %133) #9, !dbg !5693
  %135 = load i8*, i8** %4, align 8, !dbg !5694
  %136 = sext i32 %134 to i64, !dbg !5694
  %137 = getelementptr inbounds i8, i8* %135, i64 %136, !dbg !5694
  store i8* %137, i8** %4, align 8, !dbg !5694
  br label %138, !dbg !5695

; <label>:138:                                    ; preds = %121, %115
  %139 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5696
  %140 = getelementptr inbounds %struct._encap, %struct._encap* %139, i32 0, i32 1, !dbg !5698
  %141 = load i32, i32* %140, align 4, !dbg !5698
  %142 = and i32 %141, 8, !dbg !5699
  %143 = icmp ne i32 %142, 0, !dbg !5699
  br i1 %143, label %144, label %161, !dbg !5700

; <label>:144:                                    ; preds = %138
  %145 = load i8*, i8** %4, align 8, !dbg !5701
  %146 = load i8*, i8** %8, align 8, !dbg !5702
  %147 = load i8*, i8** %4, align 8, !dbg !5703
  %148 = ptrtoint i8* %146 to i64, !dbg !5704
  %149 = ptrtoint i8* %147 to i64, !dbg !5704
  %150 = sub i64 %148, %149, !dbg !5704
  %151 = load %struct._encap*, %struct._encap** %6, align 8, !dbg !5705
  %152 = getelementptr inbounds %struct._encap, %struct._encap* %151, i32 0, i32 2, !dbg !5706
  %153 = bitcast %union.anon.2* %152 to %struct._encap_ip6*, !dbg !5706
  %154 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %153, i32 0, i32 4, !dbg !5707
  %155 = load i16, i16* %154, align 2, !dbg !5707
  %156 = zext i16 %155 to i32, !dbg !5705
  %157 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %145, i64 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i32 %156) #9, !dbg !5708
  %158 = load i8*, i8** %4, align 8, !dbg !5709
  %159 = sext i32 %157 to i64, !dbg !5709
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !5709
  store i8* %160, i8** %4, align 8, !dbg !5709
  br label %161, !dbg !5710

; <label>:161:                                    ; preds = %144, %138
  %162 = load i8*, i8** %4, align 8, !dbg !5711
  %163 = load i8*, i8** %7, align 8, !dbg !5712
  %164 = ptrtoint i8* %162 to i64, !dbg !5713
  %165 = ptrtoint i8* %163 to i64, !dbg !5713
  %166 = sub i64 %164, %165, !dbg !5713
  ret i64 %166, !dbg !5714
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #7

; Function Attrs: nounwind uwtable
define internal i32 @parse_encap_ip(%struct._vector*, i32*, %struct._encap*) #0 !dbg !5715 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._encap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !5718, metadata !581), !dbg !5719
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5720, metadata !581), !dbg !5721
  store %struct._encap* %2, %struct._encap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %7, metadata !5722, metadata !581), !dbg !5723
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5724, metadata !581), !dbg !5725
  %11 = load i32*, i32** %6, align 8, !dbg !5726
  %12 = load i32, i32* %11, align 4, !dbg !5727
  store i32 %12, i32* %8, align 4, !dbg !5725
  call void @llvm.dbg.declare(metadata i8** %9, metadata !5728, metadata !581), !dbg !5729
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5730, metadata !581), !dbg !5731
  %13 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5732
  %14 = getelementptr inbounds %struct._encap, %struct._encap* %13, i32 0, i32 0, !dbg !5733
  store i16 2, i16* %14, align 8, !dbg !5734
  br label %15, !dbg !5735

; <label>:15:                                     ; preds = %218, %3
  %16 = load i32, i32* %8, align 4, !dbg !5736
  %17 = add i32 %16, 1, !dbg !5738
  %18 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !5739
  %19 = getelementptr inbounds %struct._vector, %struct._vector* %18, i32 0, i32 1, !dbg !5740
  %20 = load i32, i32* %19, align 4, !dbg !5740
  %21 = icmp ult i32 %17, %20, !dbg !5741
  br i1 %21, label %22, label %221, !dbg !5742

; <label>:22:                                     ; preds = %15
  %23 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !5743
  %24 = load i32, i32* %8, align 4, !dbg !5745
  %25 = zext i32 %24 to i64, !dbg !5745
  %26 = call i8* @strvec_slot(%struct._vector* %23, i64 %25), !dbg !5746
  store i8* %26, i8** %9, align 8, !dbg !5747
  %27 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !5748
  %28 = load i32, i32* %8, align 4, !dbg !5749
  %29 = add i32 %28, 1, !dbg !5750
  %30 = zext i32 %29 to i64, !dbg !5749
  %31 = call i8* @strvec_slot(%struct._vector* %27, i64 %30), !dbg !5751
  store i8* %31, i8** %10, align 8, !dbg !5752
  %32 = load i8*, i8** %9, align 8, !dbg !5753
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0)) #8, !dbg !5755
  %34 = icmp ne i32 %33, 0, !dbg !5755
  br i1 %34, label %45, label %35, !dbg !5756

; <label>:35:                                     ; preds = %22
  %36 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5757
  %37 = getelementptr inbounds %struct._encap, %struct._encap* %36, i32 0, i32 2, !dbg !5760
  %38 = bitcast %union.anon.2* %37 to %struct._encap_ip*, !dbg !5760
  %39 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %38, i32 0, i32 0, !dbg !5761
  %40 = load i8*, i8** %10, align 8, !dbg !5762
  %41 = call zeroext i1 @get_u64(i64* %39, i8* %40, i64 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.164, i32 0, i32 0)), !dbg !5763
  br i1 %41, label %42, label %44, !dbg !5764

; <label>:42:                                     ; preds = %35
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5765
  br label %44, !dbg !5765

; <label>:44:                                     ; preds = %42, %35
  br label %239, !dbg !5766

; <label>:45:                                     ; preds = %22
  %46 = load i8*, i8** %9, align 8, !dbg !5767
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0)) #8, !dbg !5769
  %48 = icmp ne i32 %47, 0, !dbg !5769
  br i1 %48, label %106, label %49, !dbg !5770

; <label>:49:                                     ; preds = %45
  %50 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5771
  %51 = getelementptr inbounds %struct._encap, %struct._encap* %50, i32 0, i32 2, !dbg !5774
  %52 = bitcast %union.anon.2* %51 to %struct._encap_ip*, !dbg !5774
  %53 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %52, i32 0, i32 1, !dbg !5775
  %54 = load %struct._ip_address*, %struct._ip_address** %53, align 8, !dbg !5775
  %55 = icmp ne %struct._ip_address* %54, null, !dbg !5771
  br i1 %55, label %56, label %75, !dbg !5776

; <label>:56:                                     ; preds = %49
  %57 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5777
  %58 = getelementptr inbounds %struct._encap, %struct._encap* %57, i32 0, i32 2, !dbg !5780
  %59 = bitcast %union.anon.2* %58 to %struct._encap_ip*, !dbg !5780
  %60 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %59, i32 0, i32 1, !dbg !5781
  %61 = load %struct._ip_address*, %struct._ip_address** %60, align 8, !dbg !5781
  %62 = icmp ne %struct._ip_address* %61, null, !dbg !5777
  br i1 %62, label %63, label %74, !dbg !5782

; <label>:63:                                     ; preds = %56
  %64 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5783
  %65 = getelementptr inbounds %struct._encap, %struct._encap* %64, i32 0, i32 2, !dbg !5786
  %66 = bitcast %union.anon.2* %65 to %struct._encap_ip*, !dbg !5786
  %67 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %66, i32 0, i32 1, !dbg !5787
  %68 = load %struct._ip_address*, %struct._ip_address** %67, align 8, !dbg !5787
  %69 = bitcast %struct._ip_address* %68 to i8*, !dbg !5783
  call void @free(i8* %69) #9, !dbg !5788
  %70 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5789
  %71 = getelementptr inbounds %struct._encap, %struct._encap* %70, i32 0, i32 2, !dbg !5790
  %72 = bitcast %union.anon.2* %71 to %struct._encap_ip*, !dbg !5790
  %73 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %72, i32 0, i32 1, !dbg !5791
  store %struct._ip_address* null, %struct._ip_address** %73, align 8, !dbg !5792
  br label %74, !dbg !5793

; <label>:74:                                     ; preds = %63, %56
  br label %75, !dbg !5794

; <label>:75:                                     ; preds = %74, %49
  %76 = load i8*, i8** %10, align 8, !dbg !5796
  %77 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %76, i32 0), !dbg !5798
  %78 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5799
  %79 = getelementptr inbounds %struct._encap, %struct._encap* %78, i32 0, i32 2, !dbg !5800
  %80 = bitcast %union.anon.2* %79 to %struct._encap_ip*, !dbg !5800
  %81 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %80, i32 0, i32 1, !dbg !5801
  store %struct._ip_address* %77, %struct._ip_address** %81, align 8, !dbg !5802
  %82 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5803
  %83 = getelementptr inbounds %struct._encap, %struct._encap* %82, i32 0, i32 2, !dbg !5805
  %84 = bitcast %union.anon.2* %83 to %struct._encap_ip*, !dbg !5805
  %85 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %84, i32 0, i32 1, !dbg !5806
  %86 = load %struct._ip_address*, %struct._ip_address** %85, align 8, !dbg !5806
  %87 = icmp ne %struct._ip_address* %86, null, !dbg !5803
  br i1 %87, label %91, label %88, !dbg !5807

; <label>:88:                                     ; preds = %75
  %89 = load i8*, i8** %10, align 8, !dbg !5808
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.166, i32 0, i32 0), i8* %89), !dbg !5810
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5811
  br label %239, !dbg !5812

; <label>:91:                                     ; preds = %75
  %92 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5813
  %93 = getelementptr inbounds %struct._encap, %struct._encap* %92, i32 0, i32 2, !dbg !5815
  %94 = bitcast %union.anon.2* %93 to %struct._encap_ip*, !dbg !5815
  %95 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %94, i32 0, i32 1, !dbg !5816
  %96 = load %struct._ip_address*, %struct._ip_address** %95, align 8, !dbg !5816
  %97 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %96, i32 0, i32 0, !dbg !5817
  %98 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %97, i32 0, i32 0, !dbg !5818
  %99 = load i8, i8* %98, align 8, !dbg !5818
  %100 = zext i8 %99 to i32, !dbg !5813
  %101 = icmp ne i32 %100, 2, !dbg !5819
  br i1 %101, label %102, label %105, !dbg !5820

; <label>:102:                                    ; preds = %91
  %103 = load i8*, i8** %10, align 8, !dbg !5821
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.167, i32 0, i32 0), i8* %103), !dbg !5824
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5825
  br label %239, !dbg !5826

; <label>:105:                                    ; preds = %91
  br label %217, !dbg !5827

; <label>:106:                                    ; preds = %45
  %107 = load i8*, i8** %9, align 8, !dbg !5828
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !5831
  %109 = icmp ne i32 %108, 0, !dbg !5831
  br i1 %109, label %167, label %110, !dbg !5832

; <label>:110:                                    ; preds = %106
  %111 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5833
  %112 = getelementptr inbounds %struct._encap, %struct._encap* %111, i32 0, i32 2, !dbg !5836
  %113 = bitcast %union.anon.2* %112 to %struct._encap_ip*, !dbg !5836
  %114 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %113, i32 0, i32 2, !dbg !5837
  %115 = load %struct._ip_address*, %struct._ip_address** %114, align 8, !dbg !5837
  %116 = icmp ne %struct._ip_address* %115, null, !dbg !5833
  br i1 %116, label %117, label %136, !dbg !5838

; <label>:117:                                    ; preds = %110
  %118 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5839
  %119 = getelementptr inbounds %struct._encap, %struct._encap* %118, i32 0, i32 2, !dbg !5842
  %120 = bitcast %union.anon.2* %119 to %struct._encap_ip*, !dbg !5842
  %121 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %120, i32 0, i32 2, !dbg !5843
  %122 = load %struct._ip_address*, %struct._ip_address** %121, align 8, !dbg !5843
  %123 = icmp ne %struct._ip_address* %122, null, !dbg !5839
  br i1 %123, label %124, label %135, !dbg !5844

; <label>:124:                                    ; preds = %117
  %125 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5845
  %126 = getelementptr inbounds %struct._encap, %struct._encap* %125, i32 0, i32 2, !dbg !5848
  %127 = bitcast %union.anon.2* %126 to %struct._encap_ip*, !dbg !5848
  %128 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %127, i32 0, i32 2, !dbg !5849
  %129 = load %struct._ip_address*, %struct._ip_address** %128, align 8, !dbg !5849
  %130 = bitcast %struct._ip_address* %129 to i8*, !dbg !5845
  call void @free(i8* %130) #9, !dbg !5850
  %131 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5851
  %132 = getelementptr inbounds %struct._encap, %struct._encap* %131, i32 0, i32 2, !dbg !5852
  %133 = bitcast %union.anon.2* %132 to %struct._encap_ip*, !dbg !5852
  %134 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %133, i32 0, i32 2, !dbg !5853
  store %struct._ip_address* null, %struct._ip_address** %134, align 8, !dbg !5854
  br label %135, !dbg !5855

; <label>:135:                                    ; preds = %124, %117
  br label %136, !dbg !5856

; <label>:136:                                    ; preds = %135, %110
  %137 = load i8*, i8** %10, align 8, !dbg !5858
  %138 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %137, i32 0), !dbg !5860
  %139 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5861
  %140 = getelementptr inbounds %struct._encap, %struct._encap* %139, i32 0, i32 2, !dbg !5862
  %141 = bitcast %union.anon.2* %140 to %struct._encap_ip*, !dbg !5862
  %142 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %141, i32 0, i32 2, !dbg !5863
  store %struct._ip_address* %138, %struct._ip_address** %142, align 8, !dbg !5864
  %143 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5865
  %144 = getelementptr inbounds %struct._encap, %struct._encap* %143, i32 0, i32 2, !dbg !5867
  %145 = bitcast %union.anon.2* %144 to %struct._encap_ip*, !dbg !5867
  %146 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %145, i32 0, i32 2, !dbg !5868
  %147 = load %struct._ip_address*, %struct._ip_address** %146, align 8, !dbg !5868
  %148 = icmp ne %struct._ip_address* %147, null, !dbg !5865
  br i1 %148, label %152, label %149, !dbg !5869

; <label>:149:                                    ; preds = %136
  %150 = load i8*, i8** %10, align 8, !dbg !5870
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.168, i32 0, i32 0), i8* %150), !dbg !5872
  %151 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5873
  br label %239, !dbg !5874

; <label>:152:                                    ; preds = %136
  %153 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5875
  %154 = getelementptr inbounds %struct._encap, %struct._encap* %153, i32 0, i32 2, !dbg !5877
  %155 = bitcast %union.anon.2* %154 to %struct._encap_ip*, !dbg !5877
  %156 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %155, i32 0, i32 2, !dbg !5878
  %157 = load %struct._ip_address*, %struct._ip_address** %156, align 8, !dbg !5878
  %158 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %157, i32 0, i32 0, !dbg !5879
  %159 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %158, i32 0, i32 0, !dbg !5880
  %160 = load i8, i8* %159, align 8, !dbg !5880
  %161 = zext i8 %160 to i32, !dbg !5875
  %162 = icmp ne i32 %161, 2, !dbg !5881
  br i1 %162, label %163, label %166, !dbg !5882

; <label>:163:                                    ; preds = %152
  %164 = load i8*, i8** %10, align 8, !dbg !5883
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.167, i32 0, i32 0), i8* %164), !dbg !5886
  %165 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5887
  br label %239, !dbg !5888

; <label>:166:                                    ; preds = %152
  br label %216, !dbg !5889

; <label>:167:                                    ; preds = %106
  %168 = load i8*, i8** %9, align 8, !dbg !5890
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0)) #8, !dbg !5893
  %170 = icmp ne i32 %169, 0, !dbg !5893
  br i1 %170, label %186, label %171, !dbg !5894

; <label>:171:                                    ; preds = %167
  %172 = load i8*, i8** %10, align 8, !dbg !5895
  %173 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5898
  %174 = getelementptr inbounds %struct._encap, %struct._encap* %173, i32 0, i32 2, !dbg !5899
  %175 = bitcast %union.anon.2* %174 to %struct._encap_ip*, !dbg !5899
  %176 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %175, i32 0, i32 3, !dbg !5900
  %177 = call zeroext i1 @find_rttables_dsfield(i8* %172, i8* %176), !dbg !5901
  br i1 %177, label %181, label %178, !dbg !5902

; <label>:178:                                    ; preds = %171
  %179 = load i8*, i8** %10, align 8, !dbg !5903
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.169, i32 0, i32 0), i8* %179), !dbg !5905
  %180 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5906
  br label %239, !dbg !5907

; <label>:181:                                    ; preds = %171
  %182 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5908
  %183 = getelementptr inbounds %struct._encap, %struct._encap* %182, i32 0, i32 1, !dbg !5909
  %184 = load i32, i32* %183, align 4, !dbg !5910
  %185 = or i32 %184, 2, !dbg !5910
  store i32 %185, i32* %183, align 4, !dbg !5910
  br label %215, !dbg !5911

; <label>:186:                                    ; preds = %167
  %187 = load i8*, i8** %9, align 8, !dbg !5912
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0)) #8, !dbg !5915
  %189 = icmp ne i32 %188, 0, !dbg !5915
  br i1 %189, label %200, label %190, !dbg !5916

; <label>:190:                                    ; preds = %186
  %191 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5917
  %192 = getelementptr inbounds %struct._encap, %struct._encap* %191, i32 0, i32 2, !dbg !5920
  %193 = bitcast %union.anon.2* %192 to %struct._encap_ip*, !dbg !5920
  %194 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %193, i32 0, i32 5, !dbg !5921
  %195 = load i8*, i8** %10, align 8, !dbg !5922
  %196 = call zeroext i1 @get_u8(i8* %194, i8* %195, i8 zeroext -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.171, i32 0, i32 0)), !dbg !5923
  br i1 %196, label %197, label %199, !dbg !5924

; <label>:197:                                    ; preds = %190
  %198 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5925
  br label %199, !dbg !5925

; <label>:199:                                    ; preds = %197, %190
  br label %239, !dbg !5927

; <label>:200:                                    ; preds = %186
  %201 = load i8*, i8** %9, align 8, !dbg !5929
  %202 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0)) #8, !dbg !5931
  %203 = icmp ne i32 %202, 0, !dbg !5931
  br i1 %203, label %214, label %204, !dbg !5932

; <label>:204:                                    ; preds = %200
  %205 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5933
  %206 = getelementptr inbounds %struct._encap, %struct._encap* %205, i32 0, i32 2, !dbg !5936
  %207 = bitcast %union.anon.2* %206 to %struct._encap_ip*, !dbg !5936
  %208 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %207, i32 0, i32 4, !dbg !5937
  %209 = load i8*, i8** %10, align 8, !dbg !5938
  %210 = call zeroext i1 @get_u16(i16* %208, i8* %209, i16 zeroext -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.173, i32 0, i32 0)), !dbg !5939
  br i1 %210, label %211, label %213, !dbg !5940

; <label>:211:                                    ; preds = %204
  %212 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5941
  br label %213, !dbg !5941

; <label>:213:                                    ; preds = %211, %204
  br label %239, !dbg !5943

; <label>:214:                                    ; preds = %200
  br label %221, !dbg !5944

; <label>:215:                                    ; preds = %181
  br label %216

; <label>:216:                                    ; preds = %215, %166
  br label %217

; <label>:217:                                    ; preds = %216, %105
  br label %218

; <label>:218:                                    ; preds = %217
  %219 = load i32, i32* %8, align 4, !dbg !5945
  %220 = add i32 %219, 2, !dbg !5945
  store i32 %220, i32* %8, align 4, !dbg !5945
  br label %15, !dbg !5946, !llvm.loop !5948

; <label>:221:                                    ; preds = %214, %15
  %222 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5949
  %223 = getelementptr inbounds %struct._encap, %struct._encap* %222, i32 0, i32 2, !dbg !5951
  %224 = bitcast %union.anon.2* %223 to %struct._encap_ip*, !dbg !5951
  %225 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %224, i32 0, i32 1, !dbg !5952
  %226 = load %struct._ip_address*, %struct._ip_address** %225, align 8, !dbg !5952
  %227 = icmp ne %struct._ip_address* %226, null, !dbg !5949
  br i1 %227, label %236, label %228, !dbg !5953

; <label>:228:                                    ; preds = %221
  %229 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5954
  %230 = getelementptr inbounds %struct._encap, %struct._encap* %229, i32 0, i32 1, !dbg !5956
  %231 = load i32, i32* %230, align 4, !dbg !5956
  %232 = or i32 %231, 1, !dbg !5957
  %233 = icmp ne i32 %232, 0, !dbg !5957
  br i1 %233, label %236, label %234, !dbg !5958

; <label>:234:                                    ; preds = %228
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.174, i32 0, i32 0)), !dbg !5959
  %235 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !5961
  br label %239, !dbg !5962

; <label>:236:                                    ; preds = %228, %221
  %237 = load i32, i32* %8, align 4, !dbg !5963
  %238 = load i32*, i32** %6, align 8, !dbg !5964
  store i32 %237, i32* %238, align 4, !dbg !5965
  store i32 0, i32* %4, align 4, !dbg !5966
  br label %302, !dbg !5966

; <label>:239:                                    ; preds = %234, %213, %199, %178, %163, %149, %102, %88, %44
  %240 = load i32, i32* %8, align 4, !dbg !5967
  %241 = load i32*, i32** %6, align 8, !dbg !5968
  store i32 %240, i32* %241, align 4, !dbg !5969
  %242 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5970
  %243 = getelementptr inbounds %struct._encap, %struct._encap* %242, i32 0, i32 2, !dbg !5972
  %244 = bitcast %union.anon.2* %243 to %struct._encap_ip*, !dbg !5972
  %245 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %244, i32 0, i32 1, !dbg !5973
  %246 = load %struct._ip_address*, %struct._ip_address** %245, align 8, !dbg !5973
  %247 = icmp ne %struct._ip_address* %246, null, !dbg !5970
  br i1 %247, label %248, label %271, !dbg !5974

; <label>:248:                                    ; preds = %239
  %249 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5975
  %250 = getelementptr inbounds %struct._encap, %struct._encap* %249, i32 0, i32 2, !dbg !5979
  %251 = bitcast %union.anon.2* %250 to %struct._encap_ip*, !dbg !5979
  %252 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %251, i32 0, i32 1, !dbg !5980
  %253 = load %struct._ip_address*, %struct._ip_address** %252, align 8, !dbg !5980
  %254 = icmp ne %struct._ip_address* %253, null, !dbg !5975
  br i1 %254, label %255, label %266, !dbg !5981

; <label>:255:                                    ; preds = %248
  %256 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5982
  %257 = getelementptr inbounds %struct._encap, %struct._encap* %256, i32 0, i32 2, !dbg !5985
  %258 = bitcast %union.anon.2* %257 to %struct._encap_ip*, !dbg !5985
  %259 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %258, i32 0, i32 1, !dbg !5986
  %260 = load %struct._ip_address*, %struct._ip_address** %259, align 8, !dbg !5986
  %261 = bitcast %struct._ip_address* %260 to i8*, !dbg !5982
  call void @free(i8* %261) #9, !dbg !5987
  %262 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5988
  %263 = getelementptr inbounds %struct._encap, %struct._encap* %262, i32 0, i32 2, !dbg !5989
  %264 = bitcast %union.anon.2* %263 to %struct._encap_ip*, !dbg !5989
  %265 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %264, i32 0, i32 1, !dbg !5990
  store %struct._ip_address* null, %struct._ip_address** %265, align 8, !dbg !5991
  br label %266, !dbg !5992

; <label>:266:                                    ; preds = %255, %248
  %267 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5993
  %268 = getelementptr inbounds %struct._encap, %struct._encap* %267, i32 0, i32 2, !dbg !5994
  %269 = bitcast %union.anon.2* %268 to %struct._encap_ip*, !dbg !5994
  %270 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %269, i32 0, i32 1, !dbg !5995
  store %struct._ip_address* null, %struct._ip_address** %270, align 8, !dbg !5996
  br label %271, !dbg !5997

; <label>:271:                                    ; preds = %266, %239
  %272 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !5998
  %273 = getelementptr inbounds %struct._encap, %struct._encap* %272, i32 0, i32 2, !dbg !6000
  %274 = bitcast %union.anon.2* %273 to %struct._encap_ip*, !dbg !6000
  %275 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %274, i32 0, i32 2, !dbg !6001
  %276 = load %struct._ip_address*, %struct._ip_address** %275, align 8, !dbg !6001
  %277 = icmp ne %struct._ip_address* %276, null, !dbg !5998
  br i1 %277, label %278, label %301, !dbg !6002

; <label>:278:                                    ; preds = %271
  %279 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6003
  %280 = getelementptr inbounds %struct._encap, %struct._encap* %279, i32 0, i32 2, !dbg !6007
  %281 = bitcast %union.anon.2* %280 to %struct._encap_ip*, !dbg !6007
  %282 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %281, i32 0, i32 2, !dbg !6008
  %283 = load %struct._ip_address*, %struct._ip_address** %282, align 8, !dbg !6008
  %284 = icmp ne %struct._ip_address* %283, null, !dbg !6003
  br i1 %284, label %285, label %296, !dbg !6009

; <label>:285:                                    ; preds = %278
  %286 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6010
  %287 = getelementptr inbounds %struct._encap, %struct._encap* %286, i32 0, i32 2, !dbg !6013
  %288 = bitcast %union.anon.2* %287 to %struct._encap_ip*, !dbg !6013
  %289 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %288, i32 0, i32 2, !dbg !6014
  %290 = load %struct._ip_address*, %struct._ip_address** %289, align 8, !dbg !6014
  %291 = bitcast %struct._ip_address* %290 to i8*, !dbg !6010
  call void @free(i8* %291) #9, !dbg !6015
  %292 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6016
  %293 = getelementptr inbounds %struct._encap, %struct._encap* %292, i32 0, i32 2, !dbg !6017
  %294 = bitcast %union.anon.2* %293 to %struct._encap_ip*, !dbg !6017
  %295 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %294, i32 0, i32 2, !dbg !6018
  store %struct._ip_address* null, %struct._ip_address** %295, align 8, !dbg !6019
  br label %296, !dbg !6020

; <label>:296:                                    ; preds = %285, %278
  %297 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6021
  %298 = getelementptr inbounds %struct._encap, %struct._encap* %297, i32 0, i32 2, !dbg !6022
  %299 = bitcast %union.anon.2* %298 to %struct._encap_ip*, !dbg !6022
  %300 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %299, i32 0, i32 2, !dbg !6023
  store %struct._ip_address* null, %struct._ip_address** %300, align 8, !dbg !6024
  br label %301, !dbg !6025

; <label>:301:                                    ; preds = %296, %271
  store i32 1, i32* %4, align 4, !dbg !6026
  br label %302, !dbg !6026

; <label>:302:                                    ; preds = %301, %236
  %303 = load i32, i32* %4, align 4, !dbg !6027
  ret i32 %303, !dbg !6027
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_encap_ip6(%struct._vector*, i32*, %struct._encap*) #0 !dbg !6028 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._encap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !6029, metadata !581), !dbg !6030
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !6031, metadata !581), !dbg !6032
  store %struct._encap* %2, %struct._encap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %7, metadata !6033, metadata !581), !dbg !6034
  call void @llvm.dbg.declare(metadata i32* %8, metadata !6035, metadata !581), !dbg !6036
  %11 = load i32*, i32** %6, align 8, !dbg !6037
  %12 = load i32, i32* %11, align 4, !dbg !6038
  store i32 %12, i32* %8, align 4, !dbg !6036
  call void @llvm.dbg.declare(metadata i8** %9, metadata !6039, metadata !581), !dbg !6040
  call void @llvm.dbg.declare(metadata i8** %10, metadata !6041, metadata !581), !dbg !6042
  %13 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6043
  %14 = getelementptr inbounds %struct._encap, %struct._encap* %13, i32 0, i32 0, !dbg !6044
  store i16 4, i16* %14, align 8, !dbg !6045
  br label %15, !dbg !6046

; <label>:15:                                     ; preds = %222, %3
  %16 = load i32, i32* %8, align 4, !dbg !6047
  %17 = add i32 %16, 1, !dbg !6049
  %18 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6050
  %19 = getelementptr inbounds %struct._vector, %struct._vector* %18, i32 0, i32 1, !dbg !6051
  %20 = load i32, i32* %19, align 4, !dbg !6051
  %21 = icmp ult i32 %17, %20, !dbg !6052
  br i1 %21, label %22, label %225, !dbg !6053

; <label>:22:                                     ; preds = %15
  %23 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6054
  %24 = load i32, i32* %8, align 4, !dbg !6056
  %25 = zext i32 %24 to i64, !dbg !6056
  %26 = call i8* @strvec_slot(%struct._vector* %23, i64 %25), !dbg !6057
  store i8* %26, i8** %9, align 8, !dbg !6058
  %27 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6059
  %28 = load i32, i32* %8, align 4, !dbg !6060
  %29 = add i32 %28, 1, !dbg !6061
  %30 = zext i32 %29 to i64, !dbg !6060
  %31 = call i8* @strvec_slot(%struct._vector* %27, i64 %30), !dbg !6062
  store i8* %31, i8** %10, align 8, !dbg !6063
  %32 = load i8*, i8** %9, align 8, !dbg !6064
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0)) #8, !dbg !6066
  %34 = icmp ne i32 %33, 0, !dbg !6066
  br i1 %34, label %45, label %35, !dbg !6067

; <label>:35:                                     ; preds = %22
  %36 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6068
  %37 = getelementptr inbounds %struct._encap, %struct._encap* %36, i32 0, i32 2, !dbg !6071
  %38 = bitcast %union.anon.2* %37 to %struct._encap_ip6*, !dbg !6071
  %39 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %38, i32 0, i32 0, !dbg !6072
  %40 = load i8*, i8** %10, align 8, !dbg !6073
  %41 = call zeroext i1 @get_u64(i64* %39, i8* %40, i64 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.175, i32 0, i32 0)), !dbg !6074
  br i1 %41, label %42, label %44, !dbg !6075

; <label>:42:                                     ; preds = %35
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6076
  br label %44, !dbg !6076

; <label>:44:                                     ; preds = %42, %35
  br label %243, !dbg !6077

; <label>:45:                                     ; preds = %22
  %46 = load i8*, i8** %9, align 8, !dbg !6078
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0)) #8, !dbg !6080
  %48 = icmp ne i32 %47, 0, !dbg !6080
  br i1 %48, label %106, label %49, !dbg !6081

; <label>:49:                                     ; preds = %45
  %50 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6082
  %51 = getelementptr inbounds %struct._encap, %struct._encap* %50, i32 0, i32 2, !dbg !6085
  %52 = bitcast %union.anon.2* %51 to %struct._encap_ip6*, !dbg !6085
  %53 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %52, i32 0, i32 1, !dbg !6086
  %54 = load %struct._ip_address*, %struct._ip_address** %53, align 8, !dbg !6086
  %55 = icmp ne %struct._ip_address* %54, null, !dbg !6082
  br i1 %55, label %56, label %75, !dbg !6087

; <label>:56:                                     ; preds = %49
  %57 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6088
  %58 = getelementptr inbounds %struct._encap, %struct._encap* %57, i32 0, i32 2, !dbg !6091
  %59 = bitcast %union.anon.2* %58 to %struct._encap_ip6*, !dbg !6091
  %60 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %59, i32 0, i32 1, !dbg !6092
  %61 = load %struct._ip_address*, %struct._ip_address** %60, align 8, !dbg !6092
  %62 = icmp ne %struct._ip_address* %61, null, !dbg !6088
  br i1 %62, label %63, label %74, !dbg !6093

; <label>:63:                                     ; preds = %56
  %64 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6094
  %65 = getelementptr inbounds %struct._encap, %struct._encap* %64, i32 0, i32 2, !dbg !6097
  %66 = bitcast %union.anon.2* %65 to %struct._encap_ip6*, !dbg !6097
  %67 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %66, i32 0, i32 1, !dbg !6098
  %68 = load %struct._ip_address*, %struct._ip_address** %67, align 8, !dbg !6098
  %69 = bitcast %struct._ip_address* %68 to i8*, !dbg !6094
  call void @free(i8* %69) #9, !dbg !6099
  %70 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6100
  %71 = getelementptr inbounds %struct._encap, %struct._encap* %70, i32 0, i32 2, !dbg !6101
  %72 = bitcast %union.anon.2* %71 to %struct._encap_ip6*, !dbg !6101
  %73 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %72, i32 0, i32 1, !dbg !6102
  store %struct._ip_address* null, %struct._ip_address** %73, align 8, !dbg !6103
  br label %74, !dbg !6104

; <label>:74:                                     ; preds = %63, %56
  br label %75, !dbg !6105

; <label>:75:                                     ; preds = %74, %49
  %76 = load i8*, i8** %10, align 8, !dbg !6107
  %77 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %76, i32 0), !dbg !6109
  %78 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6110
  %79 = getelementptr inbounds %struct._encap, %struct._encap* %78, i32 0, i32 2, !dbg !6111
  %80 = bitcast %union.anon.2* %79 to %struct._encap_ip6*, !dbg !6111
  %81 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %80, i32 0, i32 1, !dbg !6112
  store %struct._ip_address* %77, %struct._ip_address** %81, align 8, !dbg !6113
  %82 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6114
  %83 = getelementptr inbounds %struct._encap, %struct._encap* %82, i32 0, i32 2, !dbg !6116
  %84 = bitcast %union.anon.2* %83 to %struct._encap_ip6*, !dbg !6116
  %85 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %84, i32 0, i32 1, !dbg !6117
  %86 = load %struct._ip_address*, %struct._ip_address** %85, align 8, !dbg !6117
  %87 = icmp ne %struct._ip_address* %86, null, !dbg !6114
  br i1 %87, label %91, label %88, !dbg !6118

; <label>:88:                                     ; preds = %75
  %89 = load i8*, i8** %10, align 8, !dbg !6119
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.176, i32 0, i32 0), i8* %89), !dbg !6121
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6122
  br label %243, !dbg !6123

; <label>:91:                                     ; preds = %75
  %92 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6124
  %93 = getelementptr inbounds %struct._encap, %struct._encap* %92, i32 0, i32 2, !dbg !6126
  %94 = bitcast %union.anon.2* %93 to %struct._encap_ip6*, !dbg !6126
  %95 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %94, i32 0, i32 1, !dbg !6127
  %96 = load %struct._ip_address*, %struct._ip_address** %95, align 8, !dbg !6127
  %97 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %96, i32 0, i32 0, !dbg !6128
  %98 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %97, i32 0, i32 0, !dbg !6129
  %99 = load i8, i8* %98, align 8, !dbg !6129
  %100 = zext i8 %99 to i32, !dbg !6124
  %101 = icmp ne i32 %100, 10, !dbg !6130
  br i1 %101, label %102, label %105, !dbg !6131

; <label>:102:                                    ; preds = %91
  %103 = load i8*, i8** %10, align 8, !dbg !6132
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.177, i32 0, i32 0), i8* %103), !dbg !6135
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6136
  br label %243, !dbg !6137

; <label>:105:                                    ; preds = %91
  br label %221, !dbg !6138

; <label>:106:                                    ; preds = %45
  %107 = load i8*, i8** %9, align 8, !dbg !6139
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !6142
  %109 = icmp ne i32 %108, 0, !dbg !6142
  br i1 %109, label %167, label %110, !dbg !6143

; <label>:110:                                    ; preds = %106
  %111 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6144
  %112 = getelementptr inbounds %struct._encap, %struct._encap* %111, i32 0, i32 2, !dbg !6147
  %113 = bitcast %union.anon.2* %112 to %struct._encap_ip6*, !dbg !6147
  %114 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %113, i32 0, i32 2, !dbg !6148
  %115 = load %struct._ip_address*, %struct._ip_address** %114, align 8, !dbg !6148
  %116 = icmp ne %struct._ip_address* %115, null, !dbg !6144
  br i1 %116, label %117, label %136, !dbg !6149

; <label>:117:                                    ; preds = %110
  %118 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6150
  %119 = getelementptr inbounds %struct._encap, %struct._encap* %118, i32 0, i32 2, !dbg !6153
  %120 = bitcast %union.anon.2* %119 to %struct._encap_ip6*, !dbg !6153
  %121 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %120, i32 0, i32 2, !dbg !6154
  %122 = load %struct._ip_address*, %struct._ip_address** %121, align 8, !dbg !6154
  %123 = icmp ne %struct._ip_address* %122, null, !dbg !6150
  br i1 %123, label %124, label %135, !dbg !6155

; <label>:124:                                    ; preds = %117
  %125 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6156
  %126 = getelementptr inbounds %struct._encap, %struct._encap* %125, i32 0, i32 2, !dbg !6159
  %127 = bitcast %union.anon.2* %126 to %struct._encap_ip6*, !dbg !6159
  %128 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %127, i32 0, i32 2, !dbg !6160
  %129 = load %struct._ip_address*, %struct._ip_address** %128, align 8, !dbg !6160
  %130 = bitcast %struct._ip_address* %129 to i8*, !dbg !6156
  call void @free(i8* %130) #9, !dbg !6161
  %131 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6162
  %132 = getelementptr inbounds %struct._encap, %struct._encap* %131, i32 0, i32 2, !dbg !6163
  %133 = bitcast %union.anon.2* %132 to %struct._encap_ip6*, !dbg !6163
  %134 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %133, i32 0, i32 2, !dbg !6164
  store %struct._ip_address* null, %struct._ip_address** %134, align 8, !dbg !6165
  br label %135, !dbg !6166

; <label>:135:                                    ; preds = %124, %117
  br label %136, !dbg !6167

; <label>:136:                                    ; preds = %135, %110
  %137 = load i8*, i8** %10, align 8, !dbg !6169
  %138 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* null, i8* %137, i32 0), !dbg !6171
  %139 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6172
  %140 = getelementptr inbounds %struct._encap, %struct._encap* %139, i32 0, i32 2, !dbg !6173
  %141 = bitcast %union.anon.2* %140 to %struct._encap_ip6*, !dbg !6173
  %142 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %141, i32 0, i32 2, !dbg !6174
  store %struct._ip_address* %138, %struct._ip_address** %142, align 8, !dbg !6175
  %143 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6176
  %144 = getelementptr inbounds %struct._encap, %struct._encap* %143, i32 0, i32 2, !dbg !6178
  %145 = bitcast %union.anon.2* %144 to %struct._encap_ip6*, !dbg !6178
  %146 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %145, i32 0, i32 2, !dbg !6179
  %147 = load %struct._ip_address*, %struct._ip_address** %146, align 8, !dbg !6179
  %148 = icmp ne %struct._ip_address* %147, null, !dbg !6176
  br i1 %148, label %152, label %149, !dbg !6180

; <label>:149:                                    ; preds = %136
  %150 = load i8*, i8** %10, align 8, !dbg !6181
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.178, i32 0, i32 0), i8* %150), !dbg !6183
  %151 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6184
  br label %243, !dbg !6185

; <label>:152:                                    ; preds = %136
  %153 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6186
  %154 = getelementptr inbounds %struct._encap, %struct._encap* %153, i32 0, i32 2, !dbg !6188
  %155 = bitcast %union.anon.2* %154 to %struct._encap_ip6*, !dbg !6188
  %156 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %155, i32 0, i32 2, !dbg !6189
  %157 = load %struct._ip_address*, %struct._ip_address** %156, align 8, !dbg !6189
  %158 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %157, i32 0, i32 0, !dbg !6190
  %159 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %158, i32 0, i32 0, !dbg !6191
  %160 = load i8, i8* %159, align 8, !dbg !6191
  %161 = zext i8 %160 to i32, !dbg !6186
  %162 = icmp ne i32 %161, 10, !dbg !6192
  br i1 %162, label %163, label %166, !dbg !6193

; <label>:163:                                    ; preds = %152
  %164 = load i8*, i8** %10, align 8, !dbg !6194
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.177, i32 0, i32 0), i8* %164), !dbg !6197
  %165 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6198
  br label %243, !dbg !6199

; <label>:166:                                    ; preds = %152
  br label %220, !dbg !6200

; <label>:167:                                    ; preds = %106
  %168 = load i8*, i8** %9, align 8, !dbg !6201
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0)) #8, !dbg !6204
  %170 = icmp ne i32 %169, 0, !dbg !6204
  br i1 %170, label %186, label %171, !dbg !6205

; <label>:171:                                    ; preds = %167
  %172 = load i8*, i8** %10, align 8, !dbg !6206
  %173 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6209
  %174 = getelementptr inbounds %struct._encap, %struct._encap* %173, i32 0, i32 2, !dbg !6210
  %175 = bitcast %union.anon.2* %174 to %struct._encap_ip6*, !dbg !6210
  %176 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %175, i32 0, i32 3, !dbg !6211
  %177 = call zeroext i1 @find_rttables_dsfield(i8* %172, i8* %176), !dbg !6212
  br i1 %177, label %181, label %178, !dbg !6213

; <label>:178:                                    ; preds = %171
  %179 = load i8*, i8** %9, align 8, !dbg !6214
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.180, i32 0, i32 0), i8* %179), !dbg !6216
  %180 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6217
  br label %243, !dbg !6218

; <label>:181:                                    ; preds = %171
  %182 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6219
  %183 = getelementptr inbounds %struct._encap, %struct._encap* %182, i32 0, i32 1, !dbg !6220
  %184 = load i32, i32* %183, align 4, !dbg !6221
  %185 = or i32 %184, 2, !dbg !6221
  store i32 %185, i32* %183, align 4, !dbg !6221
  br label %219, !dbg !6222

; <label>:186:                                    ; preds = %167
  %187 = load i8*, i8** %9, align 8, !dbg !6223
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0)) #8, !dbg !6226
  %189 = icmp ne i32 %188, 0, !dbg !6226
  br i1 %189, label %203, label %190, !dbg !6227

; <label>:190:                                    ; preds = %186
  %191 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6228
  %192 = getelementptr inbounds %struct._encap, %struct._encap* %191, i32 0, i32 2, !dbg !6231
  %193 = bitcast %union.anon.2* %192 to %struct._encap_ip6*, !dbg !6231
  %194 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %193, i32 0, i32 5, !dbg !6232
  %195 = load i8*, i8** %10, align 8, !dbg !6233
  %196 = call zeroext i1 @get_u8(i8* %194, i8* %195, i8 zeroext -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.181, i32 0, i32 0)), !dbg !6234
  br i1 %196, label %197, label %198, !dbg !6235

; <label>:197:                                    ; preds = %190
  br label %243, !dbg !6236

; <label>:198:                                    ; preds = %190
  %199 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6238
  %200 = getelementptr inbounds %struct._encap, %struct._encap* %199, i32 0, i32 1, !dbg !6240
  %201 = load i32, i32* %200, align 4, !dbg !6241
  %202 = or i32 %201, 4, !dbg !6241
  store i32 %202, i32* %200, align 4, !dbg !6241
  br label %218, !dbg !6242

; <label>:203:                                    ; preds = %186
  %204 = load i8*, i8** %9, align 8, !dbg !6243
  %205 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0)) #8, !dbg !6246
  %206 = icmp ne i32 %205, 0, !dbg !6246
  br i1 %206, label %217, label %207, !dbg !6247

; <label>:207:                                    ; preds = %203
  %208 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6248
  %209 = getelementptr inbounds %struct._encap, %struct._encap* %208, i32 0, i32 2, !dbg !6251
  %210 = bitcast %union.anon.2* %209 to %struct._encap_ip6*, !dbg !6251
  %211 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %210, i32 0, i32 4, !dbg !6252
  %212 = load i8*, i8** %10, align 8, !dbg !6253
  %213 = call zeroext i1 @get_u16(i16* %211, i8* %212, i16 zeroext -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.182, i32 0, i32 0)), !dbg !6254
  br i1 %213, label %214, label %216, !dbg !6255

; <label>:214:                                    ; preds = %207
  %215 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6256
  br label %216, !dbg !6256

; <label>:216:                                    ; preds = %214, %207
  br label %243, !dbg !6257

; <label>:217:                                    ; preds = %203
  br label %225, !dbg !6258

; <label>:218:                                    ; preds = %198
  br label %219

; <label>:219:                                    ; preds = %218, %181
  br label %220

; <label>:220:                                    ; preds = %219, %166
  br label %221

; <label>:221:                                    ; preds = %220, %105
  br label %222

; <label>:222:                                    ; preds = %221
  %223 = load i32, i32* %8, align 4, !dbg !6259
  %224 = add i32 %223, 2, !dbg !6259
  store i32 %224, i32* %8, align 4, !dbg !6259
  br label %15, !dbg !6260, !llvm.loop !6262

; <label>:225:                                    ; preds = %217, %15
  %226 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6263
  %227 = getelementptr inbounds %struct._encap, %struct._encap* %226, i32 0, i32 2, !dbg !6265
  %228 = bitcast %union.anon.2* %227 to %struct._encap_ip*, !dbg !6265
  %229 = getelementptr inbounds %struct._encap_ip, %struct._encap_ip* %228, i32 0, i32 1, !dbg !6266
  %230 = load %struct._ip_address*, %struct._ip_address** %229, align 8, !dbg !6266
  %231 = icmp ne %struct._ip_address* %230, null, !dbg !6263
  br i1 %231, label %240, label %232, !dbg !6267

; <label>:232:                                    ; preds = %225
  %233 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6268
  %234 = getelementptr inbounds %struct._encap, %struct._encap* %233, i32 0, i32 1, !dbg !6270
  %235 = load i32, i32* %234, align 4, !dbg !6270
  %236 = or i32 %235, 1, !dbg !6271
  %237 = icmp ne i32 %236, 0, !dbg !6271
  br i1 %237, label %240, label %238, !dbg !6272

; <label>:238:                                    ; preds = %232
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.183, i32 0, i32 0)), !dbg !6273
  %239 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !6275
  br label %243, !dbg !6276

; <label>:240:                                    ; preds = %232, %225
  %241 = load i32, i32* %8, align 4, !dbg !6277
  %242 = load i32*, i32** %6, align 8, !dbg !6278
  store i32 %241, i32* %242, align 4, !dbg !6279
  store i32 0, i32* %4, align 4, !dbg !6280
  br label %306, !dbg !6280

; <label>:243:                                    ; preds = %238, %216, %197, %178, %163, %149, %102, %88, %44
  %244 = load i32, i32* %8, align 4, !dbg !6281
  %245 = load i32*, i32** %6, align 8, !dbg !6282
  store i32 %244, i32* %245, align 4, !dbg !6283
  %246 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6284
  %247 = getelementptr inbounds %struct._encap, %struct._encap* %246, i32 0, i32 2, !dbg !6286
  %248 = bitcast %union.anon.2* %247 to %struct._encap_ip6*, !dbg !6286
  %249 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %248, i32 0, i32 1, !dbg !6287
  %250 = load %struct._ip_address*, %struct._ip_address** %249, align 8, !dbg !6287
  %251 = icmp ne %struct._ip_address* %250, null, !dbg !6284
  br i1 %251, label %252, label %275, !dbg !6288

; <label>:252:                                    ; preds = %243
  %253 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6289
  %254 = getelementptr inbounds %struct._encap, %struct._encap* %253, i32 0, i32 2, !dbg !6293
  %255 = bitcast %union.anon.2* %254 to %struct._encap_ip6*, !dbg !6293
  %256 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %255, i32 0, i32 1, !dbg !6294
  %257 = load %struct._ip_address*, %struct._ip_address** %256, align 8, !dbg !6294
  %258 = icmp ne %struct._ip_address* %257, null, !dbg !6289
  br i1 %258, label %259, label %270, !dbg !6295

; <label>:259:                                    ; preds = %252
  %260 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6296
  %261 = getelementptr inbounds %struct._encap, %struct._encap* %260, i32 0, i32 2, !dbg !6299
  %262 = bitcast %union.anon.2* %261 to %struct._encap_ip6*, !dbg !6299
  %263 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %262, i32 0, i32 1, !dbg !6300
  %264 = load %struct._ip_address*, %struct._ip_address** %263, align 8, !dbg !6300
  %265 = bitcast %struct._ip_address* %264 to i8*, !dbg !6296
  call void @free(i8* %265) #9, !dbg !6301
  %266 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6302
  %267 = getelementptr inbounds %struct._encap, %struct._encap* %266, i32 0, i32 2, !dbg !6303
  %268 = bitcast %union.anon.2* %267 to %struct._encap_ip6*, !dbg !6303
  %269 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %268, i32 0, i32 1, !dbg !6304
  store %struct._ip_address* null, %struct._ip_address** %269, align 8, !dbg !6305
  br label %270, !dbg !6306

; <label>:270:                                    ; preds = %259, %252
  %271 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6307
  %272 = getelementptr inbounds %struct._encap, %struct._encap* %271, i32 0, i32 2, !dbg !6308
  %273 = bitcast %union.anon.2* %272 to %struct._encap_ip6*, !dbg !6308
  %274 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %273, i32 0, i32 1, !dbg !6309
  store %struct._ip_address* null, %struct._ip_address** %274, align 8, !dbg !6310
  br label %275, !dbg !6311

; <label>:275:                                    ; preds = %270, %243
  %276 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6312
  %277 = getelementptr inbounds %struct._encap, %struct._encap* %276, i32 0, i32 2, !dbg !6314
  %278 = bitcast %union.anon.2* %277 to %struct._encap_ip6*, !dbg !6314
  %279 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %278, i32 0, i32 2, !dbg !6315
  %280 = load %struct._ip_address*, %struct._ip_address** %279, align 8, !dbg !6315
  %281 = icmp ne %struct._ip_address* %280, null, !dbg !6312
  br i1 %281, label %282, label %305, !dbg !6316

; <label>:282:                                    ; preds = %275
  %283 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6317
  %284 = getelementptr inbounds %struct._encap, %struct._encap* %283, i32 0, i32 2, !dbg !6321
  %285 = bitcast %union.anon.2* %284 to %struct._encap_ip6*, !dbg !6321
  %286 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %285, i32 0, i32 2, !dbg !6322
  %287 = load %struct._ip_address*, %struct._ip_address** %286, align 8, !dbg !6322
  %288 = icmp ne %struct._ip_address* %287, null, !dbg !6317
  br i1 %288, label %289, label %300, !dbg !6323

; <label>:289:                                    ; preds = %282
  %290 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6324
  %291 = getelementptr inbounds %struct._encap, %struct._encap* %290, i32 0, i32 2, !dbg !6327
  %292 = bitcast %union.anon.2* %291 to %struct._encap_ip6*, !dbg !6327
  %293 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %292, i32 0, i32 2, !dbg !6328
  %294 = load %struct._ip_address*, %struct._ip_address** %293, align 8, !dbg !6328
  %295 = bitcast %struct._ip_address* %294 to i8*, !dbg !6324
  call void @free(i8* %295) #9, !dbg !6329
  %296 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6330
  %297 = getelementptr inbounds %struct._encap, %struct._encap* %296, i32 0, i32 2, !dbg !6331
  %298 = bitcast %union.anon.2* %297 to %struct._encap_ip6*, !dbg !6331
  %299 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %298, i32 0, i32 2, !dbg !6332
  store %struct._ip_address* null, %struct._ip_address** %299, align 8, !dbg !6333
  br label %300, !dbg !6334

; <label>:300:                                    ; preds = %289, %282
  %301 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6335
  %302 = getelementptr inbounds %struct._encap, %struct._encap* %301, i32 0, i32 2, !dbg !6336
  %303 = bitcast %union.anon.2* %302 to %struct._encap_ip6*, !dbg !6336
  %304 = getelementptr inbounds %struct._encap_ip6, %struct._encap_ip6* %303, i32 0, i32 2, !dbg !6337
  store %struct._ip_address* null, %struct._ip_address** %304, align 8, !dbg !6338
  br label %305, !dbg !6339

; <label>:305:                                    ; preds = %300, %275
  store i32 1, i32* %4, align 4, !dbg !6340
  br label %306, !dbg !6340

; <label>:306:                                    ; preds = %305, %240
  %307 = load i32, i32* %4, align 4, !dbg !6341
  ret i32 %307, !dbg !6341
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_encap_mpls(%struct._vector*, i32*, %struct._encap*) #0 !dbg !6342 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._encap*, align 8
  %8 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !6343, metadata !581), !dbg !6344
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !6345, metadata !581), !dbg !6346
  store %struct._encap* %2, %struct._encap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %7, metadata !6347, metadata !581), !dbg !6348
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6349, metadata !581), !dbg !6350
  %9 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6351
  %10 = getelementptr inbounds %struct._encap, %struct._encap* %9, i32 0, i32 0, !dbg !6352
  store i16 1, i16* %10, align 8, !dbg !6353
  %11 = load i32*, i32** %6, align 8, !dbg !6354
  %12 = load i32, i32* %11, align 4, !dbg !6356
  %13 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6357
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !6358
  %15 = load i32, i32* %14, align 4, !dbg !6358
  %16 = icmp uge i32 %12, %15, !dbg !6359
  br i1 %16, label %17, label %18, !dbg !6360

; <label>:17:                                     ; preds = %3
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.184, i32 0, i32 0)), !dbg !6361
  store i32 1, i32* %4, align 4, !dbg !6363
  br label %33, !dbg !6363

; <label>:18:                                     ; preds = %3
  %19 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6364
  %20 = load i32*, i32** %6, align 8, !dbg !6365
  %21 = load i32, i32* %20, align 4, !dbg !6366
  %22 = add i32 %21, 1, !dbg !6366
  store i32 %22, i32* %20, align 4, !dbg !6366
  %23 = zext i32 %21 to i64, !dbg !6367
  %24 = call i8* @strvec_slot(%struct._vector* %19, i64 %23), !dbg !6368
  store i8* %24, i8** %8, align 8, !dbg !6369
  %25 = load i8*, i8** %8, align 8, !dbg !6370
  %26 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6372
  %27 = getelementptr inbounds %struct._encap, %struct._encap* %26, i32 0, i32 2, !dbg !6373
  %28 = bitcast %union.anon.2* %27 to %struct._encap_mpls*, !dbg !6373
  %29 = call zeroext i1 @parse_mpls_address(i8* %25, %struct._encap_mpls* %28), !dbg !6374
  br i1 %29, label %30, label %32, !dbg !6375

; <label>:30:                                     ; preds = %18
  %31 = load i8*, i8** %8, align 8, !dbg !6376
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.185, i32 0, i32 0), i8* %31), !dbg !6378
  store i32 1, i32* %4, align 4, !dbg !6379
  br label %33, !dbg !6379

; <label>:32:                                     ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !6380
  br label %33, !dbg !6380

; <label>:33:                                     ; preds = %32, %30, %17
  %34 = load i32, i32* %4, align 4, !dbg !6381
  ret i32 %34, !dbg !6381
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_encap_ila(%struct._vector*, i32*, %struct._encap*) #0 !dbg !6382 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._encap*, align 8
  %8 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !6383, metadata !581), !dbg !6384
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !6385, metadata !581), !dbg !6386
  store %struct._encap* %2, %struct._encap** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._encap** %7, metadata !6387, metadata !581), !dbg !6388
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6389, metadata !581), !dbg !6390
  %9 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6391
  %10 = getelementptr inbounds %struct._encap, %struct._encap* %9, i32 0, i32 0, !dbg !6392
  store i16 3, i16* %10, align 8, !dbg !6393
  %11 = load i32*, i32** %6, align 8, !dbg !6394
  %12 = load i32, i32* %11, align 4, !dbg !6396
  %13 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6397
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !6398
  %15 = load i32, i32* %14, align 4, !dbg !6398
  %16 = icmp uge i32 %12, %15, !dbg !6399
  br i1 %16, label %17, label %18, !dbg !6400

; <label>:17:                                     ; preds = %3
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.186, i32 0, i32 0)), !dbg !6401
  store i32 1, i32* %4, align 4, !dbg !6403
  br label %34, !dbg !6403

; <label>:18:                                     ; preds = %3
  %19 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !6404
  %20 = load i32*, i32** %6, align 8, !dbg !6405
  %21 = load i32, i32* %20, align 4, !dbg !6406
  %22 = add i32 %21, 1, !dbg !6406
  store i32 %22, i32* %20, align 4, !dbg !6406
  %23 = zext i32 %21 to i64, !dbg !6407
  %24 = call i8* @strvec_slot(%struct._vector* %19, i64 %23), !dbg !6408
  store i8* %24, i8** %8, align 8, !dbg !6409
  %25 = load %struct._encap*, %struct._encap** %7, align 8, !dbg !6410
  %26 = getelementptr inbounds %struct._encap, %struct._encap* %25, i32 0, i32 2, !dbg !6412
  %27 = bitcast %union.anon.2* %26 to %struct._encap_ila*, !dbg !6412
  %28 = getelementptr inbounds %struct._encap_ila, %struct._encap_ila* %27, i32 0, i32 0, !dbg !6413
  %29 = load i8*, i8** %8, align 8, !dbg !6414
  %30 = call zeroext i1 @get_addr64(i64* %28, i8* %29), !dbg !6415
  br i1 %30, label %31, label %33, !dbg !6416

; <label>:31:                                     ; preds = %18
  %32 = load i8*, i8** %8, align 8, !dbg !6417
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.187, i32 0, i32 0), i8* %32), !dbg !6419
  store i32 1, i32* %4, align 4, !dbg !6420
  br label %34, !dbg !6420

; <label>:33:                                     ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !6421
  br label %34, !dbg !6421

; <label>:34:                                     ; preds = %33, %31, %17
  %35 = load i32, i32* %4, align 4, !dbg !6422
  ret i32 %35, !dbg !6422
}

declare zeroext i1 @get_u64(i64*, i8*, i64, i8*) #2

declare zeroext i1 @get_u16(i16*, i8*, i16 zeroext, i8*) #2

declare zeroext i1 @parse_mpls_address(i8*, %struct._encap_mpls*) #2

declare zeroext i1 @get_addr64(i64*, i8*) #2

declare zeroext i1 @string_equal(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!562, !563}
!llvm.ident = !{!564}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !228, globals: !560)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_iproute.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !12, !28, !53, !61, !81, !88, !104, !111, !163, !189, !195, !202, !212, !218}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwtunnel_encap_types", file: !4, line: 6, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/linux/lwtunnel.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "LWTUNNEL_ENCAP_NONE", value: 0)
!7 = !DIEnumerator(name: "LWTUNNEL_ENCAP_MPLS", value: 1)
!8 = !DIEnumerator(name: "LWTUNNEL_ENCAP_IP", value: 2)
!9 = !DIEnumerator(name: "LWTUNNEL_ENCAP_ILA", value: 3)
!10 = !DIEnumerator(name: "LWTUNNEL_ENCAP_IP6", value: 4)
!11 = !DIEnumerator(name: "__LWTUNNEL_ENCAP_MAX", value: 5)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 198, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/linux/rtnetlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!15 = !DIEnumerator(name: "RTN_UNSPEC", value: 0)
!16 = !DIEnumerator(name: "RTN_UNICAST", value: 1)
!17 = !DIEnumerator(name: "RTN_LOCAL", value: 2)
!18 = !DIEnumerator(name: "RTN_BROADCAST", value: 3)
!19 = !DIEnumerator(name: "RTN_ANYCAST", value: 4)
!20 = !DIEnumerator(name: "RTN_MULTICAST", value: 5)
!21 = !DIEnumerator(name: "RTN_BLACKHOLE", value: 6)
!22 = !DIEnumerator(name: "RTN_UNREACHABLE", value: 7)
!23 = !DIEnumerator(name: "RTN_PROHIBIT", value: 8)
!24 = !DIEnumerator(name: "RTN_THROW", value: 9)
!25 = !DIEnumerator(name: "RTN_NAT", value: 10)
!26 = !DIEnumerator(name: "RTN_XRESOLVE", value: 11)
!27 = !DIEnumerator(name: "__RTN_MAX", value: 12)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ip_route", file: !29, line: 134, size: 32, align: 32, elements: !30)
!29 = !DIFile(filename: "./../include/vrrp_iproute.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!31 = !DIEnumerator(name: "IPROUTE_DSFIELD", value: 0)
!32 = !DIEnumerator(name: "IPROUTE_TYPE", value: 1)
!33 = !DIEnumerator(name: "IPROUTE_PROTOCOL", value: 2)
!34 = !DIEnumerator(name: "IPROUTE_SCOPE", value: 3)
!35 = !DIEnumerator(name: "IPROUTE_METRIC", value: 4)
!36 = !DIEnumerator(name: "IPROUTE_WEIGHT", value: 5)
!37 = !DIEnumerator(name: "IPROUTE_EXPIRES", value: 6)
!38 = !DIEnumerator(name: "IPROUTE_MTU", value: 7)
!39 = !DIEnumerator(name: "IPROUTE_HOPLIMIT", value: 8)
!40 = !DIEnumerator(name: "IPROUTE_ADVMSS", value: 9)
!41 = !DIEnumerator(name: "IPROUTE_RTT", value: 10)
!42 = !DIEnumerator(name: "IPROUTE_RTTVAR", value: 11)
!43 = !DIEnumerator(name: "IPROUTE_REORDERING", value: 12)
!44 = !DIEnumerator(name: "IPROUTE_WINDOW", value: 13)
!45 = !DIEnumerator(name: "IPROUTE_CWND", value: 14)
!46 = !DIEnumerator(name: "IPROUTE_SSTHRESH", value: 15)
!47 = !DIEnumerator(name: "IPROUTE_RTO_MIN", value: 16)
!48 = !DIEnumerator(name: "IPROUTE_INITCWND", value: 17)
!49 = !DIEnumerator(name: "IPROUTE_INITRWND", value: 18)
!50 = !DIEnumerator(name: "IPROUTE_QUICKACK", value: 19)
!51 = !DIEnumerator(name: "IPROUTE_PREF", value: 20)
!52 = !DIEnumerator(name: "IPROUTE_FASTOPEN_NO_COOKIE", value: 21)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rt_class_t", file: !13, line: 277, size: 32, align: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DIEnumerator(name: "RT_TABLE_UNSPEC", value: 0)
!56 = !DIEnumerator(name: "RT_TABLE_COMPAT", value: 252)
!57 = !DIEnumerator(name: "RT_TABLE_DEFAULT", value: 253)
!58 = !DIEnumerator(name: "RT_TABLE_MAIN", value: 254)
!59 = !DIEnumerator(name: "RT_TABLE_LOCAL", value: 255)
!60 = !DIEnumerator(name: "RT_TABLE_MAX", value: -1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 382, size: 32, align: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!63 = !DIEnumerator(name: "RTAX_UNSPEC", value: 0)
!64 = !DIEnumerator(name: "RTAX_LOCK", value: 1)
!65 = !DIEnumerator(name: "RTAX_MTU", value: 2)
!66 = !DIEnumerator(name: "RTAX_WINDOW", value: 3)
!67 = !DIEnumerator(name: "RTAX_RTT", value: 4)
!68 = !DIEnumerator(name: "RTAX_RTTVAR", value: 5)
!69 = !DIEnumerator(name: "RTAX_SSTHRESH", value: 6)
!70 = !DIEnumerator(name: "RTAX_CWND", value: 7)
!71 = !DIEnumerator(name: "RTAX_ADVMSS", value: 8)
!72 = !DIEnumerator(name: "RTAX_REORDERING", value: 9)
!73 = !DIEnumerator(name: "RTAX_HOPLIMIT", value: 10)
!74 = !DIEnumerator(name: "RTAX_INITCWND", value: 11)
!75 = !DIEnumerator(name: "RTAX_FEATURES", value: 12)
!76 = !DIEnumerator(name: "RTAX_RTO_MIN", value: 13)
!77 = !DIEnumerator(name: "RTAX_INITRWND", value: 14)
!78 = !DIEnumerator(name: "RTAX_QUICKACK", value: 15)
!79 = !DIEnumerator(name: "RTAX_CC_ALGO", value: 16)
!80 = !DIEnumerator(name: "__RTAX_MAX", value: 17)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rt_scope_t", file: !13, line: 258, size: 32, align: 32, elements: !82)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "RT_SCOPE_UNIVERSE", value: 0)
!84 = !DIEnumerator(name: "RT_SCOPE_SITE", value: 200)
!85 = !DIEnumerator(name: "RT_SCOPE_LINK", value: 253)
!86 = !DIEnumerator(name: "RT_SCOPE_HOST", value: 254)
!87 = !DIEnumerator(name: "RT_SCOPE_NOWHERE", value: 255)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 44, size: 32, align: 32, elements: !90)
!89 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!91 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!92 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!93 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!94 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!95 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!96 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!97 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!98 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!99 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!100 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!101 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!102 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!103 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !105, line: 142, size: 32, align: 32, elements: !106)
!105 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!108 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!109 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!110 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 23, size: 32, align: 32, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!113 = !DIEnumerator(name: "RTM_BASE", value: 16)
!114 = !DIEnumerator(name: "RTM_NEWLINK", value: 16)
!115 = !DIEnumerator(name: "RTM_DELLINK", value: 17)
!116 = !DIEnumerator(name: "RTM_GETLINK", value: 18)
!117 = !DIEnumerator(name: "RTM_SETLINK", value: 19)
!118 = !DIEnumerator(name: "RTM_NEWADDR", value: 20)
!119 = !DIEnumerator(name: "RTM_DELADDR", value: 21)
!120 = !DIEnumerator(name: "RTM_GETADDR", value: 22)
!121 = !DIEnumerator(name: "RTM_NEWROUTE", value: 24)
!122 = !DIEnumerator(name: "RTM_DELROUTE", value: 25)
!123 = !DIEnumerator(name: "RTM_GETROUTE", value: 26)
!124 = !DIEnumerator(name: "RTM_NEWNEIGH", value: 28)
!125 = !DIEnumerator(name: "RTM_DELNEIGH", value: 29)
!126 = !DIEnumerator(name: "RTM_GETNEIGH", value: 30)
!127 = !DIEnumerator(name: "RTM_NEWRULE", value: 32)
!128 = !DIEnumerator(name: "RTM_DELRULE", value: 33)
!129 = !DIEnumerator(name: "RTM_GETRULE", value: 34)
!130 = !DIEnumerator(name: "RTM_NEWQDISC", value: 36)
!131 = !DIEnumerator(name: "RTM_DELQDISC", value: 37)
!132 = !DIEnumerator(name: "RTM_GETQDISC", value: 38)
!133 = !DIEnumerator(name: "RTM_NEWTCLASS", value: 40)
!134 = !DIEnumerator(name: "RTM_DELTCLASS", value: 41)
!135 = !DIEnumerator(name: "RTM_GETTCLASS", value: 42)
!136 = !DIEnumerator(name: "RTM_NEWTFILTER", value: 44)
!137 = !DIEnumerator(name: "RTM_DELTFILTER", value: 45)
!138 = !DIEnumerator(name: "RTM_GETTFILTER", value: 46)
!139 = !DIEnumerator(name: "RTM_NEWACTION", value: 48)
!140 = !DIEnumerator(name: "RTM_DELACTION", value: 49)
!141 = !DIEnumerator(name: "RTM_GETACTION", value: 50)
!142 = !DIEnumerator(name: "RTM_NEWPREFIX", value: 52)
!143 = !DIEnumerator(name: "RTM_GETMULTICAST", value: 58)
!144 = !DIEnumerator(name: "RTM_GETANYCAST", value: 62)
!145 = !DIEnumerator(name: "RTM_NEWNEIGHTBL", value: 64)
!146 = !DIEnumerator(name: "RTM_GETNEIGHTBL", value: 66)
!147 = !DIEnumerator(name: "RTM_SETNEIGHTBL", value: 67)
!148 = !DIEnumerator(name: "RTM_NEWNDUSEROPT", value: 68)
!149 = !DIEnumerator(name: "RTM_NEWADDRLABEL", value: 72)
!150 = !DIEnumerator(name: "RTM_DELADDRLABEL", value: 73)
!151 = !DIEnumerator(name: "RTM_GETADDRLABEL", value: 74)
!152 = !DIEnumerator(name: "RTM_GETDCB", value: 78)
!153 = !DIEnumerator(name: "RTM_SETDCB", value: 79)
!154 = !DIEnumerator(name: "RTM_NEWNETCONF", value: 80)
!155 = !DIEnumerator(name: "RTM_GETNETCONF", value: 82)
!156 = !DIEnumerator(name: "RTM_NEWMDB", value: 84)
!157 = !DIEnumerator(name: "RTM_DELMDB", value: 85)
!158 = !DIEnumerator(name: "RTM_GETMDB", value: 86)
!159 = !DIEnumerator(name: "RTM_NEWNSID", value: 88)
!160 = !DIEnumerator(name: "RTM_DELNSID", value: 89)
!161 = !DIEnumerator(name: "RTM_GETNSID", value: 90)
!162 = !DIEnumerator(name: "__RTM_MAX", value: 91)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtattr_type_t", file: !13, line: 290, size: 32, align: 32, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!165 = !DIEnumerator(name: "RTA_UNSPEC", value: 0)
!166 = !DIEnumerator(name: "RTA_DST", value: 1)
!167 = !DIEnumerator(name: "RTA_SRC", value: 2)
!168 = !DIEnumerator(name: "RTA_IIF", value: 3)
!169 = !DIEnumerator(name: "RTA_OIF", value: 4)
!170 = !DIEnumerator(name: "RTA_GATEWAY", value: 5)
!171 = !DIEnumerator(name: "RTA_PRIORITY", value: 6)
!172 = !DIEnumerator(name: "RTA_PREFSRC", value: 7)
!173 = !DIEnumerator(name: "RTA_METRICS", value: 8)
!174 = !DIEnumerator(name: "RTA_MULTIPATH", value: 9)
!175 = !DIEnumerator(name: "RTA_PROTOINFO", value: 10)
!176 = !DIEnumerator(name: "RTA_FLOW", value: 11)
!177 = !DIEnumerator(name: "RTA_CACHEINFO", value: 12)
!178 = !DIEnumerator(name: "RTA_SESSION", value: 13)
!179 = !DIEnumerator(name: "RTA_MP_ALGO", value: 14)
!180 = !DIEnumerator(name: "RTA_TABLE", value: 15)
!181 = !DIEnumerator(name: "RTA_MARK", value: 16)
!182 = !DIEnumerator(name: "RTA_MFC_STATS", value: 17)
!183 = !DIEnumerator(name: "RTA_VIA", value: 18)
!184 = !DIEnumerator(name: "RTA_NEWDST", value: 19)
!185 = !DIEnumerator(name: "RTA_PREF", value: 20)
!186 = !DIEnumerator(name: "RTA_ENCAP_TYPE", value: 21)
!187 = !DIEnumerator(name: "RTA_ENCAP", value: 22)
!188 = !DIEnumerator(name: "__RTA_MAX", value: 23)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !190, line: 21, size: 32, align: 32, elements: !191)
!190 = !DIFile(filename: "/usr/include/linux/mpls_iptunnel.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "MPLS_IPTUNNEL_UNSPEC", value: 0)
!193 = !DIEnumerator(name: "MPLS_IPTUNNEL_DST", value: 1)
!194 = !DIEnumerator(name: "__MPLS_IPTUNNEL_MAX", value: 2)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iproute_encap", file: !29, line: 56, size: 32, align: 32, elements: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DIEnumerator(name: "IPROUTE_ENCAP_ID", value: 0)
!198 = !DIEnumerator(name: "IPROUTE_ENCAP_DSFIELD", value: 1)
!199 = !DIEnumerator(name: "IPROUTE_ENCAP_HOPLIMIT", value: 2)
!200 = !DIEnumerator(name: "IPROUTE_ENCAP_TTL", value: 2)
!201 = !DIEnumerator(name: "IPROUTE_ENCAP_FLAGS", value: 3)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwtunnel_ip_t", file: !4, line: 17, size: 32, align: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211}
!204 = !DIEnumerator(name: "LWTUNNEL_IP_UNSPEC", value: 0)
!205 = !DIEnumerator(name: "LWTUNNEL_IP_ID", value: 1)
!206 = !DIEnumerator(name: "LWTUNNEL_IP_DST", value: 2)
!207 = !DIEnumerator(name: "LWTUNNEL_IP_SRC", value: 3)
!208 = !DIEnumerator(name: "LWTUNNEL_IP_TTL", value: 4)
!209 = !DIEnumerator(name: "LWTUNNEL_IP_TOS", value: 5)
!210 = !DIEnumerator(name: "LWTUNNEL_IP_FLAGS", value: 6)
!211 = !DIEnumerator(name: "__LWTUNNEL_IP_MAX", value: 7)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 6, size: 32, align: 32, elements: !214)
!213 = !DIFile(filename: "/usr/include/linux/ila.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "ILA_ATTR_UNSPEC", value: 0)
!216 = !DIEnumerator(name: "ILA_ATTR_LOCATOR", value: 1)
!217 = !DIEnumerator(name: "__ILA_ATTR_MAX", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwtunnel_ip6_t", file: !4, line: 30, size: 32, align: 32, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227}
!220 = !DIEnumerator(name: "LWTUNNEL_IP6_UNSPEC", value: 0)
!221 = !DIEnumerator(name: "LWTUNNEL_IP6_ID", value: 1)
!222 = !DIEnumerator(name: "LWTUNNEL_IP6_DST", value: 2)
!223 = !DIEnumerator(name: "LWTUNNEL_IP6_SRC", value: 3)
!224 = !DIEnumerator(name: "LWTUNNEL_IP6_HOPLIMIT", value: 4)
!225 = !DIEnumerator(name: "LWTUNNEL_IP6_TC", value: 5)
!226 = !DIEnumerator(name: "LWTUNNEL_IP6_FLAGS", value: 6)
!227 = !DIEnumerator(name: "__LWTUNNEL_IP6_MAX", value: 7)
!228 = !{!229, !230, !231, !234, !389, !321, !251, !553, !281}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!230 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !232, line: 216, baseType: !233)
!232 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!233 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_route_t", file: !29, line: 239, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_route", file: !29, line: 182, size: 1664, align: 64, elements: !237)
!237 = !{!238, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !547, !548, !549, !550, !551, !552}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !236, file: !29, line: 183, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !241, line: 73, baseType: !242)
!241 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !241, line: 41, size: 704, align: 64, elements: !243)
!243 = !{!244, !258, !293, !435, !436, !437, !438, !439, !444, !445, !463, !464, !465}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !242, file: !241, line: 42, baseType: !245, size: 64, align: 32)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !246, line: 7, size: 64, align: 32, elements: !247)
!246 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!247 = !{!248, !252, !253, !254, !255}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !245, file: !246, line: 8, baseType: !249, size: 8, align: 8)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !250, line: 20, baseType: !251)
!250 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!251 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !245, file: !246, line: 9, baseType: !249, size: 8, align: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !245, file: !246, line: 10, baseType: !249, size: 8, align: 8, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !245, file: !246, line: 11, baseType: !249, size: 8, align: 8, offset: 24)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !245, file: !246, line: 12, baseType: !256, size: 32, align: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !250, line: 26, baseType: !257)
!257 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !242, file: !241, line: 50, baseType: !259, size: 128, align: 32, offset: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 44, size: 128, align: 32, elements: !260)
!260 = !{!261, !273}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !259, file: !241, line: 48, baseType: !262, size: 64, align: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !241, line: 45, size: 64, align: 32, elements: !263)
!263 = !{!264, !272}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !262, file: !241, line: 46, baseType: !265, size: 32, align: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !266, line: 31, size: 32, align: 32, elements: !267)
!266 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !265, file: !266, line: 33, baseType: !269, size: 32, align: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !266, line: 30, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !271, line: 51, baseType: !257)
!271 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !262, file: !241, line: 47, baseType: !265, size: 32, align: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !259, file: !241, line: 49, baseType: !274, size: 128, align: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !266, line: 211, size: 128, align: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !274, file: !266, line: 220, baseType: !277, size: 128, align: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !266, line: 213, size: 128, align: 32, elements: !278)
!278 = !{!279, !284, !289}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !277, file: !266, line: 215, baseType: !280, size: 128, align: 8)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, align: 8, elements: !282)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !271, line: 48, baseType: !251)
!282 = !{!283}
!283 = !DISubrange(count: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !277, file: !266, line: 217, baseType: !285, size: 128, align: 16)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 128, align: 16, elements: !287)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !271, line: 49, baseType: !230)
!287 = !{!288}
!288 = !DISubrange(count: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !277, file: !266, line: 218, baseType: !290, size: 128, align: 32)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 128, align: 32, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !242, file: !241, line: 52, baseType: !294, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !105, line: 111, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !105, line: 76, size: 1792, align: 64, elements: !297)
!297 = !{!298, !301, !303, !304, !305, !306, !308, !309, !310, !318, !319, !320, !322, !323, !324, !326, !327, !328, !329, !351, !352, !353, !354, !355, !356, !357, !358}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !296, file: !105, line: 77, baseType: !299, size: 128, align: 8)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 128, align: 8, elements: !282)
!300 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !296, file: !105, line: 78, baseType: !302, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !105, line: 62, baseType: !270)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !296, file: !105, line: 79, baseType: !265, size: 32, align: 32, offset: 160)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !296, file: !105, line: 80, baseType: !274, size: 128, align: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !296, file: !105, line: 81, baseType: !257, size: 32, align: 32, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !296, file: !105, line: 82, baseType: !307, size: 8, align: 8, offset: 352)
!307 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !296, file: !105, line: 83, baseType: !270, size: 32, align: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !296, file: !105, line: 84, baseType: !230, size: 16, align: 16, offset: 416)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !296, file: !105, line: 85, baseType: !311, size: 256, align: 8, offset: 432)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 256, align: 8, elements: !316)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !313, line: 33, baseType: !314)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !315, line: 30, baseType: !251)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!316 = !{!317}
!317 = !DISubrange(count: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !296, file: !105, line: 86, baseType: !311, size: 256, align: 8, offset: 688)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !296, file: !105, line: 87, baseType: !231, size: 64, align: 64, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !296, file: !105, line: 88, baseType: !321, size: 32, align: 32, offset: 1024)
!321 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !296, file: !105, line: 90, baseType: !307, size: 8, align: 8, offset: 1056)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !296, file: !105, line: 91, baseType: !302, size: 32, align: 32, offset: 1088)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !296, file: !105, line: 92, baseType: !325, size: 64, align: 64, offset: 1152)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !296, file: !105, line: 94, baseType: !302, size: 32, align: 32, offset: 1216)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !296, file: !105, line: 96, baseType: !325, size: 64, align: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !296, file: !105, line: 97, baseType: !307, size: 8, align: 8, offset: 1344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !296, file: !105, line: 100, baseType: !330, size: 64, align: 64, offset: 1408)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !105, line: 73, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !105, line: 65, size: 704, align: 64, elements: !333)
!333 = !{!334, !345, !346, !347, !348, !349, !350}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !332, file: !105, line: 66, baseType: !335, size: 128, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !336, line: 31, baseType: !337)
!336 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !338, line: 30, size: 128, align: 64, elements: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!339 = !{!340, !343}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !337, file: !338, line: 32, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !315, line: 139, baseType: !342)
!342 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !337, file: !338, line: 33, baseType: !344, size: 64, align: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !315, line: 141, baseType: !342)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !332, file: !105, line: 67, baseType: !307, size: 8, align: 8, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !332, file: !105, line: 68, baseType: !335, size: 128, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !332, file: !105, line: 69, baseType: !307, size: 8, align: 8, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !332, file: !105, line: 70, baseType: !335, size: 128, align: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !332, file: !105, line: 71, baseType: !335, size: 128, align: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !332, file: !105, line: 72, baseType: !321, size: 32, align: 32, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !296, file: !105, line: 101, baseType: !307, size: 8, align: 8, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !296, file: !105, line: 102, baseType: !321, size: 32, align: 32, offset: 1504)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !296, file: !105, line: 103, baseType: !270, size: 32, align: 32, offset: 1536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !296, file: !105, line: 104, baseType: !270, size: 32, align: 32, offset: 1568)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !296, file: !105, line: 105, baseType: !270, size: 32, align: 32, offset: 1600)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !296, file: !105, line: 107, baseType: !257, size: 32, align: 32, offset: 1632)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !296, file: !105, line: 109, baseType: !307, size: 8, align: 8, offset: 1664)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !296, file: !105, line: 110, baseType: !359, size: 64, align: 64, offset: 1728)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !360, line: 31, baseType: !361)
!360 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !360, line: 39, size: 320, align: 64, elements: !363)
!363 = !{!364, !371, !372, !373, !377}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !362, file: !360, line: 40, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !360, line: 33, size: 192, align: 64, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !360, line: 34, baseType: !365, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !366, file: !360, line: 35, baseType: !365, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !366, file: !360, line: 36, baseType: !229, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !362, file: !360, line: 41, baseType: !365, size: 64, align: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !362, file: !360, line: 42, baseType: !257, size: 32, align: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !362, file: !360, line: 43, baseType: !374, size: 64, align: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !229}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !362, file: !360, line: 44, baseType: !378, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !229}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !383, line: 48, baseType: !384)
!383 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !385, line: 241, size: 1728, align: 64, elements: !386)
!385 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!386 = !{!387, !388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !408, !409, !410, !411, !413, !414, !416, !420, !423, !425, !426, !427, !428, !429, !430, !431}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !384, file: !385, line: 242, baseType: !321, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !384, file: !385, line: 247, baseType: !389, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !384, file: !385, line: 248, baseType: !389, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !384, file: !385, line: 249, baseType: !389, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !384, file: !385, line: 250, baseType: !389, size: 64, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !384, file: !385, line: 251, baseType: !389, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !384, file: !385, line: 252, baseType: !389, size: 64, align: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !384, file: !385, line: 253, baseType: !389, size: 64, align: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !384, file: !385, line: 254, baseType: !389, size: 64, align: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !384, file: !385, line: 256, baseType: !389, size: 64, align: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !384, file: !385, line: 257, baseType: !389, size: 64, align: 64, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !384, file: !385, line: 258, baseType: !389, size: 64, align: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !384, file: !385, line: 260, baseType: !401, size: 64, align: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !385, line: 156, size: 192, align: 64, elements: !403)
!403 = !{!404, !405, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !402, file: !385, line: 157, baseType: !401, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !402, file: !385, line: 158, baseType: !406, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !402, file: !385, line: 162, baseType: !321, size: 32, align: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !384, file: !385, line: 262, baseType: !406, size: 64, align: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !384, file: !385, line: 264, baseType: !321, size: 32, align: 32, offset: 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !384, file: !385, line: 268, baseType: !321, size: 32, align: 32, offset: 928)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !384, file: !385, line: 270, baseType: !412, size: 64, align: 64, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !315, line: 131, baseType: !342)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !384, file: !385, line: 274, baseType: !230, size: 16, align: 16, offset: 1024)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !384, file: !385, line: 275, baseType: !415, size: 8, align: 8, offset: 1040)
!415 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !384, file: !385, line: 276, baseType: !417, size: 8, align: 8, offset: 1048)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 8, align: 8, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 1)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !384, file: !385, line: 280, baseType: !421, size: 64, align: 64, offset: 1088)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !385, line: 150, baseType: null)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !384, file: !385, line: 289, baseType: !424, size: 64, align: 64, offset: 1152)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !315, line: 132, baseType: !342)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !384, file: !385, line: 297, baseType: !229, size: 64, align: 64, offset: 1216)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !384, file: !385, line: 298, baseType: !229, size: 64, align: 64, offset: 1280)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !384, file: !385, line: 299, baseType: !229, size: 64, align: 64, offset: 1344)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !384, file: !385, line: 300, baseType: !229, size: 64, align: 64, offset: 1408)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !384, file: !385, line: 302, baseType: !231, size: 64, align: 64, offset: 1472)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !384, file: !385, line: 303, baseType: !321, size: 32, align: 32, offset: 1536)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !384, file: !385, line: 305, baseType: !432, size: 160, align: 8, offset: 1568)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 160, align: 8, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 20)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !242, file: !241, line: 53, baseType: !389, size: 64, align: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !241, line: 55, baseType: !270, size: 32, align: 32, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !242, file: !241, line: 56, baseType: !270, size: 32, align: 32, offset: 352)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !242, file: !241, line: 61, baseType: !307, size: 8, align: 8, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !242, file: !241, line: 65, baseType: !440, size: 128, align: 32, offset: 416)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 62, size: 128, align: 32, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !440, file: !241, line: 63, baseType: !265, size: 32, align: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !440, file: !241, line: 64, baseType: !274, size: 128, align: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !242, file: !241, line: 66, baseType: !307, size: 8, align: 8, offset: 544)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !242, file: !241, line: 67, baseType: !446, size: 64, align: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !448, line: 39, baseType: !449)
!448 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !448, line: 35, size: 192, align: 64, elements: !450)
!450 = !{!451, !452, !462}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !449, file: !448, line: 36, baseType: !389, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !449, file: !448, line: 37, baseType: !453, size: 64, align: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !455, line: 34, baseType: !456)
!455 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !455, line: 30, size: 128, align: 64, elements: !457)
!457 = !{!458, !459, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !456, file: !455, line: 31, baseType: !257, size: 32, align: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !456, file: !455, line: 32, baseType: !257, size: 32, align: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !456, file: !455, line: 33, baseType: !461, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !449, file: !448, line: 38, baseType: !359, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !242, file: !241, line: 69, baseType: !307, size: 8, align: 8, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !242, file: !241, line: 70, baseType: !307, size: 8, align: 8, offset: 648)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !242, file: !241, line: 72, baseType: !307, size: 8, align: 8, offset: 656)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !236, file: !29, line: 184, baseType: !239, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pref_src", scope: !236, file: !29, line: 185, baseType: !239, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !236, file: !29, line: 186, baseType: !281, size: 8, align: 8, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !236, file: !29, line: 187, baseType: !281, size: 8, align: 8, offset: 200)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !236, file: !29, line: 188, baseType: !270, size: 32, align: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !236, file: !29, line: 189, baseType: !281, size: 8, align: 8, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !236, file: !29, line: 190, baseType: !281, size: 8, align: 8, offset: 264)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "metric", scope: !236, file: !29, line: 191, baseType: !270, size: 32, align: 32, offset: 288)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !236, file: !29, line: 192, baseType: !239, size: 64, align: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "oif", scope: !236, file: !29, line: 193, baseType: !294, size: 64, align: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !29, line: 194, baseType: !270, size: 32, align: 32, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !236, file: !29, line: 195, baseType: !270, size: 32, align: 32, offset: 480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "quickack", scope: !236, file: !29, line: 197, baseType: !307, size: 8, align: 8, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !236, file: !29, line: 202, baseType: !270, size: 32, align: 32, offset: 544)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !236, file: !29, line: 203, baseType: !270, size: 32, align: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !236, file: !29, line: 204, baseType: !281, size: 8, align: 8, offset: 608)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "advmss", scope: !236, file: !29, line: 205, baseType: !270, size: 32, align: 32, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rtt", scope: !236, file: !29, line: 209, baseType: !270, size: 32, align: 32, offset: 672)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rttvar", scope: !236, file: !29, line: 210, baseType: !270, size: 32, align: 32, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reordering", scope: !236, file: !29, line: 211, baseType: !270, size: 32, align: 32, offset: 736)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !236, file: !29, line: 212, baseType: !270, size: 32, align: 32, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !236, file: !29, line: 213, baseType: !270, size: 32, align: 32, offset: 800)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !236, file: !29, line: 214, baseType: !270, size: 32, align: 32, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rto_min", scope: !236, file: !29, line: 215, baseType: !270, size: 32, align: 32, offset: 864)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "initcwnd", scope: !236, file: !29, line: 216, baseType: !270, size: 32, align: 32, offset: 896)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "initrwnd", scope: !236, file: !29, line: 217, baseType: !270, size: 32, align: 32, offset: 928)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "congctl", scope: !236, file: !29, line: 219, baseType: !389, size: 64, align: 64, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pref", scope: !236, file: !29, line: 222, baseType: !281, size: 8, align: 8, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !29, line: 227, baseType: !281, size: 8, align: 8, offset: 1032)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !236, file: !29, line: 229, baseType: !270, size: 32, align: 32, offset: 1056)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "encap", scope: !236, file: !29, line: 231, baseType: !497, size: 320, align: 64, offset: 1088)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_t", file: !29, line: 116, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap", file: !29, line: 103, size: 320, align: 64, elements: !499)
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !29, line: 104, baseType: !286, size: 16, align: 16)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !29, line: 105, baseType: !270, size: 32, align: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !29, line: 106, baseType: !503, size: 256, align: 64, offset: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !29, line: 106, size: 256, align: 64, elements: !504)
!504 = !{!505, !521, !532, !537}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mpls", scope: !503, file: !29, line: 108, baseType: !506, size: 128, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_mpls_t", file: !29, line: 76, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_mpls", file: !29, line: 73, size: 128, align: 64, elements: !508)
!508 = !{!509, !520}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !507, file: !29, line: 74, baseType: !510, size: 64, align: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpls_labels", file: !29, line: 71, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, align: 32, elements: !518)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpls_label", file: !513, line: 21, size: 32, align: 32, elements: !514)
!513 = !DIFile(filename: "/usr/include/linux/mpls.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !512, file: !513, line: 22, baseType: !516, size: 32, align: 32)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !517, line: 30, baseType: !256)
!517 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!518 = !{!519}
!519 = !DISubrange(count: 2)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "num_labels", scope: !507, file: !29, line: 75, baseType: !231, size: 64, align: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !503, file: !29, line: 110, baseType: !522, size: 256, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip_t", file: !29, line: 86, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip", file: !29, line: 79, size: 256, align: 64, elements: !524)
!524 = !{!525, !527, !528, !529, !530, !531}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !523, file: !29, line: 80, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !271, line: 55, baseType: !233)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !523, file: !29, line: 81, baseType: !239, size: 64, align: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !523, file: !29, line: 82, baseType: !239, size: 64, align: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !523, file: !29, line: 83, baseType: !281, size: 8, align: 8, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !29, line: 84, baseType: !286, size: 16, align: 16, offset: 208)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !523, file: !29, line: 85, baseType: !281, size: 8, align: 8, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ila", scope: !503, file: !29, line: 112, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ila_t", file: !29, line: 91, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ila", file: !29, line: 89, size: 64, align: 64, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "locator", scope: !534, file: !29, line: 90, baseType: !526, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !503, file: !29, line: 114, baseType: !538, size: 256, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip6_t", file: !29, line: 101, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip6", file: !29, line: 94, size: 256, align: 64, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !539, file: !29, line: 95, baseType: !526, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !539, file: !29, line: 96, baseType: !239, size: 64, align: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !539, file: !29, line: 97, baseType: !239, size: 64, align: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !539, file: !29, line: 98, baseType: !281, size: 8, align: 8, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !29, line: 99, baseType: !286, size: 16, align: 16, offset: 208)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !539, file: !29, line: 100, baseType: !281, size: 8, align: 8, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nhs", scope: !236, file: !29, line: 233, baseType: !359, size: 64, align: 64, offset: 1408)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !236, file: !29, line: 234, baseType: !270, size: 32, align: 32, offset: 1472)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !236, file: !29, line: 235, baseType: !307, size: 8, align: 8, offset: 1504)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !236, file: !29, line: 236, baseType: !446, size: 64, align: 64, offset: 1536)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !236, file: !29, line: 237, baseType: !307, size: 8, align: 8, offset: 1600)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "configured_ifindex", scope: !236, file: !29, line: 238, baseType: !270, size: 32, align: 32, offset: 1632)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtnexthop", file: !13, line: 331, size: 64, align: 32, elements: !555)
!555 = !{!556, !557, !558, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rtnh_len", scope: !554, file: !13, line: 332, baseType: !230, size: 16, align: 16)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rtnh_flags", scope: !554, file: !13, line: 333, baseType: !251, size: 8, align: 8, offset: 16)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rtnh_hops", scope: !554, file: !13, line: 334, baseType: !251, size: 8, align: 8, offset: 24)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rtnh_ifindex", scope: !554, file: !13, line: 335, baseType: !321, size: 32, align: 32, offset: 32)
!560 = !{!561}
!561 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !105, line: 150, type: !359, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!562 = !{i32 2, !"Dwarf Version", i32 4}
!563 = !{i32 2, !"Debug Info Version", i32 3}
!564 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!565 = distinct !DISubprogram(name: "add_addr2req", scope: !566, file: !566, line: 59, type: !567, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!566 = !DIFile(filename: "vrrp_iproute.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!567 = !DISubroutineType(types: !568)
!568 = !{!230, !569, !231, !230, !239}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsghdr", file: !571, line: 42, size: 128, align: 32, elements: !572)
!571 = !DIFile(filename: "/usr/include/linux/netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!572 = !{!573, !574, !576, !577, !578}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_len", scope: !570, file: !571, line: 43, baseType: !256, size: 32, align: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !570, file: !571, line: 44, baseType: !575, size: 16, align: 16, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !250, line: 23, baseType: !230)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_flags", scope: !570, file: !571, line: 45, baseType: !575, size: 16, align: 16, offset: 48)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_seq", scope: !570, file: !571, line: 46, baseType: !256, size: 32, align: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_pid", scope: !570, file: !571, line: 47, baseType: !256, size: 32, align: 32, offset: 96)
!579 = !{}
!580 = !DILocalVariable(name: "n", arg: 1, scope: !565, file: !566, line: 59, type: !569)
!581 = !DIExpression()
!582 = !DILocation(line: 59, column: 31, scope: !565)
!583 = !DILocalVariable(name: "maxlen", arg: 2, scope: !565, file: !566, line: 59, type: !231)
!584 = !DILocation(line: 59, column: 41, scope: !565)
!585 = !DILocalVariable(name: "type", arg: 3, scope: !565, file: !566, line: 59, type: !230)
!586 = !DILocation(line: 59, column: 64, scope: !565)
!587 = !DILocalVariable(name: "ip_address", arg: 4, scope: !565, file: !566, line: 59, type: !239)
!588 = !DILocation(line: 59, column: 84, scope: !565)
!589 = !DILocalVariable(name: "addr", scope: !565, file: !566, line: 61, type: !229)
!590 = !DILocation(line: 61, column: 8, scope: !565)
!591 = !DILocalVariable(name: "alen", scope: !565, file: !566, line: 62, type: !231)
!592 = !DILocation(line: 62, column: 9, scope: !565)
!593 = !DILocation(line: 64, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !565, file: !566, line: 64, column: 6)
!595 = !DILocation(line: 64, column: 6, scope: !565)
!596 = !DILocation(line: 65, column: 3, scope: !594)
!597 = !DILocation(line: 67, column: 8, scope: !598)
!598 = distinct !DILexicalBlock(scope: !565, file: !566, line: 67, column: 6)
!599 = !DILocation(line: 67, column: 21, scope: !598)
!600 = !DILocation(line: 67, column: 25, scope: !598)
!601 = !DILocation(line: 67, column: 7, scope: !598)
!602 = !DILocation(line: 67, column: 36, scope: !598)
!603 = !DILocation(line: 67, column: 6, scope: !565)
!604 = !DILocation(line: 68, column: 20, scope: !605)
!605 = distinct !DILexicalBlock(scope: !598, file: !566, line: 67, column: 8)
!606 = !DILocation(line: 68, column: 32, scope: !605)
!607 = !DILocation(line: 68, column: 34, scope: !605)
!608 = !DILocation(line: 68, column: 10, scope: !605)
!609 = !DILocation(line: 68, column: 8, scope: !605)
!610 = !DILocation(line: 69, column: 8, scope: !605)
!611 = !DILocation(line: 70, column: 2, scope: !605)
!612 = !DILocation(line: 73, column: 24, scope: !613)
!613 = distinct !DILexicalBlock(scope: !598, file: !566, line: 72, column: 2)
!614 = !DILocation(line: 73, column: 36, scope: !613)
!615 = !DILocation(line: 73, column: 38, scope: !613)
!616 = !DILocation(line: 73, column: 42, scope: !613)
!617 = !DILocation(line: 73, column: 14, scope: !613)
!618 = !DILocation(line: 73, column: 12, scope: !613)
!619 = !DILocation(line: 74, column: 12, scope: !613)
!620 = !DILocation(line: 77, column: 35, scope: !565)
!621 = !DILocation(line: 77, column: 38, scope: !565)
!622 = !DILocation(line: 77, column: 46, scope: !565)
!623 = !DILocation(line: 77, column: 52, scope: !565)
!624 = !DILocation(line: 77, column: 58, scope: !565)
!625 = !DILocation(line: 77, column: 25, scope: !565)
!626 = !DILocation(line: 77, column: 9, scope: !565)
!627 = !DILocation(line: 77, column: 2, scope: !565)
!628 = !DILocation(line: 78, column: 1, scope: !565)
!629 = distinct !DISubprogram(name: "netlink_rtlist", scope: !566, file: !566, line: 516, type: !630, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !359, !321}
!632 = !DILocalVariable(name: "rt_list", arg: 1, scope: !629, file: !566, line: 516, type: !359)
!633 = !DILocation(line: 516, column: 21, scope: !629)
!634 = !DILocalVariable(name: "cmd", arg: 2, scope: !629, file: !566, line: 516, type: !321)
!635 = !DILocation(line: 516, column: 34, scope: !629)
!636 = !DILocalVariable(name: "iproute", scope: !629, file: !566, line: 518, type: !234)
!637 = !DILocation(line: 518, column: 14, scope: !629)
!638 = !DILocalVariable(name: "e", scope: !629, file: !566, line: 519, type: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !360, line: 30, baseType: !365)
!640 = !DILocation(line: 519, column: 10, scope: !629)
!641 = !DILocation(line: 522, column: 8, scope: !642)
!642 = distinct !DILexicalBlock(scope: !629, file: !566, line: 522, column: 6)
!643 = !DILocation(line: 522, column: 17, scope: !642)
!644 = !DILocation(line: 522, column: 5, scope: !642)
!645 = !DILocation(line: 522, column: 10, scope: !646)
!646 = !DILexicalBlockFile(scope: !642, file: !566, discriminator: 1)
!647 = !DILocation(line: 522, column: 20, scope: !646)
!648 = !DILocation(line: 522, column: 25, scope: !646)
!649 = !DILocation(line: 522, column: 5, scope: !646)
!650 = !DILocation(line: 522, column: 9, scope: !651)
!651 = !DILexicalBlockFile(scope: !642, file: !566, discriminator: 2)
!652 = !DILocation(line: 522, column: 19, scope: !651)
!653 = !DILocation(line: 522, column: 24, scope: !651)
!654 = !DILocation(line: 522, column: 6, scope: !651)
!655 = !DILocation(line: 523, column: 3, scope: !642)
!656 = !DILocation(line: 525, column: 14, scope: !657)
!657 = distinct !DILexicalBlock(scope: !629, file: !566, line: 525, column: 2)
!658 = !DILocation(line: 525, column: 13, scope: !657)
!659 = !DILocation(line: 525, column: 12, scope: !657)
!660 = !DILocation(line: 525, column: 12, scope: !661)
!661 = !DILexicalBlockFile(scope: !657, file: !566, discriminator: 1)
!662 = !DILocation(line: 525, column: 13, scope: !663)
!663 = !DILexicalBlockFile(scope: !657, file: !566, discriminator: 2)
!664 = !DILocation(line: 525, column: 23, scope: !663)
!665 = !DILocation(line: 525, column: 12, scope: !663)
!666 = !DILocation(line: 525, column: 12, scope: !667)
!667 = !DILexicalBlockFile(scope: !657, file: !566, discriminator: 3)
!668 = !DILocation(line: 525, column: 9, scope: !667)
!669 = !DILocation(line: 525, column: 7, scope: !667)
!670 = !DILocation(line: 525, column: 30, scope: !671)
!671 = !DILexicalBlockFile(scope: !672, file: !566, discriminator: 4)
!672 = distinct !DILexicalBlock(scope: !657, file: !566, line: 525, column: 2)
!673 = !DILocation(line: 525, column: 2, scope: !671)
!674 = !DILocation(line: 526, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !566, line: 525, column: 52)
!676 = !DILocation(line: 526, column: 19, scope: !675)
!677 = !DILocation(line: 526, column: 13, scope: !675)
!678 = !DILocation(line: 526, column: 11, scope: !675)
!679 = !DILocation(line: 527, column: 8, scope: !680)
!680 = distinct !DILexicalBlock(scope: !675, file: !566, line: 527, column: 7)
!681 = !DILocation(line: 527, column: 12, scope: !680)
!682 = !DILocation(line: 527, column: 21, scope: !680)
!683 = !DILocation(line: 527, column: 30, scope: !680)
!684 = !DILocation(line: 527, column: 18, scope: !680)
!685 = !DILocation(line: 527, column: 7, scope: !675)
!686 = !DILocation(line: 528, column: 22, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !566, line: 528, column: 8)
!688 = distinct !DILexicalBlock(scope: !680, file: !566, line: 527, column: 35)
!689 = !DILocation(line: 528, column: 31, scope: !687)
!690 = !DILocation(line: 528, column: 8, scope: !687)
!691 = !DILocation(line: 528, column: 36, scope: !687)
!692 = !DILocation(line: 528, column: 8, scope: !688)
!693 = !DILocation(line: 529, column: 21, scope: !687)
!694 = !DILocation(line: 529, column: 25, scope: !687)
!695 = !DILocation(line: 529, column: 5, scope: !687)
!696 = !DILocation(line: 529, column: 14, scope: !687)
!697 = !DILocation(line: 529, column: 18, scope: !687)
!698 = !DILocation(line: 531, column: 5, scope: !687)
!699 = !DILocation(line: 531, column: 14, scope: !687)
!700 = !DILocation(line: 531, column: 18, scope: !687)
!701 = !DILocation(line: 532, column: 3, scope: !688)
!702 = !DILocation(line: 533, column: 2, scope: !675)
!703 = !DILocation(line: 525, column: 41, scope: !704)
!704 = !DILexicalBlockFile(scope: !672, file: !566, discriminator: 5)
!705 = !DILocation(line: 525, column: 45, scope: !704)
!706 = !DILocation(line: 525, column: 38, scope: !704)
!707 = !DILocation(line: 525, column: 2, scope: !704)
!708 = distinct !{!708, !709}
!709 = !DILocation(line: 525, column: 2, scope: !629)
!710 = !DILocation(line: 534, column: 1, scope: !629)
!711 = distinct !DISubprogram(name: "netlink_route", scope: !566, file: !566, line: 297, type: !712, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!712 = !DISubroutineType(types: !713)
!713 = !{!321, !234, !321}
!714 = !DILocalVariable(name: "iproute", arg: 1, scope: !711, file: !566, line: 297, type: !234)
!715 = !DILocation(line: 297, column: 27, scope: !711)
!716 = !DILocalVariable(name: "cmd", arg: 2, scope: !711, file: !566, line: 297, type: !321)
!717 = !DILocation(line: 297, column: 40, scope: !711)
!718 = !DILocalVariable(name: "status", scope: !711, file: !566, line: 299, type: !321)
!719 = !DILocation(line: 299, column: 6, scope: !711)
!720 = !DILocalVariable(name: "req", scope: !711, file: !566, line: 304, type: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !566, line: 300, size: 8416, align: 32, elements: !722)
!722 = !{!723, !724, !736}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !721, file: !566, line: 301, baseType: !570, size: 128, align: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !721, file: !566, line: 302, baseType: !725, size: 96, align: 32, offset: 128)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtmsg", file: !13, line: 182, size: 96, align: 32, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_family", scope: !725, file: !13, line: 183, baseType: !251, size: 8, align: 8)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_dst_len", scope: !725, file: !13, line: 184, baseType: !251, size: 8, align: 8, offset: 8)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_src_len", scope: !725, file: !13, line: 185, baseType: !251, size: 8, align: 8, offset: 16)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_tos", scope: !725, file: !13, line: 186, baseType: !251, size: 8, align: 8, offset: 24)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_table", scope: !725, file: !13, line: 188, baseType: !251, size: 8, align: 8, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_protocol", scope: !725, file: !13, line: 189, baseType: !251, size: 8, align: 8, offset: 40)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_scope", scope: !725, file: !13, line: 190, baseType: !251, size: 8, align: 8, offset: 48)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_type", scope: !725, file: !13, line: 191, baseType: !251, size: 8, align: 8, offset: 56)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_flags", scope: !725, file: !13, line: 193, baseType: !257, size: 32, align: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !721, file: !566, line: 303, baseType: !737, size: 8192, align: 8, offset: 224)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 8192, align: 8, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 1024)
!740 = !DILocation(line: 304, column: 4, scope: !711)
!741 = !DILocalVariable(name: "buf", scope: !711, file: !566, line: 305, type: !737)
!742 = !DILocation(line: 305, column: 7, scope: !711)
!743 = !DILocalVariable(name: "rta", scope: !711, file: !566, line: 306, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64, align: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !13, line: 156, size: 32, align: 16, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rta_len", scope: !745, file: !13, line: 157, baseType: !230, size: 16, align: 16)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rta_type", scope: !745, file: !13, line: 158, baseType: !230, size: 16, align: 16, offset: 16)
!749 = !DILocation(line: 306, column: 17, scope: !711)
!750 = !DILocation(line: 306, column: 30, scope: !711)
!751 = !DILocation(line: 306, column: 23, scope: !711)
!752 = !DILocation(line: 308, column: 2, scope: !711)
!753 = !DILocation(line: 310, column: 6, scope: !711)
!754 = !DILocation(line: 310, column: 8, scope: !711)
!755 = !DILocation(line: 310, column: 18, scope: !711)
!756 = !DILocation(line: 311, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !711, file: !566, line: 311, column: 6)
!758 = !DILocation(line: 311, column: 10, scope: !757)
!759 = !DILocation(line: 311, column: 6, scope: !711)
!760 = !DILocation(line: 312, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !566, line: 311, column: 16)
!762 = !DILocation(line: 312, column: 9, scope: !761)
!763 = !DILocation(line: 312, column: 21, scope: !761)
!764 = !DILocation(line: 313, column: 7, scope: !761)
!765 = !DILocation(line: 313, column: 9, scope: !761)
!766 = !DILocation(line: 313, column: 20, scope: !761)
!767 = !DILocation(line: 314, column: 2, scope: !761)
!768 = !DILocation(line: 316, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !757, file: !566, line: 315, column: 7)
!770 = !DILocation(line: 316, column: 9, scope: !769)
!771 = !DILocation(line: 316, column: 21, scope: !769)
!772 = !DILocation(line: 317, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !566, line: 317, column: 7)
!774 = !DILocation(line: 317, column: 11, scope: !773)
!775 = !DILocation(line: 317, column: 7, scope: !769)
!776 = !DILocation(line: 318, column: 8, scope: !773)
!777 = !DILocation(line: 318, column: 10, scope: !773)
!778 = !DILocation(line: 318, column: 22, scope: !773)
!779 = !DILocation(line: 318, column: 4, scope: !773)
!780 = !DILocation(line: 319, column: 7, scope: !769)
!781 = !DILocation(line: 319, column: 9, scope: !769)
!782 = !DILocation(line: 319, column: 20, scope: !769)
!783 = !DILocation(line: 322, column: 2, scope: !711)
!784 = !DILocation(line: 322, column: 7, scope: !711)
!785 = !DILocation(line: 322, column: 16, scope: !711)
!786 = !DILocation(line: 323, column: 2, scope: !711)
!787 = !DILocation(line: 323, column: 7, scope: !711)
!788 = !DILocation(line: 323, column: 15, scope: !711)
!789 = !DILocation(line: 325, column: 21, scope: !711)
!790 = !DILocation(line: 325, column: 30, scope: !711)
!791 = !DILocation(line: 325, column: 6, scope: !711)
!792 = !DILocation(line: 325, column: 8, scope: !711)
!793 = !DILocation(line: 325, column: 19, scope: !711)
!794 = !DILocation(line: 326, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !711, file: !566, line: 326, column: 6)
!796 = !DILocation(line: 326, column: 15, scope: !795)
!797 = !DILocation(line: 326, column: 21, scope: !795)
!798 = !DILocation(line: 326, column: 6, scope: !711)
!799 = !DILocation(line: 327, column: 36, scope: !795)
!800 = !DILocation(line: 327, column: 45, scope: !795)
!801 = !DILocation(line: 327, column: 21, scope: !795)
!802 = !DILocation(line: 327, column: 7, scope: !795)
!803 = !DILocation(line: 327, column: 9, scope: !795)
!804 = !DILocation(line: 327, column: 19, scope: !795)
!805 = !DILocation(line: 327, column: 3, scope: !795)
!806 = !DILocation(line: 329, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !795, file: !566, line: 328, column: 7)
!808 = !DILocation(line: 329, column: 9, scope: !807)
!809 = !DILocation(line: 329, column: 19, scope: !807)
!810 = !DILocation(line: 330, column: 18, scope: !807)
!811 = !DILocation(line: 330, column: 45, scope: !807)
!812 = !DILocation(line: 330, column: 54, scope: !807)
!813 = !DILocation(line: 330, column: 3, scope: !807)
!814 = !DILocation(line: 333, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !711, file: !566, line: 333, column: 6)
!816 = !DILocation(line: 333, column: 10, scope: !815)
!817 = !DILocation(line: 333, column: 6, scope: !711)
!818 = !DILocation(line: 334, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !566, line: 333, column: 16)
!820 = !DILocation(line: 334, column: 9, scope: !819)
!821 = !DILocation(line: 334, column: 19, scope: !819)
!822 = !DILocation(line: 335, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !566, line: 335, column: 7)
!824 = !DILocation(line: 335, column: 16, scope: !823)
!825 = !DILocation(line: 335, column: 21, scope: !823)
!826 = !DILocation(line: 335, column: 7, scope: !819)
!827 = !DILocation(line: 336, column: 21, scope: !823)
!828 = !DILocation(line: 336, column: 30, scope: !823)
!829 = !DILocation(line: 336, column: 8, scope: !823)
!830 = !DILocation(line: 336, column: 10, scope: !823)
!831 = !DILocation(line: 336, column: 19, scope: !823)
!832 = !DILocation(line: 336, column: 4, scope: !823)
!833 = !DILocation(line: 337, column: 2, scope: !819)
!834 = !DILocation(line: 339, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !815, file: !566, line: 338, column: 7)
!836 = !DILocation(line: 339, column: 9, scope: !835)
!837 = !DILocation(line: 339, column: 19, scope: !835)
!838 = !DILocation(line: 340, column: 20, scope: !835)
!839 = !DILocation(line: 340, column: 29, scope: !835)
!840 = !DILocation(line: 340, column: 7, scope: !835)
!841 = !DILocation(line: 340, column: 9, scope: !835)
!842 = !DILocation(line: 340, column: 18, scope: !835)
!843 = !DILocation(line: 343, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !711, file: !566, line: 343, column: 6)
!845 = !DILocation(line: 343, column: 15, scope: !844)
!846 = !DILocation(line: 343, column: 20, scope: !844)
!847 = !DILocation(line: 343, column: 6, scope: !711)
!848 = !DILocation(line: 344, column: 24, scope: !844)
!849 = !DILocation(line: 344, column: 33, scope: !844)
!850 = !DILocation(line: 344, column: 7, scope: !844)
!851 = !DILocation(line: 344, column: 9, scope: !844)
!852 = !DILocation(line: 344, column: 22, scope: !844)
!853 = !DILocation(line: 344, column: 3, scope: !844)
!854 = !DILocation(line: 346, column: 7, scope: !844)
!855 = !DILocation(line: 346, column: 9, scope: !844)
!856 = !DILocation(line: 346, column: 22, scope: !844)
!857 = !DILocation(line: 348, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !711, file: !566, line: 348, column: 6)
!859 = !DILocation(line: 348, column: 15, scope: !858)
!860 = !DILocation(line: 348, column: 20, scope: !858)
!861 = !DILocation(line: 348, column: 6, scope: !711)
!862 = !DILocation(line: 349, column: 21, scope: !858)
!863 = !DILocation(line: 349, column: 30, scope: !858)
!864 = !DILocation(line: 349, column: 7, scope: !858)
!865 = !DILocation(line: 349, column: 9, scope: !858)
!866 = !DILocation(line: 349, column: 19, scope: !858)
!867 = !DILocation(line: 349, column: 3, scope: !858)
!868 = !DILocation(line: 351, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !711, file: !566, line: 351, column: 6)
!870 = !DILocation(line: 351, column: 15, scope: !869)
!871 = !DILocation(line: 351, column: 6, scope: !711)
!872 = !DILocation(line: 352, column: 23, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !566, line: 351, column: 20)
!874 = !DILocation(line: 352, column: 32, scope: !873)
!875 = !DILocation(line: 352, column: 37, scope: !873)
!876 = !DILocation(line: 352, column: 41, scope: !873)
!877 = !DILocation(line: 352, column: 7, scope: !873)
!878 = !DILocation(line: 352, column: 9, scope: !873)
!879 = !DILocation(line: 352, column: 21, scope: !873)
!880 = !DILocation(line: 353, column: 21, scope: !873)
!881 = !DILocation(line: 353, column: 46, scope: !873)
!882 = !DILocation(line: 353, column: 55, scope: !873)
!883 = !DILocation(line: 353, column: 3, scope: !873)
!884 = !DILocation(line: 354, column: 2, scope: !873)
!885 = !DILocation(line: 356, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !711, file: !566, line: 356, column: 6)
!887 = !DILocation(line: 356, column: 15, scope: !886)
!888 = !DILocation(line: 356, column: 6, scope: !711)
!889 = !DILocation(line: 357, column: 23, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !566, line: 356, column: 20)
!891 = !DILocation(line: 357, column: 32, scope: !890)
!892 = !DILocation(line: 357, column: 37, scope: !890)
!893 = !DILocation(line: 357, column: 41, scope: !890)
!894 = !DILocation(line: 357, column: 7, scope: !890)
!895 = !DILocation(line: 357, column: 9, scope: !890)
!896 = !DILocation(line: 357, column: 21, scope: !890)
!897 = !DILocation(line: 358, column: 21, scope: !890)
!898 = !DILocation(line: 358, column: 46, scope: !890)
!899 = !DILocation(line: 358, column: 55, scope: !890)
!900 = !DILocation(line: 358, column: 3, scope: !890)
!901 = !DILocation(line: 359, column: 2, scope: !890)
!902 = !DILocation(line: 361, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !711, file: !566, line: 361, column: 6)
!904 = !DILocation(line: 361, column: 15, scope: !903)
!905 = !DILocation(line: 361, column: 6, scope: !711)
!906 = !DILocation(line: 362, column: 21, scope: !903)
!907 = !DILocation(line: 362, column: 50, scope: !903)
!908 = !DILocation(line: 362, column: 59, scope: !903)
!909 = !DILocation(line: 362, column: 3, scope: !903)
!910 = !DILocation(line: 369, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !711, file: !566, line: 369, column: 6)
!912 = !DILocation(line: 369, column: 15, scope: !911)
!913 = !DILocation(line: 369, column: 6, scope: !711)
!914 = !DILocation(line: 370, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !566, line: 370, column: 7)
!916 = distinct !DILexicalBlock(scope: !911, file: !566, line: 369, column: 20)
!917 = !DILocation(line: 370, column: 16, scope: !915)
!918 = !DILocation(line: 370, column: 21, scope: !915)
!919 = !DILocation(line: 370, column: 25, scope: !915)
!920 = !DILocation(line: 370, column: 39, scope: !915)
!921 = !DILocation(line: 370, column: 48, scope: !915)
!922 = !DILocation(line: 370, column: 36, scope: !915)
!923 = !DILocation(line: 370, column: 7, scope: !916)
!924 = !DILocation(line: 371, column: 22, scope: !915)
!925 = !DILocation(line: 371, column: 51, scope: !915)
!926 = !DILocation(line: 371, column: 60, scope: !915)
!927 = !DILocation(line: 371, column: 4, scope: !915)
!928 = !DILocation(line: 374, column: 26, scope: !915)
!929 = !DILocation(line: 374, column: 51, scope: !915)
!930 = !DILocation(line: 374, column: 60, scope: !915)
!931 = !DILocation(line: 374, column: 4, scope: !915)
!932 = !DILocation(line: 376, column: 2, scope: !916)
!933 = !DILocation(line: 379, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !711, file: !566, line: 379, column: 6)
!935 = !DILocation(line: 379, column: 15, scope: !934)
!936 = !DILocation(line: 379, column: 21, scope: !934)
!937 = !DILocation(line: 379, column: 26, scope: !934)
!938 = !DILocation(line: 379, column: 6, scope: !711)
!939 = !DILocalVariable(name: "encap_buf", scope: !940, file: !566, line: 380, type: !941)
!940 = distinct !DILexicalBlock(scope: !934, file: !566, line: 379, column: 50)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 1024, align: 8, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 128)
!944 = !DILocation(line: 380, column: 8, scope: !940)
!945 = !DILocalVariable(name: "encap_rta", scope: !940, file: !566, line: 381, type: !744)
!946 = !DILocation(line: 381, column: 18, scope: !940)
!947 = !DILocation(line: 381, column: 38, scope: !940)
!948 = !DILocation(line: 381, column: 30, scope: !940)
!949 = !DILocation(line: 383, column: 3, scope: !940)
!950 = !DILocation(line: 383, column: 14, scope: !940)
!951 = !DILocation(line: 383, column: 23, scope: !940)
!952 = !DILocation(line: 384, column: 3, scope: !940)
!953 = !DILocation(line: 384, column: 14, scope: !940)
!954 = !DILocation(line: 384, column: 22, scope: !940)
!955 = !DILocation(line: 385, column: 13, scope: !940)
!956 = !DILocation(line: 385, column: 44, scope: !940)
!957 = !DILocation(line: 385, column: 53, scope: !940)
!958 = !DILocation(line: 385, column: 3, scope: !940)
!959 = !DILocation(line: 387, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !940, file: !566, line: 387, column: 7)
!961 = !DILocation(line: 387, column: 18, scope: !960)
!962 = !DILocation(line: 387, column: 26, scope: !960)
!963 = !DILocation(line: 387, column: 7, scope: !940)
!964 = !DILocation(line: 388, column: 18, scope: !960)
!965 = !DILocation(line: 388, column: 39, scope: !960)
!966 = !DILocation(line: 388, column: 49, scope: !960)
!967 = !DILocation(line: 388, column: 42, scope: !960)
!968 = !DILocation(line: 388, column: 60, scope: !960)
!969 = !DILocation(line: 388, column: 63, scope: !960)
!970 = !DILocation(line: 388, column: 61, scope: !960)
!971 = !DILocation(line: 388, column: 72, scope: !960)
!972 = !DILocation(line: 388, column: 4, scope: !960)
!973 = !DILocation(line: 389, column: 2, scope: !940)
!974 = !DILocation(line: 392, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !711, file: !566, line: 392, column: 6)
!976 = !DILocation(line: 392, column: 15, scope: !975)
!977 = !DILocation(line: 392, column: 20, scope: !975)
!978 = !DILocation(line: 392, column: 6, scope: !711)
!979 = !DILocation(line: 393, column: 19, scope: !975)
!980 = !DILocation(line: 393, column: 28, scope: !975)
!981 = !DILocation(line: 393, column: 7, scope: !975)
!982 = !DILocation(line: 393, column: 9, scope: !975)
!983 = !DILocation(line: 393, column: 17, scope: !975)
!984 = !DILocation(line: 393, column: 3, scope: !975)
!985 = !DILocation(line: 395, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !711, file: !566, line: 395, column: 6)
!987 = !DILocation(line: 395, column: 15, scope: !986)
!988 = !DILocation(line: 395, column: 6, scope: !711)
!989 = !DILocation(line: 396, column: 18, scope: !986)
!990 = !DILocation(line: 396, column: 43, scope: !986)
!991 = !DILocation(line: 396, column: 52, scope: !986)
!992 = !DILocation(line: 396, column: 57, scope: !986)
!993 = !DILocation(line: 396, column: 3, scope: !986)
!994 = !DILocation(line: 398, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !711, file: !566, line: 398, column: 6)
!996 = !DILocation(line: 398, column: 15, scope: !995)
!997 = !DILocation(line: 398, column: 20, scope: !995)
!998 = !DILocation(line: 398, column: 6, scope: !711)
!999 = !DILocation(line: 399, column: 18, scope: !995)
!1000 = !DILocation(line: 399, column: 48, scope: !995)
!1001 = !DILocation(line: 399, column: 57, scope: !995)
!1002 = !DILocation(line: 399, column: 3, scope: !995)
!1003 = !DILocation(line: 401, column: 20, scope: !711)
!1004 = !DILocation(line: 401, column: 29, scope: !711)
!1005 = !DILocation(line: 401, column: 6, scope: !711)
!1006 = !DILocation(line: 401, column: 8, scope: !711)
!1007 = !DILocation(line: 401, column: 18, scope: !711)
!1008 = !DILocation(line: 403, column: 6, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !711, file: !566, line: 403, column: 6)
!1010 = !DILocation(line: 403, column: 15, scope: !1009)
!1011 = !DILocation(line: 403, column: 6, scope: !711)
!1012 = !DILocation(line: 404, column: 18, scope: !1009)
!1013 = !DILocation(line: 404, column: 44, scope: !1009)
!1014 = !DILocation(line: 404, column: 53, scope: !1009)
!1015 = !DILocation(line: 404, column: 3, scope: !1009)
!1016 = !DILocation(line: 412, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !711, file: !566, line: 412, column: 6)
!1018 = !DILocation(line: 412, column: 15, scope: !1017)
!1019 = !DILocation(line: 412, column: 6, scope: !711)
!1020 = !DILocation(line: 413, column: 17, scope: !1017)
!1021 = !DILocation(line: 413, column: 48, scope: !1017)
!1022 = !DILocation(line: 413, column: 57, scope: !1017)
!1023 = !DILocation(line: 413, column: 73, scope: !1017)
!1024 = !DILocation(line: 413, column: 82, scope: !1017)
!1025 = !DILocation(line: 413, column: 66, scope: !1017)
!1026 = !DILocation(line: 413, column: 3, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1017, file: !566, discriminator: 1)
!1028 = !DILocation(line: 413, column: 3, scope: !1017)
!1029 = !DILocation(line: 416, column: 6, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !711, file: !566, line: 416, column: 6)
!1031 = !DILocation(line: 416, column: 15, scope: !1030)
!1032 = !DILocation(line: 416, column: 20, scope: !1030)
!1033 = !DILocation(line: 416, column: 6, scope: !711)
!1034 = !DILocation(line: 417, column: 17, scope: !1030)
!1035 = !DILocation(line: 417, column: 44, scope: !1030)
!1036 = !DILocation(line: 417, column: 53, scope: !1030)
!1037 = !DILocation(line: 417, column: 3, scope: !1030)
!1038 = !DILocation(line: 419, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !711, file: !566, line: 419, column: 6)
!1040 = !DILocation(line: 419, column: 15, scope: !1039)
!1041 = !DILocation(line: 419, column: 20, scope: !1039)
!1042 = !DILocation(line: 419, column: 6, scope: !711)
!1043 = !DILocation(line: 420, column: 17, scope: !1039)
!1044 = !DILocation(line: 420, column: 47, scope: !1039)
!1045 = !DILocation(line: 420, column: 56, scope: !1039)
!1046 = !DILocation(line: 420, column: 3, scope: !1039)
!1047 = !DILocation(line: 422, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !711, file: !566, line: 422, column: 6)
!1049 = !DILocation(line: 422, column: 15, scope: !1048)
!1050 = !DILocation(line: 422, column: 20, scope: !1048)
!1051 = !DILocation(line: 422, column: 6, scope: !711)
!1052 = !DILocation(line: 423, column: 17, scope: !1048)
!1053 = !DILocation(line: 423, column: 48, scope: !1048)
!1054 = !DILocation(line: 423, column: 57, scope: !1048)
!1055 = !DILocation(line: 423, column: 3, scope: !1048)
!1056 = !DILocation(line: 425, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !711, file: !566, line: 425, column: 6)
!1058 = !DILocation(line: 425, column: 15, scope: !1057)
!1059 = !DILocation(line: 425, column: 6, scope: !711)
!1060 = !DILocation(line: 426, column: 17, scope: !1057)
!1061 = !DILocation(line: 426, column: 49, scope: !1057)
!1062 = !DILocation(line: 426, column: 58, scope: !1057)
!1063 = !DILocation(line: 426, column: 3, scope: !1057)
!1064 = !DILocation(line: 428, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !711, file: !566, line: 428, column: 6)
!1066 = !DILocation(line: 428, column: 15, scope: !1065)
!1067 = !DILocation(line: 428, column: 20, scope: !1065)
!1068 = !DILocation(line: 428, column: 6, scope: !711)
!1069 = !DILocation(line: 429, column: 17, scope: !1065)
!1070 = !DILocation(line: 429, column: 44, scope: !1065)
!1071 = !DILocation(line: 429, column: 53, scope: !1065)
!1072 = !DILocation(line: 429, column: 3, scope: !1065)
!1073 = !DILocation(line: 431, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !711, file: !566, line: 431, column: 6)
!1075 = !DILocation(line: 431, column: 15, scope: !1074)
!1076 = !DILocation(line: 431, column: 20, scope: !1074)
!1077 = !DILocation(line: 431, column: 6, scope: !711)
!1078 = !DILocation(line: 432, column: 17, scope: !1074)
!1079 = !DILocation(line: 432, column: 47, scope: !1074)
!1080 = !DILocation(line: 432, column: 56, scope: !1074)
!1081 = !DILocation(line: 432, column: 3, scope: !1074)
!1082 = !DILocation(line: 434, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !711, file: !566, line: 434, column: 6)
!1084 = !DILocation(line: 434, column: 15, scope: !1083)
!1085 = !DILocation(line: 434, column: 20, scope: !1083)
!1086 = !DILocation(line: 434, column: 6, scope: !711)
!1087 = !DILocation(line: 435, column: 17, scope: !1083)
!1088 = !DILocation(line: 435, column: 49, scope: !1083)
!1089 = !DILocation(line: 435, column: 58, scope: !1083)
!1090 = !DILocation(line: 435, column: 3, scope: !1083)
!1091 = !DILocation(line: 437, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !711, file: !566, line: 437, column: 6)
!1093 = !DILocation(line: 437, column: 15, scope: !1092)
!1094 = !DILocation(line: 437, column: 20, scope: !1092)
!1095 = !DILocation(line: 437, column: 6, scope: !711)
!1096 = !DILocation(line: 438, column: 17, scope: !1092)
!1097 = !DILocation(line: 438, column: 45, scope: !1092)
!1098 = !DILocation(line: 438, column: 54, scope: !1092)
!1099 = !DILocation(line: 438, column: 3, scope: !1092)
!1100 = !DILocation(line: 440, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !711, file: !566, line: 440, column: 6)
!1102 = !DILocation(line: 440, column: 15, scope: !1101)
!1103 = !DILocation(line: 440, column: 20, scope: !1101)
!1104 = !DILocation(line: 440, column: 6, scope: !711)
!1105 = !DILocation(line: 441, column: 17, scope: !1101)
!1106 = !DILocation(line: 441, column: 47, scope: !1101)
!1107 = !DILocation(line: 441, column: 56, scope: !1101)
!1108 = !DILocation(line: 441, column: 3, scope: !1101)
!1109 = !DILocation(line: 443, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !711, file: !566, line: 443, column: 6)
!1111 = !DILocation(line: 443, column: 15, scope: !1110)
!1112 = !DILocation(line: 443, column: 20, scope: !1110)
!1113 = !DILocation(line: 443, column: 6, scope: !711)
!1114 = !DILocation(line: 444, column: 17, scope: !1110)
!1115 = !DILocation(line: 444, column: 51, scope: !1110)
!1116 = !DILocation(line: 444, column: 60, scope: !1110)
!1117 = !DILocation(line: 444, column: 3, scope: !1110)
!1118 = !DILocation(line: 446, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !711, file: !566, line: 446, column: 6)
!1120 = !DILocation(line: 446, column: 15, scope: !1119)
!1121 = !DILocation(line: 446, column: 20, scope: !1119)
!1122 = !DILocation(line: 446, column: 6, scope: !711)
!1123 = !DILocation(line: 447, column: 17, scope: !1119)
!1124 = !DILocation(line: 447, column: 49, scope: !1119)
!1125 = !DILocation(line: 447, column: 58, scope: !1119)
!1126 = !DILocation(line: 447, column: 3, scope: !1119)
!1127 = !DILocation(line: 449, column: 6, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !711, file: !566, line: 449, column: 6)
!1129 = !DILocation(line: 449, column: 15, scope: !1128)
!1130 = !DILocation(line: 449, column: 20, scope: !1128)
!1131 = !DILocation(line: 449, column: 6, scope: !711)
!1132 = !DILocation(line: 450, column: 17, scope: !1128)
!1133 = !DILocation(line: 450, column: 49, scope: !1128)
!1134 = !DILocation(line: 450, column: 58, scope: !1128)
!1135 = !DILocation(line: 450, column: 3, scope: !1128)
!1136 = !DILocation(line: 452, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !711, file: !566, line: 452, column: 6)
!1138 = !DILocation(line: 452, column: 15, scope: !1137)
!1139 = !DILocation(line: 452, column: 20, scope: !1137)
!1140 = !DILocation(line: 452, column: 6, scope: !711)
!1141 = !DILocation(line: 453, column: 17, scope: !1137)
!1142 = !DILocation(line: 453, column: 49, scope: !1137)
!1143 = !DILocation(line: 453, column: 58, scope: !1137)
!1144 = !DILocation(line: 453, column: 3, scope: !1137)
!1145 = !DILocation(line: 456, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !711, file: !566, line: 456, column: 6)
!1147 = !DILocation(line: 456, column: 15, scope: !1146)
!1148 = !DILocation(line: 456, column: 20, scope: !1146)
!1149 = !DILocation(line: 456, column: 6, scope: !711)
!1150 = !DILocation(line: 457, column: 17, scope: !1146)
!1151 = !DILocation(line: 457, column: 49, scope: !1146)
!1152 = !DILocation(line: 457, column: 58, scope: !1146)
!1153 = !DILocation(line: 457, column: 3, scope: !1146)
!1154 = !DILocation(line: 461, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !711, file: !566, line: 461, column: 6)
!1156 = !DILocation(line: 461, column: 15, scope: !1155)
!1157 = !DILocation(line: 461, column: 20, scope: !1155)
!1158 = !DILocation(line: 461, column: 6, scope: !711)
!1159 = !DILocation(line: 462, column: 17, scope: !1155)
!1160 = !DILocation(line: 462, column: 43, scope: !1155)
!1161 = !DILocation(line: 462, column: 52, scope: !1155)
!1162 = !DILocation(line: 462, column: 3, scope: !1155)
!1163 = !DILocation(line: 470, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !711, file: !566, line: 470, column: 6)
!1165 = !DILocation(line: 470, column: 11, scope: !1164)
!1166 = !DILocation(line: 470, column: 19, scope: !1164)
!1167 = !DILocation(line: 470, column: 6, scope: !711)
!1168 = !DILocation(line: 471, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !566, line: 471, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !566, line: 470, column: 35)
!1171 = !DILocation(line: 471, column: 16, scope: !1169)
!1172 = !DILocation(line: 471, column: 7, scope: !1170)
!1173 = !DILocation(line: 472, column: 18, scope: !1169)
!1174 = !DILocation(line: 472, column: 46, scope: !1169)
!1175 = !DILocation(line: 472, column: 55, scope: !1169)
!1176 = !DILocation(line: 472, column: 4, scope: !1169)
!1177 = !DILocation(line: 473, column: 18, scope: !1170)
!1178 = !DILocation(line: 473, column: 46, scope: !1170)
!1179 = !DILocation(line: 473, column: 56, scope: !1170)
!1180 = !DILocation(line: 473, column: 49, scope: !1170)
!1181 = !DILocation(line: 473, column: 61, scope: !1170)
!1182 = !DILocation(line: 473, column: 64, scope: !1170)
!1183 = !DILocation(line: 473, column: 62, scope: !1170)
!1184 = !DILocation(line: 473, column: 73, scope: !1170)
!1185 = !DILocation(line: 473, column: 3, scope: !1170)
!1186 = !DILocation(line: 474, column: 2, scope: !1170)
!1187 = !DILocation(line: 476, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !711, file: !566, line: 476, column: 6)
!1189 = !DILocation(line: 476, column: 18, scope: !1188)
!1190 = !DILocation(line: 476, column: 23, scope: !1188)
!1191 = !DILocation(line: 476, column: 6, scope: !1188)
!1192 = !DILocation(line: 476, column: 11, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1188, file: !566, discriminator: 1)
!1194 = !DILocation(line: 476, column: 20, scope: !1193)
!1195 = !DILocation(line: 476, column: 26, scope: !1193)
!1196 = !DILocation(line: 476, column: 31, scope: !1193)
!1197 = !DILocation(line: 476, column: 6, scope: !1193)
!1198 = !DILocation(line: 476, column: 10, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1188, file: !566, discriminator: 2)
!1200 = !DILocation(line: 476, column: 19, scope: !1199)
!1201 = !DILocation(line: 476, column: 25, scope: !1199)
!1202 = !DILocation(line: 476, column: 30, scope: !1199)
!1203 = !DILocation(line: 476, column: 6, scope: !1199)
!1204 = !DILocation(line: 477, column: 16, scope: !1188)
!1205 = !DILocation(line: 477, column: 30, scope: !1188)
!1206 = !DILocation(line: 477, column: 38, scope: !1188)
!1207 = !DILocation(line: 477, column: 3, scope: !1188)
!1208 = !DILocation(line: 503, column: 33, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !711, file: !566, line: 503, column: 6)
!1210 = !DILocation(line: 503, column: 6, scope: !1209)
!1211 = !DILocation(line: 503, column: 36, scope: !1209)
!1212 = !DILocation(line: 503, column: 6, scope: !711)
!1213 = !DILocation(line: 508, column: 11, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !566, line: 503, column: 41)
!1215 = !DILocation(line: 509, column: 2, scope: !1214)
!1216 = !DILocation(line: 511, column: 9, scope: !711)
!1217 = !DILocation(line: 511, column: 2, scope: !711)
!1218 = distinct !DISubprogram(name: "free_encap", scope: !566, file: !566, line: 539, type: !375, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!1219 = !DILocalVariable(name: "rt_data", arg: 1, scope: !1218, file: !566, line: 539, type: !229)
!1220 = !DILocation(line: 539, column: 18, scope: !1218)
!1221 = !DILocalVariable(name: "encap", scope: !1218, file: !566, line: 541, type: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!1223 = !DILocation(line: 541, column: 11, scope: !1218)
!1224 = !DILocation(line: 541, column: 19, scope: !1218)
!1225 = !DILocation(line: 543, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1218, file: !566, line: 543, column: 6)
!1227 = !DILocation(line: 543, column: 13, scope: !1226)
!1228 = !DILocation(line: 543, column: 18, scope: !1226)
!1229 = !DILocation(line: 543, column: 6, scope: !1218)
!1230 = !DILocation(line: 544, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !566, line: 544, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !566, line: 544, column: 3)
!1233 = distinct !DILexicalBlock(scope: !1226, file: !566, line: 543, column: 40)
!1234 = !DILocation(line: 544, column: 16, scope: !1231)
!1235 = !DILocation(line: 544, column: 19, scope: !1231)
!1236 = !DILocation(line: 544, column: 9, scope: !1232)
!1237 = !DILocation(line: 544, column: 32, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !566, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !566, line: 544, column: 24)
!1240 = !DILocation(line: 544, column: 39, scope: !1238)
!1241 = !DILocation(line: 544, column: 42, scope: !1238)
!1242 = !DILocation(line: 544, column: 27, scope: !1238)
!1243 = !DILocation(line: 544, column: 49, scope: !1238)
!1244 = !DILocation(line: 544, column: 56, scope: !1238)
!1245 = !DILocation(line: 544, column: 59, scope: !1238)
!1246 = !DILocation(line: 544, column: 64, scope: !1238)
!1247 = !DILocation(line: 544, column: 4, scope: !1238)
!1248 = !DILocation(line: 545, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !566, line: 545, column: 9)
!1250 = distinct !DILexicalBlock(scope: !1233, file: !566, line: 545, column: 3)
!1251 = !DILocation(line: 545, column: 16, scope: !1249)
!1252 = !DILocation(line: 545, column: 19, scope: !1249)
!1253 = !DILocation(line: 545, column: 9, scope: !1250)
!1254 = !DILocation(line: 545, column: 32, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !566, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !566, line: 545, column: 24)
!1257 = !DILocation(line: 545, column: 39, scope: !1255)
!1258 = !DILocation(line: 545, column: 42, scope: !1255)
!1259 = !DILocation(line: 545, column: 27, scope: !1255)
!1260 = !DILocation(line: 545, column: 49, scope: !1255)
!1261 = !DILocation(line: 545, column: 56, scope: !1255)
!1262 = !DILocation(line: 545, column: 59, scope: !1255)
!1263 = !DILocation(line: 545, column: 64, scope: !1255)
!1264 = !DILocation(line: 545, column: 4, scope: !1255)
!1265 = !DILocation(line: 546, column: 2, scope: !1233)
!1266 = !DILocation(line: 547, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1226, file: !566, line: 547, column: 11)
!1268 = !DILocation(line: 547, column: 18, scope: !1267)
!1269 = !DILocation(line: 547, column: 23, scope: !1267)
!1270 = !DILocation(line: 547, column: 11, scope: !1226)
!1271 = !DILocation(line: 548, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !566, line: 548, column: 9)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !566, line: 548, column: 3)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !566, line: 547, column: 46)
!1275 = !DILocation(line: 548, column: 16, scope: !1272)
!1276 = !DILocation(line: 548, column: 20, scope: !1272)
!1277 = !DILocation(line: 548, column: 9, scope: !1273)
!1278 = !DILocation(line: 548, column: 33, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1280, file: !566, discriminator: 1)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !566, line: 548, column: 25)
!1281 = !DILocation(line: 548, column: 40, scope: !1279)
!1282 = !DILocation(line: 548, column: 44, scope: !1279)
!1283 = !DILocation(line: 548, column: 28, scope: !1279)
!1284 = !DILocation(line: 548, column: 51, scope: !1279)
!1285 = !DILocation(line: 548, column: 58, scope: !1279)
!1286 = !DILocation(line: 548, column: 62, scope: !1279)
!1287 = !DILocation(line: 548, column: 67, scope: !1279)
!1288 = !DILocation(line: 548, column: 4, scope: !1279)
!1289 = !DILocation(line: 549, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !566, line: 549, column: 9)
!1291 = distinct !DILexicalBlock(scope: !1274, file: !566, line: 549, column: 3)
!1292 = !DILocation(line: 549, column: 16, scope: !1290)
!1293 = !DILocation(line: 549, column: 20, scope: !1290)
!1294 = !DILocation(line: 549, column: 9, scope: !1291)
!1295 = !DILocation(line: 549, column: 33, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !566, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !566, line: 549, column: 25)
!1298 = !DILocation(line: 549, column: 40, scope: !1296)
!1299 = !DILocation(line: 549, column: 44, scope: !1296)
!1300 = !DILocation(line: 549, column: 28, scope: !1296)
!1301 = !DILocation(line: 549, column: 51, scope: !1296)
!1302 = !DILocation(line: 549, column: 58, scope: !1296)
!1303 = !DILocation(line: 549, column: 62, scope: !1296)
!1304 = !DILocation(line: 549, column: 67, scope: !1296)
!1305 = !DILocation(line: 549, column: 4, scope: !1296)
!1306 = !DILocation(line: 550, column: 2, scope: !1274)
!1307 = !DILocation(line: 552, column: 8, scope: !1218)
!1308 = !DILocation(line: 552, column: 3, scope: !1218)
!1309 = !DILocation(line: 552, column: 28, scope: !1218)
!1310 = !DILocation(line: 553, column: 1, scope: !1218)
!1311 = distinct !DISubprogram(name: "free_nh", scope: !566, file: !566, line: 557, type: !375, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!1312 = !DILocalVariable(name: "rt_data", arg: 1, scope: !1311, file: !566, line: 557, type: !229)
!1313 = !DILocation(line: 557, column: 15, scope: !1311)
!1314 = !DILocalVariable(name: "nh", scope: !1311, file: !566, line: 559, type: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "nexthop_t", file: !29, line: 132, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_nexthop", file: !29, line: 119, size: 576, align: 64, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1317, file: !29, line: 120, baseType: !270, size: 32, align: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1317, file: !29, line: 121, baseType: !239, size: 64, align: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !1317, file: !29, line: 122, baseType: !294, size: 64, align: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1317, file: !29, line: 123, baseType: !281, size: 8, align: 8, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !29, line: 124, baseType: !281, size: 8, align: 8, offset: 200)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !1317, file: !29, line: 125, baseType: !270, size: 32, align: 32, offset: 224)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "encap", scope: !1317, file: !29, line: 127, baseType: !497, size: 320, align: 64, offset: 256)
!1326 = !DILocation(line: 559, column: 13, scope: !1311)
!1327 = !DILocation(line: 559, column: 18, scope: !1311)
!1328 = !DILocation(line: 561, column: 8, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !566, line: 561, column: 8)
!1330 = distinct !DILexicalBlock(scope: !1311, file: !566, line: 561, column: 2)
!1331 = !DILocation(line: 561, column: 12, scope: !1329)
!1332 = !DILocation(line: 561, column: 8, scope: !1330)
!1333 = !DILocation(line: 561, column: 26, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1335, file: !566, discriminator: 1)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !566, line: 561, column: 18)
!1336 = !DILocation(line: 561, column: 30, scope: !1334)
!1337 = !DILocation(line: 561, column: 21, scope: !1334)
!1338 = !DILocation(line: 561, column: 38, scope: !1334)
!1339 = !DILocation(line: 561, column: 42, scope: !1334)
!1340 = !DILocation(line: 561, column: 48, scope: !1334)
!1341 = !DILocation(line: 561, column: 3, scope: !1334)
!1342 = !DILocation(line: 565, column: 8, scope: !1311)
!1343 = !DILocation(line: 565, column: 3, scope: !1311)
!1344 = !DILocation(line: 565, column: 28, scope: !1311)
!1345 = !DILocation(line: 566, column: 1, scope: !1311)
!1346 = distinct !DISubprogram(name: "free_iproute", scope: !566, file: !566, line: 569, type: !375, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!1347 = !DILocalVariable(name: "rt_data", arg: 1, scope: !1346, file: !566, line: 569, type: !229)
!1348 = !DILocation(line: 569, column: 20, scope: !1346)
!1349 = !DILocalVariable(name: "route", scope: !1346, file: !566, line: 571, type: !234)
!1350 = !DILocation(line: 571, column: 14, scope: !1346)
!1351 = !DILocation(line: 571, column: 22, scope: !1346)
!1352 = !DILocation(line: 573, column: 8, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !566, line: 573, column: 8)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !566, line: 573, column: 2)
!1355 = !DILocation(line: 573, column: 15, scope: !1353)
!1356 = !DILocation(line: 573, column: 8, scope: !1354)
!1357 = !DILocation(line: 573, column: 28, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !566, discriminator: 1)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !566, line: 573, column: 20)
!1360 = !DILocation(line: 573, column: 35, scope: !1358)
!1361 = !DILocation(line: 573, column: 23, scope: !1358)
!1362 = !DILocation(line: 573, column: 42, scope: !1358)
!1363 = !DILocation(line: 573, column: 49, scope: !1358)
!1364 = !DILocation(line: 573, column: 54, scope: !1358)
!1365 = !DILocation(line: 573, column: 3, scope: !1358)
!1366 = !DILocation(line: 574, column: 8, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !566, line: 574, column: 8)
!1368 = distinct !DILexicalBlock(scope: !1346, file: !566, line: 574, column: 2)
!1369 = !DILocation(line: 574, column: 15, scope: !1367)
!1370 = !DILocation(line: 574, column: 8, scope: !1368)
!1371 = !DILocation(line: 574, column: 28, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !566, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !566, line: 574, column: 20)
!1374 = !DILocation(line: 574, column: 35, scope: !1372)
!1375 = !DILocation(line: 574, column: 23, scope: !1372)
!1376 = !DILocation(line: 574, column: 42, scope: !1372)
!1377 = !DILocation(line: 574, column: 49, scope: !1372)
!1378 = !DILocation(line: 574, column: 54, scope: !1372)
!1379 = !DILocation(line: 574, column: 3, scope: !1372)
!1380 = !DILocation(line: 575, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !566, line: 575, column: 8)
!1382 = distinct !DILexicalBlock(scope: !1346, file: !566, line: 575, column: 2)
!1383 = !DILocation(line: 575, column: 15, scope: !1381)
!1384 = !DILocation(line: 575, column: 8, scope: !1382)
!1385 = !DILocation(line: 575, column: 33, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !566, discriminator: 1)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !566, line: 575, column: 25)
!1388 = !DILocation(line: 575, column: 40, scope: !1386)
!1389 = !DILocation(line: 575, column: 28, scope: !1386)
!1390 = !DILocation(line: 575, column: 52, scope: !1386)
!1391 = !DILocation(line: 575, column: 59, scope: !1386)
!1392 = !DILocation(line: 575, column: 69, scope: !1386)
!1393 = !DILocation(line: 575, column: 3, scope: !1386)
!1394 = !DILocation(line: 576, column: 8, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !566, line: 576, column: 8)
!1396 = distinct !DILexicalBlock(scope: !1346, file: !566, line: 576, column: 2)
!1397 = !DILocation(line: 576, column: 15, scope: !1395)
!1398 = !DILocation(line: 576, column: 8, scope: !1396)
!1399 = !DILocation(line: 576, column: 28, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !566, discriminator: 1)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !566, line: 576, column: 20)
!1402 = !DILocation(line: 576, column: 35, scope: !1400)
!1403 = !DILocation(line: 576, column: 23, scope: !1400)
!1404 = !DILocation(line: 576, column: 42, scope: !1400)
!1405 = !DILocation(line: 576, column: 49, scope: !1400)
!1406 = !DILocation(line: 576, column: 54, scope: !1400)
!1407 = !DILocation(line: 576, column: 3, scope: !1400)
!1408 = !DILocation(line: 577, column: 13, scope: !1346)
!1409 = !DILocation(line: 577, column: 20, scope: !1346)
!1410 = !DILocation(line: 577, column: 2, scope: !1346)
!1411 = !DILocation(line: 579, column: 8, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !566, line: 579, column: 8)
!1413 = distinct !DILexicalBlock(scope: !1346, file: !566, line: 579, column: 2)
!1414 = !DILocation(line: 579, column: 15, scope: !1412)
!1415 = !DILocation(line: 579, column: 8, scope: !1413)
!1416 = !DILocation(line: 579, column: 32, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !566, discriminator: 1)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !566, line: 579, column: 24)
!1419 = !DILocation(line: 579, column: 39, scope: !1417)
!1420 = !DILocation(line: 579, column: 27, scope: !1417)
!1421 = !DILocation(line: 579, column: 50, scope: !1417)
!1422 = !DILocation(line: 579, column: 57, scope: !1417)
!1423 = !DILocation(line: 579, column: 66, scope: !1417)
!1424 = !DILocation(line: 579, column: 3, scope: !1417)
!1425 = !DILocation(line: 581, column: 8, scope: !1346)
!1426 = !DILocation(line: 581, column: 3, scope: !1346)
!1427 = !DILocation(line: 581, column: 28, scope: !1346)
!1428 = !DILocation(line: 582, column: 1, scope: !1346)
!1429 = distinct !DISubprogram(name: "format_iproute", scope: !566, file: !566, line: 680, type: !1430, isLocal: false, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !234, !389, !231}
!1432 = !DILocalVariable(name: "route", arg: 1, scope: !1429, file: !566, line: 680, type: !234)
!1433 = !DILocation(line: 680, column: 28, scope: !1429)
!1434 = !DILocalVariable(name: "buf", arg: 2, scope: !1429, file: !566, line: 680, type: !389)
!1435 = !DILocation(line: 680, column: 41, scope: !1429)
!1436 = !DILocalVariable(name: "buf_len", arg: 3, scope: !1429, file: !566, line: 680, type: !231)
!1437 = !DILocation(line: 680, column: 53, scope: !1429)
!1438 = !DILocalVariable(name: "op", scope: !1429, file: !566, line: 682, type: !389)
!1439 = !DILocation(line: 682, column: 8, scope: !1429)
!1440 = !DILocation(line: 682, column: 13, scope: !1429)
!1441 = !DILocalVariable(name: "buf_end", scope: !1429, file: !566, line: 683, type: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!1444 = !DILocation(line: 683, column: 14, scope: !1429)
!1445 = !DILocation(line: 683, column: 24, scope: !1429)
!1446 = !DILocation(line: 683, column: 30, scope: !1429)
!1447 = !DILocation(line: 683, column: 28, scope: !1429)
!1448 = !DILocalVariable(name: "nh", scope: !1429, file: !566, line: 684, type: !1315)
!1449 = !DILocation(line: 684, column: 13, scope: !1429)
!1450 = !DILocalVariable(name: "ifp", scope: !1429, file: !566, line: 685, type: !294)
!1451 = !DILocation(line: 685, column: 15, scope: !1429)
!1452 = !DILocalVariable(name: "e", scope: !1429, file: !566, line: 686, type: !639)
!1453 = !DILocation(line: 686, column: 10, scope: !1429)
!1454 = !DILocation(line: 688, column: 6, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 688, column: 6)
!1456 = !DILocation(line: 688, column: 13, scope: !1455)
!1457 = !DILocation(line: 688, column: 18, scope: !1455)
!1458 = !DILocation(line: 688, column: 6, scope: !1429)
!1459 = !DILocation(line: 689, column: 26, scope: !1455)
!1460 = !DILocation(line: 689, column: 39, scope: !1455)
!1461 = !DILocation(line: 689, column: 49, scope: !1455)
!1462 = !DILocation(line: 689, column: 47, scope: !1455)
!1463 = !DILocation(line: 689, column: 82, scope: !1455)
!1464 = !DILocation(line: 689, column: 89, scope: !1455)
!1465 = !DILocation(line: 689, column: 61, scope: !1455)
!1466 = !DILocation(line: 689, column: 17, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1455, file: !566, discriminator: 1)
!1468 = !DILocation(line: 689, column: 9, scope: !1455)
!1469 = !DILocation(line: 689, column: 6, scope: !1455)
!1470 = !DILocation(line: 689, column: 3, scope: !1455)
!1471 = !DILocation(line: 690, column: 6, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 690, column: 6)
!1473 = !DILocation(line: 690, column: 13, scope: !1472)
!1474 = !DILocation(line: 690, column: 6, scope: !1429)
!1475 = !DILocation(line: 691, column: 26, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !566, line: 690, column: 18)
!1477 = !DILocation(line: 691, column: 39, scope: !1476)
!1478 = !DILocation(line: 691, column: 49, scope: !1476)
!1479 = !DILocation(line: 691, column: 47, scope: !1476)
!1480 = !DILocation(line: 691, column: 78, scope: !1476)
!1481 = !DILocation(line: 691, column: 85, scope: !1476)
!1482 = !DILocation(line: 691, column: 60, scope: !1476)
!1483 = !DILocation(line: 691, column: 17, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1476, file: !566, discriminator: 1)
!1485 = !DILocation(line: 691, column: 9, scope: !1476)
!1486 = !DILocation(line: 691, column: 6, scope: !1476)
!1487 = !DILocation(line: 692, column: 8, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1476, file: !566, line: 692, column: 7)
!1489 = !DILocation(line: 692, column: 15, scope: !1488)
!1490 = !DILocation(line: 692, column: 20, scope: !1488)
!1491 = !DILocation(line: 692, column: 24, scope: !1488)
!1492 = !DILocation(line: 692, column: 35, scope: !1488)
!1493 = !DILocation(line: 692, column: 45, scope: !1488)
!1494 = !DILocation(line: 692, column: 48, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1488, file: !566, discriminator: 1)
!1496 = !DILocation(line: 692, column: 55, scope: !1495)
!1497 = !DILocation(line: 692, column: 60, scope: !1495)
!1498 = !DILocation(line: 692, column: 64, scope: !1495)
!1499 = !DILocation(line: 692, column: 78, scope: !1495)
!1500 = !DILocation(line: 692, column: 86, scope: !1495)
!1501 = !DILocation(line: 693, column: 8, scope: !1488)
!1502 = !DILocation(line: 693, column: 15, scope: !1488)
!1503 = !DILocation(line: 693, column: 20, scope: !1488)
!1504 = !DILocation(line: 693, column: 24, scope: !1488)
!1505 = !DILocation(line: 693, column: 35, scope: !1488)
!1506 = !DILocation(line: 693, column: 46, scope: !1488)
!1507 = !DILocation(line: 693, column: 49, scope: !1495)
!1508 = !DILocation(line: 693, column: 56, scope: !1495)
!1509 = !DILocation(line: 693, column: 61, scope: !1495)
!1510 = !DILocation(line: 693, column: 65, scope: !1495)
!1511 = !DILocation(line: 693, column: 79, scope: !1495)
!1512 = !DILocation(line: 692, column: 7, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1476, file: !566, discriminator: 2)
!1514 = !DILocation(line: 694, column: 27, scope: !1488)
!1515 = !DILocation(line: 694, column: 40, scope: !1488)
!1516 = !DILocation(line: 694, column: 50, scope: !1488)
!1517 = !DILocation(line: 694, column: 48, scope: !1488)
!1518 = !DILocation(line: 694, column: 62, scope: !1488)
!1519 = !DILocation(line: 694, column: 69, scope: !1488)
!1520 = !DILocation(line: 694, column: 74, scope: !1488)
!1521 = !DILocation(line: 694, column: 78, scope: !1488)
!1522 = !DILocation(line: 694, column: 18, scope: !1488)
!1523 = !DILocation(line: 694, column: 10, scope: !1488)
!1524 = !DILocation(line: 694, column: 7, scope: !1488)
!1525 = !DILocation(line: 694, column: 4, scope: !1488)
!1526 = !DILocation(line: 695, column: 2, scope: !1476)
!1527 = !DILocation(line: 697, column: 26, scope: !1472)
!1528 = !DILocation(line: 697, column: 39, scope: !1472)
!1529 = !DILocation(line: 697, column: 49, scope: !1472)
!1530 = !DILocation(line: 697, column: 47, scope: !1472)
!1531 = !DILocation(line: 697, column: 17, scope: !1472)
!1532 = !DILocation(line: 697, column: 9, scope: !1472)
!1533 = !DILocation(line: 697, column: 6, scope: !1472)
!1534 = !DILocation(line: 699, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 699, column: 6)
!1536 = !DILocation(line: 699, column: 13, scope: !1535)
!1537 = !DILocation(line: 699, column: 6, scope: !1429)
!1538 = !DILocation(line: 700, column: 26, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !566, line: 699, column: 18)
!1540 = !DILocation(line: 700, column: 39, scope: !1539)
!1541 = !DILocation(line: 700, column: 49, scope: !1539)
!1542 = !DILocation(line: 700, column: 47, scope: !1539)
!1543 = !DILocation(line: 700, column: 84, scope: !1539)
!1544 = !DILocation(line: 700, column: 91, scope: !1539)
!1545 = !DILocation(line: 700, column: 66, scope: !1539)
!1546 = !DILocation(line: 700, column: 17, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1539, file: !566, discriminator: 1)
!1548 = !DILocation(line: 700, column: 9, scope: !1539)
!1549 = !DILocation(line: 700, column: 6, scope: !1539)
!1550 = !DILocation(line: 701, column: 8, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1539, file: !566, line: 701, column: 7)
!1552 = !DILocation(line: 701, column: 15, scope: !1551)
!1553 = !DILocation(line: 701, column: 20, scope: !1551)
!1554 = !DILocation(line: 701, column: 24, scope: !1551)
!1555 = !DILocation(line: 701, column: 35, scope: !1551)
!1556 = !DILocation(line: 701, column: 45, scope: !1551)
!1557 = !DILocation(line: 701, column: 48, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1551, file: !566, discriminator: 1)
!1559 = !DILocation(line: 701, column: 55, scope: !1558)
!1560 = !DILocation(line: 701, column: 60, scope: !1558)
!1561 = !DILocation(line: 701, column: 64, scope: !1558)
!1562 = !DILocation(line: 701, column: 78, scope: !1558)
!1563 = !DILocation(line: 701, column: 86, scope: !1558)
!1564 = !DILocation(line: 702, column: 8, scope: !1551)
!1565 = !DILocation(line: 702, column: 15, scope: !1551)
!1566 = !DILocation(line: 702, column: 20, scope: !1551)
!1567 = !DILocation(line: 702, column: 24, scope: !1551)
!1568 = !DILocation(line: 702, column: 35, scope: !1551)
!1569 = !DILocation(line: 702, column: 46, scope: !1551)
!1570 = !DILocation(line: 702, column: 49, scope: !1558)
!1571 = !DILocation(line: 702, column: 56, scope: !1558)
!1572 = !DILocation(line: 702, column: 61, scope: !1558)
!1573 = !DILocation(line: 702, column: 65, scope: !1558)
!1574 = !DILocation(line: 702, column: 79, scope: !1558)
!1575 = !DILocation(line: 701, column: 7, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1539, file: !566, discriminator: 2)
!1577 = !DILocation(line: 703, column: 27, scope: !1551)
!1578 = !DILocation(line: 703, column: 40, scope: !1551)
!1579 = !DILocation(line: 703, column: 50, scope: !1551)
!1580 = !DILocation(line: 703, column: 48, scope: !1551)
!1581 = !DILocation(line: 703, column: 62, scope: !1551)
!1582 = !DILocation(line: 703, column: 69, scope: !1551)
!1583 = !DILocation(line: 703, column: 74, scope: !1551)
!1584 = !DILocation(line: 703, column: 78, scope: !1551)
!1585 = !DILocation(line: 703, column: 18, scope: !1551)
!1586 = !DILocation(line: 703, column: 10, scope: !1551)
!1587 = !DILocation(line: 703, column: 7, scope: !1551)
!1588 = !DILocation(line: 703, column: 4, scope: !1551)
!1589 = !DILocation(line: 704, column: 2, scope: !1539)
!1590 = !DILocation(line: 712, column: 6, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 712, column: 6)
!1592 = !DILocation(line: 712, column: 13, scope: !1591)
!1593 = !DILocation(line: 712, column: 6, scope: !1429)
!1594 = !DILocation(line: 713, column: 26, scope: !1591)
!1595 = !DILocation(line: 713, column: 39, scope: !1591)
!1596 = !DILocation(line: 713, column: 49, scope: !1591)
!1597 = !DILocation(line: 713, column: 47, scope: !1591)
!1598 = !DILocation(line: 713, column: 83, scope: !1591)
!1599 = !DILocation(line: 713, column: 90, scope: !1591)
!1600 = !DILocation(line: 713, column: 65, scope: !1591)
!1601 = !DILocation(line: 713, column: 17, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1591, file: !566, discriminator: 1)
!1603 = !DILocation(line: 713, column: 9, scope: !1591)
!1604 = !DILocation(line: 713, column: 6, scope: !1591)
!1605 = !DILocation(line: 713, column: 3, scope: !1591)
!1606 = !DILocation(line: 715, column: 6, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 715, column: 6)
!1608 = !DILocation(line: 715, column: 13, scope: !1607)
!1609 = !DILocation(line: 715, column: 18, scope: !1607)
!1610 = !DILocation(line: 715, column: 6, scope: !1429)
!1611 = !DILocation(line: 716, column: 26, scope: !1607)
!1612 = !DILocation(line: 716, column: 39, scope: !1607)
!1613 = !DILocation(line: 716, column: 49, scope: !1607)
!1614 = !DILocation(line: 716, column: 47, scope: !1607)
!1615 = !DILocation(line: 716, column: 65, scope: !1607)
!1616 = !DILocation(line: 716, column: 72, scope: !1607)
!1617 = !DILocation(line: 716, column: 17, scope: !1607)
!1618 = !DILocation(line: 716, column: 9, scope: !1607)
!1619 = !DILocation(line: 716, column: 6, scope: !1607)
!1620 = !DILocation(line: 716, column: 3, scope: !1607)
!1621 = !DILocation(line: 719, column: 6, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 719, column: 6)
!1623 = !DILocation(line: 719, column: 13, scope: !1622)
!1624 = !DILocation(line: 719, column: 19, scope: !1622)
!1625 = !DILocation(line: 719, column: 24, scope: !1622)
!1626 = !DILocation(line: 719, column: 6, scope: !1429)
!1627 = !DILocation(line: 720, column: 21, scope: !1622)
!1628 = !DILocation(line: 720, column: 34, scope: !1622)
!1629 = !DILocation(line: 720, column: 44, scope: !1622)
!1630 = !DILocation(line: 720, column: 42, scope: !1622)
!1631 = !DILocation(line: 720, column: 50, scope: !1622)
!1632 = !DILocation(line: 720, column: 57, scope: !1622)
!1633 = !DILocation(line: 720, column: 9, scope: !1622)
!1634 = !DILocation(line: 720, column: 6, scope: !1622)
!1635 = !DILocation(line: 720, column: 3, scope: !1622)
!1636 = !DILocation(line: 723, column: 6, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 723, column: 6)
!1638 = !DILocation(line: 723, column: 13, scope: !1637)
!1639 = !DILocation(line: 723, column: 6, scope: !1429)
!1640 = !DILocation(line: 724, column: 26, scope: !1637)
!1641 = !DILocation(line: 724, column: 39, scope: !1637)
!1642 = !DILocation(line: 724, column: 49, scope: !1637)
!1643 = !DILocation(line: 724, column: 47, scope: !1637)
!1644 = !DILocation(line: 724, column: 68, scope: !1637)
!1645 = !DILocation(line: 724, column: 75, scope: !1637)
!1646 = !DILocation(line: 724, column: 80, scope: !1637)
!1647 = !DILocation(line: 724, column: 84, scope: !1637)
!1648 = !DILocation(line: 724, column: 95, scope: !1637)
!1649 = !DILocation(line: 724, column: 145, scope: !1637)
!1650 = !DILocation(line: 724, column: 152, scope: !1637)
!1651 = !DILocation(line: 724, column: 126, scope: !1637)
!1652 = !DILocation(line: 724, column: 17, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1637, file: !566, discriminator: 1)
!1654 = !DILocation(line: 724, column: 9, scope: !1637)
!1655 = !DILocation(line: 724, column: 6, scope: !1637)
!1656 = !DILocation(line: 724, column: 3, scope: !1637)
!1657 = !DILocation(line: 726, column: 6, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 726, column: 6)
!1659 = !DILocation(line: 726, column: 13, scope: !1658)
!1660 = !DILocation(line: 726, column: 6, scope: !1429)
!1661 = !DILocation(line: 727, column: 26, scope: !1658)
!1662 = !DILocation(line: 727, column: 39, scope: !1658)
!1663 = !DILocation(line: 727, column: 49, scope: !1658)
!1664 = !DILocation(line: 727, column: 47, scope: !1658)
!1665 = !DILocation(line: 727, column: 65, scope: !1658)
!1666 = !DILocation(line: 727, column: 72, scope: !1658)
!1667 = !DILocation(line: 727, column: 77, scope: !1658)
!1668 = !DILocation(line: 727, column: 17, scope: !1658)
!1669 = !DILocation(line: 727, column: 9, scope: !1658)
!1670 = !DILocation(line: 727, column: 6, scope: !1658)
!1671 = !DILocation(line: 727, column: 3, scope: !1658)
!1672 = !DILocation(line: 729, column: 6, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 729, column: 6)
!1674 = !DILocation(line: 729, column: 13, scope: !1673)
!1675 = !DILocation(line: 729, column: 19, scope: !1673)
!1676 = !DILocation(line: 729, column: 6, scope: !1429)
!1677 = !DILocation(line: 730, column: 26, scope: !1673)
!1678 = !DILocation(line: 730, column: 39, scope: !1673)
!1679 = !DILocation(line: 730, column: 49, scope: !1673)
!1680 = !DILocation(line: 730, column: 47, scope: !1673)
!1681 = !DILocation(line: 730, column: 67, scope: !1673)
!1682 = !DILocation(line: 730, column: 74, scope: !1673)
!1683 = !DILocation(line: 730, column: 17, scope: !1673)
!1684 = !DILocation(line: 730, column: 9, scope: !1673)
!1685 = !DILocation(line: 730, column: 6, scope: !1673)
!1686 = !DILocation(line: 730, column: 3, scope: !1673)
!1687 = !DILocation(line: 732, column: 6, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 732, column: 6)
!1689 = !DILocation(line: 732, column: 13, scope: !1688)
!1690 = !DILocation(line: 732, column: 18, scope: !1688)
!1691 = !DILocation(line: 732, column: 6, scope: !1429)
!1692 = !DILocation(line: 733, column: 26, scope: !1688)
!1693 = !DILocation(line: 733, column: 39, scope: !1688)
!1694 = !DILocation(line: 733, column: 49, scope: !1688)
!1695 = !DILocation(line: 733, column: 47, scope: !1688)
!1696 = !DILocation(line: 733, column: 67, scope: !1688)
!1697 = !DILocation(line: 733, column: 74, scope: !1688)
!1698 = !DILocation(line: 733, column: 17, scope: !1688)
!1699 = !DILocation(line: 733, column: 9, scope: !1688)
!1700 = !DILocation(line: 733, column: 6, scope: !1688)
!1701 = !DILocation(line: 733, column: 3, scope: !1688)
!1702 = !DILocation(line: 735, column: 6, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 735, column: 6)
!1704 = !DILocation(line: 735, column: 13, scope: !1703)
!1705 = !DILocation(line: 735, column: 18, scope: !1703)
!1706 = !DILocation(line: 735, column: 6, scope: !1429)
!1707 = !DILocation(line: 736, column: 26, scope: !1703)
!1708 = !DILocation(line: 736, column: 39, scope: !1703)
!1709 = !DILocation(line: 736, column: 49, scope: !1703)
!1710 = !DILocation(line: 736, column: 47, scope: !1703)
!1711 = !DILocation(line: 736, column: 67, scope: !1703)
!1712 = !DILocation(line: 736, column: 74, scope: !1703)
!1713 = !DILocation(line: 736, column: 17, scope: !1703)
!1714 = !DILocation(line: 736, column: 9, scope: !1703)
!1715 = !DILocation(line: 736, column: 6, scope: !1703)
!1716 = !DILocation(line: 736, column: 3, scope: !1703)
!1717 = !DILocation(line: 738, column: 6, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 738, column: 6)
!1719 = !DILocation(line: 738, column: 13, scope: !1718)
!1720 = !DILocation(line: 738, column: 18, scope: !1718)
!1721 = !DILocation(line: 738, column: 6, scope: !1429)
!1722 = !DILocation(line: 739, column: 26, scope: !1718)
!1723 = !DILocation(line: 739, column: 39, scope: !1718)
!1724 = !DILocation(line: 739, column: 49, scope: !1718)
!1725 = !DILocation(line: 739, column: 47, scope: !1718)
!1726 = !DILocation(line: 739, column: 68, scope: !1718)
!1727 = !DILocation(line: 739, column: 75, scope: !1718)
!1728 = !DILocation(line: 739, column: 17, scope: !1718)
!1729 = !DILocation(line: 739, column: 9, scope: !1718)
!1730 = !DILocation(line: 739, column: 6, scope: !1718)
!1731 = !DILocation(line: 739, column: 3, scope: !1718)
!1732 = !DILocation(line: 741, column: 6, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 741, column: 6)
!1734 = !DILocation(line: 741, column: 13, scope: !1733)
!1735 = !DILocation(line: 741, column: 20, scope: !1733)
!1736 = !DILocation(line: 741, column: 30, scope: !1733)
!1737 = !DILocation(line: 741, column: 33, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1733, file: !566, discriminator: 1)
!1739 = !DILocation(line: 741, column: 40, scope: !1738)
!1740 = !DILocation(line: 741, column: 46, scope: !1738)
!1741 = !DILocation(line: 741, column: 6, scope: !1738)
!1742 = !DILocation(line: 742, column: 26, scope: !1733)
!1743 = !DILocation(line: 742, column: 39, scope: !1733)
!1744 = !DILocation(line: 742, column: 49, scope: !1733)
!1745 = !DILocation(line: 742, column: 47, scope: !1733)
!1746 = !DILocation(line: 742, column: 17, scope: !1733)
!1747 = !DILocation(line: 742, column: 9, scope: !1733)
!1748 = !DILocation(line: 742, column: 6, scope: !1733)
!1749 = !DILocation(line: 742, column: 3, scope: !1733)
!1750 = !DILocation(line: 744, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 744, column: 6)
!1752 = !DILocation(line: 744, column: 13, scope: !1751)
!1753 = !DILocation(line: 744, column: 6, scope: !1429)
!1754 = !DILocation(line: 745, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !566, line: 745, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1751, file: !566, line: 744, column: 21)
!1757 = !DILocation(line: 745, column: 14, scope: !1755)
!1758 = !DILocation(line: 745, column: 21, scope: !1755)
!1759 = !DILocation(line: 745, column: 7, scope: !1756)
!1760 = !DILocation(line: 746, column: 27, scope: !1755)
!1761 = !DILocation(line: 746, column: 40, scope: !1755)
!1762 = !DILocation(line: 746, column: 50, scope: !1755)
!1763 = !DILocation(line: 746, column: 48, scope: !1755)
!1764 = !DILocation(line: 746, column: 70, scope: !1755)
!1765 = !DILocation(line: 746, column: 77, scope: !1755)
!1766 = !DILocation(line: 746, column: 84, scope: !1755)
!1767 = !DILocation(line: 746, column: 18, scope: !1755)
!1768 = !DILocation(line: 746, column: 10, scope: !1755)
!1769 = !DILocation(line: 746, column: 7, scope: !1755)
!1770 = !DILocation(line: 746, column: 4, scope: !1755)
!1771 = !DILocation(line: 748, column: 27, scope: !1755)
!1772 = !DILocation(line: 748, column: 40, scope: !1755)
!1773 = !DILocation(line: 748, column: 50, scope: !1755)
!1774 = !DILocation(line: 748, column: 48, scope: !1755)
!1775 = !DILocation(line: 748, column: 18, scope: !1755)
!1776 = !DILocation(line: 748, column: 10, scope: !1755)
!1777 = !DILocation(line: 748, column: 7, scope: !1755)
!1778 = !DILocation(line: 749, column: 26, scope: !1756)
!1779 = !DILocation(line: 749, column: 39, scope: !1756)
!1780 = !DILocation(line: 749, column: 49, scope: !1756)
!1781 = !DILocation(line: 749, column: 47, scope: !1756)
!1782 = !DILocation(line: 749, column: 60, scope: !1756)
!1783 = !DILocation(line: 749, column: 67, scope: !1756)
!1784 = !DILocation(line: 749, column: 74, scope: !1756)
!1785 = !DILocation(line: 749, column: 17, scope: !1756)
!1786 = !DILocation(line: 749, column: 9, scope: !1756)
!1787 = !DILocation(line: 749, column: 6, scope: !1756)
!1788 = !DILocation(line: 750, column: 2, scope: !1756)
!1789 = !DILocation(line: 758, column: 6, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 758, column: 6)
!1791 = !DILocation(line: 758, column: 13, scope: !1790)
!1792 = !DILocation(line: 758, column: 6, scope: !1429)
!1793 = !DILocation(line: 759, column: 26, scope: !1790)
!1794 = !DILocation(line: 759, column: 39, scope: !1790)
!1795 = !DILocation(line: 759, column: 49, scope: !1790)
!1796 = !DILocation(line: 759, column: 47, scope: !1790)
!1797 = !DILocation(line: 759, column: 71, scope: !1790)
!1798 = !DILocation(line: 759, column: 78, scope: !1790)
!1799 = !DILocation(line: 759, column: 87, scope: !1790)
!1800 = !DILocation(line: 759, column: 94, scope: !1790)
!1801 = !DILocation(line: 759, column: 99, scope: !1790)
!1802 = !DILocation(line: 759, column: 17, scope: !1790)
!1803 = !DILocation(line: 759, column: 9, scope: !1790)
!1804 = !DILocation(line: 759, column: 6, scope: !1790)
!1805 = !DILocation(line: 759, column: 3, scope: !1790)
!1806 = !DILocation(line: 762, column: 6, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 762, column: 6)
!1808 = !DILocation(line: 762, column: 13, scope: !1807)
!1809 = !DILocation(line: 762, column: 18, scope: !1807)
!1810 = !DILocation(line: 762, column: 6, scope: !1429)
!1811 = !DILocation(line: 763, column: 26, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !566, line: 762, column: 38)
!1813 = !DILocation(line: 763, column: 39, scope: !1812)
!1814 = !DILocation(line: 763, column: 49, scope: !1812)
!1815 = !DILocation(line: 763, column: 47, scope: !1812)
!1816 = !DILocation(line: 763, column: 71, scope: !1812)
!1817 = !DILocation(line: 763, column: 78, scope: !1812)
!1818 = !DILocation(line: 763, column: 83, scope: !1812)
!1819 = !DILocation(line: 763, column: 17, scope: !1812)
!1820 = !DILocation(line: 763, column: 9, scope: !1812)
!1821 = !DILocation(line: 763, column: 6, scope: !1812)
!1822 = !DILocation(line: 764, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1812, file: !566, line: 764, column: 7)
!1824 = !DILocation(line: 764, column: 14, scope: !1823)
!1825 = !DILocation(line: 764, column: 18, scope: !1823)
!1826 = !DILocation(line: 764, column: 7, scope: !1812)
!1827 = !DILocation(line: 765, column: 27, scope: !1823)
!1828 = !DILocation(line: 765, column: 40, scope: !1823)
!1829 = !DILocation(line: 765, column: 50, scope: !1823)
!1830 = !DILocation(line: 765, column: 48, scope: !1823)
!1831 = !DILocation(line: 765, column: 62, scope: !1823)
!1832 = !DILocation(line: 765, column: 69, scope: !1823)
!1833 = !DILocation(line: 765, column: 73, scope: !1823)
!1834 = !DILocation(line: 765, column: 18, scope: !1823)
!1835 = !DILocation(line: 765, column: 10, scope: !1823)
!1836 = !DILocation(line: 765, column: 7, scope: !1823)
!1837 = !DILocation(line: 765, column: 4, scope: !1823)
!1838 = !DILocation(line: 767, column: 27, scope: !1823)
!1839 = !DILocation(line: 767, column: 40, scope: !1823)
!1840 = !DILocation(line: 767, column: 50, scope: !1823)
!1841 = !DILocation(line: 767, column: 48, scope: !1823)
!1842 = !DILocation(line: 767, column: 63, scope: !1823)
!1843 = !DILocation(line: 767, column: 70, scope: !1823)
!1844 = !DILocation(line: 767, column: 74, scope: !1823)
!1845 = !DILocation(line: 767, column: 18, scope: !1823)
!1846 = !DILocation(line: 767, column: 10, scope: !1823)
!1847 = !DILocation(line: 767, column: 7, scope: !1823)
!1848 = !DILocation(line: 768, column: 2, scope: !1812)
!1849 = !DILocation(line: 770, column: 6, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 770, column: 6)
!1851 = !DILocation(line: 770, column: 13, scope: !1850)
!1852 = !DILocation(line: 770, column: 18, scope: !1850)
!1853 = !DILocation(line: 770, column: 6, scope: !1429)
!1854 = !DILocation(line: 771, column: 26, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !566, line: 770, column: 41)
!1856 = !DILocation(line: 771, column: 39, scope: !1855)
!1857 = !DILocation(line: 771, column: 49, scope: !1855)
!1858 = !DILocation(line: 771, column: 47, scope: !1855)
!1859 = !DILocation(line: 771, column: 74, scope: !1855)
!1860 = !DILocation(line: 771, column: 81, scope: !1855)
!1861 = !DILocation(line: 771, column: 86, scope: !1855)
!1862 = !DILocation(line: 771, column: 17, scope: !1855)
!1863 = !DILocation(line: 771, column: 9, scope: !1855)
!1864 = !DILocation(line: 771, column: 6, scope: !1855)
!1865 = !DILocation(line: 772, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1855, file: !566, line: 772, column: 7)
!1867 = !DILocation(line: 772, column: 14, scope: !1866)
!1868 = !DILocation(line: 772, column: 21, scope: !1866)
!1869 = !DILocation(line: 772, column: 7, scope: !1855)
!1870 = !DILocation(line: 773, column: 27, scope: !1866)
!1871 = !DILocation(line: 773, column: 40, scope: !1866)
!1872 = !DILocation(line: 773, column: 50, scope: !1866)
!1873 = !DILocation(line: 773, column: 48, scope: !1866)
!1874 = !DILocation(line: 773, column: 62, scope: !1866)
!1875 = !DILocation(line: 773, column: 69, scope: !1866)
!1876 = !DILocation(line: 773, column: 76, scope: !1866)
!1877 = !DILocation(line: 773, column: 18, scope: !1866)
!1878 = !DILocation(line: 773, column: 10, scope: !1866)
!1879 = !DILocation(line: 773, column: 7, scope: !1866)
!1880 = !DILocation(line: 773, column: 4, scope: !1866)
!1881 = !DILocation(line: 775, column: 27, scope: !1866)
!1882 = !DILocation(line: 775, column: 40, scope: !1866)
!1883 = !DILocation(line: 775, column: 50, scope: !1866)
!1884 = !DILocation(line: 775, column: 48, scope: !1866)
!1885 = !DILocation(line: 775, column: 63, scope: !1866)
!1886 = !DILocation(line: 775, column: 70, scope: !1866)
!1887 = !DILocation(line: 775, column: 77, scope: !1866)
!1888 = !DILocation(line: 775, column: 18, scope: !1866)
!1889 = !DILocation(line: 775, column: 10, scope: !1866)
!1890 = !DILocation(line: 775, column: 7, scope: !1866)
!1891 = !DILocation(line: 776, column: 2, scope: !1855)
!1892 = !DILocation(line: 778, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 778, column: 6)
!1894 = !DILocation(line: 778, column: 13, scope: !1893)
!1895 = !DILocation(line: 778, column: 18, scope: !1893)
!1896 = !DILocation(line: 778, column: 6, scope: !1429)
!1897 = !DILocation(line: 779, column: 26, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 778, column: 42)
!1899 = !DILocation(line: 779, column: 39, scope: !1898)
!1900 = !DILocation(line: 779, column: 49, scope: !1898)
!1901 = !DILocation(line: 779, column: 47, scope: !1898)
!1902 = !DILocation(line: 779, column: 75, scope: !1898)
!1903 = !DILocation(line: 779, column: 82, scope: !1898)
!1904 = !DILocation(line: 779, column: 87, scope: !1898)
!1905 = !DILocation(line: 779, column: 17, scope: !1898)
!1906 = !DILocation(line: 779, column: 9, scope: !1898)
!1907 = !DILocation(line: 779, column: 6, scope: !1898)
!1908 = !DILocation(line: 780, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1898, file: !566, line: 780, column: 7)
!1910 = !DILocation(line: 780, column: 14, scope: !1909)
!1911 = !DILocation(line: 780, column: 22, scope: !1909)
!1912 = !DILocation(line: 780, column: 7, scope: !1898)
!1913 = !DILocation(line: 781, column: 27, scope: !1909)
!1914 = !DILocation(line: 781, column: 40, scope: !1909)
!1915 = !DILocation(line: 781, column: 50, scope: !1909)
!1916 = !DILocation(line: 781, column: 48, scope: !1909)
!1917 = !DILocation(line: 781, column: 62, scope: !1909)
!1918 = !DILocation(line: 781, column: 69, scope: !1909)
!1919 = !DILocation(line: 781, column: 77, scope: !1909)
!1920 = !DILocation(line: 781, column: 18, scope: !1909)
!1921 = !DILocation(line: 781, column: 10, scope: !1909)
!1922 = !DILocation(line: 781, column: 7, scope: !1909)
!1923 = !DILocation(line: 781, column: 4, scope: !1909)
!1924 = !DILocation(line: 783, column: 27, scope: !1909)
!1925 = !DILocation(line: 783, column: 40, scope: !1909)
!1926 = !DILocation(line: 783, column: 50, scope: !1909)
!1927 = !DILocation(line: 783, column: 48, scope: !1909)
!1928 = !DILocation(line: 783, column: 63, scope: !1909)
!1929 = !DILocation(line: 783, column: 70, scope: !1909)
!1930 = !DILocation(line: 783, column: 18, scope: !1909)
!1931 = !DILocation(line: 783, column: 10, scope: !1909)
!1932 = !DILocation(line: 783, column: 7, scope: !1909)
!1933 = !DILocation(line: 784, column: 2, scope: !1898)
!1934 = !DILocation(line: 786, column: 6, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 786, column: 6)
!1936 = !DILocation(line: 786, column: 13, scope: !1935)
!1937 = !DILocation(line: 786, column: 6, scope: !1429)
!1938 = !DILocation(line: 787, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !566, line: 787, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !566, line: 786, column: 23)
!1941 = !DILocation(line: 787, column: 14, scope: !1939)
!1942 = !DILocation(line: 787, column: 23, scope: !1939)
!1943 = !DILocation(line: 787, column: 7, scope: !1940)
!1944 = !DILocation(line: 788, column: 27, scope: !1939)
!1945 = !DILocation(line: 788, column: 40, scope: !1939)
!1946 = !DILocation(line: 788, column: 50, scope: !1939)
!1947 = !DILocation(line: 788, column: 48, scope: !1939)
!1948 = !DILocation(line: 788, column: 18, scope: !1939)
!1949 = !DILocation(line: 788, column: 10, scope: !1939)
!1950 = !DILocation(line: 788, column: 7, scope: !1939)
!1951 = !DILocation(line: 788, column: 4, scope: !1939)
!1952 = !DILocation(line: 789, column: 2, scope: !1940)
!1953 = !DILocation(line: 791, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 791, column: 6)
!1955 = !DILocation(line: 791, column: 13, scope: !1954)
!1956 = !DILocation(line: 791, column: 18, scope: !1954)
!1957 = !DILocation(line: 791, column: 6, scope: !1429)
!1958 = !DILocation(line: 792, column: 26, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !566, line: 791, column: 38)
!1960 = !DILocation(line: 792, column: 39, scope: !1959)
!1961 = !DILocation(line: 792, column: 49, scope: !1959)
!1962 = !DILocation(line: 792, column: 47, scope: !1959)
!1963 = !DILocation(line: 793, column: 4, scope: !1959)
!1964 = !DILocation(line: 793, column: 11, scope: !1959)
!1965 = !DILocation(line: 793, column: 16, scope: !1959)
!1966 = !DILocation(line: 794, column: 4, scope: !1959)
!1967 = !DILocation(line: 794, column: 11, scope: !1959)
!1968 = !DILocation(line: 792, column: 17, scope: !1959)
!1969 = !DILocation(line: 792, column: 9, scope: !1959)
!1970 = !DILocation(line: 792, column: 6, scope: !1959)
!1971 = !DILocation(line: 795, column: 2, scope: !1959)
!1972 = !DILocation(line: 797, column: 6, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 797, column: 6)
!1974 = !DILocation(line: 797, column: 13, scope: !1973)
!1975 = !DILocation(line: 797, column: 18, scope: !1973)
!1976 = !DILocation(line: 797, column: 6, scope: !1429)
!1977 = !DILocation(line: 798, column: 26, scope: !1973)
!1978 = !DILocation(line: 798, column: 39, scope: !1973)
!1979 = !DILocation(line: 798, column: 49, scope: !1973)
!1980 = !DILocation(line: 798, column: 47, scope: !1973)
!1981 = !DILocation(line: 798, column: 68, scope: !1973)
!1982 = !DILocation(line: 798, column: 75, scope: !1973)
!1983 = !DILocation(line: 798, column: 17, scope: !1973)
!1984 = !DILocation(line: 798, column: 9, scope: !1973)
!1985 = !DILocation(line: 798, column: 6, scope: !1973)
!1986 = !DILocation(line: 798, column: 3, scope: !1973)
!1987 = !DILocation(line: 800, column: 6, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 800, column: 6)
!1989 = !DILocation(line: 800, column: 13, scope: !1988)
!1990 = !DILocation(line: 800, column: 18, scope: !1988)
!1991 = !DILocation(line: 800, column: 6, scope: !1429)
!1992 = !DILocation(line: 801, column: 26, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !566, line: 800, column: 43)
!1994 = !DILocation(line: 801, column: 39, scope: !1993)
!1995 = !DILocation(line: 801, column: 49, scope: !1993)
!1996 = !DILocation(line: 801, column: 47, scope: !1993)
!1997 = !DILocation(line: 802, column: 4, scope: !1993)
!1998 = !DILocation(line: 802, column: 11, scope: !1993)
!1999 = !DILocation(line: 802, column: 16, scope: !1993)
!2000 = !DILocation(line: 803, column: 4, scope: !1993)
!2001 = !DILocation(line: 803, column: 11, scope: !1993)
!2002 = !DILocation(line: 801, column: 17, scope: !1993)
!2003 = !DILocation(line: 801, column: 9, scope: !1993)
!2004 = !DILocation(line: 801, column: 6, scope: !1993)
!2005 = !DILocation(line: 804, column: 2, scope: !1993)
!2006 = !DILocation(line: 806, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 806, column: 6)
!2008 = !DILocation(line: 806, column: 13, scope: !2007)
!2009 = !DILocation(line: 806, column: 18, scope: !2007)
!2010 = !DILocation(line: 806, column: 6, scope: !1429)
!2011 = !DILocation(line: 807, column: 26, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !566, line: 806, column: 39)
!2013 = !DILocation(line: 807, column: 39, scope: !2012)
!2014 = !DILocation(line: 807, column: 49, scope: !2012)
!2015 = !DILocation(line: 807, column: 47, scope: !2012)
!2016 = !DILocation(line: 808, column: 4, scope: !2012)
!2017 = !DILocation(line: 808, column: 11, scope: !2012)
!2018 = !DILocation(line: 808, column: 16, scope: !2012)
!2019 = !DILocation(line: 809, column: 4, scope: !2012)
!2020 = !DILocation(line: 809, column: 11, scope: !2012)
!2021 = !DILocation(line: 807, column: 17, scope: !2012)
!2022 = !DILocation(line: 807, column: 9, scope: !2012)
!2023 = !DILocation(line: 807, column: 6, scope: !2012)
!2024 = !DILocation(line: 810, column: 2, scope: !2012)
!2025 = !DILocation(line: 812, column: 6, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 812, column: 6)
!2027 = !DILocation(line: 812, column: 13, scope: !2026)
!2028 = !DILocation(line: 812, column: 18, scope: !2026)
!2029 = !DILocation(line: 812, column: 6, scope: !1429)
!2030 = !DILocation(line: 813, column: 26, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2026, file: !566, line: 812, column: 41)
!2032 = !DILocation(line: 813, column: 39, scope: !2031)
!2033 = !DILocation(line: 813, column: 49, scope: !2031)
!2034 = !DILocation(line: 813, column: 47, scope: !2031)
!2035 = !DILocation(line: 814, column: 4, scope: !2031)
!2036 = !DILocation(line: 814, column: 11, scope: !2031)
!2037 = !DILocation(line: 814, column: 16, scope: !2031)
!2038 = !DILocation(line: 815, column: 4, scope: !2031)
!2039 = !DILocation(line: 815, column: 11, scope: !2031)
!2040 = !DILocation(line: 813, column: 17, scope: !2031)
!2041 = !DILocation(line: 813, column: 9, scope: !2031)
!2042 = !DILocation(line: 813, column: 6, scope: !2031)
!2043 = !DILocation(line: 816, column: 2, scope: !2031)
!2044 = !DILocation(line: 818, column: 6, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 818, column: 6)
!2046 = !DILocation(line: 818, column: 13, scope: !2045)
!2047 = !DILocation(line: 818, column: 18, scope: !2045)
!2048 = !DILocation(line: 818, column: 6, scope: !1429)
!2049 = !DILocation(line: 819, column: 26, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !566, line: 818, column: 45)
!2051 = !DILocation(line: 819, column: 39, scope: !2050)
!2052 = !DILocation(line: 819, column: 49, scope: !2050)
!2053 = !DILocation(line: 819, column: 47, scope: !2050)
!2054 = !DILocation(line: 820, column: 4, scope: !2050)
!2055 = !DILocation(line: 820, column: 11, scope: !2050)
!2056 = !DILocation(line: 820, column: 16, scope: !2050)
!2057 = !DILocation(line: 821, column: 4, scope: !2050)
!2058 = !DILocation(line: 821, column: 11, scope: !2050)
!2059 = !DILocation(line: 819, column: 17, scope: !2050)
!2060 = !DILocation(line: 819, column: 9, scope: !2050)
!2061 = !DILocation(line: 819, column: 6, scope: !2050)
!2062 = !DILocation(line: 822, column: 2, scope: !2050)
!2063 = !DILocation(line: 824, column: 6, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 824, column: 6)
!2065 = !DILocation(line: 824, column: 13, scope: !2064)
!2066 = !DILocation(line: 824, column: 18, scope: !2064)
!2067 = !DILocation(line: 824, column: 6, scope: !1429)
!2068 = !DILocation(line: 825, column: 26, scope: !2064)
!2069 = !DILocation(line: 825, column: 39, scope: !2064)
!2070 = !DILocation(line: 825, column: 49, scope: !2064)
!2071 = !DILocation(line: 825, column: 47, scope: !2064)
!2072 = !DILocation(line: 825, column: 70, scope: !2064)
!2073 = !DILocation(line: 825, column: 77, scope: !2064)
!2074 = !DILocation(line: 825, column: 17, scope: !2064)
!2075 = !DILocation(line: 825, column: 9, scope: !2064)
!2076 = !DILocation(line: 825, column: 6, scope: !2064)
!2077 = !DILocation(line: 825, column: 3, scope: !2064)
!2078 = !DILocation(line: 827, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 827, column: 6)
!2080 = !DILocation(line: 827, column: 13, scope: !2079)
!2081 = !DILocation(line: 827, column: 18, scope: !2079)
!2082 = !DILocation(line: 827, column: 6, scope: !1429)
!2083 = !DILocation(line: 828, column: 26, scope: !2079)
!2084 = !DILocation(line: 828, column: 39, scope: !2079)
!2085 = !DILocation(line: 828, column: 49, scope: !2079)
!2086 = !DILocation(line: 828, column: 47, scope: !2079)
!2087 = !DILocation(line: 828, column: 70, scope: !2079)
!2088 = !DILocation(line: 828, column: 77, scope: !2079)
!2089 = !DILocation(line: 828, column: 17, scope: !2079)
!2090 = !DILocation(line: 828, column: 9, scope: !2079)
!2091 = !DILocation(line: 828, column: 6, scope: !2079)
!2092 = !DILocation(line: 828, column: 3, scope: !2079)
!2093 = !DILocation(line: 830, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 830, column: 6)
!2095 = !DILocation(line: 830, column: 13, scope: !2094)
!2096 = !DILocation(line: 830, column: 18, scope: !2094)
!2097 = !DILocation(line: 830, column: 6, scope: !1429)
!2098 = !DILocation(line: 831, column: 26, scope: !2094)
!2099 = !DILocation(line: 831, column: 39, scope: !2094)
!2100 = !DILocation(line: 831, column: 49, scope: !2094)
!2101 = !DILocation(line: 831, column: 47, scope: !2094)
!2102 = !DILocation(line: 831, column: 70, scope: !2094)
!2103 = !DILocation(line: 831, column: 77, scope: !2094)
!2104 = !DILocation(line: 831, column: 17, scope: !2094)
!2105 = !DILocation(line: 831, column: 9, scope: !2094)
!2106 = !DILocation(line: 831, column: 6, scope: !2094)
!2107 = !DILocation(line: 831, column: 3, scope: !2094)
!2108 = !DILocation(line: 834, column: 6, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 834, column: 6)
!2110 = !DILocation(line: 834, column: 13, scope: !2109)
!2111 = !DILocation(line: 834, column: 18, scope: !2109)
!2112 = !DILocation(line: 834, column: 6, scope: !1429)
!2113 = !DILocation(line: 835, column: 26, scope: !2109)
!2114 = !DILocation(line: 835, column: 39, scope: !2109)
!2115 = !DILocation(line: 835, column: 49, scope: !2109)
!2116 = !DILocation(line: 835, column: 47, scope: !2109)
!2117 = !DILocation(line: 835, column: 70, scope: !2109)
!2118 = !DILocation(line: 835, column: 77, scope: !2109)
!2119 = !DILocation(line: 835, column: 17, scope: !2109)
!2120 = !DILocation(line: 835, column: 9, scope: !2109)
!2121 = !DILocation(line: 835, column: 6, scope: !2109)
!2122 = !DILocation(line: 835, column: 3, scope: !2109)
!2123 = !DILocation(line: 839, column: 6, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 839, column: 6)
!2125 = !DILocation(line: 839, column: 13, scope: !2124)
!2126 = !DILocation(line: 839, column: 18, scope: !2124)
!2127 = !DILocation(line: 839, column: 6, scope: !1429)
!2128 = !DILocation(line: 840, column: 26, scope: !2124)
!2129 = !DILocation(line: 840, column: 39, scope: !2124)
!2130 = !DILocation(line: 840, column: 49, scope: !2124)
!2131 = !DILocation(line: 840, column: 47, scope: !2124)
!2132 = !DILocation(line: 841, column: 4, scope: !2124)
!2133 = !DILocation(line: 841, column: 11, scope: !2124)
!2134 = !DILocation(line: 841, column: 16, scope: !2124)
!2135 = !DILocation(line: 841, column: 4, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2124, file: !566, discriminator: 1)
!2137 = !DILocation(line: 842, column: 4, scope: !2124)
!2138 = !DILocation(line: 842, column: 11, scope: !2124)
!2139 = !DILocation(line: 842, column: 16, scope: !2124)
!2140 = !DILocation(line: 842, column: 4, scope: !2136)
!2141 = !DILocation(line: 843, column: 4, scope: !2124)
!2142 = !DILocation(line: 843, column: 11, scope: !2124)
!2143 = !DILocation(line: 843, column: 16, scope: !2124)
!2144 = !DILocation(line: 842, column: 4, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2124, file: !566, discriminator: 2)
!2146 = !DILocation(line: 842, column: 4, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2124, file: !566, discriminator: 3)
!2148 = !DILocation(line: 841, column: 4, scope: !2145)
!2149 = !DILocation(line: 841, column: 4, scope: !2147)
!2150 = !DILocation(line: 840, column: 17, scope: !2136)
!2151 = !DILocation(line: 840, column: 9, scope: !2136)
!2152 = !DILocation(line: 840, column: 6, scope: !2136)
!2153 = !DILocation(line: 840, column: 3, scope: !2136)
!2154 = !DILocation(line: 852, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 852, column: 6)
!2156 = !DILocation(line: 852, column: 16, scope: !2155)
!2157 = !DILocation(line: 852, column: 21, scope: !2155)
!2158 = !DILocation(line: 852, column: 6, scope: !2155)
!2159 = !DILocation(line: 852, column: 11, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2155, file: !566, discriminator: 1)
!2161 = !DILocation(line: 852, column: 18, scope: !2160)
!2162 = !DILocation(line: 852, column: 24, scope: !2160)
!2163 = !DILocation(line: 852, column: 29, scope: !2160)
!2164 = !DILocation(line: 852, column: 6, scope: !2160)
!2165 = !DILocation(line: 852, column: 10, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2155, file: !566, discriminator: 2)
!2167 = !DILocation(line: 852, column: 17, scope: !2166)
!2168 = !DILocation(line: 852, column: 23, scope: !2166)
!2169 = !DILocation(line: 852, column: 28, scope: !2166)
!2170 = !DILocation(line: 852, column: 6, scope: !2166)
!2171 = !DILocation(line: 853, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !566, line: 853, column: 3)
!2173 = distinct !DILexicalBlock(scope: !2155, file: !566, line: 852, column: 10)
!2174 = !DILocation(line: 853, column: 22, scope: !2172)
!2175 = !DILocation(line: 853, column: 14, scope: !2172)
!2176 = !DILocation(line: 853, column: 13, scope: !2172)
!2177 = !DILocation(line: 853, column: 13, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2172, file: !566, discriminator: 1)
!2179 = !DILocation(line: 853, column: 14, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2172, file: !566, discriminator: 2)
!2181 = !DILocation(line: 853, column: 21, scope: !2180)
!2182 = !DILocation(line: 853, column: 27, scope: !2180)
!2183 = !DILocation(line: 853, column: 13, scope: !2180)
!2184 = !DILocation(line: 853, column: 13, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2172, file: !566, discriminator: 3)
!2186 = !DILocation(line: 853, column: 10, scope: !2185)
!2187 = !DILocation(line: 853, column: 8, scope: !2185)
!2188 = !DILocation(line: 853, column: 34, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2190, file: !566, discriminator: 4)
!2190 = distinct !DILexicalBlock(scope: !2172, file: !566, line: 853, column: 3)
!2191 = !DILocation(line: 853, column: 3, scope: !2189)
!2192 = !DILocation(line: 854, column: 11, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !566, line: 853, column: 56)
!2194 = !DILocation(line: 854, column: 15, scope: !2193)
!2195 = !DILocation(line: 854, column: 9, scope: !2193)
!2196 = !DILocation(line: 854, column: 7, scope: !2193)
!2197 = !DILocation(line: 856, column: 27, scope: !2193)
!2198 = !DILocation(line: 856, column: 40, scope: !2193)
!2199 = !DILocation(line: 856, column: 50, scope: !2193)
!2200 = !DILocation(line: 856, column: 48, scope: !2193)
!2201 = !DILocation(line: 856, column: 18, scope: !2193)
!2202 = !DILocation(line: 856, column: 10, scope: !2193)
!2203 = !DILocation(line: 856, column: 7, scope: !2193)
!2204 = !DILocation(line: 858, column: 8, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2193, file: !566, line: 858, column: 8)
!2206 = !DILocation(line: 858, column: 12, scope: !2205)
!2207 = !DILocation(line: 858, column: 8, scope: !2193)
!2208 = !DILocation(line: 859, column: 28, scope: !2205)
!2209 = !DILocation(line: 859, column: 41, scope: !2205)
!2210 = !DILocation(line: 859, column: 51, scope: !2205)
!2211 = !DILocation(line: 859, column: 49, scope: !2205)
!2212 = !DILocation(line: 860, column: 6, scope: !2205)
!2213 = !DILocation(line: 860, column: 10, scope: !2205)
!2214 = !DILocation(line: 860, column: 16, scope: !2205)
!2215 = !DILocation(line: 860, column: 20, scope: !2205)
!2216 = !DILocation(line: 860, column: 31, scope: !2205)
!2217 = !DILocation(line: 861, column: 23, scope: !2205)
!2218 = !DILocation(line: 861, column: 27, scope: !2205)
!2219 = !DILocation(line: 861, column: 6, scope: !2205)
!2220 = !DILocation(line: 859, column: 19, scope: !2205)
!2221 = !DILocation(line: 859, column: 11, scope: !2205)
!2222 = !DILocation(line: 859, column: 8, scope: !2205)
!2223 = !DILocation(line: 859, column: 5, scope: !2205)
!2224 = !DILocation(line: 862, column: 8, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2193, file: !566, line: 862, column: 8)
!2226 = !DILocation(line: 862, column: 12, scope: !2225)
!2227 = !DILocation(line: 862, column: 8, scope: !2193)
!2228 = !DILocation(line: 863, column: 28, scope: !2225)
!2229 = !DILocation(line: 863, column: 41, scope: !2225)
!2230 = !DILocation(line: 863, column: 51, scope: !2225)
!2231 = !DILocation(line: 863, column: 49, scope: !2225)
!2232 = !DILocation(line: 863, column: 67, scope: !2225)
!2233 = !DILocation(line: 863, column: 71, scope: !2225)
!2234 = !DILocation(line: 863, column: 76, scope: !2225)
!2235 = !DILocation(line: 863, column: 19, scope: !2225)
!2236 = !DILocation(line: 863, column: 11, scope: !2225)
!2237 = !DILocation(line: 863, column: 8, scope: !2225)
!2238 = !DILocation(line: 863, column: 5, scope: !2225)
!2239 = !DILocation(line: 865, column: 8, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2193, file: !566, line: 865, column: 8)
!2241 = !DILocation(line: 865, column: 12, scope: !2240)
!2242 = !DILocation(line: 865, column: 17, scope: !2240)
!2243 = !DILocation(line: 865, column: 8, scope: !2193)
!2244 = !DILocation(line: 866, column: 28, scope: !2240)
!2245 = !DILocation(line: 866, column: 41, scope: !2240)
!2246 = !DILocation(line: 866, column: 51, scope: !2240)
!2247 = !DILocation(line: 866, column: 49, scope: !2240)
!2248 = !DILocation(line: 866, column: 70, scope: !2240)
!2249 = !DILocation(line: 866, column: 74, scope: !2240)
!2250 = !DILocation(line: 866, column: 81, scope: !2240)
!2251 = !DILocation(line: 866, column: 19, scope: !2240)
!2252 = !DILocation(line: 866, column: 11, scope: !2240)
!2253 = !DILocation(line: 866, column: 8, scope: !2240)
!2254 = !DILocation(line: 866, column: 5, scope: !2240)
!2255 = !DILocation(line: 868, column: 8, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2193, file: !566, line: 868, column: 8)
!2257 = !DILocation(line: 868, column: 12, scope: !2256)
!2258 = !DILocation(line: 868, column: 18, scope: !2256)
!2259 = !DILocation(line: 868, column: 8, scope: !2193)
!2260 = !DILocation(line: 869, column: 28, scope: !2256)
!2261 = !DILocation(line: 869, column: 41, scope: !2256)
!2262 = !DILocation(line: 869, column: 51, scope: !2256)
!2263 = !DILocation(line: 869, column: 49, scope: !2256)
!2264 = !DILocation(line: 869, column: 19, scope: !2256)
!2265 = !DILocation(line: 869, column: 11, scope: !2256)
!2266 = !DILocation(line: 869, column: 8, scope: !2256)
!2267 = !DILocation(line: 869, column: 5, scope: !2256)
!2268 = !DILocation(line: 871, column: 8, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2193, file: !566, line: 871, column: 8)
!2270 = !DILocation(line: 871, column: 12, scope: !2269)
!2271 = !DILocation(line: 871, column: 8, scope: !2193)
!2272 = !DILocation(line: 872, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !566, line: 872, column: 9)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !566, line: 871, column: 20)
!2275 = !DILocation(line: 872, column: 16, scope: !2273)
!2276 = !DILocation(line: 872, column: 23, scope: !2273)
!2277 = !DILocation(line: 872, column: 9, scope: !2274)
!2278 = !DILocation(line: 873, column: 29, scope: !2273)
!2279 = !DILocation(line: 873, column: 42, scope: !2273)
!2280 = !DILocation(line: 873, column: 52, scope: !2273)
!2281 = !DILocation(line: 873, column: 50, scope: !2273)
!2282 = !DILocation(line: 873, column: 72, scope: !2273)
!2283 = !DILocation(line: 873, column: 76, scope: !2273)
!2284 = !DILocation(line: 873, column: 83, scope: !2273)
!2285 = !DILocation(line: 873, column: 20, scope: !2273)
!2286 = !DILocation(line: 873, column: 12, scope: !2273)
!2287 = !DILocation(line: 873, column: 9, scope: !2273)
!2288 = !DILocation(line: 873, column: 6, scope: !2273)
!2289 = !DILocation(line: 875, column: 29, scope: !2273)
!2290 = !DILocation(line: 875, column: 42, scope: !2273)
!2291 = !DILocation(line: 875, column: 52, scope: !2273)
!2292 = !DILocation(line: 875, column: 50, scope: !2273)
!2293 = !DILocation(line: 875, column: 20, scope: !2273)
!2294 = !DILocation(line: 875, column: 12, scope: !2273)
!2295 = !DILocation(line: 875, column: 9, scope: !2273)
!2296 = !DILocation(line: 876, column: 28, scope: !2274)
!2297 = !DILocation(line: 876, column: 41, scope: !2274)
!2298 = !DILocation(line: 876, column: 51, scope: !2274)
!2299 = !DILocation(line: 876, column: 49, scope: !2274)
!2300 = !DILocation(line: 876, column: 62, scope: !2274)
!2301 = !DILocation(line: 876, column: 66, scope: !2274)
!2302 = !DILocation(line: 876, column: 73, scope: !2274)
!2303 = !DILocation(line: 876, column: 19, scope: !2274)
!2304 = !DILocation(line: 876, column: 11, scope: !2274)
!2305 = !DILocation(line: 876, column: 8, scope: !2274)
!2306 = !DILocation(line: 877, column: 4, scope: !2274)
!2307 = !DILocation(line: 879, column: 8, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2193, file: !566, line: 879, column: 8)
!2309 = !DILocation(line: 879, column: 12, scope: !2308)
!2310 = !DILocation(line: 879, column: 18, scope: !2308)
!2311 = !DILocation(line: 879, column: 23, scope: !2308)
!2312 = !DILocation(line: 879, column: 8, scope: !2193)
!2313 = !DILocation(line: 880, column: 23, scope: !2308)
!2314 = !DILocation(line: 880, column: 36, scope: !2308)
!2315 = !DILocation(line: 880, column: 46, scope: !2308)
!2316 = !DILocation(line: 880, column: 44, scope: !2308)
!2317 = !DILocation(line: 880, column: 52, scope: !2308)
!2318 = !DILocation(line: 880, column: 56, scope: !2308)
!2319 = !DILocation(line: 880, column: 11, scope: !2308)
!2320 = !DILocation(line: 880, column: 8, scope: !2308)
!2321 = !DILocation(line: 880, column: 5, scope: !2308)
!2322 = !DILocation(line: 882, column: 3, scope: !2193)
!2323 = !DILocation(line: 853, column: 45, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2190, file: !566, discriminator: 5)
!2325 = !DILocation(line: 853, column: 49, scope: !2324)
!2326 = !DILocation(line: 853, column: 42, scope: !2324)
!2327 = !DILocation(line: 853, column: 3, scope: !2324)
!2328 = distinct !{!2328, !2329}
!2329 = !DILocation(line: 853, column: 3, scope: !2173)
!2330 = !DILocation(line: 883, column: 2, scope: !2173)
!2331 = !DILocation(line: 885, column: 6, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 885, column: 6)
!2333 = !DILocation(line: 885, column: 13, scope: !2332)
!2334 = !DILocation(line: 885, column: 6, scope: !1429)
!2335 = !DILocation(line: 886, column: 26, scope: !2332)
!2336 = !DILocation(line: 886, column: 39, scope: !2332)
!2337 = !DILocation(line: 886, column: 49, scope: !2332)
!2338 = !DILocation(line: 886, column: 47, scope: !2332)
!2339 = !DILocation(line: 886, column: 17, scope: !2332)
!2340 = !DILocation(line: 886, column: 9, scope: !2332)
!2341 = !DILocation(line: 886, column: 6, scope: !2332)
!2342 = !DILocation(line: 886, column: 3, scope: !2332)
!2343 = !DILocation(line: 888, column: 6, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 888, column: 6)
!2345 = !DILocation(line: 888, column: 13, scope: !2344)
!2346 = !DILocation(line: 888, column: 6, scope: !1429)
!2347 = !DILocation(line: 889, column: 26, scope: !2344)
!2348 = !DILocation(line: 889, column: 39, scope: !2344)
!2349 = !DILocation(line: 889, column: 49, scope: !2344)
!2350 = !DILocation(line: 889, column: 47, scope: !2344)
!2351 = !DILocation(line: 889, column: 73, scope: !2344)
!2352 = !DILocation(line: 889, column: 80, scope: !2344)
!2353 = !DILocation(line: 889, column: 93, scope: !2344)
!2354 = !DILocation(line: 889, column: 17, scope: !2344)
!2355 = !DILocation(line: 889, column: 9, scope: !2344)
!2356 = !DILocation(line: 889, column: 6, scope: !2344)
!2357 = !DILocation(line: 889, column: 3, scope: !2344)
!2358 = !DILocation(line: 891, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !1429, file: !566, line: 891, column: 6)
!2360 = !DILocation(line: 891, column: 13, scope: !2359)
!2361 = !DILocation(line: 891, column: 17, scope: !2359)
!2362 = !DILocation(line: 892, column: 7, scope: !2359)
!2363 = !DILocation(line: 892, column: 14, scope: !2359)
!2364 = !DILocation(line: 892, column: 25, scope: !2359)
!2365 = !DILocation(line: 893, column: 8, scope: !2359)
!2366 = !DILocation(line: 893, column: 15, scope: !2359)
!2367 = !DILocation(line: 893, column: 19, scope: !2359)
!2368 = !DILocation(line: 893, column: 22, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2359, file: !566, discriminator: 1)
!2370 = !DILocation(line: 893, column: 29, scope: !2369)
!2371 = !DILocation(line: 893, column: 34, scope: !2369)
!2372 = !DILocation(line: 893, column: 45, scope: !2369)
!2373 = !DILocation(line: 893, column: 52, scope: !2369)
!2374 = !DILocation(line: 893, column: 42, scope: !2369)
!2375 = !DILocation(line: 891, column: 6, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !1429, file: !566, discriminator: 1)
!2377 = !DILocation(line: 894, column: 32, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !566, line: 894, column: 7)
!2379 = distinct !DILexicalBlock(scope: !2359, file: !566, line: 893, column: 73)
!2380 = !DILocation(line: 894, column: 39, scope: !2378)
!2381 = !DILocation(line: 894, column: 14, scope: !2378)
!2382 = !DILocation(line: 894, column: 12, scope: !2378)
!2383 = !DILocation(line: 894, column: 7, scope: !2379)
!2384 = !DILocation(line: 895, column: 27, scope: !2378)
!2385 = !DILocation(line: 895, column: 40, scope: !2378)
!2386 = !DILocation(line: 895, column: 50, scope: !2378)
!2387 = !DILocation(line: 895, column: 48, scope: !2378)
!2388 = !DILocation(line: 895, column: 68, scope: !2378)
!2389 = !DILocation(line: 895, column: 73, scope: !2378)
!2390 = !DILocation(line: 895, column: 18, scope: !2378)
!2391 = !DILocation(line: 895, column: 10, scope: !2378)
!2392 = !DILocation(line: 895, column: 7, scope: !2378)
!2393 = !DILocation(line: 895, column: 4, scope: !2378)
!2394 = !DILocation(line: 897, column: 27, scope: !2378)
!2395 = !DILocation(line: 897, column: 40, scope: !2378)
!2396 = !DILocation(line: 897, column: 50, scope: !2378)
!2397 = !DILocation(line: 897, column: 48, scope: !2378)
!2398 = !DILocation(line: 897, column: 82, scope: !2378)
!2399 = !DILocation(line: 897, column: 89, scope: !2378)
!2400 = !DILocation(line: 897, column: 18, scope: !2378)
!2401 = !DILocation(line: 897, column: 10, scope: !2378)
!2402 = !DILocation(line: 897, column: 7, scope: !2378)
!2403 = !DILocation(line: 898, column: 2, scope: !2379)
!2404 = !DILocation(line: 899, column: 1, scope: !1429)
!2405 = distinct !DISubprogram(name: "print_encap", scope: !566, file: !566, line: 658, type: !2406, isLocal: true, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!231, !389, !231, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64, align: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!2410 = !DILocalVariable(name: "op", arg: 1, scope: !2405, file: !566, line: 658, type: !389)
!2411 = !DILocation(line: 658, column: 19, scope: !2405)
!2412 = !DILocalVariable(name: "len", arg: 2, scope: !2405, file: !566, line: 658, type: !231)
!2413 = !DILocation(line: 658, column: 30, scope: !2405)
!2414 = !DILocalVariable(name: "encap", arg: 3, scope: !2405, file: !566, line: 658, type: !2408)
!2415 = !DILocation(line: 658, column: 50, scope: !2405)
!2416 = !DILocation(line: 660, column: 10, scope: !2405)
!2417 = !DILocation(line: 660, column: 17, scope: !2405)
!2418 = !DILocation(line: 660, column: 2, scope: !2405)
!2419 = !DILocation(line: 663, column: 27, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2405, file: !566, line: 660, column: 23)
!2421 = !DILocation(line: 663, column: 31, scope: !2420)
!2422 = !DILocation(line: 663, column: 36, scope: !2420)
!2423 = !DILocation(line: 663, column: 10, scope: !2420)
!2424 = !DILocation(line: 663, column: 3, scope: !2420)
!2425 = !DILocation(line: 666, column: 25, scope: !2420)
!2426 = !DILocation(line: 666, column: 29, scope: !2420)
!2427 = !DILocation(line: 666, column: 34, scope: !2420)
!2428 = !DILocation(line: 666, column: 10, scope: !2420)
!2429 = !DILocation(line: 666, column: 3, scope: !2420)
!2430 = !DILocation(line: 669, column: 26, scope: !2420)
!2431 = !DILocation(line: 669, column: 30, scope: !2420)
!2432 = !DILocation(line: 669, column: 35, scope: !2420)
!2433 = !DILocation(line: 669, column: 10, scope: !2420)
!2434 = !DILocation(line: 669, column: 3, scope: !2420)
!2435 = !DILocation(line: 672, column: 26, scope: !2420)
!2436 = !DILocation(line: 672, column: 30, scope: !2420)
!2437 = !DILocation(line: 672, column: 35, scope: !2420)
!2438 = !DILocation(line: 672, column: 10, scope: !2420)
!2439 = !DILocation(line: 672, column: 3, scope: !2420)
!2440 = !DILocation(line: 675, column: 26, scope: !2405)
!2441 = !DILocation(line: 675, column: 30, scope: !2405)
!2442 = !DILocation(line: 675, column: 60, scope: !2405)
!2443 = !DILocation(line: 675, column: 67, scope: !2405)
!2444 = !DILocation(line: 675, column: 17, scope: !2405)
!2445 = !DILocation(line: 675, column: 9, scope: !2405)
!2446 = !DILocation(line: 675, column: 2, scope: !2405)
!2447 = !DILocation(line: 676, column: 1, scope: !2405)
!2448 = distinct !DISubprogram(name: "dump_iproute", scope: !566, file: !566, line: 902, type: !379, isLocal: false, isDefinition: true, scopeLine: 903, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!2449 = !DILocalVariable(name: "fp", arg: 1, scope: !2448, file: !566, line: 902, type: !381)
!2450 = !DILocation(line: 902, column: 20, scope: !2448)
!2451 = !DILocalVariable(name: "rt_data", arg: 2, scope: !2448, file: !566, line: 902, type: !229)
!2452 = !DILocation(line: 902, column: 30, scope: !2448)
!2453 = !DILocalVariable(name: "route", scope: !2448, file: !566, line: 904, type: !234)
!2454 = !DILocation(line: 904, column: 14, scope: !2448)
!2455 = !DILocation(line: 904, column: 22, scope: !2448)
!2456 = !DILocalVariable(name: "buf", scope: !2448, file: !566, line: 905, type: !389)
!2457 = !DILocation(line: 905, column: 8, scope: !2448)
!2458 = !DILocation(line: 905, column: 15, scope: !2448)
!2459 = !DILocalVariable(name: "len", scope: !2448, file: !566, line: 906, type: !231)
!2460 = !DILocation(line: 906, column: 9, scope: !2448)
!2461 = !DILocalVariable(name: "i", scope: !2448, file: !566, line: 907, type: !231)
!2462 = !DILocation(line: 907, column: 9, scope: !2448)
!2463 = !DILocation(line: 909, column: 17, scope: !2448)
!2464 = !DILocation(line: 909, column: 24, scope: !2448)
!2465 = !DILocation(line: 909, column: 2, scope: !2448)
!2466 = !DILocation(line: 911, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2448, file: !566, line: 911, column: 6)
!2468 = !DILocation(line: 911, column: 6, scope: !2448)
!2469 = !DILocation(line: 912, column: 14, scope: !2467)
!2470 = !DILocation(line: 912, column: 34, scope: !2467)
!2471 = !DILocation(line: 912, column: 3, scope: !2467)
!2472 = !DILocation(line: 914, column: 10, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !566, line: 914, column: 3)
!2474 = distinct !DILexicalBlock(scope: !2467, file: !566, line: 913, column: 7)
!2475 = !DILocation(line: 914, column: 28, scope: !2473)
!2476 = !DILocation(line: 914, column: 21, scope: !2473)
!2477 = !DILocation(line: 914, column: 19, scope: !2473)
!2478 = !DILocation(line: 914, column: 8, scope: !2473)
!2479 = !DILocation(line: 914, column: 34, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2481, file: !566, discriminator: 1)
!2481 = distinct !DILexicalBlock(scope: !2473, file: !566, line: 914, column: 3)
!2482 = !DILocation(line: 914, column: 38, scope: !2480)
!2483 = !DILocation(line: 914, column: 36, scope: !2480)
!2484 = !DILocation(line: 914, column: 3, scope: !2480)
!2485 = !DILocation(line: 915, column: 15, scope: !2481)
!2486 = !DILocation(line: 915, column: 28, scope: !2481)
!2487 = !DILocation(line: 915, column: 43, scope: !2481)
!2488 = !DILocation(line: 915, column: 49, scope: !2481)
!2489 = !DILocation(line: 915, column: 47, scope: !2481)
!2490 = !DILocation(line: 915, column: 4, scope: !2481)
!2491 = !DILocation(line: 914, column: 48, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2481, file: !566, discriminator: 2)
!2493 = !DILocation(line: 914, column: 45, scope: !2492)
!2494 = !DILocation(line: 914, column: 3, scope: !2492)
!2495 = distinct !{!2495, !2496}
!2496 = !DILocation(line: 914, column: 3, scope: !2474)
!2497 = !DILocation(line: 918, column: 8, scope: !2448)
!2498 = !DILocation(line: 918, column: 3, scope: !2448)
!2499 = !DILocation(line: 918, column: 20, scope: !2448)
!2500 = !DILocation(line: 919, column: 1, scope: !2448)
!2501 = distinct !DISubprogram(name: "alloc_route", scope: !566, file: !566, line: 1286, type: !2502, isLocal: false, isDefinition: true, scopeLine: 1287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !359, !453, !307}
!2504 = !DILocalVariable(name: "rt_list", arg: 1, scope: !2501, file: !566, line: 1286, type: !359)
!2505 = !DILocation(line: 1286, column: 18, scope: !2501)
!2506 = !DILocalVariable(name: "strvec", arg: 2, scope: !2501, file: !566, line: 1286, type: !453)
!2507 = !DILocation(line: 1286, column: 37, scope: !2501)
!2508 = !DILocalVariable(name: "allow_track_group", arg: 3, scope: !2501, file: !566, line: 1286, type: !307)
!2509 = !DILocation(line: 1286, column: 49, scope: !2501)
!2510 = !DILocalVariable(name: "new", scope: !2501, file: !566, line: 1288, type: !234)
!2511 = !DILocation(line: 1288, column: 14, scope: !2501)
!2512 = !DILocalVariable(name: "ifp", scope: !2501, file: !566, line: 1289, type: !294)
!2513 = !DILocation(line: 1289, column: 15, scope: !2501)
!2514 = !DILocalVariable(name: "str", scope: !2501, file: !566, line: 1290, type: !389)
!2515 = !DILocation(line: 1290, column: 8, scope: !2501)
!2516 = !DILocalVariable(name: "val", scope: !2501, file: !566, line: 1291, type: !270)
!2517 = !DILocation(line: 1291, column: 11, scope: !2501)
!2518 = !DILocalVariable(name: "val8", scope: !2501, file: !566, line: 1292, type: !281)
!2519 = !DILocation(line: 1292, column: 10, scope: !2501)
!2520 = !DILocalVariable(name: "i", scope: !2501, file: !566, line: 1293, type: !257)
!2521 = !DILocation(line: 1293, column: 15, scope: !2501)
!2522 = !DILocalVariable(name: "do_nexthop", scope: !2501, file: !566, line: 1294, type: !307)
!2523 = !DILocation(line: 1294, column: 6, scope: !2501)
!2524 = !DILocalVariable(name: "raw", scope: !2501, file: !566, line: 1295, type: !307)
!2525 = !DILocation(line: 1295, column: 6, scope: !2501)
!2526 = !DILocalVariable(name: "dst", scope: !2501, file: !566, line: 1296, type: !239)
!2527 = !DILocation(line: 1296, column: 16, scope: !2501)
!2528 = !DILocalVariable(name: "family", scope: !2501, file: !566, line: 1297, type: !281)
!2529 = !DILocation(line: 1297, column: 10, scope: !2501)
!2530 = !DILocalVariable(name: "dest", scope: !2501, file: !566, line: 1298, type: !389)
!2531 = !DILocation(line: 1298, column: 8, scope: !2501)
!2532 = !DILocation(line: 1300, column: 24, scope: !2501)
!2533 = !DILocation(line: 1300, column: 8, scope: !2501)
!2534 = !DILocation(line: 1300, column: 6, scope: !2501)
!2535 = !DILocation(line: 1302, column: 2, scope: !2501)
!2536 = !DILocation(line: 1302, column: 7, scope: !2501)
!2537 = !DILocation(line: 1302, column: 13, scope: !2501)
!2538 = !DILocation(line: 1303, column: 2, scope: !2501)
!2539 = !DILocation(line: 1303, column: 7, scope: !2501)
!2540 = !DILocation(line: 1303, column: 13, scope: !2501)
!2541 = !DILocation(line: 1304, column: 2, scope: !2501)
!2542 = !DILocation(line: 1304, column: 7, scope: !2501)
!2543 = !DILocation(line: 1304, column: 12, scope: !2501)
!2544 = !DILocation(line: 1305, column: 2, scope: !2501)
!2545 = !DILocation(line: 1305, column: 7, scope: !2501)
!2546 = !DILocation(line: 1305, column: 14, scope: !2501)
!2547 = !DILocation(line: 1308, column: 2, scope: !2501)
!2548 = !DILocation(line: 1308, column: 9, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2501, file: !566, discriminator: 1)
!2550 = !DILocation(line: 1308, column: 15, scope: !2549)
!2551 = !DILocation(line: 1308, column: 24, scope: !2549)
!2552 = !DILocation(line: 1308, column: 11, scope: !2549)
!2553 = !DILocation(line: 1308, column: 2, scope: !2549)
!2554 = !DILocation(line: 1309, column: 21, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2501, file: !566, line: 1308, column: 36)
!2556 = !DILocation(line: 1309, column: 29, scope: !2555)
!2557 = !DILocation(line: 1309, column: 9, scope: !2555)
!2558 = !DILocation(line: 1309, column: 7, scope: !2555)
!2559 = !DILocation(line: 1312, column: 15, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !566, line: 1312, column: 7)
!2561 = !DILocation(line: 1312, column: 8, scope: !2560)
!2562 = !DILocation(line: 1312, column: 7, scope: !2555)
!2563 = !DILocation(line: 1313, column: 8, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !566, line: 1313, column: 8)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !566, line: 1312, column: 28)
!2566 = !DILocation(line: 1313, column: 13, scope: !2564)
!2567 = !DILocation(line: 1313, column: 8, scope: !2565)
!2568 = !DILocation(line: 1314, column: 11, scope: !2564)
!2569 = !DILocation(line: 1314, column: 16, scope: !2564)
!2570 = !DILocation(line: 1314, column: 6, scope: !2564)
!2571 = !DILocation(line: 1314, column: 28, scope: !2564)
!2572 = !DILocation(line: 1314, column: 33, scope: !2564)
!2573 = !DILocation(line: 1314, column: 43, scope: !2564)
!2574 = !DILocation(line: 1314, column: 5, scope: !2564)
!2575 = !DILocation(line: 1315, column: 53, scope: !2565)
!2576 = !DILocation(line: 1315, column: 61, scope: !2565)
!2577 = !DILocation(line: 1315, column: 41, scope: !2565)
!2578 = !DILocation(line: 1315, column: 20, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2565, file: !566, discriminator: 1)
!2580 = !DILocation(line: 1315, column: 4, scope: !2565)
!2581 = !DILocation(line: 1315, column: 9, scope: !2565)
!2582 = !DILocation(line: 1315, column: 18, scope: !2565)
!2583 = !DILocation(line: 1316, column: 9, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2565, file: !566, line: 1316, column: 8)
!2585 = !DILocation(line: 1316, column: 14, scope: !2584)
!2586 = !DILocation(line: 1316, column: 8, scope: !2565)
!2587 = !DILocation(line: 1317, column: 99, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !566, line: 1316, column: 24)
!2589 = !DILocation(line: 1317, column: 106, scope: !2588)
!2590 = !DILocation(line: 1317, column: 87, scope: !2588)
!2591 = !DILocation(line: 1317, column: 5, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2588, file: !566, discriminator: 1)
!2593 = !DILocation(line: 1318, column: 1, scope: !2588)
!2594 = !DILocation(line: 1319, column: 5, scope: !2588)
!2595 = !DILocation(line: 1321, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2565, file: !566, line: 1321, column: 8)
!2597 = !DILocation(line: 1321, column: 13, scope: !2596)
!2598 = !DILocation(line: 1321, column: 20, scope: !2596)
!2599 = !DILocation(line: 1321, column: 8, scope: !2565)
!2600 = !DILocation(line: 1321, column: 19, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2596, file: !566, discriminator: 1)
!2602 = !DILocation(line: 1321, column: 24, scope: !2601)
!2603 = !DILocation(line: 1321, column: 34, scope: !2601)
!2604 = !DILocation(line: 1321, column: 38, scope: !2601)
!2605 = !DILocation(line: 1321, column: 5, scope: !2601)
!2606 = !DILocation(line: 1321, column: 10, scope: !2601)
!2607 = !DILocation(line: 1321, column: 17, scope: !2601)
!2608 = !DILocation(line: 1322, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2596, file: !566, line: 1322, column: 13)
!2610 = !DILocation(line: 1322, column: 18, scope: !2609)
!2611 = !DILocation(line: 1322, column: 28, scope: !2609)
!2612 = !DILocation(line: 1322, column: 33, scope: !2609)
!2613 = !DILocation(line: 1322, column: 43, scope: !2609)
!2614 = !DILocation(line: 1322, column: 47, scope: !2609)
!2615 = !DILocation(line: 1322, column: 25, scope: !2609)
!2616 = !DILocation(line: 1322, column: 13, scope: !2596)
!2617 = !DILocation(line: 1323, column: 5, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2609, file: !566, line: 1322, column: 59)
!2619 = !DILocation(line: 1324, column: 1, scope: !2618)
!2620 = !DILocation(line: 1325, column: 5, scope: !2618)
!2621 = !DILocation(line: 1327, column: 3, scope: !2565)
!2622 = !DILocation(line: 1328, column: 20, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2560, file: !566, line: 1328, column: 12)
!2624 = !DILocation(line: 1328, column: 13, scope: !2623)
!2625 = !DILocation(line: 1328, column: 12, scope: !2560)
!2626 = !DILocation(line: 1329, column: 34, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !566, line: 1329, column: 8)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !566, line: 1328, column: 32)
!2629 = !DILocation(line: 1329, column: 42, scope: !2627)
!2630 = !DILocation(line: 1329, column: 22, scope: !2627)
!2631 = !DILocation(line: 1329, column: 9, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2627, file: !566, discriminator: 1)
!2633 = !DILocation(line: 1329, column: 9, scope: !2627)
!2634 = !DILocation(line: 1329, column: 8, scope: !2628)
!2635 = !DILocation(line: 1330, column: 6, scope: !2627)
!2636 = !DILocation(line: 1330, column: 5, scope: !2627)
!2637 = !DILocation(line: 1332, column: 4, scope: !2628)
!2638 = !DILocation(line: 1336, column: 3, scope: !2628)
!2639 = !DILocation(line: 1337, column: 20, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2623, file: !566, line: 1337, column: 12)
!2641 = !DILocation(line: 1337, column: 13, scope: !2640)
!2642 = !DILocation(line: 1337, column: 32, scope: !2640)
!2643 = !DILocation(line: 1337, column: 43, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2640, file: !566, discriminator: 1)
!2645 = !DILocation(line: 1337, column: 36, scope: !2644)
!2646 = !DILocation(line: 1337, column: 12, scope: !2644)
!2647 = !DILocation(line: 1340, column: 8, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1340, column: 8)
!2649 = distinct !DILexicalBlock(scope: !2640, file: !566, line: 1337, column: 55)
!2650 = !DILocation(line: 1340, column: 15, scope: !2648)
!2651 = !DILocation(line: 1340, column: 8, scope: !2649)
!2652 = !DILocation(line: 1341, column: 5, scope: !2648)
!2653 = !DILocation(line: 1343, column: 22, scope: !2649)
!2654 = !DILocation(line: 1343, column: 30, scope: !2649)
!2655 = !DILocation(line: 1343, column: 10, scope: !2649)
!2656 = !DILocation(line: 1343, column: 8, scope: !2649)
!2657 = !DILocation(line: 1344, column: 16, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1344, column: 8)
!2659 = !DILocation(line: 1344, column: 9, scope: !2658)
!2660 = !DILocation(line: 1344, column: 8, scope: !2649)
!2661 = !DILocation(line: 1345, column: 12, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !566, line: 1344, column: 30)
!2663 = !DILocation(line: 1345, column: 23, scope: !2662)
!2664 = !DILocation(line: 1345, column: 31, scope: !2662)
!2665 = !DILocation(line: 1345, column: 11, scope: !2662)
!2666 = !DILocation(line: 1345, column: 9, scope: !2662)
!2667 = !DILocation(line: 1346, column: 4, scope: !2662)
!2668 = !DILocation(line: 1347, column: 16, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1347, column: 8)
!2670 = !DILocation(line: 1347, column: 9, scope: !2669)
!2671 = !DILocation(line: 1347, column: 8, scope: !2649)
!2672 = !DILocation(line: 1348, column: 12, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !566, line: 1347, column: 31)
!2674 = !DILocation(line: 1349, column: 23, scope: !2673)
!2675 = !DILocation(line: 1349, column: 31, scope: !2673)
!2676 = !DILocation(line: 1349, column: 11, scope: !2673)
!2677 = !DILocation(line: 1349, column: 9, scope: !2673)
!2678 = !DILocation(line: 1350, column: 4, scope: !2673)
!2679 = !DILocation(line: 1352, column: 14, scope: !2669)
!2680 = !DILocation(line: 1352, column: 19, scope: !2669)
!2681 = !DILocation(line: 1352, column: 12, scope: !2669)
!2682 = !DILocation(line: 1354, column: 8, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1354, column: 8)
!2684 = !DILocation(line: 1354, column: 13, scope: !2683)
!2685 = !DILocation(line: 1354, column: 20, scope: !2683)
!2686 = !DILocation(line: 1354, column: 8, scope: !2649)
!2687 = !DILocation(line: 1355, column: 19, scope: !2683)
!2688 = !DILocation(line: 1355, column: 5, scope: !2683)
!2689 = !DILocation(line: 1355, column: 10, scope: !2683)
!2690 = !DILocation(line: 1355, column: 17, scope: !2683)
!2691 = !DILocation(line: 1356, column: 13, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2683, file: !566, line: 1356, column: 13)
!2693 = !DILocation(line: 1356, column: 18, scope: !2692)
!2694 = !DILocation(line: 1356, column: 28, scope: !2692)
!2695 = !DILocation(line: 1356, column: 25, scope: !2692)
!2696 = !DILocation(line: 1356, column: 13, scope: !2683)
!2697 = !DILocation(line: 1357, column: 5, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2692, file: !566, line: 1356, column: 36)
!2699 = !DILocation(line: 1358, column: 1, scope: !2698)
!2700 = !DILocation(line: 1359, column: 5, scope: !2698)
!2701 = !DILocation(line: 1362, column: 8, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1362, column: 8)
!2703 = !DILocation(line: 1362, column: 13, scope: !2702)
!2704 = !DILocation(line: 1362, column: 8, scope: !2649)
!2705 = !DILocation(line: 1363, column: 11, scope: !2702)
!2706 = !DILocation(line: 1363, column: 16, scope: !2702)
!2707 = !DILocation(line: 1363, column: 6, scope: !2702)
!2708 = !DILocation(line: 1363, column: 23, scope: !2702)
!2709 = !DILocation(line: 1363, column: 28, scope: !2702)
!2710 = !DILocation(line: 1363, column: 33, scope: !2702)
!2711 = !DILocation(line: 1363, column: 5, scope: !2702)
!2712 = !DILocation(line: 1363, column: 36, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2649, file: !566, discriminator: 1)
!2714 = !DILocation(line: 1363, column: 15, scope: !2713)
!2715 = !DILocation(line: 1363, column: 4, scope: !2713)
!2716 = !DILocation(line: 1363, column: 9, scope: !2713)
!2717 = !DILocation(line: 1363, column: 13, scope: !2713)
!2718 = !DILocation(line: 1364, column: 9, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1364, column: 8)
!2720 = !DILocation(line: 1364, column: 14, scope: !2719)
!2721 = !DILocation(line: 1364, column: 8, scope: !2649)
!2722 = !DILocation(line: 1365, column: 99, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !566, line: 1364, column: 19)
!2724 = !DILocation(line: 1365, column: 106, scope: !2723)
!2725 = !DILocation(line: 1365, column: 87, scope: !2723)
!2726 = !DILocation(line: 1365, column: 5, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2723, file: !566, discriminator: 1)
!2728 = !DILocation(line: 1366, column: 1, scope: !2723)
!2729 = !DILocation(line: 1367, column: 5, scope: !2723)
!2730 = !DILocation(line: 1369, column: 8, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2649, file: !566, line: 1369, column: 8)
!2732 = !DILocation(line: 1369, column: 13, scope: !2731)
!2733 = !DILocation(line: 1369, column: 20, scope: !2731)
!2734 = !DILocation(line: 1369, column: 8, scope: !2649)
!2735 = !DILocation(line: 1369, column: 19, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2731, file: !566, discriminator: 1)
!2737 = !DILocation(line: 1369, column: 24, scope: !2736)
!2738 = !DILocation(line: 1369, column: 29, scope: !2736)
!2739 = !DILocation(line: 1369, column: 33, scope: !2736)
!2740 = !DILocation(line: 1369, column: 5, scope: !2736)
!2741 = !DILocation(line: 1369, column: 10, scope: !2736)
!2742 = !DILocation(line: 1369, column: 17, scope: !2736)
!2743 = !DILocation(line: 1370, column: 13, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2731, file: !566, line: 1370, column: 13)
!2745 = !DILocation(line: 1370, column: 18, scope: !2744)
!2746 = !DILocation(line: 1370, column: 28, scope: !2744)
!2747 = !DILocation(line: 1370, column: 33, scope: !2744)
!2748 = !DILocation(line: 1370, column: 38, scope: !2744)
!2749 = !DILocation(line: 1370, column: 42, scope: !2744)
!2750 = !DILocation(line: 1370, column: 25, scope: !2744)
!2751 = !DILocation(line: 1370, column: 13, scope: !2731)
!2752 = !DILocation(line: 1371, column: 5, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2744, file: !566, line: 1370, column: 54)
!2754 = !DILocation(line: 1372, column: 1, scope: !2753)
!2755 = !DILocation(line: 1373, column: 5, scope: !2753)
!2756 = !DILocation(line: 1375, column: 3, scope: !2649)
!2757 = !DILocation(line: 1376, column: 20, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2640, file: !566, line: 1376, column: 12)
!2759 = !DILocation(line: 1376, column: 13, scope: !2758)
!2760 = !DILocation(line: 1376, column: 12, scope: !2640)
!2761 = !DILocation(line: 1377, column: 8, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !566, line: 1377, column: 8)
!2763 = distinct !DILexicalBlock(scope: !2758, file: !566, line: 1376, column: 34)
!2764 = !DILocation(line: 1377, column: 13, scope: !2762)
!2765 = !DILocation(line: 1377, column: 8, scope: !2763)
!2766 = !DILocation(line: 1378, column: 11, scope: !2762)
!2767 = !DILocation(line: 1378, column: 16, scope: !2762)
!2768 = !DILocation(line: 1378, column: 6, scope: !2762)
!2769 = !DILocation(line: 1378, column: 23, scope: !2762)
!2770 = !DILocation(line: 1378, column: 28, scope: !2762)
!2771 = !DILocation(line: 1378, column: 33, scope: !2762)
!2772 = !DILocation(line: 1378, column: 5, scope: !2762)
!2773 = !DILocation(line: 1378, column: 48, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2763, file: !566, discriminator: 1)
!2775 = !DILocation(line: 1378, column: 56, scope: !2774)
!2776 = !DILocation(line: 1378, column: 36, scope: !2774)
!2777 = !DILocation(line: 1378, column: 15, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2774, file: !566, discriminator: 2)
!2779 = !DILocation(line: 1378, column: 4, scope: !2774)
!2780 = !DILocation(line: 1378, column: 9, scope: !2774)
!2781 = !DILocation(line: 1378, column: 13, scope: !2774)
!2782 = !DILocation(line: 1379, column: 9, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2763, file: !566, line: 1379, column: 8)
!2784 = !DILocation(line: 1379, column: 14, scope: !2783)
!2785 = !DILocation(line: 1379, column: 8, scope: !2763)
!2786 = !DILocation(line: 1380, column: 100, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !566, line: 1379, column: 19)
!2788 = !DILocation(line: 1380, column: 107, scope: !2787)
!2789 = !DILocation(line: 1380, column: 88, scope: !2787)
!2790 = !DILocation(line: 1380, column: 5, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2787, file: !566, discriminator: 1)
!2792 = !DILocation(line: 1381, column: 1, scope: !2787)
!2793 = !DILocation(line: 1382, column: 5, scope: !2787)
!2794 = !DILocation(line: 1384, column: 8, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2763, file: !566, line: 1384, column: 8)
!2796 = !DILocation(line: 1384, column: 13, scope: !2795)
!2797 = !DILocation(line: 1384, column: 18, scope: !2795)
!2798 = !DILocation(line: 1384, column: 22, scope: !2795)
!2799 = !DILocation(line: 1384, column: 33, scope: !2795)
!2800 = !DILocation(line: 1384, column: 8, scope: !2763)
!2801 = !DILocation(line: 1384, column: 119, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2803, file: !566, discriminator: 1)
!2803 = distinct !DILexicalBlock(scope: !2795, file: !566, line: 1383, column: 45)
!2804 = !DILocation(line: 1384, column: 126, scope: !2802)
!2805 = !DILocation(line: 1384, column: 107, scope: !2802)
!2806 = !DILocation(line: 1384, column: 5, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2802, file: !566, discriminator: 2)
!2808 = !DILocation(line: 1385, column: 1, scope: !2803)
!2809 = !DILocation(line: 1386, column: 5, scope: !2803)
!2810 = !DILocation(line: 1388, column: 8, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2763, file: !566, line: 1388, column: 8)
!2812 = !DILocation(line: 1388, column: 13, scope: !2811)
!2813 = !DILocation(line: 1388, column: 20, scope: !2811)
!2814 = !DILocation(line: 1388, column: 8, scope: !2763)
!2815 = !DILocation(line: 1388, column: 19, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2811, file: !566, discriminator: 1)
!2817 = !DILocation(line: 1388, column: 24, scope: !2816)
!2818 = !DILocation(line: 1388, column: 29, scope: !2816)
!2819 = !DILocation(line: 1388, column: 33, scope: !2816)
!2820 = !DILocation(line: 1388, column: 5, scope: !2816)
!2821 = !DILocation(line: 1388, column: 10, scope: !2816)
!2822 = !DILocation(line: 1388, column: 17, scope: !2816)
!2823 = !DILocation(line: 1389, column: 13, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2811, file: !566, line: 1389, column: 13)
!2825 = !DILocation(line: 1389, column: 18, scope: !2824)
!2826 = !DILocation(line: 1389, column: 28, scope: !2824)
!2827 = !DILocation(line: 1389, column: 33, scope: !2824)
!2828 = !DILocation(line: 1389, column: 38, scope: !2824)
!2829 = !DILocation(line: 1389, column: 42, scope: !2824)
!2830 = !DILocation(line: 1389, column: 25, scope: !2824)
!2831 = !DILocation(line: 1389, column: 13, scope: !2811)
!2832 = !DILocation(line: 1390, column: 5, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2824, file: !566, line: 1389, column: 54)
!2834 = !DILocation(line: 1391, column: 1, scope: !2833)
!2835 = !DILocation(line: 1392, column: 5, scope: !2833)
!2836 = !DILocation(line: 1394, column: 3, scope: !2763)
!2837 = !DILocation(line: 1395, column: 20, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2758, file: !566, line: 1395, column: 12)
!2839 = !DILocation(line: 1395, column: 13, scope: !2838)
!2840 = !DILocation(line: 1395, column: 32, scope: !2838)
!2841 = !DILocation(line: 1395, column: 43, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2838, file: !566, discriminator: 1)
!2843 = !DILocation(line: 1395, column: 36, scope: !2842)
!2844 = !DILocation(line: 1395, column: 12, scope: !2842)
!2845 = !DILocation(line: 1397, column: 43, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !566, line: 1397, column: 8)
!2847 = distinct !DILexicalBlock(scope: !2838, file: !566, line: 1395, column: 59)
!2848 = !DILocation(line: 1397, column: 51, scope: !2846)
!2849 = !DILocation(line: 1397, column: 31, scope: !2846)
!2850 = !DILocation(line: 1397, column: 9, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2846, file: !566, discriminator: 1)
!2852 = !DILocation(line: 1397, column: 8, scope: !2847)
!2853 = !DILocation(line: 1398, column: 94, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2846, file: !566, line: 1397, column: 65)
!2855 = !DILocation(line: 1398, column: 101, scope: !2854)
!2856 = !DILocation(line: 1398, column: 82, scope: !2854)
!2857 = !DILocation(line: 1398, column: 5, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2854, file: !566, discriminator: 1)
!2859 = !DILocation(line: 1399, column: 1, scope: !2854)
!2860 = !DILocation(line: 1400, column: 5, scope: !2854)
!2861 = !DILocation(line: 1403, column: 15, scope: !2847)
!2862 = !DILocation(line: 1403, column: 4, scope: !2847)
!2863 = !DILocation(line: 1403, column: 9, scope: !2847)
!2864 = !DILocation(line: 1403, column: 13, scope: !2847)
!2865 = !DILocation(line: 1404, column: 4, scope: !2847)
!2866 = !DILocation(line: 1404, column: 9, scope: !2847)
!2867 = !DILocation(line: 1404, column: 14, scope: !2847)
!2868 = !DILocation(line: 1405, column: 3, scope: !2847)
!2869 = !DILocation(line: 1406, column: 20, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2838, file: !566, line: 1406, column: 12)
!2871 = !DILocation(line: 1406, column: 13, scope: !2870)
!2872 = !DILocation(line: 1406, column: 12, scope: !2838)
!2873 = !DILocation(line: 1407, column: 41, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !566, line: 1407, column: 8)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !566, line: 1406, column: 35)
!2876 = !DILocation(line: 1407, column: 49, scope: !2874)
!2877 = !DILocation(line: 1407, column: 29, scope: !2874)
!2878 = !DILocation(line: 1407, column: 9, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2874, file: !566, discriminator: 1)
!2880 = !DILocation(line: 1407, column: 8, scope: !2875)
!2881 = !DILocation(line: 1408, column: 107, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2874, file: !566, line: 1407, column: 62)
!2883 = !DILocation(line: 1408, column: 114, scope: !2882)
!2884 = !DILocation(line: 1408, column: 95, scope: !2882)
!2885 = !DILocation(line: 1408, column: 5, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !2882, file: !566, discriminator: 1)
!2887 = !DILocation(line: 1409, column: 1, scope: !2882)
!2888 = !DILocation(line: 1410, column: 5, scope: !2882)
!2889 = !DILocation(line: 1412, column: 17, scope: !2875)
!2890 = !DILocation(line: 1412, column: 4, scope: !2875)
!2891 = !DILocation(line: 1412, column: 9, scope: !2875)
!2892 = !DILocation(line: 1412, column: 15, scope: !2875)
!2893 = !DILocation(line: 1413, column: 3, scope: !2875)
!2894 = !DILocation(line: 1414, column: 20, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2870, file: !566, line: 1414, column: 12)
!2896 = !DILocation(line: 1414, column: 13, scope: !2895)
!2897 = !DILocation(line: 1414, column: 12, scope: !2870)
!2898 = !DILocation(line: 1415, column: 41, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !566, line: 1415, column: 8)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !566, line: 1414, column: 38)
!2901 = !DILocation(line: 1415, column: 49, scope: !2899)
!2902 = !DILocation(line: 1415, column: 29, scope: !2899)
!2903 = !DILocation(line: 1415, column: 9, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2899, file: !566, discriminator: 1)
!2905 = !DILocation(line: 1415, column: 8, scope: !2900)
!2906 = !DILocation(line: 1416, column: 113, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2899, file: !566, line: 1415, column: 63)
!2908 = !DILocation(line: 1416, column: 120, scope: !2907)
!2909 = !DILocation(line: 1416, column: 101, scope: !2907)
!2910 = !DILocation(line: 1416, column: 5, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2907, file: !566, discriminator: 1)
!2912 = !DILocation(line: 1417, column: 1, scope: !2907)
!2913 = !DILocation(line: 1418, column: 5, scope: !2907)
!2914 = !DILocation(line: 1420, column: 20, scope: !2900)
!2915 = !DILocation(line: 1420, column: 4, scope: !2900)
!2916 = !DILocation(line: 1420, column: 9, scope: !2900)
!2917 = !DILocation(line: 1420, column: 18, scope: !2900)
!2918 = !DILocation(line: 1421, column: 4, scope: !2900)
!2919 = !DILocation(line: 1421, column: 9, scope: !2900)
!2920 = !DILocation(line: 1421, column: 14, scope: !2900)
!2921 = !DILocation(line: 1422, column: 3, scope: !2900)
!2922 = !DILocation(line: 1423, column: 20, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2895, file: !566, line: 1423, column: 12)
!2924 = !DILocation(line: 1423, column: 13, scope: !2923)
!2925 = !DILocation(line: 1423, column: 12, scope: !2895)
!2926 = !DILocation(line: 1425, column: 41, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !566, line: 1425, column: 8)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !566, line: 1423, column: 35)
!2929 = !DILocation(line: 1425, column: 49, scope: !2927)
!2930 = !DILocation(line: 1425, column: 29, scope: !2927)
!2931 = !DILocation(line: 1425, column: 9, scope: !2932)
!2932 = !DILexicalBlockFile(scope: !2927, file: !566, discriminator: 1)
!2933 = !DILocation(line: 1425, column: 8, scope: !2928)
!2934 = !DILocation(line: 1426, column: 110, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2927, file: !566, line: 1425, column: 63)
!2936 = !DILocation(line: 1426, column: 117, scope: !2935)
!2937 = !DILocation(line: 1426, column: 98, scope: !2935)
!2938 = !DILocation(line: 1426, column: 5, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2935, file: !566, discriminator: 1)
!2940 = !DILocation(line: 1427, column: 1, scope: !2935)
!2941 = !DILocation(line: 1428, column: 5, scope: !2935)
!2942 = !DILocation(line: 1430, column: 17, scope: !2928)
!2943 = !DILocation(line: 1430, column: 4, scope: !2928)
!2944 = !DILocation(line: 1430, column: 9, scope: !2928)
!2945 = !DILocation(line: 1430, column: 15, scope: !2928)
!2946 = !DILocation(line: 1431, column: 4, scope: !2928)
!2947 = !DILocation(line: 1431, column: 9, scope: !2928)
!2948 = !DILocation(line: 1431, column: 14, scope: !2928)
!2949 = !DILocation(line: 1432, column: 3, scope: !2928)
!2950 = !DILocation(line: 1433, column: 20, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2923, file: !566, line: 1433, column: 12)
!2952 = !DILocation(line: 1433, column: 13, scope: !2951)
!2953 = !DILocation(line: 1433, column: 35, scope: !2951)
!2954 = !DILocation(line: 1434, column: 13, scope: !2951)
!2955 = !DILocation(line: 1434, column: 6, scope: !2951)
!2956 = !DILocation(line: 1434, column: 30, scope: !2951)
!2957 = !DILocation(line: 1435, column: 13, scope: !2951)
!2958 = !DILocation(line: 1435, column: 6, scope: !2951)
!2959 = !DILocation(line: 1433, column: 12, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2923, file: !566, discriminator: 1)
!2961 = !DILocation(line: 1436, column: 17, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !566, line: 1436, column: 8)
!2963 = distinct !DILexicalBlock(scope: !2951, file: !566, line: 1435, column: 33)
!2964 = !DILocation(line: 1436, column: 22, scope: !2962)
!2965 = !DILocation(line: 1436, column: 42, scope: !2962)
!2966 = !DILocation(line: 1436, column: 50, scope: !2962)
!2967 = !DILocation(line: 1436, column: 30, scope: !2962)
!2968 = !DILocation(line: 1436, column: 8, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2962, file: !566, discriminator: 2)
!2970 = !DILocation(line: 1436, column: 8, scope: !2963)
!2971 = !DILocation(line: 1432, column: 5, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2962, file: !566, discriminator: 1)
!2973 = !DILocation(line: 1433, column: 4, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2963, file: !566, discriminator: 2)
!2975 = !DILocation(line: 1433, column: 9, scope: !2974)
!2976 = !DILocation(line: 1433, column: 14, scope: !2974)
!2977 = !DILocation(line: 1434, column: 3, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2963, file: !566, discriminator: 1)
!2979 = !DILocation(line: 1435, column: 20, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2981, file: !566, discriminator: 1)
!2981 = distinct !DILexicalBlock(scope: !2951, file: !566, line: 1435, column: 12)
!2982 = !DILocation(line: 1435, column: 13, scope: !2980)
!2983 = !DILocation(line: 1435, column: 32, scope: !2980)
!2984 = !DILocation(line: 1435, column: 43, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2981, file: !566, discriminator: 2)
!2986 = !DILocation(line: 1435, column: 36, scope: !2985)
!2987 = !DILocation(line: 1435, column: 12, scope: !2985)
!2988 = !DILocation(line: 1436, column: 22, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2990, file: !566, discriminator: 1)
!2990 = distinct !DILexicalBlock(scope: !2981, file: !566, line: 1435, column: 56)
!2991 = !DILocation(line: 1436, column: 30, scope: !2989)
!2992 = !DILocation(line: 1436, column: 10, scope: !2989)
!2993 = !DILocation(line: 1436, column: 8, scope: !2989)
!2994 = !DILocation(line: 1437, column: 27, scope: !2990)
!2995 = !DILocation(line: 1437, column: 10, scope: !2990)
!2996 = !DILocation(line: 1437, column: 8, scope: !2990)
!2997 = !DILocation(line: 1438, column: 9, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2990, file: !566, line: 1438, column: 8)
!2999 = !DILocation(line: 1438, column: 8, scope: !2990)
!3000 = !DILocation(line: 1439, column: 106, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !566, line: 1438, column: 14)
!3002 = !DILocation(line: 1439, column: 5, scope: !3001)
!3003 = !DILocation(line: 1440, column: 1, scope: !3001)
!3004 = !DILocation(line: 1441, column: 5, scope: !3001)
!3005 = !DILocation(line: 1443, column: 15, scope: !2990)
!3006 = !DILocation(line: 1443, column: 4, scope: !2990)
!3007 = !DILocation(line: 1443, column: 9, scope: !2990)
!3008 = !DILocation(line: 1443, column: 13, scope: !2990)
!3009 = !DILocation(line: 1444, column: 3, scope: !2990)
!3010 = !DILocation(line: 1445, column: 20, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2981, file: !566, line: 1445, column: 12)
!3012 = !DILocation(line: 1445, column: 13, scope: !3011)
!3013 = !DILocation(line: 1445, column: 12, scope: !2981)
!3014 = !DILocation(line: 1447, column: 4, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !566, line: 1445, column: 36)
!3016 = !DILocation(line: 1447, column: 9, scope: !3015)
!3017 = !DILocation(line: 1447, column: 15, scope: !3015)
!3018 = !DILocation(line: 1447, column: 3, scope: !3015)
!3019 = !DILocation(line: 1448, column: 20, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3011, file: !566, line: 1448, column: 12)
!3021 = !DILocation(line: 1448, column: 13, scope: !3020)
!3022 = !DILocation(line: 1448, column: 12, scope: !3011)
!3023 = !DILocation(line: 1450, column: 16, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !566, line: 1448, column: 35)
!3025 = !DILocation(line: 1450, column: 29, scope: !3024)
!3026 = !DILocation(line: 1450, column: 34, scope: !3024)
!3027 = !DILocation(line: 1450, column: 4, scope: !3024)
!3028 = !DILocation(line: 1454, column: 3, scope: !3024)
!3029 = !DILocation(line: 1455, column: 20, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3020, file: !566, line: 1455, column: 12)
!3031 = !DILocation(line: 1455, column: 13, scope: !3030)
!3032 = !DILocation(line: 1455, column: 12, scope: !3020)
!3033 = !DILocation(line: 1456, column: 5, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !566, line: 1455, column: 37)
!3035 = !DILocation(line: 1467, column: 4, scope: !3034)
!3036 = !DILocation(line: 1469, column: 3, scope: !3034)
!3037 = !DILocation(line: 1470, column: 20, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3030, file: !566, line: 1470, column: 12)
!3039 = !DILocation(line: 1470, column: 13, scope: !3038)
!3040 = !DILocation(line: 1470, column: 12, scope: !3030)
!3041 = !DILocation(line: 1471, column: 28, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !566, line: 1471, column: 8)
!3043 = distinct !DILexicalBlock(scope: !3038, file: !566, line: 1470, column: 33)
!3044 = !DILocation(line: 1471, column: 36, scope: !3042)
!3045 = !DILocation(line: 1471, column: 16, scope: !3042)
!3046 = !DILocation(line: 1471, column: 9, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !3042, file: !566, discriminator: 1)
!3048 = !DILocation(line: 1471, column: 9, scope: !3042)
!3049 = !DILocation(line: 1471, column: 8, scope: !3043)
!3050 = !DILocation(line: 1472, column: 5, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3042, file: !566, line: 1471, column: 51)
!3052 = !DILocation(line: 1472, column: 10, scope: !3051)
!3053 = !DILocation(line: 1472, column: 15, scope: !3051)
!3054 = !DILocation(line: 1473, column: 6, scope: !3051)
!3055 = !DILocation(line: 1474, column: 4, scope: !3051)
!3056 = !DILocation(line: 1475, column: 17, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3043, file: !566, line: 1475, column: 8)
!3058 = !DILocation(line: 1475, column: 22, scope: !3057)
!3059 = !DILocation(line: 1475, column: 39, scope: !3057)
!3060 = !DILocation(line: 1475, column: 47, scope: !3057)
!3061 = !DILocation(line: 1475, column: 27, scope: !3057)
!3062 = !DILocation(line: 1475, column: 8, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3057, file: !566, discriminator: 1)
!3064 = !DILocation(line: 1475, column: 8, scope: !3043)
!3065 = !DILocation(line: 1476, column: 5, scope: !3057)
!3066 = !DILocation(line: 1477, column: 4, scope: !3043)
!3067 = !DILocation(line: 1477, column: 9, scope: !3043)
!3068 = !DILocation(line: 1477, column: 14, scope: !3043)
!3069 = !DILocation(line: 1478, column: 3, scope: !3043)
!3070 = !DILocation(line: 1479, column: 20, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3038, file: !566, line: 1479, column: 12)
!3072 = !DILocation(line: 1479, column: 13, scope: !3071)
!3073 = !DILocation(line: 1479, column: 12, scope: !3038)
!3074 = !DILocation(line: 1480, column: 34, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !566, line: 1480, column: 8)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !566, line: 1479, column: 38)
!3077 = !DILocation(line: 1480, column: 42, scope: !3075)
!3078 = !DILocation(line: 1480, column: 22, scope: !3075)
!3079 = !DILocation(line: 1480, column: 8, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3075, file: !566, discriminator: 1)
!3081 = !DILocation(line: 1480, column: 8, scope: !3076)
!3082 = !DILocation(line: 1481, column: 5, scope: !3075)
!3083 = !DILocation(line: 1482, column: 20, scope: !3076)
!3084 = !DILocation(line: 1482, column: 4, scope: !3076)
!3085 = !DILocation(line: 1482, column: 9, scope: !3076)
!3086 = !DILocation(line: 1482, column: 18, scope: !3076)
!3087 = !DILocation(line: 1483, column: 4, scope: !3076)
!3088 = !DILocation(line: 1483, column: 9, scope: !3076)
!3089 = !DILocation(line: 1483, column: 14, scope: !3076)
!3090 = !DILocation(line: 1484, column: 3, scope: !3076)
!3091 = !DILocation(line: 1485, column: 20, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3071, file: !566, line: 1485, column: 12)
!3093 = !DILocation(line: 1485, column: 13, scope: !3092)
!3094 = !DILocation(line: 1485, column: 12, scope: !3071)
!3095 = !DILocation(line: 1486, column: 28, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !566, line: 1486, column: 8)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !566, line: 1485, column: 36)
!3098 = !DILocation(line: 1486, column: 36, scope: !3096)
!3099 = !DILocation(line: 1486, column: 16, scope: !3096)
!3100 = !DILocation(line: 1486, column: 9, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3096, file: !566, discriminator: 1)
!3102 = !DILocation(line: 1486, column: 9, scope: !3096)
!3103 = !DILocation(line: 1486, column: 8, scope: !3097)
!3104 = !DILocation(line: 1487, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3096, file: !566, line: 1486, column: 51)
!3106 = !DILocation(line: 1487, column: 10, scope: !3105)
!3107 = !DILocation(line: 1487, column: 15, scope: !3105)
!3108 = !DILocation(line: 1488, column: 6, scope: !3105)
!3109 = !DILocation(line: 1489, column: 4, scope: !3105)
!3110 = !DILocation(line: 1490, column: 17, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3097, file: !566, line: 1490, column: 8)
!3112 = !DILocation(line: 1490, column: 22, scope: !3111)
!3113 = !DILocation(line: 1490, column: 42, scope: !3111)
!3114 = !DILocation(line: 1490, column: 50, scope: !3111)
!3115 = !DILocation(line: 1490, column: 30, scope: !3111)
!3116 = !DILocation(line: 1490, column: 8, scope: !3117)
!3117 = !DILexicalBlockFile(scope: !3111, file: !566, discriminator: 1)
!3118 = !DILocation(line: 1490, column: 8, scope: !3097)
!3119 = !DILocation(line: 1491, column: 5, scope: !3111)
!3120 = !DILocation(line: 1492, column: 4, scope: !3097)
!3121 = !DILocation(line: 1492, column: 9, scope: !3097)
!3122 = !DILocation(line: 1492, column: 14, scope: !3097)
!3123 = !DILocation(line: 1493, column: 3, scope: !3097)
!3124 = !DILocation(line: 1494, column: 20, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3092, file: !566, line: 1494, column: 12)
!3126 = !DILocation(line: 1494, column: 13, scope: !3125)
!3127 = !DILocation(line: 1494, column: 12, scope: !3092)
!3128 = !DILocation(line: 1495, column: 28, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !566, line: 1495, column: 8)
!3130 = distinct !DILexicalBlock(scope: !3125, file: !566, line: 1494, column: 33)
!3131 = !DILocation(line: 1495, column: 36, scope: !3129)
!3132 = !DILocation(line: 1495, column: 16, scope: !3129)
!3133 = !DILocation(line: 1495, column: 9, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3129, file: !566, discriminator: 1)
!3135 = !DILocation(line: 1495, column: 9, scope: !3129)
!3136 = !DILocation(line: 1495, column: 8, scope: !3130)
!3137 = !DILocation(line: 1496, column: 5, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3129, file: !566, line: 1495, column: 51)
!3139 = !DILocation(line: 1496, column: 10, scope: !3138)
!3140 = !DILocation(line: 1496, column: 15, scope: !3138)
!3141 = !DILocation(line: 1497, column: 6, scope: !3138)
!3142 = !DILocation(line: 1498, column: 4, scope: !3138)
!3143 = !DILocation(line: 1499, column: 22, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3130, file: !566, line: 1499, column: 8)
!3145 = !DILocation(line: 1499, column: 27, scope: !3144)
!3146 = !DILocation(line: 1499, column: 44, scope: !3144)
!3147 = !DILocation(line: 1499, column: 52, scope: !3144)
!3148 = !DILocation(line: 1499, column: 32, scope: !3144)
!3149 = !DILocation(line: 1499, column: 8, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3144, file: !566, discriminator: 2)
!3151 = !DILocation(line: 1499, column: 62, scope: !3144)
!3152 = !DILocation(line: 1500, column: 10, scope: !3144)
!3153 = !DILocation(line: 1500, column: 14, scope: !3144)
!3154 = !DILocation(line: 1500, column: 17, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3144, file: !566, discriminator: 1)
!3156 = !DILocation(line: 1500, column: 22, scope: !3155)
!3157 = !DILocation(line: 1500, column: 26, scope: !3155)
!3158 = !DILocation(line: 1499, column: 8, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3130, file: !566, discriminator: 1)
!3160 = !DILocation(line: 1501, column: 95, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3144, file: !566, line: 1500, column: 45)
!3162 = !DILocation(line: 1501, column: 102, scope: !3161)
!3163 = !DILocation(line: 1501, column: 83, scope: !3161)
!3164 = !DILocation(line: 1501, column: 5, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3161, file: !566, discriminator: 1)
!3166 = !DILocation(line: 1502, column: 1, scope: !3161)
!3167 = !DILocation(line: 1503, column: 5, scope: !3161)
!3168 = !DILocation(line: 1505, column: 8, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3130, file: !566, line: 1505, column: 8)
!3170 = !DILocation(line: 1505, column: 8, scope: !3130)
!3171 = !DILocation(line: 1506, column: 5, scope: !3169)
!3172 = !DILocation(line: 1506, column: 10, scope: !3169)
!3173 = !DILocation(line: 1506, column: 14, scope: !3169)
!3174 = !DILocation(line: 1507, column: 4, scope: !3130)
!3175 = !DILocation(line: 1507, column: 9, scope: !3130)
!3176 = !DILocation(line: 1507, column: 14, scope: !3130)
!3177 = !DILocation(line: 1508, column: 3, scope: !3130)
!3178 = !DILocation(line: 1509, column: 20, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3125, file: !566, line: 1509, column: 12)
!3180 = !DILocation(line: 1509, column: 13, scope: !3179)
!3181 = !DILocation(line: 1509, column: 12, scope: !3125)
!3182 = !DILocation(line: 1510, column: 28, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !566, line: 1510, column: 8)
!3184 = distinct !DILexicalBlock(scope: !3179, file: !566, line: 1509, column: 36)
!3185 = !DILocation(line: 1510, column: 36, scope: !3183)
!3186 = !DILocation(line: 1510, column: 16, scope: !3183)
!3187 = !DILocation(line: 1510, column: 9, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3183, file: !566, discriminator: 1)
!3189 = !DILocation(line: 1510, column: 9, scope: !3183)
!3190 = !DILocation(line: 1510, column: 8, scope: !3184)
!3191 = !DILocation(line: 1511, column: 5, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3183, file: !566, line: 1510, column: 51)
!3193 = !DILocation(line: 1511, column: 10, scope: !3192)
!3194 = !DILocation(line: 1511, column: 15, scope: !3192)
!3195 = !DILocation(line: 1511, column: 6, scope: !3192)
!3196 = !DILocation(line: 1512, column: 4, scope: !3192)
!3197 = !DILocation(line: 1513, column: 22, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3184, file: !566, line: 1513, column: 8)
!3199 = !DILocation(line: 1513, column: 27, scope: !3198)
!3200 = !DILocation(line: 1513, column: 47, scope: !3198)
!3201 = !DILocation(line: 1513, column: 55, scope: !3198)
!3202 = !DILocation(line: 1513, column: 35, scope: !3198)
!3203 = !DILocation(line: 1513, column: 8, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !3198, file: !566, discriminator: 2)
!3205 = !DILocation(line: 1513, column: 65, scope: !3198)
!3206 = !DILocation(line: 1514, column: 10, scope: !3198)
!3207 = !DILocation(line: 1514, column: 14, scope: !3198)
!3208 = !DILocation(line: 1514, column: 17, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !3198, file: !566, discriminator: 1)
!3210 = !DILocation(line: 1514, column: 22, scope: !3209)
!3211 = !DILocation(line: 1514, column: 26, scope: !3209)
!3212 = !DILocation(line: 1513, column: 8, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3184, file: !566, discriminator: 1)
!3214 = !DILocation(line: 1515, column: 98, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3198, file: !566, line: 1514, column: 45)
!3216 = !DILocation(line: 1515, column: 105, scope: !3215)
!3217 = !DILocation(line: 1515, column: 86, scope: !3215)
!3218 = !DILocation(line: 1515, column: 5, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3215, file: !566, discriminator: 1)
!3220 = !DILocation(line: 1516, column: 1, scope: !3215)
!3221 = !DILocation(line: 1517, column: 5, scope: !3215)
!3222 = !DILocation(line: 1519, column: 8, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3184, file: !566, line: 1519, column: 8)
!3224 = !DILocation(line: 1519, column: 8, scope: !3184)
!3225 = !DILocation(line: 1520, column: 5, scope: !3223)
!3226 = !DILocation(line: 1520, column: 10, scope: !3223)
!3227 = !DILocation(line: 1520, column: 17, scope: !3223)
!3228 = !DILocation(line: 1521, column: 4, scope: !3184)
!3229 = !DILocation(line: 1521, column: 9, scope: !3184)
!3230 = !DILocation(line: 1521, column: 14, scope: !3184)
!3231 = !DILocation(line: 1522, column: 3, scope: !3184)
!3232 = !DILocation(line: 1523, column: 20, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3179, file: !566, line: 1523, column: 12)
!3234 = !DILocation(line: 1523, column: 13, scope: !3233)
!3235 = !DILocation(line: 1523, column: 12, scope: !3179)
!3236 = !DILocation(line: 1524, column: 28, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !566, line: 1524, column: 8)
!3238 = distinct !DILexicalBlock(scope: !3233, file: !566, line: 1523, column: 40)
!3239 = !DILocation(line: 1524, column: 36, scope: !3237)
!3240 = !DILocation(line: 1524, column: 16, scope: !3237)
!3241 = !DILocation(line: 1524, column: 9, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3237, file: !566, discriminator: 1)
!3243 = !DILocation(line: 1524, column: 9, scope: !3237)
!3244 = !DILocation(line: 1524, column: 8, scope: !3238)
!3245 = !DILocation(line: 1525, column: 5, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3237, file: !566, line: 1524, column: 51)
!3247 = !DILocation(line: 1525, column: 10, scope: !3246)
!3248 = !DILocation(line: 1525, column: 15, scope: !3246)
!3249 = !DILocation(line: 1525, column: 6, scope: !3246)
!3250 = !DILocation(line: 1526, column: 4, scope: !3246)
!3251 = !DILocation(line: 1527, column: 17, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3238, file: !566, line: 1527, column: 8)
!3253 = !DILocation(line: 1527, column: 22, scope: !3252)
!3254 = !DILocation(line: 1527, column: 46, scope: !3252)
!3255 = !DILocation(line: 1527, column: 54, scope: !3252)
!3256 = !DILocation(line: 1527, column: 34, scope: !3252)
!3257 = !DILocation(line: 1527, column: 8, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3252, file: !566, discriminator: 1)
!3259 = !DILocation(line: 1527, column: 8, scope: !3238)
!3260 = !DILocation(line: 1528, column: 5, scope: !3252)
!3261 = !DILocation(line: 1529, column: 4, scope: !3238)
!3262 = !DILocation(line: 1529, column: 9, scope: !3238)
!3263 = !DILocation(line: 1529, column: 14, scope: !3238)
!3264 = !DILocation(line: 1530, column: 3, scope: !3238)
!3265 = !DILocation(line: 1531, column: 20, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3233, file: !566, line: 1531, column: 12)
!3267 = !DILocation(line: 1531, column: 13, scope: !3266)
!3268 = !DILocation(line: 1531, column: 12, scope: !3233)
!3269 = !DILocation(line: 1532, column: 17, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !566, line: 1532, column: 8)
!3271 = distinct !DILexicalBlock(scope: !3266, file: !566, line: 1531, column: 36)
!3272 = !DILocation(line: 1532, column: 22, scope: !3270)
!3273 = !DILocation(line: 1532, column: 42, scope: !3270)
!3274 = !DILocation(line: 1532, column: 50, scope: !3270)
!3275 = !DILocation(line: 1532, column: 30, scope: !3270)
!3276 = !DILocation(line: 1532, column: 8, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3270, file: !566, discriminator: 1)
!3278 = !DILocation(line: 1532, column: 8, scope: !3271)
!3279 = !DILocation(line: 1533, column: 5, scope: !3270)
!3280 = !DILocation(line: 1534, column: 4, scope: !3271)
!3281 = !DILocation(line: 1534, column: 9, scope: !3271)
!3282 = !DILocation(line: 1534, column: 14, scope: !3271)
!3283 = !DILocation(line: 1535, column: 3, scope: !3271)
!3284 = !DILocation(line: 1536, column: 20, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3266, file: !566, line: 1536, column: 12)
!3286 = !DILocation(line: 1536, column: 13, scope: !3285)
!3287 = !DILocation(line: 1536, column: 12, scope: !3266)
!3288 = !DILocation(line: 1537, column: 28, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !566, line: 1537, column: 8)
!3290 = distinct !DILexicalBlock(scope: !3285, file: !566, line: 1536, column: 34)
!3291 = !DILocation(line: 1537, column: 36, scope: !3289)
!3292 = !DILocation(line: 1537, column: 16, scope: !3289)
!3293 = !DILocation(line: 1537, column: 9, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3289, file: !566, discriminator: 1)
!3295 = !DILocation(line: 1537, column: 9, scope: !3289)
!3296 = !DILocation(line: 1537, column: 8, scope: !3290)
!3297 = !DILocation(line: 1538, column: 5, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3289, file: !566, line: 1537, column: 51)
!3299 = !DILocation(line: 1538, column: 10, scope: !3298)
!3300 = !DILocation(line: 1538, column: 15, scope: !3298)
!3301 = !DILocation(line: 1539, column: 6, scope: !3298)
!3302 = !DILocation(line: 1540, column: 4, scope: !3298)
!3303 = !DILocation(line: 1541, column: 17, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3290, file: !566, line: 1541, column: 8)
!3305 = !DILocation(line: 1541, column: 22, scope: !3304)
!3306 = !DILocation(line: 1541, column: 40, scope: !3304)
!3307 = !DILocation(line: 1541, column: 48, scope: !3304)
!3308 = !DILocation(line: 1541, column: 28, scope: !3304)
!3309 = !DILocation(line: 1541, column: 8, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3304, file: !566, discriminator: 1)
!3311 = !DILocation(line: 1541, column: 8, scope: !3290)
!3312 = !DILocation(line: 1542, column: 5, scope: !3304)
!3313 = !DILocation(line: 1543, column: 4, scope: !3290)
!3314 = !DILocation(line: 1543, column: 9, scope: !3290)
!3315 = !DILocation(line: 1543, column: 14, scope: !3290)
!3316 = !DILocation(line: 1544, column: 3, scope: !3290)
!3317 = !DILocation(line: 1545, column: 20, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3285, file: !566, line: 1545, column: 12)
!3319 = !DILocation(line: 1545, column: 13, scope: !3318)
!3320 = !DILocation(line: 1545, column: 12, scope: !3285)
!3321 = !DILocation(line: 1546, column: 28, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !566, line: 1546, column: 8)
!3323 = distinct !DILexicalBlock(scope: !3318, file: !566, line: 1545, column: 38)
!3324 = !DILocation(line: 1546, column: 36, scope: !3322)
!3325 = !DILocation(line: 1546, column: 16, scope: !3322)
!3326 = !DILocation(line: 1546, column: 9, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !3322, file: !566, discriminator: 1)
!3328 = !DILocation(line: 1546, column: 9, scope: !3322)
!3329 = !DILocation(line: 1546, column: 8, scope: !3323)
!3330 = !DILocation(line: 1547, column: 5, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3322, file: !566, line: 1546, column: 51)
!3332 = !DILocation(line: 1547, column: 10, scope: !3331)
!3333 = !DILocation(line: 1547, column: 15, scope: !3331)
!3334 = !DILocation(line: 1548, column: 6, scope: !3331)
!3335 = !DILocation(line: 1549, column: 4, scope: !3331)
!3336 = !DILocation(line: 1550, column: 17, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3323, file: !566, line: 1550, column: 8)
!3338 = !DILocation(line: 1550, column: 22, scope: !3337)
!3339 = !DILocation(line: 1550, column: 44, scope: !3337)
!3340 = !DILocation(line: 1550, column: 52, scope: !3337)
!3341 = !DILocation(line: 1550, column: 32, scope: !3337)
!3342 = !DILocation(line: 1550, column: 8, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3337, file: !566, discriminator: 1)
!3344 = !DILocation(line: 1550, column: 8, scope: !3323)
!3345 = !DILocation(line: 1551, column: 5, scope: !3337)
!3346 = !DILocation(line: 1552, column: 4, scope: !3323)
!3347 = !DILocation(line: 1552, column: 9, scope: !3323)
!3348 = !DILocation(line: 1552, column: 14, scope: !3323)
!3349 = !DILocation(line: 1553, column: 3, scope: !3323)
!3350 = !DILocation(line: 1554, column: 20, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3318, file: !566, line: 1554, column: 12)
!3352 = !DILocation(line: 1554, column: 13, scope: !3351)
!3353 = !DILocation(line: 1554, column: 12, scope: !3318)
!3354 = !DILocation(line: 1555, column: 20, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !566, line: 1555, column: 8)
!3356 = distinct !DILexicalBlock(scope: !3351, file: !566, line: 1554, column: 36)
!3357 = !DILocation(line: 1555, column: 25, scope: !3355)
!3358 = !DILocation(line: 1555, column: 45, scope: !3355)
!3359 = !DILocation(line: 1555, column: 53, scope: !3355)
!3360 = !DILocation(line: 1555, column: 33, scope: !3355)
!3361 = !DILocation(line: 1555, column: 8, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !3355, file: !566, discriminator: 1)
!3363 = !DILocation(line: 1555, column: 8, scope: !3356)
!3364 = !DILocation(line: 1556, column: 98, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3355, file: !566, line: 1555, column: 60)
!3366 = !DILocation(line: 1556, column: 105, scope: !3365)
!3367 = !DILocation(line: 1556, column: 86, scope: !3365)
!3368 = !DILocation(line: 1556, column: 5, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3365, file: !566, discriminator: 1)
!3370 = !DILocation(line: 1557, column: 1, scope: !3365)
!3371 = !DILocation(line: 1558, column: 5, scope: !3365)
!3372 = !DILocation(line: 1560, column: 8, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3356, file: !566, line: 1560, column: 8)
!3374 = !DILocation(line: 1560, column: 13, scope: !3373)
!3375 = !DILocation(line: 1560, column: 20, scope: !3373)
!3376 = !DILocation(line: 1560, column: 8, scope: !3356)
!3377 = !DILocation(line: 1560, column: 5, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3379, file: !566, discriminator: 1)
!3379 = distinct !DILexicalBlock(scope: !3373, file: !566, line: 1559, column: 32)
!3380 = !DILocation(line: 1561, column: 1, scope: !3379)
!3381 = !DILocation(line: 1562, column: 5, scope: !3379)
!3382 = !DILocation(line: 1564, column: 4, scope: !3356)
!3383 = !DILocation(line: 1564, column: 9, scope: !3356)
!3384 = !DILocation(line: 1564, column: 16, scope: !3356)
!3385 = !DILocation(line: 1564, column: 3, scope: !3356)
!3386 = !DILocation(line: 1565, column: 20, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3351, file: !566, line: 1565, column: 12)
!3388 = !DILocation(line: 1565, column: 13, scope: !3387)
!3389 = !DILocation(line: 1565, column: 12, scope: !3351)
!3390 = !DILocation(line: 1566, column: 28, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !566, line: 1566, column: 8)
!3392 = distinct !DILexicalBlock(scope: !3387, file: !566, line: 1565, column: 37)
!3393 = !DILocation(line: 1566, column: 36, scope: !3391)
!3394 = !DILocation(line: 1566, column: 16, scope: !3391)
!3395 = !DILocation(line: 1566, column: 9, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3391, file: !566, discriminator: 1)
!3397 = !DILocation(line: 1566, column: 9, scope: !3391)
!3398 = !DILocation(line: 1566, column: 8, scope: !3392)
!3399 = !DILocation(line: 1567, column: 5, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3391, file: !566, line: 1566, column: 51)
!3401 = !DILocation(line: 1567, column: 10, scope: !3400)
!3402 = !DILocation(line: 1567, column: 15, scope: !3400)
!3403 = !DILocation(line: 1568, column: 6, scope: !3400)
!3404 = !DILocation(line: 1569, column: 4, scope: !3400)
!3405 = !DILocation(line: 1570, column: 22, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3392, file: !566, line: 1570, column: 8)
!3407 = !DILocation(line: 1570, column: 27, scope: !3406)
!3408 = !DILocation(line: 1570, column: 48, scope: !3406)
!3409 = !DILocation(line: 1570, column: 56, scope: !3406)
!3410 = !DILocation(line: 1570, column: 36, scope: !3406)
!3411 = !DILocation(line: 1570, column: 8, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3406, file: !566, discriminator: 1)
!3413 = !DILocation(line: 1570, column: 8, scope: !3392)
!3414 = !DILocation(line: 1571, column: 115, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3406, file: !566, line: 1570, column: 67)
!3416 = !DILocation(line: 1571, column: 122, scope: !3415)
!3417 = !DILocation(line: 1571, column: 103, scope: !3415)
!3418 = !DILocation(line: 1571, column: 5, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3415, file: !566, discriminator: 1)
!3420 = !DILocation(line: 1572, column: 5, scope: !3415)
!3421 = !DILocation(line: 1574, column: 4, scope: !3392)
!3422 = !DILocation(line: 1574, column: 9, scope: !3392)
!3423 = !DILocation(line: 1574, column: 14, scope: !3392)
!3424 = !DILocation(line: 1575, column: 3, scope: !3392)
!3425 = !DILocation(line: 1576, column: 20, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3387, file: !566, line: 1576, column: 12)
!3427 = !DILocation(line: 1576, column: 13, scope: !3426)
!3428 = !DILocation(line: 1576, column: 12, scope: !3387)
!3429 = !DILocation(line: 1577, column: 17, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !566, line: 1577, column: 8)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !566, line: 1576, column: 38)
!3432 = !DILocation(line: 1577, column: 22, scope: !3430)
!3433 = !DILocation(line: 1577, column: 44, scope: !3430)
!3434 = !DILocation(line: 1577, column: 52, scope: !3430)
!3435 = !DILocation(line: 1577, column: 32, scope: !3430)
!3436 = !DILocation(line: 1577, column: 8, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3430, file: !566, discriminator: 1)
!3438 = !DILocation(line: 1577, column: 8, scope: !3431)
!3439 = !DILocation(line: 1578, column: 5, scope: !3430)
!3440 = !DILocation(line: 1579, column: 4, scope: !3431)
!3441 = !DILocation(line: 1579, column: 9, scope: !3431)
!3442 = !DILocation(line: 1579, column: 14, scope: !3431)
!3443 = !DILocation(line: 1580, column: 3, scope: !3431)
!3444 = !DILocation(line: 1581, column: 20, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3426, file: !566, line: 1581, column: 12)
!3446 = !DILocation(line: 1581, column: 13, scope: !3445)
!3447 = !DILocation(line: 1581, column: 12, scope: !3426)
!3448 = !DILocation(line: 1582, column: 5, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !566, line: 1581, column: 38)
!3450 = !DILocation(line: 1583, column: 17, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !566, line: 1583, column: 8)
!3452 = !DILocation(line: 1583, column: 22, scope: !3451)
!3453 = !DILocation(line: 1583, column: 44, scope: !3451)
!3454 = !DILocation(line: 1583, column: 52, scope: !3451)
!3455 = !DILocation(line: 1583, column: 32, scope: !3451)
!3456 = !DILocation(line: 1583, column: 8, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3451, file: !566, discriminator: 1)
!3458 = !DILocation(line: 1583, column: 8, scope: !3449)
!3459 = !DILocation(line: 1584, column: 5, scope: !3451)
!3460 = !DILocation(line: 1585, column: 4, scope: !3449)
!3461 = !DILocation(line: 1585, column: 9, scope: !3449)
!3462 = !DILocation(line: 1585, column: 14, scope: !3449)
!3463 = !DILocation(line: 1586, column: 3, scope: !3449)
!3464 = !DILocation(line: 1587, column: 20, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3445, file: !566, line: 1587, column: 12)
!3466 = !DILocation(line: 1587, column: 13, scope: !3465)
!3467 = !DILocation(line: 1587, column: 12, scope: !3445)
!3468 = !DILocation(line: 1588, column: 5, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3465, file: !566, line: 1587, column: 38)
!3470 = !DILocation(line: 1589, column: 35, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3469, file: !566, line: 1589, column: 8)
!3472 = !DILocation(line: 1589, column: 43, scope: !3471)
!3473 = !DILocation(line: 1589, column: 23, scope: !3471)
!3474 = !DILocation(line: 1589, column: 9, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3471, file: !566, discriminator: 1)
!3476 = !DILocation(line: 1589, column: 9, scope: !3471)
!3477 = !DILocation(line: 1589, column: 8, scope: !3469)
!3478 = !DILocation(line: 1590, column: 5, scope: !3471)
!3479 = !DILocation(line: 1590, column: 10, scope: !3471)
!3480 = !DILocation(line: 1590, column: 19, scope: !3471)
!3481 = !DILocation(line: 1592, column: 95, scope: !3471)
!3482 = !DILocation(line: 1592, column: 102, scope: !3471)
!3483 = !DILocation(line: 1592, column: 83, scope: !3471)
!3484 = !DILocation(line: 1592, column: 5, scope: !3475)
!3485 = !DILocation(line: 1593, column: 3, scope: !3469)
!3486 = !DILocation(line: 1594, column: 20, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3465, file: !566, line: 1594, column: 12)
!3488 = !DILocation(line: 1594, column: 13, scope: !3487)
!3489 = !DILocation(line: 1594, column: 12, scope: !3465)
!3490 = !DILocation(line: 1595, column: 5, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !566, line: 1594, column: 38)
!3492 = !DILocation(line: 1597, column: 34, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3491, file: !566, line: 1597, column: 8)
!3494 = !DILocation(line: 1597, column: 42, scope: !3493)
!3495 = !DILocation(line: 1597, column: 22, scope: !3493)
!3496 = !DILocation(line: 1597, column: 8, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3493, file: !566, discriminator: 1)
!3498 = !DILocation(line: 1597, column: 8, scope: !3491)
!3499 = !DILocation(line: 1598, column: 5, scope: !3493)
!3500 = !DILocation(line: 1599, column: 20, scope: !3491)
!3501 = !DILocation(line: 1599, column: 4, scope: !3491)
!3502 = !DILocation(line: 1599, column: 9, scope: !3491)
!3503 = !DILocation(line: 1599, column: 18, scope: !3491)
!3504 = !DILocation(line: 1600, column: 4, scope: !3491)
!3505 = !DILocation(line: 1600, column: 9, scope: !3491)
!3506 = !DILocation(line: 1600, column: 14, scope: !3491)
!3507 = !DILocation(line: 1604, column: 3, scope: !3491)
!3508 = !DILocation(line: 1605, column: 20, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3487, file: !566, line: 1605, column: 12)
!3510 = !DILocation(line: 1605, column: 13, scope: !3509)
!3511 = !DILocation(line: 1605, column: 12, scope: !3487)
!3512 = !DILocation(line: 1606, column: 5, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !566, line: 1605, column: 37)
!3514 = !DILocation(line: 1608, column: 28, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3513, file: !566, line: 1608, column: 8)
!3516 = !DILocation(line: 1608, column: 36, scope: !3515)
!3517 = !DILocation(line: 1608, column: 16, scope: !3515)
!3518 = !DILocation(line: 1608, column: 9, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3515, file: !566, discriminator: 1)
!3520 = !DILocation(line: 1608, column: 9, scope: !3515)
!3521 = !DILocation(line: 1608, column: 8, scope: !3513)
!3522 = !DILocation(line: 1609, column: 5, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3515, file: !566, line: 1608, column: 49)
!3524 = !DILocation(line: 1609, column: 10, scope: !3523)
!3525 = !DILocation(line: 1609, column: 15, scope: !3523)
!3526 = !DILocation(line: 1610, column: 6, scope: !3523)
!3527 = !DILocation(line: 1611, column: 4, scope: !3523)
!3528 = !DILocation(line: 1612, column: 22, scope: !3513)
!3529 = !DILocation(line: 1612, column: 30, scope: !3513)
!3530 = !DILocation(line: 1612, column: 10, scope: !3513)
!3531 = !DILocation(line: 1612, column: 8, scope: !3513)
!3532 = !DILocation(line: 1613, column: 33, scope: !3513)
!3533 = !DILocation(line: 1613, column: 26, scope: !3513)
!3534 = !DILocation(line: 1613, column: 38, scope: !3513)
!3535 = !DILocation(line: 1613, column: 19, scope: !3536)
!3536 = !DILexicalBlockFile(scope: !3513, file: !566, discriminator: 1)
!3537 = !DILocation(line: 1613, column: 4, scope: !3513)
!3538 = !DILocation(line: 1613, column: 9, scope: !3513)
!3539 = !DILocation(line: 1613, column: 17, scope: !3513)
!3540 = !DILocation(line: 1614, column: 11, scope: !3513)
!3541 = !DILocation(line: 1614, column: 16, scope: !3513)
!3542 = !DILocation(line: 1614, column: 25, scope: !3513)
!3543 = !DILocation(line: 1614, column: 4, scope: !3513)
!3544 = !DILocation(line: 1618, column: 3, scope: !3513)
!3545 = !DILocation(line: 1619, column: 20, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3509, file: !566, line: 1619, column: 12)
!3547 = !DILocation(line: 1619, column: 13, scope: !3546)
!3548 = !DILocation(line: 1619, column: 12, scope: !3509)
!3549 = !DILocation(line: 1620, column: 5, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !566, line: 1619, column: 34)
!3551 = !DILocation(line: 1622, column: 8, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3550, file: !566, line: 1622, column: 8)
!3553 = !DILocation(line: 1622, column: 13, scope: !3552)
!3554 = !DILocation(line: 1622, column: 20, scope: !3552)
!3555 = !DILocation(line: 1622, column: 8, scope: !3550)
!3556 = !DILocation(line: 1623, column: 5, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !566, line: 1622, column: 31)
!3558 = !DILocation(line: 1624, column: 1, scope: !3557)
!3559 = !DILocation(line: 1625, column: 5, scope: !3557)
!3560 = !DILocation(line: 1627, column: 4, scope: !3550)
!3561 = !DILocation(line: 1627, column: 9, scope: !3550)
!3562 = !DILocation(line: 1627, column: 16, scope: !3550)
!3563 = !DILocation(line: 1627, column: 22, scope: !3550)
!3564 = !DILocation(line: 1627, column: 30, scope: !3550)
!3565 = !DILocation(line: 1627, column: 10, scope: !3550)
!3566 = !DILocation(line: 1627, column: 8, scope: !3550)
!3567 = !DILocation(line: 1628, column: 16, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3550, file: !566, line: 1628, column: 8)
!3569 = !DILocation(line: 1628, column: 9, scope: !3568)
!3570 = !DILocation(line: 1628, column: 8, scope: !3550)
!3571 = !DILocation(line: 1629, column: 5, scope: !3568)
!3572 = !DILocation(line: 1629, column: 10, scope: !3568)
!3573 = !DILocation(line: 1629, column: 15, scope: !3568)
!3574 = !DILocation(line: 1630, column: 21, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3568, file: !566, line: 1630, column: 13)
!3576 = !DILocation(line: 1630, column: 14, scope: !3575)
!3577 = !DILocation(line: 1630, column: 13, scope: !3568)
!3578 = !DILocation(line: 1631, column: 5, scope: !3575)
!3579 = !DILocation(line: 1631, column: 10, scope: !3575)
!3580 = !DILocation(line: 1631, column: 15, scope: !3575)
!3581 = !DILocation(line: 1632, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !566, line: 1632, column: 13)
!3583 = !DILocation(line: 1632, column: 14, scope: !3582)
!3584 = !DILocation(line: 1632, column: 13, scope: !3575)
!3585 = !DILocation(line: 1633, column: 5, scope: !3582)
!3586 = !DILocation(line: 1633, column: 10, scope: !3582)
!3587 = !DILocation(line: 1633, column: 15, scope: !3582)
!3588 = !DILocation(line: 1634, column: 28, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3582, file: !566, line: 1634, column: 13)
!3590 = !DILocation(line: 1634, column: 14, scope: !3589)
!3591 = !DILocation(line: 1634, column: 13, scope: !3582)
!3592 = !DILocation(line: 1635, column: 17, scope: !3589)
!3593 = !DILocation(line: 1635, column: 5, scope: !3589)
!3594 = !DILocation(line: 1635, column: 10, scope: !3589)
!3595 = !DILocation(line: 1635, column: 15, scope: !3589)
!3596 = !DILocation(line: 1637, column: 5, scope: !3589)
!3597 = !DILocation(line: 1638, column: 4, scope: !3550)
!3598 = !DILocation(line: 1638, column: 9, scope: !3550)
!3599 = !DILocation(line: 1638, column: 14, scope: !3550)
!3600 = !DILocation(line: 1642, column: 3, scope: !3550)
!3601 = !DILocation(line: 1643, column: 20, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3546, file: !566, line: 1643, column: 12)
!3603 = !DILocation(line: 1643, column: 13, scope: !3602)
!3604 = !DILocation(line: 1643, column: 12, scope: !3546)
!3605 = !DILocation(line: 1644, column: 5, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3602, file: !566, line: 1643, column: 48)
!3607 = !DILocation(line: 1652, column: 4, scope: !3606)
!3608 = !DILocation(line: 1654, column: 3, scope: !3606)
!3609 = !DILocation(line: 1656, column: 20, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3602, file: !566, line: 1656, column: 12)
!3611 = !DILocation(line: 1656, column: 13, scope: !3610)
!3612 = !DILocation(line: 1656, column: 12, scope: !3602)
!3613 = !DILocation(line: 1657, column: 4, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !566, line: 1656, column: 32)
!3615 = !DILocation(line: 1659, column: 8, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3614, file: !566, line: 1659, column: 8)
!3617 = !DILocation(line: 1659, column: 13, scope: !3616)
!3618 = !DILocation(line: 1659, column: 8, scope: !3614)
!3619 = !DILocation(line: 1660, column: 5, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3616, file: !566, line: 1659, column: 18)
!3621 = !DILocation(line: 1661, column: 7, scope: !3620)
!3622 = !DILocation(line: 1662, column: 5, scope: !3620)
!3623 = distinct !{!3623, !2547}
!3624 = !DILocation(line: 1665, column: 15, scope: !3614)
!3625 = !DILocation(line: 1665, column: 4, scope: !3614)
!3626 = !DILocation(line: 1665, column: 9, scope: !3614)
!3627 = !DILocation(line: 1665, column: 13, scope: !3614)
!3628 = !DILocalVariable(name: "nh", scope: !3614, file: !566, line: 1668, type: !1315)
!3629 = !DILocation(line: 1668, column: 15, scope: !3614)
!3630 = !DILocation(line: 1668, column: 21, scope: !3614)
!3631 = !DILocation(line: 1668, column: 20, scope: !3614)
!3632 = !DILocation(line: 1669, column: 15, scope: !3614)
!3633 = !DILocation(line: 1669, column: 20, scope: !3614)
!3634 = !DILocation(line: 1669, column: 4, scope: !3614)
!3635 = !DILocation(line: 1669, column: 8, scope: !3614)
!3636 = !DILocation(line: 1669, column: 13, scope: !3614)
!3637 = !DILocation(line: 1670, column: 4, scope: !3614)
!3638 = !DILocation(line: 1670, column: 9, scope: !3614)
!3639 = !DILocation(line: 1670, column: 13, scope: !3614)
!3640 = !DILocation(line: 1671, column: 13, scope: !3614)
!3641 = !DILocation(line: 1671, column: 18, scope: !3614)
!3642 = !DILocation(line: 1671, column: 23, scope: !3614)
!3643 = !DILocation(line: 1671, column: 4, scope: !3614)
!3644 = !DILocation(line: 1674, column: 10, scope: !3614)
!3645 = !DILocation(line: 1674, column: 9, scope: !3614)
!3646 = !DILocation(line: 1674, column: 7, scope: !3614)
!3647 = !DILocation(line: 1675, column: 48, scope: !3614)
!3648 = !DILocation(line: 1675, column: 56, scope: !3614)
!3649 = !DILocation(line: 1675, column: 36, scope: !3614)
!3650 = !DILocation(line: 1675, column: 15, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3614, file: !566, discriminator: 1)
!3652 = !DILocation(line: 1675, column: 4, scope: !3614)
!3653 = !DILocation(line: 1675, column: 8, scope: !3614)
!3654 = !DILocation(line: 1675, column: 13, scope: !3614)
!3655 = !DILocation(line: 1676, column: 9, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3614, file: !566, line: 1676, column: 8)
!3657 = !DILocation(line: 1676, column: 13, scope: !3656)
!3658 = !DILocation(line: 1676, column: 8, scope: !3614)
!3659 = !DILocation(line: 1677, column: 96, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3656, file: !566, line: 1676, column: 19)
!3661 = !DILocation(line: 1677, column: 103, scope: !3660)
!3662 = !DILocation(line: 1677, column: 84, scope: !3660)
!3663 = !DILocation(line: 1677, column: 5, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3660, file: !566, discriminator: 1)
!3665 = !DILocation(line: 1678, column: 11, scope: !3660)
!3666 = !DILocation(line: 1678, column: 6, scope: !3660)
!3667 = !DILocation(line: 1678, column: 21, scope: !3660)
!3668 = !DILocation(line: 1679, column: 1, scope: !3660)
!3669 = !DILocation(line: 1680, column: 5, scope: !3660)
!3670 = !DILocation(line: 1682, column: 13, scope: !3614)
!3671 = !DILocation(line: 1682, column: 18, scope: !3614)
!3672 = !DILocation(line: 1682, column: 23, scope: !3614)
!3673 = !DILocation(line: 1682, column: 4, scope: !3614)
!3674 = !DILocation(line: 1683, column: 3, scope: !3614)
!3675 = !DILocation(line: 1684, column: 20, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3610, file: !566, line: 1684, column: 12)
!3677 = !DILocation(line: 1684, column: 13, scope: !3676)
!3678 = !DILocation(line: 1684, column: 12, scope: !3610)
!3679 = !DILocation(line: 1685, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !566, line: 1685, column: 8)
!3681 = distinct !DILexicalBlock(scope: !3676, file: !566, line: 1684, column: 37)
!3682 = !DILocation(line: 1685, column: 13, scope: !3680)
!3683 = !DILocation(line: 1685, column: 8, scope: !3681)
!3684 = !DILocation(line: 1686, column: 5, scope: !3680)
!3685 = !DILocation(line: 1688, column: 16, scope: !3680)
!3686 = !DILocation(line: 1688, column: 4, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3681, file: !566, discriminator: 1)
!3688 = !DILocation(line: 1690, column: 20, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3676, file: !566, line: 1690, column: 12)
!3690 = !DILocation(line: 1690, column: 13, scope: !3689)
!3691 = !DILocation(line: 1690, column: 12, scope: !3676)
!3692 = !DILocation(line: 1691, column: 4, scope: !3689)
!3693 = !DILocation(line: 1691, column: 9, scope: !3689)
!3694 = !DILocation(line: 1691, column: 20, scope: !3689)
!3695 = !DILocation(line: 1692, column: 12, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3689, file: !566, line: 1692, column: 12)
!3697 = !DILocation(line: 1692, column: 30, scope: !3696)
!3698 = !DILocation(line: 1692, column: 41, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3696, file: !566, discriminator: 1)
!3700 = !DILocation(line: 1692, column: 34, scope: !3699)
!3701 = !DILocation(line: 1692, column: 12, scope: !3699)
!3702 = !DILocation(line: 1693, column: 5, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3696, file: !566, line: 1692, column: 62)
!3704 = !DILocation(line: 1694, column: 8, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3703, file: !566, line: 1694, column: 8)
!3706 = !DILocation(line: 1694, column: 13, scope: !3705)
!3707 = !DILocation(line: 1694, column: 8, scope: !3703)
!3708 = !DILocation(line: 1695, column: 100, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !566, line: 1694, column: 26)
!3710 = !DILocation(line: 1695, column: 107, scope: !3709)
!3711 = !DILocation(line: 1695, column: 88, scope: !3709)
!3712 = !DILocation(line: 1695, column: 5, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3709, file: !566, discriminator: 1)
!3714 = !DILocation(line: 1696, column: 5, scope: !3709)
!3715 = !DILocation(line: 1698, column: 58, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3703, file: !566, line: 1698, column: 8)
!3717 = !DILocation(line: 1698, column: 66, scope: !3716)
!3718 = !DILocation(line: 1698, column: 46, scope: !3716)
!3719 = !DILocation(line: 1698, column: 29, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !3716, file: !566, discriminator: 1)
!3721 = !DILocation(line: 1698, column: 10, scope: !3716)
!3722 = !DILocation(line: 1698, column: 15, scope: !3716)
!3723 = !DILocation(line: 1698, column: 27, scope: !3716)
!3724 = !DILocation(line: 1698, column: 8, scope: !3703)
!3725 = !DILocation(line: 1699, column: 95, scope: !3716)
!3726 = !DILocation(line: 1699, column: 102, scope: !3716)
!3727 = !DILocation(line: 1699, column: 83, scope: !3716)
!3728 = !DILocation(line: 1699, column: 5, scope: !3720)
!3729 = !DILocation(line: 1699, column: 5, scope: !3716)
!3730 = !DILocation(line: 1700, column: 3, scope: !3703)
!3731 = !DILocation(line: 1702, column: 16, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !566, line: 1702, column: 8)
!3733 = distinct !DILexicalBlock(scope: !3696, file: !566, line: 1701, column: 8)
!3734 = !DILocation(line: 1702, column: 9, scope: !3732)
!3735 = !DILocation(line: 1702, column: 8, scope: !3733)
!3736 = !DILocation(line: 1703, column: 6, scope: !3732)
!3737 = !DILocation(line: 1703, column: 5, scope: !3732)
!3738 = !DILocation(line: 1705, column: 30, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3733, file: !566, line: 1705, column: 8)
!3740 = !DILocation(line: 1705, column: 8, scope: !3739)
!3741 = !DILocation(line: 1705, column: 8, scope: !3733)
!3742 = !DILocation(line: 1706, column: 17, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3739, file: !566, line: 1705, column: 43)
!3744 = !DILocation(line: 1706, column: 5, scope: !3743)
!3745 = !DILocation(line: 1706, column: 10, scope: !3743)
!3746 = !DILocation(line: 1706, column: 15, scope: !3743)
!3747 = !DILocation(line: 1707, column: 5, scope: !3743)
!3748 = !DILocation(line: 1707, column: 10, scope: !3743)
!3749 = !DILocation(line: 1707, column: 15, scope: !3743)
!3750 = !DILocation(line: 1708, column: 6, scope: !3743)
!3751 = !DILocation(line: 1709, column: 4, scope: !3743)
!3752 = !DILocation(line: 1710, column: 8, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3733, file: !566, line: 1710, column: 8)
!3754 = !DILocation(line: 1710, column: 13, scope: !3753)
!3755 = !DILocation(line: 1710, column: 8, scope: !3733)
!3756 = !DILocation(line: 1711, column: 11, scope: !3753)
!3757 = !DILocation(line: 1711, column: 16, scope: !3753)
!3758 = !DILocation(line: 1711, column: 6, scope: !3753)
!3759 = !DILocation(line: 1711, column: 23, scope: !3753)
!3760 = !DILocation(line: 1711, column: 28, scope: !3753)
!3761 = !DILocation(line: 1711, column: 33, scope: !3753)
!3762 = !DILocation(line: 1711, column: 5, scope: !3753)
!3763 = !DILocation(line: 1712, column: 23, scope: !3733)
!3764 = !DILocation(line: 1712, column: 31, scope: !3733)
!3765 = !DILocation(line: 1712, column: 11, scope: !3733)
!3766 = !DILocation(line: 1712, column: 9, scope: !3733)
!3767 = !DILocation(line: 1713, column: 31, scope: !3733)
!3768 = !DILocation(line: 1713, column: 10, scope: !3733)
!3769 = !DILocation(line: 1713, column: 8, scope: !3733)
!3770 = !DILocation(line: 1714, column: 9, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3733, file: !566, line: 1714, column: 8)
!3772 = !DILocation(line: 1714, column: 8, scope: !3733)
!3773 = !DILocation(line: 1715, column: 75, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !566, line: 1714, column: 14)
!3775 = !DILocation(line: 1715, column: 5, scope: !3774)
!3776 = !DILocation(line: 1716, column: 1, scope: !3774)
!3777 = !DILocation(line: 1717, column: 5, scope: !3774)
!3778 = !DILocation(line: 1719, column: 8, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3733, file: !566, line: 1719, column: 8)
!3780 = !DILocation(line: 1719, column: 13, scope: !3779)
!3781 = !DILocation(line: 1719, column: 20, scope: !3779)
!3782 = !DILocation(line: 1719, column: 8, scope: !3733)
!3783 = !DILocation(line: 1719, column: 19, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3779, file: !566, discriminator: 1)
!3785 = !DILocation(line: 1719, column: 24, scope: !3784)
!3786 = !DILocation(line: 1719, column: 28, scope: !3784)
!3787 = !DILocation(line: 1719, column: 5, scope: !3784)
!3788 = !DILocation(line: 1719, column: 10, scope: !3784)
!3789 = !DILocation(line: 1719, column: 17, scope: !3784)
!3790 = !DILocation(line: 1720, column: 13, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3779, file: !566, line: 1720, column: 13)
!3792 = !DILocation(line: 1720, column: 18, scope: !3791)
!3793 = !DILocation(line: 1720, column: 28, scope: !3791)
!3794 = !DILocation(line: 1720, column: 33, scope: !3791)
!3795 = !DILocation(line: 1720, column: 37, scope: !3791)
!3796 = !DILocation(line: 1720, column: 25, scope: !3791)
!3797 = !DILocation(line: 1720, column: 13, scope: !3779)
!3798 = !DILocation(line: 1721, column: 100, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3791, file: !566, line: 1720, column: 49)
!3800 = !DILocation(line: 1721, column: 5, scope: !3799)
!3801 = !DILocation(line: 1722, column: 1, scope: !3799)
!3802 = !DILocation(line: 1723, column: 5, scope: !3799)
!3803 = !DILocation(line: 1725, column: 15, scope: !3733)
!3804 = !DILocation(line: 1725, column: 4, scope: !3733)
!3805 = !DILocation(line: 1725, column: 9, scope: !3733)
!3806 = !DILocation(line: 1725, column: 13, scope: !3733)
!3807 = !DILocation(line: 1727, column: 4, scope: !2555)
!3808 = !DILocation(line: 1308, column: 2, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !2501, file: !566, discriminator: 2)
!3810 = !DILocation(line: 1730, column: 6, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !2501, file: !566, line: 1730, column: 6)
!3812 = !DILocation(line: 1730, column: 6, scope: !2501)
!3813 = !DILocation(line: 1731, column: 18, scope: !3811)
!3814 = !DILocation(line: 1731, column: 26, scope: !3811)
!3815 = !DILocation(line: 1731, column: 29, scope: !3811)
!3816 = !DILocation(line: 1731, column: 3, scope: !3811)
!3817 = !DILocation(line: 1732, column: 11, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3811, file: !566, line: 1732, column: 11)
!3819 = !DILocation(line: 1732, column: 17, scope: !3818)
!3820 = !DILocation(line: 1732, column: 26, scope: !3818)
!3821 = !DILocation(line: 1732, column: 13, scope: !3818)
!3822 = !DILocation(line: 1732, column: 11, scope: !3811)
!3823 = !DILocation(line: 1733, column: 101, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3818, file: !566, line: 1732, column: 38)
!3825 = !DILocation(line: 1733, column: 108, scope: !3824)
!3826 = !DILocation(line: 1733, column: 89, scope: !3824)
!3827 = !DILocation(line: 1733, column: 3, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3824, file: !566, discriminator: 1)
!3829 = !DILocation(line: 1734, column: 1, scope: !3824)
!3830 = !DILocation(line: 1735, column: 3, scope: !3824)
!3831 = !DILocation(line: 1738, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !2501, file: !566, line: 1738, column: 6)
!3833 = !DILocation(line: 1738, column: 12, scope: !3832)
!3834 = !DILocation(line: 1738, column: 6, scope: !2501)
!3835 = !DILocation(line: 1739, column: 3, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3832, file: !566, line: 1738, column: 17)
!3837 = !DILocation(line: 1740, column: 1, scope: !3836)
!3838 = !DILocation(line: 1741, column: 3, scope: !3836)
!3839 = !DILocation(line: 1744, column: 7, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !2501, file: !566, line: 1744, column: 6)
!3841 = !DILocation(line: 1744, column: 12, scope: !3840)
!3842 = !DILocation(line: 1744, column: 6, scope: !2501)
!3843 = !DILocation(line: 1745, column: 8, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !566, line: 1745, column: 7)
!3845 = distinct !DILexicalBlock(scope: !3840, file: !566, line: 1744, column: 24)
!3846 = !DILocation(line: 1745, column: 13, scope: !3844)
!3847 = !DILocation(line: 1745, column: 18, scope: !3844)
!3848 = !DILocation(line: 1745, column: 43, scope: !3844)
!3849 = !DILocation(line: 1745, column: 46, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3844, file: !566, discriminator: 1)
!3851 = !DILocation(line: 1745, column: 51, scope: !3850)
!3852 = !DILocation(line: 1745, column: 60, scope: !3850)
!3853 = !DILocation(line: 1745, column: 7, scope: !3850)
!3854 = !DILocation(line: 1746, column: 4, scope: !3844)
!3855 = !DILocation(line: 1747, column: 3, scope: !3845)
!3856 = !DILocation(line: 1747, column: 8, scope: !3845)
!3857 = !DILocation(line: 1747, column: 17, scope: !3845)
!3858 = !DILocation(line: 1748, column: 3, scope: !3845)
!3859 = !DILocation(line: 1748, column: 8, scope: !3845)
!3860 = !DILocation(line: 1748, column: 13, scope: !3845)
!3861 = !DILocation(line: 1750, column: 8, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3845, file: !566, line: 1750, column: 7)
!3863 = !DILocation(line: 1750, column: 13, scope: !3862)
!3864 = !DILocation(line: 1750, column: 7, scope: !3845)
!3865 = !DILocation(line: 1758, column: 123, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !566, line: 1750, column: 18)
!3867 = !DILocation(line: 1758, column: 4, scope: !3866)
!3868 = !DILocation(line: 1759, column: 4, scope: !3866)
!3869 = !DILocation(line: 1759, column: 9, scope: !3866)
!3870 = !DILocation(line: 1759, column: 20, scope: !3866)
!3871 = !DILocation(line: 1760, column: 3, scope: !3866)
!3872 = !DILocation(line: 1761, column: 2, scope: !3845)
!3873 = !DILocation(line: 1763, column: 6, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !2501, file: !566, line: 1763, column: 6)
!3875 = !DILocation(line: 1763, column: 11, scope: !3874)
!3876 = !DILocation(line: 1763, column: 23, scope: !3874)
!3877 = !DILocation(line: 1763, column: 27, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3874, file: !566, discriminator: 1)
!3879 = !DILocation(line: 1763, column: 32, scope: !3878)
!3880 = !DILocation(line: 1763, column: 6, scope: !3878)
!3881 = !DILocation(line: 1764, column: 3, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !566, line: 1763, column: 37)
!3883 = !DILocation(line: 1765, column: 3, scope: !3882)
!3884 = !DILocation(line: 1765, column: 8, scope: !3882)
!3885 = !DILocation(line: 1765, column: 20, scope: !3882)
!3886 = !DILocation(line: 1766, column: 2, scope: !3882)
!3887 = !DILocation(line: 1768, column: 11, scope: !2501)
!3888 = !DILocation(line: 1768, column: 20, scope: !2501)
!3889 = !DILocation(line: 1768, column: 2, scope: !2501)
!3890 = !DILocation(line: 1770, column: 2, scope: !2501)
!3891 = !DILocation(line: 1773, column: 15, scope: !2501)
!3892 = !DILocation(line: 1773, column: 2, scope: !2501)
!3893 = !DILocation(line: 1774, column: 1, scope: !2501)
!3894 = !DILocation(line: 1774, column: 1, scope: !2549)
!3895 = distinct !DISubprogram(name: "parse_encap", scope: !566, file: !566, line: 1134, type: !3896, isLocal: true, isDefinition: true, scopeLine: 1135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!307, !453, !3898, !1222}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!3899 = !DILocalVariable(name: "strvec", arg: 1, scope: !3895, file: !566, line: 1134, type: !453)
!3900 = !DILocation(line: 1134, column: 23, scope: !3895)
!3901 = !DILocalVariable(name: "i", arg: 2, scope: !3895, file: !566, line: 1134, type: !3898)
!3902 = !DILocation(line: 1134, column: 45, scope: !3895)
!3903 = !DILocalVariable(name: "encap", arg: 3, scope: !3895, file: !566, line: 1134, type: !1222)
!3904 = !DILocation(line: 1134, column: 57, scope: !3895)
!3905 = !DILocalVariable(name: "str", scope: !3895, file: !566, line: 1136, type: !389)
!3906 = !DILocation(line: 1136, column: 8, scope: !3895)
!3907 = !DILocation(line: 1138, column: 8, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3895, file: !566, line: 1138, column: 6)
!3909 = !DILocation(line: 1138, column: 17, scope: !3908)
!3910 = !DILocation(line: 1138, column: 34, scope: !3908)
!3911 = !DILocation(line: 1138, column: 31, scope: !3908)
!3912 = !DILocation(line: 1138, column: 28, scope: !3908)
!3913 = !DILocation(line: 1138, column: 6, scope: !3895)
!3914 = !DILocation(line: 1139, column: 3, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3908, file: !566, line: 1138, column: 37)
!3916 = !DILocation(line: 1140, column: 3, scope: !3915)
!3917 = !DILocation(line: 1143, column: 20, scope: !3895)
!3918 = !DILocation(line: 1143, column: 30, scope: !3895)
!3919 = !DILocation(line: 1143, column: 32, scope: !3895)
!3920 = !DILocation(line: 1143, column: 28, scope: !3895)
!3921 = !DILocation(line: 1143, column: 8, scope: !3895)
!3922 = !DILocation(line: 1143, column: 6, scope: !3895)
!3923 = !DILocation(line: 1145, column: 14, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3895, file: !566, line: 1145, column: 6)
!3925 = !DILocation(line: 1145, column: 7, scope: !3924)
!3926 = !DILocation(line: 1145, column: 6, scope: !3895)
!3927 = !DILocation(line: 1146, column: 18, scope: !3924)
!3928 = !DILocation(line: 1146, column: 26, scope: !3924)
!3929 = !DILocation(line: 1146, column: 29, scope: !3924)
!3930 = !DILocation(line: 1146, column: 3, scope: !3924)
!3931 = !DILocation(line: 1147, column: 19, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3924, file: !566, line: 1147, column: 11)
!3933 = !DILocation(line: 1147, column: 12, scope: !3932)
!3934 = !DILocation(line: 1147, column: 11, scope: !3924)
!3935 = !DILocation(line: 1148, column: 19, scope: !3932)
!3936 = !DILocation(line: 1148, column: 27, scope: !3932)
!3937 = !DILocation(line: 1148, column: 30, scope: !3932)
!3938 = !DILocation(line: 1148, column: 3, scope: !3932)
!3939 = !DILocation(line: 1150, column: 19, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3932, file: !566, line: 1150, column: 11)
!3941 = !DILocation(line: 1150, column: 12, scope: !3940)
!3942 = !DILocation(line: 1150, column: 11, scope: !3932)
!3943 = !DILocation(line: 1151, column: 20, scope: !3940)
!3944 = !DILocation(line: 1151, column: 28, scope: !3940)
!3945 = !DILocation(line: 1151, column: 31, scope: !3940)
!3946 = !DILocation(line: 1151, column: 3, scope: !3940)
!3947 = !DILocation(line: 1154, column: 19, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3940, file: !566, line: 1154, column: 11)
!3949 = !DILocation(line: 1154, column: 12, scope: !3948)
!3950 = !DILocation(line: 1154, column: 11, scope: !3940)
!3951 = !DILocation(line: 1155, column: 19, scope: !3948)
!3952 = !DILocation(line: 1155, column: 27, scope: !3948)
!3953 = !DILocation(line: 1155, column: 30, scope: !3948)
!3954 = !DILocation(line: 1155, column: 3, scope: !3948)
!3955 = !DILocation(line: 1158, column: 72, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3948, file: !566, line: 1157, column: 7)
!3957 = !DILocation(line: 1158, column: 3, scope: !3956)
!3958 = !DILocation(line: 1159, column: 3, scope: !3956)
!3959 = !DILocation(line: 1162, column: 5, scope: !3895)
!3960 = !DILocation(line: 1162, column: 2, scope: !3895)
!3961 = !DILocation(line: 1163, column: 2, scope: !3895)
!3962 = !DILocation(line: 1164, column: 1, scope: !3895)
!3963 = distinct !DISubprogram(name: "parse_nexthops", scope: !566, file: !566, line: 1168, type: !3964, isLocal: true, isDefinition: true, scopeLine: 1169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !453, !257, !234}
!3966 = !DILocalVariable(name: "strvec", arg: 1, scope: !3963, file: !566, line: 1168, type: !453)
!3967 = !DILocation(line: 1168, column: 26, scope: !3963)
!3968 = !DILocalVariable(name: "i", arg: 2, scope: !3963, file: !566, line: 1168, type: !257)
!3969 = !DILocation(line: 1168, column: 47, scope: !3963)
!3970 = !DILocalVariable(name: "route", arg: 3, scope: !3963, file: !566, line: 1168, type: !234)
!3971 = !DILocation(line: 1168, column: 62, scope: !3963)
!3972 = !DILocalVariable(name: "family", scope: !3963, file: !566, line: 1170, type: !281)
!3973 = !DILocation(line: 1170, column: 10, scope: !3963)
!3974 = !DILocalVariable(name: "new", scope: !3963, file: !566, line: 1171, type: !1315)
!3975 = !DILocation(line: 1171, column: 13, scope: !3963)
!3976 = !DILocalVariable(name: "str", scope: !3963, file: !566, line: 1172, type: !389)
!3977 = !DILocation(line: 1172, column: 8, scope: !3963)
!3978 = !DILocalVariable(name: "val", scope: !3963, file: !566, line: 1173, type: !270)
!3979 = !DILocation(line: 1173, column: 11, scope: !3963)
!3980 = !DILocation(line: 1175, column: 9, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3963, file: !566, line: 1175, column: 6)
!3982 = !DILocation(line: 1175, column: 16, scope: !3981)
!3983 = !DILocation(line: 1175, column: 21, scope: !3981)
!3984 = !DILocation(line: 1175, column: 6, scope: !3963)
!3985 = !DILocation(line: 1176, column: 16, scope: !3981)
!3986 = !DILocation(line: 1176, column: 3, scope: !3981)
!3987 = !DILocation(line: 1176, column: 10, scope: !3981)
!3988 = !DILocation(line: 1176, column: 14, scope: !3981)
!3989 = !DILocation(line: 1178, column: 2, scope: !3963)
!3990 = !DILocation(line: 1178, column: 9, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3963, file: !566, discriminator: 1)
!3992 = !DILocation(line: 1178, column: 15, scope: !3991)
!3993 = !DILocation(line: 1178, column: 24, scope: !3991)
!3994 = !DILocation(line: 1178, column: 11, scope: !3991)
!3995 = !DILocation(line: 1178, column: 35, scope: !3991)
!3996 = !DILocation(line: 1178, column: 69, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !3963, file: !566, discriminator: 2)
!3998 = !DILocation(line: 1178, column: 77, scope: !3997)
!3999 = !DILocation(line: 1178, column: 57, scope: !3997)
!4000 = !DILocation(line: 1178, column: 39, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !3997, file: !566, discriminator: 5)
!4002 = !DILocation(line: 1178, column: 38, scope: !3997)
!4003 = !DILocation(line: 1178, column: 2, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !3963, file: !566, discriminator: 3)
!4005 = !DILocation(line: 1179, column: 4, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3963, file: !566, line: 1178, column: 82)
!4007 = !DILocation(line: 1180, column: 10, scope: !4006)
!4008 = !DILocation(line: 1180, column: 9, scope: !4006)
!4009 = !DILocation(line: 1180, column: 7, scope: !4006)
!4010 = !DILocation(line: 1182, column: 3, scope: !4006)
!4011 = !DILocation(line: 1182, column: 10, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4006, file: !566, discriminator: 1)
!4013 = !DILocation(line: 1182, column: 16, scope: !4012)
!4014 = !DILocation(line: 1182, column: 25, scope: !4012)
!4015 = !DILocation(line: 1182, column: 12, scope: !4012)
!4016 = !DILocation(line: 1182, column: 3, scope: !4012)
!4017 = !DILocation(line: 1183, column: 22, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4006, file: !566, line: 1182, column: 37)
!4019 = !DILocation(line: 1183, column: 30, scope: !4018)
!4020 = !DILocation(line: 1183, column: 10, scope: !4018)
!4021 = !DILocation(line: 1183, column: 8, scope: !4018)
!4022 = !DILocation(line: 1185, column: 16, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4018, file: !566, line: 1185, column: 8)
!4024 = !DILocation(line: 1185, column: 9, scope: !4023)
!4025 = !DILocation(line: 1185, column: 8, scope: !4018)
!4026 = !DILocation(line: 1186, column: 23, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4023, file: !566, line: 1185, column: 29)
!4028 = !DILocation(line: 1186, column: 31, scope: !4027)
!4029 = !DILocation(line: 1186, column: 11, scope: !4027)
!4030 = !DILocation(line: 1186, column: 9, scope: !4027)
!4031 = !DILocation(line: 1187, column: 17, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4027, file: !566, line: 1187, column: 9)
!4033 = !DILocation(line: 1187, column: 10, scope: !4032)
!4034 = !DILocation(line: 1187, column: 9, scope: !4027)
!4035 = !DILocation(line: 1188, column: 13, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4032, file: !566, line: 1187, column: 31)
!4037 = !DILocation(line: 1189, column: 24, scope: !4036)
!4038 = !DILocation(line: 1189, column: 32, scope: !4036)
!4039 = !DILocation(line: 1189, column: 12, scope: !4036)
!4040 = !DILocation(line: 1189, column: 10, scope: !4036)
!4041 = !DILocation(line: 1190, column: 5, scope: !4036)
!4042 = !DILocation(line: 1191, column: 22, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4032, file: !566, line: 1191, column: 14)
!4044 = !DILocation(line: 1191, column: 15, scope: !4043)
!4045 = !DILocation(line: 1191, column: 14, scope: !4032)
!4046 = !DILocation(line: 1192, column: 13, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4043, file: !566, line: 1191, column: 37)
!4048 = !DILocation(line: 1193, column: 24, scope: !4047)
!4049 = !DILocation(line: 1193, column: 32, scope: !4047)
!4050 = !DILocation(line: 1193, column: 12, scope: !4047)
!4051 = !DILocation(line: 1193, column: 10, scope: !4047)
!4052 = !DILocation(line: 1194, column: 5, scope: !4047)
!4053 = !DILocation(line: 1196, column: 9, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4027, file: !566, line: 1196, column: 9)
!4055 = !DILocation(line: 1196, column: 16, scope: !4054)
!4056 = !DILocation(line: 1196, column: 9, scope: !4027)
!4057 = !DILocation(line: 1197, column: 10, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !566, line: 1197, column: 10)
!4059 = distinct !DILexicalBlock(scope: !4054, file: !566, line: 1196, column: 29)
!4060 = !DILocation(line: 1197, column: 17, scope: !4058)
!4061 = !DILocation(line: 1197, column: 24, scope: !4058)
!4062 = !DILocation(line: 1197, column: 10, scope: !4059)
!4063 = !DILocation(line: 1198, column: 23, scope: !4058)
!4064 = !DILocation(line: 1198, column: 7, scope: !4058)
!4065 = !DILocation(line: 1198, column: 14, scope: !4058)
!4066 = !DILocation(line: 1198, column: 21, scope: !4058)
!4067 = !DILocation(line: 1199, column: 15, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4058, file: !566, line: 1199, column: 15)
!4069 = !DILocation(line: 1199, column: 22, scope: !4068)
!4070 = !DILocation(line: 1199, column: 32, scope: !4068)
!4071 = !DILocation(line: 1199, column: 29, scope: !4068)
!4072 = !DILocation(line: 1199, column: 15, scope: !4058)
!4073 = !DILocation(line: 1200, column: 7, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4068, file: !566, line: 1199, column: 40)
!4075 = !DILocation(line: 1201, column: 1, scope: !4074)
!4076 = !DILocation(line: 1202, column: 7, scope: !4074)
!4077 = !DILocation(line: 1204, column: 5, scope: !4059)
!4078 = !DILocation(line: 1205, column: 38, scope: !4027)
!4079 = !DILocation(line: 1206, column: 17, scope: !4027)
!4080 = !DILocation(line: 1206, column: 5, scope: !4027)
!4081 = !DILocation(line: 1206, column: 10, scope: !4027)
!4082 = !DILocation(line: 1206, column: 15, scope: !4027)
!4083 = !DILocation(line: 1206, column: 10, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4027, file: !566, line: 1206, column: 9)
!4085 = !DILocation(line: 1206, column: 15, scope: !4084)
!4086 = !DILocation(line: 1206, column: 9, scope: !4027)
!4087 = !DILocation(line: 1207, column: 78, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4084, file: !566, line: 1206, column: 21)
!4089 = !DILocation(line: 1207, column: 6, scope: !4088)
!4090 = !DILocation(line: 1208, column: 1, scope: !4088)
!4091 = !DILocation(line: 1209, column: 6, scope: !4088)
!4092 = !DILocation(line: 1211, column: 9, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4027, file: !566, line: 1211, column: 9)
!4094 = !DILocation(line: 1211, column: 16, scope: !4093)
!4095 = !DILocation(line: 1211, column: 23, scope: !4093)
!4096 = !DILocation(line: 1210, column: 35, scope: !4093)
!4097 = !DILocation(line: 1210, column: 38, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !4093, file: !566, discriminator: 1)
!4099 = !DILocation(line: 1210, column: 43, scope: !4098)
!4100 = !DILocation(line: 1210, column: 49, scope: !4098)
!4101 = !DILocation(line: 1210, column: 53, scope: !4098)
!4102 = !DILocation(line: 1210, column: 67, scope: !4098)
!4103 = !DILocation(line: 1210, column: 74, scope: !4098)
!4104 = !DILocation(line: 1210, column: 64, scope: !4098)
!4105 = !DILocation(line: 1211, column: 9, scope: !4106)
!4106 = !DILexicalBlockFile(scope: !4027, file: !566, discriminator: 1)
!4107 = !DILocation(line: 1211, column: 6, scope: !4108)
!4108 = !DILexicalBlockFile(scope: !4109, file: !566, discriminator: 2)
!4109 = distinct !DILexicalBlock(scope: !4093, file: !566, line: 1210, column: 82)
!4110 = !DILocation(line: 1212, column: 1, scope: !4109)
!4111 = !DILocation(line: 1213, column: 6, scope: !4109)
!4112 = !DILocation(line: 1215, column: 9, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4027, file: !566, line: 1215, column: 9)
!4114 = !DILocation(line: 1215, column: 16, scope: !4113)
!4115 = !DILocation(line: 1215, column: 23, scope: !4113)
!4116 = !DILocation(line: 1215, column: 9, scope: !4027)
!4117 = !DILocation(line: 1215, column: 22, scope: !4118)
!4118 = !DILexicalBlockFile(scope: !4113, file: !566, discriminator: 1)
!4119 = !DILocation(line: 1215, column: 27, scope: !4118)
!4120 = !DILocation(line: 1215, column: 33, scope: !4118)
!4121 = !DILocation(line: 1215, column: 37, scope: !4118)
!4122 = !DILocation(line: 1215, column: 6, scope: !4118)
!4123 = !DILocation(line: 1215, column: 13, scope: !4118)
!4124 = !DILocation(line: 1215, column: 20, scope: !4118)
!4125 = !DILocation(line: 1216, column: 4, scope: !4027)
!4126 = !DILocation(line: 1217, column: 21, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4023, file: !566, line: 1217, column: 13)
!4128 = !DILocation(line: 1217, column: 14, scope: !4127)
!4129 = !DILocation(line: 1217, column: 13, scope: !4023)
!4130 = !DILocation(line: 1218, column: 23, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !566, line: 1217, column: 34)
!4132 = !DILocation(line: 1218, column: 31, scope: !4131)
!4133 = !DILocation(line: 1218, column: 11, scope: !4131)
!4134 = !DILocation(line: 1218, column: 9, scope: !4131)
!4135 = !DILocation(line: 1219, column: 33, scope: !4131)
!4136 = !DILocation(line: 1219, column: 16, scope: !4131)
!4137 = !DILocation(line: 1219, column: 5, scope: !4131)
!4138 = !DILocation(line: 1219, column: 10, scope: !4131)
!4139 = !DILocation(line: 1219, column: 14, scope: !4131)
!4140 = !DILocation(line: 1220, column: 10, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4131, file: !566, line: 1220, column: 9)
!4142 = !DILocation(line: 1220, column: 15, scope: !4141)
!4143 = !DILocation(line: 1220, column: 9, scope: !4131)
!4144 = !DILocation(line: 1221, column: 107, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4141, file: !566, line: 1220, column: 20)
!4146 = !DILocation(line: 1221, column: 6, scope: !4145)
!4147 = !DILocation(line: 1222, column: 1, scope: !4145)
!4148 = !DILocation(line: 1223, column: 6, scope: !4145)
!4149 = !DILocation(line: 1225, column: 4, scope: !4131)
!4150 = !DILocation(line: 1226, column: 21, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4127, file: !566, line: 1226, column: 13)
!4152 = !DILocation(line: 1226, column: 14, scope: !4151)
!4153 = !DILocation(line: 1226, column: 13, scope: !4127)
!4154 = !DILocation(line: 1227, column: 35, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !566, line: 1227, column: 9)
!4156 = distinct !DILexicalBlock(scope: !4151, file: !566, line: 1226, column: 37)
!4157 = !DILocation(line: 1227, column: 43, scope: !4155)
!4158 = !DILocation(line: 1227, column: 23, scope: !4155)
!4159 = !DILocation(line: 1227, column: 9, scope: !4160)
!4160 = !DILexicalBlockFile(scope: !4155, file: !566, discriminator: 1)
!4161 = !DILocation(line: 1227, column: 9, scope: !4156)
!4162 = !DILocation(line: 1228, column: 6, scope: !4155)
!4163 = !DILocation(line: 1229, column: 10, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4156, file: !566, line: 1229, column: 9)
!4165 = !DILocation(line: 1229, column: 9, scope: !4156)
!4166 = !DILocation(line: 1230, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4164, file: !566, line: 1229, column: 15)
!4168 = !DILocation(line: 1231, column: 6, scope: !4167)
!4169 = !DILocation(line: 1233, column: 29, scope: !4156)
!4170 = !DILocation(line: 1233, column: 35, scope: !4156)
!4171 = !DILocation(line: 1233, column: 19, scope: !4156)
!4172 = !DILocation(line: 1233, column: 5, scope: !4156)
!4173 = !DILocation(line: 1233, column: 10, scope: !4156)
!4174 = !DILocation(line: 1233, column: 17, scope: !4156)
!4175 = !DILocation(line: 1234, column: 5, scope: !4156)
!4176 = !DILocation(line: 1234, column: 10, scope: !4156)
!4177 = !DILocation(line: 1234, column: 15, scope: !4156)
!4178 = !DILocation(line: 1235, column: 4, scope: !4156)
!4179 = !DILocation(line: 1236, column: 21, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4151, file: !566, line: 1236, column: 13)
!4181 = !DILocation(line: 1236, column: 14, scope: !4180)
!4182 = !DILocation(line: 1236, column: 13, scope: !4151)
!4183 = !DILocation(line: 1238, column: 5, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4180, file: !566, line: 1236, column: 37)
!4185 = !DILocation(line: 1238, column: 10, scope: !4184)
!4186 = !DILocation(line: 1238, column: 16, scope: !4184)
!4187 = !DILocation(line: 1238, column: 4, scope: !4184)
!4188 = !DILocation(line: 1239, column: 21, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4180, file: !566, line: 1239, column: 13)
!4190 = !DILocation(line: 1239, column: 14, scope: !4189)
!4191 = !DILocation(line: 1239, column: 13, scope: !4180)
!4192 = !DILocation(line: 1241, column: 17, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4189, file: !566, line: 1239, column: 36)
!4194 = !DILocation(line: 1241, column: 30, scope: !4193)
!4195 = !DILocation(line: 1241, column: 35, scope: !4193)
!4196 = !DILocation(line: 1241, column: 5, scope: !4193)
!4197 = !DILocation(line: 1245, column: 4, scope: !4193)
!4198 = !DILocation(line: 1246, column: 21, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4189, file: !566, line: 1246, column: 13)
!4200 = !DILocation(line: 1246, column: 14, scope: !4199)
!4201 = !DILocation(line: 1246, column: 13, scope: !4189)
!4202 = !DILocation(line: 1248, column: 21, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !566, line: 1248, column: 9)
!4204 = distinct !DILexicalBlock(scope: !4199, file: !566, line: 1246, column: 37)
!4205 = !DILocation(line: 1248, column: 26, scope: !4203)
!4206 = !DILocation(line: 1248, column: 46, scope: !4203)
!4207 = !DILocation(line: 1248, column: 54, scope: !4203)
!4208 = !DILocation(line: 1248, column: 34, scope: !4203)
!4209 = !DILocation(line: 1248, column: 9, scope: !4210)
!4210 = !DILexicalBlockFile(scope: !4203, file: !566, discriminator: 1)
!4211 = !DILocation(line: 1248, column: 9, scope: !4204)
!4212 = !DILocation(line: 1249, column: 99, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4203, file: !566, line: 1248, column: 61)
!4214 = !DILocation(line: 1249, column: 106, scope: !4213)
!4215 = !DILocation(line: 1249, column: 87, scope: !4213)
!4216 = !DILocation(line: 1249, column: 6, scope: !4217)
!4217 = !DILexicalBlockFile(scope: !4213, file: !566, discriminator: 1)
!4218 = !DILocation(line: 1250, column: 1, scope: !4213)
!4219 = !DILocation(line: 1251, column: 6, scope: !4213)
!4220 = !DILocation(line: 1253, column: 9, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4204, file: !566, line: 1253, column: 9)
!4222 = !DILocation(line: 1253, column: 16, scope: !4221)
!4223 = !DILocation(line: 1253, column: 23, scope: !4221)
!4224 = !DILocation(line: 1253, column: 9, scope: !4204)
!4225 = !DILocation(line: 1253, column: 6, scope: !4226)
!4226 = !DILexicalBlockFile(scope: !4221, file: !566, discriminator: 1)
!4227 = !DILocation(line: 1253, column: 13, scope: !4226)
!4228 = !DILocation(line: 1253, column: 20, scope: !4226)
!4229 = !DILocation(line: 1254, column: 14, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4221, file: !566, line: 1254, column: 14)
!4231 = !DILocation(line: 1254, column: 21, scope: !4230)
!4232 = !DILocation(line: 1254, column: 28, scope: !4230)
!4233 = !DILocation(line: 1254, column: 14, scope: !4221)
!4234 = !DILocation(line: 1255, column: 6, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4230, file: !566, line: 1254, column: 39)
!4236 = !DILocation(line: 1256, column: 1, scope: !4235)
!4237 = !DILocation(line: 1257, column: 6, scope: !4235)
!4238 = !DILocation(line: 1259, column: 4, scope: !4204)
!4239 = !DILocation(line: 1260, column: 21, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4199, file: !566, line: 1260, column: 13)
!4241 = !DILocation(line: 1260, column: 14, scope: !4240)
!4242 = !DILocation(line: 1260, column: 13, scope: !4199)
!4243 = !DILocation(line: 1261, column: 35, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !566, line: 1261, column: 9)
!4245 = distinct !DILexicalBlock(scope: !4240, file: !566, line: 1260, column: 33)
!4246 = !DILocation(line: 1261, column: 43, scope: !4244)
!4247 = !DILocation(line: 1261, column: 23, scope: !4244)
!4248 = !DILocation(line: 1261, column: 10, scope: !4249)
!4249 = !DILexicalBlockFile(scope: !4244, file: !566, discriminator: 1)
!4250 = !DILocation(line: 1261, column: 10, scope: !4244)
!4251 = !DILocation(line: 1261, column: 9, scope: !4245)
!4252 = !DILocation(line: 1262, column: 7, scope: !4244)
!4253 = !DILocation(line: 1262, column: 6, scope: !4244)
!4254 = !DILocation(line: 1263, column: 5, scope: !4245)
!4255 = !DILocation(line: 1264, column: 1, scope: !4245)
!4256 = !DILocation(line: 1265, column: 5, scope: !4245)
!4257 = !DILocation(line: 1268, column: 5, scope: !4240)
!4258 = !DILocation(line: 1270, column: 5, scope: !4018)
!4259 = !DILocation(line: 1182, column: 3, scope: !4260)
!4260 = !DILexicalBlockFile(scope: !4006, file: !566, discriminator: 2)
!4261 = distinct !{!4261, !4010}
!4262 = !DILocation(line: 1272, column: 12, scope: !4006)
!4263 = !DILocation(line: 1272, column: 19, scope: !4006)
!4264 = !DILocation(line: 1272, column: 24, scope: !4006)
!4265 = !DILocation(line: 1272, column: 3, scope: !4006)
!4266 = !DILocation(line: 1273, column: 7, scope: !4006)
!4267 = !DILocation(line: 1178, column: 2, scope: !4268)
!4268 = !DILexicalBlockFile(scope: !3963, file: !566, discriminator: 4)
!4269 = distinct !{!4269, !3989}
!4270 = !DILocation(line: 1274, column: 6, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !3963, file: !566, line: 1274, column: 6)
!4272 = !DILocation(line: 1274, column: 12, scope: !4271)
!4273 = !DILocation(line: 1274, column: 21, scope: !4271)
!4274 = !DILocation(line: 1274, column: 8, scope: !4271)
!4275 = !DILocation(line: 1274, column: 6, scope: !3963)
!4276 = !DILocation(line: 1275, column: 116, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4271, file: !566, line: 1274, column: 33)
!4278 = !DILocation(line: 1275, column: 123, scope: !4277)
!4279 = !DILocation(line: 1275, column: 104, scope: !4277)
!4280 = !DILocation(line: 1275, column: 3, scope: !4281)
!4281 = !DILexicalBlockFile(scope: !4277, file: !566, discriminator: 1)
!4282 = !DILocation(line: 1276, column: 1, scope: !4277)
!4283 = !DILocation(line: 1277, column: 3, scope: !4277)
!4284 = !DILocation(line: 1280, column: 2, scope: !3963)
!4285 = !DILocation(line: 1283, column: 8, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !566, line: 1283, column: 8)
!4287 = distinct !DILexicalBlock(scope: !3963, file: !566, line: 1283, column: 2)
!4288 = !DILocation(line: 1283, column: 8, scope: !4287)
!4289 = !DILocation(line: 1283, column: 21, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4291, file: !566, discriminator: 1)
!4291 = distinct !DILexicalBlock(scope: !4286, file: !566, line: 1283, column: 13)
!4292 = !DILocation(line: 1283, column: 16, scope: !4290)
!4293 = !DILocation(line: 1283, column: 33, scope: !4290)
!4294 = !DILocation(line: 1282, column: 3, scope: !4291)
!4295 = !DILocation(line: 1283, column: 1, scope: !3997)
!4296 = distinct !DISubprogram(name: "clear_diff_routes", scope: !566, file: !566, line: 1802, type: !4297, isLocal: false, isDefinition: true, scopeLine: 1803, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !359, !359}
!4299 = !DILocalVariable(name: "l", arg: 1, scope: !4296, file: !566, line: 1802, type: !359)
!4300 = !DILocation(line: 1802, column: 24, scope: !4296)
!4301 = !DILocalVariable(name: "n", arg: 2, scope: !4296, file: !566, line: 1802, type: !359)
!4302 = !DILocation(line: 1802, column: 32, scope: !4296)
!4303 = !DILocalVariable(name: "iproute", scope: !4296, file: !566, line: 1804, type: !234)
!4304 = !DILocation(line: 1804, column: 14, scope: !4296)
!4305 = !DILocalVariable(name: "e", scope: !4296, file: !566, line: 1805, type: !639)
!4306 = !DILocation(line: 1805, column: 10, scope: !4296)
!4307 = !DILocation(line: 1808, column: 8, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4296, file: !566, line: 1808, column: 6)
!4309 = !DILocation(line: 1808, column: 11, scope: !4308)
!4310 = !DILocation(line: 1808, column: 5, scope: !4308)
!4311 = !DILocation(line: 1808, column: 10, scope: !4312)
!4312 = !DILexicalBlockFile(scope: !4308, file: !566, discriminator: 1)
!4313 = !DILocation(line: 1808, column: 14, scope: !4312)
!4314 = !DILocation(line: 1808, column: 19, scope: !4312)
!4315 = !DILocation(line: 1808, column: 5, scope: !4312)
!4316 = !DILocation(line: 1808, column: 9, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4308, file: !566, discriminator: 2)
!4318 = !DILocation(line: 1808, column: 13, scope: !4317)
!4319 = !DILocation(line: 1808, column: 18, scope: !4317)
!4320 = !DILocation(line: 1808, column: 6, scope: !4317)
!4321 = !DILocation(line: 1809, column: 3, scope: !4308)
!4322 = !DILocation(line: 1812, column: 8, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4296, file: !566, line: 1812, column: 6)
!4324 = !DILocation(line: 1812, column: 11, scope: !4323)
!4325 = !DILocation(line: 1812, column: 5, scope: !4323)
!4326 = !DILocation(line: 1812, column: 10, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4323, file: !566, discriminator: 1)
!4328 = !DILocation(line: 1812, column: 14, scope: !4327)
!4329 = !DILocation(line: 1812, column: 19, scope: !4327)
!4330 = !DILocation(line: 1812, column: 5, scope: !4327)
!4331 = !DILocation(line: 1812, column: 9, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !4323, file: !566, discriminator: 2)
!4333 = !DILocation(line: 1812, column: 13, scope: !4332)
!4334 = !DILocation(line: 1812, column: 18, scope: !4332)
!4335 = !DILocation(line: 1812, column: 6, scope: !4332)
!4336 = !DILocation(line: 1813, column: 3, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4323, file: !566, line: 1812, column: 9)
!4338 = !DILocation(line: 1814, column: 18, scope: !4337)
!4339 = !DILocation(line: 1814, column: 3, scope: !4337)
!4340 = !DILocation(line: 1815, column: 3, scope: !4337)
!4341 = !DILocation(line: 1818, column: 14, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4296, file: !566, line: 1818, column: 2)
!4343 = !DILocation(line: 1818, column: 13, scope: !4342)
!4344 = !DILocation(line: 1818, column: 12, scope: !4342)
!4345 = !DILocation(line: 1818, column: 12, scope: !4346)
!4346 = !DILexicalBlockFile(scope: !4342, file: !566, discriminator: 1)
!4347 = !DILocation(line: 1818, column: 13, scope: !4348)
!4348 = !DILexicalBlockFile(scope: !4342, file: !566, discriminator: 2)
!4349 = !DILocation(line: 1818, column: 17, scope: !4348)
!4350 = !DILocation(line: 1818, column: 12, scope: !4348)
!4351 = !DILocation(line: 1818, column: 12, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4342, file: !566, discriminator: 3)
!4353 = !DILocation(line: 1818, column: 9, scope: !4352)
!4354 = !DILocation(line: 1818, column: 7, scope: !4352)
!4355 = !DILocation(line: 1818, column: 24, scope: !4356)
!4356 = !DILexicalBlockFile(scope: !4357, file: !566, discriminator: 4)
!4357 = distinct !DILexicalBlock(scope: !4342, file: !566, line: 1818, column: 2)
!4358 = !DILocation(line: 1818, column: 2, scope: !4356)
!4359 = !DILocation(line: 1819, column: 15, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !566, line: 1818, column: 46)
!4361 = !DILocation(line: 1819, column: 19, scope: !4360)
!4362 = !DILocation(line: 1819, column: 13, scope: !4360)
!4363 = !DILocation(line: 1819, column: 11, scope: !4360)
!4364 = !DILocation(line: 1820, column: 7, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !566, line: 1820, column: 7)
!4366 = !DILocation(line: 1820, column: 16, scope: !4365)
!4367 = !DILocation(line: 1820, column: 7, scope: !4360)
!4368 = !DILocation(line: 1821, column: 21, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !566, line: 1821, column: 8)
!4370 = distinct !DILexicalBlock(scope: !4365, file: !566, line: 1820, column: 21)
!4371 = !DILocation(line: 1821, column: 24, scope: !4369)
!4372 = !DILocation(line: 1821, column: 9, scope: !4369)
!4373 = !DILocation(line: 1821, column: 8, scope: !4370)
!4374 = !DILocation(line: 1823, column: 31, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !566, line: 1821, column: 34)
!4376 = !DILocation(line: 1823, column: 40, scope: !4375)
!4377 = !DILocation(line: 1823, column: 13, scope: !4375)
!4378 = !DILocation(line: 1823, column: 46, scope: !4375)
!4379 = !DILocation(line: 1823, column: 55, scope: !4375)
!4380 = !DILocation(line: 1823, column: 60, scope: !4375)
!4381 = !DILocation(line: 1823, column: 64, scope: !4375)
!4382 = !DILocation(line: 1822, column: 5, scope: !4375)
!4383 = !DILocation(line: 1824, column: 19, scope: !4375)
!4384 = !DILocation(line: 1824, column: 5, scope: !4375)
!4385 = !DILocation(line: 1825, column: 4, scope: !4375)
!4386 = !DILocation(line: 1830, column: 19, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4369, file: !566, line: 1826, column: 9)
!4388 = !DILocation(line: 1830, column: 5, scope: !4387)
!4389 = !DILocation(line: 1832, column: 3, scope: !4370)
!4390 = !DILocation(line: 1833, column: 2, scope: !4360)
!4391 = !DILocation(line: 1818, column: 35, scope: !4392)
!4392 = !DILexicalBlockFile(scope: !4357, file: !566, discriminator: 5)
!4393 = !DILocation(line: 1818, column: 39, scope: !4392)
!4394 = !DILocation(line: 1818, column: 32, scope: !4392)
!4395 = !DILocation(line: 1818, column: 2, scope: !4392)
!4396 = distinct !{!4396, !4397}
!4397 = !DILocation(line: 1818, column: 2, scope: !4296)
!4398 = !DILocation(line: 1834, column: 1, scope: !4296)
!4399 = distinct !DISubprogram(name: "route_exist", scope: !566, file: !566, line: 1778, type: !4400, isLocal: true, isDefinition: true, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!307, !359, !234}
!4402 = !DILocalVariable(name: "l", arg: 1, scope: !4399, file: !566, line: 1778, type: !359)
!4403 = !DILocation(line: 1778, column: 18, scope: !4399)
!4404 = !DILocalVariable(name: "iproute", arg: 2, scope: !4399, file: !566, line: 1778, type: !234)
!4405 = !DILocation(line: 1778, column: 33, scope: !4399)
!4406 = !DILocalVariable(name: "ipr", scope: !4399, file: !566, line: 1780, type: !234)
!4407 = !DILocation(line: 1780, column: 14, scope: !4399)
!4408 = !DILocalVariable(name: "e", scope: !4399, file: !566, line: 1781, type: !639)
!4409 = !DILocation(line: 1781, column: 10, scope: !4399)
!4410 = !DILocation(line: 1783, column: 14, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4399, file: !566, line: 1783, column: 2)
!4412 = !DILocation(line: 1783, column: 13, scope: !4411)
!4413 = !DILocation(line: 1783, column: 12, scope: !4411)
!4414 = !DILocation(line: 1783, column: 12, scope: !4415)
!4415 = !DILexicalBlockFile(scope: !4411, file: !566, discriminator: 1)
!4416 = !DILocation(line: 1783, column: 13, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4411, file: !566, discriminator: 2)
!4418 = !DILocation(line: 1783, column: 17, scope: !4417)
!4419 = !DILocation(line: 1783, column: 12, scope: !4417)
!4420 = !DILocation(line: 1783, column: 12, scope: !4421)
!4421 = !DILexicalBlockFile(scope: !4411, file: !566, discriminator: 3)
!4422 = !DILocation(line: 1783, column: 9, scope: !4421)
!4423 = !DILocation(line: 1783, column: 7, scope: !4421)
!4424 = !DILocation(line: 1783, column: 24, scope: !4425)
!4425 = !DILexicalBlockFile(scope: !4426, file: !566, discriminator: 4)
!4426 = distinct !DILexicalBlock(scope: !4411, file: !566, line: 1783, column: 2)
!4427 = !DILocation(line: 1783, column: 2, scope: !4425)
!4428 = !DILocation(line: 1784, column: 11, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4426, file: !566, line: 1783, column: 46)
!4430 = !DILocation(line: 1784, column: 15, scope: !4429)
!4431 = !DILocation(line: 1784, column: 9, scope: !4429)
!4432 = !DILocation(line: 1784, column: 7, scope: !4429)
!4433 = !DILocation(line: 1787, column: 10, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4429, file: !566, line: 1787, column: 7)
!4435 = !DILocation(line: 1787, column: 15, scope: !4434)
!4436 = !DILocation(line: 1787, column: 9, scope: !4434)
!4437 = !DILocation(line: 1787, column: 20, scope: !4434)
!4438 = !DILocation(line: 1787, column: 25, scope: !4439)
!4439 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 1)
!4440 = !DILocation(line: 1787, column: 34, scope: !4439)
!4441 = !DILocation(line: 1787, column: 24, scope: !4439)
!4442 = !DILocation(line: 1787, column: 772, scope: !4439)
!4443 = !DILocation(line: 1787, column: 8, scope: !4444)
!4444 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 2)
!4445 = !DILocation(line: 1787, column: 10, scope: !4446)
!4446 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 3)
!4447 = !DILocation(line: 1787, column: 15, scope: !4446)
!4448 = !DILocation(line: 1787, column: 8, scope: !4446)
!4449 = !DILocation(line: 1787, column: 25, scope: !4446)
!4450 = !DILocation(line: 1787, column: 34, scope: !4446)
!4451 = !DILocation(line: 1787, column: 23, scope: !4446)
!4452 = !DILocation(line: 1787, column: 20, scope: !4446)
!4453 = !DILocation(line: 1787, column: 772, scope: !4446)
!4454 = !DILocation(line: 1787, column: 8, scope: !4455)
!4455 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 4)
!4456 = !DILocation(line: 1787, column: 10, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 5)
!4458 = !DILocation(line: 1787, column: 15, scope: !4457)
!4459 = !DILocation(line: 1787, column: 21, scope: !4457)
!4460 = !DILocation(line: 1787, column: 25, scope: !4457)
!4461 = !DILocation(line: 1787, column: 9, scope: !4457)
!4462 = !DILocation(line: 1787, column: 40, scope: !4457)
!4463 = !DILocation(line: 1787, column: 49, scope: !4457)
!4464 = !DILocation(line: 1787, column: 55, scope: !4457)
!4465 = !DILocation(line: 1787, column: 59, scope: !4457)
!4466 = !DILocation(line: 1787, column: 39, scope: !4457)
!4467 = !DILocation(line: 1787, column: 36, scope: !4457)
!4468 = !DILocation(line: 1787, column: 772, scope: !4457)
!4469 = !DILocation(line: 1787, column: 9, scope: !4470)
!4470 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 6)
!4471 = !DILocation(line: 1787, column: 10, scope: !4472)
!4472 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 7)
!4473 = !DILocation(line: 1787, column: 15, scope: !4472)
!4474 = !DILocation(line: 1787, column: 21, scope: !4472)
!4475 = !DILocation(line: 1787, column: 25, scope: !4472)
!4476 = !DILocation(line: 1787, column: 9, scope: !4472)
!4477 = !DILocation(line: 1787, column: 36, scope: !4472)
!4478 = !DILocation(line: 1787, column: 772, scope: !4472)
!4479 = !DILocation(line: 1787, column: 12, scope: !4480)
!4480 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 8)
!4481 = !DILocation(line: 1787, column: 17, scope: !4480)
!4482 = !DILocation(line: 1787, column: 23, scope: !4480)
!4483 = !DILocation(line: 1787, column: 25, scope: !4480)
!4484 = !DILocation(line: 1787, column: 6, scope: !4480)
!4485 = !DILocation(line: 1787, column: 14, scope: !4480)
!4486 = !DILocation(line: 1787, column: 11, scope: !4480)
!4487 = !DILocation(line: 1787, column: 29, scope: !4480)
!4488 = !DILocation(line: 1787, column: 31, scope: !4480)
!4489 = !DILocation(line: 1787, column: 13, scope: !4480)
!4490 = !DILocation(line: 1787, column: 10, scope: !4480)
!4491 = !DILocation(line: 1787, column: 14, scope: !4492)
!4492 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 9)
!4493 = !DILocation(line: 1787, column: 19, scope: !4492)
!4494 = !DILocation(line: 1787, column: 25, scope: !4492)
!4495 = !DILocation(line: 1787, column: 27, scope: !4492)
!4496 = !DILocation(line: 1787, column: 6, scope: !4492)
!4497 = !DILocation(line: 1787, column: 13, scope: !4492)
!4498 = !DILocation(line: 1787, column: 23, scope: !4492)
!4499 = !DILocation(line: 1787, column: 29, scope: !4492)
!4500 = !DILocation(line: 1787, column: 31, scope: !4492)
!4501 = !DILocation(line: 1787, column: 10, scope: !4492)
!4502 = !DILocation(line: 1787, column: 14, scope: !4503)
!4503 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 10)
!4504 = !DILocation(line: 1787, column: 19, scope: !4503)
!4505 = !DILocation(line: 1787, column: 25, scope: !4503)
!4506 = !DILocation(line: 1787, column: 27, scope: !4503)
!4507 = !DILocation(line: 1787, column: 6, scope: !4503)
!4508 = !DILocation(line: 1787, column: 13, scope: !4503)
!4509 = !DILocation(line: 1787, column: 23, scope: !4503)
!4510 = !DILocation(line: 1787, column: 29, scope: !4503)
!4511 = !DILocation(line: 1787, column: 31, scope: !4503)
!4512 = !DILocation(line: 1787, column: 10, scope: !4503)
!4513 = !DILocation(line: 1787, column: 14, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 11)
!4515 = !DILocation(line: 1787, column: 19, scope: !4514)
!4516 = !DILocation(line: 1787, column: 25, scope: !4514)
!4517 = !DILocation(line: 1787, column: 27, scope: !4514)
!4518 = !DILocation(line: 1787, column: 6, scope: !4514)
!4519 = !DILocation(line: 1787, column: 13, scope: !4514)
!4520 = !DILocation(line: 1787, column: 23, scope: !4514)
!4521 = !DILocation(line: 1787, column: 29, scope: !4514)
!4522 = !DILocation(line: 1787, column: 31, scope: !4514)
!4523 = !DILocation(line: 1787, column: 10, scope: !4514)
!4524 = !DILocation(line: 1787, column: 16, scope: !4525)
!4525 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 12)
!4526 = !DILocation(line: 1787, column: 21, scope: !4525)
!4527 = !DILocation(line: 1787, column: 28, scope: !4525)
!4528 = !DILocation(line: 1787, column: 32, scope: !4525)
!4529 = !DILocation(line: 1787, column: 14, scope: !4525)
!4530 = !DILocation(line: 1787, column: 51, scope: !4525)
!4531 = !DILocation(line: 1787, column: 60, scope: !4525)
!4532 = !DILocation(line: 1787, column: 67, scope: !4525)
!4533 = !DILocation(line: 1787, column: 71, scope: !4525)
!4534 = !DILocation(line: 1787, column: 49, scope: !4525)
!4535 = !DILocation(line: 1787, column: 46, scope: !4525)
!4536 = !DILocation(line: 1787, column: 85, scope: !4525)
!4537 = !DILocation(line: 1787, column: 91, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 13)
!4539 = !DILocation(line: 1787, column: 96, scope: !4538)
!4540 = !DILocation(line: 1787, column: 103, scope: !4538)
!4541 = !DILocation(line: 1787, column: 88, scope: !4538)
!4542 = !DILocation(line: 1787, column: 113, scope: !4538)
!4543 = !DILocation(line: 1787, column: 122, scope: !4538)
!4544 = !DILocation(line: 1787, column: 129, scope: !4538)
!4545 = !DILocation(line: 1787, column: 110, scope: !4538)
!4546 = !DILocation(line: 1787, column: 107, scope: !4538)
!4547 = !DILocation(line: 1787, column: 133, scope: !4538)
!4548 = !DILocation(line: 1787, column: 140, scope: !4549)
!4549 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 14)
!4550 = !DILocation(line: 1787, column: 145, scope: !4549)
!4551 = !DILocation(line: 1787, column: 152, scope: !4549)
!4552 = !DILocation(line: 1787, column: 138, scope: !4549)
!4553 = !DILocation(line: 1787, column: 156, scope: !4549)
!4554 = !DILocation(line: 1787, column: 161, scope: !4555)
!4555 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 15)
!4556 = !DILocation(line: 1787, column: 166, scope: !4555)
!4557 = !DILocation(line: 1787, column: 173, scope: !4555)
!4558 = !DILocation(line: 1787, column: 178, scope: !4555)
!4559 = !DILocation(line: 1787, column: 191, scope: !4555)
!4560 = !DILocation(line: 1787, column: 200, scope: !4555)
!4561 = !DILocation(line: 1787, column: 207, scope: !4555)
!4562 = !DILocation(line: 1787, column: 212, scope: !4555)
!4563 = !DILocation(line: 1787, column: 186, scope: !4555)
!4564 = !DILocation(line: 1787, column: 221, scope: !4555)
!4565 = !DILocation(line: 1787, column: 226, scope: !4566)
!4566 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 16)
!4567 = !DILocation(line: 1787, column: 231, scope: !4566)
!4568 = !DILocation(line: 1787, column: 238, scope: !4566)
!4569 = !DILocation(line: 1787, column: 242, scope: !4566)
!4570 = !DILocation(line: 1787, column: 224, scope: !4566)
!4571 = !DILocation(line: 1787, column: 257, scope: !4566)
!4572 = !DILocation(line: 1787, column: 266, scope: !4566)
!4573 = !DILocation(line: 1787, column: 273, scope: !4566)
!4574 = !DILocation(line: 1787, column: 277, scope: !4566)
!4575 = !DILocation(line: 1787, column: 255, scope: !4566)
!4576 = !DILocation(line: 1787, column: 252, scope: !4566)
!4577 = !DILocation(line: 1787, column: 287, scope: !4566)
!4578 = !DILocation(line: 1787, column: 305, scope: !4579)
!4579 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 17)
!4580 = !DILocation(line: 1787, column: 310, scope: !4579)
!4581 = !DILocation(line: 1787, column: 317, scope: !4579)
!4582 = !DILocation(line: 1787, column: 326, scope: !4579)
!4583 = !DILocation(line: 1787, column: 335, scope: !4579)
!4584 = !DILocation(line: 1787, column: 342, scope: !4579)
!4585 = !DILocation(line: 1787, column: 290, scope: !4579)
!4586 = !DILocation(line: 1787, column: 8, scope: !4579)
!4587 = !DILocation(line: 1787, column: 355, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 18)
!4589 = !DILocation(line: 1787, column: 360, scope: !4588)
!4590 = !DILocation(line: 1787, column: 366, scope: !4588)
!4591 = !DILocation(line: 1787, column: 368, scope: !4588)
!4592 = !DILocation(line: 1787, column: 372, scope: !4588)
!4593 = !DILocation(line: 1787, column: 381, scope: !4588)
!4594 = !DILocation(line: 1787, column: 392, scope: !4588)
!4595 = !DILocation(line: 1787, column: 401, scope: !4588)
!4596 = !DILocation(line: 1787, column: 407, scope: !4588)
!4597 = !DILocation(line: 1787, column: 409, scope: !4588)
!4598 = !DILocation(line: 1787, column: 413, scope: !4588)
!4599 = !DILocation(line: 1787, column: 422, scope: !4588)
!4600 = !DILocation(line: 1787, column: 388, scope: !4588)
!4601 = !DILocation(line: 1787, column: 429, scope: !4588)
!4602 = !DILocation(line: 1787, column: 435, scope: !4603)
!4603 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 19)
!4604 = !DILocation(line: 1787, column: 440, scope: !4603)
!4605 = !DILocation(line: 1787, column: 447, scope: !4603)
!4606 = !DILocation(line: 1787, column: 451, scope: !4603)
!4607 = !DILocation(line: 1787, column: 433, scope: !4603)
!4608 = !DILocation(line: 1787, column: 470, scope: !4603)
!4609 = !DILocation(line: 1787, column: 479, scope: !4603)
!4610 = !DILocation(line: 1787, column: 486, scope: !4603)
!4611 = !DILocation(line: 1787, column: 490, scope: !4603)
!4612 = !DILocation(line: 1787, column: 468, scope: !4603)
!4613 = !DILocation(line: 1787, column: 465, scope: !4603)
!4614 = !DILocation(line: 1787, column: 504, scope: !4603)
!4615 = !DILocation(line: 1787, column: 510, scope: !4616)
!4616 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 20)
!4617 = !DILocation(line: 1787, column: 515, scope: !4616)
!4618 = !DILocation(line: 1787, column: 522, scope: !4616)
!4619 = !DILocation(line: 1787, column: 507, scope: !4616)
!4620 = !DILocation(line: 1787, column: 532, scope: !4616)
!4621 = !DILocation(line: 1787, column: 541, scope: !4616)
!4622 = !DILocation(line: 1787, column: 548, scope: !4616)
!4623 = !DILocation(line: 1787, column: 529, scope: !4616)
!4624 = !DILocation(line: 1787, column: 526, scope: !4616)
!4625 = !DILocation(line: 1787, column: 552, scope: !4616)
!4626 = !DILocation(line: 1787, column: 559, scope: !4627)
!4627 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 21)
!4628 = !DILocation(line: 1787, column: 564, scope: !4627)
!4629 = !DILocation(line: 1787, column: 571, scope: !4627)
!4630 = !DILocation(line: 1787, column: 557, scope: !4627)
!4631 = !DILocation(line: 1787, column: 575, scope: !4627)
!4632 = !DILocation(line: 1787, column: 580, scope: !4633)
!4633 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 22)
!4634 = !DILocation(line: 1787, column: 585, scope: !4633)
!4635 = !DILocation(line: 1787, column: 592, scope: !4633)
!4636 = !DILocation(line: 1787, column: 597, scope: !4633)
!4637 = !DILocation(line: 1787, column: 610, scope: !4633)
!4638 = !DILocation(line: 1787, column: 619, scope: !4633)
!4639 = !DILocation(line: 1787, column: 626, scope: !4633)
!4640 = !DILocation(line: 1787, column: 631, scope: !4633)
!4641 = !DILocation(line: 1787, column: 605, scope: !4633)
!4642 = !DILocation(line: 1787, column: 640, scope: !4633)
!4643 = !DILocation(line: 1787, column: 645, scope: !4644)
!4644 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 23)
!4645 = !DILocation(line: 1787, column: 650, scope: !4644)
!4646 = !DILocation(line: 1787, column: 657, scope: !4644)
!4647 = !DILocation(line: 1787, column: 661, scope: !4644)
!4648 = !DILocation(line: 1787, column: 643, scope: !4644)
!4649 = !DILocation(line: 1787, column: 676, scope: !4644)
!4650 = !DILocation(line: 1787, column: 685, scope: !4644)
!4651 = !DILocation(line: 1787, column: 692, scope: !4644)
!4652 = !DILocation(line: 1787, column: 696, scope: !4644)
!4653 = !DILocation(line: 1787, column: 674, scope: !4644)
!4654 = !DILocation(line: 1787, column: 671, scope: !4644)
!4655 = !DILocation(line: 1787, column: 706, scope: !4644)
!4656 = !DILocation(line: 1787, column: 724, scope: !4657)
!4657 = !DILexicalBlockFile(scope: !4434, file: !566, discriminator: 24)
!4658 = !DILocation(line: 1787, column: 729, scope: !4657)
!4659 = !DILocation(line: 1787, column: 736, scope: !4657)
!4660 = !DILocation(line: 1787, column: 745, scope: !4657)
!4661 = !DILocation(line: 1787, column: 754, scope: !4657)
!4662 = !DILocation(line: 1787, column: 761, scope: !4657)
!4663 = !DILocation(line: 1787, column: 709, scope: !4657)
!4664 = !DILocation(line: 1787, column: 772, scope: !4657)
!4665 = !DILocation(line: 1788, column: 7, scope: !4434)
!4666 = !DILocation(line: 1788, column: 12, scope: !4434)
!4667 = !DILocation(line: 1788, column: 17, scope: !4434)
!4668 = !DILocation(line: 1788, column: 21, scope: !4434)
!4669 = !DILocation(line: 1788, column: 38, scope: !4434)
!4670 = !DILocation(line: 1788, column: 47, scope: !4434)
!4671 = !DILocation(line: 1788, column: 52, scope: !4434)
!4672 = !DILocation(line: 1788, column: 56, scope: !4434)
!4673 = !DILocation(line: 1788, column: 35, scope: !4434)
!4674 = !DILocation(line: 1788, column: 70, scope: !4434)
!4675 = !DILocation(line: 1789, column: 11, scope: !4434)
!4676 = !DILocation(line: 1789, column: 16, scope: !4434)
!4677 = !DILocation(line: 1789, column: 23, scope: !4434)
!4678 = !DILocation(line: 1789, column: 32, scope: !4434)
!4679 = !DILocation(line: 1789, column: 21, scope: !4434)
!4680 = !DILocation(line: 1789, column: 38, scope: !4434)
!4681 = !DILocation(line: 1789, column: 62, scope: !4434)
!4682 = !DILocation(line: 1790, column: 10, scope: !4434)
!4683 = !DILocation(line: 1790, column: 15, scope: !4434)
!4684 = !DILocation(line: 1790, column: 20, scope: !4434)
!4685 = !DILocation(line: 1790, column: 43, scope: !4434)
!4686 = !DILocation(line: 1791, column: 8, scope: !4434)
!4687 = !DILocation(line: 1791, column: 13, scope: !4434)
!4688 = !DILocation(line: 1791, column: 23, scope: !4434)
!4689 = !DILocation(line: 1791, column: 32, scope: !4434)
!4690 = !DILocation(line: 1791, column: 20, scope: !4434)
!4691 = !DILocation(line: 1791, column: 40, scope: !4434)
!4692 = !DILocation(line: 1792, column: 7, scope: !4434)
!4693 = !DILocation(line: 1792, column: 12, scope: !4434)
!4694 = !DILocation(line: 1792, column: 21, scope: !4434)
!4695 = !DILocation(line: 1792, column: 30, scope: !4434)
!4696 = !DILocation(line: 1792, column: 18, scope: !4434)
!4697 = !DILocation(line: 1787, column: 7, scope: !4698)
!4698 = !DILexicalBlockFile(scope: !4429, file: !566, discriminator: 25)
!4699 = !DILocation(line: 1793, column: 15, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4434, file: !566, line: 1792, column: 37)
!4701 = !DILocation(line: 1793, column: 24, scope: !4700)
!4702 = !DILocation(line: 1793, column: 4, scope: !4700)
!4703 = !DILocation(line: 1793, column: 9, scope: !4700)
!4704 = !DILocation(line: 1793, column: 13, scope: !4700)
!4705 = !DILocation(line: 1794, column: 4, scope: !4700)
!4706 = !DILocation(line: 1796, column: 2, scope: !4429)
!4707 = !DILocation(line: 1783, column: 35, scope: !4708)
!4708 = !DILexicalBlockFile(scope: !4426, file: !566, discriminator: 5)
!4709 = !DILocation(line: 1783, column: 39, scope: !4708)
!4710 = !DILocation(line: 1783, column: 32, scope: !4708)
!4711 = !DILocation(line: 1783, column: 2, scope: !4708)
!4712 = distinct !{!4712, !4713}
!4713 = !DILocation(line: 1783, column: 2, scope: !4399)
!4714 = !DILocation(line: 1797, column: 2, scope: !4399)
!4715 = !DILocation(line: 1798, column: 1, scope: !4399)
!4716 = distinct !DISubprogram(name: "clear_diff_sroutes", scope: !566, file: !566, line: 1838, type: !4717, isLocal: false, isDefinition: true, scopeLine: 1839, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null}
!4719 = !DILocation(line: 1840, column: 20, scope: !4716)
!4720 = !DILocation(line: 1840, column: 35, scope: !4716)
!4721 = !DILocation(line: 1840, column: 50, scope: !4716)
!4722 = !DILocation(line: 1840, column: 61, scope: !4716)
!4723 = !DILocation(line: 1840, column: 2, scope: !4716)
!4724 = !DILocation(line: 1841, column: 1, scope: !4716)
!4725 = distinct !DISubprogram(name: "reinstate_static_route", scope: !566, file: !566, line: 1844, type: !4726, isLocal: false, isDefinition: true, scopeLine: 1845, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !234}
!4728 = !DILocalVariable(name: "route", arg: 1, scope: !4725, file: !566, line: 1844, type: !234)
!4729 = !DILocation(line: 1844, column: 36, scope: !4725)
!4730 = !DILocalVariable(name: "buf", scope: !4725, file: !566, line: 1846, type: !4731)
!4731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2048, align: 8, elements: !4732)
!4732 = !{!4733}
!4733 = !DISubrange(count: 256)
!4734 = !DILocation(line: 1846, column: 7, scope: !4725)
!4735 = !DILocation(line: 1848, column: 30, scope: !4725)
!4736 = !DILocation(line: 1848, column: 16, scope: !4725)
!4737 = !DILocation(line: 1848, column: 40, scope: !4725)
!4738 = !DILocation(line: 1848, column: 2, scope: !4725)
!4739 = !DILocation(line: 1848, column: 9, scope: !4725)
!4740 = !DILocation(line: 1848, column: 13, scope: !4725)
!4741 = !DILocation(line: 1850, column: 17, scope: !4725)
!4742 = !DILocation(line: 1850, column: 24, scope: !4725)
!4743 = !DILocation(line: 1850, column: 2, scope: !4725)
!4744 = !DILocation(line: 1851, column: 60, scope: !4725)
!4745 = !DILocation(line: 1851, column: 2, scope: !4725)
!4746 = !DILocation(line: 1852, column: 1, scope: !4725)
!4747 = distinct !DISubprogram(name: "add_addr_fam2req", scope: !566, file: !566, line: 82, type: !567, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4748 = !DILocalVariable(name: "n", arg: 1, scope: !4747, file: !566, line: 82, type: !569)
!4749 = !DILocation(line: 82, column: 35, scope: !4747)
!4750 = !DILocalVariable(name: "maxlen", arg: 2, scope: !4747, file: !566, line: 82, type: !231)
!4751 = !DILocation(line: 82, column: 45, scope: !4747)
!4752 = !DILocalVariable(name: "type", arg: 3, scope: !4747, file: !566, line: 82, type: !230)
!4753 = !DILocation(line: 82, column: 68, scope: !4747)
!4754 = !DILocalVariable(name: "ip_address", arg: 4, scope: !4747, file: !566, line: 82, type: !239)
!4755 = !DILocation(line: 82, column: 88, scope: !4747)
!4756 = !DILocalVariable(name: "addr", scope: !4747, file: !566, line: 84, type: !229)
!4757 = !DILocation(line: 84, column: 8, scope: !4747)
!4758 = !DILocalVariable(name: "alen", scope: !4747, file: !566, line: 85, type: !231)
!4759 = !DILocation(line: 85, column: 9, scope: !4747)
!4760 = !DILocalVariable(name: "family", scope: !4747, file: !566, line: 86, type: !286)
!4761 = !DILocation(line: 86, column: 11, scope: !4747)
!4762 = !DILocation(line: 88, column: 7, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4747, file: !566, line: 88, column: 6)
!4764 = !DILocation(line: 88, column: 6, scope: !4747)
!4765 = !DILocation(line: 89, column: 3, scope: !4763)
!4766 = !DILocation(line: 91, column: 8, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4747, file: !566, line: 91, column: 6)
!4768 = !DILocation(line: 91, column: 21, scope: !4767)
!4769 = !DILocation(line: 91, column: 25, scope: !4767)
!4770 = !DILocation(line: 91, column: 7, scope: !4767)
!4771 = !DILocation(line: 91, column: 36, scope: !4767)
!4772 = !DILocation(line: 91, column: 6, scope: !4747)
!4773 = !DILocation(line: 92, column: 19, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4767, file: !566, line: 91, column: 8)
!4775 = !DILocation(line: 92, column: 31, scope: !4774)
!4776 = !DILocation(line: 92, column: 33, scope: !4774)
!4777 = !DILocation(line: 92, column: 10, scope: !4774)
!4778 = !DILocation(line: 92, column: 8, scope: !4774)
!4779 = !DILocation(line: 93, column: 8, scope: !4774)
!4780 = !DILocation(line: 94, column: 2, scope: !4774)
!4781 = !DILocation(line: 96, column: 19, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4767, file: !566, line: 95, column: 7)
!4783 = !DILocation(line: 96, column: 31, scope: !4782)
!4784 = !DILocation(line: 96, column: 33, scope: !4782)
!4785 = !DILocation(line: 96, column: 37, scope: !4782)
!4786 = !DILocation(line: 96, column: 10, scope: !4782)
!4787 = !DILocation(line: 96, column: 8, scope: !4782)
!4788 = !DILocation(line: 97, column: 8, scope: !4782)
!4789 = !DILocation(line: 99, column: 11, scope: !4747)
!4790 = !DILocation(line: 99, column: 23, scope: !4747)
!4791 = !DILocation(line: 99, column: 27, scope: !4747)
!4792 = !DILocation(line: 99, column: 9, scope: !4747)
!4793 = !DILocation(line: 101, column: 36, scope: !4747)
!4794 = !DILocation(line: 101, column: 39, scope: !4747)
!4795 = !DILocation(line: 101, column: 47, scope: !4747)
!4796 = !DILocation(line: 101, column: 53, scope: !4747)
!4797 = !DILocation(line: 101, column: 78, scope: !4747)
!4798 = !DILocation(line: 101, column: 84, scope: !4747)
!4799 = !DILocation(line: 101, column: 25, scope: !4747)
!4800 = !DILocation(line: 101, column: 9, scope: !4747)
!4801 = !DILocation(line: 101, column: 2, scope: !4747)
!4802 = !DILocation(line: 102, column: 1, scope: !4747)
!4803 = distinct !DISubprogram(name: "add_encap", scope: !566, file: !566, line: 203, type: !4804, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!307, !744, !231, !1222}
!4806 = !DILocalVariable(name: "rta", arg: 1, scope: !4803, file: !566, line: 203, type: !744)
!4807 = !DILocation(line: 203, column: 26, scope: !4803)
!4808 = !DILocalVariable(name: "len", arg: 2, scope: !4803, file: !566, line: 203, type: !231)
!4809 = !DILocation(line: 203, column: 38, scope: !4803)
!4810 = !DILocalVariable(name: "encap", arg: 3, scope: !4803, file: !566, line: 203, type: !1222)
!4811 = !DILocation(line: 203, column: 52, scope: !4803)
!4812 = !DILocalVariable(name: "nest", scope: !4803, file: !566, line: 205, type: !744)
!4813 = !DILocation(line: 205, column: 17, scope: !4803)
!4814 = !DILocation(line: 207, column: 18, scope: !4803)
!4815 = !DILocation(line: 207, column: 23, scope: !4803)
!4816 = !DILocation(line: 207, column: 9, scope: !4803)
!4817 = !DILocation(line: 207, column: 7, scope: !4803)
!4818 = !DILocation(line: 208, column: 10, scope: !4803)
!4819 = !DILocation(line: 208, column: 17, scope: !4803)
!4820 = !DILocation(line: 208, column: 2, scope: !4803)
!4821 = !DILocation(line: 211, column: 18, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4803, file: !566, line: 208, column: 23)
!4823 = !DILocation(line: 211, column: 23, scope: !4822)
!4824 = !DILocation(line: 211, column: 28, scope: !4822)
!4825 = !DILocation(line: 211, column: 3, scope: !4822)
!4826 = !DILocation(line: 212, column: 3, scope: !4822)
!4827 = !DILocation(line: 215, column: 16, scope: !4822)
!4828 = !DILocation(line: 215, column: 21, scope: !4822)
!4829 = !DILocation(line: 215, column: 26, scope: !4822)
!4830 = !DILocation(line: 215, column: 3, scope: !4822)
!4831 = !DILocation(line: 216, column: 3, scope: !4822)
!4832 = !DILocation(line: 219, column: 17, scope: !4822)
!4833 = !DILocation(line: 219, column: 22, scope: !4822)
!4834 = !DILocation(line: 219, column: 27, scope: !4822)
!4835 = !DILocation(line: 219, column: 3, scope: !4822)
!4836 = !DILocation(line: 220, column: 3, scope: !4822)
!4837 = !DILocation(line: 223, column: 17, scope: !4822)
!4838 = !DILocation(line: 223, column: 22, scope: !4822)
!4839 = !DILocation(line: 223, column: 27, scope: !4822)
!4840 = !DILocation(line: 223, column: 3, scope: !4822)
!4841 = !DILocation(line: 224, column: 3, scope: !4822)
!4842 = !DILocation(line: 226, column: 49, scope: !4822)
!4843 = !DILocation(line: 226, column: 56, scope: !4822)
!4844 = !DILocation(line: 226, column: 3, scope: !4822)
!4845 = !DILocation(line: 227, column: 3, scope: !4822)
!4846 = !DILocation(line: 229, column: 15, scope: !4803)
!4847 = !DILocation(line: 229, column: 20, scope: !4803)
!4848 = !DILocation(line: 229, column: 2, scope: !4803)
!4849 = !DILocation(line: 231, column: 16, scope: !4803)
!4850 = !DILocation(line: 231, column: 21, scope: !4803)
!4851 = !DILocation(line: 231, column: 42, scope: !4803)
!4852 = !DILocation(line: 231, column: 49, scope: !4803)
!4853 = !DILocation(line: 231, column: 2, scope: !4803)
!4854 = !DILocation(line: 233, column: 2, scope: !4803)
!4855 = distinct !DISubprogram(name: "add_nexthops", scope: !566, file: !566, line: 269, type: !4856, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !234, !569, !4858}
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!4859 = !DILocalVariable(name: "route", arg: 1, scope: !4855, file: !566, line: 269, type: !234)
!4860 = !DILocation(line: 269, column: 26, scope: !4855)
!4861 = !DILocalVariable(name: "nlh", arg: 2, scope: !4855, file: !566, line: 269, type: !569)
!4862 = !DILocation(line: 269, column: 50, scope: !4855)
!4863 = !DILocalVariable(name: "rtm", arg: 3, scope: !4855, file: !566, line: 269, type: !4858)
!4864 = !DILocation(line: 269, column: 69, scope: !4855)
!4865 = !DILocalVariable(name: "buf", scope: !4855, file: !566, line: 271, type: !941)
!4866 = !DILocation(line: 271, column: 7, scope: !4855)
!4867 = !DILocalVariable(name: "rta", scope: !4855, file: !566, line: 272, type: !744)
!4868 = !DILocation(line: 272, column: 17, scope: !4855)
!4869 = !DILocation(line: 272, column: 31, scope: !4855)
!4870 = !DILocation(line: 272, column: 23, scope: !4855)
!4871 = !DILocalVariable(name: "rtnh", scope: !4855, file: !566, line: 273, type: !553)
!4872 = !DILocation(line: 273, column: 20, scope: !4855)
!4873 = !DILocalVariable(name: "nh", scope: !4855, file: !566, line: 274, type: !1315)
!4874 = !DILocation(line: 274, column: 13, scope: !4855)
!4875 = !DILocalVariable(name: "e", scope: !4855, file: !566, line: 275, type: !639)
!4876 = !DILocation(line: 275, column: 10, scope: !4855)
!4877 = !DILocation(line: 277, column: 2, scope: !4855)
!4878 = !DILocation(line: 277, column: 7, scope: !4855)
!4879 = !DILocation(line: 277, column: 16, scope: !4855)
!4880 = !DILocation(line: 278, column: 2, scope: !4855)
!4881 = !DILocation(line: 278, column: 7, scope: !4855)
!4882 = !DILocation(line: 278, column: 15, scope: !4855)
!4883 = !DILocation(line: 279, column: 8, scope: !4855)
!4884 = !DILocation(line: 279, column: 18, scope: !4855)
!4885 = !DILocation(line: 279, column: 11, scope: !4855)
!4886 = !DILocation(line: 279, column: 7, scope: !4855)
!4887 = !DILocation(line: 281, column: 14, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4855, file: !566, line: 281, column: 2)
!4889 = !DILocation(line: 281, column: 21, scope: !4888)
!4890 = !DILocation(line: 281, column: 13, scope: !4888)
!4891 = !DILocation(line: 281, column: 12, scope: !4888)
!4892 = !DILocation(line: 281, column: 12, scope: !4893)
!4893 = !DILexicalBlockFile(scope: !4888, file: !566, discriminator: 1)
!4894 = !DILocation(line: 281, column: 13, scope: !4895)
!4895 = !DILexicalBlockFile(scope: !4888, file: !566, discriminator: 2)
!4896 = !DILocation(line: 281, column: 20, scope: !4895)
!4897 = !DILocation(line: 281, column: 26, scope: !4895)
!4898 = !DILocation(line: 281, column: 12, scope: !4895)
!4899 = !DILocation(line: 281, column: 12, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4888, file: !566, discriminator: 3)
!4901 = !DILocation(line: 281, column: 9, scope: !4900)
!4902 = !DILocation(line: 281, column: 7, scope: !4900)
!4903 = !DILocation(line: 281, column: 33, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !4905, file: !566, discriminator: 4)
!4905 = distinct !DILexicalBlock(scope: !4888, file: !566, line: 281, column: 2)
!4906 = !DILocation(line: 281, column: 2, scope: !4904)
!4907 = !DILocation(line: 282, column: 10, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4905, file: !566, line: 281, column: 55)
!4909 = !DILocation(line: 282, column: 14, scope: !4908)
!4910 = !DILocation(line: 282, column: 8, scope: !4908)
!4911 = !DILocation(line: 282, column: 6, scope: !4908)
!4912 = !DILocation(line: 284, column: 10, scope: !4908)
!4913 = !DILocation(line: 284, column: 3, scope: !4908)
!4914 = !DILocation(line: 285, column: 3, scope: !4908)
!4915 = !DILocation(line: 285, column: 9, scope: !4908)
!4916 = !DILocation(line: 285, column: 18, scope: !4908)
!4917 = !DILocation(line: 286, column: 35, scope: !4908)
!4918 = !DILocation(line: 286, column: 40, scope: !4908)
!4919 = !DILocation(line: 286, column: 50, scope: !4908)
!4920 = !DILocation(line: 286, column: 56, scope: !4908)
!4921 = !DILocation(line: 286, column: 48, scope: !4908)
!4922 = !DILocation(line: 286, column: 18, scope: !4908)
!4923 = !DILocation(line: 286, column: 3, scope: !4908)
!4924 = !DILocation(line: 286, column: 8, scope: !4908)
!4925 = !DILocation(line: 286, column: 16, scope: !4908)
!4926 = !DILocation(line: 287, column: 15, scope: !4908)
!4927 = !DILocation(line: 287, column: 19, scope: !4908)
!4928 = !DILocation(line: 287, column: 24, scope: !4908)
!4929 = !DILocation(line: 287, column: 42, scope: !4908)
!4930 = !DILocation(line: 287, column: 3, scope: !4908)
!4931 = !DILocation(line: 288, column: 9, scope: !4908)
!4932 = !DILocation(line: 288, column: 31, scope: !4908)
!4933 = !DILocation(line: 288, column: 12, scope: !4908)
!4934 = !DILocation(line: 288, column: 17, scope: !4908)
!4935 = !DILocation(line: 288, column: 21, scope: !4908)
!4936 = !DILocation(line: 288, column: 24, scope: !4908)
!4937 = !DILocation(line: 288, column: 28, scope: !4908)
!4938 = !DILocation(line: 288, column: 10, scope: !4908)
!4939 = !DILocation(line: 288, column: 8, scope: !4908)
!4940 = !DILocation(line: 289, column: 2, scope: !4908)
!4941 = !DILocation(line: 281, column: 44, scope: !4942)
!4942 = !DILexicalBlockFile(scope: !4905, file: !566, discriminator: 5)
!4943 = !DILocation(line: 281, column: 48, scope: !4942)
!4944 = !DILocation(line: 281, column: 41, scope: !4942)
!4945 = !DILocation(line: 281, column: 2, scope: !4942)
!4946 = distinct !{!4946, !4947}
!4947 = !DILocation(line: 281, column: 2, scope: !4855)
!4948 = !DILocation(line: 291, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4855, file: !566, line: 291, column: 6)
!4950 = !DILocation(line: 291, column: 11, scope: !4949)
!4951 = !DILocation(line: 291, column: 19, scope: !4949)
!4952 = !DILocation(line: 291, column: 6, scope: !4855)
!4953 = !DILocation(line: 292, column: 13, scope: !4949)
!4954 = !DILocation(line: 292, column: 45, scope: !4949)
!4955 = !DILocation(line: 292, column: 55, scope: !4949)
!4956 = !DILocation(line: 292, column: 48, scope: !4949)
!4957 = !DILocation(line: 292, column: 60, scope: !4949)
!4958 = !DILocation(line: 292, column: 63, scope: !4949)
!4959 = !DILocation(line: 292, column: 61, scope: !4949)
!4960 = !DILocation(line: 292, column: 72, scope: !4949)
!4961 = !DILocation(line: 292, column: 3, scope: !4949)
!4962 = !DILocation(line: 293, column: 1, scope: !4855)
!4963 = distinct !DISubprogram(name: "add_encap_mpls", scope: !566, file: !566, line: 154, type: !4964, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !744, !231, !2408}
!4966 = !DILocalVariable(name: "rta", arg: 1, scope: !4963, file: !566, line: 154, type: !744)
!4967 = !DILocation(line: 154, column: 31, scope: !4963)
!4968 = !DILocalVariable(name: "len", arg: 2, scope: !4963, file: !566, line: 154, type: !231)
!4969 = !DILocation(line: 154, column: 43, scope: !4963)
!4970 = !DILocalVariable(name: "encap", arg: 3, scope: !4963, file: !566, line: 154, type: !2408)
!4971 = !DILocation(line: 154, column: 63, scope: !4963)
!4972 = !DILocation(line: 156, column: 16, scope: !4963)
!4973 = !DILocation(line: 156, column: 21, scope: !4963)
!4974 = !DILocation(line: 156, column: 46, scope: !4963)
!4975 = !DILocation(line: 156, column: 53, scope: !4963)
!4976 = !DILocation(line: 156, column: 58, scope: !4963)
!4977 = !DILocation(line: 156, column: 45, scope: !4963)
!4978 = !DILocation(line: 156, column: 64, scope: !4963)
!4979 = !DILocation(line: 156, column: 71, scope: !4963)
!4980 = !DILocation(line: 156, column: 76, scope: !4963)
!4981 = !DILocation(line: 156, column: 87, scope: !4963)
!4982 = !DILocation(line: 156, column: 2, scope: !4963)
!4983 = !DILocation(line: 157, column: 1, scope: !4963)
!4984 = distinct !DISubprogram(name: "add_encap_ip", scope: !566, file: !566, line: 161, type: !4964, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!4985 = !DILocalVariable(name: "rta", arg: 1, scope: !4984, file: !566, line: 161, type: !744)
!4986 = !DILocation(line: 161, column: 29, scope: !4984)
!4987 = !DILocalVariable(name: "len", arg: 2, scope: !4984, file: !566, line: 161, type: !231)
!4988 = !DILocation(line: 161, column: 41, scope: !4984)
!4989 = !DILocalVariable(name: "encap", arg: 3, scope: !4984, file: !566, line: 161, type: !2408)
!4990 = !DILocation(line: 161, column: 61, scope: !4984)
!4991 = !DILocation(line: 163, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4984, file: !566, line: 163, column: 6)
!4993 = !DILocation(line: 163, column: 13, scope: !4992)
!4994 = !DILocation(line: 163, column: 19, scope: !4992)
!4995 = !DILocation(line: 163, column: 6, scope: !4984)
!4996 = !DILocation(line: 164, column: 17, scope: !4992)
!4997 = !DILocation(line: 164, column: 22, scope: !4992)
!4998 = !DILocation(line: 164, column: 42, scope: !4992)
!4999 = !DILocation(line: 164, column: 49, scope: !4992)
!5000 = !DILocation(line: 164, column: 52, scope: !4992)
!5001 = !DILocation(line: 164, column: 3, scope: !5002)
!5002 = !DILexicalBlockFile(scope: !4992, file: !566, discriminator: 1)
!5003 = !DILocation(line: 164, column: 3, scope: !4992)
!5004 = !DILocation(line: 165, column: 6, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4984, file: !566, line: 165, column: 6)
!5006 = !DILocation(line: 165, column: 13, scope: !5005)
!5007 = !DILocation(line: 165, column: 16, scope: !5005)
!5008 = !DILocation(line: 165, column: 6, scope: !4984)
!5009 = !DILocation(line: 166, column: 17, scope: !5005)
!5010 = !DILocation(line: 166, column: 22, scope: !5005)
!5011 = !DILocation(line: 166, column: 45, scope: !5005)
!5012 = !DILocation(line: 166, column: 52, scope: !5005)
!5013 = !DILocation(line: 166, column: 55, scope: !5005)
!5014 = !DILocation(line: 166, column: 60, scope: !5005)
!5015 = !DILocation(line: 166, column: 62, scope: !5005)
!5016 = !DILocation(line: 166, column: 66, scope: !5005)
!5017 = !DILocation(line: 166, column: 75, scope: !5005)
!5018 = !DILocation(line: 166, column: 44, scope: !5005)
!5019 = !DILocation(line: 166, column: 3, scope: !5005)
!5020 = !DILocation(line: 167, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4984, file: !566, line: 167, column: 6)
!5022 = !DILocation(line: 167, column: 13, scope: !5021)
!5023 = !DILocation(line: 167, column: 16, scope: !5021)
!5024 = !DILocation(line: 167, column: 6, scope: !4984)
!5025 = !DILocation(line: 168, column: 17, scope: !5021)
!5026 = !DILocation(line: 168, column: 22, scope: !5021)
!5027 = !DILocation(line: 168, column: 45, scope: !5021)
!5028 = !DILocation(line: 168, column: 52, scope: !5021)
!5029 = !DILocation(line: 168, column: 55, scope: !5021)
!5030 = !DILocation(line: 168, column: 60, scope: !5021)
!5031 = !DILocation(line: 168, column: 62, scope: !5021)
!5032 = !DILocation(line: 168, column: 66, scope: !5021)
!5033 = !DILocation(line: 168, column: 75, scope: !5021)
!5034 = !DILocation(line: 168, column: 44, scope: !5021)
!5035 = !DILocation(line: 168, column: 3, scope: !5021)
!5036 = !DILocation(line: 169, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4984, file: !566, line: 169, column: 6)
!5038 = !DILocation(line: 169, column: 13, scope: !5037)
!5039 = !DILocation(line: 169, column: 19, scope: !5037)
!5040 = !DILocation(line: 169, column: 6, scope: !4984)
!5041 = !DILocation(line: 170, column: 16, scope: !5037)
!5042 = !DILocation(line: 170, column: 21, scope: !5037)
!5043 = !DILocation(line: 170, column: 43, scope: !5037)
!5044 = !DILocation(line: 170, column: 50, scope: !5037)
!5045 = !DILocation(line: 170, column: 53, scope: !5037)
!5046 = !DILocation(line: 170, column: 3, scope: !5037)
!5047 = !DILocation(line: 171, column: 6, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4984, file: !566, line: 171, column: 6)
!5049 = !DILocation(line: 171, column: 13, scope: !5048)
!5050 = !DILocation(line: 171, column: 19, scope: !5048)
!5051 = !DILocation(line: 171, column: 6, scope: !4984)
!5052 = !DILocation(line: 172, column: 16, scope: !5048)
!5053 = !DILocation(line: 172, column: 21, scope: !5048)
!5054 = !DILocation(line: 172, column: 43, scope: !5048)
!5055 = !DILocation(line: 172, column: 50, scope: !5048)
!5056 = !DILocation(line: 172, column: 53, scope: !5048)
!5057 = !DILocation(line: 172, column: 3, scope: !5048)
!5058 = !DILocation(line: 173, column: 6, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4984, file: !566, line: 173, column: 6)
!5060 = !DILocation(line: 173, column: 13, scope: !5059)
!5061 = !DILocation(line: 173, column: 19, scope: !5059)
!5062 = !DILocation(line: 173, column: 6, scope: !4984)
!5063 = !DILocation(line: 174, column: 17, scope: !5059)
!5064 = !DILocation(line: 174, column: 22, scope: !5059)
!5065 = !DILocation(line: 174, column: 46, scope: !5059)
!5066 = !DILocation(line: 174, column: 53, scope: !5059)
!5067 = !DILocation(line: 174, column: 56, scope: !5059)
!5068 = !DILocation(line: 174, column: 3, scope: !5059)
!5069 = !DILocation(line: 175, column: 1, scope: !4984)
!5070 = distinct !DISubprogram(name: "add_encap_ila", scope: !566, file: !566, line: 179, type: !4964, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5071 = !DILocalVariable(name: "rta", arg: 1, scope: !5070, file: !566, line: 179, type: !744)
!5072 = !DILocation(line: 179, column: 30, scope: !5070)
!5073 = !DILocalVariable(name: "len", arg: 2, scope: !5070, file: !566, line: 179, type: !231)
!5074 = !DILocation(line: 179, column: 42, scope: !5070)
!5075 = !DILocalVariable(name: "encap", arg: 3, scope: !5070, file: !566, line: 179, type: !2408)
!5076 = !DILocation(line: 179, column: 62, scope: !5070)
!5077 = !DILocation(line: 181, column: 16, scope: !5070)
!5078 = !DILocation(line: 181, column: 21, scope: !5070)
!5079 = !DILocation(line: 181, column: 44, scope: !5070)
!5080 = !DILocation(line: 181, column: 51, scope: !5070)
!5081 = !DILocation(line: 181, column: 55, scope: !5070)
!5082 = !DILocation(line: 181, column: 2, scope: !5070)
!5083 = !DILocation(line: 182, column: 1, scope: !5070)
!5084 = distinct !DISubprogram(name: "add_encap_ip6", scope: !566, file: !566, line: 186, type: !4964, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5085 = !DILocalVariable(name: "rta", arg: 1, scope: !5084, file: !566, line: 186, type: !744)
!5086 = !DILocation(line: 186, column: 30, scope: !5084)
!5087 = !DILocalVariable(name: "len", arg: 2, scope: !5084, file: !566, line: 186, type: !231)
!5088 = !DILocation(line: 186, column: 42, scope: !5084)
!5089 = !DILocalVariable(name: "encap", arg: 3, scope: !5084, file: !566, line: 186, type: !2408)
!5090 = !DILocation(line: 186, column: 62, scope: !5084)
!5091 = !DILocation(line: 188, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5084, file: !566, line: 188, column: 6)
!5093 = !DILocation(line: 188, column: 13, scope: !5092)
!5094 = !DILocation(line: 188, column: 19, scope: !5092)
!5095 = !DILocation(line: 188, column: 6, scope: !5084)
!5096 = !DILocation(line: 189, column: 17, scope: !5092)
!5097 = !DILocation(line: 189, column: 22, scope: !5092)
!5098 = !DILocation(line: 189, column: 43, scope: !5092)
!5099 = !DILocation(line: 189, column: 50, scope: !5092)
!5100 = !DILocation(line: 189, column: 54, scope: !5092)
!5101 = !DILocation(line: 189, column: 3, scope: !5102)
!5102 = !DILexicalBlockFile(scope: !5092, file: !566, discriminator: 1)
!5103 = !DILocation(line: 189, column: 3, scope: !5092)
!5104 = !DILocation(line: 190, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5084, file: !566, line: 190, column: 6)
!5106 = !DILocation(line: 190, column: 13, scope: !5105)
!5107 = !DILocation(line: 190, column: 17, scope: !5105)
!5108 = !DILocation(line: 190, column: 6, scope: !5084)
!5109 = !DILocation(line: 191, column: 17, scope: !5105)
!5110 = !DILocation(line: 191, column: 22, scope: !5105)
!5111 = !DILocation(line: 191, column: 46, scope: !5105)
!5112 = !DILocation(line: 191, column: 53, scope: !5105)
!5113 = !DILocation(line: 191, column: 57, scope: !5105)
!5114 = !DILocation(line: 191, column: 62, scope: !5105)
!5115 = !DILocation(line: 191, column: 64, scope: !5105)
!5116 = !DILocation(line: 191, column: 45, scope: !5105)
!5117 = !DILocation(line: 191, column: 3, scope: !5105)
!5118 = !DILocation(line: 192, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5084, file: !566, line: 192, column: 6)
!5120 = !DILocation(line: 192, column: 13, scope: !5119)
!5121 = !DILocation(line: 192, column: 17, scope: !5119)
!5122 = !DILocation(line: 192, column: 6, scope: !5084)
!5123 = !DILocation(line: 193, column: 17, scope: !5119)
!5124 = !DILocation(line: 193, column: 22, scope: !5119)
!5125 = !DILocation(line: 193, column: 46, scope: !5119)
!5126 = !DILocation(line: 193, column: 53, scope: !5119)
!5127 = !DILocation(line: 193, column: 57, scope: !5119)
!5128 = !DILocation(line: 193, column: 62, scope: !5119)
!5129 = !DILocation(line: 193, column: 64, scope: !5119)
!5130 = !DILocation(line: 193, column: 45, scope: !5119)
!5131 = !DILocation(line: 193, column: 3, scope: !5119)
!5132 = !DILocation(line: 194, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5084, file: !566, line: 194, column: 6)
!5134 = !DILocation(line: 194, column: 13, scope: !5133)
!5135 = !DILocation(line: 194, column: 19, scope: !5133)
!5136 = !DILocation(line: 194, column: 6, scope: !5084)
!5137 = !DILocation(line: 195, column: 16, scope: !5133)
!5138 = !DILocation(line: 195, column: 21, scope: !5133)
!5139 = !DILocation(line: 195, column: 43, scope: !5133)
!5140 = !DILocation(line: 195, column: 50, scope: !5133)
!5141 = !DILocation(line: 195, column: 54, scope: !5133)
!5142 = !DILocation(line: 195, column: 3, scope: !5133)
!5143 = !DILocation(line: 196, column: 6, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5084, file: !566, line: 196, column: 6)
!5145 = !DILocation(line: 196, column: 13, scope: !5144)
!5146 = !DILocation(line: 196, column: 19, scope: !5144)
!5147 = !DILocation(line: 196, column: 6, scope: !5084)
!5148 = !DILocation(line: 197, column: 16, scope: !5144)
!5149 = !DILocation(line: 197, column: 21, scope: !5144)
!5150 = !DILocation(line: 197, column: 49, scope: !5144)
!5151 = !DILocation(line: 197, column: 56, scope: !5144)
!5152 = !DILocation(line: 197, column: 60, scope: !5144)
!5153 = !DILocation(line: 197, column: 3, scope: !5144)
!5154 = !DILocation(line: 198, column: 6, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5084, file: !566, line: 198, column: 6)
!5156 = !DILocation(line: 198, column: 13, scope: !5155)
!5157 = !DILocation(line: 198, column: 19, scope: !5155)
!5158 = !DILocation(line: 198, column: 6, scope: !5084)
!5159 = !DILocation(line: 199, column: 17, scope: !5155)
!5160 = !DILocation(line: 199, column: 22, scope: !5155)
!5161 = !DILocation(line: 199, column: 47, scope: !5155)
!5162 = !DILocation(line: 199, column: 54, scope: !5155)
!5163 = !DILocation(line: 199, column: 58, scope: !5155)
!5164 = !DILocation(line: 199, column: 3, scope: !5155)
!5165 = !DILocation(line: 200, column: 1, scope: !5084)
!5166 = distinct !DISubprogram(name: "__bswap_64", scope: !5167, file: !5167, line: 109, type: !5168, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!5170, !5170}
!5170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !315, line: 44, baseType: !233)
!5171 = !DILocalVariable(name: "__bsx", arg: 1, scope: !5166, file: !5167, line: 109, type: !5170)
!5172 = !DILocation(line: 109, column: 24, scope: !5166)
!5173 = !DILocation(line: 111, column: 29, scope: !5166)
!5174 = !DILocation(line: 111, column: 10, scope: !5166)
!5175 = !DILocation(line: 111, column: 3, scope: !5166)
!5176 = distinct !DISubprogram(name: "add_nexthop", scope: !566, file: !566, line: 238, type: !5177, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{null, !1315, !4858, !744, !231, !553}
!5179 = !DILocalVariable(name: "nh", arg: 1, scope: !5176, file: !566, line: 238, type: !1315)
!5180 = !DILocation(line: 238, column: 24, scope: !5176)
!5181 = !DILocalVariable(name: "rtm", arg: 2, scope: !5176, file: !566, line: 238, type: !4858)
!5182 = !DILocation(line: 238, column: 42, scope: !5176)
!5183 = !DILocalVariable(name: "rta", arg: 3, scope: !5176, file: !566, line: 238, type: !744)
!5184 = !DILocation(line: 238, column: 62, scope: !5176)
!5185 = !DILocalVariable(name: "len", arg: 4, scope: !5176, file: !566, line: 238, type: !231)
!5186 = !DILocation(line: 238, column: 74, scope: !5176)
!5187 = !DILocalVariable(name: "rtnh", arg: 5, scope: !5176, file: !566, line: 238, type: !553)
!5188 = !DILocation(line: 238, column: 97, scope: !5176)
!5189 = !DILocation(line: 240, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5176, file: !566, line: 240, column: 6)
!5191 = !DILocation(line: 240, column: 10, scope: !5190)
!5192 = !DILocation(line: 240, column: 6, scope: !5176)
!5193 = !DILocation(line: 241, column: 7, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !566, line: 241, column: 7)
!5195 = distinct !DILexicalBlock(scope: !5190, file: !566, line: 240, column: 16)
!5196 = !DILocation(line: 241, column: 12, scope: !5194)
!5197 = !DILocation(line: 241, column: 26, scope: !5194)
!5198 = !DILocation(line: 241, column: 30, scope: !5194)
!5199 = !DILocation(line: 241, column: 36, scope: !5194)
!5200 = !DILocation(line: 241, column: 40, scope: !5194)
!5201 = !DILocation(line: 241, column: 23, scope: !5194)
!5202 = !DILocation(line: 241, column: 7, scope: !5195)
!5203 = !DILocation(line: 242, column: 38, scope: !5194)
!5204 = !DILocation(line: 242, column: 44, scope: !5194)
!5205 = !DILocation(line: 242, column: 68, scope: !5194)
!5206 = !DILocation(line: 242, column: 73, scope: !5194)
!5207 = !DILocation(line: 242, column: 91, scope: !5194)
!5208 = !DILocation(line: 242, column: 95, scope: !5194)
!5209 = !DILocation(line: 242, column: 55, scope: !5194)
!5210 = !DILocation(line: 242, column: 53, scope: !5194)
!5211 = !DILocation(line: 242, column: 21, scope: !5194)
!5212 = !DILocation(line: 242, column: 4, scope: !5194)
!5213 = !DILocation(line: 242, column: 10, scope: !5194)
!5214 = !DILocation(line: 242, column: 19, scope: !5194)
!5215 = !DILocation(line: 245, column: 38, scope: !5194)
!5216 = !DILocation(line: 245, column: 44, scope: !5194)
!5217 = !DILocation(line: 245, column: 71, scope: !5194)
!5218 = !DILocation(line: 245, column: 76, scope: !5194)
!5219 = !DILocation(line: 245, column: 90, scope: !5194)
!5220 = !DILocation(line: 245, column: 94, scope: !5194)
!5221 = !DILocation(line: 245, column: 55, scope: !5194)
!5222 = !DILocation(line: 245, column: 53, scope: !5194)
!5223 = !DILocation(line: 245, column: 21, scope: !5194)
!5224 = !DILocation(line: 245, column: 4, scope: !5194)
!5225 = !DILocation(line: 245, column: 10, scope: !5194)
!5226 = !DILocation(line: 245, column: 19, scope: !5194)
!5227 = !DILocation(line: 247, column: 2, scope: !5195)
!5228 = !DILocation(line: 248, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5176, file: !566, line: 248, column: 6)
!5230 = !DILocation(line: 248, column: 10, scope: !5229)
!5231 = !DILocation(line: 248, column: 6, scope: !5176)
!5232 = !DILocation(line: 249, column: 29, scope: !5229)
!5233 = !DILocation(line: 249, column: 33, scope: !5229)
!5234 = !DILocation(line: 249, column: 38, scope: !5229)
!5235 = !DILocation(line: 249, column: 3, scope: !5229)
!5236 = !DILocation(line: 249, column: 9, scope: !5229)
!5237 = !DILocation(line: 249, column: 22, scope: !5229)
!5238 = !DILocation(line: 251, column: 6, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5176, file: !566, line: 251, column: 6)
!5240 = !DILocation(line: 251, column: 10, scope: !5239)
!5241 = !DILocation(line: 251, column: 15, scope: !5239)
!5242 = !DILocation(line: 251, column: 6, scope: !5176)
!5243 = !DILocation(line: 252, column: 21, scope: !5239)
!5244 = !DILocation(line: 252, column: 25, scope: !5239)
!5245 = !DILocation(line: 252, column: 3, scope: !5239)
!5246 = !DILocation(line: 252, column: 9, scope: !5239)
!5247 = !DILocation(line: 252, column: 19, scope: !5239)
!5248 = !DILocation(line: 254, column: 21, scope: !5176)
!5249 = !DILocation(line: 254, column: 25, scope: !5176)
!5250 = !DILocation(line: 254, column: 2, scope: !5176)
!5251 = !DILocation(line: 254, column: 8, scope: !5176)
!5252 = !DILocation(line: 254, column: 19, scope: !5176)
!5253 = !DILocation(line: 256, column: 6, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5176, file: !566, line: 256, column: 6)
!5255 = !DILocation(line: 256, column: 10, scope: !5254)
!5256 = !DILocation(line: 256, column: 6, scope: !5176)
!5257 = !DILocation(line: 257, column: 37, scope: !5254)
!5258 = !DILocation(line: 257, column: 43, scope: !5254)
!5259 = !DILocation(line: 257, column: 68, scope: !5254)
!5260 = !DILocation(line: 257, column: 73, scope: !5254)
!5261 = !DILocation(line: 257, column: 88, scope: !5254)
!5262 = !DILocation(line: 257, column: 92, scope: !5254)
!5263 = !DILocation(line: 257, column: 54, scope: !5254)
!5264 = !DILocation(line: 257, column: 52, scope: !5254)
!5265 = !DILocation(line: 257, column: 20, scope: !5254)
!5266 = !DILocation(line: 257, column: 3, scope: !5254)
!5267 = !DILocation(line: 257, column: 9, scope: !5254)
!5268 = !DILocation(line: 257, column: 18, scope: !5254)
!5269 = !DILocation(line: 260, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5176, file: !566, line: 260, column: 6)
!5271 = !DILocation(line: 260, column: 10, scope: !5270)
!5272 = !DILocation(line: 260, column: 16, scope: !5270)
!5273 = !DILocation(line: 260, column: 21, scope: !5270)
!5274 = !DILocation(line: 260, column: 6, scope: !5176)
!5275 = !DILocalVariable(name: "len", scope: !5276, file: !566, line: 261, type: !230)
!5276 = distinct !DILexicalBlock(scope: !5270, file: !566, line: 260, column: 45)
!5277 = !DILocation(line: 261, column: 18, scope: !5276)
!5278 = !DILocation(line: 261, column: 24, scope: !5276)
!5279 = !DILocation(line: 261, column: 29, scope: !5276)
!5280 = !DILocation(line: 262, column: 13, scope: !5276)
!5281 = !DILocation(line: 262, column: 18, scope: !5276)
!5282 = !DILocation(line: 262, column: 24, scope: !5276)
!5283 = !DILocation(line: 262, column: 28, scope: !5276)
!5284 = !DILocation(line: 262, column: 3, scope: !5276)
!5285 = !DILocation(line: 263, column: 37, scope: !5276)
!5286 = !DILocation(line: 263, column: 43, scope: !5276)
!5287 = !DILocation(line: 263, column: 54, scope: !5276)
!5288 = !DILocation(line: 263, column: 59, scope: !5276)
!5289 = !DILocation(line: 263, column: 52, scope: !5276)
!5290 = !DILocation(line: 263, column: 69, scope: !5276)
!5291 = !DILocation(line: 263, column: 67, scope: !5276)
!5292 = !DILocation(line: 263, column: 20, scope: !5276)
!5293 = !DILocation(line: 263, column: 3, scope: !5276)
!5294 = !DILocation(line: 263, column: 9, scope: !5276)
!5295 = !DILocation(line: 263, column: 18, scope: !5276)
!5296 = !DILocation(line: 264, column: 2, scope: !5276)
!5297 = !DILocation(line: 266, column: 1, scope: !5176)
!5298 = distinct !DISubprogram(name: "add_addr2rta", scope: !566, file: !566, line: 106, type: !5299, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!230, !744, !231, !230, !239}
!5301 = !DILocalVariable(name: "rta", arg: 1, scope: !5298, file: !566, line: 106, type: !744)
!5302 = !DILocation(line: 106, column: 29, scope: !5298)
!5303 = !DILocalVariable(name: "maxlen", arg: 2, scope: !5298, file: !566, line: 106, type: !231)
!5304 = !DILocation(line: 106, column: 41, scope: !5298)
!5305 = !DILocalVariable(name: "type", arg: 3, scope: !5298, file: !566, line: 106, type: !230)
!5306 = !DILocation(line: 106, column: 64, scope: !5298)
!5307 = !DILocalVariable(name: "ip_address", arg: 4, scope: !5298, file: !566, line: 106, type: !239)
!5308 = !DILocation(line: 106, column: 84, scope: !5298)
!5309 = !DILocalVariable(name: "addr", scope: !5298, file: !566, line: 108, type: !229)
!5310 = !DILocation(line: 108, column: 8, scope: !5298)
!5311 = !DILocalVariable(name: "alen", scope: !5298, file: !566, line: 109, type: !231)
!5312 = !DILocation(line: 109, column: 9, scope: !5298)
!5313 = !DILocation(line: 111, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5298, file: !566, line: 111, column: 6)
!5315 = !DILocation(line: 111, column: 6, scope: !5298)
!5316 = !DILocation(line: 112, column: 3, scope: !5314)
!5317 = !DILocation(line: 114, column: 8, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5298, file: !566, line: 114, column: 6)
!5319 = !DILocation(line: 114, column: 21, scope: !5318)
!5320 = !DILocation(line: 114, column: 25, scope: !5318)
!5321 = !DILocation(line: 114, column: 7, scope: !5318)
!5322 = !DILocation(line: 114, column: 36, scope: !5318)
!5323 = !DILocation(line: 114, column: 6, scope: !5298)
!5324 = !DILocation(line: 115, column: 19, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5318, file: !566, line: 114, column: 8)
!5326 = !DILocation(line: 115, column: 31, scope: !5325)
!5327 = !DILocation(line: 115, column: 33, scope: !5325)
!5328 = !DILocation(line: 115, column: 10, scope: !5325)
!5329 = !DILocation(line: 115, column: 8, scope: !5325)
!5330 = !DILocation(line: 116, column: 8, scope: !5325)
!5331 = !DILocation(line: 117, column: 2, scope: !5325)
!5332 = !DILocation(line: 119, column: 19, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5318, file: !566, line: 118, column: 7)
!5334 = !DILocation(line: 119, column: 31, scope: !5333)
!5335 = !DILocation(line: 119, column: 33, scope: !5333)
!5336 = !DILocation(line: 119, column: 37, scope: !5333)
!5337 = !DILocation(line: 119, column: 10, scope: !5333)
!5338 = !DILocation(line: 119, column: 8, scope: !5333)
!5339 = !DILocation(line: 120, column: 8, scope: !5333)
!5340 = !DILocation(line: 123, column: 39, scope: !5298)
!5341 = !DILocation(line: 123, column: 44, scope: !5298)
!5342 = !DILocation(line: 123, column: 52, scope: !5298)
!5343 = !DILocation(line: 123, column: 58, scope: !5298)
!5344 = !DILocation(line: 123, column: 64, scope: !5298)
!5345 = !DILocation(line: 123, column: 25, scope: !5298)
!5346 = !DILocation(line: 123, column: 9, scope: !5298)
!5347 = !DILocation(line: 123, column: 2, scope: !5298)
!5348 = !DILocation(line: 124, column: 1, scope: !5298)
!5349 = distinct !DISubprogram(name: "add_addrfam2rta", scope: !566, file: !566, line: 128, type: !5299, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5350 = !DILocalVariable(name: "rta", arg: 1, scope: !5349, file: !566, line: 128, type: !744)
!5351 = !DILocation(line: 128, column: 32, scope: !5349)
!5352 = !DILocalVariable(name: "maxlen", arg: 2, scope: !5349, file: !566, line: 128, type: !231)
!5353 = !DILocation(line: 128, column: 44, scope: !5349)
!5354 = !DILocalVariable(name: "type", arg: 3, scope: !5349, file: !566, line: 128, type: !230)
!5355 = !DILocation(line: 128, column: 67, scope: !5349)
!5356 = !DILocalVariable(name: "ip_address", arg: 4, scope: !5349, file: !566, line: 128, type: !239)
!5357 = !DILocation(line: 128, column: 87, scope: !5349)
!5358 = !DILocalVariable(name: "addr", scope: !5349, file: !566, line: 130, type: !229)
!5359 = !DILocation(line: 130, column: 8, scope: !5349)
!5360 = !DILocalVariable(name: "alen", scope: !5349, file: !566, line: 131, type: !231)
!5361 = !DILocation(line: 131, column: 9, scope: !5349)
!5362 = !DILocalVariable(name: "family", scope: !5349, file: !566, line: 132, type: !286)
!5363 = !DILocation(line: 132, column: 11, scope: !5349)
!5364 = !DILocation(line: 134, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5349, file: !566, line: 134, column: 6)
!5366 = !DILocation(line: 134, column: 6, scope: !5349)
!5367 = !DILocation(line: 135, column: 3, scope: !5365)
!5368 = !DILocation(line: 137, column: 8, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5349, file: !566, line: 137, column: 6)
!5370 = !DILocation(line: 137, column: 21, scope: !5369)
!5371 = !DILocation(line: 137, column: 25, scope: !5369)
!5372 = !DILocation(line: 137, column: 7, scope: !5369)
!5373 = !DILocation(line: 137, column: 36, scope: !5369)
!5374 = !DILocation(line: 137, column: 6, scope: !5349)
!5375 = !DILocation(line: 138, column: 19, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5369, file: !566, line: 137, column: 8)
!5377 = !DILocation(line: 138, column: 31, scope: !5376)
!5378 = !DILocation(line: 138, column: 33, scope: !5376)
!5379 = !DILocation(line: 138, column: 10, scope: !5376)
!5380 = !DILocation(line: 138, column: 8, scope: !5376)
!5381 = !DILocation(line: 139, column: 8, scope: !5376)
!5382 = !DILocation(line: 140, column: 2, scope: !5376)
!5383 = !DILocation(line: 142, column: 19, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5369, file: !566, line: 141, column: 7)
!5385 = !DILocation(line: 142, column: 31, scope: !5384)
!5386 = !DILocation(line: 142, column: 33, scope: !5384)
!5387 = !DILocation(line: 142, column: 37, scope: !5384)
!5388 = !DILocation(line: 142, column: 10, scope: !5384)
!5389 = !DILocation(line: 142, column: 8, scope: !5384)
!5390 = !DILocation(line: 143, column: 8, scope: !5384)
!5391 = !DILocation(line: 145, column: 11, scope: !5349)
!5392 = !DILocation(line: 145, column: 23, scope: !5349)
!5393 = !DILocation(line: 145, column: 27, scope: !5349)
!5394 = !DILocation(line: 145, column: 9, scope: !5349)
!5395 = !DILocation(line: 147, column: 40, scope: !5349)
!5396 = !DILocation(line: 147, column: 45, scope: !5349)
!5397 = !DILocation(line: 147, column: 53, scope: !5349)
!5398 = !DILocation(line: 147, column: 59, scope: !5349)
!5399 = !DILocation(line: 147, column: 84, scope: !5349)
!5400 = !DILocation(line: 147, column: 90, scope: !5349)
!5401 = !DILocation(line: 147, column: 25, scope: !5349)
!5402 = !DILocation(line: 147, column: 9, scope: !5349)
!5403 = !DILocation(line: 147, column: 2, scope: !5349)
!5404 = !DILocation(line: 148, column: 1, scope: !5349)
!5405 = distinct !DISubprogram(name: "print_encap_mpls", scope: !566, file: !566, line: 587, type: !2406, isLocal: true, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5406 = !DILocalVariable(name: "op", arg: 1, scope: !5405, file: !566, line: 587, type: !389)
!5407 = !DILocation(line: 587, column: 24, scope: !5405)
!5408 = !DILocalVariable(name: "len", arg: 2, scope: !5405, file: !566, line: 587, type: !231)
!5409 = !DILocation(line: 587, column: 35, scope: !5405)
!5410 = !DILocalVariable(name: "encap", arg: 3, scope: !5405, file: !566, line: 587, type: !2408)
!5411 = !DILocation(line: 587, column: 55, scope: !5405)
!5412 = !DILocalVariable(name: "buf", scope: !5405, file: !566, line: 589, type: !389)
!5413 = !DILocation(line: 589, column: 8, scope: !5405)
!5414 = !DILocation(line: 589, column: 14, scope: !5405)
!5415 = !DILocalVariable(name: "buf_end", scope: !5405, file: !566, line: 590, type: !1442)
!5416 = !DILocation(line: 590, column: 14, scope: !5405)
!5417 = !DILocation(line: 590, column: 24, scope: !5405)
!5418 = !DILocation(line: 590, column: 29, scope: !5405)
!5419 = !DILocation(line: 590, column: 27, scope: !5405)
!5420 = !DILocalVariable(name: "i", scope: !5405, file: !566, line: 591, type: !257)
!5421 = !DILocation(line: 591, column: 11, scope: !5405)
!5422 = !DILocation(line: 593, column: 17, scope: !5405)
!5423 = !DILocation(line: 593, column: 30, scope: !5405)
!5424 = !DILocation(line: 593, column: 40, scope: !5405)
!5425 = !DILocation(line: 593, column: 38, scope: !5405)
!5426 = !DILocation(line: 593, column: 8, scope: !5405)
!5427 = !DILocation(line: 593, column: 5, scope: !5405)
!5428 = !DILocation(line: 594, column: 9, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5405, file: !566, line: 594, column: 2)
!5430 = !DILocation(line: 594, column: 7, scope: !5429)
!5431 = !DILocation(line: 594, column: 14, scope: !5432)
!5432 = !DILexicalBlockFile(scope: !5433, file: !566, discriminator: 1)
!5433 = distinct !DILexicalBlock(scope: !5429, file: !566, line: 594, column: 2)
!5434 = !DILocation(line: 594, column: 18, scope: !5432)
!5435 = !DILocation(line: 594, column: 25, scope: !5432)
!5436 = !DILocation(line: 594, column: 30, scope: !5432)
!5437 = !DILocation(line: 594, column: 16, scope: !5432)
!5438 = !DILocation(line: 594, column: 2, scope: !5432)
!5439 = !DILocation(line: 595, column: 18, scope: !5433)
!5440 = !DILocation(line: 595, column: 31, scope: !5433)
!5441 = !DILocation(line: 595, column: 41, scope: !5433)
!5442 = !DILocation(line: 595, column: 39, scope: !5433)
!5443 = !DILocation(line: 595, column: 54, scope: !5433)
!5444 = !DILocation(line: 595, column: 92, scope: !5433)
!5445 = !DILocation(line: 595, column: 75, scope: !5433)
!5446 = !DILocation(line: 595, column: 82, scope: !5433)
!5447 = !DILocation(line: 595, column: 87, scope: !5433)
!5448 = !DILocation(line: 595, column: 95, scope: !5433)
!5449 = !DILocation(line: 595, column: 69, scope: !5433)
!5450 = !DILocation(line: 595, column: 9, scope: !5432)
!5451 = !DILocation(line: 595, column: 6, scope: !5433)
!5452 = !DILocation(line: 595, column: 3, scope: !5433)
!5453 = !DILocation(line: 594, column: 43, scope: !5454)
!5454 = !DILexicalBlockFile(scope: !5433, file: !566, discriminator: 2)
!5455 = !DILocation(line: 594, column: 2, scope: !5454)
!5456 = distinct !{!5456, !5457}
!5457 = !DILocation(line: 594, column: 2, scope: !5405)
!5458 = !DILocation(line: 597, column: 18, scope: !5405)
!5459 = !DILocation(line: 597, column: 23, scope: !5405)
!5460 = !DILocation(line: 597, column: 21, scope: !5405)
!5461 = !DILocation(line: 597, column: 2, scope: !5405)
!5462 = distinct !DISubprogram(name: "print_encap_ip", scope: !566, file: !566, line: 602, type: !2406, isLocal: true, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5463 = !DILocalVariable(name: "op", arg: 1, scope: !5462, file: !566, line: 602, type: !389)
!5464 = !DILocation(line: 602, column: 22, scope: !5462)
!5465 = !DILocalVariable(name: "len", arg: 2, scope: !5462, file: !566, line: 602, type: !231)
!5466 = !DILocation(line: 602, column: 33, scope: !5462)
!5467 = !DILocalVariable(name: "encap", arg: 3, scope: !5462, file: !566, line: 602, type: !2408)
!5468 = !DILocation(line: 602, column: 53, scope: !5462)
!5469 = !DILocalVariable(name: "buf", scope: !5462, file: !566, line: 604, type: !389)
!5470 = !DILocation(line: 604, column: 8, scope: !5462)
!5471 = !DILocation(line: 604, column: 14, scope: !5462)
!5472 = !DILocalVariable(name: "buf_end", scope: !5462, file: !566, line: 605, type: !1442)
!5473 = !DILocation(line: 605, column: 14, scope: !5462)
!5474 = !DILocation(line: 605, column: 24, scope: !5462)
!5475 = !DILocation(line: 605, column: 29, scope: !5462)
!5476 = !DILocation(line: 605, column: 27, scope: !5462)
!5477 = !DILocation(line: 607, column: 17, scope: !5462)
!5478 = !DILocation(line: 607, column: 30, scope: !5462)
!5479 = !DILocation(line: 607, column: 40, scope: !5462)
!5480 = !DILocation(line: 607, column: 38, scope: !5462)
!5481 = !DILocation(line: 607, column: 8, scope: !5462)
!5482 = !DILocation(line: 607, column: 5, scope: !5462)
!5483 = !DILocation(line: 609, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5462, file: !566, line: 609, column: 6)
!5485 = !DILocation(line: 609, column: 13, scope: !5484)
!5486 = !DILocation(line: 609, column: 19, scope: !5484)
!5487 = !DILocation(line: 609, column: 6, scope: !5462)
!5488 = !DILocation(line: 610, column: 18, scope: !5484)
!5489 = !DILocation(line: 610, column: 31, scope: !5484)
!5490 = !DILocation(line: 610, column: 41, scope: !5484)
!5491 = !DILocation(line: 610, column: 39, scope: !5484)
!5492 = !DILocation(line: 610, column: 61, scope: !5484)
!5493 = !DILocation(line: 610, column: 68, scope: !5484)
!5494 = !DILocation(line: 610, column: 71, scope: !5484)
!5495 = !DILocation(line: 610, column: 9, scope: !5484)
!5496 = !DILocation(line: 610, column: 6, scope: !5484)
!5497 = !DILocation(line: 610, column: 3, scope: !5484)
!5498 = !DILocation(line: 611, column: 6, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5462, file: !566, line: 611, column: 6)
!5500 = !DILocation(line: 611, column: 13, scope: !5499)
!5501 = !DILocation(line: 611, column: 16, scope: !5499)
!5502 = !DILocation(line: 611, column: 6, scope: !5462)
!5503 = !DILocation(line: 612, column: 18, scope: !5499)
!5504 = !DILocation(line: 612, column: 31, scope: !5499)
!5505 = !DILocation(line: 612, column: 41, scope: !5499)
!5506 = !DILocation(line: 612, column: 39, scope: !5499)
!5507 = !DILocation(line: 612, column: 75, scope: !5499)
!5508 = !DILocation(line: 612, column: 82, scope: !5499)
!5509 = !DILocation(line: 612, column: 85, scope: !5499)
!5510 = !DILocation(line: 612, column: 57, scope: !5499)
!5511 = !DILocation(line: 612, column: 9, scope: !5512)
!5512 = !DILexicalBlockFile(scope: !5499, file: !566, discriminator: 1)
!5513 = !DILocation(line: 612, column: 6, scope: !5499)
!5514 = !DILocation(line: 612, column: 3, scope: !5499)
!5515 = !DILocation(line: 613, column: 6, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5462, file: !566, line: 613, column: 6)
!5517 = !DILocation(line: 613, column: 13, scope: !5516)
!5518 = !DILocation(line: 613, column: 16, scope: !5516)
!5519 = !DILocation(line: 613, column: 6, scope: !5462)
!5520 = !DILocation(line: 614, column: 18, scope: !5516)
!5521 = !DILocation(line: 614, column: 31, scope: !5516)
!5522 = !DILocation(line: 614, column: 41, scope: !5516)
!5523 = !DILocation(line: 614, column: 39, scope: !5516)
!5524 = !DILocation(line: 614, column: 75, scope: !5516)
!5525 = !DILocation(line: 614, column: 82, scope: !5516)
!5526 = !DILocation(line: 614, column: 85, scope: !5516)
!5527 = !DILocation(line: 614, column: 57, scope: !5516)
!5528 = !DILocation(line: 614, column: 9, scope: !5529)
!5529 = !DILexicalBlockFile(scope: !5516, file: !566, discriminator: 1)
!5530 = !DILocation(line: 614, column: 6, scope: !5516)
!5531 = !DILocation(line: 614, column: 3, scope: !5516)
!5532 = !DILocation(line: 615, column: 6, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5462, file: !566, line: 615, column: 6)
!5534 = !DILocation(line: 615, column: 13, scope: !5533)
!5535 = !DILocation(line: 615, column: 19, scope: !5533)
!5536 = !DILocation(line: 615, column: 6, scope: !5462)
!5537 = !DILocation(line: 616, column: 18, scope: !5533)
!5538 = !DILocation(line: 616, column: 31, scope: !5533)
!5539 = !DILocation(line: 616, column: 41, scope: !5533)
!5540 = !DILocation(line: 616, column: 39, scope: !5533)
!5541 = !DILocation(line: 616, column: 57, scope: !5533)
!5542 = !DILocation(line: 616, column: 64, scope: !5533)
!5543 = !DILocation(line: 616, column: 67, scope: !5533)
!5544 = !DILocation(line: 616, column: 9, scope: !5533)
!5545 = !DILocation(line: 616, column: 6, scope: !5533)
!5546 = !DILocation(line: 616, column: 3, scope: !5533)
!5547 = !DILocation(line: 617, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5462, file: !566, line: 617, column: 6)
!5549 = !DILocation(line: 617, column: 13, scope: !5548)
!5550 = !DILocation(line: 617, column: 19, scope: !5548)
!5551 = !DILocation(line: 617, column: 6, scope: !5462)
!5552 = !DILocation(line: 618, column: 18, scope: !5548)
!5553 = !DILocation(line: 618, column: 31, scope: !5548)
!5554 = !DILocation(line: 618, column: 41, scope: !5548)
!5555 = !DILocation(line: 618, column: 39, scope: !5548)
!5556 = !DILocation(line: 618, column: 57, scope: !5548)
!5557 = !DILocation(line: 618, column: 64, scope: !5548)
!5558 = !DILocation(line: 618, column: 67, scope: !5548)
!5559 = !DILocation(line: 618, column: 9, scope: !5548)
!5560 = !DILocation(line: 618, column: 6, scope: !5548)
!5561 = !DILocation(line: 618, column: 3, scope: !5548)
!5562 = !DILocation(line: 619, column: 6, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5462, file: !566, line: 619, column: 6)
!5564 = !DILocation(line: 619, column: 13, scope: !5563)
!5565 = !DILocation(line: 619, column: 19, scope: !5563)
!5566 = !DILocation(line: 619, column: 6, scope: !5462)
!5567 = !DILocation(line: 620, column: 18, scope: !5563)
!5568 = !DILocation(line: 620, column: 31, scope: !5563)
!5569 = !DILocation(line: 620, column: 41, scope: !5563)
!5570 = !DILocation(line: 620, column: 39, scope: !5563)
!5571 = !DILocation(line: 620, column: 61, scope: !5563)
!5572 = !DILocation(line: 620, column: 68, scope: !5563)
!5573 = !DILocation(line: 620, column: 71, scope: !5563)
!5574 = !DILocation(line: 620, column: 9, scope: !5563)
!5575 = !DILocation(line: 620, column: 6, scope: !5563)
!5576 = !DILocation(line: 620, column: 3, scope: !5563)
!5577 = !DILocation(line: 622, column: 18, scope: !5462)
!5578 = !DILocation(line: 622, column: 23, scope: !5462)
!5579 = !DILocation(line: 622, column: 21, scope: !5462)
!5580 = !DILocation(line: 622, column: 2, scope: !5462)
!5581 = distinct !DISubprogram(name: "print_encap_ila", scope: !566, file: !566, line: 627, type: !2406, isLocal: true, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5582 = !DILocalVariable(name: "op", arg: 1, scope: !5581, file: !566, line: 627, type: !389)
!5583 = !DILocation(line: 627, column: 23, scope: !5581)
!5584 = !DILocalVariable(name: "len", arg: 2, scope: !5581, file: !566, line: 627, type: !231)
!5585 = !DILocation(line: 627, column: 34, scope: !5581)
!5586 = !DILocalVariable(name: "encap", arg: 3, scope: !5581, file: !566, line: 627, type: !2408)
!5587 = !DILocation(line: 627, column: 54, scope: !5581)
!5588 = !DILocation(line: 629, column: 26, scope: !5581)
!5589 = !DILocation(line: 629, column: 30, scope: !5581)
!5590 = !DILocation(line: 629, column: 57, scope: !5581)
!5591 = !DILocation(line: 629, column: 64, scope: !5581)
!5592 = !DILocation(line: 629, column: 68, scope: !5581)
!5593 = !DILocation(line: 629, column: 17, scope: !5581)
!5594 = !DILocation(line: 629, column: 9, scope: !5581)
!5595 = !DILocation(line: 629, column: 2, scope: !5581)
!5596 = distinct !DISubprogram(name: "print_encap_ip6", scope: !566, file: !566, line: 634, type: !2406, isLocal: true, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5597 = !DILocalVariable(name: "op", arg: 1, scope: !5596, file: !566, line: 634, type: !389)
!5598 = !DILocation(line: 634, column: 23, scope: !5596)
!5599 = !DILocalVariable(name: "len", arg: 2, scope: !5596, file: !566, line: 634, type: !231)
!5600 = !DILocation(line: 634, column: 34, scope: !5596)
!5601 = !DILocalVariable(name: "encap", arg: 3, scope: !5596, file: !566, line: 634, type: !2408)
!5602 = !DILocation(line: 634, column: 54, scope: !5596)
!5603 = !DILocalVariable(name: "buf", scope: !5596, file: !566, line: 636, type: !389)
!5604 = !DILocation(line: 636, column: 8, scope: !5596)
!5605 = !DILocation(line: 636, column: 14, scope: !5596)
!5606 = !DILocalVariable(name: "buf_end", scope: !5596, file: !566, line: 637, type: !1442)
!5607 = !DILocation(line: 637, column: 14, scope: !5596)
!5608 = !DILocation(line: 637, column: 24, scope: !5596)
!5609 = !DILocation(line: 637, column: 29, scope: !5596)
!5610 = !DILocation(line: 637, column: 27, scope: !5596)
!5611 = !DILocation(line: 639, column: 17, scope: !5596)
!5612 = !DILocation(line: 639, column: 30, scope: !5596)
!5613 = !DILocation(line: 639, column: 40, scope: !5596)
!5614 = !DILocation(line: 639, column: 38, scope: !5596)
!5615 = !DILocation(line: 639, column: 8, scope: !5596)
!5616 = !DILocation(line: 639, column: 5, scope: !5596)
!5617 = !DILocation(line: 641, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5596, file: !566, line: 641, column: 6)
!5619 = !DILocation(line: 641, column: 13, scope: !5618)
!5620 = !DILocation(line: 641, column: 19, scope: !5618)
!5621 = !DILocation(line: 641, column: 6, scope: !5596)
!5622 = !DILocation(line: 642, column: 18, scope: !5618)
!5623 = !DILocation(line: 642, column: 31, scope: !5618)
!5624 = !DILocation(line: 642, column: 41, scope: !5618)
!5625 = !DILocation(line: 642, column: 39, scope: !5618)
!5626 = !DILocation(line: 642, column: 61, scope: !5618)
!5627 = !DILocation(line: 642, column: 68, scope: !5618)
!5628 = !DILocation(line: 642, column: 72, scope: !5618)
!5629 = !DILocation(line: 642, column: 9, scope: !5618)
!5630 = !DILocation(line: 642, column: 6, scope: !5618)
!5631 = !DILocation(line: 642, column: 3, scope: !5618)
!5632 = !DILocation(line: 643, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5596, file: !566, line: 643, column: 6)
!5634 = !DILocation(line: 643, column: 13, scope: !5633)
!5635 = !DILocation(line: 643, column: 16, scope: !5633)
!5636 = !DILocation(line: 643, column: 6, scope: !5596)
!5637 = !DILocation(line: 644, column: 18, scope: !5633)
!5638 = !DILocation(line: 644, column: 31, scope: !5633)
!5639 = !DILocation(line: 644, column: 41, scope: !5633)
!5640 = !DILocation(line: 644, column: 39, scope: !5633)
!5641 = !DILocation(line: 644, column: 75, scope: !5633)
!5642 = !DILocation(line: 644, column: 82, scope: !5633)
!5643 = !DILocation(line: 644, column: 86, scope: !5633)
!5644 = !DILocation(line: 644, column: 57, scope: !5633)
!5645 = !DILocation(line: 644, column: 9, scope: !5646)
!5646 = !DILexicalBlockFile(scope: !5633, file: !566, discriminator: 1)
!5647 = !DILocation(line: 644, column: 6, scope: !5633)
!5648 = !DILocation(line: 644, column: 3, scope: !5633)
!5649 = !DILocation(line: 645, column: 6, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5596, file: !566, line: 645, column: 6)
!5651 = !DILocation(line: 645, column: 13, scope: !5650)
!5652 = !DILocation(line: 645, column: 16, scope: !5650)
!5653 = !DILocation(line: 645, column: 6, scope: !5596)
!5654 = !DILocation(line: 646, column: 18, scope: !5650)
!5655 = !DILocation(line: 646, column: 31, scope: !5650)
!5656 = !DILocation(line: 646, column: 41, scope: !5650)
!5657 = !DILocation(line: 646, column: 39, scope: !5650)
!5658 = !DILocation(line: 646, column: 75, scope: !5650)
!5659 = !DILocation(line: 646, column: 82, scope: !5650)
!5660 = !DILocation(line: 646, column: 86, scope: !5650)
!5661 = !DILocation(line: 646, column: 57, scope: !5650)
!5662 = !DILocation(line: 646, column: 9, scope: !5663)
!5663 = !DILexicalBlockFile(scope: !5650, file: !566, discriminator: 1)
!5664 = !DILocation(line: 646, column: 6, scope: !5650)
!5665 = !DILocation(line: 646, column: 3, scope: !5650)
!5666 = !DILocation(line: 647, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5596, file: !566, line: 647, column: 6)
!5668 = !DILocation(line: 647, column: 13, scope: !5667)
!5669 = !DILocation(line: 647, column: 19, scope: !5667)
!5670 = !DILocation(line: 647, column: 6, scope: !5596)
!5671 = !DILocation(line: 648, column: 18, scope: !5667)
!5672 = !DILocation(line: 648, column: 31, scope: !5667)
!5673 = !DILocation(line: 648, column: 41, scope: !5667)
!5674 = !DILocation(line: 648, column: 39, scope: !5667)
!5675 = !DILocation(line: 648, column: 56, scope: !5667)
!5676 = !DILocation(line: 648, column: 63, scope: !5667)
!5677 = !DILocation(line: 648, column: 67, scope: !5667)
!5678 = !DILocation(line: 648, column: 9, scope: !5667)
!5679 = !DILocation(line: 648, column: 6, scope: !5667)
!5680 = !DILocation(line: 648, column: 3, scope: !5667)
!5681 = !DILocation(line: 649, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5596, file: !566, line: 649, column: 6)
!5683 = !DILocation(line: 649, column: 13, scope: !5682)
!5684 = !DILocation(line: 649, column: 19, scope: !5682)
!5685 = !DILocation(line: 649, column: 6, scope: !5596)
!5686 = !DILocation(line: 650, column: 18, scope: !5682)
!5687 = !DILocation(line: 650, column: 31, scope: !5682)
!5688 = !DILocation(line: 650, column: 41, scope: !5682)
!5689 = !DILocation(line: 650, column: 39, scope: !5682)
!5690 = !DILocation(line: 650, column: 62, scope: !5682)
!5691 = !DILocation(line: 650, column: 69, scope: !5682)
!5692 = !DILocation(line: 650, column: 73, scope: !5682)
!5693 = !DILocation(line: 650, column: 9, scope: !5682)
!5694 = !DILocation(line: 650, column: 6, scope: !5682)
!5695 = !DILocation(line: 650, column: 3, scope: !5682)
!5696 = !DILocation(line: 651, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5596, file: !566, line: 651, column: 6)
!5698 = !DILocation(line: 651, column: 13, scope: !5697)
!5699 = !DILocation(line: 651, column: 19, scope: !5697)
!5700 = !DILocation(line: 651, column: 6, scope: !5596)
!5701 = !DILocation(line: 652, column: 18, scope: !5697)
!5702 = !DILocation(line: 652, column: 31, scope: !5697)
!5703 = !DILocation(line: 652, column: 41, scope: !5697)
!5704 = !DILocation(line: 652, column: 39, scope: !5697)
!5705 = !DILocation(line: 652, column: 61, scope: !5697)
!5706 = !DILocation(line: 652, column: 68, scope: !5697)
!5707 = !DILocation(line: 652, column: 72, scope: !5697)
!5708 = !DILocation(line: 652, column: 9, scope: !5697)
!5709 = !DILocation(line: 652, column: 6, scope: !5697)
!5710 = !DILocation(line: 652, column: 3, scope: !5697)
!5711 = !DILocation(line: 654, column: 18, scope: !5596)
!5712 = !DILocation(line: 654, column: 23, scope: !5596)
!5713 = !DILocation(line: 654, column: 21, scope: !5596)
!5714 = !DILocation(line: 654, column: 2, scope: !5596)
!5715 = distinct !DISubprogram(name: "parse_encap_ip", scope: !566, file: !566, line: 944, type: !5716, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!321, !453, !3898, !1222}
!5718 = !DILocalVariable(name: "strvec", arg: 1, scope: !5715, file: !566, line: 944, type: !453)
!5719 = !DILocation(line: 944, column: 37, scope: !5715)
!5720 = !DILocalVariable(name: "i_ptr", arg: 2, scope: !5715, file: !566, line: 944, type: !3898)
!5721 = !DILocation(line: 944, column: 59, scope: !5715)
!5722 = !DILocalVariable(name: "encap", arg: 3, scope: !5715, file: !566, line: 944, type: !1222)
!5723 = !DILocation(line: 944, column: 75, scope: !5715)
!5724 = !DILocalVariable(name: "i", scope: !5715, file: !566, line: 946, type: !257)
!5725 = !DILocation(line: 946, column: 15, scope: !5715)
!5726 = !DILocation(line: 946, column: 20, scope: !5715)
!5727 = !DILocation(line: 946, column: 19, scope: !5715)
!5728 = !DILocalVariable(name: "str", scope: !5715, file: !566, line: 947, type: !389)
!5729 = !DILocation(line: 947, column: 8, scope: !5715)
!5730 = !DILocalVariable(name: "str1", scope: !5715, file: !566, line: 947, type: !389)
!5731 = !DILocation(line: 947, column: 14, scope: !5715)
!5732 = !DILocation(line: 949, column: 2, scope: !5715)
!5733 = !DILocation(line: 949, column: 9, scope: !5715)
!5734 = !DILocation(line: 949, column: 14, scope: !5715)
!5735 = !DILocation(line: 951, column: 2, scope: !5715)
!5736 = !DILocation(line: 951, column: 9, scope: !5737)
!5737 = !DILexicalBlockFile(scope: !5715, file: !566, discriminator: 1)
!5738 = !DILocation(line: 951, column: 11, scope: !5737)
!5739 = !DILocation(line: 951, column: 19, scope: !5737)
!5740 = !DILocation(line: 951, column: 28, scope: !5737)
!5741 = !DILocation(line: 951, column: 15, scope: !5737)
!5742 = !DILocation(line: 951, column: 2, scope: !5737)
!5743 = !DILocation(line: 952, column: 21, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5715, file: !566, line: 951, column: 40)
!5745 = !DILocation(line: 952, column: 29, scope: !5744)
!5746 = !DILocation(line: 952, column: 9, scope: !5744)
!5747 = !DILocation(line: 952, column: 7, scope: !5744)
!5748 = !DILocation(line: 953, column: 22, scope: !5744)
!5749 = !DILocation(line: 953, column: 30, scope: !5744)
!5750 = !DILocation(line: 953, column: 32, scope: !5744)
!5751 = !DILocation(line: 953, column: 10, scope: !5744)
!5752 = !DILocation(line: 953, column: 8, scope: !5744)
!5753 = !DILocation(line: 955, column: 15, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5744, file: !566, line: 955, column: 7)
!5755 = !DILocation(line: 955, column: 8, scope: !5754)
!5756 = !DILocation(line: 955, column: 7, scope: !5744)
!5757 = !DILocation(line: 956, column: 17, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !566, line: 956, column: 8)
!5759 = distinct !DILexicalBlock(scope: !5754, file: !566, line: 955, column: 27)
!5760 = !DILocation(line: 956, column: 24, scope: !5758)
!5761 = !DILocation(line: 956, column: 27, scope: !5758)
!5762 = !DILocation(line: 956, column: 31, scope: !5758)
!5763 = !DILocation(line: 956, column: 8, scope: !5758)
!5764 = !DILocation(line: 956, column: 8, scope: !5759)
!5765 = !DILocation(line: 957, column: 1, scope: !5758)
!5766 = !DILocation(line: 958, column: 5, scope: !5759)
!5767 = !DILocation(line: 960, column: 22, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5754, file: !566, line: 960, column: 14)
!5769 = !DILocation(line: 960, column: 15, scope: !5768)
!5770 = !DILocation(line: 960, column: 14, scope: !5754)
!5771 = !DILocation(line: 961, column: 8, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5773, file: !566, line: 961, column: 8)
!5773 = distinct !DILexicalBlock(scope: !5768, file: !566, line: 960, column: 35)
!5774 = !DILocation(line: 961, column: 15, scope: !5772)
!5775 = !DILocation(line: 961, column: 18, scope: !5772)
!5776 = !DILocation(line: 961, column: 8, scope: !5773)
!5777 = !DILocation(line: 962, column: 11, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5779, file: !566, line: 962, column: 11)
!5779 = distinct !DILexicalBlock(scope: !5772, file: !566, line: 962, column: 5)
!5780 = !DILocation(line: 962, column: 18, scope: !5778)
!5781 = !DILocation(line: 962, column: 21, scope: !5778)
!5782 = !DILocation(line: 962, column: 11, scope: !5779)
!5783 = !DILocation(line: 962, column: 34, scope: !5784)
!5784 = !DILexicalBlockFile(scope: !5785, file: !566, discriminator: 1)
!5785 = distinct !DILexicalBlock(scope: !5778, file: !566, line: 962, column: 26)
!5786 = !DILocation(line: 962, column: 41, scope: !5784)
!5787 = !DILocation(line: 962, column: 44, scope: !5784)
!5788 = !DILocation(line: 962, column: 29, scope: !5784)
!5789 = !DILocation(line: 962, column: 51, scope: !5784)
!5790 = !DILocation(line: 962, column: 58, scope: !5784)
!5791 = !DILocation(line: 962, column: 61, scope: !5784)
!5792 = !DILocation(line: 962, column: 66, scope: !5784)
!5793 = !DILocation(line: 961, column: 6, scope: !5784)
!5794 = !DILocation(line: 961, column: 8, scope: !5795)
!5795 = !DILexicalBlockFile(scope: !5779, file: !566, discriminator: 2)
!5796 = !DILocation(line: 962, column: 41, scope: !5797)
!5797 = !DILexicalBlockFile(scope: !5773, file: !566, discriminator: 2)
!5798 = !DILocation(line: 962, column: 20, scope: !5797)
!5799 = !DILocation(line: 962, column: 4, scope: !5797)
!5800 = !DILocation(line: 962, column: 11, scope: !5797)
!5801 = !DILocation(line: 962, column: 14, scope: !5797)
!5802 = !DILocation(line: 962, column: 18, scope: !5797)
!5803 = !DILocation(line: 963, column: 9, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5773, file: !566, line: 963, column: 8)
!5805 = !DILocation(line: 963, column: 16, scope: !5804)
!5806 = !DILocation(line: 963, column: 19, scope: !5804)
!5807 = !DILocation(line: 963, column: 8, scope: !5773)
!5808 = !DILocation(line: 964, column: 74, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5804, file: !566, line: 963, column: 24)
!5810 = !DILocation(line: 964, column: 5, scope: !5809)
!5811 = !DILocation(line: 965, column: 1, scope: !5809)
!5812 = !DILocation(line: 966, column: 5, scope: !5809)
!5813 = !DILocation(line: 968, column: 8, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5773, file: !566, line: 968, column: 8)
!5815 = !DILocation(line: 968, column: 15, scope: !5814)
!5816 = !DILocation(line: 968, column: 18, scope: !5814)
!5817 = !DILocation(line: 968, column: 23, scope: !5814)
!5818 = !DILocation(line: 968, column: 27, scope: !5814)
!5819 = !DILocation(line: 968, column: 38, scope: !5814)
!5820 = !DILocation(line: 968, column: 8, scope: !5773)
!5821 = !DILocation(line: 968, column: 97, scope: !5822)
!5822 = !DILexicalBlockFile(scope: !5823, file: !566, discriminator: 1)
!5823 = distinct !DILexicalBlock(scope: !5814, file: !566, line: 967, column: 49)
!5824 = !DILocation(line: 968, column: 5, scope: !5822)
!5825 = !DILocation(line: 969, column: 1, scope: !5823)
!5826 = !DILocation(line: 970, column: 5, scope: !5823)
!5827 = !DILocation(line: 972, column: 3, scope: !5773)
!5828 = !DILocation(line: 972, column: 22, scope: !5829)
!5829 = !DILexicalBlockFile(scope: !5830, file: !566, discriminator: 1)
!5830 = distinct !DILexicalBlock(scope: !5768, file: !566, line: 972, column: 14)
!5831 = !DILocation(line: 972, column: 15, scope: !5829)
!5832 = !DILocation(line: 972, column: 14, scope: !5829)
!5833 = !DILocation(line: 973, column: 8, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !566, line: 973, column: 8)
!5835 = distinct !DILexicalBlock(scope: !5830, file: !566, line: 972, column: 35)
!5836 = !DILocation(line: 973, column: 15, scope: !5834)
!5837 = !DILocation(line: 973, column: 18, scope: !5834)
!5838 = !DILocation(line: 973, column: 8, scope: !5835)
!5839 = !DILocation(line: 974, column: 11, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !566, line: 974, column: 11)
!5841 = distinct !DILexicalBlock(scope: !5834, file: !566, line: 974, column: 5)
!5842 = !DILocation(line: 974, column: 18, scope: !5840)
!5843 = !DILocation(line: 974, column: 21, scope: !5840)
!5844 = !DILocation(line: 974, column: 11, scope: !5841)
!5845 = !DILocation(line: 974, column: 34, scope: !5846)
!5846 = !DILexicalBlockFile(scope: !5847, file: !566, discriminator: 1)
!5847 = distinct !DILexicalBlock(scope: !5840, file: !566, line: 974, column: 26)
!5848 = !DILocation(line: 974, column: 41, scope: !5846)
!5849 = !DILocation(line: 974, column: 44, scope: !5846)
!5850 = !DILocation(line: 974, column: 29, scope: !5846)
!5851 = !DILocation(line: 974, column: 51, scope: !5846)
!5852 = !DILocation(line: 974, column: 58, scope: !5846)
!5853 = !DILocation(line: 974, column: 61, scope: !5846)
!5854 = !DILocation(line: 974, column: 66, scope: !5846)
!5855 = !DILocation(line: 973, column: 6, scope: !5846)
!5856 = !DILocation(line: 973, column: 8, scope: !5857)
!5857 = !DILexicalBlockFile(scope: !5841, file: !566, discriminator: 2)
!5858 = !DILocation(line: 974, column: 41, scope: !5859)
!5859 = !DILexicalBlockFile(scope: !5835, file: !566, discriminator: 2)
!5860 = !DILocation(line: 974, column: 20, scope: !5859)
!5861 = !DILocation(line: 974, column: 4, scope: !5859)
!5862 = !DILocation(line: 974, column: 11, scope: !5859)
!5863 = !DILocation(line: 974, column: 14, scope: !5859)
!5864 = !DILocation(line: 974, column: 18, scope: !5859)
!5865 = !DILocation(line: 975, column: 9, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5835, file: !566, line: 975, column: 8)
!5867 = !DILocation(line: 975, column: 16, scope: !5866)
!5868 = !DILocation(line: 975, column: 19, scope: !5866)
!5869 = !DILocation(line: 975, column: 8, scope: !5835)
!5870 = !DILocation(line: 976, column: 74, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5866, file: !566, line: 975, column: 24)
!5872 = !DILocation(line: 976, column: 5, scope: !5871)
!5873 = !DILocation(line: 977, column: 1, scope: !5871)
!5874 = !DILocation(line: 978, column: 5, scope: !5871)
!5875 = !DILocation(line: 980, column: 8, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5835, file: !566, line: 980, column: 8)
!5877 = !DILocation(line: 980, column: 15, scope: !5876)
!5878 = !DILocation(line: 980, column: 18, scope: !5876)
!5879 = !DILocation(line: 980, column: 23, scope: !5876)
!5880 = !DILocation(line: 980, column: 27, scope: !5876)
!5881 = !DILocation(line: 980, column: 38, scope: !5876)
!5882 = !DILocation(line: 980, column: 8, scope: !5835)
!5883 = !DILocation(line: 980, column: 97, scope: !5884)
!5884 = !DILexicalBlockFile(scope: !5885, file: !566, discriminator: 1)
!5885 = distinct !DILexicalBlock(scope: !5876, file: !566, line: 979, column: 49)
!5886 = !DILocation(line: 980, column: 5, scope: !5884)
!5887 = !DILocation(line: 981, column: 1, scope: !5885)
!5888 = !DILocation(line: 982, column: 5, scope: !5885)
!5889 = !DILocation(line: 984, column: 3, scope: !5835)
!5890 = !DILocation(line: 984, column: 22, scope: !5891)
!5891 = !DILexicalBlockFile(scope: !5892, file: !566, discriminator: 1)
!5892 = distinct !DILexicalBlock(scope: !5830, file: !566, line: 984, column: 14)
!5893 = !DILocation(line: 984, column: 15, scope: !5891)
!5894 = !DILocation(line: 984, column: 14, scope: !5891)
!5895 = !DILocation(line: 985, column: 31, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5897, file: !566, line: 985, column: 8)
!5897 = distinct !DILexicalBlock(scope: !5892, file: !566, line: 984, column: 35)
!5898 = !DILocation(line: 985, column: 38, scope: !5896)
!5899 = !DILocation(line: 985, column: 45, scope: !5896)
!5900 = !DILocation(line: 985, column: 48, scope: !5896)
!5901 = !DILocation(line: 985, column: 9, scope: !5896)
!5902 = !DILocation(line: 985, column: 8, scope: !5897)
!5903 = !DILocation(line: 986, column: 92, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5896, file: !566, line: 985, column: 54)
!5905 = !DILocation(line: 986, column: 5, scope: !5904)
!5906 = !DILocation(line: 987, column: 1, scope: !5904)
!5907 = !DILocation(line: 988, column: 5, scope: !5904)
!5908 = !DILocation(line: 990, column: 4, scope: !5897)
!5909 = !DILocation(line: 990, column: 11, scope: !5897)
!5910 = !DILocation(line: 990, column: 17, scope: !5897)
!5911 = !DILocation(line: 991, column: 3, scope: !5897)
!5912 = !DILocation(line: 991, column: 22, scope: !5913)
!5913 = !DILexicalBlockFile(scope: !5914, file: !566, discriminator: 1)
!5914 = distinct !DILexicalBlock(scope: !5892, file: !566, line: 991, column: 14)
!5915 = !DILocation(line: 991, column: 15, scope: !5913)
!5916 = !DILocation(line: 991, column: 14, scope: !5913)
!5917 = !DILocation(line: 992, column: 16, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5919, file: !566, line: 992, column: 8)
!5919 = distinct !DILexicalBlock(scope: !5914, file: !566, line: 991, column: 35)
!5920 = !DILocation(line: 992, column: 23, scope: !5918)
!5921 = !DILocation(line: 992, column: 26, scope: !5918)
!5922 = !DILocation(line: 992, column: 31, scope: !5918)
!5923 = !DILocation(line: 992, column: 8, scope: !5918)
!5924 = !DILocation(line: 992, column: 8, scope: !5919)
!5925 = !DILocation(line: 991, column: 1, scope: !5926)
!5926 = !DILexicalBlockFile(scope: !5918, file: !566, discriminator: 2)
!5927 = !DILocation(line: 992, column: 5, scope: !5928)
!5928 = !DILexicalBlockFile(scope: !5919, file: !566, discriminator: 1)
!5929 = !DILocation(line: 994, column: 22, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5914, file: !566, line: 994, column: 14)
!5931 = !DILocation(line: 994, column: 15, scope: !5930)
!5932 = !DILocation(line: 994, column: 14, scope: !5914)
!5933 = !DILocation(line: 995, column: 17, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5935, file: !566, line: 995, column: 8)
!5935 = distinct !DILexicalBlock(scope: !5930, file: !566, line: 994, column: 37)
!5936 = !DILocation(line: 995, column: 24, scope: !5934)
!5937 = !DILocation(line: 995, column: 27, scope: !5934)
!5938 = !DILocation(line: 995, column: 34, scope: !5934)
!5939 = !DILocation(line: 995, column: 8, scope: !5934)
!5940 = !DILocation(line: 995, column: 8, scope: !5935)
!5941 = !DILocation(line: 995, column: 1, scope: !5942)
!5942 = !DILexicalBlockFile(scope: !5934, file: !566, discriminator: 1)
!5943 = !DILocation(line: 996, column: 5, scope: !5935)
!5944 = !DILocation(line: 999, column: 4, scope: !5930)
!5945 = !DILocation(line: 1001, column: 5, scope: !5744)
!5946 = !DILocation(line: 951, column: 2, scope: !5947)
!5947 = !DILexicalBlockFile(scope: !5715, file: !566, discriminator: 2)
!5948 = distinct !{!5948, !5735}
!5949 = !DILocation(line: 1004, column: 7, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5715, file: !566, line: 1004, column: 6)
!5951 = !DILocation(line: 1004, column: 14, scope: !5950)
!5952 = !DILocation(line: 1004, column: 17, scope: !5950)
!5953 = !DILocation(line: 1004, column: 21, scope: !5950)
!5954 = !DILocation(line: 1004, column: 26, scope: !5955)
!5955 = !DILexicalBlockFile(scope: !5950, file: !566, discriminator: 1)
!5956 = !DILocation(line: 1004, column: 33, scope: !5955)
!5957 = !DILocation(line: 1004, column: 39, scope: !5955)
!5958 = !DILocation(line: 1004, column: 6, scope: !5955)
!5959 = !DILocation(line: 1005, column: 3, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5950, file: !566, line: 1004, column: 65)
!5961 = !DILocation(line: 1006, column: 1, scope: !5960)
!5962 = !DILocation(line: 1007, column: 3, scope: !5960)
!5963 = !DILocation(line: 1010, column: 11, scope: !5715)
!5964 = !DILocation(line: 1010, column: 3, scope: !5715)
!5965 = !DILocation(line: 1010, column: 9, scope: !5715)
!5966 = !DILocation(line: 1012, column: 2, scope: !5715)
!5967 = !DILocation(line: 1013, column: 11, scope: !5715)
!5968 = !DILocation(line: 1013, column: 3, scope: !5715)
!5969 = !DILocation(line: 1013, column: 9, scope: !5715)
!5970 = !DILocation(line: 1015, column: 6, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5715, file: !566, line: 1015, column: 6)
!5972 = !DILocation(line: 1015, column: 13, scope: !5971)
!5973 = !DILocation(line: 1015, column: 16, scope: !5971)
!5974 = !DILocation(line: 1015, column: 6, scope: !5715)
!5975 = !DILocation(line: 1016, column: 9, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5977, file: !566, line: 1016, column: 9)
!5977 = distinct !DILexicalBlock(scope: !5978, file: !566, line: 1016, column: 3)
!5978 = distinct !DILexicalBlock(scope: !5971, file: !566, line: 1015, column: 21)
!5979 = !DILocation(line: 1016, column: 16, scope: !5976)
!5980 = !DILocation(line: 1016, column: 19, scope: !5976)
!5981 = !DILocation(line: 1016, column: 9, scope: !5977)
!5982 = !DILocation(line: 1016, column: 32, scope: !5983)
!5983 = !DILexicalBlockFile(scope: !5984, file: !566, discriminator: 1)
!5984 = distinct !DILexicalBlock(scope: !5976, file: !566, line: 1016, column: 24)
!5985 = !DILocation(line: 1016, column: 39, scope: !5983)
!5986 = !DILocation(line: 1016, column: 42, scope: !5983)
!5987 = !DILocation(line: 1016, column: 27, scope: !5983)
!5988 = !DILocation(line: 1016, column: 49, scope: !5983)
!5989 = !DILocation(line: 1016, column: 56, scope: !5983)
!5990 = !DILocation(line: 1016, column: 59, scope: !5983)
!5991 = !DILocation(line: 1016, column: 64, scope: !5983)
!5992 = !DILocation(line: 1016, column: 4, scope: !5983)
!5993 = !DILocation(line: 1017, column: 3, scope: !5978)
!5994 = !DILocation(line: 1017, column: 10, scope: !5978)
!5995 = !DILocation(line: 1017, column: 13, scope: !5978)
!5996 = !DILocation(line: 1017, column: 17, scope: !5978)
!5997 = !DILocation(line: 1018, column: 2, scope: !5978)
!5998 = !DILocation(line: 1019, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5715, file: !566, line: 1019, column: 6)
!6000 = !DILocation(line: 1019, column: 13, scope: !5999)
!6001 = !DILocation(line: 1019, column: 16, scope: !5999)
!6002 = !DILocation(line: 1019, column: 6, scope: !5715)
!6003 = !DILocation(line: 1020, column: 9, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6005, file: !566, line: 1020, column: 9)
!6005 = distinct !DILexicalBlock(scope: !6006, file: !566, line: 1020, column: 3)
!6006 = distinct !DILexicalBlock(scope: !5999, file: !566, line: 1019, column: 20)
!6007 = !DILocation(line: 1020, column: 16, scope: !6004)
!6008 = !DILocation(line: 1020, column: 19, scope: !6004)
!6009 = !DILocation(line: 1020, column: 9, scope: !6005)
!6010 = !DILocation(line: 1020, column: 32, scope: !6011)
!6011 = !DILexicalBlockFile(scope: !6012, file: !566, discriminator: 1)
!6012 = distinct !DILexicalBlock(scope: !6004, file: !566, line: 1020, column: 24)
!6013 = !DILocation(line: 1020, column: 39, scope: !6011)
!6014 = !DILocation(line: 1020, column: 42, scope: !6011)
!6015 = !DILocation(line: 1020, column: 27, scope: !6011)
!6016 = !DILocation(line: 1020, column: 49, scope: !6011)
!6017 = !DILocation(line: 1020, column: 56, scope: !6011)
!6018 = !DILocation(line: 1020, column: 59, scope: !6011)
!6019 = !DILocation(line: 1020, column: 64, scope: !6011)
!6020 = !DILocation(line: 1020, column: 4, scope: !6011)
!6021 = !DILocation(line: 1021, column: 3, scope: !6006)
!6022 = !DILocation(line: 1021, column: 10, scope: !6006)
!6023 = !DILocation(line: 1021, column: 13, scope: !6006)
!6024 = !DILocation(line: 1021, column: 17, scope: !6006)
!6025 = !DILocation(line: 1022, column: 2, scope: !6006)
!6026 = !DILocation(line: 1024, column: 2, scope: !5715)
!6027 = !DILocation(line: 1025, column: 1, scope: !5715)
!6028 = distinct !DISubprogram(name: "parse_encap_ip6", scope: !566, file: !566, line: 1052, type: !5716, isLocal: true, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!6029 = !DILocalVariable(name: "strvec", arg: 1, scope: !6028, file: !566, line: 1052, type: !453)
!6030 = !DILocation(line: 1052, column: 31, scope: !6028)
!6031 = !DILocalVariable(name: "i_ptr", arg: 2, scope: !6028, file: !566, line: 1052, type: !3898)
!6032 = !DILocation(line: 1052, column: 53, scope: !6028)
!6033 = !DILocalVariable(name: "encap", arg: 3, scope: !6028, file: !566, line: 1052, type: !1222)
!6034 = !DILocation(line: 1052, column: 69, scope: !6028)
!6035 = !DILocalVariable(name: "i", scope: !6028, file: !566, line: 1054, type: !257)
!6036 = !DILocation(line: 1054, column: 15, scope: !6028)
!6037 = !DILocation(line: 1054, column: 20, scope: !6028)
!6038 = !DILocation(line: 1054, column: 19, scope: !6028)
!6039 = !DILocalVariable(name: "str", scope: !6028, file: !566, line: 1055, type: !389)
!6040 = !DILocation(line: 1055, column: 8, scope: !6028)
!6041 = !DILocalVariable(name: "str1", scope: !6028, file: !566, line: 1055, type: !389)
!6042 = !DILocation(line: 1055, column: 14, scope: !6028)
!6043 = !DILocation(line: 1057, column: 2, scope: !6028)
!6044 = !DILocation(line: 1057, column: 9, scope: !6028)
!6045 = !DILocation(line: 1057, column: 14, scope: !6028)
!6046 = !DILocation(line: 1059, column: 2, scope: !6028)
!6047 = !DILocation(line: 1059, column: 9, scope: !6048)
!6048 = !DILexicalBlockFile(scope: !6028, file: !566, discriminator: 1)
!6049 = !DILocation(line: 1059, column: 11, scope: !6048)
!6050 = !DILocation(line: 1059, column: 19, scope: !6048)
!6051 = !DILocation(line: 1059, column: 28, scope: !6048)
!6052 = !DILocation(line: 1059, column: 15, scope: !6048)
!6053 = !DILocation(line: 1059, column: 2, scope: !6048)
!6054 = !DILocation(line: 1060, column: 21, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6028, file: !566, line: 1059, column: 40)
!6056 = !DILocation(line: 1060, column: 29, scope: !6055)
!6057 = !DILocation(line: 1060, column: 9, scope: !6055)
!6058 = !DILocation(line: 1060, column: 7, scope: !6055)
!6059 = !DILocation(line: 1061, column: 22, scope: !6055)
!6060 = !DILocation(line: 1061, column: 30, scope: !6055)
!6061 = !DILocation(line: 1061, column: 32, scope: !6055)
!6062 = !DILocation(line: 1061, column: 10, scope: !6055)
!6063 = !DILocation(line: 1061, column: 8, scope: !6055)
!6064 = !DILocation(line: 1063, column: 15, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6055, file: !566, line: 1063, column: 7)
!6066 = !DILocation(line: 1063, column: 8, scope: !6065)
!6067 = !DILocation(line: 1063, column: 7, scope: !6055)
!6068 = !DILocation(line: 1064, column: 17, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6070, file: !566, line: 1064, column: 8)
!6070 = distinct !DILexicalBlock(scope: !6065, file: !566, line: 1063, column: 27)
!6071 = !DILocation(line: 1064, column: 24, scope: !6069)
!6072 = !DILocation(line: 1064, column: 28, scope: !6069)
!6073 = !DILocation(line: 1064, column: 32, scope: !6069)
!6074 = !DILocation(line: 1064, column: 8, scope: !6069)
!6075 = !DILocation(line: 1064, column: 8, scope: !6070)
!6076 = !DILocation(line: 1065, column: 1, scope: !6069)
!6077 = !DILocation(line: 1066, column: 5, scope: !6070)
!6078 = !DILocation(line: 1068, column: 22, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6065, file: !566, line: 1068, column: 14)
!6080 = !DILocation(line: 1068, column: 15, scope: !6079)
!6081 = !DILocation(line: 1068, column: 14, scope: !6065)
!6082 = !DILocation(line: 1069, column: 8, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6084, file: !566, line: 1069, column: 8)
!6084 = distinct !DILexicalBlock(scope: !6079, file: !566, line: 1068, column: 35)
!6085 = !DILocation(line: 1069, column: 15, scope: !6083)
!6086 = !DILocation(line: 1069, column: 19, scope: !6083)
!6087 = !DILocation(line: 1069, column: 8, scope: !6084)
!6088 = !DILocation(line: 1070, column: 11, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6090, file: !566, line: 1070, column: 11)
!6090 = distinct !DILexicalBlock(scope: !6083, file: !566, line: 1070, column: 5)
!6091 = !DILocation(line: 1070, column: 18, scope: !6089)
!6092 = !DILocation(line: 1070, column: 22, scope: !6089)
!6093 = !DILocation(line: 1070, column: 11, scope: !6090)
!6094 = !DILocation(line: 1070, column: 35, scope: !6095)
!6095 = !DILexicalBlockFile(scope: !6096, file: !566, discriminator: 1)
!6096 = distinct !DILexicalBlock(scope: !6089, file: !566, line: 1070, column: 27)
!6097 = !DILocation(line: 1070, column: 42, scope: !6095)
!6098 = !DILocation(line: 1070, column: 46, scope: !6095)
!6099 = !DILocation(line: 1070, column: 30, scope: !6095)
!6100 = !DILocation(line: 1070, column: 53, scope: !6095)
!6101 = !DILocation(line: 1070, column: 60, scope: !6095)
!6102 = !DILocation(line: 1070, column: 64, scope: !6095)
!6103 = !DILocation(line: 1070, column: 69, scope: !6095)
!6104 = !DILocation(line: 1069, column: 6, scope: !6095)
!6105 = !DILocation(line: 1069, column: 8, scope: !6106)
!6106 = !DILexicalBlockFile(scope: !6090, file: !566, discriminator: 2)
!6107 = !DILocation(line: 1070, column: 42, scope: !6108)
!6108 = !DILexicalBlockFile(scope: !6084, file: !566, discriminator: 2)
!6109 = !DILocation(line: 1070, column: 21, scope: !6108)
!6110 = !DILocation(line: 1070, column: 4, scope: !6108)
!6111 = !DILocation(line: 1070, column: 11, scope: !6108)
!6112 = !DILocation(line: 1070, column: 15, scope: !6108)
!6113 = !DILocation(line: 1070, column: 19, scope: !6108)
!6114 = !DILocation(line: 1071, column: 9, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6084, file: !566, line: 1071, column: 8)
!6116 = !DILocation(line: 1071, column: 16, scope: !6115)
!6117 = !DILocation(line: 1071, column: 20, scope: !6115)
!6118 = !DILocation(line: 1071, column: 8, scope: !6084)
!6119 = !DILocation(line: 1072, column: 75, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6115, file: !566, line: 1071, column: 25)
!6121 = !DILocation(line: 1072, column: 5, scope: !6120)
!6122 = !DILocation(line: 1073, column: 1, scope: !6120)
!6123 = !DILocation(line: 1074, column: 5, scope: !6120)
!6124 = !DILocation(line: 1076, column: 8, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6084, file: !566, line: 1076, column: 8)
!6126 = !DILocation(line: 1076, column: 15, scope: !6125)
!6127 = !DILocation(line: 1076, column: 19, scope: !6125)
!6128 = !DILocation(line: 1076, column: 24, scope: !6125)
!6129 = !DILocation(line: 1076, column: 28, scope: !6125)
!6130 = !DILocation(line: 1076, column: 39, scope: !6125)
!6131 = !DILocation(line: 1076, column: 8, scope: !6084)
!6132 = !DILocation(line: 1076, column: 98, scope: !6133)
!6133 = !DILexicalBlockFile(scope: !6134, file: !566, discriminator: 1)
!6134 = distinct !DILexicalBlock(scope: !6125, file: !566, line: 1075, column: 51)
!6135 = !DILocation(line: 1076, column: 5, scope: !6133)
!6136 = !DILocation(line: 1077, column: 1, scope: !6134)
!6137 = !DILocation(line: 1078, column: 5, scope: !6134)
!6138 = !DILocation(line: 1080, column: 3, scope: !6084)
!6139 = !DILocation(line: 1080, column: 22, scope: !6140)
!6140 = !DILexicalBlockFile(scope: !6141, file: !566, discriminator: 1)
!6141 = distinct !DILexicalBlock(scope: !6079, file: !566, line: 1080, column: 14)
!6142 = !DILocation(line: 1080, column: 15, scope: !6140)
!6143 = !DILocation(line: 1080, column: 14, scope: !6140)
!6144 = !DILocation(line: 1081, column: 8, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6146, file: !566, line: 1081, column: 8)
!6146 = distinct !DILexicalBlock(scope: !6141, file: !566, line: 1080, column: 35)
!6147 = !DILocation(line: 1081, column: 15, scope: !6145)
!6148 = !DILocation(line: 1081, column: 19, scope: !6145)
!6149 = !DILocation(line: 1081, column: 8, scope: !6146)
!6150 = !DILocation(line: 1082, column: 11, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6152, file: !566, line: 1082, column: 11)
!6152 = distinct !DILexicalBlock(scope: !6145, file: !566, line: 1082, column: 5)
!6153 = !DILocation(line: 1082, column: 18, scope: !6151)
!6154 = !DILocation(line: 1082, column: 22, scope: !6151)
!6155 = !DILocation(line: 1082, column: 11, scope: !6152)
!6156 = !DILocation(line: 1082, column: 35, scope: !6157)
!6157 = !DILexicalBlockFile(scope: !6158, file: !566, discriminator: 1)
!6158 = distinct !DILexicalBlock(scope: !6151, file: !566, line: 1082, column: 27)
!6159 = !DILocation(line: 1082, column: 42, scope: !6157)
!6160 = !DILocation(line: 1082, column: 46, scope: !6157)
!6161 = !DILocation(line: 1082, column: 30, scope: !6157)
!6162 = !DILocation(line: 1082, column: 53, scope: !6157)
!6163 = !DILocation(line: 1082, column: 60, scope: !6157)
!6164 = !DILocation(line: 1082, column: 64, scope: !6157)
!6165 = !DILocation(line: 1082, column: 69, scope: !6157)
!6166 = !DILocation(line: 1081, column: 6, scope: !6157)
!6167 = !DILocation(line: 1081, column: 8, scope: !6168)
!6168 = !DILexicalBlockFile(scope: !6152, file: !566, discriminator: 2)
!6169 = !DILocation(line: 1082, column: 42, scope: !6170)
!6170 = !DILexicalBlockFile(scope: !6146, file: !566, discriminator: 2)
!6171 = !DILocation(line: 1082, column: 21, scope: !6170)
!6172 = !DILocation(line: 1082, column: 4, scope: !6170)
!6173 = !DILocation(line: 1082, column: 11, scope: !6170)
!6174 = !DILocation(line: 1082, column: 15, scope: !6170)
!6175 = !DILocation(line: 1082, column: 19, scope: !6170)
!6176 = !DILocation(line: 1083, column: 9, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6146, file: !566, line: 1083, column: 8)
!6178 = !DILocation(line: 1083, column: 16, scope: !6177)
!6179 = !DILocation(line: 1083, column: 20, scope: !6177)
!6180 = !DILocation(line: 1083, column: 8, scope: !6146)
!6181 = !DILocation(line: 1084, column: 75, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6177, file: !566, line: 1083, column: 25)
!6183 = !DILocation(line: 1084, column: 5, scope: !6182)
!6184 = !DILocation(line: 1085, column: 1, scope: !6182)
!6185 = !DILocation(line: 1086, column: 5, scope: !6182)
!6186 = !DILocation(line: 1088, column: 8, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6146, file: !566, line: 1088, column: 8)
!6188 = !DILocation(line: 1088, column: 15, scope: !6187)
!6189 = !DILocation(line: 1088, column: 19, scope: !6187)
!6190 = !DILocation(line: 1088, column: 24, scope: !6187)
!6191 = !DILocation(line: 1088, column: 28, scope: !6187)
!6192 = !DILocation(line: 1088, column: 39, scope: !6187)
!6193 = !DILocation(line: 1088, column: 8, scope: !6146)
!6194 = !DILocation(line: 1088, column: 98, scope: !6195)
!6195 = !DILexicalBlockFile(scope: !6196, file: !566, discriminator: 1)
!6196 = distinct !DILexicalBlock(scope: !6187, file: !566, line: 1087, column: 51)
!6197 = !DILocation(line: 1088, column: 5, scope: !6195)
!6198 = !DILocation(line: 1089, column: 1, scope: !6196)
!6199 = !DILocation(line: 1090, column: 5, scope: !6196)
!6200 = !DILocation(line: 1092, column: 3, scope: !6146)
!6201 = !DILocation(line: 1092, column: 22, scope: !6202)
!6202 = !DILexicalBlockFile(scope: !6203, file: !566, discriminator: 1)
!6203 = distinct !DILexicalBlock(scope: !6141, file: !566, line: 1092, column: 14)
!6204 = !DILocation(line: 1092, column: 15, scope: !6202)
!6205 = !DILocation(line: 1092, column: 14, scope: !6202)
!6206 = !DILocation(line: 1093, column: 31, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !566, line: 1093, column: 8)
!6208 = distinct !DILexicalBlock(scope: !6203, file: !566, line: 1092, column: 34)
!6209 = !DILocation(line: 1093, column: 38, scope: !6207)
!6210 = !DILocation(line: 1093, column: 45, scope: !6207)
!6211 = !DILocation(line: 1093, column: 49, scope: !6207)
!6212 = !DILocation(line: 1093, column: 9, scope: !6207)
!6213 = !DILocation(line: 1093, column: 8, scope: !6208)
!6214 = !DILocation(line: 1094, column: 95, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6207, file: !566, line: 1093, column: 54)
!6216 = !DILocation(line: 1094, column: 5, scope: !6215)
!6217 = !DILocation(line: 1095, column: 1, scope: !6215)
!6218 = !DILocation(line: 1096, column: 5, scope: !6215)
!6219 = !DILocation(line: 1098, column: 4, scope: !6208)
!6220 = !DILocation(line: 1098, column: 11, scope: !6208)
!6221 = !DILocation(line: 1098, column: 17, scope: !6208)
!6222 = !DILocation(line: 1099, column: 3, scope: !6208)
!6223 = !DILocation(line: 1099, column: 22, scope: !6224)
!6224 = !DILexicalBlockFile(scope: !6225, file: !566, discriminator: 1)
!6225 = distinct !DILexicalBlock(scope: !6203, file: !566, line: 1099, column: 14)
!6226 = !DILocation(line: 1099, column: 15, scope: !6224)
!6227 = !DILocation(line: 1099, column: 14, scope: !6224)
!6228 = !DILocation(line: 1100, column: 16, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !566, line: 1100, column: 8)
!6230 = distinct !DILexicalBlock(scope: !6225, file: !566, line: 1099, column: 40)
!6231 = !DILocation(line: 1100, column: 23, scope: !6229)
!6232 = !DILocation(line: 1100, column: 27, scope: !6229)
!6233 = !DILocation(line: 1100, column: 37, scope: !6229)
!6234 = !DILocation(line: 1100, column: 8, scope: !6229)
!6235 = !DILocation(line: 1100, column: 8, scope: !6230)
!6236 = !DILocation(line: 1099, column: 5, scope: !6237)
!6237 = !DILexicalBlockFile(scope: !6229, file: !566, discriminator: 2)
!6238 = !DILocation(line: 1100, column: 4, scope: !6239)
!6239 = !DILexicalBlockFile(scope: !6230, file: !566, discriminator: 1)
!6240 = !DILocation(line: 1100, column: 11, scope: !6239)
!6241 = !DILocation(line: 1100, column: 17, scope: !6239)
!6242 = !DILocation(line: 1101, column: 3, scope: !6230)
!6243 = !DILocation(line: 1101, column: 22, scope: !6244)
!6244 = !DILexicalBlockFile(scope: !6245, file: !566, discriminator: 1)
!6245 = distinct !DILexicalBlock(scope: !6225, file: !566, line: 1101, column: 14)
!6246 = !DILocation(line: 1101, column: 15, scope: !6244)
!6247 = !DILocation(line: 1101, column: 14, scope: !6244)
!6248 = !DILocation(line: 1102, column: 17, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6250, file: !566, line: 1102, column: 8)
!6250 = distinct !DILexicalBlock(scope: !6245, file: !566, line: 1101, column: 37)
!6251 = !DILocation(line: 1102, column: 24, scope: !6249)
!6252 = !DILocation(line: 1102, column: 28, scope: !6249)
!6253 = !DILocation(line: 1102, column: 35, scope: !6249)
!6254 = !DILocation(line: 1102, column: 8, scope: !6249)
!6255 = !DILocation(line: 1102, column: 8, scope: !6250)
!6256 = !DILocation(line: 1103, column: 1, scope: !6249)
!6257 = !DILocation(line: 1104, column: 5, scope: !6250)
!6258 = !DILocation(line: 1107, column: 4, scope: !6245)
!6259 = !DILocation(line: 1109, column: 5, scope: !6055)
!6260 = !DILocation(line: 1059, column: 2, scope: !6261)
!6261 = !DILexicalBlockFile(scope: !6028, file: !566, discriminator: 2)
!6262 = distinct !{!6262, !6046}
!6263 = !DILocation(line: 1112, column: 7, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6028, file: !566, line: 1112, column: 6)
!6265 = !DILocation(line: 1112, column: 14, scope: !6264)
!6266 = !DILocation(line: 1112, column: 17, scope: !6264)
!6267 = !DILocation(line: 1112, column: 21, scope: !6264)
!6268 = !DILocation(line: 1112, column: 26, scope: !6269)
!6269 = !DILexicalBlockFile(scope: !6264, file: !566, discriminator: 1)
!6270 = !DILocation(line: 1112, column: 33, scope: !6269)
!6271 = !DILocation(line: 1112, column: 39, scope: !6269)
!6272 = !DILocation(line: 1112, column: 6, scope: !6269)
!6273 = !DILocation(line: 1113, column: 3, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6264, file: !566, line: 1112, column: 65)
!6275 = !DILocation(line: 1114, column: 1, scope: !6274)
!6276 = !DILocation(line: 1115, column: 3, scope: !6274)
!6277 = !DILocation(line: 1118, column: 11, scope: !6028)
!6278 = !DILocation(line: 1118, column: 3, scope: !6028)
!6279 = !DILocation(line: 1118, column: 9, scope: !6028)
!6280 = !DILocation(line: 1119, column: 2, scope: !6028)
!6281 = !DILocation(line: 1120, column: 11, scope: !6028)
!6282 = !DILocation(line: 1120, column: 3, scope: !6028)
!6283 = !DILocation(line: 1120, column: 9, scope: !6028)
!6284 = !DILocation(line: 1121, column: 6, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6028, file: !566, line: 1121, column: 6)
!6286 = !DILocation(line: 1121, column: 13, scope: !6285)
!6287 = !DILocation(line: 1121, column: 17, scope: !6285)
!6288 = !DILocation(line: 1121, column: 6, scope: !6028)
!6289 = !DILocation(line: 1122, column: 9, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6291, file: !566, line: 1122, column: 9)
!6291 = distinct !DILexicalBlock(scope: !6292, file: !566, line: 1122, column: 3)
!6292 = distinct !DILexicalBlock(scope: !6285, file: !566, line: 1121, column: 22)
!6293 = !DILocation(line: 1122, column: 16, scope: !6290)
!6294 = !DILocation(line: 1122, column: 20, scope: !6290)
!6295 = !DILocation(line: 1122, column: 9, scope: !6291)
!6296 = !DILocation(line: 1122, column: 33, scope: !6297)
!6297 = !DILexicalBlockFile(scope: !6298, file: !566, discriminator: 1)
!6298 = distinct !DILexicalBlock(scope: !6290, file: !566, line: 1122, column: 25)
!6299 = !DILocation(line: 1122, column: 40, scope: !6297)
!6300 = !DILocation(line: 1122, column: 44, scope: !6297)
!6301 = !DILocation(line: 1122, column: 28, scope: !6297)
!6302 = !DILocation(line: 1122, column: 51, scope: !6297)
!6303 = !DILocation(line: 1122, column: 58, scope: !6297)
!6304 = !DILocation(line: 1122, column: 62, scope: !6297)
!6305 = !DILocation(line: 1122, column: 67, scope: !6297)
!6306 = !DILocation(line: 1122, column: 4, scope: !6297)
!6307 = !DILocation(line: 1123, column: 3, scope: !6292)
!6308 = !DILocation(line: 1123, column: 10, scope: !6292)
!6309 = !DILocation(line: 1123, column: 14, scope: !6292)
!6310 = !DILocation(line: 1123, column: 18, scope: !6292)
!6311 = !DILocation(line: 1124, column: 2, scope: !6292)
!6312 = !DILocation(line: 1125, column: 6, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6028, file: !566, line: 1125, column: 6)
!6314 = !DILocation(line: 1125, column: 13, scope: !6313)
!6315 = !DILocation(line: 1125, column: 17, scope: !6313)
!6316 = !DILocation(line: 1125, column: 6, scope: !6028)
!6317 = !DILocation(line: 1126, column: 9, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !566, line: 1126, column: 9)
!6319 = distinct !DILexicalBlock(scope: !6320, file: !566, line: 1126, column: 3)
!6320 = distinct !DILexicalBlock(scope: !6313, file: !566, line: 1125, column: 22)
!6321 = !DILocation(line: 1126, column: 16, scope: !6318)
!6322 = !DILocation(line: 1126, column: 20, scope: !6318)
!6323 = !DILocation(line: 1126, column: 9, scope: !6319)
!6324 = !DILocation(line: 1126, column: 33, scope: !6325)
!6325 = !DILexicalBlockFile(scope: !6326, file: !566, discriminator: 1)
!6326 = distinct !DILexicalBlock(scope: !6318, file: !566, line: 1126, column: 25)
!6327 = !DILocation(line: 1126, column: 40, scope: !6325)
!6328 = !DILocation(line: 1126, column: 44, scope: !6325)
!6329 = !DILocation(line: 1126, column: 28, scope: !6325)
!6330 = !DILocation(line: 1126, column: 51, scope: !6325)
!6331 = !DILocation(line: 1126, column: 58, scope: !6325)
!6332 = !DILocation(line: 1126, column: 62, scope: !6325)
!6333 = !DILocation(line: 1126, column: 67, scope: !6325)
!6334 = !DILocation(line: 1126, column: 4, scope: !6325)
!6335 = !DILocation(line: 1127, column: 3, scope: !6320)
!6336 = !DILocation(line: 1127, column: 10, scope: !6320)
!6337 = !DILocation(line: 1127, column: 14, scope: !6320)
!6338 = !DILocation(line: 1127, column: 18, scope: !6320)
!6339 = !DILocation(line: 1128, column: 2, scope: !6320)
!6340 = !DILocation(line: 1130, column: 2, scope: !6028)
!6341 = !DILocation(line: 1131, column: 1, scope: !6028)
!6342 = distinct !DISubprogram(name: "parse_encap_mpls", scope: !566, file: !566, line: 923, type: !5716, isLocal: true, isDefinition: true, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!6343 = !DILocalVariable(name: "strvec", arg: 1, scope: !6342, file: !566, line: 923, type: !453)
!6344 = !DILocation(line: 923, column: 39, scope: !6342)
!6345 = !DILocalVariable(name: "i_ptr", arg: 2, scope: !6342, file: !566, line: 923, type: !3898)
!6346 = !DILocation(line: 923, column: 61, scope: !6342)
!6347 = !DILocalVariable(name: "encap", arg: 3, scope: !6342, file: !566, line: 923, type: !1222)
!6348 = !DILocation(line: 923, column: 77, scope: !6342)
!6349 = !DILocalVariable(name: "str", scope: !6342, file: !566, line: 925, type: !389)
!6350 = !DILocation(line: 925, column: 8, scope: !6342)
!6351 = !DILocation(line: 927, column: 2, scope: !6342)
!6352 = !DILocation(line: 927, column: 9, scope: !6342)
!6353 = !DILocation(line: 927, column: 14, scope: !6342)
!6354 = !DILocation(line: 929, column: 7, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6342, file: !566, line: 929, column: 6)
!6356 = !DILocation(line: 929, column: 6, scope: !6355)
!6357 = !DILocation(line: 929, column: 18, scope: !6355)
!6358 = !DILocation(line: 929, column: 27, scope: !6355)
!6359 = !DILocation(line: 929, column: 13, scope: !6355)
!6360 = !DILocation(line: 929, column: 6, scope: !6342)
!6361 = !DILocation(line: 930, column: 3, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6355, file: !566, line: 929, column: 39)
!6363 = !DILocation(line: 931, column: 3, scope: !6362)
!6364 = !DILocation(line: 934, column: 20, scope: !6342)
!6365 = !DILocation(line: 934, column: 30, scope: !6342)
!6366 = !DILocation(line: 934, column: 36, scope: !6342)
!6367 = !DILocation(line: 934, column: 28, scope: !6342)
!6368 = !DILocation(line: 934, column: 8, scope: !6342)
!6369 = !DILocation(line: 934, column: 6, scope: !6342)
!6370 = !DILocation(line: 935, column: 25, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6342, file: !566, line: 935, column: 6)
!6372 = !DILocation(line: 935, column: 31, scope: !6371)
!6373 = !DILocation(line: 935, column: 38, scope: !6371)
!6374 = !DILocation(line: 935, column: 6, scope: !6371)
!6375 = !DILocation(line: 935, column: 6, scope: !6342)
!6376 = !DILocation(line: 936, column: 90, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6371, file: !566, line: 935, column: 45)
!6378 = !DILocation(line: 936, column: 3, scope: !6377)
!6379 = !DILocation(line: 937, column: 3, scope: !6377)
!6380 = !DILocation(line: 940, column: 2, scope: !6342)
!6381 = !DILocation(line: 941, column: 1, scope: !6342)
!6382 = distinct !DISubprogram(name: "parse_encap_ila", scope: !566, file: !566, line: 1029, type: !5716, isLocal: true, isDefinition: true, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !579)
!6383 = !DILocalVariable(name: "strvec", arg: 1, scope: !6382, file: !566, line: 1029, type: !453)
!6384 = !DILocation(line: 1029, column: 31, scope: !6382)
!6385 = !DILocalVariable(name: "i_ptr", arg: 2, scope: !6382, file: !566, line: 1029, type: !3898)
!6386 = !DILocation(line: 1029, column: 53, scope: !6382)
!6387 = !DILocalVariable(name: "encap", arg: 3, scope: !6382, file: !566, line: 1029, type: !1222)
!6388 = !DILocation(line: 1029, column: 69, scope: !6382)
!6389 = !DILocalVariable(name: "str", scope: !6382, file: !566, line: 1031, type: !389)
!6390 = !DILocation(line: 1031, column: 8, scope: !6382)
!6391 = !DILocation(line: 1033, column: 2, scope: !6382)
!6392 = !DILocation(line: 1033, column: 9, scope: !6382)
!6393 = !DILocation(line: 1033, column: 14, scope: !6382)
!6394 = !DILocation(line: 1035, column: 7, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6382, file: !566, line: 1035, column: 6)
!6396 = !DILocation(line: 1035, column: 6, scope: !6395)
!6397 = !DILocation(line: 1035, column: 18, scope: !6395)
!6398 = !DILocation(line: 1035, column: 27, scope: !6395)
!6399 = !DILocation(line: 1035, column: 13, scope: !6395)
!6400 = !DILocation(line: 1035, column: 6, scope: !6382)
!6401 = !DILocation(line: 1036, column: 3, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6395, file: !566, line: 1035, column: 39)
!6403 = !DILocation(line: 1037, column: 3, scope: !6402)
!6404 = !DILocation(line: 1040, column: 20, scope: !6382)
!6405 = !DILocation(line: 1040, column: 30, scope: !6382)
!6406 = !DILocation(line: 1040, column: 36, scope: !6382)
!6407 = !DILocation(line: 1040, column: 28, scope: !6382)
!6408 = !DILocation(line: 1040, column: 8, scope: !6382)
!6409 = !DILocation(line: 1040, column: 6, scope: !6382)
!6410 = !DILocation(line: 1042, column: 18, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6382, file: !566, line: 1042, column: 6)
!6412 = !DILocation(line: 1042, column: 25, scope: !6411)
!6413 = !DILocation(line: 1042, column: 29, scope: !6411)
!6414 = !DILocation(line: 1042, column: 38, scope: !6411)
!6415 = !DILocation(line: 1042, column: 6, scope: !6411)
!6416 = !DILocation(line: 1042, column: 6, scope: !6382)
!6417 = !DILocation(line: 1043, column: 89, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6411, file: !566, line: 1042, column: 44)
!6419 = !DILocation(line: 1043, column: 3, scope: !6418)
!6420 = !DILocation(line: 1044, column: 3, scope: !6418)
!6421 = !DILocation(line: 1047, column: 2, scope: !6382)
!6422 = !DILocation(line: 1048, column: 1, scope: !6382)
