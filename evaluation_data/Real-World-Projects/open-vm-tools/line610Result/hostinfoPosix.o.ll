; ModuleID = './hostinfoPosix.o.i'
source_filename = "./hostinfoPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.Atomic_uint32 = type { i32 }
%struct.DistroInfo = type { i8*, i8* }
%struct.DistroNameScan = type { i8*, i8* }
%struct.hostinfoOSVersion = type { [4 x i32], i8* }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.timespec = type { i64, i64 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.rlimit = type { i64, i64 }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%struct.vmware_sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.Dl_info = type { i8*, i8*, i8*, i8* }
%struct.DynBuf = type { i8*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@hostinfoOSVersion = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: uname failed %d\0A\00", align 1
@__FUNCTION__.HostinfoOSData = private unnamed_addr constant [15 x i8] c"HostinfoOSData\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SunOS\00", align 1
@Hostinfo_NumCPUs.count = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@Hostinfo_NameGet.state = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"LOADAVG: %.2f %.2f %.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"/proc/self/statm\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%d %d %d %d %d %d %d\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"RUSAGE size=%d resident=%d share=%d trs=%d lrs=%d drs=%d dt=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"hostinfoPosix.c\00", align 1
@Hostinfo_Daemonize.pipeFds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"%s: Couldn't open PID path [%s], error %u.\0A\00", align 1
@__FUNCTION__.Hostinfo_Daemonize = private unnamed_addr constant [19 x i8] c"Hostinfo_Daemonize\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"%s: Lock held on PID path [%s], error %u, not daemonizing.\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"%s: Couldn't create pipe, error %u.\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"%s: Couldn't allocate memory, error %u.\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"%s: Couldn't set close-on-exec for fd %d, error %u.\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"%s: Couldn't convert path [%s] to default encoding.\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"%s: Couldn't convert arguments to default encoding.\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"%s: Couldn't fork first child, error %u.\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"%s: Child %d exited with error %d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"%s: Child %d exited with signal %d.\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"%s: Child could not exec %s, read %d, error %u.\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"%s: Couldn't create new session, error %d.\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"%s: Couldn't fork second child, error %d.\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%s: Couldn't chdir to /, error %u.\0A\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"%s: Couldn't write to parent pipe: %u, original error: %u.\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"%s: Couldn't truncate path [%s], error %d.\0A\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"%s: Couldn't write PID to path [%s], error %d.\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"%s: Couldn't flush PID to path [%s], error %d.\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"%s: Couldn't exec %s, error %d.\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"cpu MHz\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"model name\00", align 1
@Hostinfo_SystemUpTime.fdStorage = internal global %struct.Atomic_uint32 { i32 -1 }, align 4
@Hostinfo_SystemUpTime.logFailedPread = internal global %struct.Atomic_uint32 { i32 1 }, align 4
@.str.41 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"HOSTINFO: Failed to open /proc/uptime: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"HOSTINFO: Failed to pread /proc/uptime: %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"HOSTINFO: Failed to retry open /proc/uptime: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"HOSTINFO: Failed to read /proc/uptime: %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"HOSTINFO: Failed to parse /proc/uptime\0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"Cached:\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"%s: invalid privilege parameter\0A\00", align 1
@__FUNCTION__.Hostinfo_GetModulePath = private unnamed_addr constant [23 x i8] c"Hostinfo_GetModulePath\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"HOSTINFO: %s: readlink failed: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"%s: unable to get host OS version (uname): %s\0A\00", align 1
@__FUNCTION__.HostinfoOSVersionInit = private unnamed_addr constant [22 x i8] c"HostinfoOSVersionInit\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"%d.%d.%d%s\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"%s: unable to parse host OS version string: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-64\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"%s: Error: buffer too small\0A\00", align 1
@__FUNCTION__.HostinfoLinux = private unnamed_addr constant [14 x i8] c"HostinfoLinux\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"/usr/bin/lsb_release -sd 2>/dev/null\00", align 1
@distroArray = internal constant [41 x %struct.DistroInfo] [%struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.95, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.98, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.108, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.110, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.111, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.122, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.126, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.128, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.131, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.133, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.135, i32 0, i32 0) }, %struct.DistroInfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.137, i32 0, i32 0) }, %struct.DistroInfo zeroinitializer], align 16
@lsbFields = internal constant [5 x %struct.DistroNameScan] [%struct.DistroNameScan { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0) }, %struct.DistroNameScan { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.147, i32 0, i32 0) }, %struct.DistroNameScan { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.149, i32 0, i32 0) }, %struct.DistroNameScan { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.151, i32 0, i32 0) }, %struct.DistroNameScan zeroinitializer], align 16
@.str.63 = private unnamed_addr constant [33 x i8] c"%s: Error: no distro file found\0A\00", align 1
@__FUNCTION__.HostinfoLsb = private unnamed_addr constant [12 x i8] c"HostinfoLsb\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"Unable to get output of command \22%s\22\0A\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Annvix\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"/etc/annvix-release\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Arch\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"/etc/arch-release\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Arklinux\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"/etc/arklinux-release\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"Aurox\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"/etc/aurox-release\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"BlackCat\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"/etc/blackcat-release\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Cobalt\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"/etc/cobalt-release\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Conectiva\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"/etc/conectiva-release\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Debian\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"/etc/debian_release\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"/etc/debian_version\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Fedora Core\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"/etc/fedora-release\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Gentoo\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"/etc/gentoo-release\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Immunix\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"/etc/immunix-release\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"Knoppix\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"/etc/knoppix_version\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"Linux-From-Scratch\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"/etc/lfs-release\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Linux-PPC\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"/etc/linuxppc-release\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"Mandrake\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"/etc/mandrakelinux-release\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"/etc/mandrake-release\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"Mandriva\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"/etc/mandriva-release\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"MkLinux\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"/etc/mklinux-release\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Novell\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"/etc/nld-release\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"OracleLinux\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"/etc/oracle-release\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Photon\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"/etc/lsb-release\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"PLD\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"/etc/pld-release\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"RedHat\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"/etc/redhat-release\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"/etc/redhat_version\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"Slackware\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"/etc/slackware-release\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"/etc/slackware-version\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"SMEServer\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"/etc/e-smith-release\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"Solaris\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"/etc/release\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"/etc/sun-release\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"SuSE\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"/etc/novell-release\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"/etc/sles-release\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"/etc/SuSE-release\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Tiny Sofa\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"/etc/tinysofa-release\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"TurboLinux\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"/etc/turbolinux-release\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"Ubuntu\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"UltraPenguin\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"/etc/ultrapenguin-release\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"UnitedLinux\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"/etc/UnitedLinux-release\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"VALinux\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"/etc/va-release\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"Yellow Dog\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"/etc/yellowdog-release\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"%s: could not stat the file %s: %d\0A\00", align 1
@__FUNCTION__.HostinfoReadDistroFile = private unnamed_addr constant [23 x i8] c"HostinfoReadDistroFile\00", align 1
@.str.139 = private unnamed_addr constant [34 x i8] c"%s: Cannot work with empty file.\0A\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"%s: input buffer too small\0A\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"%s: could not allocate memory\0A\00", align 1
@.str.142 = private unnamed_addr constant [32 x i8] c"%s: could not read file %s: %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"DISTRIB_ID=\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"DISTRIB_ID=%s\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"DISTRIB_RELEASE=\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"DISTRIB_RELEASE=%s\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"DISTRIB_CODENAME=\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"DISTRIB_CODENAME=%s\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"DISTRIB_DESCRIPTION=\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"DISTRIB_DESCRIPTION=%s\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"Other Linux\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"otherlinux\00", align 1
@.str.154 = private unnamed_addr constant [25 x i8] c"Other Linux 2.4.x kernel\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"other24xlinux\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"Other Linux 2.6.x kernel\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"other26xlinux\00", align 1
@.str.158 = private unnamed_addr constant [23 x i8] c"Other Linux 3.x kernel\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"other3xlinux\00", align 1
@.str.160 = private unnamed_addr constant [32 x i8] c"Other Linux 4.x or later kernel\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"other4xlinux\00", align 1
@.str.162 = private unnamed_addr constant [25 x i8] c"Other Linux %d.%d kernel\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"red hat\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"enterprise\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"release %d\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"rhel%d\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"rhel\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"redhat\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"opensuse\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"suse\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"server 15\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"desktop 15\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"sles15\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"server 12\00", align 1
@.str.176 = private unnamed_addr constant [31 x i8] c"server for sap applications 12\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"desktop 12\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"sles12\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"server 11\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"desktop 11\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"sles11\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"server 10\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"desktop 10\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"sles10\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"sles\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"sun\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"sjds\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"novell\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"nld9\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"mandrake\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"turbolinux\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"amazon\00", align 1
@.str.193 = private unnamed_addr constant [16 x i8] c"amazon linux %d\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"amazonlinux\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"annvix\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"arklinux\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"asianux server 3\00", align 1
@.str.200 = private unnamed_addr constant [17 x i8] c"asianux client 3\00", align 1
@.str.201 = private unnamed_addr constant [9 x i8] c"asianux3\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"asianux server 4\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c"asianux client 4\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"asianux4\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"asianux server 5\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"asianux client 5\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"asianux7\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"asianux server 7\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"asianux client 7\00", align 1
@.str.210 = private unnamed_addr constant [17 x i8] c"asianux server 8\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"asianux client 8\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"asianux8\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"aurox\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"black cat\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"cobalt\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"centos\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"6.\00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"centos6\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"7.\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"centos7\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"8.\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"centos8\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"conectiva\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"debian\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"debian4\00", align 1
@.str.227 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"debian5\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"6.0\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"debian6\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"debian7\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"debian8\00", align 1
@.str.233 = private unnamed_addr constant [3 x i8] c"9.\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"debian9\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"10.\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"debian10\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"enterprise linux\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"oracle\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"oraclelinux6\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"oraclelinux7\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"oraclelinux8\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"oraclelinux\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"fedora\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"Fedora\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"gentoo\00", align 1
@.str.246 = private unnamed_addr constant [8 x i8] c"immunix\00", align 1
@.str.247 = private unnamed_addr constant [19 x i8] c"linux-from-scratch\00", align 1
@.str.248 = private unnamed_addr constant [10 x i8] c"linux-ppc\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"mandriva\00", align 1
@.str.250 = private unnamed_addr constant [8 x i8] c"mklinux\00", align 1
@.str.251 = private unnamed_addr constant [4 x i8] c"pld\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"slackware\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"sme server\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"tiny sofa\00", align 1
@.str.255 = private unnamed_addr constant [7 x i8] c"ubuntu\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"ultra penguin\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"united linux\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"va linux\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"yellow dog\00", align 1
@.str.260 = private unnamed_addr constant [14 x i8] c"vmware photon\00", align 1
@.str.261 = private unnamed_addr constant [14 x i8] c"vmware-photon\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"/etc/os-release\00", align 1
@osReleaseFields = internal constant [2 x %struct.DistroNameScan] [%struct.DistroNameScan { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.265, i32 0, i32 0) }, %struct.DistroNameScan zeroinitializer], align 16
@.str.263 = private unnamed_addr constant [20 x i8] c"/usr/lib/os-release\00", align 1
@.str.264 = private unnamed_addr constant [13 x i8] c"PRETTY_NAME=\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"PRETTY_NAME=%s\00", align 1
@HostinfoPostData.mutex = internal global %struct.Atomic_uint32 zeroinitializer, align 4
@HostinfoOSNameCacheValid = external global i8, align 1
@HostinfoCachedOSName = external global [128 x i8], align 16
@HostinfoCachedOSFullName = external global [512 x i8], align 16
@.str.266 = private unnamed_addr constant [10 x i8] c"freeBSD12\00", align 1
@.str.267 = private unnamed_addr constant [10 x i8] c"freeBSD11\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"freeBSD\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@__FUNCTION__.HostinfoBSD = private unnamed_addr constant [12 x i8] c"HostinfoBSD\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"5.%2[0-9]\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.272 = private unnamed_addr constant [8 x i8] c"solaris\00", align 1
@__FUNCTION__.HostinfoSun = private unnamed_addr constant [12 x i8] c"HostinfoSun\00", align 1
@.str.273 = private unnamed_addr constant [44 x i8] c"HOSTINFO: %s: Unable to open /proc/cpuinfo\0A\00", align 1
@__FUNCTION__.HostinfoGetCpuInfo = private unnamed_addr constant [19 x i8] c"HostinfoGetCpuInfo\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.275 = private unnamed_addr constant [44 x i8] c"HOSTINFO: %s: Unable to open /proc/meminfo\0A\00", align 1
@__FUNCTION__.HostinfoGetMemInfo = private unnamed_addr constant [19 x i8] c"HostinfoGetMemInfo\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_OSVersionString() #0 !dbg !740 {
  %1 = alloca %struct.hostinfoOSVersion*, align 8
  call void @llvm.dbg.declare(metadata %struct.hostinfoOSVersion** %1, metadata !743, metadata !752), !dbg !753
  call void @HostinfoOSVersionInit(), !dbg !754
  %2 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @hostinfoOSVersion), !dbg !755
  %3 = bitcast i8* %2 to %struct.hostinfoOSVersion*, !dbg !755
  store %struct.hostinfoOSVersion* %3, %struct.hostinfoOSVersion** %1, align 8, !dbg !756
  %4 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !757
  %5 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %4, i32 0, i32 1, !dbg !758
  %6 = load i8*, i8** %5, align 8, !dbg !758
  ret i8* %6, !dbg !759
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @HostinfoOSVersionInit() #0 !dbg !760 {
  %1 = alloca %struct.hostinfoOSVersion*, align 8
  %2 = alloca %struct.utsname, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.hostinfoOSVersion** %1, metadata !763, metadata !752), !dbg !764
  call void @llvm.dbg.declare(metadata %struct.utsname* %2, metadata !765, metadata !752), !dbg !778
  call void @llvm.dbg.declare(metadata i8** %3, metadata !779, metadata !752), !dbg !780
  call void @llvm.dbg.declare(metadata i8** %4, metadata !781, metadata !752), !dbg !782
  %5 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @hostinfoOSVersion), !dbg !783
  %6 = icmp ne i8* %5, null, !dbg !783
  br i1 %6, label %7, label %8, !dbg !785

; <label>:7:                                      ; preds = %0
  br label %83, !dbg !786

; <label>:8:                                      ; preds = %0
  %9 = call i32 @uname(%struct.utsname* %2) #10, !dbg !788
  %10 = icmp slt i32 %9, 0, !dbg !790
  br i1 %10, label %11, label %15, !dbg !791

; <label>:11:                                     ; preds = %8
  %12 = call i32* @__errno_location() #1, !dbg !792
  %13 = load i32, i32* %12, align 4, !dbg !794
  %14 = call i8* @Err_Errno2String(i32 %13), !dbg !795
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HostinfoOSVersionInit, i32 0, i32 0), i8* %14), !dbg !797
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 266) #11, !dbg !798
  unreachable, !dbg !798

; <label>:15:                                     ; preds = %8
  %16 = call i8* @UtilSafeCalloc0(i64 1, i64 24), !dbg !799
  %17 = bitcast i8* %16 to %struct.hostinfoOSVersion*, !dbg !799
  store %struct.hostinfoOSVersion* %17, %struct.hostinfoOSVersion** %1, align 8, !dbg !800
  %18 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 2, !dbg !801
  %19 = getelementptr inbounds [65 x i8], [65 x i8]* %18, i32 0, i32 0, !dbg !802
  %20 = call i8* @UtilSafeStrndup0(i8* %19, i64 65), !dbg !803
  %21 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !804
  %22 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %21, i32 0, i32 1, !dbg !805
  store i8* %20, i8** %22, align 8, !dbg !806
  %23 = call i8* @UtilSafeCalloc0(i64 1, i64 65), !dbg !807
  store i8* %23, i8** %3, align 8, !dbg !808
  %24 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 2, !dbg !809
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* %24, i32 0, i32 0, !dbg !811
  %26 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !812
  %27 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %26, i32 0, i32 0, !dbg !813
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !812
  %29 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !814
  %30 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %29, i32 0, i32 0, !dbg !815
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 1, !dbg !814
  %32 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !816
  %33 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %32, i32 0, i32 0, !dbg !817
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 2, !dbg !816
  %35 = load i8*, i8** %3, align 8, !dbg !818
  %36 = call i32 (i8*, i8*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32* %28, i32* %31, i32* %34, i8* %35) #10, !dbg !819
  %37 = icmp slt i32 %36, 1, !dbg !820
  br i1 %37, label %38, label %41, !dbg !821

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 2, !dbg !822
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* %39, i32 0, i32 0, !dbg !824
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HostinfoOSVersionInit, i32 0, i32 0), i8* %40), !dbg !825
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 287) #11, !dbg !826
  unreachable, !dbg !826

; <label>:41:                                     ; preds = %15
  %42 = load i8*, i8** %3, align 8, !dbg !827
  store i8* %42, i8** %4, align 8, !dbg !828
  br label %43, !dbg !829

; <label>:43:                                     ; preds = %63, %41
  %44 = load i8*, i8** %4, align 8, !dbg !830
  %45 = load i8, i8* %44, align 1, !dbg !832
  %46 = sext i8 %45 to i32, !dbg !832
  %47 = icmp ne i32 %46, 0, !dbg !832
  br i1 %47, label %48, label %61, !dbg !833

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %4, align 8, !dbg !834
  %50 = load i8, i8* %49, align 1, !dbg !836
  %51 = sext i8 %50 to i32, !dbg !837
  %52 = sext i32 %51 to i64, !dbg !834
  %53 = call i16** @__ctype_b_loc() #1, !dbg !838
  %54 = load i16*, i16** %53, align 8, !dbg !839
  %55 = getelementptr inbounds i16, i16* %54, i64 %52, !dbg !834
  %56 = load i16, i16* %55, align 2, !dbg !834
  %57 = zext i16 %56 to i32, !dbg !834
  %58 = and i32 %57, 2048, !dbg !840
  %59 = icmp ne i32 %58, 0, !dbg !836
  %60 = xor i1 %59, true, !dbg !836
  br label %61

; <label>:61:                                     ; preds = %48, %43
  %62 = phi i1 [ false, %43 ], [ %60, %48 ]
  br i1 %62, label %63, label %66, !dbg !841

; <label>:63:                                     ; preds = %61
  %64 = load i8*, i8** %4, align 8, !dbg !843
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !843
  store i8* %65, i8** %4, align 8, !dbg !843
  br label %43, !dbg !845, !llvm.loop !847

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %4, align 8, !dbg !848
  %68 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !849
  %69 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %68, i32 0, i32 0, !dbg !850
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 3, !dbg !849
  %71 = call i32 (i8*, i8*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32* %70) #10, !dbg !851
  %72 = load i8*, i8** %3, align 8, !dbg !852
  call void @free(i8* %72) #10, !dbg !853
  %73 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !854
  %74 = bitcast %struct.hostinfoOSVersion* %73 to i8*, !dbg !854
  %75 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* @hostinfoOSVersion, i8* null, i8* %74), !dbg !856
  %76 = icmp ne i8* %75, null, !dbg !856
  br i1 %76, label %77, label %83, !dbg !857

; <label>:77:                                     ; preds = %66
  %78 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !858
  %79 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %78, i32 0, i32 1, !dbg !860
  %80 = load i8*, i8** %79, align 8, !dbg !860
  call void @free(i8* %80) #10, !dbg !861
  %81 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %1, align 8, !dbg !862
  %82 = bitcast %struct.hostinfoOSVersion* %81 to i8*, !dbg !862
  call void @free(i8* %82) #10, !dbg !863
  br label %83, !dbg !864

; <label>:83:                                     ; preds = %7, %77, %66
  ret void, !dbg !865
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !866 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !871, metadata !752), !dbg !872
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !873
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !874
  %5 = inttoptr i64 %4 to i8*, !dbg !875
  ret i8* %5, !dbg !876
}

; Function Attrs: nounwind uwtable
define i32 @Hostinfo_OSVersion(i32) #0 !dbg !877 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostinfoOSVersion*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !880, metadata !752), !dbg !881
  call void @llvm.dbg.declare(metadata %struct.hostinfoOSVersion** %3, metadata !882, metadata !752), !dbg !883
  call void @HostinfoOSVersionInit(), !dbg !884
  %4 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @hostinfoOSVersion), !dbg !885
  %5 = bitcast i8* %4 to %struct.hostinfoOSVersion*, !dbg !885
  store %struct.hostinfoOSVersion* %5, %struct.hostinfoOSVersion** %3, align 8, !dbg !886
  %6 = load i32, i32* %2, align 4, !dbg !887
  %7 = zext i32 %6 to i64, !dbg !887
  %8 = icmp ult i64 %7, 4, !dbg !888
  br i1 %8, label %9, label %16, !dbg !889

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !890
  %11 = zext i32 %10 to i64, !dbg !891
  %12 = load %struct.hostinfoOSVersion*, %struct.hostinfoOSVersion** %3, align 8, !dbg !891
  %13 = getelementptr inbounds %struct.hostinfoOSVersion, %struct.hostinfoOSVersion* %12, i32 0, i32 0, !dbg !892
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %11, !dbg !891
  %15 = load i32, i32* %14, align 4, !dbg !891
  br label %17, !dbg !893

; <label>:16:                                     ; preds = %1
  br label %17, !dbg !895

; <label>:17:                                     ; preds = %16, %9
  %18 = phi i32 [ %15, %9 ], [ 0, %16 ], !dbg !897
  ret i32 %18, !dbg !899
}

; Function Attrs: nounwind uwtable
define void @Hostinfo_GetTimeOfDay(i64*) #0 !dbg !900 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.timeval, align 8
  store i64* %0, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !904, metadata !752), !dbg !905
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !906, metadata !752), !dbg !914
  %4 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #10, !dbg !915
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !916
  %6 = load i64, i64* %5, align 8, !dbg !916
  %7 = mul nsw i64 %6, 1000000, !dbg !917
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !918
  %9 = load i64, i64* %8, align 8, !dbg !918
  %10 = add nsw i64 %7, %9, !dbg !919
  %11 = load i64*, i64** %2, align 8, !dbg !920
  store i64 %10, i64* %11, align 8, !dbg !921
  ret void, !dbg !922
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define i32 @Hostinfo_GetSystemBitness() #0 !dbg !923 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 1
  call void @llvm.dbg.declare(metadata %struct.utsname* %2, metadata !926, metadata !752), !dbg !927
  %3 = call i32 @uname(%struct.utsname* %2) #10, !dbg !928
  %4 = icmp slt i32 %3, 0, !dbg !930
  br i1 %4, label %5, label %6, !dbg !931

; <label>:5:                                      ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !932
  br label %13, !dbg !932

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 4, !dbg !934
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i32 0, i32 0, !dbg !936
  %9 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #12, !dbg !937
  %10 = icmp ne i8* %9, null, !dbg !937
  br i1 %10, label %11, label %12, !dbg !938

; <label>:11:                                     ; preds = %6
  store i32 64, i32* %1, align 4, !dbg !939
  br label %13, !dbg !939

; <label>:12:                                     ; preds = %6
  store i32 32, i32* %1, align 4, !dbg !941
  br label %13, !dbg !941

; <label>:13:                                     ; preds = %12, %11, %5
  %14 = load i32, i32* %1, align 4, !dbg !943
  ret i32 %14, !dbg !943
}

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define signext i8 @HostinfoOSData() #0 !dbg !944 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !948, metadata !752), !dbg !949
  call void @llvm.dbg.declare(metadata %struct.utsname* %3, metadata !950, metadata !752), !dbg !951
  %4 = call i32 @uname(%struct.utsname* %3) #10, !dbg !952
  %5 = icmp slt i32 %4, 0, !dbg !954
  br i1 %5, label %6, label %9, !dbg !955

; <label>:6:                                      ; preds = %0
  %7 = call i32* @__errno_location() #1, !dbg !956
  %8 = load i32, i32* %7, align 4, !dbg !958
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.HostinfoOSData, i32 0, i32 0), i32 %8), !dbg !959
  store i8 0, i8* %1, align 1, !dbg !961
  br label %35, !dbg !961

; <label>:9:                                      ; preds = %0
  %10 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i32 0, i32 0, !dbg !962
  %11 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !964
  %12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #12, !dbg !965
  %13 = icmp ne i8* %12, null, !dbg !965
  br i1 %13, label %14, label %16, !dbg !966

; <label>:14:                                     ; preds = %9
  %15 = call signext i8 @HostinfoLinux(%struct.utsname* %3), !dbg !967
  store i8 %15, i8* %2, align 1, !dbg !969
  br label %33, !dbg !970

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i32 0, i32 0, !dbg !971
  %18 = getelementptr inbounds [65 x i8], [65 x i8]* %17, i32 0, i32 0, !dbg !974
  %19 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !975
  %20 = icmp ne i8* %19, null, !dbg !975
  br i1 %20, label %21, label %23, !dbg !975

; <label>:21:                                     ; preds = %16
  %22 = call signext i8 @HostinfoBSD(%struct.utsname* %3), !dbg !976
  store i8 %22, i8* %2, align 1, !dbg !978
  br label %32, !dbg !979

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i32 0, i32 0, !dbg !980
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* %24, i32 0, i32 0, !dbg !983
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #12, !dbg !984
  %27 = icmp ne i8* %26, null, !dbg !984
  br i1 %27, label %28, label %30, !dbg !984

; <label>:28:                                     ; preds = %23
  %29 = call signext i8 @HostinfoSun(%struct.utsname* %3), !dbg !985
  store i8 %29, i8* %2, align 1, !dbg !987
  br label %31, !dbg !988

; <label>:30:                                     ; preds = %23
  store i8 0, i8* %2, align 1, !dbg !989
  br label %31

; <label>:31:                                     ; preds = %30, %28
  br label %32

; <label>:32:                                     ; preds = %31, %21
  br label %33

; <label>:33:                                     ; preds = %32, %14
  %34 = load i8, i8* %2, align 1, !dbg !991
  store i8 %34, i8* %1, align 1, !dbg !992
  br label %35, !dbg !992

; <label>:35:                                     ; preds = %33, %6
  %36 = load i8, i8* %1, align 1, !dbg !993
  ret i8 %36, !dbg !993
}

declare void @Warning(i8*, ...) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoLinux(%struct.utsname*) #0 !dbg !994 {
  %2 = alloca %struct.utsname*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca [512 x i8], align 16
  store %struct.utsname* %0, %struct.utsname** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.utsname** %2, metadata !998, metadata !752), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1000, metadata !752), !dbg !1001
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1002, metadata !752), !dbg !1006
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1007, metadata !752), !dbg !1008
  call void @llvm.dbg.declare(metadata [128 x i8]* %6, metadata !1009, metadata !752), !dbg !1013
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !1014, metadata !752), !dbg !1018
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !1019
  %9 = call signext i8 @HostinfoLsb(i8* %8, i64 1024), !dbg !1021
  %10 = icmp ne i8 %9, 0, !dbg !1021
  br i1 %10, label %11, label %15, !dbg !1022

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1023
  call void @HostinfoDefaultLinux(i8* null, i64 0, i8* %12, i64 1024), !dbg !1025
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !1026
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1027
  call void @HostinfoGetOSShortName(i8* %13, i8* %14, i32 1024), !dbg !1028
  br label %26, !dbg !1029

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !1030
  %17 = call signext i8 @HostinfoOsRelease(i8* %16, i64 1024), !dbg !1032
  %18 = icmp ne i8 %17, 0, !dbg !1032
  br i1 %18, label %19, label %23, !dbg !1033

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1034
  call void @HostinfoDefaultLinux(i8* null, i64 0, i8* %20, i64 1024), !dbg !1036
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !1037
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1038
  call void @HostinfoGetOSShortName(i8* %21, i8* %22, i32 1024), !dbg !1039
  br label %26, !dbg !1040

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !1041
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1042
  call void @HostinfoDefaultLinux(i8* %24, i64 1024, i8* %25, i64 1024), !dbg !1043
  br label %26, !dbg !1043

; <label>:26:                                     ; preds = %23, %19, %11
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1044
  %28 = load %struct.utsname*, %struct.utsname** %2, align 8, !dbg !1045
  %29 = getelementptr inbounds %struct.utsname, %struct.utsname* %28, i32 0, i32 0, !dbg !1046
  %30 = getelementptr inbounds [65 x i8], [65 x i8]* %29, i32 0, i32 0, !dbg !1045
  %31 = load %struct.utsname*, %struct.utsname** %2, align 8, !dbg !1047
  %32 = getelementptr inbounds %struct.utsname, %struct.utsname* %31, i32 0, i32 2, !dbg !1048
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* %32, i32 0, i32 0, !dbg !1047
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !1049
  %35 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %27, i64 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* %30, i8* %33, i8* %34), !dbg !1050
  store i32 %35, i32* %3, align 4, !dbg !1051
  %36 = load i32, i32* %3, align 4, !dbg !1052
  %37 = icmp ne i32 %36, -1, !dbg !1054
  br i1 %37, label %38, label %50, !dbg !1055

; <label>:38:                                     ; preds = %26
  %39 = call i32 @Hostinfo_GetSystemBitness(), !dbg !1056
  %40 = icmp eq i32 %39, 64, !dbg !1059
  br i1 %40, label %41, label %45, !dbg !1060

; <label>:41:                                     ; preds = %38
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !1061
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1063
  %44 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %42, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)), !dbg !1064
  store i32 %44, i32* %3, align 4, !dbg !1065
  br label %49, !dbg !1066

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !1067
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1069
  %48 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %46, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* %47), !dbg !1070
  store i32 %48, i32* %3, align 4, !dbg !1071
  br label %49

; <label>:49:                                     ; preds = %45, %41
  br label %50, !dbg !1072

; <label>:50:                                     ; preds = %49, %26
  %51 = load i32, i32* %3, align 4, !dbg !1073
  %52 = icmp eq i32 %51, -1, !dbg !1075
  br i1 %52, label %53, label %54, !dbg !1076

; <label>:53:                                     ; preds = %50
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.HostinfoLinux, i32 0, i32 0)), !dbg !1077
  br label %57, !dbg !1079

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !1080
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1082
  call void @HostinfoPostData(i8* %55, i8* %56), !dbg !1083
  br label %57

; <label>:57:                                     ; preds = %54, %53
  %58 = load i32, i32* %3, align 4, !dbg !1084
  %59 = icmp ne i32 %58, -1, !dbg !1085
  %60 = zext i1 %59 to i32, !dbg !1085
  %61 = trunc i32 %60 to i8, !dbg !1086
  ret i8 %61, !dbg !1087
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoBSD(%struct.utsname*) #0 !dbg !1088 {
  %2 = alloca %struct.utsname*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca [512 x i8], align 16
  store %struct.utsname* %0, %struct.utsname** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.utsname** %2, metadata !1089, metadata !752), !dbg !1090
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1091, metadata !752), !dbg !1092
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1093, metadata !752), !dbg !1094
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1095, metadata !752), !dbg !1096
  call void @llvm.dbg.declare(metadata [128 x i8]* %6, metadata !1097, metadata !752), !dbg !1098
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !1099, metadata !752), !dbg !1100
  %8 = call i32 @Hostinfo_OSVersion(i32 0), !dbg !1101
  store i32 %8, i32* %4, align 4, !dbg !1102
  %9 = load i32, i32* %4, align 4, !dbg !1103
  %10 = icmp sge i32 %9, 11, !dbg !1105
  br i1 %10, label %11, label %21, !dbg !1106

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %4, align 4, !dbg !1107
  %13 = icmp sge i32 %12, 12, !dbg !1110
  br i1 %13, label %14, label %17, !dbg !1111

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1112
  %16 = call i8* @Str_Strcpy(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.266, i32 0, i32 0), i64 1024), !dbg !1114
  br label %20, !dbg !1115

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1116
  %19 = call i8* @Str_Strcpy(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.267, i32 0, i32 0), i64 1024), !dbg !1118
  br label %20

; <label>:20:                                     ; preds = %17, %14
  br label %24, !dbg !1119

; <label>:21:                                     ; preds = %1
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1120
  %23 = call i8* @Str_Strcpy(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.268, i32 0, i32 0), i64 1024), !dbg !1122
  br label %24

; <label>:24:                                     ; preds = %21, %20
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1123
  %26 = load %struct.utsname*, %struct.utsname** %2, align 8, !dbg !1124
  %27 = getelementptr inbounds %struct.utsname, %struct.utsname* %26, i32 0, i32 0, !dbg !1125
  %28 = getelementptr inbounds [65 x i8], [65 x i8]* %27, i32 0, i32 0, !dbg !1124
  %29 = load %struct.utsname*, %struct.utsname** %2, align 8, !dbg !1126
  %30 = getelementptr inbounds %struct.utsname, %struct.utsname* %29, i32 0, i32 2, !dbg !1127
  %31 = getelementptr inbounds [65 x i8], [65 x i8]* %30, i32 0, i32 0, !dbg !1126
  %32 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %25, i64 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0), i8* %28, i8* %31), !dbg !1128
  store i32 %32, i32* %3, align 4, !dbg !1129
  %33 = load i32, i32* %3, align 4, !dbg !1130
  %34 = icmp ne i32 %33, -1, !dbg !1132
  br i1 %34, label %35, label %47, !dbg !1133

; <label>:35:                                     ; preds = %24
  %36 = call i32 @Hostinfo_GetSystemBitness(), !dbg !1134
  %37 = icmp eq i32 %36, 64, !dbg !1137
  br i1 %37, label %38, label %42, !dbg !1138

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !1139
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1141
  %41 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %39, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)), !dbg !1142
  store i32 %41, i32* %3, align 4, !dbg !1143
  br label %46, !dbg !1144

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !1145
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1147
  %45 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %43, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* %44), !dbg !1148
  store i32 %45, i32* %3, align 4, !dbg !1149
  br label %46

; <label>:46:                                     ; preds = %42, %38
  br label %47, !dbg !1150

; <label>:47:                                     ; preds = %46, %24
  %48 = load i32, i32* %3, align 4, !dbg !1151
  %49 = icmp eq i32 %48, -1, !dbg !1153
  br i1 %49, label %50, label %51, !dbg !1154

; <label>:50:                                     ; preds = %47
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.HostinfoBSD, i32 0, i32 0)), !dbg !1155
  br label %54, !dbg !1157

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i32 0, i32 0, !dbg !1158
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1160
  call void @HostinfoPostData(i8* %52, i8* %53), !dbg !1161
  br label %54

; <label>:54:                                     ; preds = %51, %50
  %55 = load i32, i32* %3, align 4, !dbg !1162
  %56 = icmp ne i32 %55, -1, !dbg !1163
  %57 = zext i1 %56 to i32, !dbg !1163
  %58 = trunc i32 %57 to i8, !dbg !1164
  ret i8 %58, !dbg !1165
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoSun(%struct.utsname*) #0 !dbg !1166 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.utsname*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [3 x i8], align 1
  store %struct.utsname* %0, %struct.utsname** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.utsname** %3, metadata !1167, metadata !752), !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1169, metadata !752), !dbg !1170
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !1171, metadata !752), !dbg !1172
  call void @llvm.dbg.declare(metadata [512 x i8]* %6, metadata !1173, metadata !752), !dbg !1174
  call void @llvm.dbg.declare(metadata [3 x i8]* %7, metadata !1175, metadata !752), !dbg !1177
  %8 = bitcast [3 x i8]* %7 to i8*, !dbg !1177
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 3, i32 1, i1 false), !dbg !1177
  %9 = load %struct.utsname*, %struct.utsname** %3, align 8, !dbg !1178
  %10 = getelementptr inbounds %struct.utsname, %struct.utsname* %9, i32 0, i32 2, !dbg !1180
  %11 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !1178
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !1181
  %13 = call i32 (i8*, i8*, ...) @sscanf(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.270, i32 0, i32 0), i8* %12) #10, !dbg !1182
  %14 = icmp ne i32 %13, 1, !dbg !1183
  br i1 %14, label %15, label %16, !dbg !1184

; <label>:15:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !1185
  br label %51, !dbg !1185

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1187
  %18 = load %struct.utsname*, %struct.utsname** %3, align 8, !dbg !1188
  %19 = getelementptr inbounds %struct.utsname, %struct.utsname* %18, i32 0, i32 0, !dbg !1189
  %20 = getelementptr inbounds [65 x i8], [65 x i8]* %19, i32 0, i32 0, !dbg !1188
  %21 = load %struct.utsname*, %struct.utsname** %3, align 8, !dbg !1190
  %22 = getelementptr inbounds %struct.utsname, %struct.utsname* %21, i32 0, i32 2, !dbg !1191
  %23 = getelementptr inbounds [65 x i8], [65 x i8]* %22, i32 0, i32 0, !dbg !1190
  %24 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %17, i64 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0), i8* %20, i8* %23), !dbg !1192
  store i32 %24, i32* %4, align 4, !dbg !1193
  %25 = load i32, i32* %4, align 4, !dbg !1194
  %26 = icmp ne i32 %25, -1, !dbg !1196
  br i1 %26, label %27, label %39, !dbg !1197

; <label>:27:                                     ; preds = %16
  %28 = call i32 @Hostinfo_GetSystemBitness(), !dbg !1198
  %29 = icmp eq i32 %28, 64, !dbg !1201
  br i1 %29, label %30, label %34, !dbg !1202

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !1203
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !1205
  %33 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %31, i64 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.272, i32 0, i32 0), i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)), !dbg !1206
  store i32 %33, i32* %4, align 4, !dbg !1207
  br label %38, !dbg !1208

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !1209
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !1211
  %37 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %35, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.272, i32 0, i32 0), i8* %36), !dbg !1212
  store i32 %37, i32* %4, align 4, !dbg !1213
  br label %38

; <label>:38:                                     ; preds = %34, %30
  br label %39, !dbg !1214

; <label>:39:                                     ; preds = %38, %16
  %40 = load i32, i32* %4, align 4, !dbg !1215
  %41 = icmp eq i32 %40, -1, !dbg !1217
  br i1 %41, label %42, label %43, !dbg !1218

; <label>:42:                                     ; preds = %39
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.HostinfoSun, i32 0, i32 0)), !dbg !1219
  br label %46, !dbg !1221

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i32 0, i32 0, !dbg !1222
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !1224
  call void @HostinfoPostData(i8* %44, i8* %45), !dbg !1225
  br label %46

; <label>:46:                                     ; preds = %43, %42
  %47 = load i32, i32* %4, align 4, !dbg !1226
  %48 = icmp ne i32 %47, -1, !dbg !1227
  %49 = zext i1 %48 to i32, !dbg !1227
  %50 = trunc i32 %49 to i8, !dbg !1228
  store i8 %50, i8* %2, align 1, !dbg !1229
  br label %51, !dbg !1229

; <label>:51:                                     ; preds = %46, %15
  %52 = load i8, i8* %2, align 1, !dbg !1230
  ret i8 %52, !dbg !1230
}

; Function Attrs: nounwind uwtable
define i32 @Hostinfo_NumCPUs() #0 !dbg !678 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @Hostinfo_NumCPUs.count, align 4, !dbg !1231
  %5 = icmp sle i32 %4, 0, !dbg !1233
  br i1 %5, label %6, label %32, !dbg !1234

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1235, metadata !752), !dbg !1291
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1292, metadata !752), !dbg !1293
  %7 = call %struct._IO_FILE* @Posix_Fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !1294
  store %struct._IO_FILE* %7, %struct._IO_FILE** %2, align 8, !dbg !1295
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1296
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1298
  br i1 %9, label %10, label %11, !dbg !1299

; <label>:10:                                     ; preds = %6
  store i32 -1, i32* %1, align 4, !dbg !1300
  br label %34, !dbg !1300

; <label>:11:                                     ; preds = %6
  br label %12, !dbg !1302

; <label>:12:                                     ; preds = %23, %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1303
  %14 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %13, i8** %3, i64 0, i64* null), !dbg !1305
  %15 = icmp eq i32 %14, 2, !dbg !1306
  br i1 %15, label %16, label %25, !dbg !1307

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %3, align 8, !dbg !1308
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 9) #12, !dbg !1311
  %19 = icmp eq i32 %18, 0, !dbg !1312
  br i1 %19, label %20, label %23, !dbg !1313

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* @Hostinfo_NumCPUs.count, align 4, !dbg !1314
  %22 = add nsw i32 %21, 1, !dbg !1314
  store i32 %22, i32* @Hostinfo_NumCPUs.count, align 4, !dbg !1314
  br label %23, !dbg !1316

; <label>:23:                                     ; preds = %20, %16
  %24 = load i8*, i8** %3, align 8, !dbg !1317
  call void @free(i8* %24) #10, !dbg !1318
  br label %12, !dbg !1319, !llvm.loop !1321

; <label>:25:                                     ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1322
  %27 = call i32 @fclose(%struct._IO_FILE* %26), !dbg !1323
  %28 = load i32, i32* @Hostinfo_NumCPUs.count, align 4, !dbg !1324
  %29 = icmp eq i32 %28, 0, !dbg !1326
  br i1 %29, label %30, label %31, !dbg !1327

; <label>:30:                                     ; preds = %25
  store i32 -1, i32* %1, align 4, !dbg !1328
  br label %34, !dbg !1328

; <label>:31:                                     ; preds = %25
  br label %32, !dbg !1330

; <label>:32:                                     ; preds = %31, %0
  %33 = load i32, i32* @Hostinfo_NumCPUs.count, align 4, !dbg !1331
  store i32 %33, i32* %1, align 4, !dbg !1332
  br label %34, !dbg !1332

; <label>:34:                                     ; preds = %32, %30, %10
  %35 = load i32, i32* %1, align 4, !dbg !1333
  ret i32 %35, !dbg !1333
}

declare %struct._IO_FILE* @Posix_Fopen(i8*, i8*) #5

declare i32 @StdIO_ReadNextLine(%struct._IO_FILE*, i8**, i64, i64*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_NameGet() #0 !dbg !684 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1334, metadata !752), !dbg !1335
  %3 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @Hostinfo_NameGet.state), !dbg !1336
  store i8* %3, i8** %1, align 8, !dbg !1337
  %4 = load i8*, i8** %1, align 8, !dbg !1338
  %5 = icmp eq i8* %4, null, !dbg !1340
  %6 = zext i1 %5 to i32, !dbg !1340
  %7 = sext i32 %6 to i64, !dbg !1341
  %8 = icmp ne i64 %7, 0, !dbg !1342
  br i1 %8, label %9, label %19, !dbg !1343

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1344, metadata !752), !dbg !1346
  %10 = call i8* @Hostinfo_HostName(), !dbg !1347
  store i8* %10, i8** %1, align 8, !dbg !1348
  %11 = load i8*, i8** %1, align 8, !dbg !1349
  %12 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* @Hostinfo_NameGet.state, i8* null, i8* %11), !dbg !1350
  store i8* %12, i8** %2, align 8, !dbg !1351
  %13 = load i8*, i8** %2, align 8, !dbg !1352
  %14 = icmp ne i8* %13, null, !dbg !1352
  br i1 %14, label %15, label %18, !dbg !1354

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %1, align 8, !dbg !1355
  call void @free(i8* %16) #10, !dbg !1357
  %17 = load i8*, i8** %2, align 8, !dbg !1358
  store i8* %17, i8** %1, align 8, !dbg !1359
  br label %18, !dbg !1360

; <label>:18:                                     ; preds = %15, %9
  br label %19, !dbg !1361

; <label>:19:                                     ; preds = %18, %0
  %20 = load i8*, i8** %1, align 8, !dbg !1362
  ret i8* %20, !dbg !1363
}

declare i8* @Hostinfo_HostName() #5

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !1364 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1370, metadata !752), !dbg !1371
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1372, metadata !752), !dbg !1373
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1374, metadata !752), !dbg !1375
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1376
  %8 = load i8*, i8** %5, align 8, !dbg !1377
  %9 = ptrtoint i8* %8 to i64, !dbg !1378
  %10 = load i8*, i8** %6, align 8, !dbg !1379
  %11 = ptrtoint i8* %10 to i64, !dbg !1380
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !1381
  %13 = inttoptr i64 %12 to i8*, !dbg !1382
  ret i8* %13, !dbg !1383
}

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_GetUser() #0 !dbg !1384 {
  %1 = alloca [8192 x i8], align 16
  %2 = alloca %struct.passwd, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [8192 x i8]* %1, metadata !1385, metadata !752), !dbg !1389
  call void @llvm.dbg.declare(metadata %struct.passwd* %2, metadata !1390, metadata !752), !dbg !1402
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !1403, metadata !752), !dbg !1405
  store %struct.passwd* %2, %struct.passwd** %3, align 8, !dbg !1405
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1406, metadata !752), !dbg !1407
  store i8* null, i8** %4, align 8, !dbg !1407
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1408, metadata !752), !dbg !1409
  store i8* null, i8** %5, align 8, !dbg !1409
  %6 = call i32 @getuid() #10, !dbg !1410
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i32 0, i32 0, !dbg !1412
  %8 = call i32 @Posix_Getpwuid_r(i32 %6, %struct.passwd* %2, i8* %7, i64 8192, %struct.passwd** %3), !dbg !1413
  %9 = icmp eq i32 %8, 0, !dbg !1415
  br i1 %9, label %10, label %24, !dbg !1416

; <label>:10:                                     ; preds = %0
  %11 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1417
  %12 = icmp ne %struct.passwd* %11, null, !dbg !1418
  br i1 %12, label %13, label %24, !dbg !1419

; <label>:13:                                     ; preds = %10
  %14 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1421
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 0, !dbg !1424
  %16 = load i8*, i8** %15, align 8, !dbg !1424
  %17 = icmp ne i8* %16, null, !dbg !1421
  br i1 %17, label %18, label %23, !dbg !1425

; <label>:18:                                     ; preds = %13
  %19 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1426
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 0, !dbg !1428
  %21 = load i8*, i8** %20, align 8, !dbg !1428
  %22 = call i8* @Unicode_Duplicate(i8* %21), !dbg !1429
  store i8* %22, i8** %5, align 8, !dbg !1430
  br label %23, !dbg !1431

; <label>:23:                                     ; preds = %18, %13
  br label %24, !dbg !1432

; <label>:24:                                     ; preds = %23, %10, %0
  %25 = load i8*, i8** %5, align 8, !dbg !1433
  %26 = icmp ne i8* %25, null, !dbg !1433
  br i1 %26, label %35, label %27, !dbg !1435

; <label>:27:                                     ; preds = %24
  %28 = call i8* @Posix_Getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1436
  store i8* %28, i8** %4, align 8, !dbg !1438
  %29 = load i8*, i8** %4, align 8, !dbg !1439
  %30 = icmp ne i8* %29, null, !dbg !1439
  br i1 %30, label %31, label %34, !dbg !1441

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !1442
  %33 = call i8* @Unicode_Duplicate(i8* %32), !dbg !1444
  store i8* %33, i8** %5, align 8, !dbg !1445
  br label %34, !dbg !1446

; <label>:34:                                     ; preds = %31, %27
  br label %35, !dbg !1447

; <label>:35:                                     ; preds = %34, %24
  %36 = load i8*, i8** %5, align 8, !dbg !1448
  ret i8* %36, !dbg !1449
}

declare i32 @Posix_Getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #5

; Function Attrs: nounwind
declare i32 @getuid() #3

declare i8* @Unicode_Duplicate(i8*) #5

declare i8* @Posix_Getenv(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @Hostinfo_GetLoadAverage(i32*) #0 !dbg !1450 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1454, metadata !752), !dbg !1455
  call void @llvm.dbg.declare(metadata float* %4, metadata !1456, metadata !752), !dbg !1457
  store float 0.000000e+00, float* %4, align 4, !dbg !1457
  %5 = call signext i8 @HostinfoGetLoadAverage(float* %4, float* null, float* null), !dbg !1458
  %6 = icmp ne i8 %5, 0, !dbg !1458
  br i1 %6, label %8, label %7, !dbg !1460

; <label>:7:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !1461
  br label %13, !dbg !1461

; <label>:8:                                      ; preds = %1
  %9 = load float, float* %4, align 4, !dbg !1463
  %10 = fmul float 1.000000e+02, %9, !dbg !1464
  %11 = fptoui float %10 to i32, !dbg !1465
  %12 = load i32*, i32** %3, align 8, !dbg !1466
  store i32 %11, i32* %12, align 4, !dbg !1467
  store i8 1, i8* %2, align 1, !dbg !1468
  br label %13, !dbg !1468

; <label>:13:                                     ; preds = %8, %7
  %14 = load i8, i8* %2, align 1, !dbg !1469
  ret i8 %14, !dbg !1469
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoGetLoadAverage(float*, float*, float*) #0 !dbg !1470 {
  %4 = alloca i8, align 1
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !1474, metadata !752), !dbg !1475
  store float* %1, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !1476, metadata !752), !dbg !1477
  store float* %2, float** %7, align 8
  call void @llvm.dbg.declare(metadata float** %7, metadata !1478, metadata !752), !dbg !1479
  call void @llvm.dbg.declare(metadata [3 x double]* %8, metadata !1480, metadata !752), !dbg !1483
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1484, metadata !752), !dbg !1485
  %10 = getelementptr inbounds [3 x double], [3 x double]* %8, i32 0, i32 0, !dbg !1486
  %11 = call i32 @getloadavg(double* %10, i32 3) #10, !dbg !1487
  store i32 %11, i32* %9, align 4, !dbg !1488
  %12 = load i32, i32* %9, align 4, !dbg !1489
  %13 = icmp slt i32 %12, 3, !dbg !1491
  br i1 %13, label %14, label %15, !dbg !1492

; <label>:14:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !1493
  br label %40, !dbg !1493

; <label>:15:                                     ; preds = %3
  %16 = load float*, float** %5, align 8, !dbg !1495
  %17 = icmp ne float* %16, null, !dbg !1495
  br i1 %17, label %18, label %23, !dbg !1497

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !1498
  %20 = load double, double* %19, align 16, !dbg !1498
  %21 = fptrunc double %20 to float, !dbg !1500
  %22 = load float*, float** %5, align 8, !dbg !1501
  store float %21, float* %22, align 4, !dbg !1502
  br label %23, !dbg !1503

; <label>:23:                                     ; preds = %18, %15
  %24 = load float*, float** %6, align 8, !dbg !1504
  %25 = icmp ne float* %24, null, !dbg !1504
  br i1 %25, label %26, label %31, !dbg !1506

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1, !dbg !1507
  %28 = load double, double* %27, align 8, !dbg !1507
  %29 = fptrunc double %28 to float, !dbg !1509
  %30 = load float*, float** %6, align 8, !dbg !1510
  store float %29, float* %30, align 4, !dbg !1511
  br label %31, !dbg !1512

; <label>:31:                                     ; preds = %26, %23
  %32 = load float*, float** %7, align 8, !dbg !1513
  %33 = icmp ne float* %32, null, !dbg !1513
  br i1 %33, label %34, label %39, !dbg !1515

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2, !dbg !1516
  %36 = load double, double* %35, align 16, !dbg !1516
  %37 = fptrunc double %36 to float, !dbg !1518
  %38 = load float*, float** %7, align 8, !dbg !1519
  store float %37, float* %38, align 4, !dbg !1520
  br label %39, !dbg !1521

; <label>:39:                                     ; preds = %34, %31
  store i8 1, i8* %4, align 1, !dbg !1522
  br label %40, !dbg !1522

; <label>:40:                                     ; preds = %39, %14
  %41 = load i8, i8* %4, align 1, !dbg !1523
  ret i8 %41, !dbg !1523
}

; Function Attrs: nounwind uwtable
define void @Hostinfo_LogLoadAverage() #0 !dbg !1524 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.dbg.declare(metadata float* %1, metadata !1525, metadata !752), !dbg !1526
  store float 0.000000e+00, float* %1, align 4, !dbg !1526
  call void @llvm.dbg.declare(metadata float* %2, metadata !1527, metadata !752), !dbg !1528
  store float 0.000000e+00, float* %2, align 4, !dbg !1528
  call void @llvm.dbg.declare(metadata float* %3, metadata !1529, metadata !752), !dbg !1530
  store float 0.000000e+00, float* %3, align 4, !dbg !1530
  %4 = call signext i8 @HostinfoGetLoadAverage(float* %1, float* %2, float* %3), !dbg !1531
  %5 = icmp ne i8 %4, 0, !dbg !1531
  br i1 %5, label %6, label %13, !dbg !1533

; <label>:6:                                      ; preds = %0
  %7 = load float, float* %1, align 4, !dbg !1534
  %8 = fpext float %7 to double, !dbg !1534
  %9 = load float, float* %2, align 4, !dbg !1536
  %10 = fpext float %9 to double, !dbg !1536
  %11 = load float, float* %3, align 4, !dbg !1537
  %12 = fpext float %11 to double, !dbg !1537
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), double %8, double %10, double %12), !dbg !1538
  br label %13, !dbg !1539

; <label>:13:                                     ; preds = %6, %0
  ret void, !dbg !1540
}

declare void @Log(i8*, ...) #5

; Function Attrs: nounwind uwtable
define i64 @Hostinfo_SystemTimerNS() #0 !dbg !1541 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.timespec* %1, metadata !1542, metadata !752), !dbg !1549
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1550, metadata !752), !dbg !1551
  %3 = call i32 @clock_gettime(i32 1, %struct.timespec* %1) #10, !dbg !1552
  store i32 %3, i32* %2, align 4, !dbg !1553
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0, !dbg !1554
  %5 = load i64, i64* %4, align 8, !dbg !1554
  %6 = mul nsw i64 %5, 1000, !dbg !1555
  %7 = mul nsw i64 %6, 1000, !dbg !1556
  %8 = mul nsw i64 %7, 1000, !dbg !1557
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1, !dbg !1558
  %10 = load i64, i64* %9, align 8, !dbg !1558
  %11 = add nsw i64 %8, %10, !dbg !1559
  ret i64 %11, !dbg !1560
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #3

; Function Attrs: nounwind uwtable
define void @Hostinfo_LogMemUsage() #0 !dbg !1561 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [7 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1562, metadata !752), !dbg !1563
  %5 = call i32 (i8*, i32, ...) @Posix_Open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !1564
  store i32 %5, i32* %1, align 4, !dbg !1563
  %6 = load i32, i32* %1, align 4, !dbg !1565
  %7 = icmp ne i32 %6, -1, !dbg !1567
  br i1 %7, label %8, label %50, !dbg !1568

; <label>:8:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1569, metadata !752), !dbg !1571
  call void @llvm.dbg.declare(metadata [64 x i8]* %3, metadata !1572, metadata !752), !dbg !1576
  %9 = load i32, i32* %1, align 4, !dbg !1577
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !1578
  %11 = call i64 @read(i32 %9, i8* %10, i64 64), !dbg !1579
  store i64 %11, i64* %2, align 8, !dbg !1580
  %12 = load i32, i32* %1, align 4, !dbg !1581
  %13 = call i32 @close(i32 %12), !dbg !1582
  %14 = load i64, i64* %2, align 8, !dbg !1583
  %15 = icmp ne i64 %14, -1, !dbg !1585
  br i1 %15, label %16, label %49, !dbg !1586

; <label>:16:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata [7 x i32]* %4, metadata !1587, metadata !752), !dbg !1592
  %17 = bitcast [7 x i32]* %4 to i8*, !dbg !1592
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 28, i32 16, i1 false), !dbg !1592
  %18 = load i64, i64* %2, align 8, !dbg !1593
  %19 = icmp ult i64 %18, 64, !dbg !1594
  br i1 %19, label %20, label %22, !dbg !1593

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %2, align 8, !dbg !1595
  br label %23, !dbg !1597

; <label>:22:                                     ; preds = %16
  br label %23, !dbg !1598

; <label>:23:                                     ; preds = %22, %20
  %24 = phi i64 [ %21, %20 ], [ 63, %22 ], !dbg !1600
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 %24, !dbg !1602
  store i8 0, i8* %25, align 1, !dbg !1603
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0, !dbg !1604
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0, !dbg !1605
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 1, !dbg !1606
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 2, !dbg !1607
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 3, !dbg !1608
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 4, !dbg !1609
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 5, !dbg !1610
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 6, !dbg !1611
  %34 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33) #10, !dbg !1612
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0, !dbg !1613
  %36 = load i32, i32* %35, align 16, !dbg !1613
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 1, !dbg !1614
  %38 = load i32, i32* %37, align 4, !dbg !1614
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 2, !dbg !1615
  %40 = load i32, i32* %39, align 8, !dbg !1615
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 3, !dbg !1616
  %42 = load i32, i32* %41, align 4, !dbg !1616
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 4, !dbg !1617
  %44 = load i32, i32* %43, align 16, !dbg !1617
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 5, !dbg !1618
  %46 = load i32, i32* %45, align 4, !dbg !1618
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 6, !dbg !1619
  %48 = load i32, i32* %47, align 8, !dbg !1619
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i32 0, i32 0), i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48), !dbg !1620
  br label %49, !dbg !1621

; <label>:49:                                     ; preds = %23, %8
  br label %50, !dbg !1622

; <label>:50:                                     ; preds = %49, %0
  ret void, !dbg !1623
}

declare i32 @Posix_Open(i8*, i32, ...) #5

declare i64 @read(i32, i8*, i64) #5

declare i32 @close(i32) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @Hostinfo_ResetProcessState(i32*, i64) #0 !dbg !1624 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca %struct.rlimit, align 8
  %9 = alloca %struct.itimerval, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1629, metadata !752), !dbg !1630
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1631, metadata !752), !dbg !1632
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1633, metadata !752), !dbg !1634
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1635, metadata !752), !dbg !1636
  call void @llvm.dbg.declare(metadata %struct.sigaction* %7, metadata !1637, metadata !752), !dbg !1731
  call void @llvm.dbg.declare(metadata %struct.rlimit* %8, metadata !1732, metadata !752), !dbg !1739
  call void @llvm.dbg.declare(metadata %struct.itimerval* %9, metadata !1740, metadata !752), !dbg !1745
  %13 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 1, !dbg !1746
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1, !dbg !1747
  store i64 0, i64* %14, align 8, !dbg !1748
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 1, !dbg !1749
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0, !dbg !1750
  store i64 0, i64* %16, align 8, !dbg !1751
  %17 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 0, !dbg !1752
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1, !dbg !1753
  store i64 0, i64* %18, align 8, !dbg !1754
  %19 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 0, !dbg !1755
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0, !dbg !1756
  store i64 0, i64* %20, align 8, !dbg !1757
  %21 = call i32 @setitimer(i32 0, %struct.itimerval* %9, %struct.itimerval* null) #10, !dbg !1758
  %22 = call i32 @setitimer(i32 1, %struct.itimerval* %9, %struct.itimerval* null) #10, !dbg !1759
  %23 = call i32 @setitimer(i32 2, %struct.itimerval* %9, %struct.itimerval* null) #10, !dbg !1760
  store i32 1, i32* %5, align 4, !dbg !1761
  br label %24, !dbg !1763

; <label>:24:                                     ; preds = %35, %2
  %25 = load i32, i32* %5, align 4, !dbg !1764
  %26 = icmp sle i32 %25, 65, !dbg !1767
  br i1 %26, label %27, label %38, !dbg !1768

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0, !dbg !1769
  %29 = bitcast %union.anon* %28 to void (i32)**, !dbg !1771
  store void (i32)* null, void (i32)** %29, align 8, !dbg !1772
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1, !dbg !1773
  %31 = call i32 @sigfillset(%struct.__sigset_t* %30) #10, !dbg !1774
  %32 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2, !dbg !1775
  store i32 268435456, i32* %32, align 8, !dbg !1776
  %33 = load i32, i32* %5, align 4, !dbg !1777
  %34 = call i32 @sigaction(i32 %33, %struct.sigaction* %7, %struct.sigaction* null) #10, !dbg !1778
  br label %35, !dbg !1779

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %5, align 4, !dbg !1780
  %37 = add nsw i32 %36, 1, !dbg !1780
  store i32 %37, i32* %5, align 4, !dbg !1780
  br label %24, !dbg !1782, !llvm.loop !1783

; <label>:38:                                     ; preds = %24
  %39 = call i64 @sysconf(i32 4) #10, !dbg !1785
  %40 = trunc i64 %39 to i32, !dbg !1787
  %41 = sub nsw i32 %40, 1, !dbg !1788
  store i32 %41, i32* %6, align 4, !dbg !1789
  br label %42, !dbg !1790

; <label>:42:                                     ; preds = %70, %38
  %43 = load i32, i32* %6, align 4, !dbg !1791
  %44 = icmp sgt i32 %43, 2, !dbg !1794
  br i1 %44, label %45, label %73, !dbg !1795

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1796, metadata !752), !dbg !1798
  store i64 0, i64* %10, align 8, !dbg !1799
  br label %46, !dbg !1801

; <label>:46:                                     ; preds = %59, %45
  %47 = load i64, i64* %10, align 8, !dbg !1802
  %48 = load i64, i64* %4, align 8, !dbg !1805
  %49 = icmp ult i64 %47, %48, !dbg !1806
  br i1 %49, label %50, label %62, !dbg !1807

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %6, align 4, !dbg !1808
  %52 = load i64, i64* %10, align 8, !dbg !1811
  %53 = load i32*, i32** %3, align 8, !dbg !1812
  %54 = getelementptr inbounds i32, i32* %53, i64 %52, !dbg !1812
  %55 = load i32, i32* %54, align 4, !dbg !1812
  %56 = icmp eq i32 %51, %55, !dbg !1813
  br i1 %56, label %57, label %58, !dbg !1814

; <label>:57:                                     ; preds = %50
  br label %62, !dbg !1815

; <label>:58:                                     ; preds = %50
  br label %59, !dbg !1817

; <label>:59:                                     ; preds = %58
  %60 = load i64, i64* %10, align 8, !dbg !1818
  %61 = add i64 %60, 1, !dbg !1818
  store i64 %61, i64* %10, align 8, !dbg !1818
  br label %46, !dbg !1820, !llvm.loop !1821

; <label>:62:                                     ; preds = %57, %46
  %63 = load i64, i64* %10, align 8, !dbg !1823
  %64 = load i64, i64* %4, align 8, !dbg !1825
  %65 = icmp eq i64 %63, %64, !dbg !1826
  br i1 %65, label %66, label %69, !dbg !1827

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %6, align 4, !dbg !1828
  %68 = call i32 @close(i32 %67), !dbg !1830
  br label %69, !dbg !1831

; <label>:69:                                     ; preds = %66, %62
  br label %70, !dbg !1832

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %6, align 4, !dbg !1833
  %72 = add nsw i32 %71, -1, !dbg !1833
  store i32 %72, i32* %6, align 4, !dbg !1833
  br label %42, !dbg !1835, !llvm.loop !1836

; <label>:73:                                     ; preds = %42
  %74 = call i32 @getrlimit64(i32 9, %struct.rlimit* %8) #10, !dbg !1838
  %75 = icmp eq i32 %74, 0, !dbg !1840
  br i1 %75, label %76, label %81, !dbg !1841

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1, !dbg !1842
  %78 = load i64, i64* %77, align 8, !dbg !1842
  %79 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0, !dbg !1844
  store i64 %78, i64* %79, align 8, !dbg !1845
  %80 = call i32 @setrlimit64(i32 9, %struct.rlimit* %8) #10, !dbg !1846
  br label %81, !dbg !1847

; <label>:81:                                     ; preds = %76, %73
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1848, metadata !752), !dbg !1851
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1852, metadata !752), !dbg !1853
  %82 = call i32 @geteuid() #10, !dbg !1854
  store i32 %82, i32* %12, align 4, !dbg !1855
  %83 = call i32 @Id_SetEUid(i32 0), !dbg !1856
  %84 = call i32 @iopl(i32 0) #10, !dbg !1857
  store i32 %84, i32* %11, align 4, !dbg !1858
  %85 = load i32, i32* %12, align 4, !dbg !1859
  %86 = call i32 @Id_SetEUid(i32 %85), !dbg !1860
  %87 = load i32, i32* %11, align 4, !dbg !1861
  %88 = icmp eq i32 %87, 0, !dbg !1864
  %89 = xor i1 %88, true, !dbg !1865
  %90 = zext i1 %89 to i32, !dbg !1865
  %91 = sext i32 %90 to i64, !dbg !1866
  %92 = icmp ne i64 %91, 0, !dbg !1867
  br i1 %92, label %93, label %94, !dbg !1868

; <label>:93:                                     ; preds = %81
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 2158) #11, !dbg !1869
  unreachable, !dbg !1869

; <label>:94:                                     ; preds = %81
  ret void, !dbg !1872
}

; Function Attrs: nounwind
declare i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #3

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

; Function Attrs: nounwind
declare i64 @sysconf(i32) #3

; Function Attrs: nounwind
declare i32 @getrlimit64(i32, %struct.rlimit*) #3

; Function Attrs: nounwind
declare i32 @setrlimit64(i32, %struct.rlimit*) #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Id_SetEUid(i32) #2 !dbg !1873 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1877, metadata !752), !dbg !1878
  %3 = load i32, i32* %2, align 4, !dbg !1879
  %4 = call i32 @Id_SetRESUid(i32 -1, i32 %3, i32 -1), !dbg !1880
  ret i32 %4, !dbg !1881
}

; Function Attrs: nounwind
declare i32 @iopl(i32) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #8

; Function Attrs: nounwind uwtable
define signext i8 @Hostinfo_Daemonize(i8*, i8**, i32, i8*, i32*, i64) #0 !dbg !1882 {
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.__sigset_t, align 8
  %23 = alloca i32, align 4
  %24 = alloca %union.anon.8, align 4
  %25 = alloca %union.anon.9, align 4
  %26 = alloca %union.anon.10, align 4
  %27 = alloca %union.anon.11, align 4
  %28 = alloca %union.anon.12, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca [32 x i8], align 16
  %34 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1888, metadata !752), !dbg !1889
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1890, metadata !752), !dbg !1891
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1892, metadata !752), !dbg !1893
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1894, metadata !752), !dbg !1895
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !1896, metadata !752), !dbg !1897
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1898, metadata !752), !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1900, metadata !752), !dbg !1901
  store i32 -1, i32* %14, align 4, !dbg !1901
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1902, metadata !752), !dbg !1903
  call void @llvm.dbg.declare(metadata [2 x i32]* %16, metadata !1904, metadata !752), !dbg !1906
  %35 = bitcast [2 x i32]* %16 to i8*, !dbg !1906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([2 x i32]* @Hostinfo_Daemonize.pipeFds to i8*), i64 8, i32 4, i1 false), !dbg !1906
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1907, metadata !752), !dbg !1908
  store i32 22, i32* %17, align 4, !dbg !1908
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1909, metadata !752), !dbg !1910
  store i8* null, i8** %18, align 8, !dbg !1910
  call void @llvm.dbg.declare(metadata i8*** %19, metadata !1911, metadata !752), !dbg !1913
  store i8** null, i8*** %19, align 8, !dbg !1913
  call void @llvm.dbg.declare(metadata i32** %20, metadata !1914, metadata !752), !dbg !1916
  store i32* null, i32** %20, align 8, !dbg !1916
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1917, metadata !752), !dbg !1918
  %36 = load i64, i64* %13, align 8, !dbg !1919
  %37 = add i64 %36, 1, !dbg !1920
  store i64 %37, i64* %21, align 8, !dbg !1918
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %22, metadata !1921, metadata !752), !dbg !1924
  br label %38, !dbg !1925, !llvm.loop !1926

; <label>:38:                                     ; preds = %6
  br label %39, !dbg !1927

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %11, align 8, !dbg !1930
  %41 = icmp ne i8* %40, null, !dbg !1930
  br i1 %41, label %42, label %74, !dbg !1932

; <label>:42:                                     ; preds = %39
  %43 = load i8*, i8** %11, align 8, !dbg !1933
  %44 = call i32 (i8*, i32, ...) @Posix_Open(i8* %43, i32 65, i32 420), !dbg !1935
  store i32 %44, i32* %14, align 4, !dbg !1936
  %45 = load i32, i32* %14, align 4, !dbg !1937
  %46 = icmp eq i32 %45, -1, !dbg !1939
  br i1 %46, label %47, label %54, !dbg !1940

; <label>:47:                                     ; preds = %42
  %48 = call i32* @__errno_location() #1, !dbg !1941
  %49 = load i32, i32* %48, align 4, !dbg !1943
  store i32 %49, i32* %17, align 4, !dbg !1944
  %50 = load i8*, i8** %11, align 8, !dbg !1945
  %51 = load i32, i32* %17, align 4, !dbg !1946
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %50, i32 %51), !dbg !1947
  %52 = load i32, i32* %17, align 4, !dbg !1948
  %53 = call i32* @__errno_location() #1, !dbg !1949
  store i32 %52, i32* %53, align 4, !dbg !1950
  store i8 0, i8* %7, align 1, !dbg !1951
  br label %456, !dbg !1951

; <label>:54:                                     ; preds = %42
  %55 = load i32, i32* %10, align 4, !dbg !1952
  %56 = and i32 %55, 8, !dbg !1954
  %57 = icmp ne i32 %56, 0, !dbg !1954
  br i1 %57, label %58, label %71, !dbg !1955

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %14, align 4, !dbg !1956
  %60 = call i32 @flock(i32 %59, i32 6) #10, !dbg !1957
  %61 = icmp eq i32 %60, -1, !dbg !1958
  br i1 %61, label %62, label %71, !dbg !1959

; <label>:62:                                     ; preds = %58
  %63 = call i32* @__errno_location() #1, !dbg !1961
  %64 = load i32, i32* %63, align 4, !dbg !1963
  store i32 %64, i32* %17, align 4, !dbg !1964
  %65 = load i8*, i8** %11, align 8, !dbg !1965
  %66 = load i32, i32* %17, align 4, !dbg !1966
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %65, i32 %66), !dbg !1967
  %67 = load i32, i32* %17, align 4, !dbg !1968
  %68 = call i32* @__errno_location() #1, !dbg !1969
  store i32 %67, i32* %68, align 4, !dbg !1970
  %69 = load i32, i32* %14, align 4, !dbg !1971
  %70 = call i32 @close(i32 %69), !dbg !1972
  store i8 0, i8* %7, align 1, !dbg !1973
  br label %456, !dbg !1973

; <label>:71:                                     ; preds = %58, %54
  %72 = load i64, i64* %21, align 8, !dbg !1974
  %73 = add i64 %72, 1, !dbg !1974
  store i64 %73, i64* %21, align 8, !dbg !1974
  br label %74, !dbg !1975

; <label>:74:                                     ; preds = %71, %39
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i32 0, i32 0, !dbg !1976
  %76 = call i32 @pipe(i32* %75) #10, !dbg !1978
  %77 = icmp eq i32 %76, -1, !dbg !1979
  br i1 %77, label %78, label %84, !dbg !1980

; <label>:78:                                     ; preds = %74
  %79 = call i32* @__errno_location() #1, !dbg !1981
  %80 = load i32, i32* %79, align 4, !dbg !1983
  store i32 %80, i32* %17, align 4, !dbg !1984
  %81 = load i32, i32* %17, align 4, !dbg !1985
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %81), !dbg !1986
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !1987
  store i32 -1, i32* %82, align 4, !dbg !1988
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0, !dbg !1989
  store i32 -1, i32* %83, align 4, !dbg !1990
  br label %407, !dbg !1991

; <label>:84:                                     ; preds = %74
  %85 = load i64, i64* %21, align 8, !dbg !1992
  %86 = mul i64 4, %85, !dbg !1993
  %87 = call noalias i8* @malloc(i64 %86) #10, !dbg !1994
  %88 = bitcast i8* %87 to i32*, !dbg !1994
  store i32* %88, i32** %20, align 8, !dbg !1995
  %89 = load i32*, i32** %20, align 8, !dbg !1996
  %90 = icmp ne i32* %89, null, !dbg !1996
  br i1 %90, label %95, label %91, !dbg !1998

; <label>:91:                                     ; preds = %84
  %92 = call i32* @__errno_location() #1, !dbg !1999
  %93 = load i32, i32* %92, align 4, !dbg !2001
  store i32 %93, i32* %17, align 4, !dbg !2002
  %94 = load i32, i32* %17, align 4, !dbg !2003
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %94), !dbg !2004
  br label %407, !dbg !2005

; <label>:95:                                     ; preds = %84
  %96 = load i32*, i32** %12, align 8, !dbg !2006
  %97 = icmp ne i32* %96, null, !dbg !2006
  br i1 %97, label %98, label %105, !dbg !2008

; <label>:98:                                     ; preds = %95
  %99 = load i32*, i32** %20, align 8, !dbg !2009
  %100 = bitcast i32* %99 to i8*, !dbg !2011
  %101 = load i32*, i32** %12, align 8, !dbg !2012
  %102 = bitcast i32* %101 to i8*, !dbg !2011
  %103 = load i64, i64* %13, align 8, !dbg !2013
  %104 = mul i64 4, %103, !dbg !2014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %102, i64 %104, i32 4, i1 false), !dbg !2011
  br label %105, !dbg !2015

; <label>:105:                                    ; preds = %98, %95
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2016
  %107 = load i32, i32* %106, align 4, !dbg !2016
  %108 = load i64, i64* %13, align 8, !dbg !2017
  %109 = add i64 %108, 1, !dbg !2017
  store i64 %109, i64* %13, align 8, !dbg !2017
  %110 = load i32*, i32** %20, align 8, !dbg !2018
  %111 = getelementptr inbounds i32, i32* %110, i64 %108, !dbg !2018
  store i32 %107, i32* %111, align 4, !dbg !2019
  %112 = load i8*, i8** %11, align 8, !dbg !2020
  %113 = icmp ne i8* %112, null, !dbg !2020
  br i1 %113, label %114, label %120, !dbg !2022

; <label>:114:                                    ; preds = %105
  %115 = load i32, i32* %14, align 4, !dbg !2023
  %116 = load i64, i64* %13, align 8, !dbg !2025
  %117 = add i64 %116, 1, !dbg !2025
  store i64 %117, i64* %13, align 8, !dbg !2025
  %118 = load i32*, i32** %20, align 8, !dbg !2026
  %119 = getelementptr inbounds i32, i32* %118, i64 %116, !dbg !2026
  store i32 %115, i32* %119, align 4, !dbg !2027
  br label %120, !dbg !2028

; <label>:120:                                    ; preds = %114, %105
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2029
  %122 = load i32, i32* %121, align 4, !dbg !2029
  %123 = call i32 (i32, i32, ...) @fcntl(i32 %122, i32 2, i32 1), !dbg !2031
  %124 = icmp eq i32 %123, -1, !dbg !2032
  br i1 %124, label %125, label %131, !dbg !2033

; <label>:125:                                    ; preds = %120
  %126 = call i32* @__errno_location() #1, !dbg !2034
  %127 = load i32, i32* %126, align 4, !dbg !2036
  store i32 %127, i32* %17, align 4, !dbg !2037
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2038
  %129 = load i32, i32* %128, align 4, !dbg !2038
  %130 = load i32, i32* %17, align 4, !dbg !2039
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %129, i32 %130), !dbg !2040
  br label %407, !dbg !2041

; <label>:131:                                    ; preds = %120
  %132 = load i8*, i8** %8, align 8, !dbg !2042
  %133 = call i8* @Unicode_GetAllocBytes(i8* %132, i32 -1), !dbg !2043
  store i8* %133, i8** %18, align 8, !dbg !2044
  %134 = load i8*, i8** %18, align 8, !dbg !2045
  %135 = icmp ne i8* %134, null, !dbg !2045
  br i1 %135, label %138, label %136, !dbg !2047

; <label>:136:                                    ; preds = %131
  %137 = load i8*, i8** %8, align 8, !dbg !2048
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %137), !dbg !2050
  br label %407, !dbg !2051

; <label>:138:                                    ; preds = %131
  %139 = load i8**, i8*** %9, align 8, !dbg !2052
  %140 = call i8** @Unicode_GetAllocList(i8** %139, i64 -1, i32 -1), !dbg !2053
  store i8** %140, i8*** %19, align 8, !dbg !2054
  %141 = load i8**, i8*** %19, align 8, !dbg !2055
  %142 = icmp ne i8** %141, null, !dbg !2055
  br i1 %142, label %144, label %143, !dbg !2057

; <label>:143:                                    ; preds = %138
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0)), !dbg !2058
  br label %407, !dbg !2060

; <label>:144:                                    ; preds = %138
  %145 = call i32 @fork() #10, !dbg !2061
  store i32 %145, i32* %15, align 4, !dbg !2062
  %146 = load i32, i32* %15, align 4, !dbg !2063
  switch i32 %146, label %152 [
    i32 -1, label %147
    i32 0, label %151
  ], !dbg !2064

; <label>:147:                                    ; preds = %144
  %148 = call i32* @__errno_location() #1, !dbg !2065
  %149 = load i32, i32* %148, align 4, !dbg !2067
  store i32 %149, i32* %17, align 4, !dbg !2068
  %150 = load i32, i32* %17, align 4, !dbg !2069
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %150), !dbg !2070
  br label %407, !dbg !2071

; <label>:151:                                    ; preds = %144
  br label %223, !dbg !2072

; <label>:152:                                    ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2073, metadata !752), !dbg !2075
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2076
  %154 = load i32, i32* %153, align 4, !dbg !2076
  %155 = call i32 @close(i32 %154), !dbg !2077
  %156 = load i32, i32* %15, align 4, !dbg !2078
  %157 = call i32 @waitpid(i32 %156, i32* %23, i32 0), !dbg !2079
  %158 = bitcast %union.anon.8* %24 to i32*, !dbg !2080
  %159 = load i32, i32* %23, align 4, !dbg !2082
  store i32 %159, i32* %158, align 4, !dbg !2080
  %160 = bitcast %union.anon.8* %24 to i32*, !dbg !2083
  %161 = load i32, i32* %160, align 4, !dbg !2083
  %162 = and i32 %161, 127, !dbg !2084
  %163 = icmp eq i32 %162, 0, !dbg !2080
  br i1 %163, label %164, label %180, !dbg !2085

; <label>:164:                                    ; preds = %152
  %165 = bitcast %union.anon.9* %25 to i32*, !dbg !2086
  %166 = load i32, i32* %23, align 4, !dbg !2088
  store i32 %166, i32* %165, align 4, !dbg !2086
  %167 = bitcast %union.anon.9* %25 to i32*, !dbg !2089
  %168 = load i32, i32* %167, align 4, !dbg !2089
  %169 = and i32 %168, 65280, !dbg !2090
  %170 = ashr i32 %169, 8, !dbg !2091
  %171 = icmp ne i32 %170, 0, !dbg !2086
  br i1 %171, label %172, label %180, !dbg !2092

; <label>:172:                                    ; preds = %164
  %173 = load i32, i32* %15, align 4, !dbg !2093
  %174 = bitcast %union.anon.10* %26 to i32*, !dbg !2095
  %175 = load i32, i32* %23, align 4, !dbg !2096
  store i32 %175, i32* %174, align 4, !dbg !2095
  %176 = bitcast %union.anon.10* %26 to i32*, !dbg !2097
  %177 = load i32, i32* %176, align 4, !dbg !2097
  %178 = and i32 %177, 65280, !dbg !2098
  %179 = ashr i32 %178, 8, !dbg !2099
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %173, i32 %179), !dbg !2100
  br label %407, !dbg !2101

; <label>:180:                                    ; preds = %164, %152
  %181 = bitcast %union.anon.11* %27 to i32*, !dbg !2102
  %182 = load i32, i32* %23, align 4, !dbg !2104
  store i32 %182, i32* %181, align 4, !dbg !2102
  %183 = bitcast %union.anon.11* %27 to i32*, !dbg !2105
  %184 = load i32, i32* %183, align 4, !dbg !2105
  %185 = and i32 %184, 127, !dbg !2106
  %186 = add nsw i32 %185, 1, !dbg !2102
  %187 = trunc i32 %186 to i8, !dbg !2107
  %188 = sext i8 %187 to i32, !dbg !2107
  %189 = ashr i32 %188, 1, !dbg !2108
  %190 = icmp sgt i32 %189, 0, !dbg !2109
  br i1 %190, label %191, label %198, !dbg !2110

; <label>:191:                                    ; preds = %180
  %192 = load i32, i32* %15, align 4, !dbg !2111
  %193 = bitcast %union.anon.12* %28 to i32*, !dbg !2113
  %194 = load i32, i32* %23, align 4, !dbg !2114
  store i32 %194, i32* %193, align 4, !dbg !2113
  %195 = bitcast %union.anon.12* %28 to i32*, !dbg !2115
  %196 = load i32, i32* %195, align 4, !dbg !2115
  %197 = and i32 %196, 127, !dbg !2116
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %192, i32 %197), !dbg !2117
  br label %407, !dbg !2118

; <label>:198:                                    ; preds = %180
  br label %199

; <label>:199:                                    ; preds = %198
  br label %200, !dbg !2119

; <label>:200:                                    ; preds = %199, %219
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2120, metadata !752), !dbg !2122
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0, !dbg !2123
  %202 = load i32, i32* %201, align 4, !dbg !2123
  %203 = bitcast i32* %17 to i8*, !dbg !2124
  %204 = call i64 @read(i32 %202, i8* %203, i64 4), !dbg !2125
  %205 = trunc i64 %204 to i32, !dbg !2125
  store i32 %205, i32* %29, align 4, !dbg !2122
  %206 = load i32, i32* %29, align 4, !dbg !2126
  %207 = icmp sgt i32 %206, 0, !dbg !2128
  br i1 %207, label %208, label %212, !dbg !2129

; <label>:208:                                    ; preds = %200
  %209 = load i8*, i8** %8, align 8, !dbg !2130
  %210 = load i32, i32* %29, align 4, !dbg !2132
  %211 = load i32, i32* %17, align 4, !dbg !2133
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %209, i32 %210, i32 %211), !dbg !2134
  br label %407, !dbg !2135

; <label>:212:                                    ; preds = %200
  %213 = load i32, i32* %29, align 4, !dbg !2136
  %214 = icmp eq i32 %213, -1, !dbg !2138
  br i1 %214, label %215, label %220, !dbg !2139

; <label>:215:                                    ; preds = %212
  %216 = call i32* @__errno_location() #1, !dbg !2140
  %217 = load i32, i32* %216, align 4, !dbg !2142
  %218 = icmp eq i32 %217, 4, !dbg !2143
  br i1 %218, label %219, label %220, !dbg !2144

; <label>:219:                                    ; preds = %215
  br label %200, !dbg !2145, !llvm.loop !2147

; <label>:220:                                    ; preds = %215, %212
  br label %221

; <label>:221:                                    ; preds = %220
  br label %222, !dbg !2148

; <label>:222:                                    ; preds = %221
  store i32 0, i32* %17, align 4, !dbg !2149
  br label %407, !dbg !2150

; <label>:223:                                    ; preds = %151
  %224 = load i32*, i32** %20, align 8, !dbg !2151
  %225 = load i64, i64* %13, align 8, !dbg !2152
  call void @Hostinfo_ResetProcessState(i32* %224, i64 %225), !dbg !2153
  %226 = load i32*, i32** %20, align 8, !dbg !2154
  %227 = bitcast i32* %226 to i8*, !dbg !2154
  call void @free(i8* %227) #10, !dbg !2155
  store i32* null, i32** %20, align 8, !dbg !2156
  %228 = call i32 @sigfillset(%struct.__sigset_t* %22) #10, !dbg !2157
  %229 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* %22, %struct.__sigset_t* null) #10, !dbg !2158
  %230 = load i32, i32* %10, align 4, !dbg !2159
  %231 = and i32 %230, 2, !dbg !2161
  %232 = icmp ne i32 %231, 0, !dbg !2161
  br i1 %232, label %239, label %233, !dbg !2162

; <label>:233:                                    ; preds = %223
  %234 = call i32 @setsid() #10, !dbg !2163
  %235 = icmp eq i32 %234, -1, !dbg !2165
  br i1 %235, label %236, label %239, !dbg !2166

; <label>:236:                                    ; preds = %233
  %237 = call i32* @__errno_location() #1, !dbg !2167
  %238 = load i32, i32* %237, align 4, !dbg !2169
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %238), !dbg !2170
  call void @_exit(i32 1) #11, !dbg !2171
  unreachable, !dbg !2171

; <label>:239:                                    ; preds = %233, %223
  %240 = call i32 @fork() #10, !dbg !2172
  switch i32 %240, label %245 [
    i32 -1, label %241
    i32 0, label %244
  ], !dbg !2173

; <label>:241:                                    ; preds = %239
  %242 = call i32* @__errno_location() #1, !dbg !2174
  %243 = load i32, i32* %242, align 4, !dbg !2177
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %243), !dbg !2178
  call void @_exit(i32 1) #11, !dbg !2179
  unreachable, !dbg !2179

; <label>:244:                                    ; preds = %239
  br label %246, !dbg !2180

; <label>:245:                                    ; preds = %239
  call void @_exit(i32 0) #11, !dbg !2181
  unreachable, !dbg !2181

; <label>:246:                                    ; preds = %244
  %247 = load i32, i32* %10, align 4, !dbg !2182
  %248 = and i32 %247, 1, !dbg !2184
  %249 = icmp ne i32 %248, 0, !dbg !2184
  br i1 %249, label %267, label %250, !dbg !2185

; <label>:250:                                    ; preds = %246
  %251 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !2186
  %252 = icmp eq i32 %251, -1, !dbg !2188
  br i1 %252, label %253, label %267, !dbg !2189

; <label>:253:                                    ; preds = %250
  call void @llvm.dbg.declare(metadata i32* %30, metadata !2190, metadata !752), !dbg !2192
  %254 = call i32* @__errno_location() #1, !dbg !2193
  %255 = load i32, i32* %254, align 4, !dbg !2194
  store i32 %255, i32* %30, align 4, !dbg !2192
  %256 = load i32, i32* %30, align 4, !dbg !2195
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %256), !dbg !2196
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2197
  %258 = load i32, i32* %257, align 4, !dbg !2197
  %259 = bitcast i32* %30 to i8*, !dbg !2199
  %260 = call i64 @write(i32 %258, i8* %259, i64 4), !dbg !2200
  %261 = icmp eq i64 %260, -1, !dbg !2201
  br i1 %261, label %262, label %266, !dbg !2202

; <label>:262:                                    ; preds = %253
  %263 = call i32* @__errno_location() #1, !dbg !2203
  %264 = load i32, i32* %263, align 4, !dbg !2205
  %265 = load i32, i32* %30, align 4, !dbg !2206
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %264, i32 %265), !dbg !2207
  br label %266, !dbg !2208

; <label>:266:                                    ; preds = %262, %253
  call void @_exit(i32 1) #11, !dbg !2209
  unreachable, !dbg !2209

; <label>:267:                                    ; preds = %250, %246
  %268 = load i32, i32* %10, align 4, !dbg !2210
  %269 = and i32 %268, 2, !dbg !2212
  %270 = icmp ne i32 %269, 0, !dbg !2212
  br i1 %270, label %292, label %271, !dbg !2213

; <label>:271:                                    ; preds = %267
  call void @llvm.dbg.declare(metadata i32* %31, metadata !2214, metadata !752), !dbg !2216
  %272 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 0), !dbg !2217
  store i32 %272, i32* %31, align 4, !dbg !2218
  %273 = load i32, i32* %31, align 4, !dbg !2219
  %274 = icmp ne i32 %273, -1, !dbg !2221
  br i1 %274, label %275, label %280, !dbg !2222

; <label>:275:                                    ; preds = %271
  %276 = load i32, i32* %31, align 4, !dbg !2223
  %277 = call i32 @dup2(i32 %276, i32 0) #10, !dbg !2225
  %278 = load i32, i32* %31, align 4, !dbg !2226
  %279 = call i32 @close(i32 %278), !dbg !2227
  br label %280, !dbg !2228

; <label>:280:                                    ; preds = %275, %271
  %281 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 1), !dbg !2229
  store i32 %281, i32* %31, align 4, !dbg !2230
  %282 = load i32, i32* %31, align 4, !dbg !2231
  %283 = icmp ne i32 %282, -1, !dbg !2233
  br i1 %283, label %284, label %291, !dbg !2234

; <label>:284:                                    ; preds = %280
  %285 = load i32, i32* %31, align 4, !dbg !2235
  %286 = call i32 @dup2(i32 %285, i32 1) #10, !dbg !2237
  %287 = load i32, i32* %31, align 4, !dbg !2238
  %288 = call i32 @dup2(i32 %287, i32 2) #10, !dbg !2239
  %289 = load i32, i32* %31, align 4, !dbg !2240
  %290 = call i32 @close(i32 %289), !dbg !2241
  br label %291, !dbg !2242

; <label>:291:                                    ; preds = %284, %280
  br label %292, !dbg !2243

; <label>:292:                                    ; preds = %291, %267
  %293 = load i8*, i8** %11, align 8, !dbg !2244
  %294 = icmp ne i8* %293, null, !dbg !2244
  br i1 %294, label %295, label %386, !dbg !2246

; <label>:295:                                    ; preds = %292
  call void @llvm.dbg.declare(metadata i64* %32, metadata !2247, metadata !752), !dbg !2249
  call void @llvm.dbg.declare(metadata [32 x i8]* %33, metadata !2250, metadata !752), !dbg !2254
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2255, metadata !752), !dbg !2256
  br label %296, !dbg !2257, !llvm.loop !2258

; <label>:296:                                    ; preds = %295
  br label %297, !dbg !2259

; <label>:297:                                    ; preds = %296
  %298 = call i32 @getpid() #10, !dbg !2262
  %299 = sext i32 %298 to i64, !dbg !2262
  store i64 %299, i64* %32, align 8, !dbg !2263
  %300 = getelementptr inbounds [32 x i8], [32 x i8]* %33, i32 0, i32 0, !dbg !2264
  %301 = load i64, i64* %32, align 8, !dbg !2265
  %302 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %300, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i64 %301), !dbg !2266
  store i32 %302, i32* %34, align 4, !dbg !2267
  %303 = load i32, i32* %34, align 4, !dbg !2268
  %304 = icmp sle i32 %303, 0, !dbg !2270
  br i1 %304, label %305, label %316, !dbg !2271

; <label>:305:                                    ; preds = %297
  store i32 22, i32* %17, align 4, !dbg !2272
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2274
  %307 = load i32, i32* %306, align 4, !dbg !2274
  %308 = bitcast i32* %17 to i8*, !dbg !2276
  %309 = call i64 @write(i32 %307, i8* %308, i64 4), !dbg !2277
  %310 = icmp eq i64 %309, -1, !dbg !2278
  br i1 %310, label %311, label %315, !dbg !2279

; <label>:311:                                    ; preds = %305
  %312 = call i32* @__errno_location() #1, !dbg !2280
  %313 = load i32, i32* %312, align 4, !dbg !2282
  %314 = load i32, i32* %17, align 4, !dbg !2283
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %313, i32 %314), !dbg !2284
  br label %315, !dbg !2285

; <label>:315:                                    ; preds = %311, %305
  call void @_exit(i32 1) #11, !dbg !2286
  unreachable, !dbg !2286

; <label>:316:                                    ; preds = %297
  %317 = load i32, i32* %14, align 4, !dbg !2287
  %318 = call i32 @ftruncate64(i32 %317, i64 0) #10, !dbg !2289
  %319 = icmp eq i32 %318, -1, !dbg !2290
  br i1 %319, label %320, label %335, !dbg !2291

; <label>:320:                                    ; preds = %316
  %321 = call i32* @__errno_location() #1, !dbg !2292
  %322 = load i32, i32* %321, align 4, !dbg !2294
  store i32 %322, i32* %17, align 4, !dbg !2295
  %323 = load i8*, i8** %11, align 8, !dbg !2296
  %324 = load i32, i32* %17, align 4, !dbg !2297
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %323, i32 %324), !dbg !2298
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2299
  %326 = load i32, i32* %325, align 4, !dbg !2299
  %327 = bitcast i32* %17 to i8*, !dbg !2301
  %328 = call i64 @write(i32 %326, i8* %327, i64 4), !dbg !2302
  %329 = icmp eq i64 %328, -1, !dbg !2303
  br i1 %329, label %330, label %334, !dbg !2304

; <label>:330:                                    ; preds = %320
  %331 = call i32* @__errno_location() #1, !dbg !2305
  %332 = load i32, i32* %331, align 4, !dbg !2307
  %333 = load i32, i32* %17, align 4, !dbg !2308
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %332, i32 %333), !dbg !2309
  br label %334, !dbg !2310

; <label>:334:                                    ; preds = %330, %320
  call void @_exit(i32 1) #11, !dbg !2311
  unreachable, !dbg !2311

; <label>:335:                                    ; preds = %316
  %336 = load i32, i32* %14, align 4, !dbg !2312
  %337 = getelementptr inbounds [32 x i8], [32 x i8]* %33, i32 0, i32 0, !dbg !2314
  %338 = load i32, i32* %34, align 4, !dbg !2315
  %339 = sext i32 %338 to i64, !dbg !2315
  %340 = call i64 @write(i32 %336, i8* %337, i64 %339), !dbg !2316
  %341 = load i32, i32* %34, align 4, !dbg !2317
  %342 = sext i32 %341 to i64, !dbg !2317
  %343 = icmp ne i64 %340, %342, !dbg !2318
  br i1 %343, label %344, label %359, !dbg !2319

; <label>:344:                                    ; preds = %335
  %345 = call i32* @__errno_location() #1, !dbg !2320
  %346 = load i32, i32* %345, align 4, !dbg !2322
  store i32 %346, i32* %17, align 4, !dbg !2323
  %347 = load i8*, i8** %11, align 8, !dbg !2324
  %348 = load i32, i32* %17, align 4, !dbg !2325
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %347, i32 %348), !dbg !2326
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2327
  %350 = load i32, i32* %349, align 4, !dbg !2327
  %351 = bitcast i32* %17 to i8*, !dbg !2329
  %352 = call i64 @write(i32 %350, i8* %351, i64 4), !dbg !2330
  %353 = icmp eq i64 %352, -1, !dbg !2331
  br i1 %353, label %354, label %358, !dbg !2332

; <label>:354:                                    ; preds = %344
  %355 = call i32* @__errno_location() #1, !dbg !2333
  %356 = load i32, i32* %355, align 4, !dbg !2335
  %357 = load i32, i32* %17, align 4, !dbg !2336
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %356, i32 %357), !dbg !2337
  br label %358, !dbg !2338

; <label>:358:                                    ; preds = %354, %344
  call void @_exit(i32 1) #11, !dbg !2339
  unreachable, !dbg !2339

; <label>:359:                                    ; preds = %335
  %360 = load i32, i32* %14, align 4, !dbg !2340
  %361 = call i32 @fsync(i32 %360), !dbg !2342
  %362 = icmp eq i32 %361, -1, !dbg !2343
  br i1 %362, label %363, label %378, !dbg !2344

; <label>:363:                                    ; preds = %359
  %364 = call i32* @__errno_location() #1, !dbg !2345
  %365 = load i32, i32* %364, align 4, !dbg !2347
  store i32 %365, i32* %17, align 4, !dbg !2348
  %366 = load i8*, i8** %11, align 8, !dbg !2349
  %367 = load i32, i32* %17, align 4, !dbg !2350
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %366, i32 %367), !dbg !2351
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2352
  %369 = load i32, i32* %368, align 4, !dbg !2352
  %370 = bitcast i32* %17 to i8*, !dbg !2354
  %371 = call i64 @write(i32 %369, i8* %370, i64 4), !dbg !2355
  %372 = icmp eq i64 %371, -1, !dbg !2356
  br i1 %372, label %373, label %377, !dbg !2357

; <label>:373:                                    ; preds = %363
  %374 = call i32* @__errno_location() #1, !dbg !2358
  %375 = load i32, i32* %374, align 4, !dbg !2360
  %376 = load i32, i32* %17, align 4, !dbg !2361
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %375, i32 %376), !dbg !2362
  br label %377, !dbg !2363

; <label>:377:                                    ; preds = %373, %363
  call void @_exit(i32 1) #11, !dbg !2364
  unreachable, !dbg !2364

; <label>:378:                                    ; preds = %359
  %379 = load i32, i32* %10, align 4, !dbg !2365
  %380 = and i32 %379, 8, !dbg !2367
  %381 = icmp ne i32 %380, 0, !dbg !2367
  br i1 %381, label %385, label %382, !dbg !2368

; <label>:382:                                    ; preds = %378
  %383 = load i32, i32* %14, align 4, !dbg !2369
  %384 = call i32 @close(i32 %383), !dbg !2371
  br label %385, !dbg !2372

; <label>:385:                                    ; preds = %382, %378
  br label %386, !dbg !2373

; <label>:386:                                    ; preds = %385, %292
  %387 = load i8*, i8** %18, align 8, !dbg !2374
  %388 = load i8**, i8*** %19, align 8, !dbg !2376
  %389 = call i32 @execv(i8* %387, i8** %388) #10, !dbg !2377
  %390 = icmp eq i32 %389, -1, !dbg !2378
  br i1 %390, label %391, label %406, !dbg !2379

; <label>:391:                                    ; preds = %386
  %392 = call i32* @__errno_location() #1, !dbg !2380
  %393 = load i32, i32* %392, align 4, !dbg !2382
  store i32 %393, i32* %17, align 4, !dbg !2383
  %394 = load i8*, i8** %8, align 8, !dbg !2384
  %395 = load i32, i32* %17, align 4, !dbg !2385
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i8* %394, i32 %395), !dbg !2386
  %396 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2387
  %397 = load i32, i32* %396, align 4, !dbg !2387
  %398 = bitcast i32* %17 to i8*, !dbg !2389
  %399 = call i64 @write(i32 %397, i8* %398, i64 4), !dbg !2390
  %400 = icmp eq i64 %399, -1, !dbg !2391
  br i1 %400, label %401, label %405, !dbg !2392

; <label>:401:                                    ; preds = %391
  %402 = call i32* @__errno_location() #1, !dbg !2393
  %403 = load i32, i32* %402, align 4, !dbg !2395
  %404 = load i32, i32* %17, align 4, !dbg !2396
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Hostinfo_Daemonize, i32 0, i32 0), i32 %403, i32 %404), !dbg !2397
  br label %405, !dbg !2398

; <label>:405:                                    ; preds = %401, %391
  call void @_exit(i32 1) #11, !dbg !2399
  unreachable, !dbg !2399

; <label>:406:                                    ; preds = %386
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 2551) #11, !dbg !2400
  unreachable, !dbg !2400

; <label>:407:                                    ; preds = %222, %208, %191, %172, %147, %143, %136, %125, %91, %78
  %408 = load i32*, i32** %20, align 8, !dbg !2401
  %409 = bitcast i32* %408 to i8*, !dbg !2401
  call void @free(i8* %409) #10, !dbg !2402
  %410 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0, !dbg !2403
  %411 = load i32, i32* %410, align 4, !dbg !2403
  %412 = icmp ne i32 %411, -1, !dbg !2405
  br i1 %412, label %413, label %417, !dbg !2406

; <label>:413:                                    ; preds = %407
  %414 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0, !dbg !2407
  %415 = load i32, i32* %414, align 4, !dbg !2407
  %416 = call i32 @close(i32 %415), !dbg !2409
  br label %417, !dbg !2410

; <label>:417:                                    ; preds = %413, %407
  %418 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2411
  %419 = load i32, i32* %418, align 4, !dbg !2411
  %420 = icmp ne i32 %419, -1, !dbg !2413
  br i1 %420, label %421, label %425, !dbg !2414

; <label>:421:                                    ; preds = %417
  %422 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1, !dbg !2415
  %423 = load i32, i32* %422, align 4, !dbg !2415
  %424 = call i32 @close(i32 %423), !dbg !2417
  br label %425, !dbg !2418

; <label>:425:                                    ; preds = %421, %417
  %426 = load i8**, i8*** %19, align 8, !dbg !2419
  call void @Util_FreeStringList(i8** %426, i64 -1), !dbg !2420
  %427 = load i8*, i8** %18, align 8, !dbg !2421
  call void @free(i8* %427) #10, !dbg !2422
  %428 = load i32, i32* %17, align 4, !dbg !2423
  %429 = icmp eq i32 %428, 0, !dbg !2425
  br i1 %429, label %430, label %436, !dbg !2426

; <label>:430:                                    ; preds = %425
  %431 = load i32, i32* %10, align 4, !dbg !2427
  %432 = and i32 %431, 4, !dbg !2430
  %433 = icmp ne i32 %432, 0, !dbg !2430
  br i1 %433, label %434, label %435, !dbg !2431

; <label>:434:                                    ; preds = %430
  call void @_exit(i32 0) #11, !dbg !2432
  unreachable, !dbg !2432

; <label>:435:                                    ; preds = %430
  br label %445, !dbg !2434

; <label>:436:                                    ; preds = %425
  %437 = load i8*, i8** %11, align 8, !dbg !2435
  %438 = icmp ne i8* %437, null, !dbg !2435
  br i1 %438, label %439, label %442, !dbg !2438

; <label>:439:                                    ; preds = %436
  %440 = load i8*, i8** %11, align 8, !dbg !2439
  %441 = call i32 @Posix_Unlink(i8* %440), !dbg !2441
  br label %442, !dbg !2442

; <label>:442:                                    ; preds = %439, %436
  %443 = load i32, i32* %17, align 4, !dbg !2443
  %444 = call i32* @__errno_location() #1, !dbg !2444
  store i32 %443, i32* %444, align 4, !dbg !2445
  br label %445

; <label>:445:                                    ; preds = %442, %435
  %446 = load i8*, i8** %11, align 8, !dbg !2446
  %447 = icmp ne i8* %446, null, !dbg !2446
  br i1 %447, label %448, label %451, !dbg !2448

; <label>:448:                                    ; preds = %445
  %449 = load i32, i32* %14, align 4, !dbg !2449
  %450 = call i32 @close(i32 %449), !dbg !2451
  br label %451, !dbg !2452

; <label>:451:                                    ; preds = %448, %445
  %452 = load i32, i32* %17, align 4, !dbg !2453
  %453 = icmp eq i32 %452, 0, !dbg !2454
  %454 = zext i1 %453 to i32, !dbg !2454
  %455 = trunc i32 %454 to i8, !dbg !2453
  store i8 %455, i8* %7, align 1, !dbg !2455
  br label %456, !dbg !2455

; <label>:456:                                    ; preds = %451, %62, %47
  %457 = load i8, i8* %7, align 1, !dbg !2456
  ret i8 %457, !dbg !2456
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #3

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @fcntl(i32, i32, ...) #5

declare i8* @Unicode_GetAllocBytes(i8*, i32) #5

declare i8** @Unicode_GetAllocList(i8**, i64, i32) #5

; Function Attrs: nounwind
declare i32 @fork() #3

declare i32 @waitpid(i32, i32*, i32) #5

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

declare i64 @write(i32, i8*, i64) #5

declare i32 @open64(i8*, i32, ...) #5

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #5

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #3

declare i32 @fsync(i32) #5

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #2 !dbg !2457 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2463, metadata !752), !dbg !2464
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2465, metadata !752), !dbg !2466
  %5 = load i8**, i8*** %3, align 8, !dbg !2467
  %6 = load i64, i64* %4, align 8, !dbg !2468
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !2469
  ret void, !dbg !2470
}

declare i32 @Posix_Unlink(i8*) #5

; Function Attrs: nounwind uwtable
define signext i8 @Hostinfo_GetRatedCpuMhz(i32, i32*) #0 !dbg !2471 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2476, metadata !752), !dbg !2477
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2478, metadata !752), !dbg !2479
  call void @llvm.dbg.declare(metadata float* %6, metadata !2480, metadata !752), !dbg !2482
  store float 0.000000e+00, float* %6, align 4, !dbg !2482
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2483, metadata !752), !dbg !2484
  %8 = load i32, i32* %4, align 4, !dbg !2485
  %9 = call i8* @HostinfoGetCpuInfo(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)), !dbg !2486
  store i8* %9, i8** %7, align 8, !dbg !2484
  %10 = load i8*, i8** %7, align 8, !dbg !2487
  %11 = icmp eq i8* %10, null, !dbg !2489
  br i1 %11, label %12, label %13, !dbg !2490

; <label>:12:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !2491
  br label %25, !dbg !2491

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %7, align 8, !dbg !2493
  %15 = call i32 (i8*, i8*, ...) @sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), float* %6) #10, !dbg !2495
  %16 = icmp eq i32 %15, 1, !dbg !2496
  br i1 %16, label %17, label %23, !dbg !2497

; <label>:17:                                     ; preds = %13
  %18 = load float, float* %6, align 4, !dbg !2498
  %19 = fpext float %18 to double, !dbg !2498
  %20 = fadd double %19, 5.000000e-01, !dbg !2500
  %21 = fptoui double %20 to i32, !dbg !2501
  %22 = load i32*, i32** %5, align 8, !dbg !2502
  store i32 %21, i32* %22, align 4, !dbg !2503
  br label %23, !dbg !2504

; <label>:23:                                     ; preds = %17, %13
  %24 = load i8*, i8** %7, align 8, !dbg !2505
  call void @free(i8* %24) #10, !dbg !2506
  store i8 1, i8* %3, align 1, !dbg !2507
  br label %25, !dbg !2507

; <label>:25:                                     ; preds = %23, %12
  %26 = load i8, i8* %3, align 1, !dbg !2508
  ret i8 %26, !dbg !2508
}

; Function Attrs: nounwind uwtable
define internal i8* @HostinfoGetCpuInfo(i32, i8*) #0 !dbg !2509 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2512, metadata !752), !dbg !2513
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2514, metadata !752), !dbg !2515
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2516, metadata !752), !dbg !2517
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2518, metadata !752), !dbg !2519
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2520, metadata !752), !dbg !2521
  store i32 0, i32* %8, align 4, !dbg !2521
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2522, metadata !752), !dbg !2523
  store i8* null, i8** %9, align 8, !dbg !2523
  %12 = call %struct._IO_FILE* @Posix_Fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !2524
  store %struct._IO_FILE* %12, %struct._IO_FILE** %6, align 8, !dbg !2525
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2526
  %14 = icmp eq %struct._IO_FILE* %13, null, !dbg !2528
  br i1 %14, label %15, label %16, !dbg !2529

; <label>:15:                                     ; preds = %2
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HostinfoGetCpuInfo, i32 0, i32 0)), !dbg !2530
  store i8* null, i8** %3, align 8, !dbg !2532
  br label %110, !dbg !2532

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !2533

; <label>:17:                                     ; preds = %104, %16
  %18 = load i32, i32* %8, align 4, !dbg !2534
  %19 = load i32, i32* %4, align 4, !dbg !2536
  %20 = icmp sle i32 %18, %19, !dbg !2537
  br i1 %20, label %21, label %25, !dbg !2538

; <label>:21:                                     ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2539
  %23 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %22, i8** %7, i64 0, i64* null), !dbg !2540
  %24 = icmp eq i32 %23, 2, !dbg !2541
  br label %25

; <label>:25:                                     ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %106, !dbg !2542

; <label>:27:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2544, metadata !752), !dbg !2546
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2547, metadata !752), !dbg !2548
  %28 = load i8*, i8** %7, align 8, !dbg !2549
  %29 = load i8*, i8** %5, align 8, !dbg !2551
  %30 = call i8* @strstr(i8* %28, i8* %29) #12, !dbg !2552
  store i8* %30, i8** %10, align 8, !dbg !2553
  %31 = icmp ne i8* %30, null, !dbg !2553
  br i1 %31, label %32, label %104, !dbg !2554

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %10, align 8, !dbg !2555
  %34 = call i8* @strchr(i8* %33, i32 58) #12, !dbg !2556
  store i8* %34, i8** %10, align 8, !dbg !2557
  %35 = icmp ne i8* %34, null, !dbg !2557
  br i1 %35, label %36, label %104, !dbg !2558

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %10, align 8, !dbg !2560
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !2560
  store i8* %38, i8** %10, align 8, !dbg !2560
  %39 = load i8*, i8** %10, align 8, !dbg !2562
  %40 = load i8*, i8** %10, align 8, !dbg !2563
  %41 = call i64 @strlen(i8* %40) #12, !dbg !2564
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !2565
  store i8* %42, i8** %11, align 8, !dbg !2566
  br label %43, !dbg !2567

; <label>:43:                                     ; preds = %62, %36
  %44 = load i8*, i8** %10, align 8, !dbg !2568
  %45 = load i8*, i8** %11, align 8, !dbg !2572
  %46 = icmp ult i8* %44, %45, !dbg !2573
  br i1 %46, label %47, label %59, !dbg !2574

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %10, align 8, !dbg !2575
  %49 = load i8, i8* %48, align 1, !dbg !2577
  %50 = sext i8 %49 to i32, !dbg !2578
  %51 = sext i32 %50 to i64, !dbg !2575
  %52 = call i16** @__ctype_b_loc() #1, !dbg !2579
  %53 = load i16*, i16** %52, align 8, !dbg !2580
  %54 = getelementptr inbounds i16, i16* %53, i64 %51, !dbg !2575
  %55 = load i16, i16* %54, align 2, !dbg !2575
  %56 = zext i16 %55 to i32, !dbg !2575
  %57 = and i32 %56, 8192, !dbg !2581
  %58 = icmp ne i32 %57, 0, !dbg !2582
  br label %59

; <label>:59:                                     ; preds = %47, %43
  %60 = phi i1 [ false, %43 ], [ %58, %47 ]
  br i1 %60, label %61, label %65, !dbg !2583

; <label>:61:                                     ; preds = %59
  br label %62, !dbg !2585

; <label>:62:                                     ; preds = %61
  %63 = load i8*, i8** %10, align 8, !dbg !2587
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !2587
  store i8* %64, i8** %10, align 8, !dbg !2587
  br label %43, !dbg !2589, !llvm.loop !2590

; <label>:65:                                     ; preds = %59
  br label %66, !dbg !2591

; <label>:66:                                     ; preds = %86, %65
  %67 = load i8*, i8** %10, align 8, !dbg !2592
  %68 = load i8*, i8** %11, align 8, !dbg !2596
  %69 = icmp ult i8* %67, %68, !dbg !2597
  br i1 %69, label %70, label %83, !dbg !2598

; <label>:70:                                     ; preds = %66
  %71 = load i8*, i8** %11, align 8, !dbg !2599
  %72 = getelementptr inbounds i8, i8* %71, i64 -1, !dbg !2599
  %73 = load i8, i8* %72, align 1, !dbg !2599
  %74 = sext i8 %73 to i32, !dbg !2601
  %75 = sext i32 %74 to i64, !dbg !2602
  %76 = call i16** @__ctype_b_loc() #1, !dbg !2603
  %77 = load i16*, i16** %76, align 8, !dbg !2604
  %78 = getelementptr inbounds i16, i16* %77, i64 %75, !dbg !2602
  %79 = load i16, i16* %78, align 2, !dbg !2602
  %80 = zext i16 %79 to i32, !dbg !2602
  %81 = and i32 %80, 8192, !dbg !2605
  %82 = icmp ne i32 %81, 0, !dbg !2606
  br label %83

; <label>:83:                                     ; preds = %70, %66
  %84 = phi i1 [ false, %66 ], [ %82, %70 ]
  br i1 %84, label %85, label %89, !dbg !2607

; <label>:85:                                     ; preds = %83
  br label %86, !dbg !2609

; <label>:86:                                     ; preds = %85
  %87 = load i8*, i8** %11, align 8, !dbg !2611
  %88 = getelementptr inbounds i8, i8* %87, i32 -1, !dbg !2611
  store i8* %88, i8** %11, align 8, !dbg !2611
  br label %66, !dbg !2613, !llvm.loop !2614

; <label>:89:                                     ; preds = %83
  %90 = load i8*, i8** %11, align 8, !dbg !2615
  store i8 0, i8* %90, align 1, !dbg !2616
  %91 = load i8*, i8** %9, align 8, !dbg !2617
  call void @free(i8* %91) #10, !dbg !2618
  %92 = load i8*, i8** %10, align 8, !dbg !2619
  %93 = call noalias i8* @strdup(i8* %92) #10, !dbg !2620
  store i8* %93, i8** %9, align 8, !dbg !2621
  %94 = load i8*, i8** %9, align 8, !dbg !2622
  %95 = icmp ne i8* %94, null, !dbg !2625
  %96 = xor i1 %95, true, !dbg !2625
  %97 = zext i1 %96 to i32, !dbg !2625
  %98 = sext i32 %97 to i64, !dbg !2626
  %99 = icmp ne i64 %98, 0, !dbg !2627
  br i1 %99, label %100, label %101, !dbg !2628

; <label>:100:                                    ; preds = %89
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 2643) #11, !dbg !2629
  unreachable, !dbg !2629

; <label>:101:                                    ; preds = %89
  %102 = load i32, i32* %8, align 4, !dbg !2632
  %103 = add nsw i32 %102, 1, !dbg !2632
  store i32 %103, i32* %8, align 4, !dbg !2632
  br label %104, !dbg !2633

; <label>:104:                                    ; preds = %101, %32, %27
  %105 = load i8*, i8** %7, align 8, !dbg !2634
  call void @free(i8* %105) #10, !dbg !2635
  br label %17, !dbg !2636, !llvm.loop !2638

; <label>:106:                                    ; preds = %25
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2639
  %108 = call i32 @fclose(%struct._IO_FILE* %107), !dbg !2640
  %109 = load i8*, i8** %9, align 8, !dbg !2641
  store i8* %109, i8** %3, align 8, !dbg !2642
  br label %110, !dbg !2642

; <label>:110:                                    ; preds = %106, %15
  %111 = load i8*, i8** %3, align 8, !dbg !2643
  ret i8* %111, !dbg !2643
}

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_GetCpuDescription(i32) #0 !dbg !2644 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2647, metadata !752), !dbg !2648
  %3 = load i32, i32* %2, align 4, !dbg !2649
  %4 = call i8* @HostinfoGetCpuInfo(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)), !dbg !2650
  ret i8* %4, !dbg !2651
}

; Function Attrs: nounwind uwtable
define i32 @Hostinfo_Execute(i8*, i8**, i8 signext, i32*, i64) #0 !dbg !2652 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2655, metadata !752), !dbg !2656
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2657, metadata !752), !dbg !2658
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2659, metadata !752), !dbg !2660
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2661, metadata !752), !dbg !2662
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2663, metadata !752), !dbg !2664
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2665, metadata !752), !dbg !2666
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2667, metadata !752), !dbg !2668
  %14 = load i8*, i8** %7, align 8, !dbg !2669
  %15 = icmp eq i8* %14, null, !dbg !2671
  br i1 %15, label %16, label %17, !dbg !2672

; <label>:16:                                     ; preds = %5
  store i32 1, i32* %6, align 4, !dbg !2673
  br label %54, !dbg !2673

; <label>:17:                                     ; preds = %5
  %18 = call i32 @fork() #10, !dbg !2675
  store i32 %18, i32* %12, align 4, !dbg !2676
  %19 = load i32, i32* %12, align 4, !dbg !2677
  %20 = icmp eq i32 %19, -1, !dbg !2679
  br i1 %20, label %21, label %22, !dbg !2680

; <label>:21:                                     ; preds = %17
  store i32 -1, i32* %6, align 4, !dbg !2681
  br label %54, !dbg !2681

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %12, align 4, !dbg !2683
  %24 = icmp eq i32 %23, 0, !dbg !2685
  br i1 %24, label %25, label %31, !dbg !2686

; <label>:25:                                     ; preds = %22
  %26 = load i32*, i32** %10, align 8, !dbg !2687
  %27 = load i64, i64* %11, align 8, !dbg !2689
  call void @Hostinfo_ResetProcessState(i32* %26, i64 %27), !dbg !2690
  %28 = load i8*, i8** %7, align 8, !dbg !2691
  %29 = load i8**, i8*** %8, align 8, !dbg !2692
  %30 = call i32 @Posix_Execvp(i8* %28, i8** %29), !dbg !2693
  call void @exit(i32 127) #13, !dbg !2694
  unreachable, !dbg !2694

; <label>:31:                                     ; preds = %22
  %32 = load i8, i8* %9, align 1, !dbg !2695
  %33 = icmp ne i8 %32, 0, !dbg !2695
  br i1 %33, label %34, label %53, !dbg !2697

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !2698

; <label>:35:                                     ; preds = %52, %34
  %36 = load i32, i32* %12, align 4, !dbg !2700
  %37 = call i32 @waitpid(i32 %36, i32* %13, i32 0), !dbg !2705
  %38 = icmp eq i32 %37, -1, !dbg !2706
  br i1 %38, label %39, label %50, !dbg !2707

; <label>:39:                                     ; preds = %35
  %40 = call i32* @__errno_location() #1, !dbg !2708
  %41 = load i32, i32* %40, align 4, !dbg !2711
  %42 = icmp eq i32 %41, 10, !dbg !2712
  br i1 %42, label %43, label %44, !dbg !2713

; <label>:43:                                     ; preds = %39
  store i32 0, i32* %6, align 4, !dbg !2714
  br label %54, !dbg !2714

; <label>:44:                                     ; preds = %39
  %45 = call i32* @__errno_location() #1, !dbg !2716
  %46 = load i32, i32* %45, align 4, !dbg !2718
  %47 = icmp ne i32 %46, 4, !dbg !2719
  br i1 %47, label %48, label %49, !dbg !2720

; <label>:48:                                     ; preds = %44
  store i32 -1, i32* %6, align 4, !dbg !2721
  br label %54, !dbg !2721

; <label>:49:                                     ; preds = %44
  br label %52, !dbg !2723

; <label>:50:                                     ; preds = %35
  %51 = load i32, i32* %13, align 4, !dbg !2724
  store i32 %51, i32* %6, align 4, !dbg !2726
  br label %54, !dbg !2726

; <label>:52:                                     ; preds = %49
  br label %35, !dbg !2727, !llvm.loop !2729

; <label>:53:                                     ; preds = %31
  store i32 0, i32* %6, align 4, !dbg !2730
  br label %54, !dbg !2730

; <label>:54:                                     ; preds = %53, %50, %48, %43, %21, %16
  %55 = load i32, i32* %6, align 4, !dbg !2732
  ret i32 %55, !dbg !2732
}

declare i32 @Posix_Execvp(i8*, i8**) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

; Function Attrs: nounwind uwtable
define i64 @Hostinfo_SystemUpTime() #0 !dbg !696 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2733, metadata !752), !dbg !2734
  call void @llvm.dbg.declare(metadata double* %3, metadata !2735, metadata !752), !dbg !2736
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2737, metadata !752), !dbg !2738
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !2739, metadata !752), !dbg !2743
  %6 = call i32 @Atomic_ReadInt(%struct.Atomic_uint32* @Hostinfo_SystemUpTime.fdStorage), !dbg !2744
  store i32 %6, i32* %4, align 4, !dbg !2745
  %7 = load i32, i32* %4, align 4, !dbg !2746
  %8 = icmp eq i32 %7, -1, !dbg !2748
  %9 = zext i1 %8 to i32, !dbg !2748
  %10 = sext i32 %9 to i64, !dbg !2749
  %11 = icmp ne i64 %10, 0, !dbg !2750
  br i1 %11, label %12, label %29, !dbg !2751

; <label>:12:                                     ; preds = %0
  %13 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 0), !dbg !2752
  store i32 %13, i32* %4, align 4, !dbg !2754
  %14 = load i32, i32* %4, align 4, !dbg !2755
  %15 = icmp eq i32 %14, -1, !dbg !2757
  br i1 %15, label %16, label %20, !dbg !2758

; <label>:16:                                     ; preds = %12
  %17 = call i32* @__errno_location() #1, !dbg !2759
  %18 = load i32, i32* %17, align 4, !dbg !2761
  %19 = call i8* @Err_Errno2String(i32 %18), !dbg !2762
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i32 0, i32 0), i8* %19), !dbg !2764
  store i64 0, i64* %1, align 8, !dbg !2765
  br label %78, !dbg !2765

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %4, align 4, !dbg !2766
  %22 = call i32 @Atomic_ReadIfEqualWriteInt(%struct.Atomic_uint32* @Hostinfo_SystemUpTime.fdStorage, i32 -1, i32 %21), !dbg !2768
  %23 = icmp ne i32 %22, -1, !dbg !2769
  br i1 %23, label %24, label %27, !dbg !2770

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %4, align 4, !dbg !2771
  %26 = call i32 @close(i32 %25), !dbg !2773
  br label %27, !dbg !2774

; <label>:27:                                     ; preds = %24, %20
  %28 = call i32 @Atomic_ReadInt(%struct.Atomic_uint32* @Hostinfo_SystemUpTime.fdStorage), !dbg !2775
  store i32 %28, i32* %4, align 4, !dbg !2776
  br label %29, !dbg !2777

; <label>:29:                                     ; preds = %27, %0
  %30 = load i32, i32* %4, align 4, !dbg !2778
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !2779
  %32 = call i64 @pread64(i32 %30, i8* %31, i64 255, i64 0), !dbg !2780
  %33 = trunc i64 %32 to i32, !dbg !2780
  store i32 %33, i32* %2, align 4, !dbg !2781
  %34 = load i32, i32* %2, align 4, !dbg !2782
  %35 = icmp eq i32 %34, -1, !dbg !2784
  br i1 %35, label %36, label %65, !dbg !2785

; <label>:36:                                     ; preds = %29
  %37 = call i32 @Atomic_ReadIfEqualWrite32(%struct.Atomic_uint32* @Hostinfo_SystemUpTime.logFailedPread, i32 1, i32 0), !dbg !2786
  %38 = icmp eq i32 %37, 1, !dbg !2789
  br i1 %38, label %39, label %43, !dbg !2790

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno_location() #1, !dbg !2791
  %41 = load i32, i32* %40, align 4, !dbg !2793
  %42 = call i8* @Err_Errno2String(i32 %41), !dbg !2794
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i32 0, i32 0), i8* %42), !dbg !2796
  br label %43, !dbg !2797

; <label>:43:                                     ; preds = %39, %36
  %44 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 0), !dbg !2798
  store i32 %44, i32* %4, align 4, !dbg !2799
  %45 = load i32, i32* %4, align 4, !dbg !2800
  %46 = icmp eq i32 %45, -1, !dbg !2802
  br i1 %46, label %47, label %51, !dbg !2803

; <label>:47:                                     ; preds = %43
  %48 = call i32* @__errno_location() #1, !dbg !2804
  %49 = load i32, i32* %48, align 4, !dbg !2806
  %50 = call i8* @Err_Errno2String(i32 %49), !dbg !2807
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i32 0, i32 0), i8* %50), !dbg !2809
  store i64 0, i64* %1, align 8, !dbg !2810
  br label %78, !dbg !2810

; <label>:51:                                     ; preds = %43
  %52 = load i32, i32* %4, align 4, !dbg !2811
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !2812
  %54 = call i64 @read(i32 %52, i8* %53, i64 255), !dbg !2813
  %55 = trunc i64 %54 to i32, !dbg !2813
  store i32 %55, i32* %2, align 4, !dbg !2814
  %56 = load i32, i32* %4, align 4, !dbg !2815
  %57 = call i32 @close(i32 %56), !dbg !2816
  %58 = load i32, i32* %2, align 4, !dbg !2817
  %59 = icmp eq i32 %58, -1, !dbg !2819
  br i1 %59, label %60, label %64, !dbg !2820

; <label>:60:                                     ; preds = %51
  %61 = call i32* @__errno_location() #1, !dbg !2821
  %62 = load i32, i32* %61, align 4, !dbg !2823
  %63 = call i8* @Err_Errno2String(i32 %62), !dbg !2824
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0), i8* %63), !dbg !2826
  store i64 0, i64* %1, align 8, !dbg !2827
  br label %78, !dbg !2827

; <label>:64:                                     ; preds = %51
  br label %65, !dbg !2828

; <label>:65:                                     ; preds = %64, %29
  %66 = load i32, i32* %2, align 4, !dbg !2829
  %67 = sext i32 %66 to i64, !dbg !2830
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %67, !dbg !2830
  store i8 0, i8* %68, align 1, !dbg !2831
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !2832
  %70 = call i32 (i8*, i8*, ...) @sscanf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), double* %3) #10, !dbg !2834
  %71 = icmp ne i32 %70, 1, !dbg !2835
  br i1 %71, label %72, label %73, !dbg !2836

; <label>:72:                                     ; preds = %65
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i32 0, i32 0)), !dbg !2837
  store i64 0, i64* %1, align 8, !dbg !2839
  br label %78, !dbg !2839

; <label>:73:                                     ; preds = %65
  %74 = load double, double* %3, align 8, !dbg !2840
  %75 = fmul double %74, 1.000000e+03, !dbg !2841
  %76 = fmul double %75, 1.000000e+03, !dbg !2842
  %77 = fptosi double %76 to i64, !dbg !2840
  store i64 %77, i64* %1, align 8, !dbg !2843
  br label %78, !dbg !2843

; <label>:78:                                     ; preds = %73, %72, %60, %47, %16
  %79 = load i64, i64* %1, align 8, !dbg !2844
  ret i64 %79, !dbg !2844
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadInt(%struct.Atomic_uint32*) #2 !dbg !2845 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !2850, metadata !752), !dbg !2851
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !2852
  %4 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %3), !dbg !2853
  ret i32 %4, !dbg !2854
}

declare i8* @Err_Errno2String(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadIfEqualWriteInt(%struct.Atomic_uint32*, i32, i32) #2 !dbg !2855 {
  %4 = alloca %struct.Atomic_uint32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %4, metadata !2859, metadata !752), !dbg !2860
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2861, metadata !752), !dbg !2862
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2863, metadata !752), !dbg !2864
  %7 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %4, align 8, !dbg !2865
  %8 = load i32, i32* %5, align 4, !dbg !2866
  %9 = load i32, i32* %6, align 4, !dbg !2867
  %10 = call i32 @Atomic_ReadIfEqualWrite32(%struct.Atomic_uint32* %7, i32 %8, i32 %9), !dbg !2868
  ret i32 %10, !dbg !2869
}

declare i64 @pread64(i32, i8*, i64, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadIfEqualWrite32(%struct.Atomic_uint32*, i32, i32) #2 !dbg !2870 {
  %4 = alloca %struct.Atomic_uint32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %4, metadata !2874, metadata !752), !dbg !2875
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2876, metadata !752), !dbg !2877
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2878, metadata !752), !dbg !2879
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2880, metadata !752), !dbg !2881
  %8 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %4, align 8, !dbg !2882
  %9 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %8, i32 0, i32 0, !dbg !2883
  %10 = load i32, i32* %6, align 4, !dbg !2884
  %11 = load i32, i32* %5, align 4, !dbg !2885
  %12 = call i32 asm sideeffect "lock; cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %9, i32 %10, i32 %11, i32* %9) #10, !dbg !2886, !srcloc !2887
  store i32 %12, i32* %7, align 4, !dbg !2886
  %13 = load i32, i32* %7, align 4, !dbg !2888
  ret i32 %13, !dbg !2889
}

; Function Attrs: nounwind uwtable
define signext i8 @HostinfoGetLinuxMemoryInfoInPages(i32*, i32*, i32*) #0 !dbg !2890 {
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2894, metadata !752), !dbg !2895
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2896, metadata !752), !dbg !2897
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2898, metadata !752), !dbg !2899
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2900, metadata !752), !dbg !2901
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2902, metadata !752), !dbg !2903
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2904, metadata !752), !dbg !2905
  store i32 0, i32* %10, align 4, !dbg !2905
  %11 = call signext i8 @HostinfoSysinfo(i64* %8, i64* %9, i64* null, i64* null), !dbg !2906
  %12 = sext i8 %11 to i32, !dbg !2906
  %13 = icmp eq i32 %12, 0, !dbg !2908
  br i1 %13, label %14, label %15, !dbg !2909

; <label>:14:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !2910
  br label %49, !dbg !2910

; <label>:15:                                     ; preds = %3
  %16 = load i64, i64* %8, align 8, !dbg !2912
  %17 = icmp ult i64 %16, 134217728, !dbg !2914
  br i1 %17, label %18, label %24, !dbg !2915

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %8, align 8, !dbg !2916
  %20 = add i64 %19, 8388608, !dbg !2918
  %21 = sub i64 %20, 1, !dbg !2919
  %22 = udiv i64 %21, 8388608, !dbg !2920
  %23 = mul i64 %22, 8388608, !dbg !2921
  store i64 %23, i64* %8, align 8, !dbg !2922
  br label %30, !dbg !2923

; <label>:24:                                     ; preds = %15
  %25 = load i64, i64* %8, align 8, !dbg !2924
  %26 = add i64 %25, 33554432, !dbg !2926
  %27 = sub i64 %26, 1, !dbg !2927
  %28 = udiv i64 %27, 33554432, !dbg !2928
  %29 = mul i64 %28, 33554432, !dbg !2929
  store i64 %29, i64* %8, align 8, !dbg !2930
  br label %30

; <label>:30:                                     ; preds = %24, %18
  %31 = load i32*, i32** %5, align 8, !dbg !2931
  store i32 128, i32* %31, align 4, !dbg !2932
  %32 = load i64, i64* %8, align 8, !dbg !2933
  %33 = udiv i64 %32, 4096, !dbg !2934
  %34 = trunc i64 %33 to i32, !dbg !2933
  %35 = load i32*, i32** %6, align 8, !dbg !2935
  store i32 %34, i32* %35, align 4, !dbg !2936
  %36 = call signext i8 @HostinfoGetMemInfo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32* %10), !dbg !2937
  %37 = load i32*, i32** %7, align 8, !dbg !2938
  %38 = icmp ne i32* %37, null, !dbg !2938
  br i1 %38, label %39, label %48, !dbg !2940

; <label>:39:                                     ; preds = %30
  %40 = load i64, i64* %9, align 8, !dbg !2941
  %41 = udiv i64 %40, 4096, !dbg !2943
  %42 = load i32, i32* %10, align 4, !dbg !2944
  %43 = udiv i32 %42, 4, !dbg !2945
  %44 = zext i32 %43 to i64, !dbg !2944
  %45 = add i64 %41, %44, !dbg !2946
  %46 = trunc i64 %45 to i32, !dbg !2941
  %47 = load i32*, i32** %7, align 8, !dbg !2947
  store i32 %46, i32* %47, align 4, !dbg !2948
  br label %48, !dbg !2949

; <label>:48:                                     ; preds = %39, %30
  store i8 1, i8* %4, align 1, !dbg !2950
  br label %49, !dbg !2950

; <label>:49:                                     ; preds = %48, %14
  %50 = load i8, i8* %4, align 1, !dbg !2951
  ret i8 %50, !dbg !2951
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoSysinfo(i64*, i64*, i64*, i64*) #0 !dbg !2952 {
  %5 = alloca i8, align 1
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.vmware_sysinfo, align 8
  store i64* %0, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2956, metadata !752), !dbg !2957
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2958, metadata !752), !dbg !2959
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !2960, metadata !752), !dbg !2961
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !2962, metadata !752), !dbg !2963
  call void @llvm.dbg.declare(metadata %struct.vmware_sysinfo* %10, metadata !2964, metadata !752), !dbg !2982
  %11 = bitcast %struct.vmware_sysinfo* %10 to %struct.sysinfo*, !dbg !2983
  %12 = call i32 @sysinfo(%struct.sysinfo* %11) #10, !dbg !2985
  %13 = icmp slt i32 %12, 0, !dbg !2986
  br i1 %13, label %14, label %15, !dbg !2987

; <label>:14:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !2988
  br label %66, !dbg !2988

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 12, !dbg !2990
  %17 = load i32, i32* %16, align 8, !dbg !2990
  %18 = icmp eq i32 %17, 0, !dbg !2992
  br i1 %18, label %19, label %21, !dbg !2993

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 12, !dbg !2994
  store i32 1, i32* %20, align 8, !dbg !2996
  br label %21, !dbg !2997

; <label>:21:                                     ; preds = %19, %15
  %22 = load i64*, i64** %6, align 8, !dbg !2998
  %23 = icmp ne i64* %22, null, !dbg !2998
  br i1 %23, label %24, label %32, !dbg !3000

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 2, !dbg !3001
  %26 = load i64, i64* %25, align 8, !dbg !3001
  %27 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 12, !dbg !3003
  %28 = load i32, i32* %27, align 8, !dbg !3003
  %29 = zext i32 %28 to i64, !dbg !3004
  %30 = mul i64 %26, %29, !dbg !3005
  %31 = load i64*, i64** %6, align 8, !dbg !3006
  store i64 %30, i64* %31, align 8, !dbg !3007
  br label %32, !dbg !3008

; <label>:32:                                     ; preds = %24, %21
  %33 = load i64*, i64** %7, align 8, !dbg !3009
  %34 = icmp ne i64* %33, null, !dbg !3009
  br i1 %34, label %35, label %43, !dbg !3011

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 3, !dbg !3012
  %37 = load i64, i64* %36, align 8, !dbg !3012
  %38 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 12, !dbg !3014
  %39 = load i32, i32* %38, align 8, !dbg !3014
  %40 = zext i32 %39 to i64, !dbg !3015
  %41 = mul i64 %37, %40, !dbg !3016
  %42 = load i64*, i64** %7, align 8, !dbg !3017
  store i64 %41, i64* %42, align 8, !dbg !3018
  br label %43, !dbg !3019

; <label>:43:                                     ; preds = %35, %32
  %44 = load i64*, i64** %8, align 8, !dbg !3020
  %45 = icmp ne i64* %44, null, !dbg !3020
  br i1 %45, label %46, label %54, !dbg !3022

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 6, !dbg !3023
  %48 = load i64, i64* %47, align 8, !dbg !3023
  %49 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 12, !dbg !3025
  %50 = load i32, i32* %49, align 8, !dbg !3025
  %51 = zext i32 %50 to i64, !dbg !3026
  %52 = mul i64 %48, %51, !dbg !3027
  %53 = load i64*, i64** %8, align 8, !dbg !3028
  store i64 %52, i64* %53, align 8, !dbg !3029
  br label %54, !dbg !3030

; <label>:54:                                     ; preds = %46, %43
  %55 = load i64*, i64** %9, align 8, !dbg !3031
  %56 = icmp ne i64* %55, null, !dbg !3031
  br i1 %56, label %57, label %65, !dbg !3033

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 7, !dbg !3034
  %59 = load i64, i64* %58, align 8, !dbg !3034
  %60 = getelementptr inbounds %struct.vmware_sysinfo, %struct.vmware_sysinfo* %10, i32 0, i32 12, !dbg !3036
  %61 = load i32, i32* %60, align 8, !dbg !3036
  %62 = zext i32 %61 to i64, !dbg !3037
  %63 = mul i64 %59, %62, !dbg !3038
  %64 = load i64*, i64** %9, align 8, !dbg !3039
  store i64 %63, i64* %64, align 8, !dbg !3040
  br label %65, !dbg !3041

; <label>:65:                                     ; preds = %57, %54
  store i8 1, i8* %5, align 1, !dbg !3042
  br label %66, !dbg !3042

; <label>:66:                                     ; preds = %65, %14
  %67 = load i8, i8* %5, align 1, !dbg !3043
  ret i8 %67, !dbg !3043
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoGetMemInfo(i8*, i32*) #0 !dbg !3044 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3047, metadata !752), !dbg !3048
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3049, metadata !752), !dbg !3050
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3051, metadata !752), !dbg !3052
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !3053, metadata !752), !dbg !3057
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3058, metadata !752), !dbg !3059
  %9 = call i32 (i8*, i32, ...) @Posix_Open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.274, i32 0, i32 0), i32 0), !dbg !3060
  store i32 %9, i32* %8, align 4, !dbg !3059
  %10 = load i32, i32* %8, align 4, !dbg !3061
  %11 = icmp eq i32 %10, -1, !dbg !3063
  br i1 %11, label %12, label %13, !dbg !3064

; <label>:12:                                     ; preds = %2
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HostinfoGetMemInfo, i32 0, i32 0)), !dbg !3065
  store i8 0, i8* %3, align 1, !dbg !3067
  br label %29, !dbg !3067

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %8, align 4, !dbg !3068
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !3069
  %16 = call i64 @read(i32 %14, i8* %15, i64 4095), !dbg !3070
  store i64 %16, i64* %6, align 8, !dbg !3071
  %17 = load i32, i32* %8, align 4, !dbg !3072
  %18 = call i32 @close(i32 %17), !dbg !3073
  %19 = load i64, i64* %6, align 8, !dbg !3074
  %20 = icmp eq i64 %19, -1, !dbg !3076
  br i1 %20, label %21, label %22, !dbg !3077

; <label>:21:                                     ; preds = %13
  store i8 0, i8* %3, align 1, !dbg !3078
  br label %29, !dbg !3078

; <label>:22:                                     ; preds = %13
  %23 = load i64, i64* %6, align 8, !dbg !3080
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %23, !dbg !3081
  store i8 0, i8* %24, align 1, !dbg !3082
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !3083
  %26 = load i8*, i8** %4, align 8, !dbg !3084
  %27 = load i32*, i32** %5, align 8, !dbg !3085
  %28 = call signext i8 @HostinfoFindEntry(i8* %25, i8* %26, i32* %27), !dbg !3086
  store i8 %28, i8* %3, align 1, !dbg !3087
  br label %29, !dbg !3087

; <label>:29:                                     ; preds = %22, %21, %12
  %30 = load i8, i8* %3, align 1, !dbg !3088
  ret i8 %30, !dbg !3088
}

; Function Attrs: nounwind uwtable
define signext i8 @Hostinfo_GetSwapInfoInPages(i32*, i32*) #0 !dbg !3089 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !3092, metadata !752), !dbg !3093
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3094, metadata !752), !dbg !3095
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3096, metadata !752), !dbg !3097
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3098, metadata !752), !dbg !3099
  %8 = call signext i8 @HostinfoSysinfo(i64* null, i64* null, i64* %6, i64* %7), !dbg !3100
  %9 = sext i8 %8 to i32, !dbg !3100
  %10 = icmp eq i32 %9, 0, !dbg !3102
  br i1 %10, label %11, label %12, !dbg !3103

; <label>:11:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !3104
  br label %29, !dbg !3104

; <label>:12:                                     ; preds = %2
  %13 = load i32*, i32** %4, align 8, !dbg !3106
  %14 = icmp ne i32* %13, null, !dbg !3108
  br i1 %14, label %15, label %20, !dbg !3109

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3110
  %17 = udiv i64 %16, 4096, !dbg !3112
  %18 = trunc i64 %17 to i32, !dbg !3110
  %19 = load i32*, i32** %4, align 8, !dbg !3113
  store i32 %18, i32* %19, align 4, !dbg !3114
  br label %20, !dbg !3115

; <label>:20:                                     ; preds = %15, %12
  %21 = load i32*, i32** %5, align 8, !dbg !3116
  %22 = icmp ne i32* %21, null, !dbg !3118
  br i1 %22, label %23, label %28, !dbg !3119

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %7, align 8, !dbg !3120
  %25 = udiv i64 %24, 4096, !dbg !3122
  %26 = trunc i64 %25 to i32, !dbg !3120
  %27 = load i32*, i32** %5, align 8, !dbg !3123
  store i32 %26, i32* %27, align 4, !dbg !3124
  br label %28, !dbg !3125

; <label>:28:                                     ; preds = %23, %20
  store i8 1, i8* %3, align 1, !dbg !3126
  br label %29, !dbg !3126

; <label>:29:                                     ; preds = %28, %11
  %30 = load i8, i8* %3, align 1, !dbg !3127
  ret i8 %30, !dbg !3127
}

; Function Attrs: nounwind uwtable
define signext i8 @Hostinfo_GetMemoryInfoInPages(i32*, i32*, i32*) #0 !dbg !3128 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !3129, metadata !752), !dbg !3130
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3131, metadata !752), !dbg !3132
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3133, metadata !752), !dbg !3134
  %7 = load i32*, i32** %4, align 8, !dbg !3135
  %8 = load i32*, i32** %5, align 8, !dbg !3136
  %9 = load i32*, i32** %6, align 8, !dbg !3137
  %10 = call signext i8 @HostinfoGetLinuxMemoryInfoInPages(i32* %7, i32* %8, i32* %9), !dbg !3138
  ret i8 %10, !dbg !3139
}

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_GetModulePath(i32) #0 !dbg !3140 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3141, metadata !752), !dbg !3142
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3143, metadata !752), !dbg !3144
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3145, metadata !752), !dbg !3146
  store i32 -1, i32* %5, align 4, !dbg !3146
  %6 = load i32, i32* %3, align 4, !dbg !3147
  %7 = icmp ne i32 %6, 0, !dbg !3149
  br i1 %7, label %8, label %12, !dbg !3150

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !3151
  %10 = icmp ne i32 %9, 1, !dbg !3153
  br i1 %10, label %11, label %12, !dbg !3154

; <label>:11:                                     ; preds = %8
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.Hostinfo_GetModulePath, i32 0, i32 0)), !dbg !3155
  store i8* null, i8** %2, align 8, !dbg !3157
  br label %32, !dbg !3157

; <label>:12:                                     ; preds = %8, %1
  %13 = load i32, i32* %3, align 4, !dbg !3158
  %14 = icmp eq i32 %13, 0, !dbg !3160
  br i1 %14, label %15, label %17, !dbg !3161

; <label>:15:                                     ; preds = %12
  %16 = call i32 @Id_BeginSuperUser(), !dbg !3162
  store i32 %16, i32* %5, align 4, !dbg !3164
  br label %17, !dbg !3165

; <label>:17:                                     ; preds = %15, %12
  %18 = call i8* @Posix_ReadLink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0)), !dbg !3166
  store i8* %18, i8** %4, align 8, !dbg !3167
  %19 = load i32, i32* %3, align 4, !dbg !3168
  %20 = icmp eq i32 %19, 0, !dbg !3170
  br i1 %20, label %21, label %23, !dbg !3171

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %5, align 4, !dbg !3172
  call void @Id_EndSuperUser(i32 %22), !dbg !3174
  br label %23, !dbg !3175

; <label>:23:                                     ; preds = %21, %17
  %24 = load i8*, i8** %4, align 8, !dbg !3176
  %25 = icmp eq i8* %24, null, !dbg !3178
  br i1 %25, label %26, label %30, !dbg !3179

; <label>:26:                                     ; preds = %23
  %27 = call i32* @__errno_location() #1, !dbg !3180
  %28 = load i32, i32* %27, align 4, !dbg !3182
  %29 = call i8* @Err_Errno2String(i32 %28), !dbg !3183
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.Hostinfo_GetModulePath, i32 0, i32 0), i8* %29), !dbg !3185
  br label %30, !dbg !3186

; <label>:30:                                     ; preds = %26, %23
  %31 = load i8*, i8** %4, align 8, !dbg !3187
  store i8* %31, i8** %2, align 8, !dbg !3188
  br label %32, !dbg !3188

; <label>:32:                                     ; preds = %30, %11
  %33 = load i8*, i8** %2, align 8, !dbg !3189
  ret i8* %33, !dbg !3189
}

declare i32 @Id_BeginSuperUser() #5

declare i8* @Posix_ReadLink(i8*) #5

declare void @Id_EndSuperUser(i32) #5

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_GetLibraryPath(i8*) #0 !dbg !3190 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Dl_info, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3193, metadata !752), !dbg !3194
  call void @llvm.dbg.declare(metadata %struct.Dl_info* %4, metadata !3195, metadata !752), !dbg !3204
  %5 = load i8*, i8** %3, align 8, !dbg !3205
  %6 = call i32 @dladdr(i8* %5, %struct.Dl_info* %4) #10, !dbg !3207
  %7 = icmp ne i32 %6, 0, !dbg !3207
  br i1 %7, label %8, label %12, !dbg !3208

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.Dl_info, %struct.Dl_info* %4, i32 0, i32 0, !dbg !3209
  %10 = load i8*, i8** %9, align 8, !dbg !3209
  %11 = call i8* @Unicode_Alloc(i8* %10, i32 -1), !dbg !3211
  store i8* %11, i8** %2, align 8, !dbg !3212
  br label %13, !dbg !3212

; <label>:12:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !3213
  br label %13, !dbg !3213

; <label>:13:                                     ; preds = %12, %8
  %14 = load i8*, i8** %2, align 8, !dbg !3214
  ret i8* %14, !dbg !3214
}

; Function Attrs: nounwind
declare i32 @dladdr(i8*, %struct.Dl_info*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #2 !dbg !3215 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3220, metadata !752), !dbg !3221
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3222, metadata !752), !dbg !3223
  %5 = load i8*, i8** %3, align 8, !dbg !3224
  %6 = load i32, i32* %4, align 4, !dbg !3225
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !3226
  ret i8* %7, !dbg !3227
}

; Function Attrs: nounwind uwtable
define i32 @Hostinfo_QueryProcessExistence(i32) #0 !dbg !3228 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3232, metadata !752), !dbg !3233
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3234, metadata !752), !dbg !3235
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3236, metadata !752), !dbg !3237
  %5 = load i32, i32* %2, align 4, !dbg !3238
  %6 = call i32 @kill(i32 %5, i32 0) #10, !dbg !3239
  %7 = icmp eq i32 %6, -1, !dbg !3240
  br i1 %7, label %8, label %11, !dbg !3241

; <label>:8:                                      ; preds = %1
  %9 = call i32* @__errno_location() #1, !dbg !3242
  %10 = load i32, i32* %9, align 4, !dbg !3244
  br label %12, !dbg !3245

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !3246

; <label>:12:                                     ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 0, %11 ], !dbg !3248
  store i32 %13, i32* %4, align 4, !dbg !3250
  %14 = load i32, i32* %4, align 4, !dbg !3251
  switch i32 %14, label %17 [
    i32 0, label %15
    i32 1, label %15
    i32 3, label %16
  ], !dbg !3252

; <label>:15:                                     ; preds = %12, %12
  store i32 1, i32* %3, align 4, !dbg !3253
  br label %18, !dbg !3255

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !3256
  br label %18, !dbg !3257

; <label>:17:                                     ; preds = %12
  store i32 2, i32* %3, align 4, !dbg !3258
  br label %18, !dbg !3259

; <label>:18:                                     ; preds = %17, %16, %15
  %19 = load i32, i32* %3, align 4, !dbg !3260
  ret i32 %19, !dbg !3261
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

declare i8* @UtilSafeCalloc0(i64, i64) #5

declare i8* @UtilSafeStrndup0(i8*, i64) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !3262 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !3267, metadata !752), !dbg !3268
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3269, metadata !752), !dbg !3270
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !3271
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !3272
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #10, !dbg !3273, !srcloc !3274
  store i64 %6, i64* %3, align 8, !dbg !3273
  %7 = load i64, i64* %3, align 8, !dbg !3275
  ret i64 %7, !dbg !3276
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoLsb(i8*, i64) #0 !dbg !3277 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3280, metadata !752), !dbg !3281
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3282, metadata !752), !dbg !3283
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3284, metadata !752), !dbg !3285
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3286, metadata !752), !dbg !3287
  store i8 0, i8* %6, align 1, !dbg !3287
  %10 = call i8* @HostinfoGetCmdOutput(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0)), !dbg !3288
  store i8* %10, i8** %5, align 8, !dbg !3289
  %11 = load i8*, i8** %5, align 8, !dbg !3290
  %12 = icmp eq i8* %11, null, !dbg !3292
  br i1 %12, label %13, label %46, !dbg !3293

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3294, metadata !752), !dbg !3296
  store i32 0, i32* %7, align 4, !dbg !3297
  br label %14, !dbg !3299

; <label>:14:                                     ; preds = %34, %13
  %15 = load i32, i32* %7, align 4, !dbg !3300
  %16 = sext i32 %15 to i64, !dbg !3303
  %17 = getelementptr inbounds [41 x %struct.DistroInfo], [41 x %struct.DistroInfo]* @distroArray, i64 0, i64 %16, !dbg !3303
  %18 = getelementptr inbounds %struct.DistroInfo, %struct.DistroInfo* %17, i32 0, i32 1, !dbg !3304
  %19 = load i8*, i8** %18, align 8, !dbg !3304
  %20 = icmp ne i8* %19, null, !dbg !3305
  br i1 %20, label %21, label %37, !dbg !3306

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %7, align 4, !dbg !3307
  %23 = sext i32 %22 to i64, !dbg !3310
  %24 = getelementptr inbounds [41 x %struct.DistroInfo], [41 x %struct.DistroInfo]* @distroArray, i64 0, i64 %23, !dbg !3310
  %25 = getelementptr inbounds %struct.DistroInfo, %struct.DistroInfo* %24, i32 0, i32 1, !dbg !3311
  %26 = load i8*, i8** %25, align 8, !dbg !3311
  %27 = load i64, i64* %4, align 8, !dbg !3312
  %28 = trunc i64 %27 to i32, !dbg !3312
  %29 = load i8*, i8** %3, align 8, !dbg !3313
  %30 = call signext i8 @HostinfoReadDistroFile(i8 signext 0, i8* %26, %struct.DistroNameScan* getelementptr inbounds ([5 x %struct.DistroNameScan], [5 x %struct.DistroNameScan]* @lsbFields, i64 0, i64 0), i32 %28, i8* %29), !dbg !3314
  %31 = icmp ne i8 %30, 0, !dbg !3314
  br i1 %31, label %32, label %33, !dbg !3315

; <label>:32:                                     ; preds = %21
  store i8 1, i8* %6, align 1, !dbg !3316
  br label %37, !dbg !3318

; <label>:33:                                     ; preds = %21
  br label %34, !dbg !3319

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %7, align 4, !dbg !3320
  %36 = add nsw i32 %35, 1, !dbg !3320
  store i32 %36, i32* %7, align 4, !dbg !3320
  br label %14, !dbg !3322, !llvm.loop !3323

; <label>:37:                                     ; preds = %32, %14
  %38 = load i32, i32* %7, align 4, !dbg !3325
  %39 = sext i32 %38 to i64, !dbg !3327
  %40 = getelementptr inbounds [41 x %struct.DistroInfo], [41 x %struct.DistroInfo]* @distroArray, i64 0, i64 %39, !dbg !3327
  %41 = getelementptr inbounds %struct.DistroInfo, %struct.DistroInfo* %40, i32 0, i32 1, !dbg !3328
  %42 = load i8*, i8** %41, align 8, !dbg !3328
  %43 = icmp eq i8* %42, null, !dbg !3329
  br i1 %43, label %44, label %45, !dbg !3330

; <label>:44:                                     ; preds = %37
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.HostinfoLsb, i32 0, i32 0)), !dbg !3331
  br label %45, !dbg !3333

; <label>:45:                                     ; preds = %44, %37
  br label %69, !dbg !3334

; <label>:46:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3335, metadata !752), !dbg !3337
  %47 = load i8*, i8** %5, align 8, !dbg !3338
  store i8* %47, i8** %8, align 8, !dbg !3337
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3339, metadata !752), !dbg !3340
  store i8* null, i8** %9, align 8, !dbg !3340
  %48 = load i8*, i8** %8, align 8, !dbg !3341
  %49 = getelementptr inbounds i8, i8* %48, i64 0, !dbg !3341
  %50 = load i8, i8* %49, align 1, !dbg !3341
  %51 = sext i8 %50 to i32, !dbg !3341
  %52 = icmp eq i32 %51, 34, !dbg !3343
  br i1 %52, label %53, label %63, !dbg !3344

; <label>:53:                                     ; preds = %46
  %54 = load i8*, i8** %8, align 8, !dbg !3345
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !3345
  store i8* %55, i8** %8, align 8, !dbg !3345
  %56 = load i8*, i8** %8, align 8, !dbg !3347
  %57 = call i8* @strchr(i8* %56, i32 34) #12, !dbg !3348
  store i8* %57, i8** %9, align 8, !dbg !3349
  %58 = load i8*, i8** %9, align 8, !dbg !3350
  %59 = icmp ne i8* %58, null, !dbg !3350
  br i1 %59, label %60, label %62, !dbg !3352

; <label>:60:                                     ; preds = %53
  %61 = load i8*, i8** %9, align 8, !dbg !3353
  store i8 0, i8* %61, align 1, !dbg !3355
  br label %62, !dbg !3356

; <label>:62:                                     ; preds = %60, %53
  br label %63, !dbg !3357

; <label>:63:                                     ; preds = %62, %46
  %64 = load i8*, i8** %3, align 8, !dbg !3358
  %65 = load i8*, i8** %8, align 8, !dbg !3359
  %66 = load i64, i64* %4, align 8, !dbg !3360
  %67 = call i8* @Str_Strcpy(i8* %64, i8* %65, i64 %66), !dbg !3361
  %68 = load i8*, i8** %5, align 8, !dbg !3362
  call void @free(i8* %68) #10, !dbg !3363
  store i8 1, i8* %6, align 1, !dbg !3364
  br label %69

; <label>:69:                                     ; preds = %63, %45
  %70 = load i8, i8* %6, align 1, !dbg !3365
  ret i8 %70, !dbg !3366
}

; Function Attrs: nounwind uwtable
define internal void @HostinfoDefaultLinux(i8*, i64, i8*, i64) #0 !dbg !3367 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3370, metadata !752), !dbg !3371
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3372, metadata !752), !dbg !3373
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3374, metadata !752), !dbg !3375
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3376, metadata !752), !dbg !3377
  call void @llvm.dbg.declare(metadata [128 x i8]* %9, metadata !3378, metadata !752), !dbg !3379
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3380, metadata !752), !dbg !3381
  store i8* null, i8** %10, align 8, !dbg !3381
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3382, metadata !752), !dbg !3383
  store i8* null, i8** %11, align 8, !dbg !3383
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3384, metadata !752), !dbg !3385
  %14 = call i32 @Hostinfo_OSVersion(i32 0), !dbg !3386
  store i32 %14, i32* %12, align 4, !dbg !3385
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3387, metadata !752), !dbg !3388
  %15 = call i32 @Hostinfo_OSVersion(i32 1), !dbg !3389
  store i32 %15, i32* %13, align 4, !dbg !3388
  %16 = load i32, i32* %12, align 4, !dbg !3390
  switch i32 %16, label %31 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %29
    i32 4, label %30
  ], !dbg !3391

; <label>:17:                                     ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8** %10, align 8, !dbg !3392
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8** %11, align 8, !dbg !3394
  br label %37, !dbg !3395

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %13, align 4, !dbg !3396
  %20 = icmp slt i32 %19, 4, !dbg !3398
  br i1 %20, label %21, label %22, !dbg !3399

; <label>:21:                                     ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8** %10, align 8, !dbg !3400
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8** %11, align 8, !dbg !3402
  br label %28, !dbg !3403

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %13, align 4, !dbg !3404
  %24 = icmp slt i32 %23, 6, !dbg !3407
  br i1 %24, label %25, label %26, !dbg !3404

; <label>:25:                                     ; preds = %22
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.154, i32 0, i32 0), i8** %10, align 8, !dbg !3408
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0), i8** %11, align 8, !dbg !3410
  br label %27, !dbg !3411

; <label>:26:                                     ; preds = %22
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.156, i32 0, i32 0), i8** %10, align 8, !dbg !3412
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.157, i32 0, i32 0), i8** %11, align 8, !dbg !3414
  br label %27

; <label>:27:                                     ; preds = %26, %25
  br label %28

; <label>:28:                                     ; preds = %27, %21
  br label %37, !dbg !3415

; <label>:29:                                     ; preds = %4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.158, i32 0, i32 0), i8** %10, align 8, !dbg !3416
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i32 0, i32 0), i8** %11, align 8, !dbg !3417
  br label %37, !dbg !3418

; <label>:30:                                     ; preds = %4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.160, i32 0, i32 0), i8** %10, align 8, !dbg !3419
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), i8** %11, align 8, !dbg !3420
  br label %37, !dbg !3421

; <label>:31:                                     ; preds = %4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !3422
  %33 = load i32, i32* %12, align 4, !dbg !3423
  %34 = load i32, i32* %13, align 4, !dbg !3424
  %35 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %32, i64 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.162, i32 0, i32 0), i32 %33, i32 %34), !dbg !3425
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0, !dbg !3426
  store i8* %36, i8** %10, align 8, !dbg !3427
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), i8** %11, align 8, !dbg !3428
  br label %37, !dbg !3429

; <label>:37:                                     ; preds = %31, %30, %29, %28, %17
  %38 = load i8*, i8** %5, align 8, !dbg !3430
  %39 = icmp ne i8* %38, null, !dbg !3432
  br i1 %39, label %40, label %45, !dbg !3433

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %5, align 8, !dbg !3434
  %42 = load i8*, i8** %10, align 8, !dbg !3436
  %43 = load i64, i64* %6, align 8, !dbg !3437
  %44 = call i8* @Str_Strcpy(i8* %41, i8* %42, i64 %43), !dbg !3438
  br label %45, !dbg !3439

; <label>:45:                                     ; preds = %40, %37
  %46 = load i8*, i8** %7, align 8, !dbg !3440
  %47 = icmp ne i8* %46, null, !dbg !3442
  br i1 %47, label %48, label %53, !dbg !3443

; <label>:48:                                     ; preds = %45
  %49 = load i8*, i8** %7, align 8, !dbg !3444
  %50 = load i8*, i8** %11, align 8, !dbg !3446
  %51 = load i64, i64* %8, align 8, !dbg !3447
  %52 = call i8* @Str_Strcpy(i8* %49, i8* %50, i64 %51), !dbg !3448
  br label %53, !dbg !3449

; <label>:53:                                     ; preds = %48, %45
  ret void, !dbg !3450
}

; Function Attrs: nounwind uwtable
define internal void @HostinfoGetOSShortName(i8*, i8*, i32) #0 !dbg !3451 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3454, metadata !752), !dbg !3455
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3456, metadata !752), !dbg !3457
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3458, metadata !752), !dbg !3459
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3460, metadata !752), !dbg !3461
  %11 = load i8*, i8** %4, align 8, !dbg !3462
  %12 = call i8* @UtilSafeStrdup0(i8* %11), !dbg !3463
  store i8* %12, i8** %7, align 8, !dbg !3461
  %13 = load i8*, i8** %7, align 8, !dbg !3464
  %14 = call i8* @Str_ToLower(i8* %13), !dbg !3465
  store i8* %14, i8** %7, align 8, !dbg !3466
  %15 = load i8*, i8** %7, align 8, !dbg !3467
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i32 0, i32 0)) #12, !dbg !3469
  %17 = icmp ne i8* %16, null, !dbg !3469
  br i1 %17, label %18, label %54, !dbg !3470

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %7, align 8, !dbg !3471
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0)) #12, !dbg !3474
  %21 = icmp ne i8* %20, null, !dbg !3474
  br i1 %21, label %22, label %48, !dbg !3475

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3476, metadata !752), !dbg !3478
  store i32 0, i32* %8, align 4, !dbg !3478
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3479, metadata !752), !dbg !3480
  %23 = load i8*, i8** %7, align 8, !dbg !3481
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0)) #12, !dbg !3482
  store i8* %24, i8** %9, align 8, !dbg !3480
  %25 = load i8*, i8** %9, align 8, !dbg !3483
  %26 = icmp ne i8* %25, null, !dbg !3485
  br i1 %26, label %27, label %39, !dbg !3486

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %9, align 8, !dbg !3487
  %29 = call i32 (i8*, i8*, ...) @sscanf(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), i32* %8) #10, !dbg !3489
  %30 = load i32, i32* %8, align 4, !dbg !3490
  %31 = icmp sgt i32 %30, 0, !dbg !3492
  br i1 %31, label %32, label %38, !dbg !3493

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %5, align 8, !dbg !3494
  %34 = load i32, i32* %6, align 4, !dbg !3496
  %35 = sext i32 %34 to i64, !dbg !3496
  %36 = load i32, i32* %8, align 4, !dbg !3497
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %33, i64 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i32 %36) #10, !dbg !3498
  br label %38, !dbg !3499

; <label>:38:                                     ; preds = %32, %27
  br label %39, !dbg !3500

; <label>:39:                                     ; preds = %38, %22
  %40 = load i32, i32* %8, align 4, !dbg !3501
  %41 = icmp sle i32 %40, 0, !dbg !3503
  br i1 %41, label %42, label %47, !dbg !3504

; <label>:42:                                     ; preds = %39
  %43 = load i8*, i8** %5, align 8, !dbg !3505
  %44 = load i32, i32* %6, align 4, !dbg !3507
  %45 = sext i32 %44 to i64, !dbg !3507
  %46 = call i8* @Str_Strcpy(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), i64 %45), !dbg !3508
  br label %47, !dbg !3509

; <label>:47:                                     ; preds = %42, %39
  br label %53, !dbg !3510

; <label>:48:                                     ; preds = %18
  %49 = load i8*, i8** %5, align 8, !dbg !3511
  %50 = load i32, i32* %6, align 4, !dbg !3513
  %51 = sext i32 %50 to i64, !dbg !3513
  %52 = call i8* @Str_Strcpy(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i64 %51), !dbg !3514
  br label %53

; <label>:53:                                     ; preds = %48, %47
  br label %681, !dbg !3515

; <label>:54:                                     ; preds = %3
  %55 = load i8*, i8** %7, align 8, !dbg !3516
  %56 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0)) #12, !dbg !3519
  %57 = icmp ne i8* %56, null, !dbg !3519
  br i1 %57, label %58, label %63, !dbg !3519

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %5, align 8, !dbg !3520
  %60 = load i32, i32* %6, align 4, !dbg !3522
  %61 = sext i32 %60 to i64, !dbg !3522
  %62 = call i8* @Str_Strcpy(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i64 %61), !dbg !3523
  br label %680, !dbg !3524

; <label>:63:                                     ; preds = %54
  %64 = load i8*, i8** %7, align 8, !dbg !3525
  %65 = call i8* @strstr(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0)) #12, !dbg !3528
  %66 = icmp ne i8* %65, null, !dbg !3528
  br i1 %66, label %67, label %162, !dbg !3528

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** %7, align 8, !dbg !3529
  %69 = call i8* @strstr(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0)) #12, !dbg !3532
  %70 = icmp ne i8* %69, null, !dbg !3532
  br i1 %70, label %71, label %136, !dbg !3533

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %7, align 8, !dbg !3534
  %73 = call i8* @strstr(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0)) #12, !dbg !3537
  %74 = icmp ne i8* %73, null, !dbg !3537
  br i1 %74, label %79, label %75, !dbg !3538

; <label>:75:                                     ; preds = %71
  %76 = load i8*, i8** %7, align 8, !dbg !3539
  %77 = call i8* @strstr(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i32 0, i32 0)) #12, !dbg !3540
  %78 = icmp ne i8* %77, null, !dbg !3540
  br i1 %78, label %79, label %84, !dbg !3541

; <label>:79:                                     ; preds = %75, %71
  %80 = load i8*, i8** %5, align 8, !dbg !3543
  %81 = load i32, i32* %6, align 4, !dbg !3545
  %82 = sext i32 %81 to i64, !dbg !3545
  %83 = call i8* @Str_Strcpy(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i64 %82), !dbg !3546
  br label %135, !dbg !3547

; <label>:84:                                     ; preds = %75
  %85 = load i8*, i8** %7, align 8, !dbg !3548
  %86 = call i8* @strstr(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i32 0, i32 0)) #12, !dbg !3551
  %87 = icmp ne i8* %86, null, !dbg !3551
  br i1 %87, label %96, label %88, !dbg !3552

; <label>:88:                                     ; preds = %84
  %89 = load i8*, i8** %7, align 8, !dbg !3553
  %90 = call i8* @strstr(i8* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.176, i32 0, i32 0)) #12, !dbg !3554
  %91 = icmp ne i8* %90, null, !dbg !3554
  br i1 %91, label %96, label %92, !dbg !3555

; <label>:92:                                     ; preds = %88
  %93 = load i8*, i8** %7, align 8, !dbg !3556
  %94 = call i8* @strstr(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0)) #12, !dbg !3557
  %95 = icmp ne i8* %94, null, !dbg !3557
  br i1 %95, label %96, label %101, !dbg !3558

; <label>:96:                                     ; preds = %92, %88, %84
  %97 = load i8*, i8** %5, align 8, !dbg !3560
  %98 = load i32, i32* %6, align 4, !dbg !3562
  %99 = sext i32 %98 to i64, !dbg !3562
  %100 = call i8* @Str_Strcpy(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i64 %99), !dbg !3563
  br label %134, !dbg !3564

; <label>:101:                                    ; preds = %92
  %102 = load i8*, i8** %7, align 8, !dbg !3565
  %103 = call i8* @strstr(i8* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i32 0, i32 0)) #12, !dbg !3568
  %104 = icmp ne i8* %103, null, !dbg !3568
  br i1 %104, label %109, label %105, !dbg !3569

; <label>:105:                                    ; preds = %101
  %106 = load i8*, i8** %7, align 8, !dbg !3570
  %107 = call i8* @strstr(i8* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.180, i32 0, i32 0)) #12, !dbg !3571
  %108 = icmp ne i8* %107, null, !dbg !3571
  br i1 %108, label %109, label %114, !dbg !3572

; <label>:109:                                    ; preds = %105, %101
  %110 = load i8*, i8** %5, align 8, !dbg !3574
  %111 = load i32, i32* %6, align 4, !dbg !3576
  %112 = sext i32 %111 to i64, !dbg !3576
  %113 = call i8* @Str_Strcpy(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i32 0, i32 0), i64 %112), !dbg !3577
  br label %133, !dbg !3578

; <label>:114:                                    ; preds = %105
  %115 = load i8*, i8** %7, align 8, !dbg !3579
  %116 = call i8* @strstr(i8* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.182, i32 0, i32 0)) #12, !dbg !3582
  %117 = icmp ne i8* %116, null, !dbg !3582
  br i1 %117, label %122, label %118, !dbg !3583

; <label>:118:                                    ; preds = %114
  %119 = load i8*, i8** %7, align 8, !dbg !3584
  %120 = call i8* @strstr(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0)) #12, !dbg !3585
  %121 = icmp ne i8* %120, null, !dbg !3585
  br i1 %121, label %122, label %127, !dbg !3586

; <label>:122:                                    ; preds = %118, %114
  %123 = load i8*, i8** %5, align 8, !dbg !3588
  %124 = load i32, i32* %6, align 4, !dbg !3590
  %125 = sext i32 %124 to i64, !dbg !3590
  %126 = call i8* @Str_Strcpy(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), i64 %125), !dbg !3591
  br label %132, !dbg !3592

; <label>:127:                                    ; preds = %118
  %128 = load i8*, i8** %5, align 8, !dbg !3593
  %129 = load i32, i32* %6, align 4, !dbg !3595
  %130 = sext i32 %129 to i64, !dbg !3595
  %131 = call i8* @Str_Strcpy(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i64 %130), !dbg !3596
  br label %132

; <label>:132:                                    ; preds = %127, %122
  br label %133

; <label>:133:                                    ; preds = %132, %109
  br label %134

; <label>:134:                                    ; preds = %133, %96
  br label %135

; <label>:135:                                    ; preds = %134, %79
  br label %161, !dbg !3597

; <label>:136:                                    ; preds = %67
  %137 = load i8*, i8** %7, align 8, !dbg !3598
  %138 = call i8* @strstr(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0)) #12, !dbg !3601
  %139 = icmp ne i8* %138, null, !dbg !3601
  br i1 %139, label %140, label %145, !dbg !3601

; <label>:140:                                    ; preds = %136
  %141 = load i8*, i8** %5, align 8, !dbg !3602
  %142 = load i32, i32* %6, align 4, !dbg !3604
  %143 = sext i32 %142 to i64, !dbg !3604
  %144 = call i8* @Str_Strcpy(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), i64 %143), !dbg !3605
  br label %160, !dbg !3606

; <label>:145:                                    ; preds = %136
  %146 = load i8*, i8** %7, align 8, !dbg !3607
  %147 = call i8* @strstr(i8* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i32 0, i32 0)) #12, !dbg !3610
  %148 = icmp ne i8* %147, null, !dbg !3610
  br i1 %148, label %149, label %154, !dbg !3610

; <label>:149:                                    ; preds = %145
  %150 = load i8*, i8** %5, align 8, !dbg !3611
  %151 = load i32, i32* %6, align 4, !dbg !3613
  %152 = sext i32 %151 to i64, !dbg !3613
  %153 = call i8* @Str_Strcpy(i8* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), i64 %152), !dbg !3614
  br label %159, !dbg !3615

; <label>:154:                                    ; preds = %145
  %155 = load i8*, i8** %5, align 8, !dbg !3616
  %156 = load i32, i32* %6, align 4, !dbg !3618
  %157 = sext i32 %156 to i64, !dbg !3618
  %158 = call i8* @Str_Strcpy(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), i64 %157), !dbg !3619
  br label %159

; <label>:159:                                    ; preds = %154, %149
  br label %160

; <label>:160:                                    ; preds = %159, %140
  br label %161

; <label>:161:                                    ; preds = %160, %135
  br label %679, !dbg !3620

; <label>:162:                                    ; preds = %63
  %163 = load i8*, i8** %7, align 8, !dbg !3621
  %164 = call i8* @strstr(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0)) #12, !dbg !3624
  %165 = icmp ne i8* %164, null, !dbg !3624
  br i1 %165, label %166, label %171, !dbg !3624

; <label>:166:                                    ; preds = %162
  %167 = load i8*, i8** %5, align 8, !dbg !3625
  %168 = load i32, i32* %6, align 4, !dbg !3627
  %169 = sext i32 %168 to i64, !dbg !3627
  %170 = call i8* @Str_Strcpy(i8* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0), i64 %169), !dbg !3628
  br label %678, !dbg !3629

; <label>:171:                                    ; preds = %162
  %172 = load i8*, i8** %7, align 8, !dbg !3630
  %173 = call i8* @strstr(i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0)) #12, !dbg !3633
  %174 = icmp ne i8* %173, null, !dbg !3633
  br i1 %174, label %175, label %180, !dbg !3633

; <label>:175:                                    ; preds = %171
  %176 = load i8*, i8** %5, align 8, !dbg !3634
  %177 = load i32, i32* %6, align 4, !dbg !3636
  %178 = sext i32 %177 to i64, !dbg !3636
  %179 = call i8* @Str_Strcpy(i8* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0), i64 %178), !dbg !3637
  br label %677, !dbg !3638

; <label>:180:                                    ; preds = %171
  %181 = load i8*, i8** %7, align 8, !dbg !3639
  %182 = call i8* @strstr(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0)) #12, !dbg !3642
  %183 = icmp ne i8* %182, null, !dbg !3642
  br i1 %183, label %184, label %189, !dbg !3642

; <label>:184:                                    ; preds = %180
  %185 = load i8*, i8** %5, align 8, !dbg !3643
  %186 = load i32, i32* %6, align 4, !dbg !3645
  %187 = sext i32 %186 to i64, !dbg !3645
  %188 = call i8* @Str_Strcpy(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), i64 %187), !dbg !3646
  br label %676, !dbg !3647

; <label>:189:                                    ; preds = %180
  %190 = load i8*, i8** %7, align 8, !dbg !3648
  %191 = call i8* @strstr(i8* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0)) #12, !dbg !3651
  %192 = icmp ne i8* %191, null, !dbg !3651
  br i1 %192, label %193, label %204, !dbg !3651

; <label>:193:                                    ; preds = %189
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3652, metadata !752), !dbg !3654
  store i32 0, i32* %10, align 4, !dbg !3654
  %194 = load i8*, i8** %7, align 8, !dbg !3655
  %195 = call i32 (i8*, i8*, ...) @sscanf(i8* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.193, i32 0, i32 0), i32* %10) #10, !dbg !3657
  %196 = icmp ne i32 %195, 1, !dbg !3658
  br i1 %196, label %197, label %198, !dbg !3659

; <label>:197:                                    ; preds = %193
  store i32 2, i32* %10, align 4, !dbg !3660
  br label %198, !dbg !3662

; <label>:198:                                    ; preds = %197, %193
  %199 = load i8*, i8** %5, align 8, !dbg !3663
  %200 = load i32, i32* %6, align 4, !dbg !3664
  %201 = sext i32 %200 to i64, !dbg !3664
  %202 = load i32, i32* %10, align 4, !dbg !3665
  %203 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %199, i64 %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.195, i32 0, i32 0), i32 %202), !dbg !3666
  br label %675, !dbg !3667

; <label>:204:                                    ; preds = %189
  %205 = load i8*, i8** %7, align 8, !dbg !3668
  %206 = call i8* @strstr(i8* %205, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0)) #12, !dbg !3671
  %207 = icmp ne i8* %206, null, !dbg !3671
  br i1 %207, label %208, label %213, !dbg !3671

; <label>:208:                                    ; preds = %204
  %209 = load i8*, i8** %5, align 8, !dbg !3672
  %210 = load i32, i32* %6, align 4, !dbg !3674
  %211 = sext i32 %210 to i64, !dbg !3674
  %212 = call i8* @Str_Strcpy(i8* %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i64 %211), !dbg !3675
  br label %674, !dbg !3676

; <label>:213:                                    ; preds = %204
  %214 = load i8*, i8** %7, align 8, !dbg !3677
  %215 = call i8* @strstr(i8* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i32 0, i32 0)) #12, !dbg !3680
  %216 = icmp ne i8* %215, null, !dbg !3680
  br i1 %216, label %217, label %222, !dbg !3680

; <label>:217:                                    ; preds = %213
  %218 = load i8*, i8** %5, align 8, !dbg !3681
  %219 = load i32, i32* %6, align 4, !dbg !3683
  %220 = sext i32 %219 to i64, !dbg !3683
  %221 = call i8* @Str_Strcpy(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i64 %220), !dbg !3684
  br label %673, !dbg !3685

; <label>:222:                                    ; preds = %213
  %223 = load i8*, i8** %7, align 8, !dbg !3686
  %224 = call i8* @strstr(i8* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0)) #12, !dbg !3689
  %225 = icmp ne i8* %224, null, !dbg !3689
  br i1 %225, label %226, label %231, !dbg !3689

; <label>:226:                                    ; preds = %222
  %227 = load i8*, i8** %5, align 8, !dbg !3690
  %228 = load i32, i32* %6, align 4, !dbg !3692
  %229 = sext i32 %228 to i64, !dbg !3692
  %230 = call i8* @Str_Strcpy(i8* %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i64 %229), !dbg !3693
  br label %672, !dbg !3694

; <label>:231:                                    ; preds = %222
  %232 = load i8*, i8** %7, align 8, !dbg !3695
  %233 = call i8* @strstr(i8* %232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.199, i32 0, i32 0)) #12, !dbg !3698
  %234 = icmp ne i8* %233, null, !dbg !3698
  br i1 %234, label %239, label %235, !dbg !3699

; <label>:235:                                    ; preds = %231
  %236 = load i8*, i8** %7, align 8, !dbg !3700
  %237 = call i8* @strstr(i8* %236, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.200, i32 0, i32 0)) #12, !dbg !3701
  %238 = icmp ne i8* %237, null, !dbg !3701
  br i1 %238, label %239, label %244, !dbg !3702

; <label>:239:                                    ; preds = %235, %231
  %240 = load i8*, i8** %5, align 8, !dbg !3704
  %241 = load i32, i32* %6, align 4, !dbg !3706
  %242 = sext i32 %241 to i64, !dbg !3706
  %243 = call i8* @Str_Strcpy(i8* %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.201, i32 0, i32 0), i64 %242), !dbg !3707
  br label %671, !dbg !3708

; <label>:244:                                    ; preds = %235
  %245 = load i8*, i8** %7, align 8, !dbg !3709
  %246 = call i8* @strstr(i8* %245, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0)) #12, !dbg !3712
  %247 = icmp ne i8* %246, null, !dbg !3712
  br i1 %247, label %252, label %248, !dbg !3713

; <label>:248:                                    ; preds = %244
  %249 = load i8*, i8** %7, align 8, !dbg !3714
  %250 = call i8* @strstr(i8* %249, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.203, i32 0, i32 0)) #12, !dbg !3715
  %251 = icmp ne i8* %250, null, !dbg !3715
  br i1 %251, label %252, label %257, !dbg !3716

; <label>:252:                                    ; preds = %248, %244
  %253 = load i8*, i8** %5, align 8, !dbg !3718
  %254 = load i32, i32* %6, align 4, !dbg !3720
  %255 = sext i32 %254 to i64, !dbg !3720
  %256 = call i8* @Str_Strcpy(i8* %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.204, i32 0, i32 0), i64 %255), !dbg !3721
  br label %670, !dbg !3722

; <label>:257:                                    ; preds = %248
  %258 = load i8*, i8** %7, align 8, !dbg !3723
  %259 = call i8* @strstr(i8* %258, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.205, i32 0, i32 0)) #12, !dbg !3726
  %260 = icmp ne i8* %259, null, !dbg !3726
  br i1 %260, label %265, label %261, !dbg !3727

; <label>:261:                                    ; preds = %257
  %262 = load i8*, i8** %7, align 8, !dbg !3728
  %263 = call i8* @strstr(i8* %262, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.206, i32 0, i32 0)) #12, !dbg !3729
  %264 = icmp ne i8* %263, null, !dbg !3729
  br i1 %264, label %265, label %270, !dbg !3730

; <label>:265:                                    ; preds = %261, %257
  %266 = load i8*, i8** %5, align 8, !dbg !3732
  %267 = load i32, i32* %6, align 4, !dbg !3734
  %268 = sext i32 %267 to i64, !dbg !3734
  %269 = call i8* @Str_Strcpy(i8* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.207, i32 0, i32 0), i64 %268), !dbg !3735
  br label %669, !dbg !3736

; <label>:270:                                    ; preds = %261
  %271 = load i8*, i8** %7, align 8, !dbg !3737
  %272 = call i8* @strstr(i8* %271, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.208, i32 0, i32 0)) #12, !dbg !3740
  %273 = icmp ne i8* %272, null, !dbg !3740
  br i1 %273, label %278, label %274, !dbg !3741

; <label>:274:                                    ; preds = %270
  %275 = load i8*, i8** %7, align 8, !dbg !3742
  %276 = call i8* @strstr(i8* %275, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.209, i32 0, i32 0)) #12, !dbg !3743
  %277 = icmp ne i8* %276, null, !dbg !3743
  br i1 %277, label %278, label %283, !dbg !3744

; <label>:278:                                    ; preds = %274, %270
  %279 = load i8*, i8** %5, align 8, !dbg !3746
  %280 = load i32, i32* %6, align 4, !dbg !3748
  %281 = sext i32 %280 to i64, !dbg !3748
  %282 = call i8* @Str_Strcpy(i8* %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.207, i32 0, i32 0), i64 %281), !dbg !3749
  br label %668, !dbg !3750

; <label>:283:                                    ; preds = %274
  %284 = load i8*, i8** %7, align 8, !dbg !3751
  %285 = call i8* @strstr(i8* %284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.210, i32 0, i32 0)) #12, !dbg !3754
  %286 = icmp ne i8* %285, null, !dbg !3754
  br i1 %286, label %291, label %287, !dbg !3755

; <label>:287:                                    ; preds = %283
  %288 = load i8*, i8** %7, align 8, !dbg !3756
  %289 = call i8* @strstr(i8* %288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.211, i32 0, i32 0)) #12, !dbg !3757
  %290 = icmp ne i8* %289, null, !dbg !3757
  br i1 %290, label %291, label %296, !dbg !3758

; <label>:291:                                    ; preds = %287, %283
  %292 = load i8*, i8** %5, align 8, !dbg !3760
  %293 = load i32, i32* %6, align 4, !dbg !3762
  %294 = sext i32 %293 to i64, !dbg !3762
  %295 = call i8* @Str_Strcpy(i8* %292, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), i64 %294), !dbg !3763
  br label %667, !dbg !3764

; <label>:296:                                    ; preds = %287
  %297 = load i8*, i8** %7, align 8, !dbg !3765
  %298 = call i8* @strstr(i8* %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.213, i32 0, i32 0)) #12, !dbg !3768
  %299 = icmp ne i8* %298, null, !dbg !3768
  br i1 %299, label %300, label %305, !dbg !3768

; <label>:300:                                    ; preds = %296
  %301 = load i8*, i8** %5, align 8, !dbg !3769
  %302 = load i32, i32* %6, align 4, !dbg !3771
  %303 = sext i32 %302 to i64, !dbg !3771
  %304 = call i8* @Str_Strcpy(i8* %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i64 %303), !dbg !3772
  br label %666, !dbg !3773

; <label>:305:                                    ; preds = %296
  %306 = load i8*, i8** %7, align 8, !dbg !3774
  %307 = call i8* @strstr(i8* %306, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.214, i32 0, i32 0)) #12, !dbg !3777
  %308 = icmp ne i8* %307, null, !dbg !3777
  br i1 %308, label %309, label %314, !dbg !3777

; <label>:309:                                    ; preds = %305
  %310 = load i8*, i8** %5, align 8, !dbg !3778
  %311 = load i32, i32* %6, align 4, !dbg !3780
  %312 = sext i32 %311 to i64, !dbg !3780
  %313 = call i8* @Str_Strcpy(i8* %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i64 %312), !dbg !3781
  br label %665, !dbg !3782

; <label>:314:                                    ; preds = %305
  %315 = load i8*, i8** %7, align 8, !dbg !3783
  %316 = call i8* @strstr(i8* %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.215, i32 0, i32 0)) #12, !dbg !3786
  %317 = icmp ne i8* %316, null, !dbg !3786
  br i1 %317, label %318, label %323, !dbg !3786

; <label>:318:                                    ; preds = %314
  %319 = load i8*, i8** %5, align 8, !dbg !3787
  %320 = load i32, i32* %6, align 4, !dbg !3789
  %321 = sext i32 %320 to i64, !dbg !3789
  %322 = call i8* @Str_Strcpy(i8* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i64 %321), !dbg !3790
  br label %664, !dbg !3791

; <label>:323:                                    ; preds = %314
  %324 = load i8*, i8** %7, align 8, !dbg !3792
  %325 = call signext i8 @StrUtil_StartsWith(i8* %324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i32 0, i32 0)), !dbg !3795
  %326 = icmp ne i8 %325, 0, !dbg !3795
  br i1 %326, label %327, label %362, !dbg !3795

; <label>:327:                                    ; preds = %323
  %328 = load i8*, i8** %7, align 8, !dbg !3796
  %329 = call i8* @strstr(i8* %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0)) #12, !dbg !3799
  %330 = icmp ne i8* %329, null, !dbg !3799
  br i1 %330, label %331, label %336, !dbg !3800

; <label>:331:                                    ; preds = %327
  %332 = load i8*, i8** %5, align 8, !dbg !3801
  %333 = load i32, i32* %6, align 4, !dbg !3803
  %334 = sext i32 %333 to i64, !dbg !3803
  %335 = call i8* @Str_Strcpy(i8* %332, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.218, i32 0, i32 0), i64 %334), !dbg !3804
  br label %361, !dbg !3805

; <label>:336:                                    ; preds = %327
  %337 = load i8*, i8** %7, align 8, !dbg !3806
  %338 = call i8* @strstr(i8* %337, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0)) #12, !dbg !3809
  %339 = icmp ne i8* %338, null, !dbg !3809
  br i1 %339, label %340, label %345, !dbg !3809

; <label>:340:                                    ; preds = %336
  %341 = load i8*, i8** %5, align 8, !dbg !3810
  %342 = load i32, i32* %6, align 4, !dbg !3812
  %343 = sext i32 %342 to i64, !dbg !3812
  %344 = call i8* @Str_Strcpy(i8* %341, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i64 %343), !dbg !3813
  br label %360, !dbg !3814

; <label>:345:                                    ; preds = %336
  %346 = load i8*, i8** %7, align 8, !dbg !3815
  %347 = call i8* @strstr(i8* %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.221, i32 0, i32 0)) #12, !dbg !3818
  %348 = icmp ne i8* %347, null, !dbg !3818
  br i1 %348, label %349, label %354, !dbg !3818

; <label>:349:                                    ; preds = %345
  %350 = load i8*, i8** %5, align 8, !dbg !3819
  %351 = load i32, i32* %6, align 4, !dbg !3821
  %352 = sext i32 %351 to i64, !dbg !3821
  %353 = call i8* @Str_Strcpy(i8* %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.222, i32 0, i32 0), i64 %352), !dbg !3822
  br label %359, !dbg !3823

; <label>:354:                                    ; preds = %345
  %355 = load i8*, i8** %5, align 8, !dbg !3824
  %356 = load i32, i32* %6, align 4, !dbg !3826
  %357 = sext i32 %356 to i64, !dbg !3826
  %358 = call i8* @Str_Strcpy(i8* %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i32 0, i32 0), i64 %357), !dbg !3827
  br label %359

; <label>:359:                                    ; preds = %354, %349
  br label %360

; <label>:360:                                    ; preds = %359, %340
  br label %361

; <label>:361:                                    ; preds = %360, %331
  br label %663, !dbg !3828

; <label>:362:                                    ; preds = %323
  %363 = load i8*, i8** %7, align 8, !dbg !3829
  %364 = call i8* @strstr(i8* %363, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.223, i32 0, i32 0)) #12, !dbg !3832
  %365 = icmp ne i8* %364, null, !dbg !3832
  br i1 %365, label %366, label %371, !dbg !3832

; <label>:366:                                    ; preds = %362
  %367 = load i8*, i8** %5, align 8, !dbg !3833
  %368 = load i32, i32* %6, align 4, !dbg !3835
  %369 = sext i32 %368 to i64, !dbg !3835
  %370 = call i8* @Str_Strcpy(i8* %367, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i64 %369), !dbg !3836
  br label %662, !dbg !3837

; <label>:371:                                    ; preds = %362
  %372 = load i8*, i8** %7, align 8, !dbg !3838
  %373 = call i8* @strstr(i8* %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i32 0, i32 0)) #12, !dbg !3841
  %374 = icmp ne i8* %373, null, !dbg !3841
  br i1 %374, label %375, label %445, !dbg !3841

; <label>:375:                                    ; preds = %371
  %376 = load i8*, i8** %7, align 8, !dbg !3842
  %377 = call i8* @strstr(i8* %376, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0)) #12, !dbg !3845
  %378 = icmp ne i8* %377, null, !dbg !3845
  br i1 %378, label %379, label %384, !dbg !3846

; <label>:379:                                    ; preds = %375
  %380 = load i8*, i8** %5, align 8, !dbg !3847
  %381 = load i32, i32* %6, align 4, !dbg !3849
  %382 = sext i32 %381 to i64, !dbg !3849
  %383 = call i8* @Str_Strcpy(i8* %380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.226, i32 0, i32 0), i64 %382), !dbg !3850
  br label %444, !dbg !3851

; <label>:384:                                    ; preds = %375
  %385 = load i8*, i8** %7, align 8, !dbg !3852
  %386 = call i8* @strstr(i8* %385, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.227, i32 0, i32 0)) #12, !dbg !3855
  %387 = icmp ne i8* %386, null, !dbg !3855
  br i1 %387, label %388, label %393, !dbg !3855

; <label>:388:                                    ; preds = %384
  %389 = load i8*, i8** %5, align 8, !dbg !3856
  %390 = load i32, i32* %6, align 4, !dbg !3858
  %391 = sext i32 %390 to i64, !dbg !3858
  %392 = call i8* @Str_Strcpy(i8* %389, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0), i64 %391), !dbg !3859
  br label %443, !dbg !3860

; <label>:393:                                    ; preds = %384
  %394 = load i8*, i8** %7, align 8, !dbg !3861
  %395 = call i8* @strstr(i8* %394, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i32 0, i32 0)) #12, !dbg !3864
  %396 = icmp ne i8* %395, null, !dbg !3864
  br i1 %396, label %397, label %402, !dbg !3864

; <label>:397:                                    ; preds = %393
  %398 = load i8*, i8** %5, align 8, !dbg !3865
  %399 = load i32, i32* %6, align 4, !dbg !3867
  %400 = sext i32 %399 to i64, !dbg !3867
  %401 = call i8* @Str_Strcpy(i8* %398, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.230, i32 0, i32 0), i64 %400), !dbg !3868
  br label %442, !dbg !3869

; <label>:402:                                    ; preds = %393
  %403 = load i8*, i8** %7, align 8, !dbg !3870
  %404 = call i8* @strstr(i8* %403, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0)) #12, !dbg !3873
  %405 = icmp ne i8* %404, null, !dbg !3873
  br i1 %405, label %406, label %411, !dbg !3873

; <label>:406:                                    ; preds = %402
  %407 = load i8*, i8** %5, align 8, !dbg !3874
  %408 = load i32, i32* %6, align 4, !dbg !3876
  %409 = sext i32 %408 to i64, !dbg !3876
  %410 = call i8* @Str_Strcpy(i8* %407, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.231, i32 0, i32 0), i64 %409), !dbg !3877
  br label %441, !dbg !3878

; <label>:411:                                    ; preds = %402
  %412 = load i8*, i8** %7, align 8, !dbg !3879
  %413 = call i8* @strstr(i8* %412, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.221, i32 0, i32 0)) #12, !dbg !3882
  %414 = icmp ne i8* %413, null, !dbg !3882
  br i1 %414, label %415, label %420, !dbg !3882

; <label>:415:                                    ; preds = %411
  %416 = load i8*, i8** %5, align 8, !dbg !3883
  %417 = load i32, i32* %6, align 4, !dbg !3885
  %418 = sext i32 %417 to i64, !dbg !3885
  %419 = call i8* @Str_Strcpy(i8* %416, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.232, i32 0, i32 0), i64 %418), !dbg !3886
  br label %440, !dbg !3887

; <label>:420:                                    ; preds = %411
  %421 = load i8*, i8** %7, align 8, !dbg !3888
  %422 = call i8* @strstr(i8* %421, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.233, i32 0, i32 0)) #12, !dbg !3891
  %423 = icmp ne i8* %422, null, !dbg !3891
  br i1 %423, label %424, label %429, !dbg !3891

; <label>:424:                                    ; preds = %420
  %425 = load i8*, i8** %5, align 8, !dbg !3892
  %426 = load i32, i32* %6, align 4, !dbg !3894
  %427 = sext i32 %426 to i64, !dbg !3894
  %428 = call i8* @Str_Strcpy(i8* %425, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i64 %427), !dbg !3895
  br label %439, !dbg !3896

; <label>:429:                                    ; preds = %420
  %430 = load i8*, i8** %7, align 8, !dbg !3897
  %431 = call i8* @strstr(i8* %430, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.235, i32 0, i32 0)) #12, !dbg !3900
  %432 = icmp ne i8* %431, null, !dbg !3900
  br i1 %432, label %433, label %438, !dbg !3900

; <label>:433:                                    ; preds = %429
  %434 = load i8*, i8** %5, align 8, !dbg !3901
  %435 = load i32, i32* %6, align 4, !dbg !3903
  %436 = sext i32 %435 to i64, !dbg !3903
  %437 = call i8* @Str_Strcpy(i8* %434, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0), i64 %436), !dbg !3904
  br label %438, !dbg !3905

; <label>:438:                                    ; preds = %433, %429
  br label %439

; <label>:439:                                    ; preds = %438, %424
  br label %440

; <label>:440:                                    ; preds = %439, %415
  br label %441

; <label>:441:                                    ; preds = %440, %406
  br label %442

; <label>:442:                                    ; preds = %441, %397
  br label %443

; <label>:443:                                    ; preds = %442, %388
  br label %444

; <label>:444:                                    ; preds = %443, %379
  br label %661, !dbg !3906

; <label>:445:                                    ; preds = %371
  %446 = load i8*, i8** %7, align 8, !dbg !3907
  %447 = call signext i8 @StrUtil_StartsWith(i8* %446, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i32 0, i32 0)), !dbg !3910
  %448 = sext i8 %447 to i32, !dbg !3910
  %449 = icmp ne i32 %448, 0, !dbg !3910
  br i1 %449, label %455, label %450, !dbg !3911

; <label>:450:                                    ; preds = %445
  %451 = load i8*, i8** %7, align 8, !dbg !3912
  %452 = call signext i8 @StrUtil_StartsWith(i8* %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0)), !dbg !3913
  %453 = sext i8 %452 to i32, !dbg !3913
  %454 = icmp ne i32 %453, 0, !dbg !3913
  br i1 %454, label %455, label %490, !dbg !3914

; <label>:455:                                    ; preds = %450, %445
  %456 = load i8*, i8** %7, align 8, !dbg !3916
  %457 = call i8* @strstr(i8* %456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0)) #12, !dbg !3919
  %458 = icmp ne i8* %457, null, !dbg !3919
  br i1 %458, label %459, label %464, !dbg !3920

; <label>:459:                                    ; preds = %455
  %460 = load i8*, i8** %5, align 8, !dbg !3921
  %461 = load i32, i32* %6, align 4, !dbg !3923
  %462 = sext i32 %461 to i64, !dbg !3923
  %463 = call i8* @Str_Strcpy(i8* %460, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i32 0, i32 0), i64 %462), !dbg !3924
  br label %489, !dbg !3925

; <label>:464:                                    ; preds = %455
  %465 = load i8*, i8** %7, align 8, !dbg !3926
  %466 = call i8* @strstr(i8* %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0)) #12, !dbg !3929
  %467 = icmp ne i8* %466, null, !dbg !3929
  br i1 %467, label %468, label %473, !dbg !3929

; <label>:468:                                    ; preds = %464
  %469 = load i8*, i8** %5, align 8, !dbg !3930
  %470 = load i32, i32* %6, align 4, !dbg !3932
  %471 = sext i32 %470 to i64, !dbg !3932
  %472 = call i8* @Str_Strcpy(i8* %469, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), i64 %471), !dbg !3933
  br label %488, !dbg !3934

; <label>:473:                                    ; preds = %464
  %474 = load i8*, i8** %7, align 8, !dbg !3935
  %475 = call i8* @strstr(i8* %474, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.221, i32 0, i32 0)) #12, !dbg !3938
  %476 = icmp ne i8* %475, null, !dbg !3938
  br i1 %476, label %477, label %482, !dbg !3938

; <label>:477:                                    ; preds = %473
  %478 = load i8*, i8** %5, align 8, !dbg !3939
  %479 = load i32, i32* %6, align 4, !dbg !3941
  %480 = sext i32 %479 to i64, !dbg !3941
  %481 = call i8* @Str_Strcpy(i8* %478, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0), i64 %480), !dbg !3942
  br label %487, !dbg !3943

; <label>:482:                                    ; preds = %473
  %483 = load i8*, i8** %5, align 8, !dbg !3944
  %484 = load i32, i32* %6, align 4, !dbg !3946
  %485 = sext i32 %484 to i64, !dbg !3946
  %486 = call i8* @Str_Strcpy(i8* %483, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.242, i32 0, i32 0), i64 %485), !dbg !3947
  br label %487

; <label>:487:                                    ; preds = %482, %477
  br label %488

; <label>:488:                                    ; preds = %487, %468
  br label %489

; <label>:489:                                    ; preds = %488, %459
  br label %660, !dbg !3948

; <label>:490:                                    ; preds = %450
  %491 = load i8*, i8** %7, align 8, !dbg !3949
  %492 = call i8* @strstr(i8* %491, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.243, i32 0, i32 0)) #12, !dbg !3952
  %493 = icmp ne i8* %492, null, !dbg !3952
  br i1 %493, label %494, label %499, !dbg !3952

; <label>:494:                                    ; preds = %490
  %495 = load i8*, i8** %5, align 8, !dbg !3953
  %496 = load i32, i32* %6, align 4, !dbg !3955
  %497 = sext i32 %496 to i64, !dbg !3955
  %498 = call i8* @Str_Strcpy(i8* %495, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.244, i32 0, i32 0), i64 %497), !dbg !3956
  br label %659, !dbg !3957

; <label>:499:                                    ; preds = %490
  %500 = load i8*, i8** %7, align 8, !dbg !3958
  %501 = call i8* @strstr(i8* %500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.245, i32 0, i32 0)) #12, !dbg !3961
  %502 = icmp ne i8* %501, null, !dbg !3961
  br i1 %502, label %503, label %508, !dbg !3961

; <label>:503:                                    ; preds = %499
  %504 = load i8*, i8** %5, align 8, !dbg !3962
  %505 = load i32, i32* %6, align 4, !dbg !3964
  %506 = sext i32 %505 to i64, !dbg !3964
  %507 = call i8* @Str_Strcpy(i8* %504, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i64 %506), !dbg !3965
  br label %658, !dbg !3966

; <label>:508:                                    ; preds = %499
  %509 = load i8*, i8** %7, align 8, !dbg !3967
  %510 = call i8* @strstr(i8* %509, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.246, i32 0, i32 0)) #12, !dbg !3970
  %511 = icmp ne i8* %510, null, !dbg !3970
  br i1 %511, label %512, label %517, !dbg !3970

; <label>:512:                                    ; preds = %508
  %513 = load i8*, i8** %5, align 8, !dbg !3971
  %514 = load i32, i32* %6, align 4, !dbg !3973
  %515 = sext i32 %514 to i64, !dbg !3973
  %516 = call i8* @Str_Strcpy(i8* %513, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i64 %515), !dbg !3974
  br label %657, !dbg !3975

; <label>:517:                                    ; preds = %508
  %518 = load i8*, i8** %7, align 8, !dbg !3976
  %519 = call i8* @strstr(i8* %518, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.247, i32 0, i32 0)) #12, !dbg !3979
  %520 = icmp ne i8* %519, null, !dbg !3979
  br i1 %520, label %521, label %526, !dbg !3979

; <label>:521:                                    ; preds = %517
  %522 = load i8*, i8** %5, align 8, !dbg !3980
  %523 = load i32, i32* %6, align 4, !dbg !3982
  %524 = sext i32 %523 to i64, !dbg !3982
  %525 = call i8* @Str_Strcpy(i8* %522, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i64 %524), !dbg !3983
  br label %656, !dbg !3984

; <label>:526:                                    ; preds = %517
  %527 = load i8*, i8** %7, align 8, !dbg !3985
  %528 = call i8* @strstr(i8* %527, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.248, i32 0, i32 0)) #12, !dbg !3988
  %529 = icmp ne i8* %528, null, !dbg !3988
  br i1 %529, label %530, label %535, !dbg !3988

; <label>:530:                                    ; preds = %526
  %531 = load i8*, i8** %5, align 8, !dbg !3989
  %532 = load i32, i32* %6, align 4, !dbg !3991
  %533 = sext i32 %532 to i64, !dbg !3991
  %534 = call i8* @Str_Strcpy(i8* %531, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i64 %533), !dbg !3992
  br label %655, !dbg !3993

; <label>:535:                                    ; preds = %526
  %536 = load i8*, i8** %7, align 8, !dbg !3994
  %537 = call i8* @strstr(i8* %536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.249, i32 0, i32 0)) #12, !dbg !3997
  %538 = icmp ne i8* %537, null, !dbg !3997
  br i1 %538, label %539, label %544, !dbg !3997

; <label>:539:                                    ; preds = %535
  %540 = load i8*, i8** %5, align 8, !dbg !3998
  %541 = load i32, i32* %6, align 4, !dbg !4000
  %542 = sext i32 %541 to i64, !dbg !4000
  %543 = call i8* @Str_Strcpy(i8* %540, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.249, i32 0, i32 0), i64 %542), !dbg !4001
  br label %654, !dbg !4002

; <label>:544:                                    ; preds = %535
  %545 = load i8*, i8** %7, align 8, !dbg !4003
  %546 = call i8* @strstr(i8* %545, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.250, i32 0, i32 0)) #12, !dbg !4006
  %547 = icmp ne i8* %546, null, !dbg !4006
  br i1 %547, label %548, label %553, !dbg !4006

; <label>:548:                                    ; preds = %544
  %549 = load i8*, i8** %5, align 8, !dbg !4007
  %550 = load i32, i32* %6, align 4, !dbg !4009
  %551 = sext i32 %550 to i64, !dbg !4009
  %552 = call i8* @Str_Strcpy(i8* %549, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i64 %551), !dbg !4010
  br label %653, !dbg !4011

; <label>:553:                                    ; preds = %544
  %554 = load i8*, i8** %7, align 8, !dbg !4012
  %555 = call i8* @strstr(i8* %554, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.251, i32 0, i32 0)) #12, !dbg !4015
  %556 = icmp ne i8* %555, null, !dbg !4015
  br i1 %556, label %557, label %562, !dbg !4015

; <label>:557:                                    ; preds = %553
  %558 = load i8*, i8** %5, align 8, !dbg !4016
  %559 = load i32, i32* %6, align 4, !dbg !4018
  %560 = sext i32 %559 to i64, !dbg !4018
  %561 = call i8* @Str_Strcpy(i8* %558, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i64 %560), !dbg !4019
  br label %652, !dbg !4020

; <label>:562:                                    ; preds = %553
  %563 = load i8*, i8** %7, align 8, !dbg !4021
  %564 = call i8* @strstr(i8* %563, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.252, i32 0, i32 0)) #12, !dbg !4024
  %565 = icmp ne i8* %564, null, !dbg !4024
  br i1 %565, label %566, label %571, !dbg !4024

; <label>:566:                                    ; preds = %562
  %567 = load i8*, i8** %5, align 8, !dbg !4025
  %568 = load i32, i32* %6, align 4, !dbg !4027
  %569 = sext i32 %568 to i64, !dbg !4027
  %570 = call i8* @Str_Strcpy(i8* %567, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i64 %569), !dbg !4028
  br label %651, !dbg !4029

; <label>:571:                                    ; preds = %562
  %572 = load i8*, i8** %7, align 8, !dbg !4030
  %573 = call i8* @strstr(i8* %572, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.253, i32 0, i32 0)) #12, !dbg !4033
  %574 = icmp ne i8* %573, null, !dbg !4033
  br i1 %574, label %575, label %580, !dbg !4033

; <label>:575:                                    ; preds = %571
  %576 = load i8*, i8** %5, align 8, !dbg !4034
  %577 = load i32, i32* %6, align 4, !dbg !4036
  %578 = sext i32 %577 to i64, !dbg !4036
  %579 = call i8* @Str_Strcpy(i8* %576, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i64 %578), !dbg !4037
  br label %650, !dbg !4038

; <label>:580:                                    ; preds = %571
  %581 = load i8*, i8** %7, align 8, !dbg !4039
  %582 = call i8* @strstr(i8* %581, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.254, i32 0, i32 0)) #12, !dbg !4042
  %583 = icmp ne i8* %582, null, !dbg !4042
  br i1 %583, label %584, label %589, !dbg !4042

; <label>:584:                                    ; preds = %580
  %585 = load i8*, i8** %5, align 8, !dbg !4043
  %586 = load i32, i32* %6, align 4, !dbg !4045
  %587 = sext i32 %586 to i64, !dbg !4045
  %588 = call i8* @Str_Strcpy(i8* %585, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i64 %587), !dbg !4046
  br label %649, !dbg !4047

; <label>:589:                                    ; preds = %580
  %590 = load i8*, i8** %7, align 8, !dbg !4048
  %591 = call i8* @strstr(i8* %590, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.255, i32 0, i32 0)) #12, !dbg !4051
  %592 = icmp ne i8* %591, null, !dbg !4051
  br i1 %592, label %593, label %598, !dbg !4051

; <label>:593:                                    ; preds = %589
  %594 = load i8*, i8** %5, align 8, !dbg !4052
  %595 = load i32, i32* %6, align 4, !dbg !4054
  %596 = sext i32 %595 to i64, !dbg !4054
  %597 = call i8* @Str_Strcpy(i8* %594, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.255, i32 0, i32 0), i64 %596), !dbg !4055
  br label %648, !dbg !4056

; <label>:598:                                    ; preds = %589
  %599 = load i8*, i8** %7, align 8, !dbg !4057
  %600 = call i8* @strstr(i8* %599, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.256, i32 0, i32 0)) #12, !dbg !4060
  %601 = icmp ne i8* %600, null, !dbg !4060
  br i1 %601, label %602, label %607, !dbg !4060

; <label>:602:                                    ; preds = %598
  %603 = load i8*, i8** %5, align 8, !dbg !4061
  %604 = load i32, i32* %6, align 4, !dbg !4063
  %605 = sext i32 %604 to i64, !dbg !4063
  %606 = call i8* @Str_Strcpy(i8* %603, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i64 %605), !dbg !4064
  br label %647, !dbg !4065

; <label>:607:                                    ; preds = %598
  %608 = load i8*, i8** %7, align 8, !dbg !4066
  %609 = call i8* @strstr(i8* %608, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.257, i32 0, i32 0)) #12, !dbg !4069
  %610 = icmp ne i8* %609, null, !dbg !4069
  br i1 %610, label %611, label %616, !dbg !4069

; <label>:611:                                    ; preds = %607
  %612 = load i8*, i8** %5, align 8, !dbg !4070
  %613 = load i32, i32* %6, align 4, !dbg !4072
  %614 = sext i32 %613 to i64, !dbg !4072
  %615 = call i8* @Str_Strcpy(i8* %612, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i64 %614), !dbg !4073
  br label %646, !dbg !4074

; <label>:616:                                    ; preds = %607
  %617 = load i8*, i8** %7, align 8, !dbg !4075
  %618 = call i8* @strstr(i8* %617, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.258, i32 0, i32 0)) #12, !dbg !4078
  %619 = icmp ne i8* %618, null, !dbg !4078
  br i1 %619, label %620, label %625, !dbg !4078

; <label>:620:                                    ; preds = %616
  %621 = load i8*, i8** %5, align 8, !dbg !4079
  %622 = load i32, i32* %6, align 4, !dbg !4081
  %623 = sext i32 %622 to i64, !dbg !4081
  %624 = call i8* @Str_Strcpy(i8* %621, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0), i64 %623), !dbg !4082
  br label %645, !dbg !4083

; <label>:625:                                    ; preds = %616
  %626 = load i8*, i8** %7, align 8, !dbg !4084
  %627 = call i8* @strstr(i8* %626, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.259, i32 0, i32 0)) #12, !dbg !4087
  %628 = icmp ne i8* %627, null, !dbg !4087
  br i1 %628, label %629, label %634, !dbg !4087

; <label>:629:                                    ; preds = %625
  %630 = load i8*, i8** %5, align 8, !dbg !4088
  %631 = load i32, i32* %6, align 4, !dbg !4090
  %632 = sext i32 %631 to i64, !dbg !4090
  %633 = call i8* @Str_Strcpy(i8* %630, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i64 %632), !dbg !4091
  br label %644, !dbg !4092

; <label>:634:                                    ; preds = %625
  %635 = load i8*, i8** %7, align 8, !dbg !4093
  %636 = call i8* @strstr(i8* %635, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.260, i32 0, i32 0)) #12, !dbg !4096
  %637 = icmp ne i8* %636, null, !dbg !4096
  br i1 %637, label %638, label %643, !dbg !4096

; <label>:638:                                    ; preds = %634
  %639 = load i8*, i8** %5, align 8, !dbg !4097
  %640 = load i32, i32* %6, align 4, !dbg !4099
  %641 = sext i32 %640 to i64, !dbg !4099
  %642 = call i8* @Str_Strcpy(i8* %639, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.261, i32 0, i32 0), i64 %641), !dbg !4100
  br label %643, !dbg !4101

; <label>:643:                                    ; preds = %638, %634
  br label %644

; <label>:644:                                    ; preds = %643, %629
  br label %645

; <label>:645:                                    ; preds = %644, %620
  br label %646

; <label>:646:                                    ; preds = %645, %611
  br label %647

; <label>:647:                                    ; preds = %646, %602
  br label %648

; <label>:648:                                    ; preds = %647, %593
  br label %649

; <label>:649:                                    ; preds = %648, %584
  br label %650

; <label>:650:                                    ; preds = %649, %575
  br label %651

; <label>:651:                                    ; preds = %650, %566
  br label %652

; <label>:652:                                    ; preds = %651, %557
  br label %653

; <label>:653:                                    ; preds = %652, %548
  br label %654

; <label>:654:                                    ; preds = %653, %539
  br label %655

; <label>:655:                                    ; preds = %654, %530
  br label %656

; <label>:656:                                    ; preds = %655, %521
  br label %657

; <label>:657:                                    ; preds = %656, %512
  br label %658

; <label>:658:                                    ; preds = %657, %503
  br label %659

; <label>:659:                                    ; preds = %658, %494
  br label %660

; <label>:660:                                    ; preds = %659, %489
  br label %661

; <label>:661:                                    ; preds = %660, %444
  br label %662

; <label>:662:                                    ; preds = %661, %366
  br label %663

; <label>:663:                                    ; preds = %662, %361
  br label %664

; <label>:664:                                    ; preds = %663, %318
  br label %665

; <label>:665:                                    ; preds = %664, %309
  br label %666

; <label>:666:                                    ; preds = %665, %300
  br label %667

; <label>:667:                                    ; preds = %666, %291
  br label %668

; <label>:668:                                    ; preds = %667, %278
  br label %669

; <label>:669:                                    ; preds = %668, %265
  br label %670

; <label>:670:                                    ; preds = %669, %252
  br label %671

; <label>:671:                                    ; preds = %670, %239
  br label %672

; <label>:672:                                    ; preds = %671, %226
  br label %673

; <label>:673:                                    ; preds = %672, %217
  br label %674

; <label>:674:                                    ; preds = %673, %208
  br label %675

; <label>:675:                                    ; preds = %674, %198
  br label %676

; <label>:676:                                    ; preds = %675, %184
  br label %677

; <label>:677:                                    ; preds = %676, %175
  br label %678

; <label>:678:                                    ; preds = %677, %166
  br label %679

; <label>:679:                                    ; preds = %678, %161
  br label %680

; <label>:680:                                    ; preds = %679, %58
  br label %681

; <label>:681:                                    ; preds = %680, %53
  %682 = load i8*, i8** %7, align 8, !dbg !4102
  call void @free(i8* %682) #10, !dbg !4103
  ret void, !dbg !4104
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoOsRelease(i8*, i64) #0 !dbg !4105 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4106, metadata !752), !dbg !4107
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4108, metadata !752), !dbg !4109
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4110, metadata !752), !dbg !4111
  %6 = load i64, i64* %4, align 8, !dbg !4112
  %7 = trunc i64 %6 to i32, !dbg !4112
  %8 = load i8*, i8** %3, align 8, !dbg !4113
  %9 = call signext i8 @HostinfoReadDistroFile(i8 signext 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.262, i32 0, i32 0), %struct.DistroNameScan* getelementptr inbounds ([2 x %struct.DistroNameScan], [2 x %struct.DistroNameScan]* @osReleaseFields, i64 0, i64 0), i32 %7, i8* %8), !dbg !4114
  store i8 %9, i8* %5, align 1, !dbg !4111
  %10 = load i8, i8* %5, align 1, !dbg !4115
  %11 = icmp ne i8 %10, 0, !dbg !4115
  br i1 %11, label %17, label %12, !dbg !4117

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %4, align 8, !dbg !4118
  %14 = trunc i64 %13 to i32, !dbg !4118
  %15 = load i8*, i8** %3, align 8, !dbg !4120
  %16 = call signext i8 @HostinfoReadDistroFile(i8 signext 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.263, i32 0, i32 0), %struct.DistroNameScan* getelementptr inbounds ([2 x %struct.DistroNameScan], [2 x %struct.DistroNameScan]* @osReleaseFields, i64 0, i64 0), i32 %14, i8* %15), !dbg !4121
  store i8 %16, i8* %5, align 1, !dbg !4122
  br label %17, !dbg !4123

; <label>:17:                                     ; preds = %12, %2
  %18 = load i8, i8* %5, align 1, !dbg !4124
  ret i8 %18, !dbg !4125
}

declare i32 @Str_Snprintf(i8*, i64, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @HostinfoPostData(i8*, i8*) #0 !dbg !732 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4126, metadata !752), !dbg !4127
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4128, metadata !752), !dbg !4129
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4130, metadata !752), !dbg !4131
  %6 = load i8*, i8** %4, align 8, !dbg !4132
  %7 = call i64 @strlen(i8* %6) #12, !dbg !4133
  %8 = sub i64 %7, 1, !dbg !4134
  %9 = trunc i64 %8 to i32, !dbg !4133
  store i32 %9, i32* %5, align 4, !dbg !4135
  %10 = load i32, i32* %5, align 4, !dbg !4136
  %11 = zext i32 %10 to i64, !dbg !4138
  %12 = load i8*, i8** %4, align 8, !dbg !4138
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !4138
  %14 = load i8, i8* %13, align 1, !dbg !4138
  %15 = sext i8 %14 to i32, !dbg !4138
  %16 = icmp eq i32 %15, 10, !dbg !4139
  br i1 %16, label %17, label %22, !dbg !4140

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %5, align 4, !dbg !4141
  %19 = zext i32 %18 to i64, !dbg !4143
  %20 = load i8*, i8** %4, align 8, !dbg !4143
  %21 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !4143
  store i8 0, i8* %21, align 1, !dbg !4144
  br label %22, !dbg !4145

; <label>:22:                                     ; preds = %17, %2
  br label %23, !dbg !4146

; <label>:23:                                     ; preds = %26, %22
  %24 = call i32 @Atomic_ReadWrite32(%struct.Atomic_uint32* @HostinfoPostData.mutex, i32 1), !dbg !4147
  %25 = icmp ne i32 %24, 0, !dbg !4149
  br i1 %25, label %26, label %27, !dbg !4149

; <label>:26:                                     ; preds = %23
  br label %23, !dbg !4150, !llvm.loop !4152

; <label>:27:                                     ; preds = %23
  %28 = load volatile i8, i8* @HostinfoOSNameCacheValid, align 1, !dbg !4153
  %29 = icmp ne i8 %28, 0, !dbg !4153
  br i1 %29, label %35, label %30, !dbg !4155

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %3, align 8, !dbg !4156
  %32 = call i8* @Str_Strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @HostinfoCachedOSName, i32 0, i32 0), i8* %31, i64 128), !dbg !4158
  %33 = load i8*, i8** %4, align 8, !dbg !4159
  %34 = call i8* @Str_Strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @HostinfoCachedOSFullName, i32 0, i32 0), i8* %33, i64 512), !dbg !4160
  store volatile i8 1, i8* @HostinfoOSNameCacheValid, align 1, !dbg !4161
  br label %35, !dbg !4162

; <label>:35:                                     ; preds = %30, %27
  call void @Atomic_Write32(%struct.Atomic_uint32* @HostinfoPostData.mutex, i32 0), !dbg !4163
  ret void, !dbg !4164
}

; Function Attrs: nounwind uwtable
define internal i8* @HostinfoGetCmdOutput(i8*) #0 !dbg !4165 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.DynBuf, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4168, metadata !752), !dbg !4169
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4170, metadata !752), !dbg !4171
  store i8 0, i8* %3, align 1, !dbg !4171
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %4, metadata !4172, metadata !752), !dbg !4180
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4181, metadata !752), !dbg !4182
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4183, metadata !752), !dbg !4184
  store i8* null, i8** %6, align 8, !dbg !4184
  %9 = call signext i8 @Id_IsSuperUser(), !dbg !4185
  %10 = sext i8 %9 to i32, !dbg !4185
  %11 = icmp ne i32 %10, 0, !dbg !4185
  br i1 %11, label %12, label %14, !dbg !4187

; <label>:12:                                     ; preds = %1
  %13 = call i32 @getuid() #10, !dbg !4188
  call void @Id_EndSuperUser(i32 %13), !dbg !4190
  store i8 1, i8* %3, align 1, !dbg !4192
  br label %14, !dbg !4193

; <label>:14:                                     ; preds = %12, %1
  call void @DynBuf_Init(%struct.DynBuf* %4), !dbg !4194
  %15 = load i8*, i8** %2, align 8, !dbg !4195
  %16 = call %struct._IO_FILE* @Posix_Popen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !4196
  store %struct._IO_FILE* %16, %struct._IO_FILE** %5, align 8, !dbg !4197
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4198
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !4200
  br i1 %18, label %19, label %21, !dbg !4201

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8, !dbg !4202
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0), i8* %20), !dbg !4204
  br label %47, !dbg !4205

; <label>:21:                                     ; preds = %14
  br label %22, !dbg !4206

; <label>:22:                                     ; preds = %33, %21
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4207, metadata !752), !dbg !4211
  store i8* null, i8** %7, align 8, !dbg !4211
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4212, metadata !752), !dbg !4213
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4214
  %24 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %23, i8** %7, i64 0, i64* %8), !dbg !4215
  switch i32 %24, label %28 [
    i32 0, label %25
    i32 1, label %26
    i32 2, label %27
  ], !dbg !4216

; <label>:25:                                     ; preds = %22
  br label %44, !dbg !4217

; <label>:26:                                     ; preds = %22
  br label %29, !dbg !4219

; <label>:27:                                     ; preds = %22
  br label %29, !dbg !4220

; <label>:28:                                     ; preds = %22
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 1076) #11, !dbg !4221
  unreachable, !dbg !4221

; <label>:29:                                     ; preds = %27, %26
  %30 = load i8*, i8** %7, align 8, !dbg !4222
  %31 = icmp eq i8* %30, null, !dbg !4224
  br i1 %31, label %32, label %33, !dbg !4225

; <label>:32:                                     ; preds = %29
  br label %38, !dbg !4226

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** %7, align 8, !dbg !4228
  %35 = load i64, i64* %8, align 8, !dbg !4229
  %36 = call signext i8 @DynBuf_Append(%struct.DynBuf* %4, i8* %34, i64 %35), !dbg !4230
  %37 = load i8*, i8** %7, align 8, !dbg !4231
  call void @free(i8* %37) #10, !dbg !4232
  br label %22, !dbg !4233, !llvm.loop !4235

; <label>:38:                                     ; preds = %32
  %39 = call i8* @DynBuf_Get(%struct.DynBuf* %4), !dbg !4236
  %40 = icmp ne i8* %39, null, !dbg !4238
  br i1 %40, label %41, label %43, !dbg !4239

; <label>:41:                                     ; preds = %38
  %42 = call i8* @DynBuf_DetachString(%struct.DynBuf* %4), !dbg !4240
  store i8* %42, i8** %6, align 8, !dbg !4242
  br label %43, !dbg !4243

; <label>:43:                                     ; preds = %41, %38
  br label %44, !dbg !4244

; <label>:44:                                     ; preds = %43, %25
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4246
  %46 = call i32 @pclose(%struct._IO_FILE* %45), !dbg !4247
  br label %47, !dbg !4247

; <label>:47:                                     ; preds = %44, %19
  call void @DynBuf_Destroy(%struct.DynBuf* %4), !dbg !4248
  %48 = load i8, i8* %3, align 1, !dbg !4249
  %49 = icmp ne i8 %48, 0, !dbg !4249
  br i1 %49, label %50, label %52, !dbg !4251

; <label>:50:                                     ; preds = %47
  %51 = call i32 @Id_BeginSuperUser(), !dbg !4252
  br label %52, !dbg !4254

; <label>:52:                                     ; preds = %50, %47
  %53 = load i8*, i8** %6, align 8, !dbg !4255
  ret i8* %53, !dbg !4256
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoReadDistroFile(i8 signext, i8*, %struct.DistroNameScan*, i32, i8*) #0 !dbg !4257 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.DistroNameScan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i8*, align 8
  store i8 %0, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !4261, metadata !752), !dbg !4262
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4263, metadata !752), !dbg !4264
  store %struct.DistroNameScan* %2, %struct.DistroNameScan** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.DistroNameScan** %9, metadata !4265, metadata !752), !dbg !4266
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4267, metadata !752), !dbg !4268
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4269, metadata !752), !dbg !4270
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4271, metadata !752), !dbg !4272
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4273, metadata !752), !dbg !4274
  call void @llvm.dbg.declare(metadata %struct.stat* %14, metadata !4275, metadata !752), !dbg !4301
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4302, metadata !752), !dbg !4303
  store i32 -1, i32* %15, align 4, !dbg !4303
  call void @llvm.dbg.declare(metadata i8* %16, metadata !4304, metadata !752), !dbg !4305
  store i8 0, i8* %16, align 1, !dbg !4305
  call void @llvm.dbg.declare(metadata i8** %17, metadata !4306, metadata !752), !dbg !4307
  store i8* null, i8** %17, align 8, !dbg !4307
  %21 = load i8*, i8** %8, align 8, !dbg !4308
  %22 = call i32 (i8*, i32, ...) @Posix_Open(i8* %21, i32 0), !dbg !4310
  store i32 %22, i32* %15, align 4, !dbg !4311
  %23 = icmp eq i32 %22, -1, !dbg !4312
  br i1 %23, label %24, label %25, !dbg !4313

; <label>:24:                                     ; preds = %5
  store i8 0, i8* %6, align 1, !dbg !4314
  br label %175, !dbg !4314

; <label>:25:                                     ; preds = %5
  %26 = load i32, i32* %15, align 4, !dbg !4316
  %27 = call i32 @fstat64(i32 %26, %struct.stat* %14) #10, !dbg !4318
  %28 = icmp ne i32 %27, 0, !dbg !4318
  br i1 %28, label %29, label %33, !dbg !4319

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %8, align 8, !dbg !4320
  %31 = call i32* @__errno_location() #1, !dbg !4322
  %32 = load i32, i32* %31, align 4, !dbg !4323
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HostinfoReadDistroFile, i32 0, i32 0), i8* %30, i32 %32), !dbg !4324
  br label %166, !dbg !4325

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 8, !dbg !4326
  %35 = load i64, i64* %34, align 8, !dbg !4326
  %36 = icmp eq i64 %35, 0, !dbg !4328
  br i1 %36, label %37, label %38, !dbg !4329

; <label>:37:                                     ; preds = %33
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HostinfoReadDistroFile, i32 0, i32 0)), !dbg !4330
  br label %166, !dbg !4332

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 8, !dbg !4333
  %40 = load i64, i64* %39, align 8, !dbg !4333
  %41 = trunc i64 %40 to i32, !dbg !4334
  store i32 %41, i32* %13, align 4, !dbg !4335
  %42 = load i32, i32* %13, align 4, !dbg !4336
  %43 = load i32, i32* %10, align 4, !dbg !4338
  %44 = icmp sge i32 %42, %43, !dbg !4339
  br i1 %44, label %45, label %46, !dbg !4340

; <label>:45:                                     ; preds = %38
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HostinfoReadDistroFile, i32 0, i32 0)), !dbg !4341
  br label %166, !dbg !4343

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %10, align 4, !dbg !4344
  %48 = sext i32 %47 to i64, !dbg !4344
  %49 = call noalias i8* @calloc(i64 %48, i64 1) #10, !dbg !4345
  store i8* %49, i8** %17, align 8, !dbg !4346
  %50 = load i8*, i8** %17, align 8, !dbg !4347
  %51 = icmp eq i8* %50, null, !dbg !4349
  br i1 %51, label %52, label %53, !dbg !4350

; <label>:52:                                     ; preds = %46
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HostinfoReadDistroFile, i32 0, i32 0)), !dbg !4351
  br label %166, !dbg !4353

; <label>:53:                                     ; preds = %46
  %54 = load i32, i32* %15, align 4, !dbg !4354
  %55 = load i8*, i8** %17, align 8, !dbg !4356
  %56 = load i32, i32* %13, align 4, !dbg !4357
  %57 = sext i32 %56 to i64, !dbg !4357
  %58 = call i64 @read(i32 %54, i8* %55, i64 %57), !dbg !4358
  %59 = load i32, i32* %13, align 4, !dbg !4359
  %60 = sext i32 %59 to i64, !dbg !4359
  %61 = icmp ne i64 %58, %60, !dbg !4360
  br i1 %61, label %62, label %66, !dbg !4361

; <label>:62:                                     ; preds = %53
  %63 = load i8*, i8** %8, align 8, !dbg !4362
  %64 = call i32* @__errno_location() #1, !dbg !4364
  %65 = load i32, i32* %64, align 4, !dbg !4365
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HostinfoReadDistroFile, i32 0, i32 0), i8* %63, i32 %65), !dbg !4366
  br label %166, !dbg !4367

; <label>:66:                                     ; preds = %53
  %67 = load i32, i32* %13, align 4, !dbg !4368
  %68 = sub nsw i32 %67, 1, !dbg !4369
  %69 = sext i32 %68 to i64, !dbg !4370
  %70 = load i8*, i8** %17, align 8, !dbg !4370
  %71 = getelementptr inbounds i8, i8* %70, i64 %69, !dbg !4370
  store i8 0, i8* %71, align 1, !dbg !4371
  %72 = load i8*, i8** %11, align 8, !dbg !4372
  %73 = getelementptr inbounds i8, i8* %72, i64 0, !dbg !4372
  store i8 0, i8* %73, align 1, !dbg !4373
  store i32 0, i32* %12, align 4, !dbg !4374
  br label %74, !dbg !4376

; <label>:74:                                     ; preds = %144, %66
  %75 = load i32, i32* %12, align 4, !dbg !4377
  %76 = sext i32 %75 to i64, !dbg !4380
  %77 = load %struct.DistroNameScan*, %struct.DistroNameScan** %9, align 8, !dbg !4380
  %78 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %77, i64 %76, !dbg !4380
  %79 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %78, i32 0, i32 0, !dbg !4381
  %80 = load i8*, i8** %79, align 8, !dbg !4381
  %81 = icmp ne i8* %80, null, !dbg !4382
  br i1 %81, label %82, label %147, !dbg !4383

; <label>:82:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata i8** %18, metadata !4384, metadata !752), !dbg !4386
  %83 = load i8*, i8** %17, align 8, !dbg !4387
  %84 = load i32, i32* %12, align 4, !dbg !4388
  %85 = sext i32 %84 to i64, !dbg !4389
  %86 = load %struct.DistroNameScan*, %struct.DistroNameScan** %9, align 8, !dbg !4389
  %87 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %86, i64 %85, !dbg !4389
  %88 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %87, i32 0, i32 0, !dbg !4390
  %89 = load i8*, i8** %88, align 8, !dbg !4390
  %90 = call i8* @strstr(i8* %83, i8* %89) #12, !dbg !4391
  store i8* %90, i8** %18, align 8, !dbg !4386
  %91 = load i8*, i8** %18, align 8, !dbg !4392
  %92 = icmp ne i8* %91, null, !dbg !4394
  br i1 %92, label %93, label %143, !dbg !4395

; <label>:93:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata [1024 x i8]* %19, metadata !4396, metadata !752), !dbg !4398
  %94 = load i8*, i8** %18, align 8, !dbg !4399
  %95 = load i32, i32* %12, align 4, !dbg !4400
  %96 = sext i32 %95 to i64, !dbg !4401
  %97 = load %struct.DistroNameScan*, %struct.DistroNameScan** %9, align 8, !dbg !4401
  %98 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %97, i64 %96, !dbg !4401
  %99 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %98, i32 0, i32 1, !dbg !4402
  %100 = load i8*, i8** %99, align 8, !dbg !4402
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0, !dbg !4403
  %102 = call i32 (i8*, i8*, ...) @sscanf(i8* %94, i8* %100, i8* %101) #10, !dbg !4404
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0, !dbg !4405
  %104 = load i8, i8* %103, align 16, !dbg !4405
  %105 = sext i8 %104 to i32, !dbg !4405
  %106 = icmp eq i32 %105, 34, !dbg !4407
  br i1 %106, label %107, label %132, !dbg !4408

; <label>:107:                                    ; preds = %93
  call void @llvm.dbg.declare(metadata i8** %20, metadata !4409, metadata !752), !dbg !4411
  %108 = load i32, i32* %12, align 4, !dbg !4412
  %109 = sext i32 %108 to i64, !dbg !4413
  %110 = load %struct.DistroNameScan*, %struct.DistroNameScan** %9, align 8, !dbg !4413
  %111 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %110, i64 %109, !dbg !4413
  %112 = getelementptr inbounds %struct.DistroNameScan, %struct.DistroNameScan* %111, i32 0, i32 0, !dbg !4414
  %113 = load i8*, i8** %112, align 8, !dbg !4414
  %114 = call i64 @strlen(i8* %113) #12, !dbg !4415
  %115 = add i64 %114, 1, !dbg !4416
  %116 = load i8*, i8** %18, align 8, !dbg !4417
  %117 = getelementptr inbounds i8, i8* %116, i64 %115, !dbg !4417
  store i8* %117, i8** %18, align 8, !dbg !4417
  %118 = load i8*, i8** %18, align 8, !dbg !4418
  %119 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !4419
  %120 = call i8* @strchr(i8* %119, i32 34) #12, !dbg !4420
  store i8* %120, i8** %20, align 8, !dbg !4421
  %121 = load i8*, i8** %20, align 8, !dbg !4422
  %122 = icmp ne i8* %121, null, !dbg !4424
  br i1 %122, label %123, label %131, !dbg !4425

; <label>:123:                                    ; preds = %107
  %124 = load i8*, i8** %20, align 8, !dbg !4426
  store i8 0, i8* %124, align 1, !dbg !4428
  %125 = load i8*, i8** %11, align 8, !dbg !4429
  %126 = load i8*, i8** %18, align 8, !dbg !4430
  %127 = load i32, i32* %10, align 4, !dbg !4431
  %128 = sext i32 %127 to i64, !dbg !4431
  %129 = call i8* @Str_Strcat(i8* %125, i8* %126, i64 %128), !dbg !4432
  %130 = load i8*, i8** %20, align 8, !dbg !4433
  store i8 34, i8* %130, align 1, !dbg !4434
  br label %131, !dbg !4435

; <label>:131:                                    ; preds = %123, %107
  br label %138, !dbg !4436

; <label>:132:                                    ; preds = %93
  %133 = load i8*, i8** %11, align 8, !dbg !4437
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0, !dbg !4439
  %135 = load i32, i32* %10, align 4, !dbg !4440
  %136 = sext i32 %135 to i64, !dbg !4440
  %137 = call i8* @Str_Strcat(i8* %133, i8* %134, i64 %136), !dbg !4441
  br label %138

; <label>:138:                                    ; preds = %132, %131
  %139 = load i8*, i8** %11, align 8, !dbg !4442
  %140 = load i32, i32* %10, align 4, !dbg !4443
  %141 = sext i32 %140 to i64, !dbg !4443
  %142 = call i8* @Str_Strcat(i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i32 0, i32 0), i64 %141), !dbg !4444
  br label %143, !dbg !4445

; <label>:143:                                    ; preds = %138, %82
  br label %144, !dbg !4446

; <label>:144:                                    ; preds = %143
  %145 = load i32, i32* %12, align 4, !dbg !4447
  %146 = add nsw i32 %145, 1, !dbg !4447
  store i32 %146, i32* %12, align 4, !dbg !4447
  br label %74, !dbg !4449, !llvm.loop !4450

; <label>:147:                                    ; preds = %74
  %148 = load i8*, i8** %11, align 8, !dbg !4452
  %149 = getelementptr inbounds i8, i8* %148, i64 0, !dbg !4452
  %150 = load i8, i8* %149, align 1, !dbg !4452
  %151 = sext i8 %150 to i32, !dbg !4452
  %152 = icmp eq i32 %151, 0, !dbg !4454
  br i1 %152, label %153, label %164, !dbg !4455

; <label>:153:                                    ; preds = %147
  %154 = load i8, i8* %7, align 1, !dbg !4456
  %155 = icmp ne i8 %154, 0, !dbg !4456
  br i1 %155, label %156, label %157, !dbg !4459

; <label>:156:                                    ; preds = %153
  store i8 0, i8* %16, align 1, !dbg !4460
  br label %163, !dbg !4462

; <label>:157:                                    ; preds = %153
  %158 = load i8*, i8** %11, align 8, !dbg !4463
  %159 = load i8*, i8** %17, align 8, !dbg !4465
  %160 = load i32, i32* %10, align 4, !dbg !4466
  %161 = sext i32 %160 to i64, !dbg !4466
  %162 = call i8* @Str_Strcpy(i8* %158, i8* %159, i64 %161), !dbg !4467
  store i8 1, i8* %16, align 1, !dbg !4468
  br label %163

; <label>:163:                                    ; preds = %157, %156
  br label %165, !dbg !4469

; <label>:164:                                    ; preds = %147
  store i8 1, i8* %16, align 1, !dbg !4470
  br label %165

; <label>:165:                                    ; preds = %164, %163
  br label %166, !dbg !4472

; <label>:166:                                    ; preds = %165, %62, %52, %45, %37, %29
  %167 = load i32, i32* %15, align 4, !dbg !4474
  %168 = icmp ne i32 %167, -1, !dbg !4476
  br i1 %168, label %169, label %172, !dbg !4477

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %15, align 4, !dbg !4478
  %171 = call i32 @close(i32 %170), !dbg !4480
  br label %172, !dbg !4481

; <label>:172:                                    ; preds = %169, %166
  %173 = load i8*, i8** %17, align 8, !dbg !4482
  call void @free(i8* %173) #10, !dbg !4483
  %174 = load i8, i8* %16, align 1, !dbg !4484
  store i8 %174, i8* %6, align 1, !dbg !4485
  br label %175, !dbg !4485

; <label>:175:                                    ; preds = %172, %24
  %176 = load i8, i8* %6, align 1, !dbg !4486
  ret i8 %176, !dbg !4486
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @Str_Strcpy(i8*, i8*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Id_IsSuperUser() #2 !dbg !4487 {
  %1 = call i32 @geteuid() #10, !dbg !4488
  %2 = icmp eq i32 0, %1, !dbg !4489
  %3 = zext i1 %2 to i32, !dbg !4489
  %4 = trunc i32 %3 to i8, !dbg !4490
  ret i8 %4, !dbg !4491
}

declare void @DynBuf_Init(%struct.DynBuf*) #5

declare %struct._IO_FILE* @Posix_Popen(i8*, i8*) #5

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #2 !dbg !4492 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !4497, metadata !752), !dbg !4498
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !4499
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !4500
  %5 = load i8*, i8** %4, align 8, !dbg !4500
  ret i8* %5, !dbg !4501
}

declare i8* @DynBuf_DetachString(%struct.DynBuf*) #5

declare i32 @pclose(%struct._IO_FILE*) #5

declare void @DynBuf_Destroy(%struct.DynBuf*) #5

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @Str_Strcat(i8*, i8*, i64) #5

declare i8* @UtilSafeStrdup0(i8*) #5

declare i8* @Str_ToLower(i8*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare signext i8 @StrUtil_StartsWith(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadWrite32(%struct.Atomic_uint32*, i32) #2 !dbg !4502 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !4505, metadata !752), !dbg !4506
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4507, metadata !752), !dbg !4508
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !4509
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !4510
  %7 = load i32, i32* %4, align 4, !dbg !4511
  %8 = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7, i32* %6) #10, !dbg !4512, !srcloc !4513
  store i32 %8, i32* %4, align 4, !dbg !4512
  %9 = load i32, i32* %4, align 4, !dbg !4514
  ret i32 %9, !dbg !4515
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Write32(%struct.Atomic_uint32*, i32) #2 !dbg !4516 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !4519, metadata !752), !dbg !4520
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4521, metadata !752), !dbg !4522
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !4523
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !4524
  %7 = load i32, i32* %4, align 4, !dbg !4525
  call void asm sideeffect "mov $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7) #10, !dbg !4526, !srcloc !4527
  ret void, !dbg !4528
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !4529 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !4533, metadata !752), !dbg !4534
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4535, metadata !752), !dbg !4536
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4537, metadata !752), !dbg !4538
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4539, metadata !752), !dbg !4540
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !4541
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !4542
  %10 = load i64, i64* %6, align 8, !dbg !4543
  %11 = load i64, i64* %5, align 8, !dbg !4544
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #10, !dbg !4545, !srcloc !4546
  store i64 %12, i64* %7, align 8, !dbg !4545
  %13 = load i64, i64* %7, align 8, !dbg !4547
  ret i64 %13, !dbg !4548
}

; Function Attrs: nounwind
declare i32 @getloadavg(double*, i32) #3

declare i32 @Id_SetRESUid(i32, i32, i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #2 !dbg !4549 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !4552, metadata !752), !dbg !4553
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4554, metadata !752), !dbg !4555
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4556, metadata !752), !dbg !4557
  %8 = load i8**, i8*** %3, align 8, !dbg !4558
  %9 = icmp eq i8** %8, null, !dbg !4560
  br i1 %9, label %10, label %11, !dbg !4561

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !4562

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !4564
  %13 = load i32, i32* %12, align 4, !dbg !4565
  store i32 %13, i32* %5, align 4, !dbg !4566
  %14 = load i64, i64* %4, align 8, !dbg !4567
  %15 = icmp sge i64 %14, 0, !dbg !4569
  br i1 %15, label %16, label %30, !dbg !4570

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4571, metadata !752), !dbg !4573
  store i64 0, i64* %6, align 8, !dbg !4574
  br label %17, !dbg !4576

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !4577
  %19 = load i64, i64* %4, align 8, !dbg !4580
  %20 = icmp slt i64 %18, %19, !dbg !4581
  br i1 %20, label %21, label %29, !dbg !4582

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !4583
  %23 = load i8**, i8*** %3, align 8, !dbg !4585
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !4585
  %25 = load i8*, i8** %24, align 8, !dbg !4585
  call void @free(i8* %25) #10, !dbg !4586
  br label %26, !dbg !4587

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !4588
  %28 = add nsw i64 %27, 1, !dbg !4588
  store i64 %28, i64* %6, align 8, !dbg !4588
  br label %17, !dbg !4590, !llvm.loop !4591

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !4593

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !4594, metadata !752), !dbg !4596
  %31 = load i8**, i8*** %3, align 8, !dbg !4597
  store i8** %31, i8*** %7, align 8, !dbg !4599
  br label %32, !dbg !4600

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !4601
  %34 = load i8*, i8** %33, align 8, !dbg !4604
  %35 = icmp ne i8* %34, null, !dbg !4605
  br i1 %35, label %36, label %42, !dbg !4606

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !4607
  %38 = load i8*, i8** %37, align 8, !dbg !4609
  call void @free(i8* %38) #10, !dbg !4610
  br label %39, !dbg !4611

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !4612
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !4612
  store i8** %41, i8*** %7, align 8, !dbg !4612
  br label %32, !dbg !4614, !llvm.loop !4615

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !4617
  %45 = bitcast i8** %44 to i8*, !dbg !4617
  call void @free(i8* %45) #10, !dbg !4618
  %46 = load i32, i32* %5, align 4, !dbg !4619
  %47 = call i32* @__errno_location() #1, !dbg !4620
  store i32 %46, i32* %47, align 4, !dbg !4621
  br label %48, !dbg !4622

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !4623
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_Read32(%struct.Atomic_uint32*) #2 !dbg !4625 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  %3 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !4630, metadata !752), !dbg !4631
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4632, metadata !752), !dbg !4633
  %4 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !4634
  %5 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %4, i32 0, i32 0, !dbg !4635
  %6 = call i32 asm sideeffect "mov $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5) #10, !dbg !4636, !srcloc !4637
  store i32 %6, i32* %3, align 4, !dbg !4636
  %7 = load i32, i32* %3, align 4, !dbg !4638
  ret i32 %7, !dbg !4639
}

; Function Attrs: nounwind
declare i32 @sysinfo(%struct.sysinfo*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HostinfoFindEntry(i8*, i8*, i32*) #0 !dbg !4640 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4643, metadata !752), !dbg !4644
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4645, metadata !752), !dbg !4646
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !4647, metadata !752), !dbg !4648
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4649, metadata !752), !dbg !4650
  %10 = load i8*, i8** %5, align 8, !dbg !4651
  %11 = load i8*, i8** %6, align 8, !dbg !4652
  %12 = call i8* @strstr(i8* %10, i8* %11) #12, !dbg !4653
  store i8* %12, i8** %8, align 8, !dbg !4650
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4654, metadata !752), !dbg !4655
  %13 = load i8*, i8** %8, align 8, !dbg !4656
  %14 = icmp eq i8* %13, null, !dbg !4658
  br i1 %14, label %15, label %16, !dbg !4659

; <label>:15:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !4660
  br label %62, !dbg !4660

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %6, align 8, !dbg !4662
  %18 = call i64 @strlen(i8* %17) #12, !dbg !4663
  %19 = load i8*, i8** %8, align 8, !dbg !4664
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !4664
  store i8* %20, i8** %8, align 8, !dbg !4664
  br label %21, !dbg !4665

; <label>:21:                                     ; preds = %33, %16
  %22 = load i8*, i8** %8, align 8, !dbg !4666
  %23 = load i8, i8* %22, align 1, !dbg !4668
  %24 = sext i8 %23 to i32, !dbg !4668
  %25 = icmp eq i32 %24, 32, !dbg !4669
  br i1 %25, label %31, label %26, !dbg !4670

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %8, align 8, !dbg !4671
  %28 = load i8, i8* %27, align 1, !dbg !4673
  %29 = sext i8 %28 to i32, !dbg !4673
  %30 = icmp eq i32 %29, 9, !dbg !4674
  br label %31, !dbg !4675

; <label>:31:                                     ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %36, !dbg !4676

; <label>:33:                                     ; preds = %31
  %34 = load i8*, i8** %8, align 8, !dbg !4678
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !4678
  store i8* %35, i8** %8, align 8, !dbg !4678
  br label %21, !dbg !4680, !llvm.loop !4682

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %8, align 8, !dbg !4683
  %38 = load i8, i8* %37, align 1, !dbg !4685
  %39 = sext i8 %38 to i32, !dbg !4685
  %40 = icmp slt i32 %39, 48, !dbg !4686
  br i1 %40, label %46, label %41, !dbg !4687

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %8, align 8, !dbg !4688
  %43 = load i8, i8* %42, align 1, !dbg !4690
  %44 = sext i8 %43 to i32, !dbg !4690
  %45 = icmp sgt i32 %44, 57, !dbg !4691
  br i1 %45, label %46, label %47, !dbg !4692

; <label>:46:                                     ; preds = %41, %36
  store i8 0, i8* %4, align 1, !dbg !4693
  br label %62, !dbg !4693

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %8, align 8, !dbg !4695
  %49 = call i64 @strtoul(i8* %48, i8** null, i32 10) #10, !dbg !4696
  %50 = trunc i64 %49 to i32, !dbg !4696
  store i32 %50, i32* %9, align 4, !dbg !4697
  %51 = call i32* @__errno_location() #1, !dbg !4698
  %52 = load i32, i32* %51, align 4, !dbg !4700
  %53 = icmp eq i32 %52, 34, !dbg !4701
  br i1 %53, label %58, label %54, !dbg !4702

; <label>:54:                                     ; preds = %47
  %55 = call i32* @__errno_location() #1, !dbg !4703
  %56 = load i32, i32* %55, align 4, !dbg !4705
  %57 = icmp eq i32 %56, 22, !dbg !4706
  br i1 %57, label %58, label %59, !dbg !4707

; <label>:58:                                     ; preds = %54, %47
  store i8 0, i8* %4, align 1, !dbg !4708
  br label %62, !dbg !4708

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %9, align 4, !dbg !4710
  %61 = load i32*, i32** %7, align 8, !dbg !4711
  store i32 %60, i32* %61, align 4, !dbg !4712
  store i8 1, i8* %4, align 1, !dbg !4713
  br label %62, !dbg !4713

; <label>:62:                                     ; preds = %59, %58, %46, %15
  %63 = load i8, i8* %4, align 1, !dbg !4714
  ret i8 %63, !dbg !4714
}

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #3

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!737, !738}
!llvm.ident = !{!739}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !616, globals: !676)
!1 = !DIFile(filename: "hostinfoPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!2 = !{!3, !9, !15, !233, !255, !263, !596, !601}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 34, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "StdIO_Error", value: 0)
!7 = !DIEnumerator(name: "StdIO_EOF", value: 1)
!8 = !DIEnumerator(name: "StdIO_Success", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__itimer_which", file: !10, line: 91, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "ITIMER_REAL", value: 0)
!13 = !DIEnumerator(name: "ITIMER_VIRTUAL", value: 1)
!14 = !DIEnumerator(name: "ITIMER_PROF", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 71, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!18 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!19 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!20 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!21 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!22 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!23 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!24 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!25 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!26 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!27 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!28 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!29 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!30 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!31 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!32 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!33 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!34 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!35 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!36 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!37 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!38 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!39 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!40 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!41 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!42 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!43 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!44 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!45 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!46 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!47 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!48 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!49 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!50 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!51 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!52 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!53 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!54 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!55 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!56 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!57 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!58 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!59 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!60 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!61 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!62 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!63 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!64 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!65 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!66 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!67 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!68 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!69 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!70 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!71 = !DIEnumerator(name: "_SC_PII", value: 53)
!72 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!73 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!74 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!75 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!76 = !DIEnumerator(name: "_SC_POLL", value: 58)
!77 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!78 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!79 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!80 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!81 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!82 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!83 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!84 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!85 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!86 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!87 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!88 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!89 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!90 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!91 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!92 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!93 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!94 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!95 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!96 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!97 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!98 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!99 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!100 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!101 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!102 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!103 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!104 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!105 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!106 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!107 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!108 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!109 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!110 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!111 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!112 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!113 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!114 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!115 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!116 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!117 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!118 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!119 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!120 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!121 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!122 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!123 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!124 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!125 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!126 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!127 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!128 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!129 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!130 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!131 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!132 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!133 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!134 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!135 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!136 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!137 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!138 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!139 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!140 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!141 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!142 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!143 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!144 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!145 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!146 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!147 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!148 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!149 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!150 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!151 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!152 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!153 = !DIEnumerator(name: "_SC_BASE", value: 134)
!154 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!155 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!156 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!157 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!158 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!159 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!160 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!161 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!162 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!163 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!164 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!165 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!166 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!167 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!168 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!169 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!170 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!171 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!172 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!173 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!174 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!175 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!176 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!177 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!178 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!179 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!180 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!181 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!182 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!183 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!184 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!185 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!186 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!187 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!188 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!189 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!190 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!191 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!192 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!193 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!194 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!195 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!196 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!197 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!198 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!199 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!200 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!201 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!202 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!203 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!204 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!205 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!206 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!207 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!208 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!209 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!210 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!211 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!212 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!213 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!214 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!215 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!216 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!217 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!218 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!219 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!220 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!221 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!222 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!223 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!224 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!225 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!226 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!227 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!228 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!229 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!230 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!231 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!232 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !234, line: 31, size: 32, align: 32, elements: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!236 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!237 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!238 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!239 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!240 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!241 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!242 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!243 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!244 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!245 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!246 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!247 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!248 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!249 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!250 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!251 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!252 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!253 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!254 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "HostinfoDaemonizeFlags", file: !256, line: 123, size: 32, align: 32, elements: !257)
!256 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hostinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!257 = !{!258, !259, !260, !261, !262}
!258 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_DEFAULT", value: 0)
!259 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_NOCHDIR", value: 1)
!260 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_NOCLOSE", value: 2)
!261 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_EXIT", value: 4)
!262 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_LOCKPID", value: 8)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !264, line: 58, size: 32, align: 32, elements: !265)
!264 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!266 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!267 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!268 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!269 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!270 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!271 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!272 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!273 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!274 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!275 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!276 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!277 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!278 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!279 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!280 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!281 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!282 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!283 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!284 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!285 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!286 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!287 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!288 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!289 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!290 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!291 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!292 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!293 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!294 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!295 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!296 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!297 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!298 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!299 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!309 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!310 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!311 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!312 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!313 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!314 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!315 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!316 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!317 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!318 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!319 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!320 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!321 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!322 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!323 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!324 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!325 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!326 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!327 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!328 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!329 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!330 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!331 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!332 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!333 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!334 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!335 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!336 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!337 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!338 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!339 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!340 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!341 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!342 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!343 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!344 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!345 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!346 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!347 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!348 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!349 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!350 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!351 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!352 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!353 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!354 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!355 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!356 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!357 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!358 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!359 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!360 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!361 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!362 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!363 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!364 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!365 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!366 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!367 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!368 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!369 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!370 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!371 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!372 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!373 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!374 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!375 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!376 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!377 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!378 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!379 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!380 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!381 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!382 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!383 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!384 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!385 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!386 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!387 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!388 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!389 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!390 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!391 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!392 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!393 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!394 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!395 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!396 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!397 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!398 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!399 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!400 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!401 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!402 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!403 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!404 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!405 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!406 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!407 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!408 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!409 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!410 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!411 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!412 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!413 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!414 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!415 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!416 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!417 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!418 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!419 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!420 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!421 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!422 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!423 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!424 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!425 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!426 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!427 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!428 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!429 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!430 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!431 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!432 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!433 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!434 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!435 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!436 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!437 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!438 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!439 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!440 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!441 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!442 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!443 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!444 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!445 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!446 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!447 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!448 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!449 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!450 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!451 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!452 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!453 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!454 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!455 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!456 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!457 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!458 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!459 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!460 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!461 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!462 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!463 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!464 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!465 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!466 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!467 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!468 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!469 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!470 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!471 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!472 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!473 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!474 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!475 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!476 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!477 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!478 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!479 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!480 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!481 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!482 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!483 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!484 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!485 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!486 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!487 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!488 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!489 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!490 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!491 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!492 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!493 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!494 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!495 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!496 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!497 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!498 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!499 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!500 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!501 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!502 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!503 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!504 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!505 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!506 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!507 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!508 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!509 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!510 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!511 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!512 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!513 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!514 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!515 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!516 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!517 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!518 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!519 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!520 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!521 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!522 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!523 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!524 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!525 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!526 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!527 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!528 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!529 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!530 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!531 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!532 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!533 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!534 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!535 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!536 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!537 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!538 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!539 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!540 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!541 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!542 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!543 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!544 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!545 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!546 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!547 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!548 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!549 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!550 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!551 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!552 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!553 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!554 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!555 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!556 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!557 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!558 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!559 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!560 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!561 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!562 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!563 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!564 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!565 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!566 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!567 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!568 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!569 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!570 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!571 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!572 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!573 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!574 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!575 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!576 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!577 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!578 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!579 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!580 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!581 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!582 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!583 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!584 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!585 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!586 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!587 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!588 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!589 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!590 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!591 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!592 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!593 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!594 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!595 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!596 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !256, line: 42, size: 32, align: 32, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIEnumerator(name: "HOSTINFO_PROCESS_QUERY_DEAD", value: 0)
!599 = !DIEnumerator(name: "HOSTINFO_PROCESS_QUERY_ALIVE", value: 1)
!600 = !DIEnumerator(name: "HOSTINFO_PROCESS_QUERY_UNKNOWN", value: 2)
!601 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !602, line: 46, size: 32, align: 32, elements: !603)
!602 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!604 = !DIEnumerator(name: "_ISupper", value: 256)
!605 = !DIEnumerator(name: "_ISlower", value: 512)
!606 = !DIEnumerator(name: "_ISalpha", value: 1024)
!607 = !DIEnumerator(name: "_ISdigit", value: 2048)
!608 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!609 = !DIEnumerator(name: "_ISspace", value: 8192)
!610 = !DIEnumerator(name: "_ISprint", value: 16384)
!611 = !DIEnumerator(name: "_ISgraph", value: 32768)
!612 = !DIEnumerator(name: "_ISblank", value: 1)
!613 = !DIEnumerator(name: "_IScntrl", value: 2)
!614 = !DIEnumerator(name: "_ISpunct", value: 4)
!615 = !DIEnumerator(name: "_ISalnum", value: 8)
!616 = !{!617, !622, !623, !627, !628, !633, !634, !626, !635, !638, !639, !640, !641, !644, !645}
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !618, line: 172, baseType: !619)
!618 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !620, line: 197, baseType: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!621 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !618, line: 173, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !625, line: 51, baseType: !626)
!625 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!626 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !618, line: 354, baseType: !617)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !629, line: 85, baseType: !630)
!629 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !633}
!633 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!634 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !618, line: 171, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !625, line: 55, baseType: !637)
!637 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!638 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !625, line: 122, baseType: !637)
!640 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !620, line: 80, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !643, line: 125, baseType: !626)
!643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !647, line: 7, size: 896, align: 64, elements: !648)
!647 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!648 = !{!649, !652, !657, !658, !659, !660, !661, !662, !663, !666, !667, !668, !669, !671}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !646, file: !647, line: 8, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !651, line: 14, baseType: !621)
!651 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!652 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !646, file: !647, line: 9, baseType: !653, size: 192, align: 64, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 192, align: 64, elements: !655)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !651, line: 15, baseType: !637)
!655 = !{!656}
!656 = !DISubrange(count: 3)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !646, file: !647, line: 10, baseType: !654, size: 64, align: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !646, file: !647, line: 11, baseType: !654, size: 64, align: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !646, file: !647, line: 12, baseType: !654, size: 64, align: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !646, file: !647, line: 13, baseType: !654, size: 64, align: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !646, file: !647, line: 14, baseType: !654, size: 64, align: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !646, file: !647, line: 15, baseType: !654, size: 64, align: 64, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !646, file: !647, line: 16, baseType: !664, size: 16, align: 16, offset: 640)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !665, line: 23, baseType: !638)
!665 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !646, file: !647, line: 17, baseType: !664, size: 16, align: 16, offset: 656)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !646, file: !647, line: 18, baseType: !654, size: 64, align: 64, offset: 704)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !646, file: !647, line: 19, baseType: !654, size: 64, align: 64, offset: 768)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !646, file: !647, line: 20, baseType: !670, size: 32, align: 32, offset: 832)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !665, line: 26, baseType: !626)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !646, file: !647, line: 21, baseType: !672, align: 8, offset: 864)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, align: 8, elements: !674)
!673 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!674 = !{!675}
!675 = !DISubrange(count: 0)
!676 = !{!677, !683, !695, !705, !706, !707, !717, !727, !731}
!677 = distinct !DIGlobalVariable(name: "count", scope: !678, file: !679, line: 1629, type: !633, isLocal: true, isDefinition: true, variable: i32* @Hostinfo_NumCPUs.count)
!678 = distinct !DISubprogram(name: "Hostinfo_NumCPUs", scope: !679, file: !679, line: 1572, type: !680, isLocal: false, isDefinition: true, scopeLine: 1573, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!679 = !DIFile(filename: "hostinfoPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!680 = !DISubroutineType(types: !681)
!681 = !{!623}
!682 = !{}
!683 = distinct !DIGlobalVariable(name: "state", scope: !684, file: !679, line: 1695, type: !688, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @Hostinfo_NameGet.state)
!684 = distinct !DISubprogram(name: "Hostinfo_NameGet", scope: !679, file: !679, line: 1691, type: !685, isLocal: false, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!685 = !DISubroutineType(types: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !689, line: 3829, baseType: !690)
!689 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !689, line: 139, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !689, line: 137, size: 64, align: 64, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !691, file: !689, line: 138, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !635)
!695 = distinct !DIGlobalVariable(name: "fdStorage", scope: !696, file: !679, line: 3055, type: !699, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint32* @Hostinfo_SystemUpTime.fdStorage)
!696 = distinct !DISubprogram(name: "Hostinfo_SystemUpTime", scope: !679, file: !679, line: 3045, type: !697, isLocal: false, isDefinition: true, scopeLine: 3046, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!697 = !DISubroutineType(types: !698)
!698 = !{!627}
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Int", file: !689, line: 3833, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !689, line: 135, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !689, line: 133, size: 32, align: 32, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !701, file: !689, line: 134, baseType: !704, size: 32, align: 32)
!704 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !623)
!705 = distinct !DIGlobalVariable(name: "logFailedPread", scope: !696, file: !679, line: 3056, type: !700, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint32* @Hostinfo_SystemUpTime.logFailedPread)
!706 = distinct !DIGlobalVariable(name: "hostinfoOSVersion", scope: !0, file: !679, line: 152, type: !688, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @hostinfoOSVersion)
!707 = distinct !DIGlobalVariable(name: "distroArray", scope: !0, file: !679, line: 181, type: !708, isLocal: true, isDefinition: true, variable: [41 x %struct.DistroInfo]* @distroArray)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 5248, align: 64, elements: !715)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "DistroInfo", file: !679, line: 178, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 175, size: 128, align: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !711, file: !679, line: 176, baseType: !687, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !711, file: !679, line: 177, baseType: !687, size: 64, align: 64, offset: 64)
!715 = !{!716}
!716 = !DISubrange(count: 41)
!717 = distinct !DIGlobalVariable(name: "lsbFields", scope: !0, file: !679, line: 162, type: !718, isLocal: true, isDefinition: true, variable: [5 x %struct.DistroNameScan]* @lsbFields)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 640, align: 64, elements: !725)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "DistroNameScan", file: !679, line: 160, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 157, size: 128, align: 64, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !721, file: !679, line: 158, baseType: !687, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "scanString", scope: !721, file: !679, line: 159, baseType: !687, size: 64, align: 64, offset: 64)
!725 = !{!726}
!726 = !DISubrange(count: 5)
!727 = distinct !DIGlobalVariable(name: "osReleaseFields", scope: !0, file: !679, line: 170, type: !728, isLocal: true, isDefinition: true, variable: [2 x %struct.DistroNameScan]* @osReleaseFields)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 256, align: 64, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 2)
!731 = distinct !DIGlobalVariable(name: "mutex", scope: !732, file: !679, line: 490, type: !700, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint32* @HostinfoPostData.mutex)
!732 = distinct !DISubprogram(name: "HostinfoPostData", scope: !679, file: !679, line: 486, type: !733, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !735, !687}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!737 = !{i32 2, !"Dwarf Version", i32 4}
!738 = !{i32 2, !"Debug Info Version", i32 3}
!739 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!740 = distinct !DISubprogram(name: "Hostinfo_OSVersionString", scope: !679, file: !679, line: 327, type: !741, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!741 = !DISubroutineType(types: !742)
!742 = !{!735}
!743 = !DILocalVariable(name: "version", scope: !740, file: !679, line: 329, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64, align: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostinfoOSVersion", file: !679, line: 147, size: 192, align: 64, elements: !746)
!746 = !{!747, !751}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfoOSVersion", scope: !745, file: !679, line: 148, baseType: !748, size: 128, align: 32)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 128, align: 32, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 4)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfoOSVersionString", scope: !745, file: !679, line: 149, baseType: !687, size: 64, align: 64, offset: 128)
!752 = !DIExpression()
!753 = !DILocation(line: 329, column: 30, scope: !740)
!754 = !DILocation(line: 331, column: 4, scope: !740)
!755 = !DILocation(line: 333, column: 14, scope: !740)
!756 = !DILocation(line: 333, column: 12, scope: !740)
!757 = !DILocation(line: 335, column: 11, scope: !740)
!758 = !DILocation(line: 335, column: 20, scope: !740)
!759 = !DILocation(line: 335, column: 4, scope: !740)
!760 = distinct !DISubprogram(name: "HostinfoOSVersionInit", scope: !679, file: !679, line: 252, type: !761, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!761 = !DISubroutineType(types: !762)
!762 = !{null}
!763 = !DILocalVariable(name: "version", scope: !760, file: !679, line: 254, type: !744)
!764 = !DILocation(line: 254, column: 30, scope: !760)
!765 = !DILocalVariable(name: "u", scope: !760, file: !679, line: 255, type: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !767, line: 48, size: 3120, align: 8, elements: !768)
!767 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!768 = !{!769, !773, !774, !775, !776, !777}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !766, file: !767, line: 51, baseType: !770, size: 520, align: 8)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 520, align: 8, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 65)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !766, file: !767, line: 54, baseType: !770, size: 520, align: 8, offset: 520)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !766, file: !767, line: 57, baseType: !770, size: 520, align: 8, offset: 1040)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !766, file: !767, line: 59, baseType: !770, size: 520, align: 8, offset: 1560)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !766, file: !767, line: 62, baseType: !770, size: 520, align: 8, offset: 2080)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !766, file: !767, line: 67, baseType: !770, size: 520, align: 8, offset: 2600)
!778 = !DILocation(line: 255, column: 19, scope: !760)
!779 = !DILocalVariable(name: "extra", scope: !760, file: !679, line: 256, type: !687)
!780 = !DILocation(line: 256, column: 10, scope: !760)
!781 = !DILocalVariable(name: "p", scope: !760, file: !679, line: 257, type: !687)
!782 = !DILocation(line: 257, column: 10, scope: !760)
!783 = !DILocation(line: 259, column: 8, scope: !784)
!784 = distinct !DILexicalBlock(scope: !760, file: !679, line: 259, column: 8)
!785 = !DILocation(line: 259, column: 8, scope: !760)
!786 = !DILocation(line: 260, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !679, line: 259, column: 44)
!788 = !DILocation(line: 263, column: 8, scope: !789)
!789 = distinct !DILexicalBlock(scope: !760, file: !679, line: 263, column: 8)
!790 = !DILocation(line: 263, column: 18, scope: !789)
!791 = !DILocation(line: 263, column: 8, scope: !760)
!792 = !DILocation(line: 265, column: 40, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !679, line: 263, column: 23)
!794 = !DILocation(line: 265, column: 39, scope: !793)
!795 = !DILocation(line: 265, column: 22, scope: !796)
!796 = !DILexicalBlockFile(scope: !793, file: !679, discriminator: 1)
!797 = !DILocation(line: 264, column: 7, scope: !793)
!798 = !DILocation(line: 266, column: 7, scope: !793)
!799 = !DILocation(line: 269, column: 14, scope: !760)
!800 = !DILocation(line: 269, column: 12, scope: !760)
!801 = !DILocation(line: 270, column: 59, scope: !760)
!802 = !DILocation(line: 270, column: 56, scope: !760)
!803 = !DILocation(line: 270, column: 39, scope: !760)
!804 = !DILocation(line: 270, column: 4, scope: !760)
!805 = !DILocation(line: 270, column: 13, scope: !760)
!806 = !DILocation(line: 270, column: 37, scope: !760)
!807 = !DILocation(line: 281, column: 12, scope: !760)
!808 = !DILocation(line: 281, column: 10, scope: !760)
!809 = !DILocation(line: 282, column: 17, scope: !810)
!810 = distinct !DILexicalBlock(scope: !760, file: !679, line: 282, column: 8)
!811 = !DILocation(line: 282, column: 15, scope: !810)
!812 = !DILocation(line: 283, column: 9, scope: !810)
!813 = !DILocation(line: 283, column: 18, scope: !810)
!814 = !DILocation(line: 283, column: 41, scope: !810)
!815 = !DILocation(line: 283, column: 50, scope: !810)
!816 = !DILocation(line: 284, column: 9, scope: !810)
!817 = !DILocation(line: 284, column: 18, scope: !810)
!818 = !DILocation(line: 284, column: 40, scope: !810)
!819 = !DILocation(line: 282, column: 8, scope: !810)
!820 = !DILocation(line: 284, column: 47, scope: !810)
!821 = !DILocation(line: 282, column: 8, scope: !760)
!822 = !DILocation(line: 286, column: 31, scope: !823)
!823 = distinct !DILexicalBlock(scope: !810, file: !679, line: 284, column: 52)
!824 = !DILocation(line: 286, column: 29, scope: !823)
!825 = !DILocation(line: 285, column: 7, scope: !823)
!826 = !DILocation(line: 287, column: 7, scope: !823)
!827 = !DILocation(line: 295, column: 8, scope: !760)
!828 = !DILocation(line: 295, column: 6, scope: !760)
!829 = !DILocation(line: 296, column: 4, scope: !760)
!830 = !DILocation(line: 296, column: 12, scope: !831)
!831 = !DILexicalBlockFile(scope: !760, file: !679, discriminator: 1)
!832 = !DILocation(line: 296, column: 11, scope: !831)
!833 = !DILocation(line: 296, column: 14, scope: !831)
!834 = !DILocation(line: 296, column: 18, scope: !835)
!835 = !DILexicalBlockFile(scope: !760, file: !679, discriminator: 2)
!836 = !DILocation(line: 296, column: 17, scope: !835)
!837 = !DILocation(line: 296, column: 38, scope: !835)
!838 = !DILocation(line: 296, column: 20, scope: !835)
!839 = !DILocation(line: 296, column: 19, scope: !835)
!840 = !DILocation(line: 296, column: 21, scope: !835)
!841 = !DILocation(line: 296, column: 4, scope: !842)
!842 = !DILexicalBlockFile(scope: !760, file: !679, discriminator: 3)
!843 = !DILocation(line: 297, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !760, file: !679, line: 296, column: 30)
!845 = !DILocation(line: 296, column: 4, scope: !846)
!846 = !DILexicalBlockFile(scope: !760, file: !679, discriminator: 4)
!847 = distinct !{!847, !829}
!848 = !DILocation(line: 299, column: 11, scope: !760)
!849 = !DILocation(line: 299, column: 21, scope: !760)
!850 = !DILocation(line: 299, column: 30, scope: !760)
!851 = !DILocation(line: 299, column: 4, scope: !760)
!852 = !DILocation(line: 300, column: 9, scope: !760)
!853 = !DILocation(line: 300, column: 4, scope: !760)
!854 = !DILocation(line: 302, column: 60, scope: !855)
!855 = distinct !DILexicalBlock(scope: !760, file: !679, line: 302, column: 8)
!856 = !DILocation(line: 302, column: 8, scope: !855)
!857 = !DILocation(line: 302, column: 8, scope: !760)
!858 = !DILocation(line: 303, column: 12, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !679, line: 302, column: 70)
!860 = !DILocation(line: 303, column: 21, scope: !859)
!861 = !DILocation(line: 303, column: 7, scope: !859)
!862 = !DILocation(line: 304, column: 12, scope: !859)
!863 = !DILocation(line: 304, column: 7, scope: !859)
!864 = !DILocation(line: 305, column: 4, scope: !859)
!865 = !DILocation(line: 306, column: 1, scope: !760)
!866 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !689, file: !689, line: 3829, type: !867, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!867 = !DISubroutineType(types: !868)
!868 = !{!622, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!871 = !DILocalVariable(name: "var", arg: 1, scope: !866, file: !689, line: 3829, type: !869)
!872 = !DILocation(line: 3829, column: 368, scope: !866)
!873 = !DILocation(line: 3829, column: 415, scope: !866)
!874 = !DILocation(line: 3829, column: 401, scope: !866)
!875 = !DILocation(line: 3829, column: 382, scope: !866)
!876 = !DILocation(line: 3829, column: 375, scope: !866)
!877 = distinct !DISubprogram(name: "Hostinfo_OSVersion", scope: !679, file: !679, line: 357, type: !878, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!878 = !DISubroutineType(types: !879)
!879 = !{!633, !626}
!880 = !DILocalVariable(name: "i", arg: 1, scope: !877, file: !679, line: 357, type: !626)
!881 = !DILocation(line: 357, column: 33, scope: !877)
!882 = !DILocalVariable(name: "version", scope: !877, file: !679, line: 359, type: !744)
!883 = !DILocation(line: 359, column: 30, scope: !877)
!884 = !DILocation(line: 361, column: 4, scope: !877)
!885 = !DILocation(line: 363, column: 14, scope: !877)
!886 = !DILocation(line: 363, column: 12, scope: !877)
!887 = !DILocation(line: 365, column: 12, scope: !877)
!888 = !DILocation(line: 365, column: 14, scope: !877)
!889 = !DILocation(line: 365, column: 11, scope: !877)
!890 = !DILocation(line: 366, column: 39, scope: !877)
!891 = !DILocation(line: 366, column: 12, scope: !877)
!892 = !DILocation(line: 366, column: 21, scope: !877)
!893 = !DILocation(line: 365, column: 11, scope: !894)
!894 = !DILexicalBlockFile(scope: !877, file: !679, discriminator: 1)
!895 = !DILocation(line: 365, column: 11, scope: !896)
!896 = !DILexicalBlockFile(scope: !877, file: !679, discriminator: 2)
!897 = !DILocation(line: 365, column: 11, scope: !898)
!898 = !DILexicalBlockFile(scope: !877, file: !679, discriminator: 3)
!899 = !DILocation(line: 365, column: 4, scope: !898)
!900 = distinct !DISubprogram(name: "Hostinfo_GetTimeOfDay", scope: !679, file: !679, line: 388, type: !901, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!904 = !DILocalVariable(name: "time", arg: 1, scope: !900, file: !679, line: 388, type: !903)
!905 = !DILocation(line: 388, column: 35, scope: !900)
!906 = !DILocalVariable(name: "tv", scope: !900, file: !679, line: 390, type: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !908, line: 30, size: 128, align: 64, elements: !909)
!908 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!909 = !{!910, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !907, file: !908, line: 32, baseType: !911, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !643, line: 139, baseType: !621)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !907, file: !908, line: 33, baseType: !913, size: 64, align: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !643, line: 141, baseType: !621)
!914 = !DILocation(line: 390, column: 19, scope: !900)
!915 = !DILocation(line: 392, column: 4, scope: !900)
!916 = !DILocation(line: 394, column: 23, scope: !900)
!917 = !DILocation(line: 394, column: 30, scope: !900)
!918 = !DILocation(line: 394, column: 46, scope: !900)
!919 = !DILocation(line: 394, column: 41, scope: !900)
!920 = !DILocation(line: 394, column: 5, scope: !900)
!921 = !DILocation(line: 394, column: 10, scope: !900)
!922 = !DILocation(line: 395, column: 1, scope: !900)
!923 = distinct !DISubprogram(name: "Hostinfo_GetSystemBitness", scope: !679, file: !679, line: 416, type: !924, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!924 = !DISubroutineType(types: !925)
!925 = !{!633}
!926 = !DILocalVariable(name: "u", scope: !923, file: !679, line: 419, type: !766)
!927 = !DILocation(line: 419, column: 19, scope: !923)
!928 = !DILocation(line: 421, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !923, file: !679, line: 421, column: 8)
!930 = !DILocation(line: 421, column: 18, scope: !929)
!931 = !DILocation(line: 421, column: 8, scope: !923)
!932 = !DILocation(line: 422, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !679, line: 421, column: 23)
!934 = !DILocation(line: 425, column: 17, scope: !935)
!935 = distinct !DILexicalBlock(scope: !923, file: !679, line: 425, column: 8)
!936 = !DILocation(line: 425, column: 15, scope: !935)
!937 = !DILocation(line: 425, column: 8, scope: !935)
!938 = !DILocation(line: 425, column: 8, scope: !923)
!939 = !DILocation(line: 426, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !679, line: 425, column: 37)
!941 = !DILocation(line: 428, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !679, line: 427, column: 11)
!943 = !DILocation(line: 466, column: 1, scope: !923)
!944 = distinct !DISubprogram(name: "HostinfoOSData", scope: !679, file: !679, line: 1511, type: !945, isLocal: false, isDefinition: true, scopeLine: 1512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!945 = !DISubroutineType(types: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !618, line: 230, baseType: !673)
!948 = !DILocalVariable(name: "success", scope: !944, file: !679, line: 1513, type: !947)
!949 = !DILocation(line: 1513, column: 9, scope: !944)
!950 = !DILocalVariable(name: "buf", scope: !944, file: !679, line: 1514, type: !766)
!951 = !DILocation(line: 1514, column: 19, scope: !944)
!952 = !DILocation(line: 1520, column: 8, scope: !953)
!953 = distinct !DILexicalBlock(scope: !944, file: !679, line: 1520, column: 8)
!954 = !DILocation(line: 1520, column: 20, scope: !953)
!955 = !DILocation(line: 1520, column: 8, scope: !944)
!956 = !DILocation(line: 1521, column: 55, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !679, line: 1520, column: 25)
!958 = !DILocation(line: 1521, column: 54, scope: !957)
!959 = !DILocation(line: 1521, column: 7, scope: !960)
!960 = !DILexicalBlockFile(scope: !957, file: !679, discriminator: 1)
!961 = !DILocation(line: 1523, column: 7, scope: !957)
!962 = !DILocation(line: 1531, column: 19, scope: !963)
!963 = distinct !DILexicalBlock(scope: !944, file: !679, line: 1531, column: 8)
!964 = !DILocation(line: 1531, column: 15, scope: !963)
!965 = !DILocation(line: 1531, column: 8, scope: !963)
!966 = !DILocation(line: 1531, column: 8, scope: !944)
!967 = !DILocation(line: 1532, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !679, line: 1531, column: 38)
!969 = !DILocation(line: 1532, column: 15, scope: !968)
!970 = !DILocation(line: 1533, column: 4, scope: !968)
!971 = !DILocation(line: 1533, column: 26, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !679, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !963, file: !679, line: 1533, column: 15)
!974 = !DILocation(line: 1533, column: 22, scope: !972)
!975 = !DILocation(line: 1533, column: 15, scope: !972)
!976 = !DILocation(line: 1534, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !679, line: 1533, column: 47)
!978 = !DILocation(line: 1534, column: 15, scope: !977)
!979 = !DILocation(line: 1535, column: 4, scope: !977)
!980 = !DILocation(line: 1535, column: 26, scope: !981)
!981 = !DILexicalBlockFile(scope: !982, file: !679, discriminator: 1)
!982 = distinct !DILexicalBlock(scope: !973, file: !679, line: 1535, column: 15)
!983 = !DILocation(line: 1535, column: 22, scope: !981)
!984 = !DILocation(line: 1535, column: 15, scope: !981)
!985 = !DILocation(line: 1536, column: 17, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !679, line: 1535, column: 45)
!987 = !DILocation(line: 1536, column: 15, scope: !986)
!988 = !DILocation(line: 1537, column: 4, scope: !986)
!989 = !DILocation(line: 1538, column: 15, scope: !990)
!990 = distinct !DILexicalBlock(scope: !982, file: !679, line: 1537, column: 11)
!991 = !DILocation(line: 1542, column: 11, scope: !944)
!992 = !DILocation(line: 1542, column: 4, scope: !944)
!993 = !DILocation(line: 1543, column: 1, scope: !944)
!994 = distinct !DISubprogram(name: "HostinfoLinux", scope: !679, file: !679, line: 1317, type: !995, isLocal: true, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!995 = !DISubroutineType(types: !996)
!996 = !{!947, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!998 = !DILocalVariable(name: "buf", arg: 1, scope: !994, file: !679, line: 1317, type: !997)
!999 = !DILocation(line: 1317, column: 31, scope: !994)
!1000 = !DILocalVariable(name: "len", scope: !994, file: !679, line: 1319, type: !633)
!1001 = !DILocation(line: 1319, column: 8, scope: !994)
!1002 = !DILocalVariable(name: "distro", scope: !994, file: !679, line: 1320, type: !1003)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 8192, align: 8, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 1024)
!1006 = !DILocation(line: 1320, column: 9, scope: !994)
!1007 = !DILocalVariable(name: "distroShort", scope: !994, file: !679, line: 1321, type: !1003)
!1008 = !DILocation(line: 1321, column: 9, scope: !994)
!1009 = !DILocalVariable(name: "osName", scope: !994, file: !679, line: 1322, type: !1010)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 1024, align: 8, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 128)
!1013 = !DILocation(line: 1322, column: 9, scope: !994)
!1014 = !DILocalVariable(name: "osNameFull", scope: !994, file: !679, line: 1323, type: !1015)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 4096, align: 8, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 512)
!1018 = !DILocation(line: 1323, column: 9, scope: !994)
!1019 = !DILocation(line: 1326, column: 20, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !994, file: !679, line: 1326, column: 8)
!1021 = !DILocation(line: 1326, column: 8, scope: !1020)
!1022 = !DILocation(line: 1326, column: 8, scope: !994)
!1023 = !DILocation(line: 1327, column: 36, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !679, line: 1326, column: 44)
!1025 = !DILocation(line: 1327, column: 7, scope: !1024)
!1026 = !DILocation(line: 1328, column: 30, scope: !1024)
!1027 = !DILocation(line: 1328, column: 38, scope: !1024)
!1028 = !DILocation(line: 1328, column: 7, scope: !1024)
!1029 = !DILocation(line: 1329, column: 7, scope: !1024)
!1030 = !DILocation(line: 1333, column: 26, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !994, file: !679, line: 1333, column: 8)
!1032 = !DILocation(line: 1333, column: 8, scope: !1031)
!1033 = !DILocation(line: 1333, column: 8, scope: !994)
!1034 = !DILocation(line: 1334, column: 36, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !679, line: 1333, column: 50)
!1036 = !DILocation(line: 1334, column: 7, scope: !1035)
!1037 = !DILocation(line: 1335, column: 30, scope: !1035)
!1038 = !DILocation(line: 1335, column: 38, scope: !1035)
!1039 = !DILocation(line: 1335, column: 7, scope: !1035)
!1040 = !DILocation(line: 1336, column: 7, scope: !1035)
!1041 = !DILocation(line: 1340, column: 25, scope: !994)
!1042 = !DILocation(line: 1341, column: 25, scope: !994)
!1043 = !DILocation(line: 1340, column: 4, scope: !994)
!1044 = !DILocation(line: 1345, column: 23, scope: !994)
!1045 = !DILocation(line: 1345, column: 66, scope: !994)
!1046 = !DILocation(line: 1345, column: 71, scope: !994)
!1047 = !DILocation(line: 1346, column: 23, scope: !994)
!1048 = !DILocation(line: 1346, column: 28, scope: !994)
!1049 = !DILocation(line: 1346, column: 37, scope: !994)
!1050 = !DILocation(line: 1345, column: 10, scope: !994)
!1051 = !DILocation(line: 1345, column: 8, scope: !994)
!1052 = !DILocation(line: 1348, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !994, file: !679, line: 1348, column: 8)
!1054 = !DILocation(line: 1348, column: 12, scope: !1053)
!1055 = !DILocation(line: 1348, column: 8, scope: !994)
!1056 = !DILocation(line: 1349, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !679, line: 1349, column: 11)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !679, line: 1348, column: 19)
!1059 = !DILocation(line: 1349, column: 39, scope: !1057)
!1060 = !DILocation(line: 1349, column: 11, scope: !1058)
!1061 = !DILocation(line: 1350, column: 29, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !679, line: 1349, column: 46)
!1063 = !DILocation(line: 1350, column: 60, scope: !1062)
!1064 = !DILocation(line: 1350, column: 16, scope: !1062)
!1065 = !DILocation(line: 1350, column: 14, scope: !1062)
!1066 = !DILocation(line: 1352, column: 7, scope: !1062)
!1067 = !DILocation(line: 1353, column: 29, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1057, file: !679, line: 1352, column: 14)
!1069 = !DILocation(line: 1353, column: 58, scope: !1068)
!1070 = !DILocation(line: 1353, column: 16, scope: !1068)
!1071 = !DILocation(line: 1353, column: 14, scope: !1068)
!1072 = !DILocation(line: 1355, column: 4, scope: !1058)
!1073 = !DILocation(line: 1357, column: 8, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !994, file: !679, line: 1357, column: 8)
!1075 = !DILocation(line: 1357, column: 12, scope: !1074)
!1076 = !DILocation(line: 1357, column: 8, scope: !994)
!1077 = !DILocation(line: 1358, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !679, line: 1357, column: 19)
!1079 = !DILocation(line: 1359, column: 4, scope: !1078)
!1080 = !DILocation(line: 1360, column: 24, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !679, line: 1359, column: 11)
!1082 = !DILocation(line: 1360, column: 32, scope: !1081)
!1083 = !DILocation(line: 1360, column: 7, scope: !1081)
!1084 = !DILocation(line: 1363, column: 12, scope: !994)
!1085 = !DILocation(line: 1363, column: 16, scope: !994)
!1086 = !DILocation(line: 1363, column: 11, scope: !994)
!1087 = !DILocation(line: 1363, column: 4, scope: !994)
!1088 = distinct !DISubprogram(name: "HostinfoBSD", scope: !679, file: !679, line: 1385, type: !995, isLocal: true, isDefinition: true, scopeLine: 1386, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1089 = !DILocalVariable(name: "buf", arg: 1, scope: !1088, file: !679, line: 1385, type: !997)
!1090 = !DILocation(line: 1385, column: 29, scope: !1088)
!1091 = !DILocalVariable(name: "len", scope: !1088, file: !679, line: 1387, type: !633)
!1092 = !DILocation(line: 1387, column: 8, scope: !1088)
!1093 = !DILocalVariable(name: "majorVersion", scope: !1088, file: !679, line: 1388, type: !633)
!1094 = !DILocation(line: 1388, column: 8, scope: !1088)
!1095 = !DILocalVariable(name: "distroShort", scope: !1088, file: !679, line: 1389, type: !1003)
!1096 = !DILocation(line: 1389, column: 9, scope: !1088)
!1097 = !DILocalVariable(name: "osName", scope: !1088, file: !679, line: 1390, type: !1010)
!1098 = !DILocation(line: 1390, column: 9, scope: !1088)
!1099 = !DILocalVariable(name: "osNameFull", scope: !1088, file: !679, line: 1391, type: !1015)
!1100 = !DILocation(line: 1391, column: 9, scope: !1088)
!1101 = !DILocation(line: 1397, column: 19, scope: !1088)
!1102 = !DILocation(line: 1397, column: 17, scope: !1088)
!1103 = !DILocation(line: 1402, column: 8, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1088, file: !679, line: 1402, column: 8)
!1105 = !DILocation(line: 1402, column: 21, scope: !1104)
!1106 = !DILocation(line: 1402, column: 8, scope: !1088)
!1107 = !DILocation(line: 1403, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !679, line: 1403, column: 11)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !679, line: 1402, column: 28)
!1110 = !DILocation(line: 1403, column: 24, scope: !1108)
!1111 = !DILocation(line: 1403, column: 11, scope: !1109)
!1112 = !DILocation(line: 1404, column: 21, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !679, line: 1403, column: 31)
!1114 = !DILocation(line: 1404, column: 10, scope: !1113)
!1115 = !DILocation(line: 1405, column: 7, scope: !1113)
!1116 = !DILocation(line: 1406, column: 21, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1108, file: !679, line: 1405, column: 14)
!1118 = !DILocation(line: 1406, column: 10, scope: !1117)
!1119 = !DILocation(line: 1408, column: 4, scope: !1109)
!1120 = !DILocation(line: 1409, column: 18, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1104, file: !679, line: 1408, column: 11)
!1122 = !DILocation(line: 1409, column: 7, scope: !1121)
!1123 = !DILocation(line: 1412, column: 23, scope: !1088)
!1124 = !DILocation(line: 1412, column: 63, scope: !1088)
!1125 = !DILocation(line: 1412, column: 68, scope: !1088)
!1126 = !DILocation(line: 1413, column: 23, scope: !1088)
!1127 = !DILocation(line: 1413, column: 28, scope: !1088)
!1128 = !DILocation(line: 1412, column: 10, scope: !1088)
!1129 = !DILocation(line: 1412, column: 8, scope: !1088)
!1130 = !DILocation(line: 1415, column: 8, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1088, file: !679, line: 1415, column: 8)
!1132 = !DILocation(line: 1415, column: 12, scope: !1131)
!1133 = !DILocation(line: 1415, column: 8, scope: !1088)
!1134 = !DILocation(line: 1416, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !679, line: 1416, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !679, line: 1415, column: 19)
!1137 = !DILocation(line: 1416, column: 39, scope: !1135)
!1138 = !DILocation(line: 1416, column: 11, scope: !1136)
!1139 = !DILocation(line: 1417, column: 29, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !679, line: 1416, column: 46)
!1141 = !DILocation(line: 1417, column: 60, scope: !1140)
!1142 = !DILocation(line: 1417, column: 16, scope: !1140)
!1143 = !DILocation(line: 1417, column: 14, scope: !1140)
!1144 = !DILocation(line: 1419, column: 7, scope: !1140)
!1145 = !DILocation(line: 1420, column: 29, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1135, file: !679, line: 1419, column: 14)
!1147 = !DILocation(line: 1420, column: 58, scope: !1146)
!1148 = !DILocation(line: 1420, column: 16, scope: !1146)
!1149 = !DILocation(line: 1420, column: 14, scope: !1146)
!1150 = !DILocation(line: 1422, column: 4, scope: !1136)
!1151 = !DILocation(line: 1424, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1088, file: !679, line: 1424, column: 8)
!1153 = !DILocation(line: 1424, column: 12, scope: !1152)
!1154 = !DILocation(line: 1424, column: 8, scope: !1088)
!1155 = !DILocation(line: 1425, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !679, line: 1424, column: 19)
!1157 = !DILocation(line: 1426, column: 4, scope: !1156)
!1158 = !DILocation(line: 1427, column: 24, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !679, line: 1426, column: 11)
!1160 = !DILocation(line: 1427, column: 32, scope: !1159)
!1161 = !DILocation(line: 1427, column: 7, scope: !1159)
!1162 = !DILocation(line: 1430, column: 12, scope: !1088)
!1163 = !DILocation(line: 1430, column: 16, scope: !1088)
!1164 = !DILocation(line: 1430, column: 11, scope: !1088)
!1165 = !DILocation(line: 1430, column: 4, scope: !1088)
!1166 = distinct !DISubprogram(name: "HostinfoSun", scope: !679, file: !679, line: 1452, type: !995, isLocal: true, isDefinition: true, scopeLine: 1453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1167 = !DILocalVariable(name: "buf", arg: 1, scope: !1166, file: !679, line: 1452, type: !997)
!1168 = !DILocation(line: 1452, column: 29, scope: !1166)
!1169 = !DILocalVariable(name: "len", scope: !1166, file: !679, line: 1454, type: !633)
!1170 = !DILocation(line: 1454, column: 8, scope: !1166)
!1171 = !DILocalVariable(name: "osName", scope: !1166, file: !679, line: 1455, type: !1010)
!1172 = !DILocation(line: 1455, column: 9, scope: !1166)
!1173 = !DILocalVariable(name: "osNameFull", scope: !1166, file: !679, line: 1456, type: !1015)
!1174 = !DILocation(line: 1456, column: 9, scope: !1166)
!1175 = !DILocalVariable(name: "solarisRelease", scope: !1166, file: !679, line: 1457, type: !1176)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 24, align: 8, elements: !655)
!1177 = !DILocation(line: 1457, column: 9, scope: !1166)
!1178 = !DILocation(line: 1465, column: 15, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1166, file: !679, line: 1465, column: 8)
!1180 = !DILocation(line: 1465, column: 20, scope: !1179)
!1181 = !DILocation(line: 1465, column: 42, scope: !1179)
!1182 = !DILocation(line: 1465, column: 8, scope: !1179)
!1183 = !DILocation(line: 1465, column: 58, scope: !1179)
!1184 = !DILocation(line: 1465, column: 8, scope: !1166)
!1185 = !DILocation(line: 1466, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !679, line: 1465, column: 64)
!1187 = !DILocation(line: 1469, column: 23, scope: !1166)
!1188 = !DILocation(line: 1469, column: 63, scope: !1166)
!1189 = !DILocation(line: 1469, column: 68, scope: !1166)
!1190 = !DILocation(line: 1470, column: 23, scope: !1166)
!1191 = !DILocation(line: 1470, column: 28, scope: !1166)
!1192 = !DILocation(line: 1469, column: 10, scope: !1166)
!1193 = !DILocation(line: 1469, column: 8, scope: !1166)
!1194 = !DILocation(line: 1472, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1166, file: !679, line: 1472, column: 8)
!1196 = !DILocation(line: 1472, column: 12, scope: !1195)
!1197 = !DILocation(line: 1472, column: 8, scope: !1166)
!1198 = !DILocation(line: 1473, column: 11, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !679, line: 1473, column: 11)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !679, line: 1472, column: 19)
!1201 = !DILocation(line: 1473, column: 39, scope: !1199)
!1202 = !DILocation(line: 1473, column: 11, scope: !1200)
!1203 = !DILocation(line: 1474, column: 29, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !679, line: 1473, column: 46)
!1205 = !DILocation(line: 1475, column: 29, scope: !1204)
!1206 = !DILocation(line: 1474, column: 16, scope: !1204)
!1207 = !DILocation(line: 1474, column: 14, scope: !1204)
!1208 = !DILocation(line: 1476, column: 7, scope: !1204)
!1209 = !DILocation(line: 1477, column: 29, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1199, file: !679, line: 1476, column: 14)
!1211 = !DILocation(line: 1478, column: 29, scope: !1210)
!1212 = !DILocation(line: 1477, column: 16, scope: !1210)
!1213 = !DILocation(line: 1477, column: 14, scope: !1210)
!1214 = !DILocation(line: 1480, column: 4, scope: !1200)
!1215 = !DILocation(line: 1482, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1166, file: !679, line: 1482, column: 8)
!1217 = !DILocation(line: 1482, column: 12, scope: !1216)
!1218 = !DILocation(line: 1482, column: 8, scope: !1166)
!1219 = !DILocation(line: 1483, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !679, line: 1482, column: 19)
!1221 = !DILocation(line: 1484, column: 4, scope: !1220)
!1222 = !DILocation(line: 1485, column: 24, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1216, file: !679, line: 1484, column: 11)
!1224 = !DILocation(line: 1485, column: 32, scope: !1223)
!1225 = !DILocation(line: 1485, column: 7, scope: !1223)
!1226 = !DILocation(line: 1488, column: 12, scope: !1166)
!1227 = !DILocation(line: 1488, column: 16, scope: !1166)
!1228 = !DILocation(line: 1488, column: 11, scope: !1166)
!1229 = !DILocation(line: 1488, column: 4, scope: !1166)
!1230 = !DILocation(line: 1489, column: 1, scope: !1166)
!1231 = !DILocation(line: 1631, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !678, file: !679, line: 1631, column: 8)
!1233 = !DILocation(line: 1631, column: 14, scope: !1232)
!1234 = !DILocation(line: 1631, column: 8, scope: !678)
!1235 = !DILocalVariable(name: "f", scope: !1236, file: !679, line: 1632, type: !1237)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !679, line: 1631, column: 20)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1239, line: 48, baseType: !1240)
!1239 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1241, line: 241, size: 1728, align: 64, elements: !1242)
!1241 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1263, !1264, !1265, !1266, !1268, !1269, !1270, !1274, !1277, !1279, !1280, !1281, !1282, !1283, !1286, !1287}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1240, file: !1241, line: 242, baseType: !633, size: 32, align: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1240, file: !1241, line: 247, baseType: !687, size: 64, align: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1240, file: !1241, line: 248, baseType: !687, size: 64, align: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1240, file: !1241, line: 249, baseType: !687, size: 64, align: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1240, file: !1241, line: 250, baseType: !687, size: 64, align: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1240, file: !1241, line: 251, baseType: !687, size: 64, align: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1240, file: !1241, line: 252, baseType: !687, size: 64, align: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1240, file: !1241, line: 253, baseType: !687, size: 64, align: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1240, file: !1241, line: 254, baseType: !687, size: 64, align: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1240, file: !1241, line: 256, baseType: !687, size: 64, align: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1240, file: !1241, line: 257, baseType: !687, size: 64, align: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1240, file: !1241, line: 258, baseType: !687, size: 64, align: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1240, file: !1241, line: 260, baseType: !1256, size: 64, align: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64, align: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1241, line: 156, size: 192, align: 64, elements: !1258)
!1258 = !{!1259, !1260, !1262}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1257, file: !1241, line: 157, baseType: !1256, size: 64, align: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1257, file: !1241, line: 158, baseType: !1261, size: 64, align: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1257, file: !1241, line: 162, baseType: !633, size: 32, align: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1240, file: !1241, line: 262, baseType: !1261, size: 64, align: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1240, file: !1241, line: 264, baseType: !633, size: 32, align: 32, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1240, file: !1241, line: 268, baseType: !633, size: 32, align: 32, offset: 928)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1240, file: !1241, line: 270, baseType: !1267, size: 64, align: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !643, line: 131, baseType: !621)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1240, file: !1241, line: 274, baseType: !638, size: 16, align: 16, offset: 1024)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1240, file: !1241, line: 275, baseType: !634, size: 8, align: 8, offset: 1040)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1240, file: !1241, line: 276, baseType: !1271, size: 8, align: 8, offset: 1048)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 8, align: 8, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 1)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1240, file: !1241, line: 280, baseType: !1275, size: 64, align: 64, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1241, line: 150, baseType: null)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1240, file: !1241, line: 289, baseType: !1278, size: 64, align: 64, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !643, line: 132, baseType: !621)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1240, file: !1241, line: 297, baseType: !622, size: 64, align: 64, offset: 1216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1240, file: !1241, line: 298, baseType: !622, size: 64, align: 64, offset: 1280)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1240, file: !1241, line: 299, baseType: !622, size: 64, align: 64, offset: 1344)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1240, file: !1241, line: 300, baseType: !622, size: 64, align: 64, offset: 1408)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1240, file: !1241, line: 302, baseType: !1284, size: 64, align: 64, offset: 1472)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1285, line: 216, baseType: !637)
!1285 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1240, file: !1241, line: 303, baseType: !633, size: 32, align: 32, offset: 1536)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1240, file: !1241, line: 305, baseType: !1288, size: 160, align: 8, offset: 1568)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 160, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 20)
!1291 = !DILocation(line: 1632, column: 13, scope: !1236)
!1292 = !DILocalVariable(name: "line", scope: !1236, file: !679, line: 1633, type: !687)
!1293 = !DILocation(line: 1633, column: 13, scope: !1236)
!1294 = !DILocation(line: 1648, column: 11, scope: !1236)
!1295 = !DILocation(line: 1648, column: 9, scope: !1236)
!1296 = !DILocation(line: 1649, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1236, file: !679, line: 1649, column: 11)
!1298 = !DILocation(line: 1649, column: 13, scope: !1297)
!1299 = !DILocation(line: 1649, column: 11, scope: !1236)
!1300 = !DILocation(line: 1650, column: 3, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !679, line: 1649, column: 21)
!1302 = !DILocation(line: 1653, column: 7, scope: !1236)
!1303 = !DILocation(line: 1653, column: 33, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1236, file: !679, discriminator: 1)
!1305 = !DILocation(line: 1653, column: 14, scope: !1304)
!1306 = !DILocation(line: 1653, column: 51, scope: !1304)
!1307 = !DILocation(line: 1653, column: 7, scope: !1304)
!1308 = !DILocation(line: 1654, column: 15, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !679, line: 1654, column: 7)
!1310 = distinct !DILexicalBlock(scope: !1236, file: !679, line: 1653, column: 69)
!1311 = !DILocation(line: 1654, column: 7, scope: !1309)
!1312 = !DILocation(line: 1654, column: 55, scope: !1309)
!1313 = !DILocation(line: 1654, column: 7, scope: !1310)
!1314 = !DILocation(line: 1655, column: 11, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !679, line: 1654, column: 61)
!1316 = !DILocation(line: 1656, column: 3, scope: !1315)
!1317 = !DILocation(line: 1657, column: 8, scope: !1310)
!1318 = !DILocation(line: 1657, column: 3, scope: !1310)
!1319 = !DILocation(line: 1653, column: 7, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1236, file: !679, discriminator: 2)
!1321 = distinct !{!1321, !1302}
!1322 = !DILocation(line: 1660, column: 14, scope: !1236)
!1323 = !DILocation(line: 1660, column: 7, scope: !1236)
!1324 = !DILocation(line: 1662, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1236, file: !679, line: 1662, column: 11)
!1326 = !DILocation(line: 1662, column: 17, scope: !1325)
!1327 = !DILocation(line: 1662, column: 11, scope: !1236)
!1328 = !DILocation(line: 1663, column: 3, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !679, line: 1662, column: 23)
!1330 = !DILocation(line: 1665, column: 4, scope: !1236)
!1331 = !DILocation(line: 1667, column: 11, scope: !678)
!1332 = !DILocation(line: 1667, column: 4, scope: !678)
!1333 = !DILocation(line: 1669, column: 1, scope: !678)
!1334 = !DILocalVariable(name: "result", scope: !684, file: !679, line: 1693, type: !687)
!1335 = !DILocation(line: 1693, column: 10, scope: !684)
!1336 = !DILocation(line: 1697, column: 13, scope: !684)
!1337 = !DILocation(line: 1697, column: 11, scope: !684)
!1338 = !DILocation(line: 1699, column: 26, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !684, file: !679, line: 1699, column: 8)
!1340 = !DILocation(line: 1699, column: 33, scope: !1339)
!1341 = !DILocation(line: 1699, column: 25, scope: !1339)
!1342 = !DILocation(line: 1699, column: 8, scope: !1339)
!1343 = !DILocation(line: 1699, column: 8, scope: !684)
!1344 = !DILocalVariable(name: "before", scope: !1345, file: !679, line: 1700, type: !687)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !679, line: 1699, column: 14)
!1346 = !DILocation(line: 1700, column: 13, scope: !1345)
!1347 = !DILocation(line: 1702, column: 16, scope: !1345)
!1348 = !DILocation(line: 1702, column: 14, scope: !1345)
!1349 = !DILocation(line: 1704, column: 56, scope: !1345)
!1350 = !DILocation(line: 1704, column: 16, scope: !1345)
!1351 = !DILocation(line: 1704, column: 14, scope: !1345)
!1352 = !DILocation(line: 1706, column: 11, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !679, line: 1706, column: 11)
!1354 = !DILocation(line: 1706, column: 11, scope: !1345)
!1355 = !DILocation(line: 1707, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !679, line: 1706, column: 19)
!1357 = !DILocation(line: 1707, column: 10, scope: !1356)
!1358 = !DILocation(line: 1709, column: 19, scope: !1356)
!1359 = !DILocation(line: 1709, column: 17, scope: !1356)
!1360 = !DILocation(line: 1710, column: 7, scope: !1356)
!1361 = !DILocation(line: 1711, column: 4, scope: !1345)
!1362 = !DILocation(line: 1713, column: 11, scope: !684)
!1363 = !DILocation(line: 1713, column: 4, scope: !684)
!1364 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !689, file: !689, line: 3829, type: !1365, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!622, !1367, !1368, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1370 = !DILocalVariable(name: "var", arg: 1, scope: !1364, file: !689, line: 3829, type: !1367)
!1371 = !DILocation(line: 3829, column: 757, scope: !1364)
!1372 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1364, file: !689, line: 3829, type: !1368)
!1373 = !DILocation(line: 3829, column: 775, scope: !1364)
!1374 = !DILocalVariable(name: "newVal", arg: 3, scope: !1364, file: !689, line: 3829, type: !1368)
!1375 = !DILocation(line: 3829, column: 796, scope: !1364)
!1376 = !DILocation(line: 3829, column: 858, scope: !1364)
!1377 = !DILocation(line: 3829, column: 882, scope: !1364)
!1378 = !DILocation(line: 3829, column: 871, scope: !1364)
!1379 = !DILocation(line: 3829, column: 909, scope: !1364)
!1380 = !DILocation(line: 3829, column: 898, scope: !1364)
!1381 = !DILocation(line: 3829, column: 832, scope: !1364)
!1382 = !DILocation(line: 3829, column: 813, scope: !1364)
!1383 = !DILocation(line: 3829, column: 806, scope: !1364)
!1384 = distinct !DISubprogram(name: "Hostinfo_GetUser", scope: !679, file: !679, line: 1735, type: !685, isLocal: false, isDefinition: true, scopeLine: 1736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1385 = !DILocalVariable(name: "buffer", scope: !1384, file: !679, line: 1737, type: !1386)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 65536, align: 8, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 8192)
!1389 = !DILocation(line: 1737, column: 9, scope: !1384)
!1390 = !DILocalVariable(name: "pw", scope: !1384, file: !679, line: 1738, type: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1392, line: 49, size: 384, align: 64, elements: !1393)
!1392 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1393 = !{!1394, !1395, !1396, !1397, !1399, !1400, !1401}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1391, file: !1392, line: 51, baseType: !687, size: 64, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1391, file: !1392, line: 52, baseType: !687, size: 64, align: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1391, file: !1392, line: 53, baseType: !642, size: 32, align: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1391, file: !1392, line: 54, baseType: !1398, size: 32, align: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !643, line: 126, baseType: !626)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1391, file: !1392, line: 55, baseType: !687, size: 64, align: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1391, file: !1392, line: 56, baseType: !687, size: 64, align: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1391, file: !1392, line: 57, baseType: !687, size: 64, align: 64, offset: 320)
!1402 = !DILocation(line: 1738, column: 18, scope: !1384)
!1403 = !DILocalVariable(name: "ppw", scope: !1384, file: !679, line: 1739, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64, align: 64)
!1405 = !DILocation(line: 1739, column: 19, scope: !1384)
!1406 = !DILocalVariable(name: "env", scope: !1384, file: !679, line: 1740, type: !687)
!1407 = !DILocation(line: 1740, column: 10, scope: !1384)
!1408 = !DILocalVariable(name: "name", scope: !1384, file: !679, line: 1741, type: !687)
!1409 = !DILocation(line: 1741, column: 10, scope: !1384)
!1410 = !DILocation(line: 1743, column: 26, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1384, file: !679, line: 1743, column: 8)
!1412 = !DILocation(line: 1743, column: 41, scope: !1411)
!1413 = !DILocation(line: 1743, column: 9, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1411, file: !679, discriminator: 2)
!1415 = !DILocation(line: 1743, column: 70, scope: !1411)
!1416 = !DILocation(line: 1743, column: 76, scope: !1411)
!1417 = !DILocation(line: 1744, column: 9, scope: !1411)
!1418 = !DILocation(line: 1744, column: 13, scope: !1411)
!1419 = !DILocation(line: 1743, column: 8, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1384, file: !679, discriminator: 1)
!1421 = !DILocation(line: 1745, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !679, line: 1745, column: 11)
!1423 = distinct !DILexicalBlock(scope: !1411, file: !679, line: 1744, column: 22)
!1424 = !DILocation(line: 1745, column: 16, scope: !1422)
!1425 = !DILocation(line: 1745, column: 11, scope: !1423)
!1426 = !DILocation(line: 1746, column: 35, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !679, line: 1745, column: 25)
!1428 = !DILocation(line: 1746, column: 40, scope: !1427)
!1429 = !DILocation(line: 1746, column: 17, scope: !1427)
!1430 = !DILocation(line: 1746, column: 15, scope: !1427)
!1431 = !DILocation(line: 1747, column: 7, scope: !1427)
!1432 = !DILocation(line: 1748, column: 4, scope: !1423)
!1433 = !DILocation(line: 1750, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1384, file: !679, line: 1750, column: 8)
!1435 = !DILocation(line: 1750, column: 8, scope: !1384)
!1436 = !DILocation(line: 1751, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !679, line: 1750, column: 15)
!1438 = !DILocation(line: 1751, column: 11, scope: !1437)
!1439 = !DILocation(line: 1753, column: 11, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !679, line: 1753, column: 11)
!1441 = !DILocation(line: 1753, column: 11, scope: !1437)
!1442 = !DILocation(line: 1754, column: 35, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !679, line: 1753, column: 16)
!1444 = !DILocation(line: 1754, column: 17, scope: !1443)
!1445 = !DILocation(line: 1754, column: 15, scope: !1443)
!1446 = !DILocation(line: 1755, column: 7, scope: !1443)
!1447 = !DILocation(line: 1756, column: 4, scope: !1437)
!1448 = !DILocation(line: 1758, column: 11, scope: !1384)
!1449 = !DILocation(line: 1758, column: 4, scope: !1384)
!1450 = distinct !DISubprogram(name: "Hostinfo_GetLoadAverage", scope: !679, file: !679, line: 1837, type: !1451, isLocal: false, isDefinition: true, scopeLine: 1838, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!947, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!1454 = !DILocalVariable(name: "avg", arg: 1, scope: !1450, file: !679, line: 1837, type: !1453)
!1455 = !DILocation(line: 1837, column: 33, scope: !1450)
!1456 = !DILocalVariable(name: "avg0", scope: !1450, file: !679, line: 1839, type: !640)
!1457 = !DILocation(line: 1839, column: 10, scope: !1450)
!1458 = !DILocation(line: 1841, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1450, file: !679, line: 1841, column: 8)
!1460 = !DILocation(line: 1841, column: 8, scope: !1450)
!1461 = !DILocation(line: 1842, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !679, line: 1841, column: 51)
!1463 = !DILocation(line: 1845, column: 26, scope: !1450)
!1464 = !DILocation(line: 1845, column: 24, scope: !1450)
!1465 = !DILocation(line: 1845, column: 11, scope: !1450)
!1466 = !DILocation(line: 1845, column: 5, scope: !1450)
!1467 = !DILocation(line: 1845, column: 9, scope: !1450)
!1468 = !DILocation(line: 1847, column: 4, scope: !1450)
!1469 = !DILocation(line: 1848, column: 1, scope: !1450)
!1470 = distinct !DISubprogram(name: "HostinfoGetLoadAverage", scope: !679, file: !679, line: 1779, type: !1471, isLocal: true, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!947, !1473, !1473, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!1474 = !DILocalVariable(name: "avg0", arg: 1, scope: !1470, file: !679, line: 1779, type: !1473)
!1475 = !DILocation(line: 1779, column: 31, scope: !1470)
!1476 = !DILocalVariable(name: "avg1", arg: 2, scope: !1470, file: !679, line: 1780, type: !1473)
!1477 = !DILocation(line: 1780, column: 31, scope: !1470)
!1478 = !DILocalVariable(name: "avg2", arg: 3, scope: !1470, file: !679, line: 1781, type: !1473)
!1479 = !DILocation(line: 1781, column: 31, scope: !1470)
!1480 = !DILocalVariable(name: "avg", scope: !1470, file: !679, line: 1784, type: !1481)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 192, align: 64, elements: !655)
!1482 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!1483 = !DILocation(line: 1784, column: 11, scope: !1470)
!1484 = !DILocalVariable(name: "res", scope: !1470, file: !679, line: 1785, type: !633)
!1485 = !DILocation(line: 1785, column: 8, scope: !1470)
!1486 = !DILocation(line: 1787, column: 21, scope: !1470)
!1487 = !DILocation(line: 1787, column: 10, scope: !1470)
!1488 = !DILocation(line: 1787, column: 8, scope: !1470)
!1489 = !DILocation(line: 1788, column: 8, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1470, file: !679, line: 1788, column: 8)
!1491 = !DILocation(line: 1788, column: 12, scope: !1490)
!1492 = !DILocation(line: 1788, column: 8, scope: !1470)
!1493 = !DILocation(line: 1791, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !679, line: 1788, column: 17)
!1495 = !DILocation(line: 1794, column: 8, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1470, file: !679, line: 1794, column: 8)
!1497 = !DILocation(line: 1794, column: 8, scope: !1470)
!1498 = !DILocation(line: 1795, column: 23, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !679, line: 1794, column: 14)
!1500 = !DILocation(line: 1795, column: 15, scope: !1499)
!1501 = !DILocation(line: 1795, column: 8, scope: !1499)
!1502 = !DILocation(line: 1795, column: 13, scope: !1499)
!1503 = !DILocation(line: 1796, column: 4, scope: !1499)
!1504 = !DILocation(line: 1797, column: 8, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1470, file: !679, line: 1797, column: 8)
!1506 = !DILocation(line: 1797, column: 8, scope: !1470)
!1507 = !DILocation(line: 1798, column: 23, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1505, file: !679, line: 1797, column: 14)
!1509 = !DILocation(line: 1798, column: 15, scope: !1508)
!1510 = !DILocation(line: 1798, column: 8, scope: !1508)
!1511 = !DILocation(line: 1798, column: 13, scope: !1508)
!1512 = !DILocation(line: 1799, column: 4, scope: !1508)
!1513 = !DILocation(line: 1800, column: 8, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1470, file: !679, line: 1800, column: 8)
!1515 = !DILocation(line: 1800, column: 8, scope: !1470)
!1516 = !DILocation(line: 1801, column: 23, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !679, line: 1800, column: 14)
!1518 = !DILocation(line: 1801, column: 15, scope: !1517)
!1519 = !DILocation(line: 1801, column: 8, scope: !1517)
!1520 = !DILocation(line: 1801, column: 13, scope: !1517)
!1521 = !DILocation(line: 1802, column: 4, scope: !1517)
!1522 = !DILocation(line: 1804, column: 4, scope: !1470)
!1523 = !DILocation(line: 1817, column: 1, scope: !1470)
!1524 = distinct !DISubprogram(name: "Hostinfo_LogLoadAverage", scope: !679, file: !679, line: 1868, type: !761, isLocal: false, isDefinition: true, scopeLine: 1869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1525 = !DILocalVariable(name: "avg0", scope: !1524, file: !679, line: 1870, type: !640)
!1526 = !DILocation(line: 1870, column: 10, scope: !1524)
!1527 = !DILocalVariable(name: "avg1", scope: !1524, file: !679, line: 1870, type: !640)
!1528 = !DILocation(line: 1870, column: 20, scope: !1524)
!1529 = !DILocalVariable(name: "avg2", scope: !1524, file: !679, line: 1870, type: !640)
!1530 = !DILocation(line: 1870, column: 30, scope: !1524)
!1531 = !DILocation(line: 1872, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !679, line: 1872, column: 8)
!1533 = !DILocation(line: 1872, column: 8, scope: !1524)
!1534 = !DILocation(line: 1873, column: 40, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !679, line: 1872, column: 53)
!1536 = !DILocation(line: 1873, column: 46, scope: !1535)
!1537 = !DILocation(line: 1873, column: 52, scope: !1535)
!1538 = !DILocation(line: 1873, column: 7, scope: !1535)
!1539 = !DILocation(line: 1874, column: 4, scope: !1535)
!1540 = !DILocation(line: 1875, column: 1, scope: !1524)
!1541 = distinct !DISubprogram(name: "Hostinfo_SystemTimerNS", scope: !679, file: !679, line: 2009, type: !697, isLocal: false, isDefinition: true, scopeLine: 2010, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1542 = !DILocalVariable(name: "ts", scope: !1541, file: !679, line: 2014, type: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1544, line: 120, size: 128, align: 64, elements: !1545)
!1544 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1543, file: !1544, line: 122, baseType: !911, size: 64, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1543, file: !1544, line: 123, baseType: !1548, size: 64, align: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !643, line: 175, baseType: !621)
!1549 = !DILocation(line: 2014, column: 20, scope: !1541)
!1550 = !DILocalVariable(name: "ret", scope: !1541, file: !679, line: 2015, type: !633)
!1551 = !DILocation(line: 2015, column: 8, scope: !1541)
!1552 = !DILocation(line: 2024, column: 10, scope: !1541)
!1553 = !DILocation(line: 2024, column: 8, scope: !1541)
!1554 = !DILocation(line: 2027, column: 26, scope: !1541)
!1555 = !DILocation(line: 2027, column: 33, scope: !1541)
!1556 = !DILocation(line: 2027, column: 40, scope: !1541)
!1557 = !DILocation(line: 2027, column: 47, scope: !1541)
!1558 = !DILocation(line: 2027, column: 59, scope: !1541)
!1559 = !DILocation(line: 2027, column: 54, scope: !1541)
!1560 = !DILocation(line: 2027, column: 4, scope: !1541)
!1561 = distinct !DISubprogram(name: "Hostinfo_LogMemUsage", scope: !679, file: !679, line: 2048, type: !761, isLocal: false, isDefinition: true, scopeLine: 2049, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1562 = !DILocalVariable(name: "fd", scope: !1561, file: !679, line: 2050, type: !633)
!1563 = !DILocation(line: 2050, column: 8, scope: !1561)
!1564 = !DILocation(line: 2050, column: 13, scope: !1561)
!1565 = !DILocation(line: 2052, column: 8, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !679, line: 2052, column: 8)
!1567 = !DILocation(line: 2052, column: 11, scope: !1566)
!1568 = !DILocation(line: 2052, column: 8, scope: !1561)
!1569 = !DILocalVariable(name: "len", scope: !1570, file: !679, line: 2053, type: !1284)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !679, line: 2052, column: 18)
!1571 = !DILocation(line: 2053, column: 14, scope: !1570)
!1572 = !DILocalVariable(name: "buf", scope: !1570, file: !679, line: 2054, type: !1573)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 512, align: 8, elements: !1574)
!1574 = !{!1575}
!1575 = !DISubrange(count: 64)
!1576 = !DILocation(line: 2054, column: 12, scope: !1570)
!1577 = !DILocation(line: 2056, column: 18, scope: !1570)
!1578 = !DILocation(line: 2056, column: 22, scope: !1570)
!1579 = !DILocation(line: 2056, column: 13, scope: !1570)
!1580 = !DILocation(line: 2056, column: 11, scope: !1570)
!1581 = !DILocation(line: 2057, column: 13, scope: !1570)
!1582 = !DILocation(line: 2057, column: 7, scope: !1570)
!1583 = !DILocation(line: 2059, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1570, file: !679, line: 2059, column: 11)
!1585 = !DILocation(line: 2059, column: 15, scope: !1584)
!1586 = !DILocation(line: 2059, column: 11, scope: !1570)
!1587 = !DILocalVariable(name: "a", scope: !1588, file: !679, line: 2060, type: !1589)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !679, line: 2059, column: 22)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 224, align: 32, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 7)
!1592 = !DILocation(line: 2060, column: 14, scope: !1588)
!1593 = !DILocation(line: 2062, column: 14, scope: !1588)
!1594 = !DILocation(line: 2062, column: 18, scope: !1588)
!1595 = !DILocation(line: 2062, column: 33, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1588, file: !679, discriminator: 1)
!1597 = !DILocation(line: 2062, column: 14, scope: !1596)
!1598 = !DILocation(line: 2062, column: 14, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1588, file: !679, discriminator: 2)
!1600 = !DILocation(line: 2062, column: 14, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1588, file: !679, discriminator: 3)
!1602 = !DILocation(line: 2062, column: 10, scope: !1601)
!1603 = !DILocation(line: 2062, column: 55, scope: !1601)
!1604 = !DILocation(line: 2064, column: 17, scope: !1588)
!1605 = !DILocation(line: 2065, column: 18, scope: !1588)
!1606 = !DILocation(line: 2065, column: 25, scope: !1588)
!1607 = !DILocation(line: 2065, column: 32, scope: !1588)
!1608 = !DILocation(line: 2065, column: 39, scope: !1588)
!1609 = !DILocation(line: 2065, column: 46, scope: !1588)
!1610 = !DILocation(line: 2065, column: 53, scope: !1588)
!1611 = !DILocation(line: 2065, column: 60, scope: !1588)
!1612 = !DILocation(line: 2064, column: 10, scope: !1588)
!1613 = !DILocation(line: 2068, column: 14, scope: !1588)
!1614 = !DILocation(line: 2068, column: 20, scope: !1588)
!1615 = !DILocation(line: 2068, column: 26, scope: !1588)
!1616 = !DILocation(line: 2068, column: 32, scope: !1588)
!1617 = !DILocation(line: 2068, column: 38, scope: !1588)
!1618 = !DILocation(line: 2068, column: 44, scope: !1588)
!1619 = !DILocation(line: 2068, column: 50, scope: !1588)
!1620 = !DILocation(line: 2067, column: 10, scope: !1588)
!1621 = !DILocation(line: 2069, column: 7, scope: !1588)
!1622 = !DILocation(line: 2070, column: 4, scope: !1570)
!1623 = !DILocation(line: 2071, column: 1, scope: !1561)
!1624 = distinct !DISubprogram(name: "Hostinfo_ResetProcessState", scope: !679, file: !679, line: 2092, type: !1625, isLocal: false, isDefinition: true, scopeLine: 2094, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1627, !1284}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64, align: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!1629 = !DILocalVariable(name: "keepFds", arg: 1, scope: !1624, file: !679, line: 2092, type: !1627)
!1630 = !DILocation(line: 2092, column: 39, scope: !1624)
!1631 = !DILocalVariable(name: "numKeepFds", arg: 2, scope: !1624, file: !679, line: 2093, type: !1284)
!1632 = !DILocation(line: 2093, column: 35, scope: !1624)
!1633 = !DILocalVariable(name: "s", scope: !1624, file: !679, line: 2095, type: !633)
!1634 = !DILocation(line: 2095, column: 8, scope: !1624)
!1635 = !DILocalVariable(name: "fd", scope: !1624, file: !679, line: 2095, type: !633)
!1636 = !DILocation(line: 2095, column: 11, scope: !1624)
!1637 = !DILocalVariable(name: "sa", scope: !1624, file: !679, line: 2096, type: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1639, line: 24, size: 1216, align: 64, elements: !1640)
!1639 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1640 = !{!1641, !1719, !1728, !1729}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1638, file: !1639, line: 35, baseType: !1642, size: 64, align: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1639, line: 28, size: 64, align: 64, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1642, file: !1639, line: 31, baseType: !628, size: 64, align: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1642, file: !1639, line: 33, baseType: !1646, size: 64, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64, align: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !633, !1649, !622}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64, align: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1651, line: 133, baseType: !1652)
!1651 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1651, line: 62, size: 1024, align: 64, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1652, file: !1651, line: 64, baseType: !633, size: 32, align: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1652, file: !1651, line: 65, baseType: !633, size: 32, align: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1652, file: !1651, line: 67, baseType: !633, size: 32, align: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1652, file: !1651, line: 132, baseType: !1658, size: 896, align: 64, offset: 128)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1652, file: !1651, line: 69, size: 896, align: 64, elements: !1659)
!1659 = !{!1660, !1664, !1670, !1681, !1687, !1697, !1708, !1713}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1658, file: !1651, line: 71, baseType: !1661, size: 896, align: 32)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 896, align: 32, elements: !1662)
!1662 = !{!1663}
!1663 = !DISubrange(count: 28)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1658, file: !1651, line: 78, baseType: !1665, size: 64, align: 32)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 74, size: 64, align: 32, elements: !1666)
!1666 = !{!1667, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1665, file: !1651, line: 76, baseType: !1668, size: 32, align: 32)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !643, line: 133, baseType: !633)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1665, file: !1651, line: 77, baseType: !642, size: 32, align: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1658, file: !1651, line: 86, baseType: !1671, size: 128, align: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 81, size: 128, align: 64, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1671, file: !1651, line: 83, baseType: !633, size: 32, align: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1671, file: !1651, line: 84, baseType: !633, size: 32, align: 32, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1671, file: !1651, line: 85, baseType: !1676, size: 64, align: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1651, line: 36, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1651, line: 32, size: 64, align: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1677, file: !1651, line: 34, baseType: !633, size: 32, align: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1677, file: !1651, line: 35, baseType: !622, size: 64, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1658, file: !1651, line: 94, baseType: !1682, size: 128, align: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 89, size: 128, align: 64, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1682, file: !1651, line: 91, baseType: !1668, size: 32, align: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1682, file: !1651, line: 92, baseType: !642, size: 32, align: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1682, file: !1651, line: 93, baseType: !1676, size: 64, align: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1658, file: !1651, line: 104, baseType: !1688, size: 256, align: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 97, size: 256, align: 64, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1696}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1688, file: !1651, line: 99, baseType: !1668, size: 32, align: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1688, file: !1651, line: 100, baseType: !642, size: 32, align: 32, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1688, file: !1651, line: 101, baseType: !633, size: 32, align: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1688, file: !1651, line: 102, baseType: !1694, size: 64, align: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !1651, line: 58, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !643, line: 135, baseType: !621)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1688, file: !1651, line: 103, baseType: !1694, size: 64, align: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1658, file: !1651, line: 116, baseType: !1698, size: 256, align: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 107, size: 256, align: 64, elements: !1699)
!1699 = !{!1700, !1701, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1698, file: !1651, line: 109, baseType: !622, size: 64, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1698, file: !1651, line: 110, baseType: !1702, size: 16, align: 16, offset: 64)
!1702 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !1698, file: !1651, line: 115, baseType: !1704, size: 128, align: 64, offset: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !1651, line: 111, size: 128, align: 64, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1704, file: !1651, line: 113, baseType: !622, size: 64, align: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1704, file: !1651, line: 114, baseType: !622, size: 64, align: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1658, file: !1651, line: 123, baseType: !1709, size: 128, align: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 119, size: 128, align: 64, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1709, file: !1651, line: 121, baseType: !621, size: 64, align: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1709, file: !1651, line: 122, baseType: !633, size: 32, align: 32, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1658, file: !1651, line: 131, baseType: !1714, size: 128, align: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1651, line: 126, size: 128, align: 64, elements: !1715)
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1714, file: !1651, line: 128, baseType: !622, size: 64, align: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1714, file: !1651, line: 129, baseType: !633, size: 32, align: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1714, file: !1651, line: 130, baseType: !626, size: 32, align: 32, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1638, file: !1639, line: 43, baseType: !1720, size: 1024, align: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1721, line: 30, baseType: !1722)
!1721 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1721, line: 27, size: 1024, align: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1722, file: !1721, line: 29, baseType: !1725, size: 1024, align: 64)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 1024, align: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 16)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1638, file: !1639, line: 46, baseType: !633, size: 32, align: 32, offset: 1088)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1638, file: !1639, line: 49, baseType: !1730, size: 64, align: 64, offset: 1152)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64, align: 64)
!1731 = !DILocation(line: 2096, column: 21, scope: !1624)
!1732 = !DILocalVariable(name: "rlim", scope: !1624, file: !679, line: 2097, type: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !234, line: 139, size: 128, align: 64, elements: !1734)
!1734 = !{!1735, !1738}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1733, file: !234, line: 142, baseType: !1736, size: 64, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !234, line: 133, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim64_t", file: !643, line: 137, baseType: !637)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1733, file: !234, line: 144, baseType: !1736, size: 64, align: 64, offset: 64)
!1739 = !DILocation(line: 2097, column: 18, scope: !1624)
!1740 = !DILocalVariable(name: "it", scope: !1624, file: !679, line: 2105, type: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerval", file: !10, line: 107, size: 256, align: 64, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1741, file: !10, line: 110, baseType: !907, size: 128, align: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1741, file: !10, line: 112, baseType: !907, size: 128, align: 64, offset: 128)
!1745 = !DILocation(line: 2105, column: 21, scope: !1624)
!1746 = !DILocation(line: 2106, column: 28, scope: !1624)
!1747 = !DILocation(line: 2106, column: 37, scope: !1624)
!1748 = !DILocation(line: 2106, column: 45, scope: !1624)
!1749 = !DILocation(line: 2106, column: 7, scope: !1624)
!1750 = !DILocation(line: 2106, column: 16, scope: !1624)
!1751 = !DILocation(line: 2106, column: 23, scope: !1624)
!1752 = !DILocation(line: 2107, column: 31, scope: !1624)
!1753 = !DILocation(line: 2107, column: 43, scope: !1624)
!1754 = !DILocation(line: 2107, column: 51, scope: !1624)
!1755 = !DILocation(line: 2107, column: 7, scope: !1624)
!1756 = !DILocation(line: 2107, column: 19, scope: !1624)
!1757 = !DILocation(line: 2107, column: 26, scope: !1624)
!1758 = !DILocation(line: 2108, column: 4, scope: !1624)
!1759 = !DILocation(line: 2109, column: 4, scope: !1624)
!1760 = !DILocation(line: 2110, column: 4, scope: !1624)
!1761 = !DILocation(line: 2112, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1624, file: !679, line: 2112, column: 4)
!1763 = !DILocation(line: 2112, column: 9, scope: !1762)
!1764 = !DILocation(line: 2112, column: 16, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1766, file: !679, discriminator: 1)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !679, line: 2112, column: 4)
!1767 = !DILocation(line: 2112, column: 18, scope: !1765)
!1768 = !DILocation(line: 2112, column: 4, scope: !1765)
!1769 = !DILocation(line: 2113, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !679, line: 2112, column: 31)
!1771 = !DILocation(line: 2113, column: 29, scope: !1770)
!1772 = !DILocation(line: 2113, column: 20, scope: !1770)
!1773 = !DILocation(line: 2114, column: 22, scope: !1770)
!1774 = !DILocation(line: 2114, column: 7, scope: !1770)
!1775 = !DILocation(line: 2115, column: 10, scope: !1770)
!1776 = !DILocation(line: 2115, column: 19, scope: !1770)
!1777 = !DILocation(line: 2116, column: 17, scope: !1770)
!1778 = !DILocation(line: 2116, column: 7, scope: !1770)
!1779 = !DILocation(line: 2117, column: 4, scope: !1770)
!1780 = !DILocation(line: 2112, column: 27, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1766, file: !679, discriminator: 2)
!1782 = !DILocation(line: 2112, column: 4, scope: !1781)
!1783 = distinct !{!1783, !1784}
!1784 = !DILocation(line: 2112, column: 4, scope: !1624)
!1785 = !DILocation(line: 2119, column: 20, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1624, file: !679, line: 2119, column: 4)
!1787 = !DILocation(line: 2119, column: 14, scope: !1786)
!1788 = !DILocation(line: 2119, column: 41, scope: !1786)
!1789 = !DILocation(line: 2119, column: 12, scope: !1786)
!1790 = !DILocation(line: 2119, column: 9, scope: !1786)
!1791 = !DILocation(line: 2119, column: 46, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !679, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !1786, file: !679, line: 2119, column: 4)
!1794 = !DILocation(line: 2119, column: 49, scope: !1792)
!1795 = !DILocation(line: 2119, column: 4, scope: !1792)
!1796 = !DILocalVariable(name: "i", scope: !1797, file: !679, line: 2120, type: !1284)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !679, line: 2119, column: 72)
!1798 = !DILocation(line: 2120, column: 14, scope: !1797)
!1799 = !DILocation(line: 2122, column: 14, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !679, line: 2122, column: 7)
!1801 = !DILocation(line: 2122, column: 12, scope: !1800)
!1802 = !DILocation(line: 2122, column: 19, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1804, file: !679, discriminator: 1)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !679, line: 2122, column: 7)
!1805 = !DILocation(line: 2122, column: 23, scope: !1803)
!1806 = !DILocation(line: 2122, column: 21, scope: !1803)
!1807 = !DILocation(line: 2122, column: 7, scope: !1803)
!1808 = !DILocation(line: 2123, column: 14, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !679, line: 2123, column: 14)
!1810 = distinct !DILexicalBlock(scope: !1804, file: !679, line: 2122, column: 40)
!1811 = !DILocation(line: 2123, column: 28, scope: !1809)
!1812 = !DILocation(line: 2123, column: 20, scope: !1809)
!1813 = !DILocation(line: 2123, column: 17, scope: !1809)
!1814 = !DILocation(line: 2123, column: 14, scope: !1810)
!1815 = !DILocation(line: 2124, column: 13, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1809, file: !679, line: 2123, column: 32)
!1817 = !DILocation(line: 2126, column: 7, scope: !1810)
!1818 = !DILocation(line: 2122, column: 36, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1804, file: !679, discriminator: 2)
!1820 = !DILocation(line: 2122, column: 7, scope: !1819)
!1821 = distinct !{!1821, !1822}
!1822 = !DILocation(line: 2122, column: 7, scope: !1797)
!1823 = !DILocation(line: 2127, column: 11, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1797, file: !679, line: 2127, column: 11)
!1825 = !DILocation(line: 2127, column: 16, scope: !1824)
!1826 = !DILocation(line: 2127, column: 13, scope: !1824)
!1827 = !DILocation(line: 2127, column: 11, scope: !1797)
!1828 = !DILocation(line: 2128, column: 23, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !679, line: 2127, column: 28)
!1830 = !DILocation(line: 2128, column: 17, scope: !1829)
!1831 = !DILocation(line: 2129, column: 7, scope: !1829)
!1832 = !DILocation(line: 2130, column: 4, scope: !1797)
!1833 = !DILocation(line: 2119, column: 68, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1793, file: !679, discriminator: 2)
!1835 = !DILocation(line: 2119, column: 4, scope: !1834)
!1836 = distinct !{!1836, !1837}
!1837 = !DILocation(line: 2119, column: 4, scope: !1624)
!1838 = !DILocation(line: 2132, column: 8, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1624, file: !679, line: 2132, column: 8)
!1840 = !DILocation(line: 2132, column: 35, scope: !1839)
!1841 = !DILocation(line: 2132, column: 8, scope: !1624)
!1842 = !DILocation(line: 2133, column: 28, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !679, line: 2132, column: 41)
!1844 = !DILocation(line: 2133, column: 12, scope: !1843)
!1845 = !DILocation(line: 2133, column: 21, scope: !1843)
!1846 = !DILocation(line: 2134, column: 7, scope: !1843)
!1847 = !DILocation(line: 2135, column: 4, scope: !1843)
!1848 = !DILocalVariable(name: "err", scope: !1849, file: !679, line: 2143, type: !633)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !679, line: 2142, column: 12)
!1850 = distinct !DILexicalBlock(scope: !1624, file: !679, line: 2142, column: 8)
!1851 = !DILocation(line: 2143, column: 11, scope: !1849)
!1852 = !DILocalVariable(name: "euid", scope: !1849, file: !679, line: 2144, type: !641)
!1853 = !DILocation(line: 2144, column: 13, scope: !1849)
!1854 = !DILocation(line: 2146, column: 14, scope: !1849)
!1855 = !DILocation(line: 2146, column: 12, scope: !1849)
!1856 = !DILocation(line: 2150, column: 7, scope: !1849)
!1857 = !DILocation(line: 2155, column: 13, scope: !1849)
!1858 = !DILocation(line: 2155, column: 11, scope: !1849)
!1859 = !DILocation(line: 2157, column: 18, scope: !1849)
!1860 = !DILocation(line: 2157, column: 7, scope: !1849)
!1861 = !DILocation(line: 2158, column: 33, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !679, line: 2158, column: 13)
!1863 = distinct !DILexicalBlock(scope: !1849, file: !679, line: 2158, column: 8)
!1864 = !DILocation(line: 2158, column: 37, scope: !1862)
!1865 = !DILocation(line: 2158, column: 31, scope: !1862)
!1866 = !DILocation(line: 2158, column: 30, scope: !1862)
!1867 = !DILocation(line: 2158, column: 13, scope: !1862)
!1868 = !DILocation(line: 2158, column: 13, scope: !1863)
!1869 = !DILocation(line: 2158, column: 51, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !679, discriminator: 1)
!1871 = distinct !DILexicalBlock(scope: !1862, file: !679, line: 2158, column: 49)
!1872 = !DILocation(line: 2161, column: 1, scope: !1624)
!1873 = distinct !DISubprogram(name: "Id_SetEUid", scope: !1874, file: !1874, line: 92, type: !1875, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1874 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/su.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!633, !641}
!1877 = !DILocalVariable(name: "euid", arg: 1, scope: !1873, file: !1874, line: 92, type: !641)
!1878 = !DILocation(line: 92, column: 18, scope: !1873)
!1879 = !DILocation(line: 94, column: 35, scope: !1873)
!1880 = !DILocation(line: 94, column: 11, scope: !1873)
!1881 = !DILocation(line: 94, column: 4, scope: !1873)
!1882 = distinct !DISubprogram(name: "Hostinfo_Daemonize", scope: !679, file: !679, line: 2225, type: !1883, isLocal: false, isDefinition: true, scopeLine: 2236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!947, !735, !1885, !1887, !735, !1627, !1284}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64, align: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "HostinfoDaemonizeFlags", file: !256, line: 129, baseType: !255)
!1888 = !DILocalVariable(name: "path", arg: 1, scope: !1882, file: !679, line: 2225, type: !735)
!1889 = !DILocation(line: 2225, column: 32, scope: !1882)
!1890 = !DILocalVariable(name: "args", arg: 2, scope: !1882, file: !679, line: 2227, type: !1885)
!1891 = !DILocation(line: 2227, column: 34, scope: !1882)
!1892 = !DILocalVariable(name: "flags", arg: 3, scope: !1882, file: !679, line: 2229, type: !1887)
!1893 = !DILocation(line: 2229, column: 43, scope: !1882)
!1894 = !DILocalVariable(name: "pidPath", arg: 4, scope: !1882, file: !679, line: 2230, type: !735)
!1895 = !DILocation(line: 2230, column: 32, scope: !1882)
!1896 = !DILocalVariable(name: "keepFds", arg: 5, scope: !1882, file: !679, line: 2232, type: !1627)
!1897 = !DILocation(line: 2232, column: 31, scope: !1882)
!1898 = !DILocalVariable(name: "numKeepFds", arg: 6, scope: !1882, file: !679, line: 2234, type: !1284)
!1899 = !DILocation(line: 2234, column: 27, scope: !1882)
!1900 = !DILocalVariable(name: "pidPathFd", scope: !1882, file: !679, line: 2251, type: !633)
!1901 = !DILocation(line: 2251, column: 8, scope: !1882)
!1902 = !DILocalVariable(name: "childPid", scope: !1882, file: !679, line: 2252, type: !633)
!1903 = !DILocation(line: 2252, column: 8, scope: !1882)
!1904 = !DILocalVariable(name: "pipeFds", scope: !1882, file: !679, line: 2253, type: !1905)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 64, align: 32, elements: !729)
!1906 = !DILocation(line: 2253, column: 8, scope: !1882)
!1907 = !DILocalVariable(name: "err", scope: !1882, file: !679, line: 2254, type: !623)
!1908 = !DILocation(line: 2254, column: 11, scope: !1882)
!1909 = !DILocalVariable(name: "pathLocalEncoding", scope: !1882, file: !679, line: 2255, type: !687)
!1910 = !DILocation(line: 2255, column: 10, scope: !1882)
!1911 = !DILocalVariable(name: "argsLocalEncoding", scope: !1882, file: !679, line: 2256, type: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!1913 = !DILocation(line: 2256, column: 11, scope: !1882)
!1914 = !DILocalVariable(name: "tempFds", scope: !1882, file: !679, line: 2257, type: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!1916 = !DILocation(line: 2257, column: 9, scope: !1882)
!1917 = !DILocalVariable(name: "numTempFds", scope: !1882, file: !679, line: 2258, type: !1284)
!1918 = !DILocation(line: 2258, column: 11, scope: !1882)
!1919 = !DILocation(line: 2258, column: 24, scope: !1882)
!1920 = !DILocation(line: 2258, column: 35, scope: !1882)
!1921 = !DILocalVariable(name: "sig", scope: !1882, file: !679, line: 2259, type: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1923, line: 37, baseType: !1720)
!1923 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!1924 = !DILocation(line: 2259, column: 13, scope: !1882)
!1925 = !DILocation(line: 2261, column: 4, scope: !1882)
!1926 = distinct !{!1926, !1925}
!1927 = !DILocation(line: 2261, column: 53, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1929, file: !679, discriminator: 1)
!1929 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2261, column: 7)
!1930 = !DILocation(line: 2266, column: 8, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2266, column: 8)
!1932 = !DILocation(line: 2266, column: 8, scope: !1882)
!1933 = !DILocation(line: 2267, column: 30, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !679, line: 2266, column: 17)
!1935 = !DILocation(line: 2267, column: 19, scope: !1934)
!1936 = !DILocation(line: 2267, column: 17, scope: !1934)
!1937 = !DILocation(line: 2268, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !679, line: 2268, column: 11)
!1939 = !DILocation(line: 2268, column: 21, scope: !1938)
!1940 = !DILocation(line: 2268, column: 11, scope: !1934)
!1941 = !DILocation(line: 2269, column: 17, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !679, line: 2268, column: 28)
!1943 = !DILocation(line: 2269, column: 16, scope: !1942)
!1944 = !DILocation(line: 2269, column: 14, scope: !1942)
!1945 = !DILocation(line: 2271, column: 32, scope: !1942)
!1946 = !DILocation(line: 2271, column: 41, scope: !1942)
!1947 = !DILocation(line: 2270, column: 10, scope: !1942)
!1948 = !DILocation(line: 2272, column: 17, scope: !1942)
!1949 = !DILocation(line: 2272, column: 11, scope: !1942)
!1950 = !DILocation(line: 2272, column: 15, scope: !1942)
!1951 = !DILocation(line: 2273, column: 10, scope: !1942)
!1952 = !DILocation(line: 2285, column: 12, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1934, file: !679, line: 2285, column: 11)
!1954 = !DILocation(line: 2285, column: 18, scope: !1953)
!1955 = !DILocation(line: 2285, column: 48, scope: !1953)
!1956 = !DILocation(line: 2286, column: 17, scope: !1953)
!1957 = !DILocation(line: 2286, column: 11, scope: !1953)
!1958 = !DILocation(line: 2286, column: 46, scope: !1953)
!1959 = !DILocation(line: 2285, column: 11, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1934, file: !679, discriminator: 1)
!1961 = !DILocation(line: 2287, column: 17, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1953, file: !679, line: 2286, column: 53)
!1963 = !DILocation(line: 2287, column: 16, scope: !1962)
!1964 = !DILocation(line: 2287, column: 14, scope: !1962)
!1965 = !DILocation(line: 2289, column: 32, scope: !1962)
!1966 = !DILocation(line: 2289, column: 41, scope: !1962)
!1967 = !DILocation(line: 2288, column: 10, scope: !1962)
!1968 = !DILocation(line: 2290, column: 17, scope: !1962)
!1969 = !DILocation(line: 2290, column: 11, scope: !1962)
!1970 = !DILocation(line: 2290, column: 15, scope: !1962)
!1971 = !DILocation(line: 2291, column: 16, scope: !1962)
!1972 = !DILocation(line: 2291, column: 10, scope: !1962)
!1973 = !DILocation(line: 2292, column: 10, scope: !1962)
!1974 = !DILocation(line: 2296, column: 17, scope: !1934)
!1975 = !DILocation(line: 2297, column: 4, scope: !1934)
!1976 = !DILocation(line: 2299, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2299, column: 8)
!1978 = !DILocation(line: 2299, column: 8, scope: !1977)
!1979 = !DILocation(line: 2299, column: 22, scope: !1977)
!1980 = !DILocation(line: 2299, column: 8, scope: !1882)
!1981 = !DILocation(line: 2300, column: 14, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !679, line: 2299, column: 29)
!1983 = !DILocation(line: 2300, column: 13, scope: !1982)
!1984 = !DILocation(line: 2300, column: 11, scope: !1982)
!1985 = !DILocation(line: 2301, column: 70, scope: !1982)
!1986 = !DILocation(line: 2301, column: 7, scope: !1982)
!1987 = !DILocation(line: 2302, column: 20, scope: !1982)
!1988 = !DILocation(line: 2302, column: 31, scope: !1982)
!1989 = !DILocation(line: 2302, column: 7, scope: !1982)
!1990 = !DILocation(line: 2302, column: 18, scope: !1982)
!1991 = !DILocation(line: 2303, column: 7, scope: !1982)
!1992 = !DILocation(line: 2306, column: 41, scope: !1882)
!1993 = !DILocation(line: 2306, column: 39, scope: !1882)
!1994 = !DILocation(line: 2306, column: 14, scope: !1882)
!1995 = !DILocation(line: 2306, column: 12, scope: !1882)
!1996 = !DILocation(line: 2307, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2307, column: 8)
!1998 = !DILocation(line: 2307, column: 8, scope: !1882)
!1999 = !DILocation(line: 2308, column: 14, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !679, line: 2307, column: 18)
!2001 = !DILocation(line: 2308, column: 13, scope: !2000)
!2002 = !DILocation(line: 2308, column: 11, scope: !2000)
!2003 = !DILocation(line: 2309, column: 74, scope: !2000)
!2004 = !DILocation(line: 2309, column: 7, scope: !2000)
!2005 = !DILocation(line: 2310, column: 7, scope: !2000)
!2006 = !DILocation(line: 2312, column: 8, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2312, column: 8)
!2008 = !DILocation(line: 2312, column: 8, scope: !1882)
!2009 = !DILocation(line: 2313, column: 14, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !679, line: 2312, column: 17)
!2011 = !DILocation(line: 2313, column: 7, scope: !2010)
!2012 = !DILocation(line: 2313, column: 23, scope: !2010)
!2013 = !DILocation(line: 2313, column: 52, scope: !2010)
!2014 = !DILocation(line: 2313, column: 50, scope: !2010)
!2015 = !DILocation(line: 2314, column: 4, scope: !2010)
!2016 = !DILocation(line: 2315, column: 28, scope: !1882)
!2017 = !DILocation(line: 2315, column: 22, scope: !1882)
!2018 = !DILocation(line: 2315, column: 4, scope: !1882)
!2019 = !DILocation(line: 2315, column: 26, scope: !1882)
!2020 = !DILocation(line: 2316, column: 8, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2316, column: 8)
!2022 = !DILocation(line: 2316, column: 8, scope: !1882)
!2023 = !DILocation(line: 2317, column: 31, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !679, line: 2316, column: 17)
!2025 = !DILocation(line: 2317, column: 25, scope: !2024)
!2026 = !DILocation(line: 2317, column: 7, scope: !2024)
!2027 = !DILocation(line: 2317, column: 29, scope: !2024)
!2028 = !DILocation(line: 2318, column: 4, scope: !2024)
!2029 = !DILocation(line: 2320, column: 14, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2320, column: 8)
!2031 = !DILocation(line: 2320, column: 8, scope: !2030)
!2032 = !DILocation(line: 2320, column: 37, scope: !2030)
!2033 = !DILocation(line: 2320, column: 8, scope: !1882)
!2034 = !DILocation(line: 2321, column: 14, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !679, line: 2320, column: 44)
!2036 = !DILocation(line: 2321, column: 13, scope: !2035)
!2037 = !DILocation(line: 2321, column: 11, scope: !2035)
!2038 = !DILocation(line: 2323, column: 29, scope: !2035)
!2039 = !DILocation(line: 2323, column: 41, scope: !2035)
!2040 = !DILocation(line: 2322, column: 7, scope: !2035)
!2041 = !DILocation(line: 2324, column: 7, scope: !2035)
!2042 = !DILocation(line: 2328, column: 46, scope: !1882)
!2043 = !DILocation(line: 2328, column: 24, scope: !1882)
!2044 = !DILocation(line: 2328, column: 22, scope: !1882)
!2045 = !DILocation(line: 2329, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2329, column: 8)
!2047 = !DILocation(line: 2329, column: 8, scope: !1882)
!2048 = !DILocation(line: 2331, column: 29, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !679, line: 2329, column: 28)
!2050 = !DILocation(line: 2330, column: 7, scope: !2049)
!2051 = !DILocation(line: 2332, column: 7, scope: !2049)
!2052 = !DILocation(line: 2335, column: 45, scope: !1882)
!2053 = !DILocation(line: 2335, column: 24, scope: !1882)
!2054 = !DILocation(line: 2335, column: 22, scope: !1882)
!2055 = !DILocation(line: 2336, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2336, column: 8)
!2057 = !DILocation(line: 2336, column: 8, scope: !1882)
!2058 = !DILocation(line: 2337, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !679, line: 2336, column: 28)
!2060 = !DILocation(line: 2339, column: 7, scope: !2059)
!2061 = !DILocation(line: 2342, column: 15, scope: !1882)
!2062 = !DILocation(line: 2342, column: 13, scope: !1882)
!2063 = !DILocation(line: 2344, column: 12, scope: !1882)
!2064 = !DILocation(line: 2344, column: 4, scope: !1882)
!2065 = !DILocation(line: 2346, column: 14, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2344, column: 22)
!2067 = !DILocation(line: 2346, column: 13, scope: !2066)
!2068 = !DILocation(line: 2346, column: 11, scope: !2066)
!2069 = !DILocation(line: 2348, column: 15, scope: !2066)
!2070 = !DILocation(line: 2347, column: 7, scope: !2066)
!2071 = !DILocation(line: 2349, column: 7, scope: !2066)
!2072 = !DILocation(line: 2352, column: 7, scope: !2066)
!2073 = !DILocalVariable(name: "status", scope: !2074, file: !679, line: 2356, type: !633)
!2074 = distinct !DILexicalBlock(scope: !2066, file: !679, line: 2354, column: 7)
!2075 = !DILocation(line: 2356, column: 14, scope: !2074)
!2076 = !DILocation(line: 2358, column: 16, scope: !2074)
!2077 = !DILocation(line: 2358, column: 10, scope: !2074)
!2078 = !DILocation(line: 2359, column: 18, scope: !2074)
!2079 = !DILocation(line: 2359, column: 10, scope: !2074)
!2080 = !DILocation(line: 2360, column: 33, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2074, file: !679, line: 2360, column: 13)
!2082 = !DILocation(line: 2360, column: 13, scope: !2081)
!2083 = !DILocation(line: 2360, column: 18, scope: !2081)
!2084 = !DILocation(line: 2360, column: 25, scope: !2081)
!2085 = !DILocation(line: 2360, column: 31, scope: !2081)
!2086 = !DILocation(line: 2360, column: 54, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2081, file: !679, discriminator: 1)
!2088 = !DILocation(line: 2360, column: 34, scope: !2087)
!2089 = !DILocation(line: 2360, column: 39, scope: !2087)
!2090 = !DILocation(line: 2360, column: 46, scope: !2087)
!2091 = !DILocation(line: 2360, column: 56, scope: !2087)
!2092 = !DILocation(line: 2360, column: 13, scope: !2087)
!2093 = !DILocation(line: 2362, column: 35, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2081, file: !679, line: 2360, column: 71)
!2095 = !DILocation(line: 2362, column: 64, scope: !2094)
!2096 = !DILocation(line: 2362, column: 44, scope: !2094)
!2097 = !DILocation(line: 2362, column: 49, scope: !2094)
!2098 = !DILocation(line: 2362, column: 56, scope: !2094)
!2099 = !DILocation(line: 2362, column: 66, scope: !2094)
!2100 = !DILocation(line: 2361, column: 13, scope: !2094)
!2101 = !DILocation(line: 2363, column: 13, scope: !2094)
!2102 = !DILocation(line: 2364, column: 40, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2081, file: !679, line: 2364, column: 20)
!2104 = !DILocation(line: 2364, column: 20, scope: !2103)
!2105 = !DILocation(line: 2364, column: 25, scope: !2103)
!2106 = !DILocation(line: 2364, column: 32, scope: !2103)
!2107 = !DILocation(line: 2364, column: 22, scope: !2103)
!2108 = !DILocation(line: 2364, column: 45, scope: !2103)
!2109 = !DILocation(line: 2364, column: 51, scope: !2103)
!2110 = !DILocation(line: 2364, column: 20, scope: !2081)
!2111 = !DILocation(line: 2366, column: 35, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2103, file: !679, line: 2364, column: 41)
!2113 = !DILocation(line: 2366, column: 64, scope: !2112)
!2114 = !DILocation(line: 2366, column: 44, scope: !2112)
!2115 = !DILocation(line: 2366, column: 49, scope: !2112)
!2116 = !DILocation(line: 2366, column: 56, scope: !2112)
!2117 = !DILocation(line: 2365, column: 13, scope: !2112)
!2118 = !DILocation(line: 2367, column: 13, scope: !2112)
!2119 = !DILocation(line: 2379, column: 10, scope: !2074)
!2120 = !DILocalVariable(name: "res", scope: !2121, file: !679, line: 2380, type: !633)
!2121 = distinct !DILexicalBlock(scope: !2074, file: !679, line: 2379, column: 20)
!2122 = !DILocation(line: 2380, column: 17, scope: !2121)
!2123 = !DILocation(line: 2380, column: 28, scope: !2121)
!2124 = !DILocation(line: 2380, column: 40, scope: !2121)
!2125 = !DILocation(line: 2380, column: 23, scope: !2121)
!2126 = !DILocation(line: 2382, column: 17, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !679, line: 2382, column: 17)
!2128 = !DILocation(line: 2382, column: 21, scope: !2127)
!2129 = !DILocation(line: 2382, column: 17, scope: !2121)
!2130 = !DILocation(line: 2384, column: 38, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !679, line: 2382, column: 26)
!2132 = !DILocation(line: 2384, column: 44, scope: !2131)
!2133 = !DILocation(line: 2384, column: 49, scope: !2131)
!2134 = !DILocation(line: 2383, column: 16, scope: !2131)
!2135 = !DILocation(line: 2385, column: 16, scope: !2131)
!2136 = !DILocation(line: 2386, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2127, file: !679, line: 2386, column: 24)
!2138 = !DILocation(line: 2386, column: 29, scope: !2137)
!2139 = !DILocation(line: 2386, column: 36, scope: !2137)
!2140 = !DILocation(line: 2386, column: 41, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2137, file: !679, discriminator: 1)
!2142 = !DILocation(line: 2386, column: 40, scope: !2141)
!2143 = !DILocation(line: 2386, column: 45, scope: !2141)
!2144 = !DILocation(line: 2386, column: 24, scope: !2141)
!2145 = !DILocation(line: 2387, column: 16, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2137, file: !679, line: 2386, column: 56)
!2147 = distinct !{!2147, !2119}
!2148 = !DILocation(line: 2389, column: 13, scope: !2121)
!2149 = !DILocation(line: 2392, column: 14, scope: !2074)
!2150 = !DILocation(line: 2393, column: 10, scope: !2074)
!2151 = !DILocation(line: 2404, column: 31, scope: !1882)
!2152 = !DILocation(line: 2404, column: 40, scope: !1882)
!2153 = !DILocation(line: 2404, column: 4, scope: !1882)
!2154 = !DILocation(line: 2405, column: 9, scope: !1882)
!2155 = !DILocation(line: 2405, column: 4, scope: !1882)
!2156 = !DILocation(line: 2406, column: 12, scope: !1882)
!2157 = !DILocation(line: 2407, column: 4, scope: !1882)
!2158 = !DILocation(line: 2408, column: 4, scope: !1882)
!2159 = !DILocation(line: 2410, column: 10, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2410, column: 8)
!2161 = !DILocation(line: 2410, column: 16, scope: !2160)
!2162 = !DILocation(line: 2410, column: 46, scope: !2160)
!2163 = !DILocation(line: 2410, column: 49, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2160, file: !679, discriminator: 1)
!2165 = !DILocation(line: 2410, column: 58, scope: !2164)
!2166 = !DILocation(line: 2410, column: 8, scope: !2164)
!2167 = !DILocation(line: 2412, column: 30, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2160, file: !679, line: 2410, column: 65)
!2169 = !DILocation(line: 2412, column: 29, scope: !2168)
!2170 = !DILocation(line: 2411, column: 7, scope: !2168)
!2171 = !DILocation(line: 2414, column: 7, scope: !2168)
!2172 = !DILocation(line: 2417, column: 12, scope: !1882)
!2173 = !DILocation(line: 2417, column: 4, scope: !1882)
!2174 = !DILocation(line: 2421, column: 33, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !679, line: 2419, column: 7)
!2176 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2417, column: 20)
!2177 = !DILocation(line: 2421, column: 32, scope: !2175)
!2178 = !DILocation(line: 2420, column: 10, scope: !2175)
!2179 = !DILocation(line: 2423, column: 10, scope: !2175)
!2180 = !DILocation(line: 2427, column: 7, scope: !2176)
!2181 = !DILocation(line: 2437, column: 7, scope: !2176)
!2182 = !DILocation(line: 2446, column: 10, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2446, column: 8)
!2184 = !DILocation(line: 2446, column: 16, scope: !2183)
!2185 = !DILocation(line: 2446, column: 46, scope: !2183)
!2186 = !DILocation(line: 2446, column: 49, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2183, file: !679, discriminator: 1)
!2188 = !DILocation(line: 2446, column: 60, scope: !2187)
!2189 = !DILocation(line: 2446, column: 8, scope: !2187)
!2190 = !DILocalVariable(name: "err", scope: !2191, file: !679, line: 2447, type: !623)
!2191 = distinct !DILexicalBlock(scope: !2183, file: !679, line: 2446, column: 67)
!2192 = !DILocation(line: 2447, column: 14, scope: !2191)
!2193 = !DILocation(line: 2447, column: 21, scope: !2191)
!2194 = !DILocation(line: 2447, column: 20, scope: !2191)
!2195 = !DILocation(line: 2449, column: 69, scope: !2191)
!2196 = !DILocation(line: 2449, column: 7, scope: !2191)
!2197 = !DILocation(line: 2452, column: 17, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2191, file: !679, line: 2452, column: 11)
!2199 = !DILocation(line: 2452, column: 29, scope: !2198)
!2200 = !DILocation(line: 2452, column: 11, scope: !2198)
!2201 = !DILocation(line: 2452, column: 47, scope: !2198)
!2202 = !DILocation(line: 2452, column: 11, scope: !2191)
!2203 = !DILocation(line: 2454, column: 58, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2198, file: !679, line: 2452, column: 54)
!2205 = !DILocation(line: 2454, column: 57, scope: !2204)
!2206 = !DILocation(line: 2454, column: 63, scope: !2204)
!2207 = !DILocation(line: 2453, column: 10, scope: !2204)
!2208 = !DILocation(line: 2455, column: 7, scope: !2204)
!2209 = !DILocation(line: 2456, column: 7, scope: !2191)
!2210 = !DILocation(line: 2459, column: 10, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2459, column: 8)
!2212 = !DILocation(line: 2459, column: 16, scope: !2211)
!2213 = !DILocation(line: 2459, column: 8, scope: !1882)
!2214 = !DILocalVariable(name: "fd", scope: !2215, file: !679, line: 2460, type: !633)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !679, line: 2459, column: 47)
!2216 = !DILocation(line: 2460, column: 11, scope: !2215)
!2217 = !DILocation(line: 2462, column: 12, scope: !2215)
!2218 = !DILocation(line: 2462, column: 10, scope: !2215)
!2219 = !DILocation(line: 2463, column: 11, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !679, line: 2463, column: 11)
!2221 = !DILocation(line: 2463, column: 14, scope: !2220)
!2222 = !DILocation(line: 2463, column: 11, scope: !2215)
!2223 = !DILocation(line: 2464, column: 15, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !679, line: 2463, column: 21)
!2225 = !DILocation(line: 2464, column: 10, scope: !2224)
!2226 = !DILocation(line: 2465, column: 16, scope: !2224)
!2227 = !DILocation(line: 2465, column: 10, scope: !2224)
!2228 = !DILocation(line: 2466, column: 7, scope: !2224)
!2229 = !DILocation(line: 2468, column: 12, scope: !2215)
!2230 = !DILocation(line: 2468, column: 10, scope: !2215)
!2231 = !DILocation(line: 2469, column: 11, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2215, file: !679, line: 2469, column: 11)
!2233 = !DILocation(line: 2469, column: 14, scope: !2232)
!2234 = !DILocation(line: 2469, column: 11, scope: !2215)
!2235 = !DILocation(line: 2470, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !679, line: 2469, column: 21)
!2237 = !DILocation(line: 2470, column: 10, scope: !2236)
!2238 = !DILocation(line: 2471, column: 15, scope: !2236)
!2239 = !DILocation(line: 2471, column: 10, scope: !2236)
!2240 = !DILocation(line: 2472, column: 16, scope: !2236)
!2241 = !DILocation(line: 2472, column: 10, scope: !2236)
!2242 = !DILocation(line: 2473, column: 7, scope: !2236)
!2243 = !DILocation(line: 2474, column: 4, scope: !2215)
!2244 = !DILocation(line: 2476, column: 8, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2476, column: 8)
!2246 = !DILocation(line: 2476, column: 8, scope: !1882)
!2247 = !DILocalVariable(name: "pid", scope: !2248, file: !679, line: 2477, type: !617)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !679, line: 2476, column: 17)
!2249 = !DILocation(line: 2477, column: 13, scope: !2248)
!2250 = !DILocalVariable(name: "pidString", scope: !2248, file: !679, line: 2478, type: !2251)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 256, align: 8, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: 32)
!2254 = !DILocation(line: 2478, column: 12, scope: !2248)
!2255 = !DILocalVariable(name: "pidStringLen", scope: !2248, file: !679, line: 2479, type: !633)
!2256 = !DILocation(line: 2479, column: 11, scope: !2248)
!2257 = !DILocation(line: 2481, column: 7, scope: !2248)
!2258 = distinct !{!2258, !2257}
!2259 = !DILocation(line: 2481, column: 90, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2261, file: !679, discriminator: 1)
!2261 = distinct !DILexicalBlock(scope: !2248, file: !679, line: 2481, column: 10)
!2262 = !DILocation(line: 2484, column: 13, scope: !2248)
!2263 = !DILocation(line: 2484, column: 11, scope: !2248)
!2264 = !DILocation(line: 2485, column: 34, scope: !2248)
!2265 = !DILocation(line: 2486, column: 47, scope: !2248)
!2266 = !DILocation(line: 2485, column: 22, scope: !2248)
!2267 = !DILocation(line: 2485, column: 20, scope: !2248)
!2268 = !DILocation(line: 2487, column: 11, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2248, file: !679, line: 2487, column: 11)
!2270 = !DILocation(line: 2487, column: 24, scope: !2269)
!2271 = !DILocation(line: 2487, column: 11, scope: !2248)
!2272 = !DILocation(line: 2488, column: 14, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !679, line: 2487, column: 30)
!2274 = !DILocation(line: 2490, column: 20, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2273, file: !679, line: 2490, column: 14)
!2276 = !DILocation(line: 2490, column: 32, scope: !2275)
!2277 = !DILocation(line: 2490, column: 14, scope: !2275)
!2278 = !DILocation(line: 2490, column: 50, scope: !2275)
!2279 = !DILocation(line: 2490, column: 14, scope: !2273)
!2280 = !DILocation(line: 2492, column: 52, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2275, file: !679, line: 2490, column: 57)
!2282 = !DILocation(line: 2492, column: 51, scope: !2281)
!2283 = !DILocation(line: 2492, column: 57, scope: !2281)
!2284 = !DILocation(line: 2491, column: 13, scope: !2281)
!2285 = !DILocation(line: 2493, column: 10, scope: !2281)
!2286 = !DILocation(line: 2494, column: 10, scope: !2273)
!2287 = !DILocation(line: 2497, column: 21, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2248, file: !679, line: 2497, column: 11)
!2289 = !DILocation(line: 2497, column: 11, scope: !2288)
!2290 = !DILocation(line: 2497, column: 35, scope: !2288)
!2291 = !DILocation(line: 2497, column: 11, scope: !2248)
!2292 = !DILocation(line: 2498, column: 17, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !679, line: 2497, column: 42)
!2294 = !DILocation(line: 2498, column: 16, scope: !2293)
!2295 = !DILocation(line: 2498, column: 14, scope: !2293)
!2296 = !DILocation(line: 2500, column: 32, scope: !2293)
!2297 = !DILocation(line: 2500, column: 41, scope: !2293)
!2298 = !DILocation(line: 2499, column: 10, scope: !2293)
!2299 = !DILocation(line: 2502, column: 20, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2293, file: !679, line: 2502, column: 14)
!2301 = !DILocation(line: 2502, column: 32, scope: !2300)
!2302 = !DILocation(line: 2502, column: 14, scope: !2300)
!2303 = !DILocation(line: 2502, column: 50, scope: !2300)
!2304 = !DILocation(line: 2502, column: 14, scope: !2293)
!2305 = !DILocation(line: 2504, column: 52, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2300, file: !679, line: 2502, column: 57)
!2307 = !DILocation(line: 2504, column: 51, scope: !2306)
!2308 = !DILocation(line: 2504, column: 57, scope: !2306)
!2309 = !DILocation(line: 2503, column: 13, scope: !2306)
!2310 = !DILocation(line: 2505, column: 10, scope: !2306)
!2311 = !DILocation(line: 2506, column: 10, scope: !2293)
!2312 = !DILocation(line: 2509, column: 17, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2248, file: !679, line: 2509, column: 11)
!2314 = !DILocation(line: 2509, column: 28, scope: !2313)
!2315 = !DILocation(line: 2509, column: 39, scope: !2313)
!2316 = !DILocation(line: 2509, column: 11, scope: !2313)
!2317 = !DILocation(line: 2509, column: 56, scope: !2313)
!2318 = !DILocation(line: 2509, column: 53, scope: !2313)
!2319 = !DILocation(line: 2509, column: 11, scope: !2248)
!2320 = !DILocation(line: 2510, column: 17, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2313, file: !679, line: 2509, column: 70)
!2322 = !DILocation(line: 2510, column: 16, scope: !2321)
!2323 = !DILocation(line: 2510, column: 14, scope: !2321)
!2324 = !DILocation(line: 2512, column: 32, scope: !2321)
!2325 = !DILocation(line: 2512, column: 41, scope: !2321)
!2326 = !DILocation(line: 2511, column: 10, scope: !2321)
!2327 = !DILocation(line: 2514, column: 20, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2321, file: !679, line: 2514, column: 14)
!2329 = !DILocation(line: 2514, column: 32, scope: !2328)
!2330 = !DILocation(line: 2514, column: 14, scope: !2328)
!2331 = !DILocation(line: 2514, column: 50, scope: !2328)
!2332 = !DILocation(line: 2514, column: 14, scope: !2321)
!2333 = !DILocation(line: 2516, column: 52, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2328, file: !679, line: 2514, column: 57)
!2335 = !DILocation(line: 2516, column: 51, scope: !2334)
!2336 = !DILocation(line: 2516, column: 57, scope: !2334)
!2337 = !DILocation(line: 2515, column: 13, scope: !2334)
!2338 = !DILocation(line: 2517, column: 10, scope: !2334)
!2339 = !DILocation(line: 2518, column: 10, scope: !2321)
!2340 = !DILocation(line: 2521, column: 17, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2248, file: !679, line: 2521, column: 11)
!2342 = !DILocation(line: 2521, column: 11, scope: !2341)
!2343 = !DILocation(line: 2521, column: 28, scope: !2341)
!2344 = !DILocation(line: 2521, column: 11, scope: !2248)
!2345 = !DILocation(line: 2522, column: 17, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !679, line: 2521, column: 35)
!2347 = !DILocation(line: 2522, column: 16, scope: !2346)
!2348 = !DILocation(line: 2522, column: 14, scope: !2346)
!2349 = !DILocation(line: 2524, column: 32, scope: !2346)
!2350 = !DILocation(line: 2524, column: 41, scope: !2346)
!2351 = !DILocation(line: 2523, column: 10, scope: !2346)
!2352 = !DILocation(line: 2526, column: 20, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !679, line: 2526, column: 14)
!2354 = !DILocation(line: 2526, column: 32, scope: !2353)
!2355 = !DILocation(line: 2526, column: 14, scope: !2353)
!2356 = !DILocation(line: 2526, column: 50, scope: !2353)
!2357 = !DILocation(line: 2526, column: 14, scope: !2346)
!2358 = !DILocation(line: 2528, column: 52, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !679, line: 2526, column: 57)
!2360 = !DILocation(line: 2528, column: 51, scope: !2359)
!2361 = !DILocation(line: 2528, column: 57, scope: !2359)
!2362 = !DILocation(line: 2527, column: 13, scope: !2359)
!2363 = !DILocation(line: 2529, column: 10, scope: !2359)
!2364 = !DILocation(line: 2530, column: 10, scope: !2346)
!2365 = !DILocation(line: 2534, column: 13, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2248, file: !679, line: 2534, column: 11)
!2367 = !DILocation(line: 2534, column: 19, scope: !2366)
!2368 = !DILocation(line: 2534, column: 11, scope: !2248)
!2369 = !DILocation(line: 2535, column: 16, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !679, line: 2534, column: 50)
!2371 = !DILocation(line: 2535, column: 10, scope: !2370)
!2372 = !DILocation(line: 2536, column: 7, scope: !2370)
!2373 = !DILocation(line: 2537, column: 4, scope: !2248)
!2374 = !DILocation(line: 2539, column: 14, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2539, column: 8)
!2376 = !DILocation(line: 2539, column: 33, scope: !2375)
!2377 = !DILocation(line: 2539, column: 8, scope: !2375)
!2378 = !DILocation(line: 2539, column: 52, scope: !2375)
!2379 = !DILocation(line: 2539, column: 8, scope: !1882)
!2380 = !DILocation(line: 2540, column: 14, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !679, line: 2539, column: 59)
!2382 = !DILocation(line: 2540, column: 13, scope: !2381)
!2383 = !DILocation(line: 2540, column: 11, scope: !2381)
!2384 = !DILocation(line: 2541, column: 66, scope: !2381)
!2385 = !DILocation(line: 2541, column: 72, scope: !2381)
!2386 = !DILocation(line: 2541, column: 7, scope: !2381)
!2387 = !DILocation(line: 2544, column: 17, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2381, file: !679, line: 2544, column: 11)
!2389 = !DILocation(line: 2544, column: 29, scope: !2388)
!2390 = !DILocation(line: 2544, column: 11, scope: !2388)
!2391 = !DILocation(line: 2544, column: 47, scope: !2388)
!2392 = !DILocation(line: 2544, column: 11, scope: !2381)
!2393 = !DILocation(line: 2546, column: 58, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2388, file: !679, line: 2544, column: 54)
!2395 = !DILocation(line: 2546, column: 57, scope: !2394)
!2396 = !DILocation(line: 2546, column: 63, scope: !2394)
!2397 = !DILocation(line: 2545, column: 10, scope: !2394)
!2398 = !DILocation(line: 2547, column: 7, scope: !2394)
!2399 = !DILocation(line: 2548, column: 7, scope: !2381)
!2400 = !DILocation(line: 2551, column: 4, scope: !1882)
!2401 = !DILocation(line: 2554, column: 9, scope: !1882)
!2402 = !DILocation(line: 2554, column: 4, scope: !1882)
!2403 = !DILocation(line: 2556, column: 8, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2556, column: 8)
!2405 = !DILocation(line: 2556, column: 19, scope: !2404)
!2406 = !DILocation(line: 2556, column: 8, scope: !1882)
!2407 = !DILocation(line: 2557, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !679, line: 2556, column: 26)
!2409 = !DILocation(line: 2557, column: 7, scope: !2408)
!2410 = !DILocation(line: 2558, column: 4, scope: !2408)
!2411 = !DILocation(line: 2559, column: 8, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2559, column: 8)
!2413 = !DILocation(line: 2559, column: 19, scope: !2412)
!2414 = !DILocation(line: 2559, column: 8, scope: !1882)
!2415 = !DILocation(line: 2560, column: 13, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !679, line: 2559, column: 26)
!2417 = !DILocation(line: 2560, column: 7, scope: !2416)
!2418 = !DILocation(line: 2561, column: 4, scope: !2416)
!2419 = !DILocation(line: 2562, column: 24, scope: !1882)
!2420 = !DILocation(line: 2562, column: 4, scope: !1882)
!2421 = !DILocation(line: 2563, column: 9, scope: !1882)
!2422 = !DILocation(line: 2563, column: 4, scope: !1882)
!2423 = !DILocation(line: 2565, column: 8, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2565, column: 8)
!2425 = !DILocation(line: 2565, column: 12, scope: !2424)
!2426 = !DILocation(line: 2565, column: 8, scope: !1882)
!2427 = !DILocation(line: 2566, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !679, line: 2566, column: 11)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !679, line: 2565, column: 18)
!2430 = !DILocation(line: 2566, column: 17, scope: !2428)
!2431 = !DILocation(line: 2566, column: 11, scope: !2429)
!2432 = !DILocation(line: 2567, column: 10, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !679, line: 2566, column: 44)
!2434 = !DILocation(line: 2569, column: 4, scope: !2429)
!2435 = !DILocation(line: 2570, column: 11, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !679, line: 2570, column: 11)
!2437 = distinct !DILexicalBlock(scope: !2424, file: !679, line: 2569, column: 11)
!2438 = !DILocation(line: 2570, column: 11, scope: !2437)
!2439 = !DILocation(line: 2576, column: 23, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !679, line: 2570, column: 20)
!2441 = !DILocation(line: 2576, column: 10, scope: !2440)
!2442 = !DILocation(line: 2577, column: 7, scope: !2440)
!2443 = !DILocation(line: 2579, column: 14, scope: !2437)
!2444 = !DILocation(line: 2579, column: 8, scope: !2437)
!2445 = !DILocation(line: 2579, column: 12, scope: !2437)
!2446 = !DILocation(line: 2582, column: 8, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !1882, file: !679, line: 2582, column: 8)
!2448 = !DILocation(line: 2582, column: 8, scope: !1882)
!2449 = !DILocation(line: 2583, column: 13, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !679, line: 2582, column: 17)
!2451 = !DILocation(line: 2583, column: 7, scope: !2450)
!2452 = !DILocation(line: 2584, column: 4, scope: !2450)
!2453 = !DILocation(line: 2586, column: 11, scope: !1882)
!2454 = !DILocation(line: 2586, column: 15, scope: !1882)
!2455 = !DILocation(line: 2586, column: 4, scope: !1882)
!2456 = !DILocation(line: 2587, column: 1, scope: !1882)
!2457 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !2458, file: !2458, line: 368, type: !2459, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2458 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !1912, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1239, line: 102, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !643, line: 172, baseType: !621)
!2463 = !DILocalVariable(name: "list", arg: 1, scope: !2457, file: !2458, line: 368, type: !1912)
!2464 = !DILocation(line: 368, column: 28, scope: !2457)
!2465 = !DILocalVariable(name: "length", arg: 2, scope: !2457, file: !2458, line: 369, type: !2461)
!2466 = !DILocation(line: 369, column: 29, scope: !2457)
!2467 = !DILocation(line: 371, column: 28, scope: !2457)
!2468 = !DILocation(line: 371, column: 34, scope: !2457)
!2469 = !DILocation(line: 371, column: 4, scope: !2457)
!2470 = !DILocation(line: 372, column: 1, scope: !2457)
!2471 = distinct !DISubprogram(name: "Hostinfo_GetRatedCpuMhz", scope: !679, file: !679, line: 2675, type: !2472, isLocal: false, isDefinition: true, scopeLine: 2677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!947, !2474, !1453}
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !618, line: 174, baseType: !2475)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !620, line: 196, baseType: !633)
!2476 = !DILocalVariable(name: "cpuNumber", arg: 1, scope: !2471, file: !679, line: 2675, type: !2474)
!2477 = !DILocation(line: 2675, column: 31, scope: !2471)
!2478 = !DILocalVariable(name: "mHz", arg: 2, scope: !2471, file: !679, line: 2676, type: !1453)
!2479 = !DILocation(line: 2676, column: 33, scope: !2471)
!2480 = !DILocalVariable(name: "fMhz", scope: !2481, file: !679, line: 2721, type: !640)
!2481 = distinct !DILexicalBlock(scope: !2471, file: !679, line: 2720, column: 4)
!2482 = !DILocation(line: 2721, column: 13, scope: !2481)
!2483 = !DILocalVariable(name: "readVal", scope: !2481, file: !679, line: 2722, type: !687)
!2484 = !DILocation(line: 2722, column: 13, scope: !2481)
!2485 = !DILocation(line: 2722, column: 42, scope: !2481)
!2486 = !DILocation(line: 2722, column: 23, scope: !2481)
!2487 = !DILocation(line: 2724, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2481, file: !679, line: 2724, column: 11)
!2489 = !DILocation(line: 2724, column: 19, scope: !2488)
!2490 = !DILocation(line: 2724, column: 11, scope: !2481)
!2491 = !DILocation(line: 2725, column: 10, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !679, line: 2724, column: 27)
!2493 = !DILocation(line: 2728, column: 18, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2481, file: !679, line: 2728, column: 11)
!2495 = !DILocation(line: 2728, column: 11, scope: !2494)
!2496 = !DILocation(line: 2728, column: 40, scope: !2494)
!2497 = !DILocation(line: 2728, column: 11, scope: !2481)
!2498 = !DILocation(line: 2729, column: 32, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !679, line: 2728, column: 46)
!2500 = !DILocation(line: 2729, column: 37, scope: !2499)
!2501 = !DILocation(line: 2729, column: 17, scope: !2499)
!2502 = !DILocation(line: 2729, column: 11, scope: !2499)
!2503 = !DILocation(line: 2729, column: 15, scope: !2499)
!2504 = !DILocation(line: 2730, column: 7, scope: !2499)
!2505 = !DILocation(line: 2732, column: 12, scope: !2481)
!2506 = !DILocation(line: 2732, column: 7, scope: !2481)
!2507 = !DILocation(line: 2735, column: 4, scope: !2471)
!2508 = !DILocation(line: 2737, column: 1, scope: !2471)
!2509 = distinct !DISubprogram(name: "HostinfoGetCpuInfo", scope: !679, file: !679, line: 2609, type: !2510, isLocal: true, isDefinition: true, scopeLine: 2611, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!687, !633, !687}
!2512 = !DILocalVariable(name: "nCpu", arg: 1, scope: !2509, file: !679, line: 2609, type: !633)
!2513 = !DILocation(line: 2609, column: 24, scope: !2509)
!2514 = !DILocalVariable(name: "name", arg: 2, scope: !2509, file: !679, line: 2610, type: !687)
!2515 = !DILocation(line: 2610, column: 26, scope: !2509)
!2516 = !DILocalVariable(name: "f", scope: !2509, file: !679, line: 2612, type: !1237)
!2517 = !DILocation(line: 2612, column: 10, scope: !2509)
!2518 = !DILocalVariable(name: "line", scope: !2509, file: !679, line: 2613, type: !687)
!2519 = !DILocation(line: 2613, column: 10, scope: !2509)
!2520 = !DILocalVariable(name: "cpu", scope: !2509, file: !679, line: 2614, type: !633)
!2521 = !DILocation(line: 2614, column: 8, scope: !2509)
!2522 = !DILocalVariable(name: "value", scope: !2509, file: !679, line: 2615, type: !687)
!2523 = !DILocation(line: 2615, column: 10, scope: !2509)
!2524 = !DILocation(line: 2617, column: 8, scope: !2509)
!2525 = !DILocation(line: 2617, column: 6, scope: !2509)
!2526 = !DILocation(line: 2619, column: 8, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2509, file: !679, line: 2619, column: 8)
!2528 = !DILocation(line: 2619, column: 10, scope: !2527)
!2529 = !DILocation(line: 2619, column: 8, scope: !2509)
!2530 = !DILocation(line: 2620, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !679, line: 2619, column: 18)
!2532 = !DILocation(line: 2622, column: 7, scope: !2531)
!2533 = !DILocation(line: 2625, column: 4, scope: !2509)
!2534 = !DILocation(line: 2625, column: 11, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2509, file: !679, discriminator: 1)
!2536 = !DILocation(line: 2625, column: 18, scope: !2535)
!2537 = !DILocation(line: 2625, column: 15, scope: !2535)
!2538 = !DILocation(line: 2625, column: 23, scope: !2535)
!2539 = !DILocation(line: 2626, column: 30, scope: !2509)
!2540 = !DILocation(line: 2626, column: 11, scope: !2509)
!2541 = !DILocation(line: 2626, column: 48, scope: !2509)
!2542 = !DILocation(line: 2625, column: 4, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2509, file: !679, discriminator: 2)
!2544 = !DILocalVariable(name: "s", scope: !2545, file: !679, line: 2627, type: !687)
!2545 = distinct !DILexicalBlock(scope: !2509, file: !679, line: 2626, column: 66)
!2546 = !DILocation(line: 2627, column: 13, scope: !2545)
!2547 = !DILocalVariable(name: "e", scope: !2545, file: !679, line: 2628, type: !687)
!2548 = !DILocation(line: 2628, column: 13, scope: !2545)
!2549 = !DILocation(line: 2630, column: 23, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2545, file: !679, line: 2630, column: 11)
!2551 = !DILocation(line: 2630, column: 29, scope: !2550)
!2552 = !DILocation(line: 2630, column: 16, scope: !2550)
!2553 = !DILocation(line: 2630, column: 14, scope: !2550)
!2554 = !DILocation(line: 2630, column: 36, scope: !2550)
!2555 = !DILocation(line: 2631, column: 23, scope: !2550)
!2556 = !DILocation(line: 2631, column: 16, scope: !2550)
!2557 = !DILocation(line: 2631, column: 14, scope: !2550)
!2558 = !DILocation(line: 2630, column: 11, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2545, file: !679, discriminator: 1)
!2560 = !DILocation(line: 2632, column: 11, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2550, file: !679, line: 2631, column: 33)
!2562 = !DILocation(line: 2633, column: 14, scope: !2561)
!2563 = !DILocation(line: 2633, column: 25, scope: !2561)
!2564 = !DILocation(line: 2633, column: 18, scope: !2561)
!2565 = !DILocation(line: 2633, column: 16, scope: !2561)
!2566 = !DILocation(line: 2633, column: 12, scope: !2561)
!2567 = !DILocation(line: 2636, column: 10, scope: !2561)
!2568 = !DILocation(line: 2636, column: 17, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2570, file: !679, discriminator: 1)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !679, line: 2636, column: 10)
!2571 = distinct !DILexicalBlock(scope: !2561, file: !679, line: 2636, column: 10)
!2572 = !DILocation(line: 2636, column: 21, scope: !2569)
!2573 = !DILocation(line: 2636, column: 19, scope: !2569)
!2574 = !DILocation(line: 2636, column: 23, scope: !2569)
!2575 = !DILocation(line: 2636, column: 26, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2570, file: !679, discriminator: 2)
!2577 = !DILocation(line: 2636, column: 25, scope: !2576)
!2578 = !DILocation(line: 2636, column: 46, scope: !2576)
!2579 = !DILocation(line: 2636, column: 28, scope: !2576)
!2580 = !DILocation(line: 2636, column: 27, scope: !2576)
!2581 = !DILocation(line: 2636, column: 29, scope: !2576)
!2582 = !DILocation(line: 2636, column: 23, scope: !2576)
!2583 = !DILocation(line: 2636, column: 10, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2571, file: !679, discriminator: 3)
!2585 = !DILocation(line: 2636, column: 10, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2571, file: !679, discriminator: 4)
!2587 = !DILocation(line: 2636, column: 39, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2570, file: !679, discriminator: 5)
!2589 = !DILocation(line: 2636, column: 10, scope: !2588)
!2590 = distinct !{!2590, !2567}
!2591 = !DILocation(line: 2637, column: 10, scope: !2561)
!2592 = !DILocation(line: 2637, column: 17, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2594, file: !679, discriminator: 1)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !679, line: 2637, column: 10)
!2595 = distinct !DILexicalBlock(scope: !2561, file: !679, line: 2637, column: 10)
!2596 = !DILocation(line: 2637, column: 21, scope: !2593)
!2597 = !DILocation(line: 2637, column: 19, scope: !2593)
!2598 = !DILocation(line: 2637, column: 23, scope: !2593)
!2599 = !DILocation(line: 2637, column: 25, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2594, file: !679, discriminator: 2)
!2601 = !DILocation(line: 2637, column: 46, scope: !2600)
!2602 = !DILocation(line: 2637, column: 26, scope: !2600)
!2603 = !DILocation(line: 2637, column: 28, scope: !2600)
!2604 = !DILocation(line: 2637, column: 27, scope: !2600)
!2605 = !DILocation(line: 2637, column: 29, scope: !2600)
!2606 = !DILocation(line: 2637, column: 23, scope: !2600)
!2607 = !DILocation(line: 2637, column: 10, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2595, file: !679, discriminator: 3)
!2609 = !DILocation(line: 2637, column: 10, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2595, file: !679, discriminator: 4)
!2611 = !DILocation(line: 2637, column: 42, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2594, file: !679, discriminator: 5)
!2613 = !DILocation(line: 2637, column: 10, scope: !2612)
!2614 = distinct !{!2614, !2591}
!2615 = !DILocation(line: 2638, column: 11, scope: !2561)
!2616 = !DILocation(line: 2638, column: 13, scope: !2561)
!2617 = !DILocation(line: 2641, column: 15, scope: !2561)
!2618 = !DILocation(line: 2641, column: 10, scope: !2561)
!2619 = !DILocation(line: 2642, column: 25, scope: !2561)
!2620 = !DILocation(line: 2642, column: 18, scope: !2561)
!2621 = !DILocation(line: 2642, column: 16, scope: !2561)
!2622 = !DILocation(line: 2643, column: 36, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !679, line: 2643, column: 16)
!2624 = distinct !DILexicalBlock(scope: !2561, file: !679, line: 2643, column: 11)
!2625 = !DILocation(line: 2643, column: 34, scope: !2623)
!2626 = !DILocation(line: 2643, column: 33, scope: !2623)
!2627 = !DILocation(line: 2643, column: 16, scope: !2623)
!2628 = !DILocation(line: 2643, column: 16, scope: !2624)
!2629 = !DILocation(line: 2643, column: 51, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2631, file: !679, discriminator: 1)
!2631 = distinct !DILexicalBlock(scope: !2623, file: !679, line: 2643, column: 49)
!2632 = !DILocation(line: 2645, column: 13, scope: !2561)
!2633 = !DILocation(line: 2646, column: 7, scope: !2561)
!2634 = !DILocation(line: 2647, column: 12, scope: !2545)
!2635 = !DILocation(line: 2647, column: 7, scope: !2545)
!2636 = !DILocation(line: 2625, column: 4, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2509, file: !679, discriminator: 3)
!2638 = distinct !{!2638, !2533}
!2639 = !DILocation(line: 2650, column: 11, scope: !2509)
!2640 = !DILocation(line: 2650, column: 4, scope: !2509)
!2641 = !DILocation(line: 2652, column: 11, scope: !2509)
!2642 = !DILocation(line: 2652, column: 4, scope: !2509)
!2643 = !DILocation(line: 2653, column: 1, scope: !2509)
!2644 = distinct !DISubprogram(name: "Hostinfo_GetCpuDescription", scope: !679, file: !679, line: 2802, type: !2645, isLocal: false, isDefinition: true, scopeLine: 2803, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!687, !623}
!2647 = !DILocalVariable(name: "cpuNumber", arg: 1, scope: !2644, file: !679, line: 2802, type: !623)
!2648 = !DILocation(line: 2802, column: 35, scope: !2644)
!2649 = !DILocation(line: 2822, column: 30, scope: !2644)
!2650 = !DILocation(line: 2822, column: 11, scope: !2644)
!2651 = !DILocation(line: 2822, column: 4, scope: !2644)
!2652 = distinct !DISubprogram(name: "Hostinfo_Execute", scope: !679, file: !679, line: 2845, type: !2653, isLocal: false, isDefinition: true, scopeLine: 2850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!633, !735, !1885, !947, !1627, !1284}
!2655 = !DILocalVariable(name: "path", arg: 1, scope: !2652, file: !679, line: 2845, type: !735)
!2656 = !DILocation(line: 2845, column: 30, scope: !2652)
!2657 = !DILocalVariable(name: "args", arg: 2, scope: !2652, file: !679, line: 2846, type: !1885)
!2658 = !DILocation(line: 2846, column: 32, scope: !2652)
!2659 = !DILocalVariable(name: "wait", arg: 3, scope: !2652, file: !679, line: 2847, type: !947)
!2660 = !DILocation(line: 2847, column: 23, scope: !2652)
!2661 = !DILocalVariable(name: "keepFds", arg: 4, scope: !2652, file: !679, line: 2848, type: !1627)
!2662 = !DILocation(line: 2848, column: 29, scope: !2652)
!2663 = !DILocalVariable(name: "numKeepFds", arg: 5, scope: !2652, file: !679, line: 2849, type: !1284)
!2664 = !DILocation(line: 2849, column: 25, scope: !2652)
!2665 = !DILocalVariable(name: "pid", scope: !2652, file: !679, line: 2851, type: !633)
!2666 = !DILocation(line: 2851, column: 8, scope: !2652)
!2667 = !DILocalVariable(name: "status", scope: !2652, file: !679, line: 2852, type: !633)
!2668 = !DILocation(line: 2852, column: 8, scope: !2652)
!2669 = !DILocation(line: 2854, column: 8, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 2854, column: 8)
!2671 = !DILocation(line: 2854, column: 13, scope: !2670)
!2672 = !DILocation(line: 2854, column: 8, scope: !2652)
!2673 = !DILocation(line: 2855, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !679, line: 2854, column: 21)
!2675 = !DILocation(line: 2858, column: 10, scope: !2652)
!2676 = !DILocation(line: 2858, column: 8, scope: !2652)
!2677 = !DILocation(line: 2860, column: 8, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 2860, column: 8)
!2679 = !DILocation(line: 2860, column: 12, scope: !2678)
!2680 = !DILocation(line: 2860, column: 8, scope: !2652)
!2681 = !DILocation(line: 2861, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !679, line: 2860, column: 19)
!2683 = !DILocation(line: 2864, column: 8, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 2864, column: 8)
!2685 = !DILocation(line: 2864, column: 12, scope: !2684)
!2686 = !DILocation(line: 2864, column: 8, scope: !2652)
!2687 = !DILocation(line: 2865, column: 34, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !679, line: 2864, column: 18)
!2689 = !DILocation(line: 2865, column: 43, scope: !2688)
!2690 = !DILocation(line: 2865, column: 7, scope: !2688)
!2691 = !DILocation(line: 2866, column: 20, scope: !2688)
!2692 = !DILocation(line: 2866, column: 26, scope: !2688)
!2693 = !DILocation(line: 2866, column: 7, scope: !2688)
!2694 = !DILocation(line: 2867, column: 7, scope: !2688)
!2695 = !DILocation(line: 2870, column: 8, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 2870, column: 8)
!2697 = !DILocation(line: 2870, column: 8, scope: !2652)
!2698 = !DILocation(line: 2871, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !679, line: 2870, column: 14)
!2700 = !DILocation(line: 2872, column: 15, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !679, line: 2872, column: 7)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !679, line: 2871, column: 16)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !679, line: 2871, column: 7)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !679, line: 2871, column: 7)
!2705 = !DILocation(line: 2872, column: 7, scope: !2701)
!2706 = !DILocation(line: 2872, column: 32, scope: !2701)
!2707 = !DILocation(line: 2872, column: 7, scope: !2702)
!2708 = !DILocation(line: 2873, column: 11, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !679, line: 2873, column: 9)
!2710 = distinct !DILexicalBlock(scope: !2701, file: !679, line: 2872, column: 39)
!2711 = !DILocation(line: 2873, column: 10, scope: !2709)
!2712 = !DILocation(line: 2873, column: 15, scope: !2709)
!2713 = !DILocation(line: 2873, column: 9, scope: !2710)
!2714 = !DILocation(line: 2874, column: 9, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2709, file: !679, line: 2873, column: 26)
!2716 = !DILocation(line: 2876, column: 11, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2710, file: !679, line: 2876, column: 9)
!2718 = !DILocation(line: 2876, column: 10, scope: !2717)
!2719 = !DILocation(line: 2876, column: 15, scope: !2717)
!2720 = !DILocation(line: 2876, column: 9, scope: !2710)
!2721 = !DILocation(line: 2877, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !679, line: 2876, column: 25)
!2723 = !DILocation(line: 2879, column: 3, scope: !2710)
!2724 = !DILocation(line: 2880, column: 13, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2701, file: !679, line: 2879, column: 10)
!2726 = !DILocation(line: 2880, column: 6, scope: !2725)
!2727 = !DILocation(line: 2871, column: 7, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2703, file: !679, discriminator: 1)
!2729 = distinct !{!2729, !2698}
!2730 = !DILocation(line: 2884, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2696, file: !679, line: 2883, column: 11)
!2732 = !DILocation(line: 2886, column: 1, scope: !2652)
!2733 = !DILocalVariable(name: "res", scope: !696, file: !679, line: 3050, type: !633)
!2734 = !DILocation(line: 3050, column: 8, scope: !696)
!2735 = !DILocalVariable(name: "uptime", scope: !696, file: !679, line: 3051, type: !1482)
!2736 = !DILocation(line: 3051, column: 11, scope: !696)
!2737 = !DILocalVariable(name: "fd", scope: !696, file: !679, line: 3052, type: !633)
!2738 = !DILocation(line: 3052, column: 8, scope: !696)
!2739 = !DILocalVariable(name: "buf", scope: !696, file: !679, line: 3053, type: !2740)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 2048, align: 8, elements: !2741)
!2741 = !{!2742}
!2742 = !DISubrange(count: 256)
!2743 = !DILocation(line: 3053, column: 9, scope: !696)
!2744 = !DILocation(line: 3074, column: 9, scope: !696)
!2745 = !DILocation(line: 3074, column: 7, scope: !696)
!2746 = !DILocation(line: 3077, column: 26, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !696, file: !679, line: 3077, column: 8)
!2748 = !DILocation(line: 3077, column: 29, scope: !2747)
!2749 = !DILocation(line: 3077, column: 25, scope: !2747)
!2750 = !DILocation(line: 3077, column: 8, scope: !2747)
!2751 = !DILocation(line: 3077, column: 8, scope: !696)
!2752 = !DILocation(line: 3078, column: 12, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2747, file: !679, line: 3077, column: 41)
!2754 = !DILocation(line: 3078, column: 10, scope: !2753)
!2755 = !DILocation(line: 3080, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !679, line: 3080, column: 11)
!2757 = !DILocation(line: 3080, column: 14, scope: !2756)
!2758 = !DILocation(line: 3080, column: 11, scope: !2753)
!2759 = !DILocation(line: 3082, column: 36, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !679, line: 3080, column: 21)
!2761 = !DILocation(line: 3082, column: 35, scope: !2760)
!2762 = !DILocation(line: 3082, column: 18, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2760, file: !679, discriminator: 1)
!2764 = !DILocation(line: 3081, column: 10, scope: !2760)
!2765 = !DILocation(line: 3084, column: 10, scope: !2760)
!2766 = !DILocation(line: 3088, column: 54, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2753, file: !679, line: 3088, column: 11)
!2768 = !DILocation(line: 3088, column: 11, scope: !2767)
!2769 = !DILocation(line: 3088, column: 58, scope: !2767)
!2770 = !DILocation(line: 3088, column: 11, scope: !2753)
!2771 = !DILocation(line: 3089, column: 16, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !679, line: 3088, column: 65)
!2773 = !DILocation(line: 3089, column: 10, scope: !2772)
!2774 = !DILocation(line: 3090, column: 7, scope: !2772)
!2775 = !DILocation(line: 3093, column: 12, scope: !2753)
!2776 = !DILocation(line: 3093, column: 10, scope: !2753)
!2777 = !DILocation(line: 3094, column: 4, scope: !2753)
!2778 = !DILocation(line: 3098, column: 16, scope: !696)
!2779 = !DILocation(line: 3098, column: 20, scope: !696)
!2780 = !DILocation(line: 3098, column: 10, scope: !696)
!2781 = !DILocation(line: 3098, column: 8, scope: !696)
!2782 = !DILocation(line: 3099, column: 8, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !696, file: !679, line: 3099, column: 8)
!2784 = !DILocation(line: 3099, column: 12, scope: !2783)
!2785 = !DILocation(line: 3099, column: 8, scope: !696)
!2786 = !DILocation(line: 3107, column: 11, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !679, line: 3107, column: 11)
!2788 = distinct !DILexicalBlock(scope: !2783, file: !679, line: 3099, column: 19)
!2789 = !DILocation(line: 3107, column: 60, scope: !2787)
!2790 = !DILocation(line: 3107, column: 11, scope: !2788)
!2791 = !DILocation(line: 3109, column: 36, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2787, file: !679, line: 3107, column: 66)
!2793 = !DILocation(line: 3109, column: 35, scope: !2792)
!2794 = !DILocation(line: 3109, column: 18, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2792, file: !679, discriminator: 1)
!2796 = !DILocation(line: 3108, column: 10, scope: !2792)
!2797 = !DILocation(line: 3110, column: 7, scope: !2792)
!2798 = !DILocation(line: 3111, column: 12, scope: !2788)
!2799 = !DILocation(line: 3111, column: 10, scope: !2788)
!2800 = !DILocation(line: 3112, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2788, file: !679, line: 3112, column: 11)
!2802 = !DILocation(line: 3112, column: 14, scope: !2801)
!2803 = !DILocation(line: 3112, column: 11, scope: !2788)
!2804 = !DILocation(line: 3114, column: 36, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !679, line: 3112, column: 21)
!2806 = !DILocation(line: 3114, column: 35, scope: !2805)
!2807 = !DILocation(line: 3114, column: 18, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2805, file: !679, discriminator: 1)
!2809 = !DILocation(line: 3113, column: 10, scope: !2805)
!2810 = !DILocation(line: 3116, column: 10, scope: !2805)
!2811 = !DILocation(line: 3118, column: 18, scope: !2788)
!2812 = !DILocation(line: 3118, column: 22, scope: !2788)
!2813 = !DILocation(line: 3118, column: 13, scope: !2788)
!2814 = !DILocation(line: 3118, column: 11, scope: !2788)
!2815 = !DILocation(line: 3119, column: 13, scope: !2788)
!2816 = !DILocation(line: 3119, column: 7, scope: !2788)
!2817 = !DILocation(line: 3120, column: 11, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2788, file: !679, line: 3120, column: 11)
!2819 = !DILocation(line: 3120, column: 15, scope: !2818)
!2820 = !DILocation(line: 3120, column: 11, scope: !2788)
!2821 = !DILocation(line: 3122, column: 36, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !679, line: 3120, column: 22)
!2823 = !DILocation(line: 3122, column: 35, scope: !2822)
!2824 = !DILocation(line: 3122, column: 18, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2822, file: !679, discriminator: 1)
!2826 = !DILocation(line: 3121, column: 10, scope: !2822)
!2827 = !DILocation(line: 3124, column: 10, scope: !2822)
!2828 = !DILocation(line: 3126, column: 4, scope: !2788)
!2829 = !DILocation(line: 3128, column: 8, scope: !696)
!2830 = !DILocation(line: 3128, column: 4, scope: !696)
!2831 = !DILocation(line: 3128, column: 13, scope: !696)
!2832 = !DILocation(line: 3130, column: 15, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !696, file: !679, line: 3130, column: 8)
!2834 = !DILocation(line: 3130, column: 8, scope: !2833)
!2835 = !DILocation(line: 3130, column: 36, scope: !2833)
!2836 = !DILocation(line: 3130, column: 8, scope: !696)
!2837 = !DILocation(line: 3131, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !679, line: 3130, column: 42)
!2839 = !DILocation(line: 3133, column: 7, scope: !2838)
!2840 = !DILocation(line: 3136, column: 11, scope: !696)
!2841 = !DILocation(line: 3136, column: 18, scope: !696)
!2842 = !DILocation(line: 3136, column: 25, scope: !696)
!2843 = !DILocation(line: 3136, column: 4, scope: !696)
!2844 = !DILocation(line: 3140, column: 1, scope: !696)
!2845 = distinct !DISubprogram(name: "Atomic_ReadInt", scope: !689, file: !689, line: 3833, type: !2846, isLocal: true, isDefinition: true, scopeLine: 3833, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!633, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64, align: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!2850 = !DILocalVariable(name: "var", arg: 1, scope: !2845, file: !689, line: 3833, type: !2848)
!2851 = !DILocation(line: 3833, column: 347, scope: !2845)
!2852 = !DILocation(line: 3833, column: 385, scope: !2845)
!2853 = !DILocation(line: 3833, column: 371, scope: !2845)
!2854 = !DILocation(line: 3833, column: 354, scope: !2845)
!2855 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWriteInt", scope: !689, file: !689, line: 3833, type: !2856, isLocal: true, isDefinition: true, scopeLine: 3833, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!633, !2858, !633, !633}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64, align: 64)
!2859 = !DILocalVariable(name: "var", arg: 1, scope: !2855, file: !689, line: 3833, type: !2858)
!2860 = !DILocation(line: 3833, column: 682, scope: !2855)
!2861 = !DILocalVariable(name: "oldVal", arg: 2, scope: !2855, file: !689, line: 3833, type: !633)
!2862 = !DILocation(line: 3833, column: 691, scope: !2855)
!2863 = !DILocalVariable(name: "newVal", arg: 3, scope: !2855, file: !689, line: 3833, type: !633)
!2864 = !DILocation(line: 3833, column: 703, scope: !2855)
!2865 = !DILocation(line: 3833, column: 756, scope: !2855)
!2866 = !DILocation(line: 3833, column: 774, scope: !2855)
!2867 = !DILocation(line: 3833, column: 795, scope: !2855)
!2868 = !DILocation(line: 3833, column: 730, scope: !2855)
!2869 = !DILocation(line: 3833, column: 713, scope: !2855)
!2870 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite32", scope: !689, file: !689, line: 1119, type: !2871, isLocal: true, isDefinition: true, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!623, !2873, !623, !623}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!2874 = !DILocalVariable(name: "var", arg: 1, scope: !2870, file: !689, line: 1119, type: !2873)
!2875 = !DILocation(line: 1119, column: 42, scope: !2870)
!2876 = !DILocalVariable(name: "oldVal", arg: 2, scope: !2870, file: !689, line: 1120, type: !623)
!2877 = !DILocation(line: 1120, column: 34, scope: !2870)
!2878 = !DILocalVariable(name: "newVal", arg: 3, scope: !2870, file: !689, line: 1121, type: !623)
!2879 = !DILocation(line: 1121, column: 34, scope: !2870)
!2880 = !DILocalVariable(name: "val", scope: !2870, file: !689, line: 1148, type: !623)
!2881 = !DILocation(line: 1148, column: 11, scope: !2870)
!2882 = !DILocation(line: 1154, column: 15, scope: !2870)
!2883 = !DILocation(line: 1154, column: 20, scope: !2870)
!2884 = !DILocation(line: 1155, column: 14, scope: !2870)
!2885 = !DILocation(line: 1156, column: 14, scope: !2870)
!2886 = !DILocation(line: 1151, column: 4, scope: !2870)
!2887 = !{i32 630453}
!2888 = !DILocation(line: 1159, column: 11, scope: !2870)
!2889 = !DILocation(line: 1159, column: 4, scope: !2870)
!2890 = distinct !DISubprogram(name: "HostinfoGetLinuxMemoryInfoInPages", scope: !679, file: !679, line: 3341, type: !2891, isLocal: false, isDefinition: true, scopeLine: 3344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!947, !2893, !2893, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!2894 = !DILocalVariable(name: "minSize", arg: 1, scope: !2890, file: !679, line: 3341, type: !2893)
!2895 = !DILocation(line: 3341, column: 49, scope: !2890)
!2896 = !DILocalVariable(name: "maxSize", arg: 2, scope: !2890, file: !679, line: 3342, type: !2893)
!2897 = !DILocation(line: 3342, column: 49, scope: !2890)
!2898 = !DILocalVariable(name: "currentSize", arg: 3, scope: !2890, file: !679, line: 3343, type: !2893)
!2899 = !DILocation(line: 3343, column: 49, scope: !2890)
!2900 = !DILocalVariable(name: "total", scope: !2890, file: !679, line: 3345, type: !635)
!2901 = !DILocation(line: 3345, column: 11, scope: !2890)
!2902 = !DILocalVariable(name: "free", scope: !2890, file: !679, line: 3346, type: !635)
!2903 = !DILocation(line: 3346, column: 11, scope: !2890)
!2904 = !DILocalVariable(name: "cached", scope: !2890, file: !679, line: 3347, type: !626)
!2905 = !DILocation(line: 3347, column: 17, scope: !2890)
!2906 = !DILocation(line: 3365, column: 8, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2890, file: !679, line: 3365, column: 8)
!2908 = !DILocation(line: 3365, column: 50, scope: !2907)
!2909 = !DILocation(line: 3365, column: 8, scope: !2890)
!2910 = !DILocation(line: 3366, column: 7, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !679, line: 3365, column: 56)
!2912 = !DILocation(line: 3375, column: 8, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2890, file: !679, line: 3375, column: 8)
!2914 = !DILocation(line: 3375, column: 14, scope: !2913)
!2915 = !DILocation(line: 3375, column: 8, scope: !2890)
!2916 = !DILocation(line: 3376, column: 18, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !679, line: 3375, column: 43)
!2918 = !DILocation(line: 3376, column: 25, scope: !2917)
!2919 = !DILocation(line: 3376, column: 53, scope: !2917)
!2920 = !DILocation(line: 3376, column: 58, scope: !2917)
!2921 = !DILocation(line: 3376, column: 86, scope: !2917)
!2922 = !DILocation(line: 3376, column: 13, scope: !2917)
!2923 = !DILocation(line: 3377, column: 4, scope: !2917)
!2924 = !DILocation(line: 3378, column: 18, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2913, file: !679, line: 3377, column: 11)
!2926 = !DILocation(line: 3378, column: 25, scope: !2925)
!2927 = !DILocation(line: 3378, column: 54, scope: !2925)
!2928 = !DILocation(line: 3378, column: 59, scope: !2925)
!2929 = !DILocation(line: 3378, column: 88, scope: !2925)
!2930 = !DILocation(line: 3378, column: 13, scope: !2925)
!2931 = !DILocation(line: 3381, column: 5, scope: !2890)
!2932 = !DILocation(line: 3381, column: 13, scope: !2890)
!2933 = !DILocation(line: 3382, column: 15, scope: !2890)
!2934 = !DILocation(line: 3382, column: 21, scope: !2890)
!2935 = !DILocation(line: 3382, column: 5, scope: !2890)
!2936 = !DILocation(line: 3382, column: 13, scope: !2890)
!2937 = !DILocation(line: 3384, column: 4, scope: !2890)
!2938 = !DILocation(line: 3385, column: 8, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2890, file: !679, line: 3385, column: 8)
!2940 = !DILocation(line: 3385, column: 8, scope: !2890)
!2941 = !DILocation(line: 3386, column: 22, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !679, line: 3385, column: 21)
!2943 = !DILocation(line: 3386, column: 27, scope: !2942)
!2944 = !DILocation(line: 3386, column: 41, scope: !2942)
!2945 = !DILocation(line: 3386, column: 48, scope: !2942)
!2946 = !DILocation(line: 3386, column: 39, scope: !2942)
!2947 = !DILocation(line: 3386, column: 8, scope: !2942)
!2948 = !DILocation(line: 3386, column: 20, scope: !2942)
!2949 = !DILocation(line: 3387, column: 4, scope: !2942)
!2950 = !DILocation(line: 3389, column: 4, scope: !2890)
!2951 = !DILocation(line: 3390, column: 1, scope: !2890)
!2952 = distinct !DISubprogram(name: "HostinfoSysinfo", scope: !679, file: !679, line: 3261, type: !2953, isLocal: true, isDefinition: true, scopeLine: 3265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!947, !2955, !2955, !2955, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!2956 = !DILocalVariable(name: "totalRam", arg: 1, scope: !2952, file: !679, line: 3261, type: !2955)
!2957 = !DILocation(line: 3261, column: 25, scope: !2952)
!2958 = !DILocalVariable(name: "freeRam", arg: 2, scope: !2952, file: !679, line: 3262, type: !2955)
!2959 = !DILocation(line: 3262, column: 25, scope: !2952)
!2960 = !DILocalVariable(name: "totalSwap", arg: 3, scope: !2952, file: !679, line: 3263, type: !2955)
!2961 = !DILocation(line: 3263, column: 25, scope: !2952)
!2962 = !DILocalVariable(name: "freeSwap", arg: 4, scope: !2952, file: !679, line: 3264, type: !2955)
!2963 = !DILocation(line: 3264, column: 25, scope: !2952)
!2964 = !DILocalVariable(name: "si", scope: !2952, file: !679, line: 3285, type: !2965)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmware_sysinfo", scope: !2952, file: !679, line: 3268, size: 896, align: 64, elements: !2966)
!2966 = !{!2967, !2968, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !2965, file: !679, line: 3269, baseType: !621, size: 64, align: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !2965, file: !679, line: 3270, baseType: !2969, size: 192, align: 64, offset: 64)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 192, align: 64, elements: !655)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !2965, file: !679, line: 3271, baseType: !637, size: 64, align: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !2965, file: !679, line: 3272, baseType: !637, size: 64, align: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !2965, file: !679, line: 3273, baseType: !637, size: 64, align: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !2965, file: !679, line: 3274, baseType: !637, size: 64, align: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !2965, file: !679, line: 3275, baseType: !637, size: 64, align: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !2965, file: !679, line: 3276, baseType: !637, size: 64, align: 64, offset: 576)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !2965, file: !679, line: 3277, baseType: !638, size: 16, align: 16, offset: 640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2965, file: !679, line: 3278, baseType: !638, size: 16, align: 16, offset: 656)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !2965, file: !679, line: 3279, baseType: !637, size: 64, align: 64, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !2965, file: !679, line: 3280, baseType: !637, size: 64, align: 64, offset: 768)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !2965, file: !679, line: 3281, baseType: !626, size: 32, align: 32, offset: 832)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !2965, file: !679, line: 3283, baseType: !672, align: 8, offset: 864)
!2982 = !DILocation(line: 3285, column: 26, scope: !2952)
!2983 = !DILocation(line: 3287, column: 16, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2952, file: !679, line: 3287, column: 8)
!2985 = !DILocation(line: 3287, column: 8, scope: !2984)
!2986 = !DILocation(line: 3287, column: 39, scope: !2984)
!2987 = !DILocation(line: 3287, column: 8, scope: !2952)
!2988 = !DILocation(line: 3288, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !679, line: 3287, column: 44)
!2990 = !DILocation(line: 3291, column: 11, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2952, file: !679, line: 3291, column: 8)
!2992 = !DILocation(line: 3291, column: 20, scope: !2991)
!2993 = !DILocation(line: 3291, column: 8, scope: !2952)
!2994 = !DILocation(line: 3297, column: 10, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !679, line: 3291, column: 26)
!2996 = !DILocation(line: 3297, column: 19, scope: !2995)
!2997 = !DILocation(line: 3298, column: 4, scope: !2995)
!2998 = !DILocation(line: 3300, column: 8, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2952, file: !679, line: 3300, column: 8)
!3000 = !DILocation(line: 3300, column: 8, scope: !2952)
!3001 = !DILocation(line: 3301, column: 30, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !679, line: 3300, column: 18)
!3003 = !DILocation(line: 3301, column: 44, scope: !3002)
!3004 = !DILocation(line: 3301, column: 41, scope: !3002)
!3005 = !DILocation(line: 3301, column: 39, scope: !3002)
!3006 = !DILocation(line: 3301, column: 8, scope: !3002)
!3007 = !DILocation(line: 3301, column: 17, scope: !3002)
!3008 = !DILocation(line: 3302, column: 4, scope: !3002)
!3009 = !DILocation(line: 3303, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2952, file: !679, line: 3303, column: 8)
!3011 = !DILocation(line: 3303, column: 8, scope: !2952)
!3012 = !DILocation(line: 3304, column: 29, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !679, line: 3303, column: 17)
!3014 = !DILocation(line: 3304, column: 42, scope: !3013)
!3015 = !DILocation(line: 3304, column: 39, scope: !3013)
!3016 = !DILocation(line: 3304, column: 37, scope: !3013)
!3017 = !DILocation(line: 3304, column: 8, scope: !3013)
!3018 = !DILocation(line: 3304, column: 16, scope: !3013)
!3019 = !DILocation(line: 3305, column: 4, scope: !3013)
!3020 = !DILocation(line: 3306, column: 8, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2952, file: !679, line: 3306, column: 8)
!3022 = !DILocation(line: 3306, column: 8, scope: !2952)
!3023 = !DILocation(line: 3307, column: 31, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3021, file: !679, line: 3306, column: 19)
!3025 = !DILocation(line: 3307, column: 46, scope: !3024)
!3026 = !DILocation(line: 3307, column: 43, scope: !3024)
!3027 = !DILocation(line: 3307, column: 41, scope: !3024)
!3028 = !DILocation(line: 3307, column: 8, scope: !3024)
!3029 = !DILocation(line: 3307, column: 18, scope: !3024)
!3030 = !DILocation(line: 3308, column: 4, scope: !3024)
!3031 = !DILocation(line: 3309, column: 8, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2952, file: !679, line: 3309, column: 8)
!3033 = !DILocation(line: 3309, column: 8, scope: !2952)
!3034 = !DILocation(line: 3310, column: 30, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !679, line: 3309, column: 18)
!3036 = !DILocation(line: 3310, column: 44, scope: !3035)
!3037 = !DILocation(line: 3310, column: 41, scope: !3035)
!3038 = !DILocation(line: 3310, column: 39, scope: !3035)
!3039 = !DILocation(line: 3310, column: 8, scope: !3035)
!3040 = !DILocation(line: 3310, column: 17, scope: !3035)
!3041 = !DILocation(line: 3311, column: 4, scope: !3035)
!3042 = !DILocation(line: 3313, column: 4, scope: !2952)
!3043 = !DILocation(line: 3317, column: 1, scope: !2952)
!3044 = distinct !DISubprogram(name: "HostinfoGetMemInfo", scope: !679, file: !679, line: 3211, type: !3045, isLocal: true, isDefinition: true, scopeLine: 3213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!947, !687, !2893}
!3047 = !DILocalVariable(name: "name", arg: 1, scope: !3044, file: !679, line: 3211, type: !687)
!3048 = !DILocation(line: 3211, column: 26, scope: !3044)
!3049 = !DILocalVariable(name: "value", arg: 2, scope: !3044, file: !679, line: 3212, type: !2893)
!3050 = !DILocation(line: 3212, column: 34, scope: !3044)
!3051 = !DILocalVariable(name: "len", scope: !3044, file: !679, line: 3214, type: !1284)
!3052 = !DILocation(line: 3214, column: 11, scope: !3044)
!3053 = !DILocalVariable(name: "buffer", scope: !3044, file: !679, line: 3215, type: !3054)
!3054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 32768, align: 8, elements: !3055)
!3055 = !{!3056}
!3056 = !DISubrange(count: 4096)
!3057 = !DILocation(line: 3215, column: 9, scope: !3044)
!3058 = !DILocalVariable(name: "fd", scope: !3044, file: !679, line: 3217, type: !633)
!3059 = !DILocation(line: 3217, column: 8, scope: !3044)
!3060 = !DILocation(line: 3217, column: 13, scope: !3044)
!3061 = !DILocation(line: 3219, column: 8, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3044, file: !679, line: 3219, column: 8)
!3063 = !DILocation(line: 3219, column: 11, scope: !3062)
!3064 = !DILocation(line: 3219, column: 8, scope: !3044)
!3065 = !DILocation(line: 3220, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !679, line: 3219, column: 18)
!3067 = !DILocation(line: 3222, column: 7, scope: !3066)
!3068 = !DILocation(line: 3225, column: 15, scope: !3044)
!3069 = !DILocation(line: 3225, column: 19, scope: !3044)
!3070 = !DILocation(line: 3225, column: 10, scope: !3044)
!3071 = !DILocation(line: 3225, column: 8, scope: !3044)
!3072 = !DILocation(line: 3226, column: 10, scope: !3044)
!3073 = !DILocation(line: 3226, column: 4, scope: !3044)
!3074 = !DILocation(line: 3228, column: 8, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3044, file: !679, line: 3228, column: 8)
!3076 = !DILocation(line: 3228, column: 12, scope: !3075)
!3077 = !DILocation(line: 3228, column: 8, scope: !3044)
!3078 = !DILocation(line: 3229, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !679, line: 3228, column: 19)
!3080 = !DILocation(line: 3232, column: 11, scope: !3044)
!3081 = !DILocation(line: 3232, column: 4, scope: !3044)
!3082 = !DILocation(line: 3232, column: 16, scope: !3044)
!3083 = !DILocation(line: 3234, column: 29, scope: !3044)
!3084 = !DILocation(line: 3234, column: 37, scope: !3044)
!3085 = !DILocation(line: 3234, column: 43, scope: !3044)
!3086 = !DILocation(line: 3234, column: 11, scope: !3044)
!3087 = !DILocation(line: 3234, column: 4, scope: !3044)
!3088 = !DILocation(line: 3235, column: 1, scope: !3044)
!3089 = distinct !DISubprogram(name: "Hostinfo_GetSwapInfoInPages", scope: !679, file: !679, line: 3412, type: !3090, isLocal: false, isDefinition: true, scopeLine: 3414, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!947, !2893, !2893}
!3092 = !DILocalVariable(name: "totalSwap", arg: 1, scope: !3089, file: !679, line: 3412, type: !2893)
!3093 = !DILocation(line: 3412, column: 43, scope: !3089)
!3094 = !DILocalVariable(name: "freeSwap", arg: 2, scope: !3089, file: !679, line: 3413, type: !2893)
!3095 = !DILocation(line: 3413, column: 43, scope: !3089)
!3096 = !DILocalVariable(name: "total", scope: !3089, file: !679, line: 3415, type: !635)
!3097 = !DILocation(line: 3415, column: 11, scope: !3089)
!3098 = !DILocalVariable(name: "free", scope: !3089, file: !679, line: 3416, type: !635)
!3099 = !DILocation(line: 3416, column: 11, scope: !3089)
!3100 = !DILocation(line: 3418, column: 8, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3089, file: !679, line: 3418, column: 8)
!3102 = !DILocation(line: 3418, column: 50, scope: !3101)
!3103 = !DILocation(line: 3418, column: 8, scope: !3089)
!3104 = !DILocation(line: 3419, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3101, file: !679, line: 3418, column: 56)
!3106 = !DILocation(line: 3422, column: 8, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3089, file: !679, line: 3422, column: 8)
!3108 = !DILocation(line: 3422, column: 18, scope: !3107)
!3109 = !DILocation(line: 3422, column: 8, scope: !3089)
!3110 = !DILocation(line: 3423, column: 20, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !679, line: 3422, column: 26)
!3112 = !DILocation(line: 3423, column: 26, scope: !3111)
!3113 = !DILocation(line: 3423, column: 8, scope: !3111)
!3114 = !DILocation(line: 3423, column: 18, scope: !3111)
!3115 = !DILocation(line: 3424, column: 4, scope: !3111)
!3116 = !DILocation(line: 3426, column: 8, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3089, file: !679, line: 3426, column: 8)
!3118 = !DILocation(line: 3426, column: 17, scope: !3117)
!3119 = !DILocation(line: 3426, column: 8, scope: !3089)
!3120 = !DILocation(line: 3427, column: 19, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !679, line: 3426, column: 25)
!3122 = !DILocation(line: 3427, column: 24, scope: !3121)
!3123 = !DILocation(line: 3427, column: 8, scope: !3121)
!3124 = !DILocation(line: 3427, column: 17, scope: !3121)
!3125 = !DILocation(line: 3428, column: 4, scope: !3121)
!3126 = !DILocation(line: 3430, column: 4, scope: !3089)
!3127 = !DILocation(line: 3431, column: 1, scope: !3089)
!3128 = distinct !DISubprogram(name: "Hostinfo_GetMemoryInfoInPages", scope: !679, file: !679, line: 3454, type: !2891, isLocal: false, isDefinition: true, scopeLine: 3457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3129 = !DILocalVariable(name: "minSize", arg: 1, scope: !3128, file: !679, line: 3454, type: !2893)
!3130 = !DILocation(line: 3454, column: 45, scope: !3128)
!3131 = !DILocalVariable(name: "maxSize", arg: 2, scope: !3128, file: !679, line: 3455, type: !2893)
!3132 = !DILocation(line: 3455, column: 45, scope: !3128)
!3133 = !DILocalVariable(name: "currentSize", arg: 3, scope: !3128, file: !679, line: 3456, type: !2893)
!3134 = !DILocation(line: 3456, column: 45, scope: !3128)
!3135 = !DILocation(line: 3521, column: 45, scope: !3128)
!3136 = !DILocation(line: 3521, column: 54, scope: !3128)
!3137 = !DILocation(line: 3521, column: 63, scope: !3128)
!3138 = !DILocation(line: 3521, column: 11, scope: !3128)
!3139 = !DILocation(line: 3521, column: 4, scope: !3128)
!3140 = distinct !DISubprogram(name: "Hostinfo_GetModulePath", scope: !679, file: !679, line: 3551, type: !2645, isLocal: false, isDefinition: true, scopeLine: 3552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3141 = !DILocalVariable(name: "priv", arg: 1, scope: !3140, file: !679, line: 3551, type: !623)
!3142 = !DILocation(line: 3551, column: 31, scope: !3140)
!3143 = !DILocalVariable(name: "path", scope: !3140, file: !679, line: 3553, type: !687)
!3144 = !DILocation(line: 3553, column: 10, scope: !3140)
!3145 = !DILocalVariable(name: "uid", scope: !3140, file: !679, line: 3558, type: !641)
!3146 = !DILocation(line: 3558, column: 10, scope: !3140)
!3147 = !DILocation(line: 3561, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !679, line: 3561, column: 8)
!3149 = !DILocation(line: 3561, column: 14, scope: !3148)
!3150 = !DILocation(line: 3561, column: 20, scope: !3148)
!3151 = !DILocation(line: 3561, column: 24, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3148, file: !679, discriminator: 1)
!3153 = !DILocation(line: 3561, column: 29, scope: !3152)
!3154 = !DILocation(line: 3561, column: 8, scope: !3152)
!3155 = !DILocation(line: 3562, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3148, file: !679, line: 3561, column: 36)
!3157 = !DILocation(line: 3564, column: 7, scope: !3156)
!3158 = !DILocation(line: 3587, column: 8, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3140, file: !679, line: 3587, column: 8)
!3160 = !DILocation(line: 3587, column: 13, scope: !3159)
!3161 = !DILocation(line: 3587, column: 8, scope: !3140)
!3162 = !DILocation(line: 3588, column: 13, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !679, line: 3587, column: 19)
!3164 = !DILocation(line: 3588, column: 11, scope: !3163)
!3165 = !DILocation(line: 3589, column: 4, scope: !3163)
!3166 = !DILocation(line: 3591, column: 11, scope: !3140)
!3167 = !DILocation(line: 3591, column: 9, scope: !3140)
!3168 = !DILocation(line: 3593, column: 8, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3140, file: !679, line: 3593, column: 8)
!3170 = !DILocation(line: 3593, column: 13, scope: !3169)
!3171 = !DILocation(line: 3593, column: 8, scope: !3140)
!3172 = !DILocation(line: 3594, column: 23, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !679, line: 3593, column: 19)
!3174 = !DILocation(line: 3594, column: 7, scope: !3173)
!3175 = !DILocation(line: 3595, column: 4, scope: !3173)
!3176 = !DILocation(line: 3597, column: 8, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3140, file: !679, line: 3597, column: 8)
!3178 = !DILocation(line: 3597, column: 13, scope: !3177)
!3179 = !DILocation(line: 3597, column: 8, scope: !3140)
!3180 = !DILocation(line: 3599, column: 33, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3177, file: !679, line: 3597, column: 21)
!3182 = !DILocation(line: 3599, column: 32, scope: !3181)
!3183 = !DILocation(line: 3599, column: 15, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3181, file: !679, discriminator: 1)
!3185 = !DILocation(line: 3598, column: 7, scope: !3181)
!3186 = !DILocation(line: 3600, column: 4, scope: !3181)
!3187 = !DILocation(line: 3603, column: 11, scope: !3140)
!3188 = !DILocation(line: 3603, column: 4, scope: !3140)
!3189 = !DILocation(line: 3604, column: 1, scope: !3140)
!3190 = distinct !DISubprogram(name: "Hostinfo_GetLibraryPath", scope: !679, file: !679, line: 3628, type: !3191, isLocal: false, isDefinition: true, scopeLine: 3629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!687, !622}
!3193 = !DILocalVariable(name: "addr", arg: 1, scope: !3190, file: !679, line: 3628, type: !622)
!3194 = !DILocation(line: 3628, column: 31, scope: !3190)
!3195 = !DILocalVariable(name: "info", scope: !3190, file: !679, line: 3631, type: !3196)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "Dl_info", file: !3197, line: 94, baseType: !3198)
!3197 = !DIFile(filename: "/usr/include/dlfcn.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3197, line: 88, size: 256, align: 64, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3203}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dli_fname", scope: !3198, file: !3197, line: 90, baseType: !735, size: 64, align: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dli_fbase", scope: !3198, file: !3197, line: 91, baseType: !622, size: 64, align: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dli_sname", scope: !3198, file: !3197, line: 92, baseType: !735, size: 64, align: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dli_saddr", scope: !3198, file: !3197, line: 93, baseType: !622, size: 64, align: 64, offset: 192)
!3204 = !DILocation(line: 3631, column: 12, scope: !3190)
!3205 = !DILocation(line: 3633, column: 15, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3190, file: !679, line: 3633, column: 8)
!3207 = !DILocation(line: 3633, column: 8, scope: !3206)
!3208 = !DILocation(line: 3633, column: 8, scope: !3190)
!3209 = !DILocation(line: 3634, column: 33, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !679, line: 3633, column: 29)
!3211 = !DILocation(line: 3634, column: 14, scope: !3210)
!3212 = !DILocation(line: 3634, column: 7, scope: !3210)
!3213 = !DILocation(line: 3636, column: 4, scope: !3190)
!3214 = !DILocation(line: 3640, column: 1, scope: !3190)
!3215 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !3216, file: !3216, line: 111, type: !3217, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3216 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!687, !1368, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !264, line: 445, baseType: !263)
!3220 = !DILocalVariable(name: "buffer", arg: 1, scope: !3215, file: !3216, line: 111, type: !1368)
!3221 = !DILocation(line: 111, column: 27, scope: !3215)
!3222 = !DILocalVariable(name: "encoding", arg: 2, scope: !3215, file: !3216, line: 112, type: !3219)
!3223 = !DILocation(line: 112, column: 30, scope: !3215)
!3224 = !DILocation(line: 114, column: 35, scope: !3215)
!3225 = !DILocation(line: 114, column: 47, scope: !3215)
!3226 = !DILocation(line: 114, column: 11, scope: !3215)
!3227 = !DILocation(line: 114, column: 4, scope: !3215)
!3228 = distinct !DISubprogram(name: "Hostinfo_QueryProcessExistence", scope: !679, file: !679, line: 3664, type: !3229, isLocal: false, isDefinition: true, scopeLine: 3665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!3231, !633}
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "HostinfoProcessQuery", file: !256, line: 46, baseType: !596)
!3232 = !DILocalVariable(name: "pid", arg: 1, scope: !3228, file: !679, line: 3664, type: !633)
!3233 = !DILocation(line: 3664, column: 36, scope: !3228)
!3234 = !DILocalVariable(name: "ret", scope: !3228, file: !679, line: 3666, type: !3231)
!3235 = !DILocation(line: 3666, column: 25, scope: !3228)
!3236 = !DILocalVariable(name: "err", scope: !3228, file: !679, line: 3667, type: !633)
!3237 = !DILocation(line: 3667, column: 8, scope: !3228)
!3238 = !DILocation(line: 3667, column: 20, scope: !3228)
!3239 = !DILocation(line: 3667, column: 15, scope: !3228)
!3240 = !DILocation(line: 3667, column: 28, scope: !3228)
!3241 = !DILocation(line: 3667, column: 14, scope: !3228)
!3242 = !DILocation(line: 3667, column: 38, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !3228, file: !679, discriminator: 1)
!3244 = !DILocation(line: 3667, column: 37, scope: !3243)
!3245 = !DILocation(line: 3667, column: 14, scope: !3243)
!3246 = !DILocation(line: 3667, column: 14, scope: !3247)
!3247 = !DILexicalBlockFile(scope: !3228, file: !679, discriminator: 2)
!3248 = !DILocation(line: 3667, column: 14, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3228, file: !679, discriminator: 3)
!3250 = !DILocation(line: 3667, column: 8, scope: !3249)
!3251 = !DILocation(line: 3669, column: 12, scope: !3228)
!3252 = !DILocation(line: 3669, column: 4, scope: !3228)
!3253 = !DILocation(line: 3672, column: 11, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3228, file: !679, line: 3669, column: 17)
!3255 = !DILocation(line: 3673, column: 7, scope: !3254)
!3256 = !DILocation(line: 3675, column: 11, scope: !3254)
!3257 = !DILocation(line: 3676, column: 7, scope: !3254)
!3258 = !DILocation(line: 3678, column: 11, scope: !3254)
!3259 = !DILocation(line: 3679, column: 7, scope: !3254)
!3260 = !DILocation(line: 3682, column: 11, scope: !3228)
!3261 = !DILocation(line: 3682, column: 4, scope: !3228)
!3262 = distinct !DISubprogram(name: "Atomic_Read64", scope: !689, file: !689, line: 2143, type: !3263, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!635, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64, align: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!3267 = !DILocalVariable(name: "var", arg: 1, scope: !3262, file: !689, line: 2143, type: !3265)
!3268 = !DILocation(line: 2143, column: 36, scope: !3262)
!3269 = !DILocalVariable(name: "value", scope: !3262, file: !689, line: 2146, type: !635)
!3270 = !DILocation(line: 2146, column: 11, scope: !3262)
!3271 = !DILocation(line: 2160, column: 14, scope: !3262)
!3272 = !DILocation(line: 2160, column: 19, scope: !3262)
!3273 = !DILocation(line: 2157, column: 4, scope: !3262)
!3274 = !{i32 638708}
!3275 = !DILocation(line: 2213, column: 11, scope: !3262)
!3276 = !DILocation(line: 2213, column: 4, scope: !3262)
!3277 = distinct !DISubprogram(name: "HostinfoLsb", scope: !679, file: !679, line: 1159, type: !3278, isLocal: true, isDefinition: true, scopeLine: 1161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!947, !687, !1284}
!3280 = !DILocalVariable(name: "distro", arg: 1, scope: !3277, file: !679, line: 1159, type: !687)
!3281 = !DILocation(line: 1159, column: 19, scope: !3277)
!3282 = !DILocalVariable(name: "distroSize", arg: 2, scope: !3277, file: !679, line: 1160, type: !1284)
!3283 = !DILocation(line: 1160, column: 20, scope: !3277)
!3284 = !DILocalVariable(name: "lsbOutput", scope: !3277, file: !679, line: 1162, type: !687)
!3285 = !DILocation(line: 1162, column: 10, scope: !3277)
!3286 = !DILocalVariable(name: "success", scope: !3277, file: !679, line: 1163, type: !947)
!3287 = !DILocation(line: 1163, column: 9, scope: !3277)
!3288 = !DILocation(line: 1169, column: 16, scope: !3277)
!3289 = !DILocation(line: 1169, column: 14, scope: !3277)
!3290 = !DILocation(line: 1171, column: 8, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3277, file: !679, line: 1171, column: 8)
!3292 = !DILocation(line: 1171, column: 18, scope: !3291)
!3293 = !DILocation(line: 1171, column: 8, scope: !3277)
!3294 = !DILocalVariable(name: "i", scope: !3295, file: !679, line: 1172, type: !633)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !679, line: 1171, column: 26)
!3296 = !DILocation(line: 1172, column: 11, scope: !3295)
!3297 = !DILocation(line: 1178, column: 14, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !679, line: 1178, column: 7)
!3299 = !DILocation(line: 1178, column: 12, scope: !3298)
!3300 = !DILocation(line: 1178, column: 31, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3302, file: !679, discriminator: 1)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !679, line: 1178, column: 7)
!3303 = !DILocation(line: 1178, column: 19, scope: !3301)
!3304 = !DILocation(line: 1178, column: 34, scope: !3301)
!3305 = !DILocation(line: 1178, column: 43, scope: !3301)
!3306 = !DILocation(line: 1178, column: 7, scope: !3301)
!3307 = !DILocation(line: 1179, column: 52, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !679, line: 1179, column: 14)
!3309 = distinct !DILexicalBlock(scope: !3302, file: !679, line: 1178, column: 56)
!3310 = !DILocation(line: 1179, column: 40, scope: !3308)
!3311 = !DILocation(line: 1179, column: 55, scope: !3308)
!3312 = !DILocation(line: 1180, column: 52, scope: !3308)
!3313 = !DILocation(line: 1180, column: 64, scope: !3308)
!3314 = !DILocation(line: 1179, column: 14, scope: !3308)
!3315 = !DILocation(line: 1179, column: 14, scope: !3309)
!3316 = !DILocation(line: 1181, column: 21, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3308, file: !679, line: 1180, column: 73)
!3318 = !DILocation(line: 1182, column: 13, scope: !3317)
!3319 = !DILocation(line: 1184, column: 7, scope: !3309)
!3320 = !DILocation(line: 1178, column: 52, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3302, file: !679, discriminator: 2)
!3322 = !DILocation(line: 1178, column: 7, scope: !3321)
!3323 = distinct !{!3323, !3324}
!3324 = !DILocation(line: 1178, column: 7, scope: !3295)
!3325 = !DILocation(line: 1191, column: 23, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3295, file: !679, line: 1191, column: 11)
!3327 = !DILocation(line: 1191, column: 11, scope: !3326)
!3328 = !DILocation(line: 1191, column: 26, scope: !3326)
!3329 = !DILocation(line: 1191, column: 35, scope: !3326)
!3330 = !DILocation(line: 1191, column: 11, scope: !3295)
!3331 = !DILocation(line: 1192, column: 10, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !679, line: 1191, column: 43)
!3333 = !DILocation(line: 1193, column: 7, scope: !3332)
!3334 = !DILocation(line: 1194, column: 4, scope: !3295)
!3335 = !DILocalVariable(name: "lsbStart", scope: !3336, file: !679, line: 1195, type: !687)
!3336 = distinct !DILexicalBlock(scope: !3291, file: !679, line: 1194, column: 11)
!3337 = !DILocation(line: 1195, column: 13, scope: !3336)
!3338 = !DILocation(line: 1195, column: 24, scope: !3336)
!3339 = !DILocalVariable(name: "quoteEnd", scope: !3336, file: !679, line: 1196, type: !687)
!3340 = !DILocation(line: 1196, column: 13, scope: !3336)
!3341 = !DILocation(line: 1198, column: 11, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3336, file: !679, line: 1198, column: 11)
!3343 = !DILocation(line: 1198, column: 23, scope: !3342)
!3344 = !DILocation(line: 1198, column: 11, scope: !3336)
!3345 = !DILocation(line: 1199, column: 18, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3342, file: !679, line: 1198, column: 31)
!3347 = !DILocation(line: 1200, column: 28, scope: !3346)
!3348 = !DILocation(line: 1200, column: 21, scope: !3346)
!3349 = !DILocation(line: 1200, column: 19, scope: !3346)
!3350 = !DILocation(line: 1201, column: 14, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3346, file: !679, line: 1201, column: 14)
!3352 = !DILocation(line: 1201, column: 14, scope: !3346)
!3353 = !DILocation(line: 1202, column: 14, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !679, line: 1201, column: 24)
!3355 = !DILocation(line: 1202, column: 23, scope: !3354)
!3356 = !DILocation(line: 1203, column: 10, scope: !3354)
!3357 = !DILocation(line: 1204, column: 7, scope: !3346)
!3358 = !DILocation(line: 1205, column: 18, scope: !3336)
!3359 = !DILocation(line: 1205, column: 26, scope: !3336)
!3360 = !DILocation(line: 1205, column: 36, scope: !3336)
!3361 = !DILocation(line: 1205, column: 7, scope: !3336)
!3362 = !DILocation(line: 1206, column: 12, scope: !3336)
!3363 = !DILocation(line: 1206, column: 7, scope: !3336)
!3364 = !DILocation(line: 1207, column: 15, scope: !3336)
!3365 = !DILocation(line: 1210, column: 11, scope: !3277)
!3366 = !DILocation(line: 1210, column: 4, scope: !3277)
!3367 = distinct !DISubprogram(name: "HostinfoDefaultLinux", scope: !679, file: !679, line: 1233, type: !3368, isLocal: true, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{null, !687, !1284, !687, !1284}
!3370 = !DILocalVariable(name: "distro", arg: 1, scope: !3367, file: !679, line: 1233, type: !687)
!3371 = !DILocation(line: 1233, column: 28, scope: !3367)
!3372 = !DILocalVariable(name: "distroSize", arg: 2, scope: !3367, file: !679, line: 1234, type: !1284)
!3373 = !DILocation(line: 1234, column: 29, scope: !3367)
!3374 = !DILocalVariable(name: "distroShort", arg: 3, scope: !3367, file: !679, line: 1235, type: !687)
!3375 = !DILocation(line: 1235, column: 28, scope: !3367)
!3376 = !DILocalVariable(name: "distroShortSize", arg: 4, scope: !3367, file: !679, line: 1236, type: !1284)
!3377 = !DILocation(line: 1236, column: 29, scope: !3367)
!3378 = !DILocalVariable(name: "generic", scope: !3367, file: !679, line: 1238, type: !1010)
!3379 = !DILocation(line: 1238, column: 9, scope: !3367)
!3380 = !DILocalVariable(name: "distroOut", scope: !3367, file: !679, line: 1239, type: !687)
!3381 = !DILocation(line: 1239, column: 10, scope: !3367)
!3382 = !DILocalVariable(name: "distroShortOut", scope: !3367, file: !679, line: 1240, type: !687)
!3383 = !DILocation(line: 1240, column: 10, scope: !3367)
!3384 = !DILocalVariable(name: "majorVersion", scope: !3367, file: !679, line: 1241, type: !633)
!3385 = !DILocation(line: 1241, column: 8, scope: !3367)
!3386 = !DILocation(line: 1241, column: 23, scope: !3367)
!3387 = !DILocalVariable(name: "minorVersion", scope: !3367, file: !679, line: 1242, type: !633)
!3388 = !DILocation(line: 1242, column: 8, scope: !3367)
!3389 = !DILocation(line: 1242, column: 23, scope: !3367)
!3390 = !DILocation(line: 1244, column: 12, scope: !3367)
!3391 = !DILocation(line: 1244, column: 4, scope: !3367)
!3392 = !DILocation(line: 1246, column: 17, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3367, file: !679, line: 1244, column: 26)
!3394 = !DILocation(line: 1247, column: 22, scope: !3393)
!3395 = !DILocation(line: 1248, column: 7, scope: !3393)
!3396 = !DILocation(line: 1251, column: 11, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !679, line: 1251, column: 11)
!3398 = !DILocation(line: 1251, column: 24, scope: !3397)
!3399 = !DILocation(line: 1251, column: 11, scope: !3393)
!3400 = !DILocation(line: 1252, column: 20, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !679, line: 1251, column: 29)
!3402 = !DILocation(line: 1253, column: 25, scope: !3401)
!3403 = !DILocation(line: 1254, column: 7, scope: !3401)
!3404 = !DILocation(line: 1254, column: 18, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3406, file: !679, discriminator: 1)
!3406 = distinct !DILexicalBlock(scope: !3397, file: !679, line: 1254, column: 18)
!3407 = !DILocation(line: 1254, column: 31, scope: !3405)
!3408 = !DILocation(line: 1255, column: 20, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3406, file: !679, line: 1254, column: 36)
!3410 = !DILocation(line: 1256, column: 25, scope: !3409)
!3411 = !DILocation(line: 1257, column: 7, scope: !3409)
!3412 = !DILocation(line: 1258, column: 20, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3406, file: !679, line: 1257, column: 14)
!3414 = !DILocation(line: 1259, column: 25, scope: !3413)
!3415 = !DILocation(line: 1262, column: 7, scope: !3393)
!3416 = !DILocation(line: 1265, column: 17, scope: !3393)
!3417 = !DILocation(line: 1266, column: 22, scope: !3393)
!3418 = !DILocation(line: 1267, column: 7, scope: !3393)
!3419 = !DILocation(line: 1270, column: 17, scope: !3393)
!3420 = !DILocation(line: 1271, column: 22, scope: !3393)
!3421 = !DILocation(line: 1272, column: 7, scope: !3393)
!3422 = !DILocation(line: 1281, column: 19, scope: !3393)
!3423 = !DILocation(line: 1282, column: 19, scope: !3393)
!3424 = !DILocation(line: 1282, column: 33, scope: !3393)
!3425 = !DILocation(line: 1281, column: 7, scope: !3393)
!3426 = !DILocation(line: 1283, column: 20, scope: !3393)
!3427 = !DILocation(line: 1283, column: 17, scope: !3393)
!3428 = !DILocation(line: 1284, column: 22, scope: !3393)
!3429 = !DILocation(line: 1285, column: 4, scope: !3393)
!3430 = !DILocation(line: 1287, column: 8, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3367, file: !679, line: 1287, column: 8)
!3432 = !DILocation(line: 1287, column: 15, scope: !3431)
!3433 = !DILocation(line: 1287, column: 8, scope: !3367)
!3434 = !DILocation(line: 1289, column: 18, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !679, line: 1287, column: 23)
!3436 = !DILocation(line: 1289, column: 26, scope: !3435)
!3437 = !DILocation(line: 1289, column: 37, scope: !3435)
!3438 = !DILocation(line: 1289, column: 7, scope: !3435)
!3439 = !DILocation(line: 1290, column: 4, scope: !3435)
!3440 = !DILocation(line: 1292, column: 8, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3367, file: !679, line: 1292, column: 8)
!3442 = !DILocation(line: 1292, column: 20, scope: !3441)
!3443 = !DILocation(line: 1292, column: 8, scope: !3367)
!3444 = !DILocation(line: 1294, column: 18, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !679, line: 1292, column: 28)
!3446 = !DILocation(line: 1294, column: 31, scope: !3445)
!3447 = !DILocation(line: 1294, column: 47, scope: !3445)
!3448 = !DILocation(line: 1294, column: 7, scope: !3445)
!3449 = !DILocation(line: 1295, column: 4, scope: !3445)
!3450 = !DILocation(line: 1296, column: 1, scope: !3367)
!3451 = distinct !DISubprogram(name: "HostinfoGetOSShortName", scope: !679, file: !679, line: 686, type: !3452, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !687, !687, !633}
!3454 = !DILocalVariable(name: "distro", arg: 1, scope: !3451, file: !679, line: 686, type: !687)
!3455 = !DILocation(line: 686, column: 30, scope: !3451)
!3456 = !DILocalVariable(name: "distroShort", arg: 2, scope: !3451, file: !679, line: 687, type: !687)
!3457 = !DILocation(line: 687, column: 30, scope: !3451)
!3458 = !DILocalVariable(name: "distroShortSize", arg: 3, scope: !3451, file: !679, line: 688, type: !633)
!3459 = !DILocation(line: 688, column: 28, scope: !3451)
!3460 = !DILocalVariable(name: "distroLower", scope: !3451, file: !679, line: 691, type: !687)
!3461 = !DILocation(line: 691, column: 10, scope: !3451)
!3462 = !DILocation(line: 691, column: 41, scope: !3451)
!3463 = !DILocation(line: 691, column: 24, scope: !3451)
!3464 = !DILocation(line: 693, column: 30, scope: !3451)
!3465 = !DILocation(line: 693, column: 18, scope: !3451)
!3466 = !DILocation(line: 693, column: 16, scope: !3451)
!3467 = !DILocation(line: 695, column: 15, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3451, file: !679, line: 695, column: 8)
!3469 = !DILocation(line: 695, column: 8, scope: !3468)
!3470 = !DILocation(line: 695, column: 8, scope: !3451)
!3471 = !DILocation(line: 696, column: 18, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !679, line: 696, column: 11)
!3473 = distinct !DILexicalBlock(scope: !3468, file: !679, line: 695, column: 40)
!3474 = !DILocation(line: 696, column: 11, scope: !3472)
!3475 = !DILocation(line: 696, column: 11, scope: !3473)
!3476 = !DILocalVariable(name: "release", scope: !3477, file: !679, line: 704, type: !633)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !679, line: 696, column: 46)
!3478 = !DILocation(line: 704, column: 14, scope: !3477)
!3479 = !DILocalVariable(name: "releaseStart", scope: !3477, file: !679, line: 705, type: !687)
!3480 = !DILocation(line: 705, column: 16, scope: !3477)
!3481 = !DILocation(line: 705, column: 38, scope: !3477)
!3482 = !DILocation(line: 705, column: 31, scope: !3477)
!3483 = !DILocation(line: 707, column: 14, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3477, file: !679, line: 707, column: 14)
!3485 = !DILocation(line: 707, column: 27, scope: !3484)
!3486 = !DILocation(line: 707, column: 14, scope: !3477)
!3487 = !DILocation(line: 708, column: 20, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !679, line: 707, column: 35)
!3489 = !DILocation(line: 708, column: 13, scope: !3488)
!3490 = !DILocation(line: 709, column: 17, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3488, file: !679, line: 709, column: 17)
!3492 = !DILocation(line: 709, column: 25, scope: !3491)
!3493 = !DILocation(line: 709, column: 17, scope: !3488)
!3494 = !DILocation(line: 710, column: 25, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !679, line: 709, column: 30)
!3496 = !DILocation(line: 710, column: 38, scope: !3495)
!3497 = !DILocation(line: 711, column: 25, scope: !3495)
!3498 = !DILocation(line: 710, column: 16, scope: !3495)
!3499 = !DILocation(line: 712, column: 13, scope: !3495)
!3500 = !DILocation(line: 713, column: 10, scope: !3488)
!3501 = !DILocation(line: 715, column: 14, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3477, file: !679, line: 715, column: 14)
!3503 = !DILocation(line: 715, column: 22, scope: !3502)
!3504 = !DILocation(line: 715, column: 14, scope: !3477)
!3505 = !DILocation(line: 716, column: 24, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3502, file: !679, line: 715, column: 28)
!3507 = !DILocation(line: 716, column: 45, scope: !3506)
!3508 = !DILocation(line: 716, column: 13, scope: !3506)
!3509 = !DILocation(line: 717, column: 10, scope: !3506)
!3510 = !DILocation(line: 719, column: 7, scope: !3477)
!3511 = !DILocation(line: 720, column: 21, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3472, file: !679, line: 719, column: 14)
!3513 = !DILocation(line: 720, column: 44, scope: !3512)
!3514 = !DILocation(line: 720, column: 10, scope: !3512)
!3515 = !DILocation(line: 722, column: 4, scope: !3473)
!3516 = !DILocation(line: 722, column: 22, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !3518, file: !679, discriminator: 1)
!3518 = distinct !DILexicalBlock(scope: !3468, file: !679, line: 722, column: 15)
!3519 = !DILocation(line: 722, column: 15, scope: !3517)
!3520 = !DILocation(line: 723, column: 18, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !679, line: 722, column: 48)
!3522 = !DILocation(line: 723, column: 43, scope: !3521)
!3523 = !DILocation(line: 723, column: 7, scope: !3521)
!3524 = !DILocation(line: 724, column: 4, scope: !3521)
!3525 = !DILocation(line: 724, column: 22, scope: !3526)
!3526 = !DILexicalBlockFile(scope: !3527, file: !679, discriminator: 1)
!3527 = distinct !DILexicalBlock(scope: !3518, file: !679, line: 724, column: 15)
!3528 = !DILocation(line: 724, column: 15, scope: !3526)
!3529 = !DILocation(line: 725, column: 18, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !679, line: 725, column: 11)
!3531 = distinct !DILexicalBlock(scope: !3527, file: !679, line: 724, column: 44)
!3532 = !DILocation(line: 725, column: 11, scope: !3530)
!3533 = !DILocation(line: 725, column: 11, scope: !3531)
!3534 = !DILocation(line: 726, column: 21, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !679, line: 726, column: 14)
!3536 = distinct !DILexicalBlock(scope: !3530, file: !679, line: 725, column: 46)
!3537 = !DILocation(line: 726, column: 14, scope: !3535)
!3538 = !DILocation(line: 726, column: 47, scope: !3535)
!3539 = !DILocation(line: 727, column: 21, scope: !3535)
!3540 = !DILocation(line: 727, column: 14, scope: !3535)
!3541 = !DILocation(line: 726, column: 14, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3536, file: !679, discriminator: 1)
!3543 = !DILocation(line: 728, column: 24, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3535, file: !679, line: 727, column: 49)
!3545 = !DILocation(line: 728, column: 47, scope: !3544)
!3546 = !DILocation(line: 728, column: 13, scope: !3544)
!3547 = !DILocation(line: 729, column: 10, scope: !3544)
!3548 = !DILocation(line: 729, column: 28, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3550, file: !679, discriminator: 1)
!3550 = distinct !DILexicalBlock(scope: !3535, file: !679, line: 729, column: 21)
!3551 = !DILocation(line: 729, column: 21, scope: !3549)
!3552 = !DILocation(line: 729, column: 54, scope: !3549)
!3553 = !DILocation(line: 730, column: 28, scope: !3550)
!3554 = !DILocation(line: 730, column: 21, scope: !3550)
!3555 = !DILocation(line: 730, column: 75, scope: !3550)
!3556 = !DILocation(line: 731, column: 28, scope: !3550)
!3557 = !DILocation(line: 731, column: 21, scope: !3550)
!3558 = !DILocation(line: 729, column: 21, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3535, file: !679, discriminator: 2)
!3560 = !DILocation(line: 732, column: 24, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3550, file: !679, line: 731, column: 56)
!3562 = !DILocation(line: 732, column: 47, scope: !3561)
!3563 = !DILocation(line: 732, column: 13, scope: !3561)
!3564 = !DILocation(line: 733, column: 10, scope: !3561)
!3565 = !DILocation(line: 733, column: 28, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3567, file: !679, discriminator: 1)
!3567 = distinct !DILexicalBlock(scope: !3550, file: !679, line: 733, column: 21)
!3568 = !DILocation(line: 733, column: 21, scope: !3566)
!3569 = !DILocation(line: 733, column: 54, scope: !3566)
!3570 = !DILocation(line: 734, column: 28, scope: !3567)
!3571 = !DILocation(line: 734, column: 21, scope: !3567)
!3572 = !DILocation(line: 733, column: 21, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3550, file: !679, discriminator: 2)
!3574 = !DILocation(line: 735, column: 24, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3567, file: !679, line: 734, column: 56)
!3576 = !DILocation(line: 735, column: 47, scope: !3575)
!3577 = !DILocation(line: 735, column: 13, scope: !3575)
!3578 = !DILocation(line: 736, column: 10, scope: !3575)
!3579 = !DILocation(line: 736, column: 28, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3581, file: !679, discriminator: 1)
!3581 = distinct !DILexicalBlock(scope: !3567, file: !679, line: 736, column: 21)
!3582 = !DILocation(line: 736, column: 21, scope: !3580)
!3583 = !DILocation(line: 736, column: 54, scope: !3580)
!3584 = !DILocation(line: 737, column: 28, scope: !3581)
!3585 = !DILocation(line: 737, column: 21, scope: !3581)
!3586 = !DILocation(line: 736, column: 21, scope: !3587)
!3587 = !DILexicalBlockFile(scope: !3567, file: !679, discriminator: 2)
!3588 = !DILocation(line: 738, column: 24, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3581, file: !679, line: 737, column: 56)
!3590 = !DILocation(line: 738, column: 47, scope: !3589)
!3591 = !DILocation(line: 738, column: 13, scope: !3589)
!3592 = !DILocation(line: 739, column: 10, scope: !3589)
!3593 = !DILocation(line: 740, column: 24, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3581, file: !679, line: 739, column: 17)
!3595 = !DILocation(line: 740, column: 45, scope: !3594)
!3596 = !DILocation(line: 740, column: 13, scope: !3594)
!3597 = !DILocation(line: 742, column: 7, scope: !3536)
!3598 = !DILocation(line: 742, column: 25, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3600, file: !679, discriminator: 1)
!3600 = distinct !DILexicalBlock(scope: !3530, file: !679, line: 742, column: 18)
!3601 = !DILocation(line: 742, column: 18, scope: !3599)
!3602 = !DILocation(line: 743, column: 21, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !679, line: 742, column: 46)
!3604 = !DILocation(line: 743, column: 42, scope: !3603)
!3605 = !DILocation(line: 743, column: 10, scope: !3603)
!3606 = !DILocation(line: 744, column: 7, scope: !3603)
!3607 = !DILocation(line: 744, column: 25, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3609, file: !679, discriminator: 1)
!3609 = distinct !DILexicalBlock(scope: !3600, file: !679, line: 744, column: 18)
!3610 = !DILocation(line: 744, column: 18, scope: !3608)
!3611 = !DILocation(line: 745, column: 21, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !679, line: 744, column: 49)
!3613 = !DILocation(line: 745, column: 42, scope: !3612)
!3614 = !DILocation(line: 745, column: 10, scope: !3612)
!3615 = !DILocation(line: 746, column: 7, scope: !3612)
!3616 = !DILocation(line: 747, column: 21, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3609, file: !679, line: 746, column: 14)
!3618 = !DILocation(line: 747, column: 42, scope: !3617)
!3619 = !DILocation(line: 747, column: 10, scope: !3617)
!3620 = !DILocation(line: 749, column: 4, scope: !3531)
!3621 = !DILocation(line: 749, column: 22, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3623, file: !679, discriminator: 1)
!3623 = distinct !DILexicalBlock(scope: !3527, file: !679, line: 749, column: 15)
!3624 = !DILocation(line: 749, column: 15, scope: !3622)
!3625 = !DILocation(line: 750, column: 18, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3623, file: !679, line: 749, column: 48)
!3627 = !DILocation(line: 750, column: 43, scope: !3626)
!3628 = !DILocation(line: 750, column: 7, scope: !3626)
!3629 = !DILocation(line: 751, column: 4, scope: !3626)
!3630 = !DILocation(line: 751, column: 22, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3632, file: !679, discriminator: 1)
!3632 = distinct !DILexicalBlock(scope: !3623, file: !679, line: 751, column: 15)
!3633 = !DILocation(line: 751, column: 15, scope: !3631)
!3634 = !DILocation(line: 752, column: 18, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !679, line: 751, column: 50)
!3636 = !DILocation(line: 752, column: 45, scope: !3635)
!3637 = !DILocation(line: 752, column: 7, scope: !3635)
!3638 = !DILocation(line: 753, column: 4, scope: !3635)
!3639 = !DILocation(line: 753, column: 22, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !3641, file: !679, discriminator: 1)
!3641 = distinct !DILexicalBlock(scope: !3632, file: !679, line: 753, column: 15)
!3642 = !DILocation(line: 753, column: 15, scope: !3640)
!3643 = !DILocation(line: 754, column: 18, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3641, file: !679, line: 753, column: 43)
!3645 = !DILocation(line: 754, column: 39, scope: !3644)
!3646 = !DILocation(line: 754, column: 7, scope: !3644)
!3647 = !DILocation(line: 755, column: 4, scope: !3644)
!3648 = !DILocation(line: 755, column: 22, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3650, file: !679, discriminator: 1)
!3650 = distinct !DILexicalBlock(scope: !3641, file: !679, line: 755, column: 15)
!3651 = !DILocation(line: 755, column: 15, scope: !3649)
!3652 = !DILocalVariable(name: "amazonMajor", scope: !3653, file: !679, line: 756, type: !633)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !679, line: 755, column: 46)
!3654 = !DILocation(line: 756, column: 11, scope: !3653)
!3655 = !DILocation(line: 758, column: 18, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3653, file: !679, line: 758, column: 11)
!3657 = !DILocation(line: 758, column: 11, scope: !3656)
!3658 = !DILocation(line: 758, column: 64, scope: !3656)
!3659 = !DILocation(line: 758, column: 11, scope: !3653)
!3660 = !DILocation(line: 760, column: 22, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3656, file: !679, line: 758, column: 70)
!3662 = !DILocation(line: 761, column: 7, scope: !3661)
!3663 = !DILocation(line: 763, column: 19, scope: !3653)
!3664 = !DILocation(line: 763, column: 32, scope: !3653)
!3665 = !DILocation(line: 764, column: 19, scope: !3653)
!3666 = !DILocation(line: 763, column: 7, scope: !3653)
!3667 = !DILocation(line: 765, column: 4, scope: !3653)
!3668 = !DILocation(line: 765, column: 22, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3670, file: !679, discriminator: 1)
!3670 = distinct !DILexicalBlock(scope: !3650, file: !679, line: 765, column: 15)
!3671 = !DILocation(line: 765, column: 15, scope: !3669)
!3672 = !DILocation(line: 766, column: 18, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3670, file: !679, line: 765, column: 46)
!3674 = !DILocation(line: 766, column: 41, scope: !3673)
!3675 = !DILocation(line: 766, column: 7, scope: !3673)
!3676 = !DILocation(line: 767, column: 4, scope: !3673)
!3677 = !DILocation(line: 767, column: 22, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3679, file: !679, discriminator: 1)
!3679 = distinct !DILexicalBlock(scope: !3670, file: !679, line: 767, column: 15)
!3680 = !DILocation(line: 767, column: 15, scope: !3678)
!3681 = !DILocation(line: 768, column: 18, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !679, line: 767, column: 44)
!3683 = !DILocation(line: 768, column: 39, scope: !3682)
!3684 = !DILocation(line: 768, column: 7, scope: !3682)
!3685 = !DILocation(line: 769, column: 4, scope: !3682)
!3686 = !DILocation(line: 769, column: 22, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3688, file: !679, discriminator: 1)
!3688 = distinct !DILexicalBlock(scope: !3679, file: !679, line: 769, column: 15)
!3689 = !DILocation(line: 769, column: 15, scope: !3687)
!3690 = !DILocation(line: 770, column: 18, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !679, line: 769, column: 48)
!3692 = !DILocation(line: 770, column: 43, scope: !3691)
!3693 = !DILocation(line: 770, column: 7, scope: !3691)
!3694 = !DILocation(line: 771, column: 4, scope: !3691)
!3695 = !DILocation(line: 771, column: 22, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3697, file: !679, discriminator: 1)
!3697 = distinct !DILexicalBlock(scope: !3688, file: !679, line: 771, column: 15)
!3698 = !DILocation(line: 771, column: 15, scope: !3696)
!3699 = !DILocation(line: 771, column: 55, scope: !3696)
!3700 = !DILocation(line: 772, column: 22, scope: !3697)
!3701 = !DILocation(line: 772, column: 15, scope: !3697)
!3702 = !DILocation(line: 771, column: 15, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3688, file: !679, discriminator: 2)
!3704 = !DILocation(line: 773, column: 18, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3697, file: !679, line: 772, column: 56)
!3706 = !DILocation(line: 773, column: 43, scope: !3705)
!3707 = !DILocation(line: 773, column: 7, scope: !3705)
!3708 = !DILocation(line: 774, column: 4, scope: !3705)
!3709 = !DILocation(line: 774, column: 22, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3711, file: !679, discriminator: 1)
!3711 = distinct !DILexicalBlock(scope: !3697, file: !679, line: 774, column: 15)
!3712 = !DILocation(line: 774, column: 15, scope: !3710)
!3713 = !DILocation(line: 774, column: 55, scope: !3710)
!3714 = !DILocation(line: 775, column: 22, scope: !3711)
!3715 = !DILocation(line: 775, column: 15, scope: !3711)
!3716 = !DILocation(line: 774, column: 15, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3697, file: !679, discriminator: 2)
!3718 = !DILocation(line: 776, column: 18, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3711, file: !679, line: 775, column: 56)
!3720 = !DILocation(line: 776, column: 43, scope: !3719)
!3721 = !DILocation(line: 776, column: 7, scope: !3719)
!3722 = !DILocation(line: 777, column: 4, scope: !3719)
!3723 = !DILocation(line: 777, column: 22, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3725, file: !679, discriminator: 1)
!3725 = distinct !DILexicalBlock(scope: !3711, file: !679, line: 777, column: 15)
!3726 = !DILocation(line: 777, column: 15, scope: !3724)
!3727 = !DILocation(line: 777, column: 55, scope: !3724)
!3728 = !DILocation(line: 778, column: 22, scope: !3725)
!3729 = !DILocation(line: 778, column: 15, scope: !3725)
!3730 = !DILocation(line: 777, column: 15, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3711, file: !679, discriminator: 2)
!3732 = !DILocation(line: 779, column: 18, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3725, file: !679, line: 778, column: 56)
!3734 = !DILocation(line: 779, column: 43, scope: !3733)
!3735 = !DILocation(line: 779, column: 7, scope: !3733)
!3736 = !DILocation(line: 780, column: 4, scope: !3733)
!3737 = !DILocation(line: 780, column: 22, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !3739, file: !679, discriminator: 1)
!3739 = distinct !DILexicalBlock(scope: !3725, file: !679, line: 780, column: 15)
!3740 = !DILocation(line: 780, column: 15, scope: !3738)
!3741 = !DILocation(line: 780, column: 55, scope: !3738)
!3742 = !DILocation(line: 781, column: 22, scope: !3739)
!3743 = !DILocation(line: 781, column: 15, scope: !3739)
!3744 = !DILocation(line: 780, column: 15, scope: !3745)
!3745 = !DILexicalBlockFile(scope: !3725, file: !679, discriminator: 2)
!3746 = !DILocation(line: 782, column: 18, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3739, file: !679, line: 781, column: 56)
!3748 = !DILocation(line: 782, column: 43, scope: !3747)
!3749 = !DILocation(line: 782, column: 7, scope: !3747)
!3750 = !DILocation(line: 783, column: 4, scope: !3747)
!3751 = !DILocation(line: 783, column: 22, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3753, file: !679, discriminator: 1)
!3753 = distinct !DILexicalBlock(scope: !3739, file: !679, line: 783, column: 15)
!3754 = !DILocation(line: 783, column: 15, scope: !3752)
!3755 = !DILocation(line: 783, column: 55, scope: !3752)
!3756 = !DILocation(line: 784, column: 22, scope: !3753)
!3757 = !DILocation(line: 784, column: 15, scope: !3753)
!3758 = !DILocation(line: 783, column: 15, scope: !3759)
!3759 = !DILexicalBlockFile(scope: !3739, file: !679, discriminator: 2)
!3760 = !DILocation(line: 785, column: 18, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3753, file: !679, line: 784, column: 56)
!3762 = !DILocation(line: 785, column: 43, scope: !3761)
!3763 = !DILocation(line: 785, column: 7, scope: !3761)
!3764 = !DILocation(line: 786, column: 4, scope: !3761)
!3765 = !DILocation(line: 786, column: 22, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3767, file: !679, discriminator: 1)
!3767 = distinct !DILexicalBlock(scope: !3753, file: !679, line: 786, column: 15)
!3768 = !DILocation(line: 786, column: 15, scope: !3766)
!3769 = !DILocation(line: 787, column: 18, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !679, line: 786, column: 45)
!3771 = !DILocation(line: 787, column: 40, scope: !3770)
!3772 = !DILocation(line: 787, column: 7, scope: !3770)
!3773 = !DILocation(line: 788, column: 4, scope: !3770)
!3774 = !DILocation(line: 788, column: 22, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !3776, file: !679, discriminator: 1)
!3776 = distinct !DILexicalBlock(scope: !3767, file: !679, line: 788, column: 15)
!3777 = !DILocation(line: 788, column: 15, scope: !3775)
!3778 = !DILocation(line: 789, column: 18, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3776, file: !679, line: 788, column: 49)
!3780 = !DILocation(line: 789, column: 43, scope: !3779)
!3781 = !DILocation(line: 789, column: 7, scope: !3779)
!3782 = !DILocation(line: 790, column: 4, scope: !3779)
!3783 = !DILocation(line: 790, column: 22, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3785, file: !679, discriminator: 1)
!3785 = distinct !DILexicalBlock(scope: !3776, file: !679, line: 790, column: 15)
!3786 = !DILocation(line: 790, column: 15, scope: !3784)
!3787 = !DILocation(line: 791, column: 18, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3785, file: !679, line: 790, column: 46)
!3789 = !DILocation(line: 791, column: 41, scope: !3788)
!3790 = !DILocation(line: 791, column: 7, scope: !3788)
!3791 = !DILocation(line: 792, column: 4, scope: !3788)
!3792 = !DILocation(line: 792, column: 34, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !3794, file: !679, discriminator: 1)
!3794 = distinct !DILexicalBlock(scope: !3785, file: !679, line: 792, column: 15)
!3795 = !DILocation(line: 792, column: 15, scope: !3793)
!3796 = !DILocation(line: 793, column: 18, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !679, line: 793, column: 11)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !679, line: 792, column: 58)
!3799 = !DILocation(line: 793, column: 11, scope: !3797)
!3800 = !DILocation(line: 793, column: 11, scope: !3798)
!3801 = !DILocation(line: 794, column: 21, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3797, file: !679, line: 793, column: 38)
!3803 = !DILocation(line: 794, column: 45, scope: !3802)
!3804 = !DILocation(line: 794, column: 10, scope: !3802)
!3805 = !DILocation(line: 795, column: 7, scope: !3802)
!3806 = !DILocation(line: 795, column: 25, scope: !3807)
!3807 = !DILexicalBlockFile(scope: !3808, file: !679, discriminator: 1)
!3808 = distinct !DILexicalBlock(scope: !3797, file: !679, line: 795, column: 18)
!3809 = !DILocation(line: 795, column: 18, scope: !3807)
!3810 = !DILocation(line: 796, column: 21, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3808, file: !679, line: 795, column: 45)
!3812 = !DILocation(line: 796, column: 45, scope: !3811)
!3813 = !DILocation(line: 796, column: 10, scope: !3811)
!3814 = !DILocation(line: 797, column: 7, scope: !3811)
!3815 = !DILocation(line: 797, column: 25, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !3817, file: !679, discriminator: 1)
!3817 = distinct !DILexicalBlock(scope: !3808, file: !679, line: 797, column: 18)
!3818 = !DILocation(line: 797, column: 18, scope: !3816)
!3819 = !DILocation(line: 798, column: 21, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3817, file: !679, line: 797, column: 45)
!3821 = !DILocation(line: 798, column: 45, scope: !3820)
!3822 = !DILocation(line: 798, column: 10, scope: !3820)
!3823 = !DILocation(line: 799, column: 7, scope: !3820)
!3824 = !DILocation(line: 800, column: 21, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3817, file: !679, line: 799, column: 14)
!3826 = !DILocation(line: 800, column: 44, scope: !3825)
!3827 = !DILocation(line: 800, column: 10, scope: !3825)
!3828 = !DILocation(line: 802, column: 4, scope: !3798)
!3829 = !DILocation(line: 802, column: 22, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3831, file: !679, discriminator: 1)
!3831 = distinct !DILexicalBlock(scope: !3794, file: !679, line: 802, column: 15)
!3832 = !DILocation(line: 802, column: 15, scope: !3830)
!3833 = !DILocation(line: 803, column: 18, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !679, line: 802, column: 49)
!3835 = !DILocation(line: 803, column: 44, scope: !3834)
!3836 = !DILocation(line: 803, column: 7, scope: !3834)
!3837 = !DILocation(line: 804, column: 4, scope: !3834)
!3838 = !DILocation(line: 804, column: 22, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !3840, file: !679, discriminator: 1)
!3840 = distinct !DILexicalBlock(scope: !3831, file: !679, line: 804, column: 15)
!3841 = !DILocation(line: 804, column: 15, scope: !3839)
!3842 = !DILocation(line: 805, column: 18, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !679, line: 805, column: 11)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !679, line: 804, column: 46)
!3845 = !DILocation(line: 805, column: 11, scope: !3843)
!3846 = !DILocation(line: 805, column: 11, scope: !3844)
!3847 = !DILocation(line: 806, column: 21, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3843, file: !679, line: 805, column: 39)
!3849 = !DILocation(line: 806, column: 45, scope: !3848)
!3850 = !DILocation(line: 806, column: 10, scope: !3848)
!3851 = !DILocation(line: 807, column: 7, scope: !3848)
!3852 = !DILocation(line: 807, column: 25, scope: !3853)
!3853 = !DILexicalBlockFile(scope: !3854, file: !679, discriminator: 1)
!3854 = distinct !DILexicalBlock(scope: !3843, file: !679, line: 807, column: 18)
!3855 = !DILocation(line: 807, column: 18, scope: !3853)
!3856 = !DILocation(line: 808, column: 21, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3854, file: !679, line: 807, column: 46)
!3858 = !DILocation(line: 808, column: 45, scope: !3857)
!3859 = !DILocation(line: 808, column: 10, scope: !3857)
!3860 = !DILocation(line: 809, column: 7, scope: !3857)
!3861 = !DILocation(line: 809, column: 25, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3863, file: !679, discriminator: 1)
!3863 = distinct !DILexicalBlock(scope: !3854, file: !679, line: 809, column: 18)
!3864 = !DILocation(line: 809, column: 18, scope: !3862)
!3865 = !DILocation(line: 810, column: 21, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !679, line: 809, column: 46)
!3867 = !DILocation(line: 810, column: 45, scope: !3866)
!3868 = !DILocation(line: 810, column: 10, scope: !3866)
!3869 = !DILocation(line: 811, column: 7, scope: !3866)
!3870 = !DILocation(line: 811, column: 25, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3872, file: !679, discriminator: 1)
!3872 = distinct !DILexicalBlock(scope: !3863, file: !679, line: 811, column: 18)
!3873 = !DILocation(line: 811, column: 18, scope: !3871)
!3874 = !DILocation(line: 812, column: 21, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3872, file: !679, line: 811, column: 45)
!3876 = !DILocation(line: 812, column: 45, scope: !3875)
!3877 = !DILocation(line: 812, column: 10, scope: !3875)
!3878 = !DILocation(line: 813, column: 7, scope: !3875)
!3879 = !DILocation(line: 813, column: 25, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3881, file: !679, discriminator: 1)
!3881 = distinct !DILexicalBlock(scope: !3872, file: !679, line: 813, column: 18)
!3882 = !DILocation(line: 813, column: 18, scope: !3880)
!3883 = !DILocation(line: 814, column: 21, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3881, file: !679, line: 813, column: 45)
!3885 = !DILocation(line: 814, column: 45, scope: !3884)
!3886 = !DILocation(line: 814, column: 10, scope: !3884)
!3887 = !DILocation(line: 815, column: 7, scope: !3884)
!3888 = !DILocation(line: 815, column: 25, scope: !3889)
!3889 = !DILexicalBlockFile(scope: !3890, file: !679, discriminator: 1)
!3890 = distinct !DILexicalBlock(scope: !3881, file: !679, line: 815, column: 18)
!3891 = !DILocation(line: 815, column: 18, scope: !3889)
!3892 = !DILocation(line: 816, column: 21, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !679, line: 815, column: 45)
!3894 = !DILocation(line: 816, column: 45, scope: !3893)
!3895 = !DILocation(line: 816, column: 10, scope: !3893)
!3896 = !DILocation(line: 817, column: 7, scope: !3893)
!3897 = !DILocation(line: 817, column: 25, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3899, file: !679, discriminator: 1)
!3899 = distinct !DILexicalBlock(scope: !3890, file: !679, line: 817, column: 18)
!3900 = !DILocation(line: 817, column: 18, scope: !3898)
!3901 = !DILocation(line: 818, column: 21, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3899, file: !679, line: 817, column: 46)
!3903 = !DILocation(line: 818, column: 46, scope: !3902)
!3904 = !DILocation(line: 818, column: 10, scope: !3902)
!3905 = !DILocation(line: 819, column: 7, scope: !3902)
!3906 = !DILocation(line: 820, column: 4, scope: !3844)
!3907 = !DILocation(line: 820, column: 34, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3909, file: !679, discriminator: 1)
!3909 = distinct !DILexicalBlock(scope: !3840, file: !679, line: 820, column: 15)
!3910 = !DILocation(line: 820, column: 15, scope: !3908)
!3911 = !DILocation(line: 820, column: 67, scope: !3908)
!3912 = !DILocation(line: 821, column: 34, scope: !3909)
!3913 = !DILocation(line: 821, column: 15, scope: !3909)
!3914 = !DILocation(line: 820, column: 15, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3840, file: !679, discriminator: 2)
!3916 = !DILocation(line: 829, column: 18, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !679, line: 829, column: 11)
!3918 = distinct !DILexicalBlock(scope: !3909, file: !679, line: 821, column: 58)
!3919 = !DILocation(line: 829, column: 11, scope: !3917)
!3920 = !DILocation(line: 829, column: 11, scope: !3918)
!3921 = !DILocation(line: 830, column: 21, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !679, line: 829, column: 38)
!3923 = !DILocation(line: 830, column: 50, scope: !3922)
!3924 = !DILocation(line: 830, column: 10, scope: !3922)
!3925 = !DILocation(line: 831, column: 7, scope: !3922)
!3926 = !DILocation(line: 831, column: 25, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3928, file: !679, discriminator: 1)
!3928 = distinct !DILexicalBlock(scope: !3917, file: !679, line: 831, column: 18)
!3929 = !DILocation(line: 831, column: 18, scope: !3927)
!3930 = !DILocation(line: 832, column: 21, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !679, line: 831, column: 45)
!3932 = !DILocation(line: 832, column: 50, scope: !3931)
!3933 = !DILocation(line: 832, column: 10, scope: !3931)
!3934 = !DILocation(line: 833, column: 7, scope: !3931)
!3935 = !DILocation(line: 833, column: 25, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3937, file: !679, discriminator: 1)
!3937 = distinct !DILexicalBlock(scope: !3928, file: !679, line: 833, column: 18)
!3938 = !DILocation(line: 833, column: 18, scope: !3936)
!3939 = !DILocation(line: 834, column: 21, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3937, file: !679, line: 833, column: 45)
!3941 = !DILocation(line: 834, column: 50, scope: !3940)
!3942 = !DILocation(line: 834, column: 10, scope: !3940)
!3943 = !DILocation(line: 835, column: 7, scope: !3940)
!3944 = !DILocation(line: 836, column: 21, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3937, file: !679, line: 835, column: 14)
!3946 = !DILocation(line: 836, column: 49, scope: !3945)
!3947 = !DILocation(line: 836, column: 10, scope: !3945)
!3948 = !DILocation(line: 838, column: 4, scope: !3918)
!3949 = !DILocation(line: 838, column: 22, scope: !3950)
!3950 = !DILexicalBlockFile(scope: !3951, file: !679, discriminator: 1)
!3951 = distinct !DILexicalBlock(scope: !3909, file: !679, line: 838, column: 15)
!3952 = !DILocation(line: 838, column: 15, scope: !3950)
!3953 = !DILocation(line: 839, column: 18, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !679, line: 838, column: 46)
!3955 = !DILocation(line: 839, column: 41, scope: !3954)
!3956 = !DILocation(line: 839, column: 7, scope: !3954)
!3957 = !DILocation(line: 840, column: 4, scope: !3954)
!3958 = !DILocation(line: 840, column: 22, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3960, file: !679, discriminator: 1)
!3960 = distinct !DILexicalBlock(scope: !3951, file: !679, line: 840, column: 15)
!3961 = !DILocation(line: 840, column: 15, scope: !3959)
!3962 = !DILocation(line: 841, column: 18, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3960, file: !679, line: 840, column: 46)
!3964 = !DILocation(line: 841, column: 41, scope: !3963)
!3965 = !DILocation(line: 841, column: 7, scope: !3963)
!3966 = !DILocation(line: 842, column: 4, scope: !3963)
!3967 = !DILocation(line: 842, column: 22, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3969, file: !679, discriminator: 1)
!3969 = distinct !DILexicalBlock(scope: !3960, file: !679, line: 842, column: 15)
!3970 = !DILocation(line: 842, column: 15, scope: !3968)
!3971 = !DILocation(line: 843, column: 18, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3969, file: !679, line: 842, column: 47)
!3973 = !DILocation(line: 843, column: 42, scope: !3972)
!3974 = !DILocation(line: 843, column: 7, scope: !3972)
!3975 = !DILocation(line: 844, column: 4, scope: !3972)
!3976 = !DILocation(line: 844, column: 22, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3978, file: !679, discriminator: 1)
!3978 = distinct !DILexicalBlock(scope: !3969, file: !679, line: 844, column: 15)
!3979 = !DILocation(line: 844, column: 15, scope: !3977)
!3980 = !DILocation(line: 845, column: 18, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !679, line: 844, column: 58)
!3982 = !DILocation(line: 845, column: 53, scope: !3981)
!3983 = !DILocation(line: 845, column: 7, scope: !3981)
!3984 = !DILocation(line: 846, column: 4, scope: !3981)
!3985 = !DILocation(line: 846, column: 22, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3987, file: !679, discriminator: 1)
!3987 = distinct !DILexicalBlock(scope: !3978, file: !679, line: 846, column: 15)
!3988 = !DILocation(line: 846, column: 15, scope: !3986)
!3989 = !DILocation(line: 847, column: 18, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3987, file: !679, line: 846, column: 49)
!3991 = !DILocation(line: 847, column: 44, scope: !3990)
!3992 = !DILocation(line: 847, column: 7, scope: !3990)
!3993 = !DILocation(line: 848, column: 4, scope: !3990)
!3994 = !DILocation(line: 848, column: 22, scope: !3995)
!3995 = !DILexicalBlockFile(scope: !3996, file: !679, discriminator: 1)
!3996 = distinct !DILexicalBlock(scope: !3987, file: !679, line: 848, column: 15)
!3997 = !DILocation(line: 848, column: 15, scope: !3995)
!3998 = !DILocation(line: 849, column: 18, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !679, line: 848, column: 48)
!4000 = !DILocation(line: 849, column: 43, scope: !3999)
!4001 = !DILocation(line: 849, column: 7, scope: !3999)
!4002 = !DILocation(line: 850, column: 4, scope: !3999)
!4003 = !DILocation(line: 850, column: 22, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !4005, file: !679, discriminator: 1)
!4005 = distinct !DILexicalBlock(scope: !3996, file: !679, line: 850, column: 15)
!4006 = !DILocation(line: 850, column: 15, scope: !4004)
!4007 = !DILocation(line: 851, column: 18, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4005, file: !679, line: 850, column: 47)
!4009 = !DILocation(line: 851, column: 42, scope: !4008)
!4010 = !DILocation(line: 851, column: 7, scope: !4008)
!4011 = !DILocation(line: 852, column: 4, scope: !4008)
!4012 = !DILocation(line: 852, column: 22, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4014, file: !679, discriminator: 1)
!4014 = distinct !DILexicalBlock(scope: !4005, file: !679, line: 852, column: 15)
!4015 = !DILocation(line: 852, column: 15, scope: !4013)
!4016 = !DILocation(line: 853, column: 18, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4014, file: !679, line: 852, column: 43)
!4018 = !DILocation(line: 853, column: 38, scope: !4017)
!4019 = !DILocation(line: 853, column: 7, scope: !4017)
!4020 = !DILocation(line: 854, column: 4, scope: !4017)
!4021 = !DILocation(line: 854, column: 22, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !4023, file: !679, discriminator: 1)
!4023 = distinct !DILexicalBlock(scope: !4014, file: !679, line: 854, column: 15)
!4024 = !DILocation(line: 854, column: 15, scope: !4022)
!4025 = !DILocation(line: 855, column: 18, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !679, line: 854, column: 49)
!4027 = !DILocation(line: 855, column: 44, scope: !4026)
!4028 = !DILocation(line: 855, column: 7, scope: !4026)
!4029 = !DILocation(line: 856, column: 4, scope: !4026)
!4030 = !DILocation(line: 856, column: 22, scope: !4031)
!4031 = !DILexicalBlockFile(scope: !4032, file: !679, discriminator: 1)
!4032 = distinct !DILexicalBlock(scope: !4023, file: !679, line: 856, column: 15)
!4033 = !DILocation(line: 856, column: 15, scope: !4031)
!4034 = !DILocation(line: 857, column: 18, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !679, line: 856, column: 50)
!4036 = !DILocation(line: 857, column: 44, scope: !4035)
!4037 = !DILocation(line: 857, column: 7, scope: !4035)
!4038 = !DILocation(line: 858, column: 4, scope: !4035)
!4039 = !DILocation(line: 858, column: 22, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !4041, file: !679, discriminator: 1)
!4041 = distinct !DILexicalBlock(scope: !4032, file: !679, line: 858, column: 15)
!4042 = !DILocation(line: 858, column: 15, scope: !4040)
!4043 = !DILocation(line: 859, column: 18, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4041, file: !679, line: 858, column: 49)
!4045 = !DILocation(line: 859, column: 44, scope: !4044)
!4046 = !DILocation(line: 859, column: 7, scope: !4044)
!4047 = !DILocation(line: 860, column: 4, scope: !4044)
!4048 = !DILocation(line: 860, column: 22, scope: !4049)
!4049 = !DILexicalBlockFile(scope: !4050, file: !679, discriminator: 1)
!4050 = distinct !DILexicalBlock(scope: !4041, file: !679, line: 860, column: 15)
!4051 = !DILocation(line: 860, column: 15, scope: !4049)
!4052 = !DILocation(line: 861, column: 18, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4050, file: !679, line: 860, column: 46)
!4054 = !DILocation(line: 861, column: 41, scope: !4053)
!4055 = !DILocation(line: 861, column: 7, scope: !4053)
!4056 = !DILocation(line: 862, column: 4, scope: !4053)
!4057 = !DILocation(line: 862, column: 22, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4059, file: !679, discriminator: 1)
!4059 = distinct !DILexicalBlock(scope: !4050, file: !679, line: 862, column: 15)
!4060 = !DILocation(line: 862, column: 15, scope: !4058)
!4061 = !DILocation(line: 863, column: 18, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4059, file: !679, line: 862, column: 53)
!4063 = !DILocation(line: 863, column: 47, scope: !4062)
!4064 = !DILocation(line: 863, column: 7, scope: !4062)
!4065 = !DILocation(line: 864, column: 4, scope: !4062)
!4066 = !DILocation(line: 864, column: 22, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4068, file: !679, discriminator: 1)
!4068 = distinct !DILexicalBlock(scope: !4059, file: !679, line: 864, column: 15)
!4069 = !DILocation(line: 864, column: 15, scope: !4067)
!4070 = !DILocation(line: 865, column: 18, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4068, file: !679, line: 864, column: 52)
!4072 = !DILocation(line: 865, column: 46, scope: !4071)
!4073 = !DILocation(line: 865, column: 7, scope: !4071)
!4074 = !DILocation(line: 866, column: 4, scope: !4071)
!4075 = !DILocation(line: 866, column: 22, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4077, file: !679, discriminator: 1)
!4077 = distinct !DILexicalBlock(scope: !4068, file: !679, line: 866, column: 15)
!4078 = !DILocation(line: 866, column: 15, scope: !4076)
!4079 = !DILocation(line: 867, column: 18, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4077, file: !679, line: 866, column: 48)
!4081 = !DILocation(line: 867, column: 42, scope: !4080)
!4082 = !DILocation(line: 867, column: 7, scope: !4080)
!4083 = !DILocation(line: 868, column: 4, scope: !4080)
!4084 = !DILocation(line: 868, column: 22, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !4086, file: !679, discriminator: 1)
!4086 = distinct !DILexicalBlock(scope: !4077, file: !679, line: 868, column: 15)
!4087 = !DILocation(line: 868, column: 15, scope: !4085)
!4088 = !DILocation(line: 869, column: 18, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !679, line: 868, column: 50)
!4090 = !DILocation(line: 869, column: 45, scope: !4089)
!4091 = !DILocation(line: 869, column: 7, scope: !4089)
!4092 = !DILocation(line: 870, column: 4, scope: !4089)
!4093 = !DILocation(line: 870, column: 22, scope: !4094)
!4094 = !DILexicalBlockFile(scope: !4095, file: !679, discriminator: 1)
!4095 = distinct !DILexicalBlock(scope: !4086, file: !679, line: 870, column: 15)
!4096 = !DILocation(line: 870, column: 15, scope: !4094)
!4097 = !DILocation(line: 871, column: 18, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4095, file: !679, line: 870, column: 53)
!4099 = !DILocation(line: 871, column: 48, scope: !4098)
!4100 = !DILocation(line: 871, column: 7, scope: !4098)
!4101 = !DILocation(line: 872, column: 4, scope: !4098)
!4102 = !DILocation(line: 874, column: 9, scope: !3451)
!4103 = !DILocation(line: 874, column: 4, scope: !3451)
!4104 = !DILocation(line: 875, column: 1, scope: !3451)
!4105 = distinct !DISubprogram(name: "HostinfoOsRelease", scope: !679, file: !679, line: 1124, type: !3278, isLocal: true, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4106 = !DILocalVariable(name: "distro", arg: 1, scope: !4105, file: !679, line: 1124, type: !687)
!4107 = !DILocation(line: 1124, column: 25, scope: !4105)
!4108 = !DILocalVariable(name: "distroSize", arg: 2, scope: !4105, file: !679, line: 1125, type: !1284)
!4109 = !DILocation(line: 1125, column: 26, scope: !4105)
!4110 = !DILocalVariable(name: "success", scope: !4105, file: !679, line: 1127, type: !947)
!4111 = !DILocation(line: 1127, column: 9, scope: !4105)
!4112 = !DILocation(line: 1129, column: 42, scope: !4105)
!4113 = !DILocation(line: 1129, column: 54, scope: !4105)
!4114 = !DILocation(line: 1127, column: 19, scope: !4105)
!4115 = !DILocation(line: 1131, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4105, file: !679, line: 1131, column: 8)
!4117 = !DILocation(line: 1131, column: 8, scope: !4105)
!4118 = !DILocation(line: 1134, column: 40, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4116, file: !679, line: 1131, column: 18)
!4120 = !DILocation(line: 1134, column: 52, scope: !4119)
!4121 = !DILocation(line: 1132, column: 17, scope: !4119)
!4122 = !DILocation(line: 1132, column: 15, scope: !4119)
!4123 = !DILocation(line: 1135, column: 4, scope: !4119)
!4124 = !DILocation(line: 1137, column: 11, scope: !4105)
!4125 = !DILocation(line: 1137, column: 4, scope: !4105)
!4126 = !DILocalVariable(name: "osName", arg: 1, scope: !732, file: !679, line: 486, type: !735)
!4127 = !DILocation(line: 486, column: 30, scope: !732)
!4128 = !DILocalVariable(name: "osNameFull", arg: 2, scope: !732, file: !679, line: 487, type: !687)
!4129 = !DILocation(line: 487, column: 24, scope: !732)
!4130 = !DILocalVariable(name: "lastCharPos", scope: !732, file: !679, line: 489, type: !626)
!4131 = !DILocation(line: 489, column: 17, scope: !732)
!4132 = !DILocation(line: 497, column: 25, scope: !732)
!4133 = !DILocation(line: 497, column: 18, scope: !732)
!4134 = !DILocation(line: 497, column: 37, scope: !732)
!4135 = !DILocation(line: 497, column: 16, scope: !732)
!4136 = !DILocation(line: 498, column: 19, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !732, file: !679, line: 498, column: 8)
!4138 = !DILocation(line: 498, column: 8, scope: !4137)
!4139 = !DILocation(line: 498, column: 32, scope: !4137)
!4140 = !DILocation(line: 498, column: 8, scope: !732)
!4141 = !DILocation(line: 499, column: 18, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4137, file: !679, line: 498, column: 41)
!4143 = !DILocation(line: 499, column: 7, scope: !4142)
!4144 = !DILocation(line: 499, column: 31, scope: !4142)
!4145 = !DILocation(line: 500, column: 4, scope: !4142)
!4146 = !DILocation(line: 507, column: 4, scope: !732)
!4147 = !DILocation(line: 507, column: 11, scope: !4148)
!4148 = !DILexicalBlockFile(scope: !732, file: !679, discriminator: 1)
!4149 = !DILocation(line: 507, column: 4, scope: !4148)
!4150 = !DILocation(line: 507, column: 4, scope: !4151)
!4151 = !DILexicalBlockFile(scope: !732, file: !679, discriminator: 2)
!4152 = distinct !{!4152, !4146}
!4153 = !DILocation(line: 509, column: 9, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !732, file: !679, line: 509, column: 8)
!4155 = !DILocation(line: 509, column: 8, scope: !732)
!4156 = !DILocation(line: 510, column: 40, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !679, line: 509, column: 35)
!4158 = !DILocation(line: 510, column: 7, scope: !4157)
!4159 = !DILocation(line: 511, column: 44, scope: !4157)
!4160 = !DILocation(line: 511, column: 7, scope: !4157)
!4161 = !DILocation(line: 513, column: 32, scope: !4157)
!4162 = !DILocation(line: 514, column: 4, scope: !4157)
!4163 = !DILocation(line: 516, column: 4, scope: !732)
!4164 = !DILocation(line: 517, column: 1, scope: !732)
!4165 = distinct !DISubprogram(name: "HostinfoGetCmdOutput", scope: !679, file: !679, line: 1035, type: !4166, isLocal: true, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!687, !735}
!4168 = !DILocalVariable(name: "cmd", arg: 1, scope: !4165, file: !679, line: 1035, type: !735)
!4169 = !DILocation(line: 1035, column: 34, scope: !4165)
!4170 = !DILocalVariable(name: "isSuperUser", scope: !4165, file: !679, line: 1037, type: !947)
!4171 = !DILocation(line: 1037, column: 9, scope: !4165)
!4172 = !DILocalVariable(name: "db", scope: !4165, file: !679, line: 1038, type: !4173)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !4174, line: 40, baseType: !4175)
!4174 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !4174, line: 36, size: 192, align: 64, elements: !4176)
!4176 = !{!4177, !4178, !4179}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4175, file: !4174, line: 37, baseType: !687, size: 64, align: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4175, file: !4174, line: 38, baseType: !1284, size: 64, align: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !4175, file: !4174, line: 39, baseType: !1284, size: 64, align: 64, offset: 128)
!4180 = !DILocation(line: 1038, column: 11, scope: !4165)
!4181 = !DILocalVariable(name: "stream", scope: !4165, file: !679, line: 1039, type: !1237)
!4182 = !DILocation(line: 1039, column: 10, scope: !4165)
!4183 = !DILocalVariable(name: "out", scope: !4165, file: !679, line: 1040, type: !687)
!4184 = !DILocation(line: 1040, column: 10, scope: !4165)
!4185 = !DILocation(line: 1046, column: 13, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4165, file: !679, line: 1046, column: 8)
!4187 = !DILocation(line: 1046, column: 8, scope: !4165)
!4188 = !DILocation(line: 1047, column: 23, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4186, file: !679, line: 1046, column: 31)
!4190 = !DILocation(line: 1047, column: 7, scope: !4191)
!4191 = !DILexicalBlockFile(scope: !4189, file: !679, discriminator: 1)
!4192 = !DILocation(line: 1048, column: 19, scope: !4189)
!4193 = !DILocation(line: 1049, column: 4, scope: !4189)
!4194 = !DILocation(line: 1051, column: 4, scope: !4165)
!4195 = !DILocation(line: 1053, column: 25, scope: !4165)
!4196 = !DILocation(line: 1053, column: 13, scope: !4165)
!4197 = !DILocation(line: 1053, column: 11, scope: !4165)
!4198 = !DILocation(line: 1054, column: 8, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4165, file: !679, line: 1054, column: 8)
!4200 = !DILocation(line: 1054, column: 15, scope: !4199)
!4201 = !DILocation(line: 1054, column: 8, scope: !4165)
!4202 = !DILocation(line: 1055, column: 59, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4199, file: !679, line: 1054, column: 23)
!4204 = !DILocation(line: 1055, column: 7, scope: !4203)
!4205 = !DILocation(line: 1057, column: 7, scope: !4203)
!4206 = !DILocation(line: 1060, column: 4, scope: !4165)
!4207 = !DILocalVariable(name: "line", scope: !4208, file: !679, line: 1061, type: !687)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !679, line: 1060, column: 13)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !679, line: 1060, column: 4)
!4210 = distinct !DILexicalBlock(scope: !4165, file: !679, line: 1060, column: 4)
!4211 = !DILocation(line: 1061, column: 13, scope: !4208)
!4212 = !DILocalVariable(name: "size", scope: !4208, file: !679, line: 1062, type: !1284)
!4213 = !DILocation(line: 1062, column: 14, scope: !4208)
!4214 = !DILocation(line: 1064, column: 34, scope: !4208)
!4215 = !DILocation(line: 1064, column: 15, scope: !4208)
!4216 = !DILocation(line: 1064, column: 7, scope: !4208)
!4217 = !DILocation(line: 1066, column: 10, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4208, file: !679, line: 1064, column: 60)
!4219 = !DILocation(line: 1070, column: 10, scope: !4218)
!4220 = !DILocation(line: 1073, column: 10, scope: !4218)
!4221 = !DILocation(line: 1076, column: 10, scope: !4218)
!4222 = !DILocation(line: 1079, column: 11, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4208, file: !679, line: 1079, column: 11)
!4224 = !DILocation(line: 1079, column: 16, scope: !4223)
!4225 = !DILocation(line: 1079, column: 11, scope: !4208)
!4226 = !DILocation(line: 1080, column: 10, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4223, file: !679, line: 1079, column: 24)
!4228 = !DILocation(line: 1084, column: 26, scope: !4208)
!4229 = !DILocation(line: 1084, column: 32, scope: !4208)
!4230 = !DILocation(line: 1084, column: 7, scope: !4208)
!4231 = !DILocation(line: 1085, column: 12, scope: !4208)
!4232 = !DILocation(line: 1085, column: 7, scope: !4208)
!4233 = !DILocation(line: 1060, column: 4, scope: !4234)
!4234 = !DILexicalBlockFile(scope: !4209, file: !679, discriminator: 1)
!4235 = distinct !{!4235, !4206}
!4236 = !DILocation(line: 1089, column: 8, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4165, file: !679, line: 1089, column: 8)
!4238 = !DILocation(line: 1089, column: 24, scope: !4237)
!4239 = !DILocation(line: 1089, column: 8, scope: !4165)
!4240 = !DILocation(line: 1090, column: 13, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4237, file: !679, line: 1089, column: 32)
!4242 = !DILocation(line: 1090, column: 11, scope: !4241)
!4243 = !DILocation(line: 1091, column: 4, scope: !4241)
!4244 = !DILocation(line: 1089, column: 36, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4237, file: !679, discriminator: 1)
!4246 = !DILocation(line: 1094, column: 11, scope: !4165)
!4247 = !DILocation(line: 1094, column: 4, scope: !4165)
!4248 = !DILocation(line: 1097, column: 4, scope: !4165)
!4249 = !DILocation(line: 1099, column: 8, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4165, file: !679, line: 1099, column: 8)
!4251 = !DILocation(line: 1099, column: 8, scope: !4165)
!4252 = !DILocation(line: 1100, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4250, file: !679, line: 1099, column: 21)
!4254 = !DILocation(line: 1101, column: 4, scope: !4253)
!4255 = !DILocation(line: 1102, column: 11, scope: !4165)
!4256 = !DILocation(line: 1102, column: 4, scope: !4165)
!4257 = distinct !DISubprogram(name: "HostinfoReadDistroFile", scope: !679, file: !679, line: 901, type: !4258, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!947, !947, !687, !4260, !633, !687}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!4261 = !DILocalVariable(name: "osReleaseRules", arg: 1, scope: !4257, file: !679, line: 901, type: !947)
!4262 = !DILocation(line: 901, column: 29, scope: !4257)
!4263 = !DILocalVariable(name: "filename", arg: 2, scope: !4257, file: !679, line: 902, type: !687)
!4264 = !DILocation(line: 902, column: 30, scope: !4257)
!4265 = !DILocalVariable(name: "values", arg: 3, scope: !4257, file: !679, line: 903, type: !4260)
!4266 = !DILocation(line: 903, column: 46, scope: !4257)
!4267 = !DILocalVariable(name: "distroSize", arg: 4, scope: !4257, file: !679, line: 904, type: !633)
!4268 = !DILocation(line: 904, column: 28, scope: !4257)
!4269 = !DILocalVariable(name: "distro", arg: 5, scope: !4257, file: !679, line: 905, type: !687)
!4270 = !DILocation(line: 905, column: 30, scope: !4257)
!4271 = !DILocalVariable(name: "i", scope: !4257, file: !679, line: 907, type: !633)
!4272 = !DILocation(line: 907, column: 8, scope: !4257)
!4273 = !DILocalVariable(name: "buf_sz", scope: !4257, file: !679, line: 908, type: !633)
!4274 = !DILocation(line: 908, column: 8, scope: !4257)
!4275 = !DILocalVariable(name: "st", scope: !4257, file: !679, line: 909, type: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4277, line: 46, size: 1152, align: 64, elements: !4278)
!4277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line610")
!4278 = !{!4279, !4281, !4283, !4285, !4287, !4288, !4289, !4290, !4291, !4292, !4294, !4296, !4297, !4298, !4299}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4276, file: !4277, line: 48, baseType: !4280, size: 64, align: 64)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !643, line: 124, baseType: !637)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4276, file: !4277, line: 53, baseType: !4282, size: 64, align: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !643, line: 127, baseType: !637)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4276, file: !4277, line: 61, baseType: !4284, size: 64, align: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !643, line: 130, baseType: !637)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4276, file: !4277, line: 62, baseType: !4286, size: 32, align: 32, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !643, line: 129, baseType: !626)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4276, file: !4277, line: 64, baseType: !642, size: 32, align: 32, offset: 224)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4276, file: !4277, line: 65, baseType: !1398, size: 32, align: 32, offset: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4276, file: !4277, line: 67, baseType: !633, size: 32, align: 32, offset: 288)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4276, file: !4277, line: 69, baseType: !4280, size: 64, align: 64, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4276, file: !4277, line: 74, baseType: !1267, size: 64, align: 64, offset: 384)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4276, file: !4277, line: 78, baseType: !4293, size: 64, align: 64, offset: 448)
!4293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !643, line: 153, baseType: !621)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4276, file: !4277, line: 80, baseType: !4295, size: 64, align: 64, offset: 512)
!4295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !643, line: 158, baseType: !621)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4276, file: !4277, line: 91, baseType: !1543, size: 128, align: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4276, file: !4277, line: 92, baseType: !1543, size: 128, align: 64, offset: 704)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4276, file: !4277, line: 93, baseType: !1543, size: 128, align: 64, offset: 832)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4276, file: !4277, line: 106, baseType: !4300, size: 192, align: 64, offset: 960)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1548, size: 192, align: 64, elements: !655)
!4301 = !DILocation(line: 909, column: 16, scope: !4257)
!4302 = !DILocalVariable(name: "fd", scope: !4257, file: !679, line: 910, type: !633)
!4303 = !DILocation(line: 910, column: 8, scope: !4257)
!4304 = !DILocalVariable(name: "ret", scope: !4257, file: !679, line: 911, type: !947)
!4305 = !DILocation(line: 911, column: 9, scope: !4257)
!4306 = !DILocalVariable(name: "distroOrig", scope: !4257, file: !679, line: 912, type: !687)
!4307 = !DILocation(line: 912, column: 10, scope: !4257)
!4308 = !DILocation(line: 915, column: 25, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 915, column: 8)
!4310 = !DILocation(line: 915, column: 14, scope: !4309)
!4311 = !DILocation(line: 915, column: 12, scope: !4309)
!4312 = !DILocation(line: 915, column: 45, scope: !4309)
!4313 = !DILocation(line: 915, column: 8, scope: !4257)
!4314 = !DILocation(line: 916, column: 7, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4309, file: !679, line: 915, column: 52)
!4316 = !DILocation(line: 919, column: 14, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 919, column: 8)
!4318 = !DILocation(line: 919, column: 8, scope: !4317)
!4319 = !DILocation(line: 919, column: 8, scope: !4257)
!4320 = !DILocation(line: 920, column: 69, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !679, line: 919, column: 24)
!4322 = !DILocation(line: 921, column: 13, scope: !4321)
!4323 = !DILocation(line: 921, column: 12, scope: !4321)
!4324 = !DILocation(line: 920, column: 7, scope: !4321)
!4325 = !DILocation(line: 922, column: 7, scope: !4321)
!4326 = !DILocation(line: 925, column: 11, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 925, column: 8)
!4328 = !DILocation(line: 925, column: 19, scope: !4327)
!4329 = !DILocation(line: 925, column: 8, scope: !4257)
!4330 = !DILocation(line: 926, column: 7, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !679, line: 925, column: 25)
!4332 = !DILocation(line: 927, column: 7, scope: !4331)
!4333 = !DILocation(line: 930, column: 16, scope: !4257)
!4334 = !DILocation(line: 930, column: 13, scope: !4257)
!4335 = !DILocation(line: 930, column: 11, scope: !4257)
!4336 = !DILocation(line: 931, column: 8, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 931, column: 8)
!4338 = !DILocation(line: 931, column: 18, scope: !4337)
!4339 = !DILocation(line: 931, column: 15, scope: !4337)
!4340 = !DILocation(line: 931, column: 8, scope: !4257)
!4341 = !DILocation(line: 932, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4337, file: !679, line: 931, column: 30)
!4343 = !DILocation(line: 933, column: 7, scope: !4342)
!4344 = !DILocation(line: 935, column: 24, scope: !4257)
!4345 = !DILocation(line: 935, column: 17, scope: !4257)
!4346 = !DILocation(line: 935, column: 15, scope: !4257)
!4347 = !DILocation(line: 937, column: 8, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 937, column: 8)
!4349 = !DILocation(line: 937, column: 19, scope: !4348)
!4350 = !DILocation(line: 937, column: 8, scope: !4257)
!4351 = !DILocation(line: 938, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4348, file: !679, line: 937, column: 27)
!4353 = !DILocation(line: 939, column: 7, scope: !4352)
!4354 = !DILocation(line: 942, column: 13, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 942, column: 8)
!4356 = !DILocation(line: 942, column: 17, scope: !4355)
!4357 = !DILocation(line: 942, column: 29, scope: !4355)
!4358 = !DILocation(line: 942, column: 8, scope: !4355)
!4359 = !DILocation(line: 942, column: 40, scope: !4355)
!4360 = !DILocation(line: 942, column: 37, scope: !4355)
!4361 = !DILocation(line: 942, column: 8, scope: !4257)
!4362 = !DILocation(line: 943, column: 65, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4355, file: !679, line: 942, column: 48)
!4364 = !DILocation(line: 944, column: 16, scope: !4363)
!4365 = !DILocation(line: 944, column: 15, scope: !4363)
!4366 = !DILocation(line: 943, column: 7, scope: !4363)
!4367 = !DILocation(line: 945, column: 7, scope: !4363)
!4368 = !DILocation(line: 948, column: 15, scope: !4257)
!4369 = !DILocation(line: 948, column: 22, scope: !4257)
!4370 = !DILocation(line: 948, column: 4, scope: !4257)
!4371 = !DILocation(line: 948, column: 27, scope: !4257)
!4372 = !DILocation(line: 955, column: 4, scope: !4257)
!4373 = !DILocation(line: 955, column: 14, scope: !4257)
!4374 = !DILocation(line: 957, column: 11, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 957, column: 4)
!4376 = !DILocation(line: 957, column: 9, scope: !4375)
!4377 = !DILocation(line: 957, column: 23, scope: !4378)
!4378 = !DILexicalBlockFile(scope: !4379, file: !679, discriminator: 1)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !679, line: 957, column: 4)
!4380 = !DILocation(line: 957, column: 16, scope: !4378)
!4381 = !DILocation(line: 957, column: 26, scope: !4378)
!4382 = !DILocation(line: 957, column: 31, scope: !4378)
!4383 = !DILocation(line: 957, column: 4, scope: !4378)
!4384 = !DILocalVariable(name: "tmpDistroPos", scope: !4385, file: !679, line: 958, type: !735)
!4385 = distinct !DILexicalBlock(scope: !4379, file: !679, line: 957, column: 44)
!4386 = !DILocation(line: 958, column: 19, scope: !4385)
!4387 = !DILocation(line: 958, column: 41, scope: !4385)
!4388 = !DILocation(line: 958, column: 60, scope: !4385)
!4389 = !DILocation(line: 958, column: 53, scope: !4385)
!4390 = !DILocation(line: 958, column: 63, scope: !4385)
!4391 = !DILocation(line: 958, column: 34, scope: !4385)
!4392 = !DILocation(line: 960, column: 11, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4385, file: !679, line: 960, column: 11)
!4394 = !DILocation(line: 960, column: 24, scope: !4393)
!4395 = !DILocation(line: 960, column: 11, scope: !4385)
!4396 = !DILocalVariable(name: "distroPart", scope: !4397, file: !679, line: 961, type: !1003)
!4397 = distinct !DILexicalBlock(scope: !4393, file: !679, line: 960, column: 32)
!4398 = !DILocation(line: 961, column: 15, scope: !4397)
!4399 = !DILocation(line: 963, column: 17, scope: !4397)
!4400 = !DILocation(line: 963, column: 38, scope: !4397)
!4401 = !DILocation(line: 963, column: 31, scope: !4397)
!4402 = !DILocation(line: 963, column: 41, scope: !4397)
!4403 = !DILocation(line: 963, column: 53, scope: !4397)
!4404 = !DILocation(line: 963, column: 10, scope: !4397)
!4405 = !DILocation(line: 964, column: 14, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4397, file: !679, line: 964, column: 14)
!4407 = !DILocation(line: 964, column: 28, scope: !4406)
!4408 = !DILocation(line: 964, column: 14, scope: !4397)
!4409 = !DILocalVariable(name: "tmpMakeNull", scope: !4410, file: !679, line: 965, type: !687)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !679, line: 964, column: 36)
!4411 = !DILocation(line: 965, column: 19, scope: !4410)
!4412 = !DILocation(line: 967, column: 43, scope: !4410)
!4413 = !DILocation(line: 967, column: 36, scope: !4410)
!4414 = !DILocation(line: 967, column: 46, scope: !4410)
!4415 = !DILocation(line: 967, column: 29, scope: !4410)
!4416 = !DILocation(line: 967, column: 52, scope: !4410)
!4417 = !DILocation(line: 967, column: 26, scope: !4410)
!4418 = !DILocation(line: 968, column: 34, scope: !4410)
!4419 = !DILocation(line: 968, column: 47, scope: !4410)
!4420 = !DILocation(line: 968, column: 27, scope: !4410)
!4421 = !DILocation(line: 968, column: 25, scope: !4410)
!4422 = !DILocation(line: 969, column: 17, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4410, file: !679, line: 969, column: 17)
!4424 = !DILocation(line: 969, column: 29, scope: !4423)
!4425 = !DILocation(line: 969, column: 17, scope: !4410)
!4426 = !DILocation(line: 970, column: 17, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4423, file: !679, line: 969, column: 37)
!4428 = !DILocation(line: 970, column: 29, scope: !4427)
!4429 = !DILocation(line: 971, column: 27, scope: !4427)
!4430 = !DILocation(line: 971, column: 35, scope: !4427)
!4431 = !DILocation(line: 971, column: 49, scope: !4427)
!4432 = !DILocation(line: 971, column: 16, scope: !4427)
!4433 = !DILocation(line: 972, column: 17, scope: !4427)
!4434 = !DILocation(line: 972, column: 29, scope: !4427)
!4435 = !DILocation(line: 973, column: 13, scope: !4427)
!4436 = !DILocation(line: 974, column: 10, scope: !4410)
!4437 = !DILocation(line: 975, column: 24, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4406, file: !679, line: 974, column: 17)
!4439 = !DILocation(line: 975, column: 32, scope: !4438)
!4440 = !DILocation(line: 975, column: 44, scope: !4438)
!4441 = !DILocation(line: 975, column: 13, scope: !4438)
!4442 = !DILocation(line: 977, column: 21, scope: !4397)
!4443 = !DILocation(line: 977, column: 34, scope: !4397)
!4444 = !DILocation(line: 977, column: 10, scope: !4397)
!4445 = !DILocation(line: 978, column: 7, scope: !4397)
!4446 = !DILocation(line: 979, column: 4, scope: !4385)
!4447 = !DILocation(line: 957, column: 40, scope: !4448)
!4448 = !DILexicalBlockFile(scope: !4379, file: !679, discriminator: 2)
!4449 = !DILocation(line: 957, column: 4, scope: !4448)
!4450 = distinct !{!4450, !4451}
!4451 = !DILocation(line: 957, column: 4, scope: !4257)
!4452 = !DILocation(line: 981, column: 8, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 981, column: 8)
!4454 = !DILocation(line: 981, column: 18, scope: !4453)
!4455 = !DILocation(line: 981, column: 8, scope: !4257)
!4456 = !DILocation(line: 986, column: 11, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !679, line: 986, column: 11)
!4458 = distinct !DILexicalBlock(scope: !4453, file: !679, line: 981, column: 27)
!4459 = !DILocation(line: 986, column: 11, scope: !4458)
!4460 = !DILocation(line: 991, column: 14, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !679, line: 986, column: 27)
!4462 = !DILocation(line: 992, column: 7, scope: !4461)
!4463 = !DILocation(line: 1001, column: 21, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4457, file: !679, line: 992, column: 14)
!4465 = !DILocation(line: 1001, column: 29, scope: !4464)
!4466 = !DILocation(line: 1001, column: 41, scope: !4464)
!4467 = !DILocation(line: 1001, column: 10, scope: !4464)
!4468 = !DILocation(line: 1002, column: 14, scope: !4464)
!4469 = !DILocation(line: 1004, column: 4, scope: !4458)
!4470 = !DILocation(line: 1005, column: 11, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4453, file: !679, line: 1004, column: 11)
!4472 = !DILocation(line: 981, column: 21, scope: !4473)
!4473 = !DILexicalBlockFile(scope: !4453, file: !679, discriminator: 1)
!4474 = !DILocation(line: 1009, column: 8, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 1009, column: 8)
!4476 = !DILocation(line: 1009, column: 11, scope: !4475)
!4477 = !DILocation(line: 1009, column: 8, scope: !4257)
!4478 = !DILocation(line: 1010, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4475, file: !679, line: 1009, column: 18)
!4480 = !DILocation(line: 1010, column: 7, scope: !4479)
!4481 = !DILocation(line: 1011, column: 4, scope: !4479)
!4482 = !DILocation(line: 1012, column: 9, scope: !4257)
!4483 = !DILocation(line: 1012, column: 4, scope: !4257)
!4484 = !DILocation(line: 1014, column: 11, scope: !4257)
!4485 = !DILocation(line: 1014, column: 4, scope: !4257)
!4486 = !DILocation(line: 1015, column: 1, scope: !4257)
!4487 = distinct !DISubprogram(name: "Id_IsSuperUser", scope: !1874, file: !1874, line: 128, type: !945, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4488 = !DILocation(line: 128, column: 55, scope: !4487)
!4489 = !DILocation(line: 128, column: 52, scope: !4487)
!4490 = !DILocation(line: 128, column: 50, scope: !4487)
!4491 = !DILocation(line: 128, column: 43, scope: !4487)
!4492 = distinct !DISubprogram(name: "DynBuf_Get", scope: !4174, file: !4174, line: 113, type: !4493, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!622, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64, align: 64)
!4496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4173)
!4497 = !DILocalVariable(name: "b", arg: 1, scope: !4492, file: !4174, line: 113, type: !4495)
!4498 = !DILocation(line: 113, column: 26, scope: !4492)
!4499 = !DILocation(line: 117, column: 11, scope: !4492)
!4500 = !DILocation(line: 117, column: 14, scope: !4492)
!4501 = !DILocation(line: 117, column: 4, scope: !4492)
!4502 = distinct !DISubprogram(name: "Atomic_ReadWrite32", scope: !689, file: !689, line: 975, type: !4503, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!623, !2873, !623}
!4505 = !DILocalVariable(name: "var", arg: 1, scope: !4502, file: !689, line: 975, type: !2873)
!4506 = !DILocation(line: 975, column: 35, scope: !4502)
!4507 = !DILocalVariable(name: "val", arg: 2, scope: !4502, file: !689, line: 976, type: !623)
!4508 = !DILocation(line: 976, column: 27, scope: !4502)
!4509 = !DILocation(line: 1005, column: 15, scope: !4502)
!4510 = !DILocation(line: 1005, column: 20, scope: !4502)
!4511 = !DILocation(line: 1006, column: 14, scope: !4502)
!4512 = !DILocation(line: 1002, column: 4, scope: !4502)
!4513 = !{i32 629385}
!4514 = !DILocation(line: 1009, column: 11, scope: !4502)
!4515 = !DILocation(line: 1009, column: 4, scope: !4502)
!4516 = distinct !DISubprogram(name: "Atomic_Write32", scope: !689, file: !689, line: 1037, type: !4517, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{null, !2873, !623}
!4519 = !DILocalVariable(name: "var", arg: 1, scope: !4516, file: !689, line: 1037, type: !2873)
!4520 = !DILocation(line: 1037, column: 31, scope: !4516)
!4521 = !DILocalVariable(name: "val", arg: 2, scope: !4516, file: !689, line: 1038, type: !623)
!4522 = !DILocation(line: 1038, column: 23, scope: !4516)
!4523 = !DILocation(line: 1083, column: 15, scope: !4516)
!4524 = !DILocation(line: 1083, column: 20, scope: !4516)
!4525 = !DILocation(line: 1084, column: 14, scope: !4516)
!4526 = !DILocation(line: 1081, column: 4, scope: !4516)
!4527 = !{i32 629850}
!4528 = !DILocation(line: 1098, column: 1, scope: !4516)
!4529 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !689, file: !689, line: 1190, type: !4530, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!635, !4532, !635, !635}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!4533 = !DILocalVariable(name: "var", arg: 1, scope: !4529, file: !689, line: 1190, type: !4532)
!4534 = !DILocation(line: 1190, column: 42, scope: !4529)
!4535 = !DILocalVariable(name: "oldVal", arg: 2, scope: !4529, file: !689, line: 1191, type: !635)
!4536 = !DILocation(line: 1191, column: 34, scope: !4529)
!4537 = !DILocalVariable(name: "newVal", arg: 3, scope: !4529, file: !689, line: 1192, type: !635)
!4538 = !DILocation(line: 1192, column: 34, scope: !4529)
!4539 = !DILocalVariable(name: "val", scope: !4529, file: !689, line: 1240, type: !635)
!4540 = !DILocation(line: 1240, column: 11, scope: !4529)
!4541 = !DILocation(line: 1246, column: 15, scope: !4529)
!4542 = !DILocation(line: 1246, column: 20, scope: !4529)
!4543 = !DILocation(line: 1247, column: 14, scope: !4529)
!4544 = !DILocation(line: 1248, column: 14, scope: !4529)
!4545 = !DILocation(line: 1243, column: 4, scope: !4529)
!4546 = !{i32 631150}
!4547 = !DILocation(line: 1251, column: 11, scope: !4529)
!4548 = !DILocation(line: 1251, column: 4, scope: !4529)
!4549 = distinct !DISubprogram(name: "Util_FreeList", scope: !2458, file: !2458, line: 335, type: !4550, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !644, !2461}
!4552 = !DILocalVariable(name: "list", arg: 1, scope: !4549, file: !2458, line: 335, type: !644)
!4553 = !DILocation(line: 335, column: 22, scope: !4549)
!4554 = !DILocalVariable(name: "length", arg: 2, scope: !4549, file: !2458, line: 336, type: !2461)
!4555 = !DILocation(line: 336, column: 23, scope: !4549)
!4556 = !DILocalVariable(name: "err", scope: !4549, file: !2458, line: 339, type: !633)
!4557 = !DILocation(line: 339, column: 8, scope: !4549)
!4558 = !DILocation(line: 341, column: 8, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4549, file: !2458, line: 341, column: 8)
!4560 = !DILocation(line: 341, column: 13, scope: !4559)
!4561 = !DILocation(line: 341, column: 8, scope: !4549)
!4562 = !DILocation(line: 343, column: 7, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4559, file: !2458, line: 341, column: 21)
!4564 = !DILocation(line: 346, column: 11, scope: !4549)
!4565 = !DILocation(line: 346, column: 10, scope: !4549)
!4566 = !DILocation(line: 346, column: 8, scope: !4549)
!4567 = !DILocation(line: 348, column: 8, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4549, file: !2458, line: 348, column: 8)
!4569 = !DILocation(line: 348, column: 15, scope: !4568)
!4570 = !DILocation(line: 348, column: 8, scope: !4549)
!4571 = !DILocalVariable(name: "i", scope: !4572, file: !2458, line: 349, type: !2461)
!4572 = distinct !DILexicalBlock(scope: !4568, file: !2458, line: 348, column: 21)
!4573 = !DILocation(line: 349, column: 15, scope: !4572)
!4574 = !DILocation(line: 351, column: 14, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4572, file: !2458, line: 351, column: 7)
!4576 = !DILocation(line: 351, column: 12, scope: !4575)
!4577 = !DILocation(line: 351, column: 19, scope: !4578)
!4578 = !DILexicalBlockFile(scope: !4579, file: !2458, discriminator: 1)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !2458, line: 351, column: 7)
!4580 = !DILocation(line: 351, column: 23, scope: !4578)
!4581 = !DILocation(line: 351, column: 21, scope: !4578)
!4582 = !DILocation(line: 351, column: 7, scope: !4578)
!4583 = !DILocation(line: 352, column: 20, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4579, file: !2458, line: 351, column: 36)
!4585 = !DILocation(line: 352, column: 15, scope: !4584)
!4586 = !DILocation(line: 352, column: 10, scope: !4584)
!4587 = !DILocation(line: 354, column: 7, scope: !4584)
!4588 = !DILocation(line: 351, column: 32, scope: !4589)
!4589 = !DILexicalBlockFile(scope: !4579, file: !2458, discriminator: 2)
!4590 = !DILocation(line: 351, column: 7, scope: !4589)
!4591 = distinct !{!4591, !4592}
!4592 = !DILocation(line: 351, column: 7, scope: !4572)
!4593 = !DILocation(line: 355, column: 4, scope: !4572)
!4594 = !DILocalVariable(name: "s", scope: !4595, file: !2458, line: 356, type: !644)
!4595 = distinct !DILexicalBlock(scope: !4568, file: !2458, line: 355, column: 11)
!4596 = !DILocation(line: 356, column: 14, scope: !4595)
!4597 = !DILocation(line: 358, column: 16, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !2458, line: 358, column: 7)
!4599 = !DILocation(line: 358, column: 14, scope: !4598)
!4600 = !DILocation(line: 358, column: 12, scope: !4598)
!4601 = !DILocation(line: 358, column: 23, scope: !4602)
!4602 = !DILexicalBlockFile(scope: !4603, file: !2458, discriminator: 1)
!4603 = distinct !DILexicalBlock(scope: !4598, file: !2458, line: 358, column: 7)
!4604 = !DILocation(line: 358, column: 22, scope: !4602)
!4605 = !DILocation(line: 358, column: 25, scope: !4602)
!4606 = !DILocation(line: 358, column: 7, scope: !4602)
!4607 = !DILocation(line: 359, column: 16, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4603, file: !2458, line: 358, column: 38)
!4609 = !DILocation(line: 359, column: 15, scope: !4608)
!4610 = !DILocation(line: 359, column: 10, scope: !4608)
!4611 = !DILocation(line: 361, column: 7, scope: !4608)
!4612 = !DILocation(line: 358, column: 34, scope: !4613)
!4613 = !DILexicalBlockFile(scope: !4603, file: !2458, discriminator: 2)
!4614 = !DILocation(line: 358, column: 7, scope: !4613)
!4615 = distinct !{!4615, !4616}
!4616 = !DILocation(line: 358, column: 7, scope: !4595)
!4617 = !DILocation(line: 363, column: 9, scope: !4549)
!4618 = !DILocation(line: 363, column: 4, scope: !4549)
!4619 = !DILocation(line: 364, column: 11, scope: !4549)
!4620 = !DILocation(line: 364, column: 5, scope: !4549)
!4621 = !DILocation(line: 364, column: 9, scope: !4549)
!4622 = !DILocation(line: 365, column: 1, scope: !4549)
!4623 = !DILocation(line: 365, column: 1, scope: !4624)
!4624 = !DILexicalBlockFile(scope: !4549, file: !2458, discriminator: 1)
!4625 = distinct !DISubprogram(name: "Atomic_Read32", scope: !689, file: !689, line: 911, type: !4626, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!623, !4628}
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64, align: 64)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!4630 = !DILocalVariable(name: "var", arg: 1, scope: !4625, file: !689, line: 911, type: !4628)
!4631 = !DILocation(line: 911, column: 36, scope: !4625)
!4632 = !DILocalVariable(name: "value", scope: !4625, file: !689, line: 913, type: !623)
!4633 = !DILocation(line: 913, column: 11, scope: !4625)
!4634 = !DILocation(line: 938, column: 14, scope: !4625)
!4635 = !DILocation(line: 938, column: 19, scope: !4625)
!4636 = !DILocation(line: 935, column: 4, scope: !4625)
!4637 = !{i32 628840}
!4638 = !DILocation(line: 953, column: 11, scope: !4625)
!4639 = !DILocation(line: 953, column: 4, scope: !4625)
!4640 = distinct !DISubprogram(name: "HostinfoFindEntry", scope: !679, file: !679, line: 3162, type: !4641, isLocal: true, isDefinition: true, scopeLine: 3165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !682)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!947, !687, !687, !2893}
!4643 = !DILocalVariable(name: "buffer", arg: 1, scope: !4640, file: !679, line: 3162, type: !687)
!4644 = !DILocation(line: 3162, column: 25, scope: !4640)
!4645 = !DILocalVariable(name: "string", arg: 2, scope: !4640, file: !679, line: 3163, type: !687)
!4646 = !DILocation(line: 3163, column: 25, scope: !4640)
!4647 = !DILocalVariable(name: "value", arg: 3, scope: !4640, file: !679, line: 3164, type: !2893)
!4648 = !DILocation(line: 3164, column: 33, scope: !4640)
!4649 = !DILocalVariable(name: "p", scope: !4640, file: !679, line: 3166, type: !687)
!4650 = !DILocation(line: 3166, column: 10, scope: !4640)
!4651 = !DILocation(line: 3166, column: 21, scope: !4640)
!4652 = !DILocation(line: 3166, column: 29, scope: !4640)
!4653 = !DILocation(line: 3166, column: 14, scope: !4640)
!4654 = !DILocalVariable(name: "val", scope: !4640, file: !679, line: 3167, type: !626)
!4655 = !DILocation(line: 3167, column: 17, scope: !4640)
!4656 = !DILocation(line: 3169, column: 8, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4640, file: !679, line: 3169, column: 8)
!4658 = !DILocation(line: 3169, column: 10, scope: !4657)
!4659 = !DILocation(line: 3169, column: 8, scope: !4640)
!4660 = !DILocation(line: 3170, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4657, file: !679, line: 3169, column: 18)
!4662 = !DILocation(line: 3173, column: 16, scope: !4640)
!4663 = !DILocation(line: 3173, column: 9, scope: !4640)
!4664 = !DILocation(line: 3173, column: 6, scope: !4640)
!4665 = !DILocation(line: 3175, column: 4, scope: !4640)
!4666 = !DILocation(line: 3175, column: 12, scope: !4667)
!4667 = !DILexicalBlockFile(scope: !4640, file: !679, discriminator: 1)
!4668 = !DILocation(line: 3175, column: 11, scope: !4667)
!4669 = !DILocation(line: 3175, column: 14, scope: !4667)
!4670 = !DILocation(line: 3175, column: 21, scope: !4667)
!4671 = !DILocation(line: 3175, column: 25, scope: !4672)
!4672 = !DILexicalBlockFile(scope: !4640, file: !679, discriminator: 2)
!4673 = !DILocation(line: 3175, column: 24, scope: !4672)
!4674 = !DILocation(line: 3175, column: 27, scope: !4672)
!4675 = !DILocation(line: 3175, column: 21, scope: !4672)
!4676 = !DILocation(line: 3175, column: 4, scope: !4677)
!4677 = !DILexicalBlockFile(scope: !4640, file: !679, discriminator: 3)
!4678 = !DILocation(line: 3176, column: 8, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4640, file: !679, line: 3175, column: 36)
!4680 = !DILocation(line: 3175, column: 4, scope: !4681)
!4681 = !DILexicalBlockFile(scope: !4640, file: !679, discriminator: 4)
!4682 = distinct !{!4682, !4665}
!4683 = !DILocation(line: 3178, column: 9, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4640, file: !679, line: 3178, column: 8)
!4685 = !DILocation(line: 3178, column: 8, scope: !4684)
!4686 = !DILocation(line: 3178, column: 11, scope: !4684)
!4687 = !DILocation(line: 3178, column: 17, scope: !4684)
!4688 = !DILocation(line: 3178, column: 21, scope: !4689)
!4689 = !DILexicalBlockFile(scope: !4684, file: !679, discriminator: 1)
!4690 = !DILocation(line: 3178, column: 20, scope: !4689)
!4691 = !DILocation(line: 3178, column: 23, scope: !4689)
!4692 = !DILocation(line: 3178, column: 8, scope: !4689)
!4693 = !DILocation(line: 3179, column: 7, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4684, file: !679, line: 3178, column: 30)
!4695 = !DILocation(line: 3182, column: 18, scope: !4640)
!4696 = !DILocation(line: 3182, column: 10, scope: !4640)
!4697 = !DILocation(line: 3182, column: 8, scope: !4640)
!4698 = !DILocation(line: 3183, column: 10, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4640, file: !679, line: 3183, column: 8)
!4700 = !DILocation(line: 3183, column: 9, scope: !4699)
!4701 = !DILocation(line: 3183, column: 14, scope: !4699)
!4702 = !DILocation(line: 3183, column: 25, scope: !4699)
!4703 = !DILocation(line: 3183, column: 31, scope: !4704)
!4704 = !DILexicalBlockFile(scope: !4699, file: !679, discriminator: 1)
!4705 = !DILocation(line: 3183, column: 30, scope: !4704)
!4706 = !DILocation(line: 3183, column: 35, scope: !4704)
!4707 = !DILocation(line: 3183, column: 8, scope: !4704)
!4708 = !DILocation(line: 3184, column: 7, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4699, file: !679, line: 3183, column: 47)
!4710 = !DILocation(line: 3187, column: 13, scope: !4640)
!4711 = !DILocation(line: 3187, column: 5, scope: !4640)
!4712 = !DILocation(line: 3187, column: 11, scope: !4640)
!4713 = !DILocation(line: 3189, column: 4, scope: !4640)
!4714 = !DILocation(line: 3190, column: 1, scope: !4640)
