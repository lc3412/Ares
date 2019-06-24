; ModuleID = './line12-help.o.i'
source_filename = "./line12-help.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"/tmp/httping.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.6\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Welcome to the new HTTPing version 2.6!\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [133 x i8] c"Did you know that if you compile this program with NCURSES, that it then includes a nice GUI with lots more information and graphs?\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [52 x i8] c"HTTPing v2.6, (C) 2003-2017 folkert@vanheusden.com\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c" * SSL support included (-l)\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c" * TFO (TCP fast open) support included (-F)\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@max_x = external global i32, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"%-4s / %s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%*s \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [30 x i8] c" *** where to connect to ***\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"-g x\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"--url\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"URL to ping (e.g. -g http://localhost/)\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"-h x\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"--hostname\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"hostname to ping (e.g. localhost) - use either -g or -h\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"-p x\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"--port\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"portnumber (e.g. 80) - use with -h\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"--ipv6\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"use IPv6 when resolving/connecting\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--use-ssl\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"connect using SSL. pinging an https URL automatically enables this setting\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c" *** proxy settings ***\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"-x x\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"--proxy\00", align 1
@.str.36 = private unnamed_addr constant [133 x i8] c"x should be \22host:port\22 which are the network settings of the http/https proxy server. ipv6 ip-address should be \22[ip:address]:port\22\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"fetch proxy settings from environment variables\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"--proxy-user x\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"username for authentication against proxy\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"--proxy-password x\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"password for authentication against proxy\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"--proxy-password-file x\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"read password for proxy authentication from file x\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"proxy is a socks5 server\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"--proxy-buster x\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"adds \22&x=[random value]\22 to the request URL\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c" *** timing settings ***\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"-c x\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"--count\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"how many times to ping\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"-i x\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"--interval\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"delay between each ping\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"-t x\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"--timeout\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"timeout (default: 30s)\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"--ai / --adaptive-interval\00", align 1
@.str.60 = private unnamed_addr constant [103 x i8] c"execute pings at multiples of interval relative to start, automatically enabled in ncurses output mode\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"--flood\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"flood connect (no delays)\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c" *** HTTP settings ***\0A\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"--no-cache\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"ask any proxies on the way not to cache the requests\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"--divert-connect\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"connect to a different host than in the URL given\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"--keep-cookies\00", align 1
@.str.71 = private unnamed_addr constant [72 x i8] c"return the cookies given by the HTTP server in the following request(s)\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"--no-host-header\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"do not add \22Host:\22-line to the request headers\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"-Q\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"--persistent-connections\00", align 1
@.str.76 = private unnamed_addr constant [211 x i8] c"use a persistent connection, i.e. reuse the same TCP connection for multiple HTTP requests. usually possible when 'Connection: Keep-Alive' is sent by server. adds a 'C' to the output if httping had to reconnect\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"-I x\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"--user-agent\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"use 'x' for the UserAgent header\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"-R x\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"--referer\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"use 'x' for the Referer header\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"--header\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"adds an extra request-header\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c" *** networking settings ***\0A\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"--max-mtu\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"limit the MTU size\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"--no-tcp-nodelay\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"do not disable Naggle\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"--recv-buffer\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"receive buffer size\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"--tx-buffer\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"transmit buffer size\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"--resolve-once\00", align 1
@.str.96 = private unnamed_addr constant [159 x i8] c"resolve hostname only once (useful when pinging roundrobin DNS: also takes the first DNS lookup out of the loop so that the first measurement is also correct)\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.98 = private unnamed_addr constant [60 x i8] c"do not abort the program if resolving failed: keep retrying\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"-y x\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"--bind-to\00", align 1
@.str.101 = private unnamed_addr constant [65 x i8] c"bind to an ip-address (and thus interface) with an optional port\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"--tcp-fast-open\00", align 1
@.str.104 = private unnamed_addr constant [59 x i8] c"\22TCP fast open\22 (TFO), reduces the latency of TCP connects\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"--priority\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"set priority of packets\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"--tos\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"set TOS (type of service)\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c" *** HTTP authentication ***\0A\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"--basic-auth\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"activate (\22basic\22) authentication\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"-U x\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"--username\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"username for authentication\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"-P x\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"--password\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"password for authentication\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"-T x\00", align 1
@.str.120 = private unnamed_addr constant [56 x i8] c"read the password fom the file 'x' (replacement for -P)\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c" *** output settings ***\0A\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"--show-statuscodes\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"show statuscodes\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"--split-time\00", align 1
@.str.127 = private unnamed_addr constant [79 x i8] c"split measured time in its individual components (resolve, connect, send, etc.\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"--threshold-red\00", align 1
@.str.129 = private unnamed_addr constant [100 x i8] c"from what ping value to show the value in red (must be bigger than yellow), only in color mode (-Y)\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"--threshold-yellow\00", align 1
@.str.131 = private unnamed_addr constant [49 x i8] c"from what ping value to show the value in yellow\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"--threshold-show\00", align 1
@.str.133 = private unnamed_addr constant [41 x i8] c"from what ping value to show the results\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"--timestamp / --ts\00", align 1
@.str.135 = private unnamed_addr constant [103 x i8] c"put a timestamp before the measured values, use -v to include the date and -vv to show in microseconds\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"--aggregate x[,y[,z]]\00", align 1
@.str.137 = private unnamed_addr constant [47 x i8] c"show an aggregate each x[/y[/z[/etc]]] seconds\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"--show-fingerprint\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"show fingerprint (SSL)\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"--ca-path\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c"path to ca certificates (SSL)\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"verbose mode\00", align 1
@.str.145 = private unnamed_addr constant [50 x i8] c" *** \22GET\22 (instead of HTTP \22HEAD\22) settings ***\0A\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"-G\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"--get-request\00", align 1
@.str.148 = private unnamed_addr constant [73 x i8] c"do a GET request instead of HEAD (read the contents of the page as well)\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"--show-transfer-speed\00", align 1
@.str.151 = private unnamed_addr constant [42 x i8] c"show transfer speed in KB/s (use with -G)\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"--show-xfer-speed-compressed\00", align 1
@.str.154 = private unnamed_addr constant [41 x i8] c"like -b but use compression if available\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"-L x\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"--data-limit\00", align 1
@.str.157 = private unnamed_addr constant [64 x i8] c"limit the amount of data transferred (for -b) to 'x' (in bytes)\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"--show-kb\00", align 1
@.str.160 = private unnamed_addr constant [43 x i8] c"show the number of KB transferred (for -b)\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c" *** output mode settings ***\0A\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"quiet, only returncode\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.166 = private unnamed_addr constant [19 x i8] c"--parseable-output\00", align 1
@.str.167 = private unnamed_addr constant [51 x i8] c"give machine parseable output (see also -o and -e)\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.169 = private unnamed_addr constant [40 x i8] c"json output, cannot be combined with -m\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"-o rc,rc,...\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"--ok-result-codes\00", align 1
@.str.172 = private unnamed_addr constant [107 x i8] c"what http results codes indicate 'ok' comma separated WITHOUT spaces inbetween default is 200, use with -e\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"-e x\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"--result-string\00", align 1
@.str.175 = private unnamed_addr constant [54 x i8] c"string to display when http result code doesn't match\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"-n warn,crit\00", align 1
@.str.177 = private unnamed_addr constant [34 x i8] c"--nagios-mode-1 / --nagios-mode-2\00", align 1
@.str.178 = private unnamed_addr constant [89 x i8] c"Nagios-mode: return 1 when avg. response time >= warn, 2 if >= crit, otherwhise return 0\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"-N x\00", align 1
@.str.180 = private unnamed_addr constant [64 x i8] c"Nagios mode 2: return 0 when all fine, 'x' when anything failes\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"-C cookie=value\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"--cookie\00", align 1
@.str.183 = private unnamed_addr constant [28 x i8] c"add a cookie to the request\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"-Y\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"--colors\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"add colors\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"--audible-ping\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"audible ping\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"show the version\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"ANSI\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"Example:\0A\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"\09%s %s%s -s -Z\0A\0A\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c" -Y\00", align 1

; Function Attrs: nounwind uwtable
define void @new_version_alert() #0 !dbg !10 {
  %1 = alloca i8, align 1
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.utsname, align 1
  %6 = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !14, metadata !15), !dbg !16
  store i8 0, i8* %1, align 1, !dbg !16
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !17, metadata !15), !dbg !78
  %7 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !79
  store %struct._IO_FILE* %7, %struct._IO_FILE** %2, align 8, !dbg !78
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !80
  %9 = icmp ne %struct._IO_FILE* %8, null, !dbg !80
  br i1 %9, label %11, label %10, !dbg !82

; <label>:10:                                     ; preds = %0
  store i8 1, i8* %1, align 1, !dbg !83
  br label %29, !dbg !84

; <label>:11:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !85, metadata !15), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %4, metadata !91, metadata !15), !dbg !92
  store i8* null, i8** %4, align 8, !dbg !92
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !93
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !94
  %14 = call i8* @fgets(i8* %12, i32 4096, %struct._IO_FILE* %13), !dbg !95
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !96
  %16 = call i32 @fclose(%struct._IO_FILE* %15), !dbg !97
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !98
  %18 = call i8* @strchr(i8* %17, i32 10) #6, !dbg !99
  store i8* %18, i8** %4, align 8, !dbg !100
  %19 = load i8*, i8** %4, align 8, !dbg !101
  %20 = icmp ne i8* %19, null, !dbg !101
  br i1 %20, label %21, label %23, !dbg !103

; <label>:21:                                     ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !104
  store i8 0, i8* %22, align 1, !dbg !105
  br label %23, !dbg !106

; <label>:23:                                     ; preds = %21, %11
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !107
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !109
  %26 = icmp ne i32 %25, 0, !dbg !110
  br i1 %26, label %27, label %28, !dbg !111

; <label>:27:                                     ; preds = %23
  store i8 1, i8* %1, align 1, !dbg !112
  br label %28, !dbg !113

; <label>:28:                                     ; preds = %27, %23
  br label %29

; <label>:29:                                     ; preds = %28, %10
  %30 = load i8, i8* %1, align 1, !dbg !114
  %31 = icmp ne i8 %30, 0, !dbg !114
  br i1 %31, label %32, label %45, !dbg !116

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.utsname* %5, metadata !117, metadata !15), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !132, metadata !15), !dbg !133
  %33 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !134
  store %struct._IO_FILE* %33, %struct._IO_FILE** %6, align 8, !dbg !133
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !135
  %35 = icmp ne %struct._IO_FILE* %34, null, !dbg !135
  br i1 %35, label %36, label %41, !dbg !137

; <label>:36:                                     ; preds = %32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !138
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !140
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !141
  %40 = call i32 @fclose(%struct._IO_FILE* %39), !dbg !142
  br label %41, !dbg !143

; <label>:41:                                     ; preds = %36, %32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0)), !dbg !144
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.6, i32 0, i32 0)), !dbg !145
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !146
  br label %45, !dbg !147

; <label>:45:                                     ; preds = %41, %29
  ret void, !dbg !148
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @version() #0 !dbg !149 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !150
  %2 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !151
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !152
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !154
  %5 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !155
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !156
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !157
  %8 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !158
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* %8), !dbg !159
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !160
  %11 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !161
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* %11), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @format_help(i8*, i8*, i8*) #0 !dbg !164 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !15), !dbg !170
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !171, metadata !15), !dbg !172
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !173, metadata !15), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %7, metadata !175, metadata !15), !dbg !176
  store i32 24, i32* %7, align 4, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %8, metadata !177, metadata !15), !dbg !178
  %22 = load i32, i32* %7, align 4, !dbg !179
  %23 = sdiv i32 %22, 2, !dbg !180
  store i32 %23, i32* %8, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %9, metadata !181, metadata !15), !dbg !182
  store i32 0, i32* %9, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata i32* %10, metadata !183, metadata !15), !dbg !184
  %24 = load i32, i32* @max_x, align 4, !dbg !185
  %25 = load i32, i32* %7, align 4, !dbg !186
  %26 = add nsw i32 %25, 1, !dbg !187
  %27 = sub nsw i32 %24, %26, !dbg !188
  store i32 %27, i32* %10, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata i8** %11, metadata !189, metadata !15), !dbg !190
  store i8* null, i8** %11, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %12, metadata !191, metadata !15), !dbg !192
  %28 = load i8*, i8** %6, align 8, !dbg !193
  store i8* %28, i8** %12, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i8* %13, metadata !194, metadata !15), !dbg !195
  store i8 1, i8* %13, align 1, !dbg !195
  %29 = load i8*, i8** %5, align 8, !dbg !196
  %30 = icmp ne i8* %29, null, !dbg !196
  br i1 %30, label %31, label %37, !dbg !198

; <label>:31:                                     ; preds = %3
  %32 = load i8*, i8** %4, align 8, !dbg !199
  %33 = icmp ne i8* %32, null, !dbg !199
  br i1 %33, label %34, label %37, !dbg !201

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %4, align 8, !dbg !202
  %36 = load i8*, i8** %5, align 8, !dbg !203
  call void (i8**, i8*, ...) @str_add(i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %35, i8* %36), !dbg !204
  br label %45, !dbg !204

; <label>:37:                                     ; preds = %31, %3
  %38 = load i8*, i8** %5, align 8, !dbg !205
  %39 = icmp ne i8* %38, null, !dbg !205
  br i1 %39, label %40, label %42, !dbg !207

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %5, align 8, !dbg !208
  call void (i8**, i8*, ...) @str_add(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %41), !dbg !209
  br label %44, !dbg !209

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %4, align 8, !dbg !210
  call void (i8**, i8*, ...) @str_add(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %43), !dbg !211
  br label %44

; <label>:44:                                     ; preds = %42, %40
  br label %45

; <label>:45:                                     ; preds = %44, %34
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !212
  %47 = load i32, i32* %7, align 4, !dbg !213
  %48 = load i8*, i8** %11, align 8, !dbg !214
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %47, i8* %48), !dbg !215
  store i32 %49, i32* %9, align 4, !dbg !216
  %50 = load i8*, i8** %11, align 8, !dbg !217
  call void @free(i8* %50) #7, !dbg !218
  %51 = load i32, i32* %7, align 4, !dbg !219
  %52 = add nsw i32 %51, 1, !dbg !221
  %53 = load i32, i32* @max_x, align 4, !dbg !222
  %54 = icmp sge i32 %52, %53, !dbg !223
  br i1 %54, label %59, label %55, !dbg !224

; <label>:55:                                     ; preds = %45
  %56 = load i32, i32* %9, align 4, !dbg !225
  %57 = load i32, i32* @max_x, align 4, !dbg !227
  %58 = icmp sge i32 %56, %57, !dbg !228
  br i1 %58, label %59, label %63, !dbg !229

; <label>:59:                                     ; preds = %55, %45
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !230
  %61 = load i8*, i8** %6, align 8, !dbg !232
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %61), !dbg !233
  br label %173, !dbg !234

; <label>:63:                                     ; preds = %55
  br label %64, !dbg !235

; <label>:64:                                     ; preds = %167, %63
  %65 = load i8*, i8** %12, align 8, !dbg !236
  %66 = call i64 @strlen(i8* %65) #6, !dbg !240
  %67 = icmp ne i64 %66, 0, !dbg !241
  br i1 %67, label %68, label %173, !dbg !241

; <label>:68:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata i8** %14, metadata !242, metadata !15), !dbg !244
  store i8* null, i8** %14, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata i8** %15, metadata !245, metadata !15), !dbg !246
  store i8* null, i8** %15, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i8** %16, metadata !247, metadata !15), !dbg !248
  store i8* null, i8** %16, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %17, metadata !249, metadata !15), !dbg !250
  store i32 0, i32* %17, align 4, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %18, metadata !251, metadata !15), !dbg !252
  store i32 0, i32* %18, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %19, metadata !253, metadata !15), !dbg !254
  store i32 0, i32* %19, align 4, !dbg !254
  call void @llvm.dbg.declare(metadata i32* %20, metadata !255, metadata !15), !dbg !256
  store i32 0, i32* %20, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata i32* %21, metadata !257, metadata !15), !dbg !258
  %69 = load i8, i8* %13, align 1, !dbg !259
  %70 = sext i8 %69 to i32, !dbg !259
  %71 = icmp ne i32 %70, 0, !dbg !259
  br i1 %71, label %72, label %76, !dbg !259

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* @max_x, align 4, !dbg !260
  %74 = load i32, i32* %9, align 4, !dbg !262
  %75 = sub nsw i32 %73, %74, !dbg !263
  br label %78, !dbg !264

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %10, align 4, !dbg !265
  br label %78, !dbg !267

; <label>:78:                                     ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ], !dbg !268
  store i32 %79, i32* %21, align 4, !dbg !270
  br label %80, !dbg !271

; <label>:80:                                     ; preds = %85, %78
  %81 = load i8*, i8** %12, align 8, !dbg !272
  %82 = load i8, i8* %81, align 1, !dbg !273
  %83 = sext i8 %82 to i32, !dbg !273
  %84 = icmp eq i32 %83, 32, !dbg !274
  br i1 %84, label %85, label %88, !dbg !275

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %12, align 8, !dbg !276
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !276
  store i8* %87, i8** %12, align 8, !dbg !276
  br label %80, !dbg !277, !llvm.loop !278

; <label>:88:                                     ; preds = %80
  %89 = load i8*, i8** %12, align 8, !dbg !279
  %90 = call i64 @strlen(i8* %89) #6, !dbg !280
  %91 = trunc i64 %90 to i32, !dbg !280
  store i32 %91, i32* %20, align 4, !dbg !281
  %92 = load i32, i32* %20, align 4, !dbg !282
  %93 = icmp ne i32 %92, 0, !dbg !282
  br i1 %93, label %95, label %94, !dbg !284

; <label>:94:                                     ; preds = %88
  br label %173, !dbg !285

; <label>:95:                                     ; preds = %88
  %96 = load i32, i32* %20, align 4, !dbg !286
  %97 = load i32, i32* %21, align 4, !dbg !287
  %98 = icmp slt i32 %96, %97, !dbg !288
  br i1 %98, label %99, label %101, !dbg !289

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %20, align 4, !dbg !290
  br label %103, !dbg !291

; <label>:101:                                    ; preds = %95
  %102 = load i32, i32* %21, align 4, !dbg !292
  br label %103, !dbg !293

; <label>:103:                                    ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ], !dbg !294
  store i32 %104, i32* %19, align 4, !dbg !295
  %105 = load i32, i32* %19, align 4, !dbg !296
  %106 = sext i32 %105 to i64, !dbg !297
  %107 = load i8*, i8** %12, align 8, !dbg !297
  %108 = getelementptr inbounds i8, i8* %107, i64 %106, !dbg !297
  store i8* %108, i8** %14, align 8, !dbg !298
  %109 = load i8*, i8** %14, align 8, !dbg !299
  store i8* %109, i8** %15, align 8, !dbg !300
  %110 = load i32, i32* %20, align 4, !dbg !301
  %111 = load i32, i32* %21, align 4, !dbg !303
  %112 = icmp sgt i32 %110, %111, !dbg !304
  br i1 %112, label %113, label %137, !dbg !305

; <label>:113:                                    ; preds = %103
  br label %114, !dbg !306

; <label>:114:                                    ; preds = %125, %113
  %115 = load i8*, i8** %14, align 8, !dbg !308
  %116 = load i8, i8* %115, align 1, !dbg !310
  %117 = sext i8 %116 to i32, !dbg !310
  %118 = icmp ne i32 %117, 32, !dbg !311
  br i1 %118, label %119, label %123, !dbg !312

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %17, align 4, !dbg !313
  %121 = load i32, i32* %8, align 4, !dbg !315
  %122 = icmp slt i32 %120, %121, !dbg !316
  br label %123

; <label>:123:                                    ; preds = %119, %114
  %124 = phi i1 [ false, %114 ], [ %122, %119 ]
  br i1 %124, label %125, label %130, !dbg !317

; <label>:125:                                    ; preds = %123
  %126 = load i8*, i8** %14, align 8, !dbg !319
  %127 = getelementptr inbounds i8, i8* %126, i32 -1, !dbg !319
  store i8* %127, i8** %14, align 8, !dbg !319
  %128 = load i32, i32* %17, align 4, !dbg !321
  %129 = add nsw i32 %128, 1, !dbg !321
  store i32 %129, i32* %17, align 4, !dbg !321
  br label %114, !dbg !322, !llvm.loop !324

; <label>:130:                                    ; preds = %123
  %131 = load i32, i32* %17, align 4, !dbg !325
  %132 = load i32, i32* %8, align 4, !dbg !327
  %133 = icmp sge i32 %131, %132, !dbg !328
  br i1 %133, label %134, label %136, !dbg !329

; <label>:134:                                    ; preds = %130
  %135 = load i8*, i8** %15, align 8, !dbg !330
  store i8* %135, i8** %14, align 8, !dbg !331
  br label %136, !dbg !332

; <label>:136:                                    ; preds = %134, %130
  br label %137, !dbg !333

; <label>:137:                                    ; preds = %136, %103
  %138 = load i8*, i8** %14, align 8, !dbg !334
  %139 = load i8*, i8** %12, align 8, !dbg !335
  %140 = ptrtoint i8* %138 to i64, !dbg !336
  %141 = ptrtoint i8* %139 to i64, !dbg !336
  %142 = sub i64 %140, %141, !dbg !336
  %143 = trunc i64 %142 to i32, !dbg !337
  store i32 %143, i32* %18, align 4, !dbg !338
  %144 = load i32, i32* %18, align 4, !dbg !339
  %145 = icmp sle i32 %144, 0, !dbg !341
  br i1 %145, label %146, label %147, !dbg !342

; <label>:146:                                    ; preds = %137
  br label %173, !dbg !343

; <label>:147:                                    ; preds = %137
  %148 = load i32, i32* %18, align 4, !dbg !344
  %149 = add nsw i32 %148, 1, !dbg !345
  %150 = sext i32 %149 to i64, !dbg !344
  %151 = call noalias i8* @malloc(i64 %150) #7, !dbg !346
  store i8* %151, i8** %16, align 8, !dbg !347
  %152 = load i8*, i8** %16, align 8, !dbg !348
  %153 = load i8*, i8** %12, align 8, !dbg !349
  %154 = load i32, i32* %18, align 4, !dbg !350
  %155 = sext i32 %154 to i64, !dbg !350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 %155, i32 1, i1 false), !dbg !351
  %156 = load i32, i32* %18, align 4, !dbg !352
  %157 = sext i32 %156 to i64, !dbg !353
  %158 = load i8*, i8** %16, align 8, !dbg !353
  %159 = getelementptr inbounds i8, i8* %158, i64 %157, !dbg !353
  store i8 0, i8* %159, align 1, !dbg !354
  %160 = load i8, i8* %13, align 1, !dbg !355
  %161 = icmp ne i8 %160, 0, !dbg !355
  br i1 %161, label %162, label %163, !dbg !357

; <label>:162:                                    ; preds = %147
  store i8 0, i8* %13, align 1, !dbg !358
  br label %167, !dbg !359

; <label>:163:                                    ; preds = %147
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !360
  %165 = load i32, i32* %7, align 4, !dbg !361
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %165, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0)), !dbg !362
  br label %167

; <label>:167:                                    ; preds = %163, %162
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !363
  %169 = load i8*, i8** %16, align 8, !dbg !364
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %169), !dbg !365
  %171 = load i8*, i8** %16, align 8, !dbg !366
  call void @free(i8* %171) #7, !dbg !367
  %172 = load i8*, i8** %14, align 8, !dbg !368
  store i8* %172, i8** %12, align 8, !dbg !369
  br label %64, !dbg !370, !llvm.loop !372

; <label>:173:                                    ; preds = %59, %146, %94, %64
  ret void, !dbg !373
}

declare void @str_add(i8**, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @usage(i8*) #0 !dbg !374 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !377, metadata !15), !dbg !378
  call void @llvm.dbg.declare(metadata i8** %3, metadata !379, metadata !15), !dbg !380
  store i8* null, i8** %3, align 8, !dbg !380
  call void @llvm.dbg.declare(metadata i8* %4, metadata !381, metadata !15), !dbg !382
  store i8 0, i8* %4, align 1, !dbg !382
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !383, metadata !15), !dbg !387
  %6 = bitcast [256 x i8]* %5 to i8*, !dbg !387
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 256, i32 16, i1 false), !dbg !387
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !388
  %8 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0)) #7, !dbg !389
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* %8), !dbg !390
  %10 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !392
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %10), !dbg !393
  %11 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !394
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %11), !dbg !395
  %12 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0)) #7, !dbg !396
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* %12), !dbg !397
  %13 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !398
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %13), !dbg !399
  %14 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !400
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %14), !dbg !401
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !402
  %16 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !403
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* %16), !dbg !404
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !405
  %19 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !406
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* %19), !dbg !407
  %21 = call i8* @gettext(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !408
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* %21), !dbg !409
  %22 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !410
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* %22), !dbg !411
  %23 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !412
  call void @format_help(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* %23), !dbg !413
  %24 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !414
  call void @format_help(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* %24), !dbg !415
  %25 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !416
  call void @format_help(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i8* %25), !dbg !417
  %26 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0)) #7, !dbg !418
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* %26), !dbg !419
  %27 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0)) #7, !dbg !420
  call void @format_help(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* %27), !dbg !421
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !422
  %29 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !423
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* %29), !dbg !424
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !425
  %32 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0)) #7, !dbg !426
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* %32), !dbg !427
  %34 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0)) #7, !dbg !428
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* %34), !dbg !429
  %35 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0)) #7, !dbg !430
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* %35), !dbg !431
  %36 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)) #7, !dbg !432
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* %36), !dbg !433
  %37 = call i8* @gettext(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.60, i32 0, i32 0)) #7, !dbg !434
  call void @format_help(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %37), !dbg !435
  %38 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !436
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* %38), !dbg !437
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !438
  %40 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !439
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* %40), !dbg !440
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !441
  %43 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !442
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* %43), !dbg !443
  %45 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.67, i32 0, i32 0)) #7, !dbg !444
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* %45), !dbg !445
  %46 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.69, i32 0, i32 0)) #7, !dbg !446
  call void @format_help(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i8* %46), !dbg !447
  %47 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.71, i32 0, i32 0)) #7, !dbg !448
  call void @format_help(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* %47), !dbg !449
  %48 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.73, i32 0, i32 0)) #7, !dbg !450
  call void @format_help(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* %48), !dbg !451
  %49 = call i8* @gettext(i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.76, i32 0, i32 0)) #7, !dbg !452
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0), i8* %49), !dbg !453
  %50 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i32 0, i32 0)) #7, !dbg !454
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0), i8* %50), !dbg !455
  %51 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0)) #7, !dbg !456
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i8* %51), !dbg !457
  %52 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i32 0, i32 0)) #7, !dbg !458
  call void @format_help(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* %52), !dbg !459
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !460
  %54 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !461
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* %54), !dbg !462
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !463
  %57 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.85, i32 0, i32 0)) #7, !dbg !464
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* %57), !dbg !465
  %59 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0)) #7, !dbg !466
  call void @format_help(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i8* %59), !dbg !467
  %60 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i32 0, i32 0)) #7, !dbg !468
  call void @format_help(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0), i8* %60), !dbg !469
  %61 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.91, i32 0, i32 0)) #7, !dbg !470
  call void @format_help(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), i8* %61), !dbg !471
  %62 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i32 0, i32 0)) #7, !dbg !472
  call void @format_help(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8* %62), !dbg !473
  %63 = call i8* @gettext(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.96, i32 0, i32 0)) #7, !dbg !474
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i8* %63), !dbg !475
  %64 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.98, i32 0, i32 0)) #7, !dbg !476
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* %64), !dbg !477
  %65 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.101, i32 0, i32 0)) #7, !dbg !478
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i8* %65), !dbg !479
  %66 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.104, i32 0, i32 0)) #7, !dbg !480
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i8* %66), !dbg !481
  %67 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.106, i32 0, i32 0)) #7, !dbg !482
  call void @format_help(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i8* %67), !dbg !483
  %68 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.108, i32 0, i32 0)) #7, !dbg !484
  call void @format_help(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* %68), !dbg !485
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !486
  %70 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !487
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* %70), !dbg !488
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !489
  %73 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i32 0, i32 0)) #7, !dbg !490
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* %73), !dbg !491
  %75 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i32 0, i32 0)) #7, !dbg !492
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i8* %75), !dbg !493
  %76 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.115, i32 0, i32 0)) #7, !dbg !494
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i8* %76), !dbg !495
  %77 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.118, i32 0, i32 0)) #7, !dbg !496
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), i8* %77), !dbg !497
  %78 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.120, i32 0, i32 0)) #7, !dbg !498
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* null, i8* %78), !dbg !499
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !500
  %80 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !501
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* %80), !dbg !502
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !503
  %83 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.121, i32 0, i32 0)) #7, !dbg !504
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* %83), !dbg !505
  %85 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0)) #7, !dbg !506
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.123, i32 0, i32 0), i8* %85), !dbg !507
  %86 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.127, i32 0, i32 0)) #7, !dbg !508
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i8* %86), !dbg !509
  %87 = call i8* @gettext(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.129, i32 0, i32 0)) #7, !dbg !510
  call void @format_help(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.128, i32 0, i32 0), i8* %87), !dbg !511
  %88 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.131, i32 0, i32 0)) #7, !dbg !512
  call void @format_help(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* %88), !dbg !513
  %89 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.133, i32 0, i32 0)) #7, !dbg !514
  call void @format_help(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.132, i32 0, i32 0), i8* %89), !dbg !515
  %90 = call i8* @gettext(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.135, i32 0, i32 0)) #7, !dbg !516
  call void @format_help(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i32 0, i32 0), i8* %90), !dbg !517
  %91 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.137, i32 0, i32 0)) #7, !dbg !518
  call void @format_help(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.136, i32 0, i32 0), i8* %91), !dbg !519
  %92 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.140, i32 0, i32 0)) #7, !dbg !520
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.139, i32 0, i32 0), i8* %92), !dbg !521
  %93 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i32 0, i32 0)) #7, !dbg !522
  call void @format_help(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8* %93), !dbg !523
  %94 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0)) #7, !dbg !524
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i8* null, i8* %94), !dbg !525
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !526
  %96 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !527
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* %96), !dbg !528
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !529
  %99 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.145, i32 0, i32 0)) #7, !dbg !530
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* %99), !dbg !531
  %101 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.148, i32 0, i32 0)) #7, !dbg !532
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), i8* %101), !dbg !533
  %102 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.151, i32 0, i32 0)) #7, !dbg !534
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.150, i32 0, i32 0), i8* %102), !dbg !535
  %103 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.154, i32 0, i32 0)) #7, !dbg !536
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.153, i32 0, i32 0), i8* %103), !dbg !537
  %104 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.157, i32 0, i32 0)) #7, !dbg !538
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i8* %104), !dbg !539
  %105 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.160, i32 0, i32 0)) #7, !dbg !540
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.159, i32 0, i32 0), i8* %105), !dbg !541
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !542
  %107 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !543
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* %107), !dbg !544
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !545
  %110 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i32 0, i32 0)) #7, !dbg !546
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* %110), !dbg !547
  %112 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.164, i32 0, i32 0)) #7, !dbg !548
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i32 0, i32 0), i8* %112), !dbg !549
  %113 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.167, i32 0, i32 0)) #7, !dbg !550
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.166, i32 0, i32 0), i8* %113), !dbg !551
  %114 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.169, i32 0, i32 0)) #7, !dbg !552
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* %114), !dbg !553
  %115 = call i8* @gettext(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.172, i32 0, i32 0)) #7, !dbg !554
  call void @format_help(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* %115), !dbg !555
  %116 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.175, i32 0, i32 0)) #7, !dbg !556
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.174, i32 0, i32 0), i8* %116), !dbg !557
  %117 = call i8* @gettext(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.178, i32 0, i32 0)) #7, !dbg !558
  call void @format_help(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.177, i32 0, i32 0), i8* %117), !dbg !559
  %118 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.180, i32 0, i32 0)) #7, !dbg !560
  call void @format_help(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* null, i8* %118), !dbg !561
  %119 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.183, i32 0, i32 0)) #7, !dbg !562
  call void @format_help(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0), i8* %119), !dbg !563
  %120 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.186, i32 0, i32 0)) #7, !dbg !564
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i8* %120), !dbg !565
  %121 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0)) #7, !dbg !566
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i32 0, i32 0), i8* %121), !dbg !567
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !568
  %123 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !569
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* %123), !dbg !570
  %125 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.192, i32 0, i32 0)) #7, !dbg !571
  call void @format_help(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.191, i32 0, i32 0), i8* %125), !dbg !572
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !573
  %127 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !574
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* %127), !dbg !575
  %129 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0)) #7, !dbg !576
  store i8* %129, i8** %3, align 8, !dbg !577
  %130 = load i8*, i8** %3, align 8, !dbg !578
  %131 = icmp ne i8* %130, null, !dbg !578
  br i1 %131, label %132, label %146, !dbg !580

; <label>:132:                                    ; preds = %1
  %133 = load i8*, i8** %3, align 8, !dbg !581
  %134 = call i8* @strstr(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.194, i32 0, i32 0)) #6, !dbg !584
  %135 = icmp ne i8* %134, null, !dbg !584
  br i1 %135, label %144, label %136, !dbg !585

; <label>:136:                                    ; preds = %132
  %137 = load i8*, i8** %3, align 8, !dbg !586
  %138 = call i8* @strstr(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0)) #6, !dbg !588
  %139 = icmp ne i8* %138, null, !dbg !588
  br i1 %139, label %144, label %140, !dbg !589

; <label>:140:                                    ; preds = %136
  %141 = load i8*, i8** %3, align 8, !dbg !590
  %142 = call i8* @strstr(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0)) #6, !dbg !592
  %143 = icmp ne i8* %142, null, !dbg !592
  br i1 %143, label %144, label %145, !dbg !593

; <label>:144:                                    ; preds = %140, %136, %132
  store i8 1, i8* %4, align 1, !dbg !594
  br label %145, !dbg !595

; <label>:145:                                    ; preds = %144, %140
  br label %146, !dbg !596

; <label>:146:                                    ; preds = %145, %1
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !597
  %148 = call i32 @gethostname(i8* %147, i64 256) #7, !dbg !599
  %149 = icmp ne i32 %148, 0, !dbg !599
  br i1 %149, label %150, label %153, !dbg !600

; <label>:150:                                    ; preds = %146
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !601
  %152 = call i8* @strcpy(i8* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.197, i32 0, i32 0)) #7, !dbg !602
  br label %153, !dbg !602

; <label>:153:                                    ; preds = %150, %146
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !603
  %155 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.198, i32 0, i32 0)) #7, !dbg !604
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* %155), !dbg !605
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !606
  %158 = load i8*, i8** %2, align 8, !dbg !607
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !608
  %160 = load i8, i8* %4, align 1, !dbg !609
  %161 = sext i8 %160 to i32, !dbg !609
  %162 = icmp ne i32 %161, 0, !dbg !609
  %163 = select i1 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), !dbg !609
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.199, i32 0, i32 0), i8* %158, i8* %159, i8* %163), !dbg !610
  call void @new_version_alert(), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line12-help.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!10 = distinct !DISubprogram(name: "new_version_alert", scope: !11, file: !11, line: 13, type: !12, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "help.c", directory: "/home/lichi/Desktop/httping/task1")
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !DILocalVariable(name: "new_version", scope: !10, file: !11, line: 15, type: !5)
!15 = !DIExpression()
!16 = !DILocation(line: 15, column: 7, scope: !10)
!17 = !DILocalVariable(name: "fh", scope: !10, file: !11, line: 16, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 48, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/httping/task1")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !22, line: 241, size: 1728, align: 64, elements: !23)
!22 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/httping/task1")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !44, !45, !46, !47, !51, !53, !55, !59, !62, !64, !66, !67, !68, !69, !73, !74}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !22, line: 242, baseType: !6, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !21, file: !22, line: 247, baseType: !4, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !21, file: !22, line: 248, baseType: !4, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !21, file: !22, line: 249, baseType: !4, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !21, file: !22, line: 250, baseType: !4, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !21, file: !22, line: 251, baseType: !4, size: 64, align: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !21, file: !22, line: 252, baseType: !4, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !21, file: !22, line: 253, baseType: !4, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !21, file: !22, line: 254, baseType: !4, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !21, file: !22, line: 256, baseType: !4, size: 64, align: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !21, file: !22, line: 257, baseType: !4, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !21, file: !22, line: 258, baseType: !4, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !21, file: !22, line: 260, baseType: !37, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !22, line: 156, size: 192, align: 64, elements: !39)
!39 = !{!40, !41, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !38, file: !22, line: 157, baseType: !37, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !38, file: !22, line: 158, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !38, file: !22, line: 162, baseType: !6, size: 32, align: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !21, file: !22, line: 262, baseType: !42, size: 64, align: 64, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !21, file: !22, line: 264, baseType: !6, size: 32, align: 32, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !22, line: 268, baseType: !6, size: 32, align: 32, offset: 928)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !21, file: !22, line: 270, baseType: !48, size: 64, align: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 131, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/httping/task1")
!50 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !21, file: !22, line: 274, baseType: !52, size: 16, align: 16, offset: 1024)
!52 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !21, file: !22, line: 275, baseType: !54, size: 8, align: 8, offset: 1040)
!54 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !21, file: !22, line: 276, baseType: !56, size: 8, align: 8, offset: 1048)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !22, line: 280, baseType: !60, size: 64, align: 64, offset: 1088)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !22, line: 150, baseType: null)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !22, line: 289, baseType: !63, size: 64, align: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 132, baseType: !50)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !21, file: !22, line: 297, baseType: !65, size: 64, align: 64, offset: 1216)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !21, file: !22, line: 298, baseType: !65, size: 64, align: 64, offset: 1280)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !21, file: !22, line: 299, baseType: !65, size: 64, align: 64, offset: 1344)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !21, file: !22, line: 300, baseType: !65, size: 64, align: 64, offset: 1408)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !21, file: !22, line: 302, baseType: !70, size: 64, align: 64, offset: 1472)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 216, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/httping/task1")
!72 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !21, file: !22, line: 303, baseType: !6, size: 32, align: 32, offset: 1536)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !21, file: !22, line: 305, baseType: !75, size: 160, align: 8, offset: 1568)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !DILocation(line: 16, column: 8, scope: !10)
!79 = !DILocation(line: 16, column: 13, scope: !10)
!80 = !DILocation(line: 17, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !10, file: !11, line: 17, column: 6)
!82 = !DILocation(line: 17, column: 6, scope: !10)
!83 = !DILocation(line: 18, column: 15, scope: !81)
!84 = !DILocation(line: 18, column: 3, scope: !81)
!85 = !DILocalVariable(name: "buffer", scope: !86, file: !11, line: 21, type: !87)
!86 = distinct !DILexicalBlock(scope: !81, file: !11, line: 20, column: 2)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32768, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 4096)
!90 = !DILocation(line: 21, column: 8, scope: !86)
!91 = !DILocalVariable(name: "dummy", scope: !86, file: !11, line: 21, type: !4)
!92 = !DILocation(line: 21, column: 23, scope: !86)
!93 = !DILocation(line: 23, column: 9, scope: !86)
!94 = !DILocation(line: 23, column: 32, scope: !86)
!95 = !DILocation(line: 23, column: 3, scope: !86)
!96 = !DILocation(line: 25, column: 10, scope: !86)
!97 = !DILocation(line: 25, column: 3, scope: !86)
!98 = !DILocation(line: 27, column: 18, scope: !86)
!99 = !DILocation(line: 27, column: 11, scope: !86)
!100 = !DILocation(line: 27, column: 9, scope: !86)
!101 = !DILocation(line: 28, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !86, file: !11, line: 28, column: 7)
!103 = !DILocation(line: 28, column: 7, scope: !86)
!104 = !DILocation(line: 29, column: 5, scope: !102)
!105 = !DILocation(line: 29, column: 11, scope: !102)
!106 = !DILocation(line: 29, column: 4, scope: !102)
!107 = !DILocation(line: 31, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !86, file: !11, line: 31, column: 7)
!109 = !DILocation(line: 31, column: 7, scope: !108)
!110 = !DILocation(line: 31, column: 29, scope: !108)
!111 = !DILocation(line: 31, column: 7, scope: !86)
!112 = !DILocation(line: 32, column: 16, scope: !108)
!113 = !DILocation(line: 32, column: 4, scope: !108)
!114 = !DILocation(line: 35, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !10, file: !11, line: 35, column: 6)
!116 = !DILocation(line: 35, column: 6, scope: !10)
!117 = !DILocalVariable(name: "buf", scope: !118, file: !11, line: 37, type: !119)
!118 = distinct !DILexicalBlock(scope: !115, file: !11, line: 36, column: 2)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !120, line: 48, size: 3120, align: 8, elements: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/httping/task1")
!121 = !{!122, !126, !127, !128, !129, !130}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !119, file: !120, line: 51, baseType: !123, size: 520, align: 8)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 520, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 65)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !119, file: !120, line: 54, baseType: !123, size: 520, align: 8, offset: 520)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !119, file: !120, line: 57, baseType: !123, size: 520, align: 8, offset: 1040)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !119, file: !120, line: 59, baseType: !123, size: 520, align: 8, offset: 1560)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !119, file: !120, line: 62, baseType: !123, size: 520, align: 8, offset: 2080)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__domainname", scope: !119, file: !120, line: 69, baseType: !123, size: 520, align: 8, offset: 2600)
!131 = !DILocation(line: 37, column: 18, scope: !118)
!132 = !DILocalVariable(name: "fh", scope: !118, file: !11, line: 38, type: !18)
!133 = !DILocation(line: 38, column: 9, scope: !118)
!134 = !DILocation(line: 38, column: 14, scope: !118)
!135 = !DILocation(line: 39, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !118, file: !11, line: 39, column: 7)
!137 = !DILocation(line: 39, column: 7, scope: !118)
!138 = !DILocation(line: 41, column: 12, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !11, line: 40, column: 3)
!140 = !DILocation(line: 41, column: 4, scope: !139)
!141 = !DILocation(line: 43, column: 11, scope: !139)
!142 = !DILocation(line: 43, column: 4, scope: !139)
!143 = !DILocation(line: 44, column: 3, scope: !139)
!144 = !DILocation(line: 46, column: 3, scope: !118)
!145 = !DILocation(line: 53, column: 3, scope: !118)
!146 = !DILocation(line: 71, column: 3, scope: !118)
!147 = !DILocation(line: 72, column: 2, scope: !118)
!148 = !DILocation(line: 73, column: 1, scope: !10)
!149 = distinct !DISubprogram(name: "version", scope: !11, file: !11, line: 75, type: !12, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!150 = !DILocation(line: 77, column: 9, scope: !149)
!151 = !DILocation(line: 77, column: 17, scope: !149)
!152 = !DILocation(line: 77, column: 2, scope: !153)
!153 = !DILexicalBlockFile(scope: !149, file: !11, discriminator: 1)
!154 = !DILocation(line: 79, column: 9, scope: !149)
!155 = !DILocation(line: 79, column: 17, scope: !149)
!156 = !DILocation(line: 79, column: 2, scope: !153)
!157 = !DILocation(line: 91, column: 9, scope: !149)
!158 = !DILocation(line: 91, column: 17, scope: !149)
!159 = !DILocation(line: 91, column: 2, scope: !153)
!160 = !DILocation(line: 93, column: 9, scope: !149)
!161 = !DILocation(line: 93, column: 17, scope: !149)
!162 = !DILocation(line: 93, column: 2, scope: !153)
!163 = !DILocation(line: 94, column: 1, scope: !149)
!164 = distinct !DISubprogram(name: "format_help", scope: !11, file: !11, line: 96, type: !165, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !167, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!169 = !DILocalVariable(name: "short_str", arg: 1, scope: !164, file: !11, line: 96, type: !167)
!170 = !DILocation(line: 96, column: 30, scope: !164)
!171 = !DILocalVariable(name: "long_str", arg: 2, scope: !164, file: !11, line: 96, type: !167)
!172 = !DILocation(line: 96, column: 53, scope: !164)
!173 = !DILocalVariable(name: "descr", arg: 3, scope: !164, file: !11, line: 96, type: !167)
!174 = !DILocation(line: 96, column: 75, scope: !164)
!175 = !DILocalVariable(name: "par_width", scope: !164, file: !11, line: 98, type: !6)
!176 = !DILocation(line: 98, column: 6, scope: !164)
!177 = !DILocalVariable(name: "max_wrap_width", scope: !164, file: !11, line: 98, type: !6)
!178 = !DILocation(line: 98, column: 22, scope: !164)
!179 = !DILocation(line: 98, column: 39, scope: !164)
!180 = !DILocation(line: 98, column: 49, scope: !164)
!181 = !DILocalVariable(name: "cur_par_width", scope: !164, file: !11, line: 98, type: !6)
!182 = !DILocation(line: 98, column: 54, scope: !164)
!183 = !DILocalVariable(name: "descr_width", scope: !164, file: !11, line: 99, type: !6)
!184 = !DILocation(line: 99, column: 6, scope: !164)
!185 = !DILocation(line: 99, column: 20, scope: !164)
!186 = !DILocation(line: 99, column: 29, scope: !164)
!187 = !DILocation(line: 99, column: 39, scope: !164)
!188 = !DILocation(line: 99, column: 26, scope: !164)
!189 = !DILocalVariable(name: "line", scope: !164, file: !11, line: 100, type: !4)
!190 = !DILocation(line: 100, column: 8, scope: !164)
!191 = !DILocalVariable(name: "p", scope: !164, file: !11, line: 100, type: !4)
!192 = !DILocation(line: 100, column: 21, scope: !164)
!193 = !DILocation(line: 100, column: 33, scope: !164)
!194 = !DILocalVariable(name: "first", scope: !164, file: !11, line: 101, type: !5)
!195 = !DILocation(line: 101, column: 7, scope: !164)
!196 = !DILocation(line: 103, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !164, file: !11, line: 103, column: 6)
!198 = !DILocation(line: 103, column: 15, scope: !197)
!199 = !DILocation(line: 103, column: 18, scope: !200)
!200 = !DILexicalBlockFile(scope: !197, file: !11, discriminator: 1)
!201 = !DILocation(line: 103, column: 6, scope: !200)
!202 = !DILocation(line: 104, column: 31, scope: !197)
!203 = !DILocation(line: 104, column: 42, scope: !197)
!204 = !DILocation(line: 104, column: 3, scope: !197)
!205 = !DILocation(line: 105, column: 11, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !11, line: 105, column: 11)
!207 = !DILocation(line: 105, column: 11, scope: !197)
!208 = !DILocation(line: 106, column: 24, scope: !206)
!209 = !DILocation(line: 106, column: 3, scope: !206)
!210 = !DILocation(line: 108, column: 24, scope: !206)
!211 = !DILocation(line: 108, column: 3, scope: !206)
!212 = !DILocation(line: 110, column: 25, scope: !164)
!213 = !DILocation(line: 110, column: 42, scope: !164)
!214 = !DILocation(line: 110, column: 53, scope: !164)
!215 = !DILocation(line: 110, column: 18, scope: !164)
!216 = !DILocation(line: 110, column: 16, scope: !164)
!217 = !DILocation(line: 112, column: 7, scope: !164)
!218 = !DILocation(line: 112, column: 2, scope: !164)
!219 = !DILocation(line: 114, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !164, file: !11, line: 114, column: 6)
!221 = !DILocation(line: 114, column: 16, scope: !220)
!222 = !DILocation(line: 114, column: 23, scope: !220)
!223 = !DILocation(line: 114, column: 20, scope: !220)
!224 = !DILocation(line: 114, column: 29, scope: !220)
!225 = !DILocation(line: 114, column: 32, scope: !226)
!226 = !DILexicalBlockFile(scope: !220, file: !11, discriminator: 1)
!227 = !DILocation(line: 114, column: 49, scope: !226)
!228 = !DILocation(line: 114, column: 46, scope: !226)
!229 = !DILocation(line: 114, column: 6, scope: !226)
!230 = !DILocation(line: 116, column: 10, scope: !231)
!231 = distinct !DILexicalBlock(scope: !220, file: !11, line: 115, column: 2)
!232 = !DILocation(line: 116, column: 26, scope: !231)
!233 = !DILocation(line: 116, column: 3, scope: !231)
!234 = !DILocation(line: 117, column: 3, scope: !231)
!235 = !DILocation(line: 120, column: 2, scope: !164)
!236 = !DILocation(line: 120, column: 14, scope: !237)
!237 = !DILexicalBlockFile(scope: !238, file: !11, discriminator: 1)
!238 = distinct !DILexicalBlock(scope: !239, file: !11, line: 120, column: 2)
!239 = distinct !DILexicalBlock(scope: !164, file: !11, line: 120, column: 2)
!240 = !DILocation(line: 120, column: 7, scope: !237)
!241 = !DILocation(line: 120, column: 2, scope: !237)
!242 = !DILocalVariable(name: "n", scope: !243, file: !11, line: 122, type: !4)
!243 = distinct !DILexicalBlock(scope: !238, file: !11, line: 121, column: 2)
!244 = !DILocation(line: 122, column: 9, scope: !243)
!245 = !DILocalVariable(name: "kn", scope: !243, file: !11, line: 122, type: !4)
!246 = !DILocation(line: 122, column: 20, scope: !243)
!247 = !DILocalVariable(name: "copy", scope: !243, file: !11, line: 122, type: !4)
!248 = !DILocation(line: 122, column: 32, scope: !243)
!249 = !DILocalVariable(name: "n_len", scope: !243, file: !11, line: 123, type: !6)
!250 = !DILocation(line: 123, column: 7, scope: !243)
!251 = !DILocalVariable(name: "len_after_ww", scope: !243, file: !11, line: 123, type: !6)
!252 = !DILocation(line: 123, column: 18, scope: !243)
!253 = !DILocalVariable(name: "len_before_ww", scope: !243, file: !11, line: 123, type: !6)
!254 = !DILocation(line: 123, column: 36, scope: !243)
!255 = !DILocalVariable(name: "str_len", scope: !243, file: !11, line: 124, type: !6)
!256 = !DILocation(line: 124, column: 7, scope: !243)
!257 = !DILocalVariable(name: "cur_descr_width", scope: !243, file: !11, line: 124, type: !6)
!258 = !DILocation(line: 124, column: 20, scope: !243)
!259 = !DILocation(line: 124, column: 38, scope: !243)
!260 = !DILocation(line: 124, column: 46, scope: !261)
!261 = !DILexicalBlockFile(scope: !243, file: !11, discriminator: 1)
!262 = !DILocation(line: 124, column: 54, scope: !261)
!263 = !DILocation(line: 124, column: 52, scope: !261)
!264 = !DILocation(line: 124, column: 38, scope: !261)
!265 = !DILocation(line: 124, column: 70, scope: !266)
!266 = !DILexicalBlockFile(scope: !243, file: !11, discriminator: 2)
!267 = !DILocation(line: 124, column: 38, scope: !266)
!268 = !DILocation(line: 124, column: 38, scope: !269)
!269 = !DILexicalBlockFile(scope: !243, file: !11, discriminator: 3)
!270 = !DILocation(line: 124, column: 20, scope: !269)
!271 = !DILocation(line: 126, column: 3, scope: !243)
!272 = !DILocation(line: 126, column: 10, scope: !261)
!273 = !DILocation(line: 126, column: 9, scope: !261)
!274 = !DILocation(line: 126, column: 12, scope: !261)
!275 = !DILocation(line: 126, column: 3, scope: !261)
!276 = !DILocation(line: 127, column: 5, scope: !243)
!277 = !DILocation(line: 126, column: 3, scope: !266)
!278 = distinct !{!278, !271}
!279 = !DILocation(line: 129, column: 20, scope: !243)
!280 = !DILocation(line: 129, column: 13, scope: !243)
!281 = !DILocation(line: 129, column: 11, scope: !243)
!282 = !DILocation(line: 130, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !243, file: !11, line: 130, column: 7)
!284 = !DILocation(line: 130, column: 7, scope: !243)
!285 = !DILocation(line: 131, column: 4, scope: !283)
!286 = !DILocation(line: 133, column: 21, scope: !243)
!287 = !DILocation(line: 133, column: 33, scope: !243)
!288 = !DILocation(line: 133, column: 30, scope: !243)
!289 = !DILocation(line: 133, column: 20, scope: !243)
!290 = !DILocation(line: 133, column: 53, scope: !261)
!291 = !DILocation(line: 133, column: 20, scope: !261)
!292 = !DILocation(line: 133, column: 65, scope: !266)
!293 = !DILocation(line: 133, column: 20, scope: !266)
!294 = !DILocation(line: 133, column: 20, scope: !269)
!295 = !DILocation(line: 133, column: 17, scope: !269)
!296 = !DILocation(line: 135, column: 10, scope: !243)
!297 = !DILocation(line: 135, column: 8, scope: !243)
!298 = !DILocation(line: 135, column: 5, scope: !243)
!299 = !DILocation(line: 136, column: 8, scope: !243)
!300 = !DILocation(line: 136, column: 6, scope: !243)
!301 = !DILocation(line: 138, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !243, file: !11, line: 138, column: 7)
!303 = !DILocation(line: 138, column: 17, scope: !302)
!304 = !DILocation(line: 138, column: 15, scope: !302)
!305 = !DILocation(line: 138, column: 7, scope: !243)
!306 = !DILocation(line: 140, column: 4, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !11, line: 139, column: 3)
!308 = !DILocation(line: 140, column: 12, scope: !309)
!309 = !DILexicalBlockFile(scope: !307, file: !11, discriminator: 1)
!310 = !DILocation(line: 140, column: 11, scope: !309)
!311 = !DILocation(line: 140, column: 14, scope: !309)
!312 = !DILocation(line: 140, column: 21, scope: !309)
!313 = !DILocation(line: 140, column: 24, scope: !314)
!314 = !DILexicalBlockFile(scope: !307, file: !11, discriminator: 2)
!315 = !DILocation(line: 140, column: 32, scope: !314)
!316 = !DILocation(line: 140, column: 30, scope: !314)
!317 = !DILocation(line: 140, column: 4, scope: !318)
!318 = !DILexicalBlockFile(scope: !307, file: !11, discriminator: 3)
!319 = !DILocation(line: 142, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !307, file: !11, line: 141, column: 4)
!321 = !DILocation(line: 143, column: 10, scope: !320)
!322 = !DILocation(line: 140, column: 4, scope: !323)
!323 = !DILexicalBlockFile(scope: !307, file: !11, discriminator: 4)
!324 = distinct !{!324, !306}
!325 = !DILocation(line: 146, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !307, file: !11, line: 146, column: 8)
!327 = !DILocation(line: 146, column: 17, scope: !326)
!328 = !DILocation(line: 146, column: 14, scope: !326)
!329 = !DILocation(line: 146, column: 8, scope: !307)
!330 = !DILocation(line: 147, column: 9, scope: !326)
!331 = !DILocation(line: 147, column: 7, scope: !326)
!332 = !DILocation(line: 147, column: 5, scope: !326)
!333 = !DILocation(line: 148, column: 3, scope: !307)
!334 = !DILocation(line: 150, column: 24, scope: !243)
!335 = !DILocation(line: 150, column: 28, scope: !243)
!336 = !DILocation(line: 150, column: 26, scope: !243)
!337 = !DILocation(line: 150, column: 18, scope: !243)
!338 = !DILocation(line: 150, column: 16, scope: !243)
!339 = !DILocation(line: 151, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !243, file: !11, line: 151, column: 7)
!341 = !DILocation(line: 151, column: 20, scope: !340)
!342 = !DILocation(line: 151, column: 7, scope: !243)
!343 = !DILocation(line: 152, column: 4, scope: !340)
!344 = !DILocation(line: 154, column: 25, scope: !243)
!345 = !DILocation(line: 154, column: 38, scope: !243)
!346 = !DILocation(line: 154, column: 18, scope: !243)
!347 = !DILocation(line: 154, column: 8, scope: !243)
!348 = !DILocation(line: 155, column: 10, scope: !243)
!349 = !DILocation(line: 155, column: 16, scope: !243)
!350 = !DILocation(line: 155, column: 19, scope: !243)
!351 = !DILocation(line: 155, column: 3, scope: !243)
!352 = !DILocation(line: 156, column: 8, scope: !243)
!353 = !DILocation(line: 156, column: 3, scope: !243)
!354 = !DILocation(line: 156, column: 22, scope: !243)
!355 = !DILocation(line: 158, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !243, file: !11, line: 158, column: 7)
!357 = !DILocation(line: 158, column: 7, scope: !243)
!358 = !DILocation(line: 159, column: 10, scope: !356)
!359 = !DILocation(line: 159, column: 4, scope: !356)
!360 = !DILocation(line: 161, column: 11, scope: !356)
!361 = !DILocation(line: 161, column: 27, scope: !356)
!362 = !DILocation(line: 161, column: 4, scope: !356)
!363 = !DILocation(line: 163, column: 10, scope: !243)
!364 = !DILocation(line: 163, column: 26, scope: !243)
!365 = !DILocation(line: 163, column: 3, scope: !243)
!366 = !DILocation(line: 165, column: 8, scope: !243)
!367 = !DILocation(line: 165, column: 3, scope: !243)
!368 = !DILocation(line: 167, column: 7, scope: !243)
!369 = !DILocation(line: 167, column: 5, scope: !243)
!370 = !DILocation(line: 120, column: 2, scope: !371)
!371 = !DILexicalBlockFile(scope: !238, file: !11, discriminator: 2)
!372 = distinct !{!372, !235}
!373 = !DILocation(line: 169, column: 1, scope: !164)
!374 = distinct !DISubprogram(name: "usage", scope: !11, file: !11, line: 171, type: !375, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !167}
!377 = !DILocalVariable(name: "me", arg: 1, scope: !374, file: !11, line: 171, type: !167)
!378 = !DILocation(line: 171, column: 24, scope: !374)
!379 = !DILocalVariable(name: "dummy", scope: !374, file: !11, line: 173, type: !4)
!380 = !DILocation(line: 173, column: 8, scope: !374)
!381 = !DILocalVariable(name: "has_color", scope: !374, file: !11, line: 173, type: !5)
!382 = !DILocation(line: 173, column: 21, scope: !374)
!383 = !DILocalVariable(name: "host", scope: !374, file: !11, line: 174, type: !384)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, align: 8, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 256)
!387 = !DILocation(line: 174, column: 7, scope: !374)
!388 = !DILocation(line: 177, column: 9, scope: !374)
!389 = !DILocation(line: 177, column: 17, scope: !374)
!390 = !DILocation(line: 177, column: 2, scope: !391)
!391 = !DILexicalBlockFile(scope: !374, file: !11, discriminator: 1)
!392 = !DILocation(line: 178, column: 31, scope: !374)
!393 = !DILocation(line: 178, column: 2, scope: !391)
!394 = !DILocation(line: 179, column: 36, scope: !374)
!395 = !DILocation(line: 179, column: 2, scope: !391)
!396 = !DILocation(line: 180, column: 32, scope: !374)
!397 = !DILocation(line: 180, column: 2, scope: !391)
!398 = !DILocation(line: 181, column: 30, scope: !374)
!399 = !DILocation(line: 181, column: 2, scope: !391)
!400 = !DILocation(line: 183, column: 33, scope: !374)
!401 = !DILocation(line: 183, column: 2, scope: !391)
!402 = !DILocation(line: 185, column: 9, scope: !374)
!403 = !DILocation(line: 185, column: 17, scope: !374)
!404 = !DILocation(line: 185, column: 2, scope: !391)
!405 = !DILocation(line: 188, column: 9, scope: !374)
!406 = !DILocation(line: 188, column: 17, scope: !374)
!407 = !DILocation(line: 188, column: 2, scope: !391)
!408 = !DILocation(line: 189, column: 33, scope: !374)
!409 = !DILocation(line: 189, column: 2, scope: !391)
!410 = !DILocation(line: 190, column: 25, scope: !374)
!411 = !DILocation(line: 190, column: 2, scope: !391)
!412 = !DILocation(line: 191, column: 37, scope: !374)
!413 = !DILocation(line: 191, column: 2, scope: !391)
!414 = !DILocation(line: 192, column: 41, scope: !374)
!415 = !DILocation(line: 192, column: 2, scope: !391)
!416 = !DILocation(line: 193, column: 46, scope: !374)
!417 = !DILocation(line: 193, column: 2, scope: !391)
!418 = !DILocation(line: 194, column: 25, scope: !374)
!419 = !DILocation(line: 194, column: 2, scope: !391)
!420 = !DILocation(line: 195, column: 39, scope: !374)
!421 = !DILocation(line: 195, column: 2, scope: !391)
!422 = !DILocation(line: 196, column: 9, scope: !374)
!423 = !DILocation(line: 196, column: 17, scope: !374)
!424 = !DILocation(line: 196, column: 2, scope: !391)
!425 = !DILocation(line: 199, column: 9, scope: !374)
!426 = !DILocation(line: 199, column: 17, scope: !374)
!427 = !DILocation(line: 199, column: 2, scope: !391)
!428 = !DILocation(line: 200, column: 33, scope: !374)
!429 = !DILocation(line: 200, column: 2, scope: !391)
!430 = !DILocation(line: 201, column: 36, scope: !374)
!431 = !DILocation(line: 201, column: 2, scope: !391)
!432 = !DILocation(line: 202, column: 35, scope: !374)
!433 = !DILocation(line: 202, column: 2, scope: !391)
!434 = !DILocation(line: 203, column: 49, scope: !374)
!435 = !DILocation(line: 203, column: 2, scope: !391)
!436 = !DILocation(line: 204, column: 31, scope: !374)
!437 = !DILocation(line: 204, column: 2, scope: !391)
!438 = !DILocation(line: 205, column: 9, scope: !374)
!439 = !DILocation(line: 205, column: 17, scope: !374)
!440 = !DILocation(line: 205, column: 2, scope: !391)
!441 = !DILocation(line: 208, column: 9, scope: !374)
!442 = !DILocation(line: 208, column: 17, scope: !374)
!443 = !DILocation(line: 208, column: 2, scope: !391)
!444 = !DILocation(line: 209, column: 34, scope: !374)
!445 = !DILocation(line: 209, column: 2, scope: !391)
!446 = !DILocation(line: 210, column: 39, scope: !374)
!447 = !DILocation(line: 210, column: 2, scope: !391)
!448 = !DILocation(line: 211, column: 37, scope: !374)
!449 = !DILocation(line: 211, column: 2, scope: !391)
!450 = !DILocation(line: 212, column: 39, scope: !374)
!451 = !DILocation(line: 212, column: 2, scope: !391)
!452 = !DILocation(line: 213, column: 48, scope: !374)
!453 = !DILocation(line: 213, column: 2, scope: !391)
!454 = !DILocation(line: 214, column: 38, scope: !374)
!455 = !DILocation(line: 214, column: 2, scope: !391)
!456 = !DILocation(line: 215, column: 35, scope: !374)
!457 = !DILocation(line: 215, column: 2, scope: !391)
!458 = !DILocation(line: 216, column: 31, scope: !374)
!459 = !DILocation(line: 216, column: 2, scope: !391)
!460 = !DILocation(line: 217, column: 9, scope: !374)
!461 = !DILocation(line: 217, column: 17, scope: !374)
!462 = !DILocation(line: 217, column: 2, scope: !391)
!463 = !DILocation(line: 220, column: 9, scope: !374)
!464 = !DILocation(line: 220, column: 17, scope: !374)
!465 = !DILocation(line: 220, column: 2, scope: !391)
!466 = !DILocation(line: 221, column: 32, scope: !374)
!467 = !DILocation(line: 221, column: 2, scope: !391)
!468 = !DILocation(line: 222, column: 39, scope: !374)
!469 = !DILocation(line: 222, column: 2, scope: !391)
!470 = !DILocation(line: 223, column: 36, scope: !374)
!471 = !DILocation(line: 223, column: 2, scope: !391)
!472 = !DILocation(line: 224, column: 34, scope: !374)
!473 = !DILocation(line: 224, column: 2, scope: !391)
!474 = !DILocation(line: 225, column: 38, scope: !374)
!475 = !DILocation(line: 225, column: 2, scope: !391)
!476 = !DILocation(line: 226, column: 25, scope: !374)
!477 = !DILocation(line: 226, column: 2, scope: !391)
!478 = !DILocation(line: 227, column: 35, scope: !374)
!479 = !DILocation(line: 227, column: 2, scope: !391)
!480 = !DILocation(line: 229, column: 39, scope: !374)
!481 = !DILocation(line: 229, column: 2, scope: !391)
!482 = !DILocation(line: 232, column: 33, scope: !374)
!483 = !DILocation(line: 232, column: 2, scope: !391)
!484 = !DILocation(line: 234, column: 28, scope: !374)
!485 = !DILocation(line: 234, column: 2, scope: !391)
!486 = !DILocation(line: 235, column: 9, scope: !374)
!487 = !DILocation(line: 235, column: 17, scope: !374)
!488 = !DILocation(line: 235, column: 2, scope: !391)
!489 = !DILocation(line: 238, column: 9, scope: !374)
!490 = !DILocation(line: 238, column: 17, scope: !374)
!491 = !DILocation(line: 238, column: 2, scope: !391)
!492 = !DILocation(line: 239, column: 36, scope: !374)
!493 = !DILocation(line: 239, column: 2, scope: !391)
!494 = !DILocation(line: 240, column: 36, scope: !374)
!495 = !DILocation(line: 240, column: 2, scope: !391)
!496 = !DILocation(line: 241, column: 36, scope: !374)
!497 = !DILocation(line: 241, column: 2, scope: !391)
!498 = !DILocation(line: 242, column: 27, scope: !374)
!499 = !DILocation(line: 242, column: 2, scope: !391)
!500 = !DILocation(line: 243, column: 9, scope: !374)
!501 = !DILocation(line: 243, column: 17, scope: !374)
!502 = !DILocation(line: 243, column: 2, scope: !391)
!503 = !DILocation(line: 246, column: 9, scope: !374)
!504 = !DILocation(line: 246, column: 17, scope: !374)
!505 = !DILocation(line: 246, column: 2, scope: !391)
!506 = !DILocation(line: 247, column: 42, scope: !374)
!507 = !DILocation(line: 247, column: 2, scope: !391)
!508 = !DILocation(line: 248, column: 36, scope: !374)
!509 = !DILocation(line: 248, column: 2, scope: !391)
!510 = !DILocation(line: 249, column: 38, scope: !374)
!511 = !DILocation(line: 249, column: 2, scope: !391)
!512 = !DILocation(line: 250, column: 41, scope: !374)
!513 = !DILocation(line: 250, column: 2, scope: !391)
!514 = !DILocation(line: 251, column: 39, scope: !374)
!515 = !DILocation(line: 251, column: 2, scope: !391)
!516 = !DILocation(line: 252, column: 41, scope: !374)
!517 = !DILocation(line: 252, column: 2, scope: !391)
!518 = !DILocation(line: 253, column: 44, scope: !374)
!519 = !DILocation(line: 253, column: 2, scope: !391)
!520 = !DILocation(line: 255, column: 42, scope: !374)
!521 = !DILocation(line: 255, column: 2, scope: !391)
!522 = !DILocation(line: 256, column: 32, scope: !374)
!523 = !DILocation(line: 256, column: 2, scope: !391)
!524 = !DILocation(line: 258, column: 25, scope: !374)
!525 = !DILocation(line: 258, column: 2, scope: !391)
!526 = !DILocation(line: 259, column: 9, scope: !374)
!527 = !DILocation(line: 259, column: 17, scope: !374)
!528 = !DILocation(line: 259, column: 2, scope: !391)
!529 = !DILocation(line: 262, column: 9, scope: !374)
!530 = !DILocation(line: 262, column: 17, scope: !374)
!531 = !DILocation(line: 262, column: 2, scope: !391)
!532 = !DILocation(line: 263, column: 37, scope: !374)
!533 = !DILocation(line: 263, column: 2, scope: !391)
!534 = !DILocation(line: 264, column: 45, scope: !374)
!535 = !DILocation(line: 264, column: 2, scope: !391)
!536 = !DILocation(line: 265, column: 52, scope: !374)
!537 = !DILocation(line: 265, column: 2, scope: !391)
!538 = !DILocation(line: 266, column: 38, scope: !374)
!539 = !DILocation(line: 266, column: 2, scope: !391)
!540 = !DILocation(line: 267, column: 33, scope: !374)
!541 = !DILocation(line: 267, column: 2, scope: !391)
!542 = !DILocation(line: 268, column: 9, scope: !374)
!543 = !DILocation(line: 268, column: 17, scope: !374)
!544 = !DILocation(line: 268, column: 2, scope: !391)
!545 = !DILocation(line: 271, column: 9, scope: !374)
!546 = !DILocation(line: 271, column: 17, scope: !374)
!547 = !DILocation(line: 271, column: 2, scope: !391)
!548 = !DILocation(line: 272, column: 31, scope: !374)
!549 = !DILocation(line: 272, column: 2, scope: !391)
!550 = !DILocation(line: 273, column: 42, scope: !374)
!551 = !DILocation(line: 273, column: 2, scope: !391)
!552 = !DILocation(line: 274, column: 25, scope: !374)
!553 = !DILocation(line: 274, column: 2, scope: !391)
!554 = !DILocation(line: 275, column: 51, scope: !374)
!555 = !DILocation(line: 275, column: 2, scope: !391)
!556 = !DILocation(line: 276, column: 41, scope: !374)
!557 = !DILocation(line: 276, column: 2, scope: !391)
!558 = !DILocation(line: 277, column: 67, scope: !374)
!559 = !DILocation(line: 277, column: 2, scope: !391)
!560 = !DILocation(line: 278, column: 27, scope: !374)
!561 = !DILocation(line: 278, column: 2, scope: !391)
!562 = !DILocation(line: 279, column: 45, scope: !374)
!563 = !DILocation(line: 279, column: 2, scope: !391)
!564 = !DILocation(line: 280, column: 32, scope: !374)
!565 = !DILocation(line: 280, column: 2, scope: !391)
!566 = !DILocation(line: 281, column: 38, scope: !374)
!567 = !DILocation(line: 281, column: 2, scope: !391)
!568 = !DILocation(line: 282, column: 9, scope: !374)
!569 = !DILocation(line: 282, column: 17, scope: !374)
!570 = !DILocation(line: 282, column: 2, scope: !391)
!571 = !DILocation(line: 297, column: 33, scope: !374)
!572 = !DILocation(line: 297, column: 2, scope: !391)
!573 = !DILocation(line: 298, column: 9, scope: !374)
!574 = !DILocation(line: 298, column: 17, scope: !374)
!575 = !DILocation(line: 298, column: 2, scope: !391)
!576 = !DILocation(line: 300, column: 10, scope: !374)
!577 = !DILocation(line: 300, column: 8, scope: !374)
!578 = !DILocation(line: 301, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !374, file: !11, line: 301, column: 6)
!580 = !DILocation(line: 301, column: 6, scope: !374)
!581 = !DILocation(line: 303, column: 14, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !11, line: 303, column: 7)
!583 = distinct !DILexicalBlock(scope: !579, file: !11, line: 302, column: 2)
!584 = !DILocation(line: 303, column: 7, scope: !582)
!585 = !DILocation(line: 303, column: 29, scope: !582)
!586 = !DILocation(line: 303, column: 39, scope: !587)
!587 = !DILexicalBlockFile(scope: !582, file: !11, discriminator: 1)
!588 = !DILocation(line: 303, column: 32, scope: !587)
!589 = !DILocation(line: 303, column: 55, scope: !587)
!590 = !DILocation(line: 303, column: 65, scope: !591)
!591 = !DILexicalBlockFile(scope: !582, file: !11, discriminator: 2)
!592 = !DILocation(line: 303, column: 58, scope: !591)
!593 = !DILocation(line: 303, column: 7, scope: !591)
!594 = !DILocation(line: 304, column: 14, scope: !582)
!595 = !DILocation(line: 304, column: 4, scope: !582)
!596 = !DILocation(line: 305, column: 2, scope: !583)
!597 = !DILocation(line: 307, column: 18, scope: !598)
!598 = distinct !DILexicalBlock(scope: !374, file: !11, line: 307, column: 6)
!599 = !DILocation(line: 307, column: 6, scope: !598)
!600 = !DILocation(line: 307, column: 6, scope: !374)
!601 = !DILocation(line: 308, column: 10, scope: !598)
!602 = !DILocation(line: 308, column: 3, scope: !598)
!603 = !DILocation(line: 310, column: 9, scope: !374)
!604 = !DILocation(line: 310, column: 17, scope: !374)
!605 = !DILocation(line: 310, column: 2, scope: !391)
!606 = !DILocation(line: 311, column: 9, scope: !374)
!607 = !DILocation(line: 311, column: 40, scope: !374)
!608 = !DILocation(line: 311, column: 44, scope: !374)
!609 = !DILocation(line: 311, column: 50, scope: !374)
!610 = !DILocation(line: 311, column: 2, scope: !374)
!611 = !DILocation(line: 313, column: 2, scope: !374)
!612 = !DILocation(line: 314, column: 1, scope: !374)
