; ModuleID = './[inter]src--arping.o.i'
source_filename = "./[inter]src--arping.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timespec = type { i64, i64 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.libnet_802_1q_hdr = type { [6 x i8], [6 x i8], i16, i16, i16 }
%struct.libnet_802_3_hdr = type { [6 x i8], [6 x i8], i16 }
%struct.libnet_arp_hdr = type { i16, i16, i8, i8, i16 }
%struct.timezone = type { i32, i32 }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_icmpv4_hdr = type { i8, i8, i16, %union.anon, %union.anon.1 }
%union.anon = type { i32 }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.libnet_ipv4_hdr }
%struct.anon = type { i16, i16 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap = type opaque
%struct.libnet_ether_addr = type { [6 x i8] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.fd_set = type { [16 x i64] }
%struct.group = type { i8*, i8*, i32, i8** }
%struct._cap_struct = type opaque

@libnet = global %struct.libnet_context* null, align 8
@numsent = global i32 0, align 4
@numrecvd = global i32 0, align 4
@verbose = global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"arping: libnet_init(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"arping: libnet_init(LIBNET_LINK, %s): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"<no error message>\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"arping: you may need to run as root\0A\00", align 1
@time_to_die = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%x:%x:%x:%x:%x:%x\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%2x%x.%2x%x.%2x%x\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%x-%x-%x-%x-%x-%x\00", align 1
@get_mac_addr.formats = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [39 x i8] c"arping: received response for IP ping\0A\00", align 1
@vlan_tag = internal global i16 -1, align 2
@.str.10 = private unnamed_addr constant [33 x i8] c"arping: ... packet is ARP reply\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"arping: ... from IPv4 address\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"arping: ... to Ethernet address\0A\00", align 1
@addr_must_be_same = internal global i32 0, align 4
@dstmac = internal global [6 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"arping: ... sent by acceptable host\0A\00", align 1
@dstip = common global i32 0, align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"arping: ... for the right IPv4 address!\0A\00", align 1
@lastpacketsent = internal global %struct.timespec zeroinitializer, align 8
@beep = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@display = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"%d bytes from %s (%s): index=%d\00", align 1
@alsototal = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" time=%s\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"arping: can't happen!\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@lastreplymac = internal global [6 x i8] zeroinitializer, align 1
@dupfound = internal global i32 0, align 4
@max_replies = internal global i32 -1, align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"arping: received response for mac ping\0A\00", align 1
@srcmac = internal global [6 x i8] zeroinitializer, align 1
@ethxmas = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"%d bytes from %s (%s): icmp_seq=%d time=%s\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"arping: can't-happen-bug\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@srcip = common global i32 0, align 4
@.str.27 = private unnamed_addr constant [47 x i8] c"0aAbBC:c:dDeFg:hi:I:m:pPqQ:rRs:S:t:T:uUvV:w:W:\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@ip_broadcast = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), align 8
@optarg = external global i8*, align 8
@finddup = internal global i32 0, align 4
@reverse_beep = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [171 x i8] c"arping: If you're trying to feed me an interface alias then you don't really\0Aknow what this programs does, do you?\0AUse -I if you really mean it (undocumented on purpose)\0A\00", align 1
@timestamp_type = internal global i8* null, align 8
@send_reply = internal global i32 0, align 4
@vlan_prio = internal global i16 -1, align 2
@.str.30 = private unnamed_addr constant [46 x i8] c"arping: 802.1p priority must be 0-7. It's %d\0A\00", align 1
@unsolicited = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [37 x i8] c"arping: vlan tag must 0-4095. Is %d\0A\00", align 1
@optind = external global i32, align 4
@.str.32 = private unnamed_addr constant [62 x i8] c"arping: Too many args on command line. Expected at most one.\0A\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"arping: -T can only be used to ping MAC and -BtU only to ping IPs\00", align 1
@.str.34 = private unnamed_addr constant [65 x i8] c"arping: -B can't be used with -T, since they set the same thing\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"arping: Weird MAC addr %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Illegal MAC addr %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [78 x i8] c"arping: Can't resolve %s, or %s is broadcast. If it is, use -b instead of -S\0A\00", align 1
@.str.38 = private unnamed_addr constant [78 x i8] c"arping: Can't resolve %s, or %s is broadcast. If it is, use -B instead of -T\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"arping: -Q requires the use of 802.1Q (-V)\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"arping: clock_getres(CLOCK_MONOTONIC, ...): %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"arping: clock_getres() = %lds %ldns\0A\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"arping: setvbuf(stdout, NULL, IONBF, 0): %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"defaulting to checking dup for %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"arping: out of memory\0A\00", align 1
@.str.45 = private unnamed_addr constant [80 x i8] c"arping: Options given only apply to IP ping, but MAC address given as argument\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"arping: Can't resolve %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [84 x i8] c"arping: Options given only apply to MAC ping, but no MAC address given as argument\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"arping: Illegal mac addr %s\0A\00", align 1
@target = internal global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), align 8
@.str.49 = private unnamed_addr constant [24 x i8] c"arping: lookup dev: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [149 x i8] c"arping: Unable to automatically find interface to use. Is it on the local LAN?\0Aarping: Use -i to manually specify interface. Guessing interface %s.\0A\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"arping: Gave up looking for interface to use: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"ipsec\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"arping: Um.. %s looks like the wrong interface to use. Is it? (-i switch)\0A\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"arping: using it anyway this time\0A\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"arping: pcap_open_live(): %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"arping: pcap_set_nonblock(): %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"arping: pcap_get_selectable_fd(): %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"vlan %u and arp\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"arp\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"arping: pcap_compile(%s): %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"vlan %u and icmp\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"arping: pcap_setfilter(): %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"arping: libnet_get_hwaddr(): %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [111 x i8] c"arping: Unable to get the IPv4 address of interface %s:\0Aarping: %sarping: Use -S to specify address manually.\0A\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"This box:   Interface: %s  IP: %s   MAC address: %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"ARPING %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"\09%3.0f%% packet loss (%d extra)\0A\00", align 1
@.str.69 = private unnamed_addr constant [99 x i8] c"\0A--- %s statistics ---\0A%d packets transmitted, %d packets received, %3.0f%% unanswered (%d extra)\0A\00", align 1
@stats_total_time = internal global double 0.000000e+00, align 8
@.str.70 = private unnamed_addr constant [49 x i8] c"rtt min/avg/max/std-dev = %.3f/%.3f/%.3f/%.3f ms\00", align 1
@stats_min_time = internal global double -1.000000e+00, align 8
@stats_max_time = internal global double -1.000000e+00, align 8
@stats_total_sq_time = internal global double 0.000000e+00, align 8
@getclock.clock_gettime_failed = internal global i32 0, align 4
@.str.71 = private unnamed_addr constant [29 x i8] c"arping: clock_gettime(): %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"arping: gettimeofday(): %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"%.2x:%.2x:%.2x:%.2x:%.2x:%.2x\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"%.3f nsec\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"%.3f usec\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"%.3f msec\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"%.3f sec\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"%.3fe%d sec\00", align 1
@.str.79 = private unnamed_addr constant [48 x i8] c"ARPing %s, by Thomas Habets <thomas@habets.se>\0A\00", align 1
@version = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), align 8
@.str.80 = private unnamed_addr constant [293 x i8] c"usage: arping [ -0aAbdDeFpPqrRuUv ] [ -w <sec> ] [ -W <sec> ] [ -S <host/ip> ]\0A              [ -T <host/ip ] [ -s <MAC> ] [ -t <MAC> ] [ -c <count> ]\0A              [ -C <count> ] [ -i <interface> ] [ -m <type> ] [ -g <group> ]\0A              [ -V <vlan> ] [ -Q <priority> ] <host/ip/MAC | -B>\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"2.19\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.83 = private unnamed_addr constant [3314 x i8] c"\0A    -0     Use this option to ping with source IP address 0.0.0.0. Use this\0A           when you haven't configured your interface yet.  Note that  this\0A           may  get  the  MAC-ping  unanswered.   This  is  an alias for -S\0A           0.0.0.0.\0A    -a     Audiable ping.\0A    -A     Only count addresses matching  requested  address  (This  *WILL*\0A           break  most things you do. Only useful if you are arpinging many\0A           hosts at once. See arping-scan-net.sh for an example).\0A    -b     Like -0 but source broadcast source  address  (255.255.255.255).\0A           Note that this may get the arping unanswered since it's not nor-\0A           mal behavior for a host.\0A    -B     Use instead of host if you want to address 255.255.255.255.\0A    -c count\0A           Only send count requests.\0A    -C count\0A           Only wait for this many replies, regardless of -c and -w.\0A    -d     Find duplicate replies. Exit with 1 if there are answers from\0A           two different MAC addresses.\0A    -D     Display answers as exclamation points and missing packets as dots.\0A    -e     Like -a but beep when there is no reply.\0A    -F     Don't try to be smart about the interface name.  (even  if  this\0A           switch is not given, -i overrides smartness)\0A    -g group\0A           setgid() to this group instead of the nobody group.\0A    -h     Displays a help message and exits.\0A    -i interface\0A           Use the specified interface.\0A    -m type\0A           Type of timestamp to use for incoming packets. Use -vv when\0A           pinging to list available ones.\0A    -q     Does not display messages, except error messages.\0A    -Q pri 802.1p priority to set. Should be used with 802.1Q (-V).\0A           Defaults to 0.\0A    -r     Raw output: only the MAC/IP address is displayed for each reply.\0A    -R     Raw output: Like -r but shows \22the other one\22, can  be  combined\0A           with -r.\0A    -s MAC Set source MAC address. You may need to use -p with this.\0A    -S IP  Like  -b and -0 but with set source address.  Note that this may\0A           get the arping unanswered if the target does not have routing to\0A           the  IP.  If you don't own the IP you are using, you may need to\0A           turn on promiscious mode on the interface (with -p).  With  this\0A           switch  you can find out what IP-address a host has without tak-\0A           ing an IP-address yourself.\0A    -t MAC Set target MAC address to use when pinging IP address.\0A    -T IP  Use -T as target address when pinging MACs that won't respond to\0A           a broadcast ping but perhaps to a directed broadcast.\0A           Example:\0A           To check the address of MAC-A, use knowledge of MAC-B and  IP-B.\0A           $ arping -S <IP-B> -s <MAC-B> -p <MAC-A>\0A    -p     Turn  on  promiscious  mode  on interface, use this if you don't\0A           \22own\22 the MAC address you are using.\0A    -P     Send ARP replies instead of requests. Useful with -U.\0A    -u     Show index=received/sent instead  of  just  index=received  when\0A           pinging MACs.\0A    -U     Send unsolicited ARP.\0A    -v     Verbose output. Use twice for more messages.\0A    -V num 802.1Q tag to add. Defaults to no VLAN tag.\0A    -w sec Specify a timeout before ping exits regardless of how many\0Apackets have been sent or received.\0A    -W sec Time to wait between pings.\0A\00", align 1
@.str.84 = private unnamed_addr constant [143 x i8] c"Report bugs to: thomas@habets.se\0AArping home page: <http://www.habets.pp.se/synscan/>\0ADevelopment repo: http://github.com/ThomasHabets/arping\0A\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@.str.86 = private unnamed_addr constant [59 x i8] c"For complete usage info, use --help or check the manpage.\0A\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"huh? bug in arping?\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"/dev/net/%s\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"pcap_set_snaplen(): %s\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"pcap_set_promisc(): %s\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"pcap_set_timeout(): %s\00", align 1
@.str.93 = private unnamed_addr constant [46 x i8] c"arping: pcap_set_immediate_mode() failed: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"arping: Unknown timestamp type \22%s\22\0A\00", align 1
@.str.95 = private unnamed_addr constant [52 x i8] c"arping: Failed to set timestamp type \22%s\22 (%d): %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [68 x i8] c"pcap_activate(tstype=\22%s\22): %s. Try without setting timestamp type.\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"pcap_activate(): %s\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"arping: pcap_list_tstamp_types() failed\0A\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"  %-18s %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"Timestamp types:\0A\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"arping: getpwnam(%s): %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"arping: getpwnam(%s): unknown user\0A\00", align 1
@.str.106 = private unnamed_addr constant [46 x i8] c"arping: %s not a number and getgrnam(%s): %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"arping: %s is not a number or group\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"sshd\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"arping: chdir(%s): %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"arping: chroot(%s): %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"arping: Successfully chrooted to %s\0A\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"arping: setgroups(0, NULL): %s\0A\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"arping: setgid(): %s\0A\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"arping: setuid(): %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [48 x i8] c"arping: Successfully dropped uid/gid to %d/%d.\0A\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"arping: cap_init(): %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"arping: cap_set_proc(): %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"arping: Successfully dropped all capabilities.\0A\00", align 1
@pingip_send.arp = internal global i32 0, align 4
@pingip_send.eth = internal global i32 0, align 4
@pingip_send.padding = internal constant [16 x i8] zeroinitializer, align 16
@ethnull = internal constant [6 x i8] zeroinitializer, align 1
@.str.119 = private unnamed_addr constant [32 x i8] c"arping: libnet_build_arp(): %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"arping: %s: %s\0A\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"libnet_build_802_1q()\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"libnet_build_ethernet()\00", align 1
@.str.123 = private unnamed_addr constant [42 x i8] c"arping: sending packet at time %ld.%09ld\0A\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"arping: libnet_write(): %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"arping: receiving packets...\0A\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"arping: pcap_get_selectable_fd()=-1: %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [46 x i8] c"arping: listen for replies for %ld.%09ld sec\0A\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"Timeout\0A\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.130 = private unnamed_addr constant [29 x i8] c"arping: select() failed: %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [47 x i8] c"arping: select says ok, but pcap_dispatch=%d!\0A\00", align 1
@pingmac_send.icmp = internal global i32 0, align 4
@pingmac_send.ipv4 = internal global i32 0, align 4
@pingmac_send.eth = internal global i32 0, align 4
@pingmac_send.padding = internal constant [16 x i8] zeroinitializer, align 16
@.str.132 = private unnamed_addr constant [32 x i8] c"libnet_build_icmpv4_echo(): %s\0A\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"libnet_build_ipv4(): %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @strip_newline(i8*) #0 !dbg !244 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !247, metadata !248), !dbg !249
  call void @llvm.dbg.declare(metadata i64* %3, metadata !250, metadata !248), !dbg !253
  %4 = load i8*, i8** %2, align 8, !dbg !254
  %5 = call i64 @strlen(i8* %4) #8, !dbg !256
  store i64 %5, i64* %3, align 8, !dbg !257
  br label %6, !dbg !258

; <label>:6:                                      ; preds = %24, %1
  %7 = load i64, i64* %3, align 8, !dbg !259
  %8 = icmp ne i64 %7, 0, !dbg !259
  br i1 %8, label %9, label %17, !dbg !262

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %3, align 8, !dbg !263
  %11 = sub i64 %10, 1, !dbg !265
  %12 = load i8*, i8** %2, align 8, !dbg !266
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !266
  %14 = load i8, i8* %13, align 1, !dbg !266
  %15 = sext i8 %14 to i32, !dbg !266
  %16 = icmp eq i32 %15, 10, !dbg !267
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = phi i1 [ false, %6 ], [ %16, %9 ]
  br i1 %18, label %19, label %27, !dbg !268

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %3, align 8, !dbg !270
  %21 = sub i64 %20, 1, !dbg !272
  %22 = load i8*, i8** %2, align 8, !dbg !273
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !273
  store i8 0, i8* %23, align 1, !dbg !274
  br label %24, !dbg !275

; <label>:24:                                     ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !276
  %26 = add i64 %25, -1, !dbg !276
  store i64 %26, i64* %3, align 8, !dbg !276
  br label %6, !dbg !278, !llvm.loop !279

; <label>:27:                                     ; preds = %17
  ret void, !dbg !281
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @do_libnet_init(i8*, i32) #0 !dbg !282 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !285, metadata !248), !dbg !286
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !287, metadata !248), !dbg !288
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !289, metadata !248), !dbg !290
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !291
  store i8 0, i8* %6, align 16, !dbg !292
  %7 = load i32, i32* @verbose, align 4, !dbg !293
  %8 = icmp sgt i32 %7, 1, !dbg !295
  br i1 %8, label %9, label %18, !dbg !296

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !297
  %11 = icmp ne i8* %10, null, !dbg !297
  br i1 %11, label %12, label %14, !dbg !297

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %3, align 8, !dbg !299
  br label %15, !dbg !301

; <label>:14:                                     ; preds = %9
  br label %15, !dbg !302

; <label>:15:                                     ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %14 ], !dbg !304
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %16), !dbg !306
  br label %18, !dbg !307

; <label>:18:                                     ; preds = %15, %2
  %19 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !308
  %20 = icmp ne %struct.libnet_context* %19, null, !dbg !308
  br i1 %20, label %21, label %23, !dbg !310

; <label>:21:                                     ; preds = %18
  %22 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !311
  call void @libnet_destroy(%struct.libnet_context* %22), !dbg !313
  store %struct.libnet_context* null, %struct.libnet_context** @libnet, align 8, !dbg !314
  br label %23, !dbg !315

; <label>:23:                                     ; preds = %21, %18
  %24 = load i8*, i8** %3, align 8, !dbg !316
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !318
  %26 = call %struct.libnet_context* @libnet_init(i32 0, i8* %24, i8* %25), !dbg !319
  store %struct.libnet_context* %26, %struct.libnet_context** @libnet, align 8, !dbg !320
  %27 = icmp ne %struct.libnet_context* %26, null, !dbg !320
  br i1 %27, label %70, label %28, !dbg !321

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !322
  call void @strip_newline(i8* %29), !dbg !324
  %30 = load i8*, i8** %3, align 8, !dbg !325
  %31 = icmp ne i8* %30, null, !dbg !325
  br i1 %31, label %37, label %32, !dbg !327

; <label>:32:                                     ; preds = %28
  call void @do_libnet_init(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !328
  %33 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !330
  %34 = icmp ne %struct.libnet_context* %33, null, !dbg !332
  br i1 %34, label %35, label %36, !dbg !333

; <label>:35:                                     ; preds = %32
  br label %70, !dbg !334

; <label>:36:                                     ; preds = %32
  br label %42, !dbg !336

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %4, align 4, !dbg !337
  %39 = icmp ne i32 %38, 0, !dbg !337
  br i1 %39, label %40, label %41, !dbg !337

; <label>:40:                                     ; preds = %37
  br label %70, !dbg !340

; <label>:41:                                     ; preds = %37
  br label %42

; <label>:42:                                     ; preds = %41, %36
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !342
  %44 = load i8*, i8** %3, align 8, !dbg !343
  %45 = icmp ne i8* %44, null, !dbg !343
  br i1 %45, label %46, label %48, !dbg !343

; <label>:46:                                     ; preds = %42
  %47 = load i8*, i8** %3, align 8, !dbg !344
  br label %49, !dbg !346

; <label>:48:                                     ; preds = %42
  br label %49, !dbg !347

; <label>:49:                                     ; preds = %48, %46
  %50 = phi i8* [ %47, %46 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %48 ], !dbg !349
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !351
  %52 = load i8, i8* %51, align 16, !dbg !351
  %53 = sext i8 %52 to i32, !dbg !351
  %54 = icmp ne i32 %53, 0, !dbg !351
  br i1 %54, label %55, label %57, !dbg !351

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !352
  br label %58, !dbg !353

; <label>:57:                                     ; preds = %49
  br label %58, !dbg !354

; <label>:58:                                     ; preds = %57, %55
  %59 = phi i8* [ %56, %55 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), %57 ], !dbg !355
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %50, i8* %59), !dbg !356
  %61 = call i32 @getuid() #9, !dbg !357
  %62 = icmp ne i32 %61, 0, !dbg !357
  br i1 %62, label %63, label %69, !dbg !359

; <label>:63:                                     ; preds = %58
  %64 = call i32 @geteuid() #9, !dbg !360
  %65 = icmp ne i32 %64, 0, !dbg !360
  br i1 %65, label %66, label %69, !dbg !362

; <label>:66:                                     ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !363
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0)), !dbg !365
  br label %69, !dbg !366

; <label>:69:                                     ; preds = %66, %63, %58
  call void @exit(i32 1) #10, !dbg !367
  unreachable, !dbg !367

; <label>:70:                                     ; preds = %35, %40, %23
  ret void, !dbg !368
}

declare i32 @printf(i8*, ...) #3

declare void @libnet_destroy(%struct.libnet_context*) #3

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind
declare i32 @geteuid() #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define void @sigint(i32) #0 !dbg !369 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !372, metadata !248), !dbg !373
  %3 = load i32, i32* %2, align 4, !dbg !374
  store volatile i32 1, i32* @time_to_die, align 4, !dbg !375
  ret void, !dbg !376
}

; Function Attrs: nounwind uwtable
define i32 @get_mac_addr(i8*, i8*) #0 !dbg !377 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !380, metadata !248), !dbg !381
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !382, metadata !248), !dbg !383
  call void @llvm.dbg.declare(metadata [4 x i8*]* %6, metadata !384, metadata !248), !dbg !388
  %9 = bitcast [4 x i8*]* %6 to i8*, !dbg !388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([4 x i8*]* @get_mac_addr.formats to i8*), i64 32, i32 16, i1 false), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %7, metadata !389, metadata !248), !dbg !390
  store i32 0, i32* %7, align 4, !dbg !391
  br label %10, !dbg !393

; <label>:10:                                     ; preds = %50, %2
  %11 = load i32, i32* %7, align 4, !dbg !394
  %12 = sext i32 %11 to i64, !dbg !397
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %12, !dbg !397
  %14 = load i8*, i8** %13, align 8, !dbg !397
  %15 = icmp ne i8* %14, null, !dbg !398
  br i1 %15, label %16, label %53, !dbg !398

; <label>:16:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata [6 x i32]* %8, metadata !399, metadata !248), !dbg !402
  %17 = load i8*, i8** %4, align 8, !dbg !403
  %18 = load i32, i32* %7, align 4, !dbg !405
  %19 = sext i32 %18 to i64, !dbg !406
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %19, !dbg !406
  %21 = load i8*, i8** %20, align 8, !dbg !406
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0, !dbg !407
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1, !dbg !408
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2, !dbg !409
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3, !dbg !410
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4, !dbg !411
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5, !dbg !412
  %28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27) #9, !dbg !413
  %29 = icmp eq i32 6, %28, !dbg !414
  br i1 %29, label %30, label %49, !dbg !415

; <label>:30:                                     ; preds = %16
  store i32 0, i32* %7, align 4, !dbg !416
  br label %31, !dbg !419

; <label>:31:                                     ; preds = %45, %30
  %32 = load i32, i32* %7, align 4, !dbg !420
  %33 = icmp slt i32 %32, 6, !dbg !423
  br i1 %33, label %34, label %48, !dbg !424

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %7, align 4, !dbg !425
  %36 = sext i32 %35 to i64, !dbg !427
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %36, !dbg !427
  %38 = load i32, i32* %37, align 4, !dbg !427
  %39 = and i32 %38, 255, !dbg !428
  %40 = trunc i32 %39 to i8, !dbg !427
  %41 = load i32, i32* %7, align 4, !dbg !429
  %42 = sext i32 %41 to i64, !dbg !430
  %43 = load i8*, i8** %5, align 8, !dbg !430
  %44 = getelementptr inbounds i8, i8* %43, i64 %42, !dbg !430
  store i8 %40, i8* %44, align 1, !dbg !431
  br label %45, !dbg !432

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* %7, align 4, !dbg !433
  %47 = add nsw i32 %46, 1, !dbg !433
  store i32 %47, i32* %7, align 4, !dbg !433
  br label %31, !dbg !435, !llvm.loop !436

; <label>:48:                                     ; preds = %31
  store i32 1, i32* %3, align 4, !dbg !438
  br label %54, !dbg !438

; <label>:49:                                     ; preds = %16
  br label %50, !dbg !439

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %7, align 4, !dbg !440
  %52 = add nsw i32 %51, 1, !dbg !440
  store i32 %52, i32* %7, align 4, !dbg !440
  br label %10, !dbg !442, !llvm.loop !443

; <label>:53:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !445
  br label %54, !dbg !445

; <label>:54:                                     ; preds = %53, %48
  %55 = load i32, i32* %3, align 4, !dbg !446
  ret i32 %55, !dbg !446
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @pingip_recv(i8*, %struct.pcap_pkthdr*, i8*) #0 !dbg !447 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.libnet_802_1q_hdr*, align 8
  %9 = alloca %struct.libnet_802_3_hdr*, align 8
  %10 = alloca %struct.libnet_arp_hdr*, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !452, metadata !248), !dbg !453
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap_pkthdr** %5, metadata !454, metadata !248), !dbg !455
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !456, metadata !248), !dbg !457
  call void @llvm.dbg.declare(metadata i8** %7, metadata !458, metadata !248), !dbg !461
  call void @llvm.dbg.declare(metadata %struct.libnet_802_1q_hdr** %8, metadata !462, metadata !248), !dbg !473
  call void @llvm.dbg.declare(metadata %struct.libnet_802_3_hdr** %9, metadata !474, metadata !248), !dbg !481
  call void @llvm.dbg.declare(metadata %struct.libnet_arp_hdr** %10, metadata !482, metadata !248), !dbg !491
  call void @llvm.dbg.declare(metadata %struct.timespec* %11, metadata !492, metadata !248), !dbg !493
  %14 = load i8*, i8** %4, align 8, !dbg !494
  %15 = load i32, i32* @verbose, align 4, !dbg !495
  %16 = icmp sgt i32 %15, 2, !dbg !497
  br i1 %16, label %17, label %19, !dbg !498

; <label>:17:                                     ; preds = %3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0)), !dbg !499
  br label %19, !dbg !501

; <label>:19:                                     ; preds = %17, %3
  call void @getclock(%struct.timespec* %11), !dbg !502
  %20 = load i16, i16* @vlan_tag, align 2, !dbg !503
  %21 = sext i16 %20 to i32, !dbg !503
  %22 = icmp sge i32 %21, 0, !dbg !505
  br i1 %22, label %23, label %33, !dbg !506

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %6, align 8, !dbg !507
  %25 = bitcast i8* %24 to %struct.libnet_802_1q_hdr*, !dbg !509
  store %struct.libnet_802_1q_hdr* %25, %struct.libnet_802_1q_hdr** %8, align 8, !dbg !510
  %26 = load %struct.libnet_802_1q_hdr*, %struct.libnet_802_1q_hdr** %8, align 8, !dbg !511
  %27 = bitcast %struct.libnet_802_1q_hdr* %26 to i8*, !dbg !512
  %28 = getelementptr inbounds i8, i8* %27, i64 18, !dbg !513
  %29 = bitcast i8* %28 to %struct.libnet_arp_hdr*, !dbg !514
  store %struct.libnet_arp_hdr* %29, %struct.libnet_arp_hdr** %10, align 8, !dbg !515
  %30 = load %struct.libnet_802_1q_hdr*, %struct.libnet_802_1q_hdr** %8, align 8, !dbg !516
  %31 = getelementptr inbounds %struct.libnet_802_1q_hdr, %struct.libnet_802_1q_hdr* %30, i32 0, i32 1, !dbg !517
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %31, i32 0, i32 0, !dbg !516
  store i8* %32, i8** %7, align 8, !dbg !518
  br label %63, !dbg !519

; <label>:33:                                     ; preds = %19
  %34 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8, !dbg !520
  %35 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %34, i32 0, i32 1, !dbg !523
  %36 = load i32, i32* %35, align 8, !dbg !523
  %37 = icmp ult i32 %36, 42, !dbg !524
  br i1 %37, label %38, label %39, !dbg !525

; <label>:38:                                     ; preds = %33
  br label %215, !dbg !526

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %6, align 8, !dbg !528
  %41 = bitcast i8* %40 to %struct.libnet_802_3_hdr*, !dbg !529
  store %struct.libnet_802_3_hdr* %41, %struct.libnet_802_3_hdr** %9, align 8, !dbg !530
  %42 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %9, align 8, !dbg !531
  %43 = bitcast %struct.libnet_802_3_hdr* %42 to i8*, !dbg !532
  %44 = getelementptr inbounds i8, i8* %43, i64 14, !dbg !533
  %45 = bitcast i8* %44 to %struct.libnet_arp_hdr*, !dbg !534
  store %struct.libnet_arp_hdr* %45, %struct.libnet_arp_hdr** %10, align 8, !dbg !535
  %46 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %9, align 8, !dbg !536
  %47 = getelementptr inbounds %struct.libnet_802_3_hdr, %struct.libnet_802_3_hdr* %46, i32 0, i32 1, !dbg !537
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %47, i32 0, i32 0, !dbg !536
  store i8* %48, i8** %7, align 8, !dbg !538
  %49 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !539
  %50 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %49, i32 0, i32 2, !dbg !541
  %51 = load i8, i8* %50, align 2, !dbg !541
  %52 = zext i8 %51 to i32, !dbg !539
  %53 = icmp ne i32 %52, 6, !dbg !542
  br i1 %53, label %54, label %55, !dbg !543

; <label>:54:                                     ; preds = %39
  br label %215, !dbg !544

; <label>:55:                                     ; preds = %39
  %56 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !546
  %57 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %56, i32 0, i32 3, !dbg !548
  %58 = load i8, i8* %57, align 1, !dbg !548
  %59 = zext i8 %58 to i32, !dbg !546
  %60 = icmp ne i32 %59, 4, !dbg !549
  br i1 %60, label %61, label %62, !dbg !550

; <label>:61:                                     ; preds = %55
  br label %215, !dbg !551

; <label>:62:                                     ; preds = %55
  br label %63

; <label>:63:                                     ; preds = %62, %23
  %64 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !553
  %65 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %64, i32 0, i32 4, !dbg !555
  %66 = load i16, i16* %65, align 2, !dbg !555
  %67 = call zeroext i16 @htons(i16 zeroext %66) #1, !dbg !556
  %68 = zext i16 %67 to i32, !dbg !556
  %69 = icmp ne i32 %68, 2, !dbg !557
  br i1 %69, label %70, label %71, !dbg !558

; <label>:70:                                     ; preds = %63
  br label %215, !dbg !559

; <label>:71:                                     ; preds = %63
  %72 = load i32, i32* @verbose, align 4, !dbg !561
  %73 = icmp sgt i32 %72, 3, !dbg !563
  br i1 %73, label %74, label %76, !dbg !564

; <label>:74:                                     ; preds = %71
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)), !dbg !565
  br label %76, !dbg !567

; <label>:76:                                     ; preds = %74, %71
  %77 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !568
  %78 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %77, i32 0, i32 1, !dbg !570
  %79 = load i16, i16* %78, align 2, !dbg !570
  %80 = call zeroext i16 @htons(i16 zeroext %79) #1, !dbg !571
  %81 = zext i16 %80 to i32, !dbg !571
  %82 = icmp ne i32 %81, 2048, !dbg !572
  br i1 %82, label %83, label %84, !dbg !573

; <label>:83:                                     ; preds = %76
  br label %215, !dbg !574

; <label>:84:                                     ; preds = %76
  %85 = load i32, i32* @verbose, align 4, !dbg !576
  %86 = icmp sgt i32 %85, 3, !dbg !578
  br i1 %86, label %87, label %89, !dbg !579

; <label>:87:                                     ; preds = %84
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)), !dbg !580
  br label %89, !dbg !582

; <label>:89:                                     ; preds = %87, %84
  %90 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !583
  %91 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %90, i32 0, i32 0, !dbg !585
  %92 = load i16, i16* %91, align 2, !dbg !585
  %93 = call zeroext i16 @htons(i16 zeroext %92) #1, !dbg !586
  %94 = zext i16 %93 to i32, !dbg !586
  %95 = icmp ne i32 %94, 1, !dbg !587
  br i1 %95, label %96, label %97, !dbg !588

; <label>:96:                                     ; preds = %89
  br label %215, !dbg !589

; <label>:97:                                     ; preds = %89
  %98 = load i32, i32* @verbose, align 4, !dbg !591
  %99 = icmp sgt i32 %98, 3, !dbg !593
  br i1 %99, label %100, label %102, !dbg !594

; <label>:100:                                    ; preds = %97
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0)), !dbg !595
  br label %102, !dbg !597

; <label>:102:                                    ; preds = %100, %97
  %103 = load i32, i32* @addr_must_be_same, align 4, !dbg !598
  %104 = icmp ne i32 %103, 0, !dbg !598
  br i1 %104, label %105, label %113, !dbg !600

; <label>:105:                                    ; preds = %102
  %106 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !601
  %107 = bitcast %struct.libnet_arp_hdr* %106 to i8*, !dbg !604
  %108 = getelementptr inbounds i8, i8* %107, i64 8, !dbg !605
  %109 = call i32 @memcmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i64 6) #8, !dbg !606
  %110 = icmp ne i32 %109, 0, !dbg !606
  br i1 %110, label %111, label %112, !dbg !607

; <label>:111:                                    ; preds = %105
  br label %215, !dbg !608

; <label>:112:                                    ; preds = %105
  br label %113, !dbg !610

; <label>:113:                                    ; preds = %112, %102
  %114 = load i32, i32* @verbose, align 4, !dbg !611
  %115 = icmp sgt i32 %114, 3, !dbg !613
  br i1 %115, label %116, label %118, !dbg !614

; <label>:116:                                    ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0)), !dbg !615
  br label %118, !dbg !617

; <label>:118:                                    ; preds = %116, %113
  call void @llvm.dbg.declare(metadata i32* %12, metadata !618, metadata !248), !dbg !619
  %119 = bitcast i32* %12 to i8*, !dbg !620
  %120 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !621
  %121 = bitcast %struct.libnet_arp_hdr* %120 to i8*, !dbg !622
  %122 = load %struct.libnet_arp_hdr*, %struct.libnet_arp_hdr** %10, align 8, !dbg !623
  %123 = getelementptr inbounds %struct.libnet_arp_hdr, %struct.libnet_arp_hdr* %122, i32 0, i32 2, !dbg !624
  %124 = load i8, i8* %123, align 2, !dbg !624
  %125 = zext i8 %124 to i32, !dbg !623
  %126 = sext i32 %125 to i64, !dbg !625
  %127 = getelementptr inbounds i8, i8* %121, i64 %126, !dbg !625
  %128 = getelementptr inbounds i8, i8* %127, i64 8, !dbg !626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %128, i64 4, i32 1, i1 false), !dbg !620
  %129 = load i32, i32* @dstip, align 4, !dbg !627
  %130 = load i32, i32* %12, align 4, !dbg !629
  %131 = icmp ne i32 %129, %130, !dbg !630
  br i1 %131, label %132, label %133, !dbg !631

; <label>:132:                                    ; preds = %118
  br label %215, !dbg !632

; <label>:133:                                    ; preds = %118
  %134 = load i32, i32* @verbose, align 4, !dbg !634
  %135 = icmp sgt i32 %134, 3, !dbg !636
  br i1 %135, label %136, label %138, !dbg !637

; <label>:136:                                    ; preds = %133
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0)), !dbg !638
  br label %138, !dbg !640

; <label>:138:                                    ; preds = %136, %133
  %139 = call double @timespec2dbl(%struct.timespec* %11), !dbg !641
  %140 = call double @timespec2dbl(%struct.timespec* @lastpacketsent), !dbg !642
  %141 = fsub double %139, %140, !dbg !644
  call void @update_stats(double %141), !dbg !645
  call void @llvm.dbg.declare(metadata [128 x i8]* %13, metadata !647, metadata !248), !dbg !651
  %142 = load i32, i32* @beep, align 4, !dbg !652
  %143 = icmp ne i32 %142, 0, !dbg !652
  br i1 %143, label %144, label %146, !dbg !654

; <label>:144:                                    ; preds = %138
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !655
  br label %146, !dbg !657

; <label>:146:                                    ; preds = %144, %138
  %147 = load i32, i32* @display, align 4, !dbg !658
  switch i32 %147, label %188 [
    i32 5, label %148
    i32 0, label %150
    i32 1, label %171
    i32 4, label %172
    i32 3, label %179
    i32 2, label %183
  ], !dbg !659

; <label>:148:                                    ; preds = %146
  %149 = call i32 @putchar(i32 33), !dbg !660
  br label %191, !dbg !662

; <label>:150:                                    ; preds = %146
  %151 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8, !dbg !663
  %152 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %151, i32 0, i32 2, !dbg !664
  %153 = load i32, i32* %152, align 4, !dbg !664
  %154 = load i8*, i8** %7, align 8, !dbg !665
  %155 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i32 0, i32 0, !dbg !666
  %156 = call i8* @format_mac(i8* %154, i8* %155, i64 128), !dbg !667
  %157 = load i32, i32* %12, align 4, !dbg !668
  %158 = call i8* @libnet_addr2name4(i32 %157, i8 zeroext 0), !dbg !669
  %159 = load i32, i32* @numrecvd, align 4, !dbg !670
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i32 %153, i8* %156, i8* %158, i32 %159), !dbg !671
  %161 = load i32, i32* @alsototal, align 4, !dbg !672
  %162 = icmp ne i32 %161, 0, !dbg !672
  br i1 %162, label %163, label %167, !dbg !674

; <label>:163:                                    ; preds = %150
  %164 = load i32, i32* @numsent, align 4, !dbg !675
  %165 = sub i32 %164, 1, !dbg !677
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 %165), !dbg !678
  br label %167, !dbg !679

; <label>:167:                                    ; preds = %163, %150
  %168 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i32 0, i32 0, !dbg !680
  %169 = call i8* @ts2str(%struct.timespec* @lastpacketsent, %struct.timespec* %11, i8* %168, i64 128), !dbg !681
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %169), !dbg !682
  br label %191, !dbg !684

; <label>:171:                                    ; preds = %146
  br label %191, !dbg !685

; <label>:172:                                    ; preds = %146
  %173 = load i8*, i8** %7, align 8, !dbg !686
  %174 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i32 0, i32 0, !dbg !687
  %175 = call i8* @format_mac(i8* %173, i8* %174, i64 128), !dbg !688
  %176 = load i32, i32* %12, align 4, !dbg !689
  %177 = call i8* @libnet_addr2name4(i32 %176, i8 zeroext 0), !dbg !690
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %175, i8* %177), !dbg !691
  br label %191, !dbg !692

; <label>:179:                                    ; preds = %146
  %180 = load i32, i32* %12, align 4, !dbg !693
  %181 = call i8* @libnet_addr2name4(i32 %180, i8 zeroext 0), !dbg !694
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %181), !dbg !695
  br label %191, !dbg !696

; <label>:183:                                    ; preds = %146
  %184 = load i8*, i8** %7, align 8, !dbg !697
  %185 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i32 0, i32 0, !dbg !698
  %186 = call i8* @format_mac(i8* %184, i8* %185, i64 128), !dbg !699
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %186), !dbg !700
  br label %191, !dbg !701

; <label>:188:                                    ; preds = %146
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !702
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)), !dbg !703
  br label %191, !dbg !704

; <label>:191:                                    ; preds = %188, %183, %179, %172, %171, %167, %148
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705
  %193 = call i32 @fflush(%struct._IO_FILE* %192), !dbg !706
  %194 = load i32, i32* @display, align 4, !dbg !707
  switch i32 %194, label %196 [
    i32 1, label %195
    i32 5, label %195
  ], !dbg !708

; <label>:195:                                    ; preds = %191, %191
  br label %198, !dbg !709

; <label>:196:                                    ; preds = %191
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !711
  br label %198, !dbg !712

; <label>:198:                                    ; preds = %196, %195
  %199 = load i32, i32* @numrecvd, align 4, !dbg !713
  %200 = icmp ne i32 %199, 0, !dbg !713
  br i1 %200, label %201, label %207, !dbg !715

; <label>:201:                                    ; preds = %198
  %202 = load i8*, i8** %7, align 8, !dbg !716
  %203 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @lastreplymac, i32 0, i32 0), i8* %202, i64 6) #8, !dbg !719
  %204 = icmp ne i32 %203, 0, !dbg !719
  br i1 %204, label %205, label %206, !dbg !720

; <label>:205:                                    ; preds = %201
  store i32 1, i32* @dupfound, align 4, !dbg !721
  br label %206, !dbg !723

; <label>:206:                                    ; preds = %205, %201
  br label %207, !dbg !724

; <label>:207:                                    ; preds = %206, %198
  %208 = load i8*, i8** %7, align 8, !dbg !725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @lastreplymac, i32 0, i32 0), i8* %208, i64 6, i32 1, i1 false), !dbg !726
  %209 = load i32, i32* @numrecvd, align 4, !dbg !727
  %210 = add i32 %209, 1, !dbg !727
  store i32 %210, i32* @numrecvd, align 4, !dbg !727
  %211 = load i32, i32* @numrecvd, align 4, !dbg !728
  %212 = load i32, i32* @max_replies, align 4, !dbg !730
  %213 = icmp uge i32 %211, %212, !dbg !731
  br i1 %213, label %214, label %215, !dbg !732

; <label>:214:                                    ; preds = %207
  call void @sigint(i32 0), !dbg !733
  br label %215, !dbg !735

; <label>:215:                                    ; preds = %38, %54, %61, %70, %83, %96, %111, %132, %214, %207
  ret void, !dbg !736
}

; Function Attrs: nounwind uwtable
define internal void @getclock(%struct.timespec*) #0 !dbg !193 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %2, metadata !737, metadata !248), !dbg !738
  %4 = load i32, i32* @getclock.clock_gettime_failed, align 4, !dbg !739
  %5 = icmp ne i32 %4, 0, !dbg !739
  br i1 %5, label %17, label %6, !dbg !741

; <label>:6:                                      ; preds = %1
  %7 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !742
  %8 = call i32 @clock_gettime(i32 1, %struct.timespec* %7) #9, !dbg !745
  %9 = icmp eq i32 0, %8, !dbg !746
  br i1 %9, label %10, label %11, !dbg !747

; <label>:10:                                     ; preds = %6
  br label %36, !dbg !748

; <label>:11:                                     ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750
  %13 = call i32* @__errno_location() #1, !dbg !751
  %14 = load i32, i32* %13, align 4, !dbg !752
  %15 = call i8* @strerror(i32 %14) #9, !dbg !753
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i8* %15), !dbg !755
  store i32 1, i32* @getclock.clock_gettime_failed, align 4, !dbg !756
  br label %17, !dbg !757

; <label>:17:                                     ; preds = %11, %1
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !758, metadata !248), !dbg !759
  %18 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #9, !dbg !760
  %19 = icmp eq i32 -1, %18, !dbg !762
  br i1 %19, label %20, label %26, !dbg !763

; <label>:20:                                     ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !764
  %22 = call i32* @__errno_location() #1, !dbg !766
  %23 = load i32, i32* %22, align 4, !dbg !767
  %24 = call i8* @strerror(i32 %23) #9, !dbg !768
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i32 0, i32 0), i8* %24), !dbg !770
  call void @sigint(i32 0), !dbg !771
  br label %26, !dbg !772

; <label>:26:                                     ; preds = %20, %17
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !773
  %28 = load i64, i64* %27, align 8, !dbg !773
  %29 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !774
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0, !dbg !775
  store i64 %28, i64* %30, align 8, !dbg !776
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !777
  %32 = load i64, i64* %31, align 8, !dbg !777
  %33 = mul nsw i64 %32, 1000, !dbg !778
  %34 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !779
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 1, !dbg !780
  store i64 %33, i64* %35, align 8, !dbg !781
  br label %36, !dbg !782

; <label>:36:                                     ; preds = %26, %10
  ret void, !dbg !783
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #7

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @update_stats(double) #0 !dbg !785 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !788, metadata !248), !dbg !789
  %3 = load double, double* @stats_min_time, align 8, !dbg !790
  %4 = fcmp olt double %3, 0.000000e+00, !dbg !792
  br i1 %4, label %9, label %5, !dbg !793

; <label>:5:                                      ; preds = %1
  %6 = load double, double* %2, align 8, !dbg !794
  %7 = load double, double* @stats_min_time, align 8, !dbg !796
  %8 = fcmp olt double %6, %7, !dbg !797
  br i1 %8, label %9, label %11, !dbg !798

; <label>:9:                                      ; preds = %5, %1
  %10 = load double, double* %2, align 8, !dbg !799
  store double %10, double* @stats_min_time, align 8, !dbg !801
  br label %11, !dbg !802

; <label>:11:                                     ; preds = %9, %5
  %12 = load double, double* %2, align 8, !dbg !803
  %13 = load double, double* @stats_max_time, align 8, !dbg !805
  %14 = fcmp ogt double %12, %13, !dbg !806
  br i1 %14, label %15, label %17, !dbg !807

; <label>:15:                                     ; preds = %11
  %16 = load double, double* %2, align 8, !dbg !808
  store double %16, double* @stats_max_time, align 8, !dbg !810
  br label %17, !dbg !811

; <label>:17:                                     ; preds = %15, %11
  %18 = load double, double* %2, align 8, !dbg !812
  %19 = load double, double* @stats_total_time, align 8, !dbg !813
  %20 = fadd double %19, %18, !dbg !813
  store double %20, double* @stats_total_time, align 8, !dbg !813
  %21 = load double, double* %2, align 8, !dbg !814
  %22 = load double, double* %2, align 8, !dbg !815
  %23 = fmul double %21, %22, !dbg !816
  %24 = load double, double* @stats_total_sq_time, align 8, !dbg !817
  %25 = fadd double %24, %23, !dbg !817
  store double %25, double* @stats_total_sq_time, align 8, !dbg !817
  ret void, !dbg !818
}

; Function Attrs: nounwind uwtable
define internal double @timespec2dbl(%struct.timespec*) #0 !dbg !819 {
  %2 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %2, metadata !824, metadata !248), !dbg !825
  %3 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !826
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !827
  %5 = load i64, i64* %4, align 8, !dbg !827
  %6 = sitofp i64 %5 to double, !dbg !826
  %7 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !828
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !829
  %9 = load i64, i64* %8, align 8, !dbg !829
  %10 = sitofp i64 %9 to double, !dbg !830
  %11 = fdiv double %10, 1.000000e+09, !dbg !831
  %12 = fadd double %6, %11, !dbg !832
  ret double %12, !dbg !833
}

declare i32 @putchar(i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @format_mac(i8*, i8*, i64) #0 !dbg !834 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !837, metadata !248), !dbg !838
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !839, metadata !248), !dbg !840
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !841, metadata !248), !dbg !842
  %7 = load i8*, i8** %5, align 8, !dbg !843
  %8 = load i64, i64* %6, align 8, !dbg !844
  %9 = load i8*, i8** %4, align 8, !dbg !845
  %10 = getelementptr inbounds i8, i8* %9, i64 0, !dbg !845
  %11 = load i8, i8* %10, align 1, !dbg !845
  %12 = zext i8 %11 to i32, !dbg !845
  %13 = load i8*, i8** %4, align 8, !dbg !846
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !846
  %15 = load i8, i8* %14, align 1, !dbg !846
  %16 = zext i8 %15 to i32, !dbg !846
  %17 = load i8*, i8** %4, align 8, !dbg !847
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !847
  %19 = load i8, i8* %18, align 1, !dbg !847
  %20 = zext i8 %19 to i32, !dbg !847
  %21 = load i8*, i8** %4, align 8, !dbg !848
  %22 = getelementptr inbounds i8, i8* %21, i64 3, !dbg !848
  %23 = load i8, i8* %22, align 1, !dbg !848
  %24 = zext i8 %23 to i32, !dbg !848
  %25 = load i8*, i8** %4, align 8, !dbg !849
  %26 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !849
  %27 = load i8, i8* %26, align 1, !dbg !849
  %28 = zext i8 %27 to i32, !dbg !849
  %29 = load i8*, i8** %4, align 8, !dbg !850
  %30 = getelementptr inbounds i8, i8* %29, i64 5, !dbg !850
  %31 = load i8, i8* %30, align 1, !dbg !850
  %32 = zext i8 %31 to i32, !dbg !850
  %33 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), i32 %12, i32 %16, i32 %20, i32 %24, i32 %28, i32 %32) #9, !dbg !851
  %34 = load i8*, i8** %5, align 8, !dbg !852
  ret i8* %34, !dbg !853
}

declare i8* @libnet_addr2name4(i32, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define internal i8* @ts2str(%struct.timespec*, %struct.timespec*, i8*, i64) #0 !dbg !854 {
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %5, metadata !857, metadata !248), !dbg !858
  store %struct.timespec* %1, %struct.timespec** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %6, metadata !859, metadata !248), !dbg !860
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !861, metadata !248), !dbg !862
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !863, metadata !248), !dbg !864
  call void @llvm.dbg.declare(metadata double* %9, metadata !865, metadata !248), !dbg !866
  call void @llvm.dbg.declare(metadata double* %10, metadata !867, metadata !248), !dbg !868
  call void @llvm.dbg.declare(metadata i32* %11, metadata !869, metadata !248), !dbg !870
  store i32 0, i32* %11, align 4, !dbg !870
  %12 = load %struct.timespec*, %struct.timespec** %5, align 8, !dbg !871
  %13 = call double @timespec2dbl(%struct.timespec* %12), !dbg !872
  store double %13, double* %9, align 8, !dbg !873
  %14 = load %struct.timespec*, %struct.timespec** %6, align 8, !dbg !874
  %15 = call double @timespec2dbl(%struct.timespec* %14), !dbg !875
  store double %15, double* %10, align 8, !dbg !876
  %16 = load double, double* %10, align 8, !dbg !877
  %17 = load double, double* %9, align 8, !dbg !878
  %18 = fsub double %16, %17, !dbg !879
  %19 = fmul double %18, 1.000000e+09, !dbg !880
  store double %19, double* %9, align 8, !dbg !881
  br label %20, !dbg !882

; <label>:20:                                     ; preds = %23, %4
  %21 = load double, double* %9, align 8, !dbg !883
  %22 = fcmp ogt double %21, 1.000000e+03, !dbg !885
  br i1 %22, label %23, label %28, !dbg !886

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %11, align 4, !dbg !887
  %25 = add nsw i32 %24, 3, !dbg !887
  store i32 %25, i32* %11, align 4, !dbg !887
  %26 = load double, double* %9, align 8, !dbg !889
  %27 = fdiv double %26, 1.000000e+03, !dbg !889
  store double %27, double* %9, align 8, !dbg !889
  br label %20, !dbg !890, !llvm.loop !892

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %11, align 4, !dbg !893
  switch i32 %29, label %56 [
    i32 0, label %30
    i32 3, label %35
    i32 6, label %40
    i32 9, label %45
    i32 12, label %50
  ], !dbg !894

; <label>:30:                                     ; preds = %28
  %31 = load i8*, i8** %7, align 8, !dbg !895
  %32 = load i64, i64* %8, align 8, !dbg !897
  %33 = load double, double* %9, align 8, !dbg !898
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), double %33) #9, !dbg !899
  br label %63, !dbg !900

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %7, align 8, !dbg !901
  %37 = load i64, i64* %8, align 8, !dbg !902
  %38 = load double, double* %9, align 8, !dbg !903
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), double %38) #9, !dbg !904
  br label %63, !dbg !905

; <label>:40:                                     ; preds = %28
  %41 = load i8*, i8** %7, align 8, !dbg !906
  %42 = load i64, i64* %8, align 8, !dbg !907
  %43 = load double, double* %9, align 8, !dbg !908
  %44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), double %43) #9, !dbg !909
  br label %63, !dbg !910

; <label>:45:                                     ; preds = %28
  %46 = load i8*, i8** %7, align 8, !dbg !911
  %47 = load i64, i64* %8, align 8, !dbg !912
  %48 = load double, double* %9, align 8, !dbg !913
  %49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), double %48) #9, !dbg !914
  br label %63, !dbg !915

; <label>:50:                                     ; preds = %28
  %51 = load i8*, i8** %7, align 8, !dbg !916
  %52 = load i64, i64* %8, align 8, !dbg !917
  %53 = load double, double* %9, align 8, !dbg !918
  %54 = fmul double %53, 1.000000e+03, !dbg !919
  %55 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), double %54) #9, !dbg !920
  br label %63, !dbg !921

; <label>:56:                                     ; preds = %28
  %57 = load i8*, i8** %7, align 8, !dbg !922
  %58 = load i64, i64* %8, align 8, !dbg !923
  %59 = load double, double* %9, align 8, !dbg !924
  %60 = load i32, i32* %11, align 4, !dbg !925
  %61 = sub nsw i32 %60, 9, !dbg !926
  %62 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %57, i64 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), double %59, i32 %61) #9, !dbg !927
  br label %63, !dbg !928

; <label>:63:                                     ; preds = %56, %50, %45, %40, %35, %30
  %64 = load i8*, i8** %7, align 8, !dbg !929
  ret i8* %64, !dbg !930
}

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @pingmac_recv(i8*, %struct.pcap_pkthdr*, i8*) #0 !dbg !931 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.libnet_802_1q_hdr*, align 8
  %10 = alloca %struct.libnet_802_3_hdr*, align 8
  %11 = alloca %struct.libnet_ipv4_hdr*, align 8
  %12 = alloca %struct.libnet_icmpv4_hdr*, align 8
  %13 = alloca %struct.timespec, align 8
  %14 = alloca i32, align 4
  %15 = alloca [128 x i8], align 16
  %16 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !934, metadata !248), !dbg !935
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap_pkthdr** %5, metadata !936, metadata !248), !dbg !937
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !938, metadata !248), !dbg !939
  call void @llvm.dbg.declare(metadata i8** %7, metadata !940, metadata !248), !dbg !941
  call void @llvm.dbg.declare(metadata i8** %8, metadata !942, metadata !248), !dbg !943
  call void @llvm.dbg.declare(metadata %struct.libnet_802_1q_hdr** %9, metadata !944, metadata !248), !dbg !945
  call void @llvm.dbg.declare(metadata %struct.libnet_802_3_hdr** %10, metadata !946, metadata !248), !dbg !947
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %11, metadata !948, metadata !248), !dbg !967
  call void @llvm.dbg.declare(metadata %struct.libnet_icmpv4_hdr** %12, metadata !968, metadata !248), !dbg !1009
  call void @llvm.dbg.declare(metadata %struct.timespec* %13, metadata !1010, metadata !248), !dbg !1011
  %17 = load i8*, i8** %4, align 8, !dbg !1012
  %18 = load i32, i32* @verbose, align 4, !dbg !1013
  %19 = icmp sgt i32 %18, 2, !dbg !1015
  br i1 %19, label %20, label %22, !dbg !1016

; <label>:20:                                     ; preds = %3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0)), !dbg !1017
  br label %22, !dbg !1019

; <label>:22:                                     ; preds = %20, %3
  call void @getclock(%struct.timespec* %13), !dbg !1020
  %23 = load i16, i16* @vlan_tag, align 2, !dbg !1021
  %24 = sext i16 %23 to i32, !dbg !1021
  %25 = icmp sge i32 %24, 0, !dbg !1023
  br i1 %25, label %26, label %43, !dbg !1024

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %6, align 8, !dbg !1025
  %28 = bitcast i8* %27 to %struct.libnet_802_1q_hdr*, !dbg !1027
  store %struct.libnet_802_1q_hdr* %28, %struct.libnet_802_1q_hdr** %9, align 8, !dbg !1028
  %29 = load %struct.libnet_802_1q_hdr*, %struct.libnet_802_1q_hdr** %9, align 8, !dbg !1029
  %30 = bitcast %struct.libnet_802_1q_hdr* %29 to i8*, !dbg !1030
  %31 = getelementptr inbounds i8, i8* %30, i64 18, !dbg !1031
  %32 = bitcast i8* %31 to %struct.libnet_ipv4_hdr*, !dbg !1032
  store %struct.libnet_ipv4_hdr* %32, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1033
  %33 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1034
  %34 = bitcast %struct.libnet_ipv4_hdr* %33 to i8*, !dbg !1035
  %35 = getelementptr inbounds i8, i8* %34, i64 20, !dbg !1036
  %36 = bitcast i8* %35 to %struct.libnet_icmpv4_hdr*, !dbg !1037
  store %struct.libnet_icmpv4_hdr* %36, %struct.libnet_icmpv4_hdr** %12, align 8, !dbg !1038
  %37 = load %struct.libnet_802_1q_hdr*, %struct.libnet_802_1q_hdr** %9, align 8, !dbg !1039
  %38 = getelementptr inbounds %struct.libnet_802_1q_hdr, %struct.libnet_802_1q_hdr* %37, i32 0, i32 1, !dbg !1040
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %38, i32 0, i32 0, !dbg !1039
  store i8* %39, i8** %8, align 8, !dbg !1041
  %40 = load %struct.libnet_802_1q_hdr*, %struct.libnet_802_1q_hdr** %9, align 8, !dbg !1042
  %41 = getelementptr inbounds %struct.libnet_802_1q_hdr, %struct.libnet_802_1q_hdr* %40, i32 0, i32 0, !dbg !1043
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %41, i32 0, i32 0, !dbg !1042
  store i8* %42, i8** %7, align 8, !dbg !1044
  br label %60, !dbg !1045

; <label>:43:                                     ; preds = %22
  %44 = load i8*, i8** %6, align 8, !dbg !1046
  %45 = bitcast i8* %44 to %struct.libnet_802_3_hdr*, !dbg !1048
  store %struct.libnet_802_3_hdr* %45, %struct.libnet_802_3_hdr** %10, align 8, !dbg !1049
  %46 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %10, align 8, !dbg !1050
  %47 = bitcast %struct.libnet_802_3_hdr* %46 to i8*, !dbg !1051
  %48 = getelementptr inbounds i8, i8* %47, i64 14, !dbg !1052
  %49 = bitcast i8* %48 to %struct.libnet_ipv4_hdr*, !dbg !1053
  store %struct.libnet_ipv4_hdr* %49, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1054
  %50 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1055
  %51 = bitcast %struct.libnet_ipv4_hdr* %50 to i8*, !dbg !1056
  %52 = getelementptr inbounds i8, i8* %51, i64 20, !dbg !1057
  %53 = bitcast i8* %52 to %struct.libnet_icmpv4_hdr*, !dbg !1058
  store %struct.libnet_icmpv4_hdr* %53, %struct.libnet_icmpv4_hdr** %12, align 8, !dbg !1059
  %54 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %10, align 8, !dbg !1060
  %55 = getelementptr inbounds %struct.libnet_802_3_hdr, %struct.libnet_802_3_hdr* %54, i32 0, i32 1, !dbg !1061
  %56 = getelementptr inbounds [6 x i8], [6 x i8]* %55, i32 0, i32 0, !dbg !1060
  store i8* %56, i8** %8, align 8, !dbg !1062
  %57 = load %struct.libnet_802_3_hdr*, %struct.libnet_802_3_hdr** %10, align 8, !dbg !1063
  %58 = getelementptr inbounds %struct.libnet_802_3_hdr, %struct.libnet_802_3_hdr* %57, i32 0, i32 0, !dbg !1064
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %58, i32 0, i32 0, !dbg !1063
  store i8* %59, i8** %7, align 8, !dbg !1065
  br label %60

; <label>:60:                                     ; preds = %43, %26
  %61 = load i8*, i8** %7, align 8, !dbg !1066
  %62 = call i32 @memcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i64 6) #8, !dbg !1068
  %63 = icmp ne i32 %62, 0, !dbg !1068
  br i1 %63, label %64, label %65, !dbg !1069

; <label>:64:                                     ; preds = %60
  br label %170, !dbg !1070

; <label>:65:                                     ; preds = %60
  %66 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ethxmas, i32 0, i32 0), i64 6) #8, !dbg !1072
  %67 = icmp ne i32 %66, 0, !dbg !1072
  br i1 %67, label %68, label %74, !dbg !1074

; <label>:68:                                     ; preds = %65
  %69 = load i8*, i8** %8, align 8, !dbg !1075
  %70 = call i32 @memcmp(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i64 6) #8, !dbg !1078
  %71 = icmp ne i32 %70, 0, !dbg !1078
  br i1 %71, label %72, label %73, !dbg !1079

; <label>:72:                                     ; preds = %68
  br label %170, !dbg !1080

; <label>:73:                                     ; preds = %68
  br label %74, !dbg !1082

; <label>:74:                                     ; preds = %73, %65
  %75 = load i32, i32* @addr_must_be_same, align 4, !dbg !1083
  %76 = icmp ne i32 %75, 0, !dbg !1083
  br i1 %76, label %77, label %87, !dbg !1085

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1086, metadata !248), !dbg !1088
  %78 = bitcast i32* %14 to i8*, !dbg !1089
  %79 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1090
  %80 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %79, i32 0, i32 8, !dbg !1091
  %81 = bitcast %struct.in_addr* %80 to i8*, !dbg !1089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %81, i64 4, i32 4, i1 false), !dbg !1089
  %82 = load i32, i32* @dstip, align 4, !dbg !1092
  %83 = load i32, i32* %14, align 4, !dbg !1094
  %84 = icmp ne i32 %82, %83, !dbg !1095
  br i1 %84, label %85, label %86, !dbg !1096

; <label>:85:                                     ; preds = %77
  br label %170, !dbg !1097

; <label>:86:                                     ; preds = %77
  br label %87, !dbg !1099

; <label>:87:                                     ; preds = %86, %74
  %88 = load %struct.libnet_icmpv4_hdr*, %struct.libnet_icmpv4_hdr** %12, align 8, !dbg !1100
  %89 = getelementptr inbounds %struct.libnet_icmpv4_hdr, %struct.libnet_icmpv4_hdr* %88, i32 0, i32 0, !dbg !1102
  %90 = load i8, i8* %89, align 4, !dbg !1102
  %91 = zext i8 %90 to i16, !dbg !1100
  %92 = call zeroext i16 @htons(i16 zeroext %91) #1, !dbg !1103
  %93 = zext i16 %92 to i32, !dbg !1103
  %94 = icmp ne i32 %93, 0, !dbg !1104
  br i1 %94, label %95, label %96, !dbg !1105

; <label>:95:                                     ; preds = %87
  br label %170, !dbg !1106

; <label>:96:                                     ; preds = %87
  %97 = call double @timespec2dbl(%struct.timespec* %13), !dbg !1108
  %98 = call double @timespec2dbl(%struct.timespec* @lastpacketsent), !dbg !1109
  %99 = fsub double %97, %98, !dbg !1111
  call void @update_stats(double %99), !dbg !1112
  %100 = load i32, i32* @beep, align 4, !dbg !1114
  %101 = icmp ne i32 %100, 0, !dbg !1114
  br i1 %101, label %102, label %104, !dbg !1116

; <label>:102:                                    ; preds = %96
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !1117
  br label %104, !dbg !1119

; <label>:104:                                    ; preds = %102, %96
  call void @llvm.dbg.declare(metadata [128 x i8]* %15, metadata !1120, metadata !248), !dbg !1121
  call void @llvm.dbg.declare(metadata [128 x i8]* %16, metadata !1122, metadata !248), !dbg !1123
  %105 = load i32, i32* @display, align 4, !dbg !1124
  switch i32 %105, label %153 [
    i32 1, label %106
    i32 5, label %107
    i32 0, label %109
    i32 2, label %131
    i32 3, label %138
    i32 4, label %143
  ], !dbg !1125

; <label>:106:                                    ; preds = %104
  br label %156, !dbg !1126

; <label>:107:                                    ; preds = %104
  %108 = call i32 @putchar(i32 33), !dbg !1128
  br label %156, !dbg !1129

; <label>:109:                                    ; preds = %104
  %110 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8, !dbg !1130
  %111 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %110, i32 0, i32 2, !dbg !1131
  %112 = load i32, i32* %111, align 4, !dbg !1131
  %113 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1132
  %114 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %113, i32 0, i32 8, !dbg !1133
  %115 = bitcast %struct.in_addr* %114 to i32*, !dbg !1134
  %116 = load i32, i32* %115, align 4, !dbg !1134
  %117 = call i8* @libnet_addr2name4(i32 %116, i8 zeroext 0), !dbg !1135
  %118 = load i8*, i8** %8, align 8, !dbg !1136
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1137
  %120 = call i8* @format_mac(i8* %118, i8* %119, i64 128), !dbg !1138
  %121 = load %struct.libnet_icmpv4_hdr*, %struct.libnet_icmpv4_hdr** %12, align 8, !dbg !1139
  %122 = getelementptr inbounds %struct.libnet_icmpv4_hdr, %struct.libnet_icmpv4_hdr* %121, i32 0, i32 3, !dbg !1140
  %123 = bitcast %union.anon* %122 to %struct.anon*, !dbg !1141
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 1, !dbg !1142
  %125 = load i16, i16* %124, align 2, !dbg !1142
  %126 = call zeroext i16 @htons(i16 zeroext %125) #1, !dbg !1143
  %127 = zext i16 %126 to i32, !dbg !1143
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i32 0, i32 0, !dbg !1144
  %129 = call i8* @ts2str(%struct.timespec* @lastpacketsent, %struct.timespec* %13, i8* %128, i64 128), !dbg !1145
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0), i32 %112, i8* %117, i8* %120, i32 %127, i8* %129), !dbg !1146
  br label %156, !dbg !1147

; <label>:131:                                    ; preds = %104
  %132 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1148
  %133 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %132, i32 0, i32 8, !dbg !1149
  %134 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %133, i32 0, i32 0, !dbg !1150
  %135 = load i32, i32* %134, align 4, !dbg !1150
  %136 = call i8* @libnet_addr2name4(i32 %135, i8 zeroext 0), !dbg !1151
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %136), !dbg !1152
  br label %156, !dbg !1154

; <label>:138:                                    ; preds = %104
  %139 = load i8*, i8** %8, align 8, !dbg !1155
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1156
  %141 = call i8* @format_mac(i8* %139, i8* %140, i64 128), !dbg !1157
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %141), !dbg !1158
  br label %156, !dbg !1159

; <label>:143:                                    ; preds = %104
  %144 = load i8*, i8** %8, align 8, !dbg !1160
  %145 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i32 0, i32 0, !dbg !1161
  %146 = call i8* @format_mac(i8* %144, i8* %145, i64 128), !dbg !1162
  %147 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %11, align 8, !dbg !1163
  %148 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %147, i32 0, i32 8, !dbg !1164
  %149 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %148, i32 0, i32 0, !dbg !1165
  %150 = load i32, i32* %149, align 4, !dbg !1165
  %151 = call i8* @libnet_addr2name4(i32 %150, i8 zeroext 0), !dbg !1166
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %146, i8* %151), !dbg !1167
  br label %156, !dbg !1168

; <label>:153:                                    ; preds = %104
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1169
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0)), !dbg !1170
  call void @sigint(i32 0), !dbg !1171
  br label %156, !dbg !1172

; <label>:156:                                    ; preds = %153, %143, %138, %131, %109, %107, %106
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173
  %158 = call i32 @fflush(%struct._IO_FILE* %157), !dbg !1174
  %159 = load i32, i32* @display, align 4, !dbg !1175
  switch i32 %159, label %161 [
    i32 1, label %160
    i32 5, label %160
  ], !dbg !1176

; <label>:160:                                    ; preds = %156, %156
  br label %163, !dbg !1177

; <label>:161:                                    ; preds = %156
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !1179
  br label %163, !dbg !1180

; <label>:163:                                    ; preds = %161, %160
  %164 = load i32, i32* @numrecvd, align 4, !dbg !1181
  %165 = add i32 %164, 1, !dbg !1181
  store i32 %165, i32* @numrecvd, align 4, !dbg !1181
  %166 = load i32, i32* @numrecvd, align 4, !dbg !1182
  %167 = load i32, i32* @max_replies, align 4, !dbg !1184
  %168 = icmp uge i32 %166, %167, !dbg !1185
  br i1 %168, label %169, label %170, !dbg !1186

; <label>:169:                                    ; preds = %163
  call void @sigint(i32 0), !dbg !1187
  br label %170, !dbg !1189

; <label>:170:                                    ; preds = %64, %72, %85, %95, %169, %163
  ret void, !dbg !1190
}

; Function Attrs: nounwind uwtable
define i32 @arping_main(i32, i8**) #0 !dbg !5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.bpf_program, align 8
  %24 = alloca %struct.pcap*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca [64 x i8], align 16
  %29 = alloca %struct.timespec, align 8
  %30 = alloca [128 x i8], align 16
  %31 = alloca %struct.timespec, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1191, metadata !248), !dbg !1192
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1193, metadata !248), !dbg !1194
  call void @llvm.dbg.declare(metadata [512 x i8]* %6, metadata !1195, metadata !248), !dbg !1199
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1200, metadata !248), !dbg !1201
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1202, metadata !248), !dbg !1203
  store i32 0, i32* %8, align 4, !dbg !1203
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1204, metadata !248), !dbg !1205
  store i8* null, i8** %9, align 8, !dbg !1205
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1206, metadata !248), !dbg !1207
  store i8* null, i8** %10, align 8, !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1208, metadata !248), !dbg !1209
  store i32 0, i32* %11, align 4, !dbg !1209
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1210, metadata !248), !dbg !1211
  store i8* null, i8** %12, align 8, !dbg !1211
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1212, metadata !248), !dbg !1213
  store i8* null, i8** %13, align 8, !dbg !1213
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1214, metadata !248), !dbg !1215
  store i8* null, i8** %14, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1216, metadata !248), !dbg !1217
  store i32 0, i32* %15, align 4, !dbg !1217
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1218, metadata !248), !dbg !1219
  store i32 0, i32* %16, align 4, !dbg !1219
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1220, metadata !248), !dbg !1221
  store i32 0, i32* %17, align 4, !dbg !1221
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1222, metadata !248), !dbg !1223
  store i8* null, i8** %18, align 8, !dbg !1223
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1224, metadata !248), !dbg !1225
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1226, metadata !248), !dbg !1227
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1228, metadata !248), !dbg !1229
  store i32 -1, i32* %21, align 4, !dbg !1229
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1230, metadata !248), !dbg !1231
  store i32 0, i32* %22, align 4, !dbg !1231
  call void @llvm.dbg.declare(metadata %struct.bpf_program* %23, metadata !1232, metadata !248), !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.pcap** %24, metadata !1247, metadata !248), !dbg !1251
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1252, metadata !248), !dbg !1253
  store i32 0, i32* %25, align 4, !dbg !1253
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1254, metadata !248), !dbg !1255
  store i32 1000000, i32* %26, align 4, !dbg !1255
  call void @llvm.dbg.declare(metadata double* %27, metadata !1256, metadata !248), !dbg !1257
  store double -1.000000e+00, double* %27, align 8, !dbg !1257
  call void @llvm.dbg.declare(metadata [64 x i8]* %28, metadata !1258, metadata !248), !dbg !1259
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !1260
  store i8 0, i8* %39, align 16, !dbg !1261
  store i32 1, i32* %20, align 4, !dbg !1262
  br label %40, !dbg !1264

; <label>:40:                                     ; preds = %54, %2
  %41 = load i32, i32* %20, align 4, !dbg !1265
  %42 = load i32, i32* %4, align 4, !dbg !1268
  %43 = icmp slt i32 %41, %42, !dbg !1269
  br i1 %43, label %44, label %57, !dbg !1270

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %20, align 4, !dbg !1271
  %46 = sext i32 %45 to i64, !dbg !1274
  %47 = load i8**, i8*** %5, align 8, !dbg !1274
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46, !dbg !1274
  %49 = load i8*, i8** %48, align 8, !dbg !1274
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !1275
  %51 = icmp ne i32 %50, 0, !dbg !1275
  br i1 %51, label %53, label %52, !dbg !1276

; <label>:52:                                     ; preds = %44
  call void @standard_usage(), !dbg !1277
  call void @extended_usage(), !dbg !1279
  call void @exit(i32 0) #10, !dbg !1280
  unreachable, !dbg !1280

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !1281

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %20, align 4, !dbg !1282
  %56 = add nsw i32 %55, 1, !dbg !1282
  store i32 %56, i32* %20, align 4, !dbg !1282
  br label %40, !dbg !1284, !llvm.loop !1285

; <label>:57:                                     ; preds = %40
  store i32 0, i32* @srcip, align 4, !dbg !1287
  store i32 -1, i32* @dstip, align 4, !dbg !1288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ethxmas, i32 0, i32 0), i64 6, i32 1, i1 false), !dbg !1289
  br label %58, !dbg !1290

; <label>:58:                                     ; preds = %164, %57
  %59 = load i32, i32* %4, align 4, !dbg !1291
  %60 = load i8**, i8*** %5, align 8, !dbg !1293
  %61 = call i32 @getopt(i32 %59, i8** %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0)) #9, !dbg !1294
  store i32 %61, i32* %20, align 4, !dbg !1295
  %62 = icmp ne i32 -1, %61, !dbg !1296
  br i1 %62, label %63, label %165, !dbg !1297

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %20, align 4, !dbg !1298
  switch i32 %64, label %163 [
    i32 48, label %65
    i32 97, label %66
    i32 65, label %67
    i32 98, label %68
    i32 66, label %70
    i32 99, label %72
    i32 67, label %75
    i32 100, label %78
    i32 68, label %79
    i32 101, label %80
    i32 70, label %81
    i32 104, label %82
    i32 103, label %83
    i32 105, label %85
    i32 73, label %93
    i32 109, label %95
    i32 112, label %97
    i32 80, label %98
    i32 113, label %99
    i32 81, label %100
    i32 114, label %117
    i32 82, label %121
    i32 115, label %125
    i32 83, label %127
    i32 116, label %129
    i32 84, label %131
    i32 117, label %133
    i32 85, label %134
    i32 118, label %135
    i32 86, label %138
    i32 119, label %155
    i32 87, label %158
  ], !dbg !1300

; <label>:65:                                     ; preds = %63
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** %9, align 8, !dbg !1301
  br label %164, !dbg !1303

; <label>:66:                                     ; preds = %63
  store i32 1, i32* @beep, align 4, !dbg !1304
  br label %164, !dbg !1305

; <label>:67:                                     ; preds = %63
  store i32 1, i32* @addr_must_be_same, align 4, !dbg !1306
  br label %164, !dbg !1307

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** @ip_broadcast, align 8, !dbg !1308
  store i8* %69, i8** %9, align 8, !dbg !1309
  br label %164, !dbg !1310

; <label>:70:                                     ; preds = %63
  %71 = load i8*, i8** @ip_broadcast, align 8, !dbg !1311
  store i8* %71, i8** %10, align 8, !dbg !1312
  store i32 1, i32* %11, align 4, !dbg !1313
  store i32 1, i32* %15, align 4, !dbg !1314
  br label %164, !dbg !1315

; <label>:72:                                     ; preds = %63
  %73 = load i8*, i8** @optarg, align 8, !dbg !1316
  %74 = call i32 @atoi(i8* %73) #8, !dbg !1317
  store i32 %74, i32* %21, align 4, !dbg !1318
  br label %164, !dbg !1319

; <label>:75:                                     ; preds = %63
  %76 = load i8*, i8** @optarg, align 8, !dbg !1320
  %77 = call i32 @atoi(i8* %76) #8, !dbg !1321
  store i32 %77, i32* @max_replies, align 4, !dbg !1322
  br label %164, !dbg !1323

; <label>:78:                                     ; preds = %63
  store i32 1, i32* @finddup, align 4, !dbg !1324
  br label %164, !dbg !1325

; <label>:79:                                     ; preds = %63
  store i32 5, i32* @display, align 4, !dbg !1326
  br label %164, !dbg !1327

; <label>:80:                                     ; preds = %63
  store i32 1, i32* @reverse_beep, align 4, !dbg !1328
  br label %164, !dbg !1329

; <label>:81:                                     ; preds = %63
  store i32 1, i32* %22, align 4, !dbg !1330
  br label %164, !dbg !1331

; <label>:82:                                     ; preds = %63
  call void @usage(i32 0), !dbg !1332
  br label %83, !dbg !1332

; <label>:83:                                     ; preds = %63, %82
  %84 = load i8*, i8** @optarg, align 8, !dbg !1333
  store i8* %84, i8** %18, align 8, !dbg !1334
  br label %164, !dbg !1335

; <label>:85:                                     ; preds = %63
  %86 = load i8*, i8** @optarg, align 8, !dbg !1336
  %87 = call i8* @strchr(i8* %86, i32 58) #8, !dbg !1338
  %88 = icmp ne i8* %87, null, !dbg !1338
  br i1 %88, label %89, label %92, !dbg !1339

; <label>:89:                                     ; preds = %85
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.29, i32 0, i32 0)), !dbg !1342
  call void @exit(i32 1) #10, !dbg !1343
  unreachable, !dbg !1343

; <label>:92:                                     ; preds = %85
  br label %93, !dbg !1344

; <label>:93:                                     ; preds = %63, %92
  %94 = load i8*, i8** @optarg, align 8, !dbg !1346
  store i8* %94, i8** %14, align 8, !dbg !1347
  br label %164, !dbg !1348

; <label>:95:                                     ; preds = %63
  %96 = load i8*, i8** @optarg, align 8, !dbg !1349
  store i8* %96, i8** @timestamp_type, align 8, !dbg !1350
  br label %164, !dbg !1351

; <label>:97:                                     ; preds = %63
  store i32 1, i32* %8, align 4, !dbg !1352
  br label %164, !dbg !1353

; <label>:98:                                     ; preds = %63
  store i32 1, i32* @send_reply, align 4, !dbg !1354
  br label %164, !dbg !1355

; <label>:99:                                     ; preds = %63
  store i32 1, i32* @display, align 4, !dbg !1356
  br label %164, !dbg !1357

; <label>:100:                                    ; preds = %63
  %101 = load i8*, i8** @optarg, align 8, !dbg !1358
  %102 = call i32 @atoi(i8* %101) #8, !dbg !1359
  %103 = trunc i32 %102 to i16, !dbg !1359
  store i16 %103, i16* @vlan_prio, align 2, !dbg !1360
  %104 = load i16, i16* @vlan_prio, align 2, !dbg !1361
  %105 = sext i16 %104 to i32, !dbg !1361
  %106 = icmp slt i32 %105, 0, !dbg !1363
  br i1 %106, label %111, label %107, !dbg !1364

; <label>:107:                                    ; preds = %100
  %108 = load i16, i16* @vlan_prio, align 2, !dbg !1365
  %109 = sext i16 %108 to i32, !dbg !1365
  %110 = icmp sgt i32 %109, 7, !dbg !1367
  br i1 %110, label %111, label %116, !dbg !1368

; <label>:111:                                    ; preds = %107, %100
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1369
  %113 = load i16, i16* @vlan_prio, align 2, !dbg !1371
  %114 = sext i16 %113 to i32, !dbg !1371
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0), i32 %114), !dbg !1372
  call void @exit(i32 1) #10, !dbg !1373
  unreachable, !dbg !1373

; <label>:116:                                    ; preds = %107
  br label %164, !dbg !1374

; <label>:117:                                    ; preds = %63
  %118 = load i32, i32* @display, align 4, !dbg !1375
  %119 = icmp eq i32 %118, 3, !dbg !1376
  %120 = select i1 %119, i32 4, i32 2, !dbg !1377
  store i32 %120, i32* @display, align 4, !dbg !1378
  br label %164, !dbg !1379

; <label>:121:                                    ; preds = %63
  %122 = load i32, i32* @display, align 4, !dbg !1380
  %123 = icmp eq i32 %122, 2, !dbg !1381
  %124 = select i1 %123, i32 4, i32 3, !dbg !1382
  store i32 %124, i32* @display, align 4, !dbg !1383
  br label %164, !dbg !1384

; <label>:125:                                    ; preds = %63
  %126 = load i8*, i8** @optarg, align 8, !dbg !1385
  store i8* %126, i8** %12, align 8, !dbg !1387
  br label %164, !dbg !1388

; <label>:127:                                    ; preds = %63
  %128 = load i8*, i8** @optarg, align 8, !dbg !1389
  store i8* %128, i8** %9, align 8, !dbg !1390
  br label %164, !dbg !1391

; <label>:129:                                    ; preds = %63
  %130 = load i8*, i8** @optarg, align 8, !dbg !1392
  store i8* %130, i8** %13, align 8, !dbg !1394
  store i32 2, i32* %25, align 4, !dbg !1395
  br label %164, !dbg !1396

; <label>:131:                                    ; preds = %63
  store i32 1, i32* %16, align 4, !dbg !1397
  %132 = load i8*, i8** @optarg, align 8, !dbg !1398
  store i8* %132, i8** %10, align 8, !dbg !1399
  store i32 1, i32* %25, align 4, !dbg !1400
  br label %164, !dbg !1401

; <label>:133:                                    ; preds = %63
  store i32 1, i32* @alsototal, align 4, !dbg !1402
  br label %164, !dbg !1403

; <label>:134:                                    ; preds = %63
  store i32 1, i32* %17, align 4, !dbg !1404
  store i32 1, i32* @unsolicited, align 4, !dbg !1405
  store i32 2, i32* %25, align 4, !dbg !1406
  br label %164, !dbg !1407

; <label>:135:                                    ; preds = %63
  %136 = load i32, i32* @verbose, align 4, !dbg !1408
  %137 = add nsw i32 %136, 1, !dbg !1408
  store i32 %137, i32* @verbose, align 4, !dbg !1408
  br label %164, !dbg !1409

; <label>:138:                                    ; preds = %63
  %139 = load i8*, i8** @optarg, align 8, !dbg !1410
  %140 = call i32 @atoi(i8* %139) #8, !dbg !1411
  %141 = trunc i32 %140 to i16, !dbg !1411
  store i16 %141, i16* @vlan_tag, align 2, !dbg !1412
  %142 = load i16, i16* @vlan_tag, align 2, !dbg !1413
  %143 = sext i16 %142 to i32, !dbg !1413
  %144 = icmp slt i32 %143, 0, !dbg !1415
  br i1 %144, label %149, label %145, !dbg !1416

; <label>:145:                                    ; preds = %138
  %146 = load i16, i16* @vlan_tag, align 2, !dbg !1417
  %147 = sext i16 %146 to i32, !dbg !1417
  %148 = icmp sgt i32 %147, 4095, !dbg !1419
  br i1 %148, label %149, label %154, !dbg !1420

; <label>:149:                                    ; preds = %145, %138
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1421
  %151 = load i16, i16* @vlan_tag, align 2, !dbg !1423
  %152 = sext i16 %151 to i32, !dbg !1423
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i32 %152), !dbg !1424
  call void @exit(i32 1) #10, !dbg !1425
  unreachable, !dbg !1425

; <label>:154:                                    ; preds = %145
  br label %164, !dbg !1426

; <label>:155:                                    ; preds = %63
  %156 = load i8*, i8** @optarg, align 8, !dbg !1427
  %157 = call double @atof(i8* %156) #8, !dbg !1428
  store double %157, double* %27, align 8, !dbg !1429
  br label %164, !dbg !1430

; <label>:158:                                    ; preds = %63
  %159 = load i8*, i8** @optarg, align 8, !dbg !1431
  %160 = call double @atof(i8* %159) #8, !dbg !1432
  %161 = fmul double 1.000000e+06, %160, !dbg !1433
  %162 = fptoui double %161 to i32, !dbg !1434
  store i32 %162, i32* %26, align 4, !dbg !1435
  br label %164, !dbg !1436

; <label>:163:                                    ; preds = %63
  call void @usage(i32 1), !dbg !1437
  br label %164, !dbg !1438

; <label>:164:                                    ; preds = %163, %158, %155, %154, %135, %134, %133, %131, %129, %127, %125, %121, %117, %116, %99, %98, %97, %95, %93, %83, %81, %80, %79, %78, %75, %72, %70, %68, %67, %66, %65
  br label %58, !dbg !1439, !llvm.loop !1441

; <label>:165:                                    ; preds = %58
  %166 = load i32, i32* %4, align 4, !dbg !1442
  %167 = load i32, i32* @optind, align 4, !dbg !1444
  %168 = sub nsw i32 %166, %167, !dbg !1445
  %169 = icmp sgt i32 %168, 1, !dbg !1446
  br i1 %169, label %170, label %173, !dbg !1447

; <label>:170:                                    ; preds = %165
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1448
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.32, i32 0, i32 0)), !dbg !1450
  call void @exit(i32 1) #10, !dbg !1451
  unreachable, !dbg !1451

; <label>:173:                                    ; preds = %165
  %174 = load i32, i32* %25, align 4, !dbg !1452
  %175 = icmp eq i32 %174, 2, !dbg !1454
  br i1 %175, label %176, label %179, !dbg !1455

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %16, align 4, !dbg !1456
  %178 = icmp ne i32 %177, 0, !dbg !1456
  br i1 %178, label %191, label %179, !dbg !1458

; <label>:179:                                    ; preds = %176, %173
  %180 = load i32, i32* %25, align 4, !dbg !1459
  %181 = icmp eq i32 %180, 1, !dbg !1460
  br i1 %181, label %182, label %194, !dbg !1461

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %15, align 4, !dbg !1462
  %184 = icmp ne i32 %183, 0, !dbg !1462
  br i1 %184, label %191, label %185, !dbg !1464

; <label>:185:                                    ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1465
  %187 = icmp ne i8* %186, null, !dbg !1465
  br i1 %187, label %191, label %188, !dbg !1467

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %17, align 4, !dbg !1468
  %190 = icmp ne i32 %189, 0, !dbg !1468
  br i1 %190, label %191, label %194, !dbg !1470

; <label>:191:                                    ; preds = %188, %185, %182, %176
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1471
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i32 0, i32 0)), !dbg !1473
  call void @exit(i32 1) #10, !dbg !1474
  unreachable, !dbg !1474

; <label>:194:                                    ; preds = %188, %179
  %195 = load i32, i32* %16, align 4, !dbg !1475
  %196 = icmp ne i32 %195, 0, !dbg !1475
  br i1 %196, label %197, label %203, !dbg !1477

; <label>:197:                                    ; preds = %194
  %198 = load i32, i32* %15, align 4, !dbg !1478
  %199 = icmp ne i32 %198, 0, !dbg !1478
  br i1 %199, label %200, label %203, !dbg !1480

; <label>:200:                                    ; preds = %197
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1481
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.34, i32 0, i32 0)), !dbg !1483
  call void @exit(i32 1) #10, !dbg !1484
  unreachable, !dbg !1484

; <label>:203:                                    ; preds = %197, %194
  %204 = load i8*, i8** %12, align 8, !dbg !1485
  %205 = icmp ne i8* %204, null, !dbg !1487
  br i1 %205, label %206, label %215, !dbg !1488

; <label>:206:                                    ; preds = %203
  %207 = load i8*, i8** %12, align 8, !dbg !1489
  %208 = call i32 @get_mac_addr(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0)), !dbg !1492
  %209 = icmp ne i32 %208, 0, !dbg !1492
  br i1 %209, label %214, label %210, !dbg !1493

; <label>:210:                                    ; preds = %206
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1494
  %212 = load i8*, i8** %12, align 8, !dbg !1496
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* %212), !dbg !1497
  call void @exit(i32 1) #10, !dbg !1498
  unreachable, !dbg !1498

; <label>:214:                                    ; preds = %206
  br label %215, !dbg !1499

; <label>:215:                                    ; preds = %214, %203
  %216 = load i8*, i8** %13, align 8, !dbg !1500
  %217 = icmp ne i8* %216, null, !dbg !1502
  br i1 %217, label %218, label %227, !dbg !1503

; <label>:218:                                    ; preds = %215
  %219 = load i8*, i8** %13, align 8, !dbg !1504
  %220 = call i32 @get_mac_addr(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0)), !dbg !1507
  %221 = icmp ne i32 %220, 0, !dbg !1507
  br i1 %221, label %226, label %222, !dbg !1508

; <label>:222:                                    ; preds = %218
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1509
  %224 = load i8*, i8** %13, align 8, !dbg !1511
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i8* %224), !dbg !1512
  call void @exit(i32 1) #10, !dbg !1513
  unreachable, !dbg !1513

; <label>:226:                                    ; preds = %218
  br label %227, !dbg !1514

; <label>:227:                                    ; preds = %226, %215
  %228 = load i8*, i8** %9, align 8, !dbg !1515
  %229 = icmp ne i8* %228, null, !dbg !1517
  br i1 %229, label %230, label %242, !dbg !1518

; <label>:230:                                    ; preds = %227
  %231 = load i8*, i8** %14, align 8, !dbg !1519
  call void @do_libnet_init(i8* %231, i32 0), !dbg !1521
  %232 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1522
  %233 = load i8*, i8** %9, align 8, !dbg !1524
  %234 = call i32 @xresolve(%struct.libnet_context* %232, i8* %233, i32 1, i32* @srcip), !dbg !1525
  %235 = icmp ne i32 %234, 0, !dbg !1525
  br i1 %235, label %241, label %236, !dbg !1526

; <label>:236:                                    ; preds = %230
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1527
  %238 = load i8*, i8** %9, align 8, !dbg !1529
  %239 = load i8*, i8** %9, align 8, !dbg !1530
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.37, i32 0, i32 0), i8* %238, i8* %239), !dbg !1531
  call void @exit(i32 1) #10, !dbg !1532
  unreachable, !dbg !1532

; <label>:241:                                    ; preds = %230
  br label %242, !dbg !1533

; <label>:242:                                    ; preds = %241, %227
  %243 = load i8*, i8** %10, align 8, !dbg !1534
  %244 = icmp ne i8* %243, null, !dbg !1534
  br i1 %244, label %245, label %257, !dbg !1536

; <label>:245:                                    ; preds = %242
  %246 = load i8*, i8** %14, align 8, !dbg !1537
  call void @do_libnet_init(i8* %246, i32 0), !dbg !1539
  %247 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1540
  %248 = load i8*, i8** %10, align 8, !dbg !1542
  %249 = call i32 @xresolve(%struct.libnet_context* %247, i8* %248, i32 1, i32* @dstip), !dbg !1543
  %250 = icmp ne i32 %249, 0, !dbg !1543
  br i1 %250, label %256, label %251, !dbg !1544

; <label>:251:                                    ; preds = %245
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1545
  %253 = load i8*, i8** %10, align 8, !dbg !1547
  %254 = load i8*, i8** %10, align 8, !dbg !1548
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.38, i32 0, i32 0), i8* %253, i8* %254), !dbg !1549
  call void @exit(i32 1) #10, !dbg !1550
  unreachable, !dbg !1550

; <label>:256:                                    ; preds = %245
  br label %257, !dbg !1551

; <label>:257:                                    ; preds = %256, %242
  %258 = load i16, i16* @vlan_prio, align 2, !dbg !1552
  %259 = sext i16 %258 to i32, !dbg !1552
  %260 = icmp sge i32 %259, 0, !dbg !1554
  br i1 %260, label %261, label %268, !dbg !1555

; <label>:261:                                    ; preds = %257
  %262 = load i16, i16* @vlan_tag, align 2, !dbg !1556
  %263 = sext i16 %262 to i32, !dbg !1556
  %264 = icmp eq i32 %263, -1, !dbg !1558
  br i1 %264, label %265, label %268, !dbg !1559

; <label>:265:                                    ; preds = %261
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1560
  %267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %266, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0)), !dbg !1562
  call void @exit(i32 1) #10, !dbg !1563
  unreachable, !dbg !1563

; <label>:268:                                    ; preds = %261, %257
  %269 = load i16, i16* @vlan_prio, align 2, !dbg !1564
  %270 = sext i16 %269 to i32, !dbg !1564
  %271 = icmp eq i32 %270, -1, !dbg !1566
  br i1 %271, label %272, label %273, !dbg !1567

; <label>:272:                                    ; preds = %268
  store i16 0, i16* @vlan_prio, align 2, !dbg !1568
  br label %273, !dbg !1570

; <label>:273:                                    ; preds = %272, %268
  %274 = load i32, i32* @verbose, align 4, !dbg !1571
  %275 = icmp sgt i32 %274, 1, !dbg !1573
  br i1 %275, label %276, label %292, !dbg !1574

; <label>:276:                                    ; preds = %273
  call void @llvm.dbg.declare(metadata %struct.timespec* %29, metadata !1575, metadata !248), !dbg !1577
  %277 = call i32 @clock_getres(i32 1, %struct.timespec* %29) #9, !dbg !1578
  %278 = icmp ne i32 %277, 0, !dbg !1578
  br i1 %278, label %279, label %285, !dbg !1580

; <label>:279:                                    ; preds = %276
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1581
  %281 = call i32* @__errno_location() #1, !dbg !1583
  %282 = load i32, i32* %281, align 4, !dbg !1584
  %283 = call i8* @strerror(i32 %282) #9, !dbg !1585
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0), i8* %283), !dbg !1587
  br label %291, !dbg !1588

; <label>:285:                                    ; preds = %276
  %286 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0, !dbg !1589
  %287 = load i64, i64* %286, align 8, !dbg !1589
  %288 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 1, !dbg !1591
  %289 = load i64, i64* %288, align 8, !dbg !1591
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0), i64 %287, i64 %289), !dbg !1592
  br label %291

; <label>:291:                                    ; preds = %285, %279
  br label %292, !dbg !1593

; <label>:292:                                    ; preds = %291, %273
  %293 = load i32, i32* @display, align 4, !dbg !1594
  %294 = icmp eq i32 %293, 5, !dbg !1596
  br i1 %294, label %295, label %306, !dbg !1597

; <label>:295:                                    ; preds = %292
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1598
  %297 = call i32 @setvbuf(%struct._IO_FILE* %296, i8* null, i32 2, i64 0) #9, !dbg !1601
  %298 = icmp ne i32 0, %297, !dbg !1602
  br i1 %298, label %299, label %305, !dbg !1603

; <label>:299:                                    ; preds = %295
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1604
  %301 = call i32* @__errno_location() #1, !dbg !1606
  %302 = load i32, i32* %301, align 4, !dbg !1607
  %303 = call i8* @strerror(i32 %302) #9, !dbg !1608
  %304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i32 0, i32 0), i8* %303), !dbg !1610
  br label %305, !dbg !1611

; <label>:305:                                    ; preds = %299, %295
  br label %306, !dbg !1612

; <label>:306:                                    ; preds = %305, %292
  %307 = load i32, i32* @finddup, align 4, !dbg !1613
  %308 = icmp ne i32 %307, 0, !dbg !1613
  br i1 %308, label %309, label %313, !dbg !1615

; <label>:309:                                    ; preds = %306
  %310 = load i32, i32* %21, align 4, !dbg !1616
  %311 = icmp eq i32 %310, -1, !dbg !1618
  br i1 %311, label %312, label %313, !dbg !1619

; <label>:312:                                    ; preds = %309
  store i32 3, i32* %21, align 4, !dbg !1620
  br label %313, !dbg !1622

; <label>:313:                                    ; preds = %312, %309, %306
  %314 = load i32, i32* @optind, align 4, !dbg !1623
  %315 = load i32, i32* %4, align 4, !dbg !1624
  %316 = icmp slt i32 %314, %315, !dbg !1625
  br i1 %316, label %317, label %323, !dbg !1626

; <label>:317:                                    ; preds = %313
  %318 = load i32, i32* @optind, align 4, !dbg !1627
  %319 = sext i32 %318 to i64, !dbg !1628
  %320 = load i8**, i8*** %5, align 8, !dbg !1628
  %321 = getelementptr inbounds i8*, i8** %320, i64 %319, !dbg !1628
  %322 = load i8*, i8** %321, align 8, !dbg !1628
  br label %324, !dbg !1629

; <label>:323:                                    ; preds = %313
  br label %324, !dbg !1630

; <label>:324:                                    ; preds = %323, %317
  %325 = phi i8* [ %322, %317 ], [ null, %323 ], !dbg !1631
  store i8* %325, i8** %19, align 8, !dbg !1633
  %326 = load i32, i32* @finddup, align 4, !dbg !1634
  %327 = icmp ne i32 %326, 0, !dbg !1634
  br i1 %327, label %328, label %342, !dbg !1636

; <label>:328:                                    ; preds = %324
  %329 = load i8*, i8** %19, align 8, !dbg !1637
  %330 = icmp ne i8* %329, null, !dbg !1637
  br i1 %330, label %342, label %331, !dbg !1639

; <label>:331:                                    ; preds = %328
  store i32 1, i32* %11, align 4, !dbg !1640
  %332 = load i8*, i8** %14, align 8, !dbg !1642
  call void @do_libnet_init(i8* %332, i32 0), !dbg !1643
  %333 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1644
  %334 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %333), !dbg !1645
  store i32 %334, i32* @dstip, align 4, !dbg !1646
  %335 = load i32, i32* @verbose, align 4, !dbg !1647
  %336 = icmp ne i32 %335, 0, !dbg !1647
  br i1 %336, label %337, label %341, !dbg !1649

; <label>:337:                                    ; preds = %331
  %338 = load i32, i32* @dstip, align 4, !dbg !1650
  %339 = call i8* @libnet_addr2name4(i32 %338, i8 zeroext 0), !dbg !1652
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0), i8* %339), !dbg !1653
  br label %341, !dbg !1654

; <label>:341:                                    ; preds = %337, %331
  br label %342, !dbg !1655

; <label>:342:                                    ; preds = %341, %328, %324
  %343 = load i32, i32* %25, align 4, !dbg !1656
  %344 = icmp eq i32 %343, 0, !dbg !1658
  br i1 %344, label %345, label %371, !dbg !1659

; <label>:345:                                    ; preds = %342
  %346 = load i32, i32* @optind, align 4, !dbg !1660
  %347 = add nsw i32 %346, 1, !dbg !1663
  %348 = load i32, i32* %4, align 4, !dbg !1664
  %349 = icmp eq i32 %347, %348, !dbg !1665
  br i1 %349, label %350, label %355, !dbg !1666

; <label>:350:                                    ; preds = %345
  %351 = load i8*, i8** %19, align 8, !dbg !1667
  %352 = call i32 @is_mac_addr(i8* %351), !dbg !1669
  %353 = icmp ne i32 %352, 0, !dbg !1669
  %354 = select i1 %353, i32 1, i32 2, !dbg !1669
  store i32 %354, i32* %25, align 4, !dbg !1670
  br label %370, !dbg !1671

; <label>:355:                                    ; preds = %345
  %356 = load i32, i32* %11, align 4, !dbg !1672
  %357 = icmp ne i32 %356, 0, !dbg !1672
  br i1 %357, label %358, label %369, !dbg !1672

; <label>:358:                                    ; preds = %355
  store i32 2, i32* %25, align 4, !dbg !1675
  %359 = load i8*, i8** %14, align 8, !dbg !1677
  call void @do_libnet_init(i8* %359, i32 0), !dbg !1678
  %360 = load i32, i32* @dstip, align 4, !dbg !1679
  %361 = call i8* @libnet_addr2name4(i32 %360, i8 zeroext 0), !dbg !1680
  %362 = call noalias i8* @strdup(i8* %361) #9, !dbg !1681
  store i8* %362, i8** %19, align 8, !dbg !1683
  %363 = load i8*, i8** %19, align 8, !dbg !1684
  %364 = icmp ne i8* %363, null, !dbg !1684
  br i1 %364, label %368, label %365, !dbg !1686

; <label>:365:                                    ; preds = %358
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1687
  %367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %366, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0)), !dbg !1689
  call void @exit(i32 1) #10, !dbg !1690
  unreachable, !dbg !1690

; <label>:368:                                    ; preds = %358
  br label %369, !dbg !1691

; <label>:369:                                    ; preds = %368, %355
  br label %370

; <label>:370:                                    ; preds = %369, %350
  br label %371, !dbg !1692

; <label>:371:                                    ; preds = %370, %342
  %372 = load i8*, i8** %19, align 8, !dbg !1693
  %373 = icmp ne i8* %372, null, !dbg !1693
  br i1 %373, label %375, label %374, !dbg !1695

; <label>:374:                                    ; preds = %371
  call void @usage(i32 1), !dbg !1696
  br label %375, !dbg !1698

; <label>:375:                                    ; preds = %374, %371
  %376 = load i32, i32* %25, align 4, !dbg !1699
  %377 = icmp eq i32 %376, 0, !dbg !1701
  br i1 %377, label %378, label %379, !dbg !1702

; <label>:378:                                    ; preds = %375
  call void @usage(i32 1), !dbg !1703
  br label %379, !dbg !1705

; <label>:379:                                    ; preds = %378, %375
  %380 = load i8*, i8** %14, align 8, !dbg !1706
  call void @do_libnet_init(i8* %380, i32 0), !dbg !1707
  %381 = load i32, i32* %25, align 4, !dbg !1708
  %382 = icmp eq i32 %381, 2, !dbg !1710
  br i1 %382, label %383, label %406, !dbg !1711

; <label>:383:                                    ; preds = %379
  %384 = load i32, i32* %11, align 4, !dbg !1712
  %385 = icmp ne i32 %384, 0, !dbg !1712
  br i1 %385, label %406, label %386, !dbg !1714

; <label>:386:                                    ; preds = %383
  %387 = load i8*, i8** %19, align 8, !dbg !1715
  %388 = call i32 @is_mac_addr(i8* %387), !dbg !1718
  %389 = icmp ne i32 %388, 0, !dbg !1718
  br i1 %389, label %390, label %393, !dbg !1719

; <label>:390:                                    ; preds = %386
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1720
  %392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %391, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.45, i32 0, i32 0)), !dbg !1722
  call void @exit(i32 1) #10, !dbg !1723
  unreachable, !dbg !1723

; <label>:393:                                    ; preds = %386
  %394 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1724
  %395 = load i8*, i8** %19, align 8, !dbg !1726
  %396 = call i32 @xresolve(%struct.libnet_context* %394, i8* %395, i32 1, i32* @dstip), !dbg !1727
  %397 = icmp ne i32 %396, 0, !dbg !1727
  br i1 %397, label %402, label %398, !dbg !1728

; <label>:398:                                    ; preds = %393
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1729
  %400 = load i8*, i8** %19, align 8, !dbg !1731
  %401 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %399, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i8* %400), !dbg !1732
  call void @exit(i32 1) #10, !dbg !1733
  unreachable, !dbg !1733

; <label>:402:                                    ; preds = %393
  %403 = load i32, i32* @dstip, align 4, !dbg !1734
  %404 = call i8* @libnet_addr2name4(i32 %403, i8 zeroext 0), !dbg !1735
  %405 = call noalias i8* @strdup(i8* %404) #9, !dbg !1736
  store i8* %405, i8** %19, align 8, !dbg !1738
  br label %406, !dbg !1739

; <label>:406:                                    ; preds = %402, %383, %379
  %407 = load i32, i32* %25, align 4, !dbg !1740
  %408 = icmp eq i32 %407, 1, !dbg !1742
  br i1 %408, label %409, label %439, !dbg !1743

; <label>:409:                                    ; preds = %406
  %410 = load i32, i32* @optind, align 4, !dbg !1744
  %411 = add nsw i32 %410, 1, !dbg !1747
  %412 = load i32, i32* %4, align 4, !dbg !1748
  %413 = icmp ne i32 %411, %412, !dbg !1749
  br i1 %413, label %414, label %415, !dbg !1750

; <label>:414:                                    ; preds = %409
  call void @usage(i32 1), !dbg !1751
  br label %415, !dbg !1753

; <label>:415:                                    ; preds = %414, %409
  %416 = load i8*, i8** %19, align 8, !dbg !1754
  %417 = call i32 @is_mac_addr(i8* %416), !dbg !1756
  %418 = icmp ne i32 %417, 0, !dbg !1756
  br i1 %418, label %422, label %419, !dbg !1757

; <label>:419:                                    ; preds = %415
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1758
  %421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.47, i32 0, i32 0)), !dbg !1760
  call void @exit(i32 1) #10, !dbg !1761
  unreachable, !dbg !1761

; <label>:422:                                    ; preds = %415
  %423 = load i32, i32* @optind, align 4, !dbg !1762
  %424 = sext i32 %423 to i64, !dbg !1764
  %425 = load i8**, i8*** %5, align 8, !dbg !1764
  %426 = getelementptr inbounds i8*, i8** %425, i64 %424, !dbg !1764
  %427 = load i8*, i8** %426, align 8, !dbg !1764
  %428 = call i32 @get_mac_addr(i8* %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0)), !dbg !1765
  %429 = icmp ne i32 %428, 0, !dbg !1765
  br i1 %429, label %438, label %430, !dbg !1766

; <label>:430:                                    ; preds = %422
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1767
  %432 = load i32, i32* @optind, align 4, !dbg !1769
  %433 = sext i32 %432 to i64, !dbg !1770
  %434 = load i8**, i8*** %5, align 8, !dbg !1770
  %435 = getelementptr inbounds i8*, i8** %434, i64 %433, !dbg !1770
  %436 = load i8*, i8** %435, align 8, !dbg !1770
  %437 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %431, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i8* %436), !dbg !1771
  store i32 1, i32* %3, align 4, !dbg !1772
  br label %814, !dbg !1772

; <label>:438:                                    ; preds = %422
  br label %439, !dbg !1773

; <label>:439:                                    ; preds = %438, %406
  %440 = load i8*, i8** %19, align 8, !dbg !1774
  store i8* %440, i8** @target, align 8, !dbg !1775
  %441 = load i8*, i8** %14, align 8, !dbg !1776
  %442 = icmp ne i8* %441, null, !dbg !1776
  br i1 %442, label %500, label %443, !dbg !1778

; <label>:443:                                    ; preds = %439
  %444 = load i32, i32* %22, align 4, !dbg !1779
  %445 = icmp ne i32 %444, 0, !dbg !1779
  br i1 %445, label %459, label %446, !dbg !1782

; <label>:446:                                    ; preds = %443
  %447 = load i32, i32* @srcip, align 4, !dbg !1783
  %448 = load i32, i32* @dstip, align 4, !dbg !1785
  %449 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1786
  %450 = call i8* @arping_lookupdev(i32 %447, i32 %448, i8* %449), !dbg !1787
  store i8* %450, i8** %14, align 8, !dbg !1788
  %451 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1789
  call void @strip_newline(i8* %451), !dbg !1790
  %452 = load i8*, i8** %14, align 8, !dbg !1791
  %453 = icmp ne i8* %452, null, !dbg !1791
  br i1 %453, label %458, label %454, !dbg !1793

; <label>:454:                                    ; preds = %446
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1794
  %456 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1796
  %457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0), i8* %456), !dbg !1797
  br label %458, !dbg !1798

; <label>:458:                                    ; preds = %454, %446
  br label %459, !dbg !1799

; <label>:459:                                    ; preds = %458, %443
  %460 = load i8*, i8** %14, align 8, !dbg !1800
  %461 = icmp ne i8* %460, null, !dbg !1800
  br i1 %461, label %478, label %462, !dbg !1802

; <label>:462:                                    ; preds = %459
  %463 = load i32, i32* @srcip, align 4, !dbg !1803
  %464 = load i32, i32* @dstip, align 4, !dbg !1805
  %465 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1806
  %466 = call i8* @arping_lookupdev_default(i32 %463, i32 %464, i8* %465), !dbg !1807
  store i8* %466, i8** %14, align 8, !dbg !1808
  %467 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1809
  call void @strip_newline(i8* %467), !dbg !1810
  %468 = load i8*, i8** %14, align 8, !dbg !1811
  %469 = icmp ne i8* %468, null, !dbg !1811
  br i1 %469, label %470, label %477, !dbg !1813

; <label>:470:                                    ; preds = %462
  %471 = load i32, i32* %22, align 4, !dbg !1814
  %472 = icmp ne i32 %471, 0, !dbg !1814
  br i1 %472, label %477, label %473, !dbg !1816

; <label>:473:                                    ; preds = %470
  %474 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1817
  %475 = load i8*, i8** %14, align 8, !dbg !1819
  %476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %474, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.50, i32 0, i32 0), i8* %475), !dbg !1820
  br label %477, !dbg !1821

; <label>:477:                                    ; preds = %473, %470, %462
  br label %478, !dbg !1822

; <label>:478:                                    ; preds = %477, %459
  %479 = load i8*, i8** %14, align 8, !dbg !1823
  %480 = icmp ne i8* %479, null, !dbg !1823
  br i1 %480, label %485, label %481, !dbg !1825

; <label>:481:                                    ; preds = %478
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1826
  %483 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1828
  %484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %482, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i32 0, i32 0), i8* %483), !dbg !1829
  call void @exit(i32 1) #10, !dbg !1830
  unreachable, !dbg !1830

; <label>:485:                                    ; preds = %478
  %486 = load i8*, i8** %14, align 8, !dbg !1831
  %487 = call i32 @strcmp(i8* %486, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1833
  %488 = icmp ne i32 %487, 0, !dbg !1833
  br i1 %488, label %489, label %493, !dbg !1834

; <label>:489:                                    ; preds = %485
  %490 = load i8*, i8** %14, align 8, !dbg !1835
  %491 = call i32 @strcmp(i8* %490, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1837
  %492 = icmp ne i32 %491, 0, !dbg !1837
  br i1 %492, label %499, label %493, !dbg !1838

; <label>:493:                                    ; preds = %489, %485
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1840
  %495 = load i8*, i8** %14, align 8, !dbg !1842
  %496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %494, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.53, i32 0, i32 0), i8* %495), !dbg !1843
  %497 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1844
  %498 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %497, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0)), !dbg !1845
  br label %499, !dbg !1846

; <label>:499:                                    ; preds = %493, %489
  br label %500, !dbg !1847

; <label>:500:                                    ; preds = %499, %439
  %501 = load i8*, i8** %14, align 8, !dbg !1848
  call void @do_libnet_init(i8* %501, i32 0), !dbg !1849
  %502 = load i8*, i8** %14, align 8, !dbg !1850
  %503 = load i32, i32* %8, align 4, !dbg !1852
  %504 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1853
  %505 = call %struct.pcap* @do_pcap_open_live(i8* %502, i32 100, i32 %503, i32 10, i8* %504), !dbg !1854
  store %struct.pcap* %505, %struct.pcap** %24, align 8, !dbg !1855
  %506 = icmp ne %struct.pcap* %505, null, !dbg !1855
  br i1 %506, label %512, label %507, !dbg !1856

; <label>:507:                                    ; preds = %500
  %508 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1857
  call void @strip_newline(i8* %508), !dbg !1859
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1860
  %510 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1861
  %511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %509, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i8* %510), !dbg !1862
  call void @exit(i32 1) #10, !dbg !1863
  unreachable, !dbg !1863

; <label>:512:                                    ; preds = %500
  %513 = load i8*, i8** %18, align 8, !dbg !1864
  call void @drop_privileges(i8* %513), !dbg !1865
  %514 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1866
  %515 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1868
  %516 = call i32 @pcap_setnonblock(%struct.pcap* %514, i32 1, i8* %515), !dbg !1869
  %517 = icmp ne i32 %516, 0, !dbg !1869
  br i1 %517, label %518, label %523, !dbg !1870

; <label>:518:                                    ; preds = %512
  %519 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1871
  call void @strip_newline(i8* %519), !dbg !1873
  %520 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1874
  %521 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1875
  %522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %520, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i32 0, i32 0), i8* %521), !dbg !1876
  call void @exit(i32 1) #10, !dbg !1877
  unreachable, !dbg !1877

; <label>:523:                                    ; preds = %512
  %524 = load i32, i32* @verbose, align 4, !dbg !1878
  %525 = icmp sgt i32 %524, 1, !dbg !1880
  br i1 %525, label %526, label %530, !dbg !1881

; <label>:526:                                    ; preds = %523
  %527 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1882
  %528 = call i32 @pcap_get_selectable_fd(%struct.pcap* %527), !dbg !1884
  %529 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0), i32 %528), !dbg !1885
  br label %530, !dbg !1886

; <label>:530:                                    ; preds = %526, %523
  %531 = load i32, i32* %25, align 4, !dbg !1887
  %532 = icmp eq i32 %531, 2, !dbg !1889
  br i1 %532, label %533, label %557, !dbg !1890

; <label>:533:                                    ; preds = %530
  %534 = load i16, i16* @vlan_tag, align 2, !dbg !1891
  %535 = sext i16 %534 to i32, !dbg !1891
  %536 = icmp sge i32 %535, 0, !dbg !1894
  br i1 %536, label %537, label %542, !dbg !1895

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1896
  %539 = load i16, i16* @vlan_tag, align 2, !dbg !1898
  %540 = sext i16 %539 to i32, !dbg !1898
  %541 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %538, i64 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 %540) #9, !dbg !1899
  br label %545, !dbg !1900

; <label>:542:                                    ; preds = %533
  %543 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1901
  %544 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %543, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !1903
  br label %545

; <label>:545:                                    ; preds = %542, %537
  %546 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1904
  %547 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1906
  %548 = call i32 @pcap_compile(%struct.pcap* %546, %struct.bpf_program* %23, i8* %547, i32 0, i32 -1), !dbg !1907
  %549 = icmp eq i32 -1, %548, !dbg !1908
  br i1 %549, label %550, label %556, !dbg !1909

; <label>:550:                                    ; preds = %545
  %551 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1910
  %552 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1912
  %553 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1913
  %554 = call i8* @pcap_geterr(%struct.pcap* %553), !dbg !1914
  %555 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %551, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i8* %552, i8* %554), !dbg !1915
  call void @exit(i32 1) #10, !dbg !1916
  unreachable, !dbg !1916

; <label>:556:                                    ; preds = %545
  br label %581, !dbg !1917

; <label>:557:                                    ; preds = %530
  %558 = load i16, i16* @vlan_tag, align 2, !dbg !1918
  %559 = sext i16 %558 to i32, !dbg !1918
  %560 = icmp sge i32 %559, 0, !dbg !1921
  br i1 %560, label %561, label %566, !dbg !1922

; <label>:561:                                    ; preds = %557
  %562 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1923
  %563 = load i16, i16* @vlan_tag, align 2, !dbg !1925
  %564 = sext i16 %563 to i32, !dbg !1925
  %565 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %562, i64 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i32 %564) #9, !dbg !1926
  br label %569, !dbg !1927

; <label>:566:                                    ; preds = %557
  %567 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1928
  %568 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %567, i64 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0)) #9, !dbg !1930
  br label %569

; <label>:569:                                    ; preds = %566, %561
  %570 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1931
  %571 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1933
  %572 = call i32 @pcap_compile(%struct.pcap* %570, %struct.bpf_program* %23, i8* %571, i32 0, i32 -1), !dbg !1934
  %573 = icmp eq i32 -1, %572, !dbg !1935
  br i1 %573, label %574, label %580, !dbg !1936

; <label>:574:                                    ; preds = %569
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1937
  %576 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i32 0, i32 0, !dbg !1939
  %577 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1940
  %578 = call i8* @pcap_geterr(%struct.pcap* %577), !dbg !1941
  %579 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %575, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i8* %576, i8* %578), !dbg !1942
  call void @exit(i32 1) #10, !dbg !1943
  unreachable, !dbg !1943

; <label>:580:                                    ; preds = %569
  br label %581

; <label>:581:                                    ; preds = %580, %556
  %582 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1944
  %583 = call i32 @pcap_setfilter(%struct.pcap* %582, %struct.bpf_program* %23), !dbg !1946
  %584 = icmp eq i32 -1, %583, !dbg !1947
  br i1 %584, label %585, label %590, !dbg !1948

; <label>:585:                                    ; preds = %581
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1949
  %587 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !1951
  %588 = call i8* @pcap_geterr(%struct.pcap* %587), !dbg !1952
  %589 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %586, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), i8* %588), !dbg !1953
  call void @exit(i32 1) #10, !dbg !1954
  unreachable, !dbg !1954

; <label>:590:                                    ; preds = %581
  %591 = load i8*, i8** %12, align 8, !dbg !1955
  %592 = icmp eq i8* %591, null, !dbg !1957
  br i1 %592, label %593, label %605, !dbg !1958

; <label>:593:                                    ; preds = %590
  %594 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1959
  %595 = call %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context* %594), !dbg !1962
  %596 = bitcast %struct.libnet_ether_addr* %595 to i8*, !dbg !1963
  store i8* %596, i8** %7, align 8, !dbg !1964
  %597 = icmp ne i8* %596, null, !dbg !1964
  br i1 %597, label %603, label %598, !dbg !1965

; <label>:598:                                    ; preds = %593
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1966
  %600 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1968
  %601 = call i8* @libnet_geterror(%struct.libnet_context* %600), !dbg !1969
  %602 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %599, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0), i8* %601), !dbg !1970
  call void @exit(i32 1) #10, !dbg !1971
  unreachable, !dbg !1971

; <label>:603:                                    ; preds = %593
  %604 = load i8*, i8** %7, align 8, !dbg !1972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i8* %604, i64 6, i32 1, i1 false), !dbg !1973
  br label %605, !dbg !1974

; <label>:605:                                    ; preds = %603, %590
  %606 = load i8*, i8** %9, align 8, !dbg !1975
  %607 = icmp eq i8* %606, null, !dbg !1977
  br i1 %607, label %608, label %619, !dbg !1978

; <label>:608:                                    ; preds = %605
  %609 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1979
  %610 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %609), !dbg !1982
  store i32 %610, i32* @srcip, align 4, !dbg !1983
  %611 = icmp eq i32 -1, %610, !dbg !1984
  br i1 %611, label %612, label %618, !dbg !1985

; <label>:612:                                    ; preds = %608
  %613 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1986
  %614 = load i8*, i8** %14, align 8, !dbg !1988
  %615 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !1989
  %616 = call i8* @libnet_geterror(%struct.libnet_context* %615), !dbg !1990
  %617 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %613, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.65, i32 0, i32 0), i8* %614, i8* %616), !dbg !1991
  call void @exit(i32 1) #10, !dbg !1992
  unreachable, !dbg !1992

; <label>:618:                                    ; preds = %608
  br label %619, !dbg !1993

; <label>:619:                                    ; preds = %618, %605
  call void (...) @do_signal_init(), !dbg !1994
  %620 = load i32, i32* @verbose, align 4, !dbg !1995
  %621 = icmp ne i32 %620, 0, !dbg !1995
  br i1 %621, label %622, label %630, !dbg !1997

; <label>:622:                                    ; preds = %619
  call void @llvm.dbg.declare(metadata [128 x i8]* %30, metadata !1998, metadata !248), !dbg !2000
  %623 = load i8*, i8** %14, align 8, !dbg !2001
  %624 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2002
  %625 = call i32 @libnet_get_ipaddr4(%struct.libnet_context* %624), !dbg !2003
  %626 = call i8* @libnet_addr2name4(i32 %625, i8 zeroext 0), !dbg !2004
  %627 = getelementptr inbounds [128 x i8], [128 x i8]* %30, i32 0, i32 0, !dbg !2006
  %628 = call i8* @format_mac(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i8* %627, i64 128), !dbg !2007
  %629 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.66, i32 0, i32 0), i8* %623, i8* %626, i8* %628), !dbg !2008
  br label %630, !dbg !2009

; <label>:630:                                    ; preds = %622, %619
  %631 = load i32, i32* @display, align 4, !dbg !2010
  %632 = icmp eq i32 %631, 0, !dbg !2012
  br i1 %632, label %633, label %636, !dbg !2013

; <label>:633:                                    ; preds = %630
  %634 = load i8*, i8** %19, align 8, !dbg !2014
  %635 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* %634), !dbg !2016
  br label %636, !dbg !2017

; <label>:636:                                    ; preds = %633, %630
  %637 = load double, double* %27, align 8, !dbg !2018
  %638 = fcmp ogt double %637, 0.000000e+00, !dbg !2020
  br i1 %638, label %639, label %643, !dbg !2021

; <label>:639:                                    ; preds = %636
  call void @llvm.dbg.declare(metadata %struct.timespec* %31, metadata !2022, metadata !248), !dbg !2024
  call void @getclock(%struct.timespec* %31), !dbg !2025
  %640 = call double @timespec2dbl(%struct.timespec* %31), !dbg !2026
  %641 = load double, double* %27, align 8, !dbg !2027
  %642 = fadd double %641, %640, !dbg !2027
  store double %642, double* %27, align 8, !dbg !2027
  br label %643, !dbg !2028

; <label>:643:                                    ; preds = %639, %636
  %644 = load i32, i32* %25, align 4, !dbg !2029
  %645 = icmp eq i32 %644, 2, !dbg !2031
  br i1 %645, label %646, label %674, !dbg !2032

; <label>:646:                                    ; preds = %643
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2033, metadata !248), !dbg !2035
  store i32 0, i32* %32, align 4, !dbg !2036
  br label %647, !dbg !2038

; <label>:647:                                    ; preds = %670, %646
  %648 = load i32, i32* %21, align 4, !dbg !2039
  %649 = icmp slt i32 %648, 0, !dbg !2042
  br i1 %649, label %654, label %650, !dbg !2043

; <label>:650:                                    ; preds = %647
  %651 = load i32, i32* %32, align 4, !dbg !2044
  %652 = load i32, i32* %21, align 4, !dbg !2046
  %653 = icmp slt i32 %651, %652, !dbg !2047
  br i1 %653, label %654, label %658, !dbg !2048

; <label>:654:                                    ; preds = %650, %647
  %655 = load volatile i32, i32* @time_to_die, align 4, !dbg !2049
  %656 = icmp ne i32 %655, 0, !dbg !2051
  %657 = xor i1 %656, true, !dbg !2051
  br label %658

; <label>:658:                                    ; preds = %654, %650
  %659 = phi i1 [ false, %650 ], [ %657, %654 ]
  br i1 %659, label %660, label %673, !dbg !2052

; <label>:660:                                    ; preds = %658
  call void @pingip_send(), !dbg !2054
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2056, metadata !248), !dbg !2057
  %661 = load double, double* %27, align 8, !dbg !2058
  %662 = load i32, i32* %26, align 4, !dbg !2059
  %663 = call i32 @wait_time(double %661, i32 %662), !dbg !2060
  store i32 %663, i32* %33, align 4, !dbg !2057
  %664 = load i32, i32* %33, align 4, !dbg !2061
  %665 = icmp eq i32 %664, 0, !dbg !2063
  br i1 %665, label %666, label %667, !dbg !2064

; <label>:666:                                    ; preds = %660
  br label %673, !dbg !2065

; <label>:667:                                    ; preds = %660
  %668 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !2067
  %669 = load i32, i32* %33, align 4, !dbg !2068
  call void @ping_recv(%struct.pcap* %668, i32 %669, void (i8*, %struct.pcap_pkthdr*, i8*)* @pingip_recv), !dbg !2069
  br label %670, !dbg !2070

; <label>:670:                                    ; preds = %667
  %671 = load i32, i32* %32, align 4, !dbg !2071
  %672 = add nsw i32 %671, 1, !dbg !2071
  store i32 %672, i32* %32, align 4, !dbg !2071
  br label %647, !dbg !2073, !llvm.loop !2074

; <label>:673:                                    ; preds = %666, %658
  br label %706, !dbg !2076

; <label>:674:                                    ; preds = %643
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2077, metadata !248), !dbg !2079
  store i32 0, i32* %34, align 4, !dbg !2080
  br label %675, !dbg !2082

; <label>:675:                                    ; preds = %702, %674
  %676 = load i32, i32* %21, align 4, !dbg !2083
  %677 = icmp slt i32 %676, 0, !dbg !2086
  br i1 %677, label %682, label %678, !dbg !2087

; <label>:678:                                    ; preds = %675
  %679 = load i32, i32* %34, align 4, !dbg !2088
  %680 = load i32, i32* %21, align 4, !dbg !2090
  %681 = icmp slt i32 %679, %680, !dbg !2091
  br i1 %681, label %682, label %686, !dbg !2092

; <label>:682:                                    ; preds = %678, %675
  %683 = load volatile i32, i32* @time_to_die, align 4, !dbg !2093
  %684 = icmp ne i32 %683, 0, !dbg !2095
  %685 = xor i1 %684, true, !dbg !2095
  br label %686

; <label>:686:                                    ; preds = %682, %678
  %687 = phi i1 [ false, %678 ], [ %685, %682 ]
  br i1 %687, label %688, label %705, !dbg !2096

; <label>:688:                                    ; preds = %686
  %689 = call i32 @rand() #9, !dbg !2098
  %690 = trunc i32 %689 to i16, !dbg !2098
  %691 = load i32, i32* %34, align 4, !dbg !2100
  %692 = trunc i32 %691 to i16, !dbg !2100
  call void @pingmac_send(i16 zeroext %690, i16 zeroext %692), !dbg !2101
  call void @llvm.dbg.declare(metadata i32* %35, metadata !2103, metadata !248), !dbg !2104
  %693 = load double, double* %27, align 8, !dbg !2105
  %694 = load i32, i32* %26, align 4, !dbg !2106
  %695 = call i32 @wait_time(double %693, i32 %694), !dbg !2107
  store i32 %695, i32* %35, align 4, !dbg !2104
  %696 = load i32, i32* %35, align 4, !dbg !2108
  %697 = icmp eq i32 %696, 0, !dbg !2110
  br i1 %697, label %698, label %699, !dbg !2111

; <label>:698:                                    ; preds = %688
  br label %705, !dbg !2112

; <label>:699:                                    ; preds = %688
  %700 = load %struct.pcap*, %struct.pcap** %24, align 8, !dbg !2114
  %701 = load i32, i32* %35, align 4, !dbg !2115
  call void @ping_recv(%struct.pcap* %700, i32 %701, void (i8*, %struct.pcap_pkthdr*, i8*)* @pingmac_recv), !dbg !2116
  br label %702, !dbg !2117

; <label>:702:                                    ; preds = %699
  %703 = load i32, i32* %34, align 4, !dbg !2118
  %704 = add nsw i32 %703, 1, !dbg !2118
  store i32 %704, i32* %34, align 4, !dbg !2118
  br label %675, !dbg !2120, !llvm.loop !2121

; <label>:705:                                    ; preds = %698, %686
  br label %706

; <label>:706:                                    ; preds = %705, %673
  %707 = load i32, i32* @display, align 4, !dbg !2123
  %708 = icmp eq i32 %707, 5, !dbg !2125
  br i1 %708, label %709, label %740, !dbg !2126

; <label>:709:                                    ; preds = %706
  call void @llvm.dbg.declare(metadata float* %36, metadata !2127, metadata !248), !dbg !2130
  %710 = load i32, i32* @numrecvd, align 4, !dbg !2131
  %711 = uitofp i32 %710 to float, !dbg !2132
  %712 = fpext float %711 to double, !dbg !2132
  %713 = fmul double 1.000000e+02, %712, !dbg !2133
  %714 = load i32, i32* @numsent, align 4, !dbg !2134
  %715 = uitofp i32 %714 to float, !dbg !2135
  %716 = fpext float %715 to double, !dbg !2135
  %717 = fdiv double %713, %716, !dbg !2136
  %718 = fsub double 1.000000e+02, %717, !dbg !2137
  %719 = fptrunc double %718 to float, !dbg !2138
  store float %719, float* %36, align 4, !dbg !2130
  %720 = load float, float* %36, align 4, !dbg !2139
  %721 = fpext float %720 to double, !dbg !2139
  %722 = fcmp olt double %721, 0.000000e+00, !dbg !2140
  br i1 %722, label %723, label %724, !dbg !2141

; <label>:723:                                    ; preds = %709
  br label %727, !dbg !2142

; <label>:724:                                    ; preds = %709
  %725 = load float, float* %36, align 4, !dbg !2144
  %726 = fpext float %725 to double, !dbg !2144
  br label %727, !dbg !2146

; <label>:727:                                    ; preds = %724, %723
  %728 = phi double [ 0.000000e+00, %723 ], [ %726, %724 ], !dbg !2147
  %729 = load float, float* %36, align 4, !dbg !2149
  %730 = fpext float %729 to double, !dbg !2149
  %731 = fcmp olt double %730, 0.000000e+00, !dbg !2150
  br i1 %731, label %732, label %736, !dbg !2151

; <label>:732:                                    ; preds = %727
  %733 = load i32, i32* @numrecvd, align 4, !dbg !2152
  %734 = load i32, i32* @numsent, align 4, !dbg !2153
  %735 = sub i32 %733, %734, !dbg !2154
  br label %737, !dbg !2155

; <label>:736:                                    ; preds = %727
  br label %737, !dbg !2156

; <label>:737:                                    ; preds = %736, %732
  %738 = phi i32 [ %735, %732 ], [ 0, %736 ], !dbg !2157
  %739 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0), double %728, i32 %738), !dbg !2158
  br label %804, !dbg !2159

; <label>:740:                                    ; preds = %706
  %741 = load i32, i32* @display, align 4, !dbg !2160
  %742 = icmp eq i32 %741, 0, !dbg !2163
  br i1 %742, label %743, label %803, !dbg !2160

; <label>:743:                                    ; preds = %740
  call void @llvm.dbg.declare(metadata float* %37, metadata !2164, metadata !248), !dbg !2166
  %744 = load i32, i32* @numrecvd, align 4, !dbg !2167
  %745 = uitofp i32 %744 to float, !dbg !2168
  %746 = fpext float %745 to double, !dbg !2168
  %747 = fmul double 1.000000e+02, %746, !dbg !2169
  %748 = load i32, i32* @numsent, align 4, !dbg !2170
  %749 = uitofp i32 %748 to float, !dbg !2171
  %750 = fpext float %749 to double, !dbg !2171
  %751 = fdiv double %747, %750, !dbg !2172
  %752 = fsub double 1.000000e+02, %751, !dbg !2173
  %753 = fptrunc double %752 to float, !dbg !2174
  store float %753, float* %37, align 4, !dbg !2166
  %754 = load i8*, i8** @target, align 8, !dbg !2175
  %755 = load i32, i32* @numsent, align 4, !dbg !2176
  %756 = load i32, i32* @numrecvd, align 4, !dbg !2177
  %757 = load float, float* %37, align 4, !dbg !2178
  %758 = fpext float %757 to double, !dbg !2178
  %759 = fcmp olt double %758, 0.000000e+00, !dbg !2179
  br i1 %759, label %760, label %761, !dbg !2180

; <label>:760:                                    ; preds = %743
  br label %764, !dbg !2181

; <label>:761:                                    ; preds = %743
  %762 = load float, float* %37, align 4, !dbg !2183
  %763 = fpext float %762 to double, !dbg !2183
  br label %764, !dbg !2185

; <label>:764:                                    ; preds = %761, %760
  %765 = phi double [ 0.000000e+00, %760 ], [ %763, %761 ], !dbg !2186
  %766 = load float, float* %37, align 4, !dbg !2188
  %767 = fpext float %766 to double, !dbg !2188
  %768 = fcmp olt double %767, 0.000000e+00, !dbg !2189
  br i1 %768, label %769, label %773, !dbg !2190

; <label>:769:                                    ; preds = %764
  %770 = load i32, i32* @numrecvd, align 4, !dbg !2191
  %771 = load i32, i32* @numsent, align 4, !dbg !2192
  %772 = sub i32 %770, %771, !dbg !2193
  br label %774, !dbg !2194

; <label>:773:                                    ; preds = %764
  br label %774, !dbg !2195

; <label>:774:                                    ; preds = %773, %769
  %775 = phi i32 [ %772, %769 ], [ 0, %773 ], !dbg !2196
  %776 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.69, i32 0, i32 0), i8* %754, i32 %755, i32 %756, double %765, i32 %775), !dbg !2197
  %777 = load i32, i32* @numrecvd, align 4, !dbg !2198
  %778 = icmp ne i32 %777, 0, !dbg !2198
  br i1 %778, label %779, label %801, !dbg !2200

; <label>:779:                                    ; preds = %774
  call void @llvm.dbg.declare(metadata double* %38, metadata !2201, metadata !248), !dbg !2203
  %780 = load double, double* @stats_total_time, align 8, !dbg !2204
  %781 = load i32, i32* @numrecvd, align 4, !dbg !2205
  %782 = uitofp i32 %781 to double, !dbg !2205
  %783 = fdiv double %780, %782, !dbg !2206
  store double %783, double* %38, align 8, !dbg !2203
  %784 = load double, double* @stats_min_time, align 8, !dbg !2207
  %785 = fmul double 1.000000e+03, %784, !dbg !2208
  %786 = load double, double* %38, align 8, !dbg !2209
  %787 = fmul double 1.000000e+03, %786, !dbg !2210
  %788 = load double, double* @stats_max_time, align 8, !dbg !2211
  %789 = fmul double 1.000000e+03, %788, !dbg !2212
  %790 = load double, double* @stats_total_sq_time, align 8, !dbg !2213
  %791 = load i32, i32* @numrecvd, align 4, !dbg !2214
  %792 = uitofp i32 %791 to double, !dbg !2214
  %793 = fdiv double %790, %792, !dbg !2215
  %794 = load double, double* %38, align 8, !dbg !2216
  %795 = load double, double* %38, align 8, !dbg !2217
  %796 = fmul double %794, %795, !dbg !2218
  %797 = fsub double %793, %796, !dbg !2219
  %798 = call double @sqrt(double %797) #9, !dbg !2220
  %799 = fmul double 1.000000e+03, %798, !dbg !2221
  %800 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0), double %785, double %787, double %789, double %799), !dbg !2222
  br label %801, !dbg !2223

; <label>:801:                                    ; preds = %779, %774
  %802 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !2224
  br label %803, !dbg !2225

; <label>:803:                                    ; preds = %801, %740
  br label %804

; <label>:804:                                    ; preds = %803, %737
  %805 = load i32, i32* @finddup, align 4, !dbg !2226
  %806 = icmp ne i32 %805, 0, !dbg !2226
  br i1 %806, label %807, label %809, !dbg !2228

; <label>:807:                                    ; preds = %804
  %808 = load i32, i32* @dupfound, align 4, !dbg !2229
  store i32 %808, i32* %3, align 4, !dbg !2231
  br label %814, !dbg !2231

; <label>:809:                                    ; preds = %804
  %810 = load i32, i32* @numrecvd, align 4, !dbg !2232
  %811 = icmp ne i32 %810, 0, !dbg !2234
  %812 = xor i1 %811, true, !dbg !2234
  %813 = zext i1 %812 to i32, !dbg !2234
  store i32 %813, i32* %3, align 4, !dbg !2235
  br label %814, !dbg !2235

; <label>:814:                                    ; preds = %809, %807, %430
  %815 = load i32, i32* %3, align 4, !dbg !2236
  ret i32 %815, !dbg !2236
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i32) #0 !dbg !2237 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2238, metadata !248), !dbg !2239
  call void @standard_usage(), !dbg !2240
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.86, i32 0, i32 0)), !dbg !2241
  %4 = load i32, i32* %2, align 4, !dbg !2244
  call void @exit(i32 %4) #10, !dbg !2245
  unreachable, !dbg !2245
                                                  ; No predecessors!
  ret void, !dbg !2246
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @xresolve(%struct.libnet_context*, i8*, i32, i32*) #0 !dbg !2247 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libnet_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.libnet_context* %0, %struct.libnet_context** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %6, metadata !2251, metadata !248), !dbg !2252
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2253, metadata !248), !dbg !2254
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2255, metadata !248), !dbg !2256
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2257, metadata !248), !dbg !2258
  %10 = load i8*, i8** @ip_broadcast, align 8, !dbg !2259
  %11 = load i8*, i8** %7, align 8, !dbg !2261
  %12 = call i32 @strcmp(i8* %10, i8* %11) #8, !dbg !2262
  %13 = icmp ne i32 %12, 0, !dbg !2262
  br i1 %13, label %16, label %14, !dbg !2263

; <label>:14:                                     ; preds = %4
  %15 = load i32*, i32** %9, align 8, !dbg !2264
  store i32 -1, i32* %15, align 4, !dbg !2266
  store i32 1, i32* %5, align 4, !dbg !2267
  br label %27, !dbg !2267

; <label>:16:                                     ; preds = %4
  %17 = load %struct.libnet_context*, %struct.libnet_context** %6, align 8, !dbg !2268
  %18 = load i8*, i8** %7, align 8, !dbg !2269
  %19 = load i32, i32* %8, align 4, !dbg !2270
  %20 = trunc i32 %19 to i8, !dbg !2270
  %21 = call i32 @libnet_name2addr4(%struct.libnet_context* %17, i8* %18, i8 zeroext %20), !dbg !2271
  %22 = load i32*, i32** %9, align 8, !dbg !2272
  store i32 %21, i32* %22, align 4, !dbg !2273
  %23 = load i32*, i32** %9, align 8, !dbg !2274
  %24 = load i32, i32* %23, align 4, !dbg !2275
  %25 = icmp ne i32 %24, -1, !dbg !2276
  %26 = zext i1 %25 to i32, !dbg !2276
  store i32 %26, i32* %5, align 4, !dbg !2277
  br label %27, !dbg !2277

; <label>:27:                                     ; preds = %16, %14
  %28 = load i32, i32* %5, align 4, !dbg !2278
  ret i32 %28, !dbg !2278
}

; Function Attrs: nounwind
declare i32 @clock_getres(i32, %struct.timespec*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #4

declare i32 @libnet_get_ipaddr4(%struct.libnet_context*) #3

; Function Attrs: nounwind uwtable
define internal i32 @is_mac_addr(i8*) #0 !dbg !2279 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2282, metadata !248), !dbg !2283
  %6 = load i8*, i8** %3, align 8, !dbg !2284
  %7 = call i64 @strlen(i8* %6) #8, !dbg !2286
  %8 = icmp eq i64 14, %7, !dbg !2287
  br i1 %8, label %9, label %52, !dbg !2288

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2289, metadata !248), !dbg !2291
  store i32 0, i32* %4, align 4, !dbg !2292
  br label %10, !dbg !2294

; <label>:10:                                     ; preds = %48, %9
  %11 = load i32, i32* %4, align 4, !dbg !2295
  %12 = zext i32 %11 to i64, !dbg !2295
  %13 = load i8*, i8** %3, align 8, !dbg !2298
  %14 = call i64 @strlen(i8* %13) #8, !dbg !2299
  %15 = icmp ult i64 %12, %14, !dbg !2300
  br i1 %15, label %16, label %51, !dbg !2301

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4, !dbg !2302
  %18 = urem i32 %17, 5, !dbg !2305
  %19 = icmp eq i32 %18, 4, !dbg !2306
  br i1 %19, label %20, label %30, !dbg !2307

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4, !dbg !2308
  %22 = zext i32 %21 to i64, !dbg !2311
  %23 = load i8*, i8** %3, align 8, !dbg !2311
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !2311
  %25 = load i8, i8* %24, align 1, !dbg !2311
  %26 = sext i8 %25 to i32, !dbg !2311
  %27 = icmp ne i32 46, %26, !dbg !2312
  br i1 %27, label %28, label %29, !dbg !2313

; <label>:28:                                     ; preds = %20
  br label %100, !dbg !2314

; <label>:29:                                     ; preds = %20
  br label %47, !dbg !2316

; <label>:30:                                     ; preds = %16
  %31 = load i32, i32* %4, align 4, !dbg !2317
  %32 = zext i32 %31 to i64, !dbg !2320
  %33 = load i8*, i8** %3, align 8, !dbg !2320
  %34 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !2320
  %35 = load i8, i8* %34, align 1, !dbg !2320
  %36 = sext i8 %35 to i32, !dbg !2321
  %37 = sext i32 %36 to i64, !dbg !2322
  %38 = call i16** @__ctype_b_loc() #1, !dbg !2323
  %39 = load i16*, i16** %38, align 8, !dbg !2317
  %40 = getelementptr inbounds i16, i16* %39, i64 %37, !dbg !2322
  %41 = load i16, i16* %40, align 2, !dbg !2322
  %42 = zext i16 %41 to i32, !dbg !2322
  %43 = and i32 %42, 4096, !dbg !2324
  %44 = icmp ne i32 %43, 0, !dbg !2324
  br i1 %44, label %46, label %45, !dbg !2325

; <label>:45:                                     ; preds = %30
  br label %100, !dbg !2326

; <label>:46:                                     ; preds = %30
  br label %47

; <label>:47:                                     ; preds = %46, %29
  br label %48, !dbg !2328

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %4, align 4, !dbg !2329
  %50 = add i32 %49, 1, !dbg !2329
  store i32 %50, i32* %4, align 4, !dbg !2329
  br label %10, !dbg !2331, !llvm.loop !2332

; <label>:51:                                     ; preds = %10
  store i32 1, i32* %2, align 4, !dbg !2334
  br label %105, !dbg !2334

; <label>:52:                                     ; preds = %1
  %53 = load i8*, i8** %3, align 8, !dbg !2335
  %54 = call i64 @strlen(i8* %53) #8, !dbg !2337
  %55 = icmp eq i64 17, %54, !dbg !2338
  br i1 %55, label %56, label %99, !dbg !2339

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2340, metadata !248), !dbg !2342
  store i32 0, i32* %5, align 4, !dbg !2343
  br label %57, !dbg !2345

; <label>:57:                                     ; preds = %95, %56
  %58 = load i32, i32* %5, align 4, !dbg !2346
  %59 = zext i32 %58 to i64, !dbg !2346
  %60 = load i8*, i8** %3, align 8, !dbg !2349
  %61 = call i64 @strlen(i8* %60) #8, !dbg !2350
  %62 = icmp ult i64 %59, %61, !dbg !2351
  br i1 %62, label %63, label %98, !dbg !2352

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %5, align 4, !dbg !2353
  %65 = urem i32 %64, 3, !dbg !2356
  %66 = icmp eq i32 %65, 2, !dbg !2357
  br i1 %66, label %67, label %77, !dbg !2358

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* %5, align 4, !dbg !2359
  %69 = zext i32 %68 to i64, !dbg !2362
  %70 = load i8*, i8** %3, align 8, !dbg !2362
  %71 = getelementptr inbounds i8, i8* %70, i64 %69, !dbg !2362
  %72 = load i8, i8* %71, align 1, !dbg !2362
  %73 = sext i8 %72 to i32, !dbg !2362
  %74 = icmp ne i32 45, %73, !dbg !2363
  br i1 %74, label %75, label %76, !dbg !2364

; <label>:75:                                     ; preds = %67
  br label %100, !dbg !2365

; <label>:76:                                     ; preds = %67
  br label %94, !dbg !2367

; <label>:77:                                     ; preds = %63
  %78 = load i32, i32* %5, align 4, !dbg !2368
  %79 = zext i32 %78 to i64, !dbg !2371
  %80 = load i8*, i8** %3, align 8, !dbg !2371
  %81 = getelementptr inbounds i8, i8* %80, i64 %79, !dbg !2371
  %82 = load i8, i8* %81, align 1, !dbg !2371
  %83 = sext i8 %82 to i32, !dbg !2372
  %84 = sext i32 %83 to i64, !dbg !2373
  %85 = call i16** @__ctype_b_loc() #1, !dbg !2374
  %86 = load i16*, i16** %85, align 8, !dbg !2368
  %87 = getelementptr inbounds i16, i16* %86, i64 %84, !dbg !2373
  %88 = load i16, i16* %87, align 2, !dbg !2373
  %89 = zext i16 %88 to i32, !dbg !2373
  %90 = and i32 %89, 4096, !dbg !2375
  %91 = icmp ne i32 %90, 0, !dbg !2375
  br i1 %91, label %93, label %92, !dbg !2376

; <label>:92:                                     ; preds = %77
  br label %100, !dbg !2377

; <label>:93:                                     ; preds = %77
  br label %94

; <label>:94:                                     ; preds = %93, %76
  br label %95, !dbg !2379

; <label>:95:                                     ; preds = %94
  %96 = load i32, i32* %5, align 4, !dbg !2380
  %97 = add i32 %96, 1, !dbg !2380
  store i32 %97, i32* %5, align 4, !dbg !2380
  br label %57, !dbg !2382, !llvm.loop !2383

; <label>:98:                                     ; preds = %57
  store i32 1, i32* %2, align 4, !dbg !2385
  br label %105, !dbg !2385

; <label>:99:                                     ; preds = %52
  br label %100, !dbg !2386

; <label>:100:                                    ; preds = %99, %92, %75, %45, %28
  %101 = load i8*, i8** %3, align 8, !dbg !2388
  %102 = call i8* @strchr(i8* %101, i32 58) #8, !dbg !2389
  %103 = icmp ne i8* %102, null, !dbg !2389
  %104 = select i1 %103, i32 1, i32 0, !dbg !2389
  store i32 %104, i32* %2, align 4, !dbg !2390
  br label %105, !dbg !2390

; <label>:105:                                    ; preds = %100, %98, %51
  %106 = load i32, i32* %2, align 4, !dbg !2391
  ret i32 %106, !dbg !2391
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

declare i8* @arping_lookupdev(i32, i32, i8*) #3

declare i8* @arping_lookupdev_default(i32, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.pcap* @do_pcap_open_live(i8*, i32, i32, i32, i8*) #0 !dbg !2392 {
  %6 = alloca %struct.pcap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pcap*, align 8
  %13 = alloca [4096 x i8], align 16
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2395, metadata !248), !dbg !2396
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2397, metadata !248), !dbg !2398
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2399, metadata !248), !dbg !2400
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2401, metadata !248), !dbg !2402
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2403, metadata !248), !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.pcap** %12, metadata !2405, metadata !248), !dbg !2406
  call void @llvm.dbg.declare(metadata [4096 x i8]* %13, metadata !2407, metadata !248), !dbg !2411
  %14 = load i8*, i8** %7, align 8, !dbg !2412
  %15 = load i32, i32* %8, align 4, !dbg !2414
  %16 = load i32, i32* %9, align 4, !dbg !2415
  %17 = load i32, i32* %10, align 4, !dbg !2416
  %18 = load i8*, i8** %11, align 8, !dbg !2417
  %19 = call %struct.pcap* @try_pcap_open_live(i8* %14, i32 %15, i32 %16, i32 %17, i8* %18), !dbg !2418
  store %struct.pcap* %19, %struct.pcap** %12, align 8, !dbg !2419
  %20 = icmp ne %struct.pcap* %19, null, !dbg !2419
  br i1 %20, label %21, label %23, !dbg !2420

; <label>:21:                                     ; preds = %5
  %22 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !2421
  store %struct.pcap* %22, %struct.pcap** %6, align 8, !dbg !2423
  br label %56, !dbg !2423

; <label>:23:                                     ; preds = %5
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0, !dbg !2424
  %25 = load i8*, i8** %7, align 8, !dbg !2425
  %26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %24, i64 4096, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* %25) #9, !dbg !2426
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0, !dbg !2427
  %28 = load i32, i32* %8, align 4, !dbg !2429
  %29 = load i32, i32* %9, align 4, !dbg !2430
  %30 = load i32, i32* %10, align 4, !dbg !2431
  %31 = load i8*, i8** %11, align 8, !dbg !2432
  %32 = call %struct.pcap* @try_pcap_open_live(i8* %27, i32 %28, i32 %29, i32 %30, i8* %31), !dbg !2433
  store %struct.pcap* %32, %struct.pcap** %12, align 8, !dbg !2434
  %33 = icmp ne %struct.pcap* %32, null, !dbg !2434
  br i1 %33, label %34, label %36, !dbg !2435

; <label>:34:                                     ; preds = %23
  %35 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !2436
  store %struct.pcap* %35, %struct.pcap** %6, align 8, !dbg !2438
  br label %56, !dbg !2438

; <label>:36:                                     ; preds = %23
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0, !dbg !2439
  %38 = load i8*, i8** %7, align 8, !dbg !2440
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %37, i64 4096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i8* %38) #9, !dbg !2441
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i32 0, i32 0, !dbg !2442
  %41 = load i32, i32* %8, align 4, !dbg !2444
  %42 = load i32, i32* %9, align 4, !dbg !2445
  %43 = load i32, i32* %10, align 4, !dbg !2446
  %44 = load i8*, i8** %11, align 8, !dbg !2447
  %45 = call %struct.pcap* @try_pcap_open_live(i8* %40, i32 %41, i32 %42, i32 %43, i8* %44), !dbg !2448
  store %struct.pcap* %45, %struct.pcap** %12, align 8, !dbg !2449
  %46 = icmp ne %struct.pcap* %45, null, !dbg !2449
  br i1 %46, label %47, label %49, !dbg !2450

; <label>:47:                                     ; preds = %36
  %48 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !2451
  store %struct.pcap* %48, %struct.pcap** %6, align 8, !dbg !2453
  br label %56, !dbg !2453

; <label>:49:                                     ; preds = %36
  %50 = load i8*, i8** %7, align 8, !dbg !2454
  %51 = load i32, i32* %8, align 4, !dbg !2455
  %52 = load i32, i32* %9, align 4, !dbg !2456
  %53 = load i32, i32* %10, align 4, !dbg !2457
  %54 = load i8*, i8** %11, align 8, !dbg !2458
  %55 = call %struct.pcap* @try_pcap_open_live(i8* %50, i32 %51, i32 %52, i32 %53, i8* %54), !dbg !2459
  store %struct.pcap* %55, %struct.pcap** %6, align 8, !dbg !2460
  br label %56, !dbg !2460

; <label>:56:                                     ; preds = %49, %47, %34, %21
  %57 = load %struct.pcap*, %struct.pcap** %6, align 8, !dbg !2461
  ret %struct.pcap* %57, !dbg !2461
}

; Function Attrs: nounwind uwtable
define internal void @drop_privileges(i8*) #0 !dbg !2462 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2465, metadata !248), !dbg !2466
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2467, metadata !248), !dbg !2468
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8** %3, align 8, !dbg !2468
  call void @llvm.dbg.declare(metadata %struct.passwd** %4, metadata !2469, metadata !248), !dbg !2483
  %7 = call i32* @__errno_location() #1, !dbg !2484
  store i32 0, i32* %7, align 4, !dbg !2485
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2486, metadata !248), !dbg !2488
  store i32 0, i32* %5, align 4, !dbg !2488
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2489, metadata !248), !dbg !2491
  store i32 0, i32* %6, align 4, !dbg !2491
  %8 = load i8*, i8** %3, align 8, !dbg !2492
  %9 = call %struct.passwd* @getpwnam(i8* %8), !dbg !2494
  store %struct.passwd* %9, %struct.passwd** %4, align 8, !dbg !2495
  %10 = icmp ne %struct.passwd* %9, null, !dbg !2495
  br i1 %10, label %29, label %11, !dbg !2496

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* @verbose, align 4, !dbg !2497
  %13 = icmp ne i32 %12, 0, !dbg !2497
  br i1 %13, label %14, label %28, !dbg !2500

; <label>:14:                                     ; preds = %11
  %15 = call i32* @__errno_location() #1, !dbg !2501
  %16 = load i32, i32* %15, align 4, !dbg !2504
  %17 = icmp ne i32 %16, 0, !dbg !2505
  br i1 %17, label %18, label %24, !dbg !2506

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %3, align 8, !dbg !2507
  %20 = call i32* @__errno_location() #1, !dbg !2509
  %21 = load i32, i32* %20, align 4, !dbg !2510
  %22 = call i8* @strerror(i32 %21) #9, !dbg !2511
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i8* %19, i8* %22), !dbg !2513
  br label %27, !dbg !2514

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %3, align 8, !dbg !2515
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0), i8* %25), !dbg !2517
  br label %27

; <label>:27:                                     ; preds = %24, %18
  br label %28, !dbg !2518

; <label>:28:                                     ; preds = %27, %11
  br label %36, !dbg !2519

; <label>:29:                                     ; preds = %1
  %30 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2520
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 2, !dbg !2522
  %32 = load i32, i32* %31, align 8, !dbg !2522
  store i32 %32, i32* %5, align 4, !dbg !2523
  %33 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2524
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 3, !dbg !2525
  %35 = load i32, i32* %34, align 4, !dbg !2525
  store i32 %35, i32* %6, align 4, !dbg !2526
  br label %36

; <label>:36:                                     ; preds = %29, %28
  %37 = load i8*, i8** %2, align 8, !dbg !2527
  %38 = icmp ne i8* %37, null, !dbg !2529
  br i1 %38, label %39, label %42, !dbg !2530

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %2, align 8, !dbg !2531
  %41 = call i32 @must_get_group(i8* %40), !dbg !2533
  store i32 %41, i32* %6, align 4, !dbg !2534
  br label %42, !dbg !2535

; <label>:42:                                     ; preds = %39, %36
  call void @drop_fs_root(), !dbg !2536
  %43 = load i32, i32* %5, align 4, !dbg !2537
  %44 = load i32, i32* %6, align 4, !dbg !2538
  call void @drop_uid(i32 %43, i32 %44), !dbg !2539
  call void @drop_capabilities(), !dbg !2540
  ret void, !dbg !2541
}

declare i32 @pcap_setnonblock(%struct.pcap*, i32, i8*) #3

declare i32 @pcap_get_selectable_fd(%struct.pcap*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #3

declare i8* @pcap_geterr(%struct.pcap*) #3

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #3

declare %struct.libnet_ether_addr* @libnet_get_hwaddr(%struct.libnet_context*) #3

declare i8* @libnet_geterror(%struct.libnet_context*) #3

declare void @do_signal_init(...) #3

; Function Attrs: nounwind uwtable
define internal i32 @wait_time(double, i32) #0 !dbg !2542 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2545, metadata !248), !dbg !2546
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2547, metadata !248), !dbg !2548
  call void @llvm.dbg.declare(metadata %struct.timespec* %6, metadata !2549, metadata !248), !dbg !2550
  %8 = load double, double* %4, align 8, !dbg !2551
  %9 = fcmp olt double %8, 0.000000e+00, !dbg !2553
  br i1 %9, label %10, label %12, !dbg !2554

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4, !dbg !2555
  store i32 %11, i32* %3, align 4, !dbg !2557
  br label %31, !dbg !2557

; <label>:12:                                     ; preds = %2
  call void @getclock(%struct.timespec* %6), !dbg !2558
  call void @llvm.dbg.declare(metadata double* %7, metadata !2559, metadata !248), !dbg !2561
  %13 = load double, double* %4, align 8, !dbg !2562
  %14 = call double @timespec2dbl(%struct.timespec* %6), !dbg !2563
  %15 = fsub double %13, %14, !dbg !2564
  store double %15, double* %7, align 8, !dbg !2561
  %16 = load double, double* %7, align 8, !dbg !2565
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !2567
  br i1 %17, label %18, label %19, !dbg !2568

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !2569
  br label %31, !dbg !2569

; <label>:19:                                     ; preds = %12
  %20 = load double, double* %7, align 8, !dbg !2571
  %21 = load i32, i32* %5, align 4, !dbg !2573
  %22 = udiv i32 %21, 1000000, !dbg !2574
  %23 = uitofp i32 %22 to double, !dbg !2573
  %24 = fcmp ogt double %20, %23, !dbg !2575
  br i1 %24, label %25, label %27, !dbg !2576

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %5, align 4, !dbg !2577
  store i32 %26, i32* %3, align 4, !dbg !2579
  br label %31, !dbg !2579

; <label>:27:                                     ; preds = %19
  %28 = load double, double* %7, align 8, !dbg !2580
  %29 = fmul double %28, 1.000000e+06, !dbg !2581
  %30 = fptoui double %29 to i32, !dbg !2580
  store i32 %30, i32* %3, align 4, !dbg !2582
  br label %31, !dbg !2582

; <label>:31:                                     ; preds = %27, %25, %18, %10
  %32 = load i32, i32* %3, align 4, !dbg !2583
  ret i32 %32, !dbg !2583
}

; Function Attrs: nounwind uwtable
define internal void @ping_recv(%struct.pcap*, i32, void (i8*, %struct.pcap_pkthdr*, i8*)*) #0 !dbg !2584 {
  %4 = alloca %struct.pcap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*, %struct.pcap_pkthdr*, i8*)*, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd_set, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pcap* %0, %struct.pcap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %4, metadata !2587, metadata !248), !dbg !2588
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2589, metadata !248), !dbg !2590
  store void (i8*, %struct.pcap_pkthdr*, i8*)* %2, void (i8*, %struct.pcap_pkthdr*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, %struct.pcap_pkthdr*, i8*)** %6, metadata !2591, metadata !248), !dbg !2592
  call void @llvm.dbg.declare(metadata %struct.timespec* %7, metadata !2593, metadata !248), !dbg !2594
  call void @llvm.dbg.declare(metadata %struct.timespec* %8, metadata !2595, metadata !248), !dbg !2596
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2597, metadata !248), !dbg !2598
  store i8 0, i8* %9, align 1, !dbg !2598
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2599, metadata !248), !dbg !2600
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2601, metadata !248), !dbg !2602
  %19 = load i32, i32* @verbose, align 4, !dbg !2603
  %20 = icmp sgt i32 %19, 3, !dbg !2605
  br i1 %20, label %21, label %23, !dbg !2606

; <label>:21:                                     ; preds = %3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.125, i32 0, i32 0)), !dbg !2607
  br label %23, !dbg !2609

; <label>:23:                                     ; preds = %21, %3
  call void @getclock(%struct.timespec* %7), !dbg !2610
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2611
  %25 = load i64, i64* %24, align 8, !dbg !2611
  %26 = load i32, i32* %5, align 4, !dbg !2612
  %27 = udiv i32 %26, 1000000, !dbg !2613
  %28 = zext i32 %27 to i64, !dbg !2614
  %29 = add nsw i64 %25, %28, !dbg !2615
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0, !dbg !2616
  store i64 %29, i64* %30, align 8, !dbg !2617
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2618
  %32 = load i64, i64* %31, align 8, !dbg !2618
  %33 = load i32, i32* %5, align 4, !dbg !2619
  %34 = urem i32 %33, 1000000, !dbg !2620
  %35 = mul i32 1000, %34, !dbg !2621
  %36 = zext i32 %35 to i64, !dbg !2622
  %37 = add nsw i64 %32, %36, !dbg !2623
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1, !dbg !2624
  store i64 %37, i64* %38, align 8, !dbg !2625
  call void @fixup_timespec(%struct.timespec* %8), !dbg !2626
  %39 = load %struct.pcap*, %struct.pcap** %4, align 8, !dbg !2627
  %40 = call i32 @pcap_get_selectable_fd(%struct.pcap* %39), !dbg !2628
  store i32 %40, i32* %10, align 4, !dbg !2629
  %41 = load i32, i32* %10, align 4, !dbg !2630
  %42 = icmp eq i32 %41, -1, !dbg !2632
  br i1 %42, label %43, label %48, !dbg !2633

; <label>:43:                                     ; preds = %23
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2634
  %45 = load %struct.pcap*, %struct.pcap** %4, align 8, !dbg !2636
  %46 = call i8* @pcap_geterr(%struct.pcap* %45), !dbg !2637
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.126, i32 0, i32 0), i8* %46), !dbg !2638
  call void @exit(i32 1) #10, !dbg !2639
  unreachable, !dbg !2639

; <label>:48:                                     ; preds = %23
  %49 = load i32, i32* @numrecvd, align 4, !dbg !2640
  store i32 %49, i32* %11, align 4, !dbg !2641
  br label %50, !dbg !2642

; <label>:50:                                     ; preds = %194, %48
  %51 = load i8, i8* %9, align 1, !dbg !2643
  %52 = icmp ne i8 %51, 0, !dbg !2647
  %53 = xor i1 %52, true, !dbg !2647
  br i1 %53, label %54, label %195, !dbg !2648

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2649, metadata !248), !dbg !2651
  store i32 0, i32* %12, align 4, !dbg !2651
  call void @getclock(%struct.timespec* %7), !dbg !2652
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0, !dbg !2653
  %56 = load i64, i64* %55, align 8, !dbg !2653
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2654
  %58 = load i64, i64* %57, align 8, !dbg !2654
  %59 = sub nsw i64 %56, %58, !dbg !2655
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2656
  store i64 %59, i64* %60, align 8, !dbg !2657
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1, !dbg !2658
  %62 = load i64, i64* %61, align 8, !dbg !2658
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2659
  %64 = load i64, i64* %63, align 8, !dbg !2659
  %65 = sub nsw i64 %62, %64, !dbg !2660
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2661
  store i64 %65, i64* %66, align 8, !dbg !2662
  call void @fixup_timespec(%struct.timespec* %7), !dbg !2663
  %67 = load i32, i32* @verbose, align 4, !dbg !2664
  %68 = icmp sgt i32 %67, 2, !dbg !2666
  br i1 %68, label %69, label %75, !dbg !2667

; <label>:69:                                     ; preds = %54
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2668
  %71 = load i64, i64* %70, align 8, !dbg !2668
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2670
  %73 = load i64, i64* %72, align 8, !dbg !2670
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.127, i32 0, i32 0), i64 %71, i64 %73), !dbg !2671
  br label %75, !dbg !2672

; <label>:75:                                     ; preds = %69, %54
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2673
  %77 = load i64, i64* %76, align 8, !dbg !2673
  %78 = icmp slt i64 %77, 0, !dbg !2675
  br i1 %78, label %79, label %82, !dbg !2676

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2677
  store i64 0, i64* %80, align 8, !dbg !2679
  %81 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2680
  store i64 1, i64* %81, align 8, !dbg !2681
  store i8 1, i8* %9, align 1, !dbg !2682
  br label %82, !dbg !2683

; <label>:82:                                     ; preds = %79, %75
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2684
  %84 = load i64, i64* %83, align 8, !dbg !2684
  %85 = load i32, i32* %5, align 4, !dbg !2686
  %86 = udiv i32 %85, 1000000, !dbg !2687
  %87 = zext i32 %86 to i64, !dbg !2686
  %88 = icmp sgt i64 %84, %87, !dbg !2688
  br i1 %88, label %104, label %89, !dbg !2689

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2690
  %91 = load i64, i64* %90, align 8, !dbg !2690
  %92 = load i32, i32* %5, align 4, !dbg !2692
  %93 = udiv i32 %92, 1000000, !dbg !2693
  %94 = zext i32 %93 to i64, !dbg !2692
  %95 = icmp eq i64 %91, %94, !dbg !2694
  br i1 %95, label %96, label %107, !dbg !2695

; <label>:96:                                     ; preds = %89
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2696
  %98 = load i64, i64* %97, align 8, !dbg !2696
  %99 = sdiv i64 %98, 1000, !dbg !2697
  %100 = load i32, i32* %5, align 4, !dbg !2698
  %101 = urem i32 %100, 1000000, !dbg !2699
  %102 = zext i32 %101 to i64, !dbg !2698
  %103 = icmp sgt i64 %99, %102, !dbg !2700
  br i1 %103, label %104, label %107, !dbg !2701

; <label>:104:                                    ; preds = %96, %82
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2703
  store i64 0, i64* %105, align 8, !dbg !2705
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2706
  store i64 1, i64* %106, align 8, !dbg !2707
  store i8 1, i8* %9, align 1, !dbg !2708
  br label %107, !dbg !2709

; <label>:107:                                    ; preds = %104, %96, %89
  %108 = load volatile i32, i32* @time_to_die, align 4, !dbg !2710
  %109 = icmp ne i32 %108, 0, !dbg !2710
  br i1 %109, label %110, label %111, !dbg !2712

; <label>:110:                                    ; preds = %107
  br label %195, !dbg !2713

; <label>:111:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata %struct.fd_set* %13, metadata !2715, metadata !248), !dbg !2722
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2723, metadata !248), !dbg !2724
  call void @llvm.dbg.declare(metadata %struct.timeval* %15, metadata !2725, metadata !248), !dbg !2726
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !2727
  %113 = load i64, i64* %112, align 8, !dbg !2727
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0, !dbg !2728
  store i64 %113, i64* %114, align 8, !dbg !2729
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !2730
  %116 = load i64, i64* %115, align 8, !dbg !2730
  %117 = sdiv i64 %116, 1000, !dbg !2731
  %118 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1, !dbg !2732
  store i64 %117, i64* %118, align 8, !dbg !2733
  br label %119, !dbg !2734, !llvm.loop !2735

; <label>:119:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2736, metadata !248), !dbg !2738
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2739, metadata !248), !dbg !2740
  %120 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !2741
  %121 = getelementptr inbounds [16 x i64], [16 x i64]* %120, i64 0, i64 0, !dbg !2743
  %122 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %121) #9, !dbg !2744, !srcloc !2745
  %123 = extractvalue { i64, i64* } %122, 0, !dbg !2744
  %124 = extractvalue { i64, i64* } %122, 1, !dbg !2744
  %125 = trunc i64 %123 to i32, !dbg !2744
  store i32 %125, i32* %16, align 4, !dbg !2744
  %126 = ptrtoint i64* %124 to i64, !dbg !2744
  %127 = trunc i64 %126 to i32, !dbg !2744
  store i32 %127, i32* %17, align 4, !dbg !2744
  br label %128, !dbg !2746

; <label>:128:                                    ; preds = %119
  %129 = load i32, i32* %10, align 4, !dbg !2747
  %130 = srem i32 %129, 64, !dbg !2748
  %131 = zext i32 %130 to i64, !dbg !2749
  %132 = shl i64 1, %131, !dbg !2749
  %133 = load i32, i32* %10, align 4, !dbg !2747
  %134 = sdiv i32 %133, 64, !dbg !2748
  %135 = sext i32 %134 to i64, !dbg !2750
  %136 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %13, i32 0, i32 0, !dbg !2751
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* %136, i64 0, i64 %135, !dbg !2750
  %138 = load i64, i64* %137, align 8, !dbg !2752
  %139 = or i64 %138, %132, !dbg !2752
  store i64 %139, i64* %137, align 8, !dbg !2752
  %140 = load i32, i32* %10, align 4, !dbg !2753
  %141 = add nsw i32 %140, 1, !dbg !2754
  %142 = call i32 @select(i32 %141, %struct.fd_set* %13, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %15), !dbg !2755
  store i32 %142, i32* %14, align 4, !dbg !2756
  %143 = load i32, i32* %14, align 4, !dbg !2757
  switch i32 %143, label %175 [
    i32 0, label %144
    i32 -1, label %164
  ], !dbg !2758

; <label>:144:                                    ; preds = %128
  %145 = load i32, i32* @numrecvd, align 4, !dbg !2759
  %146 = load i32, i32* %11, align 4, !dbg !2762
  %147 = icmp eq i32 %145, %146, !dbg !2763
  br i1 %147, label %148, label %163, !dbg !2764

; <label>:148:                                    ; preds = %144
  %149 = load i32, i32* @reverse_beep, align 4, !dbg !2765
  %150 = icmp ne i32 %149, 0, !dbg !2765
  br i1 %150, label %151, label %153, !dbg !2768

; <label>:151:                                    ; preds = %148
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !2769
  br label %153, !dbg !2771

; <label>:153:                                    ; preds = %151, %148
  %154 = load i32, i32* @display, align 4, !dbg !2772
  switch i32 %154, label %160 [
    i32 0, label %155
    i32 5, label %157
    i32 2, label %159
    i32 4, label %159
    i32 3, label %159
    i32 1, label %159
  ], !dbg !2773

; <label>:155:                                    ; preds = %153
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0)), !dbg !2774
  br label %160, !dbg !2776

; <label>:157:                                    ; preds = %153
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0)), !dbg !2777
  br label %160, !dbg !2778

; <label>:159:                                    ; preds = %153, %153, %153, %153
  br label %160, !dbg !2779

; <label>:160:                                    ; preds = %153, %159, %157, %155
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2780
  %162 = call i32 @fflush(%struct._IO_FILE* %161), !dbg !2781
  br label %163, !dbg !2782

; <label>:163:                                    ; preds = %160, %144
  store i8 1, i8* %9, align 1, !dbg !2783
  br label %176, !dbg !2784

; <label>:164:                                    ; preds = %128
  %165 = call i32* @__errno_location() #1, !dbg !2785
  %166 = load i32, i32* %165, align 4, !dbg !2787
  %167 = icmp ne i32 %166, 4, !dbg !2788
  br i1 %167, label %168, label %174, !dbg !2789

; <label>:168:                                    ; preds = %164
  store i8 1, i8* %9, align 1, !dbg !2790
  call void @sigint(i32 0), !dbg !2792
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2793
  %170 = call i32* @__errno_location() #1, !dbg !2794
  %171 = load i32, i32* %170, align 4, !dbg !2795
  %172 = call i8* @strerror(i32 %171) #9, !dbg !2796
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.130, i32 0, i32 0), i8* %172), !dbg !2798
  br label %174, !dbg !2799

; <label>:174:                                    ; preds = %168, %164
  br label %176, !dbg !2800

; <label>:175:                                    ; preds = %128
  store i32 1, i32* %12, align 4, !dbg !2801
  br label %176, !dbg !2802

; <label>:176:                                    ; preds = %175, %174, %163
  %177 = load i32, i32* %12, align 4, !dbg !2803
  %178 = icmp ne i32 %177, 0, !dbg !2803
  br i1 %178, label %179, label %194, !dbg !2805

; <label>:179:                                    ; preds = %176
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2806, metadata !248), !dbg !2808
  %180 = load %struct.pcap*, %struct.pcap** %4, align 8, !dbg !2809
  %181 = load void (i8*, %struct.pcap_pkthdr*, i8*)*, void (i8*, %struct.pcap_pkthdr*, i8*)** %6, align 8, !dbg !2811
  %182 = call i32 @pcap_dispatch(%struct.pcap* %180, i32 -1, void (i8*, %struct.pcap_pkthdr*, i8*)* %181, i8* null), !dbg !2812
  store i32 %182, i32* %18, align 4, !dbg !2813
  %183 = icmp sgt i32 0, %182, !dbg !2814
  br i1 %183, label %184, label %193, !dbg !2815

; <label>:184:                                    ; preds = %179
  %185 = call i32 @usleep(i32 1), !dbg !2816
  %186 = load i32, i32* @verbose, align 4, !dbg !2818
  %187 = icmp sgt i32 %186, 3, !dbg !2820
  br i1 %187, label %188, label %192, !dbg !2821

; <label>:188:                                    ; preds = %184
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2822
  %190 = load i32, i32* %18, align 4, !dbg !2824
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.131, i32 0, i32 0), i32 %190), !dbg !2825
  br label %192, !dbg !2826

; <label>:192:                                    ; preds = %188, %184
  br label %193, !dbg !2827

; <label>:193:                                    ; preds = %192, %179
  br label %194, !dbg !2828

; <label>:194:                                    ; preds = %193, %176
  br label %50, !dbg !2829, !llvm.loop !2831

; <label>:195:                                    ; preds = %110, %50
  ret void, !dbg !2832
}

; Function Attrs: nounwind uwtable
define internal void @pingmac_send(i16 zeroext, i16 zeroext) #0 !dbg !231 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !2833, metadata !248), !dbg !2834
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !2835, metadata !248), !dbg !2836
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2837, metadata !248), !dbg !2838
  %6 = load i16, i16* %3, align 2, !dbg !2839
  %7 = load i16, i16* %4, align 2, !dbg !2841
  %8 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2842
  %9 = load i32, i32* @pingmac_send.icmp, align 4, !dbg !2843
  %10 = call i32 @libnet_build_icmpv4_echo(i8 zeroext 8, i8 zeroext 0, i16 zeroext 0, i16 zeroext %6, i16 zeroext %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pingmac_send.padding, i32 0, i32 0), i32 16, %struct.libnet_context* %8, i32 %9), !dbg !2844
  store i32 %10, i32* @pingmac_send.icmp, align 4, !dbg !2845
  %11 = icmp eq i32 -1, %10, !dbg !2846
  br i1 %11, label %12, label %17, !dbg !2847

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2848
  %14 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2850
  %15 = call i8* @libnet_geterror(%struct.libnet_context* %14), !dbg !2851
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.132, i32 0, i32 0), i8* %15), !dbg !2852
  call void @sigint(i32 0), !dbg !2853
  br label %17, !dbg !2854

; <label>:17:                                     ; preds = %12, %2
  %18 = load i16, i16* %3, align 2, !dbg !2855
  %19 = load i32, i32* @srcip, align 4, !dbg !2857
  %20 = load i32, i32* @dstip, align 4, !dbg !2858
  %21 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2859
  %22 = load i32, i32* @pingmac_send.ipv4, align 4, !dbg !2860
  %23 = call i32 @libnet_build_ipv4(i16 zeroext 28, i8 zeroext 0, i16 zeroext %18, i16 zeroext 0, i8 zeroext 64, i8 zeroext 1, i16 zeroext 0, i32 %19, i32 %20, i8* null, i32 0, %struct.libnet_context* %21, i32 %22), !dbg !2861
  store i32 %23, i32* @pingmac_send.ipv4, align 4, !dbg !2862
  %24 = icmp eq i32 -1, %23, !dbg !2863
  br i1 %24, label %25, label %30, !dbg !2864

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2865
  %27 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2867
  %28 = call i8* @libnet_geterror(%struct.libnet_context* %27), !dbg !2868
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.133, i32 0, i32 0), i8* %28), !dbg !2869
  call void @sigint(i32 0), !dbg !2870
  br label %30, !dbg !2871

; <label>:30:                                     ; preds = %25, %17
  %31 = load i16, i16* @vlan_tag, align 2, !dbg !2872
  %32 = sext i16 %31 to i32, !dbg !2872
  %33 = icmp sge i32 %32, 0, !dbg !2874
  br i1 %33, label %34, label %41, !dbg !2875

; <label>:34:                                     ; preds = %30
  %35 = load i16, i16* @vlan_prio, align 2, !dbg !2876
  %36 = trunc i16 %35 to i8, !dbg !2876
  %37 = load i16, i16* @vlan_tag, align 2, !dbg !2878
  %38 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2879
  %39 = load i32, i32* @pingmac_send.eth, align 4, !dbg !2880
  %40 = call i32 @libnet_build_802_1q(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i16 zeroext -32512, i8 zeroext %36, i8 zeroext 0, i16 zeroext %37, i16 zeroext 2048, i8* null, i32 0, %struct.libnet_context* %38, i32 %39), !dbg !2881
  store i32 %40, i32* @pingmac_send.eth, align 4, !dbg !2882
  br label %45, !dbg !2883

; <label>:41:                                     ; preds = %30
  %42 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2884
  %43 = load i32, i32* @pingmac_send.eth, align 4, !dbg !2886
  %44 = call i32 @libnet_build_ethernet(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i16 zeroext 2048, i8* null, i32 0, %struct.libnet_context* %42, i32 %43), !dbg !2887
  store i32 %44, i32* @pingmac_send.eth, align 4, !dbg !2888
  br label %45

; <label>:45:                                     ; preds = %41, %34
  %46 = load i32, i32* @pingmac_send.eth, align 4, !dbg !2889
  %47 = icmp eq i32 -1, %46, !dbg !2891
  br i1 %47, label %48, label %57, !dbg !2892

; <label>:48:                                     ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2893
  %50 = load i16, i16* @vlan_tag, align 2, !dbg !2895
  %51 = sext i16 %50 to i32, !dbg !2895
  %52 = icmp sge i32 %51, 0, !dbg !2896
  %53 = select i1 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0), !dbg !2897
  %54 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2898
  %55 = call i8* @libnet_geterror(%struct.libnet_context* %54), !dbg !2899
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), i8* %53, i8* %55), !dbg !2900
  call void @sigint(i32 0), !dbg !2901
  br label %57, !dbg !2902

; <label>:57:                                     ; preds = %48, %45
  %58 = load i32, i32* @verbose, align 4, !dbg !2903
  %59 = icmp sgt i32 %58, 1, !dbg !2905
  br i1 %59, label %60, label %64, !dbg !2906

; <label>:60:                                     ; preds = %57
  call void @getclock(%struct.timespec* @lastpacketsent), !dbg !2907
  %61 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @lastpacketsent, i32 0, i32 0), align 8, !dbg !2909
  %62 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @lastpacketsent, i32 0, i32 1), align 8, !dbg !2910
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.123, i32 0, i32 0), i64 %61, i64 %62), !dbg !2911
  br label %64, !dbg !2912

; <label>:64:                                     ; preds = %60, %57
  %65 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2913
  %66 = call i32 @libnet_write(%struct.libnet_context* %65), !dbg !2915
  store i32 %66, i32* %5, align 4, !dbg !2916
  %67 = icmp eq i32 -1, %66, !dbg !2917
  br i1 %67, label %68, label %73, !dbg !2918

; <label>:68:                                     ; preds = %64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2919
  %70 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !2921
  %71 = call i8* @libnet_geterror(%struct.libnet_context* %70), !dbg !2922
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.124, i32 0, i32 0), i8* %71), !dbg !2923
  call void @sigint(i32 0), !dbg !2924
  br label %73, !dbg !2925

; <label>:73:                                     ; preds = %68, %64
  call void @getclock(%struct.timespec* @lastpacketsent), !dbg !2926
  %74 = load i32, i32* @numsent, align 4, !dbg !2927
  %75 = add i32 %74, 1, !dbg !2927
  store i32 %75, i32* @numsent, align 4, !dbg !2927
  ret void, !dbg !2928
}

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

; Function Attrs: nounwind uwtable
define internal void @standard_usage() #0 !dbg !2929 {
  %1 = load i8*, i8** @version, align 8, !dbg !2930
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.79, i32 0, i32 0), i8* %1), !dbg !2931
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([293 x i8], [293 x i8]* @.str.80, i32 0, i32 0)), !dbg !2932
  ret void, !dbg !2933
}

; Function Attrs: nounwind uwtable
define internal void @extended_usage() #0 !dbg !2934 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0)), !dbg !2935
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3314 x i8], [3314 x i8]* @.str.83, i32 0, i32 0)), !dbg !2936
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.84, i32 0, i32 0)), !dbg !2937
  ret void, !dbg !2938
}

declare i32 @libnet_name2addr4(%struct.libnet_context*, i8*, i8 zeroext) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind uwtable
define internal %struct.pcap* @try_pcap_open_live(i8*, i32, i32, i32, i8*) #0 !dbg !2939 {
  %6 = alloca %struct.pcap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pcap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2940, metadata !248), !dbg !2941
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2942, metadata !248), !dbg !2943
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2944, metadata !248), !dbg !2945
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2946, metadata !248), !dbg !2947
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2948, metadata !248), !dbg !2949
  call void @llvm.dbg.declare(metadata %struct.pcap** %12, metadata !2950, metadata !248), !dbg !2951
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2952, metadata !248), !dbg !2953
  %20 = load i8*, i8** %7, align 8, !dbg !2954
  %21 = load i8*, i8** %11, align 8, !dbg !2956
  %22 = call %struct.pcap* @pcap_create(i8* %20, i8* %21), !dbg !2957
  store %struct.pcap* %22, %struct.pcap** %12, align 8, !dbg !2958
  %23 = icmp ne %struct.pcap* %22, null, !dbg !2958
  br i1 %23, label %26, label %24, !dbg !2959

; <label>:24:                                     ; preds = %5
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2960
  br label %162, !dbg !2962

; <label>:26:                                     ; preds = %5
  %27 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !2963
  %28 = load i32, i32* %8, align 4, !dbg !2965
  %29 = call i32 @pcap_set_snaplen(%struct.pcap* %27, i32 %28), !dbg !2966
  store i32 %29, i32* %13, align 4, !dbg !2967
  %30 = icmp ne i32 %29, 0, !dbg !2967
  br i1 %30, label %31, label %37, !dbg !2968

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %11, align 8, !dbg !2969
  %33 = load i32, i32* %13, align 4, !dbg !2971
  %34 = call i8* @pcap_statustostr(i32 %33), !dbg !2973
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i32 0, i32 0), i8* %34) #9, !dbg !2974
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2975
  br label %162, !dbg !2976

; <label>:37:                                     ; preds = %26
  %38 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !2977
  %39 = load i32, i32* %9, align 4, !dbg !2979
  %40 = call i32 @pcap_set_promisc(%struct.pcap* %38, i32 %39), !dbg !2980
  store i32 %40, i32* %13, align 4, !dbg !2981
  %41 = icmp ne i32 %40, 0, !dbg !2981
  br i1 %41, label %42, label %48, !dbg !2982

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %11, align 8, !dbg !2983
  %44 = load i32, i32* %13, align 4, !dbg !2985
  %45 = call i8* @pcap_statustostr(i32 %44), !dbg !2987
  %46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %43, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0), i8* %45) #9, !dbg !2988
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2989
  br label %162, !dbg !2990

; <label>:48:                                     ; preds = %37
  %49 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !2991
  %50 = load i32, i32* %10, align 4, !dbg !2993
  %51 = call i32 @pcap_set_timeout(%struct.pcap* %49, i32 %50), !dbg !2994
  store i32 %51, i32* %13, align 4, !dbg !2995
  %52 = icmp ne i32 %51, 0, !dbg !2995
  br i1 %52, label %53, label %59, !dbg !2996

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %11, align 8, !dbg !2997
  %55 = load i32, i32* %13, align 4, !dbg !2999
  %56 = call i8* @pcap_statustostr(i32 %55), !dbg !3001
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %54, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0), i8* %56) #9, !dbg !3002
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3003
  br label %162, !dbg !3004

; <label>:59:                                     ; preds = %48
  %60 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3005
  %61 = call i32 @pcap_set_immediate_mode(%struct.pcap* %60, i32 1), !dbg !3007
  store i32 %61, i32* %13, align 4, !dbg !3008
  %62 = icmp ne i32 %61, 0, !dbg !3008
  br i1 %62, label %63, label %72, !dbg !3009

; <label>:63:                                     ; preds = %59
  %64 = load i32, i32* @verbose, align 4, !dbg !3010
  %65 = icmp ne i32 %64, 0, !dbg !3010
  br i1 %65, label %66, label %71, !dbg !3013

; <label>:66:                                     ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3014
  %68 = load i32, i32* %13, align 4, !dbg !3017
  %69 = call i8* @pcap_statustostr(i32 %68), !dbg !3018
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.93, i32 0, i32 0), i8* %69), !dbg !3019
  br label %71, !dbg !3020

; <label>:71:                                     ; preds = %66, %63
  br label %72, !dbg !3021

; <label>:72:                                     ; preds = %71, %59
  %73 = load i8*, i8** @timestamp_type, align 8, !dbg !3022
  %74 = icmp ne i8* %73, null, !dbg !3022
  br i1 %74, label %75, label %97, !dbg !3024

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3025, metadata !248), !dbg !3027
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3028, metadata !248), !dbg !3029
  %76 = load i8*, i8** @timestamp_type, align 8, !dbg !3030
  %77 = call i32 @pcap_tstamp_type_name_to_val(i8* %76), !dbg !3031
  store i32 %77, i32* %15, align 4, !dbg !3029
  %78 = load i32, i32* %15, align 4, !dbg !3032
  %79 = icmp eq i32 %78, -1, !dbg !3034
  br i1 %79, label %80, label %84, !dbg !3035

; <label>:80:                                     ; preds = %75
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3036
  %82 = load i8*, i8** @timestamp_type, align 8, !dbg !3038
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.94, i32 0, i32 0), i8* %82), !dbg !3039
  call void @exit(i32 1) #10, !dbg !3040
  unreachable, !dbg !3040

; <label>:84:                                     ; preds = %75
  %85 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3041
  %86 = load i32, i32* %15, align 4, !dbg !3043
  %87 = call i32 @pcap_set_tstamp_type(%struct.pcap* %85, i32 %86), !dbg !3044
  store i32 %87, i32* %14, align 4, !dbg !3045
  %88 = icmp ne i32 %87, 0, !dbg !3045
  br i1 %88, label %89, label %96, !dbg !3046

; <label>:89:                                     ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3047
  %91 = load i8*, i8** @timestamp_type, align 8, !dbg !3049
  %92 = load i32, i32* %15, align 4, !dbg !3050
  %93 = load i32, i32* %14, align 4, !dbg !3051
  %94 = call i8* @pcap_statustostr(i32 %93), !dbg !3052
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.95, i32 0, i32 0), i8* %91, i32 %92, i8* %94), !dbg !3053
  br label %96, !dbg !3054

; <label>:96:                                     ; preds = %89, %84
  br label %97, !dbg !3055

; <label>:97:                                     ; preds = %96, %72
  %98 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3056
  %99 = call i32 @pcap_activate(%struct.pcap* %98), !dbg !3058
  store i32 %99, i32* %13, align 4, !dbg !3059
  %100 = icmp ne i32 %99, 0, !dbg !3059
  br i1 %100, label %101, label %117, !dbg !3060

; <label>:101:                                    ; preds = %97
  %102 = load i8*, i8** @timestamp_type, align 8, !dbg !3061
  %103 = icmp ne i8* %102, null, !dbg !3061
  br i1 %103, label %104, label %110, !dbg !3064

; <label>:104:                                    ; preds = %101
  %105 = load i8*, i8** %11, align 8, !dbg !3065
  %106 = load i8*, i8** @timestamp_type, align 8, !dbg !3067
  %107 = load i32, i32* %13, align 4, !dbg !3068
  %108 = call i8* @pcap_statustostr(i32 %107), !dbg !3069
  %109 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %105, i64 256, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.96, i32 0, i32 0), i8* %106, i8* %108) #9, !dbg !3070
  br label %115, !dbg !3072

; <label>:110:                                    ; preds = %101
  %111 = load i8*, i8** %11, align 8, !dbg !3073
  %112 = load i32, i32* %13, align 4, !dbg !3075
  %113 = call i8* @pcap_statustostr(i32 %112), !dbg !3076
  %114 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %111, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i8* %113) #9, !dbg !3077
  br label %115

; <label>:115:                                    ; preds = %110, %104
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3079
  br label %162, !dbg !3080

; <label>:117:                                    ; preds = %97
  %118 = load i32, i32* @verbose, align 4, !dbg !3081
  %119 = icmp sgt i32 %118, 1, !dbg !3083
  br i1 %119, label %120, label %160, !dbg !3084

; <label>:120:                                    ; preds = %117
  call void @llvm.dbg.declare(metadata i32** %16, metadata !3085, metadata !248), !dbg !3087
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3088, metadata !248), !dbg !3089
  %121 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3090
  %122 = call i32 @pcap_list_tstamp_types(%struct.pcap* %121, i32** %16), !dbg !3091
  store i32 %122, i32* %17, align 4, !dbg !3092
  %123 = load i32, i32* %17, align 4, !dbg !3093
  %124 = icmp eq i32 %123, -1, !dbg !3095
  br i1 %124, label %125, label %128, !dbg !3096

; <label>:125:                                    ; preds = %120
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3097
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.98, i32 0, i32 0)), !dbg !3100
  br label %159, !dbg !3101

; <label>:128:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3102, metadata !248), !dbg !3104
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3105, metadata !248), !dbg !3106
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8** %19, align 8, !dbg !3106
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3107
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i32 0, i32 0)), !dbg !3108
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3109
  %132 = load i8*, i8** %19, align 8, !dbg !3110
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0)), !dbg !3111
  store i32 0, i32* %18, align 4, !dbg !3112
  br label %134, !dbg !3114

; <label>:134:                                    ; preds = %154, %128
  %135 = load i32, i32* %18, align 4, !dbg !3115
  %136 = load i32, i32* %17, align 4, !dbg !3118
  %137 = icmp slt i32 %135, %136, !dbg !3119
  br i1 %137, label %138, label %157, !dbg !3120

; <label>:138:                                    ; preds = %134
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3121
  %140 = load i8*, i8** %19, align 8, !dbg !3123
  %141 = load i32, i32* %18, align 4, !dbg !3124
  %142 = sext i32 %141 to i64, !dbg !3125
  %143 = load i32*, i32** %16, align 8, !dbg !3125
  %144 = getelementptr inbounds i32, i32* %143, i64 %142, !dbg !3125
  %145 = load i32, i32* %144, align 4, !dbg !3125
  %146 = call i8* @pcap_tstamp_type_val_to_name(i32 %145), !dbg !3126
  %147 = load i32, i32* %18, align 4, !dbg !3127
  %148 = sext i32 %147 to i64, !dbg !3128
  %149 = load i32*, i32** %16, align 8, !dbg !3128
  %150 = getelementptr inbounds i32, i32* %149, i64 %148, !dbg !3128
  %151 = load i32, i32* %150, align 4, !dbg !3128
  %152 = call i8* @pcap_tstamp_type_val_to_description(i32 %151), !dbg !3129
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* %140, i8* %146, i8* %152), !dbg !3130
  br label %154, !dbg !3132

; <label>:154:                                    ; preds = %138
  %155 = load i32, i32* %18, align 4, !dbg !3133
  %156 = add nsw i32 %155, 1, !dbg !3133
  store i32 %156, i32* %18, align 4, !dbg !3133
  br label %134, !dbg !3135, !llvm.loop !3136

; <label>:157:                                    ; preds = %134
  %158 = load i32*, i32** %16, align 8, !dbg !3138
  call void @pcap_free_tstamp_types(i32* %158), !dbg !3139
  br label %159

; <label>:159:                                    ; preds = %157, %125
  br label %160, !dbg !3140

; <label>:160:                                    ; preds = %159, %117
  %161 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3141
  store %struct.pcap* %161, %struct.pcap** %6, align 8, !dbg !3142
  br label %168, !dbg !3142

; <label>:162:                                    ; preds = %115, %53, %42, %31, %24
  %163 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3143
  %164 = icmp ne %struct.pcap* %163, null, !dbg !3143
  br i1 %164, label %165, label %167, !dbg !3145

; <label>:165:                                    ; preds = %162
  %166 = load %struct.pcap*, %struct.pcap** %12, align 8, !dbg !3146
  call void @pcap_close(%struct.pcap* %166), !dbg !3148
  br label %167, !dbg !3149

; <label>:167:                                    ; preds = %165, %162
  store %struct.pcap* null, %struct.pcap** %6, align 8, !dbg !3150
  br label %168, !dbg !3150

; <label>:168:                                    ; preds = %167, %160
  %169 = load %struct.pcap*, %struct.pcap** %6, align 8, !dbg !3151
  ret %struct.pcap* %169, !dbg !3151
}

declare %struct.pcap* @pcap_create(i8*, i8*) #3

declare i32 @assert(...) #3

declare i32 @pcap_set_snaplen(%struct.pcap*, i32) #3

declare i8* @pcap_statustostr(i32) #3

declare i32 @pcap_set_promisc(%struct.pcap*, i32) #3

declare i32 @pcap_set_timeout(%struct.pcap*, i32) #3

declare i32 @pcap_set_immediate_mode(%struct.pcap*, i32) #3

declare i32 @pcap_tstamp_type_name_to_val(i8*) #3

declare i32 @pcap_set_tstamp_type(%struct.pcap*, i32) #3

declare i32 @pcap_activate(%struct.pcap*) #3

declare i32 @pcap_list_tstamp_types(%struct.pcap*, i32**) #3

declare i8* @pcap_tstamp_type_val_to_name(i32) #3

declare i8* @pcap_tstamp_type_val_to_description(i32) #3

declare void @pcap_free_tstamp_types(i32*) #3

declare void @pcap_close(%struct.pcap*) #3

declare %struct.passwd* @getpwnam(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @must_get_group(i8*) #0 !dbg !3152 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3155, metadata !248), !dbg !3156
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3157, metadata !248), !dbg !3158
  store i32 0, i32* %4, align 4, !dbg !3158
  %8 = load i8*, i8** %3, align 8, !dbg !3159
  %9 = load i8, i8* %8, align 1, !dbg !3161
  %10 = icmp ne i8 %9, 0, !dbg !3161
  br i1 %10, label %11, label %32, !dbg !3162

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.group** %5, metadata !3163, metadata !248), !dbg !3174
  %12 = call i32* @__errno_location() #1, !dbg !3175
  store i32 0, i32* %12, align 4, !dbg !3176
  %13 = load i8*, i8** %3, align 8, !dbg !3177
  %14 = call %struct.group* @getgrnam(i8* %13), !dbg !3179
  store %struct.group* %14, %struct.group** %5, align 8, !dbg !3180
  %15 = icmp ne %struct.group* %14, null, !dbg !3180
  br i1 %15, label %16, label %20, !dbg !3181

; <label>:16:                                     ; preds = %11
  %17 = load %struct.group*, %struct.group** %5, align 8, !dbg !3182
  %18 = getelementptr inbounds %struct.group, %struct.group* %17, i32 0, i32 2, !dbg !3184
  %19 = load i32, i32* %18, align 8, !dbg !3184
  store i32 %19, i32* %2, align 4, !dbg !3185
  br label %47, !dbg !3185

; <label>:20:                                     ; preds = %11
  %21 = call i32* @__errno_location() #1, !dbg !3186
  %22 = load i32, i32* %21, align 4, !dbg !3187
  store i32 %22, i32* %4, align 4, !dbg !3188
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3189, metadata !248), !dbg !3191
  store i8* null, i8** %6, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3192, metadata !248), !dbg !3193
  %23 = load i8*, i8** %3, align 8, !dbg !3194
  %24 = call i64 @strtol(i8* %23, i8** %6, i32 0) #9, !dbg !3195
  %25 = trunc i64 %24 to i32, !dbg !3195
  store i32 %25, i32* %7, align 4, !dbg !3193
  %26 = load i8*, i8** %6, align 8, !dbg !3196
  %27 = load i8, i8* %26, align 1, !dbg !3198
  %28 = icmp ne i8 %27, 0, !dbg !3198
  br i1 %28, label %31, label %29, !dbg !3199

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %7, align 4, !dbg !3200
  store i32 %30, i32* %2, align 4, !dbg !3202
  br label %47, !dbg !3202

; <label>:31:                                     ; preds = %20
  br label %32, !dbg !3203

; <label>:32:                                     ; preds = %31, %1
  %33 = load i32, i32* %4, align 4, !dbg !3204
  %34 = icmp ne i32 %33, 0, !dbg !3206
  br i1 %34, label %35, label %42, !dbg !3207

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3208
  %37 = load i8*, i8** %3, align 8, !dbg !3210
  %38 = load i8*, i8** %3, align 8, !dbg !3211
  %39 = load i32, i32* %4, align 4, !dbg !3212
  %40 = call i8* @strerror(i32 %39) #9, !dbg !3213
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.106, i32 0, i32 0), i8* %37, i8* %38, i8* %40), !dbg !3214
  br label %46, !dbg !3215

; <label>:42:                                     ; preds = %32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3216
  %44 = load i8*, i8** %3, align 8, !dbg !3218
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.107, i32 0, i32 0), i8* %44), !dbg !3219
  br label %46

; <label>:46:                                     ; preds = %42, %35
  call void @exit(i32 1) #10, !dbg !3220
  unreachable, !dbg !3220

; <label>:47:                                     ; preds = %29, %16
  %48 = load i32, i32* %2, align 4, !dbg !3221
  ret i32 %48, !dbg !3221
}

; Function Attrs: nounwind uwtable
define internal void @drop_uid(i32, i32) #0 !dbg !3222 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3225, metadata !248), !dbg !3226
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3227, metadata !248), !dbg !3228
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3229, metadata !248), !dbg !3230
  store i32 0, i32* %5, align 4, !dbg !3230
  %6 = call i32 @setgroups(i64 0, i32* null) #9, !dbg !3231
  %7 = icmp ne i32 %6, 0, !dbg !3231
  br i1 %7, label %8, label %19, !dbg !3233

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* @verbose, align 4, !dbg !3234
  %10 = icmp ne i32 %9, 0, !dbg !3234
  br i1 %10, label %11, label %16, !dbg !3237

; <label>:11:                                     ; preds = %8
  %12 = call i32* @__errno_location() #1, !dbg !3238
  %13 = load i32, i32* %12, align 4, !dbg !3240
  %14 = call i8* @strerror(i32 %13) #9, !dbg !3241
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i32 0, i32 0), i8* %14), !dbg !3243
  br label %16, !dbg !3245

; <label>:16:                                     ; preds = %11, %8
  %17 = load i32, i32* %5, align 4, !dbg !3246
  %18 = add nsw i32 %17, 1, !dbg !3246
  store i32 %18, i32* %5, align 4, !dbg !3246
  br label %19, !dbg !3247

; <label>:19:                                     ; preds = %16, %2
  %20 = load i32, i32* %4, align 4, !dbg !3248
  %21 = icmp ne i32 %20, 0, !dbg !3248
  br i1 %21, label %22, label %37, !dbg !3250

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %4, align 4, !dbg !3251
  %24 = call i32 @setgid(i32 %23) #9, !dbg !3253
  %25 = icmp ne i32 %24, 0, !dbg !3253
  br i1 %25, label %26, label %37, !dbg !3254

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* @verbose, align 4, !dbg !3255
  %28 = icmp ne i32 %27, 0, !dbg !3255
  br i1 %28, label %29, label %34, !dbg !3258

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno_location() #1, !dbg !3259
  %31 = load i32, i32* %30, align 4, !dbg !3261
  %32 = call i8* @strerror(i32 %31) #9, !dbg !3262
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), i8* %32), !dbg !3264
  br label %34, !dbg !3266

; <label>:34:                                     ; preds = %29, %26
  %35 = load i32, i32* %5, align 4, !dbg !3267
  %36 = add nsw i32 %35, 1, !dbg !3267
  store i32 %36, i32* %5, align 4, !dbg !3267
  br label %37, !dbg !3268

; <label>:37:                                     ; preds = %34, %22, %19
  %38 = load i32, i32* %3, align 4, !dbg !3269
  %39 = icmp ne i32 %38, 0, !dbg !3269
  br i1 %39, label %40, label %55, !dbg !3271

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %3, align 4, !dbg !3272
  %42 = call i32 @setuid(i32 %41) #9, !dbg !3274
  %43 = icmp ne i32 %42, 0, !dbg !3274
  br i1 %43, label %44, label %55, !dbg !3275

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* @verbose, align 4, !dbg !3276
  %46 = icmp ne i32 %45, 0, !dbg !3276
  br i1 %46, label %47, label %52, !dbg !3279

; <label>:47:                                     ; preds = %44
  %48 = call i32* @__errno_location() #1, !dbg !3280
  %49 = load i32, i32* %48, align 4, !dbg !3282
  %50 = call i8* @strerror(i32 %49) #9, !dbg !3283
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.114, i32 0, i32 0), i8* %50), !dbg !3285
  br label %52, !dbg !3287

; <label>:52:                                     ; preds = %47, %44
  %53 = load i32, i32* %5, align 4, !dbg !3288
  %54 = add nsw i32 %53, 1, !dbg !3288
  store i32 %54, i32* %5, align 4, !dbg !3288
  br label %55, !dbg !3289

; <label>:55:                                     ; preds = %52, %40, %37
  %56 = load i32, i32* %5, align 4, !dbg !3290
  %57 = icmp ne i32 %56, 0, !dbg !3290
  br i1 %57, label %65, label %58, !dbg !3292

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* @verbose, align 4, !dbg !3293
  %60 = icmp sgt i32 %59, 1, !dbg !3295
  br i1 %60, label %61, label %65, !dbg !3296

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %3, align 4, !dbg !3297
  %63 = load i32, i32* %4, align 4, !dbg !3299
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.115, i32 0, i32 0), i32 %62, i32 %63), !dbg !3300
  br label %65, !dbg !3301

; <label>:65:                                     ; preds = %61, %58, %55
  ret void, !dbg !3302
}

declare %struct.group* @getgrnam(i8*) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind uwtable
define internal void @drop_fs_root() #0 !dbg !3303 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3304, metadata !248), !dbg !3305
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i8** %1, align 8, !dbg !3305
  call void @llvm.dbg.declare(metadata %struct.passwd** %2, metadata !3306, metadata !248), !dbg !3307
  %3 = call i32* @__errno_location() #1, !dbg !3308
  store i32 0, i32* %3, align 4, !dbg !3309
  %4 = load i8*, i8** %1, align 8, !dbg !3310
  %5 = call %struct.passwd* @getpwnam(i8* %4), !dbg !3312
  store %struct.passwd* %5, %struct.passwd** %2, align 8, !dbg !3313
  %6 = icmp ne %struct.passwd* %5, null, !dbg !3313
  br i1 %6, label %17, label %7, !dbg !3314

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @verbose, align 4, !dbg !3315
  %9 = icmp ne i32 %8, 0, !dbg !3315
  br i1 %9, label %10, label %16, !dbg !3318

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %1, align 8, !dbg !3319
  %12 = call i32* @__errno_location() #1, !dbg !3321
  %13 = load i32, i32* %12, align 4, !dbg !3322
  %14 = call i8* @strerror(i32 %13) #9, !dbg !3323
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i8* %11, i8* %14), !dbg !3325
  br label %16, !dbg !3326

; <label>:16:                                     ; preds = %10, %7
  br label %61, !dbg !3327

; <label>:17:                                     ; preds = %0
  %18 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !3328
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 5, !dbg !3330
  %20 = load i8*, i8** %19, align 8, !dbg !3330
  %21 = call i32 @chdir(i8* %20) #9, !dbg !3331
  %22 = icmp ne i32 %21, 0, !dbg !3331
  br i1 %22, label %23, label %35, !dbg !3332

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* @verbose, align 4, !dbg !3333
  %25 = icmp ne i32 %24, 0, !dbg !3333
  br i1 %25, label %26, label %34, !dbg !3336

; <label>:26:                                     ; preds = %23
  %27 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !3337
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 5, !dbg !3339
  %29 = load i8*, i8** %28, align 8, !dbg !3339
  %30 = call i32* @__errno_location() #1, !dbg !3340
  %31 = load i32, i32* %30, align 4, !dbg !3341
  %32 = call i8* @strerror(i32 %31) #9, !dbg !3342
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i8* %29, i8* %32), !dbg !3344
  br label %34, !dbg !3345

; <label>:34:                                     ; preds = %26, %23
  br label %61, !dbg !3346

; <label>:35:                                     ; preds = %17
  %36 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !3347
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 5, !dbg !3349
  %38 = load i8*, i8** %37, align 8, !dbg !3349
  %39 = call i32 @chroot(i8* %38) #9, !dbg !3350
  %40 = icmp ne i32 %39, 0, !dbg !3350
  br i1 %40, label %41, label %53, !dbg !3351

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* @verbose, align 4, !dbg !3352
  %43 = icmp ne i32 %42, 0, !dbg !3352
  br i1 %43, label %44, label %52, !dbg !3355

; <label>:44:                                     ; preds = %41
  %45 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !3356
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 5, !dbg !3358
  %47 = load i8*, i8** %46, align 8, !dbg !3358
  %48 = call i32* @__errno_location() #1, !dbg !3359
  %49 = load i32, i32* %48, align 4, !dbg !3360
  %50 = call i8* @strerror(i32 %49) #9, !dbg !3361
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.110, i32 0, i32 0), i8* %47, i8* %50), !dbg !3363
  br label %52, !dbg !3364

; <label>:52:                                     ; preds = %44, %41
  br label %61, !dbg !3365

; <label>:53:                                     ; preds = %35
  %54 = load i32, i32* @verbose, align 4, !dbg !3366
  %55 = icmp sgt i32 %54, 1, !dbg !3368
  br i1 %55, label %56, label %61, !dbg !3369

; <label>:56:                                     ; preds = %53
  %57 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !3370
  %58 = getelementptr inbounds %struct.passwd, %struct.passwd* %57, i32 0, i32 5, !dbg !3372
  %59 = load i8*, i8** %58, align 8, !dbg !3372
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.111, i32 0, i32 0), i8* %59), !dbg !3373
  br label %61, !dbg !3374

; <label>:61:                                     ; preds = %16, %34, %52, %56, %53
  ret void, !dbg !3375
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare i32 @chroot(i8*) #4

; Function Attrs: nounwind
declare i32 @setgroups(i64, i32*) #4

; Function Attrs: nounwind
declare i32 @setgid(i32) #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #4

; Function Attrs: nounwind uwtable
define internal void @drop_capabilities() #0 !dbg !3376 {
  %1 = alloca %struct._cap_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct._cap_struct** %1, metadata !3377, metadata !248), !dbg !3382
  %2 = call %struct._cap_struct* @cap_init(), !dbg !3383
  store %struct._cap_struct* %2, %struct._cap_struct** %1, align 8, !dbg !3385
  %3 = icmp ne %struct._cap_struct* %2, null, !dbg !3385
  br i1 %3, label %13, label %4, !dbg !3386

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @verbose, align 4, !dbg !3387
  %6 = icmp ne i32 %5, 0, !dbg !3387
  br i1 %6, label %7, label %12, !dbg !3390

; <label>:7:                                      ; preds = %4
  %8 = call i32* @__errno_location() #1, !dbg !3391
  %9 = load i32, i32* %8, align 4, !dbg !3393
  %10 = call i8* @strerror(i32 %9) #9, !dbg !3394
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.116, i32 0, i32 0), i8* %10), !dbg !3396
  br label %12, !dbg !3398

; <label>:12:                                     ; preds = %7, %4
  br label %35, !dbg !3399

; <label>:13:                                     ; preds = %0
  %14 = load %struct._cap_struct*, %struct._cap_struct** %1, align 8, !dbg !3400
  %15 = call i32 @cap_set_proc(%struct._cap_struct* %14), !dbg !3402
  %16 = icmp ne i32 %15, 0, !dbg !3402
  br i1 %16, label %17, label %26, !dbg !3403

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* @verbose, align 4, !dbg !3404
  %19 = icmp ne i32 %18, 0, !dbg !3404
  br i1 %19, label %20, label %25, !dbg !3407

; <label>:20:                                     ; preds = %17
  %21 = call i32* @__errno_location() #1, !dbg !3408
  %22 = load i32, i32* %21, align 4, !dbg !3410
  %23 = call i8* @strerror(i32 %22) #9, !dbg !3411
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.117, i32 0, i32 0), i8* %23), !dbg !3413
  br label %25, !dbg !3415

; <label>:25:                                     ; preds = %20, %17
  br label %26, !dbg !3416

; <label>:26:                                     ; preds = %25, %13
  %27 = load i32, i32* @verbose, align 4, !dbg !3417
  %28 = icmp sgt i32 %27, 1, !dbg !3419
  br i1 %28, label %29, label %31, !dbg !3420

; <label>:29:                                     ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i32 0, i32 0)), !dbg !3421
  br label %31, !dbg !3423

; <label>:31:                                     ; preds = %29, %26
  %32 = load %struct._cap_struct*, %struct._cap_struct** %1, align 8, !dbg !3424
  %33 = bitcast %struct._cap_struct* %32 to i8*, !dbg !3424
  %34 = call i32 @cap_free(i8* %33), !dbg !3425
  br label %35, !dbg !3426

; <label>:35:                                     ; preds = %31, %12
  ret void, !dbg !3427
}

declare %struct._cap_struct* @cap_init() #3

declare i32 @cap_set_proc(%struct._cap_struct*) #3

declare i32 @cap_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @pingip_send() #0 !dbg !221 {
  %1 = load i32, i32* @send_reply, align 4, !dbg !3429
  %2 = icmp ne i32 %1, 0, !dbg !3429
  %3 = select i1 %2, i32 2, i32 1, !dbg !3429
  %4 = trunc i32 %3 to i16, !dbg !3429
  %5 = load i32, i32* @unsolicited, align 4, !dbg !3431
  %6 = icmp ne i32 %5, 0, !dbg !3431
  %7 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ethxmas, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ethnull, i32 0, i32 0), !dbg !3431
  %8 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3432
  %9 = load i32, i32* @pingip_send.arp, align 4, !dbg !3433
  %10 = call i32 @libnet_build_arp(i16 zeroext 1, i16 zeroext 2048, i8 zeroext 6, i8 zeroext 4, i16 zeroext %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i8* bitcast (i32* @srcip to i8*), i8* %7, i8* bitcast (i32* @dstip to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @pingip_send.padding, i32 0, i32 0), i32 16, %struct.libnet_context* %8, i32 %9), !dbg !3434
  store i32 %10, i32* @pingip_send.arp, align 4, !dbg !3435
  %11 = icmp eq i32 -1, %10, !dbg !3436
  br i1 %11, label %12, label %17, !dbg !3437

; <label>:12:                                     ; preds = %0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3438
  %14 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3440
  %15 = call i8* @libnet_geterror(%struct.libnet_context* %14), !dbg !3441
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.119, i32 0, i32 0), i8* %15), !dbg !3442
  call void @sigint(i32 0), !dbg !3443
  br label %17, !dbg !3444

; <label>:17:                                     ; preds = %12, %0
  %18 = load i16, i16* @vlan_tag, align 2, !dbg !3445
  %19 = sext i16 %18 to i32, !dbg !3445
  %20 = icmp sge i32 %19, 0, !dbg !3447
  br i1 %20, label %21, label %28, !dbg !3448

; <label>:21:                                     ; preds = %17
  %22 = load i16, i16* @vlan_prio, align 2, !dbg !3449
  %23 = trunc i16 %22 to i8, !dbg !3449
  %24 = load i16, i16* @vlan_tag, align 2, !dbg !3451
  %25 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3452
  %26 = load i32, i32* @pingip_send.eth, align 4, !dbg !3453
  %27 = call i32 @libnet_build_802_1q(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i16 zeroext -32512, i8 zeroext %23, i8 zeroext 0, i16 zeroext %24, i16 zeroext 2054, i8* null, i32 0, %struct.libnet_context* %25, i32 %26), !dbg !3454
  store i32 %27, i32* @pingip_send.eth, align 4, !dbg !3455
  br label %32, !dbg !3456

; <label>:28:                                     ; preds = %17
  %29 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3457
  %30 = load i32, i32* @pingip_send.eth, align 4, !dbg !3459
  %31 = call i32 @libnet_build_ethernet(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dstmac, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @srcmac, i32 0, i32 0), i16 zeroext 2054, i8* null, i32 0, %struct.libnet_context* %29, i32 %30), !dbg !3460
  store i32 %31, i32* @pingip_send.eth, align 4, !dbg !3461
  br label %32

; <label>:32:                                     ; preds = %28, %21
  %33 = load i32, i32* @pingip_send.eth, align 4, !dbg !3462
  %34 = icmp eq i32 -1, %33, !dbg !3464
  br i1 %34, label %35, label %44, !dbg !3465

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3466
  %37 = load i16, i16* @vlan_tag, align 2, !dbg !3468
  %38 = sext i16 %37 to i32, !dbg !3468
  %39 = icmp sge i32 %38, 0, !dbg !3469
  %40 = select i1 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0), !dbg !3470
  %41 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3471
  %42 = call i8* @libnet_geterror(%struct.libnet_context* %41), !dbg !3472
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i32 0, i32 0), i8* %40, i8* %42), !dbg !3473
  call void @sigint(i32 0), !dbg !3474
  br label %44, !dbg !3475

; <label>:44:                                     ; preds = %35, %32
  %45 = load i32, i32* @verbose, align 4, !dbg !3476
  %46 = icmp sgt i32 %45, 1, !dbg !3478
  br i1 %46, label %47, label %51, !dbg !3479

; <label>:47:                                     ; preds = %44
  call void @getclock(%struct.timespec* @lastpacketsent), !dbg !3480
  %48 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @lastpacketsent, i32 0, i32 0), align 8, !dbg !3482
  %49 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @lastpacketsent, i32 0, i32 1), align 8, !dbg !3483
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.123, i32 0, i32 0), i64 %48, i64 %49), !dbg !3484
  br label %51, !dbg !3485

; <label>:51:                                     ; preds = %47, %44
  %52 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3486
  %53 = call i32 @libnet_write(%struct.libnet_context* %52), !dbg !3488
  %54 = icmp eq i32 -1, %53, !dbg !3489
  br i1 %54, label %55, label %60, !dbg !3490

; <label>:55:                                     ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3491
  %57 = load %struct.libnet_context*, %struct.libnet_context** @libnet, align 8, !dbg !3493
  %58 = call i8* @libnet_geterror(%struct.libnet_context* %57), !dbg !3494
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.124, i32 0, i32 0), i8* %58), !dbg !3495
  call void @sigint(i32 0), !dbg !3496
  br label %60, !dbg !3497

; <label>:60:                                     ; preds = %55, %51
  call void @getclock(%struct.timespec* @lastpacketsent), !dbg !3498
  %61 = load i32, i32* @numsent, align 4, !dbg !3499
  %62 = add i32 %61, 1, !dbg !3499
  store i32 %62, i32* @numsent, align 4, !dbg !3499
  ret void, !dbg !3500
}

declare i32 @libnet_build_arp(i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i8*, i8*, i8*, i8*, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_802_1q(i8*, i8*, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_ethernet(i8*, i8*, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_write(%struct.libnet_context*) #3

; Function Attrs: nounwind uwtable
define internal void @fixup_timespec(%struct.timespec*) #0 !dbg !3501 {
  %2 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %2, metadata !3502, metadata !248), !dbg !3503
  br label %3, !dbg !3504

; <label>:3:                                      ; preds = %8, %1
  %4 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !3505
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !3507
  %6 = load i64, i64* %5, align 8, !dbg !3507
  %7 = icmp slt i64 %6, 0, !dbg !3508
  br i1 %7, label %8, label %17, !dbg !3509

; <label>:8:                                      ; preds = %3
  %9 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !3510
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0, !dbg !3512
  %11 = load i64, i64* %10, align 8, !dbg !3513
  %12 = add nsw i64 %11, -1, !dbg !3513
  store i64 %12, i64* %10, align 8, !dbg !3513
  %13 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !3514
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1, !dbg !3515
  %15 = load i64, i64* %14, align 8, !dbg !3516
  %16 = add nsw i64 %15, 1000000000, !dbg !3516
  store i64 %16, i64* %14, align 8, !dbg !3516
  br label %3, !dbg !3517, !llvm.loop !3519

; <label>:17:                                     ; preds = %3
  ret void, !dbg !3520
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare i32 @pcap_dispatch(%struct.pcap*, i32, void (i8*, %struct.pcap_pkthdr*, i8*)*, i8*) #3

declare i32 @usleep(i32) #3

declare i32 @libnet_build_icmpv4_echo(i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i32, %struct.libnet_context*, i32) #3

declare i32 @libnet_build_ipv4(i16 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i32, i32, i8*, i32, %struct.libnet_context*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!241, !242}
!llvm.ident = !{!243}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !69, globals: !113)
!1 = !DIFile(filename: "[inter]src--arping.o.i", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!2 = !{!3, !17, !25, !40}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 1538, size: 32, align: 32, elements: !13)
!4 = !DIFile(filename: "arping.c", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!5 = distinct !DISubprogram(name: "arping_main", scope: !4, file: !4, line: 1514, type: !6, isLocal: false, isDefinition: true, scopeLine: 1515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8, !9}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{}
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "NONE", value: 0)
!15 = !DIEnumerator(name: "PINGMAC", value: 1)
!16 = !DIEnumerator(name: "PINGIP", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 196, size: 32, align: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DIEnumerator(name: "NORMAL", value: 0)
!20 = !DIEnumerator(name: "QUIET", value: 1)
!21 = !DIEnumerator(name: "RAW", value: 2)
!22 = !DIEnumerator(name: "RRAW", value: 3)
!23 = !DIEnumerator(name: "RAWRAW", value: 4)
!24 = !DIEnumerator(name: "DOT", value: 5)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 46, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!28 = !DIEnumerator(name: "_ISupper", value: 256)
!29 = !DIEnumerator(name: "_ISlower", value: 512)
!30 = !DIEnumerator(name: "_ISalpha", value: 1024)
!31 = !DIEnumerator(name: "_ISdigit", value: 2048)
!32 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!33 = !DIEnumerator(name: "_ISspace", value: 8192)
!34 = !DIEnumerator(name: "_ISprint", value: 16384)
!35 = !DIEnumerator(name: "_ISgraph", value: 32768)
!36 = !DIEnumerator(name: "_ISblank", value: 1)
!37 = !DIEnumerator(name: "_IScntrl", value: 2)
!38 = !DIEnumerator(name: "_ISpunct", value: 4)
!39 = !DIEnumerator(name: "_ISalnum", value: 8)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 40, size: 32, align: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!43 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!44 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!45 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!46 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!47 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!48 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!49 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!50 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!51 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!52 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!53 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!54 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!55 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!56 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!57 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!58 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!59 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!60 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!61 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!62 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!63 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!64 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!65 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!66 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!67 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!68 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!69 = !{!10, !70, !71, !77, !78, !79, !80, !105, !106, !8, !107, !108, !111}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !73, line: 33, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !75, line: 30, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!76 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!78 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!79 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_handler", file: !81, line: 237, baseType: !82)
!81 = !DIFile(filename: "/usr/include/pcap/pcap.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !71, !85, !103}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !81, line: 160, size: 192, align: 64, elements: !88)
!88 = !{!89, !97, !102}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !87, file: !81, line: 161, baseType: !90, size: 128, align: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !91, line: 30, size: 128, align: 64, elements: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !90, file: !91, line: 32, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !75, line: 139, baseType: !79)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !90, file: !91, line: 33, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !75, line: 141, baseType: !79)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !87, file: !81, line: 162, baseType: !98, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !99, line: 87, baseType: !100)
!99 = !DIFile(filename: "/usr/include/pcap/bpf.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !73, line: 35, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !75, line: 32, baseType: !78)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !81, line: 163, baseType: !98, size: 32, align: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!105 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!106 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!107 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !110, line: 48, baseType: !76)
!110 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !112, line: 54, baseType: !79)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!113 = !{!114, !165, !166, !167, !168, !170, !177, !178, !182, !183, !184, !186, !192, !197, !200, !201, !202, !203, !204, !205, !206, !209, !212, !213, !214, !215, !216, !217, !218, !219, !220, !224, !225, !229, !230, !234, !235, !236, !237, !238, !239, !240}
!114 = distinct !DIGlobalVariable(name: "libnet", scope: !0, file: !4, line: 146, type: !115, isLocal: false, isDefinition: true, variable: %struct.libnet_context** @libnet)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !117, line: 235, baseType: !118)
!117 = !DIFile(filename: "/usr/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !117, line: 186, size: 3200, align: 64, elements: !119)
!119 = !{!120, !121, !122, !141, !142, !143, !144, !145, !146, !147, !155, !156, !160, !164}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !118, file: !117, line: 192, baseType: !8, size: 32, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !118, file: !117, line: 194, baseType: !8, size: 32, align: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !118, file: !117, line: 206, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !117, line: 178, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !117, line: 77, size: 384, align: 64, elements: !126)
!126 = !{!127, !128, !130, !132, !133, !134, !135, !138, !140}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !125, file: !117, line: 79, baseType: !108, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !125, file: !117, line: 80, baseType: !129, size: 32, align: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !110, line: 51, baseType: !78)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !125, file: !117, line: 81, baseType: !131, size: 16, align: 16, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !110, line: 49, baseType: !107)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !125, file: !117, line: 92, baseType: !129, size: 32, align: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !117, line: 94, baseType: !109, size: 8, align: 8, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !117, line: 168, baseType: !109, size: 8, align: 8, offset: 168)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !125, file: !117, line: 170, baseType: !136, size: 32, align: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !117, line: 70, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !73, line: 196, baseType: !8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !117, line: 175, baseType: !139, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !117, line: 176, baseType: !139, size: 64, align: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !118, file: !117, line: 207, baseType: !123, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !118, file: !117, line: 208, baseType: !129, size: 32, align: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !118, file: !117, line: 210, baseType: !8, size: 32, align: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !118, file: !117, line: 224, baseType: !8, size: 32, align: 32, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !118, file: !117, line: 225, baseType: !8, size: 32, align: 32, offset: 288)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !118, file: !117, line: 226, baseType: !10, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !118, file: !117, line: 228, baseType: !148, size: 192, align: 64, offset: 384)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !117, line: 52, size: 192, align: 64, elements: !149)
!149 = !{!150, !153, !154}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !148, file: !117, line: 55, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !110, line: 55, baseType: !152)
!152 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !148, file: !117, line: 56, baseType: !151, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !148, file: !117, line: 57, baseType: !151, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !118, file: !117, line: 229, baseType: !136, size: 32, align: 32, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !118, file: !117, line: 230, baseType: !157, size: 512, align: 8, offset: 608)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, align: 8, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !118, file: !117, line: 232, baseType: !161, size: 2048, align: 8, offset: 1120)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, align: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !118, file: !117, line: 233, baseType: !129, size: 32, align: 32, offset: 3168)
!165 = distinct !DIGlobalVariable(name: "numsent", scope: !0, file: !4, line: 185, type: !78, isLocal: false, isDefinition: true, variable: i32* @numsent)
!166 = distinct !DIGlobalVariable(name: "numrecvd", scope: !0, file: !4, line: 186, type: !78, isLocal: false, isDefinition: true, variable: i32* @numrecvd)
!167 = distinct !DIGlobalVariable(name: "verbose", scope: !0, file: !4, line: 209, type: !8, isLocal: false, isDefinition: true, variable: i32* @verbose)
!168 = distinct !DIGlobalVariable(name: "ip_broadcast_num", scope: !0, file: !4, line: 207, type: !169, isLocal: true, isDefinition: true, variable: i32 -1)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!170 = distinct !DIGlobalVariable(name: "lastpacketsent", scope: !0, file: !4, line: 151, type: !171, isLocal: true, isDefinition: true, variable: %struct.timespec* @lastpacketsent)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !172, line: 120, size: 128, align: 64, elements: !173)
!172 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !171, file: !172, line: 122, baseType: !94, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !171, file: !172, line: 123, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !75, line: 175, baseType: !79)
!177 = distinct !DIGlobalVariable(name: "dstip", scope: !0, file: !4, line: 160, type: !129, isLocal: false, isDefinition: true, variable: i32* @dstip)
!178 = distinct !DIGlobalVariable(name: "dstmac", scope: !0, file: !4, line: 166, type: !179, isLocal: true, isDefinition: true, variable: [6 x i8]* @dstmac)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 48, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 6)
!182 = distinct !DIGlobalVariable(name: "srcip", scope: !0, file: !4, line: 168, type: !129, isLocal: false, isDefinition: true, variable: i32* @srcip)
!183 = distinct !DIGlobalVariable(name: "srcmac", scope: !0, file: !4, line: 169, type: !179, isLocal: true, isDefinition: true, variable: [6 x i8]* @srcmac)
!184 = distinct !DIGlobalVariable(name: "lastreplymac", scope: !0, file: !4, line: 183, type: !185, isLocal: true, isDefinition: true, variable: [6 x i8]* @lastreplymac)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 48, align: 8, elements: !180)
!186 = distinct !DIGlobalVariable(name: "time_to_die", scope: !0, file: !4, line: 212, type: !187, isLocal: true, isDefinition: true, variable: i32* @time_to_die)
!187 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !189, line: 40, baseType: !190)
!189 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !191, line: 22, baseType: !8)
!191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!192 = distinct !DIGlobalVariable(name: "clock_gettime_failed", scope: !193, file: !4, line: 606, type: !8, isLocal: true, isDefinition: true, variable: i32* @getclock.clock_gettime_failed)
!193 = distinct !DISubprogram(name: "getclock", scope: !4, file: !4, line: 603, type: !194, isLocal: true, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!197 = distinct !DIGlobalVariable(name: "vlan_tag", scope: !0, file: !4, line: 171, type: !198, isLocal: true, isDefinition: true, variable: i16* @vlan_tag)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !73, line: 195, baseType: !199)
!199 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!200 = distinct !DIGlobalVariable(name: "addr_must_be_same", scope: !0, file: !4, line: 177, type: !8, isLocal: true, isDefinition: true, variable: i32* @addr_must_be_same)
!201 = distinct !DIGlobalVariable(name: "beep", scope: !0, file: !4, line: 174, type: !8, isLocal: true, isDefinition: true, variable: i32* @beep)
!202 = distinct !DIGlobalVariable(name: "display", scope: !0, file: !4, line: 202, type: !17, isLocal: true, isDefinition: true, variable: i32* @display)
!203 = distinct !DIGlobalVariable(name: "alsototal", scope: !0, file: !4, line: 176, type: !8, isLocal: true, isDefinition: true, variable: i32* @alsototal)
!204 = distinct !DIGlobalVariable(name: "dupfound", scope: !0, file: !4, line: 182, type: !8, isLocal: true, isDefinition: true, variable: i32* @dupfound)
!205 = distinct !DIGlobalVariable(name: "max_replies", scope: !0, file: !4, line: 187, type: !78, isLocal: true, isDefinition: true, variable: i32* @max_replies)
!206 = distinct !DIGlobalVariable(name: "ethxmas", scope: !0, file: !4, line: 205, type: !207, isLocal: true, isDefinition: true, variable: [6 x i8]* @ethxmas)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 48, align: 8, elements: !180)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!209 = distinct !DIGlobalVariable(name: "version", scope: !0, file: !4, line: 144, type: !210, isLocal: true, isDefinition: true, variable: i8** @version)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!212 = distinct !DIGlobalVariable(name: "ip_broadcast", scope: !0, file: !4, line: 206, type: !210, isLocal: true, isDefinition: true, variable: i8** @ip_broadcast)
!213 = distinct !DIGlobalVariable(name: "finddup", scope: !0, file: !4, line: 181, type: !8, isLocal: true, isDefinition: true, variable: i32* @finddup)
!214 = distinct !DIGlobalVariable(name: "reverse_beep", scope: !0, file: !4, line: 175, type: !8, isLocal: true, isDefinition: true, variable: i32* @reverse_beep)
!215 = distinct !DIGlobalVariable(name: "timestamp_type", scope: !0, file: !4, line: 188, type: !210, isLocal: true, isDefinition: true, variable: i8** @timestamp_type)
!216 = distinct !DIGlobalVariable(name: "send_reply", scope: !0, file: !4, line: 179, type: !8, isLocal: true, isDefinition: true, variable: i32* @send_reply)
!217 = distinct !DIGlobalVariable(name: "vlan_prio", scope: !0, file: !4, line: 172, type: !198, isLocal: true, isDefinition: true, variable: i16* @vlan_prio)
!218 = distinct !DIGlobalVariable(name: "unsolicited", scope: !0, file: !4, line: 178, type: !8, isLocal: true, isDefinition: true, variable: i32* @unsolicited)
!219 = distinct !DIGlobalVariable(name: "target", scope: !0, file: !4, line: 154, type: !210, isLocal: true, isDefinition: true, variable: i8** @target)
!220 = distinct !DIGlobalVariable(name: "arp", scope: !221, file: !4, line: 1017, type: !136, isLocal: true, isDefinition: true, variable: i32* @pingip_send.arp)
!221 = distinct !DISubprogram(name: "pingip_send", scope: !4, file: !4, line: 1015, type: !222, isLocal: true, isDefinition: true, scopeLine: 1016, isOptimized: false, unit: !0, variables: !12)
!222 = !DISubroutineType(types: !223)
!223 = !{null}
!224 = distinct !DIGlobalVariable(name: "eth", scope: !221, file: !4, line: 1017, type: !136, isLocal: true, isDefinition: true, variable: i32* @pingip_send.eth)
!225 = distinct !DIGlobalVariable(name: "padding", scope: !221, file: !4, line: 1023, type: !226, isLocal: true, isDefinition: true, variable: [16 x i8]* @pingip_send.padding)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, align: 8, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 16)
!229 = distinct !DIGlobalVariable(name: "ethnull", scope: !0, file: !4, line: 204, type: !207, isLocal: true, isDefinition: true, variable: [6 x i8]* @ethnull)
!230 = distinct !DIGlobalVariable(name: "icmp", scope: !231, file: !4, line: 926, type: !136, isLocal: true, isDefinition: true, variable: i32* @pingmac_send.icmp)
!231 = distinct !DISubprogram(name: "pingmac_send", scope: !4, file: !4, line: 924, type: !232, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !131, !131}
!234 = distinct !DIGlobalVariable(name: "ipv4", scope: !231, file: !4, line: 926, type: !136, isLocal: true, isDefinition: true, variable: i32* @pingmac_send.ipv4)
!235 = distinct !DIGlobalVariable(name: "eth", scope: !231, file: !4, line: 926, type: !136, isLocal: true, isDefinition: true, variable: i32* @pingmac_send.eth)
!236 = distinct !DIGlobalVariable(name: "padding", scope: !231, file: !4, line: 932, type: !226, isLocal: true, isDefinition: true, variable: [16 x i8]* @pingmac_send.padding)
!237 = distinct !DIGlobalVariable(name: "stats_total_time", scope: !0, file: !4, line: 192, type: !106, isLocal: true, isDefinition: true, variable: double* @stats_total_time)
!238 = distinct !DIGlobalVariable(name: "stats_min_time", scope: !0, file: !4, line: 190, type: !106, isLocal: true, isDefinition: true, variable: double* @stats_min_time)
!239 = distinct !DIGlobalVariable(name: "stats_max_time", scope: !0, file: !4, line: 191, type: !106, isLocal: true, isDefinition: true, variable: double* @stats_max_time)
!240 = distinct !DIGlobalVariable(name: "stats_total_sq_time", scope: !0, file: !4, line: 193, type: !106, isLocal: true, isDefinition: true, variable: double* @stats_total_sq_time)
!241 = !{i32 2, !"Dwarf Version", i32 4}
!242 = !{i32 2, !"Debug Info Version", i32 3}
!243 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!244 = distinct !DISubprogram(name: "strip_newline", scope: !4, file: !4, line: 532, type: !245, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !10}
!247 = !DILocalVariable(name: "s", arg: 1, scope: !244, file: !4, line: 532, type: !10)
!248 = !DIExpression()
!249 = !DILocation(line: 532, column: 21, scope: !244)
!250 = !DILocalVariable(name: "n", scope: !244, file: !4, line: 533, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !252, line: 216, baseType: !152)
!252 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!253 = !DILocation(line: 533, column: 16, scope: !244)
!254 = !DILocation(line: 534, column: 25, scope: !255)
!255 = distinct !DILexicalBlock(scope: !244, file: !4, line: 534, column: 9)
!256 = !DILocation(line: 534, column: 18, scope: !255)
!257 = !DILocation(line: 534, column: 16, scope: !255)
!258 = !DILocation(line: 534, column: 14, scope: !255)
!259 = !DILocation(line: 534, column: 29, scope: !260)
!260 = !DILexicalBlockFile(scope: !261, file: !4, discriminator: 1)
!261 = distinct !DILexicalBlock(scope: !255, file: !4, line: 534, column: 9)
!262 = !DILocation(line: 534, column: 31, scope: !260)
!263 = !DILocation(line: 534, column: 37, scope: !264)
!264 = !DILexicalBlockFile(scope: !261, file: !4, discriminator: 2)
!265 = !DILocation(line: 534, column: 39, scope: !264)
!266 = !DILocation(line: 534, column: 35, scope: !264)
!267 = !DILocation(line: 534, column: 44, scope: !264)
!268 = !DILocation(line: 534, column: 9, scope: !269)
!269 = !DILexicalBlockFile(scope: !255, file: !4, discriminator: 3)
!270 = !DILocation(line: 535, column: 19, scope: !271)
!271 = distinct !DILexicalBlock(scope: !261, file: !4, line: 534, column: 59)
!272 = !DILocation(line: 535, column: 21, scope: !271)
!273 = !DILocation(line: 535, column: 17, scope: !271)
!274 = !DILocation(line: 535, column: 26, scope: !271)
!275 = !DILocation(line: 536, column: 9, scope: !271)
!276 = !DILocation(line: 534, column: 54, scope: !277)
!277 = !DILexicalBlockFile(scope: !261, file: !4, discriminator: 4)
!278 = !DILocation(line: 534, column: 9, scope: !277)
!279 = distinct !{!279, !280}
!280 = !DILocation(line: 534, column: 9, scope: !244)
!281 = !DILocation(line: 537, column: 1, scope: !244)
!282 = distinct !DISubprogram(name: "do_libnet_init", scope: !4, file: !4, line: 546, type: !283, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !210, !8}
!285 = !DILocalVariable(name: "ifname", arg: 1, scope: !282, file: !4, line: 546, type: !210)
!286 = !DILocation(line: 546, column: 28, scope: !282)
!287 = !DILocalVariable(name: "recursive", arg: 2, scope: !282, file: !4, line: 546, type: !8)
!288 = !DILocation(line: 546, column: 40, scope: !282)
!289 = !DILocalVariable(name: "ebuf", scope: !282, file: !4, line: 548, type: !161)
!290 = !DILocation(line: 548, column: 7, scope: !282)
!291 = !DILocation(line: 549, column: 9, scope: !282)
!292 = !DILocation(line: 549, column: 17, scope: !282)
!293 = !DILocation(line: 550, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !282, file: !4, line: 550, column: 6)
!295 = !DILocation(line: 550, column: 14, scope: !294)
!296 = !DILocation(line: 550, column: 6, scope: !282)
!297 = !DILocation(line: 551, column: 53, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !4, line: 550, column: 19)
!299 = !DILocation(line: 551, column: 62, scope: !300)
!300 = !DILexicalBlockFile(scope: !298, file: !4, discriminator: 1)
!301 = !DILocation(line: 551, column: 53, scope: !300)
!302 = !DILocation(line: 551, column: 53, scope: !303)
!303 = !DILexicalBlockFile(scope: !298, file: !4, discriminator: 2)
!304 = !DILocation(line: 551, column: 53, scope: !305)
!305 = !DILexicalBlockFile(scope: !298, file: !4, discriminator: 3)
!306 = !DILocation(line: 551, column: 17, scope: !305)
!307 = !DILocation(line: 552, column: 2, scope: !298)
!308 = !DILocation(line: 553, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !282, file: !4, line: 553, column: 6)
!310 = !DILocation(line: 553, column: 6, scope: !282)
!311 = !DILocation(line: 555, column: 18, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !4, line: 553, column: 14)
!313 = !DILocation(line: 555, column: 3, scope: !312)
!314 = !DILocation(line: 556, column: 10, scope: !312)
!315 = !DILocation(line: 557, column: 2, scope: !312)
!316 = !DILocation(line: 562, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !282, file: !4, line: 561, column: 6)
!318 = !DILocation(line: 563, column: 8, scope: !317)
!319 = !DILocation(line: 561, column: 17, scope: !317)
!320 = !DILocation(line: 561, column: 15, scope: !317)
!321 = !DILocation(line: 561, column: 6, scope: !282)
!322 = !DILocation(line: 564, column: 31, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !4, line: 563, column: 16)
!324 = !DILocation(line: 564, column: 17, scope: !323)
!325 = !DILocation(line: 565, column: 22, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !4, line: 565, column: 21)
!327 = !DILocation(line: 565, column: 21, scope: !323)
!328 = !DILocation(line: 569, column: 25, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !4, line: 565, column: 30)
!330 = !DILocation(line: 570, column: 29, scope: !331)
!331 = distinct !DILexicalBlock(scope: !329, file: !4, line: 570, column: 29)
!332 = !DILocation(line: 570, column: 36, scope: !331)
!333 = !DILocation(line: 570, column: 29, scope: !329)
!334 = !DILocation(line: 571, column: 33, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !4, line: 570, column: 44)
!336 = !DILocation(line: 573, column: 17, scope: !329)
!337 = !DILocation(line: 573, column: 28, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !4, discriminator: 1)
!339 = distinct !DILexicalBlock(scope: !326, file: !4, line: 573, column: 28)
!340 = !DILocation(line: 576, column: 25, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !4, line: 573, column: 39)
!342 = !DILocation(line: 578, column: 24, scope: !323)
!343 = !DILocation(line: 579, column: 25, scope: !323)
!344 = !DILocation(line: 579, column: 34, scope: !345)
!345 = !DILexicalBlockFile(scope: !323, file: !4, discriminator: 1)
!346 = !DILocation(line: 579, column: 25, scope: !345)
!347 = !DILocation(line: 579, column: 25, scope: !348)
!348 = !DILexicalBlockFile(scope: !323, file: !4, discriminator: 2)
!349 = !DILocation(line: 579, column: 25, scope: !350)
!350 = !DILexicalBlockFile(scope: !323, file: !4, discriminator: 3)
!351 = !DILocation(line: 580, column: 25, scope: !323)
!352 = !DILocation(line: 580, column: 33, scope: !345)
!353 = !DILocation(line: 580, column: 25, scope: !345)
!354 = !DILocation(line: 580, column: 25, scope: !348)
!355 = !DILocation(line: 580, column: 25, scope: !350)
!356 = !DILocation(line: 578, column: 17, scope: !345)
!357 = !DILocation(line: 581, column: 21, scope: !358)
!358 = distinct !DILexicalBlock(scope: !323, file: !4, line: 581, column: 21)
!359 = !DILocation(line: 581, column: 30, scope: !358)
!360 = !DILocation(line: 581, column: 33, scope: !361)
!361 = !DILexicalBlockFile(scope: !358, file: !4, discriminator: 1)
!362 = !DILocation(line: 581, column: 21, scope: !361)
!363 = !DILocation(line: 582, column: 32, scope: !364)
!364 = distinct !DILexicalBlock(scope: !358, file: !4, line: 581, column: 44)
!365 = !DILocation(line: 582, column: 25, scope: !364)
!366 = !DILocation(line: 584, column: 17, scope: !364)
!367 = !DILocation(line: 585, column: 3, scope: !323)
!368 = !DILocation(line: 587, column: 1, scope: !282)
!369 = distinct !DISubprogram(name: "sigint", scope: !4, file: !4, line: 593, type: !370, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !8}
!372 = !DILocalVariable(name: "i", arg: 1, scope: !369, file: !4, line: 593, type: !8)
!373 = !DILocation(line: 593, column: 12, scope: !369)
!374 = !DILocation(line: 595, column: 16, scope: !369)
!375 = !DILocation(line: 596, column: 14, scope: !369)
!376 = !DILocation(line: 597, column: 1, scope: !369)
!377 = distinct !DISubprogram(name: "get_mac_addr", scope: !4, file: !4, line: 804, type: !378, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!378 = !DISubroutineType(types: !379)
!379 = !{!8, !210, !108}
!380 = !DILocalVariable(name: "in", arg: 1, scope: !377, file: !4, line: 804, type: !210)
!381 = !DILocation(line: 804, column: 26, scope: !377)
!382 = !DILocalVariable(name: "out", arg: 2, scope: !377, file: !4, line: 804, type: !108)
!383 = !DILocation(line: 804, column: 39, scope: !377)
!384 = !DILocalVariable(name: "formats", scope: !377, file: !4, line: 806, type: !385)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, align: 64, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 4)
!388 = !DILocation(line: 806, column: 21, scope: !377)
!389 = !DILocalVariable(name: "c", scope: !377, file: !4, line: 812, type: !8)
!390 = !DILocation(line: 812, column: 13, scope: !377)
!391 = !DILocation(line: 813, column: 16, scope: !392)
!392 = distinct !DILexicalBlock(scope: !377, file: !4, line: 813, column: 9)
!393 = !DILocation(line: 813, column: 14, scope: !392)
!394 = !DILocation(line: 813, column: 29, scope: !395)
!395 = !DILexicalBlockFile(scope: !396, file: !4, discriminator: 1)
!396 = distinct !DILexicalBlock(scope: !392, file: !4, line: 813, column: 9)
!397 = !DILocation(line: 813, column: 21, scope: !395)
!398 = !DILocation(line: 813, column: 9, scope: !395)
!399 = !DILocalVariable(name: "n", scope: !400, file: !4, line: 814, type: !401)
!400 = distinct !DILexicalBlock(scope: !396, file: !4, line: 813, column: 38)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 192, align: 32, elements: !180)
!402 = !DILocation(line: 814, column: 30, scope: !400)
!403 = !DILocation(line: 815, column: 33, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !4, line: 815, column: 21)
!405 = !DILocation(line: 815, column: 45, scope: !404)
!406 = !DILocation(line: 815, column: 37, scope: !404)
!407 = !DILocation(line: 816, column: 34, scope: !404)
!408 = !DILocation(line: 816, column: 41, scope: !404)
!409 = !DILocation(line: 816, column: 48, scope: !404)
!410 = !DILocation(line: 816, column: 55, scope: !404)
!411 = !DILocation(line: 816, column: 62, scope: !404)
!412 = !DILocation(line: 816, column: 69, scope: !404)
!413 = !DILocation(line: 815, column: 26, scope: !404)
!414 = !DILocation(line: 815, column: 23, scope: !404)
!415 = !DILocation(line: 815, column: 21, scope: !400)
!416 = !DILocation(line: 817, column: 32, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !4, line: 817, column: 25)
!418 = distinct !DILexicalBlock(scope: !404, file: !4, line: 816, column: 76)
!419 = !DILocation(line: 817, column: 30, scope: !417)
!420 = !DILocation(line: 817, column: 37, scope: !421)
!421 = !DILexicalBlockFile(scope: !422, file: !4, discriminator: 1)
!422 = distinct !DILexicalBlock(scope: !417, file: !4, line: 817, column: 25)
!423 = !DILocation(line: 817, column: 39, scope: !421)
!424 = !DILocation(line: 817, column: 25, scope: !421)
!425 = !DILocation(line: 818, column: 44, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !4, line: 817, column: 49)
!427 = !DILocation(line: 818, column: 42, scope: !426)
!428 = !DILocation(line: 818, column: 47, scope: !426)
!429 = !DILocation(line: 818, column: 37, scope: !426)
!430 = !DILocation(line: 818, column: 33, scope: !426)
!431 = !DILocation(line: 818, column: 40, scope: !426)
!432 = !DILocation(line: 819, column: 25, scope: !426)
!433 = !DILocation(line: 817, column: 45, scope: !434)
!434 = !DILexicalBlockFile(scope: !422, file: !4, discriminator: 2)
!435 = !DILocation(line: 817, column: 25, scope: !434)
!436 = distinct !{!436, !437}
!437 = !DILocation(line: 817, column: 25, scope: !418)
!438 = !DILocation(line: 820, column: 25, scope: !418)
!439 = !DILocation(line: 822, column: 9, scope: !400)
!440 = !DILocation(line: 813, column: 34, scope: !441)
!441 = !DILexicalBlockFile(scope: !396, file: !4, discriminator: 2)
!442 = !DILocation(line: 813, column: 9, scope: !441)
!443 = distinct !{!443, !444}
!444 = !DILocation(line: 813, column: 9, scope: !377)
!445 = !DILocation(line: 823, column: 9, scope: !377)
!446 = !DILocation(line: 824, column: 1, scope: !377)
!447 = distinct !DISubprogram(name: "pingip_recv", scope: !4, file: !4, line: 1092, type: !448, isLocal: false, isDefinition: true, scopeLine: 1093, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !210, !450, !451}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!452 = !DILocalVariable(name: "unused", arg: 1, scope: !447, file: !4, line: 1092, type: !210)
!453 = !DILocation(line: 1092, column: 25, scope: !447)
!454 = !DILocalVariable(name: "h", arg: 2, scope: !447, file: !4, line: 1092, type: !450)
!455 = !DILocation(line: 1092, column: 53, scope: !447)
!456 = !DILocalVariable(name: "packet", arg: 3, scope: !447, file: !4, line: 1092, type: !451)
!457 = !DILocation(line: 1092, column: 75, scope: !447)
!458 = !DILocalVariable(name: "pkt_srcmac", scope: !447, file: !4, line: 1094, type: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!461 = !DILocation(line: 1094, column: 30, scope: !447)
!462 = !DILocalVariable(name: "veth", scope: !447, file: !4, line: 1095, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_802_1q_hdr", file: !466, line: 120, size: 144, align: 16, elements: !467)
!466 = !DIFile(filename: "/usr/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!467 = !{!468, !469, !470, !471, !472}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_dhost", scope: !465, file: !466, line: 122, baseType: !179, size: 48, align: 8)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_shost", scope: !465, file: !466, line: 123, baseType: !179, size: 48, align: 8, offset: 48)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tpi", scope: !465, file: !466, line: 124, baseType: !131, size: 16, align: 16, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_priority_c_vid", scope: !465, file: !466, line: 125, baseType: !131, size: 16, align: 16, offset: 112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_len", scope: !465, file: !466, line: 129, baseType: !131, size: 16, align: 16, offset: 128)
!473 = !DILocation(line: 1095, column: 41, scope: !447)
!474 = !DILocalVariable(name: "heth", scope: !447, file: !4, line: 1096, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_802_3_hdr", file: !466, line: 183, size: 112, align: 16, elements: !477)
!477 = !{!478, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_802_3_dhost", scope: !476, file: !466, line: 185, baseType: !179, size: 48, align: 8)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_802_3_shost", scope: !476, file: !466, line: 186, baseType: !179, size: 48, align: 8, offset: 48)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_802_3_len", scope: !476, file: !466, line: 187, baseType: !131, size: 16, align: 16, offset: 96)
!481 = !DILocation(line: 1096, column: 27, scope: !447)
!482 = !DILocalVariable(name: "harp", scope: !447, file: !4, line: 1097, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_arp_hdr", file: !466, line: 196, size: 64, align: 16, elements: !485)
!485 = !{!486, !487, !488, !489, !490}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hrd", scope: !484, file: !466, line: 198, baseType: !131, size: 16, align: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pro", scope: !484, file: !466, line: 213, baseType: !131, size: 16, align: 16, offset: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hln", scope: !484, file: !466, line: 214, baseType: !109, size: 8, align: 8, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pln", scope: !484, file: !466, line: 215, baseType: !109, size: 8, align: 8, offset: 40)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ar_op", scope: !484, file: !466, line: 216, baseType: !131, size: 16, align: 16, offset: 48)
!491 = !DILocation(line: 1097, column: 25, scope: !447)
!492 = !DILocalVariable(name: "arrival", scope: !447, file: !4, line: 1098, type: !171)
!493 = !DILocation(line: 1098, column: 25, scope: !447)
!494 = !DILocation(line: 1099, column: 16, scope: !447)
!495 = !DILocation(line: 1101, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1101, column: 13)
!497 = !DILocation(line: 1101, column: 21, scope: !496)
!498 = !DILocation(line: 1101, column: 13, scope: !447)
!499 = !DILocation(line: 1102, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !4, line: 1101, column: 26)
!501 = !DILocation(line: 1103, column: 2, scope: !500)
!502 = !DILocation(line: 1105, column: 9, scope: !447)
!503 = !DILocation(line: 1107, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1107, column: 6)
!505 = !DILocation(line: 1107, column: 15, scope: !504)
!506 = !DILocation(line: 1107, column: 6, scope: !447)
!507 = !DILocation(line: 1108, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !4, line: 1107, column: 21)
!509 = !DILocation(line: 1108, column: 10, scope: !508)
!510 = !DILocation(line: 1108, column: 8, scope: !508)
!511 = !DILocation(line: 1109, column: 25, scope: !508)
!512 = !DILocation(line: 1109, column: 18, scope: !508)
!513 = !DILocation(line: 1109, column: 30, scope: !508)
!514 = !DILocation(line: 1109, column: 10, scope: !508)
!515 = !DILocation(line: 1109, column: 8, scope: !508)
!516 = !DILocation(line: 1110, column: 16, scope: !508)
!517 = !DILocation(line: 1110, column: 22, scope: !508)
!518 = !DILocation(line: 1110, column: 14, scope: !508)
!519 = !DILocation(line: 1111, column: 2, scope: !508)
!520 = !DILocation(line: 1113, column: 21, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !4, line: 1113, column: 21)
!522 = distinct !DILexicalBlock(scope: !504, file: !4, line: 1111, column: 9)
!523 = !DILocation(line: 1113, column: 24, scope: !521)
!524 = !DILocation(line: 1113, column: 31, scope: !521)
!525 = !DILocation(line: 1113, column: 21, scope: !522)
!526 = !DILocation(line: 1114, column: 25, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !4, line: 1113, column: 73)
!528 = !DILocation(line: 1117, column: 17, scope: !522)
!529 = !DILocation(line: 1117, column: 10, scope: !522)
!530 = !DILocation(line: 1117, column: 8, scope: !522)
!531 = !DILocation(line: 1118, column: 25, scope: !522)
!532 = !DILocation(line: 1118, column: 18, scope: !522)
!533 = !DILocation(line: 1118, column: 30, scope: !522)
!534 = !DILocation(line: 1118, column: 10, scope: !522)
!535 = !DILocation(line: 1118, column: 8, scope: !522)
!536 = !DILocation(line: 1119, column: 16, scope: !522)
!537 = !DILocation(line: 1119, column: 22, scope: !522)
!538 = !DILocation(line: 1119, column: 14, scope: !522)
!539 = !DILocation(line: 1121, column: 21, scope: !540)
!540 = distinct !DILexicalBlock(scope: !522, file: !4, line: 1121, column: 21)
!541 = !DILocation(line: 1121, column: 27, scope: !540)
!542 = !DILocation(line: 1121, column: 34, scope: !540)
!543 = !DILocation(line: 1121, column: 21, scope: !522)
!544 = !DILocation(line: 1122, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !4, line: 1121, column: 40)
!546 = !DILocation(line: 1126, column: 21, scope: !547)
!547 = distinct !DILexicalBlock(scope: !522, file: !4, line: 1126, column: 21)
!548 = !DILocation(line: 1126, column: 27, scope: !547)
!549 = !DILocation(line: 1126, column: 34, scope: !547)
!550 = !DILocation(line: 1126, column: 21, scope: !522)
!551 = !DILocation(line: 1127, column: 25, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !4, line: 1126, column: 40)
!553 = !DILocation(line: 1132, column: 19, scope: !554)
!554 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1132, column: 13)
!555 = !DILocation(line: 1132, column: 25, scope: !554)
!556 = !DILocation(line: 1132, column: 13, scope: !554)
!557 = !DILocation(line: 1132, column: 32, scope: !554)
!558 = !DILocation(line: 1132, column: 13, scope: !447)
!559 = !DILocation(line: 1133, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !554, file: !4, line: 1132, column: 47)
!561 = !DILocation(line: 1135, column: 13, scope: !562)
!562 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1135, column: 13)
!563 = !DILocation(line: 1135, column: 21, scope: !562)
!564 = !DILocation(line: 1135, column: 13, scope: !447)
!565 = !DILocation(line: 1136, column: 17, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !4, line: 1135, column: 26)
!567 = !DILocation(line: 1137, column: 9, scope: !566)
!568 = !DILocation(line: 1140, column: 19, scope: !569)
!569 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1140, column: 13)
!570 = !DILocation(line: 1140, column: 25, scope: !569)
!571 = !DILocation(line: 1140, column: 13, scope: !569)
!572 = !DILocation(line: 1140, column: 33, scope: !569)
!573 = !DILocation(line: 1140, column: 13, scope: !447)
!574 = !DILocation(line: 1141, column: 17, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !4, line: 1140, column: 49)
!576 = !DILocation(line: 1143, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1143, column: 13)
!578 = !DILocation(line: 1143, column: 21, scope: !577)
!579 = !DILocation(line: 1143, column: 13, scope: !447)
!580 = !DILocation(line: 1144, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !4, line: 1143, column: 26)
!582 = !DILocation(line: 1145, column: 9, scope: !581)
!583 = !DILocation(line: 1148, column: 19, scope: !584)
!584 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1148, column: 13)
!585 = !DILocation(line: 1148, column: 25, scope: !584)
!586 = !DILocation(line: 1148, column: 13, scope: !584)
!587 = !DILocation(line: 1148, column: 33, scope: !584)
!588 = !DILocation(line: 1148, column: 13, scope: !447)
!589 = !DILocation(line: 1149, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !584, file: !4, line: 1148, column: 49)
!591 = !DILocation(line: 1151, column: 13, scope: !592)
!592 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1151, column: 13)
!593 = !DILocation(line: 1151, column: 21, scope: !592)
!594 = !DILocation(line: 1151, column: 13, scope: !447)
!595 = !DILocation(line: 1152, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !4, line: 1151, column: 26)
!597 = !DILocation(line: 1153, column: 9, scope: !596)
!598 = !DILocation(line: 1157, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1157, column: 13)
!600 = !DILocation(line: 1157, column: 13, scope: !447)
!601 = !DILocation(line: 1158, column: 37, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !4, line: 1158, column: 21)
!603 = distinct !DILexicalBlock(scope: !599, file: !4, line: 1157, column: 32)
!604 = !DILocation(line: 1158, column: 28, scope: !602)
!605 = !DILocation(line: 1158, column: 42, scope: !602)
!606 = !DILocation(line: 1158, column: 21, scope: !602)
!607 = !DILocation(line: 1158, column: 21, scope: !603)
!608 = !DILocation(line: 1160, column: 25, scope: !609)
!609 = distinct !DILexicalBlock(scope: !602, file: !4, line: 1159, column: 40)
!610 = !DILocation(line: 1162, column: 9, scope: !603)
!611 = !DILocation(line: 1163, column: 13, scope: !612)
!612 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1163, column: 13)
!613 = !DILocation(line: 1163, column: 21, scope: !612)
!614 = !DILocation(line: 1163, column: 13, scope: !447)
!615 = !DILocation(line: 1164, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !4, line: 1163, column: 26)
!617 = !DILocation(line: 1165, column: 9, scope: !616)
!618 = !DILocalVariable(name: "ip", scope: !447, file: !4, line: 1168, type: !129)
!619 = !DILocation(line: 1168, column: 18, scope: !447)
!620 = !DILocation(line: 1169, column: 9, scope: !447)
!621 = !DILocation(line: 1169, column: 28, scope: !447)
!622 = !DILocation(line: 1169, column: 21, scope: !447)
!623 = !DILocation(line: 1169, column: 35, scope: !447)
!624 = !DILocation(line: 1169, column: 41, scope: !447)
!625 = !DILocation(line: 1169, column: 33, scope: !447)
!626 = !DILocation(line: 1169, column: 48, scope: !447)
!627 = !DILocation(line: 1170, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1170, column: 13)
!629 = !DILocation(line: 1170, column: 22, scope: !628)
!630 = !DILocation(line: 1170, column: 19, scope: !628)
!631 = !DILocation(line: 1170, column: 13, scope: !447)
!632 = !DILocation(line: 1171, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !4, line: 1170, column: 26)
!634 = !DILocation(line: 1173, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1173, column: 13)
!636 = !DILocation(line: 1173, column: 21, scope: !635)
!637 = !DILocation(line: 1173, column: 13, scope: !447)
!638 = !DILocation(line: 1174, column: 17, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !4, line: 1173, column: 26)
!640 = !DILocation(line: 1175, column: 9, scope: !639)
!641 = !DILocation(line: 1177, column: 22, scope: !447)
!642 = !DILocation(line: 1177, column: 47, scope: !643)
!643 = !DILexicalBlockFile(scope: !447, file: !4, discriminator: 1)
!644 = !DILocation(line: 1177, column: 45, scope: !447)
!645 = !DILocation(line: 1177, column: 9, scope: !646)
!646 = !DILexicalBlockFile(scope: !447, file: !4, discriminator: 2)
!647 = !DILocalVariable(name: "buf", scope: !447, file: !4, line: 1178, type: !648)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, align: 8, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 128)
!651 = !DILocation(line: 1178, column: 14, scope: !447)
!652 = !DILocation(line: 1179, column: 13, scope: !653)
!653 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1179, column: 13)
!654 = !DILocation(line: 1179, column: 13, scope: !447)
!655 = !DILocation(line: 1180, column: 17, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !4, line: 1179, column: 19)
!657 = !DILocation(line: 1181, column: 9, scope: !656)
!658 = !DILocation(line: 1182, column: 16, scope: !447)
!659 = !DILocation(line: 1182, column: 9, scope: !447)
!660 = !DILocation(line: 1184, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1182, column: 25)
!662 = !DILocation(line: 1185, column: 17, scope: !661)
!663 = !DILocation(line: 1188, column: 24, scope: !661)
!664 = !DILocation(line: 1188, column: 27, scope: !661)
!665 = !DILocation(line: 1188, column: 43, scope: !661)
!666 = !DILocation(line: 1188, column: 55, scope: !661)
!667 = !DILocation(line: 1188, column: 32, scope: !661)
!668 = !DILocation(line: 1189, column: 42, scope: !661)
!669 = !DILocation(line: 1189, column: 24, scope: !661)
!670 = !DILocation(line: 1189, column: 50, scope: !661)
!671 = !DILocation(line: 1187, column: 17, scope: !661)
!672 = !DILocation(line: 1191, column: 21, scope: !673)
!673 = distinct !DILexicalBlock(scope: !661, file: !4, line: 1191, column: 21)
!674 = !DILocation(line: 1191, column: 21, scope: !661)
!675 = !DILocation(line: 1192, column: 39, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !4, line: 1191, column: 32)
!677 = !DILocation(line: 1192, column: 46, scope: !676)
!678 = !DILocation(line: 1192, column: 25, scope: !676)
!679 = !DILocation(line: 1193, column: 17, scope: !676)
!680 = !DILocation(line: 1194, column: 70, scope: !661)
!681 = !DILocation(line: 1194, column: 36, scope: !661)
!682 = !DILocation(line: 1194, column: 17, scope: !683)
!683 = !DILexicalBlockFile(scope: !661, file: !4, discriminator: 1)
!684 = !DILocation(line: 1196, column: 17, scope: !661)
!685 = !DILocation(line: 1198, column: 17, scope: !661)
!686 = !DILocation(line: 1200, column: 44, scope: !661)
!687 = !DILocation(line: 1200, column: 56, scope: !661)
!688 = !DILocation(line: 1200, column: 33, scope: !661)
!689 = !DILocation(line: 1201, column: 42, scope: !661)
!690 = !DILocation(line: 1201, column: 24, scope: !661)
!691 = !DILocation(line: 1200, column: 17, scope: !683)
!692 = !DILocation(line: 1202, column: 17, scope: !661)
!693 = !DILocation(line: 1204, column: 48, scope: !661)
!694 = !DILocation(line: 1204, column: 30, scope: !661)
!695 = !DILocation(line: 1204, column: 17, scope: !683)
!696 = !DILocation(line: 1205, column: 17, scope: !661)
!697 = !DILocation(line: 1207, column: 41, scope: !661)
!698 = !DILocation(line: 1207, column: 53, scope: !661)
!699 = !DILocation(line: 1207, column: 30, scope: !661)
!700 = !DILocation(line: 1207, column: 17, scope: !683)
!701 = !DILocation(line: 1208, column: 17, scope: !661)
!702 = !DILocation(line: 1210, column: 24, scope: !661)
!703 = !DILocation(line: 1210, column: 17, scope: !661)
!704 = !DILocation(line: 1211, column: 9, scope: !661)
!705 = !DILocation(line: 1212, column: 15, scope: !447)
!706 = !DILocation(line: 1212, column: 9, scope: !447)
!707 = !DILocation(line: 1214, column: 17, scope: !447)
!708 = !DILocation(line: 1214, column: 9, scope: !447)
!709 = !DILocation(line: 1217, column: 17, scope: !710)
!710 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1214, column: 26)
!711 = !DILocation(line: 1219, column: 17, scope: !710)
!712 = !DILocation(line: 1220, column: 9, scope: !710)
!713 = !DILocation(line: 1221, column: 13, scope: !714)
!714 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1221, column: 13)
!715 = !DILocation(line: 1221, column: 13, scope: !447)
!716 = !DILocation(line: 1223, column: 28, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !4, line: 1222, column: 21)
!718 = distinct !DILexicalBlock(scope: !714, file: !4, line: 1221, column: 23)
!719 = !DILocation(line: 1222, column: 21, scope: !717)
!720 = !DILocation(line: 1222, column: 21, scope: !718)
!721 = !DILocation(line: 1224, column: 34, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !4, line: 1223, column: 44)
!723 = !DILocation(line: 1225, column: 17, scope: !722)
!724 = !DILocation(line: 1226, column: 9, scope: !718)
!725 = !DILocation(line: 1227, column: 30, scope: !447)
!726 = !DILocation(line: 1227, column: 9, scope: !447)
!727 = !DILocation(line: 1229, column: 17, scope: !447)
!728 = !DILocation(line: 1230, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !447, file: !4, line: 1230, column: 13)
!730 = !DILocation(line: 1230, column: 25, scope: !729)
!731 = !DILocation(line: 1230, column: 22, scope: !729)
!732 = !DILocation(line: 1230, column: 13, scope: !447)
!733 = !DILocation(line: 1231, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !4, line: 1230, column: 38)
!735 = !DILocation(line: 1232, column: 9, scope: !734)
!736 = !DILocation(line: 1233, column: 1, scope: !447)
!737 = !DILocalVariable(name: "ts", arg: 1, scope: !193, file: !4, line: 603, type: !196)
!738 = !DILocation(line: 603, column: 27, scope: !193)
!739 = !DILocation(line: 607, column: 14, scope: !740)
!740 = distinct !DILexicalBlock(scope: !193, file: !4, line: 607, column: 13)
!741 = !DILocation(line: 607, column: 13, scope: !193)
!742 = !DILocation(line: 608, column: 56, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !4, line: 608, column: 21)
!744 = distinct !DILexicalBlock(scope: !740, file: !4, line: 607, column: 36)
!745 = !DILocation(line: 608, column: 26, scope: !743)
!746 = !DILocation(line: 608, column: 23, scope: !743)
!747 = !DILocation(line: 608, column: 21, scope: !744)
!748 = !DILocation(line: 609, column: 25, scope: !749)
!749 = distinct !DILexicalBlock(scope: !743, file: !4, line: 608, column: 61)
!750 = !DILocation(line: 611, column: 24, scope: !744)
!751 = !DILocation(line: 612, column: 35, scope: !744)
!752 = !DILocation(line: 612, column: 34, scope: !744)
!753 = !DILocation(line: 612, column: 25, scope: !754)
!754 = !DILexicalBlockFile(scope: !744, file: !4, discriminator: 1)
!755 = !DILocation(line: 611, column: 17, scope: !744)
!756 = !DILocation(line: 613, column: 38, scope: !744)
!757 = !DILocation(line: 614, column: 9, scope: !744)
!758 = !DILocalVariable(name: "tv", scope: !193, file: !4, line: 616, type: !90)
!759 = !DILocation(line: 616, column: 24, scope: !193)
!760 = !DILocation(line: 617, column: 19, scope: !761)
!761 = distinct !DILexicalBlock(scope: !193, file: !4, line: 617, column: 13)
!762 = !DILocation(line: 617, column: 16, scope: !761)
!763 = !DILocation(line: 617, column: 13, scope: !193)
!764 = !DILocation(line: 618, column: 24, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !4, line: 617, column: 43)
!766 = !DILocation(line: 619, column: 35, scope: !765)
!767 = !DILocation(line: 619, column: 34, scope: !765)
!768 = !DILocation(line: 619, column: 25, scope: !769)
!769 = !DILexicalBlockFile(scope: !765, file: !4, discriminator: 1)
!770 = !DILocation(line: 618, column: 17, scope: !765)
!771 = !DILocation(line: 620, column: 17, scope: !765)
!772 = !DILocation(line: 621, column: 9, scope: !765)
!773 = !DILocation(line: 622, column: 25, scope: !193)
!774 = !DILocation(line: 622, column: 9, scope: !193)
!775 = !DILocation(line: 622, column: 13, scope: !193)
!776 = !DILocation(line: 622, column: 20, scope: !193)
!777 = !DILocation(line: 623, column: 26, scope: !193)
!778 = !DILocation(line: 623, column: 34, scope: !193)
!779 = !DILocation(line: 623, column: 9, scope: !193)
!780 = !DILocation(line: 623, column: 13, scope: !193)
!781 = !DILocation(line: 623, column: 21, scope: !193)
!782 = !DILocation(line: 624, column: 1, scope: !193)
!783 = !DILocation(line: 624, column: 1, scope: !784)
!784 = !DILexicalBlockFile(scope: !193, file: !4, discriminator: 1)
!785 = distinct !DISubprogram(name: "update_stats", scope: !4, file: !4, line: 830, type: !786, isLocal: true, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !106}
!788 = !DILocalVariable(name: "sample", arg: 1, scope: !785, file: !4, line: 830, type: !106)
!789 = !DILocation(line: 830, column: 21, scope: !785)
!790 = !DILocation(line: 832, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !785, file: !4, line: 832, column: 13)
!792 = !DILocation(line: 832, column: 28, scope: !791)
!793 = !DILocation(line: 832, column: 32, scope: !791)
!794 = !DILocation(line: 832, column: 35, scope: !795)
!795 = !DILexicalBlockFile(scope: !791, file: !4, discriminator: 1)
!796 = !DILocation(line: 832, column: 44, scope: !795)
!797 = !DILocation(line: 832, column: 42, scope: !795)
!798 = !DILocation(line: 832, column: 13, scope: !795)
!799 = !DILocation(line: 833, column: 34, scope: !800)
!800 = distinct !DILexicalBlock(scope: !791, file: !4, line: 832, column: 60)
!801 = !DILocation(line: 833, column: 32, scope: !800)
!802 = !DILocation(line: 834, column: 9, scope: !800)
!803 = !DILocation(line: 835, column: 13, scope: !804)
!804 = distinct !DILexicalBlock(scope: !785, file: !4, line: 835, column: 13)
!805 = !DILocation(line: 835, column: 22, scope: !804)
!806 = !DILocation(line: 835, column: 20, scope: !804)
!807 = !DILocation(line: 835, column: 13, scope: !785)
!808 = !DILocation(line: 836, column: 34, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !4, line: 835, column: 38)
!810 = !DILocation(line: 836, column: 32, scope: !809)
!811 = !DILocation(line: 837, column: 9, scope: !809)
!812 = !DILocation(line: 838, column: 29, scope: !785)
!813 = !DILocation(line: 838, column: 26, scope: !785)
!814 = !DILocation(line: 839, column: 32, scope: !785)
!815 = !DILocation(line: 839, column: 41, scope: !785)
!816 = !DILocation(line: 839, column: 39, scope: !785)
!817 = !DILocation(line: 839, column: 29, scope: !785)
!818 = !DILocation(line: 840, column: 1, scope: !785)
!819 = distinct !DISubprogram(name: "timespec2dbl", scope: !4, file: !4, line: 846, type: !820, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!820 = !DISubroutineType(types: !821)
!821 = !{!106, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!824 = !DILocalVariable(name: "tv", arg: 1, scope: !819, file: !4, line: 846, type: !822)
!825 = !DILocation(line: 846, column: 37, scope: !819)
!826 = !DILocation(line: 848, column: 16, scope: !819)
!827 = !DILocation(line: 848, column: 20, scope: !819)
!828 = !DILocation(line: 848, column: 37, scope: !819)
!829 = !DILocation(line: 848, column: 41, scope: !819)
!830 = !DILocation(line: 848, column: 29, scope: !819)
!831 = !DILocation(line: 848, column: 49, scope: !819)
!832 = !DILocation(line: 848, column: 27, scope: !819)
!833 = !DILocation(line: 848, column: 9, scope: !819)
!834 = distinct !DISubprogram(name: "format_mac", scope: !4, file: !4, line: 630, type: !835, isLocal: true, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!835 = !DISubroutineType(types: !836)
!836 = !{!10, !459, !10, !251}
!837 = !DILocalVariable(name: "mac", arg: 1, scope: !834, file: !4, line: 630, type: !459)
!838 = !DILocation(line: 630, column: 33, scope: !834)
!839 = !DILocalVariable(name: "buf", arg: 2, scope: !834, file: !4, line: 630, type: !10)
!840 = !DILocation(line: 630, column: 44, scope: !834)
!841 = !DILocalVariable(name: "bufsize", arg: 3, scope: !834, file: !4, line: 630, type: !251)
!842 = !DILocation(line: 630, column: 56, scope: !834)
!843 = !DILocation(line: 631, column: 18, scope: !834)
!844 = !DILocation(line: 631, column: 23, scope: !834)
!845 = !DILocation(line: 632, column: 17, scope: !834)
!846 = !DILocation(line: 632, column: 25, scope: !834)
!847 = !DILocation(line: 632, column: 33, scope: !834)
!848 = !DILocation(line: 632, column: 41, scope: !834)
!849 = !DILocation(line: 632, column: 49, scope: !834)
!850 = !DILocation(line: 632, column: 57, scope: !834)
!851 = !DILocation(line: 631, column: 9, scope: !834)
!852 = !DILocation(line: 633, column: 16, scope: !834)
!853 = !DILocation(line: 633, column: 9, scope: !834)
!854 = distinct !DISubprogram(name: "ts2str", scope: !4, file: !4, line: 880, type: !855, isLocal: true, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!855 = !DISubroutineType(types: !856)
!856 = !{!10, !822, !822, !10, !251}
!857 = !DILocalVariable(name: "tv", arg: 1, scope: !854, file: !4, line: 880, type: !822)
!858 = !DILocation(line: 880, column: 44, scope: !854)
!859 = !DILocalVariable(name: "tv2", arg: 2, scope: !854, file: !4, line: 880, type: !822)
!860 = !DILocation(line: 880, column: 71, scope: !854)
!861 = !DILocalVariable(name: "buf", arg: 3, scope: !854, file: !4, line: 881, type: !10)
!862 = !DILocation(line: 881, column: 27, scope: !854)
!863 = !DILocalVariable(name: "bufsize", arg: 4, scope: !854, file: !4, line: 881, type: !251)
!864 = !DILocation(line: 881, column: 39, scope: !854)
!865 = !DILocalVariable(name: "f", scope: !854, file: !4, line: 883, type: !106)
!866 = !DILocation(line: 883, column: 9, scope: !854)
!867 = !DILocalVariable(name: "f2", scope: !854, file: !4, line: 883, type: !106)
!868 = !DILocation(line: 883, column: 11, scope: !854)
!869 = !DILocalVariable(name: "exp", scope: !854, file: !4, line: 884, type: !8)
!870 = !DILocation(line: 884, column: 6, scope: !854)
!871 = !DILocation(line: 886, column: 26, scope: !854)
!872 = !DILocation(line: 886, column: 13, scope: !854)
!873 = !DILocation(line: 886, column: 11, scope: !854)
!874 = !DILocation(line: 887, column: 27, scope: !854)
!875 = !DILocation(line: 887, column: 14, scope: !854)
!876 = !DILocation(line: 887, column: 12, scope: !854)
!877 = !DILocation(line: 888, column: 7, scope: !854)
!878 = !DILocation(line: 888, column: 12, scope: !854)
!879 = !DILocation(line: 888, column: 10, scope: !854)
!880 = !DILocation(line: 888, column: 15, scope: !854)
!881 = !DILocation(line: 888, column: 4, scope: !854)
!882 = !DILocation(line: 889, column: 2, scope: !854)
!883 = !DILocation(line: 889, column: 9, scope: !884)
!884 = !DILexicalBlockFile(scope: !854, file: !4, discriminator: 1)
!885 = !DILocation(line: 889, column: 11, scope: !884)
!886 = !DILocation(line: 889, column: 2, scope: !884)
!887 = !DILocation(line: 890, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !854, file: !4, line: 889, column: 19)
!889 = !DILocation(line: 891, column: 5, scope: !888)
!890 = !DILocation(line: 889, column: 2, scope: !891)
!891 = !DILexicalBlockFile(scope: !854, file: !4, discriminator: 2)
!892 = distinct !{!892, !882}
!893 = !DILocation(line: 893, column: 10, scope: !854)
!894 = !DILocation(line: 893, column: 2, scope: !854)
!895 = !DILocation(line: 895, column: 26, scope: !896)
!896 = distinct !DILexicalBlock(scope: !854, file: !4, line: 893, column: 15)
!897 = !DILocation(line: 895, column: 31, scope: !896)
!898 = !DILocation(line: 895, column: 53, scope: !896)
!899 = !DILocation(line: 895, column: 17, scope: !896)
!900 = !DILocation(line: 896, column: 3, scope: !896)
!901 = !DILocation(line: 898, column: 26, scope: !896)
!902 = !DILocation(line: 898, column: 31, scope: !896)
!903 = !DILocation(line: 898, column: 53, scope: !896)
!904 = !DILocation(line: 898, column: 17, scope: !896)
!905 = !DILocation(line: 899, column: 3, scope: !896)
!906 = !DILocation(line: 901, column: 26, scope: !896)
!907 = !DILocation(line: 901, column: 31, scope: !896)
!908 = !DILocation(line: 901, column: 53, scope: !896)
!909 = !DILocation(line: 901, column: 17, scope: !896)
!910 = !DILocation(line: 902, column: 3, scope: !896)
!911 = !DILocation(line: 904, column: 26, scope: !896)
!912 = !DILocation(line: 904, column: 31, scope: !896)
!913 = !DILocation(line: 904, column: 52, scope: !896)
!914 = !DILocation(line: 904, column: 17, scope: !896)
!915 = !DILocation(line: 905, column: 3, scope: !896)
!916 = !DILocation(line: 907, column: 26, scope: !896)
!917 = !DILocation(line: 907, column: 31, scope: !896)
!918 = !DILocation(line: 907, column: 52, scope: !896)
!919 = !DILocation(line: 907, column: 53, scope: !896)
!920 = !DILocation(line: 907, column: 17, scope: !896)
!921 = !DILocation(line: 908, column: 3, scope: !896)
!922 = !DILocation(line: 911, column: 26, scope: !896)
!923 = !DILocation(line: 911, column: 31, scope: !896)
!924 = !DILocation(line: 911, column: 55, scope: !896)
!925 = !DILocation(line: 911, column: 58, scope: !896)
!926 = !DILocation(line: 911, column: 61, scope: !896)
!927 = !DILocation(line: 911, column: 17, scope: !896)
!928 = !DILocation(line: 912, column: 2, scope: !896)
!929 = !DILocation(line: 913, column: 9, scope: !854)
!930 = !DILocation(line: 913, column: 2, scope: !854)
!931 = distinct !DISubprogram(name: "pingmac_recv", scope: !4, file: !4, line: 1241, type: !932, isLocal: false, isDefinition: true, scopeLine: 1242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !210, !450, !108}
!934 = !DILocalVariable(name: "unused", arg: 1, scope: !931, file: !4, line: 1241, type: !210)
!935 = !DILocation(line: 1241, column: 26, scope: !931)
!936 = !DILocalVariable(name: "h", arg: 2, scope: !931, file: !4, line: 1241, type: !450)
!937 = !DILocation(line: 1241, column: 54, scope: !931)
!938 = !DILocalVariable(name: "packet", arg: 3, scope: !931, file: !4, line: 1241, type: !108)
!939 = !DILocation(line: 1241, column: 66, scope: !931)
!940 = !DILocalVariable(name: "pkt_dstmac", scope: !931, file: !4, line: 1243, type: !459)
!941 = !DILocation(line: 1243, column: 30, scope: !931)
!942 = !DILocalVariable(name: "pkt_srcmac", scope: !931, file: !4, line: 1244, type: !459)
!943 = !DILocation(line: 1244, column: 30, scope: !931)
!944 = !DILocalVariable(name: "veth", scope: !931, file: !4, line: 1245, type: !463)
!945 = !DILocation(line: 1245, column: 41, scope: !931)
!946 = !DILocalVariable(name: "heth", scope: !931, file: !4, line: 1246, type: !475)
!947 = !DILocation(line: 1246, column: 27, scope: !931)
!948 = !DILocalVariable(name: "hip", scope: !931, file: !4, line: 1247, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64, align: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !466, line: 666, size: 160, align: 32, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !966}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !950, file: !466, line: 669, baseType: !109, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !950, file: !466, line: 670, baseType: !109, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !950, file: !466, line: 676, baseType: !109, size: 8, align: 8, offset: 8)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !950, file: !466, line: 689, baseType: !131, size: 16, align: 16, offset: 16)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !950, file: !466, line: 690, baseType: !131, size: 16, align: 16, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !950, file: !466, line: 691, baseType: !131, size: 16, align: 16, offset: 48)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !950, file: !466, line: 704, baseType: !109, size: 8, align: 8, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !950, file: !466, line: 705, baseType: !109, size: 8, align: 8, offset: 72)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !950, file: !466, line: 706, baseType: !131, size: 16, align: 16, offset: 80)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !950, file: !466, line: 707, baseType: !962, size: 32, align: 32, offset: 96)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !41, line: 31, size: 32, align: 32, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !962, file: !41, line: 33, baseType: !965, size: 32, align: 32)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !41, line: 30, baseType: !129)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !950, file: !466, line: 707, baseType: !962, size: 32, align: 32, offset: 128)
!967 = !DILocation(line: 1247, column: 26, scope: !931)
!968 = !DILocalVariable(name: "hicmp", scope: !931, file: !4, line: 1248, type: !969)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_icmpv4_hdr", file: !466, line: 969, size: 224, align: 32, elements: !971)
!971 = !{!972, !973, !974, !975, !989}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_type", scope: !970, file: !466, line: 971, baseType: !109, size: 8, align: 8)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_code", scope: !970, file: !466, line: 1017, baseType: !109, size: 8, align: 8, offset: 8)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_sum", scope: !970, file: !466, line: 1088, baseType: !131, size: 16, align: 16, offset: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "hun", scope: !970, file: !466, line: 1114, baseType: !976, size: 32, align: 32, offset: 32)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !466, line: 1090, size: 32, align: 32, elements: !977)
!977 = !{!978, !983, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !976, file: !466, line: 1096, baseType: !979, size: 32, align: 16)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !466, line: 1092, size: 32, align: 16, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !979, file: !466, line: 1094, baseType: !131, size: 16, align: 16)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !979, file: !466, line: 1095, baseType: !131, size: 16, align: 16, offset: 16)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gateway", scope: !976, file: !466, line: 1108, baseType: !129, size: 32, align: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !976, file: !466, line: 1113, baseType: !985, size: 32, align: 16)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !466, line: 1109, size: 32, align: 16, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !985, file: !466, line: 1111, baseType: !131, size: 16, align: 16)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !985, file: !466, line: 1112, baseType: !131, size: 16, align: 16, offset: 16)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dun", scope: !970, file: !466, line: 1142, baseType: !990, size: 160, align: 32, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !466, line: 1115, size: 160, align: 32, elements: !991)
!991 = !{!992, !998, !1002, !1003}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !990, file: !466, line: 1122, baseType: !993, size: 96, align: 32)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !466, line: 1117, size: 96, align: 32, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "its_otime", scope: !993, file: !466, line: 1119, baseType: !129, size: 32, align: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "its_rtime", scope: !993, file: !466, line: 1120, baseType: !129, size: 32, align: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "its_ttime", scope: !993, file: !466, line: 1121, baseType: !129, size: 32, align: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !990, file: !466, line: 1127, baseType: !999, size: 160, align: 32)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !466, line: 1123, size: 160, align: 32, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "idi_ip", scope: !999, file: !466, line: 1125, baseType: !950, size: 160, align: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !990, file: !466, line: 1128, baseType: !129, size: 32, align: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !990, file: !466, line: 1129, baseType: !1004, size: 8, align: 8)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 8, align: 8, elements: !1007)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !73, line: 194, baseType: !1006)
!1006 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1007 = !{!1008}
!1008 = !DISubrange(count: 1)
!1009 = !DILocation(line: 1248, column: 28, scope: !931)
!1010 = !DILocalVariable(name: "arrival", scope: !931, file: !4, line: 1249, type: !171)
!1011 = !DILocation(line: 1249, column: 25, scope: !931)
!1012 = !DILocation(line: 1250, column: 16, scope: !931)
!1013 = !DILocation(line: 1252, column: 5, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1252, column: 5)
!1015 = !DILocation(line: 1252, column: 12, scope: !1014)
!1016 = !DILocation(line: 1252, column: 5, scope: !931)
!1017 = !DILocation(line: 1253, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !4, line: 1252, column: 16)
!1019 = !DILocation(line: 1254, column: 2, scope: !1018)
!1020 = !DILocation(line: 1256, column: 9, scope: !931)
!1021 = !DILocation(line: 1258, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1258, column: 13)
!1023 = !DILocation(line: 1258, column: 22, scope: !1022)
!1024 = !DILocation(line: 1258, column: 13, scope: !931)
!1025 = !DILocation(line: 1259, column: 31, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !4, line: 1258, column: 28)
!1027 = !DILocation(line: 1259, column: 24, scope: !1026)
!1028 = !DILocation(line: 1259, column: 22, scope: !1026)
!1029 = !DILocation(line: 1260, column: 38, scope: !1026)
!1030 = !DILocation(line: 1260, column: 31, scope: !1026)
!1031 = !DILocation(line: 1260, column: 43, scope: !1026)
!1032 = !DILocation(line: 1260, column: 23, scope: !1026)
!1033 = !DILocation(line: 1260, column: 21, scope: !1026)
!1034 = !DILocation(line: 1261, column: 40, scope: !1026)
!1035 = !DILocation(line: 1261, column: 33, scope: !1026)
!1036 = !DILocation(line: 1261, column: 44, scope: !1026)
!1037 = !DILocation(line: 1261, column: 25, scope: !1026)
!1038 = !DILocation(line: 1261, column: 23, scope: !1026)
!1039 = !DILocation(line: 1262, column: 30, scope: !1026)
!1040 = !DILocation(line: 1262, column: 36, scope: !1026)
!1041 = !DILocation(line: 1262, column: 28, scope: !1026)
!1042 = !DILocation(line: 1263, column: 30, scope: !1026)
!1043 = !DILocation(line: 1263, column: 36, scope: !1026)
!1044 = !DILocation(line: 1263, column: 28, scope: !1026)
!1045 = !DILocation(line: 1264, column: 9, scope: !1026)
!1046 = !DILocation(line: 1265, column: 31, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1022, file: !4, line: 1264, column: 16)
!1048 = !DILocation(line: 1265, column: 24, scope: !1047)
!1049 = !DILocation(line: 1265, column: 22, scope: !1047)
!1050 = !DILocation(line: 1266, column: 38, scope: !1047)
!1051 = !DILocation(line: 1266, column: 31, scope: !1047)
!1052 = !DILocation(line: 1266, column: 43, scope: !1047)
!1053 = !DILocation(line: 1266, column: 23, scope: !1047)
!1054 = !DILocation(line: 1266, column: 21, scope: !1047)
!1055 = !DILocation(line: 1267, column: 40, scope: !1047)
!1056 = !DILocation(line: 1267, column: 33, scope: !1047)
!1057 = !DILocation(line: 1267, column: 44, scope: !1047)
!1058 = !DILocation(line: 1267, column: 25, scope: !1047)
!1059 = !DILocation(line: 1267, column: 23, scope: !1047)
!1060 = !DILocation(line: 1268, column: 30, scope: !1047)
!1061 = !DILocation(line: 1268, column: 36, scope: !1047)
!1062 = !DILocation(line: 1268, column: 28, scope: !1047)
!1063 = !DILocation(line: 1269, column: 30, scope: !1047)
!1064 = !DILocation(line: 1269, column: 36, scope: !1047)
!1065 = !DILocation(line: 1269, column: 28, scope: !1047)
!1066 = !DILocation(line: 1273, column: 20, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1273, column: 13)
!1068 = !DILocation(line: 1273, column: 13, scope: !1067)
!1069 = !DILocation(line: 1273, column: 13, scope: !931)
!1070 = !DILocation(line: 1274, column: 17, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !4, line: 1273, column: 44)
!1072 = !DILocation(line: 1278, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1278, column: 13)
!1074 = !DILocation(line: 1278, column: 13, scope: !931)
!1075 = !DILocation(line: 1279, column: 28, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !4, line: 1279, column: 21)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !4, line: 1278, column: 41)
!1078 = !DILocation(line: 1279, column: 21, scope: !1076)
!1079 = !DILocation(line: 1279, column: 21, scope: !1077)
!1080 = !DILocation(line: 1280, column: 25, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !4, line: 1279, column: 52)
!1082 = !DILocation(line: 1282, column: 9, scope: !1077)
!1083 = !DILocation(line: 1285, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1285, column: 13)
!1085 = !DILocation(line: 1285, column: 13, scope: !931)
!1086 = !DILocalVariable(name: "tmp", scope: !1087, file: !4, line: 1286, type: !129)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !4, line: 1285, column: 32)
!1088 = !DILocation(line: 1286, column: 26, scope: !1087)
!1089 = !DILocation(line: 1287, column: 17, scope: !1087)
!1090 = !DILocation(line: 1287, column: 31, scope: !1087)
!1091 = !DILocation(line: 1287, column: 36, scope: !1087)
!1092 = !DILocation(line: 1288, column: 21, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !4, line: 1288, column: 21)
!1094 = !DILocation(line: 1288, column: 30, scope: !1093)
!1095 = !DILocation(line: 1288, column: 27, scope: !1093)
!1096 = !DILocation(line: 1288, column: 21, scope: !1087)
!1097 = !DILocation(line: 1289, column: 25, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !4, line: 1288, column: 35)
!1099 = !DILocation(line: 1291, column: 9, scope: !1087)
!1100 = !DILocation(line: 1294, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1294, column: 13)
!1102 = !DILocation(line: 1294, column: 26, scope: !1101)
!1103 = !DILocation(line: 1294, column: 13, scope: !1101)
!1104 = !DILocation(line: 1294, column: 37, scope: !1101)
!1105 = !DILocation(line: 1294, column: 13, scope: !931)
!1106 = !DILocation(line: 1295, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !4, line: 1294, column: 55)
!1108 = !DILocation(line: 1298, column: 22, scope: !931)
!1109 = !DILocation(line: 1298, column: 47, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !931, file: !4, discriminator: 1)
!1111 = !DILocation(line: 1298, column: 45, scope: !931)
!1112 = !DILocation(line: 1298, column: 9, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !931, file: !4, discriminator: 2)
!1114 = !DILocation(line: 1299, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1299, column: 13)
!1116 = !DILocation(line: 1299, column: 13, scope: !931)
!1117 = !DILocation(line: 1300, column: 17, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !4, line: 1299, column: 19)
!1119 = !DILocation(line: 1301, column: 9, scope: !1118)
!1120 = !DILocalVariable(name: "buf", scope: !931, file: !4, line: 1302, type: !648)
!1121 = !DILocation(line: 1302, column: 14, scope: !931)
!1122 = !DILocalVariable(name: "buf2", scope: !931, file: !4, line: 1303, type: !648)
!1123 = !DILocation(line: 1303, column: 14, scope: !931)
!1124 = !DILocation(line: 1304, column: 16, scope: !931)
!1125 = !DILocation(line: 1304, column: 9, scope: !931)
!1126 = !DILocation(line: 1306, column: 17, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1304, column: 25)
!1128 = !DILocation(line: 1308, column: 17, scope: !1127)
!1129 = !DILocation(line: 1309, column: 17, scope: !1127)
!1130 = !DILocation(line: 1311, column: 70, scope: !1127)
!1131 = !DILocation(line: 1311, column: 73, scope: !1127)
!1132 = !DILocation(line: 1312, column: 50, scope: !1127)
!1133 = !DILocation(line: 1312, column: 55, scope: !1127)
!1134 = !DILocation(line: 1312, column: 42, scope: !1127)
!1135 = !DILocation(line: 1312, column: 24, scope: !1127)
!1136 = !DILocation(line: 1313, column: 35, scope: !1127)
!1137 = !DILocation(line: 1313, column: 47, scope: !1127)
!1138 = !DILocation(line: 1313, column: 24, scope: !1127)
!1139 = !DILocation(line: 1314, column: 30, scope: !1127)
!1140 = !DILocation(line: 1314, column: 36, scope: !1127)
!1141 = !DILocation(line: 1314, column: 40, scope: !1127)
!1142 = !DILocation(line: 1314, column: 45, scope: !1127)
!1143 = !DILocation(line: 1314, column: 24, scope: !1127)
!1144 = !DILocation(line: 1315, column: 58, scope: !1127)
!1145 = !DILocation(line: 1315, column: 24, scope: !1127)
!1146 = !DILocation(line: 1311, column: 17, scope: !1127)
!1147 = !DILocation(line: 1316, column: 17, scope: !1127)
!1148 = !DILocation(line: 1318, column: 48, scope: !1127)
!1149 = !DILocation(line: 1318, column: 53, scope: !1127)
!1150 = !DILocation(line: 1318, column: 60, scope: !1127)
!1151 = !DILocation(line: 1318, column: 30, scope: !1127)
!1152 = !DILocation(line: 1318, column: 17, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1127, file: !4, discriminator: 1)
!1154 = !DILocation(line: 1319, column: 17, scope: !1127)
!1155 = !DILocation(line: 1321, column: 41, scope: !1127)
!1156 = !DILocation(line: 1321, column: 53, scope: !1127)
!1157 = !DILocation(line: 1321, column: 30, scope: !1127)
!1158 = !DILocation(line: 1321, column: 17, scope: !1153)
!1159 = !DILocation(line: 1322, column: 17, scope: !1127)
!1160 = !DILocation(line: 1325, column: 35, scope: !1127)
!1161 = !DILocation(line: 1325, column: 47, scope: !1127)
!1162 = !DILocation(line: 1325, column: 24, scope: !1127)
!1163 = !DILocation(line: 1326, column: 42, scope: !1127)
!1164 = !DILocation(line: 1326, column: 47, scope: !1127)
!1165 = !DILocation(line: 1326, column: 54, scope: !1127)
!1166 = !DILocation(line: 1326, column: 24, scope: !1127)
!1167 = !DILocation(line: 1324, column: 17, scope: !1127)
!1168 = !DILocation(line: 1327, column: 17, scope: !1127)
!1169 = !DILocation(line: 1329, column: 24, scope: !1127)
!1170 = !DILocation(line: 1329, column: 17, scope: !1127)
!1171 = !DILocation(line: 1330, column: 17, scope: !1127)
!1172 = !DILocation(line: 1331, column: 9, scope: !1127)
!1173 = !DILocation(line: 1332, column: 15, scope: !931)
!1174 = !DILocation(line: 1332, column: 9, scope: !931)
!1175 = !DILocation(line: 1333, column: 17, scope: !931)
!1176 = !DILocation(line: 1333, column: 9, scope: !931)
!1177 = !DILocation(line: 1336, column: 17, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1333, column: 26)
!1179 = !DILocation(line: 1338, column: 17, scope: !1178)
!1180 = !DILocation(line: 1339, column: 9, scope: !1178)
!1181 = !DILocation(line: 1340, column: 17, scope: !931)
!1182 = !DILocation(line: 1341, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1341, column: 13)
!1184 = !DILocation(line: 1341, column: 25, scope: !1183)
!1185 = !DILocation(line: 1341, column: 22, scope: !1183)
!1186 = !DILocation(line: 1341, column: 13, scope: !931)
!1187 = !DILocation(line: 1342, column: 17, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !4, line: 1341, column: 38)
!1189 = !DILocation(line: 1343, column: 9, scope: !1188)
!1190 = !DILocation(line: 1344, column: 1, scope: !931)
!1191 = !DILocalVariable(name: "argc", arg: 1, scope: !5, file: !4, line: 1514, type: !8)
!1192 = !DILocation(line: 1514, column: 17, scope: !5)
!1193 = !DILocalVariable(name: "argv", arg: 2, scope: !5, file: !4, line: 1514, type: !9)
!1194 = !DILocation(line: 1514, column: 30, scope: !5)
!1195 = !DILocalVariable(name: "ebuf", scope: !5, file: !4, line: 1516, type: !1196)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4096, align: 8, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 512)
!1199 = !DILocation(line: 1516, column: 7, scope: !5)
!1200 = !DILocalVariable(name: "cp", scope: !5, file: !4, line: 1517, type: !10)
!1201 = !DILocation(line: 1517, column: 8, scope: !5)
!1202 = !DILocalVariable(name: "promisc", scope: !5, file: !4, line: 1518, type: !8)
!1203 = !DILocation(line: 1518, column: 6, scope: !5)
!1204 = !DILocalVariable(name: "srcip_opt", scope: !5, file: !4, line: 1519, type: !210)
!1205 = !DILocation(line: 1519, column: 21, scope: !5)
!1206 = !DILocalVariable(name: "dstip_opt", scope: !5, file: !4, line: 1520, type: !210)
!1207 = !DILocation(line: 1520, column: 21, scope: !5)
!1208 = !DILocalVariable(name: "dstip_given", scope: !5, file: !4, line: 1524, type: !8)
!1209 = !DILocation(line: 1524, column: 6, scope: !5)
!1210 = !DILocalVariable(name: "srcmac_opt", scope: !5, file: !4, line: 1525, type: !210)
!1211 = !DILocation(line: 1525, column: 21, scope: !5)
!1212 = !DILocalVariable(name: "dstmac_opt", scope: !5, file: !4, line: 1526, type: !210)
!1213 = !DILocation(line: 1526, column: 21, scope: !5)
!1214 = !DILocalVariable(name: "ifname", scope: !5, file: !4, line: 1527, type: !210)
!1215 = !DILocation(line: 1527, column: 14, scope: !5)
!1216 = !DILocalVariable(name: "opt_B", scope: !5, file: !4, line: 1528, type: !8)
!1217 = !DILocation(line: 1528, column: 13, scope: !5)
!1218 = !DILocalVariable(name: "opt_T", scope: !5, file: !4, line: 1529, type: !8)
!1219 = !DILocation(line: 1529, column: 13, scope: !5)
!1220 = !DILocalVariable(name: "opt_U", scope: !5, file: !4, line: 1530, type: !8)
!1221 = !DILocation(line: 1530, column: 13, scope: !5)
!1222 = !DILocalVariable(name: "drop_group", scope: !5, file: !4, line: 1531, type: !210)
!1223 = !DILocation(line: 1531, column: 21, scope: !5)
!1224 = !DILocalVariable(name: "parm", scope: !5, file: !4, line: 1532, type: !210)
!1225 = !DILocation(line: 1532, column: 21, scope: !5)
!1226 = !DILocalVariable(name: "c", scope: !5, file: !4, line: 1533, type: !8)
!1227 = !DILocation(line: 1533, column: 6, scope: !5)
!1228 = !DILocalVariable(name: "maxcount", scope: !5, file: !4, line: 1534, type: !8)
!1229 = !DILocation(line: 1534, column: 6, scope: !5)
!1230 = !DILocalVariable(name: "dont_use_arping_lookupdev", scope: !5, file: !4, line: 1535, type: !8)
!1231 = !DILocation(line: 1535, column: 6, scope: !5)
!1232 = !DILocalVariable(name: "bp", scope: !5, file: !4, line: 1536, type: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !99, line: 106, size: 128, align: 64, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !1233, file: !99, line: 107, baseType: !100, size: 32, align: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !1233, file: !99, line: 108, baseType: !1237, size: 64, align: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64, align: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !99, line: 1472, size: 64, align: 32, elements: !1239)
!1239 = !{!1240, !1243, !1244, !1245}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1238, file: !99, line: 1473, baseType: !1241, size: 16, align: 16)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !73, line: 34, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !75, line: 31, baseType: !107)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !1238, file: !99, line: 1474, baseType: !72, size: 8, align: 8, offset: 16)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !1238, file: !99, line: 1475, baseType: !72, size: 8, align: 8, offset: 24)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1238, file: !99, line: 1476, baseType: !98, size: 32, align: 32, offset: 32)
!1246 = !DILocation(line: 1536, column: 21, scope: !5)
!1247 = !DILocalVariable(name: "pcap", scope: !5, file: !4, line: 1537, type: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64, align: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !81, line: 79, baseType: !1250)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !81, line: 79, flags: DIFlagFwdDecl)
!1251 = !DILocation(line: 1537, column: 10, scope: !5)
!1252 = !DILocalVariable(name: "mode", scope: !5, file: !4, line: 1538, type: !3)
!1253 = !DILocation(line: 1538, column: 33, scope: !5)
!1254 = !DILocalVariable(name: "packetwait", scope: !5, file: !4, line: 1539, type: !78)
!1255 = !DILocation(line: 1539, column: 15, scope: !5)
!1256 = !DILocalVariable(name: "deadline", scope: !5, file: !4, line: 1540, type: !106)
!1257 = !DILocation(line: 1540, column: 16, scope: !5)
!1258 = !DILocalVariable(name: "bpf_filter", scope: !5, file: !4, line: 1541, type: !157)
!1259 = !DILocation(line: 1541, column: 14, scope: !5)
!1260 = !DILocation(line: 1542, column: 9, scope: !5)
!1261 = !DILocation(line: 1542, column: 17, scope: !5)
!1262 = !DILocation(line: 1544, column: 16, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1544, column: 9)
!1264 = !DILocation(line: 1544, column: 14, scope: !1263)
!1265 = !DILocation(line: 1544, column: 21, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1267, file: !4, discriminator: 1)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !4, line: 1544, column: 9)
!1268 = !DILocation(line: 1544, column: 25, scope: !1266)
!1269 = !DILocation(line: 1544, column: 23, scope: !1266)
!1270 = !DILocation(line: 1544, column: 9, scope: !1266)
!1271 = !DILocation(line: 1545, column: 34, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !4, line: 1545, column: 21)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !4, line: 1544, column: 36)
!1274 = !DILocation(line: 1545, column: 29, scope: !1272)
!1275 = !DILocation(line: 1545, column: 22, scope: !1272)
!1276 = !DILocation(line: 1545, column: 21, scope: !1273)
!1277 = !DILocation(line: 1546, column: 25, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1272, file: !4, line: 1545, column: 49)
!1279 = !DILocation(line: 1547, column: 25, scope: !1278)
!1280 = !DILocation(line: 1548, column: 25, scope: !1278)
!1281 = !DILocation(line: 1550, column: 9, scope: !1273)
!1282 = !DILocation(line: 1544, column: 32, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1267, file: !4, discriminator: 2)
!1284 = !DILocation(line: 1544, column: 9, scope: !1283)
!1285 = distinct !{!1285, !1286}
!1286 = !DILocation(line: 1544, column: 9, scope: !5)
!1287 = !DILocation(line: 1552, column: 8, scope: !5)
!1288 = !DILocation(line: 1553, column: 8, scope: !5)
!1289 = !DILocation(line: 1554, column: 2, scope: !5)
!1290 = !DILocation(line: 1556, column: 9, scope: !5)
!1291 = !DILocation(line: 1556, column: 34, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !5, file: !4, discriminator: 1)
!1293 = !DILocation(line: 1556, column: 40, scope: !1292)
!1294 = !DILocation(line: 1556, column: 27, scope: !1292)
!1295 = !DILocation(line: 1556, column: 25, scope: !1292)
!1296 = !DILocation(line: 1556, column: 19, scope: !1292)
!1297 = !DILocation(line: 1556, column: 9, scope: !1292)
!1298 = !DILocation(line: 1558, column: 10, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1557, column: 87)
!1300 = !DILocation(line: 1558, column: 3, scope: !1299)
!1301 = !DILocation(line: 1560, column: 14, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !4, line: 1558, column: 13)
!1303 = !DILocation(line: 1561, column: 4, scope: !1302)
!1304 = !DILocation(line: 1563, column: 9, scope: !1302)
!1305 = !DILocation(line: 1564, column: 4, scope: !1302)
!1306 = !DILocation(line: 1566, column: 22, scope: !1302)
!1307 = !DILocation(line: 1567, column: 4, scope: !1302)
!1308 = !DILocation(line: 1569, column: 16, scope: !1302)
!1309 = !DILocation(line: 1569, column: 14, scope: !1302)
!1310 = !DILocation(line: 1570, column: 4, scope: !1302)
!1311 = !DILocation(line: 1572, column: 37, scope: !1302)
!1312 = !DILocation(line: 1572, column: 35, scope: !1302)
!1313 = !DILocation(line: 1573, column: 37, scope: !1302)
!1314 = !DILocation(line: 1574, column: 31, scope: !1302)
!1315 = !DILocation(line: 1575, column: 4, scope: !1302)
!1316 = !DILocation(line: 1577, column: 20, scope: !1302)
!1317 = !DILocation(line: 1577, column: 15, scope: !1302)
!1318 = !DILocation(line: 1577, column: 13, scope: !1302)
!1319 = !DILocation(line: 1578, column: 4, scope: !1302)
!1320 = !DILocation(line: 1580, column: 44, scope: !1302)
!1321 = !DILocation(line: 1580, column: 39, scope: !1302)
!1322 = !DILocation(line: 1580, column: 37, scope: !1302)
!1323 = !DILocation(line: 1581, column: 25, scope: !1302)
!1324 = !DILocation(line: 1583, column: 12, scope: !1302)
!1325 = !DILocation(line: 1584, column: 4, scope: !1302)
!1326 = !DILocation(line: 1586, column: 12, scope: !1302)
!1327 = !DILocation(line: 1587, column: 4, scope: !1302)
!1328 = !DILocation(line: 1589, column: 38, scope: !1302)
!1329 = !DILocation(line: 1590, column: 25, scope: !1302)
!1330 = !DILocation(line: 1592, column: 29, scope: !1302)
!1331 = !DILocation(line: 1593, column: 4, scope: !1302)
!1332 = !DILocation(line: 1595, column: 4, scope: !1302)
!1333 = !DILocation(line: 1597, column: 38, scope: !1302)
!1334 = !DILocation(line: 1597, column: 36, scope: !1302)
!1335 = !DILocation(line: 1598, column: 25, scope: !1302)
!1336 = !DILocation(line: 1600, column: 15, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1302, file: !4, line: 1600, column: 8)
!1338 = !DILocation(line: 1600, column: 8, scope: !1337)
!1339 = !DILocation(line: 1600, column: 8, scope: !1302)
!1340 = !DILocation(line: 1601, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !4, line: 1600, column: 29)
!1342 = !DILocation(line: 1601, column: 5, scope: !1341)
!1343 = !DILocation(line: 1607, column: 5, scope: !1341)
!1344 = !DILocation(line: 1600, column: 26, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1337, file: !4, discriminator: 1)
!1346 = !DILocation(line: 1610, column: 13, scope: !1302)
!1347 = !DILocation(line: 1610, column: 11, scope: !1302)
!1348 = !DILocation(line: 1611, column: 4, scope: !1302)
!1349 = !DILocation(line: 1613, column: 42, scope: !1302)
!1350 = !DILocation(line: 1613, column: 40, scope: !1302)
!1351 = !DILocation(line: 1614, column: 25, scope: !1302)
!1352 = !DILocation(line: 1616, column: 12, scope: !1302)
!1353 = !DILocation(line: 1617, column: 4, scope: !1302)
!1354 = !DILocation(line: 1619, column: 36, scope: !1302)
!1355 = !DILocation(line: 1620, column: 25, scope: !1302)
!1356 = !DILocation(line: 1622, column: 12, scope: !1302)
!1357 = !DILocation(line: 1623, column: 4, scope: !1302)
!1358 = !DILocation(line: 1625, column: 42, scope: !1302)
!1359 = !DILocation(line: 1625, column: 37, scope: !1302)
!1360 = !DILocation(line: 1625, column: 35, scope: !1302)
!1361 = !DILocation(line: 1626, column: 29, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1302, file: !4, line: 1626, column: 29)
!1363 = !DILocation(line: 1626, column: 39, scope: !1362)
!1364 = !DILocation(line: 1626, column: 43, scope: !1362)
!1365 = !DILocation(line: 1626, column: 46, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1362, file: !4, discriminator: 1)
!1367 = !DILocation(line: 1626, column: 56, scope: !1366)
!1368 = !DILocation(line: 1626, column: 29, scope: !1366)
!1369 = !DILocation(line: 1627, column: 40, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !4, line: 1626, column: 61)
!1371 = !DILocation(line: 1629, column: 41, scope: !1370)
!1372 = !DILocation(line: 1627, column: 33, scope: !1370)
!1373 = !DILocation(line: 1630, column: 33, scope: !1370)
!1374 = !DILocation(line: 1632, column: 25, scope: !1302)
!1375 = !DILocation(line: 1634, column: 15, scope: !1302)
!1376 = !DILocation(line: 1634, column: 22, scope: !1302)
!1377 = !DILocation(line: 1634, column: 14, scope: !1302)
!1378 = !DILocation(line: 1634, column: 12, scope: !1302)
!1379 = !DILocation(line: 1635, column: 4, scope: !1302)
!1380 = !DILocation(line: 1637, column: 15, scope: !1302)
!1381 = !DILocation(line: 1637, column: 22, scope: !1302)
!1382 = !DILocation(line: 1637, column: 14, scope: !1302)
!1383 = !DILocation(line: 1637, column: 12, scope: !1302)
!1384 = !DILocation(line: 1638, column: 4, scope: !1302)
!1385 = !DILocation(line: 1640, column: 38, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1302, file: !4, line: 1639, column: 13)
!1387 = !DILocation(line: 1640, column: 36, scope: !1386)
!1388 = !DILocation(line: 1641, column: 4, scope: !1386)
!1389 = !DILocation(line: 1644, column: 37, scope: !1302)
!1390 = !DILocation(line: 1644, column: 35, scope: !1302)
!1391 = !DILocation(line: 1645, column: 4, scope: !1302)
!1392 = !DILocation(line: 1647, column: 38, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1302, file: !4, line: 1646, column: 13)
!1394 = !DILocation(line: 1647, column: 36, scope: !1393)
!1395 = !DILocation(line: 1648, column: 9, scope: !1393)
!1396 = !DILocation(line: 1649, column: 4, scope: !1393)
!1397 = !DILocation(line: 1652, column: 31, scope: !1302)
!1398 = !DILocation(line: 1653, column: 37, scope: !1302)
!1399 = !DILocation(line: 1653, column: 35, scope: !1302)
!1400 = !DILocation(line: 1654, column: 9, scope: !1302)
!1401 = !DILocation(line: 1655, column: 4, scope: !1302)
!1402 = !DILocation(line: 1657, column: 14, scope: !1302)
!1403 = !DILocation(line: 1658, column: 4, scope: !1302)
!1404 = !DILocation(line: 1660, column: 31, scope: !1302)
!1405 = !DILocation(line: 1661, column: 16, scope: !1302)
!1406 = !DILocation(line: 1662, column: 30, scope: !1302)
!1407 = !DILocation(line: 1663, column: 4, scope: !1302)
!1408 = !DILocation(line: 1665, column: 11, scope: !1302)
!1409 = !DILocation(line: 1666, column: 4, scope: !1302)
!1410 = !DILocation(line: 1668, column: 20, scope: !1302)
!1411 = !DILocation(line: 1668, column: 15, scope: !1302)
!1412 = !DILocation(line: 1668, column: 13, scope: !1302)
!1413 = !DILocation(line: 1669, column: 29, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1302, file: !4, line: 1669, column: 29)
!1415 = !DILocation(line: 1669, column: 38, scope: !1414)
!1416 = !DILocation(line: 1669, column: 42, scope: !1414)
!1417 = !DILocation(line: 1669, column: 45, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1414, file: !4, discriminator: 1)
!1419 = !DILocation(line: 1669, column: 54, scope: !1418)
!1420 = !DILocation(line: 1669, column: 29, scope: !1418)
!1421 = !DILocation(line: 1670, column: 40, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1414, file: !4, line: 1669, column: 62)
!1423 = !DILocation(line: 1672, column: 41, scope: !1422)
!1424 = !DILocation(line: 1670, column: 33, scope: !1422)
!1425 = !DILocation(line: 1673, column: 33, scope: !1422)
!1426 = !DILocation(line: 1675, column: 25, scope: !1302)
!1427 = !DILocation(line: 1677, column: 41, scope: !1302)
!1428 = !DILocation(line: 1677, column: 36, scope: !1302)
!1429 = !DILocation(line: 1677, column: 34, scope: !1302)
!1430 = !DILocation(line: 1678, column: 4, scope: !1302)
!1431 = !DILocation(line: 1680, column: 66, scope: !1302)
!1432 = !DILocation(line: 1680, column: 61, scope: !1302)
!1433 = !DILocation(line: 1680, column: 59, scope: !1302)
!1434 = !DILocation(line: 1680, column: 38, scope: !1302)
!1435 = !DILocation(line: 1680, column: 36, scope: !1302)
!1436 = !DILocation(line: 1681, column: 25, scope: !1302)
!1437 = !DILocation(line: 1683, column: 4, scope: !1302)
!1438 = !DILocation(line: 1684, column: 3, scope: !1302)
!1439 = !DILocation(line: 1556, column: 9, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !5, file: !4, discriminator: 2)
!1441 = distinct !{!1441, !1290}
!1442 = !DILocation(line: 1687, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1687, column: 13)
!1444 = !DILocation(line: 1687, column: 20, scope: !1443)
!1445 = !DILocation(line: 1687, column: 18, scope: !1443)
!1446 = !DILocation(line: 1687, column: 27, scope: !1443)
!1447 = !DILocation(line: 1687, column: 13, scope: !5)
!1448 = !DILocation(line: 1689, column: 24, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !4, line: 1687, column: 32)
!1450 = !DILocation(line: 1689, column: 17, scope: !1449)
!1451 = !DILocation(line: 1691, column: 17, scope: !1449)
!1452 = !DILocation(line: 1694, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1694, column: 13)
!1454 = !DILocation(line: 1694, column: 20, scope: !1453)
!1455 = !DILocation(line: 1694, column: 31, scope: !1453)
!1456 = !DILocation(line: 1694, column: 34, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1453, file: !4, discriminator: 1)
!1458 = !DILocation(line: 1695, column: 13, scope: !1453)
!1459 = !DILocation(line: 1695, column: 18, scope: !1457)
!1460 = !DILocation(line: 1695, column: 23, scope: !1457)
!1461 = !DILocation(line: 1695, column: 35, scope: !1457)
!1462 = !DILocation(line: 1695, column: 39, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1453, file: !4, discriminator: 2)
!1464 = !DILocation(line: 1695, column: 45, scope: !1463)
!1465 = !DILocation(line: 1695, column: 48, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1453, file: !4, discriminator: 3)
!1467 = !DILocation(line: 1695, column: 59, scope: !1466)
!1468 = !DILocation(line: 1695, column: 62, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1453, file: !4, discriminator: 4)
!1470 = !DILocation(line: 1694, column: 13, scope: !1440)
!1471 = !DILocation(line: 1696, column: 24, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1453, file: !4, line: 1695, column: 71)
!1473 = !DILocation(line: 1696, column: 17, scope: !1472)
!1474 = !DILocation(line: 1698, column: 17, scope: !1472)
!1475 = !DILocation(line: 1700, column: 13, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1700, column: 13)
!1477 = !DILocation(line: 1700, column: 19, scope: !1476)
!1478 = !DILocation(line: 1700, column: 22, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1476, file: !4, discriminator: 1)
!1480 = !DILocation(line: 1700, column: 13, scope: !1479)
!1481 = !DILocation(line: 1701, column: 24, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1476, file: !4, line: 1700, column: 29)
!1483 = !DILocation(line: 1701, column: 17, scope: !1482)
!1484 = !DILocation(line: 1704, column: 17, scope: !1482)
!1485 = !DILocation(line: 1707, column: 13, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1707, column: 13)
!1487 = !DILocation(line: 1707, column: 24, scope: !1486)
!1488 = !DILocation(line: 1707, column: 13, scope: !5)
!1489 = !DILocation(line: 1708, column: 35, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !4, line: 1708, column: 21)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !4, line: 1707, column: 32)
!1492 = !DILocation(line: 1708, column: 22, scope: !1490)
!1493 = !DILocation(line: 1708, column: 21, scope: !1491)
!1494 = !DILocation(line: 1709, column: 32, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !4, line: 1708, column: 56)
!1496 = !DILocation(line: 1710, column: 33, scope: !1495)
!1497 = !DILocation(line: 1709, column: 25, scope: !1495)
!1498 = !DILocation(line: 1711, column: 25, scope: !1495)
!1499 = !DILocation(line: 1713, column: 9, scope: !1491)
!1500 = !DILocation(line: 1715, column: 13, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1715, column: 13)
!1502 = !DILocation(line: 1715, column: 24, scope: !1501)
!1503 = !DILocation(line: 1715, column: 13, scope: !5)
!1504 = !DILocation(line: 1716, column: 35, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !4, line: 1716, column: 21)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !4, line: 1715, column: 32)
!1507 = !DILocation(line: 1716, column: 22, scope: !1505)
!1508 = !DILocation(line: 1716, column: 21, scope: !1506)
!1509 = !DILocation(line: 1717, column: 32, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !4, line: 1716, column: 56)
!1511 = !DILocation(line: 1717, column: 65, scope: !1510)
!1512 = !DILocation(line: 1717, column: 25, scope: !1510)
!1513 = !DILocation(line: 1718, column: 25, scope: !1510)
!1514 = !DILocation(line: 1720, column: 9, scope: !1506)
!1515 = !DILocation(line: 1722, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1722, column: 13)
!1517 = !DILocation(line: 1722, column: 23, scope: !1516)
!1518 = !DILocation(line: 1722, column: 13, scope: !5)
!1519 = !DILocation(line: 1723, column: 32, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !4, line: 1722, column: 31)
!1521 = !DILocation(line: 1723, column: 17, scope: !1520)
!1522 = !DILocation(line: 1724, column: 31, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !4, line: 1724, column: 21)
!1524 = !DILocation(line: 1724, column: 39, scope: !1523)
!1525 = !DILocation(line: 1724, column: 22, scope: !1523)
!1526 = !DILocation(line: 1724, column: 21, scope: !1520)
!1527 = !DILocation(line: 1725, column: 32, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !4, line: 1724, column: 74)
!1529 = !DILocation(line: 1727, column: 53, scope: !1528)
!1530 = !DILocation(line: 1727, column: 63, scope: !1528)
!1531 = !DILocation(line: 1725, column: 25, scope: !1528)
!1532 = !DILocation(line: 1728, column: 25, scope: !1528)
!1533 = !DILocation(line: 1730, column: 9, scope: !1520)
!1534 = !DILocation(line: 1732, column: 13, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1732, column: 13)
!1536 = !DILocation(line: 1732, column: 13, scope: !5)
!1537 = !DILocation(line: 1733, column: 32, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !4, line: 1732, column: 24)
!1539 = !DILocation(line: 1733, column: 17, scope: !1538)
!1540 = !DILocation(line: 1734, column: 31, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !4, line: 1734, column: 21)
!1542 = !DILocation(line: 1734, column: 39, scope: !1541)
!1543 = !DILocation(line: 1734, column: 22, scope: !1541)
!1544 = !DILocation(line: 1734, column: 21, scope: !1538)
!1545 = !DILocation(line: 1735, column: 32, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !4, line: 1734, column: 74)
!1547 = !DILocation(line: 1737, column: 51, scope: !1546)
!1548 = !DILocation(line: 1737, column: 61, scope: !1546)
!1549 = !DILocation(line: 1735, column: 25, scope: !1546)
!1550 = !DILocation(line: 1738, column: 25, scope: !1546)
!1551 = !DILocation(line: 1740, column: 9, scope: !1538)
!1552 = !DILocation(line: 1742, column: 13, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1742, column: 13)
!1554 = !DILocation(line: 1742, column: 23, scope: !1553)
!1555 = !DILocation(line: 1742, column: 28, scope: !1553)
!1556 = !DILocation(line: 1742, column: 31, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1553, file: !4, discriminator: 1)
!1558 = !DILocation(line: 1742, column: 40, scope: !1557)
!1559 = !DILocation(line: 1742, column: 13, scope: !1557)
!1560 = !DILocation(line: 1743, column: 24, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !4, line: 1742, column: 47)
!1562 = !DILocation(line: 1743, column: 17, scope: !1561)
!1563 = !DILocation(line: 1744, column: 17, scope: !1561)
!1564 = !DILocation(line: 1746, column: 13, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1746, column: 13)
!1566 = !DILocation(line: 1746, column: 23, scope: !1565)
!1567 = !DILocation(line: 1746, column: 13, scope: !5)
!1568 = !DILocation(line: 1747, column: 27, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !4, line: 1746, column: 30)
!1570 = !DILocation(line: 1748, column: 9, scope: !1569)
!1571 = !DILocation(line: 1750, column: 13, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1750, column: 13)
!1573 = !DILocation(line: 1750, column: 21, scope: !1572)
!1574 = !DILocation(line: 1750, column: 13, scope: !5)
!1575 = !DILocalVariable(name: "ts", scope: !1576, file: !4, line: 1752, type: !171)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !4, line: 1750, column: 26)
!1577 = !DILocation(line: 1752, column: 33, scope: !1576)
!1578 = !DILocation(line: 1753, column: 21, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !4, line: 1753, column: 21)
!1580 = !DILocation(line: 1753, column: 21, scope: !1576)
!1581 = !DILocation(line: 1754, column: 32, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !4, line: 1753, column: 56)
!1583 = !DILocation(line: 1756, column: 43, scope: !1582)
!1584 = !DILocation(line: 1756, column: 42, scope: !1582)
!1585 = !DILocation(line: 1756, column: 33, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1582, file: !4, discriminator: 1)
!1587 = !DILocation(line: 1754, column: 25, scope: !1582)
!1588 = !DILocation(line: 1757, column: 17, scope: !1582)
!1589 = !DILocation(line: 1759, column: 41, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1579, file: !4, line: 1757, column: 24)
!1591 = !DILocation(line: 1759, column: 58, scope: !1590)
!1592 = !DILocation(line: 1758, column: 25, scope: !1590)
!1593 = !DILocation(line: 1764, column: 9, scope: !1576)
!1594 = !DILocation(line: 1766, column: 13, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1766, column: 13)
!1596 = !DILocation(line: 1766, column: 21, scope: !1595)
!1597 = !DILocation(line: 1766, column: 13, scope: !5)
!1598 = !DILocation(line: 1767, column: 33, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !4, line: 1767, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !4, line: 1766, column: 29)
!1601 = !DILocation(line: 1767, column: 26, scope: !1599)
!1602 = !DILocation(line: 1767, column: 23, scope: !1599)
!1603 = !DILocation(line: 1767, column: 21, scope: !1600)
!1604 = !DILocation(line: 1768, column: 32, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1599, file: !4, line: 1767, column: 59)
!1606 = !DILocation(line: 1770, column: 43, scope: !1605)
!1607 = !DILocation(line: 1770, column: 42, scope: !1605)
!1608 = !DILocation(line: 1770, column: 33, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1605, file: !4, discriminator: 1)
!1610 = !DILocation(line: 1768, column: 25, scope: !1605)
!1611 = !DILocation(line: 1771, column: 17, scope: !1605)
!1612 = !DILocation(line: 1772, column: 9, scope: !1600)
!1613 = !DILocation(line: 1774, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1774, column: 13)
!1615 = !DILocation(line: 1774, column: 21, scope: !1614)
!1616 = !DILocation(line: 1774, column: 24, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1614, file: !4, discriminator: 1)
!1618 = !DILocation(line: 1774, column: 33, scope: !1617)
!1619 = !DILocation(line: 1774, column: 13, scope: !1617)
!1620 = !DILocation(line: 1775, column: 26, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !4, line: 1774, column: 40)
!1622 = !DILocation(line: 1776, column: 9, scope: !1621)
!1623 = !DILocation(line: 1778, column: 10, scope: !5)
!1624 = !DILocation(line: 1778, column: 19, scope: !5)
!1625 = !DILocation(line: 1778, column: 17, scope: !5)
!1626 = !DILocation(line: 1778, column: 9, scope: !5)
!1627 = !DILocation(line: 1778, column: 32, scope: !1292)
!1628 = !DILocation(line: 1778, column: 27, scope: !1292)
!1629 = !DILocation(line: 1778, column: 9, scope: !1292)
!1630 = !DILocation(line: 1778, column: 9, scope: !1440)
!1631 = !DILocation(line: 1778, column: 9, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !5, file: !4, discriminator: 3)
!1633 = !DILocation(line: 1778, column: 7, scope: !1632)
!1634 = !DILocation(line: 1781, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1781, column: 13)
!1636 = !DILocation(line: 1781, column: 21, scope: !1635)
!1637 = !DILocation(line: 1781, column: 25, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1635, file: !4, discriminator: 1)
!1639 = !DILocation(line: 1781, column: 13, scope: !1638)
!1640 = !DILocation(line: 1782, column: 29, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !4, line: 1781, column: 31)
!1642 = !DILocation(line: 1783, column: 32, scope: !1641)
!1643 = !DILocation(line: 1783, column: 17, scope: !1641)
!1644 = !DILocation(line: 1784, column: 44, scope: !1641)
!1645 = !DILocation(line: 1784, column: 25, scope: !1641)
!1646 = !DILocation(line: 1784, column: 23, scope: !1641)
!1647 = !DILocation(line: 1785, column: 21, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !4, line: 1785, column: 21)
!1649 = !DILocation(line: 1785, column: 21, scope: !1641)
!1650 = !DILocation(line: 1787, column: 50, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !4, line: 1785, column: 30)
!1652 = !DILocation(line: 1787, column: 32, scope: !1651)
!1653 = !DILocation(line: 1786, column: 25, scope: !1651)
!1654 = !DILocation(line: 1788, column: 17, scope: !1651)
!1655 = !DILocation(line: 1789, column: 9, scope: !1641)
!1656 = !DILocation(line: 1794, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1794, column: 6)
!1658 = !DILocation(line: 1794, column: 11, scope: !1657)
!1659 = !DILocation(line: 1794, column: 6, scope: !5)
!1660 = !DILocation(line: 1795, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !4, line: 1795, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !4, line: 1794, column: 20)
!1663 = !DILocation(line: 1795, column: 14, scope: !1661)
!1664 = !DILocation(line: 1795, column: 21, scope: !1661)
!1665 = !DILocation(line: 1795, column: 18, scope: !1661)
!1666 = !DILocation(line: 1795, column: 7, scope: !1662)
!1667 = !DILocation(line: 1796, column: 23, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1661, file: !4, line: 1795, column: 27)
!1669 = !DILocation(line: 1796, column: 11, scope: !1668)
!1670 = !DILocation(line: 1796, column: 9, scope: !1668)
!1671 = !DILocation(line: 1797, column: 3, scope: !1668)
!1672 = !DILocation(line: 1797, column: 14, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !4, discriminator: 1)
!1674 = distinct !DILexicalBlock(scope: !1661, file: !4, line: 1797, column: 14)
!1675 = !DILocation(line: 1798, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !4, line: 1797, column: 27)
!1677 = !DILocation(line: 1799, column: 40, scope: !1676)
!1678 = !DILocation(line: 1799, column: 25, scope: !1676)
!1679 = !DILocation(line: 1800, column: 36, scope: !1676)
!1680 = !DILocation(line: 1800, column: 18, scope: !1676)
!1681 = !DILocation(line: 1800, column: 11, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1676, file: !4, discriminator: 1)
!1683 = !DILocation(line: 1800, column: 9, scope: !1676)
!1684 = !DILocation(line: 1801, column: 9, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1676, file: !4, line: 1801, column: 8)
!1686 = !DILocation(line: 1801, column: 8, scope: !1676)
!1687 = !DILocation(line: 1802, column: 12, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !4, line: 1801, column: 15)
!1689 = !DILocation(line: 1802, column: 5, scope: !1688)
!1690 = !DILocation(line: 1803, column: 5, scope: !1688)
!1691 = !DILocation(line: 1805, column: 3, scope: !1676)
!1692 = !DILocation(line: 1806, column: 2, scope: !1662)
!1693 = !DILocation(line: 1808, column: 7, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1808, column: 6)
!1695 = !DILocation(line: 1808, column: 6, scope: !5)
!1696 = !DILocation(line: 1809, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !4, line: 1808, column: 13)
!1698 = !DILocation(line: 1810, column: 2, scope: !1697)
!1699 = !DILocation(line: 1815, column: 6, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1815, column: 6)
!1701 = !DILocation(line: 1815, column: 11, scope: !1700)
!1702 = !DILocation(line: 1815, column: 6, scope: !5)
!1703 = !DILocation(line: 1816, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !4, line: 1815, column: 20)
!1705 = !DILocation(line: 1817, column: 2, scope: !1704)
!1706 = !DILocation(line: 1822, column: 24, scope: !5)
!1707 = !DILocation(line: 1822, column: 9, scope: !5)
!1708 = !DILocation(line: 1827, column: 6, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1827, column: 6)
!1710 = !DILocation(line: 1827, column: 11, scope: !1709)
!1711 = !DILocation(line: 1827, column: 21, scope: !1709)
!1712 = !DILocation(line: 1827, column: 26, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1709, file: !4, discriminator: 1)
!1714 = !DILocation(line: 1827, column: 6, scope: !1713)
!1715 = !DILocation(line: 1828, column: 19, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !4, line: 1828, column: 7)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !4, line: 1827, column: 40)
!1718 = !DILocation(line: 1828, column: 7, scope: !1716)
!1719 = !DILocation(line: 1828, column: 7, scope: !1717)
!1720 = !DILocation(line: 1829, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !4, line: 1828, column: 26)
!1722 = !DILocation(line: 1829, column: 4, scope: !1721)
!1723 = !DILocation(line: 1832, column: 4, scope: !1721)
!1724 = !DILocation(line: 1834, column: 31, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !4, line: 1834, column: 21)
!1726 = !DILocation(line: 1834, column: 39, scope: !1725)
!1727 = !DILocation(line: 1834, column: 22, scope: !1725)
!1728 = !DILocation(line: 1834, column: 21, scope: !1717)
!1729 = !DILocation(line: 1835, column: 11, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1725, file: !4, line: 1834, column: 69)
!1731 = !DILocation(line: 1835, column: 49, scope: !1730)
!1732 = !DILocation(line: 1835, column: 4, scope: !1730)
!1733 = !DILocation(line: 1836, column: 4, scope: !1730)
!1734 = !DILocation(line: 1838, column: 35, scope: !1717)
!1735 = !DILocation(line: 1838, column: 17, scope: !1717)
!1736 = !DILocation(line: 1838, column: 10, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1717, file: !4, discriminator: 1)
!1738 = !DILocation(line: 1838, column: 8, scope: !1717)
!1739 = !DILocation(line: 1839, column: 2, scope: !1717)
!1740 = !DILocation(line: 1844, column: 6, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1844, column: 6)
!1742 = !DILocation(line: 1844, column: 11, scope: !1741)
!1743 = !DILocation(line: 1844, column: 6, scope: !5)
!1744 = !DILocation(line: 1845, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !4, line: 1845, column: 7)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !4, line: 1844, column: 23)
!1747 = !DILocation(line: 1845, column: 14, scope: !1745)
!1748 = !DILocation(line: 1845, column: 21, scope: !1745)
!1749 = !DILocation(line: 1845, column: 18, scope: !1745)
!1750 = !DILocation(line: 1845, column: 7, scope: !1746)
!1751 = !DILocation(line: 1846, column: 4, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !4, line: 1845, column: 27)
!1753 = !DILocation(line: 1847, column: 3, scope: !1752)
!1754 = !DILocation(line: 1848, column: 20, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !4, line: 1848, column: 7)
!1756 = !DILocation(line: 1848, column: 8, scope: !1755)
!1757 = !DILocation(line: 1848, column: 7, scope: !1746)
!1758 = !DILocation(line: 1849, column: 11, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !4, line: 1848, column: 27)
!1760 = !DILocation(line: 1849, column: 4, scope: !1759)
!1761 = !DILocation(line: 1852, column: 4, scope: !1759)
!1762 = !DILocation(line: 1854, column: 40, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1746, file: !4, line: 1854, column: 21)
!1764 = !DILocation(line: 1854, column: 35, scope: !1763)
!1765 = !DILocation(line: 1854, column: 22, scope: !1763)
!1766 = !DILocation(line: 1854, column: 21, scope: !1746)
!1767 = !DILocation(line: 1855, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !4, line: 1854, column: 58)
!1769 = !DILocation(line: 1856, column: 10, scope: !1768)
!1770 = !DILocation(line: 1856, column: 5, scope: !1768)
!1771 = !DILocation(line: 1855, column: 4, scope: !1768)
!1772 = !DILocation(line: 1857, column: 4, scope: !1768)
!1773 = !DILocation(line: 1859, column: 2, scope: !1746)
!1774 = !DILocation(line: 1861, column: 11, scope: !5)
!1775 = !DILocation(line: 1861, column: 9, scope: !5)
!1776 = !DILocation(line: 1869, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1869, column: 6)
!1778 = !DILocation(line: 1869, column: 6, scope: !5)
!1779 = !DILocation(line: 1870, column: 22, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 1870, column: 21)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !4, line: 1869, column: 15)
!1782 = !DILocation(line: 1870, column: 21, scope: !1781)
!1783 = !DILocation(line: 1871, column: 51, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !4, line: 1870, column: 49)
!1785 = !DILocation(line: 1871, column: 58, scope: !1784)
!1786 = !DILocation(line: 1871, column: 65, scope: !1784)
!1787 = !DILocation(line: 1871, column: 34, scope: !1784)
!1788 = !DILocation(line: 1871, column: 32, scope: !1784)
!1789 = !DILocation(line: 1872, column: 39, scope: !1784)
!1790 = !DILocation(line: 1872, column: 25, scope: !1784)
!1791 = !DILocation(line: 1873, column: 30, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !4, line: 1873, column: 29)
!1793 = !DILocation(line: 1873, column: 29, scope: !1784)
!1794 = !DILocation(line: 1874, column: 40, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !4, line: 1873, column: 38)
!1796 = !DILocation(line: 1875, column: 41, scope: !1795)
!1797 = !DILocation(line: 1874, column: 33, scope: !1795)
!1798 = !DILocation(line: 1876, column: 25, scope: !1795)
!1799 = !DILocation(line: 1877, column: 17, scope: !1784)
!1800 = !DILocation(line: 1878, column: 22, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 1878, column: 21)
!1802 = !DILocation(line: 1878, column: 21, scope: !1781)
!1803 = !DILocation(line: 1879, column: 59, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1801, file: !4, line: 1878, column: 30)
!1805 = !DILocation(line: 1879, column: 66, scope: !1804)
!1806 = !DILocation(line: 1879, column: 73, scope: !1804)
!1807 = !DILocation(line: 1879, column: 34, scope: !1804)
!1808 = !DILocation(line: 1879, column: 32, scope: !1804)
!1809 = !DILocation(line: 1880, column: 39, scope: !1804)
!1810 = !DILocation(line: 1880, column: 25, scope: !1804)
!1811 = !DILocation(line: 1881, column: 29, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !4, line: 1881, column: 29)
!1813 = !DILocation(line: 1881, column: 36, scope: !1812)
!1814 = !DILocation(line: 1881, column: 40, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1812, file: !4, discriminator: 1)
!1816 = !DILocation(line: 1881, column: 29, scope: !1815)
!1817 = !DILocation(line: 1882, column: 40, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1812, file: !4, line: 1881, column: 67)
!1819 = !DILocation(line: 1888, column: 69, scope: !1818)
!1820 = !DILocation(line: 1882, column: 33, scope: !1818)
!1821 = !DILocation(line: 1889, column: 25, scope: !1818)
!1822 = !DILocation(line: 1890, column: 3, scope: !1804)
!1823 = !DILocation(line: 1891, column: 8, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 1891, column: 7)
!1825 = !DILocation(line: 1891, column: 7, scope: !1781)
!1826 = !DILocation(line: 1892, column: 32, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !4, line: 1891, column: 16)
!1828 = !DILocation(line: 1893, column: 50, scope: !1827)
!1829 = !DILocation(line: 1892, column: 25, scope: !1827)
!1830 = !DILocation(line: 1894, column: 4, scope: !1827)
!1831 = !DILocation(line: 1897, column: 15, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 1897, column: 7)
!1833 = !DILocation(line: 1897, column: 8, scope: !1832)
!1834 = !DILocation(line: 1898, column: 7, scope: !1832)
!1835 = !DILocation(line: 1898, column: 18, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1832, file: !4, discriminator: 1)
!1837 = !DILocation(line: 1898, column: 11, scope: !1836)
!1838 = !DILocation(line: 1897, column: 7, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1781, file: !4, discriminator: 1)
!1840 = !DILocation(line: 1899, column: 11, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !4, line: 1898, column: 32)
!1842 = !DILocation(line: 1901, column: 22, scope: !1841)
!1843 = !DILocation(line: 1899, column: 4, scope: !1841)
!1844 = !DILocation(line: 1902, column: 11, scope: !1841)
!1845 = !DILocation(line: 1902, column: 4, scope: !1841)
!1846 = !DILocation(line: 1903, column: 3, scope: !1841)
!1847 = !DILocation(line: 1904, column: 2, scope: !1781)
!1848 = !DILocation(line: 1910, column: 24, scope: !5)
!1849 = !DILocation(line: 1910, column: 9, scope: !5)
!1850 = !DILocation(line: 1915, column: 40, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1915, column: 13)
!1852 = !DILocation(line: 1915, column: 53, scope: !1851)
!1853 = !DILocation(line: 1915, column: 66, scope: !1851)
!1854 = !DILocation(line: 1915, column: 22, scope: !1851)
!1855 = !DILocation(line: 1915, column: 20, scope: !1851)
!1856 = !DILocation(line: 1915, column: 13, scope: !5)
!1857 = !DILocation(line: 1916, column: 31, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1851, file: !4, line: 1915, column: 74)
!1859 = !DILocation(line: 1916, column: 17, scope: !1858)
!1860 = !DILocation(line: 1917, column: 24, scope: !1858)
!1861 = !DILocation(line: 1917, column: 66, scope: !1858)
!1862 = !DILocation(line: 1917, column: 17, scope: !1858)
!1863 = !DILocation(line: 1918, column: 3, scope: !1858)
!1864 = !DILocation(line: 1920, column: 25, scope: !5)
!1865 = !DILocation(line: 1920, column: 9, scope: !5)
!1866 = !DILocation(line: 1921, column: 23, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1921, column: 6)
!1868 = !DILocation(line: 1921, column: 32, scope: !1867)
!1869 = !DILocation(line: 1921, column: 6, scope: !1867)
!1870 = !DILocation(line: 1921, column: 6, scope: !5)
!1871 = !DILocation(line: 1922, column: 31, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !4, line: 1921, column: 39)
!1873 = !DILocation(line: 1922, column: 17, scope: !1872)
!1874 = !DILocation(line: 1923, column: 10, scope: !1872)
!1875 = !DILocation(line: 1923, column: 55, scope: !1872)
!1876 = !DILocation(line: 1923, column: 3, scope: !1872)
!1877 = !DILocation(line: 1924, column: 3, scope: !1872)
!1878 = !DILocation(line: 1926, column: 6, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1926, column: 6)
!1880 = !DILocation(line: 1926, column: 14, scope: !1879)
!1881 = !DILocation(line: 1926, column: 6, scope: !5)
!1882 = !DILocation(line: 1928, column: 33, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !4, line: 1926, column: 19)
!1884 = !DILocation(line: 1928, column: 10, scope: !1883)
!1885 = !DILocation(line: 1927, column: 3, scope: !1883)
!1886 = !DILocation(line: 1929, column: 2, scope: !1883)
!1887 = !DILocation(line: 1944, column: 6, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1944, column: 6)
!1889 = !DILocation(line: 1944, column: 11, scope: !1888)
!1890 = !DILocation(line: 1944, column: 6, scope: !5)
!1891 = !DILocation(line: 1946, column: 21, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !4, line: 1946, column: 21)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !4, line: 1944, column: 22)
!1894 = !DILocation(line: 1946, column: 30, scope: !1892)
!1895 = !DILocation(line: 1946, column: 21, scope: !1893)
!1896 = !DILocation(line: 1947, column: 34, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !4, line: 1946, column: 36)
!1898 = !DILocation(line: 1948, column: 53, scope: !1897)
!1899 = !DILocation(line: 1947, column: 25, scope: !1897)
!1900 = !DILocation(line: 1949, column: 17, scope: !1897)
!1901 = !DILocation(line: 1950, column: 34, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1892, file: !4, line: 1949, column: 24)
!1903 = !DILocation(line: 1950, column: 25, scope: !1902)
!1904 = !DILocation(line: 1952, column: 40, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1893, file: !4, line: 1952, column: 21)
!1906 = !DILocation(line: 1952, column: 51, scope: !1905)
!1907 = !DILocation(line: 1952, column: 27, scope: !1905)
!1908 = !DILocation(line: 1952, column: 24, scope: !1905)
!1909 = !DILocation(line: 1952, column: 21, scope: !1893)
!1910 = !DILocation(line: 1953, column: 32, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1905, file: !4, line: 1952, column: 71)
!1912 = !DILocation(line: 1954, column: 33, scope: !1911)
!1913 = !DILocation(line: 1954, column: 57, scope: !1911)
!1914 = !DILocation(line: 1954, column: 45, scope: !1911)
!1915 = !DILocation(line: 1953, column: 25, scope: !1911)
!1916 = !DILocation(line: 1955, column: 4, scope: !1911)
!1917 = !DILocation(line: 1957, column: 2, scope: !1893)
!1918 = !DILocation(line: 1959, column: 21, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !4, line: 1959, column: 21)
!1920 = distinct !DILexicalBlock(scope: !1888, file: !4, line: 1957, column: 9)
!1921 = !DILocation(line: 1959, column: 30, scope: !1919)
!1922 = !DILocation(line: 1959, column: 21, scope: !1920)
!1923 = !DILocation(line: 1960, column: 34, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !4, line: 1959, column: 36)
!1925 = !DILocation(line: 1961, column: 54, scope: !1924)
!1926 = !DILocation(line: 1960, column: 25, scope: !1924)
!1927 = !DILocation(line: 1962, column: 17, scope: !1924)
!1928 = !DILocation(line: 1963, column: 34, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1919, file: !4, line: 1962, column: 24)
!1930 = !DILocation(line: 1963, column: 25, scope: !1929)
!1931 = !DILocation(line: 1965, column: 40, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1920, file: !4, line: 1965, column: 21)
!1933 = !DILocation(line: 1965, column: 51, scope: !1932)
!1934 = !DILocation(line: 1965, column: 27, scope: !1932)
!1935 = !DILocation(line: 1965, column: 24, scope: !1932)
!1936 = !DILocation(line: 1965, column: 21, scope: !1920)
!1937 = !DILocation(line: 1966, column: 32, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1932, file: !4, line: 1965, column: 70)
!1939 = !DILocation(line: 1967, column: 33, scope: !1938)
!1940 = !DILocation(line: 1967, column: 57, scope: !1938)
!1941 = !DILocation(line: 1967, column: 45, scope: !1938)
!1942 = !DILocation(line: 1966, column: 25, scope: !1938)
!1943 = !DILocation(line: 1968, column: 4, scope: !1938)
!1944 = !DILocation(line: 1971, column: 27, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1971, column: 6)
!1946 = !DILocation(line: 1971, column: 12, scope: !1945)
!1947 = !DILocation(line: 1971, column: 9, scope: !1945)
!1948 = !DILocation(line: 1971, column: 6, scope: !5)
!1949 = !DILocation(line: 1972, column: 24, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !4, line: 1971, column: 39)
!1951 = !DILocation(line: 1973, column: 37, scope: !1950)
!1952 = !DILocation(line: 1973, column: 25, scope: !1950)
!1953 = !DILocation(line: 1972, column: 17, scope: !1950)
!1954 = !DILocation(line: 1974, column: 3, scope: !1950)
!1955 = !DILocation(line: 1980, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1980, column: 13)
!1957 = !DILocation(line: 1980, column: 24, scope: !1956)
!1958 = !DILocation(line: 1980, column: 13, scope: !5)
!1959 = !DILocation(line: 1981, column: 39, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !4, line: 1981, column: 7)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !4, line: 1980, column: 32)
!1962 = !DILocation(line: 1981, column: 21, scope: !1960)
!1963 = !DILocation(line: 1981, column: 14, scope: !1960)
!1964 = !DILocation(line: 1981, column: 12, scope: !1960)
!1965 = !DILocation(line: 1981, column: 7, scope: !1961)
!1966 = !DILocation(line: 1982, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1960, file: !4, line: 1981, column: 49)
!1968 = !DILocation(line: 1983, column: 21, scope: !1967)
!1969 = !DILocation(line: 1983, column: 5, scope: !1967)
!1970 = !DILocation(line: 1982, column: 4, scope: !1967)
!1971 = !DILocation(line: 1984, column: 4, scope: !1967)
!1972 = !DILocation(line: 1986, column: 18, scope: !1961)
!1973 = !DILocation(line: 1986, column: 3, scope: !1961)
!1974 = !DILocation(line: 1987, column: 2, scope: !1961)
!1975 = !DILocation(line: 1988, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !5, file: !4, line: 1988, column: 13)
!1977 = !DILocation(line: 1988, column: 23, scope: !1976)
!1978 = !DILocation(line: 1988, column: 13, scope: !5)
!1979 = !DILocation(line: 1989, column: 55, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !4, line: 1989, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !4, line: 1988, column: 31)
!1982 = !DILocation(line: 1989, column: 36, scope: !1980)
!1983 = !DILocation(line: 1989, column: 34, scope: !1980)
!1984 = !DILocation(line: 1989, column: 24, scope: !1980)
!1985 = !DILocation(line: 1989, column: 7, scope: !1981)
!1986 = !DILocation(line: 1990, column: 11, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1980, file: !4, line: 1989, column: 65)
!1988 = !DILocation(line: 1995, column: 33, scope: !1987)
!1989 = !DILocation(line: 1995, column: 57, scope: !1987)
!1990 = !DILocation(line: 1995, column: 41, scope: !1987)
!1991 = !DILocation(line: 1990, column: 4, scope: !1987)
!1992 = !DILocation(line: 1996, column: 4, scope: !1987)
!1993 = !DILocation(line: 1998, column: 2, scope: !1981)
!1994 = !DILocation(line: 1999, column: 9, scope: !5)
!1995 = !DILocation(line: 2001, column: 6, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !5, file: !4, line: 2001, column: 6)
!1997 = !DILocation(line: 2001, column: 6, scope: !5)
!1998 = !DILocalVariable(name: "buf", scope: !1999, file: !4, line: 2002, type: !648)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !4, line: 2001, column: 15)
!2000 = !DILocation(line: 2002, column: 22, scope: !1999)
!2001 = !DILocation(line: 2004, column: 10, scope: !1999)
!2002 = !DILocation(line: 2005, column: 61, scope: !1999)
!2003 = !DILocation(line: 2005, column: 42, scope: !1999)
!2004 = !DILocation(line: 2005, column: 24, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1999, file: !4, discriminator: 1)
!2006 = !DILocation(line: 2006, column: 43, scope: !1999)
!2007 = !DILocation(line: 2006, column: 24, scope: !1999)
!2008 = !DILocation(line: 2003, column: 3, scope: !1999)
!2009 = !DILocation(line: 2007, column: 2, scope: !1999)
!2010 = !DILocation(line: 2010, column: 6, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !5, file: !4, line: 2010, column: 6)
!2012 = !DILocation(line: 2010, column: 14, scope: !2011)
!2013 = !DILocation(line: 2010, column: 6, scope: !5)
!2014 = !DILocation(line: 2011, column: 25, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !4, line: 2010, column: 25)
!2016 = !DILocation(line: 2011, column: 3, scope: !2015)
!2017 = !DILocation(line: 2012, column: 2, scope: !2015)
!2018 = !DILocation(line: 2017, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !5, file: !4, line: 2017, column: 13)
!2020 = !DILocation(line: 2017, column: 22, scope: !2019)
!2021 = !DILocation(line: 2017, column: 13, scope: !5)
!2022 = !DILocalVariable(name: "ts", scope: !2023, file: !4, line: 2018, type: !171)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !4, line: 2017, column: 27)
!2024 = !DILocation(line: 2018, column: 33, scope: !2023)
!2025 = !DILocation(line: 2019, column: 17, scope: !2023)
!2026 = !DILocation(line: 2020, column: 29, scope: !2023)
!2027 = !DILocation(line: 2020, column: 26, scope: !2023)
!2028 = !DILocation(line: 2021, column: 9, scope: !2023)
!2029 = !DILocation(line: 2022, column: 6, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !5, file: !4, line: 2022, column: 6)
!2031 = !DILocation(line: 2022, column: 11, scope: !2030)
!2032 = !DILocation(line: 2022, column: 6, scope: !5)
!2033 = !DILocalVariable(name: "c", scope: !2034, file: !4, line: 2023, type: !8)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !4, line: 2022, column: 22)
!2035 = !DILocation(line: 2023, column: 7, scope: !2034)
!2036 = !DILocation(line: 2024, column: 10, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2034, file: !4, line: 2024, column: 3)
!2038 = !DILocation(line: 2024, column: 8, scope: !2037)
!2039 = !DILocation(line: 2024, column: 16, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2041, file: !4, discriminator: 1)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !4, line: 2024, column: 3)
!2042 = !DILocation(line: 2024, column: 25, scope: !2040)
!2043 = !DILocation(line: 2024, column: 29, scope: !2040)
!2044 = !DILocation(line: 2024, column: 32, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2041, file: !4, discriminator: 2)
!2046 = !DILocation(line: 2024, column: 36, scope: !2045)
!2047 = !DILocation(line: 2024, column: 34, scope: !2045)
!2048 = !DILocation(line: 2024, column: 46, scope: !2045)
!2049 = !DILocation(line: 2024, column: 50, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2041, file: !4, discriminator: 3)
!2051 = !DILocation(line: 2024, column: 49, scope: !2050)
!2052 = !DILocation(line: 2024, column: 3, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2037, file: !4, discriminator: 4)
!2054 = !DILocation(line: 2025, column: 4, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2041, file: !4, line: 2024, column: 68)
!2056 = !DILocalVariable(name: "w", scope: !2055, file: !4, line: 2026, type: !169)
!2057 = !DILocation(line: 2026, column: 40, scope: !2055)
!2058 = !DILocation(line: 2026, column: 54, scope: !2055)
!2059 = !DILocation(line: 2026, column: 64, scope: !2055)
!2060 = !DILocation(line: 2026, column: 44, scope: !2055)
!2061 = !DILocation(line: 2027, column: 29, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2055, file: !4, line: 2027, column: 29)
!2063 = !DILocation(line: 2027, column: 31, scope: !2062)
!2064 = !DILocation(line: 2027, column: 29, scope: !2055)
!2065 = !DILocation(line: 2028, column: 33, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !4, line: 2027, column: 37)
!2067 = !DILocation(line: 2030, column: 35, scope: !2055)
!2068 = !DILocation(line: 2030, column: 41, scope: !2055)
!2069 = !DILocation(line: 2030, column: 25, scope: !2055)
!2070 = !DILocation(line: 2031, column: 3, scope: !2055)
!2071 = !DILocation(line: 2024, column: 64, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2041, file: !4, discriminator: 5)
!2073 = !DILocation(line: 2024, column: 3, scope: !2072)
!2074 = distinct !{!2074, !2075}
!2075 = !DILocation(line: 2024, column: 3, scope: !2034)
!2076 = !DILocation(line: 2032, column: 2, scope: !2034)
!2077 = !DILocalVariable(name: "c", scope: !2078, file: !4, line: 2033, type: !8)
!2078 = distinct !DILexicalBlock(scope: !2030, file: !4, line: 2032, column: 9)
!2079 = !DILocation(line: 2033, column: 7, scope: !2078)
!2080 = !DILocation(line: 2034, column: 10, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !4, line: 2034, column: 3)
!2082 = !DILocation(line: 2034, column: 8, scope: !2081)
!2083 = !DILocation(line: 2034, column: 16, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2085, file: !4, discriminator: 1)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !4, line: 2034, column: 3)
!2086 = !DILocation(line: 2034, column: 25, scope: !2084)
!2087 = !DILocation(line: 2034, column: 29, scope: !2084)
!2088 = !DILocation(line: 2034, column: 32, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2085, file: !4, discriminator: 2)
!2090 = !DILocation(line: 2034, column: 36, scope: !2089)
!2091 = !DILocation(line: 2034, column: 34, scope: !2089)
!2092 = !DILocation(line: 2034, column: 46, scope: !2089)
!2093 = !DILocation(line: 2034, column: 50, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2085, file: !4, discriminator: 3)
!2095 = !DILocation(line: 2034, column: 49, scope: !2094)
!2096 = !DILocation(line: 2034, column: 3, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2081, file: !4, discriminator: 4)
!2098 = !DILocation(line: 2035, column: 17, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2085, file: !4, line: 2034, column: 68)
!2100 = !DILocation(line: 2035, column: 25, scope: !2099)
!2101 = !DILocation(line: 2035, column: 4, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2099, file: !4, discriminator: 1)
!2103 = !DILocalVariable(name: "w", scope: !2099, file: !4, line: 2036, type: !169)
!2104 = !DILocation(line: 2036, column: 40, scope: !2099)
!2105 = !DILocation(line: 2036, column: 54, scope: !2099)
!2106 = !DILocation(line: 2036, column: 64, scope: !2099)
!2107 = !DILocation(line: 2036, column: 44, scope: !2099)
!2108 = !DILocation(line: 2037, column: 29, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2099, file: !4, line: 2037, column: 29)
!2110 = !DILocation(line: 2037, column: 31, scope: !2109)
!2111 = !DILocation(line: 2037, column: 29, scope: !2099)
!2112 = !DILocation(line: 2038, column: 33, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !4, line: 2037, column: 37)
!2114 = !DILocation(line: 2040, column: 35, scope: !2099)
!2115 = !DILocation(line: 2040, column: 41, scope: !2099)
!2116 = !DILocation(line: 2040, column: 25, scope: !2099)
!2117 = !DILocation(line: 2041, column: 3, scope: !2099)
!2118 = !DILocation(line: 2034, column: 64, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2085, file: !4, discriminator: 5)
!2120 = !DILocation(line: 2034, column: 3, scope: !2119)
!2121 = distinct !{!2121, !2122}
!2122 = !DILocation(line: 2034, column: 3, scope: !2078)
!2123 = !DILocation(line: 2043, column: 13, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !5, file: !4, line: 2043, column: 13)
!2125 = !DILocation(line: 2043, column: 21, scope: !2124)
!2126 = !DILocation(line: 2043, column: 13, scope: !5)
!2127 = !DILocalVariable(name: "succ", scope: !2128, file: !4, line: 2044, type: !2129)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !4, line: 2043, column: 29)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!2130 = !DILocation(line: 2044, column: 29, scope: !2128)
!2131 = !DILocation(line: 2044, column: 60, scope: !2128)
!2132 = !DILocation(line: 2044, column: 52, scope: !2128)
!2133 = !DILocation(line: 2044, column: 50, scope: !2128)
!2134 = !DILocation(line: 2044, column: 77, scope: !2128)
!2135 = !DILocation(line: 2044, column: 70, scope: !2128)
!2136 = !DILocation(line: 2044, column: 69, scope: !2128)
!2137 = !DILocation(line: 2044, column: 42, scope: !2128)
!2138 = !DILocation(line: 2044, column: 36, scope: !2128)
!2139 = !DILocation(line: 2046, column: 25, scope: !2128)
!2140 = !DILocation(line: 2046, column: 30, scope: !2128)
!2141 = !DILocation(line: 2046, column: 24, scope: !2128)
!2142 = !DILocation(line: 2046, column: 24, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2128, file: !4, discriminator: 1)
!2144 = !DILocation(line: 2046, column: 45, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2128, file: !4, discriminator: 2)
!2146 = !DILocation(line: 2046, column: 24, scope: !2145)
!2147 = !DILocation(line: 2046, column: 24, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2128, file: !4, discriminator: 3)
!2149 = !DILocation(line: 2047, column: 25, scope: !2128)
!2150 = !DILocation(line: 2047, column: 30, scope: !2128)
!2151 = !DILocation(line: 2047, column: 24, scope: !2128)
!2152 = !DILocation(line: 2047, column: 40, scope: !2143)
!2153 = !DILocation(line: 2047, column: 51, scope: !2143)
!2154 = !DILocation(line: 2047, column: 49, scope: !2143)
!2155 = !DILocation(line: 2047, column: 24, scope: !2143)
!2156 = !DILocation(line: 2047, column: 24, scope: !2145)
!2157 = !DILocation(line: 2047, column: 24, scope: !2148)
!2158 = !DILocation(line: 2045, column: 17, scope: !2128)
!2159 = !DILocation(line: 2048, column: 9, scope: !2128)
!2160 = !DILocation(line: 2048, column: 20, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2162, file: !4, discriminator: 1)
!2162 = distinct !DILexicalBlock(scope: !2124, file: !4, line: 2048, column: 20)
!2163 = !DILocation(line: 2048, column: 28, scope: !2161)
!2164 = !DILocalVariable(name: "succ", scope: !2165, file: !4, line: 2049, type: !2129)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !4, line: 2048, column: 39)
!2166 = !DILocation(line: 2049, column: 29, scope: !2165)
!2167 = !DILocation(line: 2049, column: 60, scope: !2165)
!2168 = !DILocation(line: 2049, column: 52, scope: !2165)
!2169 = !DILocation(line: 2049, column: 50, scope: !2165)
!2170 = !DILocation(line: 2049, column: 77, scope: !2165)
!2171 = !DILocation(line: 2049, column: 70, scope: !2165)
!2172 = !DILocation(line: 2049, column: 69, scope: !2165)
!2173 = !DILocation(line: 2049, column: 42, scope: !2165)
!2174 = !DILocation(line: 2049, column: 36, scope: !2165)
!2175 = !DILocation(line: 2055, column: 24, scope: !2165)
!2176 = !DILocation(line: 2055, column: 31, scope: !2165)
!2177 = !DILocation(line: 2055, column: 39, scope: !2165)
!2178 = !DILocation(line: 2056, column: 25, scope: !2165)
!2179 = !DILocation(line: 2056, column: 30, scope: !2165)
!2180 = !DILocation(line: 2056, column: 24, scope: !2165)
!2181 = !DILocation(line: 2056, column: 24, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2165, file: !4, discriminator: 1)
!2183 = !DILocation(line: 2056, column: 45, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2165, file: !4, discriminator: 2)
!2185 = !DILocation(line: 2056, column: 24, scope: !2184)
!2186 = !DILocation(line: 2056, column: 24, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2165, file: !4, discriminator: 3)
!2188 = !DILocation(line: 2057, column: 25, scope: !2165)
!2189 = !DILocation(line: 2057, column: 30, scope: !2165)
!2190 = !DILocation(line: 2057, column: 24, scope: !2165)
!2191 = !DILocation(line: 2057, column: 40, scope: !2182)
!2192 = !DILocation(line: 2057, column: 51, scope: !2182)
!2193 = !DILocation(line: 2057, column: 49, scope: !2182)
!2194 = !DILocation(line: 2057, column: 24, scope: !2182)
!2195 = !DILocation(line: 2057, column: 24, scope: !2184)
!2196 = !DILocation(line: 2057, column: 24, scope: !2187)
!2197 = !DILocation(line: 2050, column: 17, scope: !2165)
!2198 = !DILocation(line: 2058, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2165, file: !4, line: 2058, column: 21)
!2200 = !DILocation(line: 2058, column: 21, scope: !2165)
!2201 = !DILocalVariable(name: "avg", scope: !2202, file: !4, line: 2059, type: !106)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !4, line: 2058, column: 31)
!2203 = !DILocation(line: 2059, column: 32, scope: !2202)
!2204 = !DILocation(line: 2059, column: 38, scope: !2202)
!2205 = !DILocation(line: 2059, column: 57, scope: !2202)
!2206 = !DILocation(line: 2059, column: 55, scope: !2202)
!2207 = !DILocation(line: 2062, column: 37, scope: !2202)
!2208 = !DILocation(line: 2062, column: 36, scope: !2202)
!2209 = !DILocation(line: 2063, column: 37, scope: !2202)
!2210 = !DILocation(line: 2063, column: 36, scope: !2202)
!2211 = !DILocation(line: 2064, column: 37, scope: !2202)
!2212 = !DILocation(line: 2064, column: 36, scope: !2202)
!2213 = !DILocation(line: 2065, column: 42, scope: !2202)
!2214 = !DILocation(line: 2065, column: 62, scope: !2202)
!2215 = !DILocation(line: 2065, column: 61, scope: !2202)
!2216 = !DILocation(line: 2066, column: 43, scope: !2202)
!2217 = !DILocation(line: 2066, column: 47, scope: !2202)
!2218 = !DILocation(line: 2066, column: 46, scope: !2202)
!2219 = !DILocation(line: 2066, column: 42, scope: !2202)
!2220 = !DILocation(line: 2065, column: 37, scope: !2202)
!2221 = !DILocation(line: 2065, column: 36, scope: !2202)
!2222 = !DILocation(line: 2060, column: 25, scope: !2202)
!2223 = !DILocation(line: 2067, column: 17, scope: !2202)
!2224 = !DILocation(line: 2068, column: 17, scope: !2165)
!2225 = !DILocation(line: 2069, column: 2, scope: !2165)
!2226 = !DILocation(line: 2071, column: 13, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !5, file: !4, line: 2071, column: 13)
!2228 = !DILocation(line: 2071, column: 13, scope: !5)
!2229 = !DILocation(line: 2072, column: 24, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !4, line: 2071, column: 22)
!2231 = !DILocation(line: 2072, column: 17, scope: !2230)
!2232 = !DILocation(line: 2074, column: 25, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !4, line: 2073, column: 16)
!2234 = !DILocation(line: 2074, column: 24, scope: !2233)
!2235 = !DILocation(line: 2074, column: 17, scope: !2233)
!2236 = !DILocation(line: 2076, column: 1, scope: !5)
!2237 = distinct !DISubprogram(name: "usage", scope: !4, file: !4, line: 739, type: !370, isLocal: true, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2238 = !DILocalVariable(name: "ret", arg: 1, scope: !2237, file: !4, line: 739, type: !8)
!2239 = !DILocation(line: 739, column: 11, scope: !2237)
!2240 = !DILocation(line: 741, column: 9, scope: !2237)
!2241 = !DILocation(line: 745, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !4, line: 744, column: 16)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !4, line: 742, column: 13)
!2244 = !DILocation(line: 748, column: 7, scope: !2237)
!2245 = !DILocation(line: 748, column: 2, scope: !2237)
!2246 = !DILocation(line: 749, column: 1, scope: !2237)
!2247 = distinct !DISubprogram(name: "xresolve", scope: !4, file: !4, line: 1500, type: !2248, isLocal: true, isDefinition: true, scopeLine: 1501, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!8, !115, !210, !8, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!2251 = !DILocalVariable(name: "l", arg: 1, scope: !2247, file: !4, line: 1500, type: !115)
!2252 = !DILocation(line: 1500, column: 20, scope: !2247)
!2253 = !DILocalVariable(name: "name", arg: 2, scope: !2247, file: !4, line: 1500, type: !210)
!2254 = !DILocation(line: 1500, column: 35, scope: !2247)
!2255 = !DILocalVariable(name: "r", arg: 3, scope: !2247, file: !4, line: 1500, type: !8)
!2256 = !DILocation(line: 1500, column: 45, scope: !2247)
!2257 = !DILocalVariable(name: "addr", arg: 4, scope: !2247, file: !4, line: 1500, type: !2250)
!2258 = !DILocation(line: 1500, column: 58, scope: !2247)
!2259 = !DILocation(line: 1502, column: 21, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2247, file: !4, line: 1502, column: 13)
!2261 = !DILocation(line: 1502, column: 35, scope: !2260)
!2262 = !DILocation(line: 1502, column: 14, scope: !2260)
!2263 = !DILocation(line: 1502, column: 13, scope: !2247)
!2264 = !DILocation(line: 1503, column: 18, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2260, file: !4, line: 1502, column: 42)
!2266 = !DILocation(line: 1503, column: 23, scope: !2265)
!2267 = !DILocation(line: 1504, column: 17, scope: !2265)
!2268 = !DILocation(line: 1506, column: 35, scope: !2247)
!2269 = !DILocation(line: 1506, column: 45, scope: !2247)
!2270 = !DILocation(line: 1506, column: 51, scope: !2247)
!2271 = !DILocation(line: 1506, column: 17, scope: !2247)
!2272 = !DILocation(line: 1506, column: 10, scope: !2247)
!2273 = !DILocation(line: 1506, column: 15, scope: !2247)
!2274 = !DILocation(line: 1507, column: 17, scope: !2247)
!2275 = !DILocation(line: 1507, column: 16, scope: !2247)
!2276 = !DILocation(line: 1507, column: 22, scope: !2247)
!2277 = !DILocation(line: 1507, column: 9, scope: !2247)
!2278 = !DILocation(line: 1508, column: 1, scope: !2247)
!2279 = distinct !DISubprogram(name: "is_mac_addr", scope: !4, file: !4, line: 758, type: !2280, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!8, !210}
!2282 = !DILocalVariable(name: "p", arg: 1, scope: !2279, file: !4, line: 758, type: !210)
!2283 = !DILocation(line: 758, column: 36, scope: !2279)
!2284 = !DILocation(line: 761, column: 22, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2279, file: !4, line: 761, column: 6)
!2286 = !DILocation(line: 761, column: 15, scope: !2285)
!2287 = !DILocation(line: 761, column: 12, scope: !2285)
!2288 = !DILocation(line: 761, column: 6, scope: !2279)
!2289 = !DILocalVariable(name: "c", scope: !2290, file: !4, line: 762, type: !78)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !4, line: 761, column: 26)
!2291 = !DILocation(line: 762, column: 16, scope: !2290)
!2292 = !DILocation(line: 763, column: 10, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !4, line: 763, column: 3)
!2294 = !DILocation(line: 763, column: 8, scope: !2293)
!2295 = !DILocation(line: 763, column: 15, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2297, file: !4, discriminator: 1)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 763, column: 3)
!2298 = !DILocation(line: 763, column: 26, scope: !2296)
!2299 = !DILocation(line: 763, column: 19, scope: !2296)
!2300 = !DILocation(line: 763, column: 17, scope: !2296)
!2301 = !DILocation(line: 763, column: 3, scope: !2296)
!2302 = !DILocation(line: 764, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !4, line: 764, column: 8)
!2304 = distinct !DILexicalBlock(scope: !2297, file: !4, line: 763, column: 35)
!2305 = !DILocation(line: 764, column: 11, scope: !2303)
!2306 = !DILocation(line: 764, column: 16, scope: !2303)
!2307 = !DILocation(line: 764, column: 8, scope: !2304)
!2308 = !DILocation(line: 765, column: 18, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !4, line: 765, column: 9)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !4, line: 764, column: 22)
!2311 = !DILocation(line: 765, column: 16, scope: !2309)
!2312 = !DILocation(line: 765, column: 13, scope: !2309)
!2313 = !DILocation(line: 765, column: 9, scope: !2310)
!2314 = !DILocation(line: 766, column: 6, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2309, file: !4, line: 765, column: 22)
!2316 = !DILocation(line: 768, column: 4, scope: !2310)
!2317 = !DILocation(line: 769, column: 11, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !4, line: 769, column: 9)
!2319 = distinct !DILexicalBlock(scope: !2303, file: !4, line: 768, column: 11)
!2320 = !DILocation(line: 769, column: 9, scope: !2318)
!2321 = !DILocation(line: 769, column: 30, scope: !2318)
!2322 = !DILocation(line: 769, column: 10, scope: !2318)
!2323 = !DILocation(line: 769, column: 12, scope: !2318)
!2324 = !DILocation(line: 769, column: 13, scope: !2318)
!2325 = !DILocation(line: 769, column: 9, scope: !2319)
!2326 = !DILocation(line: 770, column: 6, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2318, file: !4, line: 769, column: 25)
!2328 = !DILocation(line: 773, column: 3, scope: !2304)
!2329 = !DILocation(line: 763, column: 31, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2297, file: !4, discriminator: 2)
!2331 = !DILocation(line: 763, column: 3, scope: !2330)
!2332 = distinct !{!2332, !2333}
!2333 = !DILocation(line: 763, column: 3, scope: !2290)
!2334 = !DILocation(line: 774, column: 3, scope: !2290)
!2335 = !DILocation(line: 777, column: 22, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2279, file: !4, line: 777, column: 6)
!2337 = !DILocation(line: 777, column: 15, scope: !2336)
!2338 = !DILocation(line: 777, column: 12, scope: !2336)
!2339 = !DILocation(line: 777, column: 6, scope: !2279)
!2340 = !DILocalVariable(name: "c", scope: !2341, file: !4, line: 778, type: !78)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !4, line: 777, column: 26)
!2342 = !DILocation(line: 778, column: 16, scope: !2341)
!2343 = !DILocation(line: 779, column: 10, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !4, line: 779, column: 3)
!2345 = !DILocation(line: 779, column: 8, scope: !2344)
!2346 = !DILocation(line: 779, column: 15, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !4, discriminator: 1)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !4, line: 779, column: 3)
!2349 = !DILocation(line: 779, column: 26, scope: !2347)
!2350 = !DILocation(line: 779, column: 19, scope: !2347)
!2351 = !DILocation(line: 779, column: 17, scope: !2347)
!2352 = !DILocation(line: 779, column: 3, scope: !2347)
!2353 = !DILocation(line: 780, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !4, line: 780, column: 8)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !4, line: 779, column: 35)
!2356 = !DILocation(line: 780, column: 11, scope: !2354)
!2357 = !DILocation(line: 780, column: 16, scope: !2354)
!2358 = !DILocation(line: 780, column: 8, scope: !2355)
!2359 = !DILocation(line: 781, column: 18, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !4, line: 781, column: 9)
!2361 = distinct !DILexicalBlock(scope: !2354, file: !4, line: 780, column: 22)
!2362 = !DILocation(line: 781, column: 16, scope: !2360)
!2363 = !DILocation(line: 781, column: 13, scope: !2360)
!2364 = !DILocation(line: 781, column: 9, scope: !2361)
!2365 = !DILocation(line: 782, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2360, file: !4, line: 781, column: 22)
!2367 = !DILocation(line: 784, column: 4, scope: !2361)
!2368 = !DILocation(line: 785, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !4, line: 785, column: 9)
!2370 = distinct !DILexicalBlock(scope: !2354, file: !4, line: 784, column: 11)
!2371 = !DILocation(line: 785, column: 9, scope: !2369)
!2372 = !DILocation(line: 785, column: 30, scope: !2369)
!2373 = !DILocation(line: 785, column: 10, scope: !2369)
!2374 = !DILocation(line: 785, column: 12, scope: !2369)
!2375 = !DILocation(line: 785, column: 13, scope: !2369)
!2376 = !DILocation(line: 785, column: 9, scope: !2370)
!2377 = !DILocation(line: 786, column: 6, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2369, file: !4, line: 785, column: 25)
!2379 = !DILocation(line: 789, column: 3, scope: !2355)
!2380 = !DILocation(line: 779, column: 31, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2348, file: !4, discriminator: 2)
!2382 = !DILocation(line: 779, column: 3, scope: !2381)
!2383 = distinct !{!2383, !2384}
!2384 = !DILocation(line: 779, column: 3, scope: !2341)
!2385 = !DILocation(line: 790, column: 3, scope: !2341)
!2386 = !DILocation(line: 777, column: 23, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2336, file: !4, discriminator: 1)
!2388 = !DILocation(line: 795, column: 16, scope: !2279)
!2389 = !DILocation(line: 795, column: 9, scope: !2279)
!2390 = !DILocation(line: 795, column: 2, scope: !2279)
!2391 = !DILocation(line: 796, column: 1, scope: !2279)
!2392 = distinct !DISubprogram(name: "do_pcap_open_live", scope: !4, file: !4, line: 504, type: !2393, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!1248, !210, !8, !8, !8, !10}
!2395 = !DILocalVariable(name: "device", arg: 1, scope: !2392, file: !4, line: 504, type: !210)
!2396 = !DILocation(line: 504, column: 31, scope: !2392)
!2397 = !DILocalVariable(name: "snaplen", arg: 2, scope: !2392, file: !4, line: 504, type: !8)
!2398 = !DILocation(line: 504, column: 43, scope: !2392)
!2399 = !DILocalVariable(name: "promisc", arg: 3, scope: !2392, file: !4, line: 505, type: !8)
!2400 = !DILocation(line: 505, column: 23, scope: !2392)
!2401 = !DILocalVariable(name: "to_ms", arg: 4, scope: !2392, file: !4, line: 505, type: !8)
!2402 = !DILocation(line: 505, column: 36, scope: !2392)
!2403 = !DILocalVariable(name: "errbuf", arg: 5, scope: !2392, file: !4, line: 505, type: !10)
!2404 = !DILocation(line: 505, column: 49, scope: !2392)
!2405 = !DILocalVariable(name: "ret", scope: !2392, file: !4, line: 507, type: !1248)
!2406 = !DILocation(line: 507, column: 17, scope: !2392)
!2407 = !DILocalVariable(name: "buf", scope: !2392, file: !4, line: 508, type: !2408)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, align: 8, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 4096)
!2411 = !DILocation(line: 508, column: 14, scope: !2392)
!2412 = !DILocation(line: 510, column: 39, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2392, file: !4, line: 510, column: 13)
!2414 = !DILocation(line: 510, column: 47, scope: !2413)
!2415 = !DILocation(line: 510, column: 56, scope: !2413)
!2416 = !DILocation(line: 510, column: 65, scope: !2413)
!2417 = !DILocation(line: 510, column: 72, scope: !2413)
!2418 = !DILocation(line: 510, column: 20, scope: !2413)
!2419 = !DILocation(line: 510, column: 18, scope: !2413)
!2420 = !DILocation(line: 510, column: 13, scope: !2392)
!2421 = !DILocation(line: 511, column: 24, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2413, file: !4, line: 510, column: 82)
!2423 = !DILocation(line: 511, column: 17, scope: !2422)
!2424 = !DILocation(line: 514, column: 18, scope: !2392)
!2425 = !DILocation(line: 514, column: 47, scope: !2392)
!2426 = !DILocation(line: 514, column: 9, scope: !2392)
!2427 = !DILocation(line: 515, column: 39, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2392, file: !4, line: 515, column: 13)
!2429 = !DILocation(line: 515, column: 44, scope: !2428)
!2430 = !DILocation(line: 515, column: 53, scope: !2428)
!2431 = !DILocation(line: 515, column: 62, scope: !2428)
!2432 = !DILocation(line: 515, column: 69, scope: !2428)
!2433 = !DILocation(line: 515, column: 20, scope: !2428)
!2434 = !DILocation(line: 515, column: 18, scope: !2428)
!2435 = !DILocation(line: 515, column: 13, scope: !2392)
!2436 = !DILocation(line: 516, column: 24, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2428, file: !4, line: 515, column: 79)
!2438 = !DILocation(line: 516, column: 17, scope: !2437)
!2439 = !DILocation(line: 519, column: 18, scope: !2392)
!2440 = !DILocation(line: 519, column: 51, scope: !2392)
!2441 = !DILocation(line: 519, column: 9, scope: !2392)
!2442 = !DILocation(line: 520, column: 39, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2392, file: !4, line: 520, column: 13)
!2444 = !DILocation(line: 520, column: 44, scope: !2443)
!2445 = !DILocation(line: 520, column: 53, scope: !2443)
!2446 = !DILocation(line: 520, column: 62, scope: !2443)
!2447 = !DILocation(line: 520, column: 69, scope: !2443)
!2448 = !DILocation(line: 520, column: 20, scope: !2443)
!2449 = !DILocation(line: 520, column: 18, scope: !2443)
!2450 = !DILocation(line: 520, column: 13, scope: !2392)
!2451 = !DILocation(line: 521, column: 24, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2443, file: !4, line: 520, column: 79)
!2453 = !DILocation(line: 521, column: 17, scope: !2452)
!2454 = !DILocation(line: 525, column: 35, scope: !2392)
!2455 = !DILocation(line: 525, column: 43, scope: !2392)
!2456 = !DILocation(line: 525, column: 52, scope: !2392)
!2457 = !DILocation(line: 525, column: 61, scope: !2392)
!2458 = !DILocation(line: 525, column: 68, scope: !2392)
!2459 = !DILocation(line: 525, column: 16, scope: !2392)
!2460 = !DILocation(line: 525, column: 9, scope: !2392)
!2461 = !DILocation(line: 526, column: 1, scope: !2392)
!2462 = distinct !DISubprogram(name: "drop_privileges", scope: !4, file: !4, line: 360, type: !2463, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !210}
!2465 = !DILocalVariable(name: "drop_group", arg: 1, scope: !2462, file: !4, line: 360, type: !210)
!2466 = !DILocation(line: 360, column: 29, scope: !2462)
!2467 = !DILocalVariable(name: "drop_user", scope: !2462, file: !4, line: 363, type: !210)
!2468 = !DILocation(line: 363, column: 21, scope: !2462)
!2469 = !DILocalVariable(name: "pw", scope: !2462, file: !4, line: 364, type: !2470)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64, align: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !2472, line: 49, size: 384, align: 64, elements: !2473)
!2472 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!2473 = !{!2474, !2475, !2476, !2478, !2480, !2481, !2482}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !2471, file: !2472, line: 51, baseType: !10, size: 64, align: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !2471, file: !2472, line: 52, baseType: !10, size: 64, align: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !2471, file: !2472, line: 53, baseType: !2477, size: 32, align: 32, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !75, line: 125, baseType: !78)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !2471, file: !2472, line: 54, baseType: !2479, size: 32, align: 32, offset: 160)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !75, line: 126, baseType: !78)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !2471, file: !2472, line: 55, baseType: !10, size: 64, align: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !2471, file: !2472, line: 56, baseType: !10, size: 64, align: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !2471, file: !2472, line: 57, baseType: !10, size: 64, align: 64, offset: 320)
!2483 = !DILocation(line: 364, column: 24, scope: !2462)
!2484 = !DILocation(line: 365, column: 10, scope: !2462)
!2485 = !DILocation(line: 365, column: 14, scope: !2462)
!2486 = !DILocalVariable(name: "uid", scope: !2462, file: !4, line: 366, type: !2487)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !73, line: 80, baseType: !2477)
!2488 = !DILocation(line: 366, column: 15, scope: !2462)
!2489 = !DILocalVariable(name: "gid", scope: !2462, file: !4, line: 367, type: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !73, line: 65, baseType: !2479)
!2491 = !DILocation(line: 367, column: 15, scope: !2462)
!2492 = !DILocation(line: 368, column: 29, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2462, file: !4, line: 368, column: 13)
!2494 = !DILocation(line: 368, column: 20, scope: !2493)
!2495 = !DILocation(line: 368, column: 18, scope: !2493)
!2496 = !DILocation(line: 368, column: 13, scope: !2462)
!2497 = !DILocation(line: 369, column: 21, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !4, line: 369, column: 21)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !4, line: 368, column: 42)
!2500 = !DILocation(line: 369, column: 21, scope: !2499)
!2501 = !DILocation(line: 370, column: 30, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !4, line: 370, column: 28)
!2503 = distinct !DILexicalBlock(scope: !2498, file: !4, line: 369, column: 30)
!2504 = !DILocation(line: 370, column: 29, scope: !2502)
!2505 = !DILocation(line: 370, column: 34, scope: !2502)
!2506 = !DILocation(line: 370, column: 28, scope: !2503)
!2507 = !DILocation(line: 372, column: 40, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2502, file: !4, line: 370, column: 40)
!2509 = !DILocation(line: 372, column: 61, scope: !2508)
!2510 = !DILocation(line: 372, column: 60, scope: !2508)
!2511 = !DILocation(line: 372, column: 51, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2508, file: !4, discriminator: 1)
!2513 = !DILocation(line: 371, column: 33, scope: !2508)
!2514 = !DILocation(line: 373, column: 25, scope: !2508)
!2515 = !DILocation(line: 375, column: 40, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2502, file: !4, line: 373, column: 32)
!2517 = !DILocation(line: 374, column: 33, scope: !2516)
!2518 = !DILocation(line: 377, column: 17, scope: !2503)
!2519 = !DILocation(line: 378, column: 9, scope: !2499)
!2520 = !DILocation(line: 379, column: 23, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2493, file: !4, line: 378, column: 16)
!2522 = !DILocation(line: 379, column: 27, scope: !2521)
!2523 = !DILocation(line: 379, column: 21, scope: !2521)
!2524 = !DILocation(line: 380, column: 23, scope: !2521)
!2525 = !DILocation(line: 380, column: 27, scope: !2521)
!2526 = !DILocation(line: 380, column: 21, scope: !2521)
!2527 = !DILocation(line: 384, column: 13, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2462, file: !4, line: 384, column: 13)
!2529 = !DILocation(line: 384, column: 24, scope: !2528)
!2530 = !DILocation(line: 384, column: 13, scope: !2462)
!2531 = !DILocation(line: 385, column: 38, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !4, line: 384, column: 32)
!2533 = !DILocation(line: 385, column: 23, scope: !2532)
!2534 = !DILocation(line: 385, column: 21, scope: !2532)
!2535 = !DILocation(line: 386, column: 9, scope: !2532)
!2536 = !DILocation(line: 387, column: 9, scope: !2462)
!2537 = !DILocation(line: 388, column: 18, scope: !2462)
!2538 = !DILocation(line: 388, column: 23, scope: !2462)
!2539 = !DILocation(line: 388, column: 9, scope: !2462)
!2540 = !DILocation(line: 389, column: 9, scope: !2462)
!2541 = !DILocation(line: 390, column: 1, scope: !2462)
!2542 = distinct !DISubprogram(name: "wait_time", scope: !4, file: !4, line: 855, type: !2543, isLocal: true, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!129, !106, !129}
!2545 = !DILocalVariable(name: "deadline", arg: 1, scope: !2542, file: !4, line: 855, type: !106)
!2546 = !DILocation(line: 855, column: 18, scope: !2542)
!2547 = !DILocalVariable(name: "packetwait", arg: 2, scope: !2542, file: !4, line: 855, type: !129)
!2548 = !DILocation(line: 855, column: 37, scope: !2542)
!2549 = !DILocalVariable(name: "ts", scope: !2542, file: !4, line: 857, type: !171)
!2550 = !DILocation(line: 857, column: 25, scope: !2542)
!2551 = !DILocation(line: 860, column: 13, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2542, file: !4, line: 860, column: 13)
!2553 = !DILocation(line: 860, column: 22, scope: !2552)
!2554 = !DILocation(line: 860, column: 13, scope: !2542)
!2555 = !DILocation(line: 861, column: 24, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !4, line: 860, column: 27)
!2557 = !DILocation(line: 861, column: 17, scope: !2556)
!2558 = !DILocation(line: 864, column: 9, scope: !2542)
!2559 = !DILocalVariable(name: "max_wait", scope: !2542, file: !4, line: 865, type: !2560)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2561 = !DILocation(line: 865, column: 22, scope: !2542)
!2562 = !DILocation(line: 865, column: 33, scope: !2542)
!2563 = !DILocation(line: 865, column: 44, scope: !2542)
!2564 = !DILocation(line: 865, column: 42, scope: !2542)
!2565 = !DILocation(line: 866, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2542, file: !4, line: 866, column: 13)
!2567 = !DILocation(line: 866, column: 22, scope: !2566)
!2568 = !DILocation(line: 866, column: 13, scope: !2542)
!2569 = !DILocation(line: 867, column: 17, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !4, line: 866, column: 27)
!2571 = !DILocation(line: 869, column: 13, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2542, file: !4, line: 869, column: 13)
!2573 = !DILocation(line: 869, column: 24, scope: !2572)
!2574 = !DILocation(line: 869, column: 35, scope: !2572)
!2575 = !DILocation(line: 869, column: 22, scope: !2572)
!2576 = !DILocation(line: 869, column: 13, scope: !2542)
!2577 = !DILocation(line: 870, column: 24, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2572, file: !4, line: 869, column: 46)
!2579 = !DILocation(line: 870, column: 17, scope: !2578)
!2580 = !DILocation(line: 872, column: 16, scope: !2542)
!2581 = !DILocation(line: 872, column: 25, scope: !2542)
!2582 = !DILocation(line: 872, column: 9, scope: !2542)
!2583 = !DILocation(line: 873, column: 1, scope: !2542)
!2584 = distinct !DISubprogram(name: "ping_recv", scope: !4, file: !4, line: 1363, type: !2585, isLocal: true, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !1248, !129, !80}
!2587 = !DILocalVariable(name: "pcap", arg: 1, scope: !2584, file: !4, line: 1363, type: !1248)
!2588 = !DILocation(line: 1363, column: 19, scope: !2584)
!2589 = !DILocalVariable(name: "packetwait", arg: 2, scope: !2584, file: !4, line: 1363, type: !129)
!2590 = !DILocation(line: 1363, column: 34, scope: !2584)
!2591 = !DILocalVariable(name: "func", arg: 3, scope: !2584, file: !4, line: 1363, type: !80)
!2592 = !DILocation(line: 1363, column: 59, scope: !2584)
!2593 = !DILocalVariable(name: "ts", scope: !2584, file: !4, line: 1365, type: !171)
!2594 = !DILocation(line: 1365, column: 24, scope: !2584)
!2595 = !DILocalVariable(name: "endtime", scope: !2584, file: !4, line: 1366, type: !171)
!2596 = !DILocation(line: 1366, column: 24, scope: !2584)
!2597 = !DILocalVariable(name: "done", scope: !2584, file: !4, line: 1367, type: !11)
!2598 = !DILocation(line: 1367, column: 13, scope: !2584)
!2599 = !DILocalVariable(name: "fd", scope: !2584, file: !4, line: 1368, type: !8)
!2600 = !DILocation(line: 1368, column: 12, scope: !2584)
!2601 = !DILocalVariable(name: "old_received", scope: !2584, file: !4, line: 1369, type: !78)
!2602 = !DILocation(line: 1369, column: 21, scope: !2584)
!2603 = !DILocation(line: 1371, column: 12, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2584, file: !4, line: 1371, column: 12)
!2605 = !DILocation(line: 1371, column: 20, scope: !2604)
!2606 = !DILocation(line: 1371, column: 12, scope: !2584)
!2607 = !DILocation(line: 1372, column: 16, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !4, line: 1371, column: 25)
!2609 = !DILocation(line: 1373, column: 8, scope: !2608)
!2610 = !DILocation(line: 1375, column: 8, scope: !2584)
!2611 = !DILocation(line: 1376, column: 28, scope: !2584)
!2612 = !DILocation(line: 1376, column: 38, scope: !2584)
!2613 = !DILocation(line: 1376, column: 49, scope: !2584)
!2614 = !DILocation(line: 1376, column: 37, scope: !2584)
!2615 = !DILocation(line: 1376, column: 35, scope: !2584)
!2616 = !DILocation(line: 1376, column: 16, scope: !2584)
!2617 = !DILocation(line: 1376, column: 23, scope: !2584)
!2618 = !DILocation(line: 1377, column: 29, scope: !2584)
!2619 = !DILocation(line: 1377, column: 47, scope: !2584)
!2620 = !DILocation(line: 1377, column: 58, scope: !2584)
!2621 = !DILocation(line: 1377, column: 44, scope: !2584)
!2622 = !DILocation(line: 1377, column: 39, scope: !2584)
!2623 = !DILocation(line: 1377, column: 37, scope: !2584)
!2624 = !DILocation(line: 1377, column: 16, scope: !2584)
!2625 = !DILocation(line: 1377, column: 24, scope: !2584)
!2626 = !DILocation(line: 1378, column: 8, scope: !2584)
!2627 = !DILocation(line: 1380, column: 36, scope: !2584)
!2628 = !DILocation(line: 1380, column: 13, scope: !2584)
!2629 = !DILocation(line: 1380, column: 11, scope: !2584)
!2630 = !DILocation(line: 1381, column: 12, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2584, file: !4, line: 1381, column: 12)
!2632 = !DILocation(line: 1381, column: 15, scope: !2631)
!2633 = !DILocation(line: 1381, column: 12, scope: !2584)
!2634 = !DILocation(line: 1382, column: 23, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !4, line: 1381, column: 22)
!2636 = !DILocation(line: 1383, column: 36, scope: !2635)
!2637 = !DILocation(line: 1383, column: 24, scope: !2635)
!2638 = !DILocation(line: 1382, column: 16, scope: !2635)
!2639 = !DILocation(line: 1384, column: 16, scope: !2635)
!2640 = !DILocation(line: 1386, column: 23, scope: !2584)
!2641 = !DILocation(line: 1386, column: 21, scope: !2584)
!2642 = !DILocation(line: 1388, column: 8, scope: !2584)
!2643 = !DILocation(line: 1388, column: 15, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !4, discriminator: 1)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !4, line: 1388, column: 8)
!2646 = distinct !DILexicalBlock(scope: !2584, file: !4, line: 1388, column: 8)
!2647 = !DILocation(line: 1388, column: 14, scope: !2644)
!2648 = !DILocation(line: 1388, column: 8, scope: !2644)
!2649 = !DILocalVariable(name: "trydispatch", scope: !2650, file: !4, line: 1389, type: !8)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !4, line: 1388, column: 22)
!2651 = !DILocation(line: 1389, column: 13, scope: !2650)
!2652 = !DILocation(line: 1391, column: 9, scope: !2650)
!2653 = !DILocation(line: 1392, column: 29, scope: !2650)
!2654 = !DILocation(line: 1392, column: 41, scope: !2650)
!2655 = !DILocation(line: 1392, column: 36, scope: !2650)
!2656 = !DILocation(line: 1392, column: 12, scope: !2650)
!2657 = !DILocation(line: 1392, column: 19, scope: !2650)
!2658 = !DILocation(line: 1393, column: 30, scope: !2650)
!2659 = !DILocation(line: 1393, column: 43, scope: !2650)
!2660 = !DILocation(line: 1393, column: 38, scope: !2650)
!2661 = !DILocation(line: 1393, column: 12, scope: !2650)
!2662 = !DILocation(line: 1393, column: 20, scope: !2650)
!2663 = !DILocation(line: 1394, column: 9, scope: !2650)
!2664 = !DILocation(line: 1395, column: 20, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1395, column: 20)
!2666 = !DILocation(line: 1395, column: 28, scope: !2665)
!2667 = !DILocation(line: 1395, column: 20, scope: !2650)
!2668 = !DILocation(line: 1397, column: 40, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !4, line: 1395, column: 33)
!2670 = !DILocation(line: 1397, column: 57, scope: !2669)
!2671 = !DILocation(line: 1396, column: 24, scope: !2669)
!2672 = !DILocation(line: 1398, column: 16, scope: !2669)
!2673 = !DILocation(line: 1403, column: 16, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1403, column: 13)
!2675 = !DILocation(line: 1403, column: 23, scope: !2674)
!2676 = !DILocation(line: 1403, column: 13, scope: !2650)
!2677 = !DILocation(line: 1404, column: 13, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !4, line: 1403, column: 28)
!2679 = !DILocation(line: 1404, column: 20, scope: !2678)
!2680 = !DILocation(line: 1405, column: 13, scope: !2678)
!2681 = !DILocation(line: 1405, column: 21, scope: !2678)
!2682 = !DILocation(line: 1406, column: 15, scope: !2678)
!2683 = !DILocation(line: 1407, column: 9, scope: !2678)
!2684 = !DILocation(line: 1414, column: 24, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1414, column: 20)
!2686 = !DILocation(line: 1414, column: 33, scope: !2685)
!2687 = !DILocation(line: 1414, column: 44, scope: !2685)
!2688 = !DILocation(line: 1414, column: 31, scope: !2685)
!2689 = !DILocation(line: 1415, column: 20, scope: !2685)
!2690 = !DILocation(line: 1415, column: 28, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2685, file: !4, discriminator: 1)
!2692 = !DILocation(line: 1415, column: 38, scope: !2691)
!2693 = !DILocation(line: 1415, column: 49, scope: !2691)
!2694 = !DILocation(line: 1415, column: 35, scope: !2691)
!2695 = !DILocation(line: 1416, column: 24, scope: !2685)
!2696 = !DILocation(line: 1416, column: 31, scope: !2691)
!2697 = !DILocation(line: 1416, column: 38, scope: !2691)
!2698 = !DILocation(line: 1416, column: 46, scope: !2691)
!2699 = !DILocation(line: 1416, column: 57, scope: !2691)
!2700 = !DILocation(line: 1416, column: 44, scope: !2691)
!2701 = !DILocation(line: 1414, column: 20, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2650, file: !4, discriminator: 1)
!2703 = !DILocation(line: 1417, column: 13, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2685, file: !4, line: 1416, column: 70)
!2705 = !DILocation(line: 1417, column: 20, scope: !2704)
!2706 = !DILocation(line: 1418, column: 13, scope: !2704)
!2707 = !DILocation(line: 1418, column: 21, scope: !2704)
!2708 = !DILocation(line: 1419, column: 29, scope: !2704)
!2709 = !DILocation(line: 1420, column: 16, scope: !2704)
!2710 = !DILocation(line: 1423, column: 13, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1423, column: 13)
!2712 = !DILocation(line: 1423, column: 13, scope: !2650)
!2713 = !DILocation(line: 1424, column: 10, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !4, line: 1423, column: 26)
!2715 = !DILocalVariable(name: "fds", scope: !2716, file: !4, line: 1429, type: !2717)
!2716 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1428, column: 9)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !112, line: 75, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 64, size: 1024, align: 64, elements: !2719)
!2719 = !{!2720}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !2718, file: !112, line: 72, baseType: !2721, size: 1024, align: 64)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, align: 64, elements: !227)
!2722 = !DILocation(line: 1429, column: 31, scope: !2716)
!2723 = !DILocalVariable(name: "r", scope: !2716, file: !4, line: 1430, type: !8)
!2724 = !DILocation(line: 1430, column: 14, scope: !2716)
!2725 = !DILocalVariable(name: "tv", scope: !2716, file: !4, line: 1431, type: !90)
!2726 = !DILocation(line: 1431, column: 39, scope: !2716)
!2727 = !DILocation(line: 1432, column: 39, scope: !2716)
!2728 = !DILocation(line: 1432, column: 27, scope: !2716)
!2729 = !DILocation(line: 1432, column: 34, scope: !2716)
!2730 = !DILocation(line: 1433, column: 40, scope: !2716)
!2731 = !DILocation(line: 1433, column: 48, scope: !2716)
!2732 = !DILocation(line: 1433, column: 27, scope: !2716)
!2733 = !DILocation(line: 1433, column: 35, scope: !2716)
!2734 = !DILocation(line: 1435, column: 23, scope: !2716)
!2735 = distinct !{!2735, !2734}
!2736 = !DILocalVariable(name: "__d0", scope: !2737, file: !4, line: 1435, type: !8)
!2737 = distinct !DILexicalBlock(scope: !2716, file: !4, line: 1435, column: 26)
!2738 = !DILocation(line: 1435, column: 32, scope: !2737)
!2739 = !DILocalVariable(name: "__d1", scope: !2737, file: !4, line: 1435, type: !8)
!2740 = !DILocation(line: 1435, column: 38, scope: !2737)
!2741 = !DILocation(line: 1435, column: 26, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2737, file: !4, discriminator: 1)
!2743 = !DILocation(line: 1435, column: 175, scope: !2742)
!2744 = !DILocation(line: 1435, column: 44, scope: !2742)
!2745 = !{i32 281040}
!2746 = !DILocation(line: 1435, column: 55, scope: !2742)
!2747 = !DILocation(line: 1436, column: 23, scope: !2716)
!2748 = !DILocation(line: 1436, column: 25, scope: !2716)
!2749 = !DILocation(line: 1436, column: 81, scope: !2716)
!2750 = !DILocation(line: 1436, column: 32, scope: !2716)
!2751 = !DILocation(line: 1436, column: 26, scope: !2716)
!2752 = !DILocation(line: 1436, column: 60, scope: !2716)
!2753 = !DILocation(line: 1438, column: 35, scope: !2716)
!2754 = !DILocation(line: 1438, column: 38, scope: !2716)
!2755 = !DILocation(line: 1438, column: 28, scope: !2716)
!2756 = !DILocation(line: 1438, column: 26, scope: !2716)
!2757 = !DILocation(line: 1439, column: 18, scope: !2716)
!2758 = !DILocation(line: 1439, column: 10, scope: !2716)
!2759 = !DILocation(line: 1441, column: 36, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !4, line: 1441, column: 36)
!2761 = distinct !DILexicalBlock(scope: !2716, file: !4, line: 1439, column: 21)
!2762 = !DILocation(line: 1441, column: 48, scope: !2760)
!2763 = !DILocation(line: 1441, column: 45, scope: !2760)
!2764 = !DILocation(line: 1441, column: 36, scope: !2761)
!2765 = !DILocation(line: 1442, column: 44, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !4, line: 1442, column: 44)
!2767 = distinct !DILexicalBlock(scope: !2760, file: !4, line: 1441, column: 62)
!2768 = !DILocation(line: 1442, column: 44, scope: !2767)
!2769 = !DILocation(line: 1443, column: 48, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !4, line: 1442, column: 58)
!2771 = !DILocation(line: 1444, column: 40, scope: !2770)
!2772 = !DILocation(line: 1445, column: 48, scope: !2767)
!2773 = !DILocation(line: 1445, column: 40, scope: !2767)
!2774 = !DILocation(line: 1447, column: 48, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2767, file: !4, line: 1445, column: 57)
!2776 = !DILocation(line: 1448, column: 48, scope: !2775)
!2777 = !DILocation(line: 1450, column: 48, scope: !2775)
!2778 = !DILocation(line: 1451, column: 48, scope: !2775)
!2779 = !DILocation(line: 1456, column: 48, scope: !2775)
!2780 = !DILocation(line: 1458, column: 46, scope: !2767)
!2781 = !DILocation(line: 1458, column: 40, scope: !2767)
!2782 = !DILocation(line: 1459, column: 32, scope: !2767)
!2783 = !DILocation(line: 1460, column: 16, scope: !2761)
!2784 = !DILocation(line: 1461, column: 11, scope: !2761)
!2785 = !DILocation(line: 1463, column: 16, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2761, file: !4, line: 1463, column: 14)
!2787 = !DILocation(line: 1463, column: 15, scope: !2786)
!2788 = !DILocation(line: 1463, column: 20, scope: !2786)
!2789 = !DILocation(line: 1463, column: 14, scope: !2761)
!2790 = !DILocation(line: 1464, column: 17, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !4, line: 1463, column: 30)
!2792 = !DILocation(line: 1465, column: 12, scope: !2791)
!2793 = !DILocation(line: 1466, column: 19, scope: !2791)
!2794 = !DILocation(line: 1468, column: 23, scope: !2791)
!2795 = !DILocation(line: 1468, column: 22, scope: !2791)
!2796 = !DILocation(line: 1468, column: 13, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2791, file: !4, discriminator: 1)
!2798 = !DILocation(line: 1466, column: 12, scope: !2791)
!2799 = !DILocation(line: 1469, column: 11, scope: !2791)
!2800 = !DILocation(line: 1470, column: 11, scope: !2761)
!2801 = !DILocation(line: 1472, column: 23, scope: !2761)
!2802 = !DILocation(line: 1473, column: 11, scope: !2761)
!2803 = !DILocation(line: 1477, column: 13, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1477, column: 13)
!2805 = !DILocation(line: 1477, column: 13, scope: !2650)
!2806 = !DILocalVariable(name: "ret", scope: !2807, file: !4, line: 1478, type: !8)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !4, line: 1477, column: 26)
!2808 = !DILocation(line: 1478, column: 14, scope: !2807)
!2809 = !DILocation(line: 1479, column: 53, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !4, line: 1479, column: 28)
!2811 = !DILocation(line: 1480, column: 53, scope: !2810)
!2812 = !DILocation(line: 1479, column: 39, scope: !2810)
!2813 = !DILocation(line: 1479, column: 37, scope: !2810)
!2814 = !DILocation(line: 1479, column: 30, scope: !2810)
!2815 = !DILocation(line: 1479, column: 28, scope: !2807)
!2816 = !DILocation(line: 1484, column: 11, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2810, file: !4, line: 1481, column: 60)
!2818 = !DILocation(line: 1487, column: 15, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !4, line: 1487, column: 15)
!2820 = !DILocation(line: 1487, column: 23, scope: !2819)
!2821 = !DILocation(line: 1487, column: 15, scope: !2817)
!2822 = !DILocation(line: 1488, column: 19, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !4, line: 1487, column: 28)
!2824 = !DILocation(line: 1491, column: 13, scope: !2823)
!2825 = !DILocation(line: 1488, column: 12, scope: !2823)
!2826 = !DILocation(line: 1492, column: 11, scope: !2823)
!2827 = !DILocation(line: 1493, column: 10, scope: !2817)
!2828 = !DILocation(line: 1494, column: 9, scope: !2807)
!2829 = !DILocation(line: 1388, column: 8, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2645, file: !4, discriminator: 2)
!2831 = distinct !{!2831, !2642}
!2832 = !DILocation(line: 1496, column: 1, scope: !2584)
!2833 = !DILocalVariable(name: "id", arg: 1, scope: !231, file: !4, line: 924, type: !131)
!2834 = !DILocation(line: 924, column: 23, scope: !231)
!2835 = !DILocalVariable(name: "seq", arg: 2, scope: !231, file: !4, line: 924, type: !131)
!2836 = !DILocation(line: 924, column: 36, scope: !231)
!2837 = !DILocalVariable(name: "c", scope: !231, file: !4, line: 934, type: !8)
!2838 = !DILocation(line: 934, column: 6, scope: !231)
!2839 = !DILocation(line: 939, column: 10, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !231, file: !4, line: 936, column: 6)
!2841 = !DILocation(line: 940, column: 10, scope: !2840)
!2842 = !DILocation(line: 943, column: 10, scope: !2840)
!2843 = !DILocation(line: 944, column: 10, scope: !2840)
!2844 = !DILocation(line: 936, column: 20, scope: !2840)
!2845 = !DILocation(line: 936, column: 18, scope: !2840)
!2846 = !DILocation(line: 936, column: 9, scope: !2840)
!2847 = !DILocation(line: 936, column: 6, scope: !231)
!2848 = !DILocation(line: 945, column: 10, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2840, file: !4, line: 944, column: 18)
!2850 = !DILocation(line: 946, column: 20, scope: !2849)
!2851 = !DILocation(line: 946, column: 4, scope: !2849)
!2852 = !DILocation(line: 945, column: 3, scope: !2849)
!2853 = !DILocation(line: 947, column: 3, scope: !2849)
!2854 = !DILocation(line: 948, column: 2, scope: !2849)
!2855 = !DILocation(line: 953, column: 8, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !231, file: !4, line: 950, column: 6)
!2857 = !DILocation(line: 958, column: 8, scope: !2856)
!2858 = !DILocation(line: 959, column: 8, scope: !2856)
!2859 = !DILocation(line: 962, column: 8, scope: !2856)
!2860 = !DILocation(line: 963, column: 8, scope: !2856)
!2861 = !DILocation(line: 950, column: 18, scope: !2856)
!2862 = !DILocation(line: 950, column: 16, scope: !2856)
!2863 = !DILocation(line: 950, column: 8, scope: !2856)
!2864 = !DILocation(line: 950, column: 6, scope: !231)
!2865 = !DILocation(line: 964, column: 10, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2856, file: !4, line: 963, column: 16)
!2867 = !DILocation(line: 965, column: 20, scope: !2866)
!2868 = !DILocation(line: 965, column: 4, scope: !2866)
!2869 = !DILocation(line: 964, column: 3, scope: !2866)
!2870 = !DILocation(line: 966, column: 3, scope: !2866)
!2871 = !DILocation(line: 967, column: 2, scope: !2866)
!2872 = !DILocation(line: 968, column: 6, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !231, file: !4, line: 968, column: 6)
!2874 = !DILocation(line: 968, column: 15, scope: !2873)
!2875 = !DILocation(line: 968, column: 6, scope: !231)
!2876 = !DILocation(line: 972, column: 43, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !4, line: 968, column: 21)
!2878 = !DILocation(line: 974, column: 43, scope: !2877)
!2879 = !DILocation(line: 978, column: 43, scope: !2877)
!2880 = !DILocation(line: 979, column: 43, scope: !2877)
!2881 = !DILocation(line: 969, column: 23, scope: !2877)
!2882 = !DILocation(line: 969, column: 21, scope: !2877)
!2883 = !DILocation(line: 980, column: 9, scope: !2877)
!2884 = !DILocation(line: 986, column: 45, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2873, file: !4, line: 980, column: 16)
!2886 = !DILocation(line: 987, column: 45, scope: !2885)
!2887 = !DILocation(line: 981, column: 23, scope: !2885)
!2888 = !DILocation(line: 981, column: 21, scope: !2885)
!2889 = !DILocation(line: 989, column: 19, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !231, file: !4, line: 989, column: 13)
!2891 = !DILocation(line: 989, column: 16, scope: !2890)
!2892 = !DILocation(line: 989, column: 13, scope: !231)
!2893 = !DILocation(line: 990, column: 24, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !4, line: 989, column: 24)
!2895 = !DILocation(line: 991, column: 26, scope: !2894)
!2896 = !DILocation(line: 991, column: 35, scope: !2894)
!2897 = !DILocation(line: 991, column: 25, scope: !2894)
!2898 = !DILocation(line: 993, column: 41, scope: !2894)
!2899 = !DILocation(line: 993, column: 25, scope: !2894)
!2900 = !DILocation(line: 990, column: 17, scope: !2894)
!2901 = !DILocation(line: 994, column: 17, scope: !2894)
!2902 = !DILocation(line: 995, column: 9, scope: !2894)
!2903 = !DILocation(line: 996, column: 6, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !231, file: !4, line: 996, column: 6)
!2905 = !DILocation(line: 996, column: 14, scope: !2904)
!2906 = !DILocation(line: 996, column: 6, scope: !231)
!2907 = !DILocation(line: 997, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !4, line: 996, column: 19)
!2909 = !DILocation(line: 999, column: 45, scope: !2908)
!2910 = !DILocation(line: 1000, column: 45, scope: !2908)
!2911 = !DILocation(line: 998, column: 17, scope: !2908)
!2912 = !DILocation(line: 1001, column: 2, scope: !2908)
!2913 = !DILocation(line: 1002, column: 30, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !231, file: !4, line: 1002, column: 6)
!2915 = !DILocation(line: 1002, column: 17, scope: !2914)
!2916 = !DILocation(line: 1002, column: 15, scope: !2914)
!2917 = !DILocation(line: 1002, column: 9, scope: !2914)
!2918 = !DILocation(line: 1002, column: 6, scope: !231)
!2919 = !DILocation(line: 1003, column: 10, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2914, file: !4, line: 1002, column: 40)
!2921 = !DILocation(line: 1004, column: 20, scope: !2920)
!2922 = !DILocation(line: 1004, column: 4, scope: !2920)
!2923 = !DILocation(line: 1003, column: 3, scope: !2920)
!2924 = !DILocation(line: 1005, column: 3, scope: !2920)
!2925 = !DILocation(line: 1006, column: 2, scope: !2920)
!2926 = !DILocation(line: 1007, column: 9, scope: !231)
!2927 = !DILocation(line: 1008, column: 9, scope: !231)
!2928 = !DILocation(line: 1009, column: 1, scope: !231)
!2929 = distinct !DISubprogram(name: "standard_usage", scope: !4, file: !4, line: 717, type: !222, isLocal: true, isDefinition: true, scopeLine: 718, isOptimized: false, unit: !0, variables: !12)
!2930 = !DILocation(line: 720, column: 9, scope: !2929)
!2931 = !DILocation(line: 719, column: 2, scope: !2929)
!2932 = !DILocation(line: 721, column: 9, scope: !2929)
!2933 = !DILocation(line: 733, column: 1, scope: !2929)
!2934 = distinct !DISubprogram(name: "extended_usage", scope: !4, file: !4, line: 640, type: !222, isLocal: true, isDefinition: true, scopeLine: 641, isOptimized: false, unit: !0, variables: !12)
!2935 = !DILocation(line: 642, column: 2, scope: !2934)
!2936 = !DILocation(line: 643, column: 2, scope: !2934)
!2937 = !DILocation(line: 708, column: 9, scope: !2934)
!2938 = !DILocation(line: 711, column: 1, scope: !2934)
!2939 = distinct !DISubprogram(name: "try_pcap_open_live", scope: !4, file: !4, line: 404, type: !2393, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!2940 = !DILocalVariable(name: "device", arg: 1, scope: !2939, file: !4, line: 404, type: !210)
!2941 = !DILocation(line: 404, column: 32, scope: !2939)
!2942 = !DILocalVariable(name: "snaplen", arg: 2, scope: !2939, file: !4, line: 404, type: !8)
!2943 = !DILocation(line: 404, column: 44, scope: !2939)
!2944 = !DILocalVariable(name: "promisc", arg: 3, scope: !2939, file: !4, line: 405, type: !8)
!2945 = !DILocation(line: 405, column: 24, scope: !2939)
!2946 = !DILocalVariable(name: "to_ms", arg: 4, scope: !2939, file: !4, line: 405, type: !8)
!2947 = !DILocation(line: 405, column: 37, scope: !2939)
!2948 = !DILocalVariable(name: "errbuf", arg: 5, scope: !2939, file: !4, line: 405, type: !10)
!2949 = !DILocation(line: 405, column: 50, scope: !2939)
!2950 = !DILocalVariable(name: "pcap", scope: !2939, file: !4, line: 408, type: !1248)
!2951 = !DILocation(line: 408, column: 17, scope: !2939)
!2952 = !DILocalVariable(name: "rc", scope: !2939, file: !4, line: 409, type: !8)
!2953 = !DILocation(line: 409, column: 13, scope: !2939)
!2954 = !DILocation(line: 411, column: 34, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 411, column: 13)
!2956 = !DILocation(line: 411, column: 42, scope: !2955)
!2957 = !DILocation(line: 411, column: 22, scope: !2955)
!2958 = !DILocation(line: 411, column: 20, scope: !2955)
!2959 = !DILocation(line: 411, column: 13, scope: !2939)
!2960 = !DILocation(line: 412, column: 1, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !4, line: 411, column: 52)
!2962 = !DILocation(line: 413, column: 17, scope: !2961)
!2963 = !DILocation(line: 415, column: 36, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 415, column: 13)
!2965 = !DILocation(line: 415, column: 42, scope: !2964)
!2966 = !DILocation(line: 415, column: 19, scope: !2964)
!2967 = !DILocation(line: 415, column: 17, scope: !2964)
!2968 = !DILocation(line: 415, column: 13, scope: !2939)
!2969 = !DILocation(line: 416, column: 26, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2964, file: !4, line: 415, column: 53)
!2971 = !DILocation(line: 415, column: 94, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2970, file: !4, discriminator: 1)
!2973 = !DILocation(line: 415, column: 77, scope: !2972)
!2974 = !DILocation(line: 416, column: 17, scope: !2970)
!2975 = !DILocation(line: 416, column: 1, scope: !2972)
!2976 = !DILocation(line: 417, column: 17, scope: !2970)
!2977 = !DILocation(line: 419, column: 36, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 419, column: 13)
!2979 = !DILocation(line: 419, column: 42, scope: !2978)
!2980 = !DILocation(line: 419, column: 19, scope: !2978)
!2981 = !DILocation(line: 419, column: 17, scope: !2978)
!2982 = !DILocation(line: 419, column: 13, scope: !2939)
!2983 = !DILocation(line: 420, column: 26, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2978, file: !4, line: 419, column: 53)
!2985 = !DILocation(line: 419, column: 94, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2984, file: !4, discriminator: 1)
!2987 = !DILocation(line: 419, column: 77, scope: !2986)
!2988 = !DILocation(line: 420, column: 17, scope: !2984)
!2989 = !DILocation(line: 420, column: 1, scope: !2986)
!2990 = !DILocation(line: 421, column: 17, scope: !2984)
!2991 = !DILocation(line: 423, column: 36, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 423, column: 13)
!2993 = !DILocation(line: 423, column: 42, scope: !2992)
!2994 = !DILocation(line: 423, column: 19, scope: !2992)
!2995 = !DILocation(line: 423, column: 17, scope: !2992)
!2996 = !DILocation(line: 423, column: 13, scope: !2939)
!2997 = !DILocation(line: 424, column: 26, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2992, file: !4, line: 423, column: 51)
!2999 = !DILocation(line: 423, column: 94, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !2998, file: !4, discriminator: 1)
!3001 = !DILocation(line: 423, column: 77, scope: !3000)
!3002 = !DILocation(line: 424, column: 17, scope: !2998)
!3003 = !DILocation(line: 424, column: 1, scope: !3000)
!3004 = !DILocation(line: 425, column: 17, scope: !2998)
!3005 = !DILocation(line: 432, column: 43, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 432, column: 13)
!3007 = !DILocation(line: 432, column: 19, scope: !3006)
!3008 = !DILocation(line: 432, column: 17, scope: !3006)
!3009 = !DILocation(line: 432, column: 13, scope: !2939)
!3010 = !DILocation(line: 433, column: 21, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !4, line: 433, column: 21)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !4, line: 432, column: 54)
!3013 = !DILocation(line: 433, column: 21, scope: !3012)
!3014 = !DILocation(line: 433, column: 32, scope: !3015)
!3015 = !DILexicalBlockFile(scope: !3016, file: !4, discriminator: 1)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !4, line: 433, column: 30)
!3017 = !DILocation(line: 433, column: 107, scope: !3015)
!3018 = !DILocation(line: 433, column: 90, scope: !3015)
!3019 = !DILocation(line: 434, column: 25, scope: !3016)
!3020 = !DILocation(line: 434, column: 17, scope: !3016)
!3021 = !DILocation(line: 435, column: 9, scope: !3012)
!3022 = !DILocation(line: 438, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 438, column: 13)
!3024 = !DILocation(line: 438, column: 13, scope: !2939)
!3025 = !DILocalVariable(name: "err", scope: !3026, file: !4, line: 439, type: !8)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !4, line: 438, column: 29)
!3027 = !DILocation(line: 439, column: 21, scope: !3026)
!3028 = !DILocalVariable(name: "v", scope: !3026, file: !4, line: 440, type: !8)
!3029 = !DILocation(line: 440, column: 21, scope: !3026)
!3030 = !DILocation(line: 440, column: 54, scope: !3026)
!3031 = !DILocation(line: 440, column: 25, scope: !3026)
!3032 = !DILocation(line: 441, column: 21, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3026, file: !4, line: 441, column: 21)
!3034 = !DILocation(line: 441, column: 23, scope: !3033)
!3035 = !DILocation(line: 441, column: 21, scope: !3026)
!3036 = !DILocation(line: 442, column: 32, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !4, line: 441, column: 37)
!3038 = !DILocation(line: 442, column: 83, scope: !3037)
!3039 = !DILocation(line: 442, column: 25, scope: !3037)
!3040 = !DILocation(line: 443, column: 25, scope: !3037)
!3041 = !DILocation(line: 445, column: 49, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3026, file: !4, line: 445, column: 21)
!3043 = !DILocation(line: 445, column: 55, scope: !3042)
!3044 = !DILocation(line: 445, column: 28, scope: !3042)
!3045 = !DILocation(line: 445, column: 26, scope: !3042)
!3046 = !DILocation(line: 445, column: 21, scope: !3026)
!3047 = !DILocation(line: 446, column: 32, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3042, file: !4, line: 445, column: 60)
!3049 = !DILocation(line: 448, column: 33, scope: !3048)
!3050 = !DILocation(line: 448, column: 49, scope: !3048)
!3051 = !DILocation(line: 448, column: 69, scope: !3048)
!3052 = !DILocation(line: 448, column: 52, scope: !3048)
!3053 = !DILocation(line: 446, column: 25, scope: !3048)
!3054 = !DILocation(line: 449, column: 17, scope: !3048)
!3055 = !DILocation(line: 450, column: 9, scope: !3026)
!3056 = !DILocation(line: 452, column: 33, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 452, column: 13)
!3058 = !DILocation(line: 452, column: 19, scope: !3057)
!3059 = !DILocation(line: 452, column: 17, scope: !3057)
!3060 = !DILocation(line: 452, column: 13, scope: !2939)
!3061 = !DILocation(line: 453, column: 21, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !4, line: 453, column: 21)
!3063 = distinct !DILexicalBlock(scope: !3057, file: !4, line: 452, column: 41)
!3064 = !DILocation(line: 453, column: 21, scope: !3063)
!3065 = !DILocation(line: 454, column: 34, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !4, line: 453, column: 37)
!3067 = !DILocation(line: 454, column: 132, scope: !3066)
!3068 = !DILocation(line: 454, column: 165, scope: !3066)
!3069 = !DILocation(line: 454, column: 148, scope: !3066)
!3070 = !DILocation(line: 454, column: 25, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3066, file: !4, discriminator: 1)
!3072 = !DILocation(line: 455, column: 17, scope: !3066)
!3073 = !DILocation(line: 456, column: 34, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3062, file: !4, line: 455, column: 24)
!3075 = !DILocation(line: 456, column: 99, scope: !3074)
!3076 = !DILocation(line: 456, column: 82, scope: !3074)
!3077 = !DILocation(line: 456, column: 25, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3074, file: !4, discriminator: 1)
!3079 = !DILocation(line: 458, column: 1, scope: !3063)
!3080 = !DILocation(line: 459, column: 17, scope: !3063)
!3081 = !DILocation(line: 464, column: 13, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 464, column: 13)
!3083 = !DILocation(line: 464, column: 21, scope: !3082)
!3084 = !DILocation(line: 464, column: 13, scope: !2939)
!3085 = !DILocalVariable(name: "ts", scope: !3086, file: !4, line: 465, type: !77)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !4, line: 464, column: 26)
!3087 = !DILocation(line: 465, column: 22, scope: !3086)
!3088 = !DILocalVariable(name: "count", scope: !3086, file: !4, line: 466, type: !8)
!3089 = !DILocation(line: 466, column: 21, scope: !3086)
!3090 = !DILocation(line: 467, column: 48, scope: !3086)
!3091 = !DILocation(line: 467, column: 25, scope: !3086)
!3092 = !DILocation(line: 467, column: 23, scope: !3086)
!3093 = !DILocation(line: 468, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3086, file: !4, line: 468, column: 21)
!3095 = !DILocation(line: 468, column: 27, scope: !3094)
!3096 = !DILocation(line: 468, column: 21, scope: !3086)
!3097 = !DILocation(line: 468, column: 32, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3099, file: !4, discriminator: 1)
!3099 = distinct !DILexicalBlock(scope: !3094, file: !4, line: 467, column: 41)
!3100 = !DILocation(line: 468, column: 25, scope: !3098)
!3101 = !DILocation(line: 469, column: 17, scope: !3099)
!3102 = !DILocalVariable(name: "c", scope: !3103, file: !4, line: 470, type: !8)
!3103 = distinct !DILexicalBlock(scope: !3094, file: !4, line: 469, column: 24)
!3104 = !DILocation(line: 470, column: 29, scope: !3103)
!3105 = !DILocalVariable(name: "fmt", scope: !3103, file: !4, line: 471, type: !210)
!3106 = !DILocation(line: 471, column: 37, scope: !3103)
!3107 = !DILocation(line: 472, column: 32, scope: !3103)
!3108 = !DILocation(line: 472, column: 25, scope: !3103)
!3109 = !DILocation(line: 473, column: 32, scope: !3103)
!3110 = !DILocation(line: 473, column: 40, scope: !3103)
!3111 = !DILocation(line: 473, column: 25, scope: !3103)
!3112 = !DILocation(line: 474, column: 32, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3103, file: !4, line: 474, column: 25)
!3114 = !DILocation(line: 474, column: 30, scope: !3113)
!3115 = !DILocation(line: 474, column: 37, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3117, file: !4, discriminator: 1)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !4, line: 474, column: 25)
!3118 = !DILocation(line: 474, column: 41, scope: !3116)
!3119 = !DILocation(line: 474, column: 39, scope: !3116)
!3120 = !DILocation(line: 474, column: 25, scope: !3116)
!3121 = !DILocation(line: 475, column: 40, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3117, file: !4, line: 474, column: 53)
!3123 = !DILocation(line: 475, column: 48, scope: !3122)
!3124 = !DILocation(line: 475, column: 85, scope: !3122)
!3125 = !DILocation(line: 475, column: 82, scope: !3122)
!3126 = !DILocation(line: 475, column: 53, scope: !3122)
!3127 = !DILocation(line: 476, column: 80, scope: !3122)
!3128 = !DILocation(line: 476, column: 77, scope: !3122)
!3129 = !DILocation(line: 476, column: 41, scope: !3122)
!3130 = !DILocation(line: 475, column: 33, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !3122, file: !4, discriminator: 1)
!3132 = !DILocation(line: 477, column: 25, scope: !3122)
!3133 = !DILocation(line: 474, column: 49, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3117, file: !4, discriminator: 2)
!3135 = !DILocation(line: 474, column: 25, scope: !3134)
!3136 = distinct !{!3136, !3137}
!3137 = !DILocation(line: 474, column: 25, scope: !3103)
!3138 = !DILocation(line: 478, column: 48, scope: !3103)
!3139 = !DILocation(line: 478, column: 25, scope: !3103)
!3140 = !DILocation(line: 480, column: 9, scope: !3086)
!3141 = !DILocation(line: 482, column: 16, scope: !2939)
!3142 = !DILocation(line: 482, column: 9, scope: !2939)
!3143 = !DILocation(line: 484, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2939, file: !4, line: 484, column: 13)
!3145 = !DILocation(line: 484, column: 13, scope: !2939)
!3146 = !DILocation(line: 485, column: 28, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !4, line: 484, column: 19)
!3148 = !DILocation(line: 485, column: 17, scope: !3147)
!3149 = !DILocation(line: 486, column: 9, scope: !3147)
!3150 = !DILocation(line: 487, column: 9, scope: !2939)
!3151 = !DILocation(line: 491, column: 1, scope: !2939)
!3152 = distinct !DISubprogram(name: "must_get_group", scope: !4, file: !4, line: 317, type: !3153, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!2490, !210}
!3155 = !DILocalVariable(name: "ident", arg: 1, scope: !3152, file: !4, line: 317, type: !210)
!3156 = !DILocation(line: 317, column: 28, scope: !3152)
!3157 = !DILocalVariable(name: "saved_errno", scope: !3152, file: !4, line: 320, type: !8)
!3158 = !DILocation(line: 320, column: 13, scope: !3152)
!3159 = !DILocation(line: 321, column: 14, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3152, file: !4, line: 321, column: 13)
!3161 = !DILocation(line: 321, column: 13, scope: !3160)
!3162 = !DILocation(line: 321, column: 13, scope: !3152)
!3163 = !DILocalVariable(name: "gr", scope: !3164, file: !4, line: 324, type: !3166)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !4, line: 323, column: 17)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !4, line: 321, column: 21)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64, align: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !3168, line: 42, size: 256, align: 64, elements: !3169)
!3168 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!3169 = !{!3170, !3171, !3172, !3173}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3167, file: !3168, line: 44, baseType: !10, size: 64, align: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3167, file: !3168, line: 45, baseType: !10, size: 64, align: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3167, file: !3168, line: 46, baseType: !2479, size: 32, align: 32, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3167, file: !3168, line: 47, baseType: !9, size: 64, align: 64, offset: 192)
!3174 = !DILocation(line: 324, column: 39, scope: !3164)
!3175 = !DILocation(line: 325, column: 26, scope: !3164)
!3176 = !DILocation(line: 325, column: 30, scope: !3164)
!3177 = !DILocation(line: 326, column: 44, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3164, file: !4, line: 326, column: 29)
!3179 = !DILocation(line: 326, column: 35, scope: !3178)
!3180 = !DILocation(line: 326, column: 33, scope: !3178)
!3181 = !DILocation(line: 326, column: 29, scope: !3164)
!3182 = !DILocation(line: 327, column: 40, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !4, line: 326, column: 53)
!3184 = !DILocation(line: 327, column: 44, scope: !3183)
!3185 = !DILocation(line: 327, column: 33, scope: !3183)
!3186 = !DILocation(line: 329, column: 40, scope: !3164)
!3187 = !DILocation(line: 329, column: 39, scope: !3164)
!3188 = !DILocation(line: 329, column: 37, scope: !3164)
!3189 = !DILocalVariable(name: "endp", scope: !3190, file: !4, line: 334, type: !10)
!3190 = distinct !DILexicalBlock(scope: !3165, file: !4, line: 333, column: 17)
!3191 = !DILocation(line: 334, column: 31, scope: !3190)
!3192 = !DILocalVariable(name: "r", scope: !3190, file: !4, line: 335, type: !2490)
!3193 = !DILocation(line: 335, column: 31, scope: !3190)
!3194 = !DILocation(line: 335, column: 42, scope: !3190)
!3195 = !DILocation(line: 335, column: 35, scope: !3190)
!3196 = !DILocation(line: 336, column: 31, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3190, file: !4, line: 336, column: 29)
!3198 = !DILocation(line: 336, column: 30, scope: !3197)
!3199 = !DILocation(line: 336, column: 29, scope: !3190)
!3200 = !DILocation(line: 337, column: 40, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !4, line: 336, column: 37)
!3202 = !DILocation(line: 337, column: 33, scope: !3201)
!3203 = !DILocation(line: 340, column: 9, scope: !3165)
!3204 = !DILocation(line: 342, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3152, file: !4, line: 342, column: 13)
!3206 = !DILocation(line: 342, column: 25, scope: !3205)
!3207 = !DILocation(line: 342, column: 13, scope: !3152)
!3208 = !DILocation(line: 343, column: 24, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !4, line: 342, column: 31)
!3210 = !DILocation(line: 345, column: 25, scope: !3209)
!3211 = !DILocation(line: 345, column: 32, scope: !3209)
!3212 = !DILocation(line: 345, column: 48, scope: !3209)
!3213 = !DILocation(line: 345, column: 39, scope: !3209)
!3214 = !DILocation(line: 343, column: 17, scope: !3209)
!3215 = !DILocation(line: 346, column: 9, scope: !3209)
!3216 = !DILocation(line: 349, column: 24, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3205, file: !4, line: 346, column: 16)
!3218 = !DILocation(line: 351, column: 25, scope: !3217)
!3219 = !DILocation(line: 349, column: 17, scope: !3217)
!3220 = !DILocation(line: 353, column: 9, scope: !3152)
!3221 = !DILocation(line: 354, column: 1, scope: !3152)
!3222 = distinct !DISubprogram(name: "drop_uid", scope: !4, file: !4, line: 260, type: !3223, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !2487, !2490}
!3225 = !DILocalVariable(name: "uid", arg: 1, scope: !3222, file: !4, line: 260, type: !2487)
!3226 = !DILocation(line: 260, column: 16, scope: !3222)
!3227 = !DILocalVariable(name: "gid", arg: 2, scope: !3222, file: !4, line: 260, type: !2490)
!3228 = !DILocation(line: 260, column: 27, scope: !3222)
!3229 = !DILocalVariable(name: "fail", scope: !3222, file: !4, line: 262, type: !8)
!3230 = !DILocation(line: 262, column: 13, scope: !3222)
!3231 = !DILocation(line: 263, column: 13, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3222, file: !4, line: 263, column: 13)
!3233 = !DILocation(line: 263, column: 13, scope: !3222)
!3234 = !DILocation(line: 264, column: 21, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !4, line: 264, column: 21)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !4, line: 263, column: 32)
!3237 = !DILocation(line: 264, column: 21, scope: !3236)
!3238 = !DILocation(line: 265, column: 78, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !4, line: 264, column: 30)
!3240 = !DILocation(line: 265, column: 77, scope: !3239)
!3241 = !DILocation(line: 265, column: 68, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3239, file: !4, discriminator: 1)
!3243 = !DILocation(line: 265, column: 25, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3239, file: !4, discriminator: 2)
!3245 = !DILocation(line: 266, column: 17, scope: !3239)
!3246 = !DILocation(line: 267, column: 21, scope: !3236)
!3247 = !DILocation(line: 268, column: 9, scope: !3236)
!3248 = !DILocation(line: 269, column: 13, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3222, file: !4, line: 269, column: 13)
!3250 = !DILocation(line: 269, column: 17, scope: !3249)
!3251 = !DILocation(line: 269, column: 27, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3249, file: !4, discriminator: 1)
!3253 = !DILocation(line: 269, column: 20, scope: !3252)
!3254 = !DILocation(line: 269, column: 13, scope: !3252)
!3255 = !DILocation(line: 270, column: 21, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !4, line: 270, column: 21)
!3257 = distinct !DILexicalBlock(scope: !3249, file: !4, line: 269, column: 33)
!3258 = !DILocation(line: 270, column: 21, scope: !3257)
!3259 = !DILocation(line: 271, column: 68, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !4, line: 270, column: 30)
!3261 = !DILocation(line: 271, column: 67, scope: !3260)
!3262 = !DILocation(line: 271, column: 58, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3260, file: !4, discriminator: 1)
!3264 = !DILocation(line: 271, column: 25, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3260, file: !4, discriminator: 2)
!3266 = !DILocation(line: 272, column: 17, scope: !3260)
!3267 = !DILocation(line: 273, column: 21, scope: !3257)
!3268 = !DILocation(line: 274, column: 9, scope: !3257)
!3269 = !DILocation(line: 275, column: 13, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3222, file: !4, line: 275, column: 13)
!3271 = !DILocation(line: 275, column: 17, scope: !3270)
!3272 = !DILocation(line: 275, column: 27, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3270, file: !4, discriminator: 1)
!3274 = !DILocation(line: 275, column: 20, scope: !3273)
!3275 = !DILocation(line: 275, column: 13, scope: !3273)
!3276 = !DILocation(line: 276, column: 21, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !4, line: 276, column: 21)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !4, line: 275, column: 33)
!3279 = !DILocation(line: 276, column: 21, scope: !3278)
!3280 = !DILocation(line: 277, column: 68, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !4, line: 276, column: 30)
!3282 = !DILocation(line: 277, column: 67, scope: !3281)
!3283 = !DILocation(line: 277, column: 58, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3281, file: !4, discriminator: 1)
!3285 = !DILocation(line: 277, column: 25, scope: !3286)
!3286 = !DILexicalBlockFile(scope: !3281, file: !4, discriminator: 2)
!3287 = !DILocation(line: 278, column: 17, scope: !3281)
!3288 = !DILocation(line: 279, column: 21, scope: !3278)
!3289 = !DILocation(line: 280, column: 9, scope: !3278)
!3290 = !DILocation(line: 281, column: 14, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3222, file: !4, line: 281, column: 13)
!3292 = !DILocation(line: 281, column: 19, scope: !3291)
!3293 = !DILocation(line: 281, column: 22, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3291, file: !4, discriminator: 1)
!3295 = !DILocation(line: 281, column: 30, scope: !3294)
!3296 = !DILocation(line: 281, column: 13, scope: !3294)
!3297 = !DILocation(line: 283, column: 24, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3291, file: !4, line: 281, column: 35)
!3299 = !DILocation(line: 283, column: 29, scope: !3298)
!3300 = !DILocation(line: 282, column: 17, scope: !3298)
!3301 = !DILocation(line: 284, column: 9, scope: !3298)
!3302 = !DILocation(line: 285, column: 1, scope: !3222)
!3303 = distinct !DISubprogram(name: "drop_fs_root", scope: !4, file: !4, line: 221, type: !222, isLocal: true, isDefinition: true, scopeLine: 222, isOptimized: false, unit: !0, variables: !12)
!3304 = !DILocalVariable(name: "chroot_user", scope: !3303, file: !4, line: 223, type: !210)
!3305 = !DILocation(line: 223, column: 21, scope: !3303)
!3306 = !DILocalVariable(name: "pw", scope: !3303, file: !4, line: 224, type: !2470)
!3307 = !DILocation(line: 224, column: 24, scope: !3303)
!3308 = !DILocation(line: 225, column: 10, scope: !3303)
!3309 = !DILocation(line: 225, column: 14, scope: !3303)
!3310 = !DILocation(line: 226, column: 29, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !4, line: 226, column: 13)
!3312 = !DILocation(line: 226, column: 20, scope: !3311)
!3313 = !DILocation(line: 226, column: 18, scope: !3311)
!3314 = !DILocation(line: 226, column: 13, scope: !3303)
!3315 = !DILocation(line: 227, column: 21, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !4, line: 227, column: 21)
!3317 = distinct !DILexicalBlock(scope: !3311, file: !4, line: 226, column: 44)
!3318 = !DILocation(line: 227, column: 21, scope: !3317)
!3319 = !DILocation(line: 229, column: 32, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3316, file: !4, line: 227, column: 30)
!3321 = !DILocation(line: 229, column: 55, scope: !3320)
!3322 = !DILocation(line: 229, column: 54, scope: !3320)
!3323 = !DILocation(line: 229, column: 45, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3320, file: !4, discriminator: 1)
!3325 = !DILocation(line: 228, column: 25, scope: !3320)
!3326 = !DILocation(line: 230, column: 17, scope: !3320)
!3327 = !DILocation(line: 231, column: 17, scope: !3317)
!3328 = !DILocation(line: 233, column: 19, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3303, file: !4, line: 233, column: 13)
!3330 = !DILocation(line: 233, column: 23, scope: !3329)
!3331 = !DILocation(line: 233, column: 13, scope: !3329)
!3332 = !DILocation(line: 233, column: 13, scope: !3303)
!3333 = !DILocation(line: 234, column: 21, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !4, line: 234, column: 21)
!3335 = distinct !DILexicalBlock(scope: !3329, file: !4, line: 233, column: 32)
!3336 = !DILocation(line: 234, column: 21, scope: !3335)
!3337 = !DILocation(line: 236, column: 32, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3334, file: !4, line: 234, column: 30)
!3339 = !DILocation(line: 236, column: 36, scope: !3338)
!3340 = !DILocation(line: 236, column: 54, scope: !3338)
!3341 = !DILocation(line: 236, column: 53, scope: !3338)
!3342 = !DILocation(line: 236, column: 44, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3338, file: !4, discriminator: 1)
!3344 = !DILocation(line: 235, column: 25, scope: !3338)
!3345 = !DILocation(line: 237, column: 17, scope: !3338)
!3346 = !DILocation(line: 238, column: 17, scope: !3335)
!3347 = !DILocation(line: 240, column: 20, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3303, file: !4, line: 240, column: 13)
!3349 = !DILocation(line: 240, column: 24, scope: !3348)
!3350 = !DILocation(line: 240, column: 13, scope: !3348)
!3351 = !DILocation(line: 240, column: 13, scope: !3303)
!3352 = !DILocation(line: 241, column: 21, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !4, line: 241, column: 21)
!3354 = distinct !DILexicalBlock(scope: !3348, file: !4, line: 240, column: 33)
!3355 = !DILocation(line: 241, column: 21, scope: !3354)
!3356 = !DILocation(line: 243, column: 32, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !4, line: 241, column: 30)
!3358 = !DILocation(line: 243, column: 36, scope: !3357)
!3359 = !DILocation(line: 243, column: 54, scope: !3357)
!3360 = !DILocation(line: 243, column: 53, scope: !3357)
!3361 = !DILocation(line: 243, column: 44, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !3357, file: !4, discriminator: 1)
!3363 = !DILocation(line: 242, column: 25, scope: !3357)
!3364 = !DILocation(line: 244, column: 17, scope: !3357)
!3365 = !DILocation(line: 245, column: 17, scope: !3354)
!3366 = !DILocation(line: 247, column: 13, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3303, file: !4, line: 247, column: 13)
!3368 = !DILocation(line: 247, column: 21, scope: !3367)
!3369 = !DILocation(line: 247, column: 13, scope: !3303)
!3370 = !DILocation(line: 248, column: 65, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !4, line: 247, column: 26)
!3372 = !DILocation(line: 248, column: 69, scope: !3371)
!3373 = !DILocation(line: 248, column: 17, scope: !3371)
!3374 = !DILocation(line: 249, column: 9, scope: !3371)
!3375 = !DILocation(line: 250, column: 1, scope: !3303)
!3376 = distinct !DISubprogram(name: "drop_capabilities", scope: !4, file: !4, line: 291, type: !222, isLocal: true, isDefinition: true, scopeLine: 292, isOptimized: false, unit: !0, variables: !12)
!3377 = !DILocalVariable(name: "no_cap", scope: !3376, file: !4, line: 294, type: !3378)
!3378 = !DIDerivedType(tag: DW_TAG_typedef, name: "cap_t", file: !3379, line: 41, baseType: !3380)
!3379 = !DIFile(filename: "/usr/include/sys/capability.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64, align: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cap_struct", file: !3379, line: 41, flags: DIFlagFwdDecl)
!3382 = !DILocation(line: 294, column: 15, scope: !3376)
!3383 = !DILocation(line: 295, column: 24, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3376, file: !4, line: 295, column: 13)
!3385 = !DILocation(line: 295, column: 22, scope: !3384)
!3386 = !DILocation(line: 295, column: 13, scope: !3376)
!3387 = !DILocation(line: 296, column: 21, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !4, line: 296, column: 21)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !4, line: 295, column: 37)
!3390 = !DILocation(line: 296, column: 21, scope: !3389)
!3391 = !DILocation(line: 297, column: 70, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !4, line: 296, column: 30)
!3393 = !DILocation(line: 297, column: 69, scope: !3392)
!3394 = !DILocation(line: 297, column: 60, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3392, file: !4, discriminator: 1)
!3396 = !DILocation(line: 297, column: 25, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3392, file: !4, discriminator: 2)
!3398 = !DILocation(line: 298, column: 17, scope: !3392)
!3399 = !DILocation(line: 299, column: 17, scope: !3389)
!3400 = !DILocation(line: 301, column: 26, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3376, file: !4, line: 301, column: 13)
!3402 = !DILocation(line: 301, column: 13, scope: !3401)
!3403 = !DILocation(line: 301, column: 13, scope: !3376)
!3404 = !DILocation(line: 302, column: 21, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !4, line: 302, column: 21)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !4, line: 301, column: 35)
!3407 = !DILocation(line: 302, column: 21, scope: !3406)
!3408 = !DILocation(line: 303, column: 74, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !4, line: 302, column: 30)
!3410 = !DILocation(line: 303, column: 73, scope: !3409)
!3411 = !DILocation(line: 303, column: 64, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3409, file: !4, discriminator: 1)
!3413 = !DILocation(line: 303, column: 25, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !3409, file: !4, discriminator: 2)
!3415 = !DILocation(line: 304, column: 17, scope: !3409)
!3416 = !DILocation(line: 305, column: 9, scope: !3406)
!3417 = !DILocation(line: 306, column: 13, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3376, file: !4, line: 306, column: 13)
!3419 = !DILocation(line: 306, column: 21, scope: !3418)
!3420 = !DILocation(line: 306, column: 13, scope: !3376)
!3421 = !DILocation(line: 307, column: 17, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !4, line: 306, column: 26)
!3423 = !DILocation(line: 308, column: 9, scope: !3422)
!3424 = !DILocation(line: 309, column: 18, scope: !3376)
!3425 = !DILocation(line: 309, column: 9, scope: !3376)
!3426 = !DILocation(line: 311, column: 1, scope: !3376)
!3427 = !DILocation(line: 311, column: 1, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3376, file: !4, discriminator: 1)
!3429 = !DILocation(line: 1029, column: 43, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !221, file: !4, line: 1025, column: 6)
!3431 = !DILocation(line: 1032, column: 8, scope: !3430)
!3432 = !DILocation(line: 1036, column: 8, scope: !3430)
!3433 = !DILocation(line: 1037, column: 8, scope: !3430)
!3434 = !DILocation(line: 1025, column: 19, scope: !3430)
!3435 = !DILocation(line: 1025, column: 17, scope: !3430)
!3436 = !DILocation(line: 1025, column: 9, scope: !3430)
!3437 = !DILocation(line: 1025, column: 6, scope: !221)
!3438 = !DILocation(line: 1038, column: 10, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3430, file: !4, line: 1037, column: 15)
!3440 = !DILocation(line: 1039, column: 20, scope: !3439)
!3441 = !DILocation(line: 1039, column: 4, scope: !3439)
!3442 = !DILocation(line: 1038, column: 3, scope: !3439)
!3443 = !DILocation(line: 1040, column: 3, scope: !3439)
!3444 = !DILocation(line: 1041, column: 2, scope: !3439)
!3445 = !DILocation(line: 1043, column: 13, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !221, file: !4, line: 1043, column: 13)
!3447 = !DILocation(line: 1043, column: 22, scope: !3446)
!3448 = !DILocation(line: 1043, column: 13, scope: !221)
!3449 = !DILocation(line: 1047, column: 43, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3446, file: !4, line: 1043, column: 28)
!3451 = !DILocation(line: 1049, column: 43, scope: !3450)
!3452 = !DILocation(line: 1053, column: 43, scope: !3450)
!3453 = !DILocation(line: 1054, column: 43, scope: !3450)
!3454 = !DILocation(line: 1044, column: 23, scope: !3450)
!3455 = !DILocation(line: 1044, column: 21, scope: !3450)
!3456 = !DILocation(line: 1055, column: 9, scope: !3450)
!3457 = !DILocation(line: 1061, column: 45, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3446, file: !4, line: 1055, column: 16)
!3459 = !DILocation(line: 1062, column: 45, scope: !3458)
!3460 = !DILocation(line: 1056, column: 23, scope: !3458)
!3461 = !DILocation(line: 1056, column: 21, scope: !3458)
!3462 = !DILocation(line: 1064, column: 12, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !221, file: !4, line: 1064, column: 6)
!3464 = !DILocation(line: 1064, column: 9, scope: !3463)
!3465 = !DILocation(line: 1064, column: 6, scope: !221)
!3466 = !DILocation(line: 1065, column: 10, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !4, line: 1064, column: 17)
!3468 = !DILocation(line: 1066, column: 5, scope: !3467)
!3469 = !DILocation(line: 1066, column: 14, scope: !3467)
!3470 = !DILocation(line: 1066, column: 4, scope: !3467)
!3471 = !DILocation(line: 1068, column: 20, scope: !3467)
!3472 = !DILocation(line: 1068, column: 4, scope: !3467)
!3473 = !DILocation(line: 1065, column: 3, scope: !3467)
!3474 = !DILocation(line: 1069, column: 3, scope: !3467)
!3475 = !DILocation(line: 1070, column: 2, scope: !3467)
!3476 = !DILocation(line: 1071, column: 6, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !221, file: !4, line: 1071, column: 6)
!3478 = !DILocation(line: 1071, column: 14, scope: !3477)
!3479 = !DILocation(line: 1071, column: 6, scope: !221)
!3480 = !DILocation(line: 1072, column: 17, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !4, line: 1071, column: 19)
!3482 = !DILocation(line: 1074, column: 45, scope: !3481)
!3483 = !DILocation(line: 1075, column: 45, scope: !3481)
!3484 = !DILocation(line: 1073, column: 17, scope: !3481)
!3485 = !DILocation(line: 1076, column: 2, scope: !3481)
!3486 = !DILocation(line: 1077, column: 25, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !221, file: !4, line: 1077, column: 6)
!3488 = !DILocation(line: 1077, column: 12, scope: !3487)
!3489 = !DILocation(line: 1077, column: 9, scope: !3487)
!3490 = !DILocation(line: 1077, column: 6, scope: !221)
!3491 = !DILocation(line: 1078, column: 10, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3487, file: !4, line: 1077, column: 34)
!3493 = !DILocation(line: 1079, column: 20, scope: !3492)
!3494 = !DILocation(line: 1079, column: 4, scope: !3492)
!3495 = !DILocation(line: 1078, column: 3, scope: !3492)
!3496 = !DILocation(line: 1080, column: 3, scope: !3492)
!3497 = !DILocation(line: 1081, column: 2, scope: !3492)
!3498 = !DILocation(line: 1082, column: 9, scope: !221)
!3499 = !DILocation(line: 1083, column: 9, scope: !221)
!3500 = !DILocation(line: 1084, column: 1, scope: !221)
!3501 = distinct !DISubprogram(name: "fixup_timespec", scope: !4, file: !4, line: 1351, type: !194, isLocal: true, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !12)
!3502 = !DILocalVariable(name: "tv", arg: 1, scope: !3501, file: !4, line: 1351, type: !196)
!3503 = !DILocation(line: 1351, column: 33, scope: !3501)
!3504 = !DILocation(line: 1353, column: 2, scope: !3501)
!3505 = !DILocation(line: 1353, column: 9, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3501, file: !4, discriminator: 1)
!3507 = !DILocation(line: 1353, column: 13, scope: !3506)
!3508 = !DILocation(line: 1353, column: 21, scope: !3506)
!3509 = !DILocation(line: 1353, column: 2, scope: !3506)
!3510 = !DILocation(line: 1354, column: 3, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3501, file: !4, line: 1353, column: 26)
!3512 = !DILocation(line: 1354, column: 7, scope: !3511)
!3513 = !DILocation(line: 1354, column: 13, scope: !3511)
!3514 = !DILocation(line: 1355, column: 3, scope: !3511)
!3515 = !DILocation(line: 1355, column: 7, scope: !3511)
!3516 = !DILocation(line: 1355, column: 15, scope: !3511)
!3517 = !DILocation(line: 1353, column: 2, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3501, file: !4, discriminator: 2)
!3519 = distinct !{!3519, !3504}
!3520 = !DILocation(line: 1357, column: 1, scope: !3501)
